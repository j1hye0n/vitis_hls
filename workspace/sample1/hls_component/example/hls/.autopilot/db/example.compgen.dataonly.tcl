# This script segment is generated automatically by AutoPilot

set axilite_register_dict [dict create]
set port_BUS_A {
a { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 16
	offset_end 23
}
b { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 24
	offset_end 31
}
c_i { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 32
	offset_end 39
}
c_o { 
	dir O
	width 8
	depth 1
	mode ap_vld
	offset 40
	offset_end 47
}
ap_start { }
ap_done { }
ap_ready { }
ap_idle { }
interrupt {
}
}
dict set axilite_register_dict BUS_A $port_BUS_A


