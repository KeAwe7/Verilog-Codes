module mq_4bit(input [3:0] m, input q, output [3:0] mq);
    assign mq = m & {4{q}};
endmodule 