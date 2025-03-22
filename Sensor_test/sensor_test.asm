;--------------------------------------------------------
; File Created by C51
; Version 1.0.0 #1170 (Feb 16 2022) (MSVC)
; This file was generated Sat Mar 22 15:47:02 2025
;--------------------------------------------------------
$name sensor_test
$optc51 --model-small
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
	public _bmm150_interface_selection
	public _bmm150_error_codes_print_result
	public _bmm150_spi_write
	public _bmm150_spi_read
	public _spi_transfer
	public _waitms
	public _ptr_delay_us
	public _Timer3us
	public _Set_Pin_Output
	public __c51_external_startup
	public _bmm150_interface_selection_PARM_2
	public _bmm150_error_codes_print_result_PARM_2
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
_bmm150_error_codes_print_result_PARM_2:
	ds 1
_bmm150_interface_selection_PARM_2:
	ds 1
_get_data_dev_1_92:
	ds 2
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
_bmm150_interface_selection_rslt_1_84:
	ds 1
_set_config_rslt_1_90:
	ds 1
_set_config_settings_1_90:
	ds 5
_get_data_rslt_1_93:
	ds 1
_get_data_mag_data_1_93:
	ds 4
_main_dev_1_97:
	ds 21
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
;	sensor_test.c:38: char _c51_external_startup (void)
;	-----------------------------------------
;	 function _c51_external_startup
;	-----------------------------------------
__c51_external_startup:
	using	0
;	sensor_test.c:41: SFRPAGE = 0x00;
	mov	_SFRPAGE,#0x00
;	sensor_test.c:42: WDTCN = 0xDE; //First key
	mov	_WDTCN,#0xDE
;	sensor_test.c:43: WDTCN = 0xAD; //Second key
	mov	_WDTCN,#0xAD
;	sensor_test.c:45: VDM0CN=0x80;       // enable VDD monitor
	mov	_VDM0CN,#0x80
;	sensor_test.c:46: RSTSRC=0x02|0x04;  // Enable reset on missing clock detector and VDD
	mov	_RSTSRC,#0x06
;	sensor_test.c:53: SFRPAGE = 0x10;
	mov	_SFRPAGE,#0x10
;	sensor_test.c:54: PFE0CN  = 0x20; // SYSCLK < 75 MHz.
	mov	_PFE0CN,#0x20
;	sensor_test.c:55: SFRPAGE = 0x00;
	mov	_SFRPAGE,#0x00
;	sensor_test.c:76: CLKSEL = 0x00;
	mov	_CLKSEL,#0x00
;	sensor_test.c:77: CLKSEL = 0x00;
	mov	_CLKSEL,#0x00
;	sensor_test.c:78: while ((CLKSEL & 0x80) == 0);
L002001?:
	mov	a,_CLKSEL
	jnb	acc.7,L002001?
;	sensor_test.c:79: CLKSEL = 0x03;
	mov	_CLKSEL,#0x03
;	sensor_test.c:80: CLKSEL = 0x03;
	mov	_CLKSEL,#0x03
;	sensor_test.c:81: while ((CLKSEL & 0x80) == 0);
L002004?:
	mov	a,_CLKSEL
	jnb	acc.7,L002004?
;	sensor_test.c:86: P0MDOUT |= 0xE0;
	orl	_P0MDOUT,#0xE0
;	sensor_test.c:87: P1MDOUT |= 0x01; 
	orl	_P1MDOUT,#0x01
;	sensor_test.c:88: XBR0=0b_0000_0011; //SPI0E=1, URT0E=1
	mov	_XBR0,#0x03
;	sensor_test.c:89: XBR1=0b_0000_0000;
	mov	_XBR1,#0x00
;	sensor_test.c:90: XBR2=0b_0100_0000; // Enable crossbar and weak pull-ups
	mov	_XBR2,#0x40
;	sensor_test.c:96: SCON0 = 0x10;
	mov	_SCON0,#0x10
;	sensor_test.c:97: TH1 = 0x100-((SYSCLK/BAUDRATE)/(12L*2L));
	mov	_TH1,#0xE6
;	sensor_test.c:98: TL1 = TH1;      // Init Timer1
	mov	_TL1,_TH1
;	sensor_test.c:99: TMOD &= ~0xf0;  // TMOD: timer 1 in 8-bit auto-reload
	anl	_TMOD,#0x0F
;	sensor_test.c:100: TMOD |=  0x20;                       
	orl	_TMOD,#0x20
;	sensor_test.c:101: TR1 = 1; // START Timer1
	setb	_TR1
;	sensor_test.c:102: TI = 1;  // Indicate TX0 ready
	setb	_TI
;	sensor_test.c:105: SPI0CKR = (SYSCLK/(2*F_SCK_MAX))-1;
	mov	_SPI0CKR,#0x23
;	sensor_test.c:106: SPI0CFG = 0b_0100_0000; //SPI in master mode
	mov	_SPI0CFG,#0x40
;	sensor_test.c:107: SPI0CN0 = 0b_0000_0001; //SPI enabled and in three wire mode
	mov	_SPI0CN0,#0x01
;	sensor_test.c:110: P0MDOUT &= ~(1<<4); // set P0.4 as open drain input 
	anl	_P0MDOUT,#0xEF
;	sensor_test.c:111: P0 |= (1<<4); //enable pull up resistor on P0.4 
	orl	_P0,#0x10
;	sensor_test.c:112: EIE2 |= 0x02; 
	orl	_EIE2,#0x02
;	sensor_test.c:114: return 0;
	mov	dpl,#0x00
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Set_Pin_Output'
;------------------------------------------------------------
;mask                      Allocated with name '_Set_Pin_Output_mask_1_58'
;pin                       Allocated to registers r2 
;------------------------------------------------------------
;	sensor_test.c:117: void Set_Pin_Output (unsigned char pin)
;	-----------------------------------------
;	 function Set_Pin_Output
;	-----------------------------------------
_Set_Pin_Output:
	mov	r2,dpl
;	sensor_test.c:121: mask=(1<<(pin&0x7));
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
;	sensor_test.c:122: switch(pin/0x10)
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
;	sensor_test.c:124: case 0: P0MDOUT |= mask; break;
L003001?:
	mov	a,r3
	orl	_P0MDOUT,a
;	sensor_test.c:125: case 1: P1MDOUT |= mask; break;
	ret
L003002?:
	mov	a,r3
	orl	_P1MDOUT,a
;	sensor_test.c:126: case 2: P2MDOUT |= mask; break; 
	ret
L003003?:
	mov	a,r3
	orl	_P2MDOUT,a
;	sensor_test.c:127: case 3: P3MDOUT |= mask; break; 
	ret
L003004?:
	mov	a,r3
	orl	_P3MDOUT,a
;	sensor_test.c:128: }	
L003006?:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Timer3us'
;------------------------------------------------------------
;i                         Allocated with name '_Timer3us_i_1_61'
;us                        Allocated to registers r2 
;------------------------------------------------------------
;	sensor_test.c:132: void Timer3us(unsigned char us)
;	-----------------------------------------
;	 function Timer3us
;	-----------------------------------------
_Timer3us:
	mov	r2,dpl
;	sensor_test.c:137: CKCON0|=0b_0100_0000;
	orl	_CKCON0,#0x40
;	sensor_test.c:139: TMR3RL = (-(SYSCLK)/1000000L); // Set Timer3 to overflow in 1us.
	mov	_TMR3RL,#0xB8
	mov	(_TMR3RL >> 8),#0xFF
;	sensor_test.c:140: TMR3 = TMR3RL;                 // Initialize Timer3 for first overflow
	mov	_TMR3,_TMR3RL
	mov	(_TMR3 >> 8),(_TMR3RL >> 8)
;	sensor_test.c:142: TMR3CN0 = 0x04;                 // Sart Timer3 and clear overflow flag
	mov	_TMR3CN0,#0x04
;	sensor_test.c:143: for (i = 0; i < us; i++)       // Count <us> overflows
	mov	r3,#0x00
L004004?:
	clr	c
	mov	a,r3
	subb	a,r2
	jnc	L004007?
;	sensor_test.c:145: while (!(TMR3CN0 & 0x80));  // Wait for overflow
L004001?:
	mov	a,_TMR3CN0
	jnb	acc.7,L004001?
;	sensor_test.c:146: TMR3CN0 &= ~(0x80);         // Clear overflow indicator
	anl	_TMR3CN0,#0x7F
;	sensor_test.c:143: for (i = 0; i < us; i++)       // Count <us> overflows
	inc	r3
	sjmp	L004004?
L004007?:
;	sensor_test.c:148: TMR3CN0 = 0 ;                   // Stop Timer3 and clear overflow flag
	mov	_TMR3CN0,#0x00
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ptr_delay_us'
;------------------------------------------------------------
;intf_ptr                  Allocated to stack - offset -5
;period                    Allocated to registers r2 r3 r4 r5 
;------------------------------------------------------------
;	sensor_test.c:152: void ptr_delay_us (uint32_t period, void *intf_ptr) reentrant
;	-----------------------------------------
;	 function ptr_delay_us
;	-----------------------------------------
_ptr_delay_us:
	push	_bp
	mov	_bp,sp
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
;	sensor_test.c:155: while (period--)
L005001?:
	mov	ar6,r2
	mov	ar7,r3
	mov	ar0,r4
	mov	ar1,r5
	dec	r2
	cjne	r2,#0xff,L005009?
	dec	r3
	cjne	r3,#0xff,L005009?
	dec	r4
	cjne	r4,#0xff,L005009?
	dec	r5
L005009?:
	mov	a,r6
	orl	a,r7
	orl	a,r0
	orl	a,r1
	jz	L005004?
;	sensor_test.c:157: Timer3us(1);
	mov	dpl,#0x01
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	lcall	_Timer3us
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
	sjmp	L005001?
L005004?:
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'waitms'
;------------------------------------------------------------
;ms                        Allocated to registers r2 r3 
;j                         Allocated with name '_waitms_j_1_67'
;k                         Allocated with name '_waitms_k_1_67'
;------------------------------------------------------------
;	sensor_test.c:161: void waitms (unsigned int ms)
;	-----------------------------------------
;	 function waitms
;	-----------------------------------------
_waitms:
	mov	r2,dpl
	mov	r3,dph
;	sensor_test.c:165: for(j=0; j<ms; j++)
	mov	r4,#0x00
	mov	r5,#0x00
L006005?:
	clr	c
	mov	a,r4
	subb	a,r2
	mov	a,r5
	subb	a,r3
	jnc	L006009?
;	sensor_test.c:166: for (k=0; k<4; k++) Timer3us(250);
	mov	r6,#0x00
L006001?:
	cjne	r6,#0x04,L006018?
L006018?:
	jnc	L006007?
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
	sjmp	L006001?
L006007?:
;	sensor_test.c:165: for(j=0; j<ms; j++)
	inc	r4
	cjne	r4,#0x00,L006005?
	inc	r5
	sjmp	L006005?
L006009?:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'spi_transfer'
;------------------------------------------------------------
;x                         Allocated to registers 
;------------------------------------------------------------
;	sensor_test.c:170: uint8_t spi_transfer(uint8_t x) // instead of data we used x
;	-----------------------------------------
;	 function spi_transfer
;	-----------------------------------------
_spi_transfer:
	mov	_SPI0DAT,dpl
;	sensor_test.c:173: while (!(SPI0CN0 & 0x80)); // Wait for transmission to complete (SPIF flag)
L007001?:
	mov	a,_SPI0CN0
	jnb	acc.7,L007001?
;	sensor_test.c:174: SPI0CN0 &= ~0x80;          // Clear the flag
	anl	_SPI0CN0,#0x7F
;	sensor_test.c:175: return SPI0DAT;            // Return received byte
	mov	dpl,_SPI0DAT
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'bmm150_spi_read'
;------------------------------------------------------------
;reg_data                  Allocated to stack - offset -5
;length                    Allocated to stack - offset -9
;intf_ptr                  Allocated to stack - offset -12
;reg_addr                  Allocated to registers r2 
;i                         Allocated to stack - offset 1
;------------------------------------------------------------
;	sensor_test.c:194: int8_t bmm150_spi_read(uint8_t reg_addr, uint8_t *reg_data, uint32_t length, void *intf_ptr) __reentrant
;	-----------------------------------------
;	 function bmm150_spi_read
;	-----------------------------------------
_bmm150_spi_read:
	push	_bp
	mov	a,sp
	mov	_bp,a
	add	a,#0x04
	mov	sp,a
	mov	r2,dpl
;	sensor_test.c:200: reg_addr |= 0x80;
	orl	ar2,#0x80
;	sensor_test.c:201: CS = 0;
	clr	_P0_5
;	sensor_test.c:204: if (spi_transfer(reg_addr) == 0xFF)
	mov	dpl,r2
	lcall	_spi_transfer
	mov	r2,dpl
	cjne	r2,#0xFF,L008011?
;	sensor_test.c:206: CS = 1; // End SPI 
	setb	_P0_5
;	sensor_test.c:207: return BMM150_E_COM_FAIL;
	mov	dpl,#0xFC
;	sensor_test.c:210: for (i = 0; i < length; i++)
	sjmp	L008007?
L008011?:
	mov	r0,_bp
	inc	r0
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,a
L008003?:
	mov	r0,_bp
	inc	r0
	mov	a,_bp
	add	a,#0xf7
	mov	r1,a
	clr	c
	mov	a,@r0
	subb	a,@r1
	inc	r0
	mov	a,@r0
	inc	r1
	subb	a,@r1
	inc	r0
	mov	a,@r0
	inc	r1
	subb	a,@r1
	inc	r0
	mov	a,@r0
	inc	r1
	subb	a,@r1
	jnc	L008006?
;	sensor_test.c:212: reg_data[i] = spi_transfer(0x00);
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	r1,_bp
	inc	r1
	mov	a,@r1
	add	a,@r0
	mov	r6,a
	inc	r1
	mov	a,@r1
	inc	r0
	addc	a,@r0
	mov	r7,a
	inc	r0
	mov	ar2,@r0
	mov	dpl,#0x00
	push	ar2
	push	ar6
	push	ar7
	lcall	_spi_transfer
	mov	r3,dpl
	pop	ar7
	pop	ar6
	pop	ar2
	mov	dpl,r6
	mov	dph,r7
	mov	b,r2
	mov	a,r3
	lcall	__gptrput
;	sensor_test.c:210: for (i = 0; i < length; i++)
	mov	r0,_bp
	inc	r0
	inc	@r0
	cjne	@r0,#0x00,L008016?
	inc	r0
	inc	@r0
	cjne	@r0,#0x00,L008016?
	inc	r0
	inc	@r0
	cjne	@r0,#0x00,L008016?
	inc	r0
	inc	@r0
L008016?:
	sjmp	L008003?
L008006?:
;	sensor_test.c:215: CS = 1;
	setb	_P0_5
;	sensor_test.c:216: return BMM150_OK;
	mov	dpl,#0x00
L008007?:
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'bmm150_spi_write'
;------------------------------------------------------------
;reg_data                  Allocated to stack - offset -5
;length                    Allocated to stack - offset -9
;intf_ptr                  Allocated to stack - offset -12
;reg_addr                  Allocated to registers r2 
;i                         Allocated to stack - offset 1
;------------------------------------------------------------
;	sensor_test.c:235: int8_t bmm150_spi_write(uint8_t reg_addr, const uint8_t *reg_data, uint32_t length, void *intf_ptr) __reentrant
;	-----------------------------------------
;	 function bmm150_spi_write
;	-----------------------------------------
_bmm150_spi_write:
	push	_bp
	mov	a,sp
	mov	_bp,a
	add	a,#0x04
	mov	sp,a
	mov	r2,dpl
;	sensor_test.c:240: CS = 0; // Pull CS low to start communication
	clr	_P0_5
;	sensor_test.c:243: if (spi_transfer(reg_addr & 0x7F) == 0xFF) // Check if transfer failed
	mov	a,#0x7F
	anl	a,r2
	mov	dpl,a
	lcall	_spi_transfer
	mov	r2,dpl
	cjne	r2,#0xFF,L009014?
;	sensor_test.c:245: CS = 1; // Pull CS high
	setb	_P0_5
;	sensor_test.c:246: return BMM150_E_COM_FAIL; // Return communication failure
	mov	dpl,#0xFC
;	sensor_test.c:250: for (i = 0; i < length; i++)
	sjmp	L009009?
L009014?:
	mov	r0,_bp
	inc	r0
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,a
L009005?:
	mov	r0,_bp
	inc	r0
	mov	a,_bp
	add	a,#0xf7
	mov	r1,a
	clr	c
	mov	a,@r0
	subb	a,@r1
	inc	r0
	mov	a,@r0
	inc	r1
	subb	a,@r1
	inc	r0
	mov	a,@r0
	inc	r1
	subb	a,@r1
	inc	r0
	mov	a,@r0
	inc	r1
	subb	a,@r1
	jnc	L009008?
;	sensor_test.c:252: if (spi_transfer(reg_data[i]) == 0xFF) // Check if transfer failed
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	r1,_bp
	inc	r1
	mov	a,@r1
	add	a,@r0
	mov	r6,a
	inc	r1
	mov	a,@r1
	inc	r0
	addc	a,@r0
	mov	r7,a
	inc	r0
	mov	ar2,@r0
	mov	dpl,r6
	mov	dph,r7
	mov	b,r2
	lcall	__gptrget
	mov	dpl,a
	lcall	_spi_transfer
	mov	r2,dpl
	cjne	r2,#0xFF,L009007?
;	sensor_test.c:254: CS = 1; // Pull CS high
	setb	_P0_5
;	sensor_test.c:255: return BMM150_E_COM_FAIL; // Return communication failure
	mov	dpl,#0xFC
	sjmp	L009009?
L009007?:
;	sensor_test.c:250: for (i = 0; i < length; i++)
	mov	r0,_bp
	inc	r0
	inc	@r0
	cjne	@r0,#0x00,L009020?
	inc	r0
	inc	@r0
	cjne	@r0,#0x00,L009020?
	inc	r0
	inc	@r0
	cjne	@r0,#0x00,L009020?
	inc	r0
	inc	@r0
L009020?:
	sjmp	L009005?
L009008?:
;	sensor_test.c:259: CS = 1; // Pull CS high to end communication
	setb	_P0_5
;	sensor_test.c:261: return BMM150_OK; // If all transfers succeeded, return success
	mov	dpl,#0x00
L009009?:
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'bmm150_error_codes_print_result'
;------------------------------------------------------------
;rslt                      Allocated with name '_bmm150_error_codes_print_result_PARM_2'
;api_name                  Allocated to registers r2 r3 r4 
;------------------------------------------------------------
;	sensor_test.c:267: void bmm150_error_codes_print_result(const char api_name[], int8_t rslt)
;	-----------------------------------------
;	 function bmm150_error_codes_print_result
;	-----------------------------------------
_bmm150_error_codes_print_result:
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
;	sensor_test.c:269: if (rslt != BMM150_OK)
	mov	a,_bmm150_error_codes_print_result_PARM_2
	jnz	L010016?
	ret
L010016?:
;	sensor_test.c:271: printf("%s\t", api_name);
	push	ar2
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
	add	a,#0xfa
	mov	sp,a
;	sensor_test.c:273: switch (rslt)
	mov	a,#0xFC
	cjne	a,_bmm150_error_codes_print_result_PARM_2,L010017?
	sjmp	L010002?
L010017?:
	mov	a,#0xFD
	cjne	a,_bmm150_error_codes_print_result_PARM_2,L010018?
	ljmp	L010004?
L010018?:
	mov	a,#0xFE
	cjne	a,_bmm150_error_codes_print_result_PARM_2,L010019?
	sjmp	L010003?
L010019?:
	mov	a,#0xFF
	cjne	a,_bmm150_error_codes_print_result_PARM_2,L010020?
	sjmp	L010021?
L010020?:
	ljmp	L010005?
L010021?:
;	sensor_test.c:276: printf("Error [%d] : Null pointer error.", rslt);
	mov	a,_bmm150_error_codes_print_result_PARM_2
	mov	r2,a
	rlc	a
	subb	a,acc
	mov	r3,a
	push	ar2
	push	ar3
	mov	a,#__str_1
	push	acc
	mov	a,#(__str_1 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	sensor_test.c:278: "It occurs when the user tries to assign value (not address) to a pointer, which has been initialized to NULL.\r\n");
	mov	a,#__str_2
	push	acc
	mov	a,#(__str_2 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	sensor_test.c:279: break;
	ret
;	sensor_test.c:281: case BMM150_E_COM_FAIL:
L010002?:
;	sensor_test.c:282: printf("Error [%d] : Communication failure error.", rslt);
	mov	a,_bmm150_error_codes_print_result_PARM_2
	mov	r2,a
	rlc	a
	subb	a,acc
	mov	r3,a
	push	ar2
	push	ar3
	mov	a,#__str_3
	push	acc
	mov	a,#(__str_3 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	sensor_test.c:284: "It occurs due to read/write operation failure and also due to power failure during communication\r\n");
	mov	a,#__str_4
	push	acc
	mov	a,#(__str_4 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	sensor_test.c:285: break;
	ret
;	sensor_test.c:287: case BMM150_E_DEV_NOT_FOUND:
L010003?:
;	sensor_test.c:288: printf("Error [%d] : Device not found error. It occurs when the device chip id is incorrectly read\r\n", rslt);
	mov	a,_bmm150_error_codes_print_result_PARM_2
	mov	r2,a
	rlc	a
	subb	a,acc
	mov	r3,a
	push	ar2
	push	ar3
	mov	a,#__str_5
	push	acc
	mov	a,#(__str_5 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	sensor_test.c:289: break;
;	sensor_test.c:291: case BMM150_E_INVALID_CONFIG:
	ret
L010004?:
;	sensor_test.c:292: printf("Error [%d] : Invalid sensor configuration.", rslt);
	mov	a,_bmm150_error_codes_print_result_PARM_2
	mov	r2,a
	rlc	a
	subb	a,acc
	mov	r3,a
	push	ar2
	push	ar3
	mov	a,#__str_6
	push	acc
	mov	a,#(__str_6 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	sensor_test.c:293: printf(" It occurs when there is a mismatch in the requested feature with the available one\r\n");
	mov	a,#__str_7
	push	acc
	mov	a,#(__str_7 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	sensor_test.c:294: break;
;	sensor_test.c:296: default:
	ret
L010005?:
;	sensor_test.c:297: printf("Error [%d] : Unknown error code\r\n", rslt);
	mov	a,_bmm150_error_codes_print_result_PARM_2
	mov	r2,a
	rlc	a
	subb	a,acc
	mov	r3,a
	push	ar2
	push	ar3
	mov	a,#__str_8
	push	acc
	mov	a,#(__str_8 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	sensor_test.c:299: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'bmm150_interface_selection'
;------------------------------------------------------------
;intf                      Allocated with name '_bmm150_interface_selection_PARM_2'
;dev                       Allocated to registers r2 r3 
;rslt                      Allocated with name '_bmm150_interface_selection_rslt_1_84'
;------------------------------------------------------------
;	sensor_test.c:306: xdata int8_t bmm150_interface_selection(xdata struct bmm150_dev *dev, uint8_t intf)
;	-----------------------------------------
;	 function bmm150_interface_selection
;	-----------------------------------------
_bmm150_interface_selection:
	mov	r2,dpl
	mov	r3,dph
;	sensor_test.c:308: xdata int8_t rslt = BMM150_OK;
	mov	dptr,#_bmm150_interface_selection_rslt_1_84
	clr	a
	movx	@dptr,a
;	sensor_test.c:309: printf("Configuring SPI\n"); 
	push	ar2
	push	ar3
	mov	a,#__str_9
	push	acc
	mov	a,#(__str_9 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	pop	ar3
	pop	ar2
;	sensor_test.c:311: if (dev != NULL)
	mov	ar4,r2
	mov	ar5,r3
	mov	r6,#0x00
	cjne	r4,#0x00,L011011?
	cjne	r5,#0x00,L011011?
	cjne	r6,#0x00,L011011?
	ljmp	L011005?
L011011?:
;	sensor_test.c:313: if (intf == BMM150_SPI_INTF)
	mov	a,_bmm150_interface_selection_PARM_2
	jnz	L011002?
;	sensor_test.c:315: printf("SPI Interface Selected\n");
	push	ar2
	push	ar3
	mov	a,#__str_10
	push	acc
	mov	a,#(__str_10 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	pop	ar3
	pop	ar2
;	sensor_test.c:318: dev->read = bmm150_spi_read;
	mov	a,#0x06
	add	a,r2
	mov	r4,a
	clr	a
	addc	a,r3
	mov	r5,a
	mov	dpl,r4
	mov	dph,r5
	mov	a,#_bmm150_spi_read
	movx	@dptr,a
	inc	dptr
	mov	a,#(_bmm150_spi_read >> 8)
	movx	@dptr,a
;	sensor_test.c:319: dev->write = bmm150_spi_write;
	mov	a,#0x08
	add	a,r2
	mov	r4,a
	clr	a
	addc	a,r3
	mov	r5,a
	mov	dpl,r4
	mov	dph,r5
	mov	a,#_bmm150_spi_write
	movx	@dptr,a
	inc	dptr
	mov	a,#(_bmm150_spi_write >> 8)
	movx	@dptr,a
;	sensor_test.c:320: dev->intf = BMM150_SPI_INTF;
	mov	dpl,r2
	mov	dph,r3
	inc	dptr
	clr	a
	movx	@dptr,a
;	sensor_test.c:321: dev->intf_ptr = NULL; // We don't need an intf_ptr for direct GPIO control
	mov	dpl,r2
	mov	dph,r3
	inc	dptr
	inc	dptr
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	sensor_test.c:322: dev->delay_us = ptr_delay_us;
	mov	a,#0x0A
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	mov	a,#_ptr_delay_us
	movx	@dptr,a
	inc	dptr
	mov	a,#(_ptr_delay_us >> 8)
	movx	@dptr,a
	sjmp	L011006?
L011002?:
;	sensor_test.c:326: printf("Invalid Interface Selection\n");
	mov	a,#__str_11
	push	acc
	mov	a,#(__str_11 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	sensor_test.c:327: rslt = BMM150_E_INVALID_CONFIG;
	mov	dptr,#_bmm150_interface_selection_rslt_1_84
	mov	a,#0xFD
	movx	@dptr,a
	sjmp	L011006?
L011005?:
;	sensor_test.c:332: rslt = BMM150_E_NULL_PTR;
	mov	dptr,#_bmm150_interface_selection_rslt_1_84
	mov	a,#0xFF
	movx	@dptr,a
L011006?:
;	sensor_test.c:335: return rslt;
	mov	dptr,#_bmm150_interface_selection_rslt_1_84
	movx	a,@dptr
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'set_config'
;------------------------------------------------------------
;dev                       Allocated to registers r2 r3 
;rslt                      Allocated with name '_set_config_rslt_1_90'
;settings                  Allocated with name '_set_config_settings_1_90'
;------------------------------------------------------------
;	sensor_test.c:338: static int8_t set_config(xdata struct bmm150_dev *dev)
;	-----------------------------------------
;	 function set_config
;	-----------------------------------------
_set_config:
	mov	r2,dpl
	mov	r3,dph
;	sensor_test.c:346: printf("Configuring Powermode\n"); 
	push	ar2
	push	ar3
	mov	a,#__str_12
	push	acc
	mov	a,#(__str_12 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	pop	ar3
	pop	ar2
;	sensor_test.c:347: settings.pwr_mode = BMM150_POWERMODE_NORMAL;
	mov	dptr,#(_set_config_settings_1_90 + 0x0001)
	clr	a
	movx	@dptr,a
;	sensor_test.c:348: rslt = bmm150_set_op_mode(&settings, dev);
	mov	_bmm150_set_op_mode_PARM_2,r2
	mov	(_bmm150_set_op_mode_PARM_2 + 1),r3
	mov	(_bmm150_set_op_mode_PARM_2 + 2),#0x00
	mov	dptr,#_set_config_settings_1_90
	mov	b,#0x00
	push	ar2
	push	ar3
	lcall	_bmm150_set_op_mode
	mov	r4,dpl
	mov	dptr,#_set_config_rslt_1_90
	mov	a,r4
	movx	@dptr,a
;	sensor_test.c:349: bmm150_error_codes_print_result("bmm150_set_op_mode", rslt);
	mov	_bmm150_error_codes_print_result_PARM_2,r4
	mov	dptr,#__str_13
	mov	b,#0x80
	push	ar4
	lcall	_bmm150_error_codes_print_result
	pop	ar4
	pop	ar3
	pop	ar2
;	sensor_test.c:351: if (rslt == BMM150_OK)
	mov	a,r4
	jnz	L012002?
;	sensor_test.c:356: printf("Configuring Presetmode\n"); 
	push	ar2
	push	ar3
	mov	a,#__str_14
	push	acc
	mov	a,#(__str_14 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	pop	ar3
	pop	ar2
;	sensor_test.c:357: settings.preset_mode = BMM150_PRESETMODE_LOWPOWER;
	mov	dptr,#(_set_config_settings_1_90 + 0x0004)
	mov	a,#0x01
	movx	@dptr,a
;	sensor_test.c:358: rslt = bmm150_set_presetmode(&settings, dev);
	mov	_bmm150_set_presetmode_PARM_2,r2
	mov	(_bmm150_set_presetmode_PARM_2 + 1),r3
	mov	(_bmm150_set_presetmode_PARM_2 + 2),#0x00
	mov	dptr,#_set_config_settings_1_90
	mov	b,#0x00
	lcall	_bmm150_set_presetmode
	mov	r2,dpl
	mov	dptr,#_set_config_rslt_1_90
	mov	a,r2
	movx	@dptr,a
;	sensor_test.c:359: bmm150_error_codes_print_result("bmm150_set_presetmode", rslt);
	mov	_bmm150_error_codes_print_result_PARM_2,r2
	mov	dptr,#__str_15
	mov	b,#0x80
	lcall	_bmm150_error_codes_print_result
L012002?:
;	sensor_test.c:362: return rslt;
	mov	dptr,#_set_config_rslt_1_90
	movx	a,@dptr
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'get_data'
;------------------------------------------------------------
;dev                       Allocated with name '_get_data_dev_1_92'
;rslt                      Allocated with name '_get_data_rslt_1_93'
;idx                       Allocated with name '_get_data_idx_1_93'
;mag_data                  Allocated with name '_get_data_mag_data_1_93'
;------------------------------------------------------------
;	sensor_test.c:365: static int8_t get_data(xdata struct bmm150_dev *dev)
;	-----------------------------------------
;	 function get_data
;	-----------------------------------------
_get_data:
	mov	_get_data_dev_1_92,dpl
	mov	(_get_data_dev_1_92 + 1),dph
;	sensor_test.c:374: rslt = BMM150_OK; 
	mov	dptr,#_get_data_rslt_1_93
	clr	a
	movx	@dptr,a
;	sensor_test.c:378: for (idx = 0; idx < 50; idx++)
	mov	r4,#0x00
L013004?:
	clr	c
	mov	a,r4
	xrl	a,#0x80
	subb	a,#0xb2
	jnc	L013003?
;	sensor_test.c:381: rslt = bmm150_read_mag_data(&mag_data, dev);
	mov	_bmm150_read_mag_data_PARM_2,_get_data_dev_1_92
	mov	(_bmm150_read_mag_data_PARM_2 + 1),(_get_data_dev_1_92 + 1)
	mov	(_bmm150_read_mag_data_PARM_2 + 2),#0x00
	mov	dptr,#_get_data_mag_data_1_93
	mov	b,#0x00
	push	ar4
	lcall	_bmm150_read_mag_data
	mov	r5,dpl
	mov	dptr,#_get_data_rslt_1_93
	mov	a,r5
	movx	@dptr,a
;	sensor_test.c:382: bmm150_error_codes_print_result("bmm150_read_mag_data", rslt);
	mov	_bmm150_error_codes_print_result_PARM_2,r5
	mov	dptr,#__str_16
	mov	b,#0x80
	lcall	_bmm150_error_codes_print_result
	pop	ar4
;	sensor_test.c:385: printf("MAG DATA[%d]  X : %d uT   Y : %d uT \n", idx, mag_data.x, mag_data.y);
	mov	dptr,#(_get_data_mag_data_1_93 + 0x0002)
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	dptr,#_get_data_mag_data_1_93
	movx	a,@dptr
	mov	r7,a
	inc	dptr
	movx	a,@dptr
	mov	r0,a
	mov	a,r4
	mov	r1,a
	rlc	a
	subb	a,acc
	mov	r2,a
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	push	ar0
	push	ar1
	push	ar2
	mov	a,#__str_17
	push	acc
	mov	a,#(__str_17 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf7
	mov	sp,a
	pop	ar4
;	sensor_test.c:378: for (idx = 0; idx < 50; idx++)
	inc	r4
;	sensor_test.c:387: break; 
	sjmp	L013004?
L013003?:
;	sensor_test.c:389: return rslt;
	mov	dptr,#_get_data_rslt_1_93
	movx	a,@dptr
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;rslt                      Allocated with name '_main_rslt_1_97'
;dev                       Allocated with name '_main_dev_1_97'
;------------------------------------------------------------
;	sensor_test.c:393: void main (void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	sensor_test.c:398: waitms(500);
	mov	dptr,#0x01F4
	lcall	_waitms
;	sensor_test.c:399: printf("\x1b[2J"); // Clear screen using ANSI escape sequence.
	mov	a,#__str_18
	push	acc
	mov	a,#(__str_18 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	sensor_test.c:404: __FILE__, __DATE__, __TIME__);
;	sensor_test.c:403: "Compiled: %s, %s\n\n",
	mov	a,#__str_22
	push	acc
	mov	a,#(__str_22 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	a,#__str_21
	push	acc
	mov	a,#(__str_21 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	a,#__str_20
	push	acc
	mov	a,#(__str_20 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	a,#__str_19
	push	acc
	mov	a,#(__str_19 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf4
	mov	sp,a
;	sensor_test.c:406: Set_Pin_Output(0x05); 
	mov	dpl,#0x05
	lcall	_Set_Pin_Output
;	sensor_test.c:407: CS = 1; //initialize chip select 
	setb	_P0_5
;	sensor_test.c:409: rslt = bmm150_interface_selection(&dev, BMM150_SPI_INTF);
	mov	_bmm150_interface_selection_PARM_2,#0x00
	mov	dptr,#_main_dev_1_97
	lcall	_bmm150_interface_selection
	mov	r2,dpl
;	sensor_test.c:410: bmm150_error_codes_print_result("bmm150_interface_selection", rslt);
	mov	_bmm150_error_codes_print_result_PARM_2,r2
	mov	dptr,#__str_23
	mov	b,#0x80
	push	ar2
	lcall	_bmm150_error_codes_print_result
	pop	ar2
;	sensor_test.c:412: if (rslt == BMM150_OK)
	mov	a,r2
;	sensor_test.c:414: rslt = bmm150_init(&dev);
	jnz	L014007?
	mov	dptr,#_main_dev_1_97
	mov	b,a
	lcall	_bmm150_init
	mov	r2,dpl
;	sensor_test.c:415: bmm150_error_codes_print_result("bmm150_init", rslt);
	mov	_bmm150_error_codes_print_result_PARM_2,r2
	mov	dptr,#__str_24
	mov	b,#0x80
	push	ar2
	lcall	_bmm150_error_codes_print_result
	pop	ar2
;	sensor_test.c:417: if (rslt == BMM150_OK)
	mov	a,r2
	jnz	L014007?
;	sensor_test.c:419: rslt = set_config(&dev); 
	mov	dptr,#_main_dev_1_97
	lcall	_set_config
	mov	r2,dpl
;	sensor_test.c:420: bmm150_error_codes_print_result("set_config", rslt); 
	mov	_bmm150_error_codes_print_result_PARM_2,r2
	mov	dptr,#__str_25
	mov	b,#0x80
	push	ar2
	lcall	_bmm150_error_codes_print_result
	pop	ar2
;	sensor_test.c:422: if (rslt == BMM150_OK)
	mov	a,r2
	jnz	L014007?
;	sensor_test.c:424: rslt = get_data(&dev); 
	mov	dptr,#_main_dev_1_97
	lcall	_get_data
	mov	_bmm150_error_codes_print_result_PARM_2,dpl
;	sensor_test.c:425: bmm150_error_codes_print_result("get_data", rslt); 
	mov	dptr,#__str_26
	mov	b,#0x80
	lcall	_bmm150_error_codes_print_result
;	sensor_test.c:426: printf("Configuration Complete - Ready to get data"); 
	mov	a,#__str_27
	push	acc
	mov	a,#(__str_27 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
L014007?:
	ret
	rseg R_CSEG

	rseg R_XINIT

	rseg R_CONST
__str_0:
	db '%s'
	db 0x09
	db 0x00
__str_1:
	db 'Error [%d] : Null pointer error.'
	db 0x00
__str_2:
	db 'It occurs when the user tries to assign value (not address) '
	db 'to a pointer, which has been initialized to NULL.'
	db 0x0D
	db 0x0A
	db 0x00
__str_3:
	db 'Error [%d] : Communication failure error.'
	db 0x00
__str_4:
	db 'It occurs due to read/write operation failure and also due t'
	db 'o power failure during communication'
	db 0x0D
	db 0x0A
	db 0x00
__str_5:
	db 'Error [%d] : Device not found error. It occurs when the devi'
	db 'ce chip id is incorrectly read'
	db 0x0D
	db 0x0A
	db 0x00
__str_6:
	db 'Error [%d] : Invalid sensor configuration.'
	db 0x00
__str_7:
	db ' It occurs when there is a mismatch in the requested feature'
	db ' with the available one'
	db 0x0D
	db 0x0A
	db 0x00
__str_8:
	db 'Error [%d] : Unknown error code'
	db 0x0D
	db 0x0A
	db 0x00
__str_9:
	db 'Configuring SPI'
	db 0x0A
	db 0x00
__str_10:
	db 'SPI Interface Selected'
	db 0x0A
	db 0x00
__str_11:
	db 'Invalid Interface Selection'
	db 0x0A
	db 0x00
__str_12:
	db 'Configuring Powermode'
	db 0x0A
	db 0x00
__str_13:
	db 'bmm150_set_op_mode'
	db 0x00
__str_14:
	db 'Configuring Presetmode'
	db 0x0A
	db 0x00
__str_15:
	db 'bmm150_set_presetmode'
	db 0x00
__str_16:
	db 'bmm150_read_mag_data'
	db 0x00
__str_17:
	db 'MAG DATA[%d]  X : %d uT   Y : %d uT '
	db 0x0A
	db 0x00
__str_18:
	db 0x1B
	db '[2J'
	db 0x00
__str_19:
	db 'EFM8LB1 SPI/BMM150 test program'
	db 0x0A
	db 'File: %s'
	db 0x0A
	db 'Compiled: %s, %s'
	db 0x0A
	db 0x0A
	db 0x00
__str_20:
	db 'sensor_test.c'
	db 0x00
__str_21:
	db 'Mar 22 2025'
	db 0x00
__str_22:
	db '15:47:02'
	db 0x00
__str_23:
	db 'bmm150_interface_selection'
	db 0x00
__str_24:
	db 'bmm150_init'
	db 0x00
__str_25:
	db 'set_config'
	db 0x00
__str_26:
	db 'get_data'
	db 0x00
__str_27:
	db 'Configuration Complete - Ready to get data'
	db 0x00

	CSEG

end
