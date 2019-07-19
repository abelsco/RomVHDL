onerror {quit -f}
vlib work
vlog -work work Pojeto.vo
vlog -work work Pojeto.vt
vsim -novopt -c -t 1ps -L cycloneive_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.Pojeto_vlg_vec_tst
vcd file -direction Pojeto.msim.vcd
vcd add -internal Pojeto_vlg_vec_tst/*
vcd add -internal Pojeto_vlg_vec_tst/i1/*
add wave /*
run -all
