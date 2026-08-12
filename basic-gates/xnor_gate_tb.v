module xnorgate_tb;
  reg a_tb;
  reg b_tb;
  wire y_tb;
  
  xnor_gate dut(
    .a(a_tb),
    .b(b_tb),
    .y(y_tb)
  );
  
  initial begin
    a_tb=0; b_tb=0;
    #10; $display("A=%0d, B=%0d, Y=%0d", a_tb, b_tb, y_tb);
    a_tb=0; b_tb=1;
    #10; $display("A=%0d, B=%0d, Y=%0d", a_tb, b_tb, y_tb);
    a_tb=1; b_tb=0;
    #10; $display("A=%0d, B=%0d, Y=%0d", a_tb, b_tb, y_tb);
    a_tb=1; b_tb=1;
    #10; $display("A=%0d, B=%0d, Y=%0d", a_tb, b_tb, y_tb);
    
    #60; $finish;
    
  end
endmodule
    
