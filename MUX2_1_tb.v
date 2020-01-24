`include "MUX2_1.v"
module MUX2_1_tb();
reg [15:0] d0, d1; 
reg sel;
wire [15:0] m;

MUX2_1 DUT(.d0(d0), .d1(d1), .sel(sel), .m(m));

initial
begin
	d0 <= 200;
	d1 <= 345;
	sel <= 0;

	#20; 
	sel <= 1;
	
	#20; 
	sel <= 0;
	
	#5;

end

initial
begin

        $dumpvars;
        $display("   d0      d1     sel    m");
        $monitor(" %d   %d    %b   %d ", d0, d1, sel, m);
end
endmodule
