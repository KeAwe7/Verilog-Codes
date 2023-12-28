module multiplier(input [3:0] m, q, output [7:0] product);
    wire [3:0] mq0, mq1, mq2, mq3;
    wire c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12;
	 wire [11:0] bcd;
	 
    mq_4bit u0(m, q[0], mq0);
    mq_4bit u1(m, q[1], mq1);
    mq_4bit u2(m, q[2], mq2);
    mq_4bit u3(m, q[3], mq3);
	 
	 wire result[5:0];
	 assign product[0] = mq0[0];
	 
    full_adder fa1(mq0[1], mq1[0], 0, product[1], c1);
    full_adder fa2(mq0[2], mq1[1], c1, result[0], c2);
    full_adder fa3(mq0[3], mq1[2], c2, result[1], c3);
    full_adder fa4(		0, mq1[3], c3, result[3], c4);
	 
    full_adder fa5(mq2[0], result[0],  0, product[2], c5);
    full_adder fa6(mq2[1], result[1], c5,  result[2], c6);
    full_adder fa7(mq2[2], result[3], c6,  result[4], c7);
	 full_adder fa8(mq2[3], 		 c4, c7,  result[5], c8);
	 
	 full_adder fa9 (mq3[0], result[2],   0, product[3], c9);
	 full_adder fa10(mq3[1], result[4],  c9, product[4], c10);
	 full_adder fa11(mq3[2], result[5], c10, product[5], c11);
	 full_adder fa12(mq3[3], 		  c8, c11, product[6], c12);	 
	 
    assign product[7] = c12;
	 
	 
endmodule
