// Module to read LUT from RAM
module sine_gen( clk,
                 enable,  
               	 address_read,
               	 read_enable,
                 pwm_sin_val,
                 reset,
                 data_valid,
                 data_sin_val);
  
input 				clk; 
input 				enable; 					// enables the whole Module
input  				reset; 
input 	wire [9:0]  data_sin_val; 				// Value from RAM which contains Sine Value in HEX Format
  
output   reg [9:0]  pwm_sin_val;				 // processed value for PWM Module
output   reg		read_enable;
output   reg 		data_valid;
output   reg [7:0] 	address_read;
integer i;

  
initial begin 
  address_read = 8'h00;
  read_enable = 1'b0;
  data_valid = 1'b0;
end
  
  // Get Clock and rst Signal from top
  always @(posedge clk ) begin 
	 if(reset) begin // Synchronous Reset
  	address_read = 8'h00;
    pwm_sin_val = 10'b0000000000;
    read_enable = 1'b0;  
    data_valid = 1'b0;
  end
    if(enable) begin
      if(address_read) data_valid = 1'b1; 		// Signals PWM Module that data is valid now --> Valid one cycle later!
          read_enable = 1'b1; 					//signals RAM to read value 
          pwm_sin_val = data_sin_val;			// Send Value to PWM Module 
          address_read = address_read + 1'b1;   //next address 
    end
	  // Reading RAM finished 
      if(address_read == 8'hFF) begin
      read_enable = 1'b0;
      data_valid = 1'b0;
      end
    
  end
  
  
endmodule