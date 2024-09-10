`timescale 1 ns / 1 ps
module HS_tb;
reg x,y;
wire D,B;

HS Test (     // OR write HS Test(x,y,B,D);
        .x(x), 
	.y(y), 
	.D(D), 
	.B(B)
	);
	
initial begin 
	$monitor("Time=%0t: x=%b, y=%b, D=%b, B=%b",$time,x,y,D,B); 
	x=0;y=0;#5;
	x=0;y=1;#5;
	x=1;y=0;#5;
	x=1;y=1;#5;
	end
endmodule
