module fulladder_tb;
  reg a_tb;
  reg b_tb;
  reg cin_tb;
  wire sum_tb;
  wire carry_tb;
  
  full_adder dut(
    .a(a_tb),
    .b(b_tb),
    .cin(cin_tb),
    .sum(sum_tb),
    .carry(carry_tb)
  );
  
  initial begin
    
    a_tb=0; b_tb=0; cin_tb=0;
    #10; $display("A=%0d, B=%0d, Cin=%0d, Sum=%0d, Carry=%0d", a_tb, b_tb, cin_tb, sum_tb, carry_tb);
    
    a_tb=0; b_tb=0; cin_tb=1;
    #10; $display("A=%0d, B=%0d, Cin=%0d, Sum=%0d, Carry=%0d", a_tb, b_tb, cin_tb, sum_tb, carry_tb);
    
    a_tb=0; b_tb=1; cin_tb=0;
    #10; $display("A=%0d, B=%0d, Cin=%0d, Sum=%0d, Carry=%0d", a_tb, b_tb, cin_tb, sum_tb, carry_tb);
    
    a_tb=0; b_tb=1; cin_tb=1;
    #10; $display("A=%0d, B=%0d, Cin=%0d, Sum=%0d, Carry=%0d", a_tb, b_tb, cin_tb, sum_tb, carry_tb);
    
    a_tb=1; b_tb=0; cin_tb=0;
    #10; $display("A=%0d, B=%0d, Cin=%0d, Sum=%0d, Carry=%0d", a_tb, b_tb, cin_tb, sum_tb, carry_tb);
    
    a_tb=1; b_tb=0; cin_tb=1;
    #10; $display("A=%0d, B=%0d, Cin=%0d, Sum=%0d, Carry=%0d", a_tb, b_tb, cin_tb, sum_tb, carry_tb);
    
    a_tb=1; b_tb=1; cin_tb=0;
    #10; $display("A=%0d, B=%0d, Cin=%0d, Sum=%0d, Carry=%0d", a_tb, b_tb, cin_tb, sum_tb, carry_tb);
    
    a_tb=1; b_tb=1; cin_tb=1;
    #10; $display("A=%0d, B=%0d, Cin=%0d, Sum=%0d, Carry=%0d", a_tb, b_tb, cin_tb, sum_tb, carry_tb);
    
    #20; $finish;
    
  end
endmodule
    
