transcript on
if ![file isdirectory verilog_libs] {
	file mkdir verilog_libs
}

vlib verilog_libs/altera_ver
vmap altera_ver ./verilog_libs/altera_ver
vlog -vlog01compat -work altera_ver {d:/alter/quartus/eda/sim_lib/altera_primitives.v}

vlib verilog_libs/lpm_ver
vmap lpm_ver ./verilog_libs/lpm_ver
vlog -vlog01compat -work lpm_ver {d:/alter/quartus/eda/sim_lib/220model.v}

vlib verilog_libs/sgate_ver
vmap sgate_ver ./verilog_libs/sgate_ver
vlog -vlog01compat -work sgate_ver {d:/alter/quartus/eda/sim_lib/sgate.v}

vlib verilog_libs/altera_mf_ver
vmap altera_mf_ver ./verilog_libs/altera_mf_ver
vlog -vlog01compat -work altera_mf_ver {d:/alter/quartus/eda/sim_lib/altera_mf.v}

vlib verilog_libs/altera_lnsim_ver
vmap altera_lnsim_ver ./verilog_libs/altera_lnsim_ver
vlog -sv -work altera_lnsim_ver {d:/alter/quartus/eda/sim_lib/altera_lnsim.sv}

vlib verilog_libs/cycloneii_ver
vmap cycloneii_ver ./verilog_libs/cycloneii_ver
vlog -vlog01compat -work cycloneii_ver {d:/alter/quartus/eda/sim_lib/cycloneii_atoms.v}

if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/WLX/Desktop/Project {C:/Users/WLX/Desktop/Project/wlx_modulation.v}
vlog -vlog01compat -work work +incdir+C:/Users/WLX/Desktop/Project {C:/Users/WLX/Desktop/Project/LY_DIV.v}
vlog -vlog01compat -work work +incdir+C:/Users/WLX/Desktop/Project {C:/Users/WLX/Desktop/Project/wlx_m_sequence.v}
vlog -vlog01compat -work work +incdir+C:/Users/WLX/Desktop/Project {C:/Users/WLX/Desktop/Project/LY_choose.v}
vlog -vlog01compat -work work +incdir+C:/Users/WLX/Desktop/Project {C:/Users/WLX/Desktop/Project/wlx_sinout.v}
vlog -vlog01compat -work work +incdir+C:/Users/WLX/Desktop/Project {C:/Users/WLX/Desktop/Project/sinewave.v}
vlog -vlog01compat -work work +incdir+C:/Users/WLX/Desktop/Project {C:/Users/WLX/Desktop/Project/zn_wlx_freq_detect.v}
vlog -vlog01compat -work work +incdir+C:/Users/WLX/Desktop/Project {C:/Users/WLX/Desktop/Project/zn_demodulation.v}
vlog -vlog01compat -work work +incdir+C:/Users/WLX/Desktop/Project {C:/Users/WLX/Desktop/Project/zn_compare.v}
vlog -vlog01compat -work work +incdir+C:/Users/WLX/Desktop/Project {C:/Users/WLX/Desktop/Project/lzw_FSK.v}

vlog -vlog01compat -work work +incdir+C:/Users/WLX/Desktop/Project/simulation/modelsim {C:/Users/WLX/Desktop/Project/simulation/modelsim/lzw_FSK.vt}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneii_ver -L rtl_work -L work -voptargs="+acc"  lzw_FSK_vlg_tst

add wave *
view structure
view signals
run -all
