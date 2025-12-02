set SynModuleInfo {
  {SRCNAME SimpleSine_Pipeline_VITIS_LOOP_96_1 MODELNAME SimpleSine_Pipeline_VITIS_LOOP_96_1 RTLNAME SimpleSine_SimpleSine_Pipeline_VITIS_LOOP_96_1
    SUBMODULES {
      {MODELNAME SimpleSine_SimpleSine_Pipeline_VITIS_LOOP_96_1_sine_lut_ROM_AUTO_1R RTLNAME SimpleSine_SimpleSine_Pipeline_VITIS_LOOP_96_1_sine_lut_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME SimpleSine_flow_control_loop_pipe_sequential_init RTLNAME SimpleSine_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME SimpleSine_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME SimpleSine MODELNAME SimpleSine RTLNAME SimpleSine IS_TOP 1
    SUBMODULES {
      {MODELNAME SimpleSine_BUS_A_s_axi RTLNAME SimpleSine_BUS_A_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
