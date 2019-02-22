//~ `New testbench
`timescale  1ns / 1ps

module tb_WaterlightLed;

// WaterlightLed Parameters
parameter PERIOD  = 10;


// WaterlightLed Inputs
reg   clk                                  = 0 ;
reg   rst_n                                = 0 ;

// WaterlightLed Outputs
wire  [7:0]  led_array                     ;


initial
begin
    forever #(PERIOD/2)  clk=~clk;
end

initial
begin
    #(PERIOD*2) rst_n  =  1;
end

WaterlightLed  u_WaterlightLed (
    .clk                     ( clk              ),
    .rst_n                   ( rst_n            ),

    .led_array               ( led_array  [7:0] )
);

initial
begin

    $finish;
end

endmodule
