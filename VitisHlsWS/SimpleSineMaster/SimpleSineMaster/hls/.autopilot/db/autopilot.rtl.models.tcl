set SynModuleInfo {
  {SRCNAME SimpleSineMaster_Pipeline_VITIS_LOOP_46_1 MODELNAME SimpleSineMaster_Pipeline_VITIS_LOOP_46_1 RTLNAME SimpleSineMaster_SimpleSineMaster_Pipeline_VITIS_LOOP_46_1
    SUBMODULES {
      {MODELNAME SimpleSineMaster_SimpleSineMaster_Pipeline_VITIS_LOOP_46_1_sine_lut_ROM_AUTO_1R RTLNAME SimpleSineMaster_SimpleSineMaster_Pipeline_VITIS_LOOP_46_1_sine_lut_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME SimpleSineMaster_flow_control_loop_pipe_sequential_init RTLNAME SimpleSineMaster_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME SimpleSineMaster_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME SimpleSineMaster MODELNAME SimpleSineMaster RTLNAME SimpleSineMaster IS_TOP 1
    SUBMODULES {
      {MODELNAME SimpleSineMaster_gmem_m_axi RTLNAME SimpleSineMaster_gmem_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME SimpleSineMaster_control_s_axi RTLNAME SimpleSineMaster_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
