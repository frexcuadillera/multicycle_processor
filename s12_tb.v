`timescale 1ps/1ps
module s12_tb;
	reg[31:0] a;
	wire[31:0] y;

	initial begin
		a = 32'hffffffff;
		#1 a = 32'habcd1234;
		#1 $stop;
	end
	sl2 uut(a, y);
endmodule
