`ifndef testbench
`define testbench


module testbench(fifo_itf itf);
import fifo_types::*;

fifo_synch_1r1w dut (
    .clk_i     ( itf.clk     ),
    .reset_n_i ( itf.reset_n ),

    // valid-ready enqueue protocol
    .data_i    ( itf.data_i  ),
    .valid_i   ( itf.valid_i ),
    .ready_o   ( itf.rdy     ),

    // valid-yumi deqeueue protocol
    .valid_o   ( itf.valid_o ),
    .data_o    ( itf.data_o  ),
    .yumi_i    ( itf.yumi    )
);

initial begin
    $fsdbDumpfile("dump.fsdb");
    $fsdbDumpvars(0, "+all");
end

// Clock Synchronizer for Student Use
default clocking tb_clk @(negedge itf.clk); endclocking

task reset();
    itf.reset_n <= 1'b0;
    ##(10);
    itf.reset_n <= 1'b1;
    ##(1);
endtask : reset

function automatic void report_error(error_e err); 
    itf.tb_report_dut_error(err);
endfunction : report_error

// DO NOT MODIFY CODE ABOVE THIS LINE

task check_if_equal(int expected);
    assert (dut.data_o == expected) else begin
        $error ("%0d: %0t: INCORRECT_DATA_O_ON_YUMI_I error detected", `__LINE__, $time);
        report_error (INCORRECT_DATA_O_ON_YUMI_I);
    end
endtask : check_if_equal

task check_if_ready();
    assert (dut.ready_o == 1'b1) else begin
        $error ("%0d: %0t: RESET_DOES_NOT_CAUSE_READY_O error detected", `__LINE__, $time);
        report_error (RESET_DOES_NOT_CAUSE_READY_O);
    end
endtask : check_if_ready

initial begin
    reset();
    /************************ Your Code Here ***********************/
    // Feel free to make helper tasks / functions, initial / always blocks, etc.

    `define MAGIC_1 8'b10100101
    `define MAGIC_2 8'b01011010

    check_if_ready();

    // [COVERAGE 1] Sequential enqueue
    itf.valid_i <= 1'b1;
    for (int i = 0; i < CAP_P; i++) begin
        /* for an especially buggy design, say it enqueues the
           pointer value instead, we can catch these errors by 
           avoiding enqueueing a simple increasing sequence */
        itf.data_i <= i ^ `MAGIC_1;
        ##(1);
    end
    itf.valid_i <= 1'b0;

    // [COVERAGE 2] Sequential dequeue
    itf.yumi <= 1'b1;
    for (int i = 0; i < CAP_P; i++) begin
        check_if_equal(i ^ `MAGIC_1);
        ##(1);
    end
    itf.yumi <= 1'b0;

    reset(); // in (a buggy) case that any data lingers around
    check_if_ready();

    // [COVERAGE 3] Simultaneous enqueue and dequeue
    itf.valid_i <= 1'b1;
    for (int i = 0; i < CAP_P; i++) begin
        itf.data_i <= i ^ `MAGIC_2;
        ##(1);
        itf.yumi <= 1'b1;
        ##(1);
        check_if_equal(((i + 1) / 2) ^ `MAGIC_2); // two ins, one out
        itf.yumi <= 1'b0;
    end
    itf.valid_i <= 1'b0;

    reset();
    check_if_ready();

    /***************************************************************/
    // Make sure your test bench exits by calling itf.finish();
    itf.finish();
    $error("TB: Illegal Exit ocurred");
end

endmodule : testbench
`endif

