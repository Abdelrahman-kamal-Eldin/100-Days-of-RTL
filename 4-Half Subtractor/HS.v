module HS (
input wire x,y,
output wire B,D
);
assign D = x^y;
assign B = ~x&y;

endmodule
