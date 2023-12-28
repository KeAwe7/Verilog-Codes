module tb_multiplier;
    reg [3:0] a, b;
    wire [7:0] product;
	 
    multiplier u1(a, b, product);
    initial begin
				a = 4'b0000; b = 4'b1010; #10;
				a = 4'b0101; b = 4'b0101; #10;
				a = 4'b1001; b = 4'b0101; #10;
				a = 4'b1100; b = 4'b1101; #10;
				a = 4'b1111; b = 4'b1010; #10;
    end
	 
endmodule
