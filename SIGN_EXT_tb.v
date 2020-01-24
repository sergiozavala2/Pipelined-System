`include "SIGN_EXT.v"
module SIGN_EXT_tb();
reg [11:0] unex;
wire [15:0] ext;
SIGN_EXT #(.int(11)) DUT(.in(unex),.out(ext));

initial
begin 
	#5;
	unex = 8'b11111111;
	#5;
	unex = 8'b10100100;
	#5;
	unex = 8'b00011111;
	#5;
end

initial
begin
	$dumpvars;
        $display(" unex        ext");
	$monitor("%b %b", unex, ext);
end
endmodule
