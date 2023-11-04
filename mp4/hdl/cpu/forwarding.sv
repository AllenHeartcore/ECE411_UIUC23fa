module forwarding_unit
import rv32i_types::*;
import pipeline_pkg::*;
(
    input   rv32i_opcode opcode,
    input   ctrlwb_reg_t ctrlwb_at_ex,
    input   ctrlwb_reg_t ctrlwb_at_mem,
    input   ctrlwb_reg_t ctrlwb_at_wb,

    output  fwdmux::fwdmux_sel_t fwdmux1_sel, fwdmux2_sel
);

    always_comb begin

        // defaults will be overridden by ctrlex.alumux*_sel
        // non-defaults are "penetrative" and will override ctrlex.alumux*_sel

        logic fwd_from_mem_possible, fwd_from_wb_possible, fwd_to_1_possible, fwd_to_2_possible;
        fwd_from_mem_possible = ctrlwb_at_mem.load_regfile & (ctrlwb_at_mem.rd != 5'b0);
        fwd_from_wb_possible  = ctrlwb_at_wb.load_regfile  & (ctrlwb_at_wb.rd != 5'b0);
        fwd_to_1_possible = (
            opcode == op_imm ||
            opcode == op_reg ||
            opcode == op_load ||
            opcode == op_store ||
            opcode == op_jalr ||
            opcode == op_br
        );
        fwd_to_2_possible = (
            opcode == op_reg ||
            opcode == op_store ||
            opcode == op_br
        );

        if      (fwd_from_mem_possible & fwd_to_1_possible & (ctrlwb_at_mem.rd == ctrlwb_at_ex.rs1))
            fwdmux1_sel = fwdmux::fwd_mem;
        else if (fwd_from_wb_possible  & fwd_to_1_possible & (ctrlwb_at_mem.rd == ctrlwb_at_ex.rs2))
            fwdmux1_sel = fwdmux::fwd_wb;
        else
            fwdmux1_sel = fwdmux::no_fwd;

        if      (fwd_from_mem_possible & fwd_to_2_possible & (ctrlwb_at_wb.rd == ctrlwb_at_ex.rs1))
            fwdmux2_sel = fwdmux::fwd_mem;
        else if (fwd_from_wb_possible  & fwd_to_2_possible & (ctrlwb_at_wb.rd == ctrlwb_at_ex.rs2))
            fwdmux2_sel = fwdmux::fwd_wb;
        else
            fwdmux2_sel = fwdmux::no_fwd;

    end

endmodule
