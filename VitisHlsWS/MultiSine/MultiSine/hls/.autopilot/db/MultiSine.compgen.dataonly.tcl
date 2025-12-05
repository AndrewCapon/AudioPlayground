# This script segment is generated automatically by AutoPilot

set axilite_register_dict [dict create]
set port_BUS_A {
phaseInc { 
	dir I
	width 32
	depth 8
	mode ap_memory
	offset 32
	offset_end 63
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
debug { 
	dir X
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
samples { 
	dir O
	width 24
	depth 384
	mode ap_memory
	offset 2048
	offset_end 4095
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


