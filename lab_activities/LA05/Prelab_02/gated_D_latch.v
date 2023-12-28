module gated_D_latch(input wire D, CLK, CLR, SET, output reg Q);

    wire S, R;
	 
    assign S = D & CLK | SET;
    assign R = ~D & CLK | CLR;
	 
    always @(S, R)
    begin
        if (R)
            Q <= 0;
        else if (S)
            Q <= 1;
    end
	 
endmodule
