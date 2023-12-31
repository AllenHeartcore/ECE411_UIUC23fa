import "DPI-C" function string getenv(input string env_name);

module top_tb;

    timeunit 1ps;
    timeprecision 1ps;

    int clock_period_ps = getenv("CLOCK_PERIOD_PS").atoi() / 2;

    bit clk;
    initial clk = 1'b1;
    always #(clock_period_ps) clk = ~clk;

    bit rst;

// `define USE_TIMEOUT
    int timeout = 1000000; // in cycles, change according to your needs

    import cache_params_pkg::*;

    // CP1
    // mem_itf magic_itf_i(.*);
    // mem_itf magic_itf_d(.*);
    // magic_dual_port magic_dual_port(.itf_i(magic_itf_i), .itf_d(magic_itf_d));

    // CP2
    bmem_itf bmem_itf(.*);
    burst_memory #(
        .DRAM_PARAM_BURST_LEN (2 ** (CACHE_LOG2_WORDSIZE - 6))
    ) burst_memory (.itf(bmem_itf));

    mon_itf mon_itf(.*);    
    monitor monitor(.itf(mon_itf));

    mp4 dut (
        .clk          (clk),
        .rst          (rst),

        // Use these for CP1
        // .imem_address  (magic_itf_i.addr),
        // .imem_read     (magic_itf_i.read),
        // .imem_rdata    (magic_itf_i.rdata),
        // .imem_resp     (magic_itf_i.resp),
        // .dmem_address  (magic_itf_d.addr),
        // .dmem_read     (magic_itf_d.read),
        // .dmem_write    (magic_itf_d.write),
        // .dmem_wmask    (magic_itf_d.wmask),
        // .dmem_rdata    (magic_itf_d.rdata),
        // .dmem_wdata    (magic_itf_d.wdata),
        // .dmem_resp     (magic_itf_d.resp)

        // Use these for CP2+
        .bmem_address (bmem_itf.addr),
        .bmem_read    (bmem_itf.read),
        .bmem_write   (bmem_itf.write),
        .bmem_rdata   (bmem_itf.rdata),
        .bmem_wdata   (bmem_itf.wdata),
        .bmem_resp    (bmem_itf.resp)
    );

    always_comb begin
        mon_itf.valid     = dut.monitor_valid;
        mon_itf.order     = dut.monitor_order;
        mon_itf.inst      = dut.monitor_inst;
        mon_itf.rs1_addr  = dut.monitor_rs1_addr;
        mon_itf.rs2_addr  = dut.monitor_rs2_addr;
        mon_itf.rs1_rdata = dut.monitor_rs1_rdata;
        mon_itf.rs2_rdata = dut.monitor_rs2_rdata;
        mon_itf.rd_addr   = dut.monitor_rd_addr;
        mon_itf.rd_wdata  = dut.monitor_rd_wdata;
        mon_itf.pc_rdata  = dut.monitor_pc_rdata;
        mon_itf.pc_wdata  = dut.monitor_pc_wdata;
        mon_itf.mem_addr  = dut.monitor_mem_addr;
        mon_itf.mem_rmask = dut.monitor_mem_rmask;
        mon_itf.mem_wmask = dut.monitor_mem_wmask;
        mon_itf.mem_rdata = dut.monitor_mem_rdata;
        mon_itf.mem_wdata = dut.monitor_mem_wdata;
    end

    initial begin
        $fsdbDumpfile("dump.fsdb");
        $fsdbDumpvars(0, "+all");
        rst = 1'b1;
        repeat (2) @(posedge clk);
        rst <= 1'b0;
    end

    // predictor and prefetcher performance counters
    logic [31:0]   predictor_miss_count;
    logic  [31:0] is_branch_count;
    logic  last_is_mispredict;
    logic  last_is_branch;
    always @(posedge clk) begin
        if(rst) begin
            last_is_branch <= 1'b0;
            predictor_miss_count <= 0;
            is_branch_count <= 0;
            last_is_mispredict <= 1'b0;
        end else if(dut.datapath.branch_mispredict && dut.datapath.ex_enable && dut.hazard_ctrl.load_ex_mem && (~last_is_mispredict)) begin
            predictor_miss_count <= predictor_miss_count + 1;
            last_is_mispredict <= 1'b1;
        end else begin
            last_is_mispredict <= 1'b0;
        end
        
        if(!rst) begin
            last_is_branch <= dut.datapath.ex_is_branch;
            if(dut.datapath.ex_is_branch && (~last_is_branch)) begin
                is_branch_count <= is_branch_count + 1;
            end
        end
    end

    logic [31:0]   prefetcher_count;
    always @(posedge clk) begin
        if(rst) begin
            prefetcher_count <= 0;
        end else if(dut.prefetcher.end_prefetch) begin
            prefetcher_count <= prefetcher_count + 1;
        end
    end



    always @(posedge clk) begin
        if (mon_itf.halt
`ifdef USE_TIMEOUT
            || timeout == 0
`endif
        ) begin
            $display("L1 I Cache: %d hits, %d misses, %d cycles, %10.3f penalty",
                dut.imem_cache._perf_countHit,
                dut.imem_cache._perf_countMiss,
                dut.imem_cache._perf_countTimer,
                dut.imem_cache._perf_countPenalty * 1.0 / dut.imem_cache._perf_countMiss
            );
`ifdef MULTILV_I_CACHE
            $display("L2 I Cache: %d hits, %d misses, %d cycles, %10.3f penalty",
                dut.i2mem_cache._perf_countHit,
                dut.i2mem_cache._perf_countMiss,
                dut.i2mem_cache._perf_countTimer,
                dut.i2mem_cache._perf_countPenalty * 1.0 / dut.i2mem_cache._perf_countMiss
            );
`endif
            $display("L1 D Cache: %d hits, %d misses, %d cycles, %10.3f penalty",
                dut.dmem_cache._perf_countHit,
                dut.dmem_cache._perf_countMiss,
                dut.dmem_cache._perf_countTimer,
                dut.dmem_cache._perf_countPenalty * 1.0 / dut.dmem_cache._perf_countMiss
            );
`ifdef MULTILV_D_CACHE
            $display("L2 D Cache: %d hits, %d misses, %d cycles, %10.3f penalty",
                dut.d2mem_cache._perf_countHit,
                dut.d2mem_cache._perf_countMiss,
                dut.d2mem_cache._perf_countTimer,
                dut.d2mem_cache._perf_countPenalty * 1.0 / dut.d2mem_cache._perf_countMiss
            );
`endif

            $display("Predictor :%d misses for %d branch instr.", predictor_miss_count, is_branch_count);
            $display("Prefetcher:%d prefetches", prefetcher_count);

`ifdef USE_TIMEOUT
            if (timeout == 0)
                $error("TB Error: Timed out");
`endif
            $finish;
        end
        if (mon_itf.error != 0) begin
            repeat (5) @(posedge clk);
            $finish;
        end
        // if(dut.monitor_pc_rdata == 32'h40002840) begin
        //     $display("------------PC: %h---------------", dut.monitor_pc_rdata);
        //     $display("REGFILE INFO DUMP");
        //     $display("x0: %h ", dut.datapath.REGFILE.data[0]);
        //     for (int i = 1; i < 32; i = i + 1) begin
        //         $display("x%d: %h ", i, dut.datapath.REGFILE.data[i]);
        //         if(i % 8 == 0) begin
        //             $display("");
        //         end
        //     end
        // end
        // Comment this for CP2+
        // if (magic_itf_i.error != 0 || magic_itf_d.error != 0) begin
        //     repeat (5) @(posedge clk);
        //     $finish;
        // end
        // Uncomment this for CP2+
        if (bmem_itf.error != 0) begin
            repeat (5) @(posedge clk);
            $finish;
        end
        timeout <= timeout - 1;
    end

endmodule
