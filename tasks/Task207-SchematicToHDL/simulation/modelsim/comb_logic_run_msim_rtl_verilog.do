transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+C:/Users/asus/Documents/GitHub/DigitalSystems-/tasks/Task207-SchematicToHDL {C:/Users/asus/Documents/GitHub/DigitalSystems-/tasks/Task207-SchematicToHDL/mux21.sv}

