module branch_predictor 
#(
    parameter int N = 4 // Define N as per your requirement
)
(
    input logic clk,
    input logic reset,
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



// Branch History Register
logic [N-1:0] BHR; 

// Pattern History Table
state_t PHT[2**N-1:0]; 


// Update BHR and PHT
always_ff @(posedge clk or posedge reset) begin
    if (reset) begin
        BHR <= '0;
        for (int i = 0; i < 2**N; i++) begin
            PHT[i] <= WEAK_NOT_TAKEN;
        end
    end else begin
        // Update the BHR
        if (valid) begin
            BHR <= {BHR[N-2:0], actual_branch_taken};

            // Update the PHT based on the actual outcome
            if (actual_branch_taken) begin
                if (PHT[BHR] != STRONG_TAKEN) PHT[BHR] <= PHT[BHR] + 1;
            end else begin
                if (PHT[BHR] != STRONG_NOT_TAKEN) PHT[BHR] <= PHT[BHR] - 1;
            end
        end
    end
end
// Make a prediction based on the PHT
assign prediction = (PHT[BHR] == STRONG_TAKEN || PHT[BHR] == WEAK_TAKEN);

endmodule
