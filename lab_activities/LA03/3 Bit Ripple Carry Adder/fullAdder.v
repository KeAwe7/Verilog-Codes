module fullAdder (

	output cout,
	output sum,
	input ain,
	input bin,
	input cin

);

assign sum =  ain ^ bin ^ cin;						
assign cout = (ain & bin) | (cin & (ain ^ bin));

endmodule 