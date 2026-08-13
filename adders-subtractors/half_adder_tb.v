module halfadder_tb;
  reg a_tb;
  reg b_tb;
  wire sum_tb;
  wire carry_tb;
  
  half_adder dut(
    .a(a_tb),
    .b(b_tb),
    .sum(sum_tb),
    .carry(carry_tb)
  );
  
  initial begin
    a_tb=0; b_tb=0;
    #10; $display("A=%0d, B=%0d, Sum=%0d, Carry=%0d", a_tb, b_tb, sum_tb, carry_tb);
    a_tb=0; b_tb=1;
    #10; $display("A=%0d, B=%0d, Sum=%0d, Carry=%0d", a_tb, b_tb, sum_tb, carry_tb);
    a_tb=1; b_tb=0;
    #10; $display("A=%0d, B=%0d, Sum=%0d, Carry=%0d", a_tb, b_tb, sum_tb, carry_tb);
    a_tb=1; b_tb=1;
    #10; $display("A=%0d, B=%0d, Sum=%0d, Carry=%0d", a_tb, b_tb, sum_tb, carry_tb);
    #20; $finish;
    
  end
endmodule
