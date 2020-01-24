module alu(input signed [15:0] a,b, input [3:0] function, 
				output signed [15:0] out);

always(*)
begin 

		case(function)

			//signed addition
			4'b0000:begin 
				assing out = a + b; 
			end

			//signed subtraction	
			4'b001:begin
				assign out = a - b;
			end

			//signed multiplication
			4'b0100:begin 
				assign out = a * b;
			end

			//signed division
			4'b0101:begin 
				assign out = a / b;
				assing r15 = a % b; 
			end 

	endmodule 