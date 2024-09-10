module HS (
input wire x,y, // X is the most significant bit
output wire D,B
);
assign D = x^y;
assign B = ~x&y;

endmodule
