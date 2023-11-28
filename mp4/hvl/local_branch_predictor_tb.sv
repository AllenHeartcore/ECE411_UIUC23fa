`timescale 1ns / 1ps

module local_branch_predictor_tb;

parameter int index_bits = 3;
parameter int N = 1; // Number of bits for the local history
parameter int M = 8; // Number of branch entries in the BHT
parameter int WIDTH = 32; // Width of the program counter



// Testbench signals
logic clk, rst, valid, actual_branch_taken, prediction;
logic [WIDTH-1:0] update_branch_pc;
logic [WIDTH-1:0] predict_branch_pc;
logic [1:0] expected_state;

// Instantiate the design under test (DUT)
local_branch_predictor_no_bht #(.N(N), .index_bits(index_bits)) dut (
    .clk(clk),
    .rst(rst),
    .update_branch_pc(update_branch_pc),
    .predict_branch_pc(predict_branch_pc),
    .valid(valid),
    .actual_branch_taken(actual_branch_taken),
    .prediction(prediction)
);

// Clock generation
initial begin
    clk = 1'b1;
    forever #5 clk = ~clk; // Clock with a period of 10 ns
end


initial begin
    $fsdbDumpfile("dump.fsdb");
    $fsdbDumpvars(0, "+all");
end

// Test sequence
initial begin
    // Initialize testbench signals
    valid = 1'b0;
    actual_branch_taken = 1'b0;
    update_branch_pc = '0;
    expected_state = 2'b01; // Initial expected state: WEAK_NOT_TAKEN
    rst = 1'b1;
    #100 rst = 1'b0;
    #20
    // Test case 1: Branch taken
    update_branch_pc = 32'h0000_0001;
    valid = 1'b1;
    actual_branch_taken = 1'b1;
    expected_state = 2'b10; // Expected state after branch taken: WEAK_TAKEN
    predict_branch_pc = 32'h0000_0001;
    // wait a cycle
    #10
    assert (prediction == 1'b1) else $error("Prediction failed for PC: %h, Prediction: %b, expected_state: %b", update_branch_pc, prediction, expected_state);
    // Test case 2: Branch not taken
    valid = 1'b1;
    actual_branch_taken = 1'b0;
    expected_state = 2'b01; // Expected state after branch not taken: WEAK_NOT_TAKEN
    #10
    assert (prediction == 1'b0) else $error("Prediction failed for PC: %h, Prediction: %b, expected_state: %b", predict_branch_pc, prediction, expected_state);
    // End the test after some cycles
    #50 $finish;
end



// Monitor
initial begin
    $monitor("Time = %t, PC = %h, Valid = %b, Actual = %b, Prediction = %b, Expected State = %b",
             $time, update_branch_pc, valid, actual_branch_taken, prediction, expected_state);
end

endmodule
