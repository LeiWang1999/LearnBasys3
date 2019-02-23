`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/02/23 10:49:59
// Design Name: 
// Module Name: top
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


module top(
        input wire clk, rst_n,
        output wire hsync,vsync,
        output wire [2:0] rgb
    );

    wire video_on;
    wire [9:0] pixel_x,pixel_y;
    wire wall_on,stick_on,ball_on;
    wire [2:0] wall_rgb,stick_rgb,ball_rgb;
    wire [2:0]rgb_next;
    reg [2:0] rgb_r;
    wire p_tick;
    // 例化VGA的同步电路
    vga_sync u1_vga_sync(
        .clk(clk),
        .rst_n(rst_n),
        .hsync(hsync),
        .vsync(vsync),
        .pixel_x(pixel_x),
        .pixel_y(pixel_y),
        .video_on(video_on),
        .p_tick(p_tick)
    );

    wall u1_wall(
        .pixel_x(pixel_x),
        .pixel_y(pixel_y),
        .wall_on(wall_on),
        .wall_rgb(wall_rgb)
    );
    
    stick u1_stick(
        .pixel_x(pixel_x),
        .pixel_y(pixel_y),
        .stick_on(stick_on),
        .stick_rgb(stick_rgb)
    );

    ball u1_ball(
        .pixel_x(pixel_x),
        .pixel_y(pixel_y),
        .ball_on(ball_on),
        .ball_rgb(ball_rgb)
    );

    rgb_mux u1_rgb_mux(
        .video_on(video_on),
        .wall_on(wall_on),
        .stick_on(stick_on),
        .ball_on(ball_on),
        .wall_rgb(wall_rgb),
        .stick_rgb(stick_rgb),
        .ball_rgb(ball_rgb),
        .rgb(rgb_next)
    );
    

    // 其实不加也能跑
    always @(posedge clk) begin
        if (p_tick) begin
            rgb_r <= rgb_next;
        end
        else begin
            rgb_r <= rgb_r;
            end
    end 

    assign rgb = rgb_next;

endmodule
