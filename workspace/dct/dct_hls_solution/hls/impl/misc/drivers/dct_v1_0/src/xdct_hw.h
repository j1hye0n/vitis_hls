// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.2 (64-bit)
// Tool Version Limit: 2024.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
// control
// 0x000 : Control signals
//         bit 0  - ap_start (Read/Write/COH)
//         bit 1  - ap_done (Read/COR)
//         bit 2  - ap_idle (Read)
//         bit 3  - ap_ready (Read/COR)
//         bit 7  - auto_restart (Read/Write)
//         bit 9  - interrupt (Read)
//         others - reserved
// 0x004 : Global Interrupt Enable Register
//         bit 0  - Global Interrupt Enable (Read/Write)
//         others - reserved
// 0x008 : IP Interrupt Enable Register (Read/Write)
//         bit 0 - enable ap_done interrupt (Read/Write)
//         bit 1 - enable ap_ready interrupt (Read/Write)
//         others - reserved
// 0x00c : IP Interrupt Status Register (Read/TOW)
//         bit 0 - ap_done (Read/TOW)
//         bit 1 - ap_ready (Read/TOW)
//         others - reserved
// 0x080 ~
// 0x0ff : Memory 'input_r' (64 * 16b)
//         Word n : bit [15: 0] - input_r[2n]
//                  bit [31:16] - input_r[2n+1]
// 0x100 ~
// 0x17f : Memory 'output_r' (64 * 16b)
//         Word n : bit [15: 0] - output_r[2n]
//                  bit [31:16] - output_r[2n+1]
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XDCT_CONTROL_ADDR_AP_CTRL       0x000
#define XDCT_CONTROL_ADDR_GIE           0x004
#define XDCT_CONTROL_ADDR_IER           0x008
#define XDCT_CONTROL_ADDR_ISR           0x00c
#define XDCT_CONTROL_ADDR_INPUT_R_BASE  0x080
#define XDCT_CONTROL_ADDR_INPUT_R_HIGH  0x0ff
#define XDCT_CONTROL_WIDTH_INPUT_R      16
#define XDCT_CONTROL_DEPTH_INPUT_R      64
#define XDCT_CONTROL_ADDR_OUTPUT_R_BASE 0x100
#define XDCT_CONTROL_ADDR_OUTPUT_R_HIGH 0x17f
#define XDCT_CONTROL_WIDTH_OUTPUT_R     16
#define XDCT_CONTROL_DEPTH_OUTPUT_R     64

