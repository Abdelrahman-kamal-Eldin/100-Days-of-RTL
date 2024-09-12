module tb;
   reg  [3:0] x,y;
    reg  Cin;
    wire [3:0] S;
    wire Cout ;


    ripple_Adder test (x,y,Cin,Cout,S);
    initial begin
      $monitor("time = %0t : x=%b , y=%b ,Cin=%b =====> Cout=%b,  S=%b ",$time,x,y,Cin,Cout,S);
      Cin=0 ; x=4'b0;y=4'b0;#5;
      x=4'b1111;y=4'b1001;#5;
      x=4'b1010;y=4'b1000;#5;
      x=4'b0111;y=4'b0111;#5;
      x=4'b0000;y=4'b1011;#5;

    end
      
endmodule

