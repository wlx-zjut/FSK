module wlx_m_sequence
(
		   clk,//输入信号时钟
			rst,//输入复位信号
	      out //输出m序列
);

	input				clk;
	input				rst;
	output		   out;
	
	reg [4:0] shift;
	initial
		begin
		shift <= 'b00001;
		end
	
	always @(posedge clk)
		if( rst == 1'b0) 
			shift <= 'b00001;
		else 
			begin
				shift <= (shift >> 1'b1); 
				shift[4] <= shift[0]^shift[2];
			end

	assign out = shift[0];
	endmodule

