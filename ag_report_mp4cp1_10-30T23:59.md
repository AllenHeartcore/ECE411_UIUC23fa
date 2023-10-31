# AG Report MP4CP1 2023-10-30T23:59:59-05:00 
Report generated at 2023-10-31T00:53:39-05:00, using commit ``31fd8b3f8cad36a6d3614fd6e5d2d580d03f728b``

Autograder Run ID: ac8145bf-312d-49ec-9e2a-4deb5e4037b7

Autograder Job ID: c121f824-a8eb-42e4-b8ba-1ee265c1213f


## Tests
|Test|Result|
|---|---|
|Compile|⚠️|
|addi|❌|
|andi|❌|
|auipc|❌|
|lui|❌|
|lw-align|❌|
|ori|❌|
|slli|❌|
|slti|❌|
|sltiu|❌|
|srai|❌|
|srli|❌|
|sw-align|❌|
|xori|❌|
|add|❌|
|and|❌|
|lbu-align|❌|
|lb-align|❌|
|lhu-align|❌|
|lh-align|❌|
|or|❌|
|sb-align|❌|
|sh-align|❌|
|sll|❌|
|slt|❌|
|sltu|❌|
|sra|❌|
|srl|❌|
|sub|❌|
|xor|❌|

## Score
0 out of 12

## Logs
<details><summary>Compile ⚠️</summary> 

 ``` 
 mkdir -p sim
cd sim && vcs /tmp/dut/pkg/types.sv /tmp/dut/hdl/cpu/hazard_ctrl.sv /tmp/dut/hdl/cpu/utils_reg.sv /tmp/dut/hdl/cpu/utils_ex.sv /tmp/dut/hdl/cpu/datapath.sv /tmp/dut/hdl/cpu/ctrl_word.sv /tmp/dut/hdl/cpu/cpu.sv /tmp/dut/hdl/cpu/pipeline_reg.sv /tmp/dut/hdl/mp4.sv /tmp/dut/hvl/top_tb.sv /tmp/dut/hvl/rvfimon.v /tmp/dut/hvl/monitor.sv /tmp/dut/hvl/mon_itf.sv /tmp/dut/hvl/mem_itf.sv /tmp/dut/hvl/magic_dual_port.sv /tmp/dut/hvl/burst_memory.sv /tmp/dut/hvl/bmem_itf.sv  -full64 -lca -sverilog +lint=all,noNS -timescale=1ns/1ns -debug_acc+all -kdb -fsdb -suppress=LCA_FEATURES_ENABLED -licqueue -msg_config=../vcs_warn.config -l compile.log -top top_tb -o top_tb
                         Chronologic VCS (TM)
      Version R-2020.12-SP1-1_Full64 -- Tue Oct 31 00:53:43 2023

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

Lint-[SV-PIU] Package import statement in $unit scope.
/tmp/dut/hdl/cpu/pipeline_reg.sv, 1
$unit
  There is an import statement in $unit scope.
  Although this is legal as per the SystemVerilog LRM, it means that package 
  content will be shared without explicit import of the package.
  Package: pipeline_pkg::*

Parsing design file '/tmp/dut/hdl/mp4.sv'
Parsing design file '/tmp/dut/hvl/top_tb.sv'
Parsing design file '/tmp/dut/hvl/rvfimon.v'
Parsing design file '/tmp/dut/hvl/monitor.sv'
Parsing design file '/tmp/dut/hvl/mon_itf.sv'
Parsing design file '/tmp/dut/hvl/mem_itf.sv'
Parsing design file '/tmp/dut/hvl/magic_dual_port.sv'
Parsing design file '/tmp/dut/hvl/burst_memory.sv'
Parsing design file '/tmp/dut/hvl/bmem_itf.sv'
Top Level Modules:
       top_tb
TimeScale is 1 ps / 1 ps

Lint-[UI] Unused input
/tmp/dut/hdl/cpu/hazard_ctrl.sv, 6
  Following is an unused input.
  Source info: dmem_read


Lint-[UI] Unused input
/tmp/dut/hdl/cpu/hazard_ctrl.sv, 6
  Following is an unused input.
  Source info: dmem_write


Lint-[UI] Unused input
/tmp/dut/hdl/cpu/hazard_ctrl.sv, 7
  Following is an unused input.
  Source info: dmem_resp

Notice: Ports coerced to inout, use -notice for details
Starting vcs inline pass...

62 modules and 0 UDP read.
recompiling package pcmux
recompiling package marmux
recompiling package cmpmux
recompiling package alumux
recompiling package regfilemux
recompiling package rv32i_types
recompiling package pipeline_pkg
recompiling package hazard_ctrl_pkg
recompiling module pipeline_reg
recompiling module ctrlmem_reg
recompiling module ctrlwb_reg
recompiling module mp4
recompiling module top_tb
recompiling module riscv_formal_monitor_rv32imc_rob
recompiling module riscv_formal_monitor_rv32imc_insn_c_jr
recompiling module riscv_formal_monitor_rv32imc_insn_c_li
recompiling module riscv_formal_monitor_rv32imc_insn_c_lui
recompiling module riscv_formal_monitor_rv32imc_insn_c_lw
recompiling module riscv_formal_monitor_rv32imc_insn_c_lwsp
recompiling module riscv_formal_monitor_rv32imc_insn_c_mv
recompiling module riscv_formal_monitor_rv32imc_insn_c_or
recompiling module riscv_formal_monitor_rv32imc_insn_c_slli
recompiling module riscv_formal_monitor_rv32imc_insn_c_srai
recompiling module riscv_formal_monitor_rv32imc_insn_c_srli
recompiling module riscv_formal_monitor_rv32imc_insn_c_sub
recompiling module riscv_formal_monitor_rv32imc_insn_c_sw
recompiling module riscv_formal_monitor_rv32imc_insn_c_swsp
recompiling module riscv_formal_monitor_rv32imc_insn_c_xor
recompiling module riscv_formal_monitor_rv32imc_insn_divu
recompiling module riscv_formal_monitor_rv32imc_insn_jal
recompiling module riscv_formal_monitor_rv32imc_insn_jalr
recompiling module riscv_formal_monitor_rv32imc_insn_lb
recompiling module riscv_formal_monitor_rv32imc_insn_lbu
recompiling module riscv_formal_monitor_rv32imc_insn_lh
recompiling module riscv_formal_monitor_rv32imc_insn_lhu
recompiling module riscv_formal_monitor_rv32imc_insn_lui
recompiling module riscv_formal_monitor_rv32imc_insn_lw
recompiling module riscv_formal_monitor_rv32imc_insn_mul
recompiling module riscv_formal_monitor_rv32imc_insn_mulh
recompiling module riscv_formal_monitor_rv32imc_insn_mulhsu
recompiling module riscv_formal_monitor_rv32imc_insn_mulhu
recompiling module riscv_formal_monitor_rv32imc_insn_or
recompiling module riscv_formal_monitor_rv32imc_insn_ori
recompiling module riscv_formal_monitor_rv32imc_insn_remu
recompiling module riscv_formal_monitor_rv32imc_insn_sb
recompiling module riscv_formal_monitor_rv32imc_insn_sh
recompiling module riscv_formal_monitor_rv32imc_insn_sll
recompiling module riscv_formal_monitor_rv32imc_insn_slli
recompiling module riscv_formal_monitor_rv32imc_insn_slt
recompiling module riscv_formal_monitor_rv32imc_insn_slti
50 of 62 modules done
recompiling module riscv_formal_monitor_rv32imc_insn_sltiu
recompiling module riscv_formal_monitor_rv32imc_insn_sltu
recompiling module riscv_formal_monitor_rv32imc_insn_sra
recompiling module riscv_formal_monitor_rv32imc_insn_srai
recompiling module riscv_formal_monitor_rv32imc_insn_srl
recompiling module riscv_formal_monitor_rv32imc_insn_srli
recompiling module riscv_formal_monitor_rv32imc_insn_sub
recompiling module riscv_formal_monitor_rv32imc_insn_sw
recompiling module riscv_formal_monitor_rv32imc_insn_xor
recompiling module riscv_formal_monitor_rv32imc_insn_xori
recompiling module mon_itf
recompiling module mem_itf
All of 62 modules done
make[1]: Entering directory '/tmp/dut/sim/csrc'
make[1]: Leaving directory '/tmp/dut/sim/csrc'
/software/Synopsys-2021_x86_64/vcs-mx/O-2018.09-SP2-3/bin/vcs: line 31361:  6199 Segmentation fault      (core dumped) ${TOOL_HOME}/bin/cfs_ident_exec -f ${XML_INPUT_EXE} -o "${fsearchDir}/idents_tapi.xml" -o_SrcFile "${dirSrcFiles}/src_files_c" ${all_dyn_libs} > tapi_xml_writer.log
make[1]: Entering directory '/tmp/dut/sim/csrc'
rm -f _cuarc*.so _csrc*.so pre_vcsobj_*.so share_vcsobj_*.so
if [ -x ../top_tb ]; then chmod a-x ../top_tb; fi
g++  -o ../top_tb      -rdynamic  -Wl,-rpath='$ORIGIN'/top_tb.daidir -Wl,-rpath=./top_tb.daidir -Wl,-rpath=/software/Synopsys-2021_x86_64/vcs/R-2020.12-SP1-1/linux64/lib -L/software/Synopsys-2021_x86_64/vcs/R-2020.12-SP1-1/linux64/lib  -Wl,-rpath-link=./   objs/amcQw_d.o   _6043_archive_1.so  SIM_l.o       rmapats_mop.o rmapats.o rmar.o rmar_nd.o  rmar_llvm_0_1.o rmar_llvm_0_0.o           -lvirsim -lerrorinf -lsnpsmalloc -lvfs    -lvcsnew -lsimprofile -luclinative /software/Synopsys-2021_x86_64/vcs/R-2020.12-SP1-1/linux64/lib/vcs_tls.o   -Wl,-whole-archive  -lvcsucli    -Wl,-no-whole-archive        _vcs_pli_stub_.o   /software/Synopsys-2021_x86_64/vcs/R-2020.12-SP1-1/linux64/lib/vcs_save_restore_new.o /software/Synopsys-2021_x86_64/verdi/R-2020.12-SP1-1/share/PLI/VCS/LINUX64/pli.a -ldl  -lc -lm -lpthread -ldl 
../top_tb up to date
make[1]: Leaving directory '/tmp/dut/sim/csrc'
CPU time: 2.327 seconds to compile + .481 seconds to elab + .325 seconds to link
Verdi KDB elaboration done and the database successfully generated: 0 error(s), 0 warning(s)

[0;33mCompile finished with warnings:[0m
Lint-[SV-PIU] Package import statement in $unit scope.
Lint-[UI] Unused input
Lint-[UI] Unused input
Lint-[UI] Unused input
 
 ``` 

 </details> 
<details><summary>addi ❌</summary> 

 ``` 
 cd sim && ./top_tb -l simulation.log
Chronologic VCS simulator copyright 1991-2020
Contains Synopsys proprietary information.
Compiler version R-2020.12-SP1-1_Full64; Runtime version R-2020.12-SP1-1_Full64;  Oct 31 00:53 2023
-------- RVFI Monitor ROB error 61000: top_tb.monitor.monitor at time 5220000 --------
No details on ROB errors available.
Error: "/tmp/dut/hvl/monitor.sv", 105: top_tb.monitor: at time 5240000 ps
RVFI Monitor Error
$finish called from file "/tmp/dut/hvl/top_tb.sv", line 93.
IPC: 0.481343
$finish at simulation time              5360000
           V C S   S i m u l a t i o n   R e p o r t 
Time: 5360000 ps
CPU Time:      0.470 seconds;       Data structure size:   0.2Mb
Tue Oct 31 00:53:46 2023
1d0
< core   0: 3 0x40000000 (0x00000013)
131,11861d129
< core   0: 3 0x40000208 (0x00000013)
< core   0: 3 0x4000020c (0x00000013)
< core   0: 3 0x40000210 (0x00568313) x6  0x0000000a
< core   0: 3 0x40000214 (0x00000013)
< core   0: 3 0x40000218 (0x00000013)
< core   0: 3 0x4000021c (0x00000013)
< core   0: 3 0x40000220 (0x00000013)
----- More lines omitted -----
 
 ``` 

 </details> 
