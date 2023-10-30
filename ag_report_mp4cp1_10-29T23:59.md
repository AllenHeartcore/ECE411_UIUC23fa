# AG Report MP4CP1 2023-10-29T23:59:59-05:00 
Report generated at 2023-10-30T00:59:06-05:00, using commit ``adeaae5``

Autograder Run ID: f65780fa-44e2-47fb-9213-80ada9460e8c

Autograder Job ID: de8cf9b2-46a0-41e6-be8c-982ace45a430


## Logs
<details><summary>Compile ❌</summary> 

 ``` 
 mkdir -p sim
cd sim && vcs /tmp/dut/pkg/types.sv /tmp/dut/hdl/cpu/hazard_ctrl.sv /tmp/dut/hdl/cpu/utils_reg.sv /tmp/dut/hdl/cpu/utils_ex.sv /tmp/dut/hdl/cpu/datapath.sv /tmp/dut/hdl/cpu/ctrl_word.sv /tmp/dut/hdl/cpu/cpu.sv /tmp/dut/hdl/cpu/pipeline_reg.sv /tmp/dut/hdl/mp4.sv /tmp/dut/hvl/top_tb.sv /tmp/dut/hvl/rvfimon.v /tmp/dut/hvl/monitor.sv /tmp/dut/hvl/mon_itf.sv /tmp/dut/hvl/mem_itf.sv /tmp/dut/hvl/magic_dual_port.sv /tmp/dut/hvl/burst_memory.sv /tmp/dut/hvl/bmem_itf.sv -full64 -lca -sverilog +lint=all,noNS -timescale=1ns/1ns -debug_acc+all -kdb -fsdb -suppress=LCA_FEATURES_ENABLED -licqueue -msg_config=../vcs_warn.config -l compile.log -top top_tb -o top_tb
                         Chronologic VCS (TM)
      Version R-2020.12-SP1-1_Full64 -- Mon Oct 30 00:59:09 2023

                    Copyright (c) 1991 - 2021 Synopsys, Inc.
   This software and the associated documentation are proprietary to Synopsys,
 Inc. This software may only be used in accordance with the terms and conditions
 of a written license agreement with Synopsys, Inc. All other use, reproduction,
            or distribution of this software is strictly prohibited.

Parsing design file '/tmp/dut/pkg/types.sv'

Error-[SV-LCM-PND] Package not defined
/tmp/dut/pkg/types.sv, 2
pipeline_pkg, "rv32i_types::"
  Package scope resolution failed. Token 'rv32i_types' is not a package. 
  Originating module 'pipeline_pkg'.
  Move package definition before the use of the package.


Error-[SE] Syntax error
  Following verilog source has syntax error :
  "/tmp/dut/pkg/types.sv", 5: token is 'rv32i_word'
      rv32i_word pc;
                ^

2 errors
CPU time: .239 seconds to compile
make: *** [Makefile:15: sim/top_tb] Error 255
 
 ``` 

 </details> 
