vlib work
vmap work work

vlog -work work -sv ./uart/if/uart_if.sv
vlog -work work -sv ./buffer_fifo/buffer_fifo.sv
vlog -work work -sv ./word_break/word_break.sv
vlog -work work -sv ./uart/uart_rx.sv
vlog -work work -sv ./uart/uart_tx.sv
vlog -work work -sv ./uart/uart.sv
vlog -work work -sv ./FPGA-special-modules/edge_detector.sv
vlog -work work -sv ./cycle_uart_out.sv

vlog -work work -sv ./testbench-modelsim/tb.sv 

#vlog -work work -v ./FPGA-special-modules/dspl_drv_NexysA7.v

vsim -voptargs=+acc=lprn -t ns work.tb

do wave.do

run 5 ms
