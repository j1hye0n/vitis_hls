set moduleName dct
set isTopModule 1
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
set cdfgNum 11
set C_modelName {dct}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict input_r { MEM_WIDTH 16 MEM_SIZE 128 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict output_r { MEM_WIDTH 16 MEM_SIZE 128 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ input_r int 16 regular {axi_slave 0}  }
	{ output_r int 16 regular {axi_slave 1}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "input_r", "interface" : "axi_slave", "bundle":"control","type":"ap_memory","bitwidth" : 16, "direction" : "READONLY", "offset" : {"in":128}, "offset_end" : {"in":255}} , 
 	{ "Name" : "output_r", "interface" : "axi_slave", "bundle":"control","type":"ap_memory","bitwidth" : 16, "direction" : "WRITEONLY", "offset" : {"out":256}, "offset_end" : {"out":383}} ]}
# RTL Port declarations: 
set portNum 20
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ s_axi_control_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_AWADDR sc_in sc_lv 9 signal -1 } 
	{ s_axi_control_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_control_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_control_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_ARADDR sc_in sc_lv 9 signal -1 } 
	{ s_axi_control_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_control_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_control_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_BRESP sc_out sc_lv 2 signal -1 } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_control_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "control", "role": "AWADDR" },"address":[{"name":"dct","role":"start","value":"0","valid_bit":"0"},{"name":"dct","role":"continue","value":"0","valid_bit":"4"},{"name":"dct","role":"auto_start","value":"0","valid_bit":"7"},{"name":"input_r","role":"data","value":"128"}] },
	{ "name": "s_axi_control_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWVALID" } },
	{ "name": "s_axi_control_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWREADY" } },
	{ "name": "s_axi_control_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WVALID" } },
	{ "name": "s_axi_control_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WREADY" } },
	{ "name": "s_axi_control_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "WDATA" } },
	{ "name": "s_axi_control_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control", "role": "WSTRB" } },
	{ "name": "s_axi_control_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "control", "role": "ARADDR" },"address":[{"name":"dct","role":"start","value":"0","valid_bit":"0"},{"name":"dct","role":"done","value":"0","valid_bit":"1"},{"name":"dct","role":"idle","value":"0","valid_bit":"2"},{"name":"dct","role":"ready","value":"0","valid_bit":"3"},{"name":"dct","role":"auto_start","value":"0","valid_bit":"7"},{"name":"output_r","role":"data","value":"256"}] },
	{ "name": "s_axi_control_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARVALID" } },
	{ "name": "s_axi_control_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARREADY" } },
	{ "name": "s_axi_control_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RVALID" } },
	{ "name": "s_axi_control_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RREADY" } },
	{ "name": "s_axi_control_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "RDATA" } },
	{ "name": "s_axi_control_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "RRESP" } },
	{ "name": "s_axi_control_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BVALID" } },
	{ "name": "s_axi_control_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BREADY" } },
	{ "name": "s_axi_control_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "interrupt" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "15", "46", "48", "79", "81", "83"],
		"CDFG" : "dct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "372", "EstimateLatencyMax" : "372",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "input_r", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "grp_dct_Pipeline_RD_Loop_Row_RD_Loop_Col_fu_98", "Port" : "input_r", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "output_r", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "81", "SubInstance" : "grp_dct_Pipeline_WR_Loop_Row_WR_Loop_Col_fu_151", "Port" : "output_r", "Inst_start_state" : "11", "Inst_end_state" : "12"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.row_outbuf_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.col_outbuf_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.col_inbuf_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_2d_in_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_2d_in_1_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_2d_in_2_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_2d_in_3_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_2d_in_4_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_2d_in_5_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_2d_in_6_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_2d_in_7_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_2d_out_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dct_Pipeline_RD_Loop_Row_RD_Loop_Col_fu_98", "Parent" : "0", "Child" : ["14"],
		"CDFG" : "dct_Pipeline_RD_Loop_Row_RD_Loop_Col",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "68", "EstimateLatencyMax" : "68",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "buf_2d_in", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buf_2d_in_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buf_2d_in_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buf_2d_in_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buf_2d_in_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buf_2d_in_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buf_2d_in_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buf_2d_in_7", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "input_r", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "RD_Loop_Row_RD_Loop_Col", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_Pipeline_RD_Loop_Row_RD_Loop_Col_fu_98.flow_control_loop_pipe_sequential_init_U", "Parent" : "13"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dct_Pipeline_Row_DCT_Loop_fu_120", "Parent" : "0", "Child" : ["16", "45"],
		"CDFG" : "dct_Pipeline_Row_DCT_Loop",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "41", "EstimateLatencyMax" : "41",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "buf_2d_in", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buf_2d_in_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buf_2d_in_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buf_2d_in_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buf_2d_in_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buf_2d_in_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buf_2d_in_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buf_2d_in_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "row_outbuf", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "grp_dct_1d_1_fu_154", "Port" : "dst", "Inst_start_state" : "3", "Inst_end_state" : "12"}]}],
		"Loop" : [
			{"Name" : "Row_DCT_Loop", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage3", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage3_subdone", "QuitState" : "ap_ST_fsm_pp0_stage3", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage3_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_Pipeline_Row_DCT_Loop_fu_120.grp_dct_1d_1_fu_154", "Parent" : "15", "Child" : ["17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44"],
		"CDFG" : "dct_1d_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "4",
		"VariableLatency" : "0", "ExactLatency" : "9", "EstimateLatencyMin" : "9", "EstimateLatencyMax" : "9",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "src_0_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "src_1_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "src_2_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "src_3_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "src_4_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "src_5_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "src_6_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "src_7_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "dst", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dst_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "17", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dct_Pipeline_Row_DCT_Loop_fu_120.grp_dct_1d_1_fu_154.mul_16s_15ns_29_1_1_U10", "Parent" : "16"},
	{"ID" : "18", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dct_Pipeline_Row_DCT_Loop_fu_120.grp_dct_1d_1_fu_154.mul_16s_15s_29_1_1_U11", "Parent" : "16"},
	{"ID" : "19", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dct_Pipeline_Row_DCT_Loop_fu_120.grp_dct_1d_1_fu_154.mul_16s_15ns_29_1_1_U12", "Parent" : "16"},
	{"ID" : "20", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dct_Pipeline_Row_DCT_Loop_fu_120.grp_dct_1d_1_fu_154.mul_16s_15s_29_1_1_U13", "Parent" : "16"},
	{"ID" : "21", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dct_Pipeline_Row_DCT_Loop_fu_120.grp_dct_1d_1_fu_154.mul_16s_15s_29_1_1_U14", "Parent" : "16"},
	{"ID" : "22", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dct_Pipeline_Row_DCT_Loop_fu_120.grp_dct_1d_1_fu_154.mul_16s_15s_29_1_1_U15", "Parent" : "16"},
	{"ID" : "23", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dct_Pipeline_Row_DCT_Loop_fu_120.grp_dct_1d_1_fu_154.mul_16s_15ns_29_1_1_U16", "Parent" : "16"},
	{"ID" : "24", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dct_Pipeline_Row_DCT_Loop_fu_120.grp_dct_1d_1_fu_154.mul_16s_15s_29_1_1_U17", "Parent" : "16"},
	{"ID" : "25", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dct_Pipeline_Row_DCT_Loop_fu_120.grp_dct_1d_1_fu_154.mac_muladd_16s_15s_13ns_29_4_1_U18", "Parent" : "16"},
	{"ID" : "26", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dct_Pipeline_Row_DCT_Loop_fu_120.grp_dct_1d_1_fu_154.ama_submuladd_16s_16s_12ns_29s_29_4_1_U19", "Parent" : "16"},
	{"ID" : "27", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dct_Pipeline_Row_DCT_Loop_fu_120.grp_dct_1d_1_fu_154.mac_muladd_16s_14ns_29s_29_4_1_U20", "Parent" : "16"},
	{"ID" : "28", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dct_Pipeline_Row_DCT_Loop_fu_120.grp_dct_1d_1_fu_154.mac_muladd_16s_15s_29s_29_4_1_U21", "Parent" : "16"},
	{"ID" : "29", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dct_Pipeline_Row_DCT_Loop_fu_120.grp_dct_1d_1_fu_154.mac_muladd_16s_14ns_29s_29_4_1_U22", "Parent" : "16"},
	{"ID" : "30", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dct_Pipeline_Row_DCT_Loop_fu_120.grp_dct_1d_1_fu_154.mac_muladd_17s_13ns_29s_29_4_1_U23", "Parent" : "16"},
	{"ID" : "31", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dct_Pipeline_Row_DCT_Loop_fu_120.grp_dct_1d_1_fu_154.mac_muladd_18s_14ns_13ns_29_4_1_U24", "Parent" : "16"},
	{"ID" : "32", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dct_Pipeline_Row_DCT_Loop_fu_120.grp_dct_1d_1_fu_154.ama_submuladd_16s_16s_13ns_29s_29_4_1_U25", "Parent" : "16"},
	{"ID" : "33", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dct_Pipeline_Row_DCT_Loop_fu_120.grp_dct_1d_1_fu_154.mac_muladd_17s_12ns_13ns_29_4_1_U26", "Parent" : "16"},
	{"ID" : "34", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dct_Pipeline_Row_DCT_Loop_fu_120.grp_dct_1d_1_fu_154.mac_muladd_17s_13ns_13ns_29_4_1_U27", "Parent" : "16"},
	{"ID" : "35", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dct_Pipeline_Row_DCT_Loop_fu_120.grp_dct_1d_1_fu_154.mac_muladd_16s_14ns_29ns_29_4_1_U28", "Parent" : "16"},
	{"ID" : "36", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dct_Pipeline_Row_DCT_Loop_fu_120.grp_dct_1d_1_fu_154.mac_muladd_17s_12ns_29s_29_4_1_U29", "Parent" : "16"},
	{"ID" : "37", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dct_Pipeline_Row_DCT_Loop_fu_120.grp_dct_1d_1_fu_154.mac_muladd_18s_13ns_13ns_29_4_1_U30", "Parent" : "16"},
	{"ID" : "38", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dct_Pipeline_Row_DCT_Loop_fu_120.grp_dct_1d_1_fu_154.mac_muladd_17s_13ns_29s_29_4_1_U31", "Parent" : "16"},
	{"ID" : "39", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dct_Pipeline_Row_DCT_Loop_fu_120.grp_dct_1d_1_fu_154.mac_muladd_17s_12ns_13ns_29_4_1_U32", "Parent" : "16"},
	{"ID" : "40", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dct_Pipeline_Row_DCT_Loop_fu_120.grp_dct_1d_1_fu_154.ama_addmuladd_18s_16s_13ns_29ns_29_4_1_U33", "Parent" : "16"},
	{"ID" : "41", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dct_Pipeline_Row_DCT_Loop_fu_120.grp_dct_1d_1_fu_154.mac_muladd_16s_14ns_29ns_29_4_1_U34", "Parent" : "16"},
	{"ID" : "42", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dct_Pipeline_Row_DCT_Loop_fu_120.grp_dct_1d_1_fu_154.mac_muladd_16s_15s_29ns_29_4_1_U35", "Parent" : "16"},
	{"ID" : "43", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dct_Pipeline_Row_DCT_Loop_fu_120.grp_dct_1d_1_fu_154.ama_submuladd_18s_16s_14ns_29ns_29_4_1_U36", "Parent" : "16"},
	{"ID" : "44", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dct_Pipeline_Row_DCT_Loop_fu_120.grp_dct_1d_1_fu_154.mac_muladd_16s_14ns_29ns_29_4_1_U37", "Parent" : "16"},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_Pipeline_Row_DCT_Loop_fu_120.flow_control_loop_pipe_sequential_init_U", "Parent" : "15"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dct_Pipeline_Xpose_Row_Outer_Loop_Xpose_Row_Inner_Loop_fu_133", "Parent" : "0", "Child" : ["47"],
		"CDFG" : "dct_Pipeline_Xpose_Row_Outer_Loop_Xpose_Row_Inner_Loop",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "68", "EstimateLatencyMax" : "68",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "row_outbuf", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "col_inbuf", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "Xpose_Row_Outer_Loop_Xpose_Row_Inner_Loop", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "47", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_Pipeline_Xpose_Row_Outer_Loop_Xpose_Row_Inner_Loop_fu_133.flow_control_loop_pipe_sequential_init_U", "Parent" : "46"},
	{"ID" : "48", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dct_Pipeline_Col_DCT_Loop_fu_139", "Parent" : "0", "Child" : ["49", "78"],
		"CDFG" : "dct_Pipeline_Col_DCT_Loop",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "47", "EstimateLatencyMax" : "47",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "col_inbuf", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "49", "SubInstance" : "grp_dct_1d_fu_34", "Port" : "src", "Inst_start_state" : "2", "Inst_end_state" : "18"}]},
			{"Name" : "col_outbuf", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "49", "SubInstance" : "grp_dct_1d_fu_34", "Port" : "dst", "Inst_start_state" : "2", "Inst_end_state" : "18"}]}],
		"Loop" : [
			{"Name" : "Col_DCT_Loop", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage1", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage1_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "49", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_Pipeline_Col_DCT_Loop_fu_139.grp_dct_1d_fu_34", "Parent" : "48", "Child" : ["50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77"],
		"CDFG" : "dct_1d",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "4",
		"VariableLatency" : "0", "ExactLatency" : "16", "EstimateLatencyMin" : "16", "EstimateLatencyMax" : "16",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "src", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "src_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "dst", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "50", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dct_Pipeline_Col_DCT_Loop_fu_139.grp_dct_1d_fu_34.mul_16s_15ns_29_1_1_U76", "Parent" : "49"},
	{"ID" : "51", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dct_Pipeline_Col_DCT_Loop_fu_139.grp_dct_1d_fu_34.mul_16s_15s_29_1_1_U77", "Parent" : "49"},
	{"ID" : "52", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dct_Pipeline_Col_DCT_Loop_fu_139.grp_dct_1d_fu_34.mul_16s_15ns_29_1_1_U78", "Parent" : "49"},
	{"ID" : "53", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dct_Pipeline_Col_DCT_Loop_fu_139.grp_dct_1d_fu_34.mul_16s_15s_29_1_1_U79", "Parent" : "49"},
	{"ID" : "54", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dct_Pipeline_Col_DCT_Loop_fu_139.grp_dct_1d_fu_34.mul_17s_14ns_29_1_1_U80", "Parent" : "49"},
	{"ID" : "55", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dct_Pipeline_Col_DCT_Loop_fu_139.grp_dct_1d_fu_34.mul_16s_15ns_29_1_1_U81", "Parent" : "49"},
	{"ID" : "56", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dct_Pipeline_Col_DCT_Loop_fu_139.grp_dct_1d_fu_34.mul_17s_13ns_29_1_1_U82", "Parent" : "49"},
	{"ID" : "57", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dct_Pipeline_Col_DCT_Loop_fu_139.grp_dct_1d_fu_34.mul_16s_15s_29_1_1_U83", "Parent" : "49"},
	{"ID" : "58", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dct_Pipeline_Col_DCT_Loop_fu_139.grp_dct_1d_fu_34.mac_muladd_16s_15s_13ns_29_4_1_U84", "Parent" : "49"},
	{"ID" : "59", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dct_Pipeline_Col_DCT_Loop_fu_139.grp_dct_1d_fu_34.ama_submuladd_16s_16s_12ns_29s_29_4_1_U85", "Parent" : "49"},
	{"ID" : "60", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dct_Pipeline_Col_DCT_Loop_fu_139.grp_dct_1d_fu_34.ama_submuladd_16s_16s_13ns_29s_29_4_1_U86", "Parent" : "49"},
	{"ID" : "61", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dct_Pipeline_Col_DCT_Loop_fu_139.grp_dct_1d_fu_34.mac_muladd_16s_15s_29s_29_4_1_U87", "Parent" : "49"},
	{"ID" : "62", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dct_Pipeline_Col_DCT_Loop_fu_139.grp_dct_1d_fu_34.mac_muladd_16s_14ns_29s_29_4_1_U88", "Parent" : "49"},
	{"ID" : "63", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dct_Pipeline_Col_DCT_Loop_fu_139.grp_dct_1d_fu_34.mac_muladd_16s_15s_29s_29_4_1_U89", "Parent" : "49"},
	{"ID" : "64", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dct_Pipeline_Col_DCT_Loop_fu_139.grp_dct_1d_fu_34.mac_muladd_16s_15s_13ns_29_4_1_U90", "Parent" : "49"},
	{"ID" : "65", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dct_Pipeline_Col_DCT_Loop_fu_139.grp_dct_1d_fu_34.mac_muladd_17s_12ns_29s_29_4_1_U91", "Parent" : "49"},
	{"ID" : "66", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dct_Pipeline_Col_DCT_Loop_fu_139.grp_dct_1d_fu_34.mac_muladd_17s_13ns_13ns_29_4_1_U92", "Parent" : "49"},
	{"ID" : "67", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dct_Pipeline_Col_DCT_Loop_fu_139.grp_dct_1d_fu_34.mac_muladd_16s_14ns_29ns_29_4_1_U93", "Parent" : "49"},
	{"ID" : "68", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dct_Pipeline_Col_DCT_Loop_fu_139.grp_dct_1d_fu_34.mac_muladd_18s_14ns_13ns_29_4_1_U94", "Parent" : "49"},
	{"ID" : "69", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dct_Pipeline_Col_DCT_Loop_fu_139.grp_dct_1d_fu_34.mac_muladd_16s_14ns_29ns_29_4_1_U95", "Parent" : "49"},
	{"ID" : "70", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dct_Pipeline_Col_DCT_Loop_fu_139.grp_dct_1d_fu_34.mac_muladd_16s_14ns_29s_29_4_1_U96", "Parent" : "49"},
	{"ID" : "71", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dct_Pipeline_Col_DCT_Loop_fu_139.grp_dct_1d_fu_34.mac_muladd_17s_12ns_13ns_29_4_1_U97", "Parent" : "49"},
	{"ID" : "72", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dct_Pipeline_Col_DCT_Loop_fu_139.grp_dct_1d_fu_34.ama_addmuladd_18s_16s_13ns_29ns_29_4_1_U98", "Parent" : "49"},
	{"ID" : "73", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dct_Pipeline_Col_DCT_Loop_fu_139.grp_dct_1d_fu_34.mac_muladd_16s_15s_29ns_29_4_1_U99", "Parent" : "49"},
	{"ID" : "74", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dct_Pipeline_Col_DCT_Loop_fu_139.grp_dct_1d_fu_34.mac_muladd_18s_13ns_13ns_29_4_1_U100", "Parent" : "49"},
	{"ID" : "75", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dct_Pipeline_Col_DCT_Loop_fu_139.grp_dct_1d_fu_34.mac_muladd_16s_14ns_29ns_29_4_1_U101", "Parent" : "49"},
	{"ID" : "76", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dct_Pipeline_Col_DCT_Loop_fu_139.grp_dct_1d_fu_34.mac_muladd_17s_13ns_29s_29_4_1_U102", "Parent" : "49"},
	{"ID" : "77", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dct_Pipeline_Col_DCT_Loop_fu_139.grp_dct_1d_fu_34.ama_submuladd_18s_16s_14ns_29ns_29_4_1_U103", "Parent" : "49"},
	{"ID" : "78", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_Pipeline_Col_DCT_Loop_fu_139.flow_control_loop_pipe_sequential_init_U", "Parent" : "48"},
	{"ID" : "79", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dct_Pipeline_Xpose_Col_Outer_Loop_Xpose_Col_Inner_Loop_fu_145", "Parent" : "0", "Child" : ["80"],
		"CDFG" : "dct_Pipeline_Xpose_Col_Outer_Loop_Xpose_Col_Inner_Loop",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "68", "EstimateLatencyMax" : "68",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "col_outbuf", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buf_2d_out", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "Xpose_Col_Outer_Loop_Xpose_Col_Inner_Loop", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "80", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_Pipeline_Xpose_Col_Outer_Loop_Xpose_Col_Inner_Loop_fu_145.flow_control_loop_pipe_sequential_init_U", "Parent" : "79"},
	{"ID" : "81", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dct_Pipeline_WR_Loop_Row_WR_Loop_Col_fu_151", "Parent" : "0", "Child" : ["82"],
		"CDFG" : "dct_Pipeline_WR_Loop_Row_WR_Loop_Col",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "buf_2d_out", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_r", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "WR_Loop_Row_WR_Loop_Col", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "82", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dct_Pipeline_WR_Loop_Row_WR_Loop_Col_fu_151.flow_control_loop_pipe_sequential_init_U", "Parent" : "81"},
	{"ID" : "83", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.control_s_axi_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	dct {
		input_r {Type I LastRead 2 FirstWrite -1}
		output_r {Type O LastRead -1 FirstWrite 3}}
	dct_Pipeline_RD_Loop_Row_RD_Loop_Col {
		buf_2d_in {Type O LastRead -1 FirstWrite 3}
		buf_2d_in_1 {Type O LastRead -1 FirstWrite 3}
		buf_2d_in_2 {Type O LastRead -1 FirstWrite 3}
		buf_2d_in_3 {Type O LastRead -1 FirstWrite 3}
		buf_2d_in_4 {Type O LastRead -1 FirstWrite 3}
		buf_2d_in_5 {Type O LastRead -1 FirstWrite 3}
		buf_2d_in_6 {Type O LastRead -1 FirstWrite 3}
		buf_2d_in_7 {Type O LastRead -1 FirstWrite 3}
		input_r {Type I LastRead 2 FirstWrite -1}}
	dct_Pipeline_Row_DCT_Loop {
		buf_2d_in {Type I LastRead 0 FirstWrite -1}
		buf_2d_in_1 {Type I LastRead 0 FirstWrite -1}
		buf_2d_in_2 {Type I LastRead 0 FirstWrite -1}
		buf_2d_in_3 {Type I LastRead 0 FirstWrite -1}
		buf_2d_in_4 {Type I LastRead 0 FirstWrite -1}
		buf_2d_in_5 {Type I LastRead 0 FirstWrite -1}
		buf_2d_in_6 {Type I LastRead 0 FirstWrite -1}
		buf_2d_in_7 {Type I LastRead 0 FirstWrite -1}
		row_outbuf {Type O LastRead -1 FirstWrite 1}}
	dct_1d_1 {
		src_0_val {Type I LastRead 0 FirstWrite -1}
		src_1_val {Type I LastRead 0 FirstWrite -1}
		src_2_val {Type I LastRead 0 FirstWrite -1}
		src_3_val {Type I LastRead 0 FirstWrite -1}
		src_4_val {Type I LastRead 0 FirstWrite -1}
		src_5_val {Type I LastRead 0 FirstWrite -1}
		src_6_val {Type I LastRead 0 FirstWrite -1}
		src_7_val {Type I LastRead 0 FirstWrite -1}
		dst {Type O LastRead -1 FirstWrite 1}
		dst_offset {Type I LastRead 1 FirstWrite -1}}
	dct_Pipeline_Xpose_Row_Outer_Loop_Xpose_Row_Inner_Loop {
		row_outbuf {Type I LastRead 2 FirstWrite -1}
		col_inbuf {Type O LastRead -1 FirstWrite 3}}
	dct_Pipeline_Col_DCT_Loop {
		col_inbuf {Type I LastRead 4 FirstWrite -1}
		col_outbuf {Type O LastRead -1 FirstWrite 5}}
	dct_1d {
		src {Type I LastRead 4 FirstWrite -1}
		src_offset {Type I LastRead 0 FirstWrite -1}
		dst {Type O LastRead -1 FirstWrite 5}}
	dct_Pipeline_Xpose_Col_Outer_Loop_Xpose_Col_Inner_Loop {
		col_outbuf {Type I LastRead 2 FirstWrite -1}
		buf_2d_out {Type O LastRead -1 FirstWrite 3}}
	dct_Pipeline_WR_Loop_Row_WR_Loop_Col {
		buf_2d_out {Type I LastRead 2 FirstWrite -1}
		output_r {Type O LastRead -1 FirstWrite 3}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "372", "Max" : "372"}
	, {"Name" : "Interval", "Min" : "373", "Max" : "373"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
}

set maxi_interface_dict [dict create]

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
