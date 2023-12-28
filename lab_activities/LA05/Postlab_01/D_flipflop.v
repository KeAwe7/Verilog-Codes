module D_flipflop(Q, QN, D, Clock, ClearN);

  output Q, QN;
  input D, Clock, ClearN;
  
  reg Q;
  
  always @(posedge Clock or negedge ClearN)
  
  begin
    if (~ClearN)
      Q <= 1'b0;
    else
      Q <= D;
  end
  assign QN = ~Q;
  
endmodule
