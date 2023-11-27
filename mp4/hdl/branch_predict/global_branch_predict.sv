module global_branch_predictor_sram
#(
    parameter int N = 20, // Define N as per your requirement
    parameter int DATA_WIDTH = 2, // SRAM data width (to store state_t)
    parameter int ADDR_WIDTH = N // Address width for SRAM
)
(
    input logic clk,
    input logic rst,
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

// SRAM Interface
logic [ADDR_WIDTH-1:0] addr;
logic [DATA_WIDTH-1:0] data_in, data_out;
logic csb, web; // Chip select and write enable, active low

// Instantiate SRAM
sram_module #(DATA_WIDTH, ADDR_WIDTH) sram (
    .clk(clk),
    .csb(csb),
    .web(web),
    .addr(addr),
    .din(data_in),
    .dout(data_out)
);

// Read/Write control logic
always_ff @(posedge clk or posedge rst) begin
    if (rst) begin
        BHR <= '0;
        addr <= '0;
        data_in <= WEAK_NOT_TAKEN;
        web <= 1; // Write disable (active low)
        csb <= 0; // Chip select active
    end else begin
        // Address for SRAM is the current BHR
        addr <= BHR;
        web <= 1; // Default to read mode (write disable)

        // Update the BHR
        if (valid) begin
            BHR <= {BHR[N-2:0], actual_branch_taken};

            // Write to SRAM based on the actual outcome
            if (actual_branch_taken) begin
                if (data_out != STRONG_TAKEN) begin
                    data_in <= data_out + 1;
                    web <= 0; // Write enable (active low)
                end
            end else begin
                if (data_out != STRONG_NOT_TAKEN) begin
                    data_in <= data_out - 1;
                    web <= 0; // Write enable (active low)
                end
            end
        end
        csb <= 0; // Ensure chip select is always active after reset
    end
end

// Make a prediction based on the PHT
assign prediction = (data_out == STRONG_TAKEN || data_out == WEAK_TAKEN);

endmodule



module global_branch_predictor 
#(
    parameter int N = 10 // Define N as per your requirement
)
(
    input logic clk,
    input logic rst,
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
always_ff @(posedge clk or posedge rst) begin
    if (rst) begin
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
