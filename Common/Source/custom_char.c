#include "../Common/Include/stm32l051xx.h"

void Delay_us(unsigned char us)
{
	// For SysTick info check the STM32L0xxx Cortex-M0 programming manual page 85.
	SysTick->LOAD = (F_CPU/(1000000L/us)) - 1;  // set reload register, counter rolls over from zero, hence -1
	SysTick->VAL = 0; // load the SysTick counter
	SysTick->CTRL  = SysTick_CTRL_CLKSOURCE_Msk | SysTick_CTRL_ENABLE_Msk; // Enable SysTick IRQ and SysTick Timer */
	while((SysTick->CTRL & BIT16)==0); // Bit 16 is the COUNTFLAG.  True when counter rolls over from zero.
	SysTick->CTRL = 0x00; // Disable Systick counter
}

void waitms (unsigned int ms)
{
	unsigned int j;
	unsigned char k;
	for(j=0; j<ms; j++)
		for (k=0; k<4; k++) Delay_us(250);
}

void LCD_pulse (void)
{
	LCD_E_1;
	Delay_us(40);
	LCD_E_0;
}

void LCD_byte (unsigned char x)
{
	//Send high nible
	if(x&0x80) LCD_D7_1; else LCD_D7_0;
	if(x&0x40) LCD_D6_1; else LCD_D6_0;
	if(x&0x20) LCD_D5_1; else LCD_D5_0;
	if(x&0x10) LCD_D4_1; else LCD_D4_0;
	LCD_pulse();
	Delay_us(40);
	//Send low nible
	if(x&0x08) LCD_D7_1; else LCD_D7_0;
	if(x&0x04) LCD_D6_1; else LCD_D6_0;
	if(x&0x02) LCD_D5_1; else LCD_D5_0;
	if(x&0x01) LCD_D4_1; else LCD_D4_0;
	LCD_pulse();
}

void WriteData (unsigned char x)
{
	LCD_RS_1;
	LCD_byte(x);
	waitms(2);
}

void WriteCommand (unsigned char x)
{
	LCD_RS_0;
	LCD_byte(x);
	waitms(5);
}
















// Required Custom char function
void LCD_Custom_Char(unsigned char loc, unsigned char *charmap)
{
    int i;
    if (loc < 8)  // LCD 只支持 8 个自定义字符
    {
        WriteCommand(0x40 + (loc * 8)); // 设定 CGRAM 地址
        for (i = 0; i < 8; i++)
        {
            WriteData(charmap[i]);  // 写入 8 行数据
        }
    }
}

void main(void)
{
	uint8_t smiley[8] = {
		0x00, //       
		0x0A, //  * *  
		0x00, //       
		0x11, // *   * 
		0x0E, //  ***  
		0x00, //       
		0x00, //       
		0x00  //       
	};
	LCD_Custom_Char(0, smiley);
	uint8_t sad_face[8] = {
		0x00,
		0x0A,
		0x0A,
		0x00,
		0x00,
		0x04,
		0x0A,
		0x00
	};
    LCD_Custom_Char(1, sad_face);



    // display custom character 0
    WriteData(0);




}