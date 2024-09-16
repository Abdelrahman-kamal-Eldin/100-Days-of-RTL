module mux_2x1 (
    input wire x1,x2,s,
    output reg f
);

always @(*) // or always@(x1,x2,s)  always@(x1 or x2 or s)
begin
 /* if (s)            
  begin                              
      f=x2; 
  end
  
  else 
  begin
      f=x1;
  end*/
  case(s)
1'b0:f=x1;
1'b1:f=x2;
default:f=0;
endcase

end

endmodule
