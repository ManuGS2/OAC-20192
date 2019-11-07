onerror {exit -code 1}
vlib work
vlog -work work pipeline.vo
vlog -work work test.vwf.vt
vsim -novopt -c -t 1ps -L cycloneive_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate_ver -L altera_lnsim_ver work.pipeline_vlg_vec_tst -voptargs="+acc"
vcd file -direction pipeline.msim.vcd
vcd add -internal pipeline_vlg_vec_tst/*
vcd add -internal pipeline_vlg_vec_tst/i1/*
run -all
quit -f
