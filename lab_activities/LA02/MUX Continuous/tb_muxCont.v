module tb_muxCont;

reg a, b, s;
wire out;

muxCont uut (

	.a(a),
	.b(b),
	.s(s),
	.out(out)

);

initial begin
	$monitor("a=%b, b=%b, s=%b | out=%b", a, b, s, out);
	

        a = 1'b0; b = 1'b0; s = 1'b0; #10;     
        a = 1'b1; b = 1'b0; s = 1'b0; #10;
        a = 1'b0; b = 1'b1; s = 1'b0; #10;       
        a = 1'b1; b = 1'b1; s = 1'b0; #10;
		  
        a = 1'b0; b = 1'b0; s = 1'b1; #10;    
        a = 1'b1; b = 1'b0; s = 1'b1; #10;
        a = 1'b0; b = 1'b1; s = 1'b1; #10;
        a = 1'b1; b = 1'b1; s = 1'b1; #10;
		  #10;
	
	$finish;
end
endmodule 