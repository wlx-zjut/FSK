module LY_DIV(clk,rst,clkout);
	input clk,rst;
	output clkout;
	reg clkout;
	reg[15:0]count;
	parameter N=16;
	initial
		begin
		clkout<=1'b0;
		count<=1'b0;		
		end
		
	always@(posedge clk)
	 begin
		if(!rst)
		 begin
			clkout<=1'b0;
			count<=1'b0;
		 end 
		else if(N%2==0)
		 begin
			if(count<N/2-1)
				count<=count+1'b1;
			else
			 begin
				count<=1'b0;
				clkout<=~clkout;
			 end
		 end		

	 end 
endmodule


