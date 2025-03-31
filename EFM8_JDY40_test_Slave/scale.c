#include <EFM8LB1.h>
#include <stdio.h>
#include <stdlib.h>


#define SYSCLK 72000000L
#define BAUDRATE 115200L
#define SARCLK 18000000L


#define DOUT P0_2  // Data output (DOUT pin)
#define PD_SCK P0_0 // Pulse to initiate conversion (PD_SCK pin)

char _c51_external_startup (void)
{
	// Disable Watchdog with key sequence
	SFRPAGE = 0x00;
	WDTCN = 0xDE; //First key
	WDTCN = 0xAD; //Second key
  
	VDM0CN=0x80;       // enable VDD monitor
	RSTSRC=0x02|0x04;  // Enable reset on missing clock detector and VDD

	#if (SYSCLK == 48000000L)	
		SFRPAGE = 0x10;
		PFE0CN  = 0x10; // SYSCLK < 50 MHz.
		SFRPAGE = 0x00;
	#elif (SYSCLK == 72000000L)
		SFRPAGE = 0x10;
		PFE0CN  = 0x20; // SYSCLK < 75 MHz.
		SFRPAGE = 0x00;
	#endif
	
	#if (SYSCLK == 12250000L)
		CLKSEL = 0x10;
		CLKSEL = 0x10;
		while ((CLKSEL & 0x80) == 0);
	#elif (SYSCLK == 24500000L)
		CLKSEL = 0x00;
		CLKSEL = 0x00;
		while ((CLKSEL & 0x80) == 0);
	#elif (SYSCLK == 48000000L)	
		// Before setting clock to 48 MHz, must transition to 24.5 MHz first
		CLKSEL = 0x00;
		CLKSEL = 0x00;
		while ((CLKSEL & 0x80) == 0);
		CLKSEL = 0x07;
		CLKSEL = 0x07;
		while ((CLKSEL & 0x80) == 0);
	#elif (SYSCLK == 72000000L)
		// Before setting clock to 72 MHz, must transition to 24.5 MHz first
		CLKSEL = 0x00;
		CLKSEL = 0x00;
		while ((CLKSEL & 0x80) == 0);
		CLKSEL = 0x03;
		CLKSEL = 0x03;
		while ((CLKSEL & 0x80) == 0);
	#else
		#error SYSCLK must be either 12250000L, 24500000L, 48000000L, or 72000000L
	#endif
	
	P0MDOUT |= 0x10; // Enable UART0 TX as push-pull output
	XBR0     = 0x01; // Enable UART0 on P0.4(TX) and P0.5(RX)                     
	XBR1     = 0X00;
	XBR2     = 0x40; // Enable crossbar and weak pull-ups

	// Configure Uart 0
	#if (((SYSCLK/BAUDRATE)/(2L*12L))>0xFFL)
		#error Timer 0 reload value is incorrect because (SYSCLK/BAUDRATE)/(2L*12L) > 0xFF
	#endif
	SCON0 = 0x10;
	TH1 = 0x100-((SYSCLK/BAUDRATE)/(2L*12L));
	TL1 = TH1;      // Init Timer1
	TMOD &= ~0xf0;  // TMOD: timer 1 in 8-bit auto-reload
	TMOD |=  0x20;                       
	TR1 = 1; // START Timer1
	TI = 1;  // Indicate TX0 ready
  	
	return 0;
}

// Uses Timer3 to delay <us> micro-seconds. 
void Timer3us(unsigned char us)
{
	unsigned char i;               // usec counter
	
	// The input for Timer 3 is selected as SYSCLK by setting T3ML (bit 6) of CKCON0:
	CKCON0|=0b_0100_0000;
	
	TMR3RL = (-(SYSCLK)/1000000L); // Set Timer3 to overflow in 1us.
	TMR3 = TMR3RL;                 // Initialize Timer3 for first overflow
	
	TMR3CN0 = 0x04;                 // Sart Timer3 and clear overflow flag
	for (i = 0; i < us; i++)       // Count <us> overflows
	{
		while (!(TMR3CN0 & 0x80));  // Wait for overflow
		TMR3CN0 &= ~(0x80);         // Clear overflow indicator
	}
	TMR3CN0 = 0 ;                   // Stop Timer3 and clear overflow flag
}

void waitms (unsigned int ms)
{
	unsigned int j;
	unsigned char k;
	for(j=0; j<ms; j++)
		for (k=0; k<4; k++) Timer3us(250);
}



unsigned long ReadHX711(void) {
    unsigned long dataa = 0;
    unsigned char i;
    unsigned int timeout = 10000;

    while (DOUT && timeout--) {
        waitms(1);
    }
    if (timeout == 0) {
        printf("Timeout waiting for DOUT low\n");
        return 0;
    }

    for (i = 0; i < 24; i++) {
        PD_SCK = 1;
        Timer3us(1);
        dataa = dataa << 1;
        if (DOUT) {
            dataa |= 0x01;
        }
        PD_SCK = 0;
        Timer3us(1);
    }

    PD_SCK = 1;
    Timer3us(1);
    PD_SCK = 0;
    Timer3us(1);

    return dataa;
}

void main(void) {
    unsigned long adc_recent = 0;
    unsigned long nickel =0, dime=0, quarter =0, loonie =0, toonie =0, adc_result = 0;
    double money_value;


    
    PD_SCK = 0; // Ensure HX711 is not in power-down mode
    P0MDOUT |= 0x01;  // P0_0 (PD_SCK) as push-pull output
    P0MDOUT &= ~0x04; // P0_2 (DOUT) as input

    waitms(2000);
    printf("Starting ADC Read...\n");
 
    while (1) {
    
		unsigned long new_coin = (unsigned long)abs((long)(adc_recent - adc_result));
        adc_result = ReadHX711();

        
        if(new_coin > 3500 && new_coin< 3900 ){
        	quarter +=1; //add quarter
        }
        	
        if(new_coin > 5000 && new_coin < 5300){
        	loonie += 1; //add toonie  
        }           
                
        if(new_coin > 5900 && new_coin< 6300 ){
        	toonie += 1; //add toonie
        }
        
		money_value = 0.05 * nickel + 0.1 * dime + 0.25 * quarter + loonie + 2 * toonie;

        if (adc_result == 0) {
            printf("Failed to read ADC result.\n\r");
        } else {
		    printf("Nickels: %lu, Dimes: %lu, Quarters: %lu, Loonies: %lu, Toonies: %lu\n", nickel, dime, quarter, loonie, toonie);
		    printf("Total Value: $%.2f\n", money_value);
		    printf("coinval = %lu\n", new_coin);
        }
        waitms(1500);
        adc_recent = ReadHX711();


    }
}