`timescale 1 ns / 1 ps
module HS_tb;
reg x,y;
wire B,D;

HS Test (     // OR write HS Test(x,y,B,D);
        .x(x), 
		.y(y), 
		.B(B), 
		.D(D)
	);
	
initial begin 
$monitor("Time=%0t: x=%b, y=%b, B=%b, D=%b",$time,x,y,B,D); 
	x=0;y=0;#5;
	x=0;y=1;#5;
	x=1;y=0;#5;
	x=1;y=1;#5;
	end
endmodule
