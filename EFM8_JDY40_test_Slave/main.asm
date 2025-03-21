;--------------------------------------------------------
; File Created by C51
; Version 1.0.0 #1170 (Feb 16 2022) (MSVC)
<<<<<<< HEAD
; This file was generated Thu Mar 20 16:17:25 2025
=======
; This file was generated Thu Mar 20 15:47:15 2025
>>>>>>> b655f5c9a892f6372ff4745865e70964c4261ea7
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
<<<<<<< HEAD
	public _Servo_pick
	public _TurnLeft
	public _TurnRight
	public _MoveBackward
	public _MoveForward
=======
	public _Calibrate_Joystick
>>>>>>> b655f5c9a892f6372ff4745865e70964c4261ea7
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
	public _servo_arm
	public _servo_base
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
_servo_base:
	ds 1
_servo_arm:
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
<<<<<<< HEAD
_main_vx_1_136:
	ds 2
_main_vy_1_136:
	ds 2
_main_motor_pwm_1_136:
=======
_main_vx_error_1_130:
	ds 2
_main_vy_error_1_130:
	ds 2
_main_vx_err_1_130:
	ds 2
_main_vy_err_1_130:
	ds 2
_main_vx_1_130:
	ds 2
_main_vy_1_130:
>>>>>>> b655f5c9a892f6372ff4745865e70964c4261ea7
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
;	main.c:49: unsigned int pwm_counter = 0; 
	clr	a
	mov	_pwm_counter,a
	mov	(_pwm_counter + 1),a
;	main.c:50: unsigned int servo_counter = 0; 
	clr	a
	mov	_servo_counter,a
	mov	(_servo_counter + 1),a
;	main.c:51: unsigned char pwm_left = 0, pwm_right = 0; 
	mov	_pwm_left,#0x00
;	main.c:51: unsigned char L_motor_dir = 1, R_motor_dir = 1; // 1 - Forward, 0 - Backward
	mov	_pwm_right,#0x00
;	main.c:52: unsigned char servo_base = 1, servo_arm = 1; 
	mov	_L_motor_dir,#0x01
;	main.c:52: unsigned char L_motor_dir = 1, R_motor_dir = 1; // 1 - Forward, 0 - Backward
	mov	_R_motor_dir,#0x01
<<<<<<< HEAD
;	main.c:53: unsigned char servo_base = 1, servo_arm = 1; 
	mov	_servo_base,#0x01
;	main.c:53: 
	mov	_servo_arm,#0x01
=======
;	main.c:52: unsigned char servo_base = 100, servo_arm = 100; 
	mov	_servo_base,#0x64
;	main.c:52: unsigned char servo_base_pwm = 0, servo_arm_pwm = 0; 
	mov	_servo_arm,#0x64
;	main.c:53: int vx = 0, vy = 0; 
	mov	_servo_base_pwm,#0x00
;	main.c:53: unsigned char servo_base_pwm = 0, servo_arm_pwm = 0; 
	mov	_servo_arm_pwm,#0x00
;	main.c:54: int vx = 0, vy = 0; 
	clr	a
	mov	_vx,a
	mov	(_vx + 1),a
;	main.c:54: int vx_thres = 161, vy_thres = 166; 
	clr	a
	mov	_vy,a
	mov	(_vy + 1),a
;	main.c:55: 
	mov	_vx_thres,#0xA1
	clr	a
	mov	(_vx_thres + 1),a
;	main.c:55: int vx_thres = 161, vy_thres = 166; 
	mov	_vy_thres,#0xA6
	clr	a
	mov	(_vy_thres + 1),a
>>>>>>> b655f5c9a892f6372ff4745865e70964c4261ea7
	; The linker places a 'ret' at the end of segment R_DINIT.
;--------------------------------------------------------
; code
;--------------------------------------------------------
	rseg R_CSEG
;------------------------------------------------------------
;Allocation info for local variables in function '_c51_external_startup'
;------------------------------------------------------------
;------------------------------------------------------------
<<<<<<< HEAD
;	main.c:56: char _c51_external_startup (void)
=======
;	main.c:58: char _c51_external_startup (void)
>>>>>>> b655f5c9a892f6372ff4745865e70964c4261ea7
;	-----------------------------------------
;	 function _c51_external_startup
;	-----------------------------------------
__c51_external_startup:
	using	0
<<<<<<< HEAD
;	main.c:59: SFRPAGE = 0x00;
	mov	_SFRPAGE,#0x00
;	main.c:60: WDTCN = 0xDE; //First key
	mov	_WDTCN,#0xDE
;	main.c:61: WDTCN = 0xAD; //Second key
	mov	_WDTCN,#0xAD
;	main.c:63: VDM0CN=0x80;       // enable VDD monitor
	mov	_VDM0CN,#0x80
;	main.c:64: RSTSRC=0x02|0x04;  // Enable reset on missing clock detector and VDD
	mov	_RSTSRC,#0x06
;	main.c:71: SFRPAGE = 0x10;
	mov	_SFRPAGE,#0x10
;	main.c:72: PFE0CN  = 0x20; // SYSCLK < 75 MHz.
	mov	_PFE0CN,#0x20
;	main.c:73: SFRPAGE = 0x00;
	mov	_SFRPAGE,#0x00
;	main.c:94: CLKSEL = 0x00;
	mov	_CLKSEL,#0x00
;	main.c:95: CLKSEL = 0x00;
	mov	_CLKSEL,#0x00
;	main.c:96: while ((CLKSEL & 0x80) == 0);
L002001?:
	mov	a,_CLKSEL
	jnb	acc.7,L002001?
;	main.c:97: CLKSEL = 0x03;
	mov	_CLKSEL,#0x03
;	main.c:98: CLKSEL = 0x03;
	mov	_CLKSEL,#0x03
;	main.c:99: while ((CLKSEL & 0x80) == 0);
L002004?:
	mov	a,_CLKSEL
	jnb	acc.7,L002004?
;	main.c:104: P0MDOUT |= 0x11; // Enable UART0 TX (P0.4) and UART1 TX (P0.0) as push-pull outputs
	orl	_P0MDOUT,#0x11
;	main.c:105: P2MDOUT |= 0x01; // P2.0 in push-pull mode
	orl	_P2MDOUT,#0x01
;	main.c:106: XBR0     = 0x01; // Enable UART0 on P0.4(TX) and P0.5(RX)                     
	mov	_XBR0,#0x01
;	main.c:107: XBR1     = 0X00;
	mov	_XBR1,#0x00
;	main.c:108: XBR2     = 0x41; // Enable crossbar and uart 1
	mov	_XBR2,#0x41
;	main.c:114: SCON0 = 0x10;
	mov	_SCON0,#0x10
;	main.c:115: TH1 = 0x100-((SYSCLK/BAUDRATE)/(2L*12L));
	mov	_TH1,#0xE6
;	main.c:116: TL1 = TH1;      // Init Timer1
	mov	_TL1,_TH1
;	main.c:117: TMOD &= ~0xf0;  // TMOD: timer 1 in 8-bit auto-reload
	anl	_TMOD,#0x0F
;	main.c:118: TMOD |=  0x20;                       
	orl	_TMOD,#0x20
;	main.c:119: TR1 = 1; // START Timer1
	setb	_TR1
;	main.c:120: TI = 1;  // Indicate TX0 ready
	setb	_TI
;	main.c:122: P2_0=1; // 'set' pin to 1 is normal operation mode.
	setb	_P2_0
;	main.c:125: SFRPAGE=0x10;
	mov	_SFRPAGE,#0x10
;	main.c:126: TMR5CN0=0x00;
	mov	_TMR5CN0,#0x00
;	main.c:127: TMR5=0xffff;   // Set to reload immediately
	mov	_TMR5,#0xFF
	mov	(_TMR5 >> 8),#0xFF
;	main.c:128: EIE2|=0b_0000_1000; // Enable Timer5 interrupts
	orl	_EIE2,#0x08
;	main.c:129: TR5=1;         // Start Timer5 (TMR5CN0 is bit addressable)
	setb	_TR5
;	main.c:132: EA=1;  // Enable global interrupts
	setb	_EA
;	main.c:133: SFRPAGE=0x00;
	mov	_SFRPAGE,#0x00
;	main.c:135: return 0;
=======
;	main.c:61: SFRPAGE = 0x00;
	mov	_SFRPAGE,#0x00
;	main.c:62: WDTCN = 0xDE; //First key
	mov	_WDTCN,#0xDE
;	main.c:63: WDTCN = 0xAD; //Second key
	mov	_WDTCN,#0xAD
;	main.c:65: VDM0CN=0x80;       // enable VDD monitor
	mov	_VDM0CN,#0x80
;	main.c:66: RSTSRC=0x02|0x04;  // Enable reset on missing clock detector and VDD
	mov	_RSTSRC,#0x06
;	main.c:73: SFRPAGE = 0x10;
	mov	_SFRPAGE,#0x10
;	main.c:74: PFE0CN  = 0x20; // SYSCLK < 75 MHz.
	mov	_PFE0CN,#0x20
;	main.c:75: SFRPAGE = 0x00;
	mov	_SFRPAGE,#0x00
;	main.c:96: CLKSEL = 0x00;
	mov	_CLKSEL,#0x00
;	main.c:97: CLKSEL = 0x00;
	mov	_CLKSEL,#0x00
;	main.c:98: while ((CLKSEL & 0x80) == 0);
L002001?:
	mov	a,_CLKSEL
	jnb	acc.7,L002001?
;	main.c:99: CLKSEL = 0x03;
	mov	_CLKSEL,#0x03
;	main.c:100: CLKSEL = 0x03;
	mov	_CLKSEL,#0x03
;	main.c:101: while ((CLKSEL & 0x80) == 0);
L002004?:
	mov	a,_CLKSEL
	jnb	acc.7,L002004?
;	main.c:106: P0MDOUT |= 0x11; // Enable UART0 TX (P0.4) and UART1 TX (P0.0) as push-pull outputs
	orl	_P0MDOUT,#0x11
;	main.c:107: P2MDOUT |= 0x01; // P2.0 in push-pull mode
	orl	_P2MDOUT,#0x01
;	main.c:108: XBR0     = 0x01; // Enable UART0 on P0.4(TX) and P0.5(RX)                     
	mov	_XBR0,#0x01
;	main.c:109: XBR1     = 0X00;
	mov	_XBR1,#0x00
;	main.c:110: XBR2     = 0x41; // Enable crossbar and uart 1
	mov	_XBR2,#0x41
;	main.c:116: SCON0 = 0x10;
	mov	_SCON0,#0x10
;	main.c:117: TH1 = 0x100-((SYSCLK/BAUDRATE)/(2L*12L));
	mov	_TH1,#0xE6
;	main.c:118: TL1 = TH1;      // Init Timer1
	mov	_TL1,_TH1
;	main.c:119: TMOD &= ~0xf0;  // TMOD: timer 1 in 8-bit auto-reload
	anl	_TMOD,#0x0F
;	main.c:120: TMOD |=  0x20;                       
	orl	_TMOD,#0x20
;	main.c:121: TR1 = 1; // START Timer1
	setb	_TR1
;	main.c:122: TI = 1;  // Indicate TX0 ready
	setb	_TI
;	main.c:124: P2_0=1; // 'set' pin to 1 is normal operation mode.
	setb	_P2_0
;	main.c:127: SFRPAGE=0x10;
	mov	_SFRPAGE,#0x10
;	main.c:128: TMR5CN0=0x00;
	mov	_TMR5CN0,#0x00
;	main.c:129: TMR5=0xffff;   // Set to reload immediately
	mov	_TMR5,#0xFF
	mov	(_TMR5 >> 8),#0xFF
;	main.c:130: EIE2|=0b_0000_1000; // Enable Timer5 interrupts
	orl	_EIE2,#0x08
;	main.c:131: TR5=1;         // Start Timer5 (TMR5CN0 is bit addressable)
	setb	_TR5
;	main.c:134: EA=1;  // Enable global interrupts
	setb	_EA
;	main.c:135: SFRPAGE=0x00;
	mov	_SFRPAGE,#0x00
;	main.c:137: return 0;
>>>>>>> b655f5c9a892f6372ff4745865e70964c4261ea7
	mov	dpl,#0x00
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Timer3us'
;------------------------------------------------------------
;us                        Allocated to registers r2 
;i                         Allocated to registers r3 
;------------------------------------------------------------
<<<<<<< HEAD
;	main.c:139: void Timer3us(unsigned char us)
=======
;	main.c:141: void Timer3us(unsigned char us)
>>>>>>> b655f5c9a892f6372ff4745865e70964c4261ea7
;	-----------------------------------------
;	 function Timer3us
;	-----------------------------------------
_Timer3us:
	mov	r2,dpl
<<<<<<< HEAD
;	main.c:144: CKCON0|=0b_0100_0000;
	orl	_CKCON0,#0x40
;	main.c:146: TMR3RL = (-(SYSCLK)/1000000L); // Set Timer3 to overflow in 1us.
	mov	_TMR3RL,#0xB8
	mov	(_TMR3RL >> 8),#0xFF
;	main.c:147: TMR3 = TMR3RL;                 // Initialize Timer3 for first overflow
	mov	_TMR3,_TMR3RL
	mov	(_TMR3 >> 8),(_TMR3RL >> 8)
;	main.c:149: TMR3CN0 = 0x04;                 // Sart Timer3 and clear overflow flag
	mov	_TMR3CN0,#0x04
;	main.c:150: for (i = 0; i < us; i++)       // Count <us> overflows
=======
;	main.c:146: CKCON0|=0b_0100_0000;
	orl	_CKCON0,#0x40
;	main.c:148: TMR3RL = (-(SYSCLK)/1000000L); // Set Timer3 to overflow in 1us.
	mov	_TMR3RL,#0xB8
	mov	(_TMR3RL >> 8),#0xFF
;	main.c:149: TMR3 = TMR3RL;                 // Initialize Timer3 for first overflow
	mov	_TMR3,_TMR3RL
	mov	(_TMR3 >> 8),(_TMR3RL >> 8)
;	main.c:151: TMR3CN0 = 0x04;                 // Sart Timer3 and clear overflow flag
	mov	_TMR3CN0,#0x04
;	main.c:152: for (i = 0; i < us; i++)       // Count <us> overflows
>>>>>>> b655f5c9a892f6372ff4745865e70964c4261ea7
	mov	r3,#0x00
L003004?:
	clr	c
	mov	a,r3
	subb	a,r2
	jnc	L003007?
<<<<<<< HEAD
;	main.c:152: while (!(TMR3CN0 & 0x80));  // Wait for overflow
L003001?:
	mov	a,_TMR3CN0
	jnb	acc.7,L003001?
;	main.c:153: TMR3CN0 &= ~(0x80);         // Clear overflow indicator
	anl	_TMR3CN0,#0x7F
;	main.c:150: for (i = 0; i < us; i++)       // Count <us> overflows
	inc	r3
	sjmp	L003004?
L003007?:
;	main.c:155: TMR3CN0 = 0 ;                   // Stop Timer3 and clear overflow flag
=======
;	main.c:154: while (!(TMR3CN0 & 0x80));  // Wait for overflow
L003001?:
	mov	a,_TMR3CN0
	jnb	acc.7,L003001?
;	main.c:155: TMR3CN0 &= ~(0x80);         // Clear overflow indicator
	anl	_TMR3CN0,#0x7F
;	main.c:152: for (i = 0; i < us; i++)       // Count <us> overflows
	inc	r3
	sjmp	L003004?
L003007?:
;	main.c:157: TMR3CN0 = 0 ;                   // Stop Timer3 and clear overflow flag
>>>>>>> b655f5c9a892f6372ff4745865e70964c4261ea7
	mov	_TMR3CN0,#0x00
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'waitms'
;------------------------------------------------------------
;ms                        Allocated to registers r2 r3 
;j                         Allocated to registers r4 r5 
;k                         Allocated to registers r6 
;------------------------------------------------------------
<<<<<<< HEAD
;	main.c:158: void waitms (unsigned int ms)
=======
;	main.c:160: void waitms (unsigned int ms)
>>>>>>> b655f5c9a892f6372ff4745865e70964c4261ea7
;	-----------------------------------------
;	 function waitms
;	-----------------------------------------
_waitms:
	mov	r2,dpl
	mov	r3,dph
<<<<<<< HEAD
;	main.c:162: for(j=0; j<ms; j++)
=======
;	main.c:164: for(j=0; j<ms; j++)
>>>>>>> b655f5c9a892f6372ff4745865e70964c4261ea7
	mov	r4,#0x00
	mov	r5,#0x00
L004005?:
	clr	c
	mov	a,r4
	subb	a,r2
	mov	a,r5
	subb	a,r3
	jnc	L004009?
<<<<<<< HEAD
;	main.c:163: for (k=0; k<4; k++) Timer3us(250);
=======
;	main.c:165: for (k=0; k<4; k++) Timer3us(250);
>>>>>>> b655f5c9a892f6372ff4745865e70964c4261ea7
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
<<<<<<< HEAD
;	main.c:162: for(j=0; j<ms; j++)
=======
;	main.c:164: for(j=0; j<ms; j++)
>>>>>>> b655f5c9a892f6372ff4745865e70964c4261ea7
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
<<<<<<< HEAD
;	main.c:166: void UART1_Init (unsigned long baudrate)
=======
;	main.c:168: void UART1_Init (unsigned long baudrate)
>>>>>>> b655f5c9a892f6372ff4745865e70964c4261ea7
;	-----------------------------------------
;	 function UART1_Init
;	-----------------------------------------
_UART1_Init:
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
<<<<<<< HEAD
;	main.c:168: SFRPAGE = 0x20;
	mov	_SFRPAGE,#0x20
;	main.c:169: SMOD1 = 0x0C; // no parity, 8 data bits, 1 stop bit
	mov	_SMOD1,#0x0C
;	main.c:170: SCON1 = 0x10;
	mov	_SCON1,#0x10
;	main.c:171: SBCON1 =0x00;   // disable baud rate generator
	mov	_SBCON1,#0x00
;	main.c:172: SBRL1 = 0x10000L-((SYSCLK/baudrate)/(12L*2L));
=======
;	main.c:170: SFRPAGE = 0x20;
	mov	_SFRPAGE,#0x20
;	main.c:171: SMOD1 = 0x0C; // no parity, 8 data bits, 1 stop bit
	mov	_SMOD1,#0x0C
;	main.c:172: SCON1 = 0x10;
	mov	_SCON1,#0x10
;	main.c:173: SBCON1 =0x00;   // disable baud rate generator
	mov	_SBCON1,#0x00
;	main.c:174: SBRL1 = 0x10000L-((SYSCLK/baudrate)/(12L*2L));
>>>>>>> b655f5c9a892f6372ff4745865e70964c4261ea7
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
<<<<<<< HEAD
;	main.c:173: TI1 = 1; // indicate ready for TX
	setb	_TI1
;	main.c:174: SBCON1 |= 0x40;   // enable baud rate generator
	orl	_SBCON1,#0x40
;	main.c:175: SFRPAGE = 0x00;
=======
;	main.c:175: TI1 = 1; // indicate ready for TX
	setb	_TI1
;	main.c:176: SBCON1 |= 0x40;   // enable baud rate generator
	orl	_SBCON1,#0x40
;	main.c:177: SFRPAGE = 0x00;
>>>>>>> b655f5c9a892f6372ff4745865e70964c4261ea7
	mov	_SFRPAGE,#0x00
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'putchar1'
;------------------------------------------------------------
;c                         Allocated to registers r2 
;------------------------------------------------------------
<<<<<<< HEAD
;	main.c:178: void putchar1 (char c) 
=======
;	main.c:180: void putchar1 (char c) 
>>>>>>> b655f5c9a892f6372ff4745865e70964c4261ea7
;	-----------------------------------------
;	 function putchar1
;	-----------------------------------------
_putchar1:
	mov	r2,dpl
<<<<<<< HEAD
;	main.c:180: SFRPAGE = 0x20;
	mov	_SFRPAGE,#0x20
;	main.c:181: while (!TI1);
L006001?:
;	main.c:182: TI1=0;
	jbc	_TI1,L006008?
	sjmp	L006001?
L006008?:
;	main.c:183: SBUF1 = c;
	mov	_SBUF1,r2
;	main.c:184: SFRPAGE = 0x00;
=======
;	main.c:182: SFRPAGE = 0x20;
	mov	_SFRPAGE,#0x20
;	main.c:183: while (!TI1);
L006001?:
;	main.c:184: TI1=0;
	jbc	_TI1,L006008?
	sjmp	L006001?
L006008?:
;	main.c:185: SBUF1 = c;
	mov	_SBUF1,r2
;	main.c:186: SFRPAGE = 0x00;
>>>>>>> b655f5c9a892f6372ff4745865e70964c4261ea7
	mov	_SFRPAGE,#0x00
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'sendstr1'
;------------------------------------------------------------
;s                         Allocated to registers r2 r3 r4 
;------------------------------------------------------------
<<<<<<< HEAD
;	main.c:187: void sendstr1 (char * s)
=======
;	main.c:189: void sendstr1 (char * s)
>>>>>>> b655f5c9a892f6372ff4745865e70964c4261ea7
;	-----------------------------------------
;	 function sendstr1
;	-----------------------------------------
_sendstr1:
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
<<<<<<< HEAD
;	main.c:189: while(*s)
=======
;	main.c:191: while(*s)
>>>>>>> b655f5c9a892f6372ff4745865e70964c4261ea7
L007001?:
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r5,a
	jz	L007004?
<<<<<<< HEAD
;	main.c:191: putchar1(*s);
=======
;	main.c:193: putchar1(*s);
>>>>>>> b655f5c9a892f6372ff4745865e70964c4261ea7
	mov	dpl,r5
	push	ar2
	push	ar3
	push	ar4
	lcall	_putchar1
	pop	ar4
	pop	ar3
	pop	ar2
<<<<<<< HEAD
;	main.c:192: s++;	
=======
;	main.c:194: s++;	
>>>>>>> b655f5c9a892f6372ff4745865e70964c4261ea7
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
<<<<<<< HEAD
;	main.c:196: char getchar1 (void)
=======
;	main.c:198: char getchar1 (void)
>>>>>>> b655f5c9a892f6372ff4745865e70964c4261ea7
;	-----------------------------------------
;	 function getchar1
;	-----------------------------------------
_getchar1:
<<<<<<< HEAD
;	main.c:199: SFRPAGE = 0x20;
	mov	_SFRPAGE,#0x20
;	main.c:200: while (!RI1);
L008001?:
;	main.c:201: RI1=0;
	jbc	_RI1,L008008?
	sjmp	L008001?
L008008?:
;	main.c:203: SCON1&=0b_0011_1111;
	anl	_SCON1,#0x3F
;	main.c:204: c = SBUF1;
	mov	dpl,_SBUF1
;	main.c:205: SFRPAGE = 0x00;
	mov	_SFRPAGE,#0x00
;	main.c:206: return (c);
=======
;	main.c:201: SFRPAGE = 0x20;
	mov	_SFRPAGE,#0x20
;	main.c:202: while (!RI1);
L008001?:
;	main.c:203: RI1=0;
	jbc	_RI1,L008008?
	sjmp	L008001?
L008008?:
;	main.c:205: SCON1&=0b_0011_1111;
	anl	_SCON1,#0x3F
;	main.c:206: c = SBUF1;
	mov	dpl,_SBUF1
;	main.c:207: SFRPAGE = 0x00;
	mov	_SFRPAGE,#0x00
;	main.c:208: return (c);
>>>>>>> b655f5c9a892f6372ff4745865e70964c4261ea7
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'getchar1_with_timeout'
;------------------------------------------------------------
;c                         Allocated to registers 
;timeout                   Allocated to registers r2 r3 
;------------------------------------------------------------
<<<<<<< HEAD
;	main.c:209: char getchar1_with_timeout (void)
=======
;	main.c:211: char getchar1_with_timeout (void)
>>>>>>> b655f5c9a892f6372ff4745865e70964c4261ea7
;	-----------------------------------------
;	 function getchar1_with_timeout
;	-----------------------------------------
_getchar1_with_timeout:
<<<<<<< HEAD
;	main.c:213: SFRPAGE = 0x20;
	mov	_SFRPAGE,#0x20
;	main.c:215: while (!RI1)
=======
;	main.c:215: SFRPAGE = 0x20;
	mov	_SFRPAGE,#0x20
;	main.c:217: while (!RI1)
>>>>>>> b655f5c9a892f6372ff4745865e70964c4261ea7
	mov	r2,#0x00
	mov	r3,#0x00
L009003?:
	jb	_RI1,L009005?
<<<<<<< HEAD
;	main.c:217: SFRPAGE = 0x00;
	mov	_SFRPAGE,#0x00
;	main.c:218: Timer3us(20);
=======
;	main.c:219: SFRPAGE = 0x00;
	mov	_SFRPAGE,#0x00
;	main.c:220: Timer3us(20);
>>>>>>> b655f5c9a892f6372ff4745865e70964c4261ea7
	mov	dpl,#0x14
	push	ar2
	push	ar3
	lcall	_Timer3us
	pop	ar3
	pop	ar2
<<<<<<< HEAD
;	main.c:219: SFRPAGE = 0x20;
	mov	_SFRPAGE,#0x20
;	main.c:220: timeout++;
=======
;	main.c:221: SFRPAGE = 0x20;
	mov	_SFRPAGE,#0x20
;	main.c:222: timeout++;
>>>>>>> b655f5c9a892f6372ff4745865e70964c4261ea7
	inc	r2
	cjne	r2,#0x00,L009012?
	inc	r3
L009012?:
<<<<<<< HEAD
;	main.c:221: if(timeout==25000)
	cjne	r2,#0xA8,L009003?
	cjne	r3,#0x61,L009003?
;	main.c:223: SFRPAGE = 0x00;
	mov	_SFRPAGE,#0x00
;	main.c:224: return ('\n'); // Timeout after half second
	mov	dpl,#0x0A
	ret
L009005?:
;	main.c:227: RI1=0;
	clr	_RI1
;	main.c:229: SCON1&=0b_0011_1111;
	anl	_SCON1,#0x3F
;	main.c:230: c = SBUF1;
	mov	dpl,_SBUF1
;	main.c:231: SFRPAGE = 0x00;
	mov	_SFRPAGE,#0x00
;	main.c:232: return (c);
=======
;	main.c:223: if(timeout==25000)
	cjne	r2,#0xA8,L009003?
	cjne	r3,#0x61,L009003?
;	main.c:225: SFRPAGE = 0x00;
	mov	_SFRPAGE,#0x00
;	main.c:226: return ('\n'); // Timeout after half second
	mov	dpl,#0x0A
	ret
L009005?:
;	main.c:229: RI1=0;
	clr	_RI1
;	main.c:231: SCON1&=0b_0011_1111;
	anl	_SCON1,#0x3F
;	main.c:232: c = SBUF1;
	mov	dpl,_SBUF1
;	main.c:233: SFRPAGE = 0x00;
	mov	_SFRPAGE,#0x00
;	main.c:234: return (c);
>>>>>>> b655f5c9a892f6372ff4745865e70964c4261ea7
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'getstr1'
;------------------------------------------------------------
;n                         Allocated with name '_getstr1_PARM_2'
;s                         Allocated to registers r2 r3 r4 
;c                         Allocated to registers r1 
;cnt                       Allocated to registers r5 
;------------------------------------------------------------
<<<<<<< HEAD
;	main.c:235: void getstr1 (char * s, unsigned char n)
=======
;	main.c:237: void getstr1 (char * s, unsigned char n)
>>>>>>> b655f5c9a892f6372ff4745865e70964c4261ea7
;	-----------------------------------------
;	 function getstr1
;	-----------------------------------------
_getstr1:
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
<<<<<<< HEAD
;	main.c:241: while(1)
=======
;	main.c:243: while(1)
>>>>>>> b655f5c9a892f6372ff4745865e70964c4261ea7
	mov	r5,#0x00
	mov	ar6,r2
	mov	ar7,r3
	mov	ar0,r4
L010007?:
<<<<<<< HEAD
;	main.c:243: c=getchar1_with_timeout();
=======
;	main.c:245: c=getchar1_with_timeout();
>>>>>>> b655f5c9a892f6372ff4745865e70964c4261ea7
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
<<<<<<< HEAD
;	main.c:244: if(c=='\n')
	cjne	r1,#0x0A,L010002?
;	main.c:246: *s=0;
=======
;	main.c:246: if(c=='\n')
	cjne	r1,#0x0A,L010002?
;	main.c:248: *s=0;
>>>>>>> b655f5c9a892f6372ff4745865e70964c4261ea7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	clr	a
<<<<<<< HEAD
;	main.c:247: return;
	ljmp	__gptrput
L010002?:
;	main.c:250: if (cnt<n)
=======
;	main.c:249: return;
	ljmp	__gptrput
L010002?:
;	main.c:252: if (cnt<n)
>>>>>>> b655f5c9a892f6372ff4745865e70964c4261ea7
	clr	c
	mov	a,r5
	subb	a,_getstr1_PARM_2
	jnc	L010004?
<<<<<<< HEAD
;	main.c:252: cnt++;
	inc	r5
;	main.c:253: *s=c;
=======
;	main.c:254: cnt++;
	inc	r5
;	main.c:255: *s=c;
>>>>>>> b655f5c9a892f6372ff4745865e70964c4261ea7
	mov	dpl,r6
	mov	dph,r7
	mov	b,r0
	mov	a,r1
	lcall	__gptrput
	inc	dptr
	mov	r6,dpl
	mov	r7,dph
<<<<<<< HEAD
;	main.c:254: s++;
=======
;	main.c:256: s++;
>>>>>>> b655f5c9a892f6372ff4745865e70964c4261ea7
	mov	ar2,r6
	mov	ar3,r7
	mov	ar4,r0
	sjmp	L010007?
L010004?:
<<<<<<< HEAD
;	main.c:258: *s=0;
=======
;	main.c:260: *s=0;
>>>>>>> b655f5c9a892f6372ff4745865e70964c4261ea7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	clr	a
<<<<<<< HEAD
;	main.c:259: return;
=======
;	main.c:261: return;
>>>>>>> b655f5c9a892f6372ff4745865e70964c4261ea7
	ljmp	__gptrput
;------------------------------------------------------------
;Allocation info for local variables in function 'RXU1'
;------------------------------------------------------------
;------------------------------------------------------------
<<<<<<< HEAD
;	main.c:265: bit RXU1 (void)
=======
;	main.c:267: bit RXU1 (void)
>>>>>>> b655f5c9a892f6372ff4745865e70964c4261ea7
;	-----------------------------------------
;	 function RXU1
;	-----------------------------------------
_RXU1:
<<<<<<< HEAD
;	main.c:268: SFRPAGE = 0x20;
	mov	_SFRPAGE,#0x20
;	main.c:269: mybit=RI1;
	mov	c,_RI1
;	main.c:270: SFRPAGE = 0x00;
	mov	_SFRPAGE,#0x00
;	main.c:271: return mybit;
=======
;	main.c:270: SFRPAGE = 0x20;
	mov	_SFRPAGE,#0x20
;	main.c:271: mybit=RI1;
	mov	c,_RI1
;	main.c:272: SFRPAGE = 0x00;
	mov	_SFRPAGE,#0x00
;	main.c:273: return mybit;
>>>>>>> b655f5c9a892f6372ff4745865e70964c4261ea7
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'waitms_or_RI1'
;------------------------------------------------------------
;ms                        Allocated to registers r2 r3 
;j                         Allocated to registers r4 r5 
;k                         Allocated to registers r6 
;------------------------------------------------------------
<<<<<<< HEAD
;	main.c:274: void waitms_or_RI1 (unsigned int ms)
=======
;	main.c:276: void waitms_or_RI1 (unsigned int ms)
>>>>>>> b655f5c9a892f6372ff4745865e70964c4261ea7
;	-----------------------------------------
;	 function waitms_or_RI1
;	-----------------------------------------
_waitms_or_RI1:
	mov	r2,dpl
	mov	r3,dph
<<<<<<< HEAD
;	main.c:278: for(j=0; j<ms; j++)
=======
;	main.c:280: for(j=0; j<ms; j++)
>>>>>>> b655f5c9a892f6372ff4745865e70964c4261ea7
	mov	r4,#0x00
	mov	r5,#0x00
L012007?:
	clr	c
	mov	a,r4
	subb	a,r2
	mov	a,r5
	subb	a,r3
	jnc	L012011?
<<<<<<< HEAD
;	main.c:280: for (k=0; k<4; k++)
=======
;	main.c:282: for (k=0; k<4; k++)
>>>>>>> b655f5c9a892f6372ff4745865e70964c4261ea7
	mov	r6,#0x00
L012003?:
	cjne	r6,#0x04,L012019?
L012019?:
	jnc	L012009?
<<<<<<< HEAD
;	main.c:282: if(RXU1()) return;
=======
;	main.c:284: if(RXU1()) return;
>>>>>>> b655f5c9a892f6372ff4745865e70964c4261ea7
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
<<<<<<< HEAD
;	main.c:283: Timer3us(250);
=======
;	main.c:285: Timer3us(250);
>>>>>>> b655f5c9a892f6372ff4745865e70964c4261ea7
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
<<<<<<< HEAD
;	main.c:280: for (k=0; k<4; k++)
	inc	r6
	sjmp	L012003?
L012009?:
;	main.c:278: for(j=0; j<ms; j++)
=======
;	main.c:282: for (k=0; k<4; k++)
	inc	r6
	sjmp	L012003?
L012009?:
;	main.c:280: for(j=0; j<ms; j++)
>>>>>>> b655f5c9a892f6372ff4745865e70964c4261ea7
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
<<<<<<< HEAD
;	main.c:288: void SendATCommand (char * s)
=======
;	main.c:290: void SendATCommand (char * s)
>>>>>>> b655f5c9a892f6372ff4745865e70964c4261ea7
;	-----------------------------------------
;	 function SendATCommand
;	-----------------------------------------
_SendATCommand:
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
<<<<<<< HEAD
;	main.c:290: printf("Command: %s", s);
=======
;	main.c:292: printf("Command: %s", s);
>>>>>>> b655f5c9a892f6372ff4745865e70964c4261ea7
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
<<<<<<< HEAD
;	main.c:291: P2_0=0; // 'set' pin to 0 is 'AT' mode.
	clr	_P2_0
;	main.c:292: waitms(5);
=======
;	main.c:293: P2_0=0; // 'set' pin to 0 is 'AT' mode.
	clr	_P2_0
;	main.c:294: waitms(5);
>>>>>>> b655f5c9a892f6372ff4745865e70964c4261ea7
	mov	dptr,#0x0005
	lcall	_waitms
	pop	ar4
	pop	ar3
	pop	ar2
<<<<<<< HEAD
;	main.c:293: sendstr1(s);
=======
;	main.c:295: sendstr1(s);
>>>>>>> b655f5c9a892f6372ff4745865e70964c4261ea7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_sendstr1
<<<<<<< HEAD
;	main.c:294: getstr1(buff, sizeof(buff)-1);
=======
;	main.c:296: getstr1(buff, sizeof(buff)-1);
>>>>>>> b655f5c9a892f6372ff4745865e70964c4261ea7
	mov	_getstr1_PARM_2,#0x13
	mov	dptr,#_buff
	mov	b,#0x40
	lcall	_getstr1
<<<<<<< HEAD
;	main.c:295: waitms(10);
	mov	dptr,#0x000A
	lcall	_waitms
;	main.c:296: P2_0=1; // 'set' pin to 1 is normal operation mode.
	setb	_P2_0
;	main.c:297: printf("Response: %s\r\n", buff);
=======
;	main.c:297: waitms(10);
	mov	dptr,#0x000A
	lcall	_waitms
;	main.c:298: P2_0=1; // 'set' pin to 1 is normal operation mode.
	setb	_P2_0
;	main.c:299: printf("Response: %s\r\n", buff);
>>>>>>> b655f5c9a892f6372ff4745865e70964c4261ea7
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
<<<<<<< HEAD
;	main.c:300: void ReceptionOff (void)
=======
;	main.c:302: void ReceptionOff (void)
>>>>>>> b655f5c9a892f6372ff4745865e70964c4261ea7
;	-----------------------------------------
;	 function ReceptionOff
;	-----------------------------------------
_ReceptionOff:
<<<<<<< HEAD
;	main.c:302: P2_0=0; // 'set' pin to 0 is 'AT' mode.
	clr	_P2_0
;	main.c:303: waitms(10);
	mov	dptr,#0x000A
	lcall	_waitms
;	main.c:304: sendstr1("AT+DVID0000\r\n"); // Some unused id, so that we get nothing in RXD1.
	mov	dptr,#__str_2
	mov	b,#0x80
	lcall	_sendstr1
;	main.c:305: waitms(10);
	mov	dptr,#0x000A
	lcall	_waitms
;	main.c:307: SCON1&=0b_0011_1111;
	anl	_SCON1,#0x3F
;	main.c:308: P2_0=1; // 'set' pin to 1 is normal operation mode.
=======
;	main.c:304: P2_0=0; // 'set' pin to 0 is 'AT' mode.
	clr	_P2_0
;	main.c:305: waitms(10);
	mov	dptr,#0x000A
	lcall	_waitms
;	main.c:306: sendstr1("AT+DVID0000\r\n"); // Some unused id, so that we get nothing in RXD1.
	mov	dptr,#__str_2
	mov	b,#0x80
	lcall	_sendstr1
;	main.c:307: waitms(10);
	mov	dptr,#0x000A
	lcall	_waitms
;	main.c:309: SCON1&=0b_0011_1111;
	anl	_SCON1,#0x3F
;	main.c:310: P2_0=1; // 'set' pin to 1 is normal operation mode.
>>>>>>> b655f5c9a892f6372ff4745865e70964c4261ea7
	setb	_P2_0
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Set_Pin_Output'
;------------------------------------------------------------
;pin                       Allocated to registers r2 
;mask                      Allocated to registers r3 
;------------------------------------------------------------
<<<<<<< HEAD
;	main.c:311: void Set_Pin_Output (unsigned char pin)
=======
;	main.c:313: void Set_Pin_Output (unsigned char pin)
>>>>>>> b655f5c9a892f6372ff4745865e70964c4261ea7
;	-----------------------------------------
;	 function Set_Pin_Output
;	-----------------------------------------
_Set_Pin_Output:
	mov	r2,dpl
<<<<<<< HEAD
;	main.c:315: mask=(1<<(pin&0x7));
=======
;	main.c:317: mask=(1<<(pin&0x7));
>>>>>>> b655f5c9a892f6372ff4745865e70964c4261ea7
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
<<<<<<< HEAD
;	main.c:316: switch(pin/0x10)
=======
;	main.c:318: switch(pin/0x10)
>>>>>>> b655f5c9a892f6372ff4745865e70964c4261ea7
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
<<<<<<< HEAD
;	main.c:318: case 0: P0MDOUT |= mask; break;
L015001?:
	mov	a,r3
	orl	_P0MDOUT,a
;	main.c:319: case 1: P1MDOUT |= mask; break;
=======
;	main.c:320: case 0: P0MDOUT |= mask; break;
L015001?:
	mov	a,r3
	orl	_P0MDOUT,a
;	main.c:321: case 1: P1MDOUT |= mask; break;
>>>>>>> b655f5c9a892f6372ff4745865e70964c4261ea7
	ret
L015002?:
	mov	a,r3
	orl	_P1MDOUT,a
<<<<<<< HEAD
;	main.c:320: case 2: P2MDOUT |= mask; break; 
=======
;	main.c:322: case 2: P2MDOUT |= mask; break; 
>>>>>>> b655f5c9a892f6372ff4745865e70964c4261ea7
	ret
L015003?:
	mov	a,r3
	orl	_P2MDOUT,a
<<<<<<< HEAD
;	main.c:321: case 3: P3MDOUT |= mask; break; 
=======
;	main.c:323: case 3: P3MDOUT |= mask; break; 
>>>>>>> b655f5c9a892f6372ff4745865e70964c4261ea7
	ret
L015004?:
	mov	a,r3
	orl	_P3MDOUT,a
<<<<<<< HEAD
;	main.c:322: }	
=======
;	main.c:324: }	
>>>>>>> b655f5c9a892f6372ff4745865e70964c4261ea7
L015006?:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Set_Pin_Input'
;------------------------------------------------------------
;mask                      Allocated with name '_Set_Pin_Input_mask_1_101'
;pin                       Allocated to registers r2 
;------------------------------------------------------------
<<<<<<< HEAD
;	main.c:325: void Set_Pin_Input (unsigned char pin)
=======
;	main.c:327: void Set_Pin_Input (unsigned char pin)
>>>>>>> b655f5c9a892f6372ff4745865e70964c4261ea7
;	-----------------------------------------
;	 function Set_Pin_Input
;	-----------------------------------------
_Set_Pin_Input:
	mov	r2,dpl
<<<<<<< HEAD
;	main.c:329: mask=(1<<(pin&0x7));
=======
;	main.c:331: mask=(1<<(pin&0x7));
>>>>>>> b655f5c9a892f6372ff4745865e70964c4261ea7
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
<<<<<<< HEAD
;	main.c:330: mask=~mask;
	cpl	a
	mov	r3,a
;	main.c:331: switch(pin/0x10)
=======
;	main.c:332: mask=~mask;
	cpl	a
	mov	r3,a
;	main.c:333: switch(pin/0x10)
>>>>>>> b655f5c9a892f6372ff4745865e70964c4261ea7
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
<<<<<<< HEAD
;	main.c:333: case 0: P0MDOUT &= mask; break;
L016001?:
	mov	a,r3
	anl	_P0MDOUT,a
;	main.c:334: case 1: P1MDOUT &= mask; break;
=======
;	main.c:335: case 0: P0MDOUT &= mask; break;
L016001?:
	mov	a,r3
	anl	_P0MDOUT,a
;	main.c:336: case 1: P1MDOUT &= mask; break;
>>>>>>> b655f5c9a892f6372ff4745865e70964c4261ea7
	ret
L016002?:
	mov	a,r3
	anl	_P1MDOUT,a
<<<<<<< HEAD
;	main.c:335: case 2: P2MDOUT &= mask; break; 
=======
;	main.c:337: case 2: P2MDOUT &= mask; break; 
>>>>>>> b655f5c9a892f6372ff4745865e70964c4261ea7
	ret
L016003?:
	mov	a,r3
	anl	_P2MDOUT,a
<<<<<<< HEAD
;	main.c:336: case 3: P3MDOUT &= mask; break; 
=======
;	main.c:338: case 3: P3MDOUT &= mask; break; 
>>>>>>> b655f5c9a892f6372ff4745865e70964c4261ea7
	ret
L016004?:
	mov	a,r3
	anl	_P3MDOUT,a
<<<<<<< HEAD
;	main.c:337: }	
=======
;	main.c:339: }	
>>>>>>> b655f5c9a892f6372ff4745865e70964c4261ea7
L016006?:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'InitADC'
;------------------------------------------------------------
;------------------------------------------------------------
<<<<<<< HEAD
;	main.c:340: void InitADC (void)
=======
;	main.c:342: void InitADC (void)
>>>>>>> b655f5c9a892f6372ff4745865e70964c4261ea7
;	-----------------------------------------
;	 function InitADC
;	-----------------------------------------
_InitADC:
<<<<<<< HEAD
;	main.c:342: SFRPAGE = 0x00;
	mov	_SFRPAGE,#0x00
;	main.c:343: ADEN=0; // Disable ADC
	clr	_ADEN
;	main.c:348: (0x0 << 0) ; // Accumulate n conversions: 0x0: 1, 0x1:4, 0x2:8, 0x3:16, 0x4:32
	mov	_ADC0CN1,#0x80
;	main.c:352: (0x0 << 2); // 0:SYSCLK ADCCLK = SYSCLK. 1:HFOSC0 ADCCLK = HFOSC0.
	mov	_ADC0CF0,#0x20
;	main.c:356: (0x1E << 0); // Conversion Tracking Time. Tadtk = ADTK / (Fsarclk)
	mov	_ADC0CF1,#0x1E
;	main.c:365: (0x0 << 0) ; // TEMPE. 0: Disable the Temperature Sensor. 1: Enable the Temperature Sensor.
	mov	_ADC0CN0,#0x00
;	main.c:370: (0x1F << 0); // ADPWR. Power Up Delay Time. Tpwrtime = ((4 * (ADPWR + 1)) + 2) / (Fadcclk)
	mov	_ADC0CF2,#0x3F
;	main.c:374: (0x0 << 0) ; // ADCM. 0x0: ADBUSY, 0x1: TIMER0, 0x2: TIMER2, 0x3: TIMER3, 0x4: CNVSTR, 0x5: CEX5, 0x6: TIMER4, 0x7: TIMER5, 0x8: CLU0, 0x9: CLU1, 0xA: CLU2, 0xB: CLU3
	mov	_ADC0CN2,#0x00
;	main.c:376: ADEN=1; // Enable ADC
=======
;	main.c:344: SFRPAGE = 0x00;
	mov	_SFRPAGE,#0x00
;	main.c:345: ADEN=0; // Disable ADC
	clr	_ADEN
;	main.c:350: (0x0 << 0) ; // Accumulate n conversions: 0x0: 1, 0x1:4, 0x2:8, 0x3:16, 0x4:32
	mov	_ADC0CN1,#0x80
;	main.c:354: (0x0 << 2); // 0:SYSCLK ADCCLK = SYSCLK. 1:HFOSC0 ADCCLK = HFOSC0.
	mov	_ADC0CF0,#0x20
;	main.c:358: (0x1E << 0); // Conversion Tracking Time. Tadtk = ADTK / (Fsarclk)
	mov	_ADC0CF1,#0x1E
;	main.c:367: (0x0 << 0) ; // TEMPE. 0: Disable the Temperature Sensor. 1: Enable the Temperature Sensor.
	mov	_ADC0CN0,#0x00
;	main.c:372: (0x1F << 0); // ADPWR. Power Up Delay Time. Tpwrtime = ((4 * (ADPWR + 1)) + 2) / (Fadcclk)
	mov	_ADC0CF2,#0x3F
;	main.c:376: (0x0 << 0) ; // ADCM. 0x0: ADBUSY, 0x1: TIMER0, 0x2: TIMER2, 0x3: TIMER3, 0x4: CNVSTR, 0x5: CEX5, 0x6: TIMER4, 0x7: TIMER5, 0x8: CLU0, 0x9: CLU1, 0xA: CLU2, 0xB: CLU3
	mov	_ADC0CN2,#0x00
;	main.c:378: ADEN=1; // Enable ADC
>>>>>>> b655f5c9a892f6372ff4745865e70964c4261ea7
	setb	_ADEN
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'InitPinADC'
;------------------------------------------------------------
;pin_num                   Allocated with name '_InitPinADC_PARM_2'
;portno                    Allocated to registers r2 
;mask                      Allocated to registers r3 
;------------------------------------------------------------
<<<<<<< HEAD
;	main.c:379: void InitPinADC (unsigned char portno, unsigned char pin_num)
=======
;	main.c:381: void InitPinADC (unsigned char portno, unsigned char pin_num)
>>>>>>> b655f5c9a892f6372ff4745865e70964c4261ea7
;	-----------------------------------------
;	 function InitPinADC
;	-----------------------------------------
_InitPinADC:
	mov	r2,dpl
<<<<<<< HEAD
;	main.c:383: mask=1<<pin_num;
=======
;	main.c:385: mask=1<<pin_num;
>>>>>>> b655f5c9a892f6372ff4745865e70964c4261ea7
	mov	b,_InitPinADC_PARM_2
	inc	b
	mov	a,#0x01
	sjmp	L018013?
L018011?:
	add	a,acc
L018013?:
	djnz	b,L018011?
	mov	r3,a
<<<<<<< HEAD
;	main.c:385: SFRPAGE = 0x20;
	mov	_SFRPAGE,#0x20
;	main.c:386: switch (portno)
=======
;	main.c:387: SFRPAGE = 0x20;
	mov	_SFRPAGE,#0x20
;	main.c:388: switch (portno)
>>>>>>> b655f5c9a892f6372ff4745865e70964c4261ea7
	cjne	r2,#0x00,L018014?
	sjmp	L018001?
L018014?:
	cjne	r2,#0x01,L018015?
	sjmp	L018002?
L018015?:
<<<<<<< HEAD
;	main.c:388: case 0:
	cjne	r2,#0x02,L018005?
	sjmp	L018003?
L018001?:
;	main.c:389: P0MDIN &= (~mask); // Set pin as analog input
=======
;	main.c:390: case 0:
	cjne	r2,#0x02,L018005?
	sjmp	L018003?
L018001?:
;	main.c:391: P0MDIN &= (~mask); // Set pin as analog input
>>>>>>> b655f5c9a892f6372ff4745865e70964c4261ea7
	mov	a,r3
	cpl	a
	mov	r2,a
	anl	_P0MDIN,a
<<<<<<< HEAD
;	main.c:390: P0SKIP |= mask; // Skip Crossbar decoding for this pin
	mov	a,r3
	orl	_P0SKIP,a
;	main.c:391: break;
;	main.c:392: case 1:
	sjmp	L018005?
L018002?:
;	main.c:393: P1MDIN &= (~mask); // Set pin as analog input
=======
;	main.c:392: P0SKIP |= mask; // Skip Crossbar decoding for this pin
	mov	a,r3
	orl	_P0SKIP,a
;	main.c:393: break;
;	main.c:394: case 1:
	sjmp	L018005?
L018002?:
;	main.c:395: P1MDIN &= (~mask); // Set pin as analog input
>>>>>>> b655f5c9a892f6372ff4745865e70964c4261ea7
	mov	a,r3
	cpl	a
	mov	r2,a
	anl	_P1MDIN,a
<<<<<<< HEAD
;	main.c:394: P1SKIP |= mask; // Skip Crossbar decoding for this pin
	mov	a,r3
	orl	_P1SKIP,a
;	main.c:395: break;
;	main.c:396: case 2:
	sjmp	L018005?
L018003?:
;	main.c:397: P2MDIN &= (~mask); // Set pin as analog input
=======
;	main.c:396: P1SKIP |= mask; // Skip Crossbar decoding for this pin
	mov	a,r3
	orl	_P1SKIP,a
;	main.c:397: break;
;	main.c:398: case 2:
	sjmp	L018005?
L018003?:
;	main.c:399: P2MDIN &= (~mask); // Set pin as analog input
>>>>>>> b655f5c9a892f6372ff4745865e70964c4261ea7
	mov	a,r3
	cpl	a
	mov	r2,a
	anl	_P2MDIN,a
<<<<<<< HEAD
;	main.c:398: P2SKIP |= mask; // Skip Crossbar decoding for this pin
	mov	a,r3
	orl	_P2SKIP,a
;	main.c:402: }
L018005?:
;	main.c:403: SFRPAGE = 0x00;
=======
;	main.c:400: P2SKIP |= mask; // Skip Crossbar decoding for this pin
	mov	a,r3
	orl	_P2SKIP,a
;	main.c:404: }
L018005?:
;	main.c:405: SFRPAGE = 0x00;
>>>>>>> b655f5c9a892f6372ff4745865e70964c4261ea7
	mov	_SFRPAGE,#0x00
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ADC_at_Pin'
;------------------------------------------------------------
;pin                       Allocated to registers 
;------------------------------------------------------------
<<<<<<< HEAD
;	main.c:406: unsigned int ADC_at_Pin(unsigned char pin)
=======
;	main.c:408: unsigned int ADC_at_Pin(unsigned char pin)
>>>>>>> b655f5c9a892f6372ff4745865e70964c4261ea7
;	-----------------------------------------
;	 function ADC_at_Pin
;	-----------------------------------------
_ADC_at_Pin:
	mov	_ADC0MX,dpl
<<<<<<< HEAD
;	main.c:409: ADINT = 0;
	clr	_ADINT
;	main.c:410: ADBUSY = 1;     // Convert voltage at the pin
	setb	_ADBUSY
;	main.c:411: while (!ADINT); // Wait for conversion to complete
L019001?:
	jnb	_ADINT,L019001?
;	main.c:412: return (ADC0);
=======
;	main.c:411: ADINT = 0;
	clr	_ADINT
;	main.c:412: ADBUSY = 1;     // Convert voltage at the pin
	setb	_ADBUSY
;	main.c:413: while (!ADINT); // Wait for conversion to complete
L019001?:
	jnb	_ADINT,L019001?
;	main.c:414: return (ADC0);
>>>>>>> b655f5c9a892f6372ff4745865e70964c4261ea7
	mov	dpl,_ADC0
	mov	dph,(_ADC0 >> 8)
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Timer5_ISR'
;------------------------------------------------------------
;------------------------------------------------------------
<<<<<<< HEAD
;	main.c:415: void Timer5_ISR (void) interrupt INTERRUPT_TIMER5
=======
;	main.c:417: void Timer5_ISR (void) interrupt INTERRUPT_TIMER5
>>>>>>> b655f5c9a892f6372ff4745865e70964c4261ea7
;	-----------------------------------------
;	 function Timer5_ISR
;	-----------------------------------------
_Timer5_ISR:
	push	acc
	push	ar2
	push	ar3
	push	psw
	mov	psw,#0x00
<<<<<<< HEAD
;	main.c:417: SFRPAGE=0x10;
	mov	_SFRPAGE,#0x10
;	main.c:418: TF5H = 0; // Clear Timer5 interrupt flag
	clr	_TF5H
;	main.c:419: TMR5RL = RELOAD_10us; // Reload Timer5 for 10us intervals 
	mov	_TMR5RL,#0xC4
	mov	(_TMR5RL >> 8),#0xFF
;	main.c:421: pwm_counter++; 
=======
;	main.c:419: SFRPAGE=0x10;
	mov	_SFRPAGE,#0x10
;	main.c:420: TF5H = 0; // Clear Timer5 interrupt flag
	clr	_TF5H
;	main.c:421: TMR5RL = RELOAD_10us; // Reload Timer5 for 10us intervals 
	mov	_TMR5RL,#0xC4
	mov	(_TMR5RL >> 8),#0xFF
;	main.c:423: pwm_counter++; 
>>>>>>> b655f5c9a892f6372ff4745865e70964c4261ea7
	inc	_pwm_counter
	clr	a
	cjne	a,_pwm_counter,L020033?
	inc	(_pwm_counter + 1)
<<<<<<< HEAD
L020031?:
;	main.c:422: if (pwm_counter == 100){
	mov	a,#0x64
	cjne	a,_pwm_counter,L020032?
	clr	a
	cjne	a,(_pwm_counter + 1),L020032?
	sjmp	L020033?
L020032?:
	sjmp	L020002?
L020033?:
;	main.c:423: pwm_counter = 0; 
=======
L020033?:
;	main.c:424: if (pwm_counter == 100){
	mov	a,#0x64
	cjne	a,_pwm_counter,L020034?
	clr	a
	cjne	a,(_pwm_counter + 1),L020034?
	sjmp	L020035?
L020034?:
	sjmp	L020002?
L020035?:
;	main.c:425: pwm_counter = 0; 
>>>>>>> b655f5c9a892f6372ff4745865e70964c4261ea7
	clr	a
	mov	_pwm_counter,a
	mov	(_pwm_counter + 1),a
L020002?:
<<<<<<< HEAD
;	main.c:426: if (pwm_left > pwm_counter){
	mov	r2,_pwm_left
	mov	r3,#0x00
	clr	c
	mov	a,_pwm_counter
	subb	a,r2
	mov	a,(_pwm_counter + 1)
	subb	a,r3
	jnc	L020007?
;	main.c:427: if(L_motor_dir){
	mov	a,_L_motor_dir
	jz	L020004?
;	main.c:428: L_bridge_1 = 1; 
	setb	_P2_1
;	main.c:429: L_bridge_2 = 0; 
	clr	_P2_2
	sjmp	L020008?
L020004?:
;	main.c:432: L_bridge_1 = 0; 
	clr	_P2_1
;	main.c:433: L_bridge_2 = 1; 
	setb	_P2_2
	sjmp	L020008?
L020007?:
;	main.c:437: L_bridge_1 = 0; 
	clr	_P2_1
;	main.c:438: L_bridge_2 = 0; 
	clr	_P2_2
L020008?:
;	main.c:440: if (pwm_right > pwm_counter){
=======
;	main.c:428: if (pwm_right > pwm_counter){
>>>>>>> b655f5c9a892f6372ff4745865e70964c4261ea7
	mov	r2,_pwm_right
	mov	r3,#0x00
	clr	c
	mov	a,_pwm_counter
	subb	a,r2
	mov	a,(_pwm_counter + 1)
	subb	a,r3
	jnc	L020007?
;	main.c:429: if(L_motor_dir){
	mov	a,_L_motor_dir
	jz	L020004?
;	main.c:430: L_bridge_1 = 1; 
	setb	_P2_1
;	main.c:431: L_bridge_2 = 0; 
	clr	_P2_2
	sjmp	L020008?
L020004?:
;	main.c:434: L_bridge_1 = 0; 
	clr	_P2_1
;	main.c:435: L_bridge_2 = 1; 
	setb	_P2_2
	sjmp	L020008?
L020007?:
;	main.c:439: L_bridge_1 = 0; 
	clr	_P2_1
;	main.c:440: L_bridge_2 = 0; 
	clr	_P2_2
L020008?:
;	main.c:442: if (pwm_left > pwm_counter){
	mov	r2,_pwm_left
	mov	r3,#0x00
	clr	c
	mov	a,_pwm_counter
	subb	a,r2
	mov	a,(_pwm_counter + 1)
	subb	a,r3
	jnc	L020013?
<<<<<<< HEAD
;	main.c:441: if (R_motor_dir){
	mov	a,_R_motor_dir
	jz	L020010?
;	main.c:442: R_bridge_1 = 1; 
	setb	_P2_4
;	main.c:443: R_bridge_2 = 0;
	clr	_P2_3
	sjmp	L020014?
L020010?:
;	main.c:446: R_bridge_1 = 0; 
	clr	_P2_4
;	main.c:447: R_bridge_2 = 1;
	setb	_P2_3
	sjmp	L020014?
L020013?:
;	main.c:451: R_bridge_1 = 0; 
	clr	_P2_4
;	main.c:452: R_bridge_2 = 0; 
	clr	_P2_3
L020014?:
;	main.c:455: servo_counter++;
=======
;	main.c:443: if (R_motor_dir){
	mov	a,_R_motor_dir
	jz	L020010?
;	main.c:444: R_bridge_1 = 1; 
	setb	_P2_4
;	main.c:445: R_bridge_2 = 0;
	clr	_P2_3
	sjmp	L020014?
L020010?:
;	main.c:448: R_bridge_1 = 0; 
	clr	_P2_4
;	main.c:449: R_bridge_2 = 1;
	setb	_P2_3
	sjmp	L020014?
L020013?:
;	main.c:453: R_bridge_1 = 0; 
	clr	_P2_4
;	main.c:454: R_bridge_2 = 0; 
	clr	_P2_3
L020014?:
;	main.c:457: servo_counter++;
>>>>>>> b655f5c9a892f6372ff4745865e70964c4261ea7
	inc	_servo_counter
	clr	a
	cjne	a,_servo_counter,L020040?
	inc	(_servo_counter + 1)
<<<<<<< HEAD
L020038?:
;	main.c:456: if(servo_counter==2000)
=======
L020040?:
;	main.c:458: if(servo_counter==2000)
>>>>>>> b655f5c9a892f6372ff4745865e70964c4261ea7
	mov	a,#0xD0
	cjne	a,_servo_counter,L020016?
	mov	a,#0x07
	cjne	a,(_servo_counter + 1),L020016?
<<<<<<< HEAD
;	main.c:458: servo_counter=0;
	clr	a
	mov	_servo_counter,a
	mov	(_servo_counter + 1),a
;	main.c:459: Servo_arm=1;
	setb	_P1_6
;	main.c:460: Servo_base=1;
	setb	_P1_7
=======
;	main.c:460: servo_counter=0;
	clr	a
	mov	_servo_counter,a
	mov	(_servo_counter + 1),a
>>>>>>> b655f5c9a892f6372ff4745865e70964c4261ea7
L020016?:
;	main.c:462: if(servo_arm==servo_counter)
	mov	r2,_servo_arm
	mov	r3,#0x00
	mov	a,r2
	cjne	a,_servo_counter,L020018?
	mov	a,r3
	cjne	a,(_servo_counter + 1),L020018?
;	main.c:464: Servo_arm=0;
<<<<<<< HEAD
	clr	_P1_6
L020018?:
;	main.c:466: if(servo_base==servo_counter)
	mov	r2,_servo_base
	mov	r3,#0x00
	mov	a,r2
	cjne	a,_servo_counter,L020021?
	mov	a,r3
	cjne	a,(_servo_counter + 1),L020021?
;	main.c:468: Servo_base=0;
	clr	_P1_7
=======
	clr	_P1_7
	sjmp	L020019?
L020018?:
;	main.c:467: Servo_base = 0;
	clr	_P1_6
L020019?:
;	main.c:469: if (servo_arm_pwm > servo_counter)
	mov	r2,_servo_arm_pwm
	mov	r3,#0x00
	clr	c
	mov	a,_servo_counter
	subb	a,r2
	mov	a,(_servo_counter + 1)
	subb	a,r3
	jnc	L020021?
;	main.c:471: Servo_arm = 1; 
	setb	_P1_7
	sjmp	L020023?
>>>>>>> b655f5c9a892f6372ff4745865e70964c4261ea7
L020021?:
;	main.c:474: Servo_arm = 0; 
	clr	_P1_7
L020023?:
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
<<<<<<< HEAD
;	main.c:472: void MoveForward (int speed)
=======
;	main.c:478: void Calibrate_Joystick(void)
>>>>>>> b655f5c9a892f6372ff4745865e70964c4261ea7
;	-----------------------------------------
;	 function Calibrate_Joystick
;	-----------------------------------------
<<<<<<< HEAD
_MoveForward:
	mov	r2,dpl
;	main.c:474: pwm_left = speed; 
	mov	_pwm_left,r2
;	main.c:475: pwm_right = speed; 
	mov	_pwm_right,r2
;	main.c:476: L_motor_dir = 0; 
	mov	_L_motor_dir,#0x00
;	main.c:477: R_motor_dir = 0; 
	mov	_R_motor_dir,#0x00
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'MoveBackward'
;------------------------------------------------------------
;speed                     Allocated to registers r2 r3 
;------------------------------------------------------------
;	main.c:480: void MoveBackward (int speed)
;	-----------------------------------------
;	 function MoveBackward
;	-----------------------------------------
_MoveBackward:
	mov	r2,dpl
;	main.c:482: pwm_left = speed; 
	mov	_pwm_left,r2
;	main.c:483: pwm_right = speed; 
	mov	_pwm_right,r2
;	main.c:484: L_motor_dir = 1; 
	mov	_L_motor_dir,#0x01
;	main.c:485: R_motor_dir = 1;  
	mov	_R_motor_dir,#0x01
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'TurnRight'
;------------------------------------------------------------
;speed                     Allocated to registers r2 r3 
;------------------------------------------------------------
;	main.c:488: void TurnRight (int speed)
;	-----------------------------------------
;	 function TurnRight
;	-----------------------------------------
_TurnRight:
	mov	r2,dpl
;	main.c:490: pwm_left = speed; 
	mov	_pwm_left,r2
;	main.c:491: pwm_right = speed; 
	mov	_pwm_right,r2
;	main.c:492: L_motor_dir = 1; 
	mov	_L_motor_dir,#0x01
;	main.c:493: R_motor_dir = 0; 
	mov	_R_motor_dir,#0x00
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'TurnLeft'
;------------------------------------------------------------
;speed                     Allocated to registers r2 r3 
;------------------------------------------------------------
;	main.c:496: void TurnLeft (int speed)
;	-----------------------------------------
;	 function TurnLeft
;	-----------------------------------------
_TurnLeft:
	mov	r2,dpl
;	main.c:498: pwm_left = speed; 
	mov	_pwm_left,r2
;	main.c:499: pwm_right = speed; 
	mov	_pwm_right,r2
;	main.c:500: L_motor_dir = 0; 
	mov	_L_motor_dir,#0x00
;	main.c:501: R_motor_dir = 1; 
	mov	_R_motor_dir,#0x01
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Servo_pick'
;------------------------------------------------------------
;i                         Allocated to registers r2 r3 
;------------------------------------------------------------
;	main.c:504: void Servo_pick(){
;	-----------------------------------------
;	 function Servo_pick
;	-----------------------------------------
_Servo_pick:
;	main.c:507: servo_base = 250;
	mov	_servo_base,#0xFA
;	main.c:508: waitms(1000);
	mov	dptr,#0x03E8
	lcall	_waitms
;	main.c:510: servo_arm = 250;
	mov	_servo_arm,#0xFA
;	main.c:511: Magnet = 1;
	setb	_P1_5
;	main.c:512: waitms(1000);
	mov	dptr,#0x03E8
	lcall	_waitms
;	main.c:513: servo_base = 200;
	mov	_servo_base,#0xC8
;	main.c:514: waitms(1000);
	mov	dptr,#0x03E8
	lcall	_waitms
;	main.c:515: for(i=0;i<249;i++){
	mov	r2,#0x00
	mov	r3,#0x00
L025001?:
	clr	c
	mov	a,r2
	subb	a,#0xF9
	mov	a,r3
	xrl	a,#0x80
	subb	a,#0x80
	jnc	L025004?
;	main.c:516: waitms(5);
	mov	dptr,#0x0005
	push	ar2
	push	ar3
	lcall	_waitms
	pop	ar3
	pop	ar2
;	main.c:517: servo_arm-=1;
	dec	_servo_arm
;	main.c:515: for(i=0;i<249;i++){
	inc	r2
	cjne	r2,#0x00,L025001?
	inc	r3
	sjmp	L025001?
L025004?:
;	main.c:519: for(i=0;i<199;i++){
	mov	r2,#0x00
	mov	r3,#0x00
L025005?:
	clr	c
	mov	a,r2
	subb	a,#0xC7
	mov	a,r3
	xrl	a,#0x80
	subb	a,#0x80
	jnc	L025008?
;	main.c:520: waitms(5);
	mov	dptr,#0x0005
	push	ar2
	push	ar3
	lcall	_waitms
	pop	ar3
	pop	ar2
;	main.c:521: servo_base-=1;
	dec	_servo_base
;	main.c:519: for(i=0;i<199;i++){
	inc	r2
	cjne	r2,#0x00,L025005?
	inc	r3
	sjmp	L025005?
L025008?:
;	main.c:523: Magnet = 0;
	clr	_P1_5
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;cnt                       Allocated to registers 
;c                         Allocated to registers r4 
;vx                        Allocated with name '_main_vx_1_136'
;vy                        Allocated with name '_main_vy_1_136'
;threshold                 Allocated to registers 
;motor_pwm                 Allocated with name '_main_motor_pwm_1_136'
;sloc0                     Allocated with name '_main_sloc0_1_0'
;------------------------------------------------------------
;	main.c:527: void main (void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	main.c:531: int vx = 0, vy = 0; 
	clr	a
	mov	_main_vx_1_136,a
	mov	(_main_vx_1_136 + 1),a
	mov	_main_vy_1_136,a
	mov	(_main_vy_1_136 + 1),a
;	main.c:535: Set_Pin_Output(0x24);
	mov	dpl,#0x24
	lcall	_Set_Pin_Output
;	main.c:536: Set_Pin_Output(0x23);
	mov	dpl,#0x23
	lcall	_Set_Pin_Output
;	main.c:537: Set_Pin_Output(0x22);
	mov	dpl,#0x22
	lcall	_Set_Pin_Output
;	main.c:538: Set_Pin_Output(0x21);
	mov	dpl,#0x21
	lcall	_Set_Pin_Output
;	main.c:539: Set_Pin_Output(0x17);
	mov	dpl,#0x17
	lcall	_Set_Pin_Output
;	main.c:540: Set_Pin_Output(0x16);
	mov	dpl,#0x16
	lcall	_Set_Pin_Output
;	main.c:541: Set_Pin_Output(0x15);
	mov	dpl,#0x15
	lcall	_Set_Pin_Output
;	main.c:543: Magnet = 0;
	clr	_P1_5
;	main.c:545: waitms(500);
	mov	dptr,#0x01F4
	lcall	_waitms
;	main.c:546: printf("\r\nEFM8LB12 JDY-40 Slave Test.\r\n");
=======
_Calibrate_Joystick:
;	main.c:481: printf("Calibration Starts\r");
>>>>>>> b655f5c9a892f6372ff4745865e70964c4261ea7
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
<<<<<<< HEAD
;	main.c:547: UART1_Init(9600);
=======
;	main.c:482: for (i = 0; (i<10) && (((155<=vx)&&(vx<=170))||((155<=vy)&&(vy<=170))); i++){
	mov	r2,#0x00
	mov	r3,#0x00
L021005?:
	clr	c
	mov	a,r2
	subb	a,#0x0A
	mov	a,r3
	xrl	a,#0x80
	subb	a,#0x80
	jnc	L021008?
	clr	c
	mov	a,_vx
	subb	a,#0x9B
	mov	a,(_vx + 1)
	xrl	a,#0x80
	subb	a,#0x80
	jc	L021003?
	mov	a,#0xAA
	subb	a,_vx
	clr	a
	xrl	a,#0x80
	mov	b,(_vx + 1)
	xrl	b,#0x80
	subb	a,b
	jnc	L021006?
L021003?:
	clr	c
	mov	a,_vy
	subb	a,#0x9B
	mov	a,(_vy + 1)
	xrl	a,#0x80
	subb	a,#0x80
	jc	L021008?
	mov	a,#0xAA
	subb	a,_vy
	clr	a
	xrl	a,#0x80
	mov	b,(_vy + 1)
	xrl	b,#0x80
	subb	a,b
	jc	L021008?
L021006?:
;	main.c:483: vx_thres += vx; 
	mov	a,_vx
	add	a,_vx_thres
	mov	_vx_thres,a
	mov	a,(_vx + 1)
	addc	a,(_vx_thres + 1)
	mov	(_vx_thres + 1),a
;	main.c:484: vy_thres += vy; 
	mov	a,_vy
	add	a,_vy_thres
	mov	_vy_thres,a
	mov	a,(_vy + 1)
	addc	a,(_vy_thres + 1)
	mov	(_vy_thres + 1),a
;	main.c:482: for (i = 0; (i<10) && (((155<=vx)&&(vx<=170))||((155<=vy)&&(vy<=170))); i++){
	inc	r2
	cjne	r2,#0x00,L021005?
	inc	r3
	sjmp	L021005?
L021008?:
;	main.c:486: vx_thres = vx_thres / 10; 
	mov	__divsint_PARM_2,#0x0A
	clr	a
	mov	(__divsint_PARM_2 + 1),a
	mov	dpl,_vx_thres
	mov	dph,(_vx_thres + 1)
	lcall	__divsint
	mov	_vx_thres,dpl
	mov	(_vx_thres + 1),dph
;	main.c:487: vy_thres = vy_thres / 10; 
	mov	__divsint_PARM_2,#0x0A
	clr	a
	mov	(__divsint_PARM_2 + 1),a
	mov	dpl,_vy_thres
	mov	dph,(_vy_thres + 1)
	lcall	__divsint
	mov	_vy_thres,dpl
	mov	(_vy_thres + 1),dph
;	main.c:488: waitms(10);
	mov	dptr,#0x000A
	lcall	_waitms
;	main.c:489: printf("Calibration Complete: Vx_ca = %d, Vy_ca = %d", vx_thres, vy_thres);
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
;vx_error                  Allocated with name '_main_vx_error_1_130'
;vy_error                  Allocated with name '_main_vy_error_1_130'
;vx_err                    Allocated with name '_main_vx_err_1_130'
;vy_err                    Allocated with name '_main_vy_err_1_130'
;vx                        Allocated with name '_main_vx_1_130'
;vy                        Allocated with name '_main_vy_1_130'
;threshold                 Allocated to registers 
;motor_pwm                 Allocated to registers 
;------------------------------------------------------------
;	main.c:492: void main (void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	main.c:497: int vx = 0, vy = 0; 
	clr	a
	mov	_main_vx_1_130,a
	mov	(_main_vx_1_130 + 1),a
	mov	_main_vy_1_130,a
	mov	(_main_vy_1_130 + 1),a
;	main.c:501: Set_Pin_Output(0x24);
	mov	dpl,#0x24
	lcall	_Set_Pin_Output
;	main.c:502: Set_Pin_Output(0x23);
	mov	dpl,#0x23
	lcall	_Set_Pin_Output
;	main.c:503: Set_Pin_Output(0x22);
	mov	dpl,#0x22
	lcall	_Set_Pin_Output
;	main.c:504: Set_Pin_Output(0x21);
	mov	dpl,#0x21
	lcall	_Set_Pin_Output
;	main.c:505: Set_Pin_Output(0x17);
	mov	dpl,#0x17
	lcall	_Set_Pin_Output
;	main.c:506: Set_Pin_Output(0x16);
	mov	dpl,#0x16
	lcall	_Set_Pin_Output
;	main.c:508: waitms(500);
	mov	dptr,#0x01F4
	lcall	_waitms
;	main.c:509: printf("\r\nEFM8LB12 JDY-40 Slave Test.\r\n");
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
;	main.c:510: UART1_Init(9600);
>>>>>>> b655f5c9a892f6372ff4745865e70964c4261ea7
	mov	dptr,#0x2580
	clr	a
	mov	b,a
	lcall	_UART1_Init
<<<<<<< HEAD
;	main.c:549: ReceptionOff();
	lcall	_ReceptionOff
;	main.c:552: SendATCommand("AT+VER\r\n");
	mov	dptr,#__str_4
	mov	b,#0x80
	lcall	_SendATCommand
;	main.c:553: SendATCommand("AT+BAUD\r\n");
	mov	dptr,#__str_5
	mov	b,#0x80
	lcall	_SendATCommand
;	main.c:554: SendATCommand("AT+RFID\r\n");
	mov	dptr,#__str_6
	mov	b,#0x80
	lcall	_SendATCommand
;	main.c:555: SendATCommand("AT+DVID\r\n");
	mov	dptr,#__str_7
	mov	b,#0x80
	lcall	_SendATCommand
;	main.c:556: SendATCommand("AT+RFC\r\n");
	mov	dptr,#__str_8
	mov	b,#0x80
	lcall	_SendATCommand
;	main.c:557: SendATCommand("AT+POWE\r\n");
	mov	dptr,#__str_9
	mov	b,#0x80
	lcall	_SendATCommand
;	main.c:558: SendATCommand("AT+CLSS\r\n");
	mov	dptr,#__str_10
	mov	b,#0x80
	lcall	_SendATCommand
;	main.c:559: SendATCommand("AT+DVIDEFEF\r\n");  
	mov	dptr,#__str_11
	mov	b,#0x80
	lcall	_SendATCommand
;	main.c:562: L_bridge_1 = 0; 
	clr	_P2_1
;	main.c:563: L_bridge_2 = 0; 
	clr	_P2_2
;	main.c:564: R_bridge_1 = 0; 
	clr	_P2_4
;	main.c:565: R_bridge_2 = 0; 
	clr	_P2_3
;	main.c:569: Servo_pick();
	lcall	_Servo_pick
;	main.c:570: while(1)
	mov	r2,#0x00
	mov	r3,#0x00
L026022?:
;	main.c:574: if(RXU1()) // Something has arrived
=======
;	main.c:512: ReceptionOff();
	lcall	_ReceptionOff
;	main.c:515: SendATCommand("AT+VER\r\n");
	mov	dptr,#__str_6
	mov	b,#0x80
	lcall	_SendATCommand
;	main.c:516: SendATCommand("AT+BAUD\r\n");
	mov	dptr,#__str_7
	mov	b,#0x80
	lcall	_SendATCommand
;	main.c:517: SendATCommand("AT+RFID\r\n");
	mov	dptr,#__str_8
	mov	b,#0x80
	lcall	_SendATCommand
;	main.c:518: SendATCommand("AT+DVID\r\n");
	mov	dptr,#__str_9
	mov	b,#0x80
	lcall	_SendATCommand
;	main.c:519: SendATCommand("AT+RFC\r\n");
	mov	dptr,#__str_10
	mov	b,#0x80
	lcall	_SendATCommand
;	main.c:520: SendATCommand("AT+POWE\r\n");
	mov	dptr,#__str_11
	mov	b,#0x80
	lcall	_SendATCommand
;	main.c:521: SendATCommand("AT+CLSS\r\n");
	mov	dptr,#__str_12
	mov	b,#0x80
	lcall	_SendATCommand
;	main.c:522: SendATCommand("AT+DVIDEFEF\r\n");  
	mov	dptr,#__str_13
	mov	b,#0x80
	lcall	_SendATCommand
;	main.c:525: L_bridge_1 = 0; 
	clr	_P2_1
;	main.c:526: L_bridge_2 = 0; 
	clr	_P2_2
;	main.c:527: R_bridge_1 = 0; 
	clr	_P2_4
;	main.c:528: R_bridge_2 = 0; 
	clr	_P2_3
;	main.c:531: while(1)
	mov	r2,#0x00
	mov	r3,#0x00
L022049?:
;	main.c:534: if(RXU1()) // Something has arrived
>>>>>>> b655f5c9a892f6372ff4745865e70964c4261ea7
	push	ar2
	push	ar3
	lcall	_RXU1
	clr	a
	rlc	a
	pop	ar3
	pop	ar2
<<<<<<< HEAD
	jz	L026022?
;	main.c:576: c=getchar1();
=======
	jz	L022049?
;	main.c:536: c=getchar1();
>>>>>>> b655f5c9a892f6372ff4745865e70964c4261ea7
	push	ar2
	push	ar3
	lcall	_getchar1
	mov	r4,dpl
	pop	ar3
	pop	ar2
<<<<<<< HEAD
;	main.c:578: if(c=='!') // Master is sending message
	cjne	r4,#0x21,L026036?
	sjmp	L026037?
L026036?:
	ljmp	L026017?
L026037?:
;	main.c:580: getstr1(buff, sizeof(buff)-1);
=======
;	main.c:538: if(c=='!') // Master is sending message
	cjne	r4,#0x21,L022075?
	sjmp	L022076?
L022075?:
	ljmp	L022044?
L022076?:
;	main.c:540: getstr1(buff, sizeof(buff)-1);
>>>>>>> b655f5c9a892f6372ff4745865e70964c4261ea7
	mov	_getstr1_PARM_2,#0x13
	mov	dptr,#_buff
	mov	b,#0x40
	push	ar2
	push	ar3
	lcall	_getstr1
<<<<<<< HEAD
;	main.c:581: if(strlen(buff)==7)
=======
;	main.c:541: if(strlen(buff)==7)
>>>>>>> b655f5c9a892f6372ff4745865e70964c4261ea7
	mov	dptr,#_buff
	mov	b,#0x40
	lcall	_strlen
	mov	r5,dpl
	mov	r6,dph
	pop	ar3
	pop	ar2
<<<<<<< HEAD
	cjne	r5,#0x07,L026038?
	cjne	r6,#0x00,L026038?
	sjmp	L026039?
L026038?:
	ljmp	L026012?
L026039?:
;	main.c:585: sscanf(buff, "%03d,%03d", &vx, &vy);
	push	ar2
	push	ar3
	mov	a,#_main_vy_1_136
	push	acc
	mov	a,#(_main_vy_1_136 >> 8)
	push	acc
	mov	a,#0x40
	push	acc
	mov	a,#_main_vx_1_136
	push	acc
	mov	a,#(_main_vx_1_136 >> 8)
=======
	cjne	r5,#0x07,L022077?
	cjne	r6,#0x00,L022077?
	sjmp	L022078?
L022077?:
	ljmp	L022039?
L022078?:
;	main.c:545: sscanf(buff, "%03d,%03d", &vx, &vy);
	push	ar2
	push	ar3
	mov	a,#_main_vy_1_130
	push	acc
	mov	a,#(_main_vy_1_130 >> 8)
	push	acc
	mov	a,#0x40
	push	acc
	mov	a,#_main_vx_1_130
	push	acc
	mov	a,#(_main_vx_1_130 >> 8)
>>>>>>> b655f5c9a892f6372ff4745865e70964c4261ea7
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
<<<<<<< HEAD
;	main.c:587: printf("Joystick Received: Vx = %03d, Vy = %03d\r\n", vx, vy);
	push	_main_vy_1_136
	push	(_main_vy_1_136 + 1)
	push	_main_vx_1_136
	push	(_main_vx_1_136 + 1)
	mov	a,#__str_13
=======
;	main.c:547: printf("Joystick Received: Vx = %03d, Vy = %03d\r\n", vx, vy);
	push	_main_vy_1_130
	push	(_main_vy_1_130 + 1)
	push	_main_vx_1_130
	push	(_main_vx_1_130 + 1)
	mov	a,#__str_15
>>>>>>> b655f5c9a892f6372ff4745865e70964c4261ea7
	push	acc
	mov	a,#(__str_15 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
<<<<<<< HEAD
;	main.c:589: if (vy > threshold){
	mov	dpl,_main_vy_1_136
	mov	dph,(_main_vy_1_136 + 1)
	lcall	___sint2fs
	mov	_main_sloc0_1_0,dpl
	mov	(_main_sloc0_1_0 + 1),dph
	mov	(_main_sloc0_1_0 + 2),b
	mov	(_main_sloc0_1_0 + 3),a
	clr	a
	push	acc
	push	acc
	mov	a,#0x21
	push	acc
	mov	a,#0x43
	push	acc
	mov	dpl,_main_sloc0_1_0
	mov	dph,(_main_sloc0_1_0 + 1)
	mov	b,(_main_sloc0_1_0 + 2)
	mov	a,(_main_sloc0_1_0 + 3)
	lcall	___fsgt
	mov	r5,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar3
	pop	ar2
	mov	a,r5
	jnz	L026040?
	ljmp	L026004?
L026040?:
;	main.c:590: motor_pwm = abs(vy - threshold) * 100 / threshold; 
	push	ar2
	push	ar3
	push	ar3
	clr	a
	push	acc
	push	acc
	mov	a,#0x21
	push	acc
	mov	a,#0x43
	push	acc
	mov	dpl,_main_sloc0_1_0
	mov	dph,(_main_sloc0_1_0 + 1)
	mov	b,(_main_sloc0_1_0 + 2)
	mov	a,(_main_sloc0_1_0 + 3)
	lcall	___fssub
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	mov	r2,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar3
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r2
	push	ar2
	push	ar3
	lcall	___fs2sint
=======
;	main.c:550: vx_error = abs(vx-vx_thres)*100/vx_thres; 
	mov	a,_main_vx_1_130
	clr	c
	subb	a,_vx_thres
	mov	dpl,a
	mov	a,(_main_vx_1_130 + 1)
	subb	a,(_vx_thres + 1)
	mov	dph,a
>>>>>>> b655f5c9a892f6372ff4745865e70964c4261ea7
	lcall	_abs
	mov	__mulint_PARM_2,dpl
	mov	(__mulint_PARM_2 + 1),dph
	mov	dptr,#0x0064
	lcall	__mulint
<<<<<<< HEAD
	lcall	___sint2fs
	mov	r2,dpl
	mov	r3,dph
	mov	r5,b
	mov	r6,a
	clr	a
	push	acc
	push	acc
	mov	a,#0x21
	push	acc
	mov	a,#0x43
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r5
	mov	a,r6
	lcall	___fsdiv
	mov	r2,dpl
	mov	r3,dph
	mov	r5,b
	mov	r6,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r5
	mov	a,r6
	push	ar2
	push	ar3
	lcall	___fs2sint
;	main.c:591: MoveForward(motor_pwm);
	mov	_main_motor_pwm_1_136,dpl
	mov  (_main_motor_pwm_1_136 + 1),dph
	lcall	_MoveForward
	pop	ar3
	pop	ar2
	pop	ar3
	pop	ar2
	ljmp	L026005?
L026004?:
;	main.c:593: else if (vy < threshold){
	push	ar2
	push	ar3
	clr	a
	push	acc
	push	acc
	mov	a,#0x21
	push	acc
	mov	a,#0x43
	push	acc
	mov	dpl,_main_sloc0_1_0
	mov	dph,(_main_sloc0_1_0 + 1)
	mov	b,(_main_sloc0_1_0 + 2)
	mov	a,(_main_sloc0_1_0 + 3)
	lcall	___fslt
	mov	r5,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar3
	pop	ar2
	mov	a,r5
	jnz	L026041?
	ljmp	L026005?
L026041?:
;	main.c:594: motor_pwm = abs(threshold - vy) * 100 / threshold; 
	push	ar2
	push	ar3
	push	ar3
	push	_main_sloc0_1_0
	push	(_main_sloc0_1_0 + 1)
	push	(_main_sloc0_1_0 + 2)
	push	(_main_sloc0_1_0 + 3)
	mov	dptr,#0x0000
	mov	b,#0x21
	mov	a,#0x43
	lcall	___fssub
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	mov	r2,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar3
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r2
	push	ar2
	push	ar3
	lcall	___fs2sint
=======
	mov	__divsint_PARM_2,_vx_thres
	mov	(__divsint_PARM_2 + 1),(_vx_thres + 1)
	lcall	__divsint
	mov	_main_vx_error_1_130,dpl
	mov	(_main_vx_error_1_130 + 1),dph
;	main.c:551: vy_error = abs(vy-vy_thres)*100/vy_thres; 
	mov	a,_main_vy_1_130
	clr	c
	subb	a,_vy_thres
	mov	dpl,a
	mov	a,(_main_vy_1_130 + 1)
	subb	a,(_vy_thres + 1)
	mov	dph,a
>>>>>>> b655f5c9a892f6372ff4745865e70964c4261ea7
	lcall	_abs
	mov	__mulint_PARM_2,dpl
	mov	(__mulint_PARM_2 + 1),dph
	mov	dptr,#0x0064
	lcall	__mulint
	mov	__divsint_PARM_2,_vy_thres
	mov	(__divsint_PARM_2 + 1),(_vy_thres + 1)
	lcall	__divsint
	mov	_main_vy_error_1_130,dpl
	mov	(_main_vy_error_1_130 + 1),dph
	pop	ar3
	pop	ar2
;	main.c:552: vx_err = vx-vx_thres; 
	mov	a,_main_vx_1_130
	clr	c
	subb	a,_vx_thres
	mov	_main_vx_err_1_130,a
	mov	a,(_main_vx_1_130 + 1)
	subb	a,(_vx_thres + 1)
	mov	(_main_vx_err_1_130 + 1),a
;	main.c:553: vy_err = vy-vy_thres; 
	mov	a,_main_vy_1_130
	clr	c
	subb	a,_vy_thres
	mov	_main_vy_err_1_130,a
	mov	a,(_main_vy_1_130 + 1)
	subb	a,(_vy_thres + 1)
	mov	(_main_vy_err_1_130 + 1),a
;	main.c:554: pwm_left = 0; 
	mov	_pwm_left,#0x00
;	main.c:555: pwm_right = 0; 
	mov	_pwm_right,#0x00
;	main.c:557: if ((vy_error>5) && (vx_error<5)){
	clr	c
	mov	a,#0x05
	subb	a,_main_vy_error_1_130
	clr	a
<<<<<<< HEAD
	push	acc
	push	acc
	mov	a,#0x21
	push	acc
	mov	a,#0x43
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r5
	mov	a,r6
	lcall	___fsdiv
	mov	r2,dpl
	mov	r3,dph
	mov	r5,b
	mov	r6,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r5
	mov	a,r6
	push	ar2
	push	ar3
	lcall	___fs2sint
;	main.c:595: MoveBackward(motor_pwm);
	mov	_main_motor_pwm_1_136,dpl
	mov  (_main_motor_pwm_1_136 + 1),dph
	lcall	_MoveBackward
	pop	ar3
	pop	ar2
;	main.c:619: sendstr1(buff);
	pop	ar3
	pop	ar2
;	main.c:595: MoveBackward(motor_pwm);
L026005?:
;	main.c:597: if(vx > threshold){
	mov	dpl,_main_vx_1_136
	mov	dph,(_main_vx_1_136 + 1)
	push	ar2
	push	ar3
	lcall	___sint2fs
	mov	_main_sloc0_1_0,dpl
	mov	(_main_sloc0_1_0 + 1),dph
	mov	(_main_sloc0_1_0 + 2),b
	mov	(_main_sloc0_1_0 + 3),a
=======
	xrl	a,#0x80
	mov	b,(_main_vy_error_1_130 + 1)
	xrl	b,#0x80
	subb	a,b
>>>>>>> b655f5c9a892f6372ff4745865e70964c4261ea7
	clr	a
	rlc	a
	mov	r7,a
	jz	L022005?
	clr	c
	mov	a,_main_vx_error_1_130
	subb	a,#0x05
	mov	a,(_main_vx_error_1_130 + 1)
	xrl	a,#0x80
	subb	a,#0x80
	jnc	L022005?
;	main.c:558: pwm_left = vy_error; 
	mov	r5,_main_vy_error_1_130
	mov	_pwm_left,r5
;	main.c:559: pwm_right = vy_error; 
	mov	_pwm_right,r5
;	main.c:560: if (vy_err > 0){ //move forward
	clr	c
	clr	a
	subb	a,_main_vy_err_1_130
	clr	a
	xrl	a,#0x80
	mov	b,(_main_vy_err_1_130 + 1)
	xrl	b,#0x80
	subb	a,b
	jnc	L022002?
;	main.c:561: L_motor_dir = 0; 
	mov	_L_motor_dir,#0x00
;	main.c:562: R_motor_dir = 0; 
	mov	_R_motor_dir,#0x00
	sjmp	L022005?
L022002?:
;	main.c:565: L_motor_dir = 1; 
	mov	_L_motor_dir,#0x01
;	main.c:566: R_motor_dir = 1; 
	mov	_R_motor_dir,#0x01
L022005?:
;	main.c:569: if ((vx_error>5)&&(vy_error<5)){
	clr	c
	mov	a,#0x05
	subb	a,_main_vx_error_1_130
	clr	a
	xrl	a,#0x80
	mov	b,(_main_vx_error_1_130 + 1)
	xrl	b,#0x80
	subb	a,b
	clr	a
	rlc	a
	mov	r5,a
	jz	L022011?
	clr	c
	mov	a,_main_vy_error_1_130
	subb	a,#0x05
	mov	a,(_main_vy_error_1_130 + 1)
	xrl	a,#0x80
	subb	a,#0x80
	jnc	L022011?
;	main.c:570: pwm_left = vx_error; 
	mov	r6,_main_vx_error_1_130
	mov	_pwm_left,r6
;	main.c:571: pwm_right = vx_error; 
	mov	_pwm_right,r6
;	main.c:572: if (vx_err > 0){ //turn right
	clr	c
	clr	a
	subb	a,_main_vx_err_1_130
	clr	a
	xrl	a,#0x80
	mov	b,(_main_vx_err_1_130 + 1)
	xrl	b,#0x80
	subb	a,b
	jnc	L022008?
;	main.c:573: L_motor_dir = 1; 
	mov	_L_motor_dir,#0x01
;	main.c:574: R_motor_dir = 0; 
	mov	_R_motor_dir,#0x00
	sjmp	L022011?
L022008?:
;	main.c:577: L_motor_dir = 0; 
	mov	_L_motor_dir,#0x00
;	main.c:578: R_motor_dir = 1; 
	mov	_R_motor_dir,#0x01
L022011?:
;	main.c:581: if ((vx_error>5)&&(vy_error)>5){
	mov	a,r5
<<<<<<< HEAD
	jnz	L026042?
	ljmp	L026009?
L026042?:
;	main.c:598: motor_pwm = abs(vx - threshold) * 100 / threshold; 
=======
	jnz	L022085?
	ljmp	L022049?
L022085?:
	mov	a,r7
	jnz	L022086?
	ljmp	L022049?
L022086?:
;	main.c:583: if (vy_err>0){
	clr	c
	clr	a
	subb	a,_main_vy_err_1_130
	clr	a
	xrl	a,#0x80
	mov	b,(_main_vy_err_1_130 + 1)
	xrl	b,#0x80
	subb	a,b
	jc	L022087?
	ljmp	L022023?
L022087?:
;	main.c:584: L_motor_dir = 0; 
	mov	_L_motor_dir,#0x00
;	main.c:585: R_motor_dir = 0; 
	mov	_R_motor_dir,#0x00
;	main.c:587: if (vx_err>0){
	clr	c
	clr	a
	subb	a,_main_vx_err_1_130
	clr	a
	xrl	a,#0x80
	mov	b,(_main_vx_err_1_130 + 1)
	xrl	b,#0x80
	subb	a,b
	jc	L022088?
	ljmp	L022020?
L022088?:
;	main.c:588: if (vy*100<=vy_thres*100/2){
>>>>>>> b655f5c9a892f6372ff4745865e70964c4261ea7
	push	ar2
	push	ar3
	mov	__mulint_PARM_2,_main_vy_1_130
	mov	(__mulint_PARM_2 + 1),(_main_vy_1_130 + 1)
	mov	dptr,#0x0064
	push	ar2
	push	ar3
	lcall	__mulint
	mov	r5,dpl
	mov	r6,dph
	pop	ar3
	pop	ar2
	mov	__mulint_PARM_2,_vy_thres
	mov	(__mulint_PARM_2 + 1),(_vy_thres + 1)
	mov	dptr,#0x0064
	push	ar3
	push	ar5
	push	ar6
	lcall	__mulint
	mov	r7,dpl
	mov	r2,dph
	pop	ar6
	pop	ar5
	pop	ar3
	mov	__divsint_PARM_2,#0x02
	clr	a
	mov	(__divsint_PARM_2 + 1),a
	mov	dpl,r7
	mov	dph,r2
	push	ar5
	push	ar6
	lcall	__divsint
	mov	r2,dpl
	mov	r3,dph
<<<<<<< HEAD
	mov	r5,b
	mov	r6,a
	clr	a
	push	acc
	push	acc
	mov	a,#0x21
	push	acc
	mov	a,#0x43
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r5
	mov	a,r6
	lcall	___fsdiv
	mov	r2,dpl
	mov	r3,dph
	mov	r5,b
	mov	r6,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r5
	mov	a,r6
	push	ar2
	push	ar3
	lcall	___fs2sint
;	main.c:599: TurnRight(motor_pwm);
	mov	_main_motor_pwm_1_136,dpl
	mov  (_main_motor_pwm_1_136 + 1),dph
	lcall	_TurnRight
	pop	ar3
	pop	ar2
	pop	ar3
	pop	ar2
	ljmp	L026022?
L026009?:
;	main.c:601: else if (vx < threshold){
	push	ar2
	push	ar3
	clr	a
	push	acc
	push	acc
	mov	a,#0x21
	push	acc
	mov	a,#0x43
	push	acc
	mov	dpl,_main_sloc0_1_0
	mov	dph,(_main_sloc0_1_0 + 1)
	mov	b,(_main_sloc0_1_0 + 2)
	mov	a,(_main_sloc0_1_0 + 3)
	lcall	___fslt
	mov	r5,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar3
	pop	ar2
	mov	a,r5
	jnz	L026043?
	ljmp	L026022?
L026043?:
;	main.c:602: motor_pwm = abs(threshold - vx) * 100 / threshold; 
	push	ar2
	push	ar3
	push	ar3
	push	_main_sloc0_1_0
	push	(_main_sloc0_1_0 + 1)
	push	(_main_sloc0_1_0 + 2)
	push	(_main_sloc0_1_0 + 3)
	mov	dptr,#0x0000
	mov	b,#0x21
	mov	a,#0x43
	lcall	___fssub
=======
	pop	ar6
	pop	ar5
	clr	c
	mov	a,r2
	subb	a,r5
	mov	a,r3
	xrl	a,#0x80
	mov	b,r6
	xrl	b,#0x80
	subb	a,b
	pop	ar3
	pop	ar2
	jc	L022014?
;	main.c:589: pwm_left = vy_error; 
	mov	_pwm_left,_main_vy_error_1_130
;	main.c:590: pwm_right = vy_error*100/(vx_error+vy_error);
	mov	__mulint_PARM_2,_main_vy_error_1_130
	mov	(__mulint_PARM_2 + 1),(_main_vy_error_1_130 + 1)
	mov	dptr,#0x0064
	push	ar2
	push	ar3
	lcall	__mulint
>>>>>>> b655f5c9a892f6372ff4745865e70964c4261ea7
	mov	r5,dpl
	mov	r6,dph
	mov	a,_main_vy_error_1_130
	add	a,_main_vx_error_1_130
	mov	__divsint_PARM_2,a
	mov	a,(_main_vy_error_1_130 + 1)
	addc	a,(_main_vx_error_1_130 + 1)
	mov	(__divsint_PARM_2 + 1),a
	mov	dpl,r5
	mov	dph,r6
	lcall	__divsint
	mov	r5,dpl
	mov	r6,dph
	pop	ar3
	pop	ar2
	mov	_pwm_right,r5
	ljmp	L022023?
L022014?:
;	main.c:593: pwm_left = vx_error; 
	mov	_pwm_left,_main_vx_error_1_130
;	main.c:594: pwm_right = vx_error*100/(vx_error+vy_error);
	mov	__mulint_PARM_2,_main_vx_error_1_130
	mov	(__mulint_PARM_2 + 1),(_main_vx_error_1_130 + 1)
	mov	dptr,#0x0064
	push	ar2
	push	ar3
<<<<<<< HEAD
	lcall	___fs2sint
;	main.c:603: TurnLeft(motor_pwm);
	mov	_main_motor_pwm_1_136,dpl
	mov  (_main_motor_pwm_1_136 + 1),dph
	lcall	_TurnLeft
=======
	lcall	__mulint
	mov	r5,dpl
	mov	r6,dph
	mov	a,_main_vy_error_1_130
	add	a,_main_vx_error_1_130
	mov	__divsint_PARM_2,a
	mov	a,(_main_vy_error_1_130 + 1)
	addc	a,(_main_vx_error_1_130 + 1)
	mov	(__divsint_PARM_2 + 1),a
	mov	dpl,r5
	mov	dph,r6
	lcall	__divsint
	mov	r5,dpl
	mov	r6,dph
>>>>>>> b655f5c9a892f6372ff4745865e70964c4261ea7
	pop	ar3
	pop	ar2
	mov	_pwm_right,r5
	ljmp	L022023?
L022020?:
;	main.c:599: if (vy*100<=vy_thres*100/2){
	push	ar2
	push	ar3
	mov	__mulint_PARM_2,_main_vy_1_130
	mov	(__mulint_PARM_2 + 1),(_main_vy_1_130 + 1)
	mov	dptr,#0x0064
	push	ar2
	push	ar3
	lcall	__mulint
	mov	r5,dpl
	mov	r6,dph
	pop	ar3
	pop	ar2
<<<<<<< HEAD
	ljmp	L026022?
L026012?:
;	main.c:608: printf("*** BAD MESSAGE ***(%d): %s\r\n", buff,strlen(buff));
=======
	mov	__mulint_PARM_2,_vy_thres
	mov	(__mulint_PARM_2 + 1),(_vy_thres + 1)
	mov	dptr,#0x0064
	push	ar3
	push	ar5
	push	ar6
	lcall	__mulint
	mov	r7,dpl
	mov	r2,dph
	pop	ar6
	pop	ar5
	pop	ar3
	mov	__divsint_PARM_2,#0x02
	clr	a
	mov	(__divsint_PARM_2 + 1),a
	mov	dpl,r7
	mov	dph,r2
	push	ar5
	push	ar6
	lcall	__divsint
	mov	r2,dpl
	mov	r3,dph
	pop	ar6
	pop	ar5
	clr	c
	mov	a,r2
	subb	a,r5
	mov	a,r3
	xrl	a,#0x80
	mov	b,r6
	xrl	b,#0x80
	subb	a,b
	pop	ar3
	pop	ar2
	jc	L022017?
;	main.c:600: pwm_left = vy_error*100/(vx_error+vy_error);
	mov	__mulint_PARM_2,_main_vy_error_1_130
	mov	(__mulint_PARM_2 + 1),(_main_vy_error_1_130 + 1)
	mov	dptr,#0x0064
	push	ar2
	push	ar3
	lcall	__mulint
	mov	r5,dpl
	mov	r6,dph
	mov	a,_main_vy_error_1_130
	add	a,_main_vx_error_1_130
	mov	__divsint_PARM_2,a
	mov	a,(_main_vy_error_1_130 + 1)
	addc	a,(_main_vx_error_1_130 + 1)
	mov	(__divsint_PARM_2 + 1),a
	mov	dpl,r5
	mov	dph,r6
	lcall	__divsint
	mov	r5,dpl
	mov	r6,dph
	pop	ar3
	pop	ar2
	mov	_pwm_left,r5
;	main.c:601: pwm_right = vy_error; 
	mov	_pwm_right,_main_vy_error_1_130
	sjmp	L022023?
L022017?:
;	main.c:604: pwm_left = vx_error*100/(vx_error+vy_error);
	mov	__mulint_PARM_2,_main_vx_error_1_130
	mov	(__mulint_PARM_2 + 1),(_main_vx_error_1_130 + 1)
	mov	dptr,#0x0064
	push	ar2
	push	ar3
	lcall	__mulint
	mov	r5,dpl
	mov	r6,dph
	mov	a,_main_vy_error_1_130
	add	a,_main_vx_error_1_130
	mov	__divsint_PARM_2,a
	mov	a,(_main_vy_error_1_130 + 1)
	addc	a,(_main_vx_error_1_130 + 1)
	mov	(__divsint_PARM_2 + 1),a
	mov	dpl,r5
	mov	dph,r6
	lcall	__divsint
	mov	r5,dpl
	mov	r6,dph
	pop	ar3
	pop	ar2
	mov	_pwm_left,r5
;	main.c:605: pwm_right = vx_error; 
	mov	_pwm_right,_main_vx_error_1_130
L022023?:
;	main.c:610: if (vy_err<0){
	mov	a,(_main_vy_err_1_130 + 1)
	jb	acc.7,L022091?
	ljmp	L022049?
L022091?:
;	main.c:611: L_motor_dir = 1; 
	mov	_L_motor_dir,#0x01
;	main.c:612: R_motor_dir = 1; 
	mov	_R_motor_dir,#0x01
;	main.c:614: if (vx_err>0){
	clr	c
	clr	a
	subb	a,_main_vx_err_1_130
	clr	a
	xrl	a,#0x80
	mov	b,(_main_vx_err_1_130 + 1)
	xrl	b,#0x80
	subb	a,b
	jc	L022092?
	ljmp	L022031?
L022092?:
;	main.c:615: if (vy*100<=vy_thres*100/2){
	push	ar2
	push	ar3
	mov	__mulint_PARM_2,_main_vy_1_130
	mov	(__mulint_PARM_2 + 1),(_main_vy_1_130 + 1)
	mov	dptr,#0x0064
	push	ar2
	push	ar3
	lcall	__mulint
	mov	r5,dpl
	mov	r6,dph
	pop	ar3
	pop	ar2
	mov	__mulint_PARM_2,_vy_thres
	mov	(__mulint_PARM_2 + 1),(_vy_thres + 1)
	mov	dptr,#0x0064
	push	ar3
	push	ar5
	push	ar6
	lcall	__mulint
	mov	r7,dpl
	mov	r2,dph
	pop	ar6
	pop	ar5
	pop	ar3
	mov	__divsint_PARM_2,#0x02
	clr	a
	mov	(__divsint_PARM_2 + 1),a
	mov	dpl,r7
	mov	dph,r2
	push	ar5
	push	ar6
	lcall	__divsint
	mov	r2,dpl
	mov	r3,dph
	pop	ar6
	pop	ar5
	clr	c
	mov	a,r2
	subb	a,r5
	mov	a,r3
	xrl	a,#0x80
	mov	b,r6
	xrl	b,#0x80
	subb	a,b
	pop	ar3
	pop	ar2
	jc	L022025?
;	main.c:616: pwm_left = vy_error; 
	mov	_pwm_left,_main_vy_error_1_130
;	main.c:617: pwm_right = vy_error*100/(vx_error+vy_error);
	mov	__mulint_PARM_2,_main_vy_error_1_130
	mov	(__mulint_PARM_2 + 1),(_main_vy_error_1_130 + 1)
	mov	dptr,#0x0064
	push	ar2
	push	ar3
	lcall	__mulint
	mov	r5,dpl
	mov	r6,dph
	mov	a,_main_vy_error_1_130
	add	a,_main_vx_error_1_130
	mov	__divsint_PARM_2,a
	mov	a,(_main_vy_error_1_130 + 1)
	addc	a,(_main_vx_error_1_130 + 1)
	mov	(__divsint_PARM_2 + 1),a
	mov	dpl,r5
	mov	dph,r6
	lcall	__divsint
	mov	r5,dpl
	mov	r6,dph
	pop	ar3
	pop	ar2
	mov	_pwm_right,r5
	ljmp	L022049?
L022025?:
;	main.c:620: pwm_left = vx_error; 
	mov	_pwm_left,_main_vx_error_1_130
;	main.c:621: pwm_right = vx_error*100/(vx_error+vy_error);
	mov	__mulint_PARM_2,_main_vx_error_1_130
	mov	(__mulint_PARM_2 + 1),(_main_vx_error_1_130 + 1)
	mov	dptr,#0x0064
	push	ar2
	push	ar3
	lcall	__mulint
	mov	r5,dpl
	mov	r6,dph
	mov	a,_main_vy_error_1_130
	add	a,_main_vx_error_1_130
	mov	__divsint_PARM_2,a
	mov	a,(_main_vy_error_1_130 + 1)
	addc	a,(_main_vx_error_1_130 + 1)
	mov	(__divsint_PARM_2 + 1),a
	mov	dpl,r5
	mov	dph,r6
	lcall	__divsint
	mov	r5,dpl
	mov	r6,dph
	pop	ar3
	pop	ar2
	mov	_pwm_right,r5
	ljmp	L022049?
L022031?:
;	main.c:626: if (vy*100<=vy_thres*100/2){
	push	ar2
	push	ar3
	mov	__mulint_PARM_2,_main_vy_1_130
	mov	(__mulint_PARM_2 + 1),(_main_vy_1_130 + 1)
	mov	dptr,#0x0064
	push	ar2
	push	ar3
	lcall	__mulint
	mov	r5,dpl
	mov	r6,dph
	pop	ar3
	pop	ar2
	mov	__mulint_PARM_2,_vy_thres
	mov	(__mulint_PARM_2 + 1),(_vy_thres + 1)
	mov	dptr,#0x0064
	push	ar3
	push	ar5
	push	ar6
	lcall	__mulint
	mov	r7,dpl
	mov	r2,dph
	pop	ar6
	pop	ar5
	pop	ar3
	mov	__divsint_PARM_2,#0x02
	clr	a
	mov	(__divsint_PARM_2 + 1),a
	mov	dpl,r7
	mov	dph,r2
	push	ar5
	push	ar6
	lcall	__divsint
	mov	r2,dpl
	mov	r3,dph
	pop	ar6
	pop	ar5
	clr	c
	mov	a,r2
	subb	a,r5
	mov	a,r3
	xrl	a,#0x80
	mov	b,r6
	xrl	b,#0x80
	subb	a,b
	pop	ar3
	pop	ar2
	jc	L022028?
;	main.c:627: pwm_left = vy_error*100/(vx_error+vy_error);
	mov	__mulint_PARM_2,_main_vy_error_1_130
	mov	(__mulint_PARM_2 + 1),(_main_vy_error_1_130 + 1)
	mov	dptr,#0x0064
	push	ar2
	push	ar3
	lcall	__mulint
	mov	r5,dpl
	mov	r6,dph
	mov	a,_main_vy_error_1_130
	add	a,_main_vx_error_1_130
	mov	__divsint_PARM_2,a
	mov	a,(_main_vy_error_1_130 + 1)
	addc	a,(_main_vx_error_1_130 + 1)
	mov	(__divsint_PARM_2 + 1),a
	mov	dpl,r5
	mov	dph,r6
	lcall	__divsint
	mov	r5,dpl
	mov	r6,dph
	pop	ar3
	pop	ar2
	mov	_pwm_left,r5
;	main.c:628: pwm_right = vy_error; 
	mov	_pwm_right,_main_vy_error_1_130
	ljmp	L022049?
L022028?:
;	main.c:631: pwm_left = vx_error*100/(vx_error+vy_error);
	mov	__mulint_PARM_2,_main_vx_error_1_130
	mov	(__mulint_PARM_2 + 1),(_main_vx_error_1_130 + 1)
	mov	dptr,#0x0064
	push	ar2
	push	ar3
	lcall	__mulint
	mov	r5,dpl
	mov	r6,dph
	mov	a,_main_vy_error_1_130
	add	a,_main_vx_error_1_130
	mov	__divsint_PARM_2,a
	mov	a,(_main_vy_error_1_130 + 1)
	addc	a,(_main_vx_error_1_130 + 1)
	mov	(__divsint_PARM_2 + 1),a
	mov	dpl,r5
	mov	dph,r6
	lcall	__divsint
	mov	r5,dpl
	mov	r6,dph
	pop	ar3
	pop	ar2
	mov	_pwm_left,r5
;	main.c:632: pwm_right = vx_error; 
	mov	_pwm_right,_main_vx_error_1_130
	ljmp	L022049?
L022039?:
;	main.c:641: printf("*** BAD MESSAGE ***(%d): %s\r\n", buff,strlen(buff));
>>>>>>> b655f5c9a892f6372ff4745865e70964c4261ea7
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
<<<<<<< HEAD
	ljmp	L026022?
L026017?:
;	main.c:614: else if(c=='@') // Master wants slave data
	cjne	r4,#0x40,L026044?
	sjmp	L026045?
L026044?:
	ljmp	L026022?
L026045?:
;	main.c:616: sprintf(buff, "%05u\n", cnt);
=======
	ljmp	L022049?
L022044?:
;	main.c:647: else if(c=='@') // Master wants slave data
	cjne	r4,#0x40,L022095?
	sjmp	L022096?
L022095?:
	ljmp	L022049?
L022096?:
;	main.c:649: sprintf(buff, "%05u\n", cnt);
>>>>>>> b655f5c9a892f6372ff4745865e70964c4261ea7
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
<<<<<<< HEAD
;	main.c:617: cnt++;
	inc	r2
	cjne	r2,#0x00,L026046?
	inc	r3
L026046?:
;	main.c:618: waitms(5); // The radio seems to need this delay...
=======
;	main.c:650: cnt++;
	inc	r2
	cjne	r2,#0x00,L022097?
	inc	r3
L022097?:
;	main.c:651: waitms(5); // The radio seems to need this delay...
>>>>>>> b655f5c9a892f6372ff4745865e70964c4261ea7
	mov	dptr,#0x0005
	push	ar2
	push	ar3
	lcall	_waitms
<<<<<<< HEAD
;	main.c:619: sendstr1(buff);
=======
;	main.c:652: sendstr1(buff);
>>>>>>> b655f5c9a892f6372ff4745865e70964c4261ea7
	mov	dptr,#_buff
	mov	b,#0x40
	lcall	_sendstr1
	pop	ar3
	pop	ar2
<<<<<<< HEAD
	ljmp	L026022?
=======
	ljmp	L022049?
>>>>>>> b655f5c9a892f6372ff4745865e70964c4261ea7
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
