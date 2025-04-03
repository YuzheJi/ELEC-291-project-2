#include <stdio.h>
#include "../Common/Include/stm32l051xx.h"
#include "../Common/Include/serial.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>
#include "UART2.h"
#include "lcd.h"
#include "adc.h"
#include "UART1.h"


#define SYSCLK 32000000L
#define TIMER22_FREQ 1000L

long timer22_counter = 0;
long button_counter = 0;
long pick_counter = 0;
int buzzer_wait = 6000; 		//buzzer wait time in ms
char buff[80];
int dummy;
int pick_order = 0;
int auto_state = 0;
char lb[17];
int i;
int record = 0;
char liangkuai = 0;
char yikuai = 0;
char wumao = 0;
char liangmaowu = 0;
char yimao = 0;
char wufen = 0;
char coins_count[6] = {0};
int pwm_left=0;
int pwm_right=0; 

// 0: 2.0
// 1: 1.0
// 2: 0.25
// 3: 0.10
// 4: 0.05

// LQFP32 pinout
//              ----------
// 3.3v   VDD -|1       32|- VSS
//       PC14 -|2       31|- BOOT0
//       PC15 -|3       30|- PB7 
// RST   NRST -|4       29|- PB6
// 3.3v  VDDA -|5       28|- PB5
// LCD_RS PA0 -|6       27|- PB4  Sound2
// LCD_E  PA1 -|7       26|- PB3  buzzer
// LCD_D4 PA2 -|8       25|- PA15 TXD-radio
// LCD_D5 PA3 -|9       24|- PA14 RXD-radio
// LCD_D6 PA4 -|10      23|- PA13 SET-radio
// LCD_D7 PA5 -|11      22|- PA12 pushbutton 1
//        PA6 -|12      21|- PA11 pushbutton 2
// Sound  PA7 -|13      20|- PA10 (Reserved for RXD)
// vy     PB0 -|14      19|- PA9  (Reserved for TXD)
// vx     PB1 -|15      18|- PA8  joystick button
// GND    VSS -|16      17|- VDD  3.3v
//              ----------
#define JOYBUT (GPIOA->IDR&BIT8) // PA8
#define PB1 (GPIOA->IDR&BIT12)
#define PB2 (GPIOA->IDR&BIT11)

// mode: 0 - 00 no pull, 1 - 01 pull up, 2 - 10 pull down
void Set_Pin_Input(int pin, int pmode){
	uint32_t upper_bits, bottom_bits; 
	upper_bits = 1UL << pin * 2 + 1; 
	bottom_bits = 1UL << pin * 2; 

	GPIOA->MODER &= ~(bottom_bits | upper_bits);
	
	if (pmode == 0){
		GPIOA->PUPDR &= ~(bottom_bits);
		GPIOA->PUPDR &= ~(upper_bits);
	}
	else if (pmode == 1){
		GPIOA->PUPDR |= (bottom_bits);
		GPIOA->PUPDR &= ~(upper_bits);
	}
	else if (pmode == 2){
		GPIOA->PUPDR |= (bottom_bits);
		GPIOA->PUPDR |= (upper_bits);
	}
}
// 0 - Bank A, 1 - Bank B
void Set_Pin_Output(int bank, int pin, int pmode){
	uint32_t upper_bits, bottom_bits; 
	uint16_t type_bits; 
	type_bits = 1UL << pin; 
	upper_bits = 1UL << (pin * 2 + 1); 
	bottom_bits = 1UL << (pin * 2); 
	
	if (bank == 0){
		GPIOA->MODER = (GPIOA->MODER & ~(upper_bits|bottom_bits)) | bottom_bits;
		if (pmode == 0){
			GPIOA->OTYPER &= ~(type_bits);
		}	
	}
	else if (bank == 1){
		GPIOB->MODER = (GPIOB->MODER & ~(upper_bits|bottom_bits)) | bottom_bits;
		if (pmode == 0){
			GPIOB->OTYPER &= ~(type_bits);
		}
	}
}

void Configure_Pins (void)
{
	RCC->IOPENR |= BIT0; // peripheral clock enable for port A
	RCC->IOPENR |= BIT1; // peripheral clock enable for port B
	
	// Make pins PA0 to PA5 outputs (page 200 of RM0451, two bits used to configure: bit0=1, bit1=0)
    Set_Pin_Output(0,0,0);
	Set_Pin_Output(0,1,0);
	Set_Pin_Output(0,2,0);
	Set_Pin_Output(0,3,0);
	Set_Pin_Output(0,4,0);
	Set_Pin_Output(0,5,0);
	Set_Pin_Output(0,7,0);
	Set_Pin_Output(1,3,0);
	Set_Pin_Output(1,4,0);

	GPIOA->ODR |= BIT7;
	GPIOB->ODR |= BIT4;

	Set_Pin_Input(8,1);
	Set_Pin_Input(11,1);
	Set_Pin_Input(12,1);

	GPIOA->OSPEEDR=0xffff0000; // All pins of port A configured for very high speed! Page 201 of RM0451

    GPIOA->MODER = (GPIOA->MODER & ~(BIT27|BIT26)) | BIT26; // Make pin PA13 output (page 200 of RM0451, two bits used to configure: bit0=1, bit1=0))
	GPIOA->ODR |= BIT13; // 'set' pin to 1 is normal operation mode.

	GPIOA->MODER &= ~(BIT16 | BIT17); // Make pin PA8 input
	// Activate pull up for pin PA8:
	GPIOA->PUPDR |= BIT16; 
	GPIOA->PUPDR &= ~(BIT17);

	GPIOB->MODER |= (BIT2|BIT3);  // Select analog mode for PB1 (pin 15 of LQFP32 package)
	GPIOB->MODER |= (BIT0|BIT1);  // Select analog mode for PB0 (pin 14 of LQFP32 package)
	GPIOA->MODER |= (BIT12|BIT13);  // Select analog mode for PB0 (pin 12 of LQFP32 package)

	// Set up timer21 for Buzzer
	RCC->APB2ENR |= BIT2;  // turn on clock for timer21 (UM: page 188)
	NVIC->ISER[0] |= BIT20; // enable timer 21 interrupts in the NVIC
	TIM21->CR1 |= BIT4;      // Downcounting      
	TIM21->DIER |= BIT0;     // enable update event (reload event) interrupt  

	// Set up timer22 for Buzzer
	RCC->APB2ENR |= BIT5;  // turn on clock for timer22 (UM: page 188)
	NVIC->ISER[0] |= BIT22; // enable timer 22 interrupts in the NVIC
	TIM22->ARR = SYSCLK/TIMER22_FREQ; // timer 22 freq: 1000Hz 
	TIM22->CR1 |= BIT4;   
	TIM22->DIER |= BIT0;     // enable update event (reload event) interrupt 

	__enable_irq();
}

void Setbuzzer_freq(long TICK_FREQ){
	TIM21->ARR = SYSCLK/TICK_FREQ;
	return;
}

void Buzzer(char mode){
	switch (mode){
	case 2:
		TIM21->CR1 ^= BIT0;
		GPIOB->ODR &= ~BIT3;
		break;
	case 1:
		TIM21->CR1 |= BIT0;
		break;
	case 0:
		TIM21->CR1 &= ~BIT0;
		GPIOB->ODR &= ~BIT3;
		break;
	}
	return;
}

void buzzer_ctrl(int freq100){

	if (freq100 < 5260){
		Setbuzzer_freq(100L);
		buzzer_wait = 3000;
	} 
	else{
		Setbuzzer_freq(300+30*(freq100-5260));
		buzzer_wait = 3000 - 20*(freq100-5260);
	}
}

void SendATCommand (char * s)
{
	char buff[40];
	// printf("Command: %s", s);
	GPIOA->ODR &= ~(BIT13); // 'set' pin to 0 is 'AT' mode.
	waitms(10);
	eputs2(s);
	egets2(buff, sizeof(buff)-1);
	GPIOA->ODR |= BIT13; // 'set' pin to 1 is normal operation mode.
	waitms(10);
	// printf("Response: %s", buff);
}

void ReceptionOff (void)
{
	GPIOA->ODR &= ~(BIT13); // 'set' pin to 0 is 'AT' mode.
	waitms(10);
	eputs2("AT+DVID0000\r\n"); // Some unused id, so that we get nothing in RXD1.
	waitms(10);
	GPIOA->ODR |= BIT13; // 'set' pin to 1 is normal operation mode.
	while (ReceivedBytes2()>0) egetc2(); // Clear FIFO
}

void LCD_Custom_Char(unsigned char loc, unsigned char *charmap)
{
    int i;
    if (loc < 8)  
    {
        WriteCommand(0x40 + (loc * 8)); 
        for (i = 0; i < 8; i++)
        {
            WriteData(charmap[i]);  
        }
    }
}
void Auto_enter(){
	LCDprint("Automode:",1,1);
	waitms(300);
	LCDprint("Activatived!",2,1);
	waitms(600);
} 
// timer21 ISR
void TIM21_Handler(void) 
{
	TIM21->SR &= ~BIT0; // clear update interrupt flag
	GPIOB->ODR ^= BIT3; // toggle output pin
}

// timer22 ISR
void TIM22_Handler(void) 
{	
	TIM22->SR &= ~BIT0; // clear update interrupt flag
	timer22_counter++; 
	button_counter++;
	pick_counter++;
	if(pick_counter == 10000 && pick_order){
		pick_order = 0;
	} 
	if(timer22_counter < 101) Buzzer(1);
	else if (timer22_counter < buzzer_wait) Buzzer(0);
	else{
		timer22_counter = 0;
	} 
}

void Coin_chk(int weight_diff){

	// 2 dollars
	if( weight_diff > 550 && weight_diff < 750){
		coins_count[0]++;
	}

	// 1 dollar
	else if( weight_diff > 370 && weight_diff <= 550){
		coins_count[1]++;
	}

	// 0.25 dollars
	else if( weight_diff > 345 && weight_diff <= 370){
		coins_count[2]++;
	}

	// 0.05 dollars
	else if( weight_diff > 299 && weight_diff <= 344){
		coins_count[4]++;
	}

	// 0.1 dollars
	else if( weight_diff > 105 && weight_diff <= 299){
		coins_count[3]++;
	}
	return;

}

void Coin_view(){
	char exit = 0;
	char page = 0;
	while (!exit){
		if(!PB1){
			while (!PB1);
			exit = 1;
		}
		if(!PB2){
			while (!PB2);
			page++;
			page = page % 3;
		}
		switch (page){
		case 0:
			sprintf(lb,"->2.00: %d",coins_count[0]);
			LCDprint(lb,1,1);
			sprintf(lb,"->1.00: %d",coins_count[1]);
			LCDprint(lb,2,1);
			break;

		case 1:
			sprintf(lb,"->0.25: %d",coins_count[2]);
			LCDprint(lb,1,1);
			sprintf(lb,"->0.10: %d",coins_count[3]);
			LCDprint(lb,2,1);
			break;

		case 2:
			sprintf(lb,"->0.05: %d",coins_count[4]);
			LCDprint(lb,1,1);
			LCDprint(" ",2,1);
			break;
		
		default:
			break;
		}
	}
	return;
}

float calculate_std(int data[], int size) {
    float sum = 0.0, mean, std = 0.0;
    
    // 计算均值
    for (int i = 0; i < size; i++) {
        sum += data[i];
    }
    mean = sum / size;
    
    // 计算标准差
    for (int i = 0; i < size; i++) {
        std += pow(data[i] - mean, 2);
    }
    return std / size;
}

int calculate_mean(int data[], int size) {
    float sum = 0.0;
    for (int i = 0; i < size; i++) {
        sum += data[i];
    }
    return sum / size;
}

void main(void)
{  
    int timeout_cnt=0;
	int nadc;

	// note: x,y here are not the same as the x,y printed on joystick
	int vx100;
	int vy100;
	int vctrl100;
	int metal_freq = 0;
	int state_res = 0;
	int count_res = 0;
	int weight = 0;
	int weights[25] = {0};
	int angle = 0;
	char index=0;
	int old_weight = 0;
	int new_weight = 0;

		
	uint8_t charge[8] = {
		0b00000010, //       
		0b00000100, //   
		0b00001100, //       
		0b00011111, //  
		0b00000110, //  
		0b00000100, //       
		0b00001000, //       
		0x00  //       
	};

	Configure_Pins();
	LCD_4BIT();
	initADC();
	LCD_Custom_Char(0, charge);

	initUART2(9600);
	uart1_init();
	LCDprint("ELEC-291:       ", 1, 1);
	LCDprint("       Project2 ", 2, 1);

	waitms(1000);
	ReceptionOff();

	SendATCommand("AT+VER\r\n");
	SendATCommand("AT+BAUD\r\n");
	SendATCommand("AT+RFID\r\n");
	SendATCommand("AT+DVID\r\n");
	SendATCommand("AT+RFC002\r\n");
	SendATCommand("AT+POWE\r\n");
	SendATCommand("AT+CLSS\r\n");
	SendATCommand("AT+DVIDEF11\r\n");

	while(1)
	{	
		// auto mode
		// massage: 000,000,0,1
		if(auto_state){
			sprintf(buff, "%03d,%03d,0,%d\n", 0,0,auto_state);
			TIM22->CR1 &= ~BIT0; 
			LCDprint(   "Automode:       ",1,1);
			sprintf(lb, "Count:     %d/20",count_res);
			LCDprint(lb,2,1);

			if(!JOYBUT){
				sprintf(buff, "%03d,%03d,0,0\n", 161,166);
				while(!JOYBUT){
					auto_state = 0;
					eputc2('!'); 
					waitms(5); 			
					eputs2(buff); 		
					waitms(50);
				};
			}
			if (count_res == 20){
				auto_state=0;
				GPIOB->ODR &= ~BIT4;
				waitms(100);
				GPIOB->ODR |= BIT4;
				LCDprint("Automode:",1,1);
				LCDprint("Exiting...",2,1);
				record = 0;
				waitms(200);
			}

			else if(record < count_res){
				GPIOA->ODR &= ~BIT7;
				waitms(100);
				GPIOA->ODR |= BIT7;
				record = count_res;
			}
		}

		// manuel mode
		// massage: vx,vy,pick,auto
		else{
			TIM22->CR1 |= BIT0; 
			nadc=readADC(ADC_CHSELR_CHSEL8);
			vx100 = (int)100.0*(nadc*3.3)/0x1000;

			nadc=readADC(ADC_CHSELR_CHSEL9);
			vy100 = (int)100.0*(nadc*3.3)/0x1000;

			nadc=readADC(ADC_CHSELR_CHSEL6);
			vctrl100 = (int)100.0*(nadc*3.3)/0x1000;

			vctrl100 = 100*(vctrl100 - 167)/133;
			if(vctrl100 < 1){
				sprintf(lb,"Vx=%.2f   B:", vx100/100.0);
				LCDprint(lb,1,1);
				WriteCommand(0x8c);
				WriteData(0);
				WriteData(0);
			}	
			else if(vctrl100 > 100){
				sprintf(lb,"Vx=%.2f   B:100%%", vx100/100.0, vctrl100);
				LCDprint(lb,1,1);
			}		
			else {
				sprintf(lb,"Vx=%.2f   B:%d%%", vx100/100.0, vctrl100);
				LCDprint(lb,1,1);
			}	
			
			sprintf(lb,"Vy=%.2f", vy100/100.0);
			LCDprint(lb,2,1);

			if(!JOYBUT){
				button_counter = 0;
				while(!JOYBUT);
				if (button_counter<1000L){
					pick_order = 1;
					pick_counter = 0;
				} 
				else {
					Auto_enter();
					auto_state = 1;
					record = 0;
				}
			}
	
			if(!PB1){
				while(!PB1);
				// printf("1 pressed!\r\n");
				Coin_view();
			}
	
			if(!PB2){
				while(!PB2);
				// printf("2 pressed!\r\n");
			}

			sprintf(buff, "%03d,%03d,%01d,%01d\n", vx100, vy100, pick_order, auto_state); 

		}
		// Construct a test message
		// printf("%s\r\n",buff);
		eputc2('!'); 
		waitms(10); 			// This may need adjustment depending on how busy is the slave
		eputs2(buff); 			// Send the test message
		eputc2('@'); 			// Request a message from the slave
		
		timeout_cnt=0;
		while(1){
			if(ReceivedBytes2()>27) break; // Something has arrived
			if(++timeout_cnt>1000) break; // Wait up to 25ms for the repply
			Delay_us(100); // 100us*250=25ms
		}		
		if(ReceivedBytes2()>27){
			egets2(buff, sizeof(buff)-1);
			if(strlen(buff)==28){
				// if(auto_state)
				// {
				// 	printf("Slave_auto says: %s\r", buff);
				// } 
				// else
				// {
				// 	printf("Slave_manual says: %s\r", buff);
				// } 			
				sscanf(buff, "%01d,%02d,%04d,%05d,%03d,%03d,%03d",&state_res,&count_res,&metal_freq,&weight,&angle,&pwm_left,&pwm_right);
				weights[index % 25] = weight; 
        		index++;
				if (1){
					float std = calculate_std(weights, 25);
					if (std < 3000) {
						old_weight = new_weight;
						new_weight = calculate_mean(weights,25);
						Coin_chk(new_weight-old_weight);
						// printf("Coins: value: %d\r\n", new_weight-old_weight);
					}
				}
			}
			else{
				while (ReceivedBytes2()) egetc2(); 
				//printf("*** BAD MESSAGE ***: %s, length: %d\r", buff, (int)strlen(buff));
			}
		}
		else{
			while (ReceivedBytes2()) egetc2(); 
			//printf("NO RESPONSE\r\n");
			pick_order = 0;
		}

		// printf("Coins: liangkuai: %d, yikuai: %d, liangmaowu: %d, yimao: %d, wufen: %d\r\n", coins_count[0],coins_count[1],coins_count[2],coins_count[3],coins_count[4]);
		sprintf(buff, "%04d,%d,%d,%d,%d,%d,%d,%d\n", metal_freq, angle, coins_count[0], coins_count[1], coins_count[2], coins_count[3], coins_count[4], vctrl100);
		uart1_send_str(buff);
		buzzer_ctrl(metal_freq);
		waitms(30);  // Set the information interchange pace: communicate about every 50ms
	}
	
}
