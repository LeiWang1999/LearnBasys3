// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
// Date        : Wed Jan 23 12:51:23 2019
// Host        : princeling-HP-Compaq-Pro-6380-MT running 64-bit Ubuntu 16.04.5 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/princeling/Documents/ElectronicDesign/Fpga-verilog/LearnBasys3/IP_CoreTest/IP_CoreTest.srcs/sources_1/ip/counter_mod_m_0/counter_mod_m_0_stub.v
// Design      : counter_mod_m_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "counter_mod_m,Vivado 2018.2" *)
module counter_mod_m_0(clk, rst_n, m_out)
/* synthesis syn_black_box black_box_pad_pin="clk,rst_n,m_out" */;
  input clk;
  input rst_n;
  output m_out;
endmodule
