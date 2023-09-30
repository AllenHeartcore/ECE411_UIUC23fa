module mp3
import rv32i_types::*;
(
    input   logic           clk,
    input   logic           rst,
    output  logic   [31:0]  bmem_address,
    output  logic           bmem_read,
    output  logic           bmem_write,
    input   logic   [63:0]  bmem_rdata,
    output  logic   [63:0]  bmem_wdata,
    input   logic           bmem_resp
);

    // cpu <-> bus_adapter
    logic [ 31:0] mem_address, mem_rdata, mem_wdata;
    logic [  3:0] mem_byte_enable;
    logic         mem_read, mem_write, mem_resp;

    // bus_adapter <-> cache
    logic [255:0] mem_rdata256, mem_wdata256;
    logic [ 31:0] mem_byte_enable256;

    // cache <-> cacheline_adaptor
    logic [255:0] pmem_rdata, pmem_wdata;
    logic [ 31:0] pmem_address;
    logic         pmem_read, pmem_write, pmem_resp;

    cpu cpu(.*);

    bus_adapter bus_adapter(.*,
        .address    (mem_address)
    );

    cache cache(.*,
        .mem_rdata  (mem_rdata256),
        .mem_wdata  (mem_wdata256),
        .mem_byte_enable(mem_byte_enable256)
    );

    cacheline_adaptor cacheline_adaptor(.*,
        .address_i  (pmem_address),
        .line_o     (pmem_rdata),
        .line_i     (pmem_wdata),
        .read_i     (pmem_read),
        .write_i    (pmem_write),
        .resp_o     (pmem_resp),
        .address_o  (bmem_address),
        .burst_i    (bmem_rdata),
        .burst_o    (bmem_wdata),
        .read_o     (bmem_read),
        .write_o    (bmem_write),
        .resp_i     (bmem_resp)
    );

endmodule : mp3
