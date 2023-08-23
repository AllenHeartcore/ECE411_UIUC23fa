`ifndef grader
`define grader


module grader(fifo_itf itf);
import fifo_types::*;
import grader_types::*;

grader_itf gitf(itf.clk);

transaction_monitor mon (.*);
transaction_scoreboard scb (.*);

int log_fd, stu_fd;
string err;

initial begin
    log_fd = $fopen("./log.txt", "w");
    stu_fd = $fopen("./student_log.txt", "w");
    if ((log_fd == 0) || (stu_fd == 0)) begin
        $error("%s %0d: Unable to open log file(s)",
                `__FILE__, `__LINE__);
        $exit;
    end
    $display("GDR: Grader Running");
    repeat (CAP_P * 1000) @(posedge itf.clk);
    $display("GDR: Timing Out");
    $finish;
end

function automatic int findErrors(const ref logic src [time],
                                  const ref logic dst [time]);
    int rv = 0;
    foreach(src[t]) begin
        if (!dst.exists(t)) begin
          rv += 1;
        end
    end
    return rv;
endfunction : findErrors

int res_false_pos, res_false_neg, data_false_pos, data_false_neg;
function void setErrors;
    res_false_pos = findErrors(itf.stu_errors.res, gitf.grd_errors.res);
    res_false_neg = findErrors(gitf.grd_errors.res, itf.stu_errors.res);
    data_false_pos = findErrors(itf.stu_errors.data, gitf.grd_errors.data);
    data_false_neg = findErrors(gitf.grd_errors.data, itf.stu_errors.data);
endfunction


task logErrors(int fd);
    $fdisplay(fd, "[student_testbench] %0d False Positive Reset Errors", res_false_pos);
    $fdisplay(fd, "[student_testbench] %0d False Negative Reset Errors", res_false_neg);
    $fdisplay(fd, "[student_testbench] %0d False Positive Data Errors", data_false_pos);
    $fdisplay(fd, "[student_testbench] %0d False Negative Data Errors", data_false_neg);
endtask

task logCoverage(int fd, logic full);
    $fdisplay(fd, "[student_testbench] Passed %0d of %0d enqueue covers",
        $countones(gitf.covers.enqs), CAP_P);
    $fdisplay(fd, "[student_testbench] Passed %0d of %0d dequeue covers",
        $countones(gitf.covers.deqs), CAP_P);
    $fdisplay(fd, "[student_testbench] Passed %0d of %0d both covers",
        $countones(gitf.covers.boths), CAP_P-1);
    if (full) begin
        for (int i = 0; i < $size(gitf.covers.enqs)-1; ++i)
            if (!gitf.covers.enqs[i])
                $fdisplay(fd, "[student_testbench] Failed Enqueue[%0d]", i);
            for (int i = 1; i < $size(gitf.covers.deqs); ++i)
            if (!gitf.covers.deqs[i])
                $fdisplay(fd, "[student_testbench] Failed Dequeue[%0d]", i);
            for (int i = 1; i < $size(gitf.covers.boths)-1; ++i)
            if (!gitf.covers.boths[i])
                $fdisplay(fd, "[student_testbench] Failed Both[%0d]", i);
    end
endtask : logCoverage

final begin
    $display("GDR: Cleaning Up Grading Run...");
    logCoverage(log_fd, 1'b1);
    logCoverage(stu_fd, 1'b0);
    setErrors();
    logErrors(log_fd);
    logErrors(stu_fd);
    if (gitf.grd_errors.res.size() != 0 || gitf.grd_errors.data.size() != 0) begin
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
