`timescale 1ns/1ps
module mux_tb;

wire Z;
reg  A;
reg  B;
reg S;

MUX2X1 mux(.A(A), .B(B), .S(S), .Z(Z));


 initial begin

 A=1'b0; 
 B=1'b0; 
 S=1'b0; 
 //Z=1'b0;
 #500 $finish;

end

always #40 A=~A;
always #20 B=~B;

always #80 S=~S;


always@(*) 
$monitor("At time = %t,A=%d, B=%d, S=%d , Z = %d", $time,A,B,S,Z);

endmodule 
