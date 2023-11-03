# AG Report MP4CP2 2023-11-02T23:59:59-05:00 
Report generated at 2023-11-03T00:01:11-05:00, using commit ``c7b37193f97a324024500574783971dfff1327ed``

Autograder Run ID: 070e517c-94cf-4a59-be6e-1c9788d53f63

Autograder Job ID: a86c055d-04b3-4524-a200-d3466429d644


## Logs
<details><summary>Compile ❌</summary> 

 ``` 
 mkdir -p sim
cd sim && vcs /tmp/dut/pkg/types.sv /tmp/dut/hdl/cpu/hazard_ctrl.sv /tmp/dut/hdl/cpu/utils_reg.sv /tmp/dut/hdl/cpu/utils_ex.sv /tmp/dut/hdl/cpu/datapath.sv /tmp/dut/hdl/cpu/ctrl_word.sv /tmp/dut/hdl/cpu/cpu.sv /tmp/dut/hdl/cpu/pipeline_reg.sv /tmp/dut/hdl/mp4.sv /tmp/dut/hvl/top_tb.sv /tmp/dut/hvl/rvfimon.v /tmp/dut/hvl/monitor.sv /tmp/dut/hvl/mon_itf.sv /tmp/dut/hvl/burst_memory.sv /tmp/dut/hvl/bmem_itf.sv  -full64 -lca -sverilog +lint=all,noNS -timescale=1ns/1ns -debug_acc+all -kdb -fsdb -suppress=LCA_FEATURES_ENABLED -licqueue -msg_config=../vcs_warn.config -l compile.log -top top_tb -o top_tb
                         Chronologic VCS (TM)
      Version R-2020.12-SP1-1_Full64 -- Fri Nov  3 00:01:15 2023

                    Copyright (c) 1991 - 2021 Synopsys, Inc.
   This software and the associated documentation are proprietary to Synopsys,
 Inc. This software may only be used in accordance with the terms and conditions
 of a written license agreement with Synopsys, Inc. All other use, reproduction,
            or distribution of this software is strictly prohibited.

Parsing design file '/tmp/dut/pkg/types.sv'
Parsing design file '/tmp/dut/hdl/cpu/hazard_ctrl.sv'
Parsing design file '/tmp/dut/hdl/cpu/utils_reg.sv'
Parsing design file '/tmp/dut/hdl/cpu/utils_ex.sv'
Parsing design file '/tmp/dut/hdl/cpu/datapath.sv'
Parsing design file '/tmp/dut/hdl/cpu/ctrl_word.sv'
Parsing design file '/tmp/dut/hdl/cpu/cpu.sv'
Parsing design file '/tmp/dut/hdl/cpu/pipeline_reg.sv'
Parsing design file '/tmp/dut/hdl/mp4.sv'
Parsing design file '/tmp/dut/hvl/top_tb.sv'
Parsing design file '/tmp/dut/hvl/rvfimon.v'
Parsing design file '/tmp/dut/hvl/monitor.sv'
Parsing design file '/tmp/dut/hvl/mon_itf.sv'
Parsing design file '/tmp/dut/hvl/burst_memory.sv'
Parsing design file '/tmp/dut/hvl/bmem_itf.sv'
Top Level Modules:
       top_tb
TimeScale is 1 ps / 1 ps

Error-[UPIMI-E] Undefined port in module instantiation
/tmp/dut/hvl/top_tb.sv, 24
  Port "bmem_address" is not defined in module 'mp4' defined in 
  "/tmp/dut/hdl/mp4.sv", 1
  Module instance: mp4 dut( .clk (clk),  .rst (rst),  .bmem_address 
  (bmem_itf.addr),  .bmem_read (bmem_itf.read),  .bmem_write (bmem_itf.write),
  .bmem_rdata (bmem_itf.rdata),   ...


Error-[UPIMI-E] Undefined port in module instantiation
/tmp/dut/hvl/top_tb.sv, 24
  Port "bmem_read" is not defined in module 'mp4' defined in 
  "/tmp/dut/hdl/mp4.sv", 1
  Module instance: mp4 dut( .clk (clk),  .rst (rst),  .bmem_address 
  (bmem_itf.addr),  .bmem_read (bmem_itf.read),  .bmem_write (bmem_itf.write),
  .bmem_rdata (bmem_itf.rdata),   ...


Error-[UPIMI-E] Undefined port in module instantiation
/tmp/dut/hvl/top_tb.sv, 24
  Port "bmem_write" is not defined in module 'mp4' defined in 
  "/tmp/dut/hdl/mp4.sv", 1
  Module instance: mp4 dut( .clk (clk),  .rst (rst),  .bmem_address 
  (bmem_itf.addr),  .bmem_read (bmem_itf.read),  .bmem_write (bmem_itf.write),
  .bmem_rdata (bmem_itf.rdata),   ...


Error-[UPIMI-E] Undefined port in module instantiation
/tmp/dut/hvl/top_tb.sv, 24
  Port "bmem_rdata" is not defined in module 'mp4' defined in 
  "/tmp/dut/hdl/mp4.sv", 1
  Module instance: mp4 dut( .clk (clk),  .rst (rst),  .bmem_address 
  (bmem_itf.addr),  .bmem_read (bmem_itf.read),  .bmem_write (bmem_itf.write),
  .bmem_rdata (bmem_itf.rdata),   ...


Error-[UPIMI-E] Undefined port in module instantiation
/tmp/dut/hvl/top_tb.sv, 24
  Port "bmem_wdata" is not defined in module 'mp4' defined in 
  "/tmp/dut/hdl/mp4.sv", 1
  Module instance: mp4 dut( .clk (clk),  .rst (rst),  .bmem_address 
  (bmem_itf.addr),  .bmem_read (bmem_itf.read),  .bmem_write (bmem_itf.write),
  .bmem_rdata (bmem_itf.rdata),   ...


Error-[UPIMI-E] Undefined port in module instantiation
/tmp/dut/hvl/top_tb.sv, 24
  Port "bmem_resp" is not defined in module 'mp4' defined in 
  "/tmp/dut/hdl/mp4.sv", 1
  Module instance: mp4 dut( .clk (clk),  .rst (rst),  .bmem_address 
  (bmem_itf.addr),  .bmem_read (bmem_itf.read),  .bmem_write (bmem_itf.write),
  .bmem_rdata (bmem_itf.rdata),   ...

6 errors
CPU time: .476 seconds to compile
make: *** [Makefile:16: sim/top_tb] Error 255
 
 ``` 

 </details> 
