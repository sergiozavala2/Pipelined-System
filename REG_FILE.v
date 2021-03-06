module REG_FILE(clk, rst, reg_we, reg14_we,op1_data, 
		op2_data, reg14_data,op1_addr,
		op2_addr, w_addr, w_data, w_reg14);
input clk, rst, reg_we, reg14_we;                
input[3:0] op1_addr, op2_addr, w_addr;
input[15:0] w_data, w_reg14;
output reg [15:0] op1_data, op2_data, reg14_data; 
reg [15:0] register [15:1];

always@(posedge clk,negedge rst)
begin
	if(~rst)
	begin
		register [0] = 16'h7b18;
		register [1] = 16'h245b;
                register [2] = 16'hff0f;
                register [3] = 16'hf0ff;
                register [4] = 16'h0051;
                register [5] = 16'h6666;
                register [6] = 16'h00ff;
                register [7] = 16'hff88;
                register [8] = 16'h0000;
                register [9] = 16'h0000;
                register [10] = 16'h3099;
                register [11] = 16'hcccc;
                register [12] = 16'h0002;
                register [13] = 16'h0011;
		register [14] = 16'h0000;
	end

	else
		begin
		if(reg_we)
			register[w_addr] = w_data;
		if(reg14_we)
			register[14] = w_reg14;
	end
end

always@(*)
begin
        op1_data = register[ op1_addr ];
        op2_data = register[ op2_addr ];
        reg14_data = register[14];
end
endmodule
