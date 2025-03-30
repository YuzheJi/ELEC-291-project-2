#include "../Common/Include/stm32l051xx.h"
#include "UART2.h"
#include <stdio.h>
#include <stdlib.h>

#define F_CPU 32000000L

// LQFP32 pinout
//             ----------
//       VDD -|1       32|- VSS
//      PC14 -|2       31|- BOOT0
//      PC15 -|3       30|- PB7
//      NRST -|4       29|- PB6
//      VDDA -|5       28|- PB5
//       PA0 -|6       27|- PB4
//       PA1 -|7       26|- PB3
//       PA2 -|8       25|- PA15
//       PA3 -|9       24|- PA14
//       PA4 -|10      23|- PA13
//       PA5 -|11      22|- PA12
//       PA6 -|12      21|- PA11
//       PA7 -|13      20|- PA10 (Reserved for RXD)
//       PB0 -|14      19|- PA9  (Reserved for TXD)
//       PB1 -|15      18|- PA8  (LED+1k)
//       VSS -|16      17|- VDD
//             ----------

// ********* Please use functions: ************
// track_Init();
// track_play(number);
// track_stop();
// ********************************************


unsigned char data[10] = {};

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

void waitus(unsigned char us){
	//For SysTick info check the STM32L0xxx Cortex-M0 programming manual page 85.
	SysTick->LOAD = (F_CPU * us /(1000000L)) - 1;  // set reload register, counter rolls over from zero, hence -1
	SysTick->VAL = 0; // load the SysTick counter
	SysTick->CTRL = SysTick_CTRL_CLKSOURCE_Msk | SysTick_CTRL_ENABLE_Msk; // Enable SysTick IRQ and SysTick Timer */
	while((SysTick->CTRL & BIT16)==0); // Bit 16 is the COUNTFLAG.  True when counter rolls over from zero.
	SysTick->CTRL = 0x00; // Disable Systick counter
}

void wait_1ms(void){
	//For SysTick info check the STM32L0xxx Cortex-M0 programming manual page 85.
	SysTick->LOAD = (F_CPU/1000L) - 1;  // set reload register, counter rolls over from zero, hence -1
	SysTick->VAL = 0; // load the SysTick counter
	SysTick->CTRL  = SysTick_CTRL_CLKSOURCE_Msk | SysTick_CTRL_ENABLE_Msk; // Enable SysTick IRQ and SysTick Timer */
	while((SysTick->CTRL & BIT16)==0); // Bit 16 is the COUNTFLAG.  True when counter rolls over from zero.
	SysTick->CTRL = 0x00; // Disable Systick counter
}

void waitms(int len){
	while(len--) wait_1ms();
}

void Send_oneline(unsigned char addr){
	unsigned char i;
	GPIOA->ODR &= ~BIT11;
	waitms(5);

	for(i = 0; i < 8; i++)
 	{
		GPIOA->ODR |= BIT11;
        if(addr & 1){
			waitus(199); /* 600us */
			waitus(199);
			waitus(200);

            GPIOA->ODR &= ~BIT11;
 			waitus(200); /* 200us */
 		}
 		else{
			waitus(200); /* 200us */
			GPIOA->ODR &= ~BIT11;
 			waitus(199); /* 600us */
			waitus(199);
			waitus(200);
 		}
		addr >>= 1; 
	}
	GPIOA->ODR |= BIT11;
}

void DFPlayer_SendCommand(unsigned char cmd, unsigned char param1, unsigned char param2)
{
	int i = 0;
    unsigned int sum = 0xFFFF - (0xFF + 0x06 + cmd + 0x00 + param1 + param2) + 1;
    unsigned char checksum_high = (sum >> 8) & 0xFF;
    unsigned char checksum_low = sum & 0xFF;
    
	data[0] = 0x7E;
	data[1] = 0xFF;
	data[2] = 0x06;
	data[3] = cmd;
	data[4] = 0x00;
	data[5] = param1;
	data[6] = param2;
	data[7] = checksum_high;
	data[8] = checksum_low;
	data[9] = 0xEF;

	for(i = 0; i < 10; i++){
		eputc2(data[i]);
	}

	waitms(50);
}


// Initialize DFPlayer Mini
void track_Init(void)
{
    //Allow DFPlayer to fully initialize - extended time
    waitms(1000);
    
    //Reset the module only once during initialization
    DFPlayer_SendCommand(0x0C, 0x00, 0x00);
    waitms(1000);  // Extended wait for reset to complete
    
    //Set volume to 20 (higher than before for better audibility)
    DFPlayer_SendCommand(0x06, 0x00, 30);
    waitms(200);
    
    //Specify SD card as playback source (0x02)
    DFPlayer_SendCommand(0x09, 0x00, 0x02);
    waitms(200);
    
    
}

void track_play(unsigned char track)
{
    DFPlayer_SendCommand(0x03, 0x00, track);    
}

void track_stop(void)
{
	DFPlayer_SendCommand(0x16, 0x00, 0x00);
}



void main(void)
{
	
    initUART2(9600);

	track_Init();
	waitms(200);

	track_play(1);

	// waitms(2000);
    // track_stop();

	while(1)
	{


	}
}
