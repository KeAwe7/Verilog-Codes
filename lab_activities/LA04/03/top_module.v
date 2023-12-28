module top_module(input [3:0] A, B, input K, output [6:0] seg, output Cout);
    wire [3:0] result;
    adder_subtractor u1(A, B, K, result, Cout);
    bcd_to_7seg u2(result, seg);
endmodule
