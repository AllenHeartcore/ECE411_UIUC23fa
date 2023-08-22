set link_library   [getenv STD_CELL_LIB]
set target_library [getenv STD_CELL_LIB]


set design_clock_pin clk
set design_reset_pin rst

set_max_area 

set modules [glob -nocomplain ../pkg/*.sv]
foreach module $modules {
    puts "analyzing $module"
    analyze -library WORK -format sverilog "${module}"
}

set modules [glob -nocomplain ../hdl/*.sv]
foreach module $modules {
    puts "analyzing $module"
    analyze -library WORK -format sverilog "${module}"
}

elaborate mp0
current_design mp0
check_design

set clk_name $design_clock_pin
create_clock -period 10 -name my_clk $clk_name
set_dont_touch_network [get_clocks my_clk]
set_fix_hold [get_clocks my_clk]
set_clock_uncertainty 0.1 [get_clocks my_clk]
set_ideal_network [get_ports clk]

set_input_delay 1 [all_inputs] -clock my_clk
set_output_delay 1 [all_outputs] -clock my_clk
set_load 0.1 [all_outputs]
set_max_fanout 1 [all_inputs]
set_fanout_load 8 [all_outputs]

link
compile

current_design mp0

report_area > area.rpt
report_timing > timing.rpt

report_area
report_timing

exit