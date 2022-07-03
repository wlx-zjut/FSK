module zn_compare
(
	input [15:0]  fre_o,
	output wire   dataout
);
 
 assign dataout = fre_o >= 180? 1'b1:1'b0;
 endmodule
  
  