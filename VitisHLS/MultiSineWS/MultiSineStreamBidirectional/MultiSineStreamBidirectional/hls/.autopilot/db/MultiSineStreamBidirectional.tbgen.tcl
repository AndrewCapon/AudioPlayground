set moduleName MultiSineStreamBidirectional
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_none
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set svuvm_can_support 1
set cdfgNum 4
set C_modelName {MultiSineStreamBidirectional}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ phaseInc int 32 regular {axi_s 0 volatile  { phaseInc Data } }  }
	{ samples int 24 regular {axi_s 1 volatile  { samples Data } }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "phaseInc", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "samples", "interface" : "axis", "bitwidth" : 24, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 8
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ phaseInc_TDATA sc_in sc_lv 32 signal 0 } 
	{ phaseInc_TVALID sc_in sc_logic 1 invld 0 } 
	{ phaseInc_TREADY sc_out sc_logic 1 inacc 0 } 
	{ samples_TDATA sc_out sc_lv 24 signal 1 } 
	{ samples_TVALID sc_out sc_logic 1 outvld 1 } 
	{ samples_TREADY sc_in sc_logic 1 outacc 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "phaseInc_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "phaseInc", "role": "TDATA" }} , 
 	{ "name": "phaseInc_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "phaseInc", "role": "TVALID" }} , 
 	{ "name": "phaseInc_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "phaseInc", "role": "TREADY" }} , 
 	{ "name": "samples_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "samples", "role": "TDATA" }} , 
 	{ "name": "samples_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "samples", "role": "TVALID" }} , 
 	{ "name": "samples_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "samples", "role": "TREADY" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "6", "7"],
		"CDFG" : "MultiSineStreamBidirectional",
		"Protocol" : "ap_ctrl_none",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "402", "EstimateLatencyMax" : "402",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "phaseInc", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_MultiSineStreamBidirectional_Pipeline_VITIS_LOOP_39_1_fu_170", "Port" : "phaseInc", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "samples", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "samples_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "phaseIncsLocal", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_MultiSineStreamBidirectional_Pipeline_VITIS_LOOP_39_1_fu_170", "Port" : "phaseIncsLocal", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "accumulators", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sine_lut", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_45_2_VITIS_LOOP_48_3", "PipelineType" : "pipeline",
				"LoopDec" : {"FSMBitwidth" : "5", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter5", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "PreState" : ["ap_ST_fsm_state3"], "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter5", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "PostState" : ["ap_ST_fsm_state10"]}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.phaseIncsLocal_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accumulators_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sine_lut_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_MultiSineStreamBidirectional_Pipeline_VITIS_LOOP_39_1_fu_170", "Parent" : "0", "Child" : ["5"],
		"CDFG" : "MultiSineStreamBidirectional_Pipeline_VITIS_LOOP_39_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "phaseInc", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "phaseInc_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "phaseIncsLocal", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_39_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MultiSineStreamBidirectional_Pipeline_VITIS_LOOP_39_1_fu_170.flow_control_loop_pipe_sequential_init_U", "Parent" : "4"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_phaseInc_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_samples_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	MultiSineStreamBidirectional {
		phaseInc {Type I LastRead 1 FirstWrite -1}
		samples {Type O LastRead -1 FirstWrite 7}
		phaseIncsLocal {Type IO LastRead -1 FirstWrite -1}
		accumulators {Type IO LastRead -1 FirstWrite -1}
		sine_lut {Type I LastRead -1 FirstWrite -1}}
	MultiSineStreamBidirectional_Pipeline_VITIS_LOOP_39_1 {
		phaseInc {Type I LastRead 1 FirstWrite -1}
		phaseIncsLocal {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "402", "Max" : "402"}
	, {"Name" : "Interval", "Min" : "403", "Max" : "403"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	phaseInc { axis {  { phaseInc_TDATA in_data 0 32 }  { phaseInc_TVALID in_vld 0 1 }  { phaseInc_TREADY in_acc 1 1 } } }
	samples { axis {  { samples_TDATA out_data 1 24 }  { samples_TVALID out_vld 1 1 }  { samples_TREADY out_acc 0 1 } } }
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
