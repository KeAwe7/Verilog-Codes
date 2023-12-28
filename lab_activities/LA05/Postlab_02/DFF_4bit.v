module DFF_4bit (input [3:0] D, input Clock, input ClearN, output [3:0] Q);

  DFFlop dff0 (.D(D[0]), .Clock(Clock), .ClearN(ClearN), .Q(Q[0]));
  DFFlop dff1 (.D(D[1]), .Clock(Clock), .ClearN(ClearN), .Q(Q[1]));
  DFFlop dff2 (.D(D[2]), .Clock(Clock), .ClearN(ClearN), .Q(Q[2]));
  DFFlop dff3 (.D(D[3]), .Clock(Clock), .ClearN(ClearN), .Q(Q[3]));

endmodule
