module cache #(
            parameter       s_offset = 5,
            parameter       s_index  = 4,
            parameter       s_tag    = 32 - s_offset - s_index,
            parameter       s_mask   = 2**s_offset,
            parameter       s_line   = 8*s_mask,
            parameter       num_sets = 2**s_index
)(
    input                   clk,
    input                   rst,

    /* CPU side signals */
    input   logic   [31:0]  mem_address,
    input   logic           mem_read,
    input   logic           mem_write,
    input   logic   [31:0]  mem_byte_enable,
    output  logic   [255:0] mem_rdata,
    input   logic   [255:0] mem_wdata,
    output  logic           mem_resp,

    /* Memory side signals */
    output  logic   [31:0]  pmem_address,
    output  logic           pmem_read,
    output  logic           pmem_write,
    input   logic   [255:0] pmem_rdata,
    output  logic   [255:0] pmem_wdata,
    input   logic           pmem_resp
);


logic   SIGHIT, SIGDIRTY;
logic   LD_VALID, LD_DIRTY, LD_TAG, LD_DATA;
logic   LD_TMPTAG, LD_TMPDATA, LD_PLRU, DIRTYVAL;
pkg_cache::waymux_t DIRTYWMUX, DATAWMUX, PLRUWMUX;
pkg_cache::datamux_t DATAMUX;
pkg_cache::merdmux_t MERDMUX;
pkg_cache::pmadmux_t PMADMUX;

cache_control control
(
    .*
);

cache_datapath datapath
(
    .*
);

endmodule : cache
