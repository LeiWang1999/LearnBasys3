// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
// Date        : Wed Jan 23 12:51:23 2019
// Host        : princeling-HP-Compaq-Pro-6380-MT running 64-bit Ubuntu 16.04.5 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ counter_mod_m_0_sim_netlist.v
// Design      : counter_mod_m_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_counter_mod_m
   (m_out,
    rst_n,
    clk);
  output m_out;
  input rst_n;
  input clk;

  wire clk;
  wire m_out;
  wire [3:0]p_0_in;
  wire \regN[3]_i_1_n_0 ;
  wire [3:0]regN_reg__0;
  wire rst_n;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    m_out__0
       (.I0(regN_reg__0[1]),
        .I1(regN_reg__0[2]),
        .I2(regN_reg__0[0]),
        .I3(regN_reg__0[3]),
        .O(m_out));
  LUT1 #(
    .INIT(2'h1)) 
    \regN[0]_i_1 
       (.I0(regN_reg__0[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \regN[1]_i_1 
       (.I0(regN_reg__0[0]),
        .I1(regN_reg__0[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \regN[2]_i_1 
       (.I0(regN_reg__0[0]),
        .I1(regN_reg__0[1]),
        .I2(regN_reg__0[2]),
        .O(p_0_in[2]));
  LUT5 #(
    .INIT(32'hFE00FFFF)) 
    \regN[3]_i_1 
       (.I0(regN_reg__0[1]),
        .I1(regN_reg__0[0]),
        .I2(regN_reg__0[2]),
        .I3(regN_reg__0[3]),
        .I4(rst_n),
        .O(\regN[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \regN[3]_i_2 
       (.I0(regN_reg__0[1]),
        .I1(regN_reg__0[0]),
        .I2(regN_reg__0[2]),
        .I3(regN_reg__0[3]),
        .O(p_0_in[3]));
  FDRE \regN_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[0]),
        .Q(regN_reg__0[0]),
        .R(\regN[3]_i_1_n_0 ));
  FDRE \regN_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[1]),
        .Q(regN_reg__0[1]),
        .R(\regN[3]_i_1_n_0 ));
  FDRE \regN_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[2]),
        .Q(regN_reg__0[2]),
        .R(\regN[3]_i_1_n_0 ));
  FDRE \regN_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[3]),
        .Q(regN_reg__0[3]),
        .R(\regN[3]_i_1_n_0 ));
endmodule

(* CHECK_LICENSE_TYPE = "counter_mod_m_0,counter_mod_m,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "counter_mod_m,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk,
    rst_n,
    m_out);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF clk, FREQ_HZ 100000000, PHASE 0.000" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst_n RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW" *) input rst_n;
  output m_out;

  wire clk;
  wire m_out;
  wire rst_n;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_counter_mod_m inst
       (.clk(clk),
        .m_out(m_out),
        .rst_n(rst_n));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
