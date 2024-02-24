module breath_led #
						(
							parameter   CLOCK_FRQ=50000000,//ʱ��Ƶ��
							parameter   PWM_FRQ=1000,//PWMƵ��
							parameter   BREATH_ERIOD=2,//��������
							parameter   SET_COMPARE_FRQ=1000,//���ñȽϵ�Ƶ�ʣ�һ���ӱȽ϶��ٴ�
							parameter   PWM_COUNTER_MAX=CLOCK_FRQ/PWM_FRQ,//PWM���������ֵ
							parameter	  BREATH_COUNTER_MAX=CLOCK_FRQ*BREATH_ERIOD,//�������������ֵ
							parameter	 SET_COMPARE_COUNTER_MAX=CLOCK_FRQ/SET_COMPARE_FRQ,//���ñȽϼ��������ֵ
							parameter  	COMPARE_VALUE_STEP=PWM_COUNTER_MAX/SET_COMPARE_FRQ//�Ƚ�ֵ�����Ӳ���
						)
						(
							input wire clk,//CLK50MHZ PIN G22
							input wire rstn,//KEY1->PIN D26
							output wire [7:0]led
						);	
						
						
						
/****************************************//*
�ɶ�С��èǶ��ʽ����
LED������ʵ������
*//*****************************************/
reg [31:0]counter_pwm;
reg [31:0]counter_breath;
reg [31:0]counter_compare;
reg [31:0]compare_value;
reg pwm_period_clk_view;
reg breath_period_clk_view;
reg compare_period_clk_view;
reg [3:0]led_number;

reg led_breath_view;//PWM��������ļĴ���
reg breath_dir;//�����������ϻ�������
reg [7:0]led_reg;
assign  led_clk_pwm_period=pwm_period_clk_view;
assign  led_clk_breath_period=breath_period_clk_view;
assign  led_clk_compare_period=compare_period_clk_view;
assign	led=led_reg;
assign   pll_reset=~rstn;

always @(posedge clk)
begin
	if(rstn==0)led_reg<=0;
	else begin
        case (led_number)//PWM�������Ӧͨ����LED����
        'd0:	led_reg[0]<=led_breath_view;
        'd1:	led_reg[1]<=led_breath_view;
        'd2:	led_reg[2]<=led_breath_view;
        'd3:	led_reg[3]<=led_breath_view;
        'd4:	led_reg[4]<=led_breath_view;
        'd5:	led_reg[5]<=led_breath_view;
        'd6:	led_reg[6]<=led_breath_view;
        'd7:	led_reg[7]<=led_breath_view;
        default:led_reg<='d0;
        endcase 
	end
end

always @(posedge clk or negedge rstn)
begin
	if(rstn==0)
	begin
		counter_pwm<=0;
		pwm_period_clk_view<=0;
	end
	else 
	begin
		counter_pwm<=counter_pwm+1;
		if(counter_pwm<compare_value)led_breath_view<=1;
		else led_breath_view<=0;
		if(counter_pwm>PWM_COUNTER_MAX-1)
		begin
			counter_pwm<=0;
			pwm_period_clk_view<=~pwm_period_clk_view;
		end
	end
end

reg [4:0]led_number_state;//led���

//LED����л���ÿ�κ�����һ����ѵ�����л�����һ��LED
always @(posedge clk or negedge rstn)
begin
	if(rstn==0)
		begin
			led_number=0;
			counter_breath<=0;
			breath_period_clk_view<=0;
			breath_dir<=0;
			led_number_state<=0;
		end
	else 
	begin
		counter_breath<=counter_breath+1;
		if(counter_breath>BREATH_COUNTER_MAX-1)
		begin
			counter_breath<=0;
			breath_period_clk_view<=~breath_period_clk_view;
			breath_dir<=~breath_dir;
			if(breath_dir==1)
			begin
				case (led_number_state)
				0:	begin 	led_number_state=1;led_number=0;	end
				1:	begin 	led_number_state=2;led_number=1;	end
				2:	begin 	led_number_state=3;led_number=2;	end
				3:	begin 	led_number_state=4;led_number=3;	end
				4:	begin 	led_number_state=5;led_number=4;	end
				5:	begin 	led_number_state=6;led_number=5;	end
				6:	begin 	led_number_state=7;led_number=6;	end
				7:	begin 	led_number_state=8;led_number=7;	end
				8:	begin 	led_number_state=9;led_number=6;	end
				9:	begin 	led_number_state=10;led_number=5;	end
				10:	begin 	led_number_state=11;led_number=4;	end
				11:	begin 	led_number_state=12;led_number=3;	end
				12:	begin 	led_number_state=13;led_number=2;	end
				13:	begin 	led_number_state=14;led_number=1;	end
				14:	begin 	led_number_state=0;led_number=0;	end
				default:;
				endcase 
			end
		end
	end
end
//�����Ƚ��߼���
always @(posedge clk or negedge rstn)
begin
	if(rstn==0)
		begin
			counter_compare<=0;
			compare_period_clk_view<=0;
			compare_value<=0;
		end
	else 
	begin
		counter_compare<=counter_compare+1;
		if(counter_compare>SET_COMPARE_COUNTER_MAX-1)
		begin
			counter_compare<=0;
			if(breath_dir==0)
			begin
				if(compare_value<PWM_COUNTER_MAX)compare_value<=compare_value+COMPARE_VALUE_STEP;
			end
			else if(breath_dir==1)
			begin
				if(compare_value>0)compare_value<=compare_value-COMPARE_VALUE_STEP;
			end
			compare_period_clk_view<=~compare_period_clk_view;
		end
	end
end		
endmodule

