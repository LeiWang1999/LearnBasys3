//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
//Date        : Tue Jan 22 12:17:27 2019
//Host        : princeling-HP-Compaq-Pro-6380-MT running 64-bit Ubuntu 16.04.5 LTS
//Command     : generate_target bin2grey.bd
//Design      : bin2grey
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "bin2grey,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=bin2grey,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "bin2grey.hwdef" *) 
module bin2grey
   (Bin0,
    Bin1,
    Bin2,
    Bin3,
    GND,
    Gray0,
    Gray1,
    Gray2,
    Gray3);
  input Bin0;
  input Bin1;
  input Bin2;
  input Bin3;
  input GND;
  output Gray0;
  output Gray1;
  output Gray2;
  output Gray3;

  wire Bin0_1;
  wire Bin1_1;
  wire Bin2_1;
  wire Bin3_1;
  wire GND_1;
  wire four_2_input_xor_gate_0_y1;
  wire four_2_input_xor_gate_0_y2;
  wire four_2_input_xor_gate_0_y3;
  wire four_2_input_xor_gate_0_y4;

  assign Bin0_1 = Bin0;
  assign Bin1_1 = Bin1;
  assign Bin2_1 = Bin2;
  assign Bin3_1 = Bin3;
  assign GND_1 = GND;
  assign Gray0 = four_2_input_xor_gate_0_y1;
  assign Gray1 = four_2_input_xor_gate_0_y2;
  assign Gray2 = four_2_input_xor_gate_0_y3;
  assign Gray3 = four_2_input_xor_gate_0_y4;
  bin2grey_four_2_input_xor_gate_0_0 four_2_input_xor_gate_0
       (.a1(Bin0_1),
        .a2(Bin1_1),
        .a3(Bin2_1),
        .a4(Bin3_1),
        .b1(Bin1_1),
        .b2(Bin2_1),
        .b3(Bin3_1),
        .b4(GND_1),
        .y1(four_2_input_xor_gate_0_y1),
        .y2(four_2_input_xor_gate_0_y2),
        .y3(four_2_input_xor_gate_0_y3),
        .y4(four_2_input_xor_gate_0_y4));
endmodule
