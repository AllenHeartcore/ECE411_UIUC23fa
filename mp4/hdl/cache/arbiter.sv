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
    input   logic           pmem_resp
);



    enum logic [2:0] {
        IDLE_I, IDLE_D,     // to avoid congestion
        SERVE_IR, DONE_IR,
        SERVE_DR, DONE_DR,
        SERVE_DW, DONE_DW
    } state, next_state;

    always_ff @(posedge clk) begin
        if (rst)    state <= IDLE_I;
        else        state <= next_state;
    end



    always_comb begin : NEXT_STATE_LOGIC

        next_state = state;

        case (state)
            IDLE_I: // priority given to imem
                if       (ipmem_read)   next_state = SERVE_IR;
                else  if (dpmem_read)   next_state = SERVE_DR;
                else  if (dpmem_write)  next_state = SERVE_DW;
            IDLE_D: // priority given to dmem
                if       (dpmem_read)   next_state = SERVE_DR;
                else  if (dpmem_write)  next_state = SERVE_DW;
                else  if (ipmem_read)   next_state = SERVE_IR;
            SERVE_IR: if (pmem_resp)    next_state = DONE_IR;
            SERVE_DR: if (pmem_resp)    next_state = DONE_DR;
            SERVE_DW: if (pmem_resp)    next_state = DONE_DW;
            DONE_IR:                    next_state = IDLE_D;
            DONE_DR:                    next_state = IDLE_I;
            DONE_DW:                    next_state = IDLE_I;
        endcase

    end : NEXT_STATE_LOGIC



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
            SERVE_IR: begin
                pmem_address    = ipmem_address;
                pmem_read       = 1'b1;
            end
            DONE_IR: begin
                ipmem_rdata     = pmem_rdata;
                ipmem_resp      = 1'b1;
            end
            SERVE_DR: begin
                pmem_address    = dpmem_address;
                pmem_read       = 1'b1;
            end
            DONE_DR: begin
                dpmem_rdata     = pmem_rdata;
                dpmem_resp      = 1'b1;
            end
            SERVE_DW: begin
                pmem_address    = dpmem_address;
                pmem_wdata      = dpmem_wdata;
                pmem_write      = 1'b1;
            end
            DONE_DW: begin
                dpmem_resp      = 1'b1;
            end
            IDLE_I, IDLE_D: ;
        endcase

    end : STATE_ACTIONS



endmodule
