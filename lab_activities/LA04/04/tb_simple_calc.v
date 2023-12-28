module tb_simple_calc;
    reg [3:0] X, Y;
    reg [1:0] op_sel;
    wire [7:0] result;
	 wire [6:0] carry_out, overflow;

    // Instantiate the simple_calc module
    simple_calc calc(.X(X), .Y(Y), .op_sel(op_sel), .result(result), .carry_out(carry_out), .overflow(overflow));

    initial begin
        
        X = 4'b0010; Y = 4'b0011; op_sel = 2'b00; #10; // 2+3 = 5 no carry
		  X = 4'b0010; Y = 4'b0011; op_sel = 2'b01; #10; // 2-3 = -1 no overflow
		  X = 4'b0010; Y = 4'b0011; op_sel = 2'b10; #10; // 2x3 = 6

        
        X = 4'b0100; Y = 4'b0010; op_sel = 2'b00; #10; // 4+2 = 6 no carry
		  X = 4'b0100; Y = 4'b0010; op_sel = 2'b01; #10; // 4-2 = 2 no overflow
		  X = 4'b0100; Y = 4'b0010; op_sel = 2'b10; #10; // 4x2 = 8
        
        X = 4'b0011; Y = 4'b0101; op_sel = 2'b00; #10; // 3+5 = 8 no carry
		  X = 4'b0011; Y = 4'b0101; op_sel = 2'b01; #10; // 3-5 = -2 no overflow
		  X = 4'b0011; Y = 4'b0101; op_sel = 2'b10; #10; // 3x5 = 15
		  
		  X = 4'b1111; Y = 4'b0101; op_sel = 2'b00; #10; // 15+5 = 20 carry 1|0100
		  X = 4'b1111; Y = 4'b0101; op_sel = 2'b01; #10; // 15-5 = 10 overflow
		  X = 4'b1111; Y = 4'b0101; op_sel = 2'b10; #10; // 15x5 = 75
    end
endmodule
