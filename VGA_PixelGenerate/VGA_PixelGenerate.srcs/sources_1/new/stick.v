`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/02/23 10:20:19
// Design Name: 
// Module Name: stick
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


module stick#(
    parameter MAX_Y = 480,
    parameter MAX_X = 640,
    parameter STICK_LEFT = 600,
    parameter STICK_RIGHT = 603,
    parameter STICK_LENTH = 72,
    parameter STICK_UP = MAX_Y/2 - STICK_LENTH/2,
    parameter STICK_DOWN = STICK_UP + STICK_LENTH
)(
    input [9:0] pixel_x,
    input [9:0] pixel_y,
    output wire stick_on,
    output wire [2:0] stick_rgb
    );

    assign stick_on = (pixel_x < STICK_RIGHT)&&(pixel_x > STICK_LEFT)&&(pixel_y > STICK_UP)&&(pixel_y < STICK_DOWN);
    assign stick_rgb = 3'b010;

endmodule
