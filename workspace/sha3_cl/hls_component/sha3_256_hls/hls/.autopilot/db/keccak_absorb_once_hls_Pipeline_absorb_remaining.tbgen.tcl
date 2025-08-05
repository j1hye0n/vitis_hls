set moduleName keccak_absorb_once_hls_Pipeline_absorb_remaining
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
set cdfgNum 10
set C_modelName {keccak_absorb_once_hls_Pipeline_absorb_remaining}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict in_r { MEM_WIDTH 8 MEM_SIZE 2048 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict s_0 { MEM_WIDTH 64 MEM_SIZE 40 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict s_1 { MEM_WIDTH 64 MEM_SIZE 40 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict s_2 { MEM_WIDTH 64 MEM_SIZE 40 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict s_3 { MEM_WIDTH 64 MEM_SIZE 40 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict s_4 { MEM_WIDTH 64 MEM_SIZE 40 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
set C_modelArgList {
	{ sub_ln262 int 64 regular  }
	{ pos_0_lcssa_sel int 11 regular  }
	{ in_r int 8 regular {array 2048 { 1 3 } 1 1 }  }
	{ s_0 int 64 regular {array 5 { 2 3 } 1 1 }  }
	{ s_1 int 64 regular {array 5 { 2 3 } 1 1 }  }
	{ s_2 int 64 regular {array 5 { 2 3 } 1 1 }  }
	{ s_3 int 64 regular {array 5 { 2 3 } 1 1 }  }
	{ s_4 int 64 regular {array 5 { 2 3 } 1 1 }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "sub_ln262", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "pos_0_lcssa_sel", "interface" : "wire", "bitwidth" : 11, "direction" : "READONLY"} , 
 	{ "Name" : "in_r", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "s_0", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE"} , 
 	{ "Name" : "s_1", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE"} , 
 	{ "Name" : "s_2", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE"} , 
 	{ "Name" : "s_3", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE"} , 
 	{ "Name" : "s_4", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE"} ]}
# RTL Port declarations: 
set portNum 36
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ sub_ln262 sc_in sc_lv 64 signal 0 } 
	{ pos_0_lcssa_sel sc_in sc_lv 11 signal 1 } 
	{ in_r_address0 sc_out sc_lv 11 signal 2 } 
	{ in_r_ce0 sc_out sc_logic 1 signal 2 } 
	{ in_r_q0 sc_in sc_lv 8 signal 2 } 
	{ s_0_address0 sc_out sc_lv 3 signal 3 } 
	{ s_0_ce0 sc_out sc_logic 1 signal 3 } 
	{ s_0_we0 sc_out sc_logic 1 signal 3 } 
	{ s_0_d0 sc_out sc_lv 64 signal 3 } 
	{ s_0_q0 sc_in sc_lv 64 signal 3 } 
	{ s_1_address0 sc_out sc_lv 3 signal 4 } 
	{ s_1_ce0 sc_out sc_logic 1 signal 4 } 
	{ s_1_we0 sc_out sc_logic 1 signal 4 } 
	{ s_1_d0 sc_out sc_lv 64 signal 4 } 
	{ s_1_q0 sc_in sc_lv 64 signal 4 } 
	{ s_2_address0 sc_out sc_lv 3 signal 5 } 
	{ s_2_ce0 sc_out sc_logic 1 signal 5 } 
	{ s_2_we0 sc_out sc_logic 1 signal 5 } 
	{ s_2_d0 sc_out sc_lv 64 signal 5 } 
	{ s_2_q0 sc_in sc_lv 64 signal 5 } 
	{ s_3_address0 sc_out sc_lv 3 signal 6 } 
	{ s_3_ce0 sc_out sc_logic 1 signal 6 } 
	{ s_3_we0 sc_out sc_logic 1 signal 6 } 
	{ s_3_d0 sc_out sc_lv 64 signal 6 } 
	{ s_3_q0 sc_in sc_lv 64 signal 6 } 
	{ s_4_address0 sc_out sc_lv 3 signal 7 } 
	{ s_4_ce0 sc_out sc_logic 1 signal 7 } 
	{ s_4_we0 sc_out sc_logic 1 signal 7 } 
	{ s_4_d0 sc_out sc_lv 64 signal 7 } 
	{ s_4_q0 sc_in sc_lv 64 signal 7 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "sub_ln262", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "sub_ln262", "role": "default" }} , 
 	{ "name": "pos_0_lcssa_sel", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "pos_0_lcssa_sel", "role": "default" }} , 
 	{ "name": "in_r_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "in_r", "role": "address0" }} , 
 	{ "name": "in_r_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_r", "role": "ce0" }} , 
 	{ "name": "in_r_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "in_r", "role": "q0" }} , 
 	{ "name": "s_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "s_0", "role": "address0" }} , 
 	{ "name": "s_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_0", "role": "ce0" }} , 
 	{ "name": "s_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_0", "role": "we0" }} , 
 	{ "name": "s_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "s_0", "role": "d0" }} , 
 	{ "name": "s_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "s_0", "role": "q0" }} , 
 	{ "name": "s_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "s_1", "role": "address0" }} , 
 	{ "name": "s_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_1", "role": "ce0" }} , 
 	{ "name": "s_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_1", "role": "we0" }} , 
 	{ "name": "s_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "s_1", "role": "d0" }} , 
 	{ "name": "s_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "s_1", "role": "q0" }} , 
 	{ "name": "s_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "s_2", "role": "address0" }} , 
 	{ "name": "s_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_2", "role": "ce0" }} , 
 	{ "name": "s_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_2", "role": "we0" }} , 
 	{ "name": "s_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "s_2", "role": "d0" }} , 
 	{ "name": "s_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "s_2", "role": "q0" }} , 
 	{ "name": "s_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "s_3", "role": "address0" }} , 
 	{ "name": "s_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_3", "role": "ce0" }} , 
 	{ "name": "s_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_3", "role": "we0" }} , 
 	{ "name": "s_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "s_3", "role": "d0" }} , 
 	{ "name": "s_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "s_3", "role": "q0" }} , 
 	{ "name": "s_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "s_4", "role": "address0" }} , 
 	{ "name": "s_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_4", "role": "ce0" }} , 
 	{ "name": "s_4_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_4", "role": "we0" }} , 
 	{ "name": "s_4_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "s_4", "role": "d0" }} , 
 	{ "name": "s_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "s_4", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_29ns_31ns_59_2_1_U74", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.urem_29ns_4ns_3_33_1_U75", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_11_3_64_1_1_U76", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	keccak_absorb_once_hls_Pipeline_absorb_remaining {
		sub_ln262 {Type I LastRead 0 FirstWrite -1}
		pos_0_lcssa_sel {Type I LastRead 0 FirstWrite -1}
		in_r {Type I LastRead 31 FirstWrite -1}
		s_0 {Type IO LastRead 33 FirstWrite 34}
		s_1 {Type IO LastRead 33 FirstWrite 34}
		s_2 {Type IO LastRead 33 FirstWrite 34}
		s_3 {Type IO LastRead 33 FirstWrite 34}
		s_4 {Type IO LastRead 33 FirstWrite 34}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	sub_ln262 { ap_none {  { sub_ln262 in_data 0 64 } } }
	pos_0_lcssa_sel { ap_none {  { pos_0_lcssa_sel in_data 0 11 } } }
	in_r { ap_memory {  { in_r_address0 mem_address 1 11 }  { in_r_ce0 mem_ce 1 1 }  { in_r_q0 mem_dout 0 8 } } }
	s_0 { ap_memory {  { s_0_address0 mem_address 1 3 }  { s_0_ce0 mem_ce 1 1 }  { s_0_we0 mem_we 1 1 }  { s_0_d0 mem_din 1 64 }  { s_0_q0 mem_dout 0 64 } } }
	s_1 { ap_memory {  { s_1_address0 mem_address 1 3 }  { s_1_ce0 mem_ce 1 1 }  { s_1_we0 mem_we 1 1 }  { s_1_d0 mem_din 1 64 }  { s_1_q0 mem_dout 0 64 } } }
	s_2 { ap_memory {  { s_2_address0 mem_address 1 3 }  { s_2_ce0 mem_ce 1 1 }  { s_2_we0 mem_we 1 1 }  { s_2_d0 mem_din 1 64 }  { s_2_q0 mem_dout 0 64 } } }
	s_3 { ap_memory {  { s_3_address0 mem_address 1 3 }  { s_3_ce0 mem_ce 1 1 }  { s_3_we0 mem_we 1 1 }  { s_3_d0 mem_din 1 64 }  { s_3_q0 mem_dout 0 64 } } }
	s_4 { ap_memory {  { s_4_address0 mem_address 1 3 }  { s_4_ce0 mem_ce 1 1 }  { s_4_we0 mem_we 1 1 }  { s_4_d0 mem_din 1 64 }  { s_4_q0 mem_dout 0 64 } } }
}
