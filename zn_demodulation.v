module zn_demodulation(
		 clk,			//时钟
		 data_in,	//ADC采样输入
		 rst,	      //复位信号
		 data_out	//解调信号输出
		);
		input clk;
		input [7:0]data_in;
		input rst;
		output data_out;
		wire  [15:0] freq_detect_out;

		zn_wlx_freq_detect freq_detect1(
				  clk,            //采样时钟
				  data_in,	      //AD采样输入		
				  rst,            //复位
				  freq_detect_out); //输出频率
				
		zn_compare  compare(freq_detect_out,dataout);  
endmodule
     