module mux4to1(
  input [3:0]inp,
  input [1:0]sel,
  output reg y
);
  
  always@(*) begin
    case(sel)
      2'b00:y=inp[0];
      2'b01:y=inp[1];
      2'b10:y=inp[2];
      2'b11:y=inp[3];
    endcase
  end
endmodule


/*
module mux4to1(
	input [2:0] inp1,
    input [2:0] inp2,
    input [2:0] inp3,
    input [2:0] inp4,
    input [1:0] sel,
    output reg [2:0]y
    );
    
always@(*) begin
	case(sel)
    	2'b00:y=inp1;
        2'b01:y=inp2;
        2'b10:y=inp3;
        2'b11:y=inp4;
    endcase
end
endmodule
*/
