`timescale 10ns/10ps
module tb_top;
	
	reg clk;
	reg taster;
	wire out;
	
	top DUT(.clk12M(clk), .taster_reset(taster), .BLU(out));
	
	initial begin
		clk = 0;
		taster = 0;
	end
		
	always #8.3 clk = ~clk;
		
endmodule
	