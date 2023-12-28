module DFFlop (Q, D, Clock, ClearN);
  output Q;
  input D, Clock, ClearN;
  
  reg Q;
  always @(posedge Clock or negedge ClearN)
  begin
    if (~ClearN)
      Q <= 1'b0;
    else
      Q <= D;
  end
endmodule
