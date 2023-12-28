module tb_full_adder;
    reg a, b, cin;
    wire sum, cout;

    full_adder u1(.ain(a), .bin(b), .cin(cin), .sum(sum), .cout(cout));

    initial begin
        a = 0; b = 0; cin = 0; #10;  // 0 + 0 + 0 = 0, cout should be 0
        a = 0; b = 0; cin = 1; #10;  // 0 + 0 + 1 = 1, cout should be 0
        a = 0; b = 1; cin = 0; #10;  // 0 + 1 + 0 = 1, cout should be 0
        a = 0; b = 1; cin = 1; #10;  // 0 + 1 + 1 = 2, cout should be 1
        a = 1; b = 0; cin = 0; #10;  // 1 + 0 + 0 = 1, cout should be 0
        a = 1; b = 0; cin = 1; #10;  // 1 + 0 + 1 = 2, cout should be 1
        a = 1; b = 1; cin = 0; #10;  // 1 + 1 + 0 = 2, cout should be 1
        a = 1; b = 1; cin = 1; #10;  // 1 + 1 + 1 = 3, cout should be 1
        #10 $finish;
    end
endmodule
