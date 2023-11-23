`timescale 1ns / 1ps

module btb_tb;

    parameter ADDR_WIDTH = 32;
    parameter BTB_SIZE = 16;
    
    // Inputs to the BTB
    logic clk;
    logic reset;
    logic [ADDR_WIDTH-1:0] predict_pc;
    logic [ADDR_WIDTH-1:0] update_pc;
    logic branch_taken;
    logic [ADDR_WIDTH-1:0] target_pc;
    
    // Outputs from the BTB
    logic [ADDR_WIDTH-1:0] predicted_pc;
    logic prediction;

    // Instantiate the BTB
    btb #(
        .ADDR_WIDTH(ADDR_WIDTH),
        .BTB_SIZE(BTB_SIZE)
    ) uut (
        .clk(clk),
        .rst(reset),
        .predict_pc(predict_pc),
        .update_pc(update_pc),
        .valid(branch_taken),
        .target_pc(target_pc),
        .predicted_pc(predicted_pc),
        .prediction(prediction)
    );

    // Clock generation
    always #5 clk = ~clk; // 100MHz clock

    initial begin
        $fsdbDumpfile("dump.fsdb");
        $fsdbDumpvars(0, "+all");
    end

    
    // Test sequence
    initial begin
        // Initialize Inputs
        clk = 0;
        reset <= 1;
        predict_pc <= '0;
        update_pc <= '0;
        branch_taken <= 0;
        target_pc <= 0;

        // Wait for the global reset
        #100;
        reset <= 0;

        // Add stimulus here
        // Test Case 1: Insert a branch target and verify prediction
        update_pc <= 32'h0000_1000;
        branch_taken <= 1;
        target_pc <= 32'h0000_2000;
        @(posedge clk);
        
        // Check for correct prediction after insert
        predict_pc <= 32'h0000_1000;
        branch_taken <= 0; // No update, just check
        @(posedge clk);
        assert(prediction == 1 && predicted_pc == 32'h0000_2000) else $error("Prediction failed for PC: %h, Predicted_PC: %h, Prediction: %b", predict_pc, predicted_pc, prediction);

        // Test Case 2: No branch taken, prediction should be 0
        predict_pc <= 32'h0000_3000; // New PC that was never a branch
        @(posedge clk);
        assert(prediction == 0) else $error("Prediction failed for PC: %h, Predicted_PC: %h, Prediction: %b", predict_pc, predicted_pc, prediction);
        
        // Test Case 3: Update an existing BTB entry
        update_pc <= 32'h0000_1000;
        branch_taken <= 1;
        target_pc <= 32'h0000_4000; // New target
        @(posedge clk);
        
        // Verify the update took place
        predict_pc <= 32'h0000_1000;
        @(posedge clk);
        assert(prediction == 1 && predicted_pc == 32'h0000_4000) else $error("Prediction failed for PC: %h, Predicted_PC: %h, Prediction: %b", predict_pc, predicted_pc, prediction);

        // Add more test cases as needed

        $display("Testbench completed without errors.");
        $finish;
    end
    
endmodule
