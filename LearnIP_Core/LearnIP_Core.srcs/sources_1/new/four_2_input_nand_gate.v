`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/01/22 11:32:22
// Design Name: 
// Module Name: four_2_input_nand_gate
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


module four_2_input_nand_gate#(
    parameter Delay = 0
)(
    input wire A1,B1,A2,B2,A3,B3,A4,B4,
    output wire Y1,Y2,Y3,Y4
    );

    nand #Delay (Y1, A1, B1);
    nand #Delay (Y2, A2, B2);
    nand #Delay (Y3, A3, B3);
    nand #Delay (Y4, A4, B4);

endmodule
