//#1 JK
module JKFF1 (Q,QN,J,K,Clock);

	output Q, QN; // data output
	input J, K; // data input
	input Clock;
	reg Q;
	
	always @(posedge Clock)	
		begin
			Q = J&(~Q)|(~K)&Q;
		end		
	assign QN = ~Q;
endmodule

//#2 JK
//module JKFF2 (Q,QN,J,K,Clock);
//
//	output Q, QN; // data output
//	input J, K; // data input
//	input Clock;
//	reg Q;
//
//	always @(posedge Clock)
//		begin
//			if ({J,K} == 2'b01) Q = 1'b0;
//			else if ({J,K} == 2'b10) Q = 1'b1;
//			else if ({J,K} == 2'b11) Q = ~Q;
//			else Q = Q;
//		end
//	assign QN = ~Q;
//endmodule

// JK #3
//module JKFF3 (Q,QN,J,K,Clock);
//	output Q, QN; // data output
//	input J, K; // data input
//	input Clock;
//	reg Q;
//	always @(posedge Clock)
//		begin
//			case ({J,K})
//			2'b01: Q = 1'b0;
//			2'b10: Q = 1'b1;
//			2'b11: Q = ~Q;
//			default: Q = Q;
//			endcase
//		end
//	assign QN = ~Q;
//endmodule
