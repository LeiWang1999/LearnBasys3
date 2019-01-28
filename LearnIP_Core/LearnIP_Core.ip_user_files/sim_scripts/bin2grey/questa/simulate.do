onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib bin2grey_opt

do {wave.do}

view wave
view structure
view signals

do {bin2grey.udo}

run -all

quit -force
