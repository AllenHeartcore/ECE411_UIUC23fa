
module testbench(cam_itf itf);
import cam_types::*;

cam dut (
    .clk_i     ( itf.clk     ),
    .reset_n_i ( itf.reset_n ),
    .rw_n_i    ( itf.rw_n    ),
    .valid_i   ( itf.valid_i ),
    .key_i     ( itf.key     ),
    .val_i     ( itf.val_i   ),
    .val_o     ( itf.val_o   ),
    .valid_o   ( itf.valid_o )
);

default clocking tb_clk @(negedge itf.clk); endclocking

initial begin
    $fsdbDumpfile("dump.fsdb");
    $fsdbDumpvars(0, "+all");
end

task reset();
    itf.reset_n <= 1'b0;
    repeat (5) @(tb_clk);
    itf.reset_n <= 1'b1;
    repeat (5) @(tb_clk);
endtask

// DO NOT MODIFY CODE ABOVE THIS LINE

task write(input key_t key, input val_t val);
endtask

task read(input key_t key, output val_t val);
endtask

task check_read_error(int expected);
    assert (itf.val_o == expected) else begin
        itf.tb_report_dut_error(READ_ERROR);
        $error("%0t TB: Read %0d, expected %0d", $time, itf.val_o, expected);
    end
endtask

initial begin
    $display("Starting CAM Tests");

    reset();
    /************************** Your Code Here ****************************/
    // Feel free to make helper tasks / functions, initial / always blocks, etc.
    // Consider using the task skeltons above
    // To report errors, call itf.tb_report_dut_error in cam/include/cam_itf.sv

    `define READ  1'b1
    `define WRITE 1'b0
    `define MAGIC_1 16'h171A // chosen at random
    `define MAGIC_2 16'hDC8B
    `define MAGIC_3 16'h56F8
    `define MAGIC_4 16'h2C1A

    // [Initial Population]
    itf.valid_i <= 1'b1;
    itf.rw_n    <= `WRITE;
    for (int i = 0; i < camsize_p; i++) begin
        itf.key   <= i ^ `MAGIC_1;
        itf.val_i <= i ^ `MAGIC_2;
        @(tb_clk);
    end

    // [COVERAGE 1] Entry evictions
    for (int i = 0; i < camsize_p; i++) begin
        itf.key   <= i ^ `MAGIC_3;
        itf.val_i <= i ^ `MAGIC_4;
        @(tb_clk);
    end

    // [COVERAGE 2] Read hits
    itf.rw_n    <= `READ;
    for (int i = 0; i < camsize_p; i++) begin
        itf.key   <= i ^ `MAGIC_3;
        @(tb_clk iff itf.valid_o);
        check_read_error(i ^ `MAGIC_4);
    end

    // [COVERAGE 3] Consecutive writes to the same key
    // [COVERAGE 4] Reading a key that was just written
    itf.rw_n    <= `WRITE;
    itf.key     <= `MAGIC_1;
    itf.val_i   <= `MAGIC_2;
    @(tb_clk);
    itf.val_i   <= `MAGIC_3;
    @(tb_clk);
    itf.rw_n    <= `READ;
    @(tb_clk iff itf.valid_o);
    check_read_error(`MAGIC_3);

    /**********************************************************************/

    itf.finish();
end

endmodule : testbench
