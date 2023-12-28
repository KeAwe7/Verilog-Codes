module tb_mq_4bit;
    reg [3:0] m;
    reg q;
    wire [3:0] mq;

    mq_4bit u1(.m(m), .q(q), .mq(mq));

    initial begin
        m = 4'b0000; q = 0; #10;  // 0000 AND 0 = 0000
        m = 4'b1111; q = 0; #10;  // 1111 AND 0 = 0000
        m = 4'b0000; q = 1; #10;  // 0000 AND 1 = 0000
        m = 4'b1111; q = 1; #10;  // 1111 AND 1 = 1111
		  m = 4'b0101; q = 1; #10;
        #10 $finish;
    end
endmodule
