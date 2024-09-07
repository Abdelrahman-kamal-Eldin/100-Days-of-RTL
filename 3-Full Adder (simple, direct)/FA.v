module FA (
input wire A,B,Cin,
output wire Cout,S
);
assign S=A^B^Cin;
assign Cout=(A&B)|(A&Cin)|(B&Cin);

endmodule
