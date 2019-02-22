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
        input wire clk,
        input wire rst,
        input wire rxd,
        output wire led,
        output wire txd,
        output wire [7:0]test
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
    
    //--------------------hello state declaration----------
    localparam  hello_h = 5'b0_0001,
                hello_e = 5'b0_0010,
                hello_la = 5'b0_0100,
                hello_lb = 5'b0_1000,
                hello_o = 5'b1_0000;
    
    wire rst_n;
    wire clk_9600;
//    wire clk_1200;
    wire [7:0] data_in;
    reg [7:0] data_out;
    wire receive_ack;
//    wire hello_ack;
    reg [4:0] current_state, next_state;
    reg [2:0]led_r;
    wire transmit_done;
    reg hello_ack;
    reg [4:0] hello_count = 0;
//    reg [7:0] data_in_r;
    assign rst_n = ~rst;

    initial led_r = 0;

    counter_mod_m #(.M(Div_Num+1), .N(20))counter_mod_9600(
        .clk(clk),
        .rst_n(rst_n),
        .m_out(clk_9600)
    );

    uart_rx u1_uart_rx(
        .clk(clk_9600),
        .rxd(rxd),
        .data_i(data_in),
        .receive_ack(receive_ack)
    );

    uart_tx u1_uart_tx(
        .txd(txd),
        .clk(clk_9600),
        .rst(rst_n),
        .data_o(data_out),
        .receive_ack(hello_ack),
        .transmit_done(transmit_done)
    );


    always @(posedge clk_9600 or negedge rst_n) begin       // 必须使用clk_9600 因为对于 receive_ack 的脉冲宽度，由波特率决定了。
        if(!rst_n) begin
            current_state <= check_h;
        end
        else begin
            current_state <= next_state;
        end
    end

    always @(*) begin
        next_state = current_state;
        case (current_state)
            check_h:begin
                if (receive_ack) begin
                    if (data_in == "h") begin
                        next_state = check_e;
                    end
                    else begin
                        next_state = check_h;
                    end
                    end
                else next_state = current_state;
            end
            check_e:begin
                if (receive_ack)    begin
                    if(data_in == "e")begin
                        next_state = check_la;
                    end
                    else begin
                        next_state = check_h;
                    end
                end
                else next_state = current_state;
            end
            check_la:begin
                if (receive_ack) begin
                    if (data_in == "l") begin
                    next_state = check_lb;
                    end
                    else begin
                    next_state = check_h;
                    end
                end
                else next_state = current_state;        
            end
            check_lb:begin
                if (receive_ack) begin
                    if (data_in == "l") begin
                    next_state = check_o;
                    end
                    else begin
                    next_state = check_h;
                    end
                end
                else next_state = current_state;
            end
            check_o:begin
                if (receive_ack) begin
                next_state = check_h;
                end
                else next_state = current_state;
            end
          default: next_state = check_h;
        endcase
    end

    always @(posedge clk_9600) begin
        if(receive_ack) begin
        if ((current_state == check_o) && (data_in == "o")) begin
            led_r <= led_r + 1;
        end
        else begin
          led_r <= led_r;
        end
        end
        else led_r <= led_r;
    end

    always @(posedge clk_9600) begin
      if (receive_ack) begin
            if ((current_state == check_o) && (data_in == "o")) begin
            hello_ack <= 1'b1;
        end
      end
      else hello_ack <= hello_ack;
      if (hello_count == 17) begin          // 17 will change when string number change.
            hello_ack <= 0;
      end
    end


    always @(posedge clk_9600) begin
        if (hello_ack) begin
        if (transmit_done) begin
            hello_count <= hello_count + 1;
        end
        else begin
            hello_count <= hello_count;
        end
        end
        else hello_count <= 0;
    end


    always @(hello_count) begin
            case (hello_count)
            1:  data_out = "H";
            2:  data_out = "e";
            3:  data_out = "l";
            4:  data_out = "l";
            5:  data_out = "o";
            6:  data_out = ","; 
            7:  data_out = "P";
            8:  data_out = "r";
            9:  data_out = "i";
            10: data_out = "n";
            11: data_out = "c";
            12: data_out = "e";
            13: data_out = "l";
            14: data_out = "i";
            15: data_out = "n";
            16: data_out = "g";
            default: data_out = "~";
            endcase
    end


    assign led = led_r[0];
    assign test[2:0] = led_r;
    assign test[7:5] = test[2:0];
endmodule
