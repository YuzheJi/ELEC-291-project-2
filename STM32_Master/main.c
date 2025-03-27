#include <stdio.h>
#include "../Common/Include/stm32l051xx.h"
#include "../Common/Include/serial.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "UART2.h"
#include "lcd.h"
#include "adc.h"


#define SYSCLK 32000000L
#define TIMER22_FREQ 1000L

long timer22_counter = 0;
long button_counter = 0;
int buzzer_wait = 6000; 		//buzzer wait time in ms
char buff[80];




// LQFP32 pinout
//              ----------
// 3.3v   VDD -|1       32|- VSS
//       PC14 -|2       31|- BOOT0
//       PC15 -|3       30|- PB7 buzzer
// RST   NRST -|4       29|- PB6
// 3.3v  VDDA -|5       28|- PB5
// LCD_RS PA0 -|6       27|- PB4
// LCD_E  PA1 -|7       26|- PB3
// LCD_D4 PA2 -|8       25|- PA15 TXD-radio
// LCD_D5 PA3 -|9       24|- PA14 RXD-radio
// LCD_D6 PA4 -|10      23|- PA13 SET-radio
// LCD_D7 PA5 -|11      22|- PA12 pushbutton 1
//        PA6 -|12      21|- PA11 pushbutton 2
//        PA7 -|13      20|- PA10 (Reserved for RXD)
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
	Set_Pin_Output(1,7,0);
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
		GPIOB->ODR &= ~BIT7;
		break;
	case 1:
		TIM21->CR1 |= BIT0;
		break;
	case 0:
		TIM21->CR1 &= ~BIT0;
		GPIOB->ODR &= ~BIT7;
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
	printf("Command: %s", s);
	GPIOA->ODR &= ~(BIT13); // 'set' pin to 0 is 'AT' mode.
	waitms(10);
	eputs2(s);
	egets2(buff, sizeof(buff)-1);
	GPIOA->ODR |= BIT13; // 'set' pin to 1 is normal operation mode.
	waitms(10);
	printf("Response: %s", buff);
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
	waitms(500);
	LCDprint("  Activatived!",2,1);
	waitms(1000);
} 
// timer21 ISR
void TIM21_Handler(void) 
{
	TIM21->SR &= ~BIT0; // clear update interrupt flag
	GPIOB->ODR ^= BIT7; // toggle output pin
}

// timer22 ISR
void TIM22_Handler(void) 
{	
	TIM22->SR &= ~BIT0; // clear update interrupt flag
	timer22_counter++; 
	button_counter++;
	if(timer22_counter < 101) Buzzer(1);
	else if (timer22_counter < buzzer_wait) Buzzer(0);
	else{
		timer22_counter = 0;
	} 
}

void Auto_mode(){

	int timeout_cnt;
	int no_res_count = 0;
	int command = 0;
	int state_res;
	int count;

	while(no_res_count > -1){
		sprintf(buff, "000,000,0,1\n"); 
		printf("%s\r\n",buff);
		eputc2('!'); 
		waitms(15); 
		eputs2(buff); 
		eputc2('@'); 	
		timeout_cnt=0;
		while(1){
			if(ReceivedBytes2()>4) break; // Something has arrived
			if(++timeout_cnt>250) break; // Wait up to 25ms for the repply
			Delay_us(100); 
		}
		if(ReceivedBytes2()>4){
			egets2(buff, sizeof(buff)-1);
			if(strlen(buff)==5){
				sscanf(buff,"%d,%02d",&state_res, &count);
				if(state_res == 1) no_res_count = -1;
			}
		}
		else {
			while (ReceivedBytes2()) egetc2(); 
			printf("no response auto_mode_setting %d\r\n",no_res_count);
			no_res_count++;
		}
		waitms(50);
		if(no_res_count>100){
			no_res_count = -1;
			state_res = 0;
			LCDprint("No response",1,1);
			LCDprint("Exiting... ",2,1);
			waitms(1000);
		}
	}

	while(state_res){
		if(!JOYBUT){
			button_counter = 0;
			while(!JOYBUT);
			if (button_counter<1500L);
			else {
				command = 0;
				printf("auto exit... \r\n");
			}
		}

		sprintf(buff, "000,000,0,%d\n",command); 
		printf("%s\r\n",buff);
		eputc2('!'); 
		waitms(15); 
		eputs2(buff); 
		eputc2('@'); // Request a message from the slave		
		timeout_cnt=0;
		while(1){
			if(ReceivedBytes2()>1) break; // Something has arrived
			if(++timeout_cnt>250) break; // Wait up to 25ms for the repply
			Delay_us(100); // 100us*250=25ms
		}
			
		if(ReceivedBytes2()>1) {
			egets2(buff, sizeof(buff)-1);
			if(strlen(buff)==1){
				printf("Slave says: %s\r", buff);
				sscanf(buff,"%01d,%02d",&state_res, &count);
			}
			else{
				while (ReceivedBytes2()) egetc2(); 
				printf("*** BAD MESSAGE ***: %s\r", buff);
			}
		}
		else {
			while (ReceivedBytes2()) egetc2(); 
			printf("NO RESPONSE\r\n");
		}
		waitms(50); 
	}
	return;
}

void main(void)
{  
	char lb[17];
    int timeout_cnt=0;
	int nadc;
	int pick_order = 0;
	int auto_state = 0;

	// note: x,y here are not the same as the x,y printed on joystick
	int vx100;
	int vy100;
	int vctrl100;
	int metal_freq = 0;
		
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
	LCDprint("ELEC-291:       ", 1, 1);
	LCDprint("       Project2 ", 2, 1);

	waitms(1000);
	LCDprint("Coin-Picking    ", 1, 1);
	LCDprint("          Robot ", 2, 1);
	waitms(1000);
	ReceptionOff();

	SendATCommand("AT+VER\r\n");
	SendATCommand("AT+BAUD\r\n");
	SendATCommand("AT+RFID\r\n");
	SendATCommand("AT+DVID\r\n");
	SendATCommand("AT+RFC002\r\n");
	SendATCommand("AT+POWE\r\n");
	SendATCommand("AT+CLSS\r\n");
	SendATCommand("AT+DVIDEFEF\r\n");

	while(1)
	{

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

		sprintf(buff, "%03d,%03d,%01d,%01d\n", vx100, vy100, pick_order, auto_state); // Construct a test message
		printf("%s\r\n",buff);
		eputc2('!'); 
		waitms(15); // This may need adjustment depending on how busy is the slave
		eputs2(buff); // Send the test message
		waitms(15); // This may need adjustment depending on how busy is the slave
		eputc2('@'); // Request a message from the slave
		
		timeout_cnt=0;
		while(1){
			if(ReceivedBytes2()>4) break; // Something has arrived
			if(++timeout_cnt>250) break; // Wait up to 25ms for the repply
			Delay_us(100); // 100us*250=25ms
		}		
		if(ReceivedBytes2()>4){
			egets2(buff, sizeof(buff)-1);
			if(strlen(buff)==5){
				printf("Slave says: %s\r", buff);
				sscanf(buff, "%04d",&metal_freq);
			}
			else{
				while (ReceivedBytes2()) egetc2(); 
				printf("*** BAD MESSAGE ***: %s\r", buff);
			}
		}
		else{
			while (ReceivedBytes2()) egetc2(); 
			printf("NO RESPONSE\r\n");
			pick_order = 0;
		}

		if(!JOYBUT){
			button_counter = 0;
			while(!JOYBUT);
			if (button_counter<1500L) pick_order = 1;
			else {
				auto_state = 1;
				Auto_enter();
				printf("auto \r\n");
				Auto_mode();
				auto_state = 0;
			}
		}

		if(!PB1){
			while(!PB1);
			printf("1 pressed!\r\n");
		}

		if(!PB2){
			while(!PB2);
			printf("2 pressed!\r\n");
		}

		buzzer_ctrl(metal_freq);

		TIM22->CR1 |= BIT0; 
		waitms(50);  // Set the information interchange pace: communicate about every 50ms
	}
	
}
