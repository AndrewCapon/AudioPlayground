# This script segment is generated automatically by AutoPilot

set axilite_register_dict [dict create]
set port_BUS_A {
debug { 
	dir O
	width 32
	depth 48
	mode ap_memory
	offset 256
	offset_end 511
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
ap_start { }
ap_done { }
ap_ready { }
ap_idle { }
interrupt {
}
}
dict set axilite_register_dict BUS_A $port_BUS_A


set port_control {
phaseInc { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 16
	offset_end 23
}
samples { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 24
	offset_end 31
}
}
dict set axilite_register_dict control $port_control


