module cache #(
            parameter       s_word   = 256,
            parameter       s_mask   = s_word / 8,
            parameter       s_offset = $clog2(s_word) - 3,
            parameter       s_index  = 4,   // log2 of #sets
            parameter       s_wayidx = 2    // log2 of #ways
)(
    input                   clk,
    input                   rst,

    /* CPU side signals */
    input   logic   [s_mask-1:0] mem_byte_enable,
    output  logic   [s_word-1:0] mem_rdata,
    input   logic   [s_word-1:0] mem_wdata,
    input   logic   [31:0]  mem_address,
    input   logic           mem_read,
    input   logic           mem_write,
    output  logic           mem_resp,

    /* Memory side signals */
    input   logic   [s_word-1:0] pmem_rdata,
    output  logic   [s_word-1:0] pmem_wdata,
    output  logic   [31:0]  pmem_address,
    output  logic           pmem_read,
    output  logic           pmem_write,
    input   logic           pmem_resp
);


    logic SIGHIT, SIGDIRTY;
    logic LD_VALID, LD_DIRTY, LD_TAG, LD_DATA, LD_PLRU, DIRTYVAL;
    cache_types::waymux_t DIRTYWMUX, DATAWMUX;
    cache_types::datamux_t DATAMUX;
    cache_types::pmadmux_t PMADMUX;

    cache_control control(.*);
    cache_datapath #(
        .s_word(s_word),
        .s_index(s_index),
        .s_wayidx(s_wayidx)
    ) datapath(.*);


endmodule : cache
