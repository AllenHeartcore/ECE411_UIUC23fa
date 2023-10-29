# AG Report MP4CP1 2023-10-29T02:00:34-05:00 
Report generated at 2023-10-29T02:00:58-05:00, using commit ``cef41bf``

Autograder Run ID: 6a45864d-2d18-4453-b7d8-57f950c6165f

Autograder Job ID: 6a84502c-f3db-4f6c-bb79-d518fa3dbf52


## Logs
<details><summary>Compile ❌</summary> 

 ``` 
 mkdir -p sim
cd sim && vcs /tmp/dut/pkg/types.sv /tmp/dut/hdl/cpu/utils_reg.sv /tmp/dut/hdl/cpu/utils_ex.sv /tmp/dut/hdl/cpu/datapath.sv /tmp/dut/hdl/cpu/ctrl_word.sv /tmp/dut/hdl/cpu/cpu.sv /tmp/dut/hdl/mp4.sv /tmp/dut/hvl/top_tb.sv /tmp/dut/hvl/rvfimon.v /tmp/dut/hvl/monitor.sv /tmp/dut/hvl/mon_itf.sv /tmp/dut/hvl/mem_itf.sv /tmp/dut/hvl/magic_dual_port.sv /tmp/dut/hvl/burst_memory.sv /tmp/dut/hvl/bmem_itf.sv -full64 -lca -sverilog +lint=all,noNS -timescale=1ns/1ns -debug_acc+all -kdb -fsdb -suppress=LNX_OS_VERUN -suppress=LINX_KRNL -suppress=LCA_FEATURES_ENABLED -licqueue -msg_config=../vcs_warn.config -l compile.log -top top_tb -o top_tb

Warning-[LNX_OS_VERUN] Unsupported Linux version
  Linux version 'AlmaLinux release 8.7 (Stone Smilodon)' is not supported on 
  'x86_64' officially, assuming linux compatibility by default. Set 
  VCS_ARCH_OVERRIDE to linux or suse32 to override.
  Please refer to release notes for information on supported platforms.


Warning-[LINX_KRNL] Unsupported Linux kernel
  Linux kernel '4.15.0-213-generic' is not supported.
  Supported versions are 2.4* or 2.6*.

                         Chronologic VCS (TM)
      Version R-2020.12-SP1-1_Full64 -- Sun Oct 29 02:01:01 2023

                    Copyright (c) 1991 - 2021 Synopsys, Inc.
   This software and the associated documentation are proprietary to Synopsys,
 Inc. This software may only be used in accordance with the terms and conditions
 of a written license agreement with Synopsys, Inc. All other use, reproduction,
            or distribution of this software is strictly prohibited.

Parsing design file '/tmp/dut/pkg/types.sv'
Parsing design file '/tmp/dut/hdl/cpu/utils_reg.sv'

Lint-[SV-PIU] Package import statement in $unit scope.
/tmp/dut/hdl/cpu/utils_reg.sv, 1
$unit
  There is an import statement in $unit scope.
  Although this is legal as per the SystemVerilog LRM, it means that package 
  content will be shared without explicit import of the package.
  Package: rv32i_types::*


Error-[SV-LCM-PND] Package not defined
/tmp/dut/hdl/cpu/utils_reg.sv, 1
$unit, "rv32i_types::"
  Package scope resolution failed. Token 'rv32i_types' is not a package. 
  Originating module '$unit'.
  Move package definition before the use of the package.


Error-[UTFP] Unknown type for port
  The type name 'rv32i_word' is unknown. If this is an interface port, the 
  direction is illegal.
  "/tmp/dut/hdl/cpu/utils_reg.sv", 12
  Source info:     input  rv32i_word in,


Error-[UTFP] Unknown type for port
  The type name 'rv32i_word' is unknown. If this is an interface port, the 
  direction is illegal.
  "/tmp/dut/hdl/cpu/utils_reg.sv", 14
  Source info: );


Error-[UTOPN] Unknown type or port name
  The type name 'rv32i_word' is unknown, or the identifier 'data' has not been
  listed as a port, or the declaration might represent an instance missing 
  parentheses.
  "/tmp/dut/hdl/cpu/utils_reg.sv", 16
  Source info:     rv32i_word data;


Error-[IND] Identifier not declared
/tmp/dut/hdl/cpu/utils_reg.sv, 20
  Identifier 'data' has not been declared yet. If this error is not expected, 
  please check if you have set `default_nettype to none.
  


Error-[UTFP] Unknown type for port
  The type name 'rv32i_word' is unknown. If this is an interface port, the 
  direction is illegal.
  "/tmp/dut/hdl/cpu/utils_reg.sv", 36
  Source info:     input  rv32i_word in,


Error-[UTFP] Unknown type for port
  The type name 'rv32i_word' is unknown. If this is an interface port, the 
  direction is illegal.
  "/tmp/dut/hdl/cpu/utils_reg.sv", 38
  Source info:     output rv32i_word rs1_out, rs2_out


Error-[SE] Syntax error
  Following verilog source has syntax error :
  	memory of unknown type
  "/tmp/dut/hdl/cpu/utils_reg.sv", 41: token is ';'
      rv32i_word data [32];
                           ^

8 errors
CPU time: .255 seconds to compile
make: *** [Makefile:14: sim/top_tb] Error 255
 
 ``` 

 </details> 
