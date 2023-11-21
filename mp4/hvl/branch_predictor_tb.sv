`timescale 1ns / 1ps

module branch_predictor_tb;

// Parameters
localparam int N = 4;

// Testbench signals
logic clk;
logic rst;
logic valid;
logic actual_branch_taken;
logic prediction;

// Instantiate the unit under test (UUT)
branch_predictor #(.N(N)) uut (
    .clk(clk),
    .rst(reset),
    .valid(valid),
    .actual_branch_taken(actual_branch_taken),
    .prediction(prediction)
);

// Clock generation
always #5 clk = ~clk; // Generate a clock with a period of 10 ns

// Test sequence
initial begin
    // Initialize testbench signals
    clk = 0;
    valid = 0;
    actual_branch_taken = 0;

    // Reset the UUT
    #10 reset = 0;
    #10 reset = 1;
    #10 reset = 0;
    #10

    // Test a sequence of branches
    repeat (2**N) begin
        @(posedge clk); // Wait for the positive edge of the clock
        valid = 1;
        actual_branch_taken = $random; // Randomize the actual branch taken signal
        @(posedge clk); // Wait for the UUT to update its prediction
        valid = 0;

        // Check the prediction
        if (actual_branch_taken != prediction) begin
            $display("Mismatch detected. Time: %t, Actual: %b, Prediction: %b", $time, actual_branch_taken, prediction);
        end else begin
            $display("Match detected. Time: %t, Actual: %b, Prediction: %b", $time, actual_branch_taken, prediction);
        end
    end

    // Finish the simulation
    #100;
    $finish;
end

endmodule
