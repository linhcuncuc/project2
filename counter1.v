module counter1(
	input wire clk,rst,
	output reg[3:0] count_1=0,count_2=0
	//output a,b,c,d
);
always@ (posedge clk or negedge rst )
begin
	if (!rst)
	begin
			count_1<=4'b0000;
			count_2<=4'b0000;
	end
	else begin 
				if(count_1 < 4'b1001)
						begin
								count_1 <= count_1 + 4'b0001;
								count_2 <= 4'b0000;
						end
				else	begin
								count_1 <= 4'b0000;
								count_2 <= count_2 + 4'b0001;
						end
		end
end 
/*assign a=count_1[0];
assign b=count_1[1];
assign c=count_1[2];
assign d=count_1[3];
*/
endmodule