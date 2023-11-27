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



module CacheCounter (
    input   logic        clk,
    input   logic        rst,
    input   logic        _perf_sigHit,      // signals
    input   logic        _perf_sigMiss,
    input   logic        _perf_sigStart,
    input   logic        _perf_sigEnd,
    output  logic [31:0] _perf_countHit,    // counters
    output  logic [31:0] _perf_countMiss,
    output  logic [31:0] _perf_countAccess, // total number of accesses
    output  logic [31:0] _perf_countTimer   // total number of cycles
);

    logic [31:0] countHit_reg;
    logic [31:0] countMiss_reg;
    logic [31:0] countAccess_reg;
    logic [31:0] countTimer_reg;

    enum logic {IDLE, COUNT} state;

    always_ff @(posedge clk or posedge rst) begin
        if (rst) begin
            state <= IDLE;
            countHit_reg <= '0;
            countMiss_reg <= '0;
            countAccess_reg <= '0;
            countTimer_reg <= '0;
        end else begin
            if (_perf_sigHit) begin
                countHit_reg <= countHit_reg + 1;
            end
            if (_perf_sigMiss) begin
                countMiss_reg <= countMiss_reg + 1;
            end
            if (_perf_sigStart) begin
                countAccess_reg <= countAccess_reg + 1;
                state <= COUNT;
            end
            if (_perf_sigEnd) begin
                state <= IDLE;
            end
            if (state == COUNT) begin
                countTimer_reg <= countTimer_reg + 1;
            end
        end
    end

    assign _perf_countHit = countHit_reg;
    assign _perf_countMiss = countMiss_reg;
    assign _perf_countAccess = countAccess_reg;
    assign _perf_countTimer = countTimer_reg;

endmodule
