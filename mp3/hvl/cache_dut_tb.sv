module cache_dut_tb;

    timeunit 1ns;
    timeprecision 1ns;

    //----------------------------------------------------------------------
    // Waveforms.
    //----------------------------------------------------------------------
    initial begin
        $fsdbDumpfile("dump.fsdb");
        $fsdbDumpvars(0, "+all");
    end

    //----------------------------------------------------------------------
    // Generate the clock.
    //----------------------------------------------------------------------
    bit clk;
    initial clk = 1'b1;
    always #1 clk = ~clk;

    //----------------------------------------------------------------------
    // Generate the reset.
    //----------------------------------------------------------------------
    bit rst;
    task do_reset();
        // Fill this out!
    endtask : do_reset

    //----------------------------------------------------------------------
    // Collect coverage here:
    //----------------------------------------------------------------------
    // covergroup cache_cg with function sample(...)
    //     // Fill this out!
    // endgroup
    // Note that you will need the covergroup to get `make covrep_dut` working.

    //----------------------------------------------------------------------
    // Want constrained random classes? Do that here:
    //----------------------------------------------------------------------
    // class RandAddr;
    //     rand bit [31:0] addr;
    //     // Fill this out!
    // endclass : RandAddr

    //----------------------------------------------------------------------
    // Instantiate your DUT here.
    //----------------------------------------------------------------------
    // cache dut (...);

    //----------------------------------------------------------------------
    // Write your tests and run them here!
    //----------------------------------------------------------------------
    // Recommended: package your tests into tasks.

    initial begin
        $display("Hello from mp3_cache_dut!");
        $finish;
    end


    //----------------------------------------------------------------------
    // You likely want a process for pmem responses, like this:
    //----------------------------------------------------------------------
    // always @(posedge clk) begin
    //     // Set pmem signals here to behaviorally model physical memory.
    // end


endmodule
