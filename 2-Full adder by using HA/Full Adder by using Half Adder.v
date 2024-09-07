module HA(
input wire A,B,
output wire C,S
);
assign S=A^B;
assign C=A&B;

endmodule


module FA (
input wire A,B,Cin,
output wire Cout,SUM
);
wire S1,C1,C2;
HA HA1(      //OR write HA HA1(A,B,C1,S1);
.A(A),
.B(B),
.C(C1),
.S(S1)

);


HA HA2(       //OR write HA HA2(S1,Cin,C2,SUM);
.A(S1),
.B(Cin),
.C(C2),
.S(SUM)

);

assign Cout=C1|C2;

endmodule
