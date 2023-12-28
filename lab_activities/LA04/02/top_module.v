module top_module (input [3:0] m, q, output [6:0] seg0, seg1, seg2);

	wire [11:0] bcd;
	wire [7:0] product;
	
	multiplier m1(m, q, product);
	
	bin2bcd b2b(product, bcd);
	
	segment7 s0(bcd[3:0], seg0);
	segment7 s1(bcd[7:4], seg1);
	segment7 s2(bcd[11:8], seg2);
	
endmodule 