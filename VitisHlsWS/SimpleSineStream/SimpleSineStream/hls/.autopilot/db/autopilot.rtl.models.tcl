set SynModuleInfo {
  {SRCNAME SimpleSineStream_Pipeline_VITIS_LOOP_38_1 MODELNAME SimpleSineStream_Pipeline_VITIS_LOOP_38_1 RTLNAME SimpleSineStream_SimpleSineStream_Pipeline_VITIS_LOOP_38_1
    SUBMODULES {
      {MODELNAME SimpleSineStream_SimpleSineStream_Pipeline_VITIS_LOOP_38_1_sine_lut_ROM_AUTO_1R RTLNAME SimpleSineStream_SimpleSineStream_Pipeline_VITIS_LOOP_38_1_sine_lut_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME SimpleSineStream_flow_control_loop_pipe_sequential_init RTLNAME SimpleSineStream_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME SimpleSineStream_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME SimpleSineStream MODELNAME SimpleSineStream RTLNAME SimpleSineStream IS_TOP 1
    SUBMODULES {
      {MODELNAME SimpleSineStream_control_s_axi RTLNAME SimpleSineStream_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
      {MODELNAME SimpleSineStream_regslice_both RTLNAME SimpleSineStream_regslice_both BINDTYPE interface TYPE adapter IMPL reg_slice}
    }
  }
}
