module adder_subtractor(input [3:0] A, B, input K, output [3:0] result, output carry_out,
								output overflow);

    wire [3:0] B_complement;
    wire [3:0] sum;
    wire c1, c2, c3, c4;
	 
    assign B_complement = B ^ {4{K}};
	 
    full_adder fa1(A[0], B_complement[0], K, sum[0], c1);
    full_adder fa2(A[1], B_complement[1], c1, sum[1], c2);
    full_adder fa3(A[2], B_complement[2], c2, sum[2], c3);
    full_adder fa4(A[3], B_complement[3], c3, sum[3], c4);

    assign result = sum;
    assign carry_out = c4;
	 assign overflow = c3 ^ carry_out; // Overflow when value goes out of range (-8 to 7)
	 
endmodule
