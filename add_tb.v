`include "add.v"

module add_tb();

	reg[15:0] a, b;
	wire [15:0] result;

	add uut(a,b,c);

	initial 
	begin 
		$monitor("a = %b, b = %b, result %b", a, b, result);
	end 

	initial 
	begin 
		#10; a= 6; b = 64;
		#10; a= 7; b = 128;
		#10; a= 8; b = 256;
		#10; $finish;
	end 

endmodule 
