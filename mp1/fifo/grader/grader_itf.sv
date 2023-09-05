`ifndef grader_itf
`define grader_itf

interface grader_itf(ref bit clk);
import fifo_types::*;
import grader_types::*;

mailbox #(trans_t) transbox = new();

struct {
    logic res [time];
    logic data [time];
} grd_errors;

function automatic void grd_report_dut_error(error_e err, time timestamp);
    case (err)
        RESET_DOES_NOT_CAUSE_READY_O: grd_errors.res[timestamp] = 1'b1;
        INCORRECT_DATA_O_ON_YUMI_I: grd_errors.data[timestamp] = 1'b1;
        default: $fatal("TB reporting Unknown error");
    endcase
endfunction

covers_t covers;
errnos_e errno;
bit scbclk, monclk;


initial scbclk = 1'b0;
initial monclk = 1'b0;
initial errno = NONE;
initial covers = '0;

always @(clk) #1 scbclk = ~scbclk;
always @(clk) #2 monclk = ~monclk;


endinterface : grader_itf
`endif

