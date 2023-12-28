module tb_gated_D_latch;
    reg D, CLK, CLR, SET;
    wire Q;
	 
gated_D_latch u1(.D(D), .CLK(CLK), .CLR(CLR), .SET(SET), .Q(Q));
    initial
    begin
        #10 D=0; CLK=0; CLR=0; SET=0;
        #10 CLK=1;
        #10 D=1;
        #10 CLK=0;
        #10 SET=1;
        #10 CLK=1; SET=0;
        #10 CLR=1;
        #10 CLK=1; CLR=0;
        #10 $finish;
    end
endmodule