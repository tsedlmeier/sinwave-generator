// Divider for clock with internal counter
module clock_devider(reset, clk_in, clk_out);

parameter WIDTH = 10;
input clk_in;
input reset;

output reg clk_out;


reg [WIDTH-1 : 0] prescaler;

initial prescaler = 0;

always @(posedge clk_in or posedge reset) begin
	if(reset) prescaler = 0;
	else begin
		if (prescaler <= (2**WIDTH)/2) clk_out = 1'b1;
		else clk_out = 1'b0;
		prescaler = prescaler + 1'b1;	
	end
end
endmodule

		
			