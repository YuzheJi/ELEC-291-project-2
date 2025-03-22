#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <EFM8LB1.h>
#include "bmm150.h"

#define SYSCLK 72000000L    // Internal oscillator frequency in Hz
#define BAUDRATE 115200L
#define F_SCK_MAX 1000000L  // Max SCK freq (Hz)

#define CS P0_5 
// Pins used by the SPI interface:
// 	P0.0: SCK
// 	P0.1: MISO, SDO
// 	P0.2: MOSI, SDI
// 	P0.3: SS*, chip select 

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

	P0MDOUT |= 0xE0;
	P1MDOUT |= 0x01; 
	XBR0=0b_0000_0011; //SPI0E=1, URT0E=1
	XBR1=0b_0000_0000;
	XBR2=0b_0100_0000; // Enable crossbar and weak pull-ups

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

	// SPI inititialization
	SPI0CKR = (SYSCLK/(2*F_SCK_MAX))-1;
	SPI0CFG = 0b_0100_0000; //SPI in master mode
	SPI0CN0 = 0b_0000_0001; //SPI enabled and in three wire mode

	// configure P0.4 as input (drdy interrupt)
	P0MDOUT &= ~(1<<4); // set P0.4 as open drain input 
	P0 |= (1<<4); //enable pull up resistor on P0.4 
	EIE2 |= 0x02; 
	
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

// need another delay for the function pointer 
void ptr_delay_us (uint32_t period, void *intf_ptr) reentrant
{
	(void)intf_ptr; 
	while (period--)
	{
		Timer3us(1);
	}
}

void waitms (unsigned int ms)
{
	xdata unsigned int j;
	xdata unsigned char k;
	for(j=0; j<ms; j++)
		for (k=0; k<4; k++) Timer3us(250);
}


uint8_t spi_transfer(uint8_t x) // instead of data we used x
{
    SPI0DAT = x;            // Load data into SPI buffer
    while (!(SPI0CN0 & 0x80)); // Wait for transmission to complete (SPIF flag)
    SPI0CN0 &= ~0x80;          // Clear the flag
    return SPI0DAT;            // Return received byte
}


//  /*!
//   *  @brief Function for reading the sensor's registers through SPI bus.
//   *
//   *  @param[in] cs         : Chip select to enable the sensor.
//   *  @param[in] reg_addr   : Register address.
//   *  @param[out] reg_data  : Pointer to the data buffer to store the read data.
//   *  @param[in] length     : No of bytes to read.
//   *  @param[in] intf_ptr   : Interface pointer
//   *
//   *  @return Status of execution
//   *
//   *  @retval BMM150_INTF_RET_SUCCESS -> Success.
//   *  @retval != BMM150_INTF_RET_SUCCESS -> Failure.
//   *
//   */
int8_t bmm150_spi_read(uint8_t reg_addr, uint8_t *reg_data, uint32_t length, void *intf_ptr) __reentrant
{
    uint32_t i;
    (void)intf_ptr; // unused in this implementation

    // Set MSB to 1 for read operation
    reg_addr |= 0x80;
    CS = 0;

    // Send register address
    if (spi_transfer(reg_addr) == 0xFF)
    {
        CS = 1; // End SPI 
        return BMM150_E_COM_FAIL;
    }
    // Read response bytes
    for (i = 0; i < length; i++)
    {
        reg_data[i] = spi_transfer(0x00);
    }

    CS = 1;
    return BMM150_OK;
}


// /*!
//   *  @brief Function for writing the sensor's registers through SPI bus.
//   *
//   *  @param[in] cs         : Chip select to enable the sensor.
//   *  @param[in] reg_addr   : Register address.
//   *  @param[in] reg_data   : Pointer to the data buffer whose data has to be written.
//   *  @param[in] length     : No of bytes to write.
//   *  @param[in] intf_ptr   : Interface pointer
//   *
//   *  @return Status of execution
//   *
//   *  @retval BMM150_INTF_RET_SUCCESS -> Success.
//   *  @retval  != BMM150_INTF_RET_SUCCESS -> Failure.
//   *
//   */
int8_t bmm150_spi_write(uint8_t reg_addr, const uint8_t *reg_data, uint32_t length, void *intf_ptr) __reentrant
{
	uint32_t i; 
	(void)intf_ptr; // Avoid compiler warning if not used

	CS = 0; // Pull CS low to start communication

	// Send register address with Write flag (MSB = 0)
	if (spi_transfer(reg_addr & 0x7F) == 0xFF) // Check if transfer failed
	{
		CS = 1; // Pull CS high
		return BMM150_E_COM_FAIL; // Return communication failure
	}

	// Send all bytes of data
	for (i = 0; i < length; i++)
	{
		if (spi_transfer(reg_data[i]) == 0xFF) // Check if transfer failed
		{
			CS = 1; // Pull CS high
			return BMM150_E_COM_FAIL; // Return communication failure
		}
	}

	CS = 1; // Pull CS high to end communication

	return BMM150_OK; // If all transfers succeeded, return success
}

 /*!
  *  @brief Prints the execution status of the APIs.
  */
 void bmm150_error_codes_print_result(const char api_name[], int8_t rslt)
 {
    if (rslt != BMM150_OK)
    {
        printf("%s\t", api_name);
 
        switch (rslt)
        {
            case BMM150_E_NULL_PTR:
                printf("Error [%d] : Null pointer error.", rslt);
                printf(
                    "It occurs when the user tries to assign value (not address) to a pointer, which has been initialized to NULL.\r\n");
                break;
 
            case BMM150_E_COM_FAIL:
                printf("Error [%d] : Communication failure error.", rslt);
                printf(
            	    "It occurs due to read/write operation failure and also due to power failure during communication\r\n");
                break;
 
            case BMM150_E_DEV_NOT_FOUND:
                printf("Error [%d] : Device not found error. It occurs when the device chip id is incorrectly read\r\n", rslt);
                break;
 
            case BMM150_E_INVALID_CONFIG:
                printf("Error [%d] : Invalid sensor configuration.", rslt);
                printf(" It occurs when there is a mismatch in the requested feature with the available one\r\n");
                break;
 
            default:
                printf("Error [%d] : Unknown error code\r\n", rslt);
                break;
        }
    }
}

  /*!
  *  @brief Function to select the interface between SPI and I2C.
  */
xdata int8_t bmm150_interface_selection(xdata struct bmm150_dev *dev, uint8_t intf)
{
    xdata int8_t rslt = BMM150_OK;
	printf("Configuring SPI\n"); 

    if (dev != NULL)
    {
        if (intf == BMM150_SPI_INTF)
        {
            printf("SPI Interface Selected\n");

            // Assign SPI communication functions
            dev->read = bmm150_spi_read;
            dev->write = bmm150_spi_write;
            dev->intf = BMM150_SPI_INTF;
            dev->intf_ptr = NULL; // We don't need an intf_ptr for direct GPIO control
            dev->delay_us = ptr_delay_us;
        }
        else
        {
            printf("Invalid Interface Selection\n");
            rslt = BMM150_E_INVALID_CONFIG;
        }
    }
    else
    {
        rslt = BMM150_E_NULL_PTR;
    }

    return rslt;
}

static int8_t set_config(xdata struct bmm150_dev *dev)
{
    /* Status of api are returned to this variable. */
    xdata int8_t rslt;

    xdata struct bmm150_settings settings;

    /* Set powermode as normal mode */
	printf("Configuring Powermode\n"); 
    settings.pwr_mode = BMM150_POWERMODE_NORMAL;
    rslt = bmm150_set_op_mode(&settings, dev);
    bmm150_error_codes_print_result("bmm150_set_op_mode", rslt);

    if (rslt == BMM150_OK)
    {
        /* Setting the preset mode as Low power mode
         * i.e. data rate = 10Hz, XY-rep = 1, Z-rep = 2
         */
		printf("Configuring Presetmode\n"); 
        settings.preset_mode = BMM150_PRESETMODE_LOWPOWER;
        rslt = bmm150_set_presetmode(&settings, dev);
        bmm150_error_codes_print_result("bmm150_set_presetmode", rslt);
    }

    return rslt;
}

static int8_t get_data(xdata struct bmm150_dev *dev)
{
	/* Status of api are returned to this variable. */
    xdata int8_t rslt; 

    xdata int8_t idx;

    xdata struct bmm150_mag_data mag_data;

	rslt = BMM150_OK; 
    /* Reading the mag data */
    while (1)
    {
		for (idx = 0; idx < 50; idx++)
        {
            /* Read mag data */
            rslt = bmm150_read_mag_data(&mag_data, dev);
            bmm150_error_codes_print_result("bmm150_read_mag_data", rslt);

            /* Unit for magnetometer data is microtesla(uT) */
            printf("MAG DATA[%d]  X : %d uT   Y : %d uT \n", idx, mag_data.x, mag_data.y);
        }
		break; 
    }
    return rslt;
}


void main (void)
{
	xdata int8_t rslt; 
	xdata struct bmm150_dev dev; 

	waitms(500);
	printf("\x1b[2J"); // Clear screen using ANSI escape sequence.
	
	printf ("EFM8LB1 SPI/BMM150 test program\n"
	        "File: %s\n"
	        "Compiled: %s, %s\n\n",
	        __FILE__, __DATE__, __TIME__);

	Set_Pin_Output(0x05); 
	CS = 1; //initialize chip select 

	rslt = bmm150_interface_selection(&dev, BMM150_SPI_INTF);
	bmm150_error_codes_print_result("bmm150_interface_selection", rslt);

	if (rslt == BMM150_OK)
	{
		rslt = bmm150_init(&dev);
		bmm150_error_codes_print_result("bmm150_init", rslt);

		if (rslt == BMM150_OK)
		{
			rslt = set_config(&dev); 
			bmm150_error_codes_print_result("set_config", rslt); 
			
			if (rslt == BMM150_OK)
			{
				rslt = get_data(&dev); 
				bmm150_error_codes_print_result("get_data", rslt); 
				printf("Configuration Complete - Ready to get data"); 
			}
		}
	}
}

