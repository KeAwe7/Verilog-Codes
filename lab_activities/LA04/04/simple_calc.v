module simple_calc(input [3:0] X, Y, input [1:0] op_sel, output [7:0] result,
						output [6:0] carry_out, output [6:0] overflow);
						
    wire [7:0] mult_result, add_sub_result;
    wire add_n, add_sub_carry_out, add_sub_overflow;

    multiplier mult(
			 .m(X), 
			 .q(Y), 
			 .product(mult_result)
	 );

    assign add_n = op_sel[0];

    adder_subtractor add_sub(
			 .A(X), 
			 .B(Y), 
			 .K(add_n), 
			 .result(add_sub_result[3:0]), 
			 .carry_out(add_sub_carry_out),
			 .overflow(add_sub_overflow)
	 );

    assign add_sub_result[7:4] = 4'b0;

    mux2x1_8bit mux(
			 .in0(add_sub_result), 
			 .in1(mult_result), 
			 .sel(op_sel[1]), 
			 .out(result)
	 );


//	 assign carry_out = (add_sub_carry_out == 1'b1) ? 7'b1111001 : 7'b1000000;
//	 assign overflow = (add_sub_overflow == 1'b1) ? 7'b1111001 : 7'b1000000;
	 
	 assign carry_out = (op_sel[1] == 1'b1) ? 7'b1000000 : ((add_sub_carry_out == 1'b1) ? 7'b1111001 : 7'b1000000);
    assign overflow =  (op_sel[1] == 1'b1) ? 7'b1000000 : ((add_sub_overflow  == 1'b1) ? 7'b1111001 : 7'b1000000);
endmodule
