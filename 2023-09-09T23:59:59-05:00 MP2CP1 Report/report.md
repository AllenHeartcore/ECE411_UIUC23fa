# AG Report MP2CP1 at 2023-09-09T23:59:59-05:00
This is a report generated for ziyuanc3 at 2023-09-10T00:02:56-05:00. This autograder run used commit ``e4d0bc9``
## Summary 
Compilation : <img align="right" src="https://upload.wikimedia.org/wikipedia/en/thumb/b/ba/Red_x.svg/13px-Red_x.svg.png"> 
<details><summary>Compilation Log</summary> 

 ``` 
 mkdir -p sim
cd sim && vcs /grade_job/student_dut/pkg/rv32i_mux_types.sv /grade_job/student_dut/pkg/rv32i_types.sv /grade_job/student_dut/hdl/regfile.sv /grade_job/student_dut/hdl/mp2.sv /grade_job/student_dut/hdl/alu.sv /grade_job/student_dut/hdl/datapath.sv /grade_job/student_dut/hdl/control.sv /grade_job/student_dut/hdl/ir.sv /grade_job/student_dut/hvl/tb_itf.sv /grade_job/student_dut/hvl/memory.sv /grade_job/student_dut/hvl/top.sv /grade_job/student_dut/hvl/source_tb.sv /grade_job/student_dut/hvl/rvfimon.v -full64 -lca -sverilog +lint=all,noNS -timescale=1ns/1ns -debug_acc+all -kdb -fsdb -top mp2_tb -msg_config=../warn.config -l compile.log -licqueue

Warning-[LNX_OS_VERUN] Unsupported Linux version
  Linux version 'AlmaLinux release 8.7 (Stone Smilodon)' is not supported on 
  'x86_64' officially, assuming linux compatibility by default. Set 
  VCS_ARCH_OVERRIDE to linux or suse32 to override.
  Please refer to release notes for information on supported platforms.


Warning-[LINX_KRNL] Unsupported Linux kernel
  Linux kernel '4.15.0-213-generic' is not supported.
  Supported versions are 2.4* or 2.6*.

                         Chronologic VCS (TM)
      Version R-2020.12-SP1-1_Full64 -- Sun Sep 10 00:02:55 2023

                    Copyright (c) 1991 - 2021 Synopsys, Inc.
   This software and the associated documentation are proprietary to Synopsys,
 Inc. This software may only be used in accordance with the terms and conditions
 of a written license agreement with Synopsys, Inc. All other use, reproduction,
            or distribution of this software is strictly prohibited.


Warning-[LCA_FEATURES_ENABLED] Usage warning
  LCA features enabled by '-lca' argument on the command line.  For more 
  information regarding list of LCA features please refer to Chapter "LCA 
  features" in the VCS Release Notes

Parsing design file '/grade_job/student_dut/pkg/rv32i_mux_types.sv'
Parsing design file '/grade_job/student_dut/pkg/rv32i_types.sv'
Parsing design file '/grade_job/student_dut/hdl/regfile.sv'
Parsing design file '/grade_job/student_dut/hdl/mp2.sv'
Parsing design file '/grade_job/student_dut/hdl/alu.sv'
Parsing design file '/grade_job/student_dut/hdl/datapath.sv'

Error-[IND] Identifier not declared
/grade_job/student_dut/hdl/datapath.sv, 47
  Identifier 'pcmux_sel' has not been declared yet. If this error is not 
  expected, please check if you have set `default_nettype to none.
  


Error-[IND] Identifier not declared
/grade_job/student_dut/hdl/datapath.sv, 48
  Identifier 'pc_out' has not been declared yet. If this error is not 
  expected, please check if you have set `default_nettype to none.
  

Parsing design file '/grade_job/student_dut/hdl/control.sv'

Error-[SE] Syntax error
  Following verilog source has syntax error :
  "/grade_job/student_dut/hdl/control.sv", 87: token is '}'
  } state, next_states;
   ^

1 warning
3 errors
CPU time: .226 seconds to compile
make: *** [Makefile:15: sim/simv] Error 255
 
 ``` 

 </details> 

Passed 0 out of 10 tests
## Test Results 
| Test Name | Result | 
| --- | --- | 
addi|<img align="right" src="https://upload.wikimedia.org/wikipedia/en/thumb/b/ba/Red_x.svg/13px-Red_x.svg.png">|
andi|<img align="right" src="https://upload.wikimedia.org/wikipedia/en/thumb/b/ba/Red_x.svg/13px-Red_x.svg.png">|
auipc|<img align="right" src="https://upload.wikimedia.org/wikipedia/en/thumb/b/ba/Red_x.svg/13px-Red_x.svg.png">|
beq|<img align="right" src="https://upload.wikimedia.org/wikipedia/en/thumb/b/ba/Red_x.svg/13px-Red_x.svg.png">|
lui|<img align="right" src="https://upload.wikimedia.org/wikipedia/en/thumb/b/ba/Red_x.svg/13px-Red_x.svg.png">|
lw-align|<img align="right" src="https://upload.wikimedia.org/wikipedia/en/thumb/b/ba/Red_x.svg/13px-Red_x.svg.png">|
ori|<img align="right" src="https://upload.wikimedia.org/wikipedia/en/thumb/b/ba/Red_x.svg/13px-Red_x.svg.png">|
slli|<img align="right" src="https://upload.wikimedia.org/wikipedia/en/thumb/b/ba/Red_x.svg/13px-Red_x.svg.png">|
sw-align|<img align="right" src="https://upload.wikimedia.org/wikipedia/en/thumb/b/ba/Red_x.svg/13px-Red_x.svg.png">|
xori|<img align="right" src="https://upload.wikimedia.org/wikipedia/en/thumb/b/ba/Red_x.svg/13px-Red_x.svg.png">|

Autograder Job ID: f267d5dc-7df7-41ee-ba91-e91f64152351

Autograder Run ID: bc5a2b80-89d0-4eb6-bb87-8b55e7ddbdd3
