module cache #(
            parameter       s_word   = 256,
            parameter       s_mask   = s_word / 8,
            parameter       s_index  = 4,   // log2 of #sets
            parameter       s_wayidx = 2,   // log2 of #ways
            parameter       level    = 1
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

            localparam      s_offset = $clog2(s_word) - 3;


    logic SIGHIT, SIGDIRTY;
    logic LD_VALID, LD_DIRTY, LD_TAG, LD_DATA, LD_PLRU, DIRTYVAL;
    cache_types::waymux_t DIRTYWMUX, DATAWMUX;
    cache_types::datamux_t DATAMUX;
    cache_types::pmadmux_t PMADMUX;

    /* Performance counter */
    logic _perf_sigMiss, _perf_sigStart, _perf_sigEnd;
    logic [31:0] _perf_countHit, _perf_countMiss;
    logic [31:0] _perf_countAccess, _perf_countTimer, _perf_countPenalty;

    cache_control control(.*);
    cache_datapath #(
        .s_word(s_word),
        .s_index(s_index),
        .s_wayidx(s_wayidx),
        .level(level)
    ) datapath(.*);
    CacheCounter perf_counter(.*);

    assign _perf_countHit = _perf_countAccess - _perf_countMiss;
    assign _perf_countPenalty = _perf_countTimer - _perf_countHit * 2;


endmodule : cache
