module zn_wlx_freq_detect#(parameter integer SCH_thread0 = 150)
(
        sample_clk,     //采样时钟
        data_in,	      //AD采样输入		
        rst,            //复位
        freq_detect_out //输出频率
);
    
	input    sample_clk;     //采样时钟
	input    data_in;	      //AD采样输入		
	input    rst;            //复位
	output   freq_detect_out; //输出频率
	 
	localparam  SCH_thread1 = (SCH_thread0<<1)/3;//低检测电平
	wire [7:0]  data_in;
	reg  [3:0]  state;//状态指示位
	reg  [15:0] cnt;	//计数值
	reg  [15:0] freq_detect_out;
	 
	initial
		begin
			state  <= 4'd0;
			cnt    <= 16'd0;
		end
	 
    always@(posedge sample_clk)
    begin
        if(!rst)
			  begin
					cnt   <=16'd0;
					state <= 4'd0;
			  end
        else
			  begin  
             case(state)
						 4'd0:begin						 
							 if(data_in>=SCH_thread0)
								  begin
									 state<=state+4'd1;
									 cnt<=32'd0;//大于开始计时
								  end
							  else
								  begin
									 state<=state;
								  end
						  end
                    4'd1:begin
                        cnt<=cnt+32'd1;//定时器加
                        if(data_in<=SCH_thread1)
                             state<=state+4'd1;//大于开始计时
                        else
                             state<=state;
                    end
                    4'd2:begin
                        if(data_in>=SCH_thread0)
                        begin
                             state<=4'd0;//大于开始计时
                             freq_detect_out<=cnt;
                        end
                        else
                             cnt<=cnt+32'd1;//定时器加
                    end
                endcase                                  
        end
    end
    
endmodule

