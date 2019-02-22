`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/01/28 16:30:09
// Design Name: 
// Module Name: vga_sync
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


module vga_sync #(
    parameter   HD = 640,   //水平显示区域 
                HF = 48,    //水平扫描左边界
                HB = 16,    //水平扫描右边界
                HR = 96,    //水平折回区
//-----------------------------分割水平与扫描----------------
                VD = 480,   //垂直显示区域
                VF = 10,    //垂直扫描顶部边界
                VB = 33,    //垂直扫描底部边界
                VR = 2      //垂直折回区
)(
        input wire clk,rst_n,
        output wire hsync,vsync,video_on,p_tick,
        output wire [9:0] pixel_x,pixel_y
    );  // VGA 640 X 480
    /*------------------------ in and out ports description ----------------
          clk 输入100Mhz时钟
            rst_n 复位
            hsync h:horizontal 行同步信号
            vsync v:vertical 垂直同步信号
            video_on 显示使能
            p_tick 经过分频后与显示器适配的时钟, 这里取 25Mhz
            pixel_x,pixel_y  像素点的坐标        对显示器，左上角为00 右下角为左边的边界, 如 [639,479]
    */

    //------------------------sync count----------------------------------
    reg [9:0] pixel_x_count,pixel_y_count; // counter which is assigned to hsync and vsync
    reg [9:0] pixel_x_count_next,pixel_y_count_next; // two counter's next state


    //------------------------ output ----------------------------------
    reg hsync_r, vsync_r;
    wire hsync_r_next, vsync_r_next;

    //------------------------status signal--------------------------------
    wire h_end; //horize scan end
    wire v_end; // vertical scan end

    wire p_tick_w;  // same as p_tick
    //--------------------p_tick clk generate --------------  100 Mhz  M = 4 N = 2------------------
    counter_mod_m #(.M(4), .N(2)) counter_mod_p_tick(
        .clk(clk),
        .rst_n(rst_n),
        .m_out(p_tick_w)
    );


    //--------------------main state machine-----------------
    always @(posedge clk or negedge rst_n) begin
      if (!rst_n) begin
            pixel_x_count <= 0;
            pixel_y_count <= 0;
            hsync_r <= 0;
            vsync_r <= 0;
      end
      else begin
            pixel_x_count <= pixel_x_count_next;
            pixel_y_count <= pixel_y_count_next;
            hsync_r <= hsync_r_next;
            vsync_r <= vsync_r_next;
      end
    end

    //--------------------- hsync scan end signal -----------
    assign h_end = (pixel_x_count == (HB+HD+HF+HR-1));            // probably 799 in this program
    assign v_end = (pixel_y_count == (VB+VD+VF+VR-1));            // probably 524 in this program


    //-----------------------
        //--------------------- horize scan next_state logic -----------------
    always @(*) begin
        if (p_tick_w) begin     // in my opnion the judgment for p_tick_w is excess 
          if (h_end) begin
            pixel_x_count_next = 0;
          end
          else pixel_x_count_next = pixel_x_count + 1;
        end
        else pixel_x_count_next = pixel_x_count;
    end
        //--------------------- vertical scan next_state logic -----------------
    always @(*) begin
        if (p_tick_w && h_end) begin
          if (v_end) begin
            pixel_y_count_next = 0;
          end
          else pixel_y_count_next = pixel_y_count + 1;
        end
        else pixel_y_count_next = pixel_y_count;
    end

    //-------------------- output ---------------------------------------------
    assign hsync_r_next = ((pixel_x_count>=(HD+HB))&&(pixel_x_count <= (HD+HB+HR-1)));
    assign vsync_r_next = ((pixel_y_count>=(VD+VB))&&(pixel_y_count <= (VD+VB+VR-1)));


    //--------------------- port connection -----------------------------------
    assign video_on = ((pixel_x_count<HD)&&(pixel_y_count<VD));
    assign hsync = hsync_r;
    assign vsync = vsync_r;
    assign pixel_x = pixel_x_count;
    assign pixel_y = pixel_y_count;
    assign p_tick = p_tick_w;

endmodule
