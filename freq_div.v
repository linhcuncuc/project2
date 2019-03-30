module freq_div #(parameter WIDTH_COUNT = 28)(
	input clk,
	input reset_n,
	output reg clk_1hz);
	reg [WIDTH_COUNT-1: 0] counter = 0, counter_nxt = 0, cnt = 0;

	always @(posedge clk or negedge reset_n) begin
		if(!reset_n) begin
			cnt <= 28'd0;
		end
		else begin
			if(cnt < 28'd100000000) begin // CLK == 100MHZ/ 10 == 10MHZ
				cnt <= cnt + 1'd1;
			end
			else begin
				cnt <= 1'd0;
			end
		end
	end
	always @(*) begin
		if(cnt < 28'd50000000) clk_1hz = 1'b0;
		else if(cnt > 28'd50000000) clk_1hz = 1'b1;
	end
endmodule 