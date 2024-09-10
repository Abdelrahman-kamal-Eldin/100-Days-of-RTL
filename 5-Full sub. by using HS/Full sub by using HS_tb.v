`timescale 1 ns / 1 ps
module FS_tb;
reg x,y,Bin;
wire Dif ,Bout;

FS Test (
        .x(x), 
		.y(y), 
		.Bin(Bin), 
		.Dif(Dif),
		.Bout(Bout) 

	);
	
initial begin 
$monitor("Time=%0t: x=%b, y=%b, Bin=%b, Dif=%b, Bout=%b",$time,x,y,Bin,Dif,Bout);
	x=0;y=0;Bin=0;#5;
	x=0;y=0;Bin=1;#5;
	x=0;y=1;Bin=0;#5;
	x=0;y=1;Bin=1;#5;
	x=1;y=0;Bin=0;#5;
	x=1;y=0;Bin=1;#5;
	x=1;y=1;Bin=0;#5;
	x=1;y=1;Bin=1;#5;
end
endmodule
