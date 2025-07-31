set moduleName matmul_partition
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
set cdfgNum 7
set C_modelName {matmul_partition}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ gmem int 32 regular {axi_master 2}  }
	{ in1 int 64 regular {axi_slave 0}  }
	{ in2 int 64 regular {axi_slave 0}  }
	{ out_r int 64 regular {axi_slave 0}  }
	{ dim int 32 regular  }
	{ rep_count int 32 regular  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "gmem", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[ {"cElement": [{"cName": "in1","offset": { "type": "dynamic","port_name": "in1","bundle": "control"},"direction": "READONLY"},{"cName": "in2","offset": { "type": "dynamic","port_name": "in2","bundle": "control"},"direction": "READONLY"},{"cName": "out_r","offset": { "type": "dynamic","port_name": "out_r","bundle": "control"},"direction": "WRITEONLY"}]}]} , 
 	{ "Name" : "in1", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":16}, "offset_end" : {"in":27}} , 
 	{ "Name" : "in2", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":28}, "offset_end" : {"in":39}} , 
 	{ "Name" : "out_r", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":40}, "offset_end" : {"in":51}} , 
 	{ "Name" : "dim", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "rep_count", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 70
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_axi_gmem_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_AWLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_gmem_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_WDATA sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmem_WSTRB sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_ARLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_gmem_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_RDATA sc_in sc_lv 32 signal 0 } 
	{ m_axi_gmem_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_BUSER sc_in sc_lv 1 signal 0 } 
	{ dim sc_in sc_lv 32 signal 4 } 
	{ rep_count sc_in sc_lv 32 signal 5 } 
	{ s_axi_control_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_AWADDR sc_in sc_lv 6 signal -1 } 
	{ s_axi_control_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_control_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_control_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_ARADDR sc_in sc_lv 6 signal -1 } 
	{ s_axi_control_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_control_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_control_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_BRESP sc_out sc_lv 2 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_control_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "control", "role": "AWADDR" },"address":[{"name":"in1","role":"data","value":"16"},{"name":"in2","role":"data","value":"28"},{"name":"out_r","role":"data","value":"40"}] },
	{ "name": "s_axi_control_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWVALID" } },
	{ "name": "s_axi_control_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWREADY" } },
	{ "name": "s_axi_control_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WVALID" } },
	{ "name": "s_axi_control_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WREADY" } },
	{ "name": "s_axi_control_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "WDATA" } },
	{ "name": "s_axi_control_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control", "role": "WSTRB" } },
	{ "name": "s_axi_control_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "control", "role": "ARADDR" },"address":[] },
	{ "name": "s_axi_control_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARVALID" } },
	{ "name": "s_axi_control_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARREADY" } },
	{ "name": "s_axi_control_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RVALID" } },
	{ "name": "s_axi_control_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RREADY" } },
	{ "name": "s_axi_control_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "RDATA" } },
	{ "name": "s_axi_control_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "RRESP" } },
	{ "name": "s_axi_control_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BVALID" } },
	{ "name": "s_axi_control_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BREADY" } },
	{ "name": "s_axi_control_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "BRESP" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "m_axi_gmem_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "WID" }} , 
 	{ "name": "m_axi_gmem_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RID" }} , 
 	{ "name": "m_axi_gmem_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "BID" }} , 
 	{ "name": "m_axi_gmem_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "BUSER" }} , 
 	{ "name": "dim", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "dim", "role": "default" }} , 
 	{ "name": "rep_count", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "rep_count", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "36", "38", "69", "71", "72", "73", "74", "75"],
		"CDFG" : "matmul_partition",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "547", "EstimateLatencyMax" : "1083",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "gmem", "Type" : "MAXI", "Direction" : "IO",
				"BlockSignal" : [
					{"Name" : "gmem_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "gmem_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "gmem_blk_n_B", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "grp_matmul_partition_Pipeline_readA_fu_259", "Port" : "gmem", "Inst_start_state" : "12", "Inst_end_state" : "13"},
					{"ID" : "36", "SubInstance" : "grp_matmul_partition_Pipeline_readB_fu_284", "Port" : "gmem", "Inst_start_state" : "22", "Inst_end_state" : "23"},
					{"ID" : "69", "SubInstance" : "grp_matmul_partition_Pipeline_writeC_fu_349", "Port" : "gmem", "Inst_start_state" : "33", "Inst_end_state" : "34"}]},
			{"Name" : "in1", "Type" : "None", "Direction" : "I"},
			{"Name" : "in2", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "dim", "Type" : "None", "Direction" : "I"},
			{"Name" : "rep_count", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_1_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_2_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_3_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_4_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_5_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_6_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_7_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_8_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_9_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_10_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_11_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_12_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_13_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_14_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.A_15_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_U", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_1_U", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_2_U", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_3_U", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_4_U", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_5_U", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_6_U", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_7_U", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_8_U", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_9_U", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_10_U", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_11_U", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_12_U", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_13_U", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_14_U", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.B_15_U", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.C_U", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_matmul_partition_Pipeline_readA_fu_259", "Parent" : "0", "Child" : ["35"],
		"CDFG" : "matmul_partition_Pipeline_readA",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "259", "EstimateLatencyMax" : "259",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "gmem", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln46", "Type" : "None", "Direction" : "I"},
			{"Name" : "A_15", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "A_14", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "A_13", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "A_12", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "A_11", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "A_10", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "A_9", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "A_8", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "A_7", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "A_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "A_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "A_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "A_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "A_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "A_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "A", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dim", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "readA", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matmul_partition_Pipeline_readA_fu_259.flow_control_loop_pipe_sequential_init_U", "Parent" : "34"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_matmul_partition_Pipeline_readB_fu_284", "Parent" : "0", "Child" : ["37"],
		"CDFG" : "matmul_partition_Pipeline_readB",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "259", "EstimateLatencyMax" : "259",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "gmem", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln57", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_15", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "B_14", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "B_13", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "B_12", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "B_11", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "B_10", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "B_9", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "B_8", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "B_7", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "B_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "B_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "B_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "B_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "B_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "B_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "B", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dim", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "readB", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matmul_partition_Pipeline_readB_fu_284.flow_control_loop_pipe_sequential_init_U", "Parent" : "36"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_matmul_partition_Pipeline_loop2_lreorder1_lreorder2_fu_309", "Parent" : "0", "Child" : ["39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68"],
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
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matmul_partition_Pipeline_loop2_lreorder1_lreorder2_fu_309.mul_32s_32s_32_2_1_U42", "Parent" : "38"},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matmul_partition_Pipeline_loop2_lreorder1_lreorder2_fu_309.mul_32s_32s_32_2_1_U43", "Parent" : "38"},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matmul_partition_Pipeline_loop2_lreorder1_lreorder2_fu_309.mul_32s_32s_32_2_1_U44", "Parent" : "38"},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matmul_partition_Pipeline_loop2_lreorder1_lreorder2_fu_309.mul_32s_32s_32_2_1_U45", "Parent" : "38"},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matmul_partition_Pipeline_loop2_lreorder1_lreorder2_fu_309.mul_32s_32s_32_2_1_U46", "Parent" : "38"},
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matmul_partition_Pipeline_loop2_lreorder1_lreorder2_fu_309.mul_32s_32s_32_2_1_U47", "Parent" : "38"},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matmul_partition_Pipeline_loop2_lreorder1_lreorder2_fu_309.mul_32s_32s_32_2_1_U48", "Parent" : "38"},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matmul_partition_Pipeline_loop2_lreorder1_lreorder2_fu_309.mul_32s_32s_32_2_1_U49", "Parent" : "38"},
	{"ID" : "47", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matmul_partition_Pipeline_loop2_lreorder1_lreorder2_fu_309.mul_32s_32s_32_2_1_U50", "Parent" : "38"},
	{"ID" : "48", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matmul_partition_Pipeline_loop2_lreorder1_lreorder2_fu_309.mul_32s_32s_32_2_1_U51", "Parent" : "38"},
	{"ID" : "49", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matmul_partition_Pipeline_loop2_lreorder1_lreorder2_fu_309.mul_32s_32s_32_2_1_U52", "Parent" : "38"},
	{"ID" : "50", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matmul_partition_Pipeline_loop2_lreorder1_lreorder2_fu_309.mul_32s_32s_32_2_1_U53", "Parent" : "38"},
	{"ID" : "51", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matmul_partition_Pipeline_loop2_lreorder1_lreorder2_fu_309.mul_32s_32s_32_2_1_U54", "Parent" : "38"},
	{"ID" : "52", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matmul_partition_Pipeline_loop2_lreorder1_lreorder2_fu_309.mul_32s_32s_32_2_1_U55", "Parent" : "38"},
	{"ID" : "53", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matmul_partition_Pipeline_loop2_lreorder1_lreorder2_fu_309.mul_32s_32s_32_2_1_U56", "Parent" : "38"},
	{"ID" : "54", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matmul_partition_Pipeline_loop2_lreorder1_lreorder2_fu_309.sparsemux_9_2_32_1_1_U57", "Parent" : "38"},
	{"ID" : "55", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matmul_partition_Pipeline_loop2_lreorder1_lreorder2_fu_309.sparsemux_7_2_32_1_1_U58", "Parent" : "38"},
	{"ID" : "56", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matmul_partition_Pipeline_loop2_lreorder1_lreorder2_fu_309.sparsemux_33_4_32_1_1_U59", "Parent" : "38"},
	{"ID" : "57", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matmul_partition_Pipeline_loop2_lreorder1_lreorder2_fu_309.sparsemux_31_4_32_1_1_U60", "Parent" : "38"},
	{"ID" : "58", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matmul_partition_Pipeline_loop2_lreorder1_lreorder2_fu_309.sparsemux_29_4_32_1_1_U61", "Parent" : "38"},
	{"ID" : "59", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matmul_partition_Pipeline_loop2_lreorder1_lreorder2_fu_309.sparsemux_27_4_32_1_1_U62", "Parent" : "38"},
	{"ID" : "60", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matmul_partition_Pipeline_loop2_lreorder1_lreorder2_fu_309.sparsemux_25_4_32_1_1_U63", "Parent" : "38"},
	{"ID" : "61", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matmul_partition_Pipeline_loop2_lreorder1_lreorder2_fu_309.sparsemux_23_4_32_1_1_U64", "Parent" : "38"},
	{"ID" : "62", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matmul_partition_Pipeline_loop2_lreorder1_lreorder2_fu_309.sparsemux_21_4_32_1_1_U65", "Parent" : "38"},
	{"ID" : "63", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matmul_partition_Pipeline_loop2_lreorder1_lreorder2_fu_309.sparsemux_19_4_32_1_1_U66", "Parent" : "38"},
	{"ID" : "64", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matmul_partition_Pipeline_loop2_lreorder1_lreorder2_fu_309.sparsemux_17_3_32_1_1_U67", "Parent" : "38"},
	{"ID" : "65", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matmul_partition_Pipeline_loop2_lreorder1_lreorder2_fu_309.sparsemux_15_3_32_1_1_U68", "Parent" : "38"},
	{"ID" : "66", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matmul_partition_Pipeline_loop2_lreorder1_lreorder2_fu_309.sparsemux_13_3_32_1_1_U69", "Parent" : "38"},
	{"ID" : "67", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matmul_partition_Pipeline_loop2_lreorder1_lreorder2_fu_309.sparsemux_11_3_32_1_1_U70", "Parent" : "38"},
	{"ID" : "68", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matmul_partition_Pipeline_loop2_lreorder1_lreorder2_fu_309.flow_control_loop_pipe_sequential_init_U", "Parent" : "38"},
	{"ID" : "69", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_matmul_partition_Pipeline_writeC_fu_349", "Parent" : "0", "Child" : ["70"],
		"CDFG" : "matmul_partition_Pipeline_writeC",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "261", "EstimateLatencyMax" : "261",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "gmem", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "gmem_blk_n_W", "Type" : "RtlSignal"}]},
			{"Name" : "mul", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln91", "Type" : "None", "Direction" : "I"},
			{"Name" : "dim", "Type" : "None", "Direction" : "I"},
			{"Name" : "C", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "writeC", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "70", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_matmul_partition_Pipeline_writeC_fu_349.flow_control_loop_pipe_sequential_init_U", "Parent" : "69"},
	{"ID" : "71", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.control_s_axi_U", "Parent" : "0"},
	{"ID" : "72", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.gmem_m_axi_U", "Parent" : "0"},
	{"ID" : "73", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_31ns_32ns_63_2_1_U127", "Parent" : "0"},
	{"ID" : "74", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_31ns_63ns_94_5_1_U128", "Parent" : "0"},
	{"ID" : "75", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U129", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	matmul_partition {
		gmem {Type IO LastRead 34 FirstWrite -1}
		in1 {Type I LastRead 2 FirstWrite -1}
		in2 {Type I LastRead 2 FirstWrite -1}
		out_r {Type I LastRead 2 FirstWrite -1}
		dim {Type I LastRead 0 FirstWrite -1}
		rep_count {Type I LastRead 3 FirstWrite -1}}
	matmul_partition_Pipeline_readA {
		gmem {Type I LastRead 1 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		sext_ln46 {Type I LastRead 0 FirstWrite -1}
		A_15 {Type O LastRead -1 FirstWrite 2}
		A_14 {Type O LastRead -1 FirstWrite 2}
		A_13 {Type O LastRead -1 FirstWrite 2}
		A_12 {Type O LastRead -1 FirstWrite 2}
		A_11 {Type O LastRead -1 FirstWrite 2}
		A_10 {Type O LastRead -1 FirstWrite 2}
		A_9 {Type O LastRead -1 FirstWrite 2}
		A_8 {Type O LastRead -1 FirstWrite 2}
		A_7 {Type O LastRead -1 FirstWrite 2}
		A_6 {Type O LastRead -1 FirstWrite 2}
		A_5 {Type O LastRead -1 FirstWrite 2}
		A_4 {Type O LastRead -1 FirstWrite 2}
		A_3 {Type O LastRead -1 FirstWrite 2}
		A_2 {Type O LastRead -1 FirstWrite 2}
		A_1 {Type O LastRead -1 FirstWrite 2}
		A {Type O LastRead -1 FirstWrite 2}
		dim {Type I LastRead 0 FirstWrite -1}}
	matmul_partition_Pipeline_readB {
		gmem {Type I LastRead 2 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		sext_ln57 {Type I LastRead 0 FirstWrite -1}
		B_15 {Type O LastRead -1 FirstWrite 3}
		B_14 {Type O LastRead -1 FirstWrite 3}
		B_13 {Type O LastRead -1 FirstWrite 3}
		B_12 {Type O LastRead -1 FirstWrite 3}
		B_11 {Type O LastRead -1 FirstWrite 3}
		B_10 {Type O LastRead -1 FirstWrite 3}
		B_9 {Type O LastRead -1 FirstWrite 3}
		B_8 {Type O LastRead -1 FirstWrite 3}
		B_7 {Type O LastRead -1 FirstWrite 3}
		B_6 {Type O LastRead -1 FirstWrite 3}
		B_5 {Type O LastRead -1 FirstWrite 3}
		B_4 {Type O LastRead -1 FirstWrite 3}
		B_3 {Type O LastRead -1 FirstWrite 3}
		B_2 {Type O LastRead -1 FirstWrite 3}
		B_1 {Type O LastRead -1 FirstWrite 3}
		B {Type O LastRead -1 FirstWrite 3}
		dim {Type I LastRead 0 FirstWrite -1}}
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
		C {Type O LastRead -1 FirstWrite 10}}
	matmul_partition_Pipeline_writeC {
		gmem {Type O LastRead -1 FirstWrite 4}
		mul {Type I LastRead 0 FirstWrite -1}
		sext_ln91 {Type I LastRead 0 FirstWrite -1}
		dim {Type I LastRead 0 FirstWrite -1}
		C {Type I LastRead 2 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "547", "Max" : "1083"}
	, {"Name" : "Interval", "Min" : "548", "Max" : "1084"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	gmem { m_axi {  { m_axi_gmem_AWVALID VALID 1 1 }  { m_axi_gmem_AWREADY READY 0 1 }  { m_axi_gmem_AWADDR ADDR 1 64 }  { m_axi_gmem_AWID ID 1 1 }  { m_axi_gmem_AWLEN SIZE 1 8 }  { m_axi_gmem_AWSIZE BURST 1 3 }  { m_axi_gmem_AWBURST LOCK 1 2 }  { m_axi_gmem_AWLOCK CACHE 1 2 }  { m_axi_gmem_AWCACHE PROT 1 4 }  { m_axi_gmem_AWPROT QOS 1 3 }  { m_axi_gmem_AWQOS REGION 1 4 }  { m_axi_gmem_AWREGION USER 1 4 }  { m_axi_gmem_AWUSER DATA 1 1 }  { m_axi_gmem_WVALID VALID 1 1 }  { m_axi_gmem_WREADY READY 0 1 }  { m_axi_gmem_WDATA FIFONUM 1 32 }  { m_axi_gmem_WSTRB STRB 1 4 }  { m_axi_gmem_WLAST LAST 1 1 }  { m_axi_gmem_WID ID 1 1 }  { m_axi_gmem_WUSER DATA 1 1 }  { m_axi_gmem_ARVALID VALID 1 1 }  { m_axi_gmem_ARREADY READY 0 1 }  { m_axi_gmem_ARADDR ADDR 1 64 }  { m_axi_gmem_ARID ID 1 1 }  { m_axi_gmem_ARLEN SIZE 1 8 }  { m_axi_gmem_ARSIZE BURST 1 3 }  { m_axi_gmem_ARBURST LOCK 1 2 }  { m_axi_gmem_ARLOCK CACHE 1 2 }  { m_axi_gmem_ARCACHE PROT 1 4 }  { m_axi_gmem_ARPROT QOS 1 3 }  { m_axi_gmem_ARQOS REGION 1 4 }  { m_axi_gmem_ARREGION USER 1 4 }  { m_axi_gmem_ARUSER DATA 1 1 }  { m_axi_gmem_RVALID VALID 0 1 }  { m_axi_gmem_RREADY READY 1 1 }  { m_axi_gmem_RDATA FIFONUM 0 32 }  { m_axi_gmem_RLAST LAST 0 1 }  { m_axi_gmem_RID ID 0 1 }  { m_axi_gmem_RUSER DATA 0 1 }  { m_axi_gmem_RRESP RESP 0 2 }  { m_axi_gmem_BVALID VALID 0 1 }  { m_axi_gmem_BREADY READY 1 1 }  { m_axi_gmem_BRESP RESP 0 2 }  { m_axi_gmem_BID ID 0 1 }  { m_axi_gmem_BUSER DATA 0 1 } } }
	dim { ap_none {  { dim in_data 0 32 } } }
	rep_count { ap_none {  { rep_count in_data 0 32 } } }
}

set maxi_interface_dict [dict create]
dict set maxi_interface_dict gmem { CHANNEL_NUM 0 BUNDLE gmem NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_WRITE}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
	{ gmem 1 }
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
	{ gmem 1 }
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
