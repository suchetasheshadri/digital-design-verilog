module mux2to1(
  input [2:0]in0,
  input [2:0]in1,
  input sel,
  output reg [2:0]y
);
  
  always @(*) begin
    if(sel)
      y=in1;
    else 
      y=in0;
  end
endmodule

/*
or we may use case inside always block

always @(*) begin
	case(sel)
    	1'b0: y=in0;
        1'b1: y=in1;
    endcase
end
*/
