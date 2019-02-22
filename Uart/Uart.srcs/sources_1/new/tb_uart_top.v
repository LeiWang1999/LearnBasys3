//~ `New testbench
`timescale  1ns / 1ps

module tb_uart_top;

// uart_top Parameters
parameter PERIOD  = 10;


// uart_top Inputs
reg   rxd                                  = 0 ;
reg   clk                                  = 0 ;

// uart_top Outputs
wire  txd                                  ;
wire  [3:0]  test                          ;
reg rst_n;

initial
begin
    forever #(PERIOD/2)  clk=~clk;
end

initial
begin
    #(PERIOD*2) rst_n  =  1;
end


initial
begin
   forever #(PERIOD) rxd = $random();
end

uart_top  u_uart_top (
    .rxd                     ( rxd         ),
    .clk                     ( clk         ),

    .txd                     ( txd         ),
    .test                    ( test  [3:0] )
);

initial
begin

    $finish;
end

endmodule
