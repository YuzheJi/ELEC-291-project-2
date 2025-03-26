#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <math.h>
#include <EFM8LB1.h>

#define SYSCLK 72000000L    // Internal oscillator frequency in Hz
#define BAUDRATE 115200L
#define F_SCK_MAX 2000000L   // Max SCK freq (Hz)

#define CS P0_3
#define M_PI 3.14159265358979323846

//                                    ----------  
// RF_RXD               P0.0      1  |          |  32      P0.1     RF_TXD
//                      GND       2  |          |  31      P0.2  	
//                      5V        3  |          |  30      P0.3  	
//                      5V        4  |          |  29      P0.4  	
//                      RST       5  |          |  28      P0.5  	CS
//                      P3.7      6  |          |  27      P0.6  	SDO
//                      P3.3      7  |          |  26      P0.7  	SDI
//                      P3.2      8  |          |  25      P1.0  	SCK
//                      P3.1      9  |          |  24      P1.1  	
//                      P3.0     10  |          |  23      P1.2  
//                      P2.6     11  |          |  22      P1.3  
//                      P2.5     12  |          |  21      P1.4  
// R_bridge_2           P2.4     13  |          |  20      P1.5  	Magnet
// R_bridge_1           P2.3     14  |          |  19      P1.6  	Servo_arm
// L_bridge_2           P2.2     15  |          |  18      P1.7  	Servo_base
// L_bridge_1           P2.1     16  |          |  17      P2.0     RF_SET
//         



// BMM150 Registers --> see the datasheet Page 23 from 5.3 chip ID
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


//BMM150 Global Variables
int8_t dig_x1, dig_x2, dig_y1, dig_y2, dig_z1, dig_z2, dig_z3, dig_z4; 
int8_t dig_xy1, dig_xy2, dig_xyz1; 

    

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

    // Configure I/O ports for SPI and UART
    P0MDOUT = 0b_0000_1101; // SCK, MOSI, and P0.3 are push-pull, others open-drain
    P1MDOUT = 0b_0000_0000; // P1 all open-drain
    XBR0 = 0b_0000_0011;    // SPI0E=1, URT0E=1
    XBR1 = 0b_0000_0000;
    XBR2 = 0b_0100_0000;    // Enable crossbar and weak pull-ups

	#if ( ((SYSCLK/BAUDRATE)/(12L*2L)) > 0x100)
		#error Can not configure baudrate using timer 1 
	#endif
	// Configure Uart 0
	SCON0 = 0x10;
	TH1 = 0x100-((SYSCLK/BAUDRATE)/(12L*2L));
	TL1 = TH1;      // Init Timer1
	TMOD &= ~0xf0;  // TMOD: timer 1 in 8-bit auto-reload
	TMOD |=  0x20;                       
	TR1 = 1; // START Timer1
	TI = 1;  // Indicate TX0 ready

	// Configure SPI: Notice, you might need to adjust it according to data sheet
    SPI0CKR = (SYSCLK/(2*F_SCK_MAX))-1;
    SPI0CFG = 0b_1110_0000; // this is mode 3, you need to determine the sampling etc. in datasheet
    SPI0CN0 = 0b_0000_0001; // SPI enabled and in three wire mode
	
	return 0;
}

void Set_Pin_Output (unsigned char pin)
{
	xdata unsigned char mask;
	
	mask=(1<<(pin&0x7));
	switch(pin/0x10)
	{
		case 0: P0MDOUT |= mask; break;
		case 1: P1MDOUT |= mask; break;
		case 2: P2MDOUT |= mask; break; 
		case 3: P3MDOUT |= mask; break; 
	}	
}

// Uses Timer3 to delay <us> micro-seconds. 
void Timer3us(unsigned char us)
{
	xdata unsigned char i;               // usec counter
	
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
	xdata unsigned int j;
	xdata unsigned char k;
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
    unsigned char value;
    
    // For SPI read operation, set MSB of address to 1
    reg_addr = reg_addr | 0x80;
    
    CS = 0;                // Select the device
    SPI_transfer(reg_addr);     // Send register address
    value = SPI_transfer(0x00); // Read value (send dummy byte) dummy byte is a placeholder byte sent by the master when it wants to receive data
    CS = 1;                // Deselect the device
    
    return value;
}

void SPI_read_block(unsigned char start_addr, uint8_t *buffer, uint8_t len)
{
	uint8_t i; 
    start_addr |= 0x80; // Set MSB for read
    CS = 0;
    SPI_transfer(start_addr);
    for (i = 0; i < len; i++) {
        buffer[i] = SPI_transfer(0x00); // Dummy writes
    }
    CS = 1;
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

	temp_msb = ((uint16_t)trim_xy1xy2[3]) << 8;
	dig_z1 = (uint16_t)(temp_msb | trim_xy1xy2[2]);

	temp_msb = ((uint16_t)trim_xy1xy2[1]) << 8;
	dig_z2 = (int16_t)(temp_msb | trim_xy1xy2[0]);

	temp_msb = ((uint16_t)trim_xy1xy2[7]) << 8;
	dig_z3 = (int16_t)(temp_msb | trim_xy1xy2[6]);

	temp_msb = ((uint16_t)trim_xyz_data[1]) << 8;
	dig_z4 = (int16_t)(temp_msb | trim_xyz_data[0]);

	dig_xy1 = trim_xy1xy2[9];
	dig_xy2 = (int8_t)trim_xy1xy2[8];

	temp_msb = ((uint16_t)(trim_xy1xy2[5] & 0x7F)) << 8;
	dig_xyz1 = (uint16_t)(temp_msb | trim_xy1xy2[4]);

	// printf("%d %d %d %d\n", dig_z1, dig_z2, dig_z3, dig_z4);
}

void BMM150_Init(void)
{
    unsigned char chip_id;
    
    // Set all required pins
    CS = 1;         // Deselect BMM150
    
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
    
    // Set operation mode to normal and data rate to 10Hz
    SPI_write(BMM150_OP_MODE, BMM150_NORMAL_MODE | (BMM150_ODR_10HZ * 8));
    
    // Set repetitions for XY and Z axes for regular preset
    SPI_write(BMM150_REP_XY, 0x7F); // XY-repetitions = 9
    SPI_write(BMM150_REP_Z, 0x0E);  // Z-repetitions = 15

	BMM150_Read_Trim_Registers();
    
    printf("BMM150 initialized successfully! Chip ID: 0x%02X\r\n", chip_id);
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

int16_t BMM150_compensate_z (int16_t *mag_data_z, int16_t *data_rhall){
	xdata int32_t retval;
    xdata int16_t process_comp_z0;
    xdata int32_t process_comp_z1;
    xdata int32_t process_comp_z2;
    xdata int32_t process_comp_z3;
    xdata int16_t process_comp_z4;

    if (*mag_data_z != BMM150_OVERFLOW_ADCVAL_ZAXIS_HALL)
    {
        if ((dig_z2 != 0) && (dig_z1 != 0) && (*data_rhall != 0) &&
            (dig_xyz1 != 0))
        {
            /*Processing compensation equations */
            process_comp_z0 = ((int16_t)*data_rhall) - ((int16_t)dig_xyz1);
            process_comp_z1 = (((int32_t)dig_z3) * ((int32_t)(process_comp_z0))) / 4;
            process_comp_z2 = (((int32_t)(*mag_data_z - dig_z4)) * 32768);
            process_comp_z3 = ((int32_t)dig_z1) * (((int16_t)*data_rhall) * 2);
            process_comp_z4 = (int16_t)((process_comp_z3 + (32768)) / 65536);
            retval = ((process_comp_z2 - process_comp_z1) / (dig_z2 + process_comp_z4));

            /* Saturate result to +/- 2 micro-tesla */
            if (retval > BMM150_POSITIVE_SATURATION_Z)
            {
                retval = BMM150_POSITIVE_SATURATION_Z;
            }
            else if (retval < BMM150_NEGATIVE_SATURATION_Z)
            {
                retval = BMM150_NEGATIVE_SATURATION_Z;
            }

            /* Conversion of LSB to micro-tesla */
            retval = retval / 16;
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

    return (int16_t)retval;
}

void BMM150_Read_Data(int16_t *mag_x, int16_t *mag_y, int16_t *mag_z)
{
	uint8_t raw_x_lsb, raw_x_msb, raw_y_lsb, raw_y_msb, raw_z_lsb, raw_z_msb, raw_rhall_lsb, raw_rhall_msb, raw_z[2]; 
	int16_t x_val, y_val, z_val, rhall_val; 
	uint16_t z_raw; 
	raw_x_lsb = SPI_read(BMM150_DATA_X_LSB);
	raw_x_msb = SPI_read(BMM150_DATA_X_MSB);
	raw_y_lsb = SPI_read(BMM150_DATA_Y_LSB);
	raw_y_msb = SPI_read(BMM150_DATA_Y_MSB);
	SPI_read_block(BMM150_DATA_X_LSB, raw_z, 2);
	// raw_z_lsb = SPI_read(BMM150_DATA_Z_LSB);
	// raw_z_msb = SPI_read(BMM150_DATA_Z_MSB);
	raw_z_lsb = raw_z[0];
	raw_z_msb = raw_z[1];
	raw_rhall_lsb = SPI_read(BMM150_RHALL_LSB); 
	raw_rhall_msb = SPI_read(BMM150_RHALL_MSB);
	SPI_read_block(BMM150_DATA_X_LSB, raw_z, 2);


	// Extract X data (13-bit, 2's complement)
    // Instead of using shift operators, use multiplication/division
    x_val = ((int16_t)((int8_t)raw_x_msb)) * 32 + ((raw_x_lsb & 0xF8) >> 3);
    if (x_val > 4095){
		x_val = x_val - 8192;  // 2's complement sign correction
	}
	// Extract Y data (13-bit, 2's complement)
    y_val = ((int16_t)((int8_t)raw_y_msb)) * 32 + ((raw_y_lsb & 0xF8) >> 3);
    if (y_val > 4095) {
		y_val = y_val - 8192;  // 2's complement sign correction
	}
	// Extract Z data (15-bit, 2's complement)
    // z_val = ((int16_t)((int8_t)raw_z_msb)) * 128 + ((raw_z_lsb & 0xFE) >> 1);
    // if (z_val > 16383) {
	// 	z_val = z_val - 32768;  // 2's complement sign correction
	// }
	z_raw = ((uint16_t)raw_z_msb << 7) | ((raw_z_lsb & 0xFE) >> 1);
	if (z_raw > 0x3FFF) z_val = z_raw - 0x8000;
	else z_val = z_raw; 

	//Extract R-HALL data (14-bit, 2's complement)
	rhall_val = ((uint16_t)raw_rhall_msb) * 64 + (raw_rhall_lsb & 0x3F); 

	// printf("%d %d       \r", raw_z_lsb, raw_z_msb);

	*mag_x = BMM150_compensate_x(&x_val, &rhall_val);
	*mag_y = BMM150_compensate_y(&y_val, &rhall_val);
	*mag_z = BMM150_compensate_z(&z_val, &rhall_val);

}



void main (void)
{
	// xdata uint8_t i; 
	xdata int16_t mag_x, mag_y, mag_z; 
	xdata float angle;
	xdata float sum_x, sum_y, alpha, avg_angle, smoothed_angle; 
	// xdata float declination_angle; 
	
	// Initialize variables
	// declination_angle = 15.0 + 34.0/60.0; 
	avg_angle = 0.0; 
	sum_x = 0.0; 
	sum_y = 0.0; 
	alpha = 0.2; // for tuning 
	smoothed_angle = 0.0; 

	Set_Pin_Output(0x03); 
	BMM150_Init();

	waitms(500);
	printf("\x1b[2J"); // Clear screen using ANSI escape sequence.
	printf ("EFM8LB1 SPI/BMM150 test program\n"
	        "File: %s\n"
	        "Compiled: %s, %s\n\n",
	        __FILE__, __DATE__, __TIME__);

	while(1)
	{
		for (i = 0; i < 100; i++){
			BMM150_Read_Data(&mag_x, &mag_y, &mag_z);
			angle = atan2f((float)mag_y, (float)mag_x) * 180.0 / M_PI;
			// angle += declination_angle; 

			if (angle < 0.0) angle += 360.0; 
			else if (angle > 360.0) angle -= 360.0;

			sum_x += cosf(angle * M_PI / 180.0); 
			sum_y += sinf(angle * M_PI / 180.0); 
			waitms(1);
		}
		avg_angle = atan2f(sum_y/100.0, sum_x/100.0); 
		if (avg_angle < 0.0) avg_angle += 2 * M_PI; 
		avg_angle = avg_angle * 180.0/M_PI; 
		smoothed_angle = alpha * avg_angle + (1-alpha) * smoothed_angle; 
		printf("%d,%d,%f\r\n", mag_x, mag_y, smoothed_angle);
		// printf("%f          \r", avg_angle);
		avg_angle = 0.0; 
		sum_x = 0.0; 
		sum_y = 0.0;  

		// BMM150_Read_Data(&mag_x, &mag_y, &mag_z);
		// angle = atan2f((float)mag_y, (float)mag_x) * 180.0 / M_PI;
		// printf("%f     ", angle);

		waitms(100);
	}

}

