module BranchCounter (
    input logic clk,            // Clock signal
    input logic rst,            // Reset signal
    input logic branchExecuted, // Signal indicating a branch instruction is executed
    input logic branchMispredict, // Signal indicating a branch misprediction occurred
    output logic [31:0] totalBranches, // 32-bit output for total branches
    output logic [31:0] mispredictedBranches // 32-bit output for mispredicted branches
);

    // Internal Counters
    logic [31:0] totalBranches_internal;
    logic [31:0] mispredictedBranches_internal;

    // Counting Logic
    always_ff @(posedge clk or posedge rst) begin
        if (rst) begin
            totalBranches_internal <= 0;
            mispredictedBranches_internal <= 0;
        end else begin
            if (branchExecuted) begin
                totalBranches_internal <= totalBranches_internal + 1;
                if (branchMispredict) begin
                    mispredictedBranches_internal <= mispredictedBranches_internal + 1;
                end
            end
        end
    end

    // Output Assignment
    assign totalBranches = totalBranches_internal;
    assign mispredictedBranches = mispredictedBranches_internal;

endmodule



module CacheHitMissCounter (
    input logic clk,           // Clock signal
    input logic rst,           // Reset signal
    input logic cacheHit,      // Signal indicating a cache hit occurred
    input logic cacheMiss,     // Signal indicating a cache miss occurred
    output logic [31:0] totalHits,   // 32-bit output for total cache hits
    output logic [31:0] totalMisses  // 32-bit output for total cache misses
);

    // Internal Counters
    logic [31:0] totalHits_internal;
    logic [31:0] totalMisses_internal;

    // Counting Logic
    always_ff @(posedge clk or posedge rst) begin
        if (rst) begin
            totalHits_internal <= 0;
            totalMisses_internal <= 0;
        end else begin
            if (cacheHit) begin
                totalHits_internal <= totalHits_internal + 1;
            end
            if (cacheMiss) begin
                totalMisses_internal <= totalMisses_internal + 1;
            end
        end
    end

    // Output Assignment
    assign totalHits = totalHits_internal;
    assign totalMisses = totalMisses_internal;

endmodule
