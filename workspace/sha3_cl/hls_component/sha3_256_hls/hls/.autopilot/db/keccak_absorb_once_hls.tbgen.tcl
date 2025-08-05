set moduleName keccak_absorb_once_hls
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set svuvm_can_support 1
set cdfgNum 10
set C_modelName {keccak_absorb_once_hls}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict s_0 { MEM_WIDTH 64 MEM_SIZE 40 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict s_1 { MEM_WIDTH 64 MEM_SIZE 40 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict s_2 { MEM_WIDTH 64 MEM_SIZE 40 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict s_3 { MEM_WIDTH 64 MEM_SIZE 40 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict s_4 { MEM_WIDTH 64 MEM_SIZE 40 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict in_r { MEM_WIDTH 8 MEM_SIZE 2048 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ s_0 int 64 regular {array 5 { 2 2 } 1 1 }  }
	{ s_1 int 64 regular {array 5 { 2 2 } 1 1 }  }
	{ s_2 int 64 regular {array 5 { 2 2 } 1 1 }  }
	{ s_3 int 64 regular {array 5 { 2 2 } 1 1 }  }
	{ s_4 int 64 regular {array 5 { 2 2 } 1 1 }  }
	{ in_r int 8 regular {array 2048 { 1 1 } 1 1 }  }
	{ inlen int 64 regular  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "s_0", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE"} , 
 	{ "Name" : "s_1", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE"} , 
 	{ "Name" : "s_2", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE"} , 
 	{ "Name" : "s_3", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE"} , 
 	{ "Name" : "s_4", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE"} , 
 	{ "Name" : "in_r", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "inlen", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 63
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ s_0_address0 sc_out sc_lv 3 signal 0 } 
	{ s_0_ce0 sc_out sc_logic 1 signal 0 } 
	{ s_0_we0 sc_out sc_logic 1 signal 0 } 
	{ s_0_d0 sc_out sc_lv 64 signal 0 } 
	{ s_0_q0 sc_in sc_lv 64 signal 0 } 
	{ s_0_address1 sc_out sc_lv 3 signal 0 } 
	{ s_0_ce1 sc_out sc_logic 1 signal 0 } 
	{ s_0_we1 sc_out sc_logic 1 signal 0 } 
	{ s_0_d1 sc_out sc_lv 64 signal 0 } 
	{ s_0_q1 sc_in sc_lv 64 signal 0 } 
	{ s_1_address0 sc_out sc_lv 3 signal 1 } 
	{ s_1_ce0 sc_out sc_logic 1 signal 1 } 
	{ s_1_we0 sc_out sc_logic 1 signal 1 } 
	{ s_1_d0 sc_out sc_lv 64 signal 1 } 
	{ s_1_q0 sc_in sc_lv 64 signal 1 } 
	{ s_1_address1 sc_out sc_lv 3 signal 1 } 
	{ s_1_ce1 sc_out sc_logic 1 signal 1 } 
	{ s_1_we1 sc_out sc_logic 1 signal 1 } 
	{ s_1_d1 sc_out sc_lv 64 signal 1 } 
	{ s_1_q1 sc_in sc_lv 64 signal 1 } 
	{ s_2_address0 sc_out sc_lv 3 signal 2 } 
	{ s_2_ce0 sc_out sc_logic 1 signal 2 } 
	{ s_2_we0 sc_out sc_logic 1 signal 2 } 
	{ s_2_d0 sc_out sc_lv 64 signal 2 } 
	{ s_2_q0 sc_in sc_lv 64 signal 2 } 
	{ s_2_address1 sc_out sc_lv 3 signal 2 } 
	{ s_2_ce1 sc_out sc_logic 1 signal 2 } 
	{ s_2_we1 sc_out sc_logic 1 signal 2 } 
	{ s_2_d1 sc_out sc_lv 64 signal 2 } 
	{ s_2_q1 sc_in sc_lv 64 signal 2 } 
	{ s_3_address0 sc_out sc_lv 3 signal 3 } 
	{ s_3_ce0 sc_out sc_logic 1 signal 3 } 
	{ s_3_we0 sc_out sc_logic 1 signal 3 } 
	{ s_3_d0 sc_out sc_lv 64 signal 3 } 
	{ s_3_q0 sc_in sc_lv 64 signal 3 } 
	{ s_3_address1 sc_out sc_lv 3 signal 3 } 
	{ s_3_ce1 sc_out sc_logic 1 signal 3 } 
	{ s_3_we1 sc_out sc_logic 1 signal 3 } 
	{ s_3_d1 sc_out sc_lv 64 signal 3 } 
	{ s_3_q1 sc_in sc_lv 64 signal 3 } 
	{ s_4_address0 sc_out sc_lv 3 signal 4 } 
	{ s_4_ce0 sc_out sc_logic 1 signal 4 } 
	{ s_4_we0 sc_out sc_logic 1 signal 4 } 
	{ s_4_d0 sc_out sc_lv 64 signal 4 } 
	{ s_4_q0 sc_in sc_lv 64 signal 4 } 
	{ s_4_address1 sc_out sc_lv 3 signal 4 } 
	{ s_4_ce1 sc_out sc_logic 1 signal 4 } 
	{ s_4_we1 sc_out sc_logic 1 signal 4 } 
	{ s_4_d1 sc_out sc_lv 64 signal 4 } 
	{ s_4_q1 sc_in sc_lv 64 signal 4 } 
	{ in_r_address0 sc_out sc_lv 11 signal 5 } 
	{ in_r_ce0 sc_out sc_logic 1 signal 5 } 
	{ in_r_q0 sc_in sc_lv 8 signal 5 } 
	{ in_r_address1 sc_out sc_lv 11 signal 5 } 
	{ in_r_ce1 sc_out sc_logic 1 signal 5 } 
	{ in_r_q1 sc_in sc_lv 8 signal 5 } 
	{ inlen sc_in sc_lv 64 signal 6 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "s_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "s_0", "role": "address0" }} , 
 	{ "name": "s_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_0", "role": "ce0" }} , 
 	{ "name": "s_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_0", "role": "we0" }} , 
 	{ "name": "s_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "s_0", "role": "d0" }} , 
 	{ "name": "s_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "s_0", "role": "q0" }} , 
 	{ "name": "s_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "s_0", "role": "address1" }} , 
 	{ "name": "s_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_0", "role": "ce1" }} , 
 	{ "name": "s_0_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_0", "role": "we1" }} , 
 	{ "name": "s_0_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "s_0", "role": "d1" }} , 
 	{ "name": "s_0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "s_0", "role": "q1" }} , 
 	{ "name": "s_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "s_1", "role": "address0" }} , 
 	{ "name": "s_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_1", "role": "ce0" }} , 
 	{ "name": "s_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_1", "role": "we0" }} , 
 	{ "name": "s_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "s_1", "role": "d0" }} , 
 	{ "name": "s_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "s_1", "role": "q0" }} , 
 	{ "name": "s_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "s_1", "role": "address1" }} , 
 	{ "name": "s_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_1", "role": "ce1" }} , 
 	{ "name": "s_1_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_1", "role": "we1" }} , 
 	{ "name": "s_1_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "s_1", "role": "d1" }} , 
 	{ "name": "s_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "s_1", "role": "q1" }} , 
 	{ "name": "s_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "s_2", "role": "address0" }} , 
 	{ "name": "s_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_2", "role": "ce0" }} , 
 	{ "name": "s_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_2", "role": "we0" }} , 
 	{ "name": "s_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "s_2", "role": "d0" }} , 
 	{ "name": "s_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "s_2", "role": "q0" }} , 
 	{ "name": "s_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "s_2", "role": "address1" }} , 
 	{ "name": "s_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_2", "role": "ce1" }} , 
 	{ "name": "s_2_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_2", "role": "we1" }} , 
 	{ "name": "s_2_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "s_2", "role": "d1" }} , 
 	{ "name": "s_2_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "s_2", "role": "q1" }} , 
 	{ "name": "s_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "s_3", "role": "address0" }} , 
 	{ "name": "s_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_3", "role": "ce0" }} , 
 	{ "name": "s_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_3", "role": "we0" }} , 
 	{ "name": "s_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "s_3", "role": "d0" }} , 
 	{ "name": "s_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "s_3", "role": "q0" }} , 
 	{ "name": "s_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "s_3", "role": "address1" }} , 
 	{ "name": "s_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_3", "role": "ce1" }} , 
 	{ "name": "s_3_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_3", "role": "we1" }} , 
 	{ "name": "s_3_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "s_3", "role": "d1" }} , 
 	{ "name": "s_3_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "s_3", "role": "q1" }} , 
 	{ "name": "s_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "s_4", "role": "address0" }} , 
 	{ "name": "s_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_4", "role": "ce0" }} , 
 	{ "name": "s_4_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_4", "role": "we0" }} , 
 	{ "name": "s_4_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "s_4", "role": "d0" }} , 
 	{ "name": "s_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "s_4", "role": "q0" }} , 
 	{ "name": "s_4_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "s_4", "role": "address1" }} , 
 	{ "name": "s_4_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_4", "role": "ce1" }} , 
 	{ "name": "s_4_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_4", "role": "we1" }} , 
 	{ "name": "s_4_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "s_4", "role": "d1" }} , 
 	{ "name": "s_4_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "s_4", "role": "q1" }} , 
 	{ "name": "in_r_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "in_r", "role": "address0" }} , 
 	{ "name": "in_r_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_r", "role": "ce0" }} , 
 	{ "name": "in_r_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "in_r", "role": "q0" }} , 
 	{ "name": "in_r_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "in_r", "role": "address1" }} , 
 	{ "name": "in_r_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_r", "role": "ce1" }} , 
 	{ "name": "in_r_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "in_r", "role": "q1" }} , 
 	{ "name": "inlen", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "inlen", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "3", "8", "11", "16", "17", "18", "19"],
		"CDFG" : "keccak_absorb_once_hls",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "s_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_keccak_absorb_once_hls_Pipeline_init_state_fu_184", "Port" : "s_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "3", "SubInstance" : "grp_keccak_absorb_once_hls_Pipeline_absorb_remaining_fu_198", "Port" : "s_0", "Inst_start_state" : "71", "Inst_end_state" : "76"},
					{"ID" : "8", "SubInstance" : "grp_keccak_absorb_once_hls_Pipeline_absorb_word_loop_fu_216", "Port" : "s_0", "Inst_start_state" : "72", "Inst_end_state" : "73"},
					{"ID" : "11", "SubInstance" : "grp_KeccakF1600_StatePermute_HLS_fu_233", "Port" : "state_0", "Inst_start_state" : "74", "Inst_end_state" : "75"}]},
			{"Name" : "s_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_keccak_absorb_once_hls_Pipeline_init_state_fu_184", "Port" : "s_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "3", "SubInstance" : "grp_keccak_absorb_once_hls_Pipeline_absorb_remaining_fu_198", "Port" : "s_1", "Inst_start_state" : "71", "Inst_end_state" : "76"},
					{"ID" : "8", "SubInstance" : "grp_keccak_absorb_once_hls_Pipeline_absorb_word_loop_fu_216", "Port" : "s_1", "Inst_start_state" : "72", "Inst_end_state" : "73"},
					{"ID" : "11", "SubInstance" : "grp_KeccakF1600_StatePermute_HLS_fu_233", "Port" : "state_1", "Inst_start_state" : "74", "Inst_end_state" : "75"}]},
			{"Name" : "s_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_keccak_absorb_once_hls_Pipeline_init_state_fu_184", "Port" : "s_2", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "3", "SubInstance" : "grp_keccak_absorb_once_hls_Pipeline_absorb_remaining_fu_198", "Port" : "s_2", "Inst_start_state" : "71", "Inst_end_state" : "76"},
					{"ID" : "8", "SubInstance" : "grp_keccak_absorb_once_hls_Pipeline_absorb_word_loop_fu_216", "Port" : "s_2", "Inst_start_state" : "72", "Inst_end_state" : "73"},
					{"ID" : "11", "SubInstance" : "grp_KeccakF1600_StatePermute_HLS_fu_233", "Port" : "state_2", "Inst_start_state" : "74", "Inst_end_state" : "75"}]},
			{"Name" : "s_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_keccak_absorb_once_hls_Pipeline_init_state_fu_184", "Port" : "s_3", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "3", "SubInstance" : "grp_keccak_absorb_once_hls_Pipeline_absorb_remaining_fu_198", "Port" : "s_3", "Inst_start_state" : "71", "Inst_end_state" : "76"},
					{"ID" : "8", "SubInstance" : "grp_keccak_absorb_once_hls_Pipeline_absorb_word_loop_fu_216", "Port" : "s_3", "Inst_start_state" : "72", "Inst_end_state" : "73"},
					{"ID" : "11", "SubInstance" : "grp_KeccakF1600_StatePermute_HLS_fu_233", "Port" : "state_3", "Inst_start_state" : "74", "Inst_end_state" : "75"}]},
			{"Name" : "s_4", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_keccak_absorb_once_hls_Pipeline_init_state_fu_184", "Port" : "s_4", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "3", "SubInstance" : "grp_keccak_absorb_once_hls_Pipeline_absorb_remaining_fu_198", "Port" : "s_4", "Inst_start_state" : "71", "Inst_end_state" : "76"},
					{"ID" : "8", "SubInstance" : "grp_keccak_absorb_once_hls_Pipeline_absorb_word_loop_fu_216", "Port" : "s_4", "Inst_start_state" : "72", "Inst_end_state" : "73"},
					{"ID" : "11", "SubInstance" : "grp_KeccakF1600_StatePermute_HLS_fu_233", "Port" : "state_4", "Inst_start_state" : "74", "Inst_end_state" : "75"}]},
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_keccak_absorb_once_hls_Pipeline_absorb_remaining_fu_198", "Port" : "in_r", "Inst_start_state" : "71", "Inst_end_state" : "76"},
					{"ID" : "8", "SubInstance" : "grp_keccak_absorb_once_hls_Pipeline_absorb_word_loop_fu_216", "Port" : "in_r", "Inst_start_state" : "72", "Inst_end_state" : "73"}]},
			{"Name" : "inlen", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "absorb_blocks", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "142", "FirstState" : "ap_ST_fsm_state71", "LastState" : ["ap_ST_fsm_state75"], "QuitState" : ["ap_ST_fsm_state71"], "PreState" : ["ap_ST_fsm_state70"], "PostState" : ["ap_ST_fsm_state76"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_keccak_absorb_once_hls_Pipeline_init_state_fu_184", "Parent" : "0", "Child" : ["2"],
		"CDFG" : "keccak_absorb_once_hls_Pipeline_init_state",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "27", "EstimateLatencyMax" : "27",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "s_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "s_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "s_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "s_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "s_0", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "init_state", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_keccak_absorb_once_hls_Pipeline_init_state_fu_184.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_keccak_absorb_once_hls_Pipeline_absorb_remaining_fu_198", "Parent" : "0", "Child" : ["4", "5", "6", "7"],
		"CDFG" : "keccak_absorb_once_hls_Pipeline_absorb_remaining",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "sub_ln262", "Type" : "None", "Direction" : "I"},
			{"Name" : "pos_0_lcssa_sel", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "s_0", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "s_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "s_2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "s_3", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "s_4", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "absorb_remaining", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter17", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter17", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_keccak_absorb_once_hls_Pipeline_absorb_remaining_fu_198.mul_29ns_31ns_59_2_1_U74", "Parent" : "3"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_keccak_absorb_once_hls_Pipeline_absorb_remaining_fu_198.urem_29ns_4ns_3_33_1_U75", "Parent" : "3"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_keccak_absorb_once_hls_Pipeline_absorb_remaining_fu_198.sparsemux_11_3_64_1_1_U76", "Parent" : "3"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_keccak_absorb_once_hls_Pipeline_absorb_remaining_fu_198.flow_control_loop_pipe_sequential_init_U", "Parent" : "3"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_keccak_absorb_once_hls_Pipeline_absorb_word_loop_fu_216", "Parent" : "0", "Child" : ["9", "10"],
		"CDFG" : "keccak_absorb_once_hls_Pipeline_absorb_word_loop",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "71", "EstimateLatencyMax" : "71",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "s_4", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "s_3", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "s_2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "s_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "s_0", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "absorb_word_loop", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_keccak_absorb_once_hls_Pipeline_absorb_word_loop_fu_216.sparsemux_11_3_64_1_1_U6", "Parent" : "8"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_keccak_absorb_once_hls_Pipeline_absorb_word_loop_fu_216.flow_control_loop_pipe_sequential_init_U", "Parent" : "8"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_KeccakF1600_StatePermute_HLS_fu_233", "Parent" : "0", "Child" : ["12"],
		"CDFG" : "KeccakF1600_StatePermute_HLS",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "34", "EstimateLatencyMax" : "34",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "state_0", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "state_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "state_2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "state_3", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "state_4", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_KeccakF1600_StatePermute_HLS_fu_233.grp_KeccakF1600_StatePermute_HLS_Pipeline_state_permute_fu_392", "Parent" : "11", "Child" : ["13", "14", "15"],
		"CDFG" : "KeccakF1600_StatePermute_HLS_Pipeline_state_permute",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "27", "EstimateLatencyMax" : "27",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "Aba", "Type" : "None", "Direction" : "I"},
			{"Name" : "Abe", "Type" : "None", "Direction" : "I"},
			{"Name" : "Abi", "Type" : "None", "Direction" : "I"},
			{"Name" : "Abo", "Type" : "None", "Direction" : "I"},
			{"Name" : "Abu", "Type" : "None", "Direction" : "I"},
			{"Name" : "Aga", "Type" : "None", "Direction" : "I"},
			{"Name" : "Age", "Type" : "None", "Direction" : "I"},
			{"Name" : "Agi", "Type" : "None", "Direction" : "I"},
			{"Name" : "Ago", "Type" : "None", "Direction" : "I"},
			{"Name" : "Agu", "Type" : "None", "Direction" : "I"},
			{"Name" : "Aka", "Type" : "None", "Direction" : "I"},
			{"Name" : "Ake", "Type" : "None", "Direction" : "I"},
			{"Name" : "Aki", "Type" : "None", "Direction" : "I"},
			{"Name" : "Ako", "Type" : "None", "Direction" : "I"},
			{"Name" : "Aku", "Type" : "None", "Direction" : "I"},
			{"Name" : "Ama", "Type" : "None", "Direction" : "I"},
			{"Name" : "Ame", "Type" : "None", "Direction" : "I"},
			{"Name" : "Ami", "Type" : "None", "Direction" : "I"},
			{"Name" : "Amo", "Type" : "None", "Direction" : "I"},
			{"Name" : "Amu", "Type" : "None", "Direction" : "I"},
			{"Name" : "Asa", "Type" : "None", "Direction" : "I"},
			{"Name" : "Ase", "Type" : "None", "Direction" : "I"},
			{"Name" : "Asi", "Type" : "None", "Direction" : "I"},
			{"Name" : "Aso", "Type" : "None", "Direction" : "I"},
			{"Name" : "Asu", "Type" : "None", "Direction" : "I"},
			{"Name" : "Aba_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Abe_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Abi_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Abo_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Abu_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Aga_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Age_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Agi_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Ago_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Agu_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Aka_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Ake_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Aki_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Ako_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Aku_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Ama_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Ame_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Ami_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Amo_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Amu_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Asa_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Ase_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Asi_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Aso_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Asu_1_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "state_permute", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "13", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakF1600_StatePermute_HLS_fu_233.grp_KeccakF1600_StatePermute_HLS_Pipeline_state_permute_fu_392.sparsemux_25_5_64_1_1_U15", "Parent" : "12"},
	{"ID" : "14", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakF1600_StatePermute_HLS_fu_233.grp_KeccakF1600_StatePermute_HLS_Pipeline_state_permute_fu_392.sparsemux_25_5_64_1_1_U16", "Parent" : "12"},
	{"ID" : "15", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_KeccakF1600_StatePermute_HLS_fu_233.grp_KeccakF1600_StatePermute_HLS_Pipeline_state_permute_fu_392.flow_control_loop_pipe_sequential_init_U", "Parent" : "12"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_61ns_63ns_123_5_1_U87", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.urem_64ns_9ns_64_68_seq_1_U88", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.urem_61ns_4ns_3_65_seq_1_U89", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_11_3_64_1_1_U90", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	keccak_absorb_once_hls {
		s_0 {Type IO LastRead 133 FirstWrite 0}
		s_1 {Type IO LastRead 136 FirstWrite 0}
		s_2 {Type IO LastRead 133 FirstWrite 0}
		s_3 {Type IO LastRead 133 FirstWrite 0}
		s_4 {Type IO LastRead 133 FirstWrite 0}
		in_r {Type I LastRead 31 FirstWrite -1}
		inlen {Type I LastRead 0 FirstWrite -1}}
	keccak_absorb_once_hls_Pipeline_init_state {
		s_4 {Type O LastRead -1 FirstWrite 0}
		s_3 {Type O LastRead -1 FirstWrite 0}
		s_2 {Type O LastRead -1 FirstWrite 0}
		s_1 {Type O LastRead -1 FirstWrite 0}
		s_0 {Type O LastRead -1 FirstWrite 0}}
	keccak_absorb_once_hls_Pipeline_absorb_remaining {
		sub_ln262 {Type I LastRead 0 FirstWrite -1}
		pos_0_lcssa_sel {Type I LastRead 0 FirstWrite -1}
		in_r {Type I LastRead 31 FirstWrite -1}
		s_0 {Type IO LastRead 33 FirstWrite 34}
		s_1 {Type IO LastRead 33 FirstWrite 34}
		s_2 {Type IO LastRead 33 FirstWrite 34}
		s_3 {Type IO LastRead 33 FirstWrite 34}
		s_4 {Type IO LastRead 33 FirstWrite 34}}
	keccak_absorb_once_hls_Pipeline_absorb_word_loop {
		s_4 {Type IO LastRead 0 FirstWrite 4}
		s_3 {Type IO LastRead 0 FirstWrite 4}
		s_2 {Type IO LastRead 0 FirstWrite 4}
		s_1 {Type IO LastRead 0 FirstWrite 4}
		s_0 {Type IO LastRead 0 FirstWrite 4}
		empty {Type I LastRead 0 FirstWrite -1}
		in_r {Type I LastRead 4 FirstWrite -1}}
	KeccakF1600_StatePermute_HLS {
		state_0 {Type IO LastRead 3 FirstWrite 5}
		state_1 {Type IO LastRead 3 FirstWrite 5}
		state_2 {Type IO LastRead 3 FirstWrite 5}
		state_3 {Type IO LastRead 3 FirstWrite 5}
		state_4 {Type IO LastRead 3 FirstWrite 5}}
	KeccakF1600_StatePermute_HLS_Pipeline_state_permute {
		Aba {Type I LastRead 0 FirstWrite -1}
		Abe {Type I LastRead 0 FirstWrite -1}
		Abi {Type I LastRead 0 FirstWrite -1}
		Abo {Type I LastRead 0 FirstWrite -1}
		Abu {Type I LastRead 0 FirstWrite -1}
		Aga {Type I LastRead 0 FirstWrite -1}
		Age {Type I LastRead 0 FirstWrite -1}
		Agi {Type I LastRead 0 FirstWrite -1}
		Ago {Type I LastRead 0 FirstWrite -1}
		Agu {Type I LastRead 0 FirstWrite -1}
		Aka {Type I LastRead 0 FirstWrite -1}
		Ake {Type I LastRead 0 FirstWrite -1}
		Aki {Type I LastRead 0 FirstWrite -1}
		Ako {Type I LastRead 0 FirstWrite -1}
		Aku {Type I LastRead 0 FirstWrite -1}
		Ama {Type I LastRead 0 FirstWrite -1}
		Ame {Type I LastRead 0 FirstWrite -1}
		Ami {Type I LastRead 0 FirstWrite -1}
		Amo {Type I LastRead 0 FirstWrite -1}
		Amu {Type I LastRead 0 FirstWrite -1}
		Asa {Type I LastRead 0 FirstWrite -1}
		Ase {Type I LastRead 0 FirstWrite -1}
		Asi {Type I LastRead 0 FirstWrite -1}
		Aso {Type I LastRead 0 FirstWrite -1}
		Asu {Type I LastRead 0 FirstWrite -1}
		Aba_1_out {Type O LastRead -1 FirstWrite 1}
		Abe_1_out {Type O LastRead -1 FirstWrite 1}
		Abi_1_out {Type O LastRead -1 FirstWrite 1}
		Abo_1_out {Type O LastRead -1 FirstWrite 1}
		Abu_1_out {Type O LastRead -1 FirstWrite 1}
		Aga_1_out {Type O LastRead -1 FirstWrite 1}
		Age_1_out {Type O LastRead -1 FirstWrite 1}
		Agi_1_out {Type O LastRead -1 FirstWrite 1}
		Ago_1_out {Type O LastRead -1 FirstWrite 1}
		Agu_1_out {Type O LastRead -1 FirstWrite 1}
		Aka_1_out {Type O LastRead -1 FirstWrite 1}
		Ake_1_out {Type O LastRead -1 FirstWrite 1}
		Aki_1_out {Type O LastRead -1 FirstWrite 1}
		Ako_1_out {Type O LastRead -1 FirstWrite 1}
		Aku_1_out {Type O LastRead -1 FirstWrite 1}
		Ama_1_out {Type O LastRead -1 FirstWrite 1}
		Ame_1_out {Type O LastRead -1 FirstWrite 1}
		Ami_1_out {Type O LastRead -1 FirstWrite 1}
		Amo_1_out {Type O LastRead -1 FirstWrite 1}
		Amu_1_out {Type O LastRead -1 FirstWrite 1}
		Asa_1_out {Type O LastRead -1 FirstWrite 1}
		Ase_1_out {Type O LastRead -1 FirstWrite 1}
		Asi_1_out {Type O LastRead -1 FirstWrite 1}
		Aso_1_out {Type O LastRead -1 FirstWrite 1}
		Asu_1_out {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	s_0 { ap_memory {  { s_0_address0 mem_address 1 3 }  { s_0_ce0 mem_ce 1 1 }  { s_0_we0 mem_we 1 1 }  { s_0_d0 mem_din 1 64 }  { s_0_q0 mem_dout 0 64 }  { s_0_address1 MemPortADDR2 1 3 }  { s_0_ce1 MemPortCE2 1 1 }  { s_0_we1 MemPortWE2 1 1 }  { s_0_d1 MemPortDIN2 1 64 }  { s_0_q1 MemPortDOUT2 0 64 } } }
	s_1 { ap_memory {  { s_1_address0 mem_address 1 3 }  { s_1_ce0 mem_ce 1 1 }  { s_1_we0 mem_we 1 1 }  { s_1_d0 mem_din 1 64 }  { s_1_q0 mem_dout 0 64 }  { s_1_address1 MemPortADDR2 1 3 }  { s_1_ce1 MemPortCE2 1 1 }  { s_1_we1 MemPortWE2 1 1 }  { s_1_d1 MemPortDIN2 1 64 }  { s_1_q1 MemPortDOUT2 0 64 } } }
	s_2 { ap_memory {  { s_2_address0 mem_address 1 3 }  { s_2_ce0 mem_ce 1 1 }  { s_2_we0 mem_we 1 1 }  { s_2_d0 mem_din 1 64 }  { s_2_q0 mem_dout 0 64 }  { s_2_address1 MemPortADDR2 1 3 }  { s_2_ce1 MemPortCE2 1 1 }  { s_2_we1 MemPortWE2 1 1 }  { s_2_d1 MemPortDIN2 1 64 }  { s_2_q1 MemPortDOUT2 0 64 } } }
	s_3 { ap_memory {  { s_3_address0 mem_address 1 3 }  { s_3_ce0 mem_ce 1 1 }  { s_3_we0 mem_we 1 1 }  { s_3_d0 mem_din 1 64 }  { s_3_q0 mem_dout 0 64 }  { s_3_address1 MemPortADDR2 1 3 }  { s_3_ce1 MemPortCE2 1 1 }  { s_3_we1 MemPortWE2 1 1 }  { s_3_d1 MemPortDIN2 1 64 }  { s_3_q1 MemPortDOUT2 0 64 } } }
	s_4 { ap_memory {  { s_4_address0 mem_address 1 3 }  { s_4_ce0 mem_ce 1 1 }  { s_4_we0 mem_we 1 1 }  { s_4_d0 mem_din 1 64 }  { s_4_q0 mem_dout 0 64 }  { s_4_address1 MemPortADDR2 1 3 }  { s_4_ce1 MemPortCE2 1 1 }  { s_4_we1 MemPortWE2 1 1 }  { s_4_d1 MemPortDIN2 1 64 }  { s_4_q1 MemPortDOUT2 0 64 } } }
	in_r { ap_memory {  { in_r_address0 mem_address 1 11 }  { in_r_ce0 mem_ce 1 1 }  { in_r_q0 mem_dout 0 8 }  { in_r_address1 MemPortADDR2 1 11 }  { in_r_ce1 MemPortCE2 1 1 }  { in_r_q1 MemPortDOUT2 0 8 } } }
	inlen { ap_none {  { inlen in_data 0 64 } } }
}
