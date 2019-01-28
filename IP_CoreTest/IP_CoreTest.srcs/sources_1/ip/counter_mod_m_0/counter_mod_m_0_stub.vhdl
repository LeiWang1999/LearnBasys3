-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
-- Date        : Wed Jan 23 12:51:23 2019
-- Host        : princeling-HP-Compaq-Pro-6380-MT running 64-bit Ubuntu 16.04.5 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/princeling/Documents/ElectronicDesign/Fpga-verilog/LearnBasys3/IP_CoreTest/IP_CoreTest.srcs/sources_1/ip/counter_mod_m_0/counter_mod_m_0_stub.vhdl
-- Design      : counter_mod_m_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity counter_mod_m_0 is
  Port ( 
    clk : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    m_out : out STD_LOGIC
  );

end counter_mod_m_0;

architecture stub of counter_mod_m_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,rst_n,m_out";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "counter_mod_m,Vivado 2018.2";
begin
end;
