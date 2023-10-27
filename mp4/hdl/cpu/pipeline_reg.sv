import pipeline_reg_pkg::*;



module if_id
(
    input  clk,
    input  rst,
    input  load,
    input  if_id_reg_t in,
    output if_id_reg_t out
);
    register if_id_reg_pc(.*, .in(in.pc), .out(out.pc));
    register if_id_reg_ir(.*, .in(in.ir), .out(out.ir));
endmodule

module id_ex
(
    input  clk,
    input  rst,
    input  load,
    input  id_ex_reg_t in,
    output id_ex_reg_t out
);
    register id_ex_reg_pc(.*, .in(in.pc), .out(out.pc));
    register id_ex_reg_r1(.*, .in(in.r1), .out(out.r1));
    register id_ex_reg_r2(.*, .in(in.r2), .out(out.r2));
    register id_ex_reg_ir(.*, .in(in.ir), .out(out.ir));
endmodule

module ex_mem
(
    input  clk,
    input  rst,
    input  load,
    input  ex_mem_reg_t in,
    output ex_mem_reg_t out
);
    register ex_mem_reg_pc (.*, .in(in.pc),  .out(out.pc));
    register ex_mem_reg_mdr(.*, .in(in.mdr), .out(out.mdr));
    register ex_mem_reg_uim(.*, .in(in.uim), .out(out.uim));
    register ex_mem_reg_alu(.*, .in(in.alu), .out(out.alu));
    register #(width(1)) ex_mem_reg_cmp(.*, .in(in.cmp), .out(out.cmp));
endmodule

module mem_wb
(
    input  clk,
    input  rst,
    input  load,
    input  mem_wb_reg_t in,
    output mem_wb_reg_t out
);
    register mem_wb_reg_pc (.*, .in(in.pc),  .out(out.pc));
    register mem_wb_reg_mdr(.*, .in(in.mdr), .out(out.mdr));
    register mem_wb_reg_uim(.*, .in(in.uim), .out(out.uim));
    register mem_wb_reg_alu(.*, .in(in.alu), .out(out.alu));
    register #(width(1)) mem_wb_reg_cmp(.*, .in(in.cmp), .out(out.cmp));
endmodule
