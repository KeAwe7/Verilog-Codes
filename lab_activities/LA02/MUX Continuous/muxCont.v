module muxCont (
	input a,
	input b,
	input s,
	output out
);

wire w1;
wire w2;

assign w1 = a&~s;
assign w2 = b&s;
assign out = w1 | w2;

endmodule 