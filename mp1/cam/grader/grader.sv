`ifndef cam_grader_sv
`define cam_grader_sv

module grader(cam_itf itf);

import cam_types::*;
import grader_types::*;

grader_itf gitf(itf.clk);

transaction_monitor mon(.*);
transaction_scoreboard scb(.*);
int log_fd, stu_fd;

initial begin
    log_fd = $fopen("./log.txt", "w");
    stu_fd = $fopen("./student_log.txt", "w");
    if ((log_fd == 0) || (stu_fd == 0)) begin
        $error("%s %0d: Unable to open log file(s)",
                `__FILE__, `__LINE__);
        $exit;
    end
    $display("GDR: Grader Running");
    repeat (camsize_p * 10000) @(posedge itf.clk);
    $display("GDR: Timing Out");
    $finish;
end

task logCoverage(int fd, logic full);
    $fdisplay(fd, "[student_testbench] Passed %0d of %0d evict covers",
            $countones(gitf.covers.evicts), camsize_p);
    $fdisplay(fd, "[student_testbench] Passed %0d of %0d hits covers",
            $countones(gitf.covers.hits), camsize_p);
    $fdisplay(fd, "[student_testbench] Passed %0d of 1 Write-Write to same Key in Consecutive Cycles Cover",
                gitf.covers.ww_tag ? 1 : 0);
    $fdisplay(fd, "[student_testbench] Passed %0d of 1 Write-Read to same Key in Consecutive Cycles Cover",
                gitf.covers.wr_tag ? 1 : 0);
    if (full) begin
        for (int i = 0; i < camsize_p; ++i) begin
            if (!gitf.covers.evicts[i])
                $fdisplay(fd, "[student_testbench] Failed to cover eviect[%0d]", i);
        end
        for (int i = 0; i < camsize_p; ++i) begin
            if (!gitf.covers.hits[i])
                $fdisplay(fd, "[student_testbench] Failed to cover hits[%0d]", i);
        end
    end
endtask : logCoverage

function automatic int findErrors(const ref logic src [time], const ref logic dst [time]);
    const time search_radius = 1;
    int rv = 0;
    foreach(src[t]) begin
        rv += 1;
        for (time i = t-search_radius; i <= t+search_radius; ++i) begin
            if (dst.exists(i)) begin
                rv -= 1;
                break;
            end
        end
    end
    return rv;
endfunction : findErrors

int read_false_pos, read_false_neg;
function void setErrors;
    read_false_pos = findErrors(itf.stu_errors.read_error,
                                gitf.grd_errors.read_error);
    read_false_neg = findErrors(gitf.grd_errors.read_error,
                                itf.stu_errors.read_error);
endfunction

task logErrors(int fd);
    $fdisplay(fd, "[student_testbench] %0d False Positive Read Errors", read_false_pos);
    $fdisplay(fd, "[student_testbench] %0d False Negative Read Errors", read_false_neg);
endtask

final begin
    $display("GDR: Cleaning Up Grading Run...");
    logCoverage(log_fd, 1'b1);
    logCoverage(stu_fd, 1'b0);

    setErrors();
    logErrors(log_fd);
    logErrors(stu_fd);

    if (gitf.grd_errors.read_error.size() != 0) begin
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
