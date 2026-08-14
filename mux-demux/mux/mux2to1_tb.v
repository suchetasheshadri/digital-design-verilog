module mux2to1_tb;
  reg [2:0]in0_tb;
  reg [2:0]in1_tb;
  reg sel_tb;
  wire [2:0]y_tb;
  
  mux2to1 dut(
    .in0(in0_tb),
    .in1(in1_tb),
    .sel(sel_tb),
    .y(y_tb)
  );
  
  initial begin
    sel_tb=1'b0; in0_tb=3'b010; in1_tb=3'b100;
    #10; $display("Sel=%0d, Y=%0b", sel_tb,y_tb);
    sel_tb=1'b1; in0_tb=3'b011; in1_tb=3'b110;
    #10; $display("Sel=%0d, Y=%0b", sel_tb, y_tb);
    #20; $finish;
  end
endmodule
