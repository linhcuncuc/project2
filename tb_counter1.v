module tb_counter1();
	reg clk,rst;
	wire [3:0] count_1,count_2;
	//wire a,b,c,d;
	
	counter1 counter1(
	.clk(clk),
	.rst(rst),
	.count_1(count_1),
	.count_2(count_2)
	/*.a(a),
	.b(b),
	.c(c),
	.d(d)*/
	);
	
	initial begin
	#10 rst=1;
	#10 clk=1;
	#10 rst=0;
end
always #5 clk=~clk;
endmodule