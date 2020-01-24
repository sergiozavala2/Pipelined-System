module and(input a,b, output reg c);

always@(*)

	if (a && b)
		c = 1;
	else 
		c = 0;

endmodule  