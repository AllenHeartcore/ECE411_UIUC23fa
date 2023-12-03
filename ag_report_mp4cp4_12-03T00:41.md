# AG Report MP4CP4 2023-12-03T00:41:09-06:00 
Report generated at 2023-12-03T00:54:03-06:00, using commit ``d521135ac5277bb6e4d8ad991ead14b15710feb6``

Autograder Run ID: ad84ab5c-1901-42e1-94d6-d4ea94aa8e17

Autograder Job ID: cee8e7ea-e0bb-48cf-92fa-247608469353


## Logs
<details><summary>Compile ❌</summary> 

 ``` 
 mkdir -p sim
cd sim && vcs /tmp/dut/pkg/types.sv /tmp/dut/hdl/cache/prefetcher.sv /tmp/dut/hdl/cache/ff_array.sv /tmp/dut/hdl/cache/cache_datapath.sv /tmp/dut/hdl/cache/cache_control.sv /tmp/dut/hdl/cache/cache.sv /tmp/dut/hdl/cache/arbiter.sv /tmp/dut/hdl/branch_predict/gshare_branch_predictor.sv /tmp/dut/hdl/branch_predict/top_predictor.sv /tmp/dut/hdl/branch_predict/local_branch_predict.sv /tmp/dut/hdl/branch_predict/global_branch_predict.sv /tmp/dut/hdl/branch_predict/btb_4way.sv /tmp/dut/hdl/branch_predict/branch_target_buffer.sv /tmp/dut/hdl/performance_counter.sv /tmp/dut/hdl/mp4.sv /tmp/dut/hdl/cacheline_adaptor.sv /tmp/dut/hdl/bus_adapter.sv /tmp/dut/hdl/cpu/utils_reg.sv /tmp/dut/hdl/cpu/utils_ex.sv /tmp/dut/hdl/cpu/pipeline_reg.sv /tmp/dut/hdl/cpu/hazard_ctrl.sv /tmp/dut/hdl/cpu/forwarding.sv /tmp/dut/hdl/cpu/datapath.sv /tmp/dut/hdl/cpu/ctrl_word.sv /tmp/dut/hvl/top_tb.sv /tmp/dut/hvl/rvfimon.v /tmp/dut/hvl/monitor.sv /tmp/dut/hvl/mon_itf.sv /tmp/dut/hvl/burst_memory.sv /tmp/dut/hvl/bmem_itf.sv  -full64 -lca -sverilog +lint=all,noNS -timescale=1ns/1ns -debug_acc+all -kdb -fsdb -suppress=LCA_FEATURES_ENABLED -licqueue -msg_config=../vcs_warn.config -l compile.log -top top_tb -o top_tb
                         Chronologic VCS (TM)
      Version R-2020.12-SP1-1_Full64 -- Sun Dec  3 00:54:07 2023

                    Copyright (c) 1991 - 2021 Synopsys, Inc.
   This software and the associated documentation are proprietary to Synopsys,
 Inc. This software may only be used in accordance with the terms and conditions
 of a written license agreement with Synopsys, Inc. All other use, reproduction,
            or distribution of this software is strictly prohibited.

Parsing design file '/tmp/dut/pkg/types.sv'
Parsing design file '/tmp/dut/hdl/cache/prefetcher.sv'
Parsing design file '/tmp/dut/hdl/cache/ff_array.sv'
Parsing design file '/tmp/dut/hdl/cache/cache_datapath.sv'
Parsing design file '/tmp/dut/hdl/cache/cache_control.sv'
Parsing design file '/tmp/dut/hdl/cache/cache.sv'
Parsing design file '/tmp/dut/hdl/cache/arbiter.sv'
Parsing design file '/tmp/dut/hdl/branch_predict/gshare_branch_predictor.sv'
Parsing design file '/tmp/dut/hdl/branch_predict/top_predictor.sv'
Parsing design file '/tmp/dut/hdl/branch_predict/local_branch_predict.sv'
Parsing design file '/tmp/dut/hdl/branch_predict/global_branch_predict.sv'
Parsing design file '/tmp/dut/hdl/branch_predict/btb_4way.sv'
Parsing design file '/tmp/dut/hdl/branch_predict/branch_target_buffer.sv'
Parsing design file '/tmp/dut/hdl/performance_counter.sv'
Parsing design file '/tmp/dut/hdl/mp4.sv'
Parsing design file '/tmp/dut/hdl/cacheline_adaptor.sv'
Parsing design file '/tmp/dut/hdl/bus_adapter.sv'
Parsing design file '/tmp/dut/hdl/cpu/utils_reg.sv'
Parsing design file '/tmp/dut/hdl/cpu/utils_ex.sv'
Parsing design file '/tmp/dut/hdl/cpu/pipeline_reg.sv'
Parsing design file '/tmp/dut/hdl/cpu/hazard_ctrl.sv'
Parsing design file '/tmp/dut/hdl/cpu/forwarding.sv'
Parsing design file '/tmp/dut/hdl/cpu/datapath.sv'
Parsing design file '/tmp/dut/hdl/cpu/ctrl_word.sv'
Parsing design file '/tmp/dut/hvl/top_tb.sv'
Parsing design file '/tmp/dut/hvl/rvfimon.v'
Parsing design file '/tmp/dut/hvl/monitor.sv'
Parsing design file '/tmp/dut/hvl/mon_itf.sv'
Parsing design file '/tmp/dut/hvl/burst_memory.sv'
Parsing design file '/tmp/dut/hvl/bmem_itf.sv'
Top Level Modules:
       top_tb

Error-[CFCILFBI] Cannot find cell in liblist
/tmp/dut/hdl/cache/cache_datapath.sv, 80
  Cell 'mp3_data_array_1' cannot be found in liblist for binding instance 
  'top_tb.dut.imem_cache.datapath.arrays[0].genblk1.data_array'.
  Liblist: work
  Config rule: global default liblist
  Source Info: mp3_data_array_1 #(.ADDR_WIDTH(s_index), .DATA_WIDTH(s_word), 
  .NUM_WMASKS(s_mask)) data_array( .clk0 (clk),  .csb0 (1'b0),  .web0 
  ((!(LD_DATA & (DATAWMUX ? MA ...


Error-[CFCILFBI] Cannot find cell in liblist
/tmp/dut/hdl/cache/cache_datapath.sv, 92
  Cell 'mp3_tag_array_1' cannot be found in liblist for binding instance 
  'top_tb.dut.imem_cache.datapath.arrays[0].genblk1.tag_array'.
  Liblist: work
  Config rule: global default liblist
  Source Info: mp3_tag_array_1 #(.ADDR_WIDTH(s_index), .DATA_WIDTH(s_tag)) 
  tag_array( .clk0 (clk),  .csb0 (1'b0),  .web0 ((!(LD_TAG & MASKLRU[0]))),  
  .addr0 (addr_index),  . ...


Error-[CFCILFBI] Cannot find cell in liblist
/tmp/dut/hdl/cache/cache_datapath.sv, 80
  Cell 'mp3_data_array_1' cannot be found in liblist for binding instance 
  'top_tb.dut.imem_cache.datapath.arrays[1].genblk1.data_array'.
  Liblist: work
  Config rule: global default liblist
  Source Info: mp3_data_array_1 #(.ADDR_WIDTH(s_index), .DATA_WIDTH(s_word), 
  .NUM_WMASKS(s_mask)) data_array( .clk0 (clk),  .csb0 (1'b0),  .web0 
  ((!(LD_DATA & (DATAWMUX ? MA ...


Error-[CFCILFBI] Cannot find cell in liblist
/tmp/dut/hdl/cache/cache_datapath.sv, 92
  Cell 'mp3_tag_array_1' cannot be found in liblist for binding instance 
  'top_tb.dut.imem_cache.datapath.arrays[1].genblk1.tag_array'.
  Liblist: work
  Config rule: global default liblist
  Source Info: mp3_tag_array_1 #(.ADDR_WIDTH(s_index), .DATA_WIDTH(s_tag)) 
  tag_array( .clk0 (clk),  .csb0 (1'b0),  .web0 ((!(LD_TAG & MASKLRU[1]))),  
  .addr0 (addr_index),  . ...

4 errors
CPU time: .495 seconds to compile
make: *** [Makefile:16: sim/top_tb] Error 255
 
 ``` 

 </details> 
