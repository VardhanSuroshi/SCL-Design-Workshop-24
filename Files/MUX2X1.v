`timescale 1ns/1ps

module MUX2X1(A,B,S,Z);
input A,B, S;
output Z;
//wire temp1, temp2;

/*
not n0(Sb,S);
nand n1(temp1,Sb, A);
nand n2(temp2, S, B);
nand n3(Z, temp1, temp2);
*/

assign Z = ~S&A | S&B;
//assign Z = S ? B : A;

endmodule

