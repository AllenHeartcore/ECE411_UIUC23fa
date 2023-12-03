module local_branch_predictor
#(
    parameter int index_bits = 5, // Number of bits for the BHT index
    parameter int N = 6, // Number of bits for the local history
    parameter int M = 2**index_bits // Number of entries in the BHT
)
(
    input logic clk,
    input logic rst,
    input logic [31:0] update_branch_pc, // 32-bit program counter
    input logic [31:0] predict_branch_pc, // Signal indicating if branch was taken
    input logic valid,
    input logic actual_branch_taken,
    output logic prediction
);

// Parameters for FSM states
typedef enum logic [1:0] {
    STRONG_TAKEN = 2'b11,
    WEAK_TAKEN = 2'b10,
    WEAK_NOT_TAKEN = 2'b01,
    STRONG_NOT_TAKEN = 2'b00
} state_t;

// Branch History Table, which stores the history for each branch
logic [N-1:0] BHT[M-1:0]; 


// Local Pattern History Tables, separate for each branch
state_t PHT[M-1:0][2**N-1:0]; 

// Hash function to map 32-bit PC to BHT index
function automatic logic [index_bits-1:0] hash(input logic [31:0] pc);
    // A simple hash could be to use a portion of the PC bits.
    return pc[index_bits-1:0]; 
endfunction

// Index for BHT based on PC
int update_branch_index;
int predict_branch_index;

always_ff @(posedge clk or posedge rst) begin
    if (rst) begin
        // Reset BHT and PHT
        for (int i = 0; i < M; i++) begin
            BHT[i] <= '0;
            for (int j = 0; j < 2**N; j++) begin
                PHT[i][j] <= WEAK_NOT_TAKEN;
            end
        end
    end else if (valid) begin
        
        // Update the BHT
        BHT[update_branch_index] <= {BHT[update_branch_index][N-2:0], actual_branch_taken};
        // Update the PHT for the specific branch
        if (actual_branch_taken) begin
            if (PHT[update_branch_index][BHT[update_branch_index]] != STRONG_TAKEN) 
                PHT[update_branch_index][BHT[update_branch_index]] <= state_t'(PHT[update_branch_index][BHT[update_branch_index]] + 2'b1);
        end else begin 
            if (PHT[update_branch_index][BHT[update_branch_index]] != STRONG_NOT_TAKEN) 
                PHT[update_branch_index][BHT[update_branch_index]] <= state_t'(PHT[update_branch_index][BHT[update_branch_index]] - 2'b1);
        end
    end
end

// Make a prediction based on the PHT for the specific branch

assign prediction = (PHT[predict_branch_index][BHT[predict_branch_index]] == STRONG_TAKEN || PHT[predict_branch_index][BHT[predict_branch_index]] == WEAK_TAKEN); 
assign update_branch_index = hash(update_branch_pc);
assign predict_branch_index = hash(predict_branch_pc);

endmodule



module local_branch_predictor_no_bht
#(
    parameter int index_bits = 8, // Number of bits to index the PHT
    parameter int M = 2**index_bits // Number of entries in the PHT
)
(
    input logic clk,
    input logic rst,
    input logic [31:0] update_branch_pc, // 32-bit program counter for updates
    input logic [31:0] predict_branch_pc, // 32-bit program counter for predictions
    input logic valid,
    input logic actual_branch_taken,
    output logic prediction
);

// Parameters for FSM states
typedef enum logic [1:0] {
    STRONG_TAKEN = 2'b11,
    WEAK_TAKEN = 2'b10,
    WEAK_NOT_TAKEN = 2'b01,
    STRONG_NOT_TAKEN = 2'b00
} state_t;

// Pattern History Table
state_t PHT[M-1:0]; 

// Hash function to map 32-bit PC to PHT index
function automatic logic [index_bits-1:0] hash(input logic [31:0] pc);
    return pc[index_bits+1:2] ^ pc[index_bits * 2 + 1: index_bits +2];
endfunction

// Index for PHT based on PC
logic [index_bits-1:0] update_index;
logic [index_bits-1:0] predict_index;

always_ff @(posedge clk or posedge rst) begin
    if (rst) begin
        // Reset PHT
        for (int i = 0; i < M; i++) begin
            PHT[i] <= WEAK_NOT_TAKEN;
        end
    end else if (valid) begin
        update_index = hash(update_branch_pc);

        // Update the PHT based on the actual outcome
        if (actual_branch_taken) begin
            if (PHT[update_index] != STRONG_TAKEN) 
                PHT[update_index] <= state_t'(PHT[update_index] + 2'b1);
        end else begin
            if (PHT[update_index] != STRONG_NOT_TAKEN) 
                PHT[update_index] <= state_t'(PHT[update_index] - 2'b1);
        end
    end
end

// Make a prediction based on the PHT
assign predict_index = hash(predict_branch_pc);
assign prediction = (PHT[predict_index] == STRONG_TAKEN || 
                     PHT[predict_index] == WEAK_TAKEN);

endmodule
