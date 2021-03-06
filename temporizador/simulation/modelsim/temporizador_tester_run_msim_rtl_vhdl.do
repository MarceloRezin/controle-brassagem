transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/home/marcelo-note/controle-brassagem/memoria_rampa/memoria_rampa.vhd}
vcom -93 -work work {/home/marcelo-note/controle-brassagem/sete_seg_display/sete_seg_display.vhd}
vcom -93 -work work {/home/marcelo-note/controle-brassagem/divisor_clock/divisor_clock.vhd}
vcom -93 -work work {/home/marcelo-note/controle-brassagem/temporizador/temporizador_tester.vhd}
vcom -93 -work work {/home/marcelo-note/controle-brassagem/temporizador/temporizador.vhd}

vcom -93 -work work {/home/marcelo-note/controle-brassagem/temporizador/temporizador_tester_tb.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L fiftyfivenm -L rtl_work -L work -voptargs="+acc"  temporizador_tester_tb

add wave *
view structure
view signals
run 5000 ms
