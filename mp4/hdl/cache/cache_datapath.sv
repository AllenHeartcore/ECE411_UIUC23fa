module cache_datapath
import cache_types::*;
#(
            parameter       s_word   = 256,
            parameter       s_mask   = s_word / 8,
            parameter       s_index  = 4,
            parameter       level    = 1
)(
    input  clk,
    input  rst,

    input   logic   [31:0]  mem_address,
    input   logic   [s_mask-1:0] mem_byte_enable,
    input   logic   [s_word-1:0] mem_wdata,
    output  logic   [s_word-1:0] mem_rdata,

    output  logic   [31:0]  pmem_address,
    output  logic   [s_word-1:0] pmem_wdata,
    input   logic   [s_word-1:0] pmem_rdata,

    output  logic           SIGHIT, SIGDIRTY,
    input   logic           LD_VALID, LD_DIRTY, LD_TAG, LD_DATA, DIRTYVAL,
    input   cache_types::datamux_t DATAMUX,
    input   cache_types::pmadmux_t PMADMUX
);

            localparam      s_offset = $clog2(s_word) - 3;
            localparam      s_tag    = 32 - s_offset - s_index;


            logic   [s_word-1:0] data_q;
            logic   [s_tag-1:0] tag_q;
            logic           valid_q;
            logic           dirty_q;

            logic   [s_tag-1:0]     addr_tag;
            logic   [s_index-1:0]   addr_index;
            logic   [s_offset-1:0]  addr_offset;
    assign addr_tag    = mem_address[31:s_offset+s_index];
    assign addr_index  = mem_address[s_offset+s_index-1:s_offset];
    assign addr_offset = mem_address[s_offset-1:0];

    assign mem_rdata    = data_q;
    assign pmem_wdata   = data_q;
    assign pmem_address = {PMADMUX ? tag_q : addr_tag, addr_index, {s_offset{1'b0}}};
    assign SIGHIT       = (addr_tag == tag_q);
    assign SIGDIRTY     = valid_q & dirty_q;


    if (level == 1) begin
        mp3_data_array #(
            .ADDR_WIDTH (s_index),
            .DATA_WIDTH (s_word),
            .NUM_WMASKS (s_mask)
        ) data_array (
            .clk0       (clk),
            .csb0       (1'b0),
            .web0       (!LD_DATA),
            .wmask0     (DATAMUX ? {s_mask{1'b1}} : mem_byte_enable),
            .addr0      (addr_index),
            .din0       (DATAMUX ? pmem_rdata : mem_wdata),
            .dout0      (data_q)
        );
        mp3_tag_array #(
            .ADDR_WIDTH (s_index),
            .DATA_WIDTH (s_tag)
        ) tag_array (
            .clk0       (clk),
            .csb0       (1'b0),
            .web0       (!LD_TAG),
            .addr0      (addr_index),
            .din0       (addr_tag),
            .dout0      (tag_q)
        );
    end else if (level == 2) begin
        mp3_data_array_2 #(
            .ADDR_WIDTH (s_index),
            .DATA_WIDTH (s_word),
            .NUM_WMASKS (s_mask)
        ) data_array (
            .clk0       (clk),
            .csb0       (1'b0),
            .web0       (!LD_DATA),
            .wmask0     (DATAMUX ? {s_mask{1'b1}} : mem_byte_enable),
            .addr0      (addr_index),
            .din0       (DATAMUX ? pmem_rdata : mem_wdata),
            .dout0      (data_q)
        );
        mp3_tag_array_2 #(
            .ADDR_WIDTH (s_index),
            .DATA_WIDTH (s_tag)
        ) tag_array (
            .clk0       (clk),
            .csb0       (1'b0),
            .web0       (!LD_TAG),
            .addr0      (addr_index),
            .din0       (addr_tag),
            .dout0      (tag_q)
        );
    end

        ff_array #(
            .s_index (s_index)
        ) valid_array (
            .clk0       (clk),
            .rst0       (rst),
            .csb0       (1'b0),
            .web0       (!LD_VALID),
            .addr0      (addr_index),
            .din0       (1'b1),
            .dout0      (valid_q)
        );
        ff_array #(
            .s_index (s_index)
        ) dirty_array (
            .clk0       (clk),
            .rst0       (rst),
            .csb0       (1'b0),
            .web0       (!LD_DIRTY),
            .addr0      (addr_index),
            .din0       (DIRTYVAL),
            .dout0      (dirty_q)
        );


endmodule : cache_datapath
