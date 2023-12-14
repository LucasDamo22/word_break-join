onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -expand -group CYCLE /tb/DUT/WORD_SIZE
add wave -noupdate -expand -group CYCLE /tb/DUT/WORD_PART
add wave -noupdate -expand -group CYCLE /tb/DUT/MEM_SIZE
add wave -noupdate -expand -group CYCLE /tb/DUT/clock
add wave -noupdate -expand -group CYCLE /tb/DUT/reset
add wave -noupdate -expand -group CYCLE /tb/DUT/data_in
add wave -noupdate -expand -group CYCLE /tb/DUT/valid_in
add wave -noupdate -expand -group CYCLE /tb/DUT/sig
add wave -noupdate -expand -group CYCLE /tb/DUT/full
add wave -noupdate -expand -group CYCLE /tb/DUT/empty
add wave -noupdate -expand -group CYCLE /tb/DUT/word_o
add wave -noupdate -expand -group CYCLE /tb/DUT/buff_o
add wave -noupdate -expand -group CYCLE /tb/DUT/credit
add wave -noupdate -expand -group CYCLE /tb/DUT/r_enable
add wave -noupdate -expand -group WORD_BREAK /tb/DUT/word_break/WORD_IN_SIZE
add wave -noupdate -expand -group WORD_BREAK /tb/DUT/word_break/WORD_OUT_SIZE
add wave -noupdate -expand -group WORD_BREAK /tb/DUT/word_break/clock
add wave -noupdate -expand -group WORD_BREAK /tb/DUT/word_break/reset
add wave -noupdate -expand -group WORD_BREAK /tb/DUT/word_break/data_in
add wave -noupdate -expand -group WORD_BREAK /tb/DUT/word_break/request
add wave -noupdate -expand -group WORD_BREAK /tb/DUT/word_break/in_valid
add wave -noupdate -expand -group WORD_BREAK /tb/DUT/word_break/word_out
add wave -noupdate -expand -group WORD_BREAK /tb/DUT/word_break/credit_out
add wave -noupdate -expand -group WORD_BREAK /tb/DUT/word_break/valid_o
add wave -noupdate -expand -group WORD_BREAK /tb/DUT/word_break/data_int
add wave -noupdate -expand -group WORD_BREAK /tb/DUT/word_break/credit
add wave -noupdate -expand -group WORD_BREAK /tb/DUT/word_break/valid
add wave -noupdate -expand -group BUFF_OUT /tb/DUT/buff_out/MEM_SIZE
add wave -noupdate -expand -group BUFF_OUT /tb/DUT/buff_out/WORD_SIZE
add wave -noupdate -expand -group BUFF_OUT /tb/DUT/buff_out/clock
add wave -noupdate -expand -group BUFF_OUT /tb/DUT/buff_out/reset
add wave -noupdate -expand -group BUFF_OUT /tb/DUT/buff_out/w_enable
add wave -noupdate -expand -group BUFF_OUT /tb/DUT/buff_out/r_enable
add wave -noupdate -expand -group BUFF_OUT /tb/DUT/buff_out/data_in
add wave -noupdate -expand -group BUFF_OUT /tb/DUT/buff_out/data_out
add wave -noupdate -expand -group BUFF_OUT /tb/DUT/buff_out/full
add wave -noupdate -expand -group BUFF_OUT /tb/DUT/buff_out/empty
add wave -noupdate -expand -group BUFF_OUT /tb/DUT/buff_out/w_addr
add wave -noupdate -expand -group BUFF_OUT /tb/DUT/buff_out/r_addr
add wave -noupdate -expand -group BUFF_OUT /tb/DUT/buff_out/full_int
add wave -noupdate -expand -group BUFF_OUT /tb/DUT/buff_out/empty_int
add wave -noupdate -expand -group BUFF_OUT /tb/DUT/buff_out/MEM
add wave -noupdate -expand -group BUFF_OUT /tb/DUT/buff_out/data_out_int
add wave -noupdate -expand -group TX /tb/DUT/tx/sig
add wave -noupdate -expand -group TX /tb/DUT/tx/data
add wave -noupdate -expand -group TX /tb/DUT/tx/valid
add wave -noupdate -expand -group TX /tb/DUT/tx/ready
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {4999646 ns} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits sec
update
WaveRestoreZoom {4999576 ns} {5000023 ns}
