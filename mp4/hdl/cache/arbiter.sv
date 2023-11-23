module arbiter
(
    input           clk,
    input           rst,

    input   logic [ 31:0]   ipmem_address,
    input   logic           ipmem_read,
    output  logic [255:0]   ipmem_rdata,
    output  logic           ipmem_resp,

    input   logic [ 31:0]   dpmem_address,
    input   logic [255:0]   dpmem_wdata,
    input   logic           dpmem_write,
    input   logic           dpmem_read,
    output  logic [255:0]   dpmem_rdata,
    output  logic           dpmem_resp,

    output  logic [ 31:0]   pmem_address,
    output  logic [255:0]   pmem_wdata,
    output  logic           pmem_write,
    output  logic           pmem_read,
    input   logic [255:0]   pmem_rdata,
    input   logic           pmem_resp,
    output  logic           arbiter_idle
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

    assign arbiter_idle = (state == IDLE);



    always_comb begin : STATE_ACTIONS

        pmem_address = 32'h0;
        pmem_wdata   = 256'h0;
        pmem_read    = 1'b0;
        pmem_write   = 1'b0;
        ipmem_rdata  = 256'h0;
        ipmem_resp   = 1'b0;
        dpmem_rdata  = 256'h0;
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
            IDLE: begin
                if(next_state == SERVE_I) begin
                    pmem_address    = ipmem_address;
                    pmem_read       = 1'b1;
                    ipmem_rdata     = pmem_rdata;
                    ipmem_resp      = pmem_resp;
                end else if(next_state == SERVE_D) begin
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
            end
        endcase

    end : STATE_ACTIONS



endmodule
