module FS (
input wire x,y,Bin,
output wire Dif,Bout
);
assign Dif=x^y^Bin;
assign Bout=(Bin&y)|(~x&y)|(~x&Bin);

endmodule
