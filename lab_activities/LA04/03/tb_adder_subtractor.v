module tb_adder_subtractor;
    reg [3:0] A, B;
    reg K;
    wire [3:0] result;
    wire Cout;
	 
    adder_subtractor u1(A, B, K, result, Cout);
	 
    initial begin
        #10 A = 4'b0101; B = 4'b0011; K = 1'b0; #10; // 5 + 3
        #10 A = 4'b1001; B = 4'b0101; K = 1'b1; #10; // 9 - 5
        #10 A = 4'b1100; B = 4'b1101; K = 1'b0; #10; // 12 + 13
        #10 A = 4'b1111; B = 4'b1010; K = 1'b1; #10; // 15 - 10
    end
	 
endmodule
