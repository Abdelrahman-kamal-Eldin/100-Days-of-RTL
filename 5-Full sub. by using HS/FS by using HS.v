module HS (
input wire x,y,   // xis the most significant bit
output wire D,B
);
assign D = x^y;
assign B = ~x&y;

endmodule

module FS (
input wire x,y,Bin,
output wire Dif,Bout
);
wire D1,B1,B2;
HS HS1(      //OR write HS HS1(x,y,D1,B1);
.x(x),
.y(y),
.D(D1),
.B(B1)
);


HS HS2(       //OR write HS HS2(D1,Bin,Dif,B2);
.x(D1),
.y(Bin),
.D(Dif),
.B(B2)

);

assign Bout=B1|B2;

endmodule
