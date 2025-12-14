set SynModuleInfo {
  {SRCNAME MultiSineStreamBidirectional_Pipeline_VITIS_LOOP_39_1 MODELNAME MultiSineStreamBidirectional_Pipeline_VITIS_LOOP_39_1 RTLNAME MultiSineStreamBidirectional_MultiSineStreamBidirectional_Pipeline_VITIS_LOOP_39_1
    SUBMODULES {
      {MODELNAME MultiSineStreamBidirectional_flow_control_loop_pipe_sequential_init RTLNAME MultiSineStreamBidirectional_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME MultiSineStreamBidirectional_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME MultiSineStreamBidirectional MODELNAME MultiSineStreamBidirectional RTLNAME MultiSineStreamBidirectional IS_TOP 1
    SUBMODULES {
      {MODELNAME MultiSineStreamBidirectional_phaseIncsLocal_RAM_AUTO_1R1W RTLNAME MultiSineStreamBidirectional_phaseIncsLocal_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME MultiSineStreamBidirectional_accumulators_RAM_AUTO_1R1W RTLNAME MultiSineStreamBidirectional_accumulators_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME MultiSineStreamBidirectional_sine_lut_ROM_AUTO_1R RTLNAME MultiSineStreamBidirectional_sine_lut_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME MultiSineStreamBidirectional_regslice_both RTLNAME MultiSineStreamBidirectional_regslice_both BINDTYPE interface TYPE adapter IMPL reg_slice}
    }
  }
}
