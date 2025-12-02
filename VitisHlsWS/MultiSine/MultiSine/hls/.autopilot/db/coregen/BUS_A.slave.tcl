dict set slaves BUS_A {ports {phaseInc {type i_ap_memory width 32} samples {type o_ap_memory width 24} ap_start {type ap_ctrl width 1} ap_done {type ap_ctrl width 1} ap_ready {type ap_ctrl width 1} ap_idle {type ap_ctrl width 1}} mems {phaseInc {width 32} samples {width 24}} has_ctrl 1}
set datawidth 32
set addrwidth 64
set intr_clr_mode TOW
