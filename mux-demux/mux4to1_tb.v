
module mux4to1_tb;
  reg [3:0]inp_tb;
  reg [1:0]sel_tb;
  wire y_tb;
  
  mux4to1 dut(
    .inp(inp_tb),
    .sel(sel_tb),
    .y(y_tb)
  );
  
  initial begin
    sel_tb=2'b00; inp_tb[0]=1'b0; inp_tb[1]=1'b1;inp_tb[2]=1'b1;inp_tb[3]=1'b0;
    #10; $display("Sel=%0b, Y=%0b", sel_tb, y_tb);
    
    sel_tb=2'b01; inp_tb[0]=1'b0; inp_tb[1]=1'b1;inp_tb[2]=1'b1;inp_tb[3]=1'b0;
    #10; $display("Sel=%0b, Y=%0b", sel_tb, y_tb);
    
    sel_tb=2'b10; inp_tb[0]=1'b0; inp_tb[1]=1'b1;inp_tb[2]=1'b1;inp_tb[3]=1'b0;
    #10; $display("Sel=%0b, Y=%0b", sel_tb, y_tb);
    
    sel_tb=2'b11; inp_tb[0]=1'b0; inp_tb[1]=1'b1;inp_tb[2]=1'b1;inp_tb[3]=1'b0;
    #10; $display("Sel=%0b, Y=%0b", sel_tb, y_tb);
  end
endmodule


/*
module mux4to1_tb;
	reg [2:0] inp1_tb;
	reg [2:0] inp2_tb;
    reg [2:0] inp3_tb;
    reg [2:0] inp4_tb;
    reg [1:0] sel_tb;
    wire [2:0] y_tb;
    
mux4to1 dut(
	.inp1(inp1_tb),
    .inp2(inp2_tb),
    .inp3(inp3_tb),
    .inp4(inp4_tb),
    .sel(sel_tb),
    .y(y_tb)
    );
    
initial begin
	sel_tb=2'b00; inp1_tb=3'b000; inp2_tb=3'b001; inp3_tb=3'b010; inp4_tb=3'b011;
    #10; $display("Sel=%0b, Y=%0b", sel_tb, y_tb);
    
    sel_tb=2'b01; inp1_tb=3'b000; inp2_tb=3'b001; inp3_tb=3'b010; inp4_tb=3'b011;
    #10; $display("Sel=%0b, Y=%0b", sel_tb, y_tb);
    
    sel_tb=2'b10; inp1_tb=3'b000; inp2_tb=3'b001; inp3_tb=3'b010; inp4_tb=3'b011;
    #10; $display("Sel=%0b, Y=%0b", sel_tb, y_tb);
    
    sel_tb=2'b11; inp1_tb=3'b000; inp2_tb=3'b001; inp3_tb=3'b010; inp4_tb=3'b011;
    #10; $display("Sel=%0b, Y=%0b", sel_tb, y_tb);
end
endmodule
*/
