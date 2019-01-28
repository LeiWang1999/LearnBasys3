vlib work
vlib activehdl

vlib activehdl/xil_defaultlib

vmap xil_defaultlib activehdl/xil_defaultlib

vlog -work xil_defaultlib  -v2k5 \
"../../../../IP_CoreTest.srcs/sources_1/ip/counter_mod_m_0/counter_mod_m.v" \
"../../../../IP_CoreTest.srcs/sources_1/ip/counter_mod_m_0/sim/counter_mod_m_0.v" \


vlog -work xil_defaultlib \
"glbl.v"

