# AG Report MP2CP2 at 2023-09-22T23:59:59-05:00
This is a report generated for ziyuanc3 at 2023-09-23T00:14:18-05:00. This autograder run used commit ``387b7f8``
## Summary 
Compilation : <img align="right" src="https://upload.wikimedia.org/wikipedia/en/thumb/b/ba/Red_x.svg/13px-Red_x.svg.png"> 
<details><summary>Compilation Log</summary> 

 ``` 
 mkdir -p sim
cd sim && vcs /grade_job/student_dut/pkg/rv32i_mux_types.sv /grade_job/student_dut/pkg/rv32i_types.sv /grade_job/student_dut/hdl/regfile.sv /grade_job/student_dut/hdl/mp2.sv /grade_job/student_dut/hdl/alu.sv /grade_job/student_dut/hdl/datapath.sv /grade_job/student_dut/hdl/register.sv /grade_job/student_dut/hdl/control.sv /grade_job/student_dut/hdl/cmp.sv /grade_job/student_dut/hdl/ir.sv /grade_job/student_dut/hvl/tb_itf.sv /grade_job/student_dut/hvl/memory.sv /grade_job/student_dut/hvl/top.sv /grade_job/student_dut/hvl/source_tb.sv /grade_job/student_dut/hvl/rvfimon.v -full64 -lca -sverilog +lint=all,noNS -timescale=1ns/1ns -debug_acc+all -kdb -fsdb -top mp2_tb -msg_config=../warn.config -l compile.log -licqueue

Warning-[LNX_OS_VERUN] Unsupported Linux version
  Linux version 'AlmaLinux release 8.7 (Stone Smilodon)' is not supported on 
  'x86_64' officially, assuming linux compatibility by default. Set 
  VCS_ARCH_OVERRIDE to linux or suse32 to override.
  Please refer to release notes for information on supported platforms.


Warning-[LINX_KRNL] Unsupported Linux kernel
  Linux kernel '4.15.0-213-generic' is not supported.
  Supported versions are 2.4* or 2.6*.

                         Chronologic VCS (TM)
      Version R-2020.12-SP1-1_Full64 -- Sat Sep 23 00:14:18 2023

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

Error-[UTOPN] Unknown type or port name
  The type name 'cmp_ops' is unknown, or the identifier 'cmpop' has not been 
  listed as a port, or the declaration might represent an instance missing 
  parentheses.
  "/grade_job/student_dut/hdl/mp2.sv", 29
  Source info: cmp_ops cmpop;


Warning-[IPDW] Identifier previously declared
/grade_job/student_dut/hdl/mp2.sv, 30
  Second declaration for identifier 'load_pc' ignored
  Identifier 'load_pc' previously declared as logic. 
  [/grade_job/student_dut/hdl/mp2.sv, 17]


Warning-[IPDW] Identifier previously declared
/grade_job/student_dut/hdl/mp2.sv, 30
  Second declaration for identifier 'load_regfile' ignored
  Identifier 'load_regfile' previously declared as logic. 
  [/grade_job/student_dut/hdl/mp2.sv, 18]

Parsing design file '/grade_job/student_dut/hdl/alu.sv'
Parsing design file '/grade_job/student_dut/hdl/datapath.sv'

Error-[UTFP] Unknown type for port
  The type name 'cmp_ops' is unknown. If this is an interface port, the 
  direction is illegal.
  "/grade_job/student_dut/hdl/datapath.sv", 15
  Source info:     input cmp_ops cmpop,

Parsing design file '/grade_job/student_dut/hdl/register.sv'
Parsing design file '/grade_job/student_dut/hdl/control.sv'

Error-[UTFP] Unknown type for port
  The type name 'cmp_ops' is unknown. If this is an interface port, the 
  direction is illegal.
  "/grade_job/student_dut/hdl/control.sv", 24
  Source info:     output cmp_ops cmpop,


Error-[SE] Syntax error
  Following verilog source has syntax error :
  "/grade_job/student_dut/hdl/control.sv", 100: token is '}'
  } state, next_states;
   ^

3 warnings
4 errors
CPU time: .234 seconds to compile
make: *** [Makefile:15: sim/simv] Error 255
 
 ``` 

 </details> 

Passed 0 out of 25 tests
## Test Results 
| Test Name | Result | 
| --- | --- | 
addi|<img align="right" src="https://upload.wikimedia.org/wikipedia/en/thumb/b/ba/Red_x.svg/13px-Red_x.svg.png">|
andi|<img align="right" src="https://upload.wikimedia.org/wikipedia/en/thumb/b/ba/Red_x.svg/13px-Red_x.svg.png">|
auipc|<img align="right" src="https://upload.wikimedia.org/wikipedia/en/thumb/b/ba/Red_x.svg/13px-Red_x.svg.png">|
beq|<img align="right" src="https://upload.wikimedia.org/wikipedia/en/thumb/b/ba/Red_x.svg/13px-Red_x.svg.png">|
bge|<img align="right" src="https://upload.wikimedia.org/wikipedia/en/thumb/b/ba/Red_x.svg/13px-Red_x.svg.png">|
bgeu|<img align="right" src="https://upload.wikimedia.org/wikipedia/en/thumb/b/ba/Red_x.svg/13px-Red_x.svg.png">|
blt|<img align="right" src="https://upload.wikimedia.org/wikipedia/en/thumb/b/ba/Red_x.svg/13px-Red_x.svg.png">|
bltu|<img align="right" src="https://upload.wikimedia.org/wikipedia/en/thumb/b/ba/Red_x.svg/13px-Red_x.svg.png">|
bne|<img align="right" src="https://upload.wikimedia.org/wikipedia/en/thumb/b/ba/Red_x.svg/13px-Red_x.svg.png">|
lui|<img align="right" src="https://upload.wikimedia.org/wikipedia/en/thumb/b/ba/Red_x.svg/13px-Red_x.svg.png">|
lw-align|<img align="right" src="https://upload.wikimedia.org/wikipedia/en/thumb/b/ba/Red_x.svg/13px-Red_x.svg.png">|
ori|<img align="right" src="https://upload.wikimedia.org/wikipedia/en/thumb/b/ba/Red_x.svg/13px-Red_x.svg.png">|
slli|<img align="right" src="https://upload.wikimedia.org/wikipedia/en/thumb/b/ba/Red_x.svg/13px-Red_x.svg.png">|
slti|<img align="right" src="https://upload.wikimedia.org/wikipedia/en/thumb/b/ba/Red_x.svg/13px-Red_x.svg.png">|
sltiu|<img align="right" src="https://upload.wikimedia.org/wikipedia/en/thumb/b/ba/Red_x.svg/13px-Red_x.svg.png">|
srai|<img align="right" src="https://upload.wikimedia.org/wikipedia/en/thumb/b/ba/Red_x.svg/13px-Red_x.svg.png">|
srli|<img align="right" src="https://upload.wikimedia.org/wikipedia/en/thumb/b/ba/Red_x.svg/13px-Red_x.svg.png">|
sw-align|<img align="right" src="https://upload.wikimedia.org/wikipedia/en/thumb/b/ba/Red_x.svg/13px-Red_x.svg.png">|
xori|<img align="right" src="https://upload.wikimedia.org/wikipedia/en/thumb/b/ba/Red_x.svg/13px-Red_x.svg.png">|
add|<img align="right" src="https://upload.wikimedia.org/wikipedia/en/thumb/b/ba/Red_x.svg/13px-Red_x.svg.png">|
and|<img align="right" src="https://upload.wikimedia.org/wikipedia/en/thumb/b/ba/Red_x.svg/13px-Red_x.svg.png">|
jal|<img align="right" src="https://upload.wikimedia.org/wikipedia/en/thumb/b/ba/Red_x.svg/13px-Red_x.svg.png">|
or|<img align="right" src="https://upload.wikimedia.org/wikipedia/en/thumb/b/ba/Red_x.svg/13px-Red_x.svg.png">|
sll|<img align="right" src="https://upload.wikimedia.org/wikipedia/en/thumb/b/ba/Red_x.svg/13px-Red_x.svg.png">|
xor|<img align="right" src="https://upload.wikimedia.org/wikipedia/en/thumb/b/ba/Red_x.svg/13px-Red_x.svg.png">|

Autograder Job ID: 5a49e058-c5e6-4e8c-8b7b-d104b0e81b9e

Autograder Run ID: 02bf0839-6b47-4e40-83c2-c7f268703109
