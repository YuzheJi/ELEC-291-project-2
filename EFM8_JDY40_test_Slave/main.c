#include <EFM8LB1.h>
#include <stdlib.h>
#include <stdio.h>
#include <stdint.h>
#include <math.h>
#include <string.h>
#include "freq.h"

#define SYSCLK 72000000L // SYSCLK frequency in Hz
#define BAUDRATE 115200L
#define SARCLK 18000000L
#define RELOAD_10us (0x10000L-(SYSCLK/(12L*100000L))) // 10us rate
#define TIMER_0_FREQ 2000L // For a 0.5ms tick
#define F_SCK_MAX 2000000L   // SPI SCK 


//                                    ----------  
// 	                    P0.0      1  |          |  32      P0.1     
//                      GND       2  |          |  31      P0.2  	Coin detector
//                      5V        3  |          |  30      P0.3  	SCK
//                      5V        4  |          |  29      P0.4  	
//                      RST       5  |          |  28      P0.5  	
//                      P3.7      6  |          |  27      P0.6  	SDO (MISO)
//                      P3.3      7  |          |  26      P0.7  	SDI (MOSI)
//                      P3.2      8  |          |  25      P1.0  	CS
//                      P3.1      9  |          |  24      P1.1  	RXD (MCU: TXD)
//                      P3.0     10  |          |  23      P1.2  	TXD (MCU: RXD)
//                      P2.6     11  |          |  22      P1.3     Boundary1
//                      P2.5     12  |          |  21      P1.4  	Boundary2
// R_bridge_2           P2.4     13  |          |  20      P1.5  	Magnet
// R_bridge_1           P2.3     14  |          |  19      P1.6  	Servo_arm
// L_bridge_2           P2.2     15  |          |  18      P1.7  	Servo_base
// L_bridge_1           P2.1     16  |          |  17      P2.0     RF_SET
//                                    ----------  

// Definitions
#define R_bridge_1 P2_4
#define R_bridge_2 P2_3
#define L_bridge_2 P2_2
#define L_bridge_1 P2_1
#define Servo_base P1_7
#define Servo_arm  P1_6
#define Magnet 	   P1_5
#define CS 		   P1_0
#define DOUT 	   P2_6  // Data output (DOUT pin)
#define PD_SCK 	   P2_5 // Pulse to initiate conversion (PD_SCK pin)

// Constant Definitions
#define M_PI 3.14159265358979323846

// BMM150 Registers 
#define BMM150_CHIP_ID          			0x40 // the chip identification number 0x32 -> read only if 0x4B bit enabled
#define BMM150_DATA_X_LSB       			0x42 // X axis
#define BMM150_DATA_X_MSB       			0x43
#define BMM150_DATA_Y_LSB       			0x44 // Y axis
#define BMM150_DATA_Y_MSB       			0x45
#define BMM150_DATA_Z_LSB       			0x46 // Z axis
#define BMM150_DATA_Z_MSB       			0x47
#define BMM150_RHALL_LSB        			0x48 // hall resistance and Data Ready (DRDT) status bit
#define BMM150_RHALL_MSB        			0x49 // hall resistance 
#define BMM150_STATUS_REGISTER  			0x4A 
#define BMM150_POWER_CONTROL    			0x4B 
#define BMM150_OP_MODE          			0x4C
#define BMM150_INTERRUPT        			0x4D
#define BMM150_REP_XY           			0x51
#define BMM150_REP_Z            			0x52
#define BMM150_DIG_X1						0x5D
#define BMM150_DIG_Z4_LSB					0x62
#define BMM150_DIG_Z2_LSB					0x68

// BMM150 Constants
#define BMM150_CHIP_ID_VALUE    			0x32
#define BMM150_POWER_ON         			0x01
#define BMM150_NORMAL_MODE      			0x00
#define BMM150_ODR_10HZ         			0x00  // Output data rate 10Hz
#define BMM150_DATA_READY       			0x01
#define BMM150_OVERFLOW_OUTPUT				-32768
#define BMM150_OVERFLOW_ADCVAL_XYAXES_FLIP	INT16_C(-4096)
#define BMM150_OVERFLOW_ADCVAL_ZAXIS_HALL 	INT16_C(-16384)
#define BMM150_POSITIVE_SATURATION_Z 		INT16_C(32767)
#define BMM150_NEGATIVE_SATURATION_Z 		INT16_C(-32767)


// Global variables 
idata char buff[20];
xdata unsigned int pwm_counter = 0; 
xdata unsigned int servo_counter = 0; 
xdata unsigned char pwm_left = 0, pwm_right = 0; 
xdata unsigned char L_motor_dir = 1, R_motor_dir = 1; // 1 - Forward, 0 - Backward
xdata unsigned char servo_base = 1, servo_arm = 1; 
xdata int vx_thres = 161, vy_thres = 166; 
xdata int vx = 0, vy = 0; 
xdata long freq100;
xdata unsigned int fre_mea_count = 0;
xdata unsigned int weight_mea_count = 0;
xdata int d1, d2;
xdata unsigned int seed = 12345;
xdata float pwm_corr = 0.95;
//BMM150 Global Variables
xdata int8_t dig_x1, dig_x2, dig_y1, dig_y2; 
xdata uint16_t  dig_z1, dig_z2, dig_z3, dig_z4;
xdata uint8_t dig_xy1; 
xdata int8_t dig_xy2; 
xdata uint16_t dig_xyz1; 
xdata float curr_angle=0.0; 
xdata char mea_yes = 1;
xdata unsigned int weight = 0;
// xdata int8_t correction_factor = 0; 


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


	P0MDOUT |= 0b_1100_0000;
	P1MDOUT |= 0b_0000_0110;
	P2MDOUT |= 0b_0000_0001; // P2.0 in push-pull mode
	XBR0     = 0b_0000_0011; // UART0E = 1 and SPI0E = 1               
	XBR1     = 0b_0000_0000;
	XBR2     = 0b_0100_0001; // Enable crossbar and uart 1
	P0SKIP 	 = 0b_0000_0111; 
	P1SKIP   = 0b_1111_1001;
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
  	P2_0=1; // 'set' pin to 1 is normal operation mode.

	// Configure SPI
    SPI0CKR = (SYSCLK/(2*F_SCK_MAX))-1;
    SPI0CFG = 0b_1110_0000; // SPI mode 3
    SPI0CN0 = 0b_0000_0001; // SPI enabled and in three wire mode

    // Initialize Timer 5 for periodic interrupts
	SFRPAGE=0x10;
	TMR5CN0=0x00;
	TMR5=0xffff;   // Set to reload immediately
	EIE2|=0b_0000_1000; // Enable Timer5 interrupts
	TR5=1;         // Start Timer5 (TMR5CN0 is bit addressable)
	
	EA=1;  // Enable global interrupts
	SFRPAGE=0x00;
	
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

unsigned char SPI_transfer(unsigned char tx_data)
{
    SPI0DAT = tx_data;  // Send data
    while (!SPIF);      // Wait for transfer to complete
    SPIF = 0;           // Clear SPI interrupt flag
    return SPI0DAT;     // Return received data
}

unsigned char SPI_read(unsigned char reg_addr)
{
    xdata unsigned char value;
    
    // For SPI read operation, set MSB of address to 1
    reg_addr = reg_addr | 0x80;
    
    CS = 0;                // Select the device
    SPI_transfer(reg_addr);     // Send register address
    value = SPI_transfer(0x00); // Read value (send dummy byte) dummy byte is a placeholder byte sent by the master when it wants to receive data
    CS = 1;                // Deselect the device
    
    return value;
}

void SPI_write(unsigned char reg_addr, unsigned char reg_value)
{
    // For SPI write operation, MSB should be 0
    reg_addr = reg_addr & 0x7F;
    
    CS = 0;                // Select device
    SPI_transfer(reg_addr);     // Send register address
    SPI_transfer(reg_value);    // Send value
    CS = 1;                // Deselect device
}

void BMM150_Read_Trim_Registers(void)
{
	xdata uint8_t i; 
	xdata uint16_t temp_msb; 
	xdata uint8_t trim_x1y1[2] = {0};
	xdata uint8_t trim_xyz_data[4] = {0};
	xdata uint8_t trim_xy1xy2[10] = {0};
	temp_msb = 0; 
	// Reading trim_x1y1 at 0x5D
	for (i=0;i<2;i++){
		trim_x1y1[i] = SPI_read(BMM150_DIG_X1+i); 
	}
	for (i=0;i<4;i++){
		trim_xyz_data[i] = SPI_read(BMM150_DIG_Z4_LSB+i);
	}
	for (i=0;i<10;i++){
		trim_xy1xy2[i] = SPI_read(BMM150_DIG_Z2_LSB+i);
	}
	// Update trim data 
	dig_x1 = (int8_t) trim_x1y1[0]; 
	dig_y1 = (int8_t) trim_x1y1[1]; 
	dig_x2 = (int8_t) trim_xyz_data[2]; 
	dig_y2 = (int8_t) trim_xyz_data[3]; 

	// temp_msb = ((uint16_t)trim_xy1xy2[3]) << 8;
	// dig_z1 = (uint16_t)(temp_msb | trim_xy1xy2[2]);

	// temp_msb = ((uint16_t)trim_xy1xy2[1]) << 8;
	// dig_z2 = (int16_t)(temp_msb | trim_xy1xy2[0]);

	// temp_msb = ((uint16_t)trim_xy1xy2[7]) << 8;
	// dig_z3 = (int16_t)(temp_msb | trim_xy1xy2[6]);

	// temp_msb = ((uint16_t)trim_xyz_data[1]) << 8;
	// dig_z4 = (int16_t)(temp_msb | trim_xyz_data[0]);

	dig_xy1 = trim_xy1xy2[9];
	dig_xy2 = (int8_t)trim_xy1xy2[8];

	temp_msb = ((uint16_t)(trim_xy1xy2[5] & 0x7F)) << 8;
	dig_xyz1 = (uint16_t)(temp_msb | trim_xy1xy2[4]);

}

void BMM150_Init(void)
{
    xdata unsigned char chip_id;
    
    // Set all required pins
    CS = 1; // Deselect BMM150
    
    // Wait for sensor startup
    waitms(10);
    
    // Software reset by setting bit 7 and bit 1 in register 0x4B
    SPI_write(BMM150_POWER_CONTROL, 0x82);
    waitms(10);  // Wait for reset to complete
    
    // Power on the sensor (set power control bit)
    SPI_write(BMM150_POWER_CONTROL, BMM150_POWER_ON);
    waitms(5);
    
    // Read and verify chip ID
    chip_id = SPI_read(BMM150_CHIP_ID);
    if (chip_id != BMM150_CHIP_ID_VALUE)
    {
        printf("Error: Could not find BMM150 sensor (Chip ID: 0x%02X)\r\n", chip_id);
        while (1) {
            printf("Press restart to check again!\r");
        }; // Halt if sensor not found
    }
	else {
		printf("DONE! Chip ID = 0x%02X\r\n", chip_id);
	}
    
    // Set operation mode to normal and data rate to 10Hz
    SPI_write(BMM150_OP_MODE, BMM150_NORMAL_MODE | (BMM150_ODR_10HZ * 8));
    
    // Set repetitions for XY and Z axes for regular preset
    SPI_write(BMM150_REP_XY, 0x7F); // XY-repetitions = 9
    SPI_write(BMM150_REP_Z, 0x0E);  // Z-repetitions = 15

	BMM150_Read_Trim_Registers();
    
    printf("BMM150 initialized successfully! Chip ID: 0x%02X\r\n", chip_id);
	return; 
}

int16_t BMM150_compensate_x(int16_t *mag_data_x, int16_t *data_rhall)
{
	xdata int16_t retval;
    xdata uint16_t process_comp_x0;
    xdata int32_t process_comp_x1;
    xdata uint16_t process_comp_x2;
    xdata int32_t process_comp_x3;
    xdata int32_t process_comp_x4;
    xdata int32_t process_comp_x5;
    xdata int32_t process_comp_x6;
    xdata int32_t process_comp_x7;
    xdata int32_t process_comp_x8;
    xdata int32_t process_comp_x9;
    xdata int32_t process_comp_x10;

	//initialize value
	process_comp_x0 = 0; 

	if (*mag_data_x != BMM150_OVERFLOW_ADCVAL_XYAXES_FLIP){
		if (*data_rhall != 0)
		{
			/* Availability of valid data */
			process_comp_x0 = *data_rhall;
		}
		else if (dig_xyz1 != 0)
		{
			process_comp_x0 = dig_xyz1;
		}
		else
		{
			process_comp_x0 = 0;
		}
		if (process_comp_x0 != 0)
		{
			/* Processing compensation equations */
			process_comp_x1 = ((int32_t)dig_xyz1) * 16384;
			process_comp_x2 = ((uint16_t)(process_comp_x1 / process_comp_x0)) - ((uint16_t)0x4000);
			retval = ((int16_t)process_comp_x2);
			process_comp_x3 = (((int32_t)retval) * ((int32_t)retval));
			process_comp_x4 = (((int32_t)dig_xy2) * (process_comp_x3 / 128));
			process_comp_x5 = (int32_t)(((int16_t)dig_xy1) * 128);
			process_comp_x6 = ((int32_t)retval) * process_comp_x5;
			process_comp_x7 = (((process_comp_x4 + process_comp_x6) / 512) + ((int32_t)0x100000));
			process_comp_x8 = ((int32_t)(((int16_t)dig_x2) + ((int16_t)0xA0)));
			process_comp_x9 = ((process_comp_x7 * process_comp_x8) / 4096);
			process_comp_x10 = ((int32_t)*mag_data_x) * process_comp_x9;
			retval = ((int16_t)(process_comp_x10 / 8192));
			retval = (retval + (((int16_t)dig_x1) * 8)) / 16;
		}
		else {
			retval = BMM150_OVERFLOW_OUTPUT; 
		}
	}
	else{
		retval = BMM150_OVERFLOW_OUTPUT; 
	}
	return retval; 
}

int16_t BMM150_compensate_y (int16_t *mag_data_y, int16_t *data_rhall)
{
	xdata int16_t retval;
    xdata uint16_t process_comp_y0;
    xdata int32_t process_comp_y1;
    xdata uint16_t process_comp_y2;
    xdata int32_t process_comp_y3;
    xdata int32_t process_comp_y4;
    xdata int32_t process_comp_y5;
    xdata int32_t process_comp_y6;
    xdata int32_t process_comp_y7;
    xdata int32_t process_comp_y8;
    xdata int32_t process_comp_y9;

	//initialize variable
	process_comp_y0 = 0; 

    /* Overflow condition check */
    if (*mag_data_y != BMM150_OVERFLOW_ADCVAL_XYAXES_FLIP)
    {
        if (*data_rhall != 0)
        {
            /* Availability of valid data */
            process_comp_y0 = *data_rhall;
        }
        else if (dig_xyz1 != 0)
        {
            process_comp_y0 = dig_xyz1;
        }
        else
        {
            process_comp_y0 = 0;
        }

        if (process_comp_y0 != 0)
        {
            /* Processing compensation equations */
            process_comp_y1 = (((int32_t)dig_xyz1) * 16384) / process_comp_y0;
            process_comp_y2 = ((uint16_t)process_comp_y1) - ((uint16_t)0x4000);
            retval = ((int16_t)process_comp_y2);
            process_comp_y3 = ((int32_t) retval) * ((int32_t)retval);
            process_comp_y4 = ((int32_t)dig_xy2) * (process_comp_y3 / 128);
            process_comp_y5 = ((int32_t)(((int16_t)dig_xy1) * 128));
            process_comp_y6 = ((process_comp_y4 + (((int32_t)retval) * process_comp_y5)) / 512);
            process_comp_y7 = ((int32_t)(((int16_t)dig_y2) + ((int16_t)0xA0)));
            process_comp_y8 = (((process_comp_y6 + ((int32_t)0x100000)) * process_comp_y7) / 4096);
            process_comp_y9 = (((int32_t)*mag_data_y) * process_comp_y8);
            retval = (int16_t)(process_comp_y9 / 8192);
            retval = (retval + (((int16_t)dig_y1) * 8)) / 16;
        }
        else
        {
            retval = BMM150_OVERFLOW_OUTPUT;
        }
    }
    else
    {
        /* Overflow condition */
        retval = BMM150_OVERFLOW_OUTPUT;
    }

    return retval;
}

void BMM150_Read_Data(int16_t *mag_x, int16_t *mag_y)
{
	xdata uint8_t raw_x_lsb, raw_x_msb, raw_y_lsb, raw_y_msb, raw_rhall_lsb, raw_rhall_msb; 
	// xdata uint8_t raw_z_lsb, raw_z_msb; 
	// xdata int16_t z_val; 
	xdata int16_t x_val, y_val, rhall_val;  
	xdata int16_t msb_data; 
	raw_x_lsb = SPI_read(BMM150_DATA_X_LSB);
	raw_x_msb = SPI_read(BMM150_DATA_X_MSB);
	raw_y_lsb = SPI_read(BMM150_DATA_Y_LSB);
	raw_y_msb = SPI_read(BMM150_DATA_Y_MSB);
	// raw_z_lsb = SPI_read(BMM150_DATA_Z_LSB);
	// raw_z_msb = SPI_read(BMM150_DATA_Z_MSB);
	raw_rhall_lsb = SPI_read(BMM150_RHALL_LSB); 
	raw_rhall_msb = SPI_read(BMM150_RHALL_MSB);


	// Extract X data (13-bit, 2's complement)
	raw_x_lsb = ((raw_x_lsb & 0b_1111_1000)) >> 3;
	msb_data = ((int16_t)((int8_t)raw_x_msb)) << 5; 
	x_val = (int16_t)(msb_data | raw_x_lsb);

	// Extract Y data (13-bit, 2's complement)
	raw_y_lsb = ((raw_y_lsb & 0b_1111_1000)) >> 3;
	msb_data = ((int16_t)((int8_t)raw_y_msb)) << 5; 
	y_val = (int16_t)(msb_data | raw_y_lsb);

	// Extract Z data (15-bit, 2's complement) - NOT USED 
	// raw_z_lsb = ((raw_z_lsb & 0xFE) >> 1);
	// msb_data = ((int16_t)((int8_t)raw_z_msb)) >> 7; 
	// z_val = (int16_t)(msb_data | raw_z_lsb);

	//Extract R-HALL data (14-bit, 2's complement)
	raw_rhall_lsb = ((raw_rhall_lsb & 0xFC) >> 2);
	rhall_val = (uint16_t)(((uint16_t)raw_rhall_msb << 6) | raw_rhall_lsb);

	// printf("%d, %d, %d, %d\r\n", x_val, y_val, z_val, rhall_val);
	*mag_x = BMM150_compensate_x(&x_val, &rhall_val);
	*mag_y = BMM150_compensate_y(&y_val, &rhall_val);
	// *mag_z = BMM150_compensate_z(&z_val, &rhall_val);
	// printf("%d, %d\r\n", *mag_x, *mag_y);
}


void UART1_Init (unsigned long baudrate)
{
    SFRPAGE = 0x20;
	SMOD1 = 0x0C; // no parity, 8 data bits, 1 stop bit
	SCON1 = 0x10;
	SBCON1 =0x00;   // disable baud rate generator
	SBRL1 = 0x10000L-((SYSCLK/baudrate)/(12L*2L));
	TI1 = 1; // indicate ready for TX
	SBCON1 |= 0x40;   // enable baud rate generator
	SFRPAGE = 0x00;
}

void putchar1 (char c) 
{
    SFRPAGE = 0x20;
	while (!TI1);
	TI1=0;
	SBUF1 = c;
	SFRPAGE = 0x00;
}

void sendstr1 (char * s)
{
	while(*s)
	{
		putchar1(*s);
		s++;	
	}
}

char getchar1 (void)
{
	xdata char c;
    SFRPAGE = 0x20;
	while (!RI1);
	RI1=0;
	// Clear Overrun and Parity error flags 
	SCON1&=0b_0011_1111;
	c = SBUF1;
	SFRPAGE = 0x00;
	return (c);
}

char getchar1_with_timeout (void)
{
	xdata char c;
	xdata unsigned int timeout;
    SFRPAGE = 0x20;
    timeout=0;
	while (!RI1)
	{
		SFRPAGE = 0x00;
		Timer3us(20);
		SFRPAGE = 0x20;
		timeout++;
		if(timeout==25000)
		{
			SFRPAGE = 0x00;
			return ('\n'); // Timeout after half second
		}
	}
	RI1=0;
	// Clear Overrun and Parity error flags 
	SCON1&=0b_0011_1111;
	c = SBUF1;
	SFRPAGE = 0x00;
	return (c);
}

void getstr1 (char * s, unsigned char n)
{
	xdata char c;
	xdata unsigned char cnt;
	
	cnt=0;
	while(1)
	{
		c=getchar1_with_timeout();
		if(c=='\n')
		{
			*s=0;
			return;
		}
		
		if (cnt<n)
		{
			cnt++;
			*s=c;
			s++;
		}
		else
		{
			*s=0;
			return;
		}
	}
}

// RXU1 returns '1' if there is a byte available in the receive buffer of UART1
bit RXU1 (void)
{
	bit mybit;
    SFRPAGE = 0x20;
	mybit=RI1;
	SFRPAGE = 0x00;
	return mybit;
}

void waitms_or_RI1 (unsigned int ms)
{
	xdata unsigned int j;
	xdata unsigned char k;
	for(j=0; j<ms; j++)
	{
		for (k=0; k<4; k++)
		{
			if(RXU1()) return;
			Timer3us(250);
		}
	}
}

void SendATCommand (char * s)
{
	printf("Command: %s", s);
	P2_0=0; // 'set' pin to 0 is 'AT' mode.
	waitms(5);
	sendstr1(s);
	getstr1(buff, sizeof(buff)-1);
	waitms(10);
	P2_0=1; // 'set' pin to 1 is normal operation mode.
	printf("Response: %s\r\n", buff);
}

void ReceptionOff (void)
{
	P2_0=0; // 'set' pin to 0 is 'AT' mode.
	waitms(10);
	sendstr1("AT+DVID0000\r\n"); // Some unused id, so that we get nothing in RXD1.
	waitms(10);
	// Clear Overrun and Parity error flags 
	SCON1&=0b_0011_1111;
	P2_0=1; // 'set' pin to 1 is normal operation mode.
}

void Set_Pin_Output (unsigned char pin)
{
	unsigned char mask;
	
	mask=(1<<(pin&0x7));
	switch(pin/0x10)
	{
		case 0: P0MDOUT |= mask; break;
		case 1: P1MDOUT |= mask; break;
		case 2: P2MDOUT |= mask; break; 
		case 3: P3MDOUT |= mask; break; 
	}	
}

void Set_Pin_Input (unsigned char pin)
{
	xdata unsigned char mask;
	
	mask=(1<<(pin&0x7));
	mask=~mask;
	switch(pin/0x10)
	{
		case 0: P0MDOUT &= mask; break;
		case 1: P1MDOUT &= mask; break;
		case 2: P2MDOUT &= mask; break; 
		case 3: P3MDOUT &= mask; break; 
	}	
}

void InitADC (void)
{
	SFRPAGE = 0x00;
	ADEN=0; // Disable ADC
	
	ADC0CN1=
		(0x2 << 6) | // 0x0: 10-bit, 0x1: 12-bit, 0x2: 14-bit
        (0x0 << 3) | // 0x0: No shift. 0x1: Shift right 1 bit. 0x2: Shift right 2 bits. 0x3: Shift right 3 bits.		
		(0x0 << 0) ; // Accumulate n conversions: 0x0: 1, 0x1:4, 0x2:8, 0x3:16, 0x4:32
	
	ADC0CF0=
	    ((SYSCLK/SARCLK) << 3) | // SAR Clock Divider. Max is 18MHz. Fsarclk = (Fadcclk) / (ADSC + 1)
		(0x0 << 2); // 0:SYSCLK ADCCLK = SYSCLK. 1:HFOSC0 ADCCLK = HFOSC0.
	
	ADC0CF1=
		(0 << 7)   | // 0: Disable low power mode. 1: Enable low power mode.
		(0x1E << 0); // Conversion Tracking Time. Tadtk = ADTK / (Fsarclk)
	
	ADC0CN0 =
		(0x0 << 7) | // ADEN. 0: Disable ADC0. 1: Enable ADC0.
		(0x0 << 6) | // IPOEN. 0: Keep ADC powered on when ADEN is 1. 1: Power down when ADC is idle.
		(0x0 << 5) | // ADINT. Set by hardware upon completion of a data conversion. Must be cleared by firmware.
		(0x0 << 4) | // ADBUSY. Writing 1 to this bit initiates an ADC conversion when ADCM = 000. This bit should not be polled to indicate when a conversion is complete. Instead, the ADINT bit should be used when polling for conversion completion.
		(0x0 << 3) | // ADWINT. Set by hardware when the contents of ADC0H:ADC0L fall within the window specified by ADC0GTH:ADC0GTL and ADC0LTH:ADC0LTL. Can trigger an interrupt. Must be cleared by firmware.
		(0x0 << 2) | // ADGN (Gain Control). 0x0: PGA gain=1. 0x1: PGA gain=0.75. 0x2: PGA gain=0.5. 0x3: PGA gain=0.25.
		(0x0 << 0) ; // TEMPE. 0: Disable the Temperature Sensor. 1: Enable the Temperature Sensor.

	ADC0CF2= 
		(0x0 << 7) | // GNDSL. 0: reference is the GND pin. 1: reference is the AGND pin.
		(0x1 << 5) | // REFSL. 0x0: VREF pin (external or on-chip). 0x1: VDD pin. 0x2: 1.8V. 0x3: internal voltage reference.
		(0x1F << 0); // ADPWR. Power Up Delay Time. Tpwrtime = ((4 * (ADPWR + 1)) + 2) / (Fadcclk)
	
	ADC0CN2 =
		(0x0 << 7) | // PACEN. 0x0: The ADC accumulator is over-written.  0x1: The ADC accumulator adds to results.
		(0x0 << 0) ; // ADCM. 0x0: ADBUSY, 0x1: TIMER0, 0x2: TIMER2, 0x3: TIMER3, 0x4: CNVSTR, 0x5: CEX5, 0x6: TIMER4, 0x7: TIMER5, 0x8: CLU0, 0x9: CLU1, 0xA: CLU2, 0xB: CLU3

	ADEN=1; // Enable ADC
}

void InitPinADC (unsigned char portno, unsigned char pin_num)
{
	unsigned char mask;
	
	mask=1<<pin_num;

	SFRPAGE = 0x20;
	switch (portno)
	{
		case 0:
			P0MDIN &= (~mask); // Set pin as analog input
			P0SKIP |= mask; // Skip Crossbar decoding for this pin
		break;
		case 1:
			P1MDIN &= (~mask); // Set pin as analog input
			P1SKIP |= mask; // Skip Crossbar decoding for this pin
		break;
		case 2:
			P2MDIN &= (~mask); // Set pin as analog input
			P2SKIP |= mask; // Skip Crossbar decoding for this pin
		break;
		default:
		break;
	}
	SFRPAGE = 0x00;
}

unsigned int ADC_at_Pin(unsigned char pin)
{
	ADC0MX = pin;   // Select input from pin
	ADINT = 0;
	ADBUSY = 1;     // Convert voltage at the pin
	while (!ADINT); // Wait for conversion to complete
	return (ADC0);
}

int ReadHX711(void) {
    xdata unsigned long dataa = 0;
    xdata char i;
	xdata unsigned int ans = 0;
	xdata volatile char j;

	PD_SCK = 0;

    for (i = 0; i < 24; i++) {
        PD_SCK = 1;
        for (j = 0; j < 4; j++);
        dataa = dataa << 1;
        if (DOUT) {
            dataa |= 0x01;
        }
        PD_SCK = 0;
        for (j = 0; j < 4; j++);
    }

    PD_SCK = 1;
    for (j = 0; j < 4; j++);
    PD_SCK = 0;
    for (j = 0; j < 4; j++);
	ans = (dataa % 1000000)/10;
    return ans;
}

void Timer5_ISR (void) interrupt INTERRUPT_TIMER5
{
	SFRPAGE=0x10;
	TF5H = 0; // Clear Timer5 interrupt flag
	TMR5RL = RELOAD_10us; // Reload Timer5 for 10us intervals 

	fre_mea_count++;
	if(fre_mea_count == 1000){
		fre_mea_count = 0;
		if(mea_yes) freq100 = get_freq();
	}

	weight_mea_count++;
	if(weight_mea_count == 20000){
		weight_mea_count = 0;
		if(mea_yes) weight = ReadHX711();
	}

    pwm_counter++; 
    if (pwm_counter == 100){
        pwm_counter = 0; 
    }

    if (pwm_right > pwm_counter){
        if(L_motor_dir){
            L_bridge_1 = 1; 
            L_bridge_2 = 0; 
        }
        else {
            L_bridge_1 = 0; 
            L_bridge_2 = 1; 
        }
    }
    else {
        L_bridge_1 = 0; 
        L_bridge_2 = 0; 
    }
    if (pwm_left > pwm_counter){
        if (R_motor_dir){
            R_bridge_1 = 1; 
            R_bridge_2 = 0;
        } 
        else {
            R_bridge_1 = 0; 
            R_bridge_2 = 1;
        }
    }
    else {
        R_bridge_1 = 0; 
        R_bridge_2 = 0; 
    }

	servo_counter++;
	if(servo_counter==2000)
	{
		servo_counter=0;
		Servo_arm=1;
		Servo_base=1;
	}
	if(servo_arm==servo_counter)
	{
		Servo_arm=0;
	}
	if(servo_base==servo_counter)
	{
		Servo_base=0;
	}
}

void servo_pick(){
	xdata int i;
	servo_arm = 1;
	servo_base = 1;
	servo_base = 250;
	waitms(200);
	servo_arm = 250;
	Magnet = 1;
	waitms(200);
	for(i = 0; i<89; i++){
		waitms(5);
		servo_base--;
	}
	waitms(200);
	for(i = 0; i<159; i++){
		waitms(5);
		servo_arm--;
	}
	waitms(200);
	for(i = 0; i<65; i++){
		waitms(5);
		servo_base--;
	}
	waitms(500);
	Magnet = 0;
	waitms(200);
	servo_arm=1;
	servo_base=1;
	return;
}

int check_bound(int d1, int d2){
	if(d1>12000||d2>12000)	return 1;
	else return 0;
}

void Init_all(){

	Set_Pin_Output(0x24);
    Set_Pin_Output(0x23);
    Set_Pin_Output(0x22);
    Set_Pin_Output(0x21);
	Set_Pin_Output(0x17);
	Set_Pin_Output(0x16);
	Set_Pin_Output(0x15);
	Set_Pin_Output(0x10); // CS

	Set_Pin_Input(0x30);
	Set_Pin_Output(0x25); // CLK for Load
	Set_Pin_Input(0x26);
	

	InitPinADC(1,3);
	InitPinADC(1,4);
	InitADC();

	TMOD&=0b_1111_0000; 
	TMOD|=0b_0000_0001; 
	TR0=0; 

	Servo_arm=0;
	Servo_base=0;
	Magnet = 0;
	PD_SCK = 0;
	return;
}

void Move_back_ms(int ms){

	L_motor_dir = 1;
	R_motor_dir = 1;

	pwm_left = 50;
	pwm_right = 50;

	waitms(ms);

	L_motor_dir = 0;
	R_motor_dir = 0;
	pwm_left = 0;
	pwm_right = 0;
	return;
}

void Right_angle(int angle){

	L_motor_dir = 1;
	R_motor_dir = 0;
	pwm_left = 80;
	pwm_right = 80 * pwm_corr;

	waitms(angle);

	L_motor_dir = 0;
	R_motor_dir = 0;
	pwm_left = 0;
	pwm_right = 0;
	return;
}

void Move_forward(){

	L_motor_dir = 0;
	R_motor_dir = 0;
	pwm_left = 60;
	pwm_right = 60 * pwm_corr;
	return;
}

unsigned int simple_rand() {
    seed = (seed * 25173 + 13849) & 0xFFFF;  
    return seed;     
}

unsigned int get_random_90_250() {
    return (simple_rand() % (250 - 85 + 1)) + 85;
}

float Read_angle(void)
{
	xdata uint8_t i; 
	xdata int16_t mag_x, mag_y; 
	xdata float sum_x, sum_y; 
	xdata float angle; 

	sum_x = 0.0; sum_y = 0.0;
	angle = 0.0; 

	for (i = 0; i < 10; i++){
		BMM150_Read_Data(&mag_x, &mag_y);
		sum_x += (float)mag_x; 
		sum_y += (float)mag_y; 
		waitms(1);
	}
	angle = atan2f(sum_y/25.0, sum_x/25.0) * 180.0 / M_PI;
	if (angle < 0.0) angle += 360.0; 
	if (angle > 360.0) angle -= 360.0; 
	return angle; 
}

void Auto_mode_slave(){
	xdata int count = 0;
	xdata int command;
	xdata int state_res = 1;
	xdata int bound = 0;
	xdata char c;
	xdata int dummy;
	xdata unsigned int angle;


	while(count < 20 && state_res){
		
		if(RXU1()){
			c=getchar1();	
			if(c=='!'){
				getstr1(buff, sizeof(buff)-1);
				if(strlen(buff)==11){
					printf("master_messgae_auto_mode: %s\r\n", buff);
					sscanf(buff,"%03d,%03d,%01d,%01d",&dummy, &dummy,&dummy,&command);
					if(command) state_res = 1;
					else state_res = 0;
				}
				// else{
				// 	printf("bad_message_auto_mode: %s\r\n", buff);
				// }				
			}
			else if(c=='@'){
				sprintf(buff, "%01d,%02d,%ld,%05d,%4.1f\n", state_res, count,freq100, 0, curr_angle);
				waitms(5); 
				sendstr1(buff);
			}
			//printf("%d, %d\r\n",command, state_res);
		}

		Move_forward();
		// detect the coin
		d1 = ADC_at_Pin(QFP32_MUX_P1_3);
		d2 = ADC_at_Pin(QFP32_MUX_P1_4);
		bound = check_bound(d1,d2);
		printf("f:%04ld, d1:%d, d2:%d, bound_dectect: %d\r\n",freq100, d1,d2,bound);

		if (freq100>=5340){
			mea_yes = 0;
			Move_back_ms(300);
			waitms(100);
			servo_pick();
			count++;
			waitms(100);
			mea_yes = 1;
			Move_forward();
		}

		if(bound == 1){
			Move_back_ms(500);
			waitms(100);
			curr_angle = Read_angle();
		 	angle = get_random_90_250();
			Right_angle(angle*600/90);
			curr_angle = fabsf(curr_angle - Read_angle());
		}
	}

	printf("Auto mode finished!\r\n");
}

void Joystick_Control(int *vx_ptr, int *vy_ptr)
{
	xdata int vx, vy; 
	xdata int vx_error, vy_error, vx_err, vy_err;
    xdata int threshold = 161;
	vx = *vx_ptr; 
	vy = *vy_ptr; 
	// Determine of Vx and Vy are within 5% error
	vx_error = abs(vx-vx_thres)*100/vx_thres; 
	vy_error = abs(vy-vy_thres)*100/vy_thres; 
	vx_err = vx-vx_thres; 
	vy_err = vy-vy_thres; 
	pwm_left = 0; 
	pwm_right = 0; 
	// if vx moved but vy didn't move => move forward 
	if ((vy_error>5) && (vx_error<5)){
		pwm_left = vy_error; 
		pwm_right = vy_error * pwm_corr; 
		if (vy_err > 0){ //move forward
			L_motor_dir = 0; 
			R_motor_dir = 0; 
		}
		else { //move backward 
			L_motor_dir = 1; 
			R_motor_dir = 1; 
			pwm_right *= 1.05;
		}
	}
	if ((vx_error>5)&&(vy_error<5)){
		pwm_left = vx_error; 
		pwm_right = vx_error * pwm_corr; 
		if (vx_err > 0){ //turn right
			L_motor_dir = 1; 
			R_motor_dir = 0; 
		}
		else{ //turn left 
			L_motor_dir = 0; 
			R_motor_dir = 1; 
		}
	}
	if ((vx_error>5)&&(vy_error)>5){
		// Region 1 & Region 2
		if (vy_err>0){
			L_motor_dir = 0; 
			R_motor_dir = 0; 
			// Region 1
			if (vx_err>0){
				if (vy*100<=vy_thres*100/2){
					pwm_left = vy_error; 
					pwm_right = pwm_corr*vy_error*100/(vx_error+vy_error);
				}
				else {
					pwm_left = vx_error; 
					pwm_right = pwm_corr*vx_error*100/(vx_error+vy_error);
				}
			}
			// Region 2
			else {
				if (vy*100<=vy_thres*100/2){
					pwm_left = vy_error*100/(vx_error+vy_error);
					pwm_right = vy_error*pwm_corr; 
				}
				else {
					pwm_left = vx_error*100/(vx_error+vy_error);
					pwm_right = vx_error*pwm_corr; 
				}
			}
		}
		// Region 3 & 4
		if (vy_err<0){
			L_motor_dir = 1; 
			R_motor_dir = 1; 
			// Region 4
			if (vx_err>0){
				if (vy*100<=vy_thres*100/2){
					pwm_left = vy_error; 
					pwm_right = pwm_corr*vy_error*100/(vx_error+vy_error);
				}
				else {
					pwm_left = vx_error; 
					pwm_right = pwm_corr*vx_error*100/(vx_error+vy_error);
				}
			}
			// Region 3
			else {
				if (vy*100<=vy_thres*100/2){
					pwm_left = vy_error*100/(vx_error+vy_error);
					pwm_right =pwm_corr*vy_error; 
				}
				else {
					pwm_left = vx_error*100/(vx_error+vy_error);
					pwm_right = pwm_corr*vx_error; 
				}
			}
		}
	}
	return; 
}

void main (void)
{
    xdata char c;
	xdata int vx = 0, vy = 0; 
	xdata int auto_mode = 0;
	char pick_char = '0';
	
	// printf("Initializing\r\n");
	Init_all();
	BMM150_Init();
	waitms(500);
	printf("\r\nEFM8LB12 JDY-40 Slave Test.\r\n");
	UART1_Init(9600);
	
	ReceptionOff();

	// To check configuration
	SendATCommand("AT+VER\r\n");
	SendATCommand("AT+BAUD\r\n");
	SendATCommand("AT+RFID\r\n");
	SendATCommand("AT+DVID\r\n");
	SendATCommand("AT+RFC002\r\n");
	SendATCommand("AT+POWE\r\n");
	SendATCommand("AT+CLSS\r\n");
	SendATCommand("AT+DVIDEF11\r\n");  

    //initialize variables 
    L_bridge_1 = 0; 
    L_bridge_2 = 0; 
    R_bridge_1 = 0; 
    R_bridge_2 = 0; 
	
	while(1)
	{	
		//printf("coinval = %d\n", weight);

		if(pick_char=='1'){
			servo_pick();
			waitms(1000);
			pick_char = '0';
		}
		
		if(auto_mode){
			Auto_mode_slave();
			auto_mode = 0;
		}
		curr_angle = Read_angle();
		if(RXU1()) // Something has arrived
		{
			c=getchar1();
			if(c=='!') // Master is sending message
			{
				getstr1(buff, sizeof(buff)-1);
				if(strlen(buff)==11)
				{
					sscanf(buff, "%03d,%03d,%c,%01d", &vx, &vy, &pick_char, &auto_mode);
		        	printf("Joystick Received: Vx = %d, Vy = %d, Order = %c, Auto = %d\r\n", vx, vy, pick_char, auto_mode);
					Joystick_Control(&vx, &vy);
				}
				else{
					printf("*** BAD MESSAGE ***: %s\r\n", buff);
				}		
			}
			else if(c=='@') // Master wants slave data
			{
				sprintf(buff, "0,00,%04ld,%05d,%4.1f\n", freq100, weight, curr_angle);
				printf("%s\r\n",buff);
				waitms(10); // The radio seems to need this delay...
				sendstr1(buff);
			}
		}
	}
}
