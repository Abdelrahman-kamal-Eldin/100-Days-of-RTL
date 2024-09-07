module HA(
input wire A,B,
output wire C,S
);
assign S=A^B;
assign C=A&B;

endmodule
