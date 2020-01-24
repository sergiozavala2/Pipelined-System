module SIGN_EXT ( in, out );
parameter int = 8;
input [int - 1:0] in;
output reg [15:0] out;

always@(*)

out = {{(16 - int){in[int - 1]}}, in };

endmodule

