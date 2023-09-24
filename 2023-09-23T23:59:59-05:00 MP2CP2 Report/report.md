# AG Report MP2CP2 at 2023-09-23T23:59:59-05:00
This is a report generated for ziyuanc3 at 2023-09-24T00:56:04-05:00. This autograder run used commit ``a2769b2``
## Summary 
Compilation : <img align="right" src="https://upload.wikimedia.org/wikipedia/commons/thumb/0/03/Green_check.svg/13px-Green_check.svg.png"> 
<details><summary>Compilation Log</summary> 

 ``` 
 mkdir -p sim
cd sim && vcs /grade_job/student_dut/pkg/rv32i_mux_types.sv /grade_job/student_dut/pkg/rv32i_types.sv /grade_job/student_dut/hdl/alu.sv /grade_job/student_dut/hdl/datapath.sv /grade_job/student_dut/hdl/ir.sv /grade_job/student_dut/hdl/regfile.sv /grade_job/student_dut/hdl/register.sv /grade_job/student_dut/hdl/mp2.sv /grade_job/student_dut/hdl/control.sv /grade_job/student_dut/hdl/cmp.sv /grade_job/student_dut/hvl/memory.sv /grade_job/student_dut/hvl/source_tb.sv /grade_job/student_dut/hvl/top.sv /grade_job/student_dut/hvl/tb_itf.sv /grade_job/student_dut/hvl/rvfimon.v -full64 -lca -sverilog +lint=all,noNS -timescale=1ns/1ns -debug_acc+all -kdb -fsdb -top mp2_tb -msg_config=../warn.config -l compile.log -licqueue

Warning-[LNX_OS_VERUN] Unsupported Linux version
  Linux version 'AlmaLinux release 8.7 (Stone Smilodon)' is not supported on 
  'x86_64' officially, assuming linux compatibility by default. Set 
  VCS_ARCH_OVERRIDE to linux or suse32 to override.
  Please refer to release notes for information on supported platforms.


Warning-[LINX_KRNL] Unsupported Linux kernel
  Linux kernel '4.15.0-213-generic' is not supported.
  Supported versions are 2.4* or 2.6*.

                         Chronologic VCS (TM)
      Version R-2020.12-SP1-1_Full64 -- Sun Sep 24 00:55:45 2023

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
Parsing design file '/grade_job/student_dut/hdl/alu.sv'
Parsing design file '/grade_job/student_dut/hdl/datapath.sv'
Parsing design file '/grade_job/student_dut/hdl/ir.sv'
Parsing design file '/grade_job/student_dut/hdl/regfile.sv'
Parsing design file '/grade_job/student_dut/hdl/register.sv'
Parsing design file '/grade_job/student_dut/hdl/mp2.sv'
Parsing design file '/grade_job/student_dut/hdl/control.sv'
Parsing design file '/grade_job/student_dut/hdl/cmp.sv'
Parsing design file '/grade_job/student_dut/hvl/memory.sv'
Parsing design file '/grade_job/student_dut/hvl/source_tb.sv'
Parsing design file '/grade_job/student_dut/hvl/top.sv'
Parsing design file '/grade_job/student_dut/hvl/tb_itf.sv'
Parsing design file '/grade_job/student_dut/hvl/rvfimon.v'
Top Level Modules:
       mp2_tb
TimeScale is 1 ns / 1 ns

Lint-[WMIA-L] Width mismatch in assignment
/grade_job/student_dut/hdl/cmp.sv, 19
  Width mismatch between LHS and RHS is found in assignment:
  The following 32-bit wide expression is assigned to a 1-bit LHS target:
  Source info: f = 0;
  Expression: f

Notice: Ports coerced to inout, use -notice for details
Starting vcs inline pass...

22 modules and 0 UDP read.
recompiling package pcmux
recompiling package marmux
recompiling package cmpmux
recompiling package alumux
recompiling package regfilemux
recompiling package rv32i_types
recompiling module mp2
recompiling module mp2_tb
recompiling module tb_itf
recompiling module riscv_formal_monitor_rv32i
recompiling module riscv_formal_monitor_rv32i_insn_slt
recompiling module riscv_formal_monitor_rv32i_insn_slti
recompiling module riscv_formal_monitor_rv32i_insn_sltiu
recompiling module riscv_formal_monitor_rv32i_insn_sltu
recompiling module riscv_formal_monitor_rv32i_insn_sra
recompiling module riscv_formal_monitor_rv32i_insn_srai
recompiling module riscv_formal_monitor_rv32i_insn_srl
recompiling module riscv_formal_monitor_rv32i_insn_srli
recompiling module riscv_formal_monitor_rv32i_insn_sub
recompiling module riscv_formal_monitor_rv32i_insn_sw
recompiling module riscv_formal_monitor_rv32i_insn_xor
recompiling module riscv_formal_monitor_rv32i_insn_xori
All of 22 modules done
make[1]: Entering directory '/grade_job/student_dut/sim/csrc'
make[1]: Leaving directory '/grade_job/student_dut/sim/csrc'
/software/Synopsys-2021_x86_64/vcs-mx/O-2018.09-SP2-3/bin/vcs: line 31361:  4693 Segmentation fault      (core dumped) ${TOOL_HOME}/bin/cfs_ident_exec -f ${XML_INPUT_EXE} -o "${fsearchDir}/idents_tapi.xml" -o_SrcFile "${dirSrcFiles}/src_files_c" ${all_dyn_libs} > tapi_xml_writer.log
make[1]: Entering directory '/grade_job/student_dut/sim/csrc'
rm -f _cuarc*.so _csrc*.so pre_vcsobj_*.so share_vcsobj_*.so
if [ -x ../simv ]; then chmod a-x ../simv; fi
g++  -o ../simv      -rdynamic  -Wl,-rpath='$ORIGIN'/simv.daidir -Wl,-rpath=./simv.daidir -Wl,-rpath=/software/Synopsys-2021_x86_64/vcs/R-2020.12-SP1-1/linux64/lib -L/software/Synopsys-2021_x86_64/vcs/R-2020.12-SP1-1/linux64/lib  -Wl,-rpath-link=./   objs/amcQw_d.o   _4537_archive_1.so  SIM_l.o       rmapats_mop.o rmapats.o rmar.o rmar_nd.o  rmar_llvm_0_1.o rmar_llvm_0_0.o           -lvirsim -lerrorinf -lsnpsmalloc -lvfs    -lvcsnew -lsimprofile -luclinative /software/Synopsys-2021_x86_64/vcs/R-2020.12-SP1-1/linux64/lib/vcs_tls.o   -Wl,-whole-archive  -lvcsucli    -Wl,-no-whole-archive        _vcs_pli_stub_.o   /software/Synopsys-2021_x86_64/vcs/R-2020.12-SP1-1/linux64/lib/vcs_save_restore_new.o /software/Synopsys-2021_x86_64/verdi/R-2020.12-SP1-1/share/PLI/VCS/LINUX64/pli.a -ldl  -lc -lm -lpthread -ldl 
../simv up to date
make[1]: Leaving directory '/grade_job/student_dut/sim/csrc'
CPU time: 1.393 seconds to compile + .450 seconds to elab + .306 seconds to link
Verdi KDB elaboration done and the database successfully generated: 0 error(s), 0 warning(s)
 
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

Autograder Job ID: aca2e78c-5d4f-4de5-8c25-1178ec0ed0b7

Autograder Run ID: eb58f5ec-eca1-4e82-ae5a-8799d2a02448
