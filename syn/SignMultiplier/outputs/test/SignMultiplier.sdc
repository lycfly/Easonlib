###################################################################

# Created by write_sdc on Wed Dec 15 21:28:54 2021

###################################################################
set sdc_version 2.0

set_units -time ns -resistance kOhm -capacitance pF -voltage V -current mA
set_max_transition 2 [current_design]
set_max_fanout 20 [current_design]
set_max_capacitance 0.4 [current_design]
set_load -pin_load 0.05 [get_ports {io_dout[15]}]
set_load -pin_load 0.05 [get_ports {io_dout[14]}]
set_load -pin_load 0.05 [get_ports {io_dout[13]}]
set_load -pin_load 0.05 [get_ports {io_dout[12]}]
set_load -pin_load 0.05 [get_ports {io_dout[11]}]
set_load -pin_load 0.05 [get_ports {io_dout[10]}]
set_load -pin_load 0.05 [get_ports {io_dout[9]}]
set_load -pin_load 0.05 [get_ports {io_dout[8]}]
set_load -pin_load 0.05 [get_ports {io_dout[7]}]
set_load -pin_load 0.05 [get_ports {io_dout[6]}]
set_load -pin_load 0.05 [get_ports {io_dout[5]}]
set_load -pin_load 0.05 [get_ports {io_dout[4]}]
set_load -pin_load 0.05 [get_ports {io_dout[3]}]
set_load -pin_load 0.05 [get_ports {io_dout[2]}]
set_load -pin_load 0.05 [get_ports {io_dout[1]}]
set_load -pin_load 0.05 [get_ports {io_dout[0]}]
group_path -name INPUT_GROUP  -from [list [get_ports {io_dinA[7]}] [get_ports {io_dinA[6]}] [get_ports      \
{io_dinA[5]}] [get_ports {io_dinA[4]}] [get_ports {io_dinA[3]}] [get_ports     \
{io_dinA[2]}] [get_ports {io_dinA[1]}] [get_ports {io_dinA[0]}] [get_ports     \
{io_dinB[7]}] [get_ports {io_dinB[6]}] [get_ports {io_dinB[5]}] [get_ports     \
{io_dinB[4]}] [get_ports {io_dinB[3]}] [get_ports {io_dinB[2]}] [get_ports     \
{io_dinB[1]}] [get_ports {io_dinB[0]}]]
group_path -name OUTPUT_GROUP  -to [list [get_ports {io_dout[15]}] [get_ports {io_dout[14]}] [get_ports      \
{io_dout[13]}] [get_ports {io_dout[12]}] [get_ports {io_dout[11]}] [get_ports  \
{io_dout[10]}] [get_ports {io_dout[9]}] [get_ports {io_dout[8]}] [get_ports    \
{io_dout[7]}] [get_ports {io_dout[6]}] [get_ports {io_dout[5]}] [get_ports     \
{io_dout[4]}] [get_ports {io_dout[3]}] [get_ports {io_dout[2]}] [get_ports     \
{io_dout[1]}] [get_ports {io_dout[0]}]]
set_input_transition -max 1  [get_ports {io_dinA[7]}]
set_input_transition -min 1  [get_ports {io_dinA[7]}]
set_input_transition -max 1  [get_ports {io_dinA[6]}]
set_input_transition -min 1  [get_ports {io_dinA[6]}]
set_input_transition -max 1  [get_ports {io_dinA[5]}]
set_input_transition -min 1  [get_ports {io_dinA[5]}]
set_input_transition -max 1  [get_ports {io_dinA[4]}]
set_input_transition -min 1  [get_ports {io_dinA[4]}]
set_input_transition -max 1  [get_ports {io_dinA[3]}]
set_input_transition -min 1  [get_ports {io_dinA[3]}]
set_input_transition -max 1  [get_ports {io_dinA[2]}]
set_input_transition -min 1  [get_ports {io_dinA[2]}]
set_input_transition -max 1  [get_ports {io_dinA[1]}]
set_input_transition -min 1  [get_ports {io_dinA[1]}]
set_input_transition -max 1  [get_ports {io_dinA[0]}]
set_input_transition -min 1  [get_ports {io_dinA[0]}]
set_input_transition -max 1  [get_ports {io_dinB[7]}]
set_input_transition -min 1  [get_ports {io_dinB[7]}]
set_input_transition -max 1  [get_ports {io_dinB[6]}]
set_input_transition -min 1  [get_ports {io_dinB[6]}]
set_input_transition -max 1  [get_ports {io_dinB[5]}]
set_input_transition -min 1  [get_ports {io_dinB[5]}]
set_input_transition -max 1  [get_ports {io_dinB[4]}]
set_input_transition -min 1  [get_ports {io_dinB[4]}]
set_input_transition -max 1  [get_ports {io_dinB[3]}]
set_input_transition -min 1  [get_ports {io_dinB[3]}]
set_input_transition -max 1  [get_ports {io_dinB[2]}]
set_input_transition -min 1  [get_ports {io_dinB[2]}]
set_input_transition -max 1  [get_ports {io_dinB[1]}]
set_input_transition -min 1  [get_ports {io_dinB[1]}]
set_input_transition -max 1  [get_ports {io_dinB[0]}]
set_input_transition -min 1  [get_ports {io_dinB[0]}]
