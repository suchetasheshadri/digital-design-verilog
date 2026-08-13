module fullsubtractor_tb;
  
  reg a_tb;
  reg b_tb;
  reg bin_tb;
  wire diff_tb;
  wire borrow_tb;
  
  full_subtractor dut(
    .a(a_tb),
    .b(b_tb),
    .bin(bin_tb),
    .diff(diff_tb),
    .borrow(borrow_tb)
  );
  
  initial begin
    
    a_tb=0; b_tb=0; bin_tb=0;
    #10; $display("A=%0d, B=%0d, Bin=%0d, Difference=%0d, Borrow=%0d", a_tb, b_tb, bin_tb, diff_tb, borrow_tb);
    
    a_tb=0; b_tb=0; bin_tb=1;
    #10; $display("A=%0d, B=%0d, Bin=%0d, Difference=%0d, Borrow=%0d", a_tb, b_tb, bin_tb, diff_tb, borrow_tb);
    
    a_tb=0; b_tb=1; bin_tb=0;
    #10; $display("A=%0d, B=%0d, Bin=%0d, Difference=%0d, Borrow=%0d", a_tb, b_tb, bin_tb, diff_tb, borrow_tb);
    
    a_tb=0; b_tb=1; bin_tb=1;
    #10; $display("A=%0d, B=%0d, Bin=%0d, Difference=%0d, Borrow=%0d", a_tb, b_tb, bin_tb, diff_tb, borrow_tb);
    
    a_tb=1; b_tb=0; bin_tb=0;
    #10; $display("A=%0d, B=%0d, Bin=%0d, Difference=%0d, Borrow=%0d", a_tb, b_tb, bin_tb, diff_tb, borrow_tb);
    
    a_tb=1; b_tb=0; bin_tb=1;
    #10; $display("A=%0d, B=%0d, Bin=%0d, Difference=%0d, Borrow=%0d", a_tb, b_tb, bin_tb, diff_tb, borrow_tb);
    
    a_tb=1; b_tb=1; bin_tb=0;
    #10; $display("A=%0d, B=%0d, Bin=%0d, Difference=%0d, Borrow=%0d", a_tb, b_tb, bin_tb, diff_tb, borrow_tb);
    
    a_tb=1; b_tb=1; bin_tb=1;
    #10; $display("A=%0d, B=%0d, Bin=%0d, Difference=%0d, Borrow=%0d", a_tb, b_tb, bin_tb, diff_tb, borrow_tb);
    
  end
endmodule
