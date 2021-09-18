// Testbench of 4-bit counter

`default_nettype none
`timescale 1 ns / 1ns

module tb_counter;
  
  reg clk;
  reg rst_n;
  wire[3:0] counter_out;
  
  counter UUT(.clk(clk), .rst_n(rst_n), .counter_out(counter_out));
  
  initial begin
    clk = 0;
    forever #5 clk = ~clk;
  end
  
  initial begin
    $dumpfile("dump.vcd"); $dumpvars;
    rst_n = 0;
    #20 rst_n = 1;
    #80 rst_n = 0;
    #50 rst_n = 1;
    
    #20 
    $finish;
  end
endmodule