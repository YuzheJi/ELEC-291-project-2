;--------------------------------------------------------
; File Created by C51
; Version 1.0.0 #1170 (Feb 16 2022) (MSVC)
; This file was generated Thu Mar 27 15:20:43 2025
;--------------------------------------------------------
$name sensor_test
$optc51 --model-small
$printf_float
	R_DSEG    segment data
	R_CSEG    segment code
	R_BSEG    segment bit
	R_XSEG    segment xdata
	R_PSEG    segment xdata
	R_ISEG    segment idata
	R_OSEG    segment data overlay
	BIT_BANK  segment data overlay
	R_HOME    segment code
	R_GSINIT  segment code
	R_IXSEG   segment xdata
	R_CONST   segment code
	R_XINIT   segment code
	R_DINIT   segment code

;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	public _main
	public _BMM150_Read_Data
	public _BMM150_compensate_z
	public _BMM150_compensate_y
	public _BMM150_compensate_x
	public _BMM150_Init
	public _BMM150_Read_Trim_Registers
	public _SPI_write
	public _SPI_read_block
	public _SPI_read
	public _SPI_transfer
	public _waitms
	public _Timer3us
	public _Set_Pin_Output
	public __c51_external_startup
	public _BMM150_Read_Data_PARM_3
	public _BMM150_Read_Data_PARM_2
	public _BMM150_compensate_z_PARM_2
	public _BMM150_compensate_y_PARM_2
	public _BMM150_compensate_x_PARM_2
	public _SPI_write_PARM_2
	public _SPI_read_block_PARM_3
	public _SPI_read_block_PARM_2
	public _dig_xyz1
	public _dig_xy2
	public _dig_xy1
	public _dig_z4
	public _dig_z3
	public _dig_z2
	public _dig_z1
	public _dig_y2
	public _dig_y1
	public _dig_x2
	public _dig_x1
;--------------------------------------------------------
; Special Function Registers
;--------------------------------------------------------
_ACC            DATA 0xe0
_ADC0ASAH       DATA 0xb6
_ADC0ASAL       DATA 0xb5
_ADC0ASCF       DATA 0xa1
_ADC0ASCT       DATA 0xc7
_ADC0CF0        DATA 0xbc
_ADC0CF1        DATA 0xb9
_ADC0CF2        DATA 0xdf
_ADC0CN0        DATA 0xe8
_ADC0CN1        DATA 0xb2
_ADC0CN2        DATA 0xb3
_ADC0GTH        DATA 0xc4
_ADC0GTL        DATA 0xc3
_ADC0H          DATA 0xbe
_ADC0L          DATA 0xbd
_ADC0LTH        DATA 0xc6
_ADC0LTL        DATA 0xc5
_ADC0MX         DATA 0xbb
_B              DATA 0xf0
_CKCON0         DATA 0x8e
_CKCON1         DATA 0xa6
_CLEN0          DATA 0xc6
_CLIE0          DATA 0xc7
_CLIF0          DATA 0xe8
_CLKSEL         DATA 0xa9
_CLOUT0         DATA 0xd1
_CLU0CF         DATA 0xb1
_CLU0FN         DATA 0xaf
_CLU0MX         DATA 0x84
_CLU1CF         DATA 0xb3
_CLU1FN         DATA 0xb2
_CLU1MX         DATA 0x85
_CLU2CF         DATA 0xb6
_CLU2FN         DATA 0xb5
_CLU2MX         DATA 0x91
_CLU3CF         DATA 0xbf
_CLU3FN         DATA 0xbe
_CLU3MX         DATA 0xae
_CMP0CN0        DATA 0x9b
_CMP0CN1        DATA 0x99
_CMP0MD         DATA 0x9d
_CMP0MX         DATA 0x9f
_CMP1CN0        DATA 0xbf
_CMP1CN1        DATA 0xac
_CMP1MD         DATA 0xab
_CMP1MX         DATA 0xaa
_CRC0CN0        DATA 0xce
_CRC0CN1        DATA 0x86
_CRC0CNT        DATA 0xd3
_CRC0DAT        DATA 0xcb
_CRC0FLIP       DATA 0xcf
_CRC0IN         DATA 0xca
_CRC0ST         DATA 0xd2
_DAC0CF0        DATA 0x91
_DAC0CF1        DATA 0x92
_DAC0H          DATA 0x85
_DAC0L          DATA 0x84
_DAC1CF0        DATA 0x93
_DAC1CF1        DATA 0x94
_DAC1H          DATA 0x8a
_DAC1L          DATA 0x89
_DAC2CF0        DATA 0x95
_DAC2CF1        DATA 0x96
_DAC2H          DATA 0x8c
_DAC2L          DATA 0x8b
_DAC3CF0        DATA 0x9a
_DAC3CF1        DATA 0x9c
_DAC3H          DATA 0x8e
_DAC3L          DATA 0x8d
_DACGCF0        DATA 0x88
_DACGCF1        DATA 0x98
_DACGCF2        DATA 0xa2
_DERIVID        DATA 0xad
_DEVICEID       DATA 0xb5
_DPH            DATA 0x83
_DPL            DATA 0x82
_EIE1           DATA 0xe6
_EIE2           DATA 0xf3
_EIP1           DATA 0xbb
_EIP1H          DATA 0xee
_EIP2           DATA 0xed
_EIP2H          DATA 0xf6
_EMI0CN         DATA 0xe7
_FLKEY          DATA 0xb7
_HFO0CAL        DATA 0xc7
_HFO1CAL        DATA 0xd6
_HFOCN          DATA 0xef
_I2C0ADM        DATA 0xff
_I2C0CN0        DATA 0xba
_I2C0DIN        DATA 0xbc
_I2C0DOUT       DATA 0xbb
_I2C0FCN0       DATA 0xad
_I2C0FCN1       DATA 0xab
_I2C0FCT        DATA 0xf5
_I2C0SLAD       DATA 0xbd
_I2C0STAT       DATA 0xb9
_IE             DATA 0xa8
_IP             DATA 0xb8
_IPH            DATA 0xf2
_IT01CF         DATA 0xe4
_LFO0CN         DATA 0xb1
_P0             DATA 0x80
_P0MASK         DATA 0xfe
_P0MAT          DATA 0xfd
_P0MDIN         DATA 0xf1
_P0MDOUT        DATA 0xa4
_P0SKIP         DATA 0xd4
_P1             DATA 0x90
_P1MASK         DATA 0xee
_P1MAT          DATA 0xed
_P1MDIN         DATA 0xf2
_P1MDOUT        DATA 0xa5
_P1SKIP         DATA 0xd5
_P2             DATA 0xa0
_P2MASK         DATA 0xfc
_P2MAT          DATA 0xfb
_P2MDIN         DATA 0xf3
_P2MDOUT        DATA 0xa6
_P2SKIP         DATA 0xcc
_P3             DATA 0xb0
_P3MDIN         DATA 0xf4
_P3MDOUT        DATA 0x9c
_PCA0CENT       DATA 0x9e
_PCA0CLR        DATA 0x9c
_PCA0CN0        DATA 0xd8
_PCA0CPH0       DATA 0xfc
_PCA0CPH1       DATA 0xea
_PCA0CPH2       DATA 0xec
_PCA0CPH3       DATA 0xf5
_PCA0CPH4       DATA 0x85
_PCA0CPH5       DATA 0xde
_PCA0CPL0       DATA 0xfb
_PCA0CPL1       DATA 0xe9
_PCA0CPL2       DATA 0xeb
_PCA0CPL3       DATA 0xf4
_PCA0CPL4       DATA 0x84
_PCA0CPL5       DATA 0xdd
_PCA0CPM0       DATA 0xda
_PCA0CPM1       DATA 0xdb
_PCA0CPM2       DATA 0xdc
_PCA0CPM3       DATA 0xae
_PCA0CPM4       DATA 0xaf
_PCA0CPM5       DATA 0xcc
_PCA0H          DATA 0xfa
_PCA0L          DATA 0xf9
_PCA0MD         DATA 0xd9
_PCA0POL        DATA 0x96
_PCA0PWM        DATA 0xf7
_PCON0          DATA 0x87
_PCON1          DATA 0xcd
_PFE0CN         DATA 0xc1
_PRTDRV         DATA 0xf6
_PSCTL          DATA 0x8f
_PSTAT0         DATA 0xaa
_PSW            DATA 0xd0
_REF0CN         DATA 0xd1
_REG0CN         DATA 0xc9
_REVID          DATA 0xb6
_RSTSRC         DATA 0xef
_SBCON1         DATA 0x94
_SBRLH1         DATA 0x96
_SBRLL1         DATA 0x95
_SBUF           DATA 0x99
_SBUF0          DATA 0x99
_SBUF1          DATA 0x92
_SCON           DATA 0x98
_SCON0          DATA 0x98
_SCON1          DATA 0xc8
_SFRPAGE        DATA 0xa7
_SFRPGCN        DATA 0xbc
_SFRSTACK       DATA 0xd7
_SMB0ADM        DATA 0xd6
_SMB0ADR        DATA 0xd7
_SMB0CF         DATA 0xc1
_SMB0CN0        DATA 0xc0
_SMB0DAT        DATA 0xc2
_SMB0FCN0       DATA 0xc3
_SMB0FCN1       DATA 0xc4
_SMB0FCT        DATA 0xef
_SMB0RXLN       DATA 0xc5
_SMB0TC         DATA 0xac
_SMOD1          DATA 0x93
_SP             DATA 0x81
_SPI0CFG        DATA 0xa1
_SPI0CKR        DATA 0xa2
_SPI0CN0        DATA 0xf8
_SPI0DAT        DATA 0xa3
_SPI0FCN0       DATA 0x9a
_SPI0FCN1       DATA 0x9b
_SPI0FCT        DATA 0xf7
_SPI0PCF        DATA 0xdf
_TCON           DATA 0x88
_TH0            DATA 0x8c
_TH1            DATA 0x8d
_TL0            DATA 0x8a
_TL1            DATA 0x8b
_TMOD           DATA 0x89
_TMR2CN0        DATA 0xc8
_TMR2CN1        DATA 0xfd
_TMR2H          DATA 0xcf
_TMR2L          DATA 0xce
_TMR2RLH        DATA 0xcb
_TMR2RLL        DATA 0xca
_TMR3CN0        DATA 0x91
_TMR3CN1        DATA 0xfe
_TMR3H          DATA 0x95
_TMR3L          DATA 0x94
_TMR3RLH        DATA 0x93
_TMR3RLL        DATA 0x92
_TMR4CN0        DATA 0x98
_TMR4CN1        DATA 0xff
_TMR4H          DATA 0xa5
_TMR4L          DATA 0xa4
_TMR4RLH        DATA 0xa3
_TMR4RLL        DATA 0xa2
_TMR5CN0        DATA 0xc0
_TMR5CN1        DATA 0xf1
_TMR5H          DATA 0xd5
_TMR5L          DATA 0xd4
_TMR5RLH        DATA 0xd3
_TMR5RLL        DATA 0xd2
_UART0PCF       DATA 0xd9
_UART1FCN0      DATA 0x9d
_UART1FCN1      DATA 0xd8
_UART1FCT       DATA 0xfa
_UART1LIN       DATA 0x9e
_UART1PCF       DATA 0xda
_VDM0CN         DATA 0xff
_WDTCN          DATA 0x97
_XBR0           DATA 0xe1
_XBR1           DATA 0xe2
_XBR2           DATA 0xe3
_XOSC0CN        DATA 0x86
_DPTR           DATA 0x8382
_TMR2RL         DATA 0xcbca
_TMR3RL         DATA 0x9392
_TMR4RL         DATA 0xa3a2
_TMR5RL         DATA 0xd3d2
_TMR0           DATA 0x8c8a
_TMR1           DATA 0x8d8b
_TMR2           DATA 0xcfce
_TMR3           DATA 0x9594
_TMR4           DATA 0xa5a4
_TMR5           DATA 0xd5d4
_SBRL1          DATA 0x9695
_PCA0           DATA 0xfaf9
_PCA0CP0        DATA 0xfcfb
_PCA0CP1        DATA 0xeae9
_PCA0CP2        DATA 0xeceb
_PCA0CP3        DATA 0xf5f4
_PCA0CP4        DATA 0x8584
_PCA0CP5        DATA 0xdedd
_ADC0ASA        DATA 0xb6b5
_ADC0GT         DATA 0xc4c3
_ADC0           DATA 0xbebd
_ADC0LT         DATA 0xc6c5
_DAC0           DATA 0x8584
_DAC1           DATA 0x8a89
_DAC2           DATA 0x8c8b
_DAC3           DATA 0x8e8d
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
_ACC_0          BIT 0xe0
_ACC_1          BIT 0xe1
_ACC_2          BIT 0xe2
_ACC_3          BIT 0xe3
_ACC_4          BIT 0xe4
_ACC_5          BIT 0xe5
_ACC_6          BIT 0xe6
_ACC_7          BIT 0xe7
_TEMPE          BIT 0xe8
_ADGN0          BIT 0xe9
_ADGN1          BIT 0xea
_ADWINT         BIT 0xeb
_ADBUSY         BIT 0xec
_ADINT          BIT 0xed
_IPOEN          BIT 0xee
_ADEN           BIT 0xef
_B_0            BIT 0xf0
_B_1            BIT 0xf1
_B_2            BIT 0xf2
_B_3            BIT 0xf3
_B_4            BIT 0xf4
_B_5            BIT 0xf5
_B_6            BIT 0xf6
_B_7            BIT 0xf7
_C0FIF          BIT 0xe8
_C0RIF          BIT 0xe9
_C1FIF          BIT 0xea
_C1RIF          BIT 0xeb
_C2FIF          BIT 0xec
_C2RIF          BIT 0xed
_C3FIF          BIT 0xee
_C3RIF          BIT 0xef
_D1SRC0         BIT 0x88
_D1SRC1         BIT 0x89
_D1AMEN         BIT 0x8a
_D01REFSL       BIT 0x8b
_D3SRC0         BIT 0x8c
_D3SRC1         BIT 0x8d
_D3AMEN         BIT 0x8e
_D23REFSL       BIT 0x8f
_D0UDIS         BIT 0x98
_D1UDIS         BIT 0x99
_D2UDIS         BIT 0x9a
_D3UDIS         BIT 0x9b
_EX0            BIT 0xa8
_ET0            BIT 0xa9
_EX1            BIT 0xaa
_ET1            BIT 0xab
_ES0            BIT 0xac
_ET2            BIT 0xad
_ESPI0          BIT 0xae
_EA             BIT 0xaf
_PX0            BIT 0xb8
_PT0            BIT 0xb9
_PX1            BIT 0xba
_PT1            BIT 0xbb
_PS0            BIT 0xbc
_PT2            BIT 0xbd
_PSPI0          BIT 0xbe
_P0_0           BIT 0x80
_P0_1           BIT 0x81
_P0_2           BIT 0x82
_P0_3           BIT 0x83
_P0_4           BIT 0x84
_P0_5           BIT 0x85
_P0_6           BIT 0x86
_P0_7           BIT 0x87
_P1_0           BIT 0x90
_P1_1           BIT 0x91
_P1_2           BIT 0x92
_P1_3           BIT 0x93
_P1_4           BIT 0x94
_P1_5           BIT 0x95
_P1_6           BIT 0x96
_P1_7           BIT 0x97
_P2_0           BIT 0xa0
_P2_1           BIT 0xa1
_P2_2           BIT 0xa2
_P2_3           BIT 0xa3
_P2_4           BIT 0xa4
_P2_5           BIT 0xa5
_P2_6           BIT 0xa6
_P3_0           BIT 0xb0
_P3_1           BIT 0xb1
_P3_2           BIT 0xb2
_P3_3           BIT 0xb3
_P3_4           BIT 0xb4
_P3_7           BIT 0xb7
_CCF0           BIT 0xd8
_CCF1           BIT 0xd9
_CCF2           BIT 0xda
_CCF3           BIT 0xdb
_CCF4           BIT 0xdc
_CCF5           BIT 0xdd
_CR             BIT 0xde
_CF             BIT 0xdf
_PARITY         BIT 0xd0
_F1             BIT 0xd1
_OV             BIT 0xd2
_RS0            BIT 0xd3
_RS1            BIT 0xd4
_F0             BIT 0xd5
_AC             BIT 0xd6
_CY             BIT 0xd7
_RI             BIT 0x98
_TI             BIT 0x99
_RB8            BIT 0x9a
_TB8            BIT 0x9b
_REN            BIT 0x9c
_CE             BIT 0x9d
_SMODE          BIT 0x9e
_RI1            BIT 0xc8
_TI1            BIT 0xc9
_RBX1           BIT 0xca
_TBX1           BIT 0xcb
_REN1           BIT 0xcc
_PERR1          BIT 0xcd
_OVR1           BIT 0xce
_SI             BIT 0xc0
_ACK            BIT 0xc1
_ARBLOST        BIT 0xc2
_ACKRQ          BIT 0xc3
_STO            BIT 0xc4
_STA            BIT 0xc5
_TXMODE         BIT 0xc6
_MASTER         BIT 0xc7
_SPIEN          BIT 0xf8
_TXNF           BIT 0xf9
_NSSMD0         BIT 0xfa
_NSSMD1         BIT 0xfb
_RXOVRN         BIT 0xfc
_MODF           BIT 0xfd
_WCOL           BIT 0xfe
_SPIF           BIT 0xff
_IT0            BIT 0x88
_IE0            BIT 0x89
_IT1            BIT 0x8a
_IE1            BIT 0x8b
_TR0            BIT 0x8c
_TF0            BIT 0x8d
_TR1            BIT 0x8e
_TF1            BIT 0x8f
_T2XCLK0        BIT 0xc8
_T2XCLK1        BIT 0xc9
_TR2            BIT 0xca
_T2SPLIT        BIT 0xcb
_TF2CEN         BIT 0xcc
_TF2LEN         BIT 0xcd
_TF2L           BIT 0xce
_TF2H           BIT 0xcf
_T4XCLK0        BIT 0x98
_T4XCLK1        BIT 0x99
_TR4            BIT 0x9a
_T4SPLIT        BIT 0x9b
_TF4CEN         BIT 0x9c
_TF4LEN         BIT 0x9d
_TF4L           BIT 0x9e
_TF4H           BIT 0x9f
_T5XCLK0        BIT 0xc0
_T5XCLK1        BIT 0xc1
_TR5            BIT 0xc2
_T5SPLIT        BIT 0xc3
_TF5CEN         BIT 0xc4
_TF5LEN         BIT 0xc5
_TF5L           BIT 0xc6
_TF5H           BIT 0xc7
_RIE            BIT 0xd8
_RXTO0          BIT 0xd9
_RXTO1          BIT 0xda
_RFRQ           BIT 0xdb
_TIE            BIT 0xdc
_TXHOLD         BIT 0xdd
_TXNF1          BIT 0xde
_TFRQ           BIT 0xdf
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	rbank0 segment data overlay
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	rseg R_DSEG
_dig_x1:
	ds 1
_dig_x2:
	ds 1
_dig_y1:
	ds 1
_dig_y2:
	ds 1
_dig_z1:
	ds 1
_dig_z2:
	ds 1
_dig_z3:
	ds 1
_dig_z4:
	ds 1
_dig_xy1:
	ds 1
_dig_xy2:
	ds 1
_dig_xyz1:
	ds 1
_SPI_read_block_PARM_2:
	ds 3
_SPI_read_block_PARM_3:
	ds 1
_SPI_write_PARM_2:
	ds 1
_BMM150_compensate_x_PARM_2:
	ds 3
_BMM150_compensate_x_sloc0_1_0:
	ds 4
_BMM150_compensate_y_PARM_2:
	ds 3
_BMM150_compensate_y_sloc0_1_0:
	ds 4
_BMM150_compensate_z_PARM_2:
	ds 3
_BMM150_compensate_z_sloc0_1_0:
	ds 2
_BMM150_compensate_z_sloc1_1_0:
	ds 4
_BMM150_compensate_z_sloc2_1_0:
	ds 4
_BMM150_Read_Data_PARM_2:
	ds 3
_BMM150_Read_Data_PARM_3:
	ds 3
_BMM150_Read_Data_mag_x_1_118:
	ds 3
_BMM150_Read_Data_raw_x_msb_1_119:
	ds 1
_BMM150_Read_Data_raw_y_msb_1_119:
	ds 1
_BMM150_Read_Data_raw_z_msb_1_119:
	ds 1
_BMM150_Read_Data_raw_rhall_msb_1_119:
	ds 1
_BMM150_Read_Data_x_val_1_119:
	ds 2
_BMM150_Read_Data_y_val_1_119:
	ds 2
_BMM150_Read_Data_z_val_1_119:
	ds 2
_BMM150_Read_Data_rhall_val_1_119:
	ds 2
_main_sloc0_1_0:
	ds 4
_main_sloc1_1_0:
	ds 4
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	rseg	R_OSEG
	rseg	R_OSEG
	rseg	R_OSEG
;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	rseg R_ISEG
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	DSEG
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	rseg R_BSEG
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	rseg R_PSEG
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	rseg R_XSEG
_BMM150_Read_Trim_Registers_trim_x1y1_1_84:
	ds 2
_BMM150_Read_Trim_Registers_trim_xyz_data_1_84:
	ds 4
_BMM150_Read_Trim_Registers_trim_xy1xy2_1_84:
	ds 10
_BMM150_compensate_x_retval_1_93:
	ds 2
_BMM150_compensate_x_process_comp_x0_1_93:
	ds 2
_BMM150_compensate_y_retval_1_102:
	ds 2
_BMM150_compensate_y_process_comp_y0_1_102:
	ds 2
_BMM150_compensate_z_retval_1_111:
	ds 4
_main_mag_x_1_121:
	ds 2
_main_mag_y_1_121:
	ds 2
_main_mag_z_1_121:
	ds 2
_main_sum_x_1_121:
	ds 4
_main_sum_y_1_121:
	ds 4
_main_avg_angle_1_121:
	ds 4
_main_smoothed_angle_1_121:
	ds 4
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	XSEG
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	rseg R_IXSEG
	rseg R_HOME
	rseg R_GSINIT
	rseg R_CSEG
;--------------------------------------------------------
; Reset entry point and interrupt vectors
;--------------------------------------------------------
	CSEG at 0x0000
	ljmp	_crt0
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	rseg R_HOME
	rseg R_GSINIT
	rseg R_GSINIT
;--------------------------------------------------------
; data variables initialization
;--------------------------------------------------------
	rseg R_DINIT
	; The linker places a 'ret' at the end of segment R_DINIT.
;--------------------------------------------------------
; code
;--------------------------------------------------------
	rseg R_CSEG
;------------------------------------------------------------
;Allocation info for local variables in function '_c51_external_startup'
;------------------------------------------------------------
;------------------------------------------------------------
;	sensor_test.c:74: char _c51_external_startup (void)
;	-----------------------------------------
;	 function _c51_external_startup
;	-----------------------------------------
__c51_external_startup:
	using	0
;	sensor_test.c:77: SFRPAGE = 0x00;
	mov	_SFRPAGE,#0x00
;	sensor_test.c:78: WDTCN = 0xDE; //First key
	mov	_WDTCN,#0xDE
;	sensor_test.c:79: WDTCN = 0xAD; //Second key
	mov	_WDTCN,#0xAD
;	sensor_test.c:81: VDM0CN=0x80;       // enable VDD monitor
	mov	_VDM0CN,#0x80
;	sensor_test.c:82: RSTSRC=0x02|0x04;  // Enable reset on missing clock detector and VDD
	mov	_RSTSRC,#0x06
;	sensor_test.c:89: SFRPAGE = 0x10;
	mov	_SFRPAGE,#0x10
;	sensor_test.c:90: PFE0CN  = 0x20; // SYSCLK < 75 MHz.
	mov	_PFE0CN,#0x20
;	sensor_test.c:91: SFRPAGE = 0x00;
	mov	_SFRPAGE,#0x00
;	sensor_test.c:112: CLKSEL = 0x00;
	mov	_CLKSEL,#0x00
;	sensor_test.c:113: CLKSEL = 0x00;
	mov	_CLKSEL,#0x00
;	sensor_test.c:114: while ((CLKSEL & 0x80) == 0);
L002001?:
	mov	a,_CLKSEL
	jnb	acc.7,L002001?
;	sensor_test.c:115: CLKSEL = 0x03;
	mov	_CLKSEL,#0x03
;	sensor_test.c:116: CLKSEL = 0x03;
	mov	_CLKSEL,#0x03
;	sensor_test.c:117: while ((CLKSEL & 0x80) == 0);
L002004?:
	mov	a,_CLKSEL
	jnb	acc.7,L002004?
;	sensor_test.c:123: P0MDOUT = 0b_0000_1101; // SCK, MOSI, and P0.3 are push-pull, others open-drain
	mov	_P0MDOUT,#0x0D
;	sensor_test.c:124: P1MDOUT = 0b_0000_0000; // P1 all open-drain
	mov	_P1MDOUT,#0x00
;	sensor_test.c:125: XBR0 = 0b_0000_0011;    // SPI0E=1, URT0E=1
	mov	_XBR0,#0x03
;	sensor_test.c:126: XBR1 = 0b_0000_0000;
	mov	_XBR1,#0x00
;	sensor_test.c:127: XBR2 = 0b_0100_0000;    // Enable crossbar and weak pull-ups
	mov	_XBR2,#0x40
;	sensor_test.c:133: SCON0 = 0x10;
	mov	_SCON0,#0x10
;	sensor_test.c:134: TH1 = 0x100-((SYSCLK/BAUDRATE)/(12L*2L));
	mov	_TH1,#0xE6
;	sensor_test.c:135: TL1 = TH1;      // Init Timer1
	mov	_TL1,_TH1
;	sensor_test.c:136: TMOD &= ~0xf0;  // TMOD: timer 1 in 8-bit auto-reload
	anl	_TMOD,#0x0F
;	sensor_test.c:137: TMOD |=  0x20;                       
	orl	_TMOD,#0x20
;	sensor_test.c:138: TR1 = 1; // START Timer1
	setb	_TR1
;	sensor_test.c:139: TI = 1;  // Indicate TX0 ready
	setb	_TI
;	sensor_test.c:142: SPI0CKR = (SYSCLK/(2*F_SCK_MAX))-1;
	mov	_SPI0CKR,#0x11
;	sensor_test.c:143: SPI0CFG = 0b_1110_0000; // this is mode 3, you need to determine the sampling etc. in datasheet
	mov	_SPI0CFG,#0xE0
;	sensor_test.c:144: SPI0CN0 = 0b_0000_0001; // SPI enabled and in three wire mode
	mov	_SPI0CN0,#0x01
;	sensor_test.c:146: return 0;
	mov	dpl,#0x00
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Set_Pin_Output'
;------------------------------------------------------------
;mask                      Allocated with name '_Set_Pin_Output_mask_1_67'
;pin                       Allocated to registers r2 
;------------------------------------------------------------
;	sensor_test.c:149: void Set_Pin_Output (unsigned char pin)
;	-----------------------------------------
;	 function Set_Pin_Output
;	-----------------------------------------
_Set_Pin_Output:
	mov	r2,dpl
;	sensor_test.c:153: mask=(1<<(pin&0x7));
	mov	a,#0x07
	anl	a,r2
	mov	b,a
	inc	b
	mov	a,#0x01
	sjmp	L003011?
L003009?:
	add	a,acc
L003011?:
	djnz	b,L003009?
	mov	r3,a
;	sensor_test.c:154: switch(pin/0x10)
	mov	a,r2
	swap	a
	anl	a,#0x0f
	mov  r2,a
	add	a,#0xff - 0x03
	jc	L003006?
	mov	a,r2
	add	a,r2
	add	a,r2
	mov	dptr,#L003013?
	jmp	@a+dptr
L003013?:
	ljmp	L003001?
	ljmp	L003002?
	ljmp	L003003?
	ljmp	L003004?
;	sensor_test.c:156: case 0: P0MDOUT |= mask; break;
L003001?:
	mov	a,r3
	orl	_P0MDOUT,a
;	sensor_test.c:157: case 1: P1MDOUT |= mask; break;
	ret
L003002?:
	mov	a,r3
	orl	_P1MDOUT,a
;	sensor_test.c:158: case 2: P2MDOUT |= mask; break; 
	ret
L003003?:
	mov	a,r3
	orl	_P2MDOUT,a
;	sensor_test.c:159: case 3: P3MDOUT |= mask; break; 
	ret
L003004?:
	mov	a,r3
	orl	_P3MDOUT,a
;	sensor_test.c:160: }	
L003006?:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Timer3us'
;------------------------------------------------------------
;i                         Allocated with name '_Timer3us_i_1_70'
;us                        Allocated to registers r2 
;------------------------------------------------------------
;	sensor_test.c:164: void Timer3us(unsigned char us)
;	-----------------------------------------
;	 function Timer3us
;	-----------------------------------------
_Timer3us:
	mov	r2,dpl
;	sensor_test.c:169: CKCON0|=0b_0100_0000;
	orl	_CKCON0,#0x40
;	sensor_test.c:171: TMR3RL = (-(SYSCLK)/1000000L); // Set Timer3 to overflow in 1us.
	mov	_TMR3RL,#0xB8
	mov	(_TMR3RL >> 8),#0xFF
;	sensor_test.c:172: TMR3 = TMR3RL;                 // Initialize Timer3 for first overflow
	mov	_TMR3,_TMR3RL
	mov	(_TMR3 >> 8),(_TMR3RL >> 8)
;	sensor_test.c:174: TMR3CN0 = 0x04;                 // Sart Timer3 and clear overflow flag
	mov	_TMR3CN0,#0x04
;	sensor_test.c:175: for (i = 0; i < us; i++)       // Count <us> overflows
	mov	r3,#0x00
L004004?:
	clr	c
	mov	a,r3
	subb	a,r2
	jnc	L004007?
;	sensor_test.c:177: while (!(TMR3CN0 & 0x80));  // Wait for overflow
L004001?:
	mov	a,_TMR3CN0
	jnb	acc.7,L004001?
;	sensor_test.c:178: TMR3CN0 &= ~(0x80);         // Clear overflow indicator
	anl	_TMR3CN0,#0x7F
;	sensor_test.c:175: for (i = 0; i < us; i++)       // Count <us> overflows
	inc	r3
	sjmp	L004004?
L004007?:
;	sensor_test.c:180: TMR3CN0 = 0 ;                   // Stop Timer3 and clear overflow flag
	mov	_TMR3CN0,#0x00
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'waitms'
;------------------------------------------------------------
;ms                        Allocated to registers r2 r3 
;j                         Allocated with name '_waitms_j_1_73'
;k                         Allocated with name '_waitms_k_1_73'
;------------------------------------------------------------
;	sensor_test.c:183: void waitms (unsigned int ms)
;	-----------------------------------------
;	 function waitms
;	-----------------------------------------
_waitms:
	mov	r2,dpl
	mov	r3,dph
;	sensor_test.c:187: for(j=0; j<ms; j++)
	mov	r4,#0x00
	mov	r5,#0x00
L005005?:
	clr	c
	mov	a,r4
	subb	a,r2
	mov	a,r5
	subb	a,r3
	jnc	L005009?
;	sensor_test.c:188: for (k=0; k<4; k++) Timer3us(250);
	mov	r6,#0x00
L005001?:
	cjne	r6,#0x04,L005018?
L005018?:
	jnc	L005007?
	mov	dpl,#0xFA
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	push	ar6
	lcall	_Timer3us
	pop	ar6
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
	inc	r6
	sjmp	L005001?
L005007?:
;	sensor_test.c:187: for(j=0; j<ms; j++)
	inc	r4
	cjne	r4,#0x00,L005005?
	inc	r5
	sjmp	L005005?
L005009?:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'SPI_transfer'
;------------------------------------------------------------
;tx_data                   Allocated to registers 
;------------------------------------------------------------
;	sensor_test.c:191: unsigned char SPI_transfer(unsigned char tx_data)
;	-----------------------------------------
;	 function SPI_transfer
;	-----------------------------------------
_SPI_transfer:
	mov	_SPI0DAT,dpl
;	sensor_test.c:194: while (!SPIF);      // Wait for transfer to complete
L006001?:
;	sensor_test.c:195: SPIF = 0;           // Clear SPI interrupt flag
	jbc	_SPIF,L006008?
	sjmp	L006001?
L006008?:
;	sensor_test.c:196: return SPI0DAT;     // Return received data
	mov	dpl,_SPI0DAT
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'SPI_read'
;------------------------------------------------------------
;reg_addr                  Allocated to registers r2 
;value                     Allocated to registers 
;------------------------------------------------------------
;	sensor_test.c:199: unsigned char SPI_read(unsigned char reg_addr)
;	-----------------------------------------
;	 function SPI_read
;	-----------------------------------------
_SPI_read:
	mov	r2,dpl
;	sensor_test.c:204: reg_addr = reg_addr | 0x80;
	orl	ar2,#0x80
;	sensor_test.c:206: CS = 0;                // Select the device
	clr	_P0_3
;	sensor_test.c:207: SPI_transfer(reg_addr);     // Send register address
	mov	dpl,r2
	lcall	_SPI_transfer
;	sensor_test.c:208: value = SPI_transfer(0x00); // Read value (send dummy byte) dummy byte is a placeholder byte sent by the master when it wants to receive data
	mov	dpl,#0x00
	lcall	_SPI_transfer
;	sensor_test.c:209: CS = 1;                // Deselect the device
	setb	_P0_3
;	sensor_test.c:211: return value;
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'SPI_read_block'
;------------------------------------------------------------
;buffer                    Allocated with name '_SPI_read_block_PARM_2'
;len                       Allocated with name '_SPI_read_block_PARM_3'
;start_addr                Allocated to registers r2 
;i                         Allocated to registers r2 
;------------------------------------------------------------
;	sensor_test.c:214: void SPI_read_block(unsigned char start_addr, uint8_t *buffer, uint8_t len)
;	-----------------------------------------
;	 function SPI_read_block
;	-----------------------------------------
_SPI_read_block:
	mov	r2,dpl
;	sensor_test.c:217: start_addr |= 0x80; // Set MSB for read
	orl	ar2,#0x80
;	sensor_test.c:218: CS = 0;
	clr	_P0_3
;	sensor_test.c:219: SPI_transfer(start_addr);
	mov	dpl,r2
	lcall	_SPI_transfer
;	sensor_test.c:220: for (i = 0; i < len; i++) {
	mov	r2,#0x00
L008001?:
	clr	c
	mov	a,r2
	subb	a,_SPI_read_block_PARM_3
	jnc	L008004?
;	sensor_test.c:221: buffer[i] = SPI_transfer(0x00); // Dummy writes
	mov	a,r2
	add	a,_SPI_read_block_PARM_2
	mov	r3,a
	clr	a
	addc	a,(_SPI_read_block_PARM_2 + 1)
	mov	r4,a
	mov	r5,(_SPI_read_block_PARM_2 + 2)
	mov	dpl,#0x00
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	lcall	_SPI_transfer
	mov	r6,dpl
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	mov	a,r6
	lcall	__gptrput
;	sensor_test.c:220: for (i = 0; i < len; i++) {
	inc	r2
	sjmp	L008001?
L008004?:
;	sensor_test.c:223: CS = 1;
	setb	_P0_3
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'SPI_write'
;------------------------------------------------------------
;reg_value                 Allocated with name '_SPI_write_PARM_2'
;reg_addr                  Allocated to registers r2 
;------------------------------------------------------------
;	sensor_test.c:227: void SPI_write(unsigned char reg_addr, unsigned char reg_value)
;	-----------------------------------------
;	 function SPI_write
;	-----------------------------------------
_SPI_write:
	mov	r2,dpl
;	sensor_test.c:230: reg_addr = reg_addr & 0x7F;
	anl	ar2,#0x7F
;	sensor_test.c:232: CS = 0;                // Select device
	clr	_P0_3
;	sensor_test.c:233: SPI_transfer(reg_addr);     // Send register address
	mov	dpl,r2
	lcall	_SPI_transfer
;	sensor_test.c:234: SPI_transfer(reg_value);    // Send value
	mov	dpl,_SPI_write_PARM_2
	lcall	_SPI_transfer
;	sensor_test.c:235: CS = 1;                // Deselect device
	setb	_P0_3
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'BMM150_Read_Trim_Registers'
;------------------------------------------------------------
;i                         Allocated with name '_BMM150_Read_Trim_Registers_i_1_84'
;temp_msb                  Allocated with name '_BMM150_Read_Trim_Registers_temp_msb_1_84'
;trim_x1y1                 Allocated with name '_BMM150_Read_Trim_Registers_trim_x1y1_1_84'
;trim_xyz_data             Allocated with name '_BMM150_Read_Trim_Registers_trim_xyz_data_1_84'
;trim_xy1xy2               Allocated with name '_BMM150_Read_Trim_Registers_trim_xy1xy2_1_84'
;------------------------------------------------------------
;	sensor_test.c:238: void BMM150_Read_Trim_Registers(void)
;	-----------------------------------------
;	 function BMM150_Read_Trim_Registers
;	-----------------------------------------
_BMM150_Read_Trim_Registers:
;	sensor_test.c:242: xdata uint8_t trim_x1y1[2] = {0};
	mov	dptr,#_BMM150_Read_Trim_Registers_trim_x1y1_1_84
;	sensor_test.c:243: xdata uint8_t trim_xyz_data[4] = {0};
	clr	a
	movx	@dptr,a
	mov	dptr,#(_BMM150_Read_Trim_Registers_trim_x1y1_1_84 + 0x0001)
	movx	@dptr,a
	mov	dptr,#_BMM150_Read_Trim_Registers_trim_xyz_data_1_84
	movx	@dptr,a
	mov	dptr,#(_BMM150_Read_Trim_Registers_trim_xyz_data_1_84 + 0x0001)
	movx	@dptr,a
	mov	dptr,#(_BMM150_Read_Trim_Registers_trim_xyz_data_1_84 + 0x0002)
;	sensor_test.c:244: xdata uint8_t trim_xy1xy2[10] = {0};
	clr	a
	movx	@dptr,a
	mov	dptr,#(_BMM150_Read_Trim_Registers_trim_xyz_data_1_84 + 0x0003)
	movx	@dptr,a
	mov	dptr,#_BMM150_Read_Trim_Registers_trim_xy1xy2_1_84
	movx	@dptr,a
	mov	dptr,#(_BMM150_Read_Trim_Registers_trim_xy1xy2_1_84 + 0x0001)
	movx	@dptr,a
	mov	dptr,#(_BMM150_Read_Trim_Registers_trim_xy1xy2_1_84 + 0x0002)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_BMM150_Read_Trim_Registers_trim_xy1xy2_1_84 + 0x0003)
	movx	@dptr,a
	mov	dptr,#(_BMM150_Read_Trim_Registers_trim_xy1xy2_1_84 + 0x0004)
	movx	@dptr,a
	mov	dptr,#(_BMM150_Read_Trim_Registers_trim_xy1xy2_1_84 + 0x0005)
	movx	@dptr,a
	mov	dptr,#(_BMM150_Read_Trim_Registers_trim_xy1xy2_1_84 + 0x0006)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_BMM150_Read_Trim_Registers_trim_xy1xy2_1_84 + 0x0007)
	movx	@dptr,a
	mov	dptr,#(_BMM150_Read_Trim_Registers_trim_xy1xy2_1_84 + 0x0008)
	movx	@dptr,a
	mov	dptr,#(_BMM150_Read_Trim_Registers_trim_xy1xy2_1_84 + 0x0009)
	movx	@dptr,a
;	sensor_test.c:247: for (i=0;i<2;i++){
	mov	r2,#0x00
L010001?:
	cjne	r2,#0x02,L010024?
L010024?:
	jnc	L010004?
;	sensor_test.c:248: trim_x1y1[i] = SPI_read(BMM150_DIG_X1+i); 
	mov	a,r2
	add	a,#_BMM150_Read_Trim_Registers_trim_x1y1_1_84
	mov	r3,a
	clr	a
	addc	a,#(_BMM150_Read_Trim_Registers_trim_x1y1_1_84 >> 8)
	mov	r4,a
	mov	a,#0x5D
	add	a,r2
	mov	dpl,a
	push	ar2
	push	ar3
	push	ar4
	lcall	_SPI_read
	mov	r5,dpl
	pop	ar4
	pop	ar3
	pop	ar2
	mov	dpl,r3
	mov	dph,r4
	mov	a,r5
	movx	@dptr,a
;	sensor_test.c:247: for (i=0;i<2;i++){
	inc	r2
	sjmp	L010001?
L010004?:
;	sensor_test.c:250: for (i=0;i<4;i++){
	mov	r2,#0x00
L010005?:
	cjne	r2,#0x04,L010026?
L010026?:
	jnc	L010008?
;	sensor_test.c:251: trim_xyz_data[i] = SPI_read(BMM150_DIG_Z4_LSB+i);
	mov	a,r2
	add	a,#_BMM150_Read_Trim_Registers_trim_xyz_data_1_84
	mov	r3,a
	clr	a
	addc	a,#(_BMM150_Read_Trim_Registers_trim_xyz_data_1_84 >> 8)
	mov	r4,a
	mov	a,#0x62
	add	a,r2
	mov	dpl,a
	push	ar2
	push	ar3
	push	ar4
	lcall	_SPI_read
	mov	r5,dpl
	pop	ar4
	pop	ar3
	pop	ar2
	mov	dpl,r3
	mov	dph,r4
	mov	a,r5
	movx	@dptr,a
;	sensor_test.c:250: for (i=0;i<4;i++){
	inc	r2
	sjmp	L010005?
L010008?:
;	sensor_test.c:253: for (i=0;i<10;i++){
	mov	r2,#0x00
L010009?:
	cjne	r2,#0x0A,L010028?
L010028?:
	jnc	L010012?
;	sensor_test.c:254: trim_xy1xy2[i] = SPI_read(BMM150_DIG_Z2_LSB+i);
	mov	a,r2
	add	a,#_BMM150_Read_Trim_Registers_trim_xy1xy2_1_84
	mov	r3,a
	clr	a
	addc	a,#(_BMM150_Read_Trim_Registers_trim_xy1xy2_1_84 >> 8)
	mov	r4,a
	mov	a,#0x68
	add	a,r2
	mov	dpl,a
	push	ar2
	push	ar3
	push	ar4
	lcall	_SPI_read
	mov	r5,dpl
	pop	ar4
	pop	ar3
	pop	ar2
	mov	dpl,r3
	mov	dph,r4
	mov	a,r5
	movx	@dptr,a
;	sensor_test.c:253: for (i=0;i<10;i++){
	inc	r2
	sjmp	L010009?
L010012?:
;	sensor_test.c:257: dig_x1 = (int8_t) trim_x1y1[0]; 
	mov	dptr,#_BMM150_Read_Trim_Registers_trim_x1y1_1_84
	movx	a,@dptr
	mov	_dig_x1,a
;	sensor_test.c:258: dig_y1 = (int8_t) trim_x1y1[1]; 
	mov	dptr,#(_BMM150_Read_Trim_Registers_trim_x1y1_1_84 + 0x0001)
	movx	a,@dptr
	mov	_dig_y1,a
;	sensor_test.c:259: dig_x2 = (int8_t) trim_xyz_data[2]; 
	mov	dptr,#(_BMM150_Read_Trim_Registers_trim_xyz_data_1_84 + 0x0002)
	movx	a,@dptr
	mov	_dig_x2,a
;	sensor_test.c:260: dig_y2 = (int8_t) trim_xyz_data[3]; 
	mov	dptr,#(_BMM150_Read_Trim_Registers_trim_xyz_data_1_84 + 0x0003)
	movx	a,@dptr
	mov	_dig_y2,a
;	sensor_test.c:262: temp_msb = ((uint16_t)trim_xy1xy2[3]) << 8;
	mov	dptr,#(_BMM150_Read_Trim_Registers_trim_xy1xy2_1_84 + 0x0003)
	movx	a,@dptr
	mov	r3,a
	mov	r2,#0x00
;	sensor_test.c:263: dig_z1 = (uint16_t)(temp_msb | trim_xy1xy2[2]);
	mov	dptr,#(_BMM150_Read_Trim_Registers_trim_xy1xy2_1_84 + 0x0002)
	movx	a,@dptr
	mov	r5,#0x00
	orl	ar2,a
	mov	a,r5
	orl	ar3,a
	mov	_dig_z1,r2
;	sensor_test.c:265: temp_msb = ((uint16_t)trim_xy1xy2[1]) << 8;
	mov	dptr,#(_BMM150_Read_Trim_Registers_trim_xy1xy2_1_84 + 0x0001)
	movx	a,@dptr
	mov	r3,a
	mov	r2,#0x00
;	sensor_test.c:266: dig_z2 = (int16_t)(temp_msb | trim_xy1xy2[0]);
	mov	dptr,#_BMM150_Read_Trim_Registers_trim_xy1xy2_1_84
	movx	a,@dptr
	mov	r5,#0x00
	orl	ar2,a
	mov	a,r5
	orl	ar3,a
	mov	_dig_z2,r2
;	sensor_test.c:268: temp_msb = ((uint16_t)trim_xy1xy2[7]) << 8;
	mov	dptr,#(_BMM150_Read_Trim_Registers_trim_xy1xy2_1_84 + 0x0007)
	movx	a,@dptr
	mov	r3,a
	mov	r2,#0x00
;	sensor_test.c:269: dig_z3 = (int16_t)(temp_msb | trim_xy1xy2[6]);
	mov	dptr,#(_BMM150_Read_Trim_Registers_trim_xy1xy2_1_84 + 0x0006)
	movx	a,@dptr
	mov	r5,#0x00
	orl	ar2,a
	mov	a,r5
	orl	ar3,a
	mov	_dig_z3,r2
;	sensor_test.c:271: temp_msb = ((uint16_t)trim_xyz_data[1]) << 8;
	mov	dptr,#(_BMM150_Read_Trim_Registers_trim_xyz_data_1_84 + 0x0001)
	movx	a,@dptr
	mov	r3,a
	mov	r2,#0x00
;	sensor_test.c:272: dig_z4 = (int16_t)(temp_msb | trim_xyz_data[0]);
	mov	dptr,#_BMM150_Read_Trim_Registers_trim_xyz_data_1_84
	movx	a,@dptr
	mov	r5,#0x00
	orl	ar2,a
	mov	a,r5
	orl	ar3,a
	mov	_dig_z4,r2
;	sensor_test.c:274: dig_xy1 = trim_xy1xy2[9];
	mov	dptr,#(_BMM150_Read_Trim_Registers_trim_xy1xy2_1_84 + 0x0009)
	movx	a,@dptr
	mov	_dig_xy1,a
;	sensor_test.c:275: dig_xy2 = (int8_t)trim_xy1xy2[8];
	mov	dptr,#(_BMM150_Read_Trim_Registers_trim_xy1xy2_1_84 + 0x0008)
	movx	a,@dptr
	mov	_dig_xy2,a
;	sensor_test.c:277: temp_msb = ((uint16_t)(trim_xy1xy2[5] & 0x7F)) << 8;
	mov	dptr,#(_BMM150_Read_Trim_Registers_trim_xy1xy2_1_84 + 0x0005)
	movx	a,@dptr
	mov	r2,a
	anl	ar2,#0x7F
	mov	ar3,r2
	mov	r2,#0x00
;	sensor_test.c:278: dig_xyz1 = (uint16_t)(temp_msb | trim_xy1xy2[4]);
	mov	dptr,#(_BMM150_Read_Trim_Registers_trim_xy1xy2_1_84 + 0x0004)
	movx	a,@dptr
	mov	r5,#0x00
	orl	ar2,a
	mov	a,r5
	orl	ar3,a
	mov	_dig_xyz1,r2
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'BMM150_Init'
;------------------------------------------------------------
;chip_id                   Allocated to registers r2 
;------------------------------------------------------------
;	sensor_test.c:283: void BMM150_Init(void)
;	-----------------------------------------
;	 function BMM150_Init
;	-----------------------------------------
_BMM150_Init:
;	sensor_test.c:288: CS = 1;         // Deselect BMM150
	setb	_P0_3
;	sensor_test.c:291: waitms(10);
	mov	dptr,#0x000A
	lcall	_waitms
;	sensor_test.c:294: SPI_write(BMM150_POWER_CONTROL, 0x82);
	mov	_SPI_write_PARM_2,#0x82
	mov	dpl,#0x4B
	lcall	_SPI_write
;	sensor_test.c:295: waitms(10);  // Wait for reset to complete
	mov	dptr,#0x000A
	lcall	_waitms
;	sensor_test.c:298: SPI_write(BMM150_POWER_CONTROL, BMM150_POWER_ON);
	mov	_SPI_write_PARM_2,#0x01
	mov	dpl,#0x4B
	lcall	_SPI_write
;	sensor_test.c:299: waitms(5);
	mov	dptr,#0x0005
	lcall	_waitms
;	sensor_test.c:302: chip_id = SPI_read(BMM150_CHIP_ID);
	mov	dpl,#0x40
	lcall	_SPI_read
	mov	r2,dpl
;	sensor_test.c:303: if (chip_id != BMM150_CHIP_ID_VALUE)
	cjne	r2,#0x32,L011010?
	sjmp	L011005?
L011010?:
;	sensor_test.c:305: printf("Error: Could not find BMM150 sensor (Chip ID: 0x%02X)\r\n", chip_id);
	mov	ar3,r2
	mov	r4,#0x00
	push	ar3
	push	ar4
	mov	a,#__str_0
	push	acc
	mov	a,#(__str_0 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	sensor_test.c:306: while (1) {
L011002?:
;	sensor_test.c:307: printf("Press restart to check again!\r");
	mov	a,#__str_1
	push	acc
	mov	a,#(__str_1 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	sjmp	L011002?
L011005?:
;	sensor_test.c:312: SPI_write(BMM150_OP_MODE, BMM150_NORMAL_MODE | (BMM150_ODR_10HZ * 8));
	mov	_SPI_write_PARM_2,#0x00
	mov	dpl,#0x4C
	push	ar2
	lcall	_SPI_write
;	sensor_test.c:315: SPI_write(BMM150_REP_XY, 0x7F); // XY-repetitions = 9
	mov	_SPI_write_PARM_2,#0x7F
	mov	dpl,#0x51
	lcall	_SPI_write
;	sensor_test.c:316: SPI_write(BMM150_REP_Z, 0x0E);  // Z-repetitions = 15
	mov	_SPI_write_PARM_2,#0x0E
	mov	dpl,#0x52
	lcall	_SPI_write
;	sensor_test.c:318: BMM150_Read_Trim_Registers();
	lcall	_BMM150_Read_Trim_Registers
;	sensor_test.c:320: printf("BMM150 initialized successfully! Chip ID: 0x%02X\r\n", chip_id);
	mov	r3,#0x00
	push	ar3
	mov	a,#__str_2
	push	acc
	mov	a,#(__str_2 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'BMM150_compensate_x'
;------------------------------------------------------------
;data_rhall                Allocated with name '_BMM150_compensate_x_PARM_2'
;mag_data_x                Allocated to registers r2 r3 r4 
;sloc0                     Allocated with name '_BMM150_compensate_x_sloc0_1_0'
;retval                    Allocated with name '_BMM150_compensate_x_retval_1_93'
;process_comp_x0           Allocated with name '_BMM150_compensate_x_process_comp_x0_1_93'
;process_comp_x1           Allocated with name '_BMM150_compensate_x_process_comp_x1_1_93'
;process_comp_x2           Allocated with name '_BMM150_compensate_x_process_comp_x2_1_93'
;process_comp_x3           Allocated with name '_BMM150_compensate_x_process_comp_x3_1_93'
;process_comp_x4           Allocated with name '_BMM150_compensate_x_process_comp_x4_1_93'
;process_comp_x5           Allocated with name '_BMM150_compensate_x_process_comp_x5_1_93'
;process_comp_x6           Allocated with name '_BMM150_compensate_x_process_comp_x6_1_93'
;process_comp_x7           Allocated with name '_BMM150_compensate_x_process_comp_x7_1_93'
;process_comp_x8           Allocated with name '_BMM150_compensate_x_process_comp_x8_1_93'
;process_comp_x9           Allocated with name '_BMM150_compensate_x_process_comp_x9_1_93'
;process_comp_x10          Allocated with name '_BMM150_compensate_x_process_comp_x10_1_93'
;------------------------------------------------------------
;	sensor_test.c:323: int16_t BMM150_compensate_x(int16_t *mag_data_x, int16_t *data_rhall)
;	-----------------------------------------
;	 function BMM150_compensate_x
;	-----------------------------------------
_BMM150_compensate_x:
;	sensor_test.c:341: if (*mag_data_x != BMM150_OVERFLOW_ADCVAL_XYAXES_FLIP){
	mov	r4,b
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	cjne	r2,#0x00,L012019?
	cjne	r3,#0xF0,L012019?
	ljmp	L012011?
L012019?:
;	sensor_test.c:342: if (*data_rhall != 0)
	mov	r4,_BMM150_compensate_x_PARM_2
	mov	r5,(_BMM150_compensate_x_PARM_2 + 1)
	mov	r6,(_BMM150_compensate_x_PARM_2 + 2)
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	orl	a,r4
	jz	L012005?
;	sensor_test.c:345: process_comp_x0 = *data_rhall;
	mov	dptr,#_BMM150_compensate_x_process_comp_x0_1_93
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
	sjmp	L012006?
L012005?:
;	sensor_test.c:347: else if (dig_xyz1 != 0)
	mov	a,_dig_xyz1
	jz	L012002?
;	sensor_test.c:349: process_comp_x0 = dig_xyz1;
	mov	dptr,#_BMM150_compensate_x_process_comp_x0_1_93
	mov	a,_dig_xyz1
	movx	@dptr,a
	mov	a,_dig_xyz1
	rlc	a
	subb	a,acc
	inc	dptr
	movx	@dptr,a
	sjmp	L012006?
L012002?:
;	sensor_test.c:353: process_comp_x0 = 0;
	mov	dptr,#_BMM150_compensate_x_process_comp_x0_1_93
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
L012006?:
;	sensor_test.c:355: if (process_comp_x0 != 0)
	mov	dptr,#_BMM150_compensate_x_process_comp_x0_1_93
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	orl	a,r4
	jnz	L012022?
	ljmp	L012008?
L012022?:
;	sensor_test.c:358: process_comp_x1 = ((int32_t)dig_xyz1) * 16384;
	mov	a,_dig_xyz1
	mov	r6,a
	rlc	a
	subb	a,acc
	mov	r0,a
	xch	a,r0
	anl	a,#0x03
	mov	c,acc.0
	xch	a,r0
	rrc	a
	xch	a,r0
	rrc	a
	mov	c,acc.0
	xch	a,r0
	rrc	a
	xch	a,r0
	rrc	a
	xch	a,r0
	mov	r1,a
	mov	a,r6
	rr	a
	rr	a
	anl	a,#0xc0
	mov	r7,a
	mov	a,r6
	rr	a
	rr	a
	anl	a,#0x3f
	orl	a,r0
	mov	r0,a
	mov	r6,#0x00
;	sensor_test.c:359: process_comp_x2 = ((uint16_t)(process_comp_x1 / process_comp_x0)) - ((uint16_t)0x4000);
	mov	__divslong_PARM_2,r4
	mov	(__divslong_PARM_2 + 1),r5
	mov	(__divslong_PARM_2 + 2),#0x00
	mov	(__divslong_PARM_2 + 3),#0x00
	mov	dpl,r6
	mov	dph,r7
	mov	b,r0
	mov	a,r1
	push	ar2
	push	ar3
	lcall	__divslong
	mov	r4,dpl
	mov	a,dph
	add	a,#0xc0
	mov	r5,a
;	sensor_test.c:361: process_comp_x3 = (((int32_t)retval) * ((int32_t)retval));
	mov	ar6,r4
	mov	ar7,r5
	mov	_BMM150_compensate_x_sloc0_1_0,r6
	mov	a,r7
	mov	(_BMM150_compensate_x_sloc0_1_0 + 1),a
	rlc	a
	subb	a,acc
	mov	(_BMM150_compensate_x_sloc0_1_0 + 2),a
	mov	(_BMM150_compensate_x_sloc0_1_0 + 3),a
	mov	ar6,r4
	mov	ar7,r5
	mov	__mullong_PARM_2,r6
	mov	a,r7
	mov	(__mullong_PARM_2 + 1),a
	rlc	a
	subb	a,acc
	mov	(__mullong_PARM_2 + 2),a
	mov	(__mullong_PARM_2 + 3),a
;	sensor_test.c:362: process_comp_x4 = (((int32_t)dig_xy2) * (process_comp_x3 / 128));
	mov	dpl,_BMM150_compensate_x_sloc0_1_0
	mov	dph,(_BMM150_compensate_x_sloc0_1_0 + 1)
	mov	b,(_BMM150_compensate_x_sloc0_1_0 + 2)
	mov	a,(_BMM150_compensate_x_sloc0_1_0 + 3)
	push	ar4
	push	ar5
	lcall	__mullong
	mov	_BMM150_compensate_x_sloc0_1_0,dpl
	mov	(_BMM150_compensate_x_sloc0_1_0 + 1),dph
	mov	(_BMM150_compensate_x_sloc0_1_0 + 2),b
	mov	(_BMM150_compensate_x_sloc0_1_0 + 3),a
	mov	a,_dig_xy2
	mov	r6,a
	rlc	a
	subb	a,acc
	mov	r7,a
	mov	r0,a
	mov	r1,a
	mov	__divslong_PARM_2,#0x80
	clr	a
	mov	(__divslong_PARM_2 + 1),a
	mov	(__divslong_PARM_2 + 2),a
	mov	(__divslong_PARM_2 + 3),a
	mov	dpl,_BMM150_compensate_x_sloc0_1_0
	mov	dph,(_BMM150_compensate_x_sloc0_1_0 + 1)
	mov	b,(_BMM150_compensate_x_sloc0_1_0 + 2)
	mov	a,(_BMM150_compensate_x_sloc0_1_0 + 3)
	push	ar6
	push	ar7
	push	ar0
	push	ar1
	lcall	__divslong
	mov	__mullong_PARM_2,dpl
	mov	(__mullong_PARM_2 + 1),dph
	mov	(__mullong_PARM_2 + 2),b
	mov	(__mullong_PARM_2 + 3),a
	pop	ar1
	pop	ar0
	pop	ar7
	pop	ar6
;	sensor_test.c:363: process_comp_x5 = (int32_t)(((int16_t)dig_xy1) * 128);
	mov	dpl,r6
	mov	dph,r7
	mov	b,r0
	mov	a,r1
	lcall	__mullong
	mov	_BMM150_compensate_x_sloc0_1_0,dpl
	mov	(_BMM150_compensate_x_sloc0_1_0 + 1),dph
	mov	(_BMM150_compensate_x_sloc0_1_0 + 2),b
	mov	(_BMM150_compensate_x_sloc0_1_0 + 3),a
	pop	ar5
	pop	ar4
	mov	a,_dig_xy1
	mov	r6,a
	rlc	a
	subb	a,acc
	anl	a,#0x01
	mov	c,acc.0
	xch	a,r6
	rrc	a
	xch	a,r6
	rrc	a
	xch	a,r6
	mov	__mullong_PARM_2,r6
	mov	(__mullong_PARM_2 + 1),a
	rlc	a
	subb	a,acc
	mov	(__mullong_PARM_2 + 2),a
	mov	(__mullong_PARM_2 + 3),a
;	sensor_test.c:364: process_comp_x6 = ((int32_t)retval) * process_comp_x5;
	mov	a,r5
	rlc	a
	subb	a,acc
	mov	r6,a
;	sensor_test.c:365: process_comp_x7 = (((process_comp_x4 + process_comp_x6) / 512) + ((int32_t)0x100000));
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__mullong
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,r4
	add	a,_BMM150_compensate_x_sloc0_1_0
	mov	r4,a
	mov	a,r5
	addc	a,(_BMM150_compensate_x_sloc0_1_0 + 1)
	mov	r5,a
	mov	a,r6
	addc	a,(_BMM150_compensate_x_sloc0_1_0 + 2)
	mov	r6,a
	mov	a,r7
	addc	a,(_BMM150_compensate_x_sloc0_1_0 + 3)
	mov	r7,a
	mov	__divslong_PARM_2,#0x00
	mov	(__divslong_PARM_2 + 1),#0x02
	mov	(__divslong_PARM_2 + 2),#0x00
	mov	(__divslong_PARM_2 + 3),#0x00
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	__divslong
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,#0x10
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
;	sensor_test.c:366: process_comp_x8 = ((int32_t)(((int16_t)dig_x2) + ((int16_t)0xA0)));
	mov	a,_dig_x2
	mov	r0,a
	rlc	a
	subb	a,acc
	mov	r1,a
	mov	a,#0xA0
	add	a,r0
	mov	r0,a
	clr	a
	addc	a,r1
	mov	__mullong_PARM_2,r0
	mov	(__mullong_PARM_2 + 1),a
	rlc	a
	subb	a,acc
	mov	(__mullong_PARM_2 + 2),a
	mov	(__mullong_PARM_2 + 3),a
;	sensor_test.c:367: process_comp_x9 = ((process_comp_x7 * process_comp_x8) / 4096);
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	__mullong
;	sensor_test.c:368: process_comp_x10 = ((int32_t)*mag_data_x) * process_comp_x9;
	mov	__divslong_PARM_2,#0x00
	mov	(__divslong_PARM_2 + 1),#0x10
	mov	(__divslong_PARM_2 + 2),#0x00
	mov	(__divslong_PARM_2 + 3),#0x00
	lcall	__divslong
	mov	__mullong_PARM_2,dpl
	mov	(__mullong_PARM_2 + 1),dph
	mov	(__mullong_PARM_2 + 2),b
	mov	(__mullong_PARM_2 + 3),a
	pop	ar3
	pop	ar2
	mov	a,r3
	rlc	a
	subb	a,acc
	mov	r4,a
;	sensor_test.c:369: retval = ((int16_t)(process_comp_x10 / 8192));
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__mullong
	mov	__divslong_PARM_2,#0x00
	mov	(__divslong_PARM_2 + 1),#0x20
	mov	(__divslong_PARM_2 + 2),#0x00
	mov	(__divslong_PARM_2 + 3),#0x00
	lcall	__divslong
	mov	r2,dpl
	mov	r3,dph
;	sensor_test.c:370: retval = (retval + (((int16_t)dig_x1) * 8)) / 16;
	mov	a,_dig_x1
	mov	r4,a
	rlc	a
	subb	a,acc
	swap	a
	rr	a
	anl	a,#0xf8
	xch	a,r4
	swap	a
	rr	a
	xch	a,r4
	xrl	a,r4
	xch	a,r4
	anl	a,#0xf8
	xch	a,r4
	xrl	a,r4
	mov	r5,a
	mov	a,r4
	add	a,r2
	mov	dpl,a
	mov	a,r5
	addc	a,r3
	mov	dph,a
	mov	__divsint_PARM_2,#0x10
	clr	a
	mov	(__divsint_PARM_2 + 1),a
	lcall	__divsint
	mov	a,dpl
	mov	b,dph
	mov	dptr,#_BMM150_compensate_x_retval_1_93
	movx	@dptr,a
	inc	dptr
	mov	a,b
	movx	@dptr,a
	sjmp	L012012?
L012008?:
;	sensor_test.c:373: retval = BMM150_OVERFLOW_OUTPUT; 
	mov	dptr,#_BMM150_compensate_x_retval_1_93
	clr	a
	movx	@dptr,a
	inc	dptr
	mov	a,#0x80
	movx	@dptr,a
	sjmp	L012012?
L012011?:
;	sensor_test.c:377: retval = BMM150_OVERFLOW_OUTPUT; 
	mov	dptr,#_BMM150_compensate_x_retval_1_93
	clr	a
	movx	@dptr,a
	inc	dptr
	mov	a,#0x80
	movx	@dptr,a
L012012?:
;	sensor_test.c:379: return retval; 
	mov	dptr,#_BMM150_compensate_x_retval_1_93
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	dpl,r2
	mov	dph,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'BMM150_compensate_y'
;------------------------------------------------------------
;data_rhall                Allocated with name '_BMM150_compensate_y_PARM_2'
;mag_data_y                Allocated to registers r2 r3 r4 
;sloc0                     Allocated with name '_BMM150_compensate_y_sloc0_1_0'
;retval                    Allocated with name '_BMM150_compensate_y_retval_1_102'
;process_comp_y0           Allocated with name '_BMM150_compensate_y_process_comp_y0_1_102'
;process_comp_y1           Allocated with name '_BMM150_compensate_y_process_comp_y1_1_102'
;process_comp_y2           Allocated with name '_BMM150_compensate_y_process_comp_y2_1_102'
;process_comp_y3           Allocated with name '_BMM150_compensate_y_process_comp_y3_1_102'
;process_comp_y4           Allocated with name '_BMM150_compensate_y_process_comp_y4_1_102'
;process_comp_y5           Allocated with name '_BMM150_compensate_y_process_comp_y5_1_102'
;process_comp_y6           Allocated with name '_BMM150_compensate_y_process_comp_y6_1_102'
;process_comp_y7           Allocated with name '_BMM150_compensate_y_process_comp_y7_1_102'
;process_comp_y8           Allocated with name '_BMM150_compensate_y_process_comp_y8_1_102'
;process_comp_y9           Allocated with name '_BMM150_compensate_y_process_comp_y9_1_102'
;------------------------------------------------------------
;	sensor_test.c:382: int16_t BMM150_compensate_y (int16_t *mag_data_y, int16_t *data_rhall)
;	-----------------------------------------
;	 function BMM150_compensate_y
;	-----------------------------------------
_BMM150_compensate_y:
;	sensor_test.c:400: if (*mag_data_y != BMM150_OVERFLOW_ADCVAL_XYAXES_FLIP)
	mov	r4,b
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	cjne	r2,#0x00,L013019?
	cjne	r3,#0xF0,L013019?
	ljmp	L013011?
L013019?:
;	sensor_test.c:402: if (*data_rhall != 0)
	mov	r4,_BMM150_compensate_y_PARM_2
	mov	r5,(_BMM150_compensate_y_PARM_2 + 1)
	mov	r6,(_BMM150_compensate_y_PARM_2 + 2)
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	orl	a,r4
	jz	L013005?
;	sensor_test.c:405: process_comp_y0 = *data_rhall;
	mov	dptr,#_BMM150_compensate_y_process_comp_y0_1_102
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
	sjmp	L013006?
L013005?:
;	sensor_test.c:407: else if (dig_xyz1 != 0)
	mov	a,_dig_xyz1
	jz	L013002?
;	sensor_test.c:409: process_comp_y0 = dig_xyz1;
	mov	dptr,#_BMM150_compensate_y_process_comp_y0_1_102
	mov	a,_dig_xyz1
	movx	@dptr,a
	mov	a,_dig_xyz1
	rlc	a
	subb	a,acc
	inc	dptr
	movx	@dptr,a
	sjmp	L013006?
L013002?:
;	sensor_test.c:413: process_comp_y0 = 0;
	mov	dptr,#_BMM150_compensate_y_process_comp_y0_1_102
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
L013006?:
;	sensor_test.c:416: if (process_comp_y0 != 0)
	mov	dptr,#_BMM150_compensate_y_process_comp_y0_1_102
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	orl	a,r4
	jnz	L013022?
	ljmp	L013008?
L013022?:
;	sensor_test.c:419: process_comp_y1 = (((int32_t)dig_xyz1) * 16384) / process_comp_y0;
	mov	a,_dig_xyz1
	mov	r6,a
	rlc	a
	subb	a,acc
	mov	r0,a
	xch	a,r0
	anl	a,#0x03
	mov	c,acc.0
	xch	a,r0
	rrc	a
	xch	a,r0
	rrc	a
	mov	c,acc.0
	xch	a,r0
	rrc	a
	xch	a,r0
	rrc	a
	xch	a,r0
	mov	r1,a
	mov	a,r6
	rr	a
	rr	a
	anl	a,#0xc0
	mov	r7,a
	mov	a,r6
	rr	a
	rr	a
	anl	a,#0x3f
	orl	a,r0
	mov	r0,a
	mov	r6,#0x00
	mov	__divslong_PARM_2,r4
	mov	(__divslong_PARM_2 + 1),r5
	mov	(__divslong_PARM_2 + 2),#0x00
	mov	(__divslong_PARM_2 + 3),#0x00
;	sensor_test.c:420: process_comp_y2 = ((uint16_t)process_comp_y1) - ((uint16_t)0x4000);
	mov	dpl,r6
	mov	dph,r7
	mov	b,r0
	mov	a,r1
	push	ar2
	push	ar3
	lcall	__divslong
	mov	r4,dpl
	mov	a,dph
	add	a,#0xc0
	mov	r5,a
;	sensor_test.c:422: process_comp_y3 = ((int32_t) retval) * ((int32_t)retval);
	mov	ar6,r4
	mov	ar7,r5
	mov	_BMM150_compensate_y_sloc0_1_0,r6
	mov	a,r7
	mov	(_BMM150_compensate_y_sloc0_1_0 + 1),a
	rlc	a
	subb	a,acc
	mov	(_BMM150_compensate_y_sloc0_1_0 + 2),a
	mov	(_BMM150_compensate_y_sloc0_1_0 + 3),a
	mov	ar6,r4
	mov	ar7,r5
	mov	__mullong_PARM_2,r6
	mov	a,r7
	mov	(__mullong_PARM_2 + 1),a
	rlc	a
	subb	a,acc
	mov	(__mullong_PARM_2 + 2),a
	mov	(__mullong_PARM_2 + 3),a
;	sensor_test.c:423: process_comp_y4 = ((int32_t)dig_xy2) * (process_comp_y3 / 128);
	mov	dpl,_BMM150_compensate_y_sloc0_1_0
	mov	dph,(_BMM150_compensate_y_sloc0_1_0 + 1)
	mov	b,(_BMM150_compensate_y_sloc0_1_0 + 2)
	mov	a,(_BMM150_compensate_y_sloc0_1_0 + 3)
	push	ar4
	push	ar5
	lcall	__mullong
	mov	_BMM150_compensate_y_sloc0_1_0,dpl
	mov	(_BMM150_compensate_y_sloc0_1_0 + 1),dph
	mov	(_BMM150_compensate_y_sloc0_1_0 + 2),b
	mov	(_BMM150_compensate_y_sloc0_1_0 + 3),a
	mov	a,_dig_xy2
	mov	r6,a
	rlc	a
	subb	a,acc
	mov	r7,a
	mov	r0,a
	mov	r1,a
	mov	__divslong_PARM_2,#0x80
	clr	a
	mov	(__divslong_PARM_2 + 1),a
	mov	(__divslong_PARM_2 + 2),a
	mov	(__divslong_PARM_2 + 3),a
	mov	dpl,_BMM150_compensate_y_sloc0_1_0
	mov	dph,(_BMM150_compensate_y_sloc0_1_0 + 1)
	mov	b,(_BMM150_compensate_y_sloc0_1_0 + 2)
	mov	a,(_BMM150_compensate_y_sloc0_1_0 + 3)
	push	ar6
	push	ar7
	push	ar0
	push	ar1
	lcall	__divslong
	mov	__mullong_PARM_2,dpl
	mov	(__mullong_PARM_2 + 1),dph
	mov	(__mullong_PARM_2 + 2),b
	mov	(__mullong_PARM_2 + 3),a
	pop	ar1
	pop	ar0
	pop	ar7
	pop	ar6
;	sensor_test.c:424: process_comp_y5 = ((int32_t)(((int16_t)dig_xy1) * 128));
	mov	dpl,r6
	mov	dph,r7
	mov	b,r0
	mov	a,r1
	lcall	__mullong
	mov	_BMM150_compensate_y_sloc0_1_0,dpl
	mov	(_BMM150_compensate_y_sloc0_1_0 + 1),dph
	mov	(_BMM150_compensate_y_sloc0_1_0 + 2),b
	mov	(_BMM150_compensate_y_sloc0_1_0 + 3),a
	pop	ar5
	pop	ar4
	mov	a,_dig_xy1
	mov	r6,a
	rlc	a
	subb	a,acc
	anl	a,#0x01
	mov	c,acc.0
	xch	a,r6
	rrc	a
	xch	a,r6
	rrc	a
	xch	a,r6
	mov	__mullong_PARM_2,r6
	mov	(__mullong_PARM_2 + 1),a
	rlc	a
	subb	a,acc
	mov	(__mullong_PARM_2 + 2),a
	mov	(__mullong_PARM_2 + 3),a
;	sensor_test.c:425: process_comp_y6 = ((process_comp_y4 + (((int32_t)retval) * process_comp_y5)) / 512);
	mov	a,r5
	rlc	a
	subb	a,acc
	mov	r6,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__mullong
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,r4
	add	a,_BMM150_compensate_y_sloc0_1_0
	mov	r4,a
	mov	a,r5
	addc	a,(_BMM150_compensate_y_sloc0_1_0 + 1)
	mov	r5,a
	mov	a,r6
	addc	a,(_BMM150_compensate_y_sloc0_1_0 + 2)
	mov	r6,a
	mov	a,r7
	addc	a,(_BMM150_compensate_y_sloc0_1_0 + 3)
	mov	r7,a
	mov	__divslong_PARM_2,#0x00
	mov	(__divslong_PARM_2 + 1),#0x02
	mov	(__divslong_PARM_2 + 2),#0x00
	mov	(__divslong_PARM_2 + 3),#0x00
;	sensor_test.c:426: process_comp_y7 = ((int32_t)(((int16_t)dig_y2) + ((int16_t)0xA0)));
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	__divslong
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,_dig_y2
	mov	r0,a
	rlc	a
	subb	a,acc
	mov	r1,a
	mov	a,#0xA0
	add	a,r0
	mov	r0,a
	clr	a
	addc	a,r1
	mov	__mullong_PARM_2,r0
	mov	(__mullong_PARM_2 + 1),a
	rlc	a
	subb	a,acc
	mov	(__mullong_PARM_2 + 2),a
	mov	(__mullong_PARM_2 + 3),a
;	sensor_test.c:427: process_comp_y8 = (((process_comp_y6 + ((int32_t)0x100000)) * process_comp_y7) / 4096);
	mov	a,#0x10
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__mullong
;	sensor_test.c:428: process_comp_y9 = (((int32_t)*mag_data_y) * process_comp_y8);
	mov	__divslong_PARM_2,#0x00
	mov	(__divslong_PARM_2 + 1),#0x10
	mov	(__divslong_PARM_2 + 2),#0x00
	mov	(__divslong_PARM_2 + 3),#0x00
	lcall	__divslong
	mov	__mullong_PARM_2,dpl
	mov	(__mullong_PARM_2 + 1),dph
	mov	(__mullong_PARM_2 + 2),b
	mov	(__mullong_PARM_2 + 3),a
	pop	ar3
	pop	ar2
	mov	a,r3
	rlc	a
	subb	a,acc
	mov	r4,a
;	sensor_test.c:429: retval = (int16_t)(process_comp_y9 / 8192);
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__mullong
	mov	__divslong_PARM_2,#0x00
	mov	(__divslong_PARM_2 + 1),#0x20
	mov	(__divslong_PARM_2 + 2),#0x00
	mov	(__divslong_PARM_2 + 3),#0x00
	lcall	__divslong
	mov	r2,dpl
	mov	r3,dph
;	sensor_test.c:430: retval = (retval + (((int16_t)dig_y1) * 8)) / 16;
	mov	a,_dig_y1
	mov	r4,a
	rlc	a
	subb	a,acc
	swap	a
	rr	a
	anl	a,#0xf8
	xch	a,r4
	swap	a
	rr	a
	xch	a,r4
	xrl	a,r4
	xch	a,r4
	anl	a,#0xf8
	xch	a,r4
	xrl	a,r4
	mov	r5,a
	mov	a,r4
	add	a,r2
	mov	dpl,a
	mov	a,r5
	addc	a,r3
	mov	dph,a
	mov	__divsint_PARM_2,#0x10
	clr	a
	mov	(__divsint_PARM_2 + 1),a
	lcall	__divsint
	mov	a,dpl
	mov	b,dph
	mov	dptr,#_BMM150_compensate_y_retval_1_102
	movx	@dptr,a
	inc	dptr
	mov	a,b
	movx	@dptr,a
	sjmp	L013012?
L013008?:
;	sensor_test.c:434: retval = BMM150_OVERFLOW_OUTPUT;
	mov	dptr,#_BMM150_compensate_y_retval_1_102
	clr	a
	movx	@dptr,a
	inc	dptr
	mov	a,#0x80
	movx	@dptr,a
	sjmp	L013012?
L013011?:
;	sensor_test.c:440: retval = BMM150_OVERFLOW_OUTPUT;
	mov	dptr,#_BMM150_compensate_y_retval_1_102
	clr	a
	movx	@dptr,a
	inc	dptr
	mov	a,#0x80
	movx	@dptr,a
L013012?:
;	sensor_test.c:443: return retval;
	mov	dptr,#_BMM150_compensate_y_retval_1_102
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	dpl,r2
	mov	dph,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'BMM150_compensate_z'
;------------------------------------------------------------
;data_rhall                Allocated with name '_BMM150_compensate_z_PARM_2'
;mag_data_z                Allocated to registers r2 r3 r4 
;sloc0                     Allocated with name '_BMM150_compensate_z_sloc0_1_0'
;sloc1                     Allocated with name '_BMM150_compensate_z_sloc1_1_0'
;sloc2                     Allocated with name '_BMM150_compensate_z_sloc2_1_0'
;retval                    Allocated with name '_BMM150_compensate_z_retval_1_111'
;process_comp_z0           Allocated with name '_BMM150_compensate_z_process_comp_z0_1_111'
;process_comp_z1           Allocated with name '_BMM150_compensate_z_process_comp_z1_1_111'
;process_comp_z2           Allocated with name '_BMM150_compensate_z_process_comp_z2_1_111'
;process_comp_z3           Allocated with name '_BMM150_compensate_z_process_comp_z3_1_111'
;process_comp_z4           Allocated with name '_BMM150_compensate_z_process_comp_z4_1_111'
;------------------------------------------------------------
;	sensor_test.c:446: int16_t BMM150_compensate_z (int16_t *mag_data_z, int16_t *data_rhall){
;	-----------------------------------------
;	 function BMM150_compensate_z
;	-----------------------------------------
_BMM150_compensate_z:
;	sensor_test.c:454: if (*mag_data_z != BMM150_OVERFLOW_ADCVAL_ZAXIS_HALL)
	mov	r4,b
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	cjne	r2,#0x00,L014024?
	cjne	r3,#0xC0,L014024?
	ljmp	L014013?
L014024?:
;	sensor_test.c:456: if ((dig_z2 != 0) && (dig_z1 != 0) && (*data_rhall != 0) &&
	mov	a,_dig_z2
	jnz	L014025?
	ljmp	L014007?
L014025?:
	mov	a,_dig_z1
	jnz	L014026?
	ljmp	L014007?
L014026?:
	mov	r4,_BMM150_compensate_z_PARM_2
	mov	r5,(_BMM150_compensate_z_PARM_2 + 1)
	mov	r6,(_BMM150_compensate_z_PARM_2 + 2)
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	orl	a,r4
	jnz	L014027?
	ljmp	L014007?
L014027?:
;	sensor_test.c:457: (dig_xyz1 != 0))
	mov	a,_dig_xyz1
	jnz	L014028?
	ljmp	L014007?
L014028?:
;	sensor_test.c:460: process_comp_z0 = ((int16_t)*data_rhall) - ((int16_t)dig_xyz1);
	mov	a,_dig_xyz1
	mov	r6,a
	rlc	a
	subb	a,acc
	mov	r7,a
	mov	a,r4
	clr	c
	subb	a,r6
	mov	_BMM150_compensate_z_sloc0_1_0,a
	mov	a,r5
	subb	a,r7
	mov	(_BMM150_compensate_z_sloc0_1_0 + 1),a
;	sensor_test.c:461: process_comp_z1 = (((int32_t)dig_z3) * ((int32_t)(process_comp_z0))) / 4;
	mov	a,_dig_z3
	mov	r0,a
	rlc	a
	subb	a,acc
	mov	r1,a
	mov	r6,a
	mov	r7,a
	mov	__mullong_PARM_2,_BMM150_compensate_z_sloc0_1_0
	mov	a,(_BMM150_compensate_z_sloc0_1_0 + 1)
	mov	(__mullong_PARM_2 + 1),a
	rlc	a
	subb	a,acc
	mov	(__mullong_PARM_2 + 2),a
	mov	(__mullong_PARM_2 + 3),a
	mov	dpl,r0
	mov	dph,r1
	mov	b,r6
	mov	a,r7
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	lcall	__mullong
	mov	r6,dpl
	mov	r7,dph
	mov	r0,b
	mov	r1,a
	mov	__divslong_PARM_2,#0x04
	clr	a
	mov	(__divslong_PARM_2 + 1),a
	mov	(__divslong_PARM_2 + 2),a
	mov	(__divslong_PARM_2 + 3),a
;	sensor_test.c:462: process_comp_z2 = (((int32_t)(*mag_data_z - dig_z4)) * 32768);
	mov	dpl,r6
	mov	dph,r7
	mov	b,r0
	mov	a,r1
	lcall	__divslong
	mov	_BMM150_compensate_z_sloc1_1_0,dpl
	mov	(_BMM150_compensate_z_sloc1_1_0 + 1),dph
	mov	(_BMM150_compensate_z_sloc1_1_0 + 2),b
	mov	(_BMM150_compensate_z_sloc1_1_0 + 3),a
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
	mov	a,_dig_z4
	mov	r6,a
	rlc	a
	subb	a,acc
	mov	r7,a
	mov	a,r2
	clr	c
	subb	a,r6
	mov	r2,a
	mov	a,r3
	subb	a,r7
	mov	r3,a
	rlc	a
	subb	a,acc
	mov	(_BMM150_compensate_z_sloc2_1_0 + 2),r3
	anl	a,#0x01
	mov	c,acc.0
	xch	a,(_BMM150_compensate_z_sloc2_1_0 + 2)
	rrc	a
	xch	a,(_BMM150_compensate_z_sloc2_1_0 + 2)
	rrc	a
	xch	a,(_BMM150_compensate_z_sloc2_1_0 + 2)
	mov	(_BMM150_compensate_z_sloc2_1_0 + 3),a
	mov	a,r2
	rr	a
	anl	a,#0x80
	mov	(_BMM150_compensate_z_sloc2_1_0 + 1),a
	mov	a,r2
	clr	c
	rrc	a
	orl	a,(_BMM150_compensate_z_sloc2_1_0 + 2)
	mov	(_BMM150_compensate_z_sloc2_1_0 + 2),a
	mov	_BMM150_compensate_z_sloc2_1_0,#0x00
;	sensor_test.c:463: process_comp_z3 = ((int32_t)dig_z1) * (((int16_t)*data_rhall) * 2);
	mov	a,_dig_z1
	mov	r0,a
	rlc	a
	subb	a,acc
	mov	r1,a
	mov	r2,a
	mov	r3,a
	mov	a,r5
	xch	a,r4
	add	a,acc
	xch	a,r4
	rlc	a
	mov	__mullong_PARM_2,r4
	mov	(__mullong_PARM_2 + 1),a
	rlc	a
	subb	a,acc
	mov	(__mullong_PARM_2 + 2),a
	mov	(__mullong_PARM_2 + 3),a
;	sensor_test.c:464: process_comp_z4 = (int16_t)((process_comp_z3 + (32768)) / 65536);
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	mov	a,r3
	lcall	__mullong
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	a,#0x80
	add	a,r3
	mov	r3,a
	clr	a
	addc	a,r4
	mov	r4,a
	clr	a
	addc	a,r5
	mov	r5,a
	mov	__divslong_PARM_2,#0x00
	mov	(__divslong_PARM_2 + 1),#0x00
	mov	(__divslong_PARM_2 + 2),#0x01
	mov	(__divslong_PARM_2 + 3),#0x00
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	__divslong
	mov	r2,dpl
	mov	r3,dph
;	sensor_test.c:465: retval = ((process_comp_z2 - process_comp_z1) / (dig_z2 + process_comp_z4));
	mov	a,_BMM150_compensate_z_sloc2_1_0
	clr	c
	subb	a,_BMM150_compensate_z_sloc1_1_0
	mov	r4,a
	mov	a,(_BMM150_compensate_z_sloc2_1_0 + 1)
	subb	a,(_BMM150_compensate_z_sloc1_1_0 + 1)
	mov	r5,a
	mov	a,(_BMM150_compensate_z_sloc2_1_0 + 2)
	subb	a,(_BMM150_compensate_z_sloc1_1_0 + 2)
	mov	r6,a
	mov	a,(_BMM150_compensate_z_sloc2_1_0 + 3)
	subb	a,(_BMM150_compensate_z_sloc1_1_0 + 3)
	mov	r7,a
	mov	a,_dig_z2
	mov	r0,a
	rlc	a
	subb	a,acc
	mov	r1,a
	mov	a,r2
	add	a,r0
	mov	r2,a
	mov	a,r3
	addc	a,r1
	mov	__divslong_PARM_2,r2
	mov	(__divslong_PARM_2 + 1),a
	rlc	a
	subb	a,acc
	mov	(__divslong_PARM_2 + 2),a
	mov	(__divslong_PARM_2 + 3),a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	__divslong
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	dptr,#_BMM150_compensate_z_retval_1_111
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
;	sensor_test.c:468: if (retval > BMM150_POSITIVE_SATURATION_Z)
	clr	c
	mov	a,#0xFF
	subb	a,r2
	mov	a,#0x7F
	subb	a,r3
	clr	a
	subb	a,r4
	clr	a
	xrl	a,#0x80
	mov	b,r5
	xrl	b,#0x80
	subb	a,b
	jnc	L014004?
;	sensor_test.c:470: retval = BMM150_POSITIVE_SATURATION_Z;
	mov	dptr,#_BMM150_compensate_z_retval_1_111
	mov	a,#0xFF
	movx	@dptr,a
	inc	dptr
	mov	a,#0x7F
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	sjmp	L014005?
L014004?:
;	sensor_test.c:472: else if (retval < BMM150_NEGATIVE_SATURATION_Z)
	clr	c
	mov	a,r2
	subb	a,#0x01
	mov	a,r3
	subb	a,#0x80
	mov	a,r4
	subb	a,#0xFF
	mov	a,r5
	xrl	a,#0x80
	subb	a,#0x7f
	jnc	L014005?
;	sensor_test.c:474: retval = BMM150_NEGATIVE_SATURATION_Z;
	mov	dptr,#_BMM150_compensate_z_retval_1_111
	mov	a,#0x01
	movx	@dptr,a
	inc	dptr
	mov	a,#0x80
	movx	@dptr,a
	inc	dptr
	mov	a,#0xFF
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
L014005?:
;	sensor_test.c:478: retval = retval / 16;
	mov	dptr,#_BMM150_compensate_z_retval_1_111
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	__divslong_PARM_2,#0x10
	clr	a
	mov	(__divslong_PARM_2 + 1),a
	mov	(__divslong_PARM_2 + 2),a
	mov	(__divslong_PARM_2 + 3),a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	__divslong
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	dptr,#_BMM150_compensate_z_retval_1_111
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
	sjmp	L014014?
L014007?:
;	sensor_test.c:482: retval = BMM150_OVERFLOW_OUTPUT;
	mov	dptr,#_BMM150_compensate_z_retval_1_111
	clr	a
	movx	@dptr,a
	inc	dptr
	mov	a,#0x80
	movx	@dptr,a
	inc	dptr
	mov	a,#0xFF
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	sjmp	L014014?
L014013?:
;	sensor_test.c:488: retval = BMM150_OVERFLOW_OUTPUT;
	mov	dptr,#_BMM150_compensate_z_retval_1_111
	clr	a
	movx	@dptr,a
	inc	dptr
	mov	a,#0x80
	movx	@dptr,a
	inc	dptr
	mov	a,#0xFF
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
L014014?:
;	sensor_test.c:491: return (int16_t)retval;
	mov	dptr,#_BMM150_compensate_z_retval_1_111
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	mov	dpl,r2
	mov	dph,r3
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'BMM150_Read_Data'
;------------------------------------------------------------
;mag_y                     Allocated with name '_BMM150_Read_Data_PARM_2'
;mag_z                     Allocated with name '_BMM150_Read_Data_PARM_3'
;mag_x                     Allocated with name '_BMM150_Read_Data_mag_x_1_118'
;raw_x_lsb                 Allocated to registers r5 
;raw_x_msb                 Allocated with name '_BMM150_Read_Data_raw_x_msb_1_119'
;raw_y_lsb                 Allocated to registers r7 
;raw_y_msb                 Allocated with name '_BMM150_Read_Data_raw_y_msb_1_119'
;raw_z_lsb                 Allocated to registers r1 
;raw_z_msb                 Allocated with name '_BMM150_Read_Data_raw_z_msb_1_119'
;raw_rhall_lsb             Allocated to registers r0 
;raw_rhall_msb             Allocated with name '_BMM150_Read_Data_raw_rhall_msb_1_119'
;x_val                     Allocated with name '_BMM150_Read_Data_x_val_1_119'
;y_val                     Allocated with name '_BMM150_Read_Data_y_val_1_119'
;z_val                     Allocated with name '_BMM150_Read_Data_z_val_1_119'
;rhall_val                 Allocated with name '_BMM150_Read_Data_rhall_val_1_119'
;msb_data                  Allocated to registers r6 r2 
;------------------------------------------------------------
;	sensor_test.c:494: void BMM150_Read_Data(int16_t *mag_x, int16_t *mag_y, int16_t *mag_z)
;	-----------------------------------------
;	 function BMM150_Read_Data
;	-----------------------------------------
_BMM150_Read_Data:
	mov	_BMM150_Read_Data_mag_x_1_118,dpl
	mov	(_BMM150_Read_Data_mag_x_1_118 + 1),dph
	mov	(_BMM150_Read_Data_mag_x_1_118 + 2),b
;	sensor_test.c:500: raw_x_lsb = SPI_read(BMM150_DATA_X_LSB);
	mov	dpl,#0x42
	lcall	_SPI_read
	mov	r5,dpl
;	sensor_test.c:501: raw_x_msb = SPI_read(BMM150_DATA_X_MSB);
	mov	dpl,#0x43
	push	ar5
	lcall	_SPI_read
	mov	_BMM150_Read_Data_raw_x_msb_1_119,dpl
;	sensor_test.c:502: raw_y_lsb = SPI_read(BMM150_DATA_Y_LSB);
	mov	dpl,#0x44
	lcall	_SPI_read
	mov	r7,dpl
;	sensor_test.c:503: raw_y_msb = SPI_read(BMM150_DATA_Y_MSB);
	mov	dpl,#0x45
	push	ar7
	lcall	_SPI_read
	mov	_BMM150_Read_Data_raw_y_msb_1_119,dpl
;	sensor_test.c:505: raw_z_lsb = SPI_read(BMM150_DATA_Z_LSB);
	mov	dpl,#0x46
	lcall	_SPI_read
	mov	r1,dpl
;	sensor_test.c:506: raw_z_msb = SPI_read(BMM150_DATA_Z_MSB);
	mov	dpl,#0x47
	push	ar1
	lcall	_SPI_read
	mov	_BMM150_Read_Data_raw_z_msb_1_119,dpl
;	sensor_test.c:509: raw_rhall_lsb = SPI_read(BMM150_RHALL_LSB); 
	mov	dpl,#0x48
	lcall	_SPI_read
	mov	r0,dpl
	pop	ar1
;	sensor_test.c:510: raw_rhall_msb = SPI_read(BMM150_RHALL_MSB);
	mov	dpl,#0x49
	push	ar0
	push	ar1
	lcall	_SPI_read
	mov	_BMM150_Read_Data_raw_rhall_msb_1_119,dpl
	pop	ar1
	pop	ar0
	pop	ar7
	pop	ar5
;	sensor_test.c:521: raw_x_lsb = ((raw_x_lsb & 0b_1111_1000)) >> 3;
	mov	a,#0xF8
	anl	a,r5
	swap	a
	rl	a
	anl	a,#0x1f
	mov	r5,a
;	sensor_test.c:522: msb_data = ((int16_t)((int8_t)raw_x_msb)) << 5; 
	mov	a,_BMM150_Read_Data_raw_x_msb_1_119
	mov	r6,a
	rlc	a
	subb	a,acc
	swap	a
	rl	a
	anl	a,#0xe0
	xch	a,r6
	swap	a
	rl	a
	xch	a,r6
	xrl	a,r6
	xch	a,r6
	anl	a,#0xe0
	xch	a,r6
	xrl	a,r6
	mov	r2,a
;	sensor_test.c:523: x_val = (int16_t)(msb_data | raw_x_lsb);
	mov	r3,#0x00
	mov	a,r5
	orl	a,r6
	mov	_BMM150_Read_Data_x_val_1_119,a
	mov	a,r3
	orl	a,r2
	mov	(_BMM150_Read_Data_x_val_1_119 + 1),a
;	sensor_test.c:532: raw_y_lsb = ((raw_y_lsb & 0b_1111_1000)) >> 3;
	mov	a,#0xF8
	anl	a,r7
	swap	a
	rl	a
	anl	a,#0x1f
	mov	r7,a
;	sensor_test.c:533: msb_data = ((int16_t)((int8_t)raw_y_msb)) << 5; 
	mov	a,_BMM150_Read_Data_raw_y_msb_1_119
	mov	r3,a
	rlc	a
	subb	a,acc
	mov	ar6,r3
	swap	a
	rl	a
	anl	a,#0xe0
	xch	a,r6
	swap	a
	rl	a
	xch	a,r6
	xrl	a,r6
	xch	a,r6
	anl	a,#0xe0
	xch	a,r6
	xrl	a,r6
	mov	r2,a
;	sensor_test.c:534: y_val = (int16_t)(msb_data | raw_y_lsb);
	mov	r3,#0x00
	mov	a,r7
	orl	a,r6
	mov	_BMM150_Read_Data_y_val_1_119,a
	mov	a,r3
	orl	a,r2
	mov	(_BMM150_Read_Data_y_val_1_119 + 1),a
;	sensor_test.c:544: raw_z_lsb = ((raw_z_lsb & 0xFE) >> 1);
	mov	a,#0xFE
	anl	a,r1
	clr	c
	rrc	a
	mov	r1,a
;	sensor_test.c:545: msb_data = ((int16_t)((int8_t)raw_z_msb)) >> 7; 
	mov	a,_BMM150_Read_Data_raw_z_msb_1_119
	mov	r3,a
	rlc	a
	subb	a,acc
	mov	r4,a
	mov	ar6,r3
	mov	c,acc.7
	xch	a,r6
	rlc	a
	xch	a,r6
	rlc	a
	xch	a,r6
	anl	a,#0x01
	jnb	acc.0,L015003?
	orl	a,#0xfe
L015003?:
	mov	r2,a
;	sensor_test.c:546: z_val = (int16_t)(msb_data | raw_z_lsb);
	mov	r3,#0x00
	mov	a,r1
	orl	a,r6
	mov	_BMM150_Read_Data_z_val_1_119,a
	mov	a,r3
	orl	a,r2
	mov	(_BMM150_Read_Data_z_val_1_119 + 1),a
;	sensor_test.c:550: raw_rhall_lsb = ((raw_rhall_lsb & 0xFC) >> 2);
	mov	a,#0xFC
	anl	a,r0
	rr	a
	rr	a
	anl	a,#0x3f
	mov	r0,a
;	sensor_test.c:551: rhall_val = (uint16_t)(((uint16_t)raw_rhall_msb << 6) | raw_rhall_lsb);
	mov	r6,_BMM150_Read_Data_raw_rhall_msb_1_119
	clr	a
	anl	a,#0x03
	mov	c,acc.0
	xch	a,r6
	rrc	a
	xch	a,r6
	rrc	a
	mov	c,acc.0
	xch	a,r6
	rrc	a
	xch	a,r6
	rrc	a
	xch	a,r6
	mov	r2,a
	mov	r3,#0x00
	mov	a,r0
	orl	a,r6
	mov	_BMM150_Read_Data_rhall_val_1_119,a
	mov	a,r3
	orl	a,r2
	mov	(_BMM150_Read_Data_rhall_val_1_119 + 1),a
;	sensor_test.c:556: *mag_x = BMM150_compensate_x(&x_val, &rhall_val);
	mov	_BMM150_compensate_x_PARM_2,#_BMM150_Read_Data_rhall_val_1_119
	mov	(_BMM150_compensate_x_PARM_2 + 1),#0x00
	mov	(_BMM150_compensate_x_PARM_2 + 2),#0x40
	mov	dptr,#_BMM150_Read_Data_x_val_1_119
	mov	b,#0x40
	lcall	_BMM150_compensate_x
	mov	r2,dpl
	mov	r3,dph
	mov	dpl,_BMM150_Read_Data_mag_x_1_118
	mov	dph,(_BMM150_Read_Data_mag_x_1_118 + 1)
	mov	b,(_BMM150_Read_Data_mag_x_1_118 + 2)
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
;	sensor_test.c:557: *mag_y = BMM150_compensate_y(&y_val, &rhall_val);
	mov	r2,_BMM150_Read_Data_PARM_2
	mov	r3,(_BMM150_Read_Data_PARM_2 + 1)
	mov	r4,(_BMM150_Read_Data_PARM_2 + 2)
	mov	_BMM150_compensate_y_PARM_2,#_BMM150_Read_Data_rhall_val_1_119
	mov	(_BMM150_compensate_y_PARM_2 + 1),#0x00
	mov	(_BMM150_compensate_y_PARM_2 + 2),#0x40
	mov	dptr,#_BMM150_Read_Data_y_val_1_119
	mov	b,#0x40
	push	ar2
	push	ar3
	push	ar4
	lcall	_BMM150_compensate_y
	mov	r5,dpl
	mov	r6,dph
	pop	ar4
	pop	ar3
	pop	ar2
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	__gptrput
	inc	dptr
	mov	a,r6
	lcall	__gptrput
;	sensor_test.c:558: *mag_z = BMM150_compensate_z(&z_val, &rhall_val);
	mov	r2,_BMM150_Read_Data_PARM_3
	mov	r3,(_BMM150_Read_Data_PARM_3 + 1)
	mov	r4,(_BMM150_Read_Data_PARM_3 + 2)
	mov	_BMM150_compensate_z_PARM_2,#_BMM150_Read_Data_rhall_val_1_119
	mov	(_BMM150_compensate_z_PARM_2 + 1),#0x00
	mov	(_BMM150_compensate_z_PARM_2 + 2),#0x40
	mov	dptr,#_BMM150_Read_Data_z_val_1_119
	mov	b,#0x40
	push	ar2
	push	ar3
	push	ar4
	lcall	_BMM150_compensate_z
	mov	r5,dpl
	mov	r6,dph
	pop	ar4
	pop	ar3
	pop	ar2
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	__gptrput
	inc	dptr
	mov	a,r6
	ljmp	__gptrput
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;sloc0                     Allocated with name '_main_sloc0_1_0'
;sloc1                     Allocated with name '_main_sloc1_1_0'
;i                         Allocated with name '_main_i_1_121'
;mag_x                     Allocated with name '_main_mag_x_1_121'
;mag_y                     Allocated with name '_main_mag_y_1_121'
;mag_z                     Allocated with name '_main_mag_z_1_121'
;sum_x                     Allocated with name '_main_sum_x_1_121'
;sum_y                     Allocated with name '_main_sum_y_1_121'
;alpha                     Allocated with name '_main_alpha_1_121'
;avg_angle                 Allocated with name '_main_avg_angle_1_121'
;smoothed_angle            Allocated with name '_main_smoothed_angle_1_121'
;cal_x                     Allocated with name '_main_cal_x_1_121'
;cal_y                     Allocated with name '_main_cal_y_1_121'
;declination_angle         Allocated with name '_main_declination_angle_1_121'
;x_scale                   Allocated with name '_main_x_scale_1_121'
;y_scale                   Allocated with name '_main_y_scale_1_121'
;------------------------------------------------------------
;	sensor_test.c:564: void main (void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	sensor_test.c:575: mag_x = 0; mag_y = 0; mag_z = 0; 
	mov	dptr,#_main_mag_x_1_121
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_main_mag_y_1_121
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_main_mag_z_1_121
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	sensor_test.c:582: smoothed_angle = 0.0; 
	mov	dptr,#_main_smoothed_angle_1_121
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	sensor_test.c:584: Set_Pin_Output(0x03); 
	mov	dpl,#0x03
	lcall	_Set_Pin_Output
;	sensor_test.c:585: BMM150_Init();
	lcall	_BMM150_Init
;	sensor_test.c:587: waitms(500);
	mov	dptr,#0x01F4
	lcall	_waitms
;	sensor_test.c:588: printf("\x1b[2J"); // Clear screen using ANSI escape sequence.
	mov	a,#__str_3
	push	acc
	mov	a,#(__str_3 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	sensor_test.c:592: __FILE__, __DATE__, __TIME__);
;	sensor_test.c:591: "Compiled: %s, %s\n\n",
	mov	a,#__str_7
	push	acc
	mov	a,#(__str_7 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	a,#__str_6
	push	acc
	mov	a,#(__str_6 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	a,#__str_5
	push	acc
	mov	a,#(__str_5 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	a,#__str_4
	push	acc
	mov	a,#(__str_4 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf4
	mov	sp,a
;	sensor_test.c:594: while(1)
L016006?:
;	sensor_test.c:596: sum_x = 0.0; 
	mov	dptr,#_main_sum_x_1_121
;	sensor_test.c:597: sum_y = 0.0;  
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_main_sum_y_1_121
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	sensor_test.c:598: for (i = 0; i < 25; i++){
	mov	r2,#0x00
L016008?:
	cjne	r2,#0x19,L016020?
L016020?:
	jc	L016021?
	ljmp	L016011?
L016021?:
;	sensor_test.c:599: BMM150_Read_Data(&mag_x, &mag_y, &mag_z);
	mov	_BMM150_Read_Data_PARM_2,#_main_mag_y_1_121
	mov	(_BMM150_Read_Data_PARM_2 + 1),#(_main_mag_y_1_121 >> 8)
	mov	(_BMM150_Read_Data_PARM_2 + 2),#0x00
	mov	_BMM150_Read_Data_PARM_3,#_main_mag_z_1_121
	mov	(_BMM150_Read_Data_PARM_3 + 1),#(_main_mag_z_1_121 >> 8)
	mov	(_BMM150_Read_Data_PARM_3 + 2),#0x00
	mov	dptr,#_main_mag_x_1_121
	mov	b,#0x00
	push	ar2
	lcall	_BMM150_Read_Data
;	sensor_test.c:602: sum_x += (float)mag_x; 
	mov	dptr,#_main_mag_x_1_121
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dpl,r3
	mov	dph,r4
	lcall	___sint2fs
	mov	_main_sloc0_1_0,dpl
	mov	(_main_sloc0_1_0 + 1),dph
	mov	(_main_sloc0_1_0 + 2),b
	mov	(_main_sloc0_1_0 + 3),a
	mov	dptr,#_main_sum_x_1_121
	movx	a,@dptr
	mov	r7,a
	inc	dptr
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	push	_main_sloc0_1_0
	push	(_main_sloc0_1_0 + 1)
	push	(_main_sloc0_1_0 + 2)
	push	(_main_sloc0_1_0 + 3)
	mov	dpl,r7
	mov	dph,r0
	mov	b,r1
	mov	a,r3
	lcall	___fsadd
	mov	r3,dpl
	mov	r4,dph
	mov	r5,b
	mov	r6,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dptr,#_main_sum_x_1_121
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
;	sensor_test.c:603: sum_y += (float)mag_y; 
	mov	dptr,#_main_mag_y_1_121
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dpl,r3
	mov	dph,r4
	lcall	___sint2fs
	mov	_main_sloc0_1_0,dpl
	mov	(_main_sloc0_1_0 + 1),dph
	mov	(_main_sloc0_1_0 + 2),b
	mov	(_main_sloc0_1_0 + 3),a
	mov	dptr,#_main_sum_y_1_121
	movx	a,@dptr
	mov	r7,a
	inc	dptr
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	push	_main_sloc0_1_0
	push	(_main_sloc0_1_0 + 1)
	push	(_main_sloc0_1_0 + 2)
	push	(_main_sloc0_1_0 + 3)
	mov	dpl,r7
	mov	dph,r0
	mov	b,r1
	mov	a,r3
	lcall	___fsadd
	mov	r3,dpl
	mov	r4,dph
	mov	r5,b
	mov	r6,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar2
	mov	dptr,#_main_sum_y_1_121
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
;	sensor_test.c:598: for (i = 0; i < 25; i++){
	inc	r2
	ljmp	L016008?
L016011?:
;	sensor_test.c:606: avg_angle = atan2f(sum_y/25.0, sum_x/25.0); 
	mov	dptr,#_main_sum_y_1_121
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	clr	a
	push	acc
	push	acc
	mov	a,#0xC8
	push	acc
	mov	a,#0x41
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	___fsdiv
	mov	_main_sloc1_1_0,dpl
	mov	(_main_sloc1_1_0 + 1),dph
	mov	(_main_sloc1_1_0 + 2),b
	mov	(_main_sloc1_1_0 + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dptr,#_main_sum_x_1_121
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	inc	dptr
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	clr	a
	push	acc
	push	acc
	mov	a,#0xC8
	push	acc
	mov	a,#0x41
	push	acc
	mov	dpl,r6
	mov	dph,r7
	mov	b,r0
	mov	a,r1
	lcall	___fsdiv
	mov	_main_sloc0_1_0,dpl
	mov	(_main_sloc0_1_0 + 1),dph
	mov	(_main_sloc0_1_0 + 2),b
	mov	(_main_sloc0_1_0 + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	_atan2f_PARM_2,_main_sloc0_1_0
	mov	(_atan2f_PARM_2 + 1),(_main_sloc0_1_0 + 1)
	mov	(_atan2f_PARM_2 + 2),(_main_sloc0_1_0 + 2)
	mov	(_atan2f_PARM_2 + 3),(_main_sloc0_1_0 + 3)
	mov	dpl,_main_sloc1_1_0
	mov	dph,(_main_sloc1_1_0 + 1)
	mov	b,(_main_sloc1_1_0 + 2)
	mov	a,(_main_sloc1_1_0 + 3)
	lcall	_atan2f
	mov	r6,dpl
	mov	r7,dph
	mov	r0,b
	mov	r1,a
;	sensor_test.c:607: avg_angle *= 180.0 / M_PI; 
	push	ar6
	push	ar7
	push	ar0
	push	ar1
	mov	dptr,#0x2EE1
	mov	b,#0x65
	mov	a,#0x42
	lcall	___fsmul
	mov	r6,dpl
	mov	r7,dph
	mov	r0,b
	mov	r1,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dptr,#_main_avg_angle_1_121
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
	inc	dptr
	mov	a,r0
	movx	@dptr,a
	inc	dptr
	mov	a,r1
	movx	@dptr,a
;	sensor_test.c:610: if (avg_angle < 0.0) avg_angle += 360.0; 
	push	ar6
	push	ar7
	push	ar0
	push	ar1
	clr	a
	push	acc
	push	acc
	push	acc
	push	acc
	mov	dpl,r6
	mov	dph,r7
	mov	b,r0
	mov	a,r1
	lcall	___fslt
	mov	r2,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar1
	pop	ar0
	pop	ar7
	pop	ar6
	mov	a,r2
	jz	L016002?
	clr	a
	push	acc
	push	acc
	mov	a,#0xB4
	push	acc
	mov	a,#0x43
	push	acc
	mov	dpl,r6
	mov	dph,r7
	mov	b,r0
	mov	a,r1
	lcall	___fsadd
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dptr,#_main_avg_angle_1_121
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
L016002?:
;	sensor_test.c:611: if (avg_angle > 360.0) avg_angle -= 360.0; 
	mov	dptr,#_main_avg_angle_1_121
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	clr	a
	push	acc
	push	acc
	mov	a,#0xB4
	push	acc
	mov	a,#0x43
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	___fsgt
	mov	r6,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
	mov	a,r6
	jz	L016004?
	clr	a
	push	acc
	push	acc
	mov	a,#0xB4
	push	acc
	mov	a,#0x43
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	___fssub
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dptr,#_main_avg_angle_1_121
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
L016004?:
;	sensor_test.c:612: smoothed_angle = alpha * avg_angle + (1-alpha) * smoothed_angle; 
	mov	dptr,#_main_avg_angle_1_121
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	dptr,#0x0000
	mov	b,#0x80
	mov	a,#0x3E
	lcall	___fsmul
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	mov	dptr,#_main_smoothed_angle_1_121
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	dptr,#0x0000
	mov	b,#0x40
	mov	a,#0x3F
	lcall	___fsmul
	mov	r6,dpl
	mov	r7,dph
	mov	r0,b
	mov	r1,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
	push	ar6
	push	ar7
	push	ar0
	push	ar1
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	___fsadd
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dptr,#_main_smoothed_angle_1_121
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
;	sensor_test.c:614: printf("%f, %f, %f\r\n", sum_x/25.0, sum_y/25.0, smoothed_angle);
	mov	dptr,#_main_smoothed_angle_1_121
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	push	_main_sloc1_1_0
	push	(_main_sloc1_1_0 + 1)
	push	(_main_sloc1_1_0 + 2)
	push	(_main_sloc1_1_0 + 3)
	push	_main_sloc0_1_0
	push	(_main_sloc0_1_0 + 1)
	push	(_main_sloc0_1_0 + 2)
	push	(_main_sloc0_1_0 + 3)
	mov	a,#__str_8
	push	acc
	mov	a,#(__str_8 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf1
	mov	sp,a
;	sensor_test.c:619: waitms(10);
	mov	dptr,#0x000A
	lcall	_waitms
	ljmp	L016006?
	rseg R_CSEG

	rseg R_XINIT

	rseg R_CONST
__str_0:
	db 'Error: Could not find BMM150 sensor (Chip ID: 0x%02X)'
	db 0x0D
	db 0x0A
	db 0x00
__str_1:
	db 'Press restart to check again!'
	db 0x0D
	db 0x00
__str_2:
	db 'BMM150 initialized successfully! Chip ID: 0x%02X'
	db 0x0D
	db 0x0A
	db 0x00
__str_3:
	db 0x1B
	db '[2J'
	db 0x00
__str_4:
	db 'EFM8LB1 SPI/BMM150 test program'
	db 0x0A
	db 'File: %s'
	db 0x0A
	db 'Compiled: %s, %s'
	db 0x0A
	db 0x0A
	db 0x00
__str_5:
	db 'sensor_test.c'
	db 0x00
__str_6:
	db 'Mar 27 2025'
	db 0x00
__str_7:
	db '15:20:42'
	db 0x00
__str_8:
	db '%f, %f, %f'
	db 0x0D
	db 0x0A
	db 0x00

	CSEG

end
