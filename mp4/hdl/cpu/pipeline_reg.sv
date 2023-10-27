import pipeline_reg_pkg::*;



module pipeline_reg
(
    input  clk,
    input  rst,
    input  load,
    input  ex_mem_reg_t in,
    output ex_mem_reg_t out
);

    register reg_pc (.*, .in(in.pc),  .out(out.pc));
    register reg_ir (.*, .in(in.ir),  .out(out.ir));
    register reg_r1 (.*, .in(in.r1),  .out(out.r1));
    register reg_r2 (.*, .in(in.r2),  .out(out.r2));
    register reg_mdr(.*, .in(in.mdr), .out(out.mdr));
    register reg_uim(.*, .in(in.uim), .out(out.uim));
    register reg_alu(.*, .in(in.alu), .out(out.alu));
    register #(width(1)) reg_cmp(.*, .in(in.cmp), .out(out.cmp));

endmodule
