vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xil_defaultlib -64 -incr \
"../../../../IP_CoreTest.srcs/sources_1/ip/counter_mod_m_0/counter_mod_m.v" \
"../../../../IP_CoreTest.srcs/sources_1/ip/counter_mod_m_0/sim/counter_mod_m_0.v" \


vlog -work xil_defaultlib \
"glbl.v"

