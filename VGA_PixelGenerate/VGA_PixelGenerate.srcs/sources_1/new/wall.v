`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/02/23 10:20:59
// Design Name: 
// Module Name: wall
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


module wall#(
    parameter MAX_Y = 480,
    parameter MAX_X = 640,
    parameter WALL_LEFT = 32,
    parameter WALL_RIGHT = 35
)(
    input [9:0] pixel_x,
    input [9:0] pixel_y,
    output wire wall_on,
    output wire [2:0] wall_rgb
    );

    assign wall_on = (pixel_x<WALL_RIGHT)&&(pixel_x>WALL_LEFT);
    assign wall_rgb = 3'b001;

endmodule
