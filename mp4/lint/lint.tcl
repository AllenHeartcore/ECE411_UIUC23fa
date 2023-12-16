read_file -type verilog $env(PKG_SRCS) $env(HDL_SRCS)
read_file -type gateslibdb $env(SRAM_LIB)
read_file -type awl lint.awl

set_option top mp4
set_option enable_gateslib_autocompile yes
set_option language_mode verilog
set_option designread_enable_synthesis no
set_option designread_disable_flatten no
set_option enableSV09 yes

current_goal Design_Read -top mp4

current_goal lint/lint_turbo_rtl -top mp4
run_goal

# help -rules STARC05-2.11.3.1
