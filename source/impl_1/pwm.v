// Generate PWM Signal depending on Sine Value
module pwm(clk, 
           reset,
           in_val,
           valid,
           out_pwm, 
           enable);
  
  input clk;
  input enable;
  input reset;
  input valid;								
  input wire [9:0] in_val;					// Get Value from sine_gen 
  output reg out_pwm;						// digital PWM Pin for GPIO Port
  
  reg[9:0] cnt;
  initial cnt = 10'b0000000000;
  integer i;
  
  always @(posedge clk) begin				// Generate Sawtooth
	if(reset) begin // Synchronous Reset
		    cnt = 10'b0000000000;
			out_pwm = 1'b0; 
		end
		
    else if(valid) begin // Process digital PWM 
            if(cnt >= in_val) out_pwm = 1'b0;	
      		else out_pwm = 1'b1;
          	
      cnt = cnt + 1'b1;			

  	end
  end
  
endmodule
  
  
  