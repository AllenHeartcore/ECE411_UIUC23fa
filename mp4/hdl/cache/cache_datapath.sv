module cache_datapath
import cache_types::*;
#(
            parameter       s_word   = 256,
            parameter       s_mask   = s_word / 8,
            parameter       s_index  = 4,
            parameter       s_wayidx = 2,
            parameter       use_register = 0
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
    input   logic           LD_VALID, LD_DIRTY, LD_TAG, LD_DATA, LD_PLRU, DIRTYVAL,
    input   cache_types::waymux_t DIRTYWMUX, DATAWMUX,
    input   cache_types::datamux_t DATAMUX,
    input   cache_types::pmadmux_t PMADMUX
);

            localparam      s_offset = $clog2(s_word) - 3;
            localparam      s_tag    = 32 - s_offset - s_index;
            localparam      s_line   = 2**s_offset * 8;
            localparam      num_sets = 2**s_index;
            localparam      num_ways = 2**s_wayidx;


            logic   [s_word-1:0] data_q [num_ways];
            logic   [s_tag-1:0] tag_q   [num_ways];
            logic           valid_q     [num_ways];
            logic           dirty_q     [num_ways];

            logic   [s_tag-1:0]     addr_tag;
            logic   [s_index-1:0]   addr_index;
            logic   [s_offset-1:0]  addr_offset;
    assign addr_tag    = mem_address[31:s_offset+s_index];
    assign addr_index  = mem_address[s_offset+s_index-1:s_offset];
    assign addr_offset = mem_address[s_offset-1:0];

            logic   [s_wayidx-1:0]  WAYHIT;
            logic   [s_wayidx-1:0]  WAYLRU;
    assign mem_rdata  = data_q[WAYHIT];
    assign pmem_wdata = data_q[WAYLRU];
    assign pmem_address = {PMADMUX ? tag_q[WAYLRU] : addr_tag, addr_index, {s_offset{1'b0}}};
    assign SIGDIRTY   = valid_q[WAYLRU] & dirty_q[WAYLRU];

            logic   [num_ways-1:0]  MASKHIT;
            logic   [num_ways-1:0]  MASKLRU;
    assign MASKHIT    = {{(num_ways-1){'0}}, 1'b1} << WAYHIT;
    assign MASKLRU    = {{(num_ways-1){'0}}, 1'b1} << WAYLRU;

    always_comb begin : hit_detection
        SIGHIT = 1'b0;
        WAYHIT = 'X;
        for (int x = 0; x < num_ways; x += 1) begin
            if (addr_tag == tag_q[x]) begin
                SIGHIT = 1'b1;
                WAYHIT = x[s_wayidx-1:0];
            end
        end
    end : hit_detection


    genvar i;
    generate for (i = 0; i < num_ways; i++) begin : arrays

    if (use_register) begin
        masked_ff_array #(
            .s_index    (s_index),
            .width      (s_word)
        ) data_array (
            .clk0       (clk),
            .csb0       (1'b0),
            .web0       (!(LD_DATA & (DATAWMUX ? MASKLRU[i] : MASKHIT[i]))),
            .wmask0     (DATAMUX ? '1 : mem_byte_enable),
            .addr0      (addr_index),
            .din0       (DATAMUX ? pmem_rdata : mem_wdata),
            .dout0      (data_q[i])
        );
        ff_array #(
            .s_index    (s_index),
            .width      (s_tag)
        ) tag_array (
            .clk0       (clk),
            .csb0       (1'b0),
            .web0       (!(LD_TAG & MASKLRU[i])),
            .addr0      (addr_index),
            .din0       (addr_tag),
            .dout0      (tag_q[i])
        );
    end else begin
        mp3_data_array #(
            .ADDR_WIDTH (s_index),
            .DATA_WIDTH (s_word),
            .NUM_WMASKS (s_mask)
        ) data_array (
            .clk0       (clk),
            .csb0       (1'b0),
            .web0       (!(LD_DATA & (DATAWMUX ? MASKLRU[i] : MASKHIT[i]))),
            .wmask0     (DATAMUX ? '1 : mem_byte_enable),
            .addr0      (addr_index),
            .din0       (DATAMUX ? pmem_rdata : mem_wdata),
            .dout0      (data_q[i])
        );
        mp3_tag_array #(
            .ADDR_WIDTH (s_index),
            .DATA_WIDTH (s_tag)
        ) tag_array (
            .clk0       (clk),
            .csb0       (1'b0),
            .web0       (!(LD_TAG & MASKLRU[i])),
            .addr0      (addr_index),
            .din0       (addr_tag),
            .dout0      (tag_q[i])
        );
    end

        ff_array #(
            .s_index (s_index)
        ) valid_array (
            .clk0       (clk),
            .rst0       (rst),
            .csb0       (1'b0),
            .web0       (!(LD_VALID & MASKLRU[i])),
            .addr0      (addr_index),
            .din0       (1'b1),
            .dout0      (valid_q[i])
        );
        ff_array #(
            .s_index (s_index)
        ) dirty_array (
            .clk0       (clk),
            .rst0       (rst),
            .csb0       (1'b0),
            .web0       (!(LD_DIRTY & (DIRTYWMUX ? MASKLRU[i] : MASKHIT[i]))),
            .addr0      (addr_index),
            .din0       (DIRTYVAL),
            .dout0      (dirty_q[i])
        );
    end endgenerate


    /*  PLRU algorithm implementation  */
    logic [num_ways-1:0] PLRU [num_sets];   // lowest bit unused
    logic PLRU_signals [num_ways];

    /*  Examples: (s_wayidx = 3, num_ways = 8)
     *  if (WAYHIT == 3'b011) begin
     *      PLRU[j][3'b101] <= 1'b1;    // k = 0, {01, 011} >> 1 = 00[101]
     *      PLRU[j][3'b010] <= 1'b1;    // k = 1, {01, 011} >> 2 = 00[010]
     *      PLRU[j][3'b001] <= 1'b0;    // k = 2, {01, 011} >> 3 = 00[001]
     *  end
     *  if (WAYHIT == 3'b110) begin
     *      PLRU[j][3'b111] <= 1'b0;    // k = 0, {01, 110} >> 1 = 00[111]
     *      PLRU[j][3'b011] <= 1'b1;    // k = 1, {01, 110} >> 2 = 00[011]
     *      PLRU[j][3'b001] <= 1'b1;    // k = 2, {01, 110} >> 3 = 00[001]
     *  end
     */
    always_ff @ (posedge clk) begin : plru_in
        for (int j = 0; j < num_sets; j += 1) begin
            if (rst)
                PLRU[j] <= '0;
            else
                PLRU[j] <= PLRU[j];
            if (LD_PLRU & (addr_index == j[s_index-1:0]))
                for (int k = 0; k < s_wayidx; k++)
                    PLRU[j][{2'b01, WAYHIT} >> (k+1)] <= WAYHIT[k];
        end
    end : plru_in

    /*  Examples:
     *  if (
     *      PLRU[addr_index][3'b101] == 1'b0 &
     *      PLRU[addr_index][3'b010] == 1'b0 &
     *      PLRU[addr_index][3'b001] == 1'b1
     *  ) WAYLRU = 3'b011;
     *  if (
     *      PLRU[addr_index][3'b111] == 1'b1 &
     *      PLRU[addr_index][3'b011] == 1'b0 &
     *      PLRU[addr_index][3'b001] == 1'b0
     *  ) WAYLRU = 3'b110;
     */
    always_comb begin : plru_out
        for (int m = 0; m < num_ways; m += 1) begin
            PLRU_signals[m] = 1'b1;
            for (int n = 0; n < s_wayidx; n++)
                PLRU_signals[m] &= (PLRU[addr_index][{2'b01, m[s_wayidx-1:0]} >> (n+1)] != m[n]);
            if (PLRU_signals[m])
                WAYLRU = m[s_wayidx-1:0];
        end
    end : plru_out


endmodule : cache_datapath
