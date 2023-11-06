module forwarding_unit
import rv32i_types::*;
import pipeline_pkg::*;
(
    input   clk,
    input   rst,

    input   ctrlmem_reg_t ctrlmem_at_ex,
    input   ctrlmem_reg_t ctrlmem_at_mem,
    input   ctrlwb_reg_t ctrlwb_at_ex,
    input   ctrlwb_reg_t ctrlwb_at_mem,
    input   ctrlwb_reg_t ctrlwb_at_wb,
    input   logic ex_mem_valid_o,

    output  logic no_hazard,
    output  fwdmux::fwdmux_sel_t fwdmux1_sel, fwdmux2_sel
);

    logic instr_at_mem_reads_dmem;
    logic instr_at_mem_writes_rd, instr_at_wb_writes_rd;
    logic instr_at_ex_reads_rs1,  instr_at_ex_reads_rs2;

    always_comb begin

        instr_at_mem_reads_dmem = ctrlmem_at_mem.dmem_read   & (ctrlwb_at_mem.rd != 5'b0);
        instr_at_mem_writes_rd  = ctrlwb_at_mem.load_regfile & (ctrlwb_at_mem.rd != 5'b0);
        instr_at_wb_writes_rd   = ctrlwb_at_wb.load_regfile  & (ctrlwb_at_wb.rd  != 5'b0);
        instr_at_ex_reads_rs1 = (
            ctrlmem_at_ex.opcode == op_imm |
            ctrlmem_at_ex.opcode == op_reg |
            ctrlmem_at_ex.opcode == op_load |
            ctrlmem_at_ex.opcode == op_store |
            ctrlmem_at_ex.opcode == op_jalr |
            ctrlmem_at_ex.opcode == op_br
        );
        instr_at_ex_reads_rs2 = (
            ctrlmem_at_ex.opcode == op_reg |
            ctrlmem_at_ex.opcode == op_store |
            ctrlmem_at_ex.opcode == op_br
        );

        if      (instr_at_mem_writes_rd & instr_at_ex_reads_rs1 & (ctrlwb_at_mem.rd == ctrlwb_at_ex.rs1))
            fwdmux1_sel = fwdmux::fwd_mem;
        else if (instr_at_wb_writes_rd  & instr_at_ex_reads_rs1 & (ctrlwb_at_wb.rd  == ctrlwb_at_ex.rs1))
            fwdmux1_sel = fwdmux::fwd_wb;
        else
            fwdmux1_sel = fwdmux::no_fwd;

        if      (instr_at_mem_writes_rd & instr_at_ex_reads_rs2 & (ctrlwb_at_mem.rd == ctrlwb_at_ex.rs2))
            fwdmux2_sel = fwdmux::fwd_mem;
        else if (instr_at_wb_writes_rd  & instr_at_ex_reads_rs2 & (ctrlwb_at_wb.rd  == ctrlwb_at_ex.rs2))
            fwdmux2_sel = fwdmux::fwd_wb;
        else
            fwdmux2_sel = fwdmux::no_fwd;

    end

    /*  Signal "no_hazard" goes to module "hazard_ctrl".
     *  A value of 0 indicates a RAW hazard unresolvable by forwarding (usually an "arith after load").
     *  Deasserts when RD@MEM matches RS@EX. Asserts at ex_mem_valid_o.
     */

    enum logic { NO, YES } hazard_state, next_hazard_state;

    always_ff @(posedge clk) begin
        if (rst) hazard_state <= NO;
        else hazard_state <= next_hazard_state;
    end

    always_comb begin : NEXT_STATE_LOGIC
        next_hazard_state = hazard_state;
        if      (~ex_mem_valid_o)
            next_hazard_state = NO;
        else if (instr_at_mem_reads_dmem & instr_at_ex_reads_rs1 & (ctrlwb_at_mem.rd == ctrlwb_at_ex.rs1))
            next_hazard_state = YES;
        else if (instr_at_mem_reads_dmem & instr_at_ex_reads_rs2 & (ctrlwb_at_mem.rd == ctrlwb_at_ex.rs2))
            next_hazard_state = YES;
    end : NEXT_STATE_LOGIC

    assign no_hazard = (hazard_state == NO);

endmodule
