transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Dypole/Documents/FIFO_Version/newpll.vho}
vcom -93 -work work {C:/Users/Dypole/Documents/FIFO_Version/newpll.vhd}
vlog -vlog01compat -work work +incdir+C:/Users/Dypole/Documents/FIFO_Version/newpll {C:/Users/Dypole/Documents/FIFO_Version/newpll/newpll_0002.v}
vcom -93 -work work {C:/Users/Dypole/Documents/FIFO_Version/writeSideDriver.vhd}
vcom -93 -work work {C:/Users/Dypole/Documents/FIFO_Version/sync_2ff.vhd}
vcom -93 -work work {C:/Users/Dypole/Documents/FIFO_Version/readSideDriver.vhd}
vcom -93 -work work {C:/Users/Dypole/Documents/FIFO_Version/FIFo1.vhd}

