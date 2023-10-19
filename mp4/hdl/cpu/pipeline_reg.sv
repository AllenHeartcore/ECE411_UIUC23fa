module if_id
import pipeline_reg_pkg::*;
(
    input logic clk, rst,
    input logic load_if_id,
    input if_id_reg_t if_id_reg_i,
    output if_id_reg_t if_id_reg_o
);
    register if_id_reg_pc(.clk(clk), .rst(rst), .load(load_if_id), .in(if_id_reg_i.pc), .out(if_id_reg_o.pc));
    register if_id_reg_ir(.clk(clk), .rst(rst), .load(load_if_id), .in(if_id_reg_i.ir), .out(if_id_reg_o.ir));
endmodule