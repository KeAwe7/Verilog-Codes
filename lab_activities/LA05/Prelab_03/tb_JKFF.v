module tb_JKFF;
    reg J, K, Clock;
    wire Q, QN;
	 
    JKFF1 u1(.Q(Q), .QN(QN), .J(J), .K(K), .Clock(Clock));
    initial
    begin
        #10 J=0; K=0; Clock=0;
        #10 Clock=1;
        #10 J=1; K=0;
        #10 Clock=0;
        #10 J=0; K=1;
        #10 Clock=1;
        #10 J=1; K=1;
        #10 Clock=0;
        #10 $finish;
    end
endmodule
