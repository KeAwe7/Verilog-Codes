module fullAdder (

	output cout,
	output sum,
	input ain,
	input bin,
	input cin

);

assign sum =  ain ^ bin ^ cin;						// These two equations are the
assign cout = (ain & bin) | (cin & (ain ^ bin));// logical expression of a full adder.

endmodule 