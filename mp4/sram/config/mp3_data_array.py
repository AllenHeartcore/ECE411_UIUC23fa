# file snippet used by apply_cache_params.sh; do not modify

tech_name = "freepdk45"

num_rw_ports = 1
num_r_ports = 0
num_w_ports = 0

nominal_corner_only = True
process_corners = ["TT"]
supply_voltages = [1.0]
temperatures = [25]

netlist_only = False
route_supplies = False
check_lvsdrc = False

perimeter_pins = False

load_scales = [0.5, 1, 4]
slew_scales = [0.5, 1]

print_banner = False
num_threads = 4
output_extended_config = True

word_size = 256
write_size = 8
num_words = 16
output_name = "mp3_data_array"
output_path = "output/{}".format(output_name)
    
