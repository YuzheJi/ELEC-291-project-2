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


// timer21 ISR
void TIM21_Handler(void) 
{
	TIM21->SR &= ~BIT0; // clear update interrupt flag
	GPIOB->ODR ^= BIT7; // toggle output pin
}
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
// LCD_D7 PA5 -|11      22|- PA12
//        PA6 -|12      21|- PA11 
//        PA7 -|13      20|- PA10 (Reserved for RXD)
// vy     PB0 -|14      19|- PA9  (Reserved for TXD)
// vx     PB1 -|15      18|- PA8  joystick button
// GND    VSS -|16      17|- VDD  3.3v
//              ----------
#define JOYBUT (GPIOA->IDR&BIT8) // PA8

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

	Set_Pin_Output(0,8,1);

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


void main(void)
{  
	char buff[80];
	char lb[17];
	long buzzer_freq = 300L;
    int timeout_cnt=0;
	int nadc;

	// note: x,y here are not the same as the x,y printed on joystick
	int vx100;
	int vy100;
	int vctrl100;


	Configure_Pins();
	LCD_4BIT();
	initADC();

	Setbuzzer_freq(buzzer_freq);

	initUART2(9600);
	LCDprint("ELEC-291:       ", 1, 1);
	LCDprint("       Project2 ", 2, 1);

	waitms(2000);

	LCDprint("Coin-Picking    ", 1, 1);
	LCDprint("          Robot ", 2, 1);

	waitms(2000);

	ReceptionOff();
	
	//WARNING: notice that printf() of floating point numbers is not enabled in the makefile!

	SendATCommand("AT+VER\r\n");
	SendATCommand("AT+BAUD\r\n");
	SendATCommand("AT+RFID\r\n");
	SendATCommand("AT+DVID\r\n");
	SendATCommand("AT+RFC\r\n");
	SendATCommand("AT+POWE\r\n");
	SendATCommand("AT+CLSS\r\n");
	
	// We should select an unique device ID.  The device ID can be a hex
	// number from 0x0000 to 0xFFFF.  In this case is set to 0xABBA
	SendATCommand("AT+DVIDEFEF\r\n");

   	// Display something in the LCD
	        //1234567890123456
	

	while(1)
	{

		nadc=readADC(ADC_CHSELR_CHSEL8);
		vx100 = (int)100.0*(nadc*3.3)/0x1000;

		nadc=readADC(ADC_CHSELR_CHSEL9);
		vy100 = (int)100.0*(nadc*3.3)/0x1000;

		Setbuzzer_freq(buzzer_freq+vy100*50);

		nadc=readADC(ADC_CHSELR_CHSEL6);
		vctrl100 = (int)100.0*(nadc*3.3)/0x1000;

		if(vctrl100/3<50)	sprintf(lb,"Vx=%.2f  B:100%%", vx100/100.0);
		else			sprintf(lb,"Vx=%.2f  B:%d%%", vx100/100.0, vctrl100/3);
		LCDprint(lb,1,1);

		
		sprintf(lb,"Vy=%.2f", vy100/100.0);
		LCDprint(lb,2,1);

		sprintf(buff, "%03d,%03d\n", vx100, vy100); // Construct a test message
		eputc2('!'); // Send a message to the slave. First send the 'attention' character which is '!'
		// Wait a bit so the slave has a chance to get ready
		waitms(20); // This may need adjustment depending on how busy is the slave
		eputs2(buff); // Send the test message
		
		
		waitms(20); // This may need adjustment depending on how busy is the slave

		eputc2('@'); // Request a message from the slave
		
		timeout_cnt=0;
		while(1)
		{
			if(ReceivedBytes2()>0) break; // Something has arrived
			if(++timeout_cnt>500) break; // Wait up to 25ms for the repply
			Delay_us(100); // 100us*250=25ms
		}
		
		if(ReceivedBytes2()>0) // Something has arrived from the slave
		{
			egets2(buff, sizeof(buff)-1);
			if(strlen(buff)==6) // Check for valid message size (5 characters + new line '\n')
			{
				printf("Slave says: %s\r", buff);
			}
			else
			{
				printf("*** BAD MESSAGE ***: %s\r", buff);
			}
		}
		else // Timed out waiting for reply
		{
			printf("NO RESPONSE\r\n", buff);
		}

		if(!JOYBUT){
			while(!JOYBUT);
			Buzzer(2); // toggle buzzer 
		}
		
		
		waitms(50);  // Set the information interchange pace: communicate about every 50ms
	}
	
}
