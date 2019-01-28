`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/01/24 16:17:48
// Design Name: 
// Module Name: hellobasys3
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


module hellobasys3(
        output led
    );
    
    //------------------state declaration-------------
    localparam  check_h = 5'b0_0001,
                check_e = 5'b0_0010,
                check_la = 5'b0_0100,
                check_lb = 5'b0_1000,
                check_o = 5'b1_0000;
    
    //------------------uart constant declaration----------
    localparam  Baud_Rate = 9600,
                Div_Num = 'd100_000_000 / Baud_Rate;
    
//---------------------------------------------------------------------------
    reg receive_ack;
    reg rst_n;
    reg [4:0] current_state,next_state;
    reg [7:0] data_in;
    reg led_r = 0;
    reg clk = 0 ;
    initial begin
      receive_ack = 1;
      rst_n = 1;
    end

    initial begin
      forever #100 clk <= ~clk;
    end

    initial begin
     forever begin
      #300 data_in <= "h";
      #400 data_in <= "e";
      #500 data_in <= "l";
      #300 data_in <= "l";
      #300 data_in <= "o";
      end
    end






//-----------------------------------------------------------------------------


    always @(posedge clk or negedge rst_n) begin
        if(!rst_n) begin
            current_state <= check_h;
        end
        else if(receive_ack) begin
            current_state <= next_state;
        end
        else begin
            current_state <= current_state;
        end
    end

    always @(data_in) begin
        next_state = current_state;
        if(receive_ack)
        case (current_state)
            check_h:begin
              if (data_in == "h") begin
                next_state = check_e;
              end
              else begin
                next_state = check_h;
              end
            end
            check_e:begin
              if(data_in == "e")begin
                next_state = check_la;
              end
              else begin
                next_state = check_h;
              end
            end
            check_la:begin
                if (data_in == "l") begin
                  next_state = check_lb;
                end
                else begin
                  next_state = check_h;
                end        
            end
            check_lb:begin
                if (data_in == "l") begin
                  next_state = check_o;
                end
                else begin
                  next_state = check_h;
                end
            end
            check_o:begin
                next_state = check_h;
            end

          default: next_state = check_h;
        endcase
    end

    always @(*) begin
        if ((current_state == check_o) && (data_in == "o")) begin
            led_r = ~led_r;
        end
        else begin
          led_r = led_r;
        end
    end


    assign led = led_r;

endmodule
