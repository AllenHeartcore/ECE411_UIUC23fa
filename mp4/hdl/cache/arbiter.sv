module arbiter #(
            parameter       s_word   = 256
) (
    input           clk,
    input           rst,

    output  logic [s_word-1:0]   ipmem_rdata,
    input   logic [s_word-1:0]   dpmem_wdata,
    output  logic [s_word-1:0]   dpmem_rdata,
    output  logic [s_word-1:0]   pmem_wdata,
    input   logic [s_word-1:0]   pmem_rdata,

    input   logic [ 31:0]   ipmem_address,
    input   logic [ 31:0]   dpmem_address,
    output  logic [ 31:0]   pmem_address,

    input   logic           ipmem_read,
    output  logic           ipmem_resp,
    input   logic           dpmem_write,
    input   logic           dpmem_read,
    output  logic           dpmem_resp,
    output  logic           pmem_write,
    output  logic           pmem_read,
    input   logic           pmem_resp
);



    enum logic [2:0] {
        IDLE, SERVE_I, SERVE_D
    } state, next_state;

    always_ff @(posedge clk) begin
        if (rst)    state <= IDLE;
        else        state <= next_state;
    end



    always_comb begin : NEXT_STATE_LOGIC

        next_state = state;

        case (state)
            IDLE:
                if (dpmem_read || dpmem_write) next_state = SERVE_D;
                else if (ipmem_read) next_state = SERVE_I;
            SERVE_I: if (pmem_resp)  next_state = IDLE;
            SERVE_D: if (pmem_resp)  next_state = IDLE;
        endcase

    end : NEXT_STATE_LOGIC



    always_comb begin : STATE_ACTIONS

        pmem_address = 32'h0;
        pmem_wdata   = '0;
        pmem_read    = 1'b0;
        pmem_write   = 1'b0;
        ipmem_rdata  = '0;
        ipmem_resp   = 1'b0;
        dpmem_rdata  = '0;
        dpmem_resp   = 1'b0;

        case (state)
            SERVE_I: begin
                pmem_address    = ipmem_address;
                pmem_read       = 1'b1;
                ipmem_rdata     = pmem_rdata;
                ipmem_resp      = pmem_resp;
            end
            SERVE_D: begin
                pmem_address    = dpmem_address;
                dpmem_resp      = pmem_resp;
                if (dpmem_read) begin
                    pmem_read   = 1'b1;
                    dpmem_rdata = pmem_rdata;
                end else begin
                    pmem_write  = 1'b1;
                    pmem_wdata  = dpmem_wdata;
                end
            end
            IDLE: ;
        endcase

    end : STATE_ACTIONS



endmodule
