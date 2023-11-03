module forwarding_unit
import rv32i_types::*;
import pipeline_pkg::*;
(
    input   rv32i_opcode opcode,
    input   ctrlwb_reg_t ctrlwb_at_ex,
    input   ctrlwb_reg_t ctrlwb_at_mem,
    input   ctrlwb_reg_t ctrlwb_at_wb,

    output  alumux::alumux1_sel_t fwd1,
    output  alumux::alumux2_sel_t fwd2
);

    always_comb begin

        // defaults will be overridden by ctrlex.alumux*_sel
        // non-defaults are "penetrative" and will override ctrlex.alumux*_sel

        logic fwd_from_mem_possible, fwd_from_wb_possible, fwd_to_1_possible, fwd_to_2_possible;
        fwd_from_mem_possible = ctrlwb_at_mem.load_regfile & (ctrlwb_at_mem.rd != 5'b0);
        fwd_from_wb_possible  = ctrlwb_at_wb.load_regfile  & (ctrlwb_at_wb.rd != 5'b0);
        fwd_to_1_possible = (opcode == op_imm || opcode == op_reg || opcode == op_load);
        fwd_to_2_possible = (opcode == op_imm);

        if      (fwd_from_mem_possible & fwd_to_1_possible & (ctrlwb_at_mem.rd == ctrlwb_at_ex.rs1))
            fwd1 = alumux::fw1_mem;
        else if (fwd_from_wb_possible  & fwd_to_1_possible & (ctrlwb_at_mem.rd == ctrlwb_at_ex.rs2))
            fwd1 = alumux::fw1_wb;
        else
            fwd1 = alumux::rs1_out;

        if      (fwd_from_mem_possible & fwd_to_2_possible & (ctrlwb_at_wb.rd == ctrlwb_at_ex.rs1))
            fwd2 = alumux::fw2_mem;
        else if (fwd_from_wb_possible  & fwd_to_2_possible & (ctrlwb_at_wb.rd == ctrlwb_at_ex.rs2))
            fwd2 = alumux::fw2_wb;
        else
            fwd2 = alumux::rs2_out;

    end

endmodule
