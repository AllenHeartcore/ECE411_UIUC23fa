
module register
(
    input clk,
    input rst,
    input load,
    input [31:0] in,
    output [31:0] out
);

logic [31:0] data;
always_ff @( posedge clk ) begin : reg_ff
    if (rst) begin
        data <= '0;
    end else if (load) begin
        data <= in;
    end
end : reg_ff
assign out = data;

endmodule : register
