
`ifndef grader
`define grader
module grader(multiplier_itf itf);
import mult_types::*;
import grader_types::*;


grader_itf gitf(itf.clk);

transaction_monitor mon(.itf(gitf), .mitf(itf));
transaction_scoreboard scb(.itf(gitf), .mitf(itf));


int log_fd, stu_fd;
string err;
// Open log files and generate timeout
initial begin
    log_fd = $fopen("./log.txt", "w");
    stu_fd = $fopen("./student_log.txt", "w");
    if ((log_fd == 0) || (stu_fd == 0)) begin
        $error("%s %0d: Unable to open log file(s)",
                `__FILE__, `__LINE__);
        $exit;
    end
    $display("GDR: Grader Running");
    repeat (operand_limit * operand_limit * 100) @(posedge itf.clk);
    $display("GDR: Grader timed out");
    $finish;
end

task logCoverage(int fd, logic full);
    static int mult_covers;
    mult_covers = 0;
    for (int i = '0; i < operand_limit; ++i) begin
        for (int j = '0; j < operand_limit; ++j) begin
            if (gitf.covers.mults[i][j])
                mult_covers += 1;
            if (full && !gitf.covers.mults[i][j]) begin
                $fdisplay(fd, "[student_testbench] Failed %0d * %0d cover",
                    i, j);
            end
        end
    end
    $fdisplay(fd, "[student_testbench] Passed %0d of %0d multiply operand covers",
                mult_covers, operand_limit * operand_limit);
    $fdisplay(fd, "[student_testbench] Passed %0d of 1 reset in ADD cover",
                gitf.covers.reset_add ? 1 : 0);
    $fdisplay(fd, "[student_testbench] Passed %0d of 1 reset in SHIFT cover",
                gitf.covers.reset_shift ? 1 : 0);
    $fdisplay(fd, "[student_testbench] Passed %0d of 1 start in ADD cover",
                gitf.covers.start_add ? 1 : 0);
    $fdisplay(fd, "[student_testbench] Passed %0d of 1 start in SHIFT cover",
                gitf.covers.start_shift ? 1 : 0);
endtask

function automatic int findErrors(const ref logic src [time],
                                  const ref logic dst [time]);
    const time search_radius = 2;
    int rv = 0;
    foreach(src[t]) begin
        $display("src[%0t]", t);
        rv += 1;
        for (time i = t-search_radius; i <= t+search_radius; ++i) begin
            if (dst.exists(i)) begin
                rv -= 1;
                break;
            end
        end
    end
    return rv;
endfunction

int bp_false_pos, bp_false_neg, nr_false_pos, nr_false_neg;
function void setErrors;
    bp_false_pos = findErrors(itf.stu_errors.bp, gitf.grader_errors.bp);
    bp_false_neg = findErrors(gitf.grader_errors.bp, itf.stu_errors.bp);
    nr_false_pos = findErrors(itf.stu_errors.nr, gitf.grader_errors.nr);
    nr_false_neg = findErrors(gitf.grader_errors.nr, itf.stu_errors.nr);
endfunction

task logErrors(int fd);
    $fdisplay(fd, "[student_testbench] %0d False Positive BAD_PRODUCT Errors", bp_false_pos);
    $fdisplay(fd, "[student_testbench] %0d False Negative BAD_PRODUCT Errors", bp_false_neg);
    $fdisplay(fd, "[student_testbench] %0d False Positive NOT_READY Errors", nr_false_pos);
    $fdisplay(fd, "[student_testbench] %0d False Negative NOT_READY Errors", nr_false_neg);
endtask


final begin
    $display("Cleaning-up Test Run...");
    logCoverage(log_fd, 1'b1);
    logCoverage(stu_fd, 1'b0);
    setErrors();
    logErrors(log_fd);
    logErrors(stu_fd);
    if (gitf.grader_errors.bp.size() != 0 || gitf.grader_errors.nr.size() != 0) begin
      $fdisplay(log_fd, "[provided_dut] DUT failed verification");
      $fdisplay(stu_fd, "[provided_dut] DUT failed verification");
    end else begin
      $fdisplay(log_fd, "[provided_dut] DUT passed verification");
      $fdisplay(stu_fd, "[provided_dut] DUT passed verification");
    end
    $fclose(log_fd);
    $fclose(stu_fd);
end

endmodule : grader

`endif
