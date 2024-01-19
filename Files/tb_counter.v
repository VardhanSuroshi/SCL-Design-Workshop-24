`timescale 1ns/1ps
module tb_counter;
 wire [7:0]count;
 reg clk,rst;

initial begin
clk<=0;
rst<=0;
rst<=1; #20;
rst<=0;
end

initial $sdf_annotate( "delay.sdf",tb_counter.counter1, "sdf.log");
initial $sdf_annotate( "counter.sdf",tb_counter.counter1, "sdf1.log");
counter counter1(.clk(clk), .rst(rst) ,.count(count));

always #5 clk=~clk;

initial $monitor("time=%t, count=%b , clk=%b rst=%b",$time,count,clk,rst);
initial #2000 $finish;
endmodule
