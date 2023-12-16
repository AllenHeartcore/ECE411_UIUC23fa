module bus_adapter #(
            parameter       s_word   = 256,
            parameter       s_mask   = s_word / 8
) (
    input   logic   [31:0]  address,
    input   logic   [31:0]  mem_wdata,
    output  logic   [31:0]  mem_rdata,
    input   logic   [3:0]   mem_byte_enable,
    output  logic   [s_word-1:0]  mem_wdata_l,
    input   logic   [s_word-1:0]  mem_rdata_l,
    output  logic   [s_mask-1:0]  mem_byte_enable_l
);

            localparam      s_offset = $clog2(s_word) - 3;

assign mem_wdata_l = {(s_word/32){mem_wdata}};
assign mem_rdata = mem_rdata_l[(32*address[s_offset-1:2]) +: 32];
assign mem_byte_enable_l = {{(s_mask-4){1'b0}}, mem_byte_enable} << (address[s_offset-1:2]*4);

endmodule : bus_adapter
