`include "MUX5_1.v"
module MUX5_1_tb();
reg [15:0] d0, d1, d2, d3, d4; 
reg [2:0] sel;
wire [15:0] m;
MUX5_1 DUT(.d0(d0), .d1(d1), .d2(d2),.d3(d3),.d4(d4),.sel(sel), .m(m));

initial
begin
	d0 <= 400;
	d1 <= 974;
	d2 <= 1024;
	d3 <= 2059;
	d4 <= 4097;
	sel <= 0;

	#5; sel <= 1;

	#5; sel <= 2;

	#5; sel <= 3;

	#5; sel <= 4;

	#5; sel <= 5;

	#5;
end

initial
begin
    $dumpvars;
    $display("  do    d1   d2    d3    d4   sel   m");
    $monitor("%d %d %d %d %d %b %d" ,d0, d1, d2, d3, d4, sel, m);

end
endmodule
