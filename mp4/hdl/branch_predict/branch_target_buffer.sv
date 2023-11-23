module btb #(
    parameter ADDR_WIDTH = 32,   // Width of the PC address
    parameter BTB_SIZE = 16      // Number of entries in the BTB
)(
    input logic clk,
    input logic rst,
    input logic [ADDR_WIDTH-1:0] pc,                 // Current PC value
    input logic branch_taken,                        // Signal indicating if branch was taken
    input logic [ADDR_WIDTH-1:0] target_pc,          // Target PC if branch is taken
    output logic [ADDR_WIDTH-1:0] predicted_pc,      // Predicted PC from BTB
    output logic prediction                          // Prediction outcome: taken or not taken
);

// Define the BTB entry using a SystemVerilog struct
typedef struct packed {
    logic [ADDR_WIDTH-1:0] pc;       // PC of the branch instruction
    logic [ADDR_WIDTH-1:0] target;   // Predicted target address
    logic valid;                     // Valid bit to indicate a valid entry
} btb_entry_t;

// Array of BTB entries
btb_entry_t btb_entries [BTB_SIZE];

// Initialize the BTB
always_ff @(posedge clk or posedge rst) begin
    if (rst) begin
        for (int i = 0; i < BTB_SIZE; i++) begin
            btb_entries[i].valid <= 0;
        end
    end else begin
        // Update the BTB on a branch instruction
        if (branch_taken) begin
            // Simple replacement policy, evict the entry it belongs to
            btb_entries[pc % BTB_SIZE].pc <= pc;
            btb_entries[pc % BTB_SIZE].target <= target_pc;
            btb_entries[pc % BTB_SIZE].valid <= 1;
        end
    end
end

always_comb begin
    prediction = 0;
    predicted_pc = '0;
    if (btb_entries[pc % BTB_SIZE].valid && btb_entries[pc % BTB_SIZE].pc == pc) begin
        // Match found, output the predicted PC
        predicted_pc = btb_entries[pc % BTB_SIZE].target;
        prediction = 1;
    end
end

endmodule
