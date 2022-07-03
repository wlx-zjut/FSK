module LY_choose(
                 data_a,     //A通道数据输入           
                 data_b,     //B通道数据输入           
                 data_sel,   //输出数据选通信号      
                 data_out    //数据输出          
               );            
      input   data_a;   //A通道数据输入   
		input   data_b;   //B通道数据输入                       
 		input   data_sel; //输出数据选通信号 		  
		output  data_out;//系统输出          		  
	   assign  data_out=( data_sel == 0)?data_a : data_b; 
endmodule


