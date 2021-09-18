// Testbench for D flipflop

`default_nettype none
`timescale 1 ns / 1ns

module tb_dff;
  
  reg clk;
  reg rst_n;
  reg d;
  wire q;
  wire qb;
  
  
  dff UUT(.clk(clk), .rst_n(rst_n), .d(d), .q(q), .qb(qb));
  
  initial begin
    clk = 0;
    forever #5 clk = ~clk;
  end
  
  initial begin
    $dumpfile("dump.vcd"); $dumpvars;
    
    // Reset 
    clk = 0;
    rst_n = 1;
    d = 1'bx;
    display;
    #10
    
    // Release reset
    d = 1;
    rst_n = 0;
    display;
    
    // Toggle clk
    clk = 1;
    display;
    #100
    $finish;
  end 
  
  task display;
    #1 $display("d:%0h, q:%0h, qb:%0h",
      d, q, qb);
  endtask
  
endmodule