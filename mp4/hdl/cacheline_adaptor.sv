module cacheline_adaptor #(
    parameter   s_word    = 256
) (
    input clk,
    input reset_n,

    /* Ports to LLC */
    input logic [s_word-1:0] line_i,
    output logic [s_word-1:0] line_o,
    input logic [31:0] address_i,
    input read_i,
    input write_i,
    output logic resp_o,

    /* Ports to memory */
    input logic [63:0] burst_i,
    output logic [63:0] burst_o,
    output logic [31:0] address_o,
    output logic read_o,
    output logic write_o,
    input resp_i
);

    localparam  n_burst   = s_word / 64;


int counter;
logic [s_word-1:0] buffer;
enum logic [1:0] {
    IDLE, READ, WRITE, DONE
} state, next_state;


always_ff @(posedge clk or negedge reset_n) begin
    if (!reset_n)
        state <= IDLE;
    else begin
        state <= next_state;
        if (state == DONE)
            counter <= 0;
        else if (resp_i) begin
            buffer <= {burst_i, buffer[s_word-1:64]};
            counter <= counter + 1;
        end
    end
end


always_comb begin

    read_o = 1'b0;
    write_o = 1'b0;
    resp_o = 1'b0;
    burst_o = 64'h0;
    next_state = state;
    address_o = address_i;
    line_o = buffer;

    unique case (state)

        IDLE: begin
            if (read_i) begin
                next_state = READ;
                read_o = 1'b1;
            end else if (write_i) begin
                next_state = WRITE;
                write_o = 1'b1;
            end
        end

        READ: begin
            read_o = 1'b1;
            if (counter == n_burst - 1)
                next_state = DONE;
        end

        WRITE: begin
            write_o = 1'b1;
            burst_o = line_i[(counter+1)*64-1 +: 64];
            if (counter == n_burst - 1)
                next_state = DONE;
        end

        DONE: begin
            next_state = IDLE;
            resp_o = 1'b1;
            read_o = 1'b0;
            write_o = 1'b0;
        end

        default: next_state = IDLE;

    endcase

end


endmodule : cacheline_adaptor
