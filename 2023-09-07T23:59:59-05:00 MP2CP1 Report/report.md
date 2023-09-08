# AG Report MP2CP1 at 2023-09-07T23:59:59-05:00
This is a report generated for ziyuanc3 at 2023-09-08T00:12:09-05:00. This autograder run used commit ``e4d0bc9``
## Summary 
Compilation : <img align="right" src="https://upload.wikimedia.org/wikipedia/en/thumb/b/ba/Red_x.svg/13px-Red_x.svg.png"> 
<details><summary>Compilation Log</summary> 

 ``` 
 mkdir -p sim
cd sim && vcs /grade_job/student_dut/pkg/rv32i_types.sv /grade_job/student_dut/pkg/rv32i_mux_types.sv /grade_job/student_dut/hdl/control.sv /grade_job/student_dut/hdl/regfile.sv /grade_job/student_dut/hdl/alu.sv /grade_job/student_dut/hdl/datapath.sv /grade_job/student_dut/hdl/ir.sv /grade_job/student_dut/hdl/mp2.sv /grade_job/student_dut/hvl/tb_itf.sv /grade_job/student_dut/hvl/memory.sv /grade_job/student_dut/hvl/source_tb.sv /grade_job/student_dut/hvl/top.sv /grade_job/student_dut/hvl/rvfimon.v -full64 -lca -sverilog +lint=all,noNS -timescale=1ns/10ps -debug_acc+all -kdb -fsdb -top mp2_tb -msg_config=../warn.config -l compile.log -licqueue

Warning-[LNX_OS_VERUN] Unsupported Linux version
  Linux version 'AlmaLinux release 8.7 (Stone Smilodon)' is not supported on 
  'x86_64' officially, assuming linux compatibility by default. Set 
  VCS_ARCH_OVERRIDE to linux or suse32 to override.
  Please refer to release notes for information on supported platforms.


Warning-[LINX_KRNL] Unsupported Linux kernel
  Linux kernel '5.4.0-150-generic' is not supported.
  Supported versions are 2.4* or 2.6*.

                         Chronologic VCS (TM)
      Version R-2020.12-SP1-1_Full64 -- Fri Sep  8 00:12:09 2023

                    Copyright (c) 1991 - 2021 Synopsys, Inc.
   This software and the associated documentation are proprietary to Synopsys,
 Inc. This software may only be used in accordance with the terms and conditions
 of a written license agreement with Synopsys, Inc. All other use, reproduction,
            or distribution of this software is strictly prohibited.


Warning-[LCA_FEATURES_ENABLED] Usage warning
  LCA features enabled by '-lca' argument on the command line.  For more 
  information regarding list of LCA features please refer to Chapter "LCA 
  features" in the VCS Release Notes


Warning-[MC-IVFN] Invalid file name
  File '../hvl/rvmodel.sv' specified in +file/-file condition does not exist.
  Config file name: '../warn.config', near line 4.

Parsing design file '/grade_job/student_dut/pkg/rv32i_types.sv'

Error-[SV-LCM-PND] Package not defined
/grade_job/student_dut/pkg/rv32i_types.sv, 5
rv32i_types, "pcmux::"
  Package scope resolution failed. Token 'pcmux' is not a package. Originating
  module 'rv32i_types'.
  Move package definition before the use of the package.


Error-[SV-LCM-PND] Package not defined
/grade_job/student_dut/pkg/rv32i_types.sv, 6
rv32i_types, "marmux::"
  Package scope resolution failed. Token 'marmux' is not a package. 
  Originating module 'rv32i_types'.
  Move package definition before the use of the package.


Error-[SV-LCM-PND] Package not defined
/grade_job/student_dut/pkg/rv32i_types.sv, 7
rv32i_types, "cmpmux::"
  Package scope resolution failed. Token 'cmpmux' is not a package. 
  Originating module 'rv32i_types'.
  Move package definition before the use of the package.


Error-[SV-LCM-PND] Package not defined
/grade_job/student_dut/pkg/rv32i_types.sv, 8
rv32i_types, "alumux::"
  Package scope resolution failed. Token 'alumux' is not a package. 
  Originating module 'rv32i_types'.
  Move package definition before the use of the package.


Error-[SV-LCM-PND] Package not defined
/grade_job/student_dut/pkg/rv32i_types.sv, 9
rv32i_types, "regfilemux::"
  Package scope resolution failed. Token 'regfilemux' is not a package. 
  Originating module 'rv32i_types'.
  Move package definition before the use of the package.

Parsing design file '/grade_job/student_dut/pkg/rv32i_mux_types.sv'
Parsing design file '/grade_job/student_dut/hdl/control.sv'

Error-[SE] Syntax error
  Following verilog source has syntax error :
  "/grade_job/student_dut/hdl/control.sv", 87: token is '}'
  } state, next_states;
   ^

2 warnings
6 errors
CPU time: .254 seconds to compile
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

Autograder Job ID: dbd53444-cabc-4bf0-b2d6-d4b025160e05

Autograder Run ID: 90591a2d-c1f0-4f80-9be7-6f89a662e4ed
