module JKFF_ClearN (Q, QN, J, K, Clock, ClearN);

  output Q, QN;
  input J, K;
  input Clock, ClearN;
  
  reg Q;
  always @(posedge Clock)
  begin
    if (~ClearN)
      Q = 1'b0;
    else
      case ({J,K})
        2'b01: Q = 1'b0;
        2'b10: Q = 1'b1;
        2'b11: Q = ~Q;
        default: Q = Q;
      endcase
  end
  assign QN = ~Q;
endmodule
