module test01(segA, segB, segOut, b, a);
	input a,b;
	output [6:0]segA;
	output [6:0]segB;
	output [6:0]segOut;
	
	wire t1, t2;
	not invA(aBar, a);
	not invB(bBar, b);
	and and1(t1, a,bBar);
	and and2(t2, b,aBar);
	or or1(out, t1,t2);
	
	assign segA 	= (a == 1'b1) ? 7'b1111001 : 7'b1000000;
	assign segB 	= (b == 1'b1) ? 7'b1111001 : 7'b1000000;
	assign segOut	= (out == 1'b1) ? 7'b1111001 : 7'b1000000;
	
endmodule
