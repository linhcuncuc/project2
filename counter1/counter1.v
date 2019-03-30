`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:34:31 03/25/2019 
// Design Name: 
// Module Name:    counter1 
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
module counter1(
    input clk,
    input rst,
    output reg [3:0] count_1,
    output reg [3:0]  count_2,
	 output a,
	 output b,
	 output c,
	 output d
    );
//reg [3:0] count_1 = 0;
//reg [3:0] count_2 = 0;
always@ (posedge clk or negedge rst)
begin
	if (!rst)
	begin
		count_1<=4'b0000;
	//	count_2<=4'b0000;
	end
	else 	begin
	if(count_1 < 4'd9) begin
		count_1 <= count_1+4'b0001;
	end
	else begin
		count_1 <= 0;
	end
	end
end 
assign a=count_1[0];
assign b=count_1[1];
assign c=count_1[2];
assign d=count_1[3];

endmodule
