# This script segment is generated automatically by AutoPilot

set axilite_register_dict [dict create]
set port_control {
input_r { 
	dir I
	width 16
	depth 64
	mode ap_memory
	offset 128
	offset_end 255
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
output_r { 
	dir O
	width 16
	depth 64
	mode ap_memory
	offset 256
	offset_end 383
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
dict set axilite_register_dict control $port_control


