`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/01/23 12:50:51
// Design Name: 
// Module Name: counter_mod_m_test
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module counter_mod_m_test(
    input clk,
    input rst_n,
    output wire clk_out
    );

    counter_mod_m_0 counter_mod_9600(
        .clk(clk),
        .rst_n(rst_n),
        .m_out(clk_out)
    );

endmodule
