set SynModuleInfo {
  {SRCNAME MultiSine MODELNAME MultiSine RTLNAME MultiSine IS_TOP 1
    SUBMODULES {
      {MODELNAME MultiSine_accumulators_RAM_AUTO_1R1W RTLNAME MultiSine_accumulators_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME MultiSine_sine_lut_ROM_AUTO_1R RTLNAME MultiSine_sine_lut_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME MultiSine_control_s_axi RTLNAME MultiSine_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
      {MODELNAME MultiSine_flow_control_loop_delay_pipe RTLNAME MultiSine_flow_control_loop_delay_pipe BINDTYPE interface TYPE internal_upc_flow_control INSTNAME MultiSine_flow_control_loop_delay_pipe_U}
    }
  }
}
