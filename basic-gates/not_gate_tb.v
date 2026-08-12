module notgate_tb;
  reg a_tb;
  wire y_tb;
  
  not_gate dut(
    .a(a_tb),
    .y(y_tb)
  );
  
  initial begin
     
    a_tb=1'b0;
    #10;$display("A=%0b, Y=%0b", a_tb, y_tb);
    a_tb=1'b0;
    #10;$display("A=%0b, Y=%0b", a_tb, y_tb);
    a_tb=1'b1;
    #10;$display("A=%0b, Y=%0b", a_tb, y_tb);
    
    #50; $finish;
  end
endmodule
