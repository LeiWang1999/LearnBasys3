`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/01/20 17:23:59
// Design Name: 
// Module Name: DigitalTubeDisplay
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


module DigitalTubeDisplay(
    input wire number_A,
    input wire clk,
    input wire rst,
    output wire [2:0] led,
    output wire [3:0] seg,
    output wire [7:0] eight_seg
    );
    
    wire number_A_flag;
    wire  rst_n;
    reg number_A_flag_r;



    assign rst_n = ~rst;

    reg [3:0] led_r = 3'b001;

    // 按键输入A消抖动
    debounce debounce_number_A(
        .clk(clk), .rst_n(rst_n),
        .key_in(number_A) , .key_out(number_A_flag)
    );

   tubeDisplay tubeDisplay_out(
        .clk(clk),
        .eight_seg(eight_seg),
        .data0(led_r),
        .data1(led_r+1),
        .data2(led_r+2),
        .data3(led_r+3),
        .seg0(seg[0]),
        .seg1(seg[1]),
        .seg2(seg[2]),
        .seg3(seg[3]),
        .dp_in(4'b0000)
    );

    always @(posedge clk) begin
      number_A_flag_r <= number_A_flag;
    end

    always @(posedge clk) begin
      if (number_A_flag == 1'b1 && number_A_flag_r == 1'b0) begin
        led_r <= led_r + 1;
      end
    end

    assign led = led_r[2:0];
endmodule
