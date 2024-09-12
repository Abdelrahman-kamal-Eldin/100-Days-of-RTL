module FA(
   input wire A,B,Cin,
   output wire Cout,S
);
assign S=A^B^Cin;
assign Cout=(A&B)|(A&Cin)|(B&Cin);
endmodule


module ripple_Adder(
    input wire [3:0] x,y,
    input wire Cin,
    output wire Cout,
    output wire [3:0] S
    
);
wire [3:1] C;

FA FA0(
.A(x[0]),
.B(y[0]),
.Cin(Cin),
.Cout(C1),
.S(S[0])
);

FA FA1(
.A(x[1]),
.B(y[1]),
.Cin(C1),
.Cout(C2),
.S(S[1])
);

FA FA2(
.A(x[2]),
.B(y[2]),
.Cin(C2),
.Cout(C3),
.S(S[2])
);

FA FA3(
.A(x[3]),
.B(y[3]),
.Cin(C3),
.Cout(Cout),
.S(S[3])
);
endmodule
