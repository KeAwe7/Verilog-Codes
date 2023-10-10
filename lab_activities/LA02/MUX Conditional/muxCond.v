module muxCond (
	input a,
	input b,
	input s,
	output out
);

assign out = s ? b : a;

endmodule 