module tb;
reg x1,x2,s;
wire f;

mux_2x1 test(
    .x1(x1),
    .x2(x2),
    .s(s),
    .f(f)
	 );
initial 
begin
  $monitor("time=%0t : x1=%b  x2=%b  s=%b ----->>> f=%b",$time,x1,x2,s,f);
  x1=1;x2=0;s=0;
  #20;
  x1=0;x2=1;s=1;
  #20;
  x1=0;x2=1;s=0;
  #20;
  x1=1;x2=0;s=1;
  
end

endmodule
