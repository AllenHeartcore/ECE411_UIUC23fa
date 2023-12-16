interface mem_itf(
    input   bit         clk,
    input   bit         rst
);

    logic   [31:0]      addr;
    logic               read;
    logic               write;
    logic   [3:0]       wmask;
    logic   [31:0]      rdata;
    logic   [31:0]      wdata;
    logic               resp;

    bit                 error = 1'b0;

    modport dut (
        input           clk,
        input           rst,
        output          addr,
        output          read,
        output          write,
        output          wmask,
        input           rdata,
        output          wdata,
        input           resp
    );

    modport mem (
        input           clk,
        input           rst,
        input           addr,
        input           read,
        input           write,
        input           wmask,
        output          rdata,
        input           wdata,
        output          resp,
        output          error
    );

    modport mon (
        input           clk,
        input           rst,
        input           addr,
        input           read,
        input           write,
        input           wmask,
        input           rdata,
        input           wdata,
        input           resp,
        output          error
    );

endinterface
