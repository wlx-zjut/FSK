module wlx_sinout(clk,    	//输入时钟
						dat_out,  //输出到DA的8位数据
						);
		 input clk;   //输入时钟   
		 output [7:0]dat_out;   //输出到DA的8位数据
		 
		 reg[7:0]dat_out; 
		 wire[7:0]datt;
		 reg[5:0]count;//计数值
		 
		 initial
			 begin		
			 count=0;
			 end
		 always @(posedge clk)
			 begin
				dat_out=datt;	
			 end	
			 
		 always @(posedge clk)
			 begin
				count=count+1;		
			 end	
		sinewave U1(.address(count),.clock(clk),.q(datt[7:0]));
	
endmodule
