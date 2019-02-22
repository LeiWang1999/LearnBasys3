-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
-- Date        : Tue Jan 22 12:18:26 2019
-- Host        : princeling-HP-Compaq-Pro-6380-MT running 64-bit Ubuntu 16.04.5 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/princeling/Documents/ElectronicDesign/Fpga-verilog/LearnBasys3/LearnIP_Core/LearnIP_Core.srcs/sources_1/bd/bin2grey/ip/bin2grey_four_2_input_xor_gate_0_0/bin2grey_four_2_input_xor_gate_0_0_stub.vhdl
-- Design      : bin2grey_four_2_input_xor_gate_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity bin2grey_four_2_input_xor_gate_0_0 is
  Port ( 
    a1 : in STD_LOGIC;
    b1 : in STD_LOGIC;
    a2 : in STD_LOGIC;
    b2 : in STD_LOGIC;
    a3 : in STD_LOGIC;
    b3 : in STD_LOGIC;
    a4 : in STD_LOGIC;
    b4 : in STD_LOGIC;
    y1 : out STD_LOGIC;
    y2 : out STD_LOGIC;
    y3 : out STD_LOGIC;
    y4 : out STD_LOGIC
  );

end bin2grey_four_2_input_xor_gate_0_0;

architecture stub of bin2grey_four_2_input_xor_gate_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "a1,b1,a2,b2,a3,b3,a4,b4,y1,y2,y3,y4";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "four_2_input_xor_gate,Vivado 2018.2";
begin
end;
