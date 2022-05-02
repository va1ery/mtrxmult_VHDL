onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+dpram1024x16 -L xpm -L blk_mem_gen_v8_4_4 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.dpram1024x16 xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {dpram1024x16.udo}

run -all

endsim

quit -force
