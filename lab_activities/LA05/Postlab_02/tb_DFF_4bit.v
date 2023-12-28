`timescale 1ns / 1ps

module tb_DFF_4bit;
  reg [3:0] D;
  reg Clock, ClearN;
  wire [3:0] Q;

  DFF_4bit DFF (
    .D(D), 
    .Clock(Clock), 
    .ClearN(ClearN),
    .Q(Q)
  );

  initial begin
    D = 4'b0000;
    Clock = 0;
    ClearN = 1;

    #10 D = 4'b1010; #10;  // Set
    #10 D = 4'b0101; #10;  // Reset
    #10 ClearN = 0; #10;  	// Clear
    #10 ClearN = 1; #10;  	// Unset clear
    #10 $finish;
  end

  always #5 Clock = ~Clock;
endmodule
