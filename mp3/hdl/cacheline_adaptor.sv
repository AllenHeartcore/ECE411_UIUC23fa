module cacheline_adaptor
(
    input clk,
    input reset_n,

    // Port to LLC (Lowest Level Cache)
    input logic [255:0] line_i,
    output logic [255:0] line_o,
    input logic [31:0] address_i,
    input read_i,
    input write_i,
    output logic resp_o,

    // Port to memory
    input logic [63:0] burst_i,
    output logic [63:0] burst_o,
    output logic [31:0] address_o,
    output logic read_o,
    output logic write_o,
    input resp_i
);


logic [63:0] buffer [0:3];
enum logic [3:0] {
    IDLE, R1, R2, R3, R4, W1, W2, W3, W4, DONE
} state, next_state;


always_ff @(posedge clk or negedge reset_n) begin
    if (!reset_n)
        state <= IDLE;
    else begin
        state <= next_state;
        if (resp_i)
            {buffer[3], buffer[2], buffer[1], buffer[0]} <=
            {  burst_i, buffer[3], buffer[2], buffer[1]};
    end
end


always_comb begin

    read_o = 1'b0;
    write_o = 1'b0;
    resp_o = 1'b0;
    burst_o = 64'h0;
    next_state = state;
    address_o = address_i;
    line_o = {buffer[3], buffer[2], buffer[1], buffer[0]};

    unique case (state)

        IDLE: begin
            if (read_i) begin
                next_state = R1;
                read_o = 1'b1;
            end else if (write_i) begin
                next_state = W1;
                write_o = 1'b1;
            end
        end

        R1: begin if (resp_i) next_state = R2;   read_o  = 1'b1; end
        R2: begin if (resp_i) next_state = R3;   read_o  = 1'b1; end
        R3: begin if (resp_i) next_state = R4;   read_o  = 1'b1; end
        R4: begin if (resp_i) next_state = DONE; read_o  = 1'b1; end

        W1: begin if (resp_i) next_state = W2;   write_o = 1'b1; burst_o = line_i[ 63:  0]; end
        W2: begin if (resp_i) next_state = W3;   write_o = 1'b1; burst_o = line_i[127: 64]; end
        W3: begin if (resp_i) next_state = W4;   write_o = 1'b1; burst_o = line_i[191:128]; end
        W4: begin if (resp_i) next_state = DONE; write_o = 1'b1; burst_o = line_i[255:192]; end

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
