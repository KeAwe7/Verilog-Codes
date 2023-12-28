`timescale 1ns / 1ps

module tb_D_flipflop;
  reg D, Clock, ClearN;
  wire Q, QN;

  D_flipflop FF(
    .Q(Q), 
    .QN(QN), 
    .D(D), 
    .Clock(Clock), 
    .ClearN(ClearN)
  );

  initial begin
 
    D = 0;
    Clock = 0;
    ClearN = 1;

    #10 D = 1; #10;  		// Set
    #10 D = 0; #10;  		// Reset
    #10 ClearN = 0; #10;  	// Clear
    #10 ClearN = 1; #10;  	// Unset clear
    #10 $finish;
  end

  always #5 Clock = ~Clock;
endmodule
