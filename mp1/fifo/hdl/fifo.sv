
module fifo_synch_1r1w
import fifo_types::*;
(
    input logic clk_i,
    input logic reset_n_i,

    // valid-ready input protocol
    input word_t data_i,
    input logic valid_i,
    output logic ready_o,

    // valid-yumi output protocol
    output logic valid_o,
    output word_t data_o,
    input logic yumi_i
);

/******************************** Declarations *******************************/
// Need memory to hold queued data
logic [WIDTH_P-1:0] queue [CAP_P-1:0];

// Pointers which point to the read and write ends of the queue
ptr_t read_ptr, write_ptr, read_ptr_next, write_ptr_next;

// Helper logic
logic empty, full, ptr_eq, sign_match;
logic  enqueue, dequeue;

// We always know what the next data which will be dequeued is.
// Thus it only makes sense to register it in an output buffer
logic [WIDTH_P-1:0] output_buffer_r;
/*****************************************************************************/

/***************************** Output Assignments ****************************/
assign ready_o = ~full;
assign valid_o = ~empty;
assign data_o = output_buffer_r;
/*****************************************************************************/

/******************************** Assignments ********************************/
assign full = ptr_eq & (~sign_match);
assign ptr_eq = |(read_ptr == write_ptr);
assign sign_match = read_ptr[PTR_WIDTH_P-1] == write_ptr[PTR_WIDTH_P-1];
assign empty = ptr_eq & sign_match;
assign enqueue = ready_o & valid_i;
assign dequeue = valid_o & yumi_i;
assign write_ptr_next = write_ptr + '1;
assign read_ptr_next = read_ptr + '1;
/*****************************************************************************/

/*************************** Non-Blocking Assignments ************************/
always_ff @(posedge clk_i, negedge reset_n_i) begin
    // The `n` in the `reset_n_i` means the reset signal is active low
    if (~reset_n_i) begin
        read_ptr  <= '0;
        write_ptr <= '0;
    end
    else begin
        case ({enqueue, dequeue})
            2'b00: ;
            2'b01: begin : dequeue_case
                output_buffer_r <= queue[read_ptr_next];
                read_ptr <= read_ptr_next;
            end
            2'b10: begin : enqueue_case
                queue[write_ptr] <= data_i;
                write_ptr <= write_ptr_next;
                if (empty) begin
                    output_buffer_r <= data_i;
                end
            end
            // When enqueing and dequeing simultaneously, we must be careful
            // to place proper data into output buffer.
            // If there is only one item in the queue, then the input data
            // Should be copied directly into the output buffer
            2'b11: begin : dequeue_and_enqueue_case
                // Dequeue portion
                output_buffer_r <= read_ptr_next == write_ptr ?
                                   data_i :
                                   queue[read_ptr_next];
                read_ptr <= read_ptr_next;

                // Enqueue portion
                queue[write_ptr] <= data_i;
                write_ptr <= write_ptr_next;
                // No need to check empty, since can't dequeue from empty
            end
        endcase
    end
/*****************************************************************************/
end

endmodule : fifo_synch_1r1w
