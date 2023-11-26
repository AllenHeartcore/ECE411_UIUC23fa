module btb_4way #(
    parameter ADDR_WIDTH = 32,   // Width of the PC address
    parameter BTB_SIZE = 16,     // Total number of entries in the BTB
    parameter NUM_WAYS = 4       // Number of ways (entries per set)
)(
    input logic clk,
    input logic rst,
    input logic [ADDR_WIDTH-1:0] predict_pc,    // Predict PC value
    input logic [ADDR_WIDTH-1:0] update_pc,     // Update PC value
    input logic valid,                          // Signal indicating if branch was taken
    input logic [ADDR_WIDTH-1:0] target_pc,     // Target PC if branch is taken
    output logic [ADDR_WIDTH-1:0] predicted_pc, // Predicted PC from BTB
    output logic prediction                     // Prediction outcome: taken or not taken
);

// Define the BTB entry
typedef struct packed {
    logic [ADDR_WIDTH-1:0] pc;       // PC of the branch instruction
    logic [ADDR_WIDTH-1:0] target;   // Predicted target address
    logic valid;                     // Valid bit to indicate a valid entry
} btb_entry_t;

// Compute the number of sets
localparam NUM_SETS = BTB_SIZE / NUM_WAYS;

// Array of BTB entries
btb_entry_t btb_entries[NUM_SETS][NUM_WAYS];

logic [NUM_WAYS - 1 : 0] hit; // Indicates if there is a hit in the BTB
logic [NUM_WAYS - 1 : 0] empty; // Indicates if there is an empty entry in the BTB

logic local_valid; 
logic [ADDR_WIDTH-1:0] local_update_pc;
logic [ADDR_WIDTH-1:0] local_target_pc;
int set_index;
int local_set_index;
int empty_way_idx;
int hit_way_idx;

always_ff @(posedge clk or posedge rst) begin
    if (rst) begin
        local_valid <= '0;
        local_update_pc <= '0;
        local_target_pc <= '0;
    end else begin
        local_valid <= valid;
        local_update_pc <= update_pc;
        local_target_pc <= target_pc;
    end
end
// BTB initialization
always_ff @(posedge clk or posedge rst) begin
    if (rst) begin
        for (int i = 0; i < NUM_SETS; i++) begin
            for (int j = 0; j < NUM_WAYS; j++) begin
                btb_entries[i][j].valid <= 0;
            end
        end
    end else begin
        if (valid) begin
            // Calculate set index
            set_index = update_pc % NUM_SETS;
            // judge which way hit
            if (btb_entries[set_index][0].valid && btb_entries[set_index][0].pc == update_pc)
                hit <= 4'b0001;
            else if (btb_entries[set_index][1].valid && btb_entries[set_index][1].pc == update_pc)
                hit <= 4'b0010;
            else if (btb_entries[set_index][2].valid && btb_entries[set_index][2].pc == update_pc)
                hit <= 4'b0100;
            else if (btb_entries[set_index][3].valid && btb_entries[set_index][3].pc == update_pc)
                hit <= 4'b1000;
            else
                hit <= 4'b0000;

            // judge which way is empty
            if (!btb_entries[set_index][0].valid)
                empty <= 4'b0001;
            else if (!btb_entries[set_index][1].valid)
                empty <= 4'b0010;
            else if (!btb_entries[set_index][2].valid)
                empty <= 4'b0100;
            else if (!btb_entries[set_index][3].valid)
                empty <= 4'b1000;
            else
                empty <= 4'b0000;
        end 
        if (local_valid) begin
            // use hit to judge which way to update
            local_set_index = local_update_pc % NUM_SETS;
            if (|hit) begin
                btb_entries[local_set_index][hit_way_idx].valid <= 1;
                btb_entries[local_set_index][hit_way_idx].pc <= local_update_pc;
                btb_entries[local_set_index][hit_way_idx].target <= local_target_pc;
            end else begin
                if (|empty) begin
                    btb_entries[local_set_index][empty_way_idx].valid <= 1;
                    btb_entries[local_set_index][empty_way_idx].pc <= local_update_pc;
                    btb_entries[local_set_index][empty_way_idx].target <= local_target_pc;
                end else begin
                    btb_entries[local_set_index][0].valid <= 1;
                    btb_entries[local_set_index][0].pc <= local_update_pc;
                    btb_entries[local_set_index][0].target <= local_target_pc;
                end
            end
        end
    end
end


always_comb begin
    case (hit)
        4'b0001: hit_way_idx = 0;
        4'b0010: hit_way_idx = 1;
        4'b0100: hit_way_idx = 2;
        4'b1000: hit_way_idx = 3;
        default: hit_way_idx = 0;
    endcase
end

always_comb begin
    case (empty)
        4'b0001: empty_way_idx = 0;
        4'b0010: empty_way_idx = 1;
        4'b0100: empty_way_idx = 2;
        4'b1000: empty_way_idx = 3;
        default: empty_way_idx = 0;
    endcase
end

// BTB prediction
always_comb begin
    prediction = 1'b0;
    predicted_pc = '0;
    if (btb_entries[predict_pc % NUM_SETS][0].valid && btb_entries[predict_pc % NUM_SETS][0].pc == predict_pc) begin
        prediction = 1'b1;
        predicted_pc = btb_entries[predict_pc % NUM_SETS][0].target;
    end
    else if (btb_entries[predict_pc % NUM_SETS][1].valid && btb_entries[predict_pc % NUM_SETS][1].pc == predict_pc) begin
        prediction = 1'b1;
        predicted_pc = btb_entries[predict_pc % NUM_SETS][1].target;
    end
    else if (btb_entries[predict_pc % NUM_SETS][2].valid && btb_entries[predict_pc % NUM_SETS][2].pc == predict_pc) begin
        prediction = 1'b1;
        predicted_pc = btb_entries[predict_pc % NUM_SETS][2].target;
    end
    else if (btb_entries[predict_pc % NUM_SETS][3].valid && btb_entries[predict_pc % NUM_SETS][3].pc == predict_pc) begin
        prediction = 1'b1;
        predicted_pc = btb_entries[predict_pc % NUM_SETS][3].target;
    end
    else begin
        prediction = 1'b0;
        predicted_pc = '0;
    end
end

endmodule

