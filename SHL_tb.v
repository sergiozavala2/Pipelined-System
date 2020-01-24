`include "SHL.v"
module SHL_tb();
reg [15:0] in;
wire [15:0] out;
SHL  DUT(.in(in),.out(out));

initial
begin 
	#5
	in = 8'b01110111;
	#5;
	in = 8'b11111110;
	#5;
	in = 16'b1010101010101010;
	#5;

end

initial
begin

        $monitor(" in %b, out %b  ", in, out);

end
endmodule
