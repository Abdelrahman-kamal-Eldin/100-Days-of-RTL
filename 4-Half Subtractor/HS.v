module HS (
input wire x,y,
output wire D,B
);
assign D = x^y;
assign B = ~x&y;

endmodule
