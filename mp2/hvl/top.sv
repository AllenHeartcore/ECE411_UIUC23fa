`define SRC 0
`define RAND 1
`define MODERN_RAND 2
`define TESTBENCH `SRC


module mp2_tb;

timeunit 1ns;
timeprecision 1ns;

/****************************** Generate Clock *******************************/
bit clk;
always #1 clk = clk === 1'b0;


/*********************** Variable/Interface Declarations *********************/
logic commit;
assign commit = dut.load_pc;
tb_itf itf(clk);
logic [63:0] order;
initial order = 0;
always @(posedge itf.clk iff commit) order <= order + 1;
int timeout = 1000000;   // Feel Free to adjust the timeout value
assign itf.halt = dut.load_pc &
                  (dut.datapath.pc_out == dut.datapath.pcmux_out) &
                  (
                      (dut.datapath.IR.data == 32'h00000063) |
                      (dut.datapath.IR.data == 32'h0000006F)
                  );
/*****************************************************************************/

/************************** Testbench Instantiation **************************/
// source_tb --- drives the dut by executing a RISC-V binary
// random_tb --- drives the dut by generating random input vectors
generate
if (`TESTBENCH == `SRC) begin : testbench
    source_tb tb(.mem_itf(itf));
end
else if (`TESTBENCH == `RAND) begin : testbench
    random_tb tb(.itf(itf), .mem_itf(itf));
end
else begin
    modern_random_tb tb(.itf(itf), .mem_itf(itf));
end
endgenerate

// Initial Reset
initial begin
    $fsdbDumpfile("dump.fsdb");
    $fsdbDumpvars(0, mp2_tb, "+all");
    itf.rst = 1'b1;
    repeat (5) @(posedge clk);
    itf.rst = 1'b0;
end
/*****************************************************************************/


/************************* Error Halting Conditions **************************/
// Stop simulation on error detection
always @(itf.errcode iff (itf.errcode != 0)) begin
    $system($sformatf("echo 'DASM(%8h)' | spike-dasm", dut.datapath.IR.data));
    repeat (5) @(posedge itf.clk);
    $display("TOP: RVFI Errcode: %0d", itf.errcode);
    $finish;
end

always @(itf.mem_error iff (itf.mem_error != 0)) begin
    repeat (5) @(posedge itf.clk);
    $display("TOP: Memory Error");
    $finish;
end

// Stop simulation on timeout (stall detection), halt
always @(posedge itf.clk) begin
    if (itf.halt)
        $finish;
    if (timeout == 0) begin
        $display("TOP: Timed out");
        $finish;
    end
    timeout <= timeout - 1;
end

/*****************************************************************************/

mp2 dut(
    .clk             (itf.clk),
    .rst             (itf.rst),
    .mem_resp        (itf.mem_resp),
    .mem_rdata       (itf.mem_rdata),
    .mem_read        (itf.mem_read),
    .mem_write       (itf.mem_write),
    .mem_byte_enable (itf.mem_byte_enable),
    .mem_address     (itf.mem_address),
    .mem_wdata       (itf.mem_wdata)
);

riscv_formal_monitor_rv32i monitor(
    .clock (itf.clk),
    .reset (itf.rst),
    .rvfi_valid (commit),
    .rvfi_order (order),
    .rvfi_insn (dut.datapath.IR.data),
    .rvfi_trap(dut.control.trap),
    .rvfi_halt(itf.halt),
    .rvfi_intr(1'b0),
    .rvfi_mode(2'b00),
    .rvfi_rs1_addr(dut.control.rs1_addr),
    .rvfi_rs2_addr(dut.control.rs2_addr),
    .rvfi_rs1_rdata(monitor.rvfi_rs1_addr ? dut.datapath.rs1_out : 0),
    .rvfi_rs2_rdata(monitor.rvfi_rs2_addr ? dut.datapath.rs2_out : 0),
    .rvfi_rd_addr(dut.load_regfile ? dut.datapath.rd : 5'h0),
    .rvfi_rd_wdata(monitor.rvfi_rd_addr ? dut.datapath.regfilemux_out : 0),
    .rvfi_pc_rdata(dut.datapath.pc_out),
    .rvfi_pc_wdata(dut.datapath.pcmux_out),
    .rvfi_mem_addr({itf.mem_address[31:2], 2'b00}),
    .rvfi_mem_rmask(dut.control.rmask),
    .rvfi_mem_wmask(dut.control.wmask),
    .rvfi_mem_rdata(dut.datapath.mdrreg_out),
    .rvfi_mem_wdata(dut.datapath.mem_wdata),
    .rvfi_mem_extamo(1'b0),
    .errcode(itf.errcode)
);

int fd;
initial fd = $fopen("./spike.log", "w");
final $fclose(fd);

int commit_counter;
initial commit_counter = 1;

logic           spike_print_clk      ;
logic			spike_print_valid    ;
logic	[31:0]	spike_print_pc       ;
logic	[31:0]	spike_print_ir       ;
logic			spike_print_regf_we  ;
logic	[4:0]	spike_print_rd_s     ;
logic	[31:0]	spike_print_rd_v     ;
logic	[3:0]	spike_print_rmask    ;
logic	[3:0]	spike_print_wmask    ;
logic	[31:0]	spike_print_dm_addr  ;
logic	[31:0]	spike_print_dm_wdata ;

assign          spike_print_clk      = itf.clk;
assign			spike_print_valid    = commit;
assign			spike_print_pc       = dut.datapath.pc_out;
assign			spike_print_ir       = dut.datapath.IR.data;
assign			spike_print_regf_we  = dut.load_regfile;
assign			spike_print_rd_s     = dut.datapath.rd;
assign			spike_print_rd_v     = dut.datapath.regfilemux_out;
assign			spike_print_rmask    = dut.control.rmask;
assign			spike_print_wmask    = dut.control.wmask;
assign			spike_print_dm_addr  = {itf.mem_address[31:2], 2'b00};
assign			spike_print_dm_wdata = dut.datapath.mem_wdata;

always @ (negedge spike_print_clk) begin
	if(spike_print_valid) begin
		commit_counter += 1;
		if (commit_counter % 1000 == 0) begin
			$display("commit %d, rd_s: x%02d, rd: 0x%h", commit_counter, spike_print_rd_s, spike_print_rd_v);
		end
		$fwrite(fd, "core   0: 3 0x%h (0x%h)", spike_print_pc, spike_print_ir);
		if (spike_print_regf_we == 1'b1 && spike_print_rd_s != 0) begin
			if (spike_print_rd_s < 10)
				$fwrite(fd, " x%0d  ", spike_print_rd_s);
			else
				$fwrite(fd, " x%0d ", spike_print_rd_s);
			$fwrite(fd, "0x%h", spike_print_rd_v);
		end
		if (spike_print_rmask != 0) begin
			automatic int first_1 = 0;
			for(int i = 0; i < 4; i++) begin
				if(spike_print_rmask[i]) begin
					first_1 = i;
					break;
				end
			end
			$fwrite(fd, " mem 0x%h", spike_print_dm_addr + first_1);
		end
		if (spike_print_wmask != 0) begin
			automatic int amount_o_1 = 0;
			automatic int first_1 = 0;
			for(int i = 0; i < 4; i++) begin
				if(spike_print_wmask[i]) begin
					amount_o_1 += 1;
				end
			end
			for(int i = 0; i < 4; i++) begin
				if(spike_print_wmask[i]) begin
					first_1 = i;
					break;
				end
			end
			$fwrite(fd, " mem 0x%h", spike_print_dm_addr + first_1);
			case (amount_o_1)
				1: begin
					automatic logic[7:0] wdata_byte = spike_print_dm_wdata[8*first_1 +: 8];
					$fwrite(fd, " 0x%h", wdata_byte);
				end
				2: begin
					automatic logic[15:0] wdata_half = spike_print_dm_wdata[8*first_1 +: 16];
					$fwrite(fd, " 0x%h", wdata_half);
				end
				4:
					$fwrite(fd, " 0x%h", spike_print_dm_wdata);
			endcase
		end
		$fwrite(fd, "\n");
	end
end

endmodule : mp2_tb
