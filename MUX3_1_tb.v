`include "MUX3_1.v"
module MUX3_1_tb();
reg [15:0] d0, d1, d2; 
reg [1:0] sel;
wire [15:0] m;

MUX3_1 DUT( .d0(d0), .d1(d1), .d2(d2),.sel(sel), .m(m));

initial
begin
	d0 <= 10;
	d1 <= 22;
	d2 <= 764;
	sel <= 0;

	#5; sel <= 1;
	#5; sel <= 2;
	#5; sel <= 3;
	#5;

end

initial
begin

	$dumpvars;
        $display("    d0    d1    d2    sel    m");
        $monitor(" %d  %d  %d  %b  %d", d0, d1, d2, sel, m);

end
endmodule

