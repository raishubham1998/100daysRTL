module jb_tb;
	reg clock, reset;
	wire [3:0] out;
	
	johnson_counter JC ( clock, reset, out);
	
	always 
	#5 clock = ~clock;
	
	initial begin
	reset = 1'b1;
	clock = 1'b0;
	#20 reset = 1'b0;
	end 
	
	initial 
		begin
		$monitor ($time, "clock = %b,out = %b, reset = %b",clock, out, reset);
		#105 $stop;
		end

endmodule
