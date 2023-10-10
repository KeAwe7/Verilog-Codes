`timescale 1ms/1ms

module tb_delays;

reg a, b;
wire out;

delays uut (

	.a(a),
	.b(b),
	.out(out)

);

initial begin
	$monitor("a=%b, b=%b, out=%b", a, b, out);
	
	
        a = 1'b0; b = 1'b0;

        a = 1'b1; b = 1'b0; #10;

        a = 1'b0; b = 1'b1; #10;

        a = 1'b1; b = 1'b1; #10;

	
	$finish;
end
endmodule
