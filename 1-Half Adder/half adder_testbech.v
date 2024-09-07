`timescale 1ns / 1ps
module tb;
reg A,B;
wire C,S;
HA test(
.A(A),
.B(B),
.C(C),
.S(S)

);
initial begin
  $monitor("Time=%t: A=%b ,B=%b, C=%b,S=%b",$time,A,B,C,S);
A=0;B=0;#5;
A=0;B=1;#5;
A=1;B=0;#5;
A=1;B=1;#5;
end
endmodule
