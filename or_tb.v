`include "or.v"

module or_tb();
reg a, b; 
wire c; 

utt( a, b, c);

initial 
begin 

	#10; a = 0; b = 0;

	#10; a = 0; b = 1; 

	#10; a = 1; b = 0; 

	#10; a = 1; b = 1; 

end 

endmodule 