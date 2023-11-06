module forwarding_unit
import rv32i_types::*;
import pipeline_pkg::*;
(
    input   ctrlmem_reg_t ctrlmem_at_id,
    input   ctrlmem_reg_t ctrlmem_at_ex,
    input   ctrlwb_reg_t ctrlwb_at_id,
    input   ctrlwb_reg_t ctrlwb_at_ex,
    input   ctrlwb_reg_t ctrlwb_at_mem,
    input   ctrlwb_reg_t ctrlwb_at_wb,

    output  logic no_hazard,
    output  fwdmux::fwdmux_sel_t fwdmux1_sel, fwdmux2_sel
);

    logic fwd_from_mem_possible, fwd_from_wb_possible, fwd_to_1_possible, fwd_to_2_possible;
    logic this_instr_is_load, next_instr_uses_rs1, next_instr_uses_rs2;

    always_comb begin

        fwd_from_mem_possible = ctrlwb_at_mem.load_regfile & (ctrlwb_at_mem.rd != 5'b0);
        fwd_from_wb_possible  = ctrlwb_at_wb.load_regfile  & (ctrlwb_at_wb.rd != 5'b0);
        fwd_to_1_possible = (
            ctrlmem_at_ex.opcode == op_imm |
            ctrlmem_at_ex.opcode == op_reg |
            ctrlmem_at_ex.opcode == op_load |
            ctrlmem_at_ex.opcode == op_store |
            ctrlmem_at_ex.opcode == op_jalr |
            ctrlmem_at_ex.opcode == op_br
        );
        fwd_to_2_possible = (
            ctrlmem_at_ex.opcode == op_reg |
            ctrlmem_at_ex.opcode == op_store |
            ctrlmem_at_ex.opcode == op_br
        );

        if      (fwd_from_mem_possible & fwd_to_1_possible & (ctrlwb_at_mem.rd == ctrlwb_at_ex.rs1))
            fwdmux1_sel = fwdmux::fwd_mem;
        else if (fwd_from_wb_possible  & fwd_to_1_possible & (ctrlwb_at_wb.rd == ctrlwb_at_ex.rs1))
            fwdmux1_sel = fwdmux::fwd_wb;
        else
            fwdmux1_sel = fwdmux::no_fwd;

        if      (fwd_from_mem_possible & fwd_to_2_possible & (ctrlwb_at_mem.rd == ctrlwb_at_ex.rs2))
            fwdmux2_sel = fwdmux::fwd_mem;
        else if (fwd_from_wb_possible  & fwd_to_2_possible & (ctrlwb_at_wb.rd == ctrlwb_at_ex.rs2))
            fwdmux2_sel = fwdmux::fwd_wb;
        else
            fwdmux2_sel = fwdmux::no_fwd;

        this_instr_is_load = (ctrlmem_at_ex.opcode == op_load) & (ctrlwb_at_ex.rd != 5'b0);
        next_instr_uses_rs1 = (
            (ctrlmem_at_id.opcode == op_imm) |
            (ctrlmem_at_id.opcode == op_reg) |
            (ctrlmem_at_id.opcode == op_load) |
            (ctrlmem_at_id.opcode == op_store) |
            (ctrlmem_at_id.opcode == op_jalr) |
            (ctrlmem_at_id.opcode == op_br)
        );
        next_instr_uses_rs2 = (
            (ctrlmem_at_id.opcode == op_reg) |
            (ctrlmem_at_id.opcode == op_store) |
            (ctrlmem_at_id.opcode == op_br)
        );
        no_hazard = ~(
            this_instr_is_load & (
                (next_instr_uses_rs1 & (ctrlwb_at_ex.rd == ctrlwb_at_id.rs1)) |
                (next_instr_uses_rs2 & (ctrlwb_at_ex.rd == ctrlwb_at_id.rs2))
            )
        );

    end

endmodule
