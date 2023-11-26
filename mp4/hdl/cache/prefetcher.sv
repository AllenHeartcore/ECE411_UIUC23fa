module aggressive_next_line_prefetcher #(
    parameter       s_word   = 256
)
(
    input                  clk,
    input                  rst,
    // CPU -> PREFETCHER
    input   logic [31:0]   imem_address,
    input   logic          imem_read,
    output  logic [s_word-1:0]  imem_rdata_l,
    output  logic          imem_resp,
    // PREFETCHER -> IMEM CACHE
    input   logic [s_word-1:0]  icmem_rdata_l,
    input   logic           icmem_resp,
    output  logic [31:0]    icmem_address,
    output  logic           icmem_read, 
    // CPU -> PREFETCHER
    input   logic           branch_taken,
    // ARBITER -> PREFETCHER
    input   logic           arbiter_idle
);

    localparam      s_mask   = s_word / 8;
    localparam      s_offset = $clog2(s_word) - 3;

    enum logic [2:0] {
        IDLE, SERVE_I, PREFETCH
    } state, next_state;

    logic no_prefetch_reg;
    logic flag_no_prefetch;
    logic [31:0] last_cacheline_address;
    logic [31:0] last_prefetched_cacheline_address;
    logic [31:0] prefetched_address;

    always_ff @(posedge clk) begin
        if (rst)    no_prefetch_reg <= 1'b1; // always not prefetch on the first cacheline
        else if(flag_no_prefetch) no_prefetch_reg <= 1'b1;
        else if(state == IDLE && next_state == SERVE_I) no_prefetch_reg <= 1'b0;
    end

    always_ff @(posedge clk) begin
        if(rst) begin
            last_cacheline_address <= 'x;
            last_prefetched_cacheline_address <= 'x;
        end
        else if(state == SERVE_I && next_state == IDLE) 
            last_cacheline_address <= {icmem_address[31:s_offset], {s_offset{1'b0}}};   
        else if(state == PREFETCH && next_state == IDLE) begin 
            last_cacheline_address <= prefetched_address;
            last_prefetched_cacheline_address <= prefetched_address;
        end
    end

    // next-line prefetcher
    assign prefetched_address = last_cacheline_address + s_mask;

    // if last time we have a branch taken
    assign flag_no_prefetch =  (
                branch_taken || // if branch taken, we wait until next fetch
                (last_prefetched_cacheline_address == last_cacheline_address) // if we prefetched before
            );



    always_comb begin : NEXT_STATE_LOGIC_PREFETCHER

        next_state = state;

        case (state)
            IDLE:
                if (imem_read) next_state = SERVE_I;
                // a more aggressive prefetching strategy : when arbiter is idle, prefetch 
                else if((~no_prefetch_reg) && arbiter_idle) next_state = PREFETCH; 
                
            SERVE_I: if (icmem_resp)  next_state = IDLE;
            PREFETCH: if (icmem_resp) next_state = IDLE;
        endcase

    end : NEXT_STATE_LOGIC_PREFETCHER

    always_comb begin : STATE_ACTIONS_PREFETCHER

        icmem_address = 32'h0;
        icmem_read    = 1'b0;
        imem_rdata_l  = 'x;
        imem_resp   = 1'b0;

        case (state)
            SERVE_I: begin
                icmem_address    = imem_address;
                icmem_read       = 1'b1;
                imem_rdata_l     = icmem_rdata_l;
                imem_resp      = icmem_resp;
            end
            PREFETCH: begin
                icmem_address    = prefetched_address;
                icmem_read       = 1'b1;
                imem_rdata_l     = 'x;
                imem_resp      = 1'b0; // we must fake it as if there is no memory request at all from CPU's perspective
            end
            IDLE: begin
                if(next_state == SERVE_I) begin
                    icmem_address    = imem_address;
                    icmem_read       = 1'b1;
                    imem_rdata_l     = icmem_rdata_l;
                    imem_resp      = icmem_resp;
                end else if(next_state == PREFETCH) begin
                    icmem_address    = prefetched_address;
                    icmem_read       = 1'b1;
                    imem_rdata_l     = 'x;
                    imem_resp      = 1'b0; // we must fake it as if there is no memory request at all from CPU's perspective
                end
            end
        endcase

    end : STATE_ACTIONS_PREFETCHER



    always_ff @(posedge clk) begin
        if (rst)    state <= IDLE;
        else        state <= next_state;
    end

endmodule

module convservative_next_line_prefetcher #(
    parameter       s_word   = 256
)
(
    input                  clk,
    input                  rst,
    // CPU -> PREFETCHER
    input   logic [31:0]   imem_address,
    input   logic          imem_read,
    output  logic [s_word-1:0]  imem_rdata_l,
    output  logic          imem_resp,
    // PREFETCHER -> IMEM CACHE
    input   logic [s_word-1:0]  icmem_rdata_l,
    input   logic           icmem_resp,
    output  logic [31:0]    icmem_address,
    output  logic           icmem_read, 
    // CPU -> PREFETCHER
    input   logic           branch_taken,
    // ARBITER -> PREFETCHER
    input   logic           arbiter_idle,
    input   logic           no_hazard
);

    localparam      s_mask   = s_word / 8;
    localparam      s_offset = $clog2(s_word) - 3;

    enum logic [2:0] {
        IDLE, SERVE_I, PREFETCH
    } state, next_state;

    logic no_prefetch_reg;
    logic flag_no_prefetch;
    logic [31:0] last_cacheline_address;
    logic [31:0] last_prefetched_cacheline_address;
    logic [31:0] prefetched_address;

    always_ff @(posedge clk) begin
        if (rst)    no_prefetch_reg <= 1'b1; // always not prefetch on the first cacheline
        else if(flag_no_prefetch) no_prefetch_reg <= 1'b1;
        else if(state == IDLE && next_state == SERVE_I) no_prefetch_reg <= 1'b0;
    end

    always_ff @(posedge clk) begin
        if(rst) begin
            last_cacheline_address <= 'x;
            last_prefetched_cacheline_address <= 'x;
        end
        else if(state == SERVE_I && next_state == IDLE) 
            last_cacheline_address <= {icmem_address[31:s_offset], {s_offset{1'b0}}};   
        else if(state == PREFETCH && next_state == IDLE) begin 
            last_cacheline_address <= prefetched_address;
            last_prefetched_cacheline_address <= prefetched_address;
        end
    end

    // next-line prefetcher
    assign prefetched_address = last_cacheline_address + s_mask;

    // if last time we have a branch taken
    assign flag_no_prefetch =  (
                branch_taken || // if branch taken, we wait until next fetch
                (last_prefetched_cacheline_address == last_cacheline_address) // if we prefetched before
            );



    always_comb begin : NEXT_STATE_LOGIC_PREFETCHER

        next_state = state;

        case (state)
            IDLE:
                if (imem_read) next_state = SERVE_I;
                // a more aggressive prefetching strategy : when arbiter is idle, prefetch 
                else if((~no_prefetch_reg) && arbiter_idle && (~no_hazard)) next_state = PREFETCH; 
                
            SERVE_I: if (icmem_resp)  next_state = IDLE;
            PREFETCH: if (icmem_resp) next_state = IDLE;
        endcase

    end : NEXT_STATE_LOGIC_PREFETCHER

    always_comb begin : STATE_ACTIONS_PREFETCHER

        icmem_address = 32'h0;
        icmem_read    = 1'b0;
        imem_rdata_l  = 'x;
        imem_resp   = 1'b0;

        case (state)
            SERVE_I: begin
                icmem_address    = imem_address;
                icmem_read       = 1'b1;
                imem_rdata_l     = icmem_rdata_l;
                imem_resp      = icmem_resp;
            end
            PREFETCH: begin
                icmem_address    = prefetched_address;
                icmem_read       = 1'b1;
                imem_rdata_l     = 'x;
                imem_resp      = 1'b0; // we must fake it as if there is no memory request at all from CPU's perspective
            end
            IDLE: begin
                if(next_state == SERVE_I) begin
                    icmem_address    = imem_address;
                    icmem_read       = 1'b1;
                    imem_rdata_l     = icmem_rdata_l;
                    imem_resp      = icmem_resp;
                end else if(next_state == PREFETCH) begin
                    icmem_address    = prefetched_address;
                    icmem_read       = 1'b1;
                    imem_rdata_l     = 'x;
                    imem_resp      = 1'b0; // we must fake it as if there is no memory request at all from CPU's perspective
                end
            end
        endcase

    end : STATE_ACTIONS_PREFETCHER



    always_ff @(posedge clk) begin
        if (rst)    state <= IDLE;
        else        state <= next_state;
    end

endmodule


module no_prefetch_prefetcher #(
    parameter       s_word   = 256
)
(
    input                  clk,
    input                  rst,
    // CPU -> PREFETCHER
    input   logic [31:0]   imem_address,
    input   logic          imem_read,
    output  logic [s_word-1:0]  imem_rdata_l,
    output  logic          imem_resp,
    // PREFETCHER -> IMEM CACHE
    input   logic [s_word-1:0]  icmem_rdata_l,
    input   logic           icmem_resp,
    output  logic [31:0]    icmem_address,
    output  logic           icmem_read, 
    // CPU -> PREFETCHER
    input   logic           branch_taken,
    // ARBITER -> PREFETCHER
    input   logic           arbiter_idle
);

    assign icmem_address = imem_address;
    assign icmem_read    = imem_read;
    assign imem_rdata_l  = icmem_rdata_l;
    assign imem_resp     = icmem_resp;

    // use unused signals to avoid warning
    logic unused_1, unused_2, unused_3, unused_4;
    
    assign unused_1 = branch_taken;
    assign unused_2 = arbiter_idle;
    assign unused_3 = rst;
    assign unused_4 = clk;


endmodule