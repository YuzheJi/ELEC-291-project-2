;--------------------------------------------------------
; File Created by C51
; Version 1.0.0 #1170 (Feb 16 2022) (MSVC)
; This file was generated Thu Mar 20 13:01:28 2025
;--------------------------------------------------------
$name main
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
	public _InitPinADC_PARM_2
	public _main
	public _Calibrate_Joystick
	public _Timer0_ISR
	public _Timer5_ISR
	public _ADC_at_Pin
	public _InitPinADC
	public _InitADC
	public _Set_Pin_Input
	public _Set_Pin_Output
	public _ReceptionOff
	public _SendATCommand
	public _waitms_or_RI1
	public _RXU1
	public _getstr1
	public _getchar1_with_timeout
	public _getchar1
	public _sendstr1
	public _putchar1
	public _UART1_Init
	public _waitms
	public _Timer3us
	public __c51_external_startup
	public _buff
	public _getstr1_PARM_2
	public _vy_thres
	public _vx_thres
	public _vy
	public _vx
	public _servo_arm_pwm
	public _servo_base_pwm
	public _R_motor_dir
	public _L_motor_dir
	public _pwm_right
	public _pwm_left
	public _servo_counter
	public _pwm_counter
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
_pwm_counter:
	ds 2
_servo_counter:
	ds 2
_pwm_left:
	ds 1
_pwm_right:
	ds 1
_L_motor_dir:
	ds 1
_R_motor_dir:
	ds 1
_servo_base_pwm:
	ds 1
_servo_arm_pwm:
	ds 1
_vx:
	ds 2
_vy:
	ds 2
_vx_thres:
	ds 2
_vy_thres:
	ds 2
_getstr1_PARM_2:
	ds 1
_main_vx_error_1_132:
	ds 2
_main_vy_error_1_132:
	ds 2
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	rseg	R_OSEG
	rseg	R_OSEG
	rseg	R_OSEG
	rseg	R_OSEG
	rseg	R_OSEG
	rseg	R_OSEG
_InitPinADC_PARM_2:
	ds 1
	rseg	R_OSEG
;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	rseg R_ISEG
_buff:
	ds 20
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
	CSEG at 0x000b
	ljmp	_Timer0_ISR
	CSEG at 0x0093
	ljmp	_Timer5_ISR
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
;	main.c:48: unsigned int pwm_counter = 0; 
	clr	a
	mov	_pwm_counter,a
	mov	(_pwm_counter + 1),a
;	main.c:49: unsigned int servo_counter = 0; 
	clr	a
	mov	_servo_counter,a
	mov	(_servo_counter + 1),a
;	main.c:50: unsigned char pwm_left = 0, pwm_right = 0; 
	mov	_pwm_left,#0x00
;	main.c:50: unsigned char L_motor_dir = 1, R_motor_dir = 1; // 1 - Forward, 0 - Backward
	mov	_pwm_right,#0x00
;	main.c:51: unsigned char servo_base_pwm = 0, servo_arm_pwm = 0; 
	mov	_L_motor_dir,#0x01
;	main.c:51: unsigned char L_motor_dir = 1, R_motor_dir = 1; // 1 - Forward, 0 - Backward
	mov	_R_motor_dir,#0x01
;	main.c:52: unsigned char servo_base_pwm = 0, servo_arm_pwm = 0; 
	mov	_servo_base_pwm,#0x00
;	main.c:52: int vx = 0, vy = 0; 
	mov	_servo_arm_pwm,#0x00
;	main.c:53: int vx_thres = 0, vy_thres = 0; 
	clr	a
	mov	_vx,a
	mov	(_vx + 1),a
;	main.c:53: int vx = 0, vy = 0; 
	clr	a
	mov	_vy,a
	mov	(_vy + 1),a
;	main.c:54: int vx_thres = 0, vy_thres = 0; 
	clr	a
	mov	_vx_thres,a
	mov	(_vx_thres + 1),a
;	main.c:54: 
	clr	a
	mov	_vy_thres,a
	mov	(_vy_thres + 1),a
	; The linker places a 'ret' at the end of segment R_DINIT.
;--------------------------------------------------------
; code
;--------------------------------------------------------
	rseg R_CSEG
;------------------------------------------------------------
;Allocation info for local variables in function '_c51_external_startup'
;------------------------------------------------------------
;------------------------------------------------------------
;	main.c:57: char _c51_external_startup (void)
;	-----------------------------------------
;	 function _c51_external_startup
;	-----------------------------------------
__c51_external_startup:
	using	0
;	main.c:60: SFRPAGE = 0x00;
	mov	_SFRPAGE,#0x00
;	main.c:61: WDTCN = 0xDE; //First key
	mov	_WDTCN,#0xDE
;	main.c:62: WDTCN = 0xAD; //Second key
	mov	_WDTCN,#0xAD
;	main.c:64: VDM0CN=0x80;       // enable VDD monitor
	mov	_VDM0CN,#0x80
;	main.c:65: RSTSRC=0x02|0x04;  // Enable reset on missing clock detector and VDD
	mov	_RSTSRC,#0x06
;	main.c:72: SFRPAGE = 0x10;
	mov	_SFRPAGE,#0x10
;	main.c:73: PFE0CN  = 0x20; // SYSCLK < 75 MHz.
	mov	_PFE0CN,#0x20
;	main.c:74: SFRPAGE = 0x00;
	mov	_SFRPAGE,#0x00
;	main.c:95: CLKSEL = 0x00;
	mov	_CLKSEL,#0x00
;	main.c:96: CLKSEL = 0x00;
	mov	_CLKSEL,#0x00
;	main.c:97: while ((CLKSEL & 0x80) == 0);
L002001?:
	mov	a,_CLKSEL
	jnb	acc.7,L002001?
;	main.c:98: CLKSEL = 0x03;
	mov	_CLKSEL,#0x03
;	main.c:99: CLKSEL = 0x03;
	mov	_CLKSEL,#0x03
;	main.c:100: while ((CLKSEL & 0x80) == 0);
L002004?:
	mov	a,_CLKSEL
	jnb	acc.7,L002004?
;	main.c:105: P0MDOUT |= 0x11; // Enable UART0 TX (P0.4) and UART1 TX (P0.0) as push-pull outputs
	orl	_P0MDOUT,#0x11
;	main.c:106: P2MDOUT |= 0x01; // P2.0 in push-pull mode
	orl	_P2MDOUT,#0x01
;	main.c:107: XBR0     = 0x01; // Enable UART0 on P0.4(TX) and P0.5(RX)                     
	mov	_XBR0,#0x01
;	main.c:108: XBR1     = 0X00;
	mov	_XBR1,#0x00
;	main.c:109: XBR2     = 0x41; // Enable crossbar and uart 1
	mov	_XBR2,#0x41
;	main.c:115: SCON0 = 0x10;
	mov	_SCON0,#0x10
;	main.c:116: TH1 = 0x100-((SYSCLK/BAUDRATE)/(2L*12L));
	mov	_TH1,#0xE6
;	main.c:117: TL1 = TH1;      // Init Timer1
	mov	_TL1,_TH1
;	main.c:118: TMOD &= ~0xf0;  // TMOD: timer 1 in 8-bit auto-reload
	anl	_TMOD,#0x0F
;	main.c:119: TMOD |=  0x20;                       
	orl	_TMOD,#0x20
;	main.c:120: TR1 = 1; // START Timer1
	setb	_TR1
;	main.c:121: TI = 1;  // Indicate TX0 ready
	setb	_TI
;	main.c:123: P2_0=1; // 'set' pin to 1 is normal operation mode.
	setb	_P2_0
;	main.c:126: SFRPAGE=0x10;
	mov	_SFRPAGE,#0x10
;	main.c:127: TMR5CN0=0x00;
	mov	_TMR5CN0,#0x00
;	main.c:128: TMR5=0xffff;   // Set to reload immediately
	mov	_TMR5,#0xFF
	mov	(_TMR5 >> 8),#0xFF
;	main.c:129: EIE2|=0b_0000_1000; // Enable Timer5 interrupts
	orl	_EIE2,#0x08
;	main.c:130: TR5=1;         // Start Timer5 (TMR5CN0 is bit addressable)
	setb	_TR5
;	main.c:133: TR0=0;
	clr	_TR0
;	main.c:134: TF0=0;
	clr	_TF0
;	main.c:135: CKCON0|=0b_0000_0100; // Timer 0 uses the system clock
	orl	_CKCON0,#0x04
;	main.c:136: TMOD&=0xf0;
	anl	_TMOD,#0xF0
;	main.c:137: TMOD|=0x01; // Timer 0 in mode 1: 16-bit timer
	orl	_TMOD,#0x01
;	main.c:141: TMR0=0x10000L-(SYSCLK/(TIMER_0_FREQ)); // Initialize reload value
	mov	_TMR0,#0x60
	mov	(_TMR0 >> 8),#0x73
;	main.c:142: ET0=1; // Enable Timer0 interrupts
	setb	_ET0
;	main.c:143: TR0=1; // Start Timer0
	setb	_TR0
;	main.c:146: EA=1;  // Enable global interrupts
	setb	_EA
;	main.c:147: SFRPAGE=0x00;
	mov	_SFRPAGE,#0x00
;	main.c:149: return 0;
	mov	dpl,#0x00
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Timer3us'
;------------------------------------------------------------
;us                        Allocated to registers r2 
;i                         Allocated to registers r3 
;------------------------------------------------------------
;	main.c:153: void Timer3us(unsigned char us)
;	-----------------------------------------
;	 function Timer3us
;	-----------------------------------------
_Timer3us:
	mov	r2,dpl
;	main.c:158: CKCON0|=0b_0100_0000;
	orl	_CKCON0,#0x40
;	main.c:160: TMR3RL = (-(SYSCLK)/1000000L); // Set Timer3 to overflow in 1us.
	mov	_TMR3RL,#0xB8
	mov	(_TMR3RL >> 8),#0xFF
;	main.c:161: TMR3 = TMR3RL;                 // Initialize Timer3 for first overflow
	mov	_TMR3,_TMR3RL
	mov	(_TMR3 >> 8),(_TMR3RL >> 8)
;	main.c:163: TMR3CN0 = 0x04;                 // Sart Timer3 and clear overflow flag
	mov	_TMR3CN0,#0x04
;	main.c:164: for (i = 0; i < us; i++)       // Count <us> overflows
	mov	r3,#0x00
L003004?:
	clr	c
	mov	a,r3
	subb	a,r2
	jnc	L003007?
;	main.c:166: while (!(TMR3CN0 & 0x80));  // Wait for overflow
L003001?:
	mov	a,_TMR3CN0
	jnb	acc.7,L003001?
;	main.c:167: TMR3CN0 &= ~(0x80);         // Clear overflow indicator
	anl	_TMR3CN0,#0x7F
;	main.c:164: for (i = 0; i < us; i++)       // Count <us> overflows
	inc	r3
	sjmp	L003004?
L003007?:
;	main.c:169: TMR3CN0 = 0 ;                   // Stop Timer3 and clear overflow flag
	mov	_TMR3CN0,#0x00
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'waitms'
;------------------------------------------------------------
;ms                        Allocated to registers r2 r3 
;j                         Allocated to registers r4 r5 
;k                         Allocated to registers r6 
;------------------------------------------------------------
;	main.c:172: void waitms (unsigned int ms)
;	-----------------------------------------
;	 function waitms
;	-----------------------------------------
_waitms:
	mov	r2,dpl
	mov	r3,dph
;	main.c:176: for(j=0; j<ms; j++)
	mov	r4,#0x00
	mov	r5,#0x00
L004005?:
	clr	c
	mov	a,r4
	subb	a,r2
	mov	a,r5
	subb	a,r3
	jnc	L004009?
;	main.c:177: for (k=0; k<4; k++) Timer3us(250);
	mov	r6,#0x00
L004001?:
	cjne	r6,#0x04,L004018?
L004018?:
	jnc	L004007?
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
	sjmp	L004001?
L004007?:
;	main.c:176: for(j=0; j<ms; j++)
	inc	r4
	cjne	r4,#0x00,L004005?
	inc	r5
	sjmp	L004005?
L004009?:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'UART1_Init'
;------------------------------------------------------------
;baudrate                  Allocated to registers r2 r3 r4 r5 
;------------------------------------------------------------
;	main.c:180: void UART1_Init (unsigned long baudrate)
;	-----------------------------------------
;	 function UART1_Init
;	-----------------------------------------
_UART1_Init:
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
;	main.c:182: SFRPAGE = 0x20;
	mov	_SFRPAGE,#0x20
;	main.c:183: SMOD1 = 0x0C; // no parity, 8 data bits, 1 stop bit
	mov	_SMOD1,#0x0C
;	main.c:184: SCON1 = 0x10;
	mov	_SCON1,#0x10
;	main.c:185: SBCON1 =0x00;   // disable baud rate generator
	mov	_SBCON1,#0x00
;	main.c:186: SBRL1 = 0x10000L-((SYSCLK/baudrate)/(12L*2L));
	mov	__divulong_PARM_2,r2
	mov	(__divulong_PARM_2 + 1),r3
	mov	(__divulong_PARM_2 + 2),r4
	mov	(__divulong_PARM_2 + 3),r5
	mov	dptr,#0xA200
	mov	b,#0x4A
	mov	a,#0x04
	lcall	__divulong
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	__divulong_PARM_2,#0x18
	clr	a
	mov	(__divulong_PARM_2 + 1),a
	mov	(__divulong_PARM_2 + 2),a
	mov	(__divulong_PARM_2 + 3),a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	__divulong
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	clr	a
	clr	c
	subb	a,r2
	mov	r2,a
	clr	a
	subb	a,r3
	mov	r3,a
	mov	a,#0x01
	subb	a,r4
	clr	a
	subb	a,r5
	mov	_SBRL1,r2
	mov	(_SBRL1 >> 8),r3
;	main.c:187: TI1 = 1; // indicate ready for TX
	setb	_TI1
;	main.c:188: SBCON1 |= 0x40;   // enable baud rate generator
	orl	_SBCON1,#0x40
;	main.c:189: SFRPAGE = 0x00;
	mov	_SFRPAGE,#0x00
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'putchar1'
;------------------------------------------------------------
;c                         Allocated to registers r2 
;------------------------------------------------------------
;	main.c:192: void putchar1 (char c) 
;	-----------------------------------------
;	 function putchar1
;	-----------------------------------------
_putchar1:
	mov	r2,dpl
;	main.c:194: SFRPAGE = 0x20;
	mov	_SFRPAGE,#0x20
;	main.c:195: while (!TI1);
L006001?:
;	main.c:196: TI1=0;
	jbc	_TI1,L006008?
	sjmp	L006001?
L006008?:
;	main.c:197: SBUF1 = c;
	mov	_SBUF1,r2
;	main.c:198: SFRPAGE = 0x00;
	mov	_SFRPAGE,#0x00
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'sendstr1'
;------------------------------------------------------------
;s                         Allocated to registers r2 r3 r4 
;------------------------------------------------------------
;	main.c:201: void sendstr1 (char * s)
;	-----------------------------------------
;	 function sendstr1
;	-----------------------------------------
_sendstr1:
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
;	main.c:203: while(*s)
L007001?:
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r5,a
	jz	L007004?
;	main.c:205: putchar1(*s);
	mov	dpl,r5
	push	ar2
	push	ar3
	push	ar4
	lcall	_putchar1
	pop	ar4
	pop	ar3
	pop	ar2
;	main.c:206: s++;	
	inc	r2
	cjne	r2,#0x00,L007001?
	inc	r3
	sjmp	L007001?
L007004?:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'getchar1'
;------------------------------------------------------------
;c                         Allocated to registers 
;------------------------------------------------------------
;	main.c:210: char getchar1 (void)
;	-----------------------------------------
;	 function getchar1
;	-----------------------------------------
_getchar1:
;	main.c:213: SFRPAGE = 0x20;
	mov	_SFRPAGE,#0x20
;	main.c:214: while (!RI1);
L008001?:
;	main.c:215: RI1=0;
	jbc	_RI1,L008008?
	sjmp	L008001?
L008008?:
;	main.c:217: SCON1&=0b_0011_1111;
	anl	_SCON1,#0x3F
;	main.c:218: c = SBUF1;
	mov	dpl,_SBUF1
;	main.c:219: SFRPAGE = 0x00;
	mov	_SFRPAGE,#0x00
;	main.c:220: return (c);
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'getchar1_with_timeout'
;------------------------------------------------------------
;c                         Allocated to registers 
;timeout                   Allocated to registers r2 r3 
;------------------------------------------------------------
;	main.c:223: char getchar1_with_timeout (void)
;	-----------------------------------------
;	 function getchar1_with_timeout
;	-----------------------------------------
_getchar1_with_timeout:
;	main.c:227: SFRPAGE = 0x20;
	mov	_SFRPAGE,#0x20
;	main.c:229: while (!RI1)
	mov	r2,#0x00
	mov	r3,#0x00
L009003?:
	jb	_RI1,L009005?
;	main.c:231: SFRPAGE = 0x00;
	mov	_SFRPAGE,#0x00
;	main.c:232: Timer3us(20);
	mov	dpl,#0x14
	push	ar2
	push	ar3
	lcall	_Timer3us
	pop	ar3
	pop	ar2
;	main.c:233: SFRPAGE = 0x20;
	mov	_SFRPAGE,#0x20
;	main.c:234: timeout++;
	inc	r2
	cjne	r2,#0x00,L009012?
	inc	r3
L009012?:
;	main.c:235: if(timeout==25000)
	cjne	r2,#0xA8,L009003?
	cjne	r3,#0x61,L009003?
;	main.c:237: SFRPAGE = 0x00;
	mov	_SFRPAGE,#0x00
;	main.c:238: return ('\n'); // Timeout after half second
	mov	dpl,#0x0A
	ret
L009005?:
;	main.c:241: RI1=0;
	clr	_RI1
;	main.c:243: SCON1&=0b_0011_1111;
	anl	_SCON1,#0x3F
;	main.c:244: c = SBUF1;
	mov	dpl,_SBUF1
;	main.c:245: SFRPAGE = 0x00;
	mov	_SFRPAGE,#0x00
;	main.c:246: return (c);
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'getstr1'
;------------------------------------------------------------
;n                         Allocated with name '_getstr1_PARM_2'
;s                         Allocated to registers r2 r3 r4 
;c                         Allocated to registers r1 
;cnt                       Allocated to registers r5 
;------------------------------------------------------------
;	main.c:249: void getstr1 (char * s, unsigned char n)
;	-----------------------------------------
;	 function getstr1
;	-----------------------------------------
_getstr1:
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
;	main.c:255: while(1)
	mov	r5,#0x00
	mov	ar6,r2
	mov	ar7,r3
	mov	ar0,r4
L010007?:
;	main.c:257: c=getchar1_with_timeout();
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	push	ar0
	lcall	_getchar1_with_timeout
	mov	r1,dpl
	pop	ar0
	pop	ar7
	pop	ar6
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
;	main.c:258: if(c=='\n')
	cjne	r1,#0x0A,L010002?
;	main.c:260: *s=0;
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	clr	a
;	main.c:261: return;
	ljmp	__gptrput
L010002?:
;	main.c:264: if (cnt<n)
	clr	c
	mov	a,r5
	subb	a,_getstr1_PARM_2
	jnc	L010004?
;	main.c:266: cnt++;
	inc	r5
;	main.c:267: *s=c;
	mov	dpl,r6
	mov	dph,r7
	mov	b,r0
	mov	a,r1
	lcall	__gptrput
	inc	dptr
	mov	r6,dpl
	mov	r7,dph
;	main.c:268: s++;
	mov	ar2,r6
	mov	ar3,r7
	mov	ar4,r0
	sjmp	L010007?
L010004?:
;	main.c:272: *s=0;
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	clr	a
;	main.c:273: return;
	ljmp	__gptrput
;------------------------------------------------------------
;Allocation info for local variables in function 'RXU1'
;------------------------------------------------------------
;------------------------------------------------------------
;	main.c:279: bit RXU1 (void)
;	-----------------------------------------
;	 function RXU1
;	-----------------------------------------
_RXU1:
;	main.c:282: SFRPAGE = 0x20;
	mov	_SFRPAGE,#0x20
;	main.c:283: mybit=RI1;
	mov	c,_RI1
;	main.c:284: SFRPAGE = 0x00;
	mov	_SFRPAGE,#0x00
;	main.c:285: return mybit;
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'waitms_or_RI1'
;------------------------------------------------------------
;ms                        Allocated to registers r2 r3 
;j                         Allocated to registers r4 r5 
;k                         Allocated to registers r6 
;------------------------------------------------------------
;	main.c:288: void waitms_or_RI1 (unsigned int ms)
;	-----------------------------------------
;	 function waitms_or_RI1
;	-----------------------------------------
_waitms_or_RI1:
	mov	r2,dpl
	mov	r3,dph
;	main.c:292: for(j=0; j<ms; j++)
	mov	r4,#0x00
	mov	r5,#0x00
L012007?:
	clr	c
	mov	a,r4
	subb	a,r2
	mov	a,r5
	subb	a,r3
	jnc	L012011?
;	main.c:294: for (k=0; k<4; k++)
	mov	r6,#0x00
L012003?:
	cjne	r6,#0x04,L012019?
L012019?:
	jnc	L012009?
;	main.c:296: if(RXU1()) return;
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	push	ar6
	lcall	_RXU1
	clr	a
	rlc	a
	pop	ar6
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
	jz	L012002?
	ret
L012002?:
;	main.c:297: Timer3us(250);
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
;	main.c:294: for (k=0; k<4; k++)
	inc	r6
	sjmp	L012003?
L012009?:
;	main.c:292: for(j=0; j<ms; j++)
	inc	r4
	cjne	r4,#0x00,L012007?
	inc	r5
	sjmp	L012007?
L012011?:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'SendATCommand'
;------------------------------------------------------------
;s                         Allocated to registers r2 r3 r4 
;------------------------------------------------------------
;	main.c:302: void SendATCommand (char * s)
;	-----------------------------------------
;	 function SendATCommand
;	-----------------------------------------
_SendATCommand:
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
;	main.c:304: printf("Command: %s", s);
	push	ar2
	push	ar3
	push	ar4
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
;	main.c:305: P2_0=0; // 'set' pin to 0 is 'AT' mode.
	clr	_P2_0
;	main.c:306: waitms(5);
	mov	dptr,#0x0005
	lcall	_waitms
	pop	ar4
	pop	ar3
	pop	ar2
;	main.c:307: sendstr1(s);
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_sendstr1
;	main.c:308: getstr1(buff, sizeof(buff)-1);
	mov	_getstr1_PARM_2,#0x13
	mov	dptr,#_buff
	mov	b,#0x40
	lcall	_getstr1
;	main.c:309: waitms(10);
	mov	dptr,#0x000A
	lcall	_waitms
;	main.c:310: P2_0=1; // 'set' pin to 1 is normal operation mode.
	setb	_P2_0
;	main.c:311: printf("Response: %s\r\n", buff);
	mov	a,#_buff
	push	acc
	mov	a,#(_buff >> 8)
	push	acc
	mov	a,#0x40
	push	acc
	mov	a,#__str_1
	push	acc
	mov	a,#(__str_1 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ReceptionOff'
;------------------------------------------------------------
;------------------------------------------------------------
;	main.c:314: void ReceptionOff (void)
;	-----------------------------------------
;	 function ReceptionOff
;	-----------------------------------------
_ReceptionOff:
;	main.c:316: P2_0=0; // 'set' pin to 0 is 'AT' mode.
	clr	_P2_0
;	main.c:317: waitms(10);
	mov	dptr,#0x000A
	lcall	_waitms
;	main.c:318: sendstr1("AT+DVID0000\r\n"); // Some unused id, so that we get nothing in RXD1.
	mov	dptr,#__str_2
	mov	b,#0x80
	lcall	_sendstr1
;	main.c:319: waitms(10);
	mov	dptr,#0x000A
	lcall	_waitms
;	main.c:321: SCON1&=0b_0011_1111;
	anl	_SCON1,#0x3F
;	main.c:322: P2_0=1; // 'set' pin to 1 is normal operation mode.
	setb	_P2_0
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Set_Pin_Output'
;------------------------------------------------------------
;pin                       Allocated to registers r2 
;mask                      Allocated to registers r3 
;------------------------------------------------------------
;	main.c:325: void Set_Pin_Output (unsigned char pin)
;	-----------------------------------------
;	 function Set_Pin_Output
;	-----------------------------------------
_Set_Pin_Output:
	mov	r2,dpl
;	main.c:329: mask=(1<<(pin&0x7));
	mov	a,#0x07
	anl	a,r2
	mov	b,a
	inc	b
	mov	a,#0x01
	sjmp	L015011?
L015009?:
	add	a,acc
L015011?:
	djnz	b,L015009?
	mov	r3,a
;	main.c:330: switch(pin/0x10)
	mov	a,r2
	swap	a
	anl	a,#0x0f
	mov  r2,a
	add	a,#0xff - 0x03
	jc	L015006?
	mov	a,r2
	add	a,r2
	add	a,r2
	mov	dptr,#L015013?
	jmp	@a+dptr
L015013?:
	ljmp	L015001?
	ljmp	L015002?
	ljmp	L015003?
	ljmp	L015004?
;	main.c:332: case 0: P0MDOUT |= mask; break;
L015001?:
	mov	a,r3
	orl	_P0MDOUT,a
;	main.c:333: case 1: P1MDOUT |= mask; break;
	ret
L015002?:
	mov	a,r3
	orl	_P1MDOUT,a
;	main.c:334: case 2: P2MDOUT |= mask; break; 
	ret
L015003?:
	mov	a,r3
	orl	_P2MDOUT,a
;	main.c:335: case 3: P3MDOUT |= mask; break; 
	ret
L015004?:
	mov	a,r3
	orl	_P3MDOUT,a
;	main.c:336: }	
L015006?:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Set_Pin_Input'
;------------------------------------------------------------
;mask                      Allocated with name '_Set_Pin_Input_mask_1_101'
;pin                       Allocated to registers r2 
;------------------------------------------------------------
;	main.c:339: void Set_Pin_Input (unsigned char pin)
;	-----------------------------------------
;	 function Set_Pin_Input
;	-----------------------------------------
_Set_Pin_Input:
	mov	r2,dpl
;	main.c:343: mask=(1<<(pin&0x7));
	mov	a,#0x07
	anl	a,r2
	mov	b,a
	inc	b
	mov	a,#0x01
	sjmp	L016011?
L016009?:
	add	a,acc
L016011?:
	djnz	b,L016009?
;	main.c:344: mask=~mask;
	cpl	a
	mov	r3,a
;	main.c:345: switch(pin/0x10)
	mov	a,r2
	swap	a
	anl	a,#0x0f
	mov  r2,a
	add	a,#0xff - 0x03
	jc	L016006?
	mov	a,r2
	add	a,r2
	add	a,r2
	mov	dptr,#L016013?
	jmp	@a+dptr
L016013?:
	ljmp	L016001?
	ljmp	L016002?
	ljmp	L016003?
	ljmp	L016004?
;	main.c:347: case 0: P0MDOUT &= mask; break;
L016001?:
	mov	a,r3
	anl	_P0MDOUT,a
;	main.c:348: case 1: P1MDOUT &= mask; break;
	ret
L016002?:
	mov	a,r3
	anl	_P1MDOUT,a
;	main.c:349: case 2: P2MDOUT &= mask; break; 
	ret
L016003?:
	mov	a,r3
	anl	_P2MDOUT,a
;	main.c:350: case 3: P3MDOUT &= mask; break; 
	ret
L016004?:
	mov	a,r3
	anl	_P3MDOUT,a
;	main.c:351: }	
L016006?:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'InitADC'
;------------------------------------------------------------
;------------------------------------------------------------
;	main.c:354: void InitADC (void)
;	-----------------------------------------
;	 function InitADC
;	-----------------------------------------
_InitADC:
;	main.c:356: SFRPAGE = 0x00;
	mov	_SFRPAGE,#0x00
;	main.c:357: ADEN=0; // Disable ADC
	clr	_ADEN
;	main.c:362: (0x0 << 0) ; // Accumulate n conversions: 0x0: 1, 0x1:4, 0x2:8, 0x3:16, 0x4:32
	mov	_ADC0CN1,#0x80
;	main.c:366: (0x0 << 2); // 0:SYSCLK ADCCLK = SYSCLK. 1:HFOSC0 ADCCLK = HFOSC0.
	mov	_ADC0CF0,#0x20
;	main.c:370: (0x1E << 0); // Conversion Tracking Time. Tadtk = ADTK / (Fsarclk)
	mov	_ADC0CF1,#0x1E
;	main.c:379: (0x0 << 0) ; // TEMPE. 0: Disable the Temperature Sensor. 1: Enable the Temperature Sensor.
	mov	_ADC0CN0,#0x00
;	main.c:384: (0x1F << 0); // ADPWR. Power Up Delay Time. Tpwrtime = ((4 * (ADPWR + 1)) + 2) / (Fadcclk)
	mov	_ADC0CF2,#0x3F
;	main.c:388: (0x0 << 0) ; // ADCM. 0x0: ADBUSY, 0x1: TIMER0, 0x2: TIMER2, 0x3: TIMER3, 0x4: CNVSTR, 0x5: CEX5, 0x6: TIMER4, 0x7: TIMER5, 0x8: CLU0, 0x9: CLU1, 0xA: CLU2, 0xB: CLU3
	mov	_ADC0CN2,#0x00
;	main.c:390: ADEN=1; // Enable ADC
	setb	_ADEN
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'InitPinADC'
;------------------------------------------------------------
;pin_num                   Allocated with name '_InitPinADC_PARM_2'
;portno                    Allocated to registers r2 
;mask                      Allocated to registers r3 
;------------------------------------------------------------
;	main.c:393: void InitPinADC (unsigned char portno, unsigned char pin_num)
;	-----------------------------------------
;	 function InitPinADC
;	-----------------------------------------
_InitPinADC:
	mov	r2,dpl
;	main.c:397: mask=1<<pin_num;
	mov	b,_InitPinADC_PARM_2
	inc	b
	mov	a,#0x01
	sjmp	L018013?
L018011?:
	add	a,acc
L018013?:
	djnz	b,L018011?
	mov	r3,a
;	main.c:399: SFRPAGE = 0x20;
	mov	_SFRPAGE,#0x20
;	main.c:400: switch (portno)
	cjne	r2,#0x00,L018014?
	sjmp	L018001?
L018014?:
	cjne	r2,#0x01,L018015?
	sjmp	L018002?
L018015?:
;	main.c:402: case 0:
	cjne	r2,#0x02,L018005?
	sjmp	L018003?
L018001?:
;	main.c:403: P0MDIN &= (~mask); // Set pin as analog input
	mov	a,r3
	cpl	a
	mov	r2,a
	anl	_P0MDIN,a
;	main.c:404: P0SKIP |= mask; // Skip Crossbar decoding for this pin
	mov	a,r3
	orl	_P0SKIP,a
;	main.c:405: break;
;	main.c:406: case 1:
	sjmp	L018005?
L018002?:
;	main.c:407: P1MDIN &= (~mask); // Set pin as analog input
	mov	a,r3
	cpl	a
	mov	r2,a
	anl	_P1MDIN,a
;	main.c:408: P1SKIP |= mask; // Skip Crossbar decoding for this pin
	mov	a,r3
	orl	_P1SKIP,a
;	main.c:409: break;
;	main.c:410: case 2:
	sjmp	L018005?
L018003?:
;	main.c:411: P2MDIN &= (~mask); // Set pin as analog input
	mov	a,r3
	cpl	a
	mov	r2,a
	anl	_P2MDIN,a
;	main.c:412: P2SKIP |= mask; // Skip Crossbar decoding for this pin
	mov	a,r3
	orl	_P2SKIP,a
;	main.c:416: }
L018005?:
;	main.c:417: SFRPAGE = 0x00;
	mov	_SFRPAGE,#0x00
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ADC_at_Pin'
;------------------------------------------------------------
;pin                       Allocated to registers 
;------------------------------------------------------------
;	main.c:420: unsigned int ADC_at_Pin(unsigned char pin)
;	-----------------------------------------
;	 function ADC_at_Pin
;	-----------------------------------------
_ADC_at_Pin:
	mov	_ADC0MX,dpl
;	main.c:423: ADINT = 0;
	clr	_ADINT
;	main.c:424: ADBUSY = 1;     // Convert voltage at the pin
	setb	_ADBUSY
;	main.c:425: while (!ADINT); // Wait for conversion to complete
L019001?:
	jnb	_ADINT,L019001?
;	main.c:426: return (ADC0);
	mov	dpl,_ADC0
	mov	dph,(_ADC0 >> 8)
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Timer5_ISR'
;------------------------------------------------------------
;------------------------------------------------------------
;	main.c:429: void Timer5_ISR (void) interrupt INTERRUPT_TIMER5
;	-----------------------------------------
;	 function Timer5_ISR
;	-----------------------------------------
_Timer5_ISR:
	push	acc
	push	ar2
	push	ar3
	push	psw
	mov	psw,#0x00
;	main.c:431: SFRPAGE=0x10;
	mov	_SFRPAGE,#0x10
;	main.c:432: TF5H = 0; // Clear Timer5 interrupt flag
	clr	_TF5H
;	main.c:433: TMR5RL = RELOAD_10us; // Reload Timer5 for 10us intervals 
	mov	_TMR5RL,#0xC4
	mov	(_TMR5RL >> 8),#0xFF
;	main.c:435: pwm_counter++; 
	inc	_pwm_counter
	clr	a
	cjne	a,_pwm_counter,L020022?
	inc	(_pwm_counter + 1)
L020022?:
;	main.c:436: if (pwm_counter == 100){
	mov	a,#0x64
	cjne	a,_pwm_counter,L020023?
	clr	a
	cjne	a,(_pwm_counter + 1),L020023?
	sjmp	L020024?
L020023?:
	sjmp	L020002?
L020024?:
;	main.c:437: pwm_counter = 0; 
	clr	a
	mov	_pwm_counter,a
	mov	(_pwm_counter + 1),a
L020002?:
;	main.c:440: if (pwm_left > pwm_counter){
	mov	r2,_pwm_left
	mov	r3,#0x00
	clr	c
	mov	a,_pwm_counter
	subb	a,r2
	mov	a,(_pwm_counter + 1)
	subb	a,r3
	jnc	L020007?
;	main.c:441: if(L_motor_dir){
	mov	a,_L_motor_dir
	jz	L020004?
;	main.c:442: L_bridge_1 = 1; 
	setb	_P2_1
;	main.c:443: L_bridge_2 = 0; 
	clr	_P2_2
	sjmp	L020008?
L020004?:
;	main.c:446: L_bridge_1 = 0; 
	clr	_P2_1
;	main.c:447: L_bridge_2 = 1; 
	setb	_P2_2
	sjmp	L020008?
L020007?:
;	main.c:451: L_bridge_1 = 0; 
	clr	_P2_1
;	main.c:452: L_bridge_2 = 0; 
	clr	_P2_2
L020008?:
;	main.c:454: if (pwm_right > pwm_counter){
	mov	r2,_pwm_right
	mov	r3,#0x00
	clr	c
	mov	a,_pwm_counter
	subb	a,r2
	mov	a,(_pwm_counter + 1)
	subb	a,r3
	jnc	L020013?
;	main.c:455: if (R_motor_dir){
	mov	a,_R_motor_dir
	jz	L020010?
;	main.c:456: R_bridge_1 = 1; 
	setb	_P2_4
;	main.c:457: R_bridge_2 = 0;
	clr	_P2_3
	sjmp	L020015?
L020010?:
;	main.c:460: R_bridge_1 = 0; 
	clr	_P2_4
;	main.c:461: R_bridge_2 = 1;
	setb	_P2_3
	sjmp	L020015?
L020013?:
;	main.c:465: R_bridge_1 = 0; 
	clr	_P2_4
;	main.c:466: R_bridge_2 = 0; 
	clr	_P2_3
L020015?:
	pop	psw
	pop	ar3
	pop	ar2
	pop	acc
	reti
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;------------------------------------------------------------
;Allocation info for local variables in function 'Timer0_ISR'
;------------------------------------------------------------
;------------------------------------------------------------
;	main.c:470: void Timer0_ISR (void) interrupt INTERRUPT_TIMER0
;	-----------------------------------------
;	 function Timer0_ISR
;	-----------------------------------------
_Timer0_ISR:
	push	acc
	push	ar2
	push	ar3
	push	psw
	mov	psw,#0x00
;	main.c:472: SFRPAGE=0x0;
	mov	_SFRPAGE,#0x00
;	main.c:474: TMR0 = 0x10000L-(SYSCLK/(TIMER_0_FREQ));
	mov	_TMR0,#0x60
	mov	(_TMR0 >> 8),#0x73
;	main.c:476: servo_counter++;
	inc	_servo_counter
	clr	a
	cjne	a,_servo_counter,L021014?
	inc	(_servo_counter + 1)
L021014?:
;	main.c:477: if(servo_counter==1000)
	mov	a,#0xE8
	cjne	a,_servo_counter,L021002?
	mov	a,#0x03
	cjne	a,(_servo_counter + 1),L021002?
;	main.c:479: servo_counter=0;
	clr	a
	mov	_servo_counter,a
	mov	(_servo_counter + 1),a
L021002?:
;	main.c:481: if (servo_base_pwm > servo_counter)
	mov	r2,_servo_base_pwm
	mov	r3,#0x00
	clr	c
	mov	a,_servo_counter
	subb	a,r2
	mov	a,(_servo_counter + 1)
	subb	a,r3
	jnc	L021004?
;	main.c:483: Servo_base = 1; 
	setb	_P0_2
	sjmp	L021005?
L021004?:
;	main.c:486: Servo_base = 0;
	clr	_P0_2
L021005?:
;	main.c:488: if (servo_arm_pwm > servo_counter)
	mov	r2,_servo_arm_pwm
	mov	r3,#0x00
	clr	c
	mov	a,_servo_counter
	subb	a,r2
	mov	a,(_servo_counter + 1)
	subb	a,r3
	jnc	L021007?
;	main.c:490: Servo_arm = 1; 
	setb	_P0_3
	sjmp	L021009?
L021007?:
;	main.c:493: Servo_arm = 0; 
	clr	_P0_3
L021009?:
	pop	psw
	pop	ar3
	pop	ar2
	pop	acc
	reti
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;------------------------------------------------------------
;Allocation info for local variables in function 'Calibrate_Joystick'
;------------------------------------------------------------
;i                         Allocated to registers r2 r3 
;------------------------------------------------------------
;	main.c:529: void Calibrate_Joystick(void)
;	-----------------------------------------
;	 function Calibrate_Joystick
;	-----------------------------------------
_Calibrate_Joystick:
;	main.c:532: printf("Calibration Starts\r");
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
;	main.c:533: for (i = 0; (i<10) && (((155<=vx)&&(vx<=170))||((155<=vy)&&(vy<=170))); i++){
	mov	r2,#0x00
	mov	r3,#0x00
L022005?:
	clr	c
	mov	a,r2
	subb	a,#0x0A
	mov	a,r3
	xrl	a,#0x80
	subb	a,#0x80
	jnc	L022008?
	clr	c
	mov	a,_vx
	subb	a,#0x9B
	mov	a,(_vx + 1)
	xrl	a,#0x80
	subb	a,#0x80
	jc	L022003?
	mov	a,#0xAA
	subb	a,_vx
	clr	a
	xrl	a,#0x80
	mov	b,(_vx + 1)
	xrl	b,#0x80
	subb	a,b
	jnc	L022006?
L022003?:
	clr	c
	mov	a,_vy
	subb	a,#0x9B
	mov	a,(_vy + 1)
	xrl	a,#0x80
	subb	a,#0x80
	jc	L022008?
	mov	a,#0xAA
	subb	a,_vy
	clr	a
	xrl	a,#0x80
	mov	b,(_vy + 1)
	xrl	b,#0x80
	subb	a,b
	jc	L022008?
L022006?:
;	main.c:534: vx_thres += vx; 
	mov	a,_vx
	add	a,_vx_thres
	mov	_vx_thres,a
	mov	a,(_vx + 1)
	addc	a,(_vx_thres + 1)
	mov	(_vx_thres + 1),a
;	main.c:535: vy_thres += vy; 
	mov	a,_vy
	add	a,_vy_thres
	mov	_vy_thres,a
	mov	a,(_vy + 1)
	addc	a,(_vy_thres + 1)
	mov	(_vy_thres + 1),a
;	main.c:533: for (i = 0; (i<10) && (((155<=vx)&&(vx<=170))||((155<=vy)&&(vy<=170))); i++){
	inc	r2
	cjne	r2,#0x00,L022005?
	inc	r3
	sjmp	L022005?
L022008?:
;	main.c:537: vx_thres = vx_thres / 10; 
	mov	__divsint_PARM_2,#0x0A
	clr	a
	mov	(__divsint_PARM_2 + 1),a
	mov	dpl,_vx_thres
	mov	dph,(_vx_thres + 1)
	lcall	__divsint
	mov	_vx_thres,dpl
	mov	(_vx_thres + 1),dph
;	main.c:538: vy_thres = vy_thres / 10; 
	mov	__divsint_PARM_2,#0x0A
	clr	a
	mov	(__divsint_PARM_2 + 1),a
	mov	dpl,_vy_thres
	mov	dph,(_vy_thres + 1)
	lcall	__divsint
	mov	_vy_thres,dpl
	mov	(_vy_thres + 1),dph
;	main.c:539: waitms(10);
	mov	dptr,#0x000A
	lcall	_waitms
;	main.c:540: printf("Calibration Complete: Vx_ca = %d, Vy_ca = %d", vx_thres, vy_thres);
	push	_vy_thres
	push	(_vy_thres + 1)
	push	_vx_thres
	push	(_vx_thres + 1)
	mov	a,#__str_4
	push	acc
	mov	a,#(__str_4 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;cnt                       Allocated to registers 
;c                         Allocated to registers r4 
;vx_error                  Allocated with name '_main_vx_error_1_132'
;vy_error                  Allocated with name '_main_vy_error_1_132'
;------------------------------------------------------------
;	main.c:543: void main (void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	main.c:549: waitms(500);
	mov	dptr,#0x01F4
	lcall	_waitms
;	main.c:550: printf("\r\nEFM8LB12 JDY-40 Slave Test.\r\n");
	mov	a,#__str_5
	push	acc
	mov	a,#(__str_5 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	main.c:551: UART1_Init(9600);
	mov	dptr,#0x2580
	clr	a
	mov	b,a
	lcall	_UART1_Init
;	main.c:553: ReceptionOff();
	lcall	_ReceptionOff
;	main.c:556: SendATCommand("AT+VER\r\n");
	mov	dptr,#__str_6
	mov	b,#0x80
	lcall	_SendATCommand
;	main.c:557: SendATCommand("AT+BAUD\r\n");
	mov	dptr,#__str_7
	mov	b,#0x80
	lcall	_SendATCommand
;	main.c:558: SendATCommand("AT+RFID\r\n");
	mov	dptr,#__str_8
	mov	b,#0x80
	lcall	_SendATCommand
;	main.c:559: SendATCommand("AT+DVID\r\n");
	mov	dptr,#__str_9
	mov	b,#0x80
	lcall	_SendATCommand
;	main.c:560: SendATCommand("AT+RFC\r\n");
	mov	dptr,#__str_10
	mov	b,#0x80
	lcall	_SendATCommand
;	main.c:561: SendATCommand("AT+POWE\r\n");
	mov	dptr,#__str_11
	mov	b,#0x80
	lcall	_SendATCommand
;	main.c:562: SendATCommand("AT+CLSS\r\n");
	mov	dptr,#__str_12
	mov	b,#0x80
	lcall	_SendATCommand
;	main.c:563: SendATCommand("AT+DVIDEFEF\r\n");  
	mov	dptr,#__str_13
	mov	b,#0x80
	lcall	_SendATCommand
;	main.c:566: L_bridge_1 = 0; 
	clr	_P2_1
;	main.c:567: L_bridge_2 = 0; 
	clr	_P2_2
;	main.c:568: R_bridge_1 = 0; 
	clr	_P2_4
;	main.c:569: R_bridge_2 = 0; 
	clr	_P2_3
;	main.c:570: Calibrate_Joystick();
	lcall	_Calibrate_Joystick
;	main.c:573: while(1)
	mov	r2,#0x00
	mov	r3,#0x00
L023024?:
;	main.c:575: Set_Pin_Output(0x24);
	mov	dpl,#0x24
	push	ar2
	push	ar3
	lcall	_Set_Pin_Output
;	main.c:576: Set_Pin_Output(0x23);
	mov	dpl,#0x23
	lcall	_Set_Pin_Output
;	main.c:577: Set_Pin_Output(0x22);
	mov	dpl,#0x22
	lcall	_Set_Pin_Output
;	main.c:578: Set_Pin_Output(0x21);
	mov	dpl,#0x21
	lcall	_Set_Pin_Output
;	main.c:579: Set_Pin_Input(0x17);
	mov	dpl,#0x17
	lcall	_Set_Pin_Input
;	main.c:582: if(RXU1()) // Something has arrived
	lcall	_RXU1
	clr	a
	rlc	a
	pop	ar3
	pop	ar2
	jz	L023024?
;	main.c:584: c=getchar1();
	push	ar2
	push	ar3
	lcall	_getchar1
	mov	r4,dpl
	pop	ar3
	pop	ar2
;	main.c:586: if(c=='!') // Master is sending message
	cjne	r4,#0x21,L023040?
	sjmp	L023041?
L023040?:
	ljmp	L023019?
L023041?:
;	main.c:588: getstr1(buff, sizeof(buff)-1);
	mov	_getstr1_PARM_2,#0x13
	mov	dptr,#_buff
	mov	b,#0x40
	push	ar2
	push	ar3
	lcall	_getstr1
;	main.c:589: if(strlen(buff)==7)
	mov	dptr,#_buff
	mov	b,#0x40
	lcall	_strlen
	mov	r5,dpl
	mov	r6,dph
	pop	ar3
	pop	ar2
	cjne	r5,#0x07,L023042?
	cjne	r6,#0x00,L023042?
	sjmp	L023043?
L023042?:
	ljmp	L023014?
L023043?:
;	main.c:593: sscanf(buff, "%03d,%03d", &vx, &vy);
	push	ar2
	push	ar3
	mov	a,#_vy
	push	acc
	mov	a,#(_vy >> 8)
	push	acc
	mov	a,#0x40
	push	acc
	mov	a,#_vx
	push	acc
	mov	a,#(_vx >> 8)
	push	acc
	mov	a,#0x40
	push	acc
	mov	a,#__str_14
	push	acc
	mov	a,#(__str_14 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	a,#_buff
	push	acc
	mov	a,#(_buff >> 8)
	push	acc
	mov	a,#0x40
	push	acc
	lcall	_sscanf
	mov	a,sp
	add	a,#0xf4
	mov	sp,a
;	main.c:595: printf("Joystick Received: Vx = %03d, Vy = %03d\r\n", vx, vy);
	push	_vy
	push	(_vy + 1)
	push	_vx
	push	(_vx + 1)
	mov	a,#__str_15
	push	acc
	mov	a,#(__str_15 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
;	main.c:598: vx_error = abs(vx-vx_thres)*100/vx_thres; 
	mov	a,_vx
	clr	c
	subb	a,_vx_thres
	mov	dpl,a
	mov	a,(_vx + 1)
	subb	a,(_vx_thres + 1)
	mov	dph,a
	lcall	_abs
	mov	__mulint_PARM_2,dpl
	mov	(__mulint_PARM_2 + 1),dph
	mov	dptr,#0x0064
	lcall	__mulint
	mov	__divsint_PARM_2,_vx_thres
	mov	(__divsint_PARM_2 + 1),(_vx_thres + 1)
	lcall	__divsint
	mov	_main_vx_error_1_132,dpl
	mov	(_main_vx_error_1_132 + 1),dph
;	main.c:599: vy_error = abs(vy-vy_thres)*100/vy_thres; 
	mov	a,_vy
	clr	c
	subb	a,_vy_thres
	mov	dpl,a
	mov	a,(_vy + 1)
	subb	a,(_vy_thres + 1)
	mov	dph,a
	lcall	_abs
	mov	__mulint_PARM_2,dpl
	mov	(__mulint_PARM_2 + 1),dph
	mov	dptr,#0x0064
	lcall	__mulint
	mov	__divsint_PARM_2,_vy_thres
	mov	(__divsint_PARM_2 + 1),(_vy_thres + 1)
	lcall	__divsint
	mov	_main_vy_error_1_132,dpl
	mov	(_main_vy_error_1_132 + 1),dph
	pop	ar3
	pop	ar2
;	main.c:601: if ((vy_error>5) && (vx_error<5)){
	clr	c
	mov	a,#0x05
	subb	a,_main_vy_error_1_132
	clr	a
	xrl	a,#0x80
	mov	b,(_main_vy_error_1_132 + 1)
	xrl	b,#0x80
	subb	a,b
	jnc	L023005?
	clr	c
	mov	a,_main_vx_error_1_132
	subb	a,#0x05
	mov	a,(_main_vx_error_1_132 + 1)
	xrl	a,#0x80
	subb	a,#0x80
	jnc	L023005?
;	main.c:602: pwm_left = vy_error; 
	mov	r7,_main_vy_error_1_132
	mov	_pwm_left,r7
;	main.c:603: pwm_right = vy_error; 
	mov	_pwm_right,r7
;	main.c:604: if ((vy-vy_thres) > 0){
	mov	a,_vy
	clr	c
	subb	a,_vy_thres
	mov	r7,a
	mov	a,(_vy + 1)
	subb	a,(_vy_thres + 1)
	mov	r5,a
	clr	c
	clr	a
	subb	a,r7
	clr	a
	xrl	a,#0x80
	mov	b,r5
	xrl	b,#0x80
	subb	a,b
	jnc	L023002?
;	main.c:605: L_motor_dir = 0; 
	mov	_L_motor_dir,#0x00
;	main.c:606: R_motor_dir = 0; 
	mov	_R_motor_dir,#0x00
	sjmp	L023005?
L023002?:
;	main.c:609: L_motor_dir = 1; 
	mov	_L_motor_dir,#0x01
;	main.c:610: R_motor_dir = 1; 
	mov	_R_motor_dir,#0x01
L023005?:
;	main.c:613: if ((vx_error>5)&&(vy_error<5)){
	clr	c
	mov	a,#0x05
	subb	a,_main_vx_error_1_132
	clr	a
	xrl	a,#0x80
	mov	b,(_main_vx_error_1_132 + 1)
	xrl	b,#0x80
	subb	a,b
	jc	L023047?
	ljmp	L023024?
L023047?:
	clr	c
	mov	a,_main_vy_error_1_132
	subb	a,#0x05
	mov	a,(_main_vy_error_1_132 + 1)
	xrl	a,#0x80
	subb	a,#0x80
	jc	L023048?
	ljmp	L023024?
L023048?:
;	main.c:614: pwm_left = vx_error; 
	mov	r5,_main_vx_error_1_132
	mov	_pwm_left,r5
;	main.c:615: pwm_right = vx_error; 
	mov	_pwm_right,r5
;	main.c:616: if ((vx-vx_thres) > 0){
	mov	a,_vx
	clr	c
	subb	a,_vx_thres
	mov	r5,a
	mov	a,(_vx + 1)
	subb	a,(_vx_thres + 1)
	mov	r6,a
	clr	c
	clr	a
	subb	a,r5
	clr	a
	xrl	a,#0x80
	mov	b,r6
	xrl	b,#0x80
	subb	a,b
	jnc	L023008?
;	main.c:617: L_motor_dir = 1; 
	mov	_L_motor_dir,#0x01
;	main.c:618: R_motor_dir = 0; 
	mov	_R_motor_dir,#0x00
	ljmp	L023024?
L023008?:
;	main.c:621: L_motor_dir = 0; 
	mov	_L_motor_dir,#0x00
;	main.c:622: R_motor_dir = 1; 
	mov	_R_motor_dir,#0x01
	ljmp	L023024?
L023014?:
;	main.c:630: printf("*** BAD MESSAGE ***(%d): %s\r\n", buff,strlen(buff));
	mov	dptr,#_buff
	mov	b,#0x40
	push	ar2
	push	ar3
	lcall	_strlen
	mov	r5,dpl
	mov	r6,dph
	push	ar5
	push	ar6
	mov	a,#_buff
	push	acc
	mov	a,#(_buff >> 8)
	push	acc
	mov	a,#0x40
	push	acc
	mov	a,#__str_16
	push	acc
	mov	a,#(__str_16 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf8
	mov	sp,a
	pop	ar3
	pop	ar2
	ljmp	L023024?
L023019?:
;	main.c:636: else if(c=='@') // Master wants slave data
	cjne	r4,#0x40,L023050?
	sjmp	L023051?
L023050?:
	ljmp	L023024?
L023051?:
;	main.c:638: sprintf(buff, "%05u\n", cnt);
	push	ar2
	push	ar3
	push	ar2
	push	ar3
	mov	a,#__str_17
	push	acc
	mov	a,#(__str_17 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	a,#_buff
	push	acc
	mov	a,#(_buff >> 8)
	push	acc
	mov	a,#0x40
	push	acc
	lcall	_sprintf
	mov	a,sp
	add	a,#0xf8
	mov	sp,a
	pop	ar3
	pop	ar2
;	main.c:639: cnt++;
	inc	r2
	cjne	r2,#0x00,L023052?
	inc	r3
L023052?:
;	main.c:640: waitms(5); // The radio seems to need this delay...
	mov	dptr,#0x0005
	push	ar2
	push	ar3
	lcall	_waitms
;	main.c:641: sendstr1(buff);
	mov	dptr,#_buff
	mov	b,#0x40
	lcall	_sendstr1
	pop	ar3
	pop	ar2
	ljmp	L023024?
	rseg R_CSEG

	rseg R_XINIT

	rseg R_CONST
__str_0:
	db 'Command: %s'
	db 0x00
__str_1:
	db 'Response: %s'
	db 0x0D
	db 0x0A
	db 0x00
__str_2:
	db 'AT+DVID0000'
	db 0x0D
	db 0x0A
	db 0x00
__str_3:
	db 'Calibration Starts'
	db 0x0D
	db 0x00
__str_4:
	db 'Calibration Complete: Vx_ca = %d, Vy_ca = %d'
	db 0x00
__str_5:
	db 0x0D
	db 0x0A
	db 'EFM8LB12 JDY-40 Slave Test.'
	db 0x0D
	db 0x0A
	db 0x00
__str_6:
	db 'AT+VER'
	db 0x0D
	db 0x0A
	db 0x00
__str_7:
	db 'AT+BAUD'
	db 0x0D
	db 0x0A
	db 0x00
__str_8:
	db 'AT+RFID'
	db 0x0D
	db 0x0A
	db 0x00
__str_9:
	db 'AT+DVID'
	db 0x0D
	db 0x0A
	db 0x00
__str_10:
	db 'AT+RFC'
	db 0x0D
	db 0x0A
	db 0x00
__str_11:
	db 'AT+POWE'
	db 0x0D
	db 0x0A
	db 0x00
__str_12:
	db 'AT+CLSS'
	db 0x0D
	db 0x0A
	db 0x00
__str_13:
	db 'AT+DVIDEFEF'
	db 0x0D
	db 0x0A
	db 0x00
__str_14:
	db '%03d,%03d'
	db 0x00
__str_15:
	db 'Joystick Received: Vx = %03d, Vy = %03d'
	db 0x0D
	db 0x0A
	db 0x00
__str_16:
	db '*** BAD MESSAGE ***(%d): %s'
	db 0x0D
	db 0x0A
	db 0x00
__str_17:
	db '%05u'
	db 0x0A
	db 0x00

	CSEG

end
