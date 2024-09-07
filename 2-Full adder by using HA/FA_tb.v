`timescale 1 ns / 1 ps
module FA_tb;
reg A,B,Cin;
wire Cout ,SUM;

FA Test (     // OR write FA Test(A,B,Cin,Cout,SUM);
        .A(A), 
		.B(B), 
		.Cin(Cin), 
		.Cout(Cout),
		.SUM(SUM)
	);
	
initial begin 
$monitor("Time=%0t: A=%b, B=%b, Cin=%b, Cout=%b, SUM=%b",$time,A,B,Cin,Cout,SUM); 
	A=0;B=0;Cin=0;#5;
	A=0;B=0;Cin=1;#5;
	A=0;B=1;Cin=0;#5;
	A=0;B=1;Cin=1;#5;
	A=1;B=0;Cin=0;#5;
	A=1;B=0;Cin=1;#5;
	A=1;B=1;Cin=0;#5;
	A=1;B=1;Cin=1;#5;
end
endmodule
