-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
-- Date        : Wed Jan 23 12:51:23 2019
-- Host        : princeling-HP-Compaq-Pro-6380-MT running 64-bit Ubuntu 16.04.5 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/princeling/Documents/ElectronicDesign/Fpga-verilog/LearnBasys3/IP_CoreTest/IP_CoreTest.srcs/sources_1/ip/counter_mod_m_0/counter_mod_m_0_sim_netlist.vhdl
-- Design      : counter_mod_m_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity counter_mod_m_0_counter_mod_m is
  port (
    m_out : out STD_LOGIC;
    rst_n : in STD_LOGIC;
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of counter_mod_m_0_counter_mod_m : entity is "counter_mod_m";
end counter_mod_m_0_counter_mod_m;

architecture STRUCTURE of counter_mod_m_0_counter_mod_m is
  signal p_0_in : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \regN[3]_i_1_n_0\ : STD_LOGIC;
  signal \regN_reg__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \m_out__0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \regN[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \regN[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \regN[3]_i_2\ : label is "soft_lutpair0";
begin
\m_out__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \regN_reg__0\(1),
      I1 => \regN_reg__0\(2),
      I2 => \regN_reg__0\(0),
      I3 => \regN_reg__0\(3),
      O => m_out
    );
\regN[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \regN_reg__0\(0),
      O => p_0_in(0)
    );
\regN[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \regN_reg__0\(0),
      I1 => \regN_reg__0\(1),
      O => p_0_in(1)
    );
\regN[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \regN_reg__0\(0),
      I1 => \regN_reg__0\(1),
      I2 => \regN_reg__0\(2),
      O => p_0_in(2)
    );
\regN[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE00FFFF"
    )
        port map (
      I0 => \regN_reg__0\(1),
      I1 => \regN_reg__0\(0),
      I2 => \regN_reg__0\(2),
      I3 => \regN_reg__0\(3),
      I4 => rst_n,
      O => \regN[3]_i_1_n_0\
    );
\regN[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \regN_reg__0\(1),
      I1 => \regN_reg__0\(0),
      I2 => \regN_reg__0\(2),
      I3 => \regN_reg__0\(3),
      O => p_0_in(3)
    );
\regN_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_0_in(0),
      Q => \regN_reg__0\(0),
      R => \regN[3]_i_1_n_0\
    );
\regN_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_0_in(1),
      Q => \regN_reg__0\(1),
      R => \regN[3]_i_1_n_0\
    );
\regN_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_0_in(2),
      Q => \regN_reg__0\(2),
      R => \regN[3]_i_1_n_0\
    );
\regN_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_0_in(3),
      Q => \regN_reg__0\(3),
      R => \regN[3]_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity counter_mod_m_0 is
  port (
    clk : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    m_out : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of counter_mod_m_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of counter_mod_m_0 : entity is "counter_mod_m_0,counter_mod_m,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of counter_mod_m_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of counter_mod_m_0 : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of counter_mod_m_0 : entity is "counter_mod_m,Vivado 2018.2";
end counter_mod_m_0;

architecture STRUCTURE of counter_mod_m_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF clk, FREQ_HZ 100000000, PHASE 0.000";
  attribute X_INTERFACE_INFO of rst_n : signal is "xilinx.com:signal:reset:1.0 rst_n RST";
  attribute X_INTERFACE_PARAMETER of rst_n : signal is "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW";
begin
inst: entity work.counter_mod_m_0_counter_mod_m
     port map (
      clk => clk,
      m_out => m_out,
      rst_n => rst_n
    );
end STRUCTURE;
