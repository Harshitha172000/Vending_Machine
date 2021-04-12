
lef read /home/harshitha/Desktop/vlsi/pdk_files/sky130A/libs.ref/sky130_fd_sc_hd/techlef/sky130_fd_sc_hd.tlef
if {  [info exist ::env(EXTRA_LEFS)] } {
	set lefs_in $::env(EXTRA_LEFS)
	foreach lef_file $lefs_in {
		lef read $lef_file
	}
}
def read /openLANE_flow/designs/vm/runs/final/results/routing/vm.def
load vm -dereference
cd /openLANE_flow/designs/vm/runs/final/results/magic/
extract do local
extract no capacitance
extract no coupling
extract no resistance
extract no adjust
extract unique
# extract warn all
extract

ext2spice lvs
ext2spice vm.ext
feedback save /openLANE_flow/designs/vm/runs/final/logs/magic/magic_ext2spice.feedback.txt
# exec cp vm.spice /openLANE_flow/designs/vm/runs/final/results/magic/vm.spice

