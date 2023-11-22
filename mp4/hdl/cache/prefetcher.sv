module next_line_prefetcher #(
    parameter       s_offset = 5,
    parameter       s_mask   = 2**s_offset
)
(
    input                  clk,
    input                  rst,
    // CPU -> PREFETCHER
    input   logic [31:0]   imem_address,
    input   logic          imem_read,
    output  logic [255:0]  imem_rdata256,
    output  logic          imem_resp,
    // PREFETCHER -> IMEM CACHE
    input   logic [255:0]   icmem_rdata256,
    input   logic           icmem_resp,
    output  logic [31:0]    icmem_address,
    output  logic           icmem_read, 
    // CPU -> PREFETCHER
    input   logic           branch_taken,
    // ARBITER -> PREFETCHER
    input   logic           arbiter_idle
);

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
        if(rst || no_prefetch_reg) begin
            last_cacheline_address <= 'x;
            last_prefetched_cacheline_address <= 'x;
        end
        else if(state == SERVE_I) last_cacheline_address <= {icmem_address[31:s_offset], {s_offset{1'b0}}};   
        else if(state == PREFETCH) begin 
            last_cacheline_address <= prefetched_address;
            last_prefetched_cacheline_address <= prefetched_address;
        end
    end

    // next-line prefetcher
    always_comb begin
        prefetched_address = 'x;
        if(~no_prefetch_reg) prefetched_address = last_cacheline_address + s_mask;
    end
    // if last time we have a branch taken
    assign flag_no_prefetch =  branch_taken || (last_prefetched_cacheline_address == last_cacheline_address);



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
        imem_rdata256  = 256'hx;
        imem_resp   = 1'b0;

        case (state)
            SERVE_I: begin
                icmem_address    = imem_address;
                icmem_read       = 1'b1;
                imem_rdata256     = icmem_rdata256;
                imem_resp      = icmem_resp;
            end
            PREFETCH: begin
                icmem_address    = prefetched_address;
                icmem_read       = 1'b1;
                imem_rdata256     = 256'hx;
                imem_resp      = 1'b0; // we must fake it as if there is no memory request at all from CPU's perspective
            end
            IDLE: ;
        endcase

    end : STATE_ACTIONS_PREFETCHER



endmodule