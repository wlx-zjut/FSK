module wlx_modulation(clk,			//输入32.768MHZ
					       rst,			//复位按键
							 fsk_to_DAC); //输出到DAC的信号
	input  clk;
	input  rst;
	output [7:0]fsk_to_DAC;
	wire   [7:0]fsk_to_DAC;
	reg    [7:0]count;
	wire    sin_wave_clk;
	
	wire clk_32,clk_32x16,clk_32x8,clk_32x16x160;
	LY_DIV#(32)  	  mod_a(clk,rst,clk_32); 
	LY_DIV#(16) 	  mod_b(clk_32,rst,clk_32x16); 	
	LY_DIV#(8)  	  mod_c(clk_32,rst,clk_32x8);
	LY_DIV#(160)     mod_d(clk_32x16,rst,clk_32x16x160); 	
	wlx_m_sequence   m_sequence1(clk_32x16x160,rst,m_sequence);
	LY_choose        LY_choose1(clk_32x16,clk_32x8,m_sequence,sin_wave_clk);
	wlx_sinout       sinout1(sin_wave_clk,fsk_to_DAC);
	
endmodule

	
	
	
	