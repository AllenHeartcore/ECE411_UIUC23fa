module regfile (
    input logic clk,
    input logic rst,
    input logic load,
    input logic [31:0] in,
    input logic [4:0] src_a, src_b, dest,
    output logic [31:0] reg_a, reg_b
);

logic [31:0] data [1:31];

always_comb begin
    reg_a = src_a ? data[src_a] : '0;
    reg_b = src_b ? data[src_b] : '0;
end

always_ff @(posedge clk) begin
    if (rst) begin
        for (int i = 1; i < 32; i++) begin
            data[i] <= '0;
        end
    end else if (load && dest) begin
        data[dest] <= in;
    end
end

endmodule : regfile
