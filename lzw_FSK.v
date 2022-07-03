module lzw_FSK(
	clk,	//输入时钟
	rst,	//输入复位信号
	data_out		//输出解调数据
);
	input clk;	//输入时钟
	input rst;	//输入复位信号
	output data_out;		//输出解调数据

	wire clk_32,clk_32x4;
	
	wire  [7:0] AD_DA;
	LY_DIV#(32)  	  mod_a(clk,rst,clk_32); 
	LY_DIV#(4) 	     mod_b(clk_32,rst,clk_32x4); 
	
	wlx_modulation    modulation1(clk,rst,AD_DA);
	zn_demodulation   demodulation(clk_32x4,AD_DA,rst,data_out);	
endmodule


