set moduleName matmul_partition_Pipeline_loop2_lreorder1_lreorder2
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type loop_auto_rewind
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set svuvm_can_support 1
set cdfgNum 7
set C_modelName {matmul_partition_Pipeline_loop2_lreorder1_lreorder2}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict A { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict A_1 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict A_2 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict A_3 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict A_4 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict A_5 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict A_6 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict A_7 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict A_8 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict A_9 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict A_10 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict A_11 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict A_12 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict A_13 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict A_14 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict A_15 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict B { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict B_1 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict B_2 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict B_3 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict B_4 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict B_5 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict B_6 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict B_7 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict B_8 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict B_9 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict B_10 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict B_11 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict B_12 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict B_13 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict B_14 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict B_15 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict C { MEM_WIDTH 32 MEM_SIZE 1024 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
set C_modelArgList {
	{ dim int 32 regular  }
	{ bound6 int 94 regular  }
	{ bound int 63 regular  }
	{ A int 32 regular {array 16 { 1 3 } 1 1 }  }
	{ A_1 int 32 regular {array 16 { 1 3 } 1 1 }  }
	{ A_2 int 32 regular {array 16 { 1 3 } 1 1 }  }
	{ A_3 int 32 regular {array 16 { 1 3 } 1 1 }  }
	{ A_4 int 32 regular {array 16 { 1 3 } 1 1 }  }
	{ A_5 int 32 regular {array 16 { 1 3 } 1 1 }  }
	{ A_6 int 32 regular {array 16 { 1 3 } 1 1 }  }
	{ A_7 int 32 regular {array 16 { 1 3 } 1 1 }  }
	{ A_8 int 32 regular {array 16 { 1 3 } 1 1 }  }
	{ A_9 int 32 regular {array 16 { 1 3 } 1 1 }  }
	{ A_10 int 32 regular {array 16 { 1 3 } 1 1 }  }
	{ A_11 int 32 regular {array 16 { 1 3 } 1 1 }  }
	{ A_12 int 32 regular {array 16 { 1 3 } 1 1 }  }
	{ A_13 int 32 regular {array 16 { 1 3 } 1 1 }  }
	{ A_14 int 32 regular {array 16 { 1 3 } 1 1 }  }
	{ A_15 int 32 regular {array 16 { 1 3 } 1 1 }  }
	{ B int 32 regular {array 16 { 1 3 } 1 1 }  }
	{ B_1 int 32 regular {array 16 { 1 3 } 1 1 }  }
	{ B_2 int 32 regular {array 16 { 1 3 } 1 1 }  }
	{ B_3 int 32 regular {array 16 { 1 3 } 1 1 }  }
	{ B_4 int 32 regular {array 16 { 1 3 } 1 1 }  }
	{ B_5 int 32 regular {array 16 { 1 3 } 1 1 }  }
	{ B_6 int 32 regular {array 16 { 1 3 } 1 1 }  }
	{ B_7 int 32 regular {array 16 { 1 3 } 1 1 }  }
	{ B_8 int 32 regular {array 16 { 1 3 } 1 1 }  }
	{ B_9 int 32 regular {array 16 { 1 3 } 1 1 }  }
	{ B_10 int 32 regular {array 16 { 1 3 } 1 1 }  }
	{ B_11 int 32 regular {array 16 { 1 3 } 1 1 }  }
	{ B_12 int 32 regular {array 16 { 1 3 } 1 1 }  }
	{ B_13 int 32 regular {array 16 { 1 3 } 1 1 }  }
	{ B_14 int 32 regular {array 16 { 1 3 } 1 1 }  }
	{ B_15 int 32 regular {array 16 { 1 3 } 1 1 }  }
	{ C int 32 regular {array 256 { 0 3 } 0 1 }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "dim", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bound6", "interface" : "wire", "bitwidth" : 94, "direction" : "READONLY"} , 
 	{ "Name" : "bound", "interface" : "wire", "bitwidth" : 63, "direction" : "READONLY"} , 
 	{ "Name" : "A", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "A_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "A_2", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "A_3", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "A_4", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "A_5", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "A_6", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "A_7", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "A_8", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "A_9", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "A_10", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "A_11", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "A_12", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "A_13", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "A_14", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "A_15", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_2", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_3", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_4", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_5", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_6", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_7", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_8", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_9", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_10", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_11", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_12", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_13", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_14", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_15", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "C", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 113
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ dim sc_in sc_lv 32 signal 0 } 
	{ bound6 sc_in sc_lv 94 signal 1 } 
	{ bound sc_in sc_lv 63 signal 2 } 
	{ A_address0 sc_out sc_lv 4 signal 3 } 
	{ A_ce0 sc_out sc_logic 1 signal 3 } 
	{ A_q0 sc_in sc_lv 32 signal 3 } 
	{ A_1_address0 sc_out sc_lv 4 signal 4 } 
	{ A_1_ce0 sc_out sc_logic 1 signal 4 } 
	{ A_1_q0 sc_in sc_lv 32 signal 4 } 
	{ A_2_address0 sc_out sc_lv 4 signal 5 } 
	{ A_2_ce0 sc_out sc_logic 1 signal 5 } 
	{ A_2_q0 sc_in sc_lv 32 signal 5 } 
	{ A_3_address0 sc_out sc_lv 4 signal 6 } 
	{ A_3_ce0 sc_out sc_logic 1 signal 6 } 
	{ A_3_q0 sc_in sc_lv 32 signal 6 } 
	{ A_4_address0 sc_out sc_lv 4 signal 7 } 
	{ A_4_ce0 sc_out sc_logic 1 signal 7 } 
	{ A_4_q0 sc_in sc_lv 32 signal 7 } 
	{ A_5_address0 sc_out sc_lv 4 signal 8 } 
	{ A_5_ce0 sc_out sc_logic 1 signal 8 } 
	{ A_5_q0 sc_in sc_lv 32 signal 8 } 
	{ A_6_address0 sc_out sc_lv 4 signal 9 } 
	{ A_6_ce0 sc_out sc_logic 1 signal 9 } 
	{ A_6_q0 sc_in sc_lv 32 signal 9 } 
	{ A_7_address0 sc_out sc_lv 4 signal 10 } 
	{ A_7_ce0 sc_out sc_logic 1 signal 10 } 
	{ A_7_q0 sc_in sc_lv 32 signal 10 } 
	{ A_8_address0 sc_out sc_lv 4 signal 11 } 
	{ A_8_ce0 sc_out sc_logic 1 signal 11 } 
	{ A_8_q0 sc_in sc_lv 32 signal 11 } 
	{ A_9_address0 sc_out sc_lv 4 signal 12 } 
	{ A_9_ce0 sc_out sc_logic 1 signal 12 } 
	{ A_9_q0 sc_in sc_lv 32 signal 12 } 
	{ A_10_address0 sc_out sc_lv 4 signal 13 } 
	{ A_10_ce0 sc_out sc_logic 1 signal 13 } 
	{ A_10_q0 sc_in sc_lv 32 signal 13 } 
	{ A_11_address0 sc_out sc_lv 4 signal 14 } 
	{ A_11_ce0 sc_out sc_logic 1 signal 14 } 
	{ A_11_q0 sc_in sc_lv 32 signal 14 } 
	{ A_12_address0 sc_out sc_lv 4 signal 15 } 
	{ A_12_ce0 sc_out sc_logic 1 signal 15 } 
	{ A_12_q0 sc_in sc_lv 32 signal 15 } 
	{ A_13_address0 sc_out sc_lv 4 signal 16 } 
	{ A_13_ce0 sc_out sc_logic 1 signal 16 } 
	{ A_13_q0 sc_in sc_lv 32 signal 16 } 
	{ A_14_address0 sc_out sc_lv 4 signal 17 } 
	{ A_14_ce0 sc_out sc_logic 1 signal 17 } 
	{ A_14_q0 sc_in sc_lv 32 signal 17 } 
	{ A_15_address0 sc_out sc_lv 4 signal 18 } 
	{ A_15_ce0 sc_out sc_logic 1 signal 18 } 
	{ A_15_q0 sc_in sc_lv 32 signal 18 } 
	{ B_address0 sc_out sc_lv 4 signal 19 } 
	{ B_ce0 sc_out sc_logic 1 signal 19 } 
	{ B_q0 sc_in sc_lv 32 signal 19 } 
	{ B_1_address0 sc_out sc_lv 4 signal 20 } 
	{ B_1_ce0 sc_out sc_logic 1 signal 20 } 
	{ B_1_q0 sc_in sc_lv 32 signal 20 } 
	{ B_2_address0 sc_out sc_lv 4 signal 21 } 
	{ B_2_ce0 sc_out sc_logic 1 signal 21 } 
	{ B_2_q0 sc_in sc_lv 32 signal 21 } 
	{ B_3_address0 sc_out sc_lv 4 signal 22 } 
	{ B_3_ce0 sc_out sc_logic 1 signal 22 } 
	{ B_3_q0 sc_in sc_lv 32 signal 22 } 
	{ B_4_address0 sc_out sc_lv 4 signal 23 } 
	{ B_4_ce0 sc_out sc_logic 1 signal 23 } 
	{ B_4_q0 sc_in sc_lv 32 signal 23 } 
	{ B_5_address0 sc_out sc_lv 4 signal 24 } 
	{ B_5_ce0 sc_out sc_logic 1 signal 24 } 
	{ B_5_q0 sc_in sc_lv 32 signal 24 } 
	{ B_6_address0 sc_out sc_lv 4 signal 25 } 
	{ B_6_ce0 sc_out sc_logic 1 signal 25 } 
	{ B_6_q0 sc_in sc_lv 32 signal 25 } 
	{ B_7_address0 sc_out sc_lv 4 signal 26 } 
	{ B_7_ce0 sc_out sc_logic 1 signal 26 } 
	{ B_7_q0 sc_in sc_lv 32 signal 26 } 
	{ B_8_address0 sc_out sc_lv 4 signal 27 } 
	{ B_8_ce0 sc_out sc_logic 1 signal 27 } 
	{ B_8_q0 sc_in sc_lv 32 signal 27 } 
	{ B_9_address0 sc_out sc_lv 4 signal 28 } 
	{ B_9_ce0 sc_out sc_logic 1 signal 28 } 
	{ B_9_q0 sc_in sc_lv 32 signal 28 } 
	{ B_10_address0 sc_out sc_lv 4 signal 29 } 
	{ B_10_ce0 sc_out sc_logic 1 signal 29 } 
	{ B_10_q0 sc_in sc_lv 32 signal 29 } 
	{ B_11_address0 sc_out sc_lv 4 signal 30 } 
	{ B_11_ce0 sc_out sc_logic 1 signal 30 } 
	{ B_11_q0 sc_in sc_lv 32 signal 30 } 
	{ B_12_address0 sc_out sc_lv 4 signal 31 } 
	{ B_12_ce0 sc_out sc_logic 1 signal 31 } 
	{ B_12_q0 sc_in sc_lv 32 signal 31 } 
	{ B_13_address0 sc_out sc_lv 4 signal 32 } 
	{ B_13_ce0 sc_out sc_logic 1 signal 32 } 
	{ B_13_q0 sc_in sc_lv 32 signal 32 } 
	{ B_14_address0 sc_out sc_lv 4 signal 33 } 
	{ B_14_ce0 sc_out sc_logic 1 signal 33 } 
	{ B_14_q0 sc_in sc_lv 32 signal 33 } 
	{ B_15_address0 sc_out sc_lv 4 signal 34 } 
	{ B_15_ce0 sc_out sc_logic 1 signal 34 } 
	{ B_15_q0 sc_in sc_lv 32 signal 34 } 
	{ C_address0 sc_out sc_lv 8 signal 35 } 
	{ C_ce0 sc_out sc_logic 1 signal 35 } 
	{ C_we0 sc_out sc_logic 1 signal 35 } 
	{ C_d0 sc_out sc_lv 32 signal 35 } 
	{ grp_fu_367_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_367_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_367_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_367_p_ce sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "dim", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "dim", "role": "default" }} , 
 	{ "name": "bound6", "direction": "in", "datatype": "sc_lv", "bitwidth":94, "type": "signal", "bundle":{"name": "bound6", "role": "default" }} , 
 	{ "name": "bound", "direction": "in", "datatype": "sc_lv", "bitwidth":63, "type": "signal", "bundle":{"name": "bound", "role": "default" }} , 
 	{ "name": "A_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "A", "role": "address0" }} , 
 	{ "name": "A_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A", "role": "ce0" }} , 
 	{ "name": "A_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A", "role": "q0" }} , 
 	{ "name": "A_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "A_1", "role": "address0" }} , 
 	{ "name": "A_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_1", "role": "ce0" }} , 
 	{ "name": "A_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_1", "role": "q0" }} , 
 	{ "name": "A_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "A_2", "role": "address0" }} , 
 	{ "name": "A_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_2", "role": "ce0" }} , 
 	{ "name": "A_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_2", "role": "q0" }} , 
 	{ "name": "A_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "A_3", "role": "address0" }} , 
 	{ "name": "A_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_3", "role": "ce0" }} , 
 	{ "name": "A_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_3", "role": "q0" }} , 
 	{ "name": "A_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "A_4", "role": "address0" }} , 
 	{ "name": "A_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_4", "role": "ce0" }} , 
 	{ "name": "A_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_4", "role": "q0" }} , 
 	{ "name": "A_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "A_5", "role": "address0" }} , 
 	{ "name": "A_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_5", "role": "ce0" }} , 
 	{ "name": "A_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_5", "role": "q0" }} , 
 	{ "name": "A_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "A_6", "role": "address0" }} , 
 	{ "name": "A_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_6", "role": "ce0" }} , 
 	{ "name": "A_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_6", "role": "q0" }} , 
 	{ "name": "A_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "A_7", "role": "address0" }} , 
 	{ "name": "A_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_7", "role": "ce0" }} , 
 	{ "name": "A_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_7", "role": "q0" }} , 
 	{ "name": "A_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "A_8", "role": "address0" }} , 
 	{ "name": "A_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_8", "role": "ce0" }} , 
 	{ "name": "A_8_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_8", "role": "q0" }} , 
 	{ "name": "A_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "A_9", "role": "address0" }} , 
 	{ "name": "A_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_9", "role": "ce0" }} , 
 	{ "name": "A_9_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_9", "role": "q0" }} , 
 	{ "name": "A_10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "A_10", "role": "address0" }} , 
 	{ "name": "A_10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_10", "role": "ce0" }} , 
 	{ "name": "A_10_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_10", "role": "q0" }} , 
 	{ "name": "A_11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "A_11", "role": "address0" }} , 
 	{ "name": "A_11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_11", "role": "ce0" }} , 
 	{ "name": "A_11_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_11", "role": "q0" }} , 
 	{ "name": "A_12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "A_12", "role": "address0" }} , 
 	{ "name": "A_12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_12", "role": "ce0" }} , 
 	{ "name": "A_12_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_12", "role": "q0" }} , 
 	{ "name": "A_13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "A_13", "role": "address0" }} , 
 	{ "name": "A_13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_13", "role": "ce0" }} , 
 	{ "name": "A_13_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_13", "role": "q0" }} , 
 	{ "name": "A_14_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "A_14", "role": "address0" }} , 
 	{ "name": "A_14_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_14", "role": "ce0" }} , 
 	{ "name": "A_14_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_14", "role": "q0" }} , 
 	{ "name": "A_15_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "A_15", "role": "address0" }} , 
 	{ "name": "A_15_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_15", "role": "ce0" }} , 
 	{ "name": "A_15_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_15", "role": "q0" }} , 
 	{ "name": "B_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B", "role": "address0" }} , 
 	{ "name": "B_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B", "role": "ce0" }} , 
 	{ "name": "B_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B", "role": "q0" }} , 
 	{ "name": "B_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B_1", "role": "address0" }} , 
 	{ "name": "B_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_1", "role": "ce0" }} , 
 	{ "name": "B_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_1", "role": "q0" }} , 
 	{ "name": "B_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B_2", "role": "address0" }} , 
 	{ "name": "B_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_2", "role": "ce0" }} , 
 	{ "name": "B_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_2", "role": "q0" }} , 
 	{ "name": "B_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B_3", "role": "address0" }} , 
 	{ "name": "B_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_3", "role": "ce0" }} , 
 	{ "name": "B_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_3", "role": "q0" }} , 
 	{ "name": "B_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B_4", "role": "address0" }} , 
 	{ "name": "B_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_4", "role": "ce0" }} , 
 	{ "name": "B_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_4", "role": "q0" }} , 
 	{ "name": "B_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B_5", "role": "address0" }} , 
 	{ "name": "B_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_5", "role": "ce0" }} , 
 	{ "name": "B_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_5", "role": "q0" }} , 
 	{ "name": "B_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B_6", "role": "address0" }} , 
 	{ "name": "B_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_6", "role": "ce0" }} , 
 	{ "name": "B_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_6", "role": "q0" }} , 
 	{ "name": "B_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B_7", "role": "address0" }} , 
 	{ "name": "B_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_7", "role": "ce0" }} , 
 	{ "name": "B_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_7", "role": "q0" }} , 
 	{ "name": "B_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B_8", "role": "address0" }} , 
 	{ "name": "B_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_8", "role": "ce0" }} , 
 	{ "name": "B_8_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_8", "role": "q0" }} , 
 	{ "name": "B_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B_9", "role": "address0" }} , 
 	{ "name": "B_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_9", "role": "ce0" }} , 
 	{ "name": "B_9_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_9", "role": "q0" }} , 
 	{ "name": "B_10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B_10", "role": "address0" }} , 
 	{ "name": "B_10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_10", "role": "ce0" }} , 
 	{ "name": "B_10_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_10", "role": "q0" }} , 
 	{ "name": "B_11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B_11", "role": "address0" }} , 
 	{ "name": "B_11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_11", "role": "ce0" }} , 
 	{ "name": "B_11_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_11", "role": "q0" }} , 
 	{ "name": "B_12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B_12", "role": "address0" }} , 
 	{ "name": "B_12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_12", "role": "ce0" }} , 
 	{ "name": "B_12_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_12", "role": "q0" }} , 
 	{ "name": "B_13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B_13", "role": "address0" }} , 
 	{ "name": "B_13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_13", "role": "ce0" }} , 
 	{ "name": "B_13_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_13", "role": "q0" }} , 
 	{ "name": "B_14_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B_14", "role": "address0" }} , 
 	{ "name": "B_14_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_14", "role": "ce0" }} , 
 	{ "name": "B_14_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_14", "role": "q0" }} , 
 	{ "name": "B_15_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B_15", "role": "address0" }} , 
 	{ "name": "B_15_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_15", "role": "ce0" }} , 
 	{ "name": "B_15_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_15", "role": "q0" }} , 
 	{ "name": "C_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "C", "role": "address0" }} , 
 	{ "name": "C_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C", "role": "ce0" }} , 
 	{ "name": "C_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C", "role": "we0" }} , 
 	{ "name": "C_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "C", "role": "d0" }} , 
 	{ "name": "grp_fu_367_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_367_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_367_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_367_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_367_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_367_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_367_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_367_p_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30"],
		"CDFG" : "matmul_partition_Pipeline_loop2_lreorder1_lreorder2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "266", "EstimateLatencyMax" : "266",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "dim", "Type" : "None", "Direction" : "I"},
			{"Name" : "bound6", "Type" : "None", "Direction" : "I"},
			{"Name" : "bound", "Type" : "None", "Direction" : "I"},
			{"Name" : "A", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "A_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "A_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "A_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "A_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "A_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "A_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "A_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "A_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "A_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "A_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "A_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "A_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "A_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "A_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "A_15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "B", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "B_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "B_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "B_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "B_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "B_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "B_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "B_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "B_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "B_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "B_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "B_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "B_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "B_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "B_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "B_15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "C", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "loop2_lreorder1_lreorder2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter10", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter10", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U42", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U43", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U44", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U45", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U46", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U47", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U48", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U49", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U50", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U51", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U52", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U53", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U54", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U55", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U56", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_9_2_32_1_1_U57", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_7_2_32_1_1_U58", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_33_4_32_1_1_U59", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_31_4_32_1_1_U60", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_29_4_32_1_1_U61", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_27_4_32_1_1_U62", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_25_4_32_1_1_U63", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_23_4_32_1_1_U64", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_21_4_32_1_1_U65", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_19_4_32_1_1_U66", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_17_3_32_1_1_U67", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_15_3_32_1_1_U68", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_13_3_32_1_1_U69", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_11_3_32_1_1_U70", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	matmul_partition_Pipeline_loop2_lreorder1_lreorder2 {
		dim {Type I LastRead 0 FirstWrite -1}
		bound6 {Type I LastRead 0 FirstWrite -1}
		bound {Type I LastRead 0 FirstWrite -1}
		A {Type I LastRead 4 FirstWrite -1}
		A_1 {Type I LastRead 4 FirstWrite -1}
		A_2 {Type I LastRead 4 FirstWrite -1}
		A_3 {Type I LastRead 4 FirstWrite -1}
		A_4 {Type I LastRead 4 FirstWrite -1}
		A_5 {Type I LastRead 4 FirstWrite -1}
		A_6 {Type I LastRead 4 FirstWrite -1}
		A_7 {Type I LastRead 4 FirstWrite -1}
		A_8 {Type I LastRead 4 FirstWrite -1}
		A_9 {Type I LastRead 4 FirstWrite -1}
		A_10 {Type I LastRead 4 FirstWrite -1}
		A_11 {Type I LastRead 4 FirstWrite -1}
		A_12 {Type I LastRead 3 FirstWrite -1}
		A_13 {Type I LastRead 3 FirstWrite -1}
		A_14 {Type I LastRead 3 FirstWrite -1}
		A_15 {Type I LastRead 3 FirstWrite -1}
		B {Type I LastRead 4 FirstWrite -1}
		B_1 {Type I LastRead 4 FirstWrite -1}
		B_2 {Type I LastRead 4 FirstWrite -1}
		B_3 {Type I LastRead 4 FirstWrite -1}
		B_4 {Type I LastRead 4 FirstWrite -1}
		B_5 {Type I LastRead 4 FirstWrite -1}
		B_6 {Type I LastRead 4 FirstWrite -1}
		B_7 {Type I LastRead 4 FirstWrite -1}
		B_8 {Type I LastRead 4 FirstWrite -1}
		B_9 {Type I LastRead 4 FirstWrite -1}
		B_10 {Type I LastRead 4 FirstWrite -1}
		B_11 {Type I LastRead 4 FirstWrite -1}
		B_12 {Type I LastRead 3 FirstWrite -1}
		B_13 {Type I LastRead 3 FirstWrite -1}
		B_14 {Type I LastRead 3 FirstWrite -1}
		B_15 {Type I LastRead 3 FirstWrite -1}
		C {Type O LastRead -1 FirstWrite 10}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "266", "Max" : "266"}
	, {"Name" : "Interval", "Min" : "266", "Max" : "266"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	dim { ap_none {  { dim in_data 0 32 } } }
	bound6 { ap_none {  { bound6 in_data 0 94 } } }
	bound { ap_none {  { bound in_data 0 63 } } }
	A { ap_memory {  { A_address0 mem_address 1 4 }  { A_ce0 mem_ce 1 1 }  { A_q0 mem_dout 0 32 } } }
	A_1 { ap_memory {  { A_1_address0 mem_address 1 4 }  { A_1_ce0 mem_ce 1 1 }  { A_1_q0 mem_dout 0 32 } } }
	A_2 { ap_memory {  { A_2_address0 mem_address 1 4 }  { A_2_ce0 mem_ce 1 1 }  { A_2_q0 mem_dout 0 32 } } }
	A_3 { ap_memory {  { A_3_address0 mem_address 1 4 }  { A_3_ce0 mem_ce 1 1 }  { A_3_q0 mem_dout 0 32 } } }
	A_4 { ap_memory {  { A_4_address0 mem_address 1 4 }  { A_4_ce0 mem_ce 1 1 }  { A_4_q0 mem_dout 0 32 } } }
	A_5 { ap_memory {  { A_5_address0 mem_address 1 4 }  { A_5_ce0 mem_ce 1 1 }  { A_5_q0 mem_dout 0 32 } } }
	A_6 { ap_memory {  { A_6_address0 mem_address 1 4 }  { A_6_ce0 mem_ce 1 1 }  { A_6_q0 mem_dout 0 32 } } }
	A_7 { ap_memory {  { A_7_address0 mem_address 1 4 }  { A_7_ce0 mem_ce 1 1 }  { A_7_q0 mem_dout 0 32 } } }
	A_8 { ap_memory {  { A_8_address0 mem_address 1 4 }  { A_8_ce0 mem_ce 1 1 }  { A_8_q0 mem_dout 0 32 } } }
	A_9 { ap_memory {  { A_9_address0 mem_address 1 4 }  { A_9_ce0 mem_ce 1 1 }  { A_9_q0 mem_dout 0 32 } } }
	A_10 { ap_memory {  { A_10_address0 mem_address 1 4 }  { A_10_ce0 mem_ce 1 1 }  { A_10_q0 mem_dout 0 32 } } }
	A_11 { ap_memory {  { A_11_address0 mem_address 1 4 }  { A_11_ce0 mem_ce 1 1 }  { A_11_q0 mem_dout 0 32 } } }
	A_12 { ap_memory {  { A_12_address0 mem_address 1 4 }  { A_12_ce0 mem_ce 1 1 }  { A_12_q0 mem_dout 0 32 } } }
	A_13 { ap_memory {  { A_13_address0 mem_address 1 4 }  { A_13_ce0 mem_ce 1 1 }  { A_13_q0 mem_dout 0 32 } } }
	A_14 { ap_memory {  { A_14_address0 mem_address 1 4 }  { A_14_ce0 mem_ce 1 1 }  { A_14_q0 mem_dout 0 32 } } }
	A_15 { ap_memory {  { A_15_address0 mem_address 1 4 }  { A_15_ce0 mem_ce 1 1 }  { A_15_q0 mem_dout 0 32 } } }
	B { ap_memory {  { B_address0 mem_address 1 4 }  { B_ce0 mem_ce 1 1 }  { B_q0 mem_dout 0 32 } } }
	B_1 { ap_memory {  { B_1_address0 mem_address 1 4 }  { B_1_ce0 mem_ce 1 1 }  { B_1_q0 mem_dout 0 32 } } }
	B_2 { ap_memory {  { B_2_address0 mem_address 1 4 }  { B_2_ce0 mem_ce 1 1 }  { B_2_q0 mem_dout 0 32 } } }
	B_3 { ap_memory {  { B_3_address0 mem_address 1 4 }  { B_3_ce0 mem_ce 1 1 }  { B_3_q0 mem_dout 0 32 } } }
	B_4 { ap_memory {  { B_4_address0 mem_address 1 4 }  { B_4_ce0 mem_ce 1 1 }  { B_4_q0 mem_dout 0 32 } } }
	B_5 { ap_memory {  { B_5_address0 mem_address 1 4 }  { B_5_ce0 mem_ce 1 1 }  { B_5_q0 mem_dout 0 32 } } }
	B_6 { ap_memory {  { B_6_address0 mem_address 1 4 }  { B_6_ce0 mem_ce 1 1 }  { B_6_q0 mem_dout 0 32 } } }
	B_7 { ap_memory {  { B_7_address0 mem_address 1 4 }  { B_7_ce0 mem_ce 1 1 }  { B_7_q0 mem_dout 0 32 } } }
	B_8 { ap_memory {  { B_8_address0 mem_address 1 4 }  { B_8_ce0 mem_ce 1 1 }  { B_8_q0 mem_dout 0 32 } } }
	B_9 { ap_memory {  { B_9_address0 mem_address 1 4 }  { B_9_ce0 mem_ce 1 1 }  { B_9_q0 mem_dout 0 32 } } }
	B_10 { ap_memory {  { B_10_address0 mem_address 1 4 }  { B_10_ce0 mem_ce 1 1 }  { B_10_q0 mem_dout 0 32 } } }
	B_11 { ap_memory {  { B_11_address0 mem_address 1 4 }  { B_11_ce0 mem_ce 1 1 }  { B_11_q0 mem_dout 0 32 } } }
	B_12 { ap_memory {  { B_12_address0 mem_address 1 4 }  { B_12_ce0 mem_ce 1 1 }  { B_12_q0 mem_dout 0 32 } } }
	B_13 { ap_memory {  { B_13_address0 mem_address 1 4 }  { B_13_ce0 mem_ce 1 1 }  { B_13_q0 mem_dout 0 32 } } }
	B_14 { ap_memory {  { B_14_address0 mem_address 1 4 }  { B_14_ce0 mem_ce 1 1 }  { B_14_q0 mem_dout 0 32 } } }
	B_15 { ap_memory {  { B_15_address0 mem_address 1 4 }  { B_15_ce0 mem_ce 1 1 }  { B_15_q0 mem_dout 0 32 } } }
	C { ap_memory {  { C_address0 mem_address 1 8 }  { C_ce0 mem_ce 1 1 }  { C_we0 mem_we 1 1 }  { C_d0 mem_din 1 32 } } }
}
