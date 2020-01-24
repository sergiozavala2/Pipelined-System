module REG_FWD( fetch_op1, fetch_op2, decodeOp1, decodeOp2, 
		ex_memop2, mem_wop2, branch, m_wregwrite, 
		exRegW, exReg14w, memReg14w, alu1, alu2, cmpsrc);

input [3:0] decodeOp1, decodeOp2, fetch_op1, fetch_op2, mem_wop2, ex_memop2;
input branch,exRegW, m_wregwrite, memReg14w, exReg14w;
output reg [1:0] cmpsrc;
output reg [2:0] alu1, alu2;

always@(*)
begin
	
	if( exRegW && (ex_memop2 != 0) && (ex_memop2 == decodeOp1) )
		alu1 = 4'b0100;
	else if( memReg14w && (decodeOp1 == 4'b0000) )
		alu1 = 4'b001;
	else
		alu1 = 4'b000;
		
	if( exRegW && (ex_memop2 != 0) && (ex_memop2 == decodeOp2) )
		alu2 = 4'b100;
	else if( memReg14w && (decodeOp2 == 4'b0000) )
		alu2 = 4'b001;
	else
		alu2 = 4'b000;
		
	if( branch && exReg14w )
		cmpsrc = 2'b10;
	else if( branch && memReg14w && !exReg14w )
		cmpsrc = 2'b01;
	else
		cmpsrc = 2'b00;
end
endmodule
