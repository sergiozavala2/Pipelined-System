`include "REG_FILE.v"
module REG_FILE_tb();
reg clk, rst, reg_we, reg14_we;
reg [3:0] op1_addr, op2_addr, w_addr;
reg [15:0] w_data, w_reg14;
wire [15:0] op1_data, op2_data, reg14_data;

REG_FILE DUT(.clk(clk), .rst(rst), .reg_we(reg_we), .reg14_we(reg14_we), .op1_addr(op1_addr),
	     .op2_addr(op2_addr), .w_addr(w_addr), .w_data(w_data), .w_reg14(w_reg14),
	     .op1_data(op1_data), .op2_data(op2_data), .reg14_data(reg14_data));

initial
	clk = 0;
always
begin
	#2;
	clk = ~clk;
end

initial
begin
	rst = 0;
	reg_we = 0;
	reg14_we = 0;
	op1_addr = 4'h1;
	op2_addr = 4'h2;
	w_addr = 4'h0;
	w_data = 16'h3142;
	w_reg14 = 16'h5678;

	#1;
	rst = 1;
	op1_addr = 4'h3;
    	op2_addr = 4'h4;
	
	#5;
	op1_addr = 4'h5;
    	op2_addr = 4'h6;
        
	#5;
    	op1_addr = 4'h7;
    	op2_addr = 4'h8;

    	#5;
	op1_addr = 4'h9;
    	op2_addr = 4'hA;

    	#5;
    	op1_addr = 4'hB;
    	op2_addr = 4'hC;

    	#5;
    	op1_addr = 4'hD;
    	op2_addr = 4'hE;

    	#5;
    	op1_addr = 4'hF;

    	#5; 
	w_addr = 4'h1;
	reg_we = 1;
	reg14_we = 1;

	#5;
	op1_addr = 4'h1;
	op2_addr = 4'hF;

	#5;
	w_addr = 4'h8;
    	reg_we = 1;

    	#5;
    	w_data = 16'hbeef;
	op1_addr = 4'h8;
	op2_addr = 4'hA;	

	#5;
	reg_we = 0;
	reg14_we = 0;
	w_data = 16'hdead;
	w_reg14 = 16'h0000;

	#5; $finish;

end

initial
begin
	$dumpvars;
        $display("clk   rst  reg_we   r14_we   op1_addr   op2_addr   w_addr   w_data   w_r14   OP1 data   OP2 data   reg_data ");
        $monitor("%b     %b     %h       %h        %h          %h          %h        %h     %h    %h       %h       %h ", 
			clk, rst, reg_we, reg14_we, op1_addr, op2_addr, w_addr, w_data, w_reg14, op1_data, op2_data, reg14_data);

end
endmodule
