module cache_datapath
import pkg_cache::*;
#(
            parameter       s_offset = 5,
            parameter       s_index  = 4,
            parameter       s_tag    = 32 - s_offset - s_index,
            parameter       s_mask   = 2**s_offset,
            parameter       s_line   = 8*s_mask,
            parameter       num_sets = 2**s_index
)(
    input  clk,
    input  rst,

    input   logic   [31:0]  mem_address,
    input   logic   [31:0]  mem_byte_enable,
    input   logic   [255:0] mem_wdata,
    output  logic   [255:0] mem_rdata,

    output  logic   [31:0]  pmem_address,
    output  logic   [255:0] pmem_wdata,
    input   logic   [255:0] pmem_rdata,

    output  logic           SIGHIT, SIGDIRTY,
    input   logic           LD_VALID, LD_DIRTY, LD_TAG, LD_DATA,
    input   logic           LD_TMPTAG, LD_TMPDATA, LD_PLRU, DIRTYVAL,
    input   pkg_cache::dirtywmux_t DIRTYWMUX,
    input   pkg_cache::datawmux_t DATAWMUX,
    input   pkg_cache::plruwmux_t PLRUWMUX,
    input   pkg_cache::datamux_t DATAMUX,
    input   pkg_cache::merdmux_t MERDMUX,
    input   pkg_cache::pmadmux_t PMADMUX
);


            logic   [255:0] data_q      [4];
            logic   [s_tag-1:0] tag_q   [4];
            logic           valid_q     [4];
            logic           dirty_q     [4];

            logic   [s_tag-1:0]     addr_tag;
            logic   [s_index-1:0]   addr_index;
            logic   [s_offset-1:0]  addr_offset;
    assign addr_tag    = mem_address[31:s_offset+s_index];
    assign addr_index  = mem_address[s_offset+s_index-1:s_offset];
    assign addr_offset = mem_address[s_offset-1:0];

            logic   [  1:0] WAYHIT;
            logic   [  1:0] WAYLRU;
    assign pmem_wdata = data_q[WAYLRU];
    assign pmem_address = {PMADMUX ? tag_q[WAYLRU] : addr_tag, addr_index, {s_offset{1'b0}}};
    assign mem_rdata  = MERDMUX ? pmem_rdata : data_q[WAYHIT];
    assign SIGDIRTY   = valid_q[WAYLRU] & dirty_q[WAYLRU];

            logic   [  3:0] MASKHIT;
            logic   [  3:0] MASKLRU;
    assign MASKHIT    = 4'b1 << WAYHIT;
    assign MASKLRU    = 4'b1 << WAYLRU;

    always_comb begin : hit_detection
        case (addr_tag)
            tag_q[0]: {SIGHIT, WAYHIT} = 3'b100;
            tag_q[1]: {SIGHIT, WAYHIT} = 3'b101;
            tag_q[2]: {SIGHIT, WAYHIT} = 3'b110;
            tag_q[3]: {SIGHIT, WAYHIT} = 3'b111;
            default:  {SIGHIT, WAYHIT} = 3'b0XX;
        endcase
    end : hit_detection


    genvar i;
    generate for (i = 0; i < 4; i++) begin : arrays
        mp3_data_array data_array (
            .clk0       (clk),
            .csb0       (1'b0),
            .web0       (!(LD_DATA & (DATAWMUX ? MASKLRU[i] : MASKHIT[i]))),
            .wmask0     (DATAMUX ? 32'hFFFF_FFFF : mem_byte_enable),
            .addr0      (addr_index),
            .din0       (DATAMUX ? pmem_rdata : mem_wdata),
            .dout0      (data_q[i])
        );
        mp3_tag_array tag_array (
            .clk0       (clk),
            .csb0       (1'b0),
            .web0       (!(LD_TAG & MASKLRU[i])),
            .addr0      (addr_index),
            .din0       (addr_tag),
            .dout0      (tag_q[i])
        );
        ff_array valid_array (
            .clk0       (clk),
            .rst0       (rst),
            .csb0       (1'b0),
            .web0       (!(LD_VALID & MASKLRU[i])),
            .addr0      (addr_index),
            .din0       (1'b1),
            .dout0      (valid_q[i])
        );
        ff_array dirty_array (
            .clk0       (clk),
            .rst0       (rst),
            .csb0       (1'b0),
            .web0       (!(LD_DIRTY & (DIRTYWMUX ? MASKLRU[i] : MASKHIT[i]))),
            .addr0      (addr_index),
            .din0       (DIRTYVAL),
            .dout0      (dirty_q[i])
        );
    end endgenerate


    /* temp registers */
    logic [s_tag-1:0] tmptag;
    logic [255:0] tmpdata;

    always_ff @ (posedge clk) begin : temp_reg
        if (LD_TMPTAG)
            tmptag <= tag_q[WAYLRU];
        else
            tmptag <= tmptag;
        if (LD_TMPDATA)
            tmpdata <= data_q[WAYLRU];
        else
            tmpdata <= tmpdata;
    end : temp_reg


    /* PLRU implementation */
    logic [2:0] PLRU [num_sets];

    always_ff @ (posedge clk) begin : plru_in
        for (int j = 0; j < num_sets; j++) begin
            if (rst)
                PLRU[j] <= 3'b000;
            else if (LD_PLRU & (addr_index == j[s_index-1:0]))
                case (PLRUWMUX ? WAYLRU : WAYHIT)
                    2'b00: PLRU[j] <= {PLRU[j][2], 1'b0, 1'b0};
                    2'b01: PLRU[j] <= {PLRU[j][2], 1'b1, 1'b0};
                    2'b10: PLRU[j] <= {1'b0, PLRU[j][1], 1'b1};
                    2'b11: PLRU[j] <= {1'b1, PLRU[j][1], 1'b1};
                endcase
            else PLRU[j] <= PLRU[j];
        end
    end : plru_in

    always_comb begin : plru_out
        if (PLRU[addr_index][0])
            if (PLRU[addr_index][1])
                WAYLRU = 2'b00;
            else
                WAYLRU = 2'b01;
        else
            if (PLRU[addr_index][2])
                WAYLRU = 2'b10;
            else
                WAYLRU = 2'b11;
    end : plru_out


endmodule : cache_datapath
