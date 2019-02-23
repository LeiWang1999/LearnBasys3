`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/02/23 10:17:12
// Design Name: 
// Module Name: rgb_mux
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


module rgb_mux(
        input wire video_on,
        input wire ball_on, stick_on, wall_on,
        input wire [2:0] ball_rgb, stick_rgb, wall_rgb,
        output wire [2:0] rgb
    );

    reg [2:0] rgb_r;

    always @(*) begin
        if (~video_on) begin
            rgb_r = 3'b000;
        end
        else if (wall_on) begin
            rgb_r = wall_rgb;
        end
        else if (ball_on) begin
            rgb_r = ball_rgb;
        end
        else if (stick_on) begin
            rgb_r = stick_rgb;
        end
        else rgb_r = 3'b110;
    end

    assign rgb = rgb_r;

endmodule
