vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib

vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xil_defaultlib -64 \
"../../../../IP_CoreTest.srcs/sources_1/ip/counter_mod_m_0/counter_mod_m.v" \
"../../../../IP_CoreTest.srcs/sources_1/ip/counter_mod_m_0/sim/counter_mod_m_0.v" \


vlog -work xil_defaultlib \
"glbl.v"

