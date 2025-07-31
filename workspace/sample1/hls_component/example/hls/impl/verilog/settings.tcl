# ==============================================================
# Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.2 (64-bit)
# Tool Version Limit: 2024.11
# Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
# Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
# 
# ==============================================================
#
# Settings for Vivado implementation flow
#
set top_module example
set language verilog
set family azynq
set device xa7z010
set package -clg225
set speed -1I
set clock ap_clk
set fsm_ext "off"

# For customizing the implementation flow
set add_io_buffers false ;# true|false
