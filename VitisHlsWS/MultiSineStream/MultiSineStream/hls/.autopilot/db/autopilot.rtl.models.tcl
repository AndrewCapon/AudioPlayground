set SynModuleInfo {
  {SRCNAME MultiSineStream MODELNAME MultiSineStream RTLNAME MultiSineStream IS_TOP 1
    SUBMODULES {
      {MODELNAME MultiSineStream_accumulators_RAM_AUTO_1R1W RTLNAME MultiSineStream_accumulators_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME MultiSineStream_sine_lut_ROM_AUTO_1R RTLNAME MultiSineStream_sine_lut_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME MultiSineStream_control_s_axi RTLNAME MultiSineStream_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
      {MODELNAME MultiSineStream_regslice_both RTLNAME MultiSineStream_regslice_both BINDTYPE interface TYPE adapter IMPL reg_slice}
      {MODELNAME MultiSineStream_flow_control_loop_pipe RTLNAME MultiSineStream_flow_control_loop_pipe BINDTYPE interface TYPE internal_upc_flow_control INSTNAME MultiSineStream_flow_control_loop_pipe_U}
    }
  }
}
