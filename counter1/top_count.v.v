`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:48:36 03/25/2019 
// Design Name: 
// Module Name:    top_count 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module top_count(
    input clk,
    input rst,
    output count_1,
    output count_2,
	 output a,
	 output b,
	 output c,
	 output d
	 );
  freq_div freq_div (
  .clk (clk),
  .reset_n(rst),
  .clk_1hz (clk_1hz));
   counter1 counter1 (
	.clk(clk_1hz),
	.rst(rst),
	.a(a),
	.b(b),
	.c(c),
	.d(d),
	.count_1(count_1),
	.count_2(count_2));

endmodule
