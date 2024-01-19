`timescale 1ns/1ps
module counter (clk,rst,count);
input clk,rst;
output reg [7:0]count;

always@(posedge clk)
	begin
		if(rst) count<=8'b0;
		else begin
			count<=count+1'b1;
	   	end
	end 
endmodule 
