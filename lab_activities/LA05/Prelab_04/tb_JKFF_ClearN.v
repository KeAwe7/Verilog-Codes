`timescale 1ns / 1ps

module tb_JKFF_ClearN;
  reg J, K, Clock, ClearN;
  wire Q, QN;

  JKFF_ClearN uut (
    .Q(Q), 
    .QN(QN), 
    .J(J), 
    .K(K), 
    .Clock(Clock), 
    .ClearN(ClearN)
  );

  initial begin
    J = 0;
    K = 0;
    Clock = 0;
    ClearN = 1;

    #10 J = 1; K = 0; #10;
    #10 J = 0; K = 1; #10;
    #10 J = 1; K = 1; #10;
    #10 J = 0; K = 0; #10;
    #10 ClearN = 0; #10;   
    #10 $finish;
  end

  always #5 Clock = ~Clock;
endmodule
