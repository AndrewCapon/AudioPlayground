set SynModuleInfo {
  {SRCNAME MultiSineMaster MODELNAME MultiSineMaster RTLNAME MultiSineMaster IS_TOP 1
    SUBMODULES {
      {MODELNAME MultiSineMaster_accumulators_RAM_AUTO_1R1W RTLNAME MultiSineMaster_accumulators_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME MultiSineMaster_sine_lut_ROM_AUTO_1R RTLNAME MultiSineMaster_sine_lut_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME MultiSineMaster_gmem_m_axi RTLNAME MultiSineMaster_gmem_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME MultiSineMaster_control_s_axi RTLNAME MultiSineMaster_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
      {MODELNAME MultiSineMaster_flow_control_loop_delay_pipe RTLNAME MultiSineMaster_flow_control_loop_delay_pipe BINDTYPE interface TYPE internal_upc_flow_control INSTNAME MultiSineMaster_flow_control_loop_delay_pipe_U}
    }
  }
}
