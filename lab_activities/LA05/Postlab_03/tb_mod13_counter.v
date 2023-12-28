`timescale 1ns / 1ps

module tb_mod13_counter;
    reg clk;
    reg reset;
    wire [6:0] seg;

    mod13_counter uut (
        .clk(clk),
        .reset(reset),
        .seg(seg)
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
