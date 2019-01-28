vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xil_defaultlib -64 -incr \
"../../../bd/bin2grey/ipshared/fb88/src/four_2_input_xor_gate.v" \
"../../../bd/bin2grey/ip/bin2grey_four_2_input_xor_gate_0_0/sim/bin2grey_four_2_input_xor_gate_0_0.v" \
"../../../bd/bin2grey/sim/bin2grey.v" \


vlog -work xil_defaultlib \
"glbl.v"

