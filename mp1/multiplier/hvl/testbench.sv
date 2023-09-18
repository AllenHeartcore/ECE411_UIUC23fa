
`ifndef testbench
`define testbench
module testbench(multiplier_itf.testbench itf);
import mult_types::*;

add_shift_multiplier dut (
    .clk_i          ( itf.clk          ),
    .reset_n_i      ( itf.reset_n      ),
    .multiplicand_i ( itf.multiplicand ),
    .multiplier_i   ( itf.multiplier   ),
    .start_i        ( itf.start        ),
    .ready_o        ( itf.rdy          ),
    .product_o      ( itf.product      ),
    .done_o         ( itf.done         )
);

assign itf.mult_op = dut.ms.op;
default clocking tb_clk @(negedge itf.clk); endclocking

initial begin
    $fsdbDumpfile("dump.fsdb");
    $fsdbDumpvars(0, "+all");
end

// DO NOT MODIFY CODE ABOVE THIS LINE

/* Uncomment to "monitor" changes to adder operational state over time */
// initial $monitor("[student_testbench] dut-op: time: %0t op: %s", $time, dut.ms.op.name);


// Resets the multiplier
task reset();
    itf.reset_n <= 1'b0;
    ##5;
    itf.reset_n <= 1'b1;
    ##1;
endtask : reset

// Assert start_i for one clock cycle
task start();
    itf.start <= 1'b1;
    ##1;
    itf.start <= 1'b0;
    ##1;
endtask : start

// Correctness check (at DONE state)
task check_if_correct();
    assert (dut.ready_o == 1'b1) else begin
        $error ("%0d: %0t: NOT_READY error detected", `__LINE__, $time);
        report_error (NOT_READY);
    end
endtask : check_if_correct

// Sanity check (at DONE state OR after reset_n is deasserted)
task check_if_ready();
    assert (dut.ready_o == 1'b1) else begin
        $error ("%0d: %0t: NOT_READY error detected", `__LINE__, $time);
        report_error (NOT_READY);
    end
endtask : check_if_ready

// error_e defined in package mult_types in file ../include/types.sv
// Asynchronously reports error in DUT to grading harness
function void report_error(error_e error);
    itf.tb_report_dut_error(error);
endfunction : report_error


initial itf.reset_n = 1'b0;
initial begin
    reset();
    /********************** Your Code Here *****************************/

    check_if_ready();
    itf.start <= 1'b0;
    ##(1);



    // [COVERAGE 1] Correctness of all possible input combinations

    for (int i = 0; i <= 16'hFFFF; i++) begin

        itf.multiplicand <= i[7:0];       // set the inputs
        itf.multiplier <= i[15:8];
        start();                            // start the DUT (NONE -> ADD)

        @(tb_clk iff dut.ms.op == DONE);    // wait for the DUT to finish (SHIFT -> NONE)
        check_if_ready();
        check_if_correct();

    end

    reset();
    check_if_ready();



    // [COVERAGE 2] Pressure test: start_i is asserted at a 'run' state.
    // The DUT is expected to IGNORE it and continue the operation.

    itf.multiplicand <= $urandom_range(0, 255);
    itf.multiplier <= $urandom_range(0, 255);
    start();

    @(tb_clk iff dut.ms.op == ADD);
    start();    // Noise!

    @(tb_clk iff dut.ms.op == DONE);
    check_if_ready();
    check_if_correct();

    // repeat for noise at SHIFT state
    itf.multiplicand <= $urandom_range(0, 255);
    itf.multiplier <= $urandom_range(0, 255);
    start();

    @(tb_clk iff dut.ms.op == SHIFT);
    start();

    @(tb_clk iff dut.ms.op == DONE);
    check_if_ready();
    check_if_correct();

    reset();
    check_if_ready();



    // [COVERAGE 3] Pressure test: reset_n_i is asserted at a 'run' state.
    // The DUT is expected to CATCH it and disrupt the operation.

    itf.multiplicand <= $urandom_range(0, 255);
    itf.multiplier <= $urandom_range(0, 255);
    start();

    @(tb_clk iff dut.ms.op == ADD);
    reset();            // Signal!
    check_if_ready();   // immediately follows

    // repeat for signal at SHIFT state
    itf.multiplicand <= $urandom_range(0, 255);
    itf.multiplier <= $urandom_range(0, 255);
    start();

    @(tb_clk iff dut.ms.op == SHIFT);
    reset();
    check_if_ready();



    /*******************************************************************/
    itf.finish(); // Use this finish task in order to let grading harness
                  // complete in process and/or scheduled operations
    $error("Improper Simulation Exit");
end


endmodule : testbench
`endif
