// 4-bit counter

`default_nettype none
`timescale 1 ns / 1ns

module counter 
  (
    input clk,
    input rst_n,
    output reg[3:0] counter_out
  );
  
  always @(posedge clk) begin
    if (!rst_n) begin
      counter_out <= 1'b0;
    end
    else begin
      counter_out <= counter_out + 1;
    end
  end
endmodule