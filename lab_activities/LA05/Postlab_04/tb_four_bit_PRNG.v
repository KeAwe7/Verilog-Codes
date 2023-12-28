`timescale 1ns / 1ps

module tb_four_bit_PRNG;
    reg clk;
    reg reset;
    wire [3:0] out;

    four_bit_PRNG prng(
        .clk(clk),
        .reset(reset),
        .out(out)
    );

    initial begin
        clk = 0;
        forever #10 clk = ~clk;
    end

    initial begin
        reset = 1;
        #20 reset = 0;
        #500 $finish;
    end
endmodule
