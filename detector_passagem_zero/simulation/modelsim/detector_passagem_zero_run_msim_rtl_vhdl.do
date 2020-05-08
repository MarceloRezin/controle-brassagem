transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/home/marcelo-note/controle-brassagem/divisor_clock/divisor_clock.vhd}
vcom -93 -work work {/home/marcelo-note/controle-brassagem/sete_seg_display/sete_seg_display.vhd}
vcom -93 -work work {/home/marcelo-note/controle-brassagem/detector_passagem_zero/detector_passagem_zero.vhd}

vcom -93 -work work {/home/marcelo-note/controle-brassagem/detector_passagem_zero/detector_passagem_zero_tb.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L fiftyfivenm -L rtl_work -L work -voptargs="+acc"  detector_passagem_zero_tb

add wave *
view structure
view signals
run 2 sec
