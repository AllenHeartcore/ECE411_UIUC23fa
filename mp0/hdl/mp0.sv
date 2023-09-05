

module mp0(
    input logic clk,
    input logic rst,
    input logic load,
    input logic [31:0] in,
    input logic [4:0] src_a, src_b, dest,
    output logic [31:0] reg_a, reg_b
);

regfile rf(.*);

endmodule : mp0

