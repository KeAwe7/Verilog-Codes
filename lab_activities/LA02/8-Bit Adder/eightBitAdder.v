module eightBitAdder (

	output cout,
	output [7:0] s,
	input  [7:0] a,
	input  [7:0] b
	
);
	wire cin;
	assign cin = 1'b0;

	// Instantiate fullAdder(cout, sum, ain, bin, cin)
	wire [8:1] carry;	
	fullAdder FA0(carry[1], s[0], a[0], b[0], cin);
	fullAdder FA1(carry[2], s[1], a[1], b[1], carry[1]);
	fullAdder FA2(carry[3], s[2], a[2], b[2], carry[2]);
	fullAdder FA3(carry[4], s[3], a[3], b[3], carry[3]);
	fullAdder FA4(carry[5], s[4], a[4], b[4], carry[4]);
	fullAdder FA5(carry[6], s[5], a[5], b[5], carry[5]);
	fullAdder FA6(carry[7], s[6], a[6], b[6], carry[6]);
	fullAdder FA7(carry[8], s[7], a[7], b[7], carry[7]);
	
	assign cout = cin^carry[8];
	
endmodule 