`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/02/24 13:13:06
// Design Name: 
// Module Name: pong_graph_animate
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


module pong_graph_animate(
        input wire clk,reset,
        input wire video_on,
        input wire [1:0] btn,
        input wire [9:0] pixel_x,pixel_y,
        output reg [2:0] graph_rgb
    );

    // 常数与信号声明
    // X和Y的起始值从(0，0)到(639,479)

    localparam MAX_X = 640;
    localparam MAX_Y = 480;
    wire refr_tick;

    //-----------------------------
    // 垂直竖条墙的生成
    localparam WALL_LEFT = 32;
    localparam WALL_RIGHT = 35;

    //-----------------------------
    // 右侧竖条棒
    // 棒左右边界
    localparam STICK_LEFT = 600;
    localparam STICK_RIGHT = 603;
    // 棒的上下边界
    wire [9:0] stick_up,stick_down;
    localparam STICK_LENTH = 72;
    // 棒的y轴跟踪器
    reg [9:0] stick_reg,stick_next;
    // 当有按键按下时移动的数目
    localparam STICK_MOV = 4;
    //----------------------------
    // 矩形球
    //----------------------------
    localparam BALL_LENTH = 8;
    //----------------------------
    // 矩形球左右边界
    //----------------------------
    wire [9:0] ball_left, ball_right;
    // 矩形球上下边界
    wire [9:0] ;


endmodule
