// D flipflop 

`default_nettype none
`timescale 1 ns / 1ns

module dff 
  (
    input clk,
  	input rst_n,
   	input d,
    output reg q,
    output reg qb
  );
  
  assign qb = ~q;
  
  always @(posedge clk or posedge rst_n) begin
    if (rst_n) begin
      // Async reset when reset goes high
      q <= 1'b0;
    end
    else begin
      // Assign D to Q on positive clock edge
      q <= d;
    end
  end
endmodule