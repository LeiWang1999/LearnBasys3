`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/02/23 10:18:38
// Design Name: 
// Module Name: ball
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


module ball#(
    parameter MAX_Y = 480,
    parameter MAX_X = 640,
    parameter BALL_LENTH = 24,
    parameter BALL_LEFT = MAX_X/2 - BALL_LENTH/2,
    parameter BALL_RIGHT = BALL_LEFT + BALL_LENTH,
    parameter BALL_UP = MAX_Y/2 - BALL_LENTH/2,
    parameter BALL_DOWN = BALL_UP + BALL_LENTH
)(
    input [9:0] pixel_x,
    input [9:0] pixel_y,
    output wire ball_on,
    output wire [2:0] ball_rgb
    );

    assign ball_on = (pixel_x < BALL_RIGHT)&&(pixel_x > BALL_LEFT)&&(pixel_y > BALL_UP)&&(pixel_y < BALL_DOWN);
    assign ball_rgb = 3'b100;

endmodule
