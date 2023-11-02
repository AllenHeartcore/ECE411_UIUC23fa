module bus_adapter
(
    input   logic   [31:0]  address,
    output  logic   [255:0] mem_wdata256,
    input   logic   [255:0] mem_rdata256,
    input   logic   [31:0]  mem_wdata,
    output  logic   [31:0]  mem_rdata,
    input   logic   [3:0]   mem_byte_enable,
    output  logic   [31:0]  mem_byte_enable256
);

assign mem_wdata256 = {8{mem_wdata}};
assign mem_rdata = mem_rdata256[(32*address[4:2]) +: 32];
assign mem_byte_enable256 = {28'h0, mem_byte_enable} << (address[4:2]*4);

endmodule : bus_adapter
