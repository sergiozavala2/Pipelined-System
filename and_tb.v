`include "and.v"

module and_tb(); 

reg a, b;
wire c; 

and uut(a, b, c); 

initial 
begin 

	#10; a = 0; b = 0;

	#10; b = 1;

	#10; a = 1; b = 0;

	#10; a = 1; b = 1;

end 
