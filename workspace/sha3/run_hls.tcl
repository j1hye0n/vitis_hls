# Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
# Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#   http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
# edited by hyeon

# Create a project
open_component -reset sha3_hls -flow_target vivado

# Add design files
add_files fips202.c
add_files fips202.h
add_files sha3_256.c
# Add test bench & files
add_files -tb sha3_256_tb.c

# Set the top-level function
set_top sha3_256_hw
set top "sha3_256_hw"

# ########################################################
# Create a solution
# Define technology and clock rate
# ########################################################
set sol_name "_solution"
open_solution -reset $sol_name
set_part  {xc7z020clg400-1}
create_clock -period 10

# Set variable to select which steps to execute
set hls_exec 3

csim_design

# coeff table copy
# file copy -force "./dct_coeff_table.txt" "./$sol_name/csim/build/dct_coeff_table.txt"
# Set any optimization directives
# End of directives

if {$hls_exec == 1} {
	# Run Synthesis and Exit
	csynth_design
} elseif {$hls_exec == 2} {
	# Run Synthesis, RTL Simulation and Exit
	csynth_design
	cosim_design -trace_level all -tool xsim
} elseif {$hls_exec == 3} { 
	# Run Synthesis, RTL Simulation, RTL implementation and Exit
	csynth_design
	cosim_design -trace_level all -tool xsim
	export_design -format ip_catalog
} else {
	# Default is to exit after running csynth
	csynth_design
}

# GUI analysis files
set gui_dir "./$sol_name/gui"
file mkdir $gui_dir

if {[file exists "$sol_name/hls/sim/verilog/$top.wdb"]} {
	file copy -force "$sol_name/hls/sim/verilog/$top.wdb" "$gui_dir/"
}
if {[file exists "$sol_name/hls/hls.log"]} {
	file copy -force "$sol_name/hls.log" "$gui_dir/"
}

exit
