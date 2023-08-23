`ifndef grader_itf
`define grader_itf

interface grader_itf(ref bit clk);
import mult_types::*;
import grader_types::*;

    struct {
        logic bp [time];
        logic nr [time];
    } grader_errors;
    mailbox #(trans_t) transbox = new();

    errnos_e grader_errno = grader_types::NONE;
    covers_t covers = '0;

    logic scbclk, monclk;
    initial scbclk = 1'b0;
    initial monclk = 1'b0;

    always @(clk) #1 scbclk = ~scbclk;
    always @(clk) #2 monclk = ~monclk;

/*************** Logical Clock **************/
    time timestamp;
    initial timestamp = '0;
    always @(posedge itf.clk) timestamp += '1;

    modport TrMon(input timestamp, monclk, ref transbox);
endinterface

`endif
