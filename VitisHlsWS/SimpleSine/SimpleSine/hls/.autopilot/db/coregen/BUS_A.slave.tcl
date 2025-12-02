dict set slaves BUS_A {ports {accumulator_i {type i_ap_none width 32} accumulator_o {type o_ap_vld width 32} phaseInc {type i_ap_none width 32} samples {type o_ap_memory width 24} ap_start {type ap_ctrl width 1} ap_done {type ap_ctrl width 1} ap_ready {type ap_ctrl width 1} ap_idle {type ap_ctrl width 1}} mems {samples {width 24}} has_ctrl 1}
set datawidth 32
set addrwidth 64
set intr_clr_mode TOW
