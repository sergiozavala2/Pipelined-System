`include "ZERO_EXT.v"
module ZERO_EXT_tb ();
reg [7:0] unex;
wire [15:0] ext;
ZERO_EXT  DUT(.in(unex),.out(ext));

initial
begin 
	#5;
	unex = 8'b11111111;
	#5;
	unex = 8'b01110111;
	#5;
	unex = 8'b10101010;
end

initial
begin

    $dumpvars;	
    $display("unex     ext");
    $monitor("%b %b", unex, ext);
end
endmodule
