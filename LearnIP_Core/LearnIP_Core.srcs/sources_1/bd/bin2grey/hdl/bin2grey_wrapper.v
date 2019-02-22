//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
//Date        : Tue Jan 22 12:17:27 2019
//Host        : princeling-HP-Compaq-Pro-6380-MT running 64-bit Ubuntu 16.04.5 LTS
//Command     : generate_target bin2grey_wrapper.bd
//Design      : bin2grey_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module bin2grey_wrapper
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

  wire Bin0;
  wire Bin1;
  wire Bin2;
  wire Bin3;
  wire GND;
  wire Gray0;
  wire Gray1;
  wire Gray2;
  wire Gray3;

  bin2grey bin2grey_i
       (.Bin0(Bin0),
        .Bin1(Bin1),
        .Bin2(Bin2),
        .Bin3(Bin3),
        .GND(GND),
        .Gray0(Gray0),
        .Gray1(Gray1),
        .Gray2(Gray2),
        .Gray3(Gray3));
endmodule
