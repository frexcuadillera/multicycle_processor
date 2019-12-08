`timescale 1ps/1ps
module floprenr_tb;
	parameter WIDTH = 32;
	reg	clk, reset, en;
   reg	[WIDTH-1:0] d;
   wire	[WIDTH-1:0] q;
	
	always begin
		clk <= 1; #1; clk <= 0; #1;
	end
	
	initial begin
		d = 32'hABCD1234;
		reset = 0;
		en = 1;
		#2;
		d = 32'h200500C;
		#2;
		reset = 1;
		#2;
		reset = 0;
		en = 0;
		#2 $stop;
	end
	
	flopenr #(WIDTH) uut(clk, reset, en, d, q);
	
endmodule

