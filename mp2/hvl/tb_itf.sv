/**
 * Interface used by testbenches to communicate with memory and
 * the DUT.
**/
interface tb_itf(input clk);

bit rst;
logic mem_resp;
logic mem_read;
logic mem_write;
logic mem_error;
logic [3:0] mem_byte_enable;
logic [15:0] errcode;
logic [31:0] mem_address;
logic [31:0] mem_rdata;
logic [31:0] mem_wdata;
logic [31:0] write_data;
logic halt;
logic [31:0] registers [32];

// The monitor has a reset signal, which it needs, but
// you use initial blocks in your DUT, so we generate two clocks
initial mem_error = 1'b0;
initial mem_rdata = 32'h013;

function void report_error(string msg);
    $display("Grading Error: %s", msg);
endfunction


modport tb(
    input clk, rst, mem_resp, mem_rdata, halt, registers,
    output mem_read, mem_write, mem_byte_enable, mem_address,
            mem_wdata
);

clocking mcb @(posedge clk);
    input read = mem_read, write = mem_write, addr = mem_address,
          wdata = mem_wdata, byte_enable = mem_byte_enable;
    output resp = mem_resp, rdata = mem_rdata, error = mem_error;
endclocking

modport mem(clocking mcb, import report_error);

endinterface : tb_itf
