interface bmem_itf(
    input   bit         clk,
    input   bit         rst
);

    logic   [31:0]      addr;
    logic               read;
    logic               write;
    logic   [63:0]      rdata;
    logic   [63:0]      wdata;
    logic               resp;

    bit                 error = 1'b0;

    modport dut (
        input           clk,
        input           rst,
        output          addr,
        output          read,
        output          write,
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
        input           rdata,
        input           wdata,
        input           resp,
        output          error
    );

endinterface
