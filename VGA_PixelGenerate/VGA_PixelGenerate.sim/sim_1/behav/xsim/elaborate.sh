#!/bin/bash -f
# ****************************************************************************
# Vivado (TM) v2018.2 (64-bit)
#
# Filename    : elaborate.sh
# Simulator   : Xilinx Vivado Simulator
# Description : Script for elaborating the compiled design
#
# Generated by Vivado on Sat Feb 23 14:01:22 CST 2019
# SW Build 2258646 on Thu Jun 14 20:02:38 MDT 2018
#
# Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
#
# usage: elaborate.sh
#
# ****************************************************************************
ExecStep()
{
"$@"
RETVAL=$?
if [ $RETVAL -ne 0 ]
then
exit $RETVAL
fi
}
ExecStep xelab -wto 355fdf1405d5485e95575a3ec2309835 --incr --debug typical --relax --mt 8 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip --snapshot tb_top_behav xil_defaultlib.tb_top xil_defaultlib.glbl -log elaborate.log