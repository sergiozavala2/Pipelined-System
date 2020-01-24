module compare(input[15:0] op1, R15, input [1:0] branchOp, output reg [1:0] result);

	always@(*)

	begin 
 

			if( op1 > R15) 
			begin 
				assign result = 4'b0100; 
			end 

			else if ( op1 < R15)
			begin 
				assign result = 4'b0101; 
			end 

			else if( op1 == R15)
			begin 
				assign result = 4'0110;
			end 

end

endmodule 
