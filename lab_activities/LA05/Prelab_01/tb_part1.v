`timescale 1ns / 1ps

module tb_part1;

    reg Clk, R, S;
    wire Q;

    part1 u1 (.Clk(Clk), .R(R), .S(S), .Q(Q));
	 
	 

    initial begin
        
        Clk = 0;
        R = 0;
        S = 0;

        #10 R = 1; S = 0;  // Set
        #10 Clk = 1;       // Clock edge
        #10 Clk = 0;
        #10 R = 0; S = 0;  // Hold
        #10 Clk = 1;       // Clock edge
        #10 Clk = 0;
        #10 R = 0; S = 1;  // Reset
        #10 Clk = 1;       // Clock edge
        #10 Clk = 0;
        #10 R = 0; S = 0;  // Hold
        #10 Clk = 1;       // Clock edge
        #10 Clk = 0;
        #10
		  $finish;       		// End simulation
    end

    always #5 Clk = ~Clk;
endmodule
