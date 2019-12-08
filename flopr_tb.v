`timescale 1ps/1ps
module flopr_tb;
	parameter WIDTH = 32;
	reg	clk, reset;
   reg	[WIDTH-1:0] d;
   wire	[WIDTH-1:0] q;
	
	always begin
		clk <= 1; #1; clk <= 0; #1;
	end
	
	initial begin
		d = 32'hABCD1234;
		reset = 0;
		#2;
		d = 32'h200500C;
		#2;
		reset = 1;
		#2;
		reset = 0;
		#2 $stop;
	end
	
	flopr #(WIDTH) uut(clk, reset, d, q);
	
endmodule
