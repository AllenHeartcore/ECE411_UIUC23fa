import pipeline_reg_pkg::*;



module if_id
(
    input  clk,
    input  rst,
    input  load,
    input  if_id_reg_t in,
    output if_id_reg_t out
);
    register if_id_reg_pc(.clk(clk), .rst(rst), .load(load), .in(in.pc), .out(out.pc));
    register if_id_reg_ir(.clk(clk), .rst(rst), .load(load), .in(in.ir), .out(out.ir));
endmodule
