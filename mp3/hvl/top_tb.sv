module top_tb;

    timeunit 1ns;
    timeprecision 1ns;

    bit clk;
    initial clk = 1'b1;
    always #1 clk = ~clk;

    bit rst;

    int timeout = 10000000; //in cycles, change according to your needs

    bmem_itf bmem_itf(.*);
    cache_itf cache_itf(.*);
    mon_itf mon_itf(.*);

    burst_memory burst_memory(.itf(bmem_itf));
    shadow_memory shadow_memory(.itf(cache_itf));
    monitor monitor(.itf(mon_itf));

    mp3 dut(
        .clk          (clk),
        .rst          (rst),
        .bmem_address (bmem_itf.addr),
        .bmem_read    (bmem_itf.read),
        .bmem_write   (bmem_itf.write),
        .bmem_rdata   (bmem_itf.rdata),        
        .bmem_wdata   (bmem_itf.wdata),
        .bmem_resp    (bmem_itf.resp)
    );

    always_comb begin
        mon_itf.valid        = dut.cpu.load_pc;
        mon_itf.inst         = dut.cpu.datapath.IR.data;
        mon_itf.rs1_addr     = dut.cpu.control.rs1_addr;
        mon_itf.rs2_addr     = dut.cpu.control.rs2_addr;
        mon_itf.rs1_rdata    = dut.cpu.datapath.rs1_out;
        mon_itf.rs2_rdata    = dut.cpu.datapath.rs2_out;
        mon_itf.load_regfile = dut.cpu.load_regfile;
        mon_itf.rd_addr      = dut.cpu.datapath.rd;
        mon_itf.rd_wdata     = dut.cpu.datapath.regfilemux_out;
        mon_itf.pc_rdata     = dut.cpu.datapath.pc_out;
        mon_itf.pc_wdata     = dut.cpu.datapath.pcmux_out;
        mon_itf.mem_addr     = dut.cpu.datapath.mem_address;
        mon_itf.mem_rmask    = dut.cpu.control.rmask;
        mon_itf.mem_wmask    = dut.cpu.control.wmask;
        mon_itf.mem_rdata    = dut.cpu.datapath.mdrreg_out;
        mon_itf.mem_wdata    = dut.cpu.datapath.mem_wdata;

        cache_itf.addr        = dut.cache.mem_address;
        cache_itf.read        = dut.cache.mem_read;
        cache_itf.write       = dut.cache.mem_write;
        cache_itf.wmask       = dut.cache.mem_byte_enable;
        cache_itf.rdata       = dut.cache.mem_rdata;
        cache_itf.wdata       = dut.cache.mem_wdata;
        cache_itf.resp        = dut.cache.mem_resp;
    end

    initial begin
        $fsdbDumpfile("dump.fsdb");
        $fsdbDumpvars(0, "+all");
        rst = 1'b1;
        repeat (5) @(posedge clk);
        rst = 1'b0;
    end

    always @(posedge clk) begin
        if (mon_itf.halt) begin
            $finish;
        end
        if (timeout == 0) begin
            $error("TB Error: Timed out");
            $finish;
        end
        if (bmem_itf.error != 0 || cache_itf.error != 0 || mon_itf.error != 0) begin
            repeat (5) @(posedge clk);
            $finish;
        end
        timeout <= timeout - 1;
    end

endmodule
