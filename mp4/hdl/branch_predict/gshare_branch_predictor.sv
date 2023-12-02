module gshare_branch_predictor  
import rv32i_types::*; 
#(
    parameter int N = 8 // Define N as per your requirement
)
(
    input logic clk,
    input logic rst,
    input logic update_valid,
    input logic actual_branch_taken,
    input logic [31:0] update_pc,
    input logic [31:0] predict_pc,
    output logic prediction
);

// Parameters for FSM states
typedef enum logic [1:0] {
    STRONG_TAKEN = 2'b11, 
    WEAK_TAKEN = 2'b10, 
    WEAK_NOT_TAKEN = 2'b01, 
    STRONG_NOT_TAKEN = 2'b00
} state_t;



// Branch History Register
logic [N-1:0] BHR; 
// Pattern History Table
state_t PHT[2**N-1:0]; 


// Update BHR and PHT
always_ff @(posedge clk or posedge rst) begin
    if (rst) begin
        BHR <= '0;
        for (int i = 0; i < 2**N; i++) begin
            PHT[i] <= WEAK_NOT_TAKEN;
        end
    end else begin
        // Update the BHR
        if (update_valid) begin
            BHR <= {BHR[N-2:0], actual_branch_taken};

            // Update the PHT based on the actual outcome
            if (actual_branch_taken) begin
                if (PHT[BHR^update_pc[N-1:0]] == STRONG_NOT_TAKEN) PHT[BHR^update_pc[N-1:0]] <= WEAK_NOT_TAKEN;
                else if (PHT[BHR^update_pc[N-1:0]] == WEAK_NOT_TAKEN) PHT[BHR^update_pc[N-1:0]] <= WEAK_TAKEN;
                else if (PHT[BHR^update_pc[N-1:0]] == WEAK_TAKEN) PHT[BHR^update_pc[N-1:0]] <= STRONG_TAKEN;
            end else begin
                if (PHT[BHR^update_pc[N-1:0]] == STRONG_TAKEN) PHT[BHR^update_pc[N-1:0]] <= WEAK_TAKEN;
                else if (PHT[BHR^update_pc[N-1:0]] == WEAK_TAKEN) PHT[BHR^update_pc[N-1:0]] <= WEAK_NOT_TAKEN;
                else if (PHT[BHR^update_pc[N-1:0]] == WEAK_NOT_TAKEN) PHT[BHR^update_pc[N-1:0]] <= STRONG_NOT_TAKEN;
            end
        end
    end
end
// Make a prediction based on the PHT
assign prediction = (PHT[BHR^predict_pc[N-1:0]] == STRONG_TAKEN || PHT[BHR^predict_pc[N-1:0]] == WEAK_TAKEN);




endmodule