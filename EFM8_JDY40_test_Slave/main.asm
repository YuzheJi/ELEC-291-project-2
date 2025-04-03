;--------------------------------------------------------
; File Created by C51
; Version 1.0.0 #1170 (Feb 16 2022) (MSVC)
<<<<<<< HEAD
; This file was generated Thu Apr 03 05:06:09 2025
=======
; This file was generated Thu Apr 03 06:53:28 2025
>>>>>>> edaf847caac0ca9a6b5d5a3c1fe4252f662f1708
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
	public _check_bound_PARM_2
	public _InitPinADC_PARM_2
	public _main
	public _Joystick_Control
	public _Auto_mode_slave
	public _Read_angle
	public _get_random_90_250
	public _simple_rand
	public _Move_forward
	public _Right_angle
	public _Move_back_ms
	public _Init_all
	public _check_bound
	public _servo_moveaway
	public _Move_forward_ms
	public _servo_push
	public _servo_pick
	public _Timer5_ISR
	public _ReadHX711
	public _ADC_at_Pin
	public _InitPinADC
	public _InitADC
	public _Set_Pin_Input
	public _Set_Pin_Output
	public _measure_distance
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
	public _BMM150_Read_Data
	public _BMM150_compensate_y
	public _BMM150_compensate_x
	public _BMM150_Init
	public _BMM150_Read_Trim_Registers
	public _SPI_write
	public _SPI_read
	public _SPI_transfer
	public _waitms
	public _Timer3us
	public __c51_external_startup
	public _pick
	public _auto_mode
	public _duration
	public _weight
	public _mea_yes
	public _angle_diff
	public _last_raw_angle
	public _raw_angle
	public _curr_angle
	public _pwm_corr
	public _seed
	public _weight_mea_count
	public _fre_mea_count
	public _vy
	public _vx
	public _vy_thres
	public _vx_thres
	public _servo_arm
	public _servo_base
	public _R_motor_dir
	public _L_motor_dir
	public _pwm_right
	public _pwm_left
	public _servo_counter
	public _pwm_counter
	public _i
	public _i_loo
	public _overflow_count
	public _distance
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
	public _d2
	public _d1
	public _freq100
	public _buff
	public _Joystick_Control_PARM_2
	public _getstr1_PARM_2
	public _BMM150_Read_Data_PARM_2
	public _BMM150_compensate_y_PARM_2
	public _BMM150_compensate_x_PARM_2
	public _SPI_write_PARM_2
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
; overlayable bit register bank
;--------------------------------------------------------
	rseg BIT_BANK
bits:
	ds 1
	b0 equ  bits.0 
	b1 equ  bits.1 
	b2 equ  bits.2 
	b3 equ  bits.3 
	b4 equ  bits.4 
	b5 equ  bits.5 
	b6 equ  bits.6 
	b7 equ  bits.7 
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	rseg R_DSEG
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
_BMM150_Read_Data_PARM_2:
	ds 3
_BMM150_Read_Data_mag_x_1_123:
	ds 3
_getstr1_PARM_2:
	ds 1
_Auto_mode_slave_sloc0_1_0:
	ds 2
_Joystick_Control_PARM_2:
	ds 3
_Joystick_Control_sloc0_1_0:
	ds 2
_Joystick_Control_sloc1_1_0:
	ds 1
_Joystick_Control_sloc2_1_0:
	ds 1
_Joystick_Control_sloc3_1_0:
	ds 4
_Joystick_Control_sloc4_1_0:
	ds 4
_Joystick_Control_sloc5_1_0:
	ds 4
_main_sloc0_1_0:
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
	rseg	R_OSEG
_check_bound_PARM_2:
	ds 2
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
_freq100:
	ds 4
_d1:
	ds 2
_d2:
	ds 2
_dig_x1:
	ds 1
_dig_x2:
	ds 1
_dig_y1:
	ds 1
_dig_y2:
	ds 1
_dig_z1:
	ds 2
_dig_z2:
	ds 2
_dig_z3:
	ds 2
_dig_z4:
	ds 2
_dig_xy1:
	ds 1
_dig_xy2:
	ds 1
_dig_xyz1:
	ds 2
_distance:
	ds 2
_overflow_count:
	ds 1
_i_loo:
	ds 2
_i:
	ds 2
_BMM150_Read_Trim_Registers_trim_x1y1_1_97:
	ds 2
_BMM150_Read_Trim_Registers_trim_xyz_data_1_97:
	ds 4
_BMM150_Read_Trim_Registers_trim_xy1xy2_1_97:
	ds 10
_BMM150_compensate_x_retval_1_106:
	ds 2
_BMM150_compensate_x_process_comp_x0_1_106:
	ds 2
_BMM150_compensate_y_retval_1_115:
	ds 2
_BMM150_compensate_y_process_comp_y0_1_115:
	ds 2
_BMM150_Read_Data_x_val_1_124:
	ds 2
_BMM150_Read_Data_y_val_1_124:
	ds 2
_BMM150_Read_Data_rhall_val_1_124:
	ds 2
_ReadHX711_dataa_1_174:
	ds 4
_ReadHX711_j_1_174:
	ds 1
_Read_angle_mag_x_1_229:
	ds 2
_Read_angle_mag_y_1_229:
	ds 2
_Read_angle_sum_x_1_229:
	ds 4
_Read_angle_sum_y_1_229:
	ds 4
_Read_angle_angle_1_229:
	ds 4
_Auto_mode_slave_command_1_231:
	ds 2
_Auto_mode_slave_state_res_1_231:
	ds 2
_Auto_mode_slave_dummy_1_231:
	ds 2
_Joystick_Control_vx_error_1_242:
	ds 2
_Joystick_Control_vy_error_1_242:
	ds 2
_Joystick_Control_vx_err_1_242:
	ds 2
_Joystick_Control_vy_err_1_242:
	ds 2
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	XSEG
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	rseg R_IXSEG
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
_vx_thres:
	ds 2
_vy_thres:
	ds 2
_vx:
	ds 2
_vy:
	ds 2
_fre_mea_count:
	ds 2
_weight_mea_count:
	ds 2
_seed:
	ds 2
_pwm_corr:
	ds 4
_curr_angle:
	ds 4
_raw_angle:
	ds 4
_last_raw_angle:
	ds 4
_angle_diff:
	ds 4
_mea_yes:
	ds 1
_weight:
	ds 2
_duration:
	ds 4
_auto_mode:
	ds 2
_pick:
	ds 1
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
	; The linker places a 'ret' at the end of segment R_DINIT.
;--------------------------------------------------------
; code
;--------------------------------------------------------
	rseg R_CSEG
;------------------------------------------------------------
;Allocation info for local variables in function '_c51_external_startup'
;------------------------------------------------------------
;------------------------------------------------------------
;	main.c:120: char _c51_external_startup (void)
;	-----------------------------------------
;	 function _c51_external_startup
;	-----------------------------------------
__c51_external_startup:
	using	0
;	main.c:123: SFRPAGE = 0x00;
	mov	_SFRPAGE,#0x00
;	main.c:124: WDTCN = 0xDE; //First key
	mov	_WDTCN,#0xDE
;	main.c:125: WDTCN = 0xAD; //Second key
	mov	_WDTCN,#0xAD
;	main.c:127: VDM0CN=0x80;       // enable VDD monitor
	mov	_VDM0CN,#0x80
;	main.c:128: RSTSRC=0x02|0x04;  // Enable reset on missing clock detector and VDD
	mov	_RSTSRC,#0x06
;	main.c:135: SFRPAGE = 0x10;
	mov	_SFRPAGE,#0x10
;	main.c:136: PFE0CN  = 0x20; // SYSCLK < 75 MHz.
	mov	_PFE0CN,#0x20
;	main.c:137: SFRPAGE = 0x00;
	mov	_SFRPAGE,#0x00
;	main.c:158: CLKSEL = 0x00;
	mov	_CLKSEL,#0x00
;	main.c:159: CLKSEL = 0x00;
	mov	_CLKSEL,#0x00
;	main.c:160: while ((CLKSEL & 0x80) == 0);
L002001?:
	mov	a,_CLKSEL
	jnb	acc.7,L002001?
;	main.c:161: CLKSEL = 0x03;
	mov	_CLKSEL,#0x03
;	main.c:162: CLKSEL = 0x03;
	mov	_CLKSEL,#0x03
;	main.c:163: while ((CLKSEL & 0x80) == 0);
L002004?:
	mov	a,_CLKSEL
	jnb	acc.7,L002004?
;	main.c:169: P0MDOUT |= 0b_1100_0000;
	orl	_P0MDOUT,#0xC0
;	main.c:170: P1MDOUT |= 0b_0000_0110;
	orl	_P1MDOUT,#0x06
;	main.c:171: P2MDOUT |= 0b_0000_0001; // P2.0 in push-pull mode
	orl	_P2MDOUT,#0x01
;	main.c:172: XBR0     = 0b_0000_0011; // UART0E = 1 and SPI0E = 1 0b_0000_0011               
	mov	_XBR0,#0x03
;	main.c:173: XBR1     = 0b_0000_0000;
	mov	_XBR1,#0x00
;	main.c:174: XBR2     = 0b_0100_0001; // Enable crossbar and uart 1
	mov	_XBR2,#0x41
;	main.c:175: P0SKIP 	 = 0b_0000_0111; 
	mov	_P0SKIP,#0x07
;	main.c:176: P1SKIP   = 0b_1111_1001;
	mov	_P1SKIP,#0xF9
;	main.c:181: SCON0 = 0x10;
	mov	_SCON0,#0x10
;	main.c:182: TH1 = 0x100-((SYSCLK/BAUDRATE)/(2L*12L));
	mov	_TH1,#0xE6
;	main.c:183: TL1 = TH1;      // Init Timer1
	mov	_TL1,_TH1
;	main.c:184: TMOD &= ~0xf0;  // TMOD: timer 1 in 8-bit auto-reload
	anl	_TMOD,#0x0F
;	main.c:185: TMOD |=  0x20;                       
	orl	_TMOD,#0x20
;	main.c:186: TR1 = 1; // START Timer1
	setb	_TR1
;	main.c:187: TI = 1;  // Indicate TX0 ready
	setb	_TI
;	main.c:188: P2_0=1; // 'set' pin to 1 is normal operation mode.
	setb	_P2_0
;	main.c:191: SPI0CKR = (SYSCLK/(2*F_SCK_MAX))-1;
	mov	_SPI0CKR,#0x11
;	main.c:192: SPI0CFG = 0b_1110_0000; // SPI mode 3
	mov	_SPI0CFG,#0xE0
;	main.c:193: SPI0CN0 = 0b_0000_0001; // SPI enabled and in three wire mode
	mov	_SPI0CN0,#0x01
;	main.c:196: SFRPAGE=0x10;
	mov	_SFRPAGE,#0x10
;	main.c:197: TMR5CN0=0x00;
	mov	_TMR5CN0,#0x00
;	main.c:198: TMR5=0xffff;   // Set to reload immediately
	mov	_TMR5,#0xFF
	mov	(_TMR5 >> 8),#0xFF
;	main.c:199: EIE2|=0b_0000_1000; // Enable Timer5 interrupts
	orl	_EIE2,#0x08
;	main.c:200: TR5=1;         // Start Timer5 (TMR5CN0 is bit addressable)
	setb	_TR5
;	main.c:202: EA=1;  // Enable global interrupts
	setb	_EA
;	main.c:203: SFRPAGE=0x00;
	mov	_SFRPAGE,#0x00
;	main.c:205: return 0;
	mov	dpl,#0x00
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Timer3us'
;------------------------------------------------------------
;us                        Allocated to registers r2 
;i                         Allocated to registers r3 
;------------------------------------------------------------
;	main.c:209: void Timer3us(unsigned char us)
;	-----------------------------------------
;	 function Timer3us
;	-----------------------------------------
_Timer3us:
	mov	r2,dpl
;	main.c:214: CKCON0|=0b_0100_0000;
	orl	_CKCON0,#0x40
;	main.c:216: TMR3RL = (-(SYSCLK)/1000000L); // Set Timer3 to overflow in 1us.
	mov	_TMR3RL,#0xB8
	mov	(_TMR3RL >> 8),#0xFF
;	main.c:217: TMR3 = TMR3RL;                 // Initialize Timer3 for first overflow
	mov	_TMR3,_TMR3RL
	mov	(_TMR3 >> 8),(_TMR3RL >> 8)
;	main.c:219: TMR3CN0 = 0x04;                 // Sart Timer3 and clear overflow flag
	mov	_TMR3CN0,#0x04
;	main.c:220: for (i = 0; i < us; i++)       // Count <us> overflows
	mov	r3,#0x00
L003004?:
	clr	c
	mov	a,r3
	subb	a,r2
	jnc	L003007?
;	main.c:222: while (!(TMR3CN0 & 0x80));  // Wait for overflow
L003001?:
	mov	a,_TMR3CN0
	jnb	acc.7,L003001?
;	main.c:223: TMR3CN0 &= ~(0x80);         // Clear overflow indicator
	anl	_TMR3CN0,#0x7F
;	main.c:220: for (i = 0; i < us; i++)       // Count <us> overflows
	inc	r3
	sjmp	L003004?
L003007?:
;	main.c:225: TMR3CN0 = 0 ;                   // Stop Timer3 and clear overflow flag
	mov	_TMR3CN0,#0x00
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'waitms'
;------------------------------------------------------------
;ms                        Allocated to registers r2 r3 
;j                         Allocated to registers r4 r5 
;k                         Allocated to registers r6 
;------------------------------------------------------------
;	main.c:228: void waitms (unsigned int ms)
;	-----------------------------------------
;	 function waitms
;	-----------------------------------------
_waitms:
	mov	r2,dpl
	mov	r3,dph
;	main.c:232: for(j=0; j<ms; j++)
	mov	r4,#0x00
	mov	r5,#0x00
L004005?:
	clr	c
	mov	a,r4
	subb	a,r2
	mov	a,r5
	subb	a,r3
	jnc	L004009?
;	main.c:233: for (k=0; k<4; k++) Timer3us(250);
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
;	main.c:232: for(j=0; j<ms; j++)
	inc	r4
	cjne	r4,#0x00,L004005?
	inc	r5
	sjmp	L004005?
L004009?:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'SPI_transfer'
;------------------------------------------------------------
;tx_data                   Allocated to registers 
;------------------------------------------------------------
;	main.c:236: unsigned char SPI_transfer(unsigned char tx_data)
;	-----------------------------------------
;	 function SPI_transfer
;	-----------------------------------------
_SPI_transfer:
	mov	_SPI0DAT,dpl
;	main.c:239: while (!SPIF);      // Wait for transfer to complete
L005001?:
;	main.c:240: SPIF = 0;           // Clear SPI interrupt flag
	jbc	_SPIF,L005008?
	sjmp	L005001?
L005008?:
;	main.c:241: return SPI0DAT;     // Return received data
	mov	dpl,_SPI0DAT
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'SPI_read'
;------------------------------------------------------------
;reg_addr                  Allocated to registers r2 
;value                     Allocated with name '_SPI_read_value_1_93'
;------------------------------------------------------------
;	main.c:244: unsigned char SPI_read(unsigned char reg_addr)
;	-----------------------------------------
;	 function SPI_read
;	-----------------------------------------
_SPI_read:
	mov	r2,dpl
;	main.c:249: reg_addr = reg_addr | 0x80;
	orl	ar2,#0x80
;	main.c:251: CS = 0;                // Select the device
	clr	_P1_0
;	main.c:252: SPI_transfer(reg_addr);     // Send register address
	mov	dpl,r2
	lcall	_SPI_transfer
;	main.c:253: value = SPI_transfer(0x00); // Read value (send dummy byte) dummy byte is a placeholder byte sent by the master when it wants to receive data
	mov	dpl,#0x00
	lcall	_SPI_transfer
;	main.c:254: CS = 1;                // Deselect the device
	setb	_P1_0
;	main.c:256: return value;
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'SPI_write'
;------------------------------------------------------------
;reg_value                 Allocated with name '_SPI_write_PARM_2'
;reg_addr                  Allocated to registers r2 
;------------------------------------------------------------
;	main.c:259: void SPI_write(unsigned char reg_addr, unsigned char reg_value)
;	-----------------------------------------
;	 function SPI_write
;	-----------------------------------------
_SPI_write:
	mov	r2,dpl
;	main.c:262: reg_addr = reg_addr & 0x7F;
	anl	ar2,#0x7F
;	main.c:264: CS = 0;                // Select device
	clr	_P1_0
;	main.c:265: SPI_transfer(reg_addr);     // Send register address
	mov	dpl,r2
	lcall	_SPI_transfer
;	main.c:266: SPI_transfer(reg_value);    // Send value
	mov	dpl,_SPI_write_PARM_2
	lcall	_SPI_transfer
;	main.c:267: CS = 1;                // Deselect device
	setb	_P1_0
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'BMM150_Read_Trim_Registers'
;------------------------------------------------------------
;temp_msb                  Allocated with name '_BMM150_Read_Trim_Registers_temp_msb_1_97'
;trim_x1y1                 Allocated with name '_BMM150_Read_Trim_Registers_trim_x1y1_1_97'
;trim_xyz_data             Allocated with name '_BMM150_Read_Trim_Registers_trim_xyz_data_1_97'
;trim_xy1xy2               Allocated with name '_BMM150_Read_Trim_Registers_trim_xy1xy2_1_97'
;------------------------------------------------------------
;	main.c:270: void BMM150_Read_Trim_Registers(void)
;	-----------------------------------------
;	 function BMM150_Read_Trim_Registers
;	-----------------------------------------
_BMM150_Read_Trim_Registers:
;	main.c:274: xdata uint8_t trim_x1y1[2] = {0};
	mov	dptr,#_BMM150_Read_Trim_Registers_trim_x1y1_1_97
;	main.c:275: xdata uint8_t trim_xyz_data[4] = {0};
	clr	a
	movx	@dptr,a
	mov	dptr,#(_BMM150_Read_Trim_Registers_trim_x1y1_1_97 + 0x0001)
	movx	@dptr,a
	mov	dptr,#_BMM150_Read_Trim_Registers_trim_xyz_data_1_97
	movx	@dptr,a
	mov	dptr,#(_BMM150_Read_Trim_Registers_trim_xyz_data_1_97 + 0x0001)
	movx	@dptr,a
	mov	dptr,#(_BMM150_Read_Trim_Registers_trim_xyz_data_1_97 + 0x0002)
;	main.c:276: xdata uint8_t trim_xy1xy2[10] = {0};
	clr	a
	movx	@dptr,a
	mov	dptr,#(_BMM150_Read_Trim_Registers_trim_xyz_data_1_97 + 0x0003)
	movx	@dptr,a
	mov	dptr,#_BMM150_Read_Trim_Registers_trim_xy1xy2_1_97
	movx	@dptr,a
	mov	dptr,#(_BMM150_Read_Trim_Registers_trim_xy1xy2_1_97 + 0x0001)
	movx	@dptr,a
	mov	dptr,#(_BMM150_Read_Trim_Registers_trim_xy1xy2_1_97 + 0x0002)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_BMM150_Read_Trim_Registers_trim_xy1xy2_1_97 + 0x0003)
	movx	@dptr,a
	mov	dptr,#(_BMM150_Read_Trim_Registers_trim_xy1xy2_1_97 + 0x0004)
	movx	@dptr,a
	mov	dptr,#(_BMM150_Read_Trim_Registers_trim_xy1xy2_1_97 + 0x0005)
	movx	@dptr,a
	mov	dptr,#(_BMM150_Read_Trim_Registers_trim_xy1xy2_1_97 + 0x0006)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_BMM150_Read_Trim_Registers_trim_xy1xy2_1_97 + 0x0007)
	movx	@dptr,a
	mov	dptr,#(_BMM150_Read_Trim_Registers_trim_xy1xy2_1_97 + 0x0008)
	movx	@dptr,a
	mov	dptr,#(_BMM150_Read_Trim_Registers_trim_xy1xy2_1_97 + 0x0009)
	movx	@dptr,a
;	main.c:279: for (i=0;i<2;i++){
	mov	dptr,#_i
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
L008001?:
	mov	dptr,#_i
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	clr	c
	mov	a,r2
	subb	a,#0x02
	mov	a,r3
	subb	a,#0x00
	jnc	L008004?
;	main.c:280: trim_x1y1[i] = SPI_read(BMM150_DIG_X1+i); 
	mov	a,r2
	add	a,#_BMM150_Read_Trim_Registers_trim_x1y1_1_97
	mov	r4,a
	mov	a,r3
	addc	a,#(_BMM150_Read_Trim_Registers_trim_x1y1_1_97 >> 8)
	mov	r5,a
	mov	a,#0x5D
	add	a,r2
	mov	dpl,a
	push	ar4
	push	ar5
	lcall	_SPI_read
	mov	r2,dpl
	pop	ar5
	pop	ar4
	mov	dpl,r4
	mov	dph,r5
	mov	a,r2
	movx	@dptr,a
;	main.c:279: for (i=0;i<2;i++){
	mov	dptr,#_i
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
	sjmp	L008001?
L008004?:
;	main.c:282: for (i=0;i<4;i++){
	mov	dptr,#_i
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
L008005?:
	mov	dptr,#_i
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	clr	c
	mov	a,r2
	subb	a,#0x04
	mov	a,r3
	subb	a,#0x00
	jnc	L008008?
;	main.c:283: trim_xyz_data[i] = SPI_read(BMM150_DIG_Z4_LSB+i);
	mov	a,r2
	add	a,#_BMM150_Read_Trim_Registers_trim_xyz_data_1_97
	mov	r4,a
	mov	a,r3
	addc	a,#(_BMM150_Read_Trim_Registers_trim_xyz_data_1_97 >> 8)
	mov	r5,a
	mov	a,#0x62
	add	a,r2
	mov	dpl,a
	push	ar4
	push	ar5
	lcall	_SPI_read
	mov	r2,dpl
	pop	ar5
	pop	ar4
	mov	dpl,r4
	mov	dph,r5
	mov	a,r2
	movx	@dptr,a
;	main.c:282: for (i=0;i<4;i++){
	mov	dptr,#_i
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
	sjmp	L008005?
L008008?:
;	main.c:285: for (i=0;i<10;i++){
	mov	dptr,#_i
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
L008009?:
	mov	dptr,#_i
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	clr	c
	mov	a,r2
	subb	a,#0x0A
	mov	a,r3
	subb	a,#0x00
	jnc	L008012?
;	main.c:286: trim_xy1xy2[i] = SPI_read(BMM150_DIG_Z2_LSB+i);
	mov	a,r2
	add	a,#_BMM150_Read_Trim_Registers_trim_xy1xy2_1_97
	mov	r4,a
	mov	a,r3
	addc	a,#(_BMM150_Read_Trim_Registers_trim_xy1xy2_1_97 >> 8)
	mov	r5,a
	mov	a,#0x68
	add	a,r2
	mov	dpl,a
	push	ar4
	push	ar5
	lcall	_SPI_read
	mov	r2,dpl
	pop	ar5
	pop	ar4
	mov	dpl,r4
	mov	dph,r5
	mov	a,r2
	movx	@dptr,a
;	main.c:285: for (i=0;i<10;i++){
	mov	dptr,#_i
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
	sjmp	L008009?
L008012?:
;	main.c:289: dig_x1 = (int8_t) trim_x1y1[0]; 
	mov	dptr,#_BMM150_Read_Trim_Registers_trim_x1y1_1_97
	movx	a,@dptr
	mov	dptr,#_dig_x1
	movx	@dptr,a
;	main.c:290: dig_y1 = (int8_t) trim_x1y1[1]; 
	mov	dptr,#(_BMM150_Read_Trim_Registers_trim_x1y1_1_97 + 0x0001)
	movx	a,@dptr
	mov	dptr,#_dig_y1
	movx	@dptr,a
;	main.c:291: dig_x2 = (int8_t) trim_xyz_data[2]; 
	mov	dptr,#(_BMM150_Read_Trim_Registers_trim_xyz_data_1_97 + 0x0002)
	movx	a,@dptr
	mov	dptr,#_dig_x2
	movx	@dptr,a
;	main.c:292: dig_y2 = (int8_t) trim_xyz_data[3]; 
	mov	dptr,#(_BMM150_Read_Trim_Registers_trim_xyz_data_1_97 + 0x0003)
	movx	a,@dptr
	mov	dptr,#_dig_y2
	movx	@dptr,a
;	main.c:306: dig_xy1 = trim_xy1xy2[9];
	mov	dptr,#(_BMM150_Read_Trim_Registers_trim_xy1xy2_1_97 + 0x0009)
	movx	a,@dptr
	mov	dptr,#_dig_xy1
	movx	@dptr,a
;	main.c:307: dig_xy2 = (int8_t)trim_xy1xy2[8];
	mov	dptr,#(_BMM150_Read_Trim_Registers_trim_xy1xy2_1_97 + 0x0008)
	movx	a,@dptr
	mov	dptr,#_dig_xy2
	movx	@dptr,a
;	main.c:309: temp_msb = ((uint16_t)(trim_xy1xy2[5] & 0x7F)) << 8;
	mov	dptr,#(_BMM150_Read_Trim_Registers_trim_xy1xy2_1_97 + 0x0005)
	movx	a,@dptr
	mov	r2,a
	anl	ar2,#0x7F
	mov	ar3,r2
	mov	r2,#0x00
;	main.c:310: dig_xyz1 = (uint16_t)(temp_msb | trim_xy1xy2[4]);
	mov	dptr,#(_BMM150_Read_Trim_Registers_trim_xy1xy2_1_97 + 0x0004)
	movx	a,@dptr
	mov	r4,a
	mov	r5,#0x00
	mov	dptr,#_dig_xyz1
	mov	a,r4
	orl	a,r2
	movx	@dptr,a
	mov	a,r5
	orl	a,r3
	inc	dptr
	movx	@dptr,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'BMM150_Init'
;------------------------------------------------------------
;chip_id                   Allocated with name '_BMM150_Init_chip_id_1_102'
;------------------------------------------------------------
;	main.c:314: void BMM150_Init(void)
;	-----------------------------------------
;	 function BMM150_Init
;	-----------------------------------------
_BMM150_Init:
;	main.c:319: CS = 1; // Deselect BMM150
	setb	_P1_0
;	main.c:322: waitms(10);
	mov	dptr,#0x000A
	lcall	_waitms
;	main.c:325: SPI_write(BMM150_POWER_CONTROL, 0x82);
	mov	_SPI_write_PARM_2,#0x82
	mov	dpl,#0x4B
	lcall	_SPI_write
;	main.c:326: waitms(10);  // Wait for reset to complete
	mov	dptr,#0x000A
	lcall	_waitms
;	main.c:329: SPI_write(BMM150_POWER_CONTROL, BMM150_POWER_ON);
	mov	_SPI_write_PARM_2,#0x01
	mov	dpl,#0x4B
	lcall	_SPI_write
;	main.c:330: waitms(5);
	mov	dptr,#0x0005
	lcall	_waitms
;	main.c:333: chip_id = SPI_read(BMM150_CHIP_ID);
	mov	dpl,#0x40
	lcall	_SPI_read
	mov	r2,dpl
;	main.c:334: if (chip_id != BMM150_CHIP_ID_VALUE)
	cjne	r2,#0x32,L009006?
	sjmp	L009002?
L009006?:
;	main.c:336: printf("Error: Could not find BMM150 sensor (Chip ID: 0x%02X)\r\n", chip_id);
	mov	ar3,r2
	mov	r4,#0x00
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
	add	a,#0xfb
	mov	sp,a
	pop	ar2
L009002?:
;	main.c:346: SPI_write(BMM150_OP_MODE, BMM150_NORMAL_MODE | (BMM150_ODR_10HZ * 8));
	mov	_SPI_write_PARM_2,#0x00
	mov	dpl,#0x4C
	push	ar2
	lcall	_SPI_write
;	main.c:349: SPI_write(BMM150_REP_XY, 0x7F); // XY-repetitions = 9
	mov	_SPI_write_PARM_2,#0x7F
	mov	dpl,#0x51
	lcall	_SPI_write
;	main.c:350: SPI_write(BMM150_REP_Z, 0x0E);  // Z-repetitions = 15
	mov	_SPI_write_PARM_2,#0x0E
	mov	dpl,#0x52
	lcall	_SPI_write
;	main.c:352: BMM150_Read_Trim_Registers();
	lcall	_BMM150_Read_Trim_Registers
;	main.c:354: printf("BMM150 initialized successfully! Chip ID: 0x%02X\r\n", chip_id);
	mov	r3,#0x00
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
;	main.c:355: return; 
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'BMM150_compensate_x'
;------------------------------------------------------------
;data_rhall                Allocated with name '_BMM150_compensate_x_PARM_2'
;mag_data_x                Allocated to registers r2 r3 r4 
;sloc0                     Allocated with name '_BMM150_compensate_x_sloc0_1_0'
;retval                    Allocated with name '_BMM150_compensate_x_retval_1_106'
;process_comp_x0           Allocated with name '_BMM150_compensate_x_process_comp_x0_1_106'
;process_comp_x1           Allocated with name '_BMM150_compensate_x_process_comp_x1_1_106'
;process_comp_x2           Allocated with name '_BMM150_compensate_x_process_comp_x2_1_106'
;process_comp_x3           Allocated with name '_BMM150_compensate_x_process_comp_x3_1_106'
;process_comp_x4           Allocated with name '_BMM150_compensate_x_process_comp_x4_1_106'
;process_comp_x5           Allocated with name '_BMM150_compensate_x_process_comp_x5_1_106'
;process_comp_x6           Allocated with name '_BMM150_compensate_x_process_comp_x6_1_106'
;process_comp_x7           Allocated with name '_BMM150_compensate_x_process_comp_x7_1_106'
;process_comp_x8           Allocated with name '_BMM150_compensate_x_process_comp_x8_1_106'
;process_comp_x9           Allocated with name '_BMM150_compensate_x_process_comp_x9_1_106'
;process_comp_x10          Allocated with name '_BMM150_compensate_x_process_comp_x10_1_106'
;------------------------------------------------------------
;	main.c:358: int16_t BMM150_compensate_x(int16_t *mag_data_x, int16_t *data_rhall)
;	-----------------------------------------
;	 function BMM150_compensate_x
;	-----------------------------------------
_BMM150_compensate_x:
;	main.c:376: if (*mag_data_x != BMM150_OVERFLOW_ADCVAL_XYAXES_FLIP){
	mov	r4,b
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	cjne	r2,#0x00,L010019?
	cjne	r3,#0xF0,L010019?
	ljmp	L010011?
L010019?:
;	main.c:377: if (*data_rhall != 0)
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
	jz	L010005?
;	main.c:380: process_comp_x0 = *data_rhall;
	mov	dptr,#_BMM150_compensate_x_process_comp_x0_1_106
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
	sjmp	L010006?
L010005?:
;	main.c:382: else if (dig_xyz1 != 0)
	mov	dptr,#_dig_xyz1
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	orl	a,r4
	jz	L010002?
;	main.c:384: process_comp_x0 = dig_xyz1;
	mov	dptr,#_BMM150_compensate_x_process_comp_x0_1_106
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
	sjmp	L010006?
L010002?:
;	main.c:388: process_comp_x0 = 0;
	mov	dptr,#_BMM150_compensate_x_process_comp_x0_1_106
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
L010006?:
;	main.c:390: if (process_comp_x0 != 0)
	mov	dptr,#_BMM150_compensate_x_process_comp_x0_1_106
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	orl	a,r4
	jnz	L010022?
	ljmp	L010008?
L010022?:
;	main.c:393: process_comp_x1 = ((int32_t)dig_xyz1) * 16384;
	mov	dptr,#_dig_xyz1
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	clr	a
	mov	r0,a
	mov	a,r7
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
;	main.c:394: process_comp_x2 = ((uint16_t)(process_comp_x1 / process_comp_x0)) - ((uint16_t)0x4000);
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
;	main.c:396: process_comp_x3 = (((int32_t)retval) * ((int32_t)retval));
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
;	main.c:397: process_comp_x4 = (((int32_t)dig_xy2) * (process_comp_x3 / 128));
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
	mov	dptr,#_dig_xy2
	movx	a,@dptr
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
;	main.c:398: process_comp_x5 = (int32_t)(((int16_t)dig_xy1) * 128);
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
	mov	dptr,#_dig_xy1
	movx	a,@dptr
	mov	r6,a
	clr	a
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
;	main.c:399: process_comp_x6 = ((int32_t)retval) * process_comp_x5;
	mov	a,r5
	rlc	a
	subb	a,acc
	mov	r6,a
;	main.c:400: process_comp_x7 = (((process_comp_x4 + process_comp_x6) / 512) + ((int32_t)0x100000));
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
;	main.c:401: process_comp_x8 = ((int32_t)(((int16_t)dig_x2) + ((int16_t)0xA0)));
	mov	dptr,#_dig_x2
	movx	a,@dptr
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
;	main.c:402: process_comp_x9 = ((process_comp_x7 * process_comp_x8) / 4096);
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	__mullong
;	main.c:403: process_comp_x10 = ((int32_t)*mag_data_x) * process_comp_x9;
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
;	main.c:404: retval = ((int16_t)(process_comp_x10 / 8192));
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
;	main.c:405: retval = (retval + (((int16_t)dig_x1) * 8)) / 16;
	mov	dptr,#_dig_x1
	movx	a,@dptr
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
	mov	dptr,#_BMM150_compensate_x_retval_1_106
	movx	@dptr,a
	inc	dptr
	mov	a,b
	movx	@dptr,a
	sjmp	L010012?
L010008?:
;	main.c:408: retval = BMM150_OVERFLOW_OUTPUT; 
	mov	dptr,#_BMM150_compensate_x_retval_1_106
	clr	a
	movx	@dptr,a
	inc	dptr
	mov	a,#0x80
	movx	@dptr,a
	sjmp	L010012?
L010011?:
;	main.c:412: retval = BMM150_OVERFLOW_OUTPUT; 
	mov	dptr,#_BMM150_compensate_x_retval_1_106
	clr	a
	movx	@dptr,a
	inc	dptr
	mov	a,#0x80
	movx	@dptr,a
L010012?:
;	main.c:414: return retval; 
	mov	dptr,#_BMM150_compensate_x_retval_1_106
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
;retval                    Allocated with name '_BMM150_compensate_y_retval_1_115'
;process_comp_y0           Allocated with name '_BMM150_compensate_y_process_comp_y0_1_115'
;process_comp_y1           Allocated with name '_BMM150_compensate_y_process_comp_y1_1_115'
;process_comp_y2           Allocated with name '_BMM150_compensate_y_process_comp_y2_1_115'
;process_comp_y3           Allocated with name '_BMM150_compensate_y_process_comp_y3_1_115'
;process_comp_y4           Allocated with name '_BMM150_compensate_y_process_comp_y4_1_115'
;process_comp_y5           Allocated with name '_BMM150_compensate_y_process_comp_y5_1_115'
;process_comp_y6           Allocated with name '_BMM150_compensate_y_process_comp_y6_1_115'
;process_comp_y7           Allocated with name '_BMM150_compensate_y_process_comp_y7_1_115'
;process_comp_y8           Allocated with name '_BMM150_compensate_y_process_comp_y8_1_115'
;process_comp_y9           Allocated with name '_BMM150_compensate_y_process_comp_y9_1_115'
;------------------------------------------------------------
;	main.c:417: int16_t BMM150_compensate_y (int16_t *mag_data_y, int16_t *data_rhall)
;	-----------------------------------------
;	 function BMM150_compensate_y
;	-----------------------------------------
_BMM150_compensate_y:
;	main.c:435: if (*mag_data_y != BMM150_OVERFLOW_ADCVAL_XYAXES_FLIP)
	mov	r4,b
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	cjne	r2,#0x00,L011019?
	cjne	r3,#0xF0,L011019?
	ljmp	L011011?
L011019?:
;	main.c:437: if (*data_rhall != 0)
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
	jz	L011005?
;	main.c:440: process_comp_y0 = *data_rhall;
	mov	dptr,#_BMM150_compensate_y_process_comp_y0_1_115
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
	sjmp	L011006?
L011005?:
;	main.c:442: else if (dig_xyz1 != 0)
	mov	dptr,#_dig_xyz1
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	orl	a,r4
	jz	L011002?
;	main.c:444: process_comp_y0 = dig_xyz1;
	mov	dptr,#_BMM150_compensate_y_process_comp_y0_1_115
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
	sjmp	L011006?
L011002?:
;	main.c:448: process_comp_y0 = 0;
	mov	dptr,#_BMM150_compensate_y_process_comp_y0_1_115
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
L011006?:
;	main.c:451: if (process_comp_y0 != 0)
	mov	dptr,#_BMM150_compensate_y_process_comp_y0_1_115
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	orl	a,r4
	jnz	L011022?
	ljmp	L011008?
L011022?:
;	main.c:454: process_comp_y1 = (((int32_t)dig_xyz1) * 16384) / process_comp_y0;
	mov	dptr,#_dig_xyz1
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	clr	a
	mov	r0,a
	mov	a,r7
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
;	main.c:455: process_comp_y2 = ((uint16_t)process_comp_y1) - ((uint16_t)0x4000);
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
;	main.c:457: process_comp_y3 = ((int32_t) retval) * ((int32_t)retval);
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
;	main.c:458: process_comp_y4 = ((int32_t)dig_xy2) * (process_comp_y3 / 128);
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
	mov	dptr,#_dig_xy2
	movx	a,@dptr
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
;	main.c:459: process_comp_y5 = ((int32_t)(((int16_t)dig_xy1) * 128));
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
	mov	dptr,#_dig_xy1
	movx	a,@dptr
	mov	r6,a
	clr	a
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
;	main.c:460: process_comp_y6 = ((process_comp_y4 + (((int32_t)retval) * process_comp_y5)) / 512);
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
;	main.c:461: process_comp_y7 = ((int32_t)(((int16_t)dig_y2) + ((int16_t)0xA0)));
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	__divslong
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	dptr,#_dig_y2
	movx	a,@dptr
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
;	main.c:462: process_comp_y8 = (((process_comp_y6 + ((int32_t)0x100000)) * process_comp_y7) / 4096);
	mov	a,#0x10
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__mullong
;	main.c:463: process_comp_y9 = (((int32_t)*mag_data_y) * process_comp_y8);
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
;	main.c:464: retval = (int16_t)(process_comp_y9 / 8192);
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
;	main.c:465: retval = (retval + (((int16_t)dig_y1) * 8)) / 16;
	mov	dptr,#_dig_y1
	movx	a,@dptr
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
	mov	dptr,#_BMM150_compensate_y_retval_1_115
	movx	@dptr,a
	inc	dptr
	mov	a,b
	movx	@dptr,a
	sjmp	L011012?
L011008?:
;	main.c:469: retval = BMM150_OVERFLOW_OUTPUT;
	mov	dptr,#_BMM150_compensate_y_retval_1_115
	clr	a
	movx	@dptr,a
	inc	dptr
	mov	a,#0x80
	movx	@dptr,a
	sjmp	L011012?
L011011?:
;	main.c:475: retval = BMM150_OVERFLOW_OUTPUT;
	mov	dptr,#_BMM150_compensate_y_retval_1_115
	clr	a
	movx	@dptr,a
	inc	dptr
	mov	a,#0x80
	movx	@dptr,a
L011012?:
;	main.c:478: return retval;
	mov	dptr,#_BMM150_compensate_y_retval_1_115
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	dpl,r2
	mov	dph,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'BMM150_Read_Data'
;------------------------------------------------------------
;mag_y                     Allocated with name '_BMM150_Read_Data_PARM_2'
;mag_x                     Allocated with name '_BMM150_Read_Data_mag_x_1_123'
;raw_x_lsb                 Allocated with name '_BMM150_Read_Data_raw_x_lsb_1_124'
;raw_x_msb                 Allocated with name '_BMM150_Read_Data_raw_x_msb_1_124'
;raw_y_lsb                 Allocated with name '_BMM150_Read_Data_raw_y_lsb_1_124'
;raw_y_msb                 Allocated with name '_BMM150_Read_Data_raw_y_msb_1_124'
;raw_rhall_lsb             Allocated with name '_BMM150_Read_Data_raw_rhall_lsb_1_124'
;raw_rhall_msb             Allocated with name '_BMM150_Read_Data_raw_rhall_msb_1_124'
;x_val                     Allocated with name '_BMM150_Read_Data_x_val_1_124'
;y_val                     Allocated with name '_BMM150_Read_Data_y_val_1_124'
;rhall_val                 Allocated with name '_BMM150_Read_Data_rhall_val_1_124'
;msb_data                  Allocated with name '_BMM150_Read_Data_msb_data_1_124'
;------------------------------------------------------------
;	main.c:481: void BMM150_Read_Data(int16_t *mag_x, int16_t *mag_y)
;	-----------------------------------------
;	 function BMM150_Read_Data
;	-----------------------------------------
_BMM150_Read_Data:
	mov	_BMM150_Read_Data_mag_x_1_123,dpl
	mov	(_BMM150_Read_Data_mag_x_1_123 + 1),dph
	mov	(_BMM150_Read_Data_mag_x_1_123 + 2),b
;	main.c:488: raw_x_lsb = SPI_read(BMM150_DATA_X_LSB);
	mov	dpl,#0x42
	lcall	_SPI_read
	mov	r5,dpl
;	main.c:489: raw_x_msb = SPI_read(BMM150_DATA_X_MSB);
	mov	dpl,#0x43
	push	ar5
	lcall	_SPI_read
	mov	r6,dpl
;	main.c:490: raw_y_lsb = SPI_read(BMM150_DATA_Y_LSB);
	mov	dpl,#0x44
	push	ar6
	lcall	_SPI_read
	mov	r7,dpl
;	main.c:491: raw_y_msb = SPI_read(BMM150_DATA_Y_MSB);
	mov	dpl,#0x45
	push	ar7
	lcall	_SPI_read
	mov	r0,dpl
;	main.c:494: raw_rhall_lsb = SPI_read(BMM150_RHALL_LSB); 
	mov	dpl,#0x48
	push	ar0
	lcall	_SPI_read
	mov	r1,dpl
;	main.c:495: raw_rhall_msb = SPI_read(BMM150_RHALL_MSB);
	mov	dpl,#0x49
	push	ar1
	lcall	_SPI_read
	mov	r2,dpl
	pop	ar1
	pop	ar0
	pop	ar7
	pop	ar6
	pop	ar5
;	main.c:499: raw_x_lsb = ((raw_x_lsb & 0b_1111_1000)) >> 3;
	anl	ar5,#0xF8
	mov	a,r5
	swap	a
	rl	a
	anl	a,#0x1f
	mov	r5,a
;	main.c:500: msb_data = ((int16_t)((int8_t)raw_x_msb)) << 5; 
	mov	a,r6
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
	mov	r3,a
;	main.c:501: x_val = (int16_t)(msb_data | raw_x_lsb);
	mov	r4,#0x00
	mov	dptr,#_BMM150_Read_Data_x_val_1_124
	mov	a,r5
	orl	a,r6
	movx	@dptr,a
	mov	a,r4
	orl	a,r3
	inc	dptr
	movx	@dptr,a
;	main.c:504: raw_y_lsb = ((raw_y_lsb & 0b_1111_1000)) >> 3;
	anl	ar7,#0xF8
	mov	a,r7
	swap	a
	rl	a
	anl	a,#0x1f
	mov	r7,a
;	main.c:505: msb_data = ((int16_t)((int8_t)raw_y_msb)) << 5; 
	mov	a,r0
	rlc	a
	subb	a,acc
	swap	a
	rl	a
	anl	a,#0xe0
	xch	a,r0
	swap	a
	rl	a
	xch	a,r0
	xrl	a,r0
	xch	a,r0
	anl	a,#0xe0
	xch	a,r0
	xrl	a,r0
	mov	r3,a
;	main.c:506: y_val = (int16_t)(msb_data | raw_y_lsb);
	mov	r4,#0x00
	mov	dptr,#_BMM150_Read_Data_y_val_1_124
	mov	a,r7
	orl	a,r0
	movx	@dptr,a
	mov	a,r4
	orl	a,r3
	inc	dptr
	movx	@dptr,a
;	main.c:514: raw_rhall_lsb = ((raw_rhall_lsb & 0xFC) >> 2);
	anl	ar1,#0xFC
	mov	a,r1
	rr	a
	rr	a
	anl	a,#0x3f
	mov	r1,a
;	main.c:515: rhall_val = (uint16_t)(((uint16_t)raw_rhall_msb << 6) | raw_rhall_lsb);
	clr	a
	anl	a,#0x03
	mov	c,acc.0
	xch	a,r2
	rrc	a
	xch	a,r2
	rrc	a
	mov	c,acc.0
	xch	a,r2
	rrc	a
	xch	a,r2
	rrc	a
	xch	a,r2
	mov	r3,a
	mov	r4,#0x00
	mov	dptr,#_BMM150_Read_Data_rhall_val_1_124
	mov	a,r1
	orl	a,r2
	movx	@dptr,a
	mov	a,r4
	orl	a,r3
	inc	dptr
	movx	@dptr,a
;	main.c:518: *mag_x = BMM150_compensate_x(&x_val, &rhall_val);
	mov	_BMM150_compensate_x_PARM_2,#_BMM150_Read_Data_rhall_val_1_124
	mov	(_BMM150_compensate_x_PARM_2 + 1),#(_BMM150_Read_Data_rhall_val_1_124 >> 8)
	mov	(_BMM150_compensate_x_PARM_2 + 2),#0x00
	mov	dptr,#_BMM150_Read_Data_x_val_1_124
	mov	b,#0x00
	lcall	_BMM150_compensate_x
	mov	r2,dpl
	mov	r3,dph
	mov	dpl,_BMM150_Read_Data_mag_x_1_123
	mov	dph,(_BMM150_Read_Data_mag_x_1_123 + 1)
	mov	b,(_BMM150_Read_Data_mag_x_1_123 + 2)
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
;	main.c:519: *mag_y = BMM150_compensate_y(&y_val, &rhall_val);
	mov	r2,_BMM150_Read_Data_PARM_2
	mov	r3,(_BMM150_Read_Data_PARM_2 + 1)
	mov	r4,(_BMM150_Read_Data_PARM_2 + 2)
	mov	_BMM150_compensate_y_PARM_2,#_BMM150_Read_Data_rhall_val_1_124
	mov	(_BMM150_compensate_y_PARM_2 + 1),#(_BMM150_Read_Data_rhall_val_1_124 >> 8)
	mov	(_BMM150_compensate_y_PARM_2 + 2),#0x00
	mov	dptr,#_BMM150_Read_Data_y_val_1_124
	mov	b,#0x00
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
	ljmp	__gptrput
;------------------------------------------------------------
;Allocation info for local variables in function 'UART1_Init'
;------------------------------------------------------------
;baudrate                  Allocated to registers r2 r3 r4 r5 
;------------------------------------------------------------
;	main.c:525: void UART1_Init (unsigned long baudrate)
;	-----------------------------------------
;	 function UART1_Init
;	-----------------------------------------
_UART1_Init:
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
;	main.c:527: SFRPAGE = 0x20;
	mov	_SFRPAGE,#0x20
;	main.c:528: SMOD1 = 0x0C; // no parity, 8 data bits, 1 stop bit
	mov	_SMOD1,#0x0C
;	main.c:529: SCON1 = 0x10;
	mov	_SCON1,#0x10
;	main.c:530: SBCON1 =0x00;   // disable baud rate generator
	mov	_SBCON1,#0x00
;	main.c:531: SBRL1 = 0x10000L-((SYSCLK/baudrate)/(12L*2L));
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
;	main.c:532: TI1 = 1; // indicate ready for TX
	setb	_TI1
;	main.c:533: SBCON1 |= 0x40;   // enable baud rate generator
	orl	_SBCON1,#0x40
;	main.c:534: SFRPAGE = 0x00;
	mov	_SFRPAGE,#0x00
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'putchar1'
;------------------------------------------------------------
;c                         Allocated to registers r2 
;------------------------------------------------------------
;	main.c:537: void putchar1 (char c) 
;	-----------------------------------------
;	 function putchar1
;	-----------------------------------------
_putchar1:
	mov	r2,dpl
;	main.c:539: SFRPAGE = 0x20;
	mov	_SFRPAGE,#0x20
;	main.c:540: while (!TI1);
L014001?:
;	main.c:541: TI1=0;
	jbc	_TI1,L014008?
	sjmp	L014001?
L014008?:
;	main.c:542: SBUF1 = c;
	mov	_SBUF1,r2
;	main.c:543: SFRPAGE = 0x00;
	mov	_SFRPAGE,#0x00
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'sendstr1'
;------------------------------------------------------------
;s                         Allocated to registers r2 r3 r4 
;------------------------------------------------------------
;	main.c:546: void sendstr1 (char * s)
;	-----------------------------------------
;	 function sendstr1
;	-----------------------------------------
_sendstr1:
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
;	main.c:548: while(*s)
L015001?:
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r5,a
	jz	L015004?
;	main.c:550: putchar1(*s);
	mov	dpl,r5
	push	ar2
	push	ar3
	push	ar4
	lcall	_putchar1
	pop	ar4
	pop	ar3
	pop	ar2
;	main.c:551: s++;	
	inc	r2
	cjne	r2,#0x00,L015001?
	inc	r3
	sjmp	L015001?
L015004?:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'getchar1'
;------------------------------------------------------------
;c                         Allocated with name '_getchar1_c_1_133'
;------------------------------------------------------------
;	main.c:555: char getchar1 (void)
;	-----------------------------------------
;	 function getchar1
;	-----------------------------------------
_getchar1:
;	main.c:558: SFRPAGE = 0x20;
	mov	_SFRPAGE,#0x20
;	main.c:559: while (!RI1);
L016001?:
;	main.c:560: RI1=0;
	jbc	_RI1,L016008?
	sjmp	L016001?
L016008?:
;	main.c:562: SCON1&=0b_0011_1111;
	anl	_SCON1,#0x3F
;	main.c:563: c = SBUF1;
	mov	dpl,_SBUF1
;	main.c:564: SFRPAGE = 0x00;
	mov	_SFRPAGE,#0x00
;	main.c:565: return (c);
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'getchar1_with_timeout'
;------------------------------------------------------------
;c                         Allocated with name '_getchar1_with_timeout_c_1_135'
;timeout                   Allocated with name '_getchar1_with_timeout_timeout_1_135'
;------------------------------------------------------------
;	main.c:568: char getchar1_with_timeout (void)
;	-----------------------------------------
;	 function getchar1_with_timeout
;	-----------------------------------------
_getchar1_with_timeout:
;	main.c:572: SFRPAGE = 0x20;
	mov	_SFRPAGE,#0x20
;	main.c:574: while (!RI1)
	mov	r2,#0x00
	mov	r3,#0x00
L017003?:
	jb	_RI1,L017005?
;	main.c:576: SFRPAGE = 0x00;
	mov	_SFRPAGE,#0x00
;	main.c:577: Timer3us(20);
	mov	dpl,#0x14
	push	ar2
	push	ar3
	lcall	_Timer3us
	pop	ar3
	pop	ar2
;	main.c:578: SFRPAGE = 0x20;
	mov	_SFRPAGE,#0x20
;	main.c:579: timeout++;
	inc	r2
	cjne	r2,#0x00,L017012?
	inc	r3
L017012?:
;	main.c:580: if(timeout==25000)
	cjne	r2,#0xA8,L017003?
	cjne	r3,#0x61,L017003?
;	main.c:582: SFRPAGE = 0x00;
	mov	_SFRPAGE,#0x00
;	main.c:583: return ('\n'); // Timeout after half second
	mov	dpl,#0x0A
	ret
L017005?:
;	main.c:586: RI1=0;
	clr	_RI1
;	main.c:588: SCON1&=0b_0011_1111;
	anl	_SCON1,#0x3F
;	main.c:589: c = SBUF1;
	mov	dpl,_SBUF1
;	main.c:590: SFRPAGE = 0x00;
	mov	_SFRPAGE,#0x00
;	main.c:591: return (c);
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'getstr1'
;------------------------------------------------------------
;n                         Allocated with name '_getstr1_PARM_2'
;s                         Allocated to registers r2 r3 r4 
;c                         Allocated with name '_getstr1_c_1_139'
;cnt                       Allocated with name '_getstr1_cnt_1_139'
;------------------------------------------------------------
;	main.c:594: void getstr1 (char * s, unsigned char n)
;	-----------------------------------------
;	 function getstr1
;	-----------------------------------------
_getstr1:
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
;	main.c:600: while(1)
	mov	r5,#0x00
	mov	ar6,r2
	mov	ar7,r3
	mov	ar0,r4
L018007?:
;	main.c:602: c=getchar1_with_timeout();
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
;	main.c:603: if(c=='\n')
	cjne	r1,#0x0A,L018002?
;	main.c:605: *s=0;
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	clr	a
;	main.c:606: return;
	ljmp	__gptrput
L018002?:
;	main.c:609: if (cnt<n)
	clr	c
	mov	a,r5
	subb	a,_getstr1_PARM_2
	jnc	L018004?
;	main.c:611: cnt++;
	inc	r5
;	main.c:612: *s=c;
	mov	dpl,r6
	mov	dph,r7
	mov	b,r0
	mov	a,r1
	lcall	__gptrput
	inc	dptr
	mov	r6,dpl
	mov	r7,dph
;	main.c:613: s++;
	mov	ar2,r6
	mov	ar3,r7
	mov	ar4,r0
	sjmp	L018007?
L018004?:
;	main.c:617: *s=0;
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	clr	a
;	main.c:618: return;
	ljmp	__gptrput
;------------------------------------------------------------
;Allocation info for local variables in function 'RXU1'
;------------------------------------------------------------
;------------------------------------------------------------
;	main.c:624: bit RXU1 (void)
;	-----------------------------------------
;	 function RXU1
;	-----------------------------------------
_RXU1:
;	main.c:627: SFRPAGE = 0x20;
	mov	_SFRPAGE,#0x20
;	main.c:628: mybit=RI1;
	mov	c,_RI1
;	main.c:629: SFRPAGE = 0x00;
	mov	_SFRPAGE,#0x00
;	main.c:630: return mybit;
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'waitms_or_RI1'
;------------------------------------------------------------
;ms                        Allocated to registers r2 r3 
;j                         Allocated with name '_waitms_or_RI1_j_1_147'
;k                         Allocated with name '_waitms_or_RI1_k_1_147'
;------------------------------------------------------------
;	main.c:633: void waitms_or_RI1 (unsigned int ms)
;	-----------------------------------------
;	 function waitms_or_RI1
;	-----------------------------------------
_waitms_or_RI1:
	mov	r2,dpl
	mov	r3,dph
;	main.c:637: for(j=0; j<ms; j++)
	mov	r4,#0x00
	mov	r5,#0x00
L020007?:
	clr	c
	mov	a,r4
	subb	a,r2
	mov	a,r5
	subb	a,r3
	jnc	L020011?
;	main.c:639: for (k=0; k<4; k++)
	mov	r6,#0x00
L020003?:
	cjne	r6,#0x04,L020019?
L020019?:
	jnc	L020009?
;	main.c:641: if(RXU1()) return;
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
	jz	L020002?
	ret
L020002?:
;	main.c:642: Timer3us(250);
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
;	main.c:639: for (k=0; k<4; k++)
	inc	r6
	sjmp	L020003?
L020009?:
;	main.c:637: for(j=0; j<ms; j++)
	inc	r4
	cjne	r4,#0x00,L020007?
	inc	r5
	sjmp	L020007?
L020011?:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'SendATCommand'
;------------------------------------------------------------
;s                         Allocated to registers r2 r3 r4 
;------------------------------------------------------------
;	main.c:647: void SendATCommand (char * s)
;	-----------------------------------------
;	 function SendATCommand
;	-----------------------------------------
_SendATCommand:
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
;	main.c:649: printf("Command: %s", s);
	push	ar2
	push	ar3
	push	ar4
	push	ar2
	push	ar3
	push	ar4
	mov	a,#__str_2
	push	acc
	mov	a,#(__str_2 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
;	main.c:650: P2_0=0; // 'set' pin to 0 is 'AT' mode.
	clr	_P2_0
;	main.c:651: waitms(5);
	mov	dptr,#0x0005
	lcall	_waitms
	pop	ar4
	pop	ar3
	pop	ar2
;	main.c:652: sendstr1(s);
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_sendstr1
;	main.c:653: getstr1(buff, sizeof(buff)-1);
	mov	_getstr1_PARM_2,#0x13
	mov	dptr,#_buff
	mov	b,#0x40
	lcall	_getstr1
;	main.c:654: waitms(10);
	mov	dptr,#0x000A
	lcall	_waitms
;	main.c:655: P2_0=1; // 'set' pin to 1 is normal operation mode.
	setb	_P2_0
;	main.c:656: printf("Response: %s\r\n", buff);
	mov	a,#_buff
	push	acc
	mov	a,#(_buff >> 8)
	push	acc
	mov	a,#0x40
	push	acc
	mov	a,#__str_3
	push	acc
	mov	a,#(__str_3 >> 8)
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
;	main.c:659: void ReceptionOff (void)
;	-----------------------------------------
;	 function ReceptionOff
;	-----------------------------------------
_ReceptionOff:
;	main.c:661: P2_0=0; // 'set' pin to 0 is 'AT' mode.
	clr	_P2_0
;	main.c:662: waitms(10);
	mov	dptr,#0x000A
	lcall	_waitms
;	main.c:663: sendstr1("AT+DVID0000\r\n"); // Some unused id, so that we get nothing in RXD1.
	mov	dptr,#__str_4
	mov	b,#0x80
	lcall	_sendstr1
;	main.c:664: waitms(10);
	mov	dptr,#0x000A
	lcall	_waitms
;	main.c:666: SCON1&=0b_0011_1111;
	anl	_SCON1,#0x3F
;	main.c:667: P2_0=1; // 'set' pin to 1 is normal operation mode.
	setb	_P2_0
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'measure_distance'
;------------------------------------------------------------
;------------------------------------------------------------
;	main.c:670: int measure_distance(void)
;	-----------------------------------------
;	 function measure_distance
;	-----------------------------------------
_measure_distance:
;	main.c:674: TL0 = 0; 
	mov	_TL0,#0x00
;	main.c:675: TH0 = 0; 
	mov	_TH0,#0x00
;	main.c:676: TF0 = 0; 
	clr	_TF0
;	main.c:677: overflow_count = 0;
	mov	dptr,#_overflow_count
;	main.c:678: duration = 0;
	clr	a
	movx	@dptr,a
	mov	dptr,#_duration
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	main.c:680: TRIG_PIN = 1; 
	setb	_P0_0
;	main.c:681: for(i = 0; i < 40; i++);
	mov	dptr,#_i
	mov	a,#0x28
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
L023016?:
	mov	dptr,#_i
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	dec	r2
	cjne	r2,#0xff,L023029?
	dec	r3
L023029?:
	mov	dptr,#_i
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	mov	dptr,#_i
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	orl	a,r2
	jnz	L023016?
	mov	dptr,#_i
	mov	a,#0x28
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	main.c:682: TRIG_PIN = 0; 
	clr	_P0_0
;	main.c:684: while (ECHO_PIN != 0){
L023003?:
	jnb	_P3_1,L023006?
;	main.c:685: i++;
	mov	dptr,#_i
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
;	main.c:686: if (i > 3000){
	mov	dptr,#_i
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	clr	c
	mov	a,#0xB8
	subb	a,r2
	mov	a,#0x0B
	subb	a,r3
	jnc	L023003?
;	main.c:688: return -1;
	mov	dptr,#0xFFFF
	ret
;	main.c:691: while (ECHO_PIN != 1);
L023006?:
	jnb	_P3_1,L023006?
;	main.c:692: TR0 = 1; 
	setb	_TR0
;	main.c:693: while (ECHO_PIN == 1)
L023011?:
	jnb	_P3_1,L023013?
;	main.c:695: if (TF0 == 1){
;	main.c:696: TF0 = 0; 
	jbc	_TF0,L023035?
	sjmp	L023011?
L023035?:
;	main.c:697: overflow_count++;
	mov	dptr,#_overflow_count
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	sjmp	L023011?
L023013?:
;	main.c:701: TR0 = 0; 
	clr	_TR0
;	main.c:702: duration = (overflow_count*65536.0 + TH0*256.0 + TL0) * (12.0/SYSCLK);
	mov	dptr,#_overflow_count
	movx	a,@dptr
	mov	dpl,a
	lcall	___uchar2fs
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	mov	dptr,#0x0000
	mov	b,#0x80
	mov	a,#0x47
	lcall	___fsmul
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dpl,_TH0
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	lcall	___uchar2fs
	mov	r6,dpl
	mov	r7,dph
	mov	r0,b
	mov	r1,a
	push	ar6
	push	ar7
	push	ar0
	push	ar1
	mov	dptr,#0x0000
	mov	b,#0x80
	mov	a,#0x43
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
	mov	r6,_TL0
	mov	r7,#0x00
	mov	dpl,r6
	mov	dph,r7
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	lcall	___sint2fs
	mov	r6,dpl
	mov	r7,dph
	mov	r0,b
	mov	r1,a
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
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	mov	dptr,#0xF4FC
	mov	b,#0x32
	mov	a,#0x34
	lcall	___fsmul
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dptr,#_duration
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
;	main.c:704: distance = 100 * (340.0 * duration * 100.0 / 2.0); // distance in cm
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	mov	dptr,#0xD000
	mov	b,#0x04
	mov	a,#0x47
	lcall	___fsmul
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	clr	a
	push	acc
	push	acc
	push	acc
	mov	a,#0x40
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	___fsdiv
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
	mov	dptr,#0x0000
	mov	b,#0xC8
	mov	a,#0x42
	lcall	___fsmul
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	___fs2sint
	mov	r2,dpl
	mov	r3,dph
	mov	dptr,#_distance
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
;	main.c:706: return distance; 
	mov	dpl,r2
	mov	dph,r3
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Set_Pin_Output'
;------------------------------------------------------------
;pin                       Allocated to registers r2 
;mask                      Allocated to registers r3 
;------------------------------------------------------------
;	main.c:709: void Set_Pin_Output (unsigned char pin)
;	-----------------------------------------
;	 function Set_Pin_Output
;	-----------------------------------------
_Set_Pin_Output:
	mov	r2,dpl
;	main.c:713: mask=(1<<(pin&0x7));
	mov	a,#0x07
	anl	a,r2
	mov	b,a
	inc	b
	mov	a,#0x01
	sjmp	L024011?
L024009?:
	add	a,acc
L024011?:
	djnz	b,L024009?
	mov	r3,a
;	main.c:714: switch(pin/0x10)
	mov	a,r2
	swap	a
	anl	a,#0x0f
	mov  r2,a
	add	a,#0xff - 0x03
	jc	L024006?
	mov	a,r2
	add	a,r2
	add	a,r2
	mov	dptr,#L024013?
	jmp	@a+dptr
L024013?:
	ljmp	L024001?
	ljmp	L024002?
	ljmp	L024003?
	ljmp	L024004?
;	main.c:716: case 0: P0MDOUT |= mask; break;
L024001?:
	mov	a,r3
	orl	_P0MDOUT,a
;	main.c:717: case 1: P1MDOUT |= mask; break;
	ret
L024002?:
	mov	a,r3
	orl	_P1MDOUT,a
;	main.c:718: case 2: P2MDOUT |= mask; break; 
	ret
L024003?:
	mov	a,r3
	orl	_P2MDOUT,a
;	main.c:719: case 3: P3MDOUT |= mask; break; 
	ret
L024004?:
	mov	a,r3
	orl	_P3MDOUT,a
;	main.c:720: }	
L024006?:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Set_Pin_Input'
;------------------------------------------------------------
;mask                      Allocated with name '_Set_Pin_Input_mask_1_164'
;pin                       Allocated to registers r2 
;------------------------------------------------------------
;	main.c:723: void Set_Pin_Input (unsigned char pin)
;	-----------------------------------------
;	 function Set_Pin_Input
;	-----------------------------------------
_Set_Pin_Input:
	mov	r2,dpl
;	main.c:727: mask=(1<<(pin&0x7));
	mov	a,#0x07
	anl	a,r2
	mov	b,a
	inc	b
	mov	a,#0x01
	sjmp	L025011?
L025009?:
	add	a,acc
L025011?:
	djnz	b,L025009?
;	main.c:728: mask=~mask;
	cpl	a
	mov	r3,a
;	main.c:729: switch(pin/0x10)
	mov	a,r2
	swap	a
	anl	a,#0x0f
	mov  r2,a
	add	a,#0xff - 0x03
	jc	L025006?
	mov	a,r2
	add	a,r2
	add	a,r2
	mov	dptr,#L025013?
	jmp	@a+dptr
L025013?:
	ljmp	L025001?
	ljmp	L025002?
	ljmp	L025003?
	ljmp	L025004?
;	main.c:731: case 0: P0MDOUT &= mask; break;
L025001?:
	mov	a,r3
	anl	_P0MDOUT,a
;	main.c:732: case 1: P1MDOUT &= mask; break;
	ret
L025002?:
	mov	a,r3
	anl	_P1MDOUT,a
;	main.c:733: case 2: P2MDOUT &= mask; break; 
	ret
L025003?:
	mov	a,r3
	anl	_P2MDOUT,a
;	main.c:734: case 3: P3MDOUT &= mask; break; 
	ret
L025004?:
	mov	a,r3
	anl	_P3MDOUT,a
;	main.c:735: }	
L025006?:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'InitADC'
;------------------------------------------------------------
;------------------------------------------------------------
;	main.c:738: void InitADC (void)
;	-----------------------------------------
;	 function InitADC
;	-----------------------------------------
_InitADC:
;	main.c:740: SFRPAGE = 0x00;
	mov	_SFRPAGE,#0x00
;	main.c:741: ADEN=0; // Disable ADC
	clr	_ADEN
;	main.c:746: (0x0 << 0) ; // Accumulate n conversions: 0x0: 1, 0x1:4, 0x2:8, 0x3:16, 0x4:32
	mov	_ADC0CN1,#0x80
;	main.c:750: (0x0 << 2); // 0:SYSCLK ADCCLK = SYSCLK. 1:HFOSC0 ADCCLK = HFOSC0.
	mov	_ADC0CF0,#0x20
;	main.c:754: (0x1E << 0); // Conversion Tracking Time. Tadtk = ADTK / (Fsarclk)
	mov	_ADC0CF1,#0x1E
;	main.c:763: (0x0 << 0) ; // TEMPE. 0: Disable the Temperature Sensor. 1: Enable the Temperature Sensor.
	mov	_ADC0CN0,#0x00
;	main.c:768: (0x1F << 0); // ADPWR. Power Up Delay Time. Tpwrtime = ((4 * (ADPWR + 1)) + 2) / (Fadcclk)
	mov	_ADC0CF2,#0x3F
;	main.c:772: (0x0 << 0) ; // ADCM. 0x0: ADBUSY, 0x1: TIMER0, 0x2: TIMER2, 0x3: TIMER3, 0x4: CNVSTR, 0x5: CEX5, 0x6: TIMER4, 0x7: TIMER5, 0x8: CLU0, 0x9: CLU1, 0xA: CLU2, 0xB: CLU3
	mov	_ADC0CN2,#0x00
;	main.c:774: ADEN=1; // Enable ADC
	setb	_ADEN
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'InitPinADC'
;------------------------------------------------------------
;pin_num                   Allocated with name '_InitPinADC_PARM_2'
;portno                    Allocated to registers r2 
;mask                      Allocated to registers r3 
;------------------------------------------------------------
;	main.c:777: void InitPinADC (unsigned char portno, unsigned char pin_num)
;	-----------------------------------------
;	 function InitPinADC
;	-----------------------------------------
_InitPinADC:
	mov	r2,dpl
;	main.c:781: mask=1<<pin_num;
	mov	b,_InitPinADC_PARM_2
	inc	b
	mov	a,#0x01
	sjmp	L027013?
L027011?:
	add	a,acc
L027013?:
	djnz	b,L027011?
	mov	r3,a
;	main.c:783: SFRPAGE = 0x20;
	mov	_SFRPAGE,#0x20
;	main.c:784: switch (portno)
	cjne	r2,#0x00,L027014?
	sjmp	L027001?
L027014?:
	cjne	r2,#0x01,L027015?
	sjmp	L027002?
L027015?:
;	main.c:786: case 0:
	cjne	r2,#0x02,L027005?
	sjmp	L027003?
L027001?:
;	main.c:787: P0MDIN &= (~mask); // Set pin as analog input
	mov	a,r3
	cpl	a
	mov	r2,a
	anl	_P0MDIN,a
;	main.c:788: P0SKIP |= mask; // Skip Crossbar decoding for this pin
	mov	a,r3
	orl	_P0SKIP,a
;	main.c:789: break;
;	main.c:790: case 1:
	sjmp	L027005?
L027002?:
;	main.c:791: P1MDIN &= (~mask); // Set pin as analog input
	mov	a,r3
	cpl	a
	mov	r2,a
	anl	_P1MDIN,a
;	main.c:792: P1SKIP |= mask; // Skip Crossbar decoding for this pin
	mov	a,r3
	orl	_P1SKIP,a
;	main.c:793: break;
;	main.c:794: case 2:
	sjmp	L027005?
L027003?:
;	main.c:795: P2MDIN &= (~mask); // Set pin as analog input
	mov	a,r3
	cpl	a
	mov	r2,a
	anl	_P2MDIN,a
;	main.c:796: P2SKIP |= mask; // Skip Crossbar decoding for this pin
	mov	a,r3
	orl	_P2SKIP,a
;	main.c:800: }
L027005?:
;	main.c:801: SFRPAGE = 0x00;
	mov	_SFRPAGE,#0x00
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ADC_at_Pin'
;------------------------------------------------------------
;pin                       Allocated to registers 
;------------------------------------------------------------
;	main.c:804: unsigned int ADC_at_Pin(unsigned char pin)
;	-----------------------------------------
;	 function ADC_at_Pin
;	-----------------------------------------
_ADC_at_Pin:
	mov	_ADC0MX,dpl
;	main.c:807: ADINT = 0;
	clr	_ADINT
;	main.c:808: ADBUSY = 1;     // Convert voltage at the pin
	setb	_ADBUSY
;	main.c:809: while (!ADINT); // Wait for conversion to complete
L028001?:
	jnb	_ADINT,L028001?
;	main.c:810: return (ADC0);
	mov	dpl,_ADC0
	mov	dph,(_ADC0 >> 8)
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ReadHX711'
;------------------------------------------------------------
;dataa                     Allocated with name '_ReadHX711_dataa_1_174'
;ans                       Allocated with name '_ReadHX711_ans_1_174'
;j                         Allocated with name '_ReadHX711_j_1_174'
;------------------------------------------------------------
;	main.c:813: int ReadHX711(void) {
;	-----------------------------------------
;	 function ReadHX711
;	-----------------------------------------
_ReadHX711:
;	main.c:814: xdata unsigned long dataa = 0;
	mov	dptr,#_ReadHX711_dataa_1_174
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	main.c:819: PD_SCK = 0;
	clr	_P2_5
;	main.c:821: for (i = 0; i < 24; i++) {
	mov	dptr,#_i
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
L029011?:
	mov	dptr,#_i
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	clr	c
	mov	a,r2
	subb	a,#0x18
	mov	a,r3
	subb	a,#0x00
	jc	L029036?
	ljmp	L029014?
L029036?:
;	main.c:822: PD_SCK = 1;
	setb	_P2_5
;	main.c:823: for (j = 0; j < 4; j++);
	mov	dptr,#_ReadHX711_j_1_174
	clr	a
	movx	@dptr,a
L029003?:
	mov	dptr,#_ReadHX711_j_1_174
	movx	a,@dptr
	mov	r2,a
	clr	c
	xrl	a,#0x80
	subb	a,#0x84
	jnc	L029006?
	mov	dptr,#_ReadHX711_j_1_174
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	sjmp	L029003?
L029006?:
;	main.c:824: dataa = dataa << 1;
	mov	dptr,#_ReadHX711_dataa_1_174
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
	mov	a,r2
	add	a,r2
	mov	r2,a
	mov	a,r3
	rlc	a
	mov	r3,a
	mov	a,r4
	rlc	a
	mov	r4,a
	mov	a,r5
	rlc	a
	mov	r5,a
	mov	dptr,#_ReadHX711_dataa_1_174
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
;	main.c:825: if (DOUT) {
	jnb	_P2_6,L029002?
;	main.c:826: dataa |= 0x01;
	mov	dptr,#_ReadHX711_dataa_1_174
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
	mov	dptr,#_ReadHX711_dataa_1_174
	mov	a,#0x01
	orl	a,r2
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
L029002?:
;	main.c:828: PD_SCK = 0;
	clr	_P2_5
;	main.c:829: for (j = 0; j < 4; j++);
	mov	dptr,#_ReadHX711_j_1_174
	clr	a
	movx	@dptr,a
L029007?:
	mov	dptr,#_ReadHX711_j_1_174
	movx	a,@dptr
	mov	r2,a
	clr	c
	xrl	a,#0x80
	subb	a,#0x84
	jnc	L029013?
	mov	dptr,#_ReadHX711_j_1_174
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	sjmp	L029007?
L029013?:
;	main.c:821: for (i = 0; i < 24; i++) {
	mov	dptr,#_i
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
	ljmp	L029011?
L029014?:
;	main.c:832: PD_SCK = 1;
	setb	_P2_5
;	main.c:833: for (j = 0; j < 4; j++);
	mov	dptr,#_ReadHX711_j_1_174
	clr	a
	movx	@dptr,a
L029015?:
	mov	dptr,#_ReadHX711_j_1_174
	movx	a,@dptr
	mov	r2,a
	clr	c
	xrl	a,#0x80
	subb	a,#0x84
	jnc	L029018?
	mov	dptr,#_ReadHX711_j_1_174
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	sjmp	L029015?
L029018?:
;	main.c:834: PD_SCK = 0;
	clr	_P2_5
;	main.c:835: for (j = 0; j < 4; j++);
	mov	dptr,#_ReadHX711_j_1_174
	clr	a
	movx	@dptr,a
L029019?:
	mov	dptr,#_ReadHX711_j_1_174
	movx	a,@dptr
	mov	r2,a
	clr	c
	xrl	a,#0x80
	subb	a,#0x84
	jnc	L029022?
	mov	dptr,#_ReadHX711_j_1_174
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	sjmp	L029019?
L029022?:
;	main.c:836: ans = (dataa % 1000000)/10;
	mov	dptr,#_ReadHX711_dataa_1_174
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
	mov	__modulong_PARM_2,#0x40
	mov	(__modulong_PARM_2 + 1),#0x42
	mov	(__modulong_PARM_2 + 2),#0x0F
	mov	(__modulong_PARM_2 + 3),#0x00
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	__modulong
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	__divulong_PARM_2,#0x0A
	clr	a
	mov	(__divulong_PARM_2 + 1),a
	mov	(__divulong_PARM_2 + 2),a
	mov	(__divulong_PARM_2 + 3),a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
;	main.c:837: return ans;
	ljmp	__divulong
;------------------------------------------------------------
;Allocation info for local variables in function 'Timer5_ISR'
;------------------------------------------------------------
;------------------------------------------------------------
;	main.c:840: void Timer5_ISR (void) interrupt INTERRUPT_TIMER5
;	-----------------------------------------
;	 function Timer5_ISR
;	-----------------------------------------
_Timer5_ISR:
	push	bits
	push	acc
	push	b
	push	dpl
	push	dph
	push	(0+2)
	push	(0+3)
	push	(0+4)
	push	(0+5)
	push	(0+6)
	push	(0+7)
	push	(0+0)
	push	(0+1)
	push	psw
	mov	psw,#0x00
;	main.c:842: SFRPAGE=0x10;
	mov	_SFRPAGE,#0x10
;	main.c:843: TF5H = 0; // Clear Timer5 interrupt flag
	clr	_TF5H
;	main.c:844: TMR5RL = RELOAD_10us; // Reload Timer5 for 10us intervals 
	mov	_TMR5RL,#0xC4
	mov	(_TMR5RL >> 8),#0xFF
;	main.c:846: fre_mea_count++;
	mov	dptr,#_fre_mea_count
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
;	main.c:847: if(fre_mea_count == 1000){
	mov	dptr,#_fre_mea_count
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	cjne	r2,#0xE8,L030004?
	cjne	r3,#0x03,L030004?
;	main.c:848: fre_mea_count = 0;
	mov	dptr,#_fre_mea_count
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	main.c:849: if(mea_yes){
	mov	dptr,#_mea_yes
	movx	a,@dptr
	mov	r2,a
	jz	L030004?
;	main.c:850: freq100 = get_freq();
	lcall	_get_freq
	mov	r2,dpl
	mov	r3,dph
	mov	dptr,#_freq100
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	mov	a,r3
	rlc	a
	subb	a,acc
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
L030004?:
;	main.c:854: weight_mea_count++;
	mov	dptr,#_weight_mea_count
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
;	main.c:855: if(weight_mea_count == 20000){
	mov	dptr,#_weight_mea_count
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	cjne	r2,#0x20,L030010?
	cjne	r3,#0x4E,L030010?
;	main.c:856: weight_mea_count = 0;
	mov	dptr,#_weight_mea_count
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	main.c:857: if(mea_yes) distance = measure_distance();
	mov	dptr,#_mea_yes
	movx	a,@dptr
	mov	r2,a
	jz	L030006?
	lcall	_measure_distance
	mov	a,dpl
	mov	b,dph
	mov	dptr,#_distance
	movx	@dptr,a
	inc	dptr
	mov	a,b
	movx	@dptr,a
L030006?:
;	main.c:858: if(mea_yes) weight = ReadHX711();
	mov	dptr,#_mea_yes
	movx	a,@dptr
	mov	r2,a
	jz	L030010?
	lcall	_ReadHX711
	mov	a,dpl
	mov	b,dph
	mov	dptr,#_weight
	movx	@dptr,a
	inc	dptr
	mov	a,b
	movx	@dptr,a
L030010?:
;	main.c:861: pwm_counter++; 
	mov	dptr,#_pwm_counter
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
;	main.c:862: if (pwm_counter == 100){
	mov	dptr,#_pwm_counter
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	cjne	r2,#0x64,L030012?
	cjne	r3,#0x00,L030012?
;	main.c:863: pwm_counter = 0; 
	mov	dptr,#_pwm_counter
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
L030012?:
;	main.c:866: if (pwm_right > pwm_counter){
	mov	dptr,#_pwm_right
	movx	a,@dptr
	mov	r2,a
	mov	dptr,#_pwm_counter
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	r5,#0x00
	clr	c
	mov	a,r3
	subb	a,r2
	mov	a,r4
	subb	a,r5
	jnc	L030017?
;	main.c:867: if(L_motor_dir){
	mov	dptr,#_L_motor_dir
	movx	a,@dptr
	mov	r2,a
	jz	L030014?
;	main.c:868: L_bridge_1 = 1; 
	setb	_P2_1
;	main.c:869: L_bridge_2 = 0; 
	clr	_P2_2
	sjmp	L030018?
L030014?:
;	main.c:872: L_bridge_1 = 0; 
	clr	_P2_1
;	main.c:873: L_bridge_2 = 1; 
	setb	_P2_2
	sjmp	L030018?
L030017?:
;	main.c:877: L_bridge_1 = 0; 
	clr	_P2_1
;	main.c:878: L_bridge_2 = 0; 
	clr	_P2_2
L030018?:
;	main.c:880: if (pwm_left > pwm_counter){
	mov	dptr,#_pwm_left
	movx	a,@dptr
	mov	r2,a
	mov	r5,#0x00
	clr	c
	mov	a,r3
	subb	a,r2
	mov	a,r4
	subb	a,r5
	jnc	L030023?
;	main.c:881: if (R_motor_dir){
	mov	dptr,#_R_motor_dir
	movx	a,@dptr
	mov	r2,a
	jz	L030020?
;	main.c:882: R_bridge_1 = 1; 
	setb	_P2_4
;	main.c:883: R_bridge_2 = 0;
	clr	_P2_3
	sjmp	L030024?
L030020?:
;	main.c:886: R_bridge_1 = 0; 
	clr	_P2_4
;	main.c:887: R_bridge_2 = 1;
	setb	_P2_3
	sjmp	L030024?
L030023?:
;	main.c:891: R_bridge_1 = 0; 
	clr	_P2_4
;	main.c:892: R_bridge_2 = 0; 
	clr	_P2_3
L030024?:
;	main.c:895: servo_counter++;
	mov	dptr,#_servo_counter
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
;	main.c:896: if(servo_counter==2000)
	mov	dptr,#_servo_counter
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	cjne	r2,#0xD0,L030026?
	cjne	r3,#0x07,L030026?
;	main.c:898: servo_counter=0;
	mov	dptr,#_servo_counter
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	main.c:899: Servo_arm=1;
	setb	_P1_6
;	main.c:900: Servo_base=1;
	setb	_P1_7
L030026?:
;	main.c:902: if(servo_arm>=servo_counter)
	mov	dptr,#_servo_arm
	movx	a,@dptr
	mov	r2,a
	mov	dptr,#_servo_counter
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	r5,#0x00
	clr	c
	mov	a,r2
	subb	a,r3
	mov	a,r5
	subb	a,r4
	jc	L030028?
;	main.c:904: Servo_arm = 1;
	setb	_P1_6
	sjmp	L030029?
L030028?:
;	main.c:908: Servo_arm = 0; 
	clr	_P1_6
L030029?:
;	main.c:910: if(servo_base>=servo_counter)
	mov	dptr,#_servo_base
	movx	a,@dptr
	mov	r2,a
	mov	r5,#0x00
	clr	c
	mov	a,r2
	subb	a,r3
	mov	a,r5
	subb	a,r4
	jc	L030031?
;	main.c:912: Servo_base = 1;
	setb	_P1_7
	sjmp	L030033?
L030031?:
;	main.c:916: Servo_base = 0; 
	clr	_P1_7
L030033?:
	pop	psw
	pop	(0+1)
	pop	(0+0)
	pop	(0+7)
	pop	(0+6)
	pop	(0+5)
	pop	(0+4)
	pop	(0+3)
	pop	(0+2)
	pop	dph
	pop	dpl
	pop	b
	pop	acc
	pop	bits
	reti
;------------------------------------------------------------
;Allocation info for local variables in function 'servo_pick'
;------------------------------------------------------------
;------------------------------------------------------------
;	main.c:920: void servo_pick(){
;	-----------------------------------------
;	 function servo_pick
;	-----------------------------------------
_servo_pick:
;	main.c:921: servo_arm = 50;
	mov	dptr,#_servo_arm
	mov	a,#0x32
	movx	@dptr,a
;	main.c:922: servo_base = 50;
	mov	dptr,#_servo_base
	mov	a,#0x32
	movx	@dptr,a
;	main.c:923: waitms(500);
	mov	dptr,#0x01F4
	lcall	_waitms
;	main.c:924: for (i_loo=50; i_loo <= 210; i_loo+=20)
	mov	dptr,#_i_loo
	mov	a,#0x32
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
L031001?:
	mov	dptr,#_i_loo
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	clr	c
	mov	a,#0xD2
	subb	a,r2
	clr	a
	xrl	a,#0x80
	mov	b,r3
	xrl	b,#0x80
	subb	a,b
	jc	L031004?
;	main.c:926: servo_base = i_loo; 
	mov	dptr,#_servo_base
	mov	a,r2
	movx	@dptr,a
;	main.c:927: waitms(25);
	mov	dptr,#0x0019
	lcall	_waitms
;	main.c:924: for (i_loo=50; i_loo <= 210; i_loo+=20)
	mov	dptr,#_i_loo
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#_i_loo
	mov	a,#0x14
	add	a,r2
	movx	@dptr,a
	clr	a
	addc	a,r3
	inc	dptr
	movx	@dptr,a
	sjmp	L031001?
L031004?:
;	main.c:929: waitms(500);
	mov	dptr,#0x01F4
	lcall	_waitms
;	main.c:930: for(i_loo = 50; i_loo <= 250; i_loo+=20)
	mov	dptr,#_i_loo
	mov	a,#0x32
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
L031005?:
	mov	dptr,#_i_loo
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	clr	c
	mov	a,#0xFA
	subb	a,r2
	clr	a
	xrl	a,#0x80
	mov	b,r3
	xrl	b,#0x80
	subb	a,b
	jc	L031008?
;	main.c:932: servo_arm = i_loo; 
	mov	dptr,#_servo_arm
	mov	a,r2
	movx	@dptr,a
;	main.c:933: waitms(25);
	mov	dptr,#0x0019
	lcall	_waitms
;	main.c:930: for(i_loo = 50; i_loo <= 250; i_loo+=20)
	mov	dptr,#_i_loo
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#_i_loo
	mov	a,#0x14
	add	a,r2
	movx	@dptr,a
	clr	a
	addc	a,r3
	inc	dptr
	movx	@dptr,a
	sjmp	L031005?
L031008?:
;	main.c:935: Magnet = 1; 
	setb	_P1_5
;	main.c:936: waitms(500);
	mov	dptr,#0x01F4
	lcall	_waitms
;	main.c:937: for(i_loo = 200; i_loo >= 110; i_loo-=10){
	mov	dptr,#_i_loo
	mov	a,#0xC8
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
L031009?:
	mov	dptr,#_i_loo
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	clr	c
	mov	a,r2
	subb	a,#0x6E
	mov	a,r3
	xrl	a,#0x80
	subb	a,#0x80
	jc	L031012?
;	main.c:938: waitms(25);
	mov	dptr,#0x0019
	lcall	_waitms
;	main.c:939: servo_base = i_loo;
	mov	dptr,#_i_loo
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#_servo_base
	mov	a,r2
	movx	@dptr,a
;	main.c:937: for(i_loo = 200; i_loo >= 110; i_loo-=10){
	mov	a,r2
	add	a,#0xf6
	mov	r2,a
	mov	a,r3
	addc	a,#0xff
	mov	r3,a
	mov	dptr,#_i_loo
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	sjmp	L031009?
L031012?:
;	main.c:941: Magnet = 1; 
	setb	_P1_5
;	main.c:942: waitms(500);
	mov	dptr,#0x01F4
	lcall	_waitms
;	main.c:943: for(i_loo = 110; i_loo <= 200; i_loo+=10){
	mov	dptr,#_i_loo
	mov	a,#0x6E
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
L031013?:
	mov	dptr,#_i_loo
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	clr	c
	mov	a,#0xC8
	subb	a,r2
	clr	a
	xrl	a,#0x80
	mov	b,r3
	xrl	b,#0x80
	subb	a,b
	jc	L031016?
;	main.c:944: waitms(25);
	mov	dptr,#0x0019
	lcall	_waitms
;	main.c:945: servo_base = i_loo;
	mov	dptr,#_i_loo
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#_servo_base
	mov	a,r2
	movx	@dptr,a
;	main.c:943: for(i_loo = 110; i_loo <= 200; i_loo+=10){
	mov	dptr,#_i_loo
	mov	a,#0x0A
	add	a,r2
	movx	@dptr,a
	clr	a
	addc	a,r3
	inc	dptr
	movx	@dptr,a
	sjmp	L031013?
L031016?:
;	main.c:947: Magnet = 1; 
	setb	_P1_5
;	main.c:948: waitms(500);
	mov	dptr,#0x01F4
	lcall	_waitms
;	main.c:949: for(i_loo = 240; i_loo >= 80; i_loo-=10){
	mov	dptr,#_i_loo
	mov	a,#0xF0
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
L031017?:
	mov	dptr,#_i_loo
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	clr	c
	mov	a,r2
	subb	a,#0x50
	mov	a,r3
	xrl	a,#0x80
	subb	a,#0x80
	jc	L031020?
;	main.c:950: waitms(25);
	mov	dptr,#0x0019
	lcall	_waitms
;	main.c:951: servo_arm = i_loo;
	mov	dptr,#_i_loo
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#_servo_arm
	mov	a,r2
	movx	@dptr,a
;	main.c:952: Magnet = 1; 
	setb	_P1_5
;	main.c:949: for(i_loo = 240; i_loo >= 80; i_loo-=10){
	mov	a,r2
	add	a,#0xf6
	mov	r2,a
	mov	a,r3
	addc	a,#0xff
	mov	r3,a
	mov	dptr,#_i_loo
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	sjmp	L031017?
L031020?:
;	main.c:954: Magnet = 1; 
	setb	_P1_5
;	main.c:955: waitms(500);
	mov	dptr,#0x01F4
	lcall	_waitms
;	main.c:956: for(i_loo = 200; i_loo >= 80; i_loo-=10){
	mov	dptr,#_i_loo
	mov	a,#0xC8
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
L031021?:
	mov	dptr,#_i_loo
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	clr	c
	mov	a,r2
	subb	a,#0x50
	mov	a,r3
	xrl	a,#0x80
	subb	a,#0x80
	jc	L031024?
;	main.c:957: waitms(25);
	mov	dptr,#0x0019
	lcall	_waitms
;	main.c:958: servo_base = i_loo;
	mov	dptr,#_i_loo
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#_servo_base
	mov	a,r2
	movx	@dptr,a
;	main.c:959: Magnet = 1; 
	setb	_P1_5
;	main.c:956: for(i_loo = 200; i_loo >= 80; i_loo-=10){
	mov	a,r2
	add	a,#0xf6
	mov	r2,a
	mov	a,r3
	addc	a,#0xff
	mov	r3,a
	mov	dptr,#_i_loo
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	sjmp	L031021?
L031024?:
;	main.c:961: Magnet = 1; 
	setb	_P1_5
;	main.c:962: waitms(500);
	mov	dptr,#0x01F4
	lcall	_waitms
;	main.c:963: for(i_loo = 90; i_loo <= 100; i_loo+=10){
	mov	dptr,#_i_loo
	mov	a,#0x5A
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
L031025?:
	mov	dptr,#_i_loo
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	clr	c
	mov	a,#0x64
	subb	a,r2
	clr	a
	xrl	a,#0x80
	mov	b,r3
	xrl	b,#0x80
	subb	a,b
	jc	L031028?
;	main.c:964: waitms(25);
	mov	dptr,#0x0019
	lcall	_waitms
;	main.c:965: servo_arm = i_loo;
	mov	dptr,#_i_loo
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#_servo_arm
	mov	a,r2
	movx	@dptr,a
;	main.c:966: Magnet = 1; 
	setb	_P1_5
;	main.c:963: for(i_loo = 90; i_loo <= 100; i_loo+=10){
	mov	dptr,#_i_loo
	mov	a,#0x0A
	add	a,r2
	movx	@dptr,a
	clr	a
	addc	a,r3
	inc	dptr
	movx	@dptr,a
	sjmp	L031025?
L031028?:
;	main.c:968: waitms(500);
	mov	dptr,#0x01F4
	lcall	_waitms
;	main.c:969: Magnet = 0;
	clr	_P1_5
;	main.c:970: waitms(500);
	mov	dptr,#0x01F4
	lcall	_waitms
;	main.c:971: for (i_loo = 100; i_loo >=50 ; i_loo-=10){
	mov	dptr,#_i_loo
	mov	a,#0x64
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
L031029?:
	mov	dptr,#_i_loo
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	clr	c
	mov	a,r2
	subb	a,#0x32
	mov	a,r3
	xrl	a,#0x80
	subb	a,#0x80
	jc	L031032?
;	main.c:972: servo_arm = i_loo; 
	mov	dptr,#_servo_arm
	mov	a,r2
	movx	@dptr,a
;	main.c:973: waitms(25);
	mov	dptr,#0x0019
	lcall	_waitms
;	main.c:971: for (i_loo = 100; i_loo >=50 ; i_loo-=10){
	mov	dptr,#_i_loo
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	a,r2
	add	a,#0xf6
	mov	r2,a
	mov	a,r3
	addc	a,#0xff
	mov	r3,a
	mov	dptr,#_i_loo
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	sjmp	L031029?
L031032?:
;	main.c:975: waitms(500);
	mov	dptr,#0x01F4
	lcall	_waitms
;	main.c:976: for (i_loo = 80; i_loo >= 50; i_loo-=10){
	mov	dptr,#_i_loo
	mov	a,#0x50
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
L031033?:
	mov	dptr,#_i_loo
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	clr	c
	mov	a,r2
	subb	a,#0x32
	mov	a,r3
	xrl	a,#0x80
	subb	a,#0x80
	jc	L031036?
;	main.c:977: servo_base = i_loo; 
	mov	dptr,#_servo_base
	mov	a,r2
	movx	@dptr,a
;	main.c:978: waitms(25);
	mov	dptr,#0x0019
	lcall	_waitms
;	main.c:976: for (i_loo = 80; i_loo >= 50; i_loo-=10){
	mov	dptr,#_i_loo
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	a,r2
	add	a,#0xf6
	mov	r2,a
	mov	a,r3
	addc	a,#0xff
	mov	r3,a
	mov	dptr,#_i_loo
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	sjmp	L031033?
L031036?:
;	main.c:980: return;
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'servo_push'
;------------------------------------------------------------
;------------------------------------------------------------
;	main.c:983: void servo_push(void)
;	-----------------------------------------
;	 function servo_push
;	-----------------------------------------
_servo_push:
;	main.c:985: servo_arm = 50;
	mov	dptr,#_servo_arm
	mov	a,#0x32
	movx	@dptr,a
;	main.c:986: servo_base = 50;
	mov	dptr,#_servo_base
	mov	a,#0x32
	movx	@dptr,a
;	main.c:987: waitms(500);
	mov	dptr,#0x01F4
	lcall	_waitms
;	main.c:988: for (i_loo=50; i_loo <= 130; i_loo+=10)
	mov	dptr,#_i_loo
	mov	a,#0x32
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
L032001?:
	mov	dptr,#_i_loo
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	clr	c
	mov	a,#0x82
	subb	a,r2
	clr	a
	xrl	a,#0x80
	mov	b,r3
	xrl	b,#0x80
	subb	a,b
	jc	L032004?
;	main.c:990: servo_base = i_loo; 
	mov	dptr,#_servo_base
	mov	a,r2
	movx	@dptr,a
;	main.c:991: waitms(25);
	mov	dptr,#0x0019
	lcall	_waitms
;	main.c:988: for (i_loo=50; i_loo <= 130; i_loo+=10)
	mov	dptr,#_i_loo
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#_i_loo
	mov	a,#0x0A
	add	a,r2
	movx	@dptr,a
	clr	a
	addc	a,r3
	inc	dptr
	movx	@dptr,a
	sjmp	L032001?
L032004?:
;	main.c:993: waitms(200);
	mov	dptr,#0x00C8
	lcall	_waitms
;	main.c:994: for (i_loo=50; i_loo <= 130; i_loo+=10)
	mov	dptr,#_i_loo
	mov	a,#0x32
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
L032005?:
	mov	dptr,#_i_loo
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	clr	c
	mov	a,#0x82
	subb	a,r2
	clr	a
	xrl	a,#0x80
	mov	b,r3
	xrl	b,#0x80
	subb	a,b
	jc	L032008?
;	main.c:996: servo_arm = i_loo; 
	mov	dptr,#_servo_arm
	mov	a,r2
	movx	@dptr,a
;	main.c:997: waitms(25);
	mov	dptr,#0x0019
	lcall	_waitms
;	main.c:994: for (i_loo=50; i_loo <= 130; i_loo+=10)
	mov	dptr,#_i_loo
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#_i_loo
	mov	a,#0x0A
	add	a,r2
	movx	@dptr,a
	clr	a
	addc	a,r3
	inc	dptr
	movx	@dptr,a
	sjmp	L032005?
L032008?:
;	main.c:999: waitms(200);
	mov	dptr,#0x00C8
	lcall	_waitms
;	main.c:1000: for (i_loo=130; i_loo <= 250; i_loo+=10)
	mov	dptr,#_i_loo
	mov	a,#0x82
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
L032009?:
	mov	dptr,#_i_loo
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	clr	c
	mov	a,#0xFA
	subb	a,r2
	clr	a
	xrl	a,#0x80
	mov	b,r3
	xrl	b,#0x80
	subb	a,b
	jc	L032012?
;	main.c:1002: servo_base = i_loo; 
	mov	dptr,#_servo_base
	mov	a,r2
	movx	@dptr,a
;	main.c:1003: waitms(25);
	mov	dptr,#0x0019
	lcall	_waitms
;	main.c:1000: for (i_loo=130; i_loo <= 250; i_loo+=10)
	mov	dptr,#_i_loo
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#_i_loo
	mov	a,#0x0A
	add	a,r2
	movx	@dptr,a
	clr	a
	addc	a,r3
	inc	dptr
	movx	@dptr,a
	sjmp	L032009?
L032012?:
;	main.c:1005: waitms(200);
	mov	dptr,#0x00C8
	lcall	_waitms
;	main.c:1006: for (i_loo=250; i_loo >= 150; i_loo-=10)
	mov	dptr,#_i_loo
	mov	a,#0xFA
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
L032013?:
	mov	dptr,#_i_loo
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	clr	c
	mov	a,r2
	subb	a,#0x96
	mov	a,r3
	xrl	a,#0x80
	subb	a,#0x80
	jc	L032016?
;	main.c:1008: servo_base = i_loo; 
	mov	dptr,#_servo_base
	mov	a,r2
	movx	@dptr,a
;	main.c:1009: waitms(25);
	mov	dptr,#0x0019
	lcall	_waitms
;	main.c:1006: for (i_loo=250; i_loo >= 150; i_loo-=10)
	mov	dptr,#_i_loo
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	a,r2
	add	a,#0xf6
	mov	r2,a
	mov	a,r3
	addc	a,#0xff
	mov	r3,a
	mov	dptr,#_i_loo
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	sjmp	L032013?
L032016?:
;	main.c:1011: waitms(200);
	mov	dptr,#0x00C8
	lcall	_waitms
;	main.c:1012: for (i_loo=130; i_loo >= 50; i_loo-=10)
	mov	dptr,#_i_loo
	mov	a,#0x82
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
L032017?:
	mov	dptr,#_i_loo
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	clr	c
	mov	a,r2
	subb	a,#0x32
	mov	a,r3
	xrl	a,#0x80
	subb	a,#0x80
	jc	L032020?
;	main.c:1014: servo_arm = i_loo; 
	mov	dptr,#_servo_arm
	mov	a,r2
	movx	@dptr,a
;	main.c:1015: waitms(25);
	mov	dptr,#0x0019
	lcall	_waitms
;	main.c:1012: for (i_loo=130; i_loo >= 50; i_loo-=10)
	mov	dptr,#_i_loo
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	a,r2
	add	a,#0xf6
	mov	r2,a
	mov	a,r3
	addc	a,#0xff
	mov	r3,a
	mov	dptr,#_i_loo
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	sjmp	L032017?
L032020?:
;	main.c:1017: waitms(200);
	mov	dptr,#0x00C8
	lcall	_waitms
;	main.c:1018: for (i_loo=150; i_loo >= 50; i_loo-=10)
	mov	dptr,#_i_loo
	mov	a,#0x96
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
L032021?:
	mov	dptr,#_i_loo
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	clr	c
	mov	a,r2
	subb	a,#0x32
	mov	a,r3
	xrl	a,#0x80
	subb	a,#0x80
	jc	L032024?
;	main.c:1020: servo_base = i_loo; 
	mov	dptr,#_servo_base
	mov	a,r2
	movx	@dptr,a
;	main.c:1021: waitms(25);
	mov	dptr,#0x0019
	lcall	_waitms
;	main.c:1018: for (i_loo=150; i_loo >= 50; i_loo-=10)
	mov	dptr,#_i_loo
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	a,r2
	add	a,#0xf6
	mov	r2,a
	mov	a,r3
	addc	a,#0xff
	mov	r3,a
	mov	dptr,#_i_loo
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	sjmp	L032021?
L032024?:
;	main.c:1023: waitms(200);
	mov	dptr,#0x00C8
;	main.c:1024: return; 
	ljmp	_waitms
;------------------------------------------------------------
;Allocation info for local variables in function 'Move_forward_ms'
;------------------------------------------------------------
;ms                        Allocated to registers r2 r3 
;------------------------------------------------------------
;	main.c:1027: void Move_forward_ms(int ms){
;	-----------------------------------------
;	 function Move_forward_ms
;	-----------------------------------------
_Move_forward_ms:
	mov	r2,dpl
	mov	r3,dph
;	main.c:1029: L_motor_dir = 0;
	mov	dptr,#_L_motor_dir
;	main.c:1030: R_motor_dir = 0;
	clr	a
	movx	@dptr,a
	mov	dptr,#_R_motor_dir
	movx	@dptr,a
;	main.c:1032: pwm_left = 50;
	mov	dptr,#_pwm_left
	mov	a,#0x32
	movx	@dptr,a
;	main.c:1033: pwm_right = 50;
	mov	dptr,#_pwm_right
	mov	a,#0x32
	movx	@dptr,a
;	main.c:1035: waitms(ms);
	mov	dpl,r2
	mov	dph,r3
	lcall	_waitms
;	main.c:1037: L_motor_dir = 0;
	mov	dptr,#_L_motor_dir
;	main.c:1038: R_motor_dir = 0;
;	main.c:1039: pwm_left = 0;
;	main.c:1040: pwm_right = 0;
	clr	a
	movx	@dptr,a
	mov	dptr,#_R_motor_dir
	movx	@dptr,a
	mov	dptr,#_pwm_left
	movx	@dptr,a
	mov	dptr,#_pwm_right
	movx	@dptr,a
;	main.c:1041: return;
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'servo_moveaway'
;------------------------------------------------------------
;------------------------------------------------------------
;	main.c:1044: void servo_moveaway(void)
;	-----------------------------------------
;	 function servo_moveaway
;	-----------------------------------------
_servo_moveaway:
;	main.c:1045: {	pwm_left = 0;
	mov	dptr,#_pwm_left
;	main.c:1046: pwm_right = 0;
	clr	a
	movx	@dptr,a
	mov	dptr,#_pwm_right
	movx	@dptr,a
;	main.c:1047: waitms(200);
	mov	dptr,#0x00C8
	lcall	_waitms
;	main.c:1048: Move_forward_ms(200);
	mov	dptr,#0x00C8
	lcall	_Move_forward_ms
;	main.c:1049: servo_push();
	lcall	_servo_push
;	main.c:1050: waitms(100);
	mov	dptr,#0x0064
	lcall	_waitms
;	main.c:1051: Move_forward_ms(500);
	mov	dptr,#0x01F4
	lcall	_Move_forward_ms
;	main.c:1052: servo_push();
;	main.c:1053: return; 
	ljmp	_servo_push
;------------------------------------------------------------
;Allocation info for local variables in function 'check_bound'
;------------------------------------------------------------
;d2                        Allocated with name '_check_bound_PARM_2'
;d1                        Allocated to registers r2 r3 
;------------------------------------------------------------
;	main.c:1056: int check_bound(int d1, int d2){
;	-----------------------------------------
;	 function check_bound
;	-----------------------------------------
_check_bound:
	mov	r2,dpl
	mov	r3,dph
;	main.c:1057: if(d1>10000||d2>10000)	return 1;
	clr	c
	mov	a,#0x10
	subb	a,r2
	mov	a,#(0x27 ^ 0x80)
	mov	b,r3
	xrl	b,#0x80
	subb	a,b
	jc	L035001?
	mov	a,#0x10
	subb	a,_check_bound_PARM_2
	mov	a,#(0x27 ^ 0x80)
	mov	b,(_check_bound_PARM_2 + 1)
	xrl	b,#0x80
	subb	a,b
	jnc	L035002?
L035001?:
	mov	dptr,#0x0001
;	main.c:1058: else return 0;
	ret
L035002?:
	mov	dptr,#0x0000
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Init_all'
;------------------------------------------------------------
;------------------------------------------------------------
;	main.c:1061: void Init_all(){
;	-----------------------------------------
;	 function Init_all
;	-----------------------------------------
_Init_all:
;	main.c:1063: Set_Pin_Output(0x24);
	mov	dpl,#0x24
	lcall	_Set_Pin_Output
;	main.c:1064: Set_Pin_Output(0x23);
	mov	dpl,#0x23
	lcall	_Set_Pin_Output
;	main.c:1065: Set_Pin_Output(0x22);
	mov	dpl,#0x22
	lcall	_Set_Pin_Output
;	main.c:1066: Set_Pin_Output(0x21);
	mov	dpl,#0x21
	lcall	_Set_Pin_Output
;	main.c:1067: Set_Pin_Output(0x17);
	mov	dpl,#0x17
	lcall	_Set_Pin_Output
;	main.c:1068: Set_Pin_Output(0x16);
	mov	dpl,#0x16
	lcall	_Set_Pin_Output
;	main.c:1069: Set_Pin_Output(0x15);
	mov	dpl,#0x15
	lcall	_Set_Pin_Output
;	main.c:1070: Set_Pin_Output(0x10); // CS
	mov	dpl,#0x10
	lcall	_Set_Pin_Output
;	main.c:1072: Set_Pin_Input(0x30);
	mov	dpl,#0x30
	lcall	_Set_Pin_Input
;	main.c:1073: Set_Pin_Output(0x25); // CLK for Load
	mov	dpl,#0x25
	lcall	_Set_Pin_Output
;	main.c:1074: Set_Pin_Input(0x26);
	mov	dpl,#0x26
	lcall	_Set_Pin_Input
;	main.c:1076: Set_Pin_Input(0x31);   //ECHO pin
	mov	dpl,#0x31
	lcall	_Set_Pin_Input
;	main.c:1077: Set_Pin_Output(0x00);  // TRIGGER pin
	mov	dpl,#0x00
	lcall	_Set_Pin_Output
;	main.c:1079: InitPinADC(1,3);
	mov	_InitPinADC_PARM_2,#0x03
	mov	dpl,#0x01
	lcall	_InitPinADC
;	main.c:1080: InitPinADC(1,4);
	mov	_InitPinADC_PARM_2,#0x04
	mov	dpl,#0x01
	lcall	_InitPinADC
;	main.c:1081: InitADC();
	lcall	_InitADC
;	main.c:1083: TMOD&=0b_1111_0000; 
	anl	_TMOD,#0xF0
;	main.c:1084: TMOD|=0b_0000_0001; 
	orl	_TMOD,#0x01
;	main.c:1085: TR0=0; 
	clr	_TR0
;	main.c:1087: Servo_arm=0;
	clr	_P1_6
;	main.c:1088: Servo_base=0;
	clr	_P1_7
;	main.c:1089: Magnet = 0;
	clr	_P1_5
;	main.c:1090: PD_SCK = 0;
	clr	_P2_5
;	main.c:1091: return;
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Move_back_ms'
;------------------------------------------------------------
;ms                        Allocated to registers r2 r3 
;------------------------------------------------------------
;	main.c:1094: void Move_back_ms(int ms){
;	-----------------------------------------
;	 function Move_back_ms
;	-----------------------------------------
_Move_back_ms:
	mov	r2,dpl
	mov	r3,dph
;	main.c:1096: L_motor_dir = 1;
	mov	dptr,#_L_motor_dir
	mov	a,#0x01
	movx	@dptr,a
;	main.c:1097: R_motor_dir = 1;
	mov	dptr,#_R_motor_dir
	mov	a,#0x01
	movx	@dptr,a
;	main.c:1099: pwm_left = 80;
	mov	dptr,#_pwm_left
	mov	a,#0x50
	movx	@dptr,a
;	main.c:1100: pwm_right = 80*pwm_corr;
	push	ar2
	push	ar3
	mov	dptr,#_pwm_corr
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
	mov	b,#0xA0
	mov	a,#0x42
	lcall	___fsmul
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	___fs2uchar
	mov	a,dpl
	pop	ar3
	pop	ar2
	mov	dptr,#_pwm_right
	movx	@dptr,a
;	main.c:1102: waitms(ms);
	mov	dpl,r2
	mov	dph,r3
	lcall	_waitms
;	main.c:1104: L_motor_dir = 0;
	mov	dptr,#_L_motor_dir
;	main.c:1105: R_motor_dir = 0;
;	main.c:1106: pwm_left = 0;
;	main.c:1107: pwm_right = 0;
	clr	a
	movx	@dptr,a
	mov	dptr,#_R_motor_dir
	movx	@dptr,a
	mov	dptr,#_pwm_left
	movx	@dptr,a
	mov	dptr,#_pwm_right
	movx	@dptr,a
;	main.c:1108: return;
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Right_angle'
;------------------------------------------------------------
;angle                     Allocated to registers r2 r3 
;------------------------------------------------------------
;	main.c:1112: void Right_angle(int angle){
;	-----------------------------------------
;	 function Right_angle
;	-----------------------------------------
_Right_angle:
	mov	r2,dpl
	mov	r3,dph
;	main.c:1114: L_motor_dir = 1;
	mov	dptr,#_L_motor_dir
	mov	a,#0x01
	movx	@dptr,a
;	main.c:1115: R_motor_dir = 0;
	mov	dptr,#_R_motor_dir
	clr	a
	movx	@dptr,a
;	main.c:1116: pwm_left = 80;
	mov	dptr,#_pwm_left
	mov	a,#0x50
	movx	@dptr,a
;	main.c:1117: pwm_right = 80 * pwm_corr;
	push	ar2
	push	ar3
	mov	dptr,#_pwm_corr
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
	mov	b,#0xA0
	mov	a,#0x42
	lcall	___fsmul
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	___fs2uchar
	mov	a,dpl
	pop	ar3
	pop	ar2
	mov	dptr,#_pwm_right
	movx	@dptr,a
;	main.c:1119: waitms(angle);
	mov	dpl,r2
	mov	dph,r3
	lcall	_waitms
;	main.c:1121: L_motor_dir = 0;
	mov	dptr,#_L_motor_dir
;	main.c:1122: R_motor_dir = 0;
;	main.c:1123: pwm_left = 0;
;	main.c:1124: pwm_right = 0;
	clr	a
	movx	@dptr,a
	mov	dptr,#_R_motor_dir
	movx	@dptr,a
	mov	dptr,#_pwm_left
	movx	@dptr,a
	mov	dptr,#_pwm_right
	movx	@dptr,a
;	main.c:1125: return;
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Move_forward'
;------------------------------------------------------------
;------------------------------------------------------------
;	main.c:1128: void Move_forward(){
;	-----------------------------------------
;	 function Move_forward
;	-----------------------------------------
_Move_forward:
;	main.c:1130: L_motor_dir = 0;
	mov	dptr,#_L_motor_dir
;	main.c:1131: R_motor_dir = 0;
	clr	a
	movx	@dptr,a
	mov	dptr,#_R_motor_dir
	movx	@dptr,a
;	main.c:1132: pwm_left = 60;
	mov	dptr,#_pwm_left
	mov	a,#0x3C
	movx	@dptr,a
;	main.c:1133: pwm_right = 60 * pwm_corr;
	mov	dptr,#_pwm_corr
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
	mov	b,#0x70
	mov	a,#0x42
	lcall	___fsmul
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	___fs2uchar
	mov	a,dpl
	mov	dptr,#_pwm_right
	movx	@dptr,a
;	main.c:1134: return;
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'simple_rand'
;------------------------------------------------------------
;------------------------------------------------------------
;	main.c:1137: unsigned int simple_rand() {
;	-----------------------------------------
;	 function simple_rand
;	-----------------------------------------
_simple_rand:
;	main.c:1138: seed = (seed * 25173 + 13849) & 0xFFFF;  
	mov	dptr,#_seed
	movx	a,@dptr
	mov	__mulint_PARM_2,a
	inc	dptr
	movx	a,@dptr
	mov	(__mulint_PARM_2 + 1),a
	mov	dptr,#0x6255
	lcall	__mulint
	mov	a,dpl
	mov	b,dph
	mov	dptr,#_seed
	add	a,#0x19
	movx	@dptr,a
	mov	a,#0x36
	addc	a,b
	inc	dptr
	movx	@dptr,a
;	main.c:1139: return seed;     
	mov	dptr,#_seed
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	dpl,r2
	mov	dph,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'get_random_90_250'
;------------------------------------------------------------
;------------------------------------------------------------
;	main.c:1142: unsigned int get_random_90_250() {
;	-----------------------------------------
;	 function get_random_90_250
;	-----------------------------------------
_get_random_90_250:
;	main.c:1143: return (simple_rand() % (250 - 85 + 1)) + 90;
	lcall	_simple_rand
	mov	__moduint_PARM_2,#0xA6
	clr	a
	mov	(__moduint_PARM_2 + 1),a
	lcall	__moduint
	mov	a,dpl
	mov	b,dph
	add	a,#0x5A
	mov	dpl,a
	clr	a
	addc	a,b
	mov	dph,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Read_angle'
;------------------------------------------------------------
;mag_x                     Allocated with name '_Read_angle_mag_x_1_229'
;mag_y                     Allocated with name '_Read_angle_mag_y_1_229'
;sum_x                     Allocated with name '_Read_angle_sum_x_1_229'
;sum_y                     Allocated with name '_Read_angle_sum_y_1_229'
;angle                     Allocated with name '_Read_angle_angle_1_229'
;------------------------------------------------------------
;	main.c:1146: float Read_angle(void)
;	-----------------------------------------
;	 function Read_angle
;	-----------------------------------------
_Read_angle:
;	main.c:1153: sum_x = 0.0; sum_y = 0.0;
	mov	dptr,#_Read_angle_sum_x_1_229
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_Read_angle_sum_y_1_229
	movx	@dptr,a
	inc	dptr
;	main.c:1156: for (i = 0; i < 10; i++){
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_i
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
L042005?:
	mov	dptr,#_i
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	clr	c
	mov	a,r2
	subb	a,#0x0A
	mov	a,r3
	subb	a,#0x00
	jc	L042015?
	ljmp	L042008?
L042015?:
;	main.c:1157: BMM150_Read_Data(&mag_x, &mag_y);
	mov	_BMM150_Read_Data_PARM_2,#_Read_angle_mag_y_1_229
	mov	(_BMM150_Read_Data_PARM_2 + 1),#(_Read_angle_mag_y_1_229 >> 8)
	mov	(_BMM150_Read_Data_PARM_2 + 2),#0x00
	mov	dptr,#_Read_angle_mag_x_1_229
	mov	b,#0x00
	lcall	_BMM150_Read_Data
;	main.c:1158: sum_x += (float)mag_x; 
	mov	dptr,#_Read_angle_mag_x_1_229
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	lcall	___sint2fs
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	dptr,#_Read_angle_sum_x_1_229
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
	push	ar2
	push	ar3
	push	ar4
	push	ar5
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
	mov	dptr,#_Read_angle_sum_x_1_229
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
;	main.c:1159: sum_y += (float)mag_y; 
	mov	dptr,#_Read_angle_mag_y_1_229
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	lcall	___sint2fs
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	dptr,#_Read_angle_sum_y_1_229
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
	push	ar2
	push	ar3
	push	ar4
	push	ar5
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
	mov	dptr,#_Read_angle_sum_y_1_229
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
;	main.c:1160: Timer3us(1);
	mov	dpl,#0x01
	lcall	_Timer3us
;	main.c:1156: for (i = 0; i < 10; i++){
	mov	dptr,#_i
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
	ljmp	L042005?
L042008?:
;	main.c:1162: angle = atan2f(sum_y, sum_x) * 180.0 / M_PI;
	mov	dptr,#_Read_angle_sum_y_1_229
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
	mov	dptr,#_Read_angle_sum_x_1_229
	movx	a,@dptr
	mov	_atan2f_PARM_2,a
	inc	dptr
	movx	a,@dptr
	mov	(_atan2f_PARM_2 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_atan2f_PARM_2 + 2),a
	inc	dptr
	movx	a,@dptr
	mov	(_atan2f_PARM_2 + 3),a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	_atan2f
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	mov	dptr,#0x0000
	mov	b,#0x34
	mov	a,#0x43
	lcall	___fsmul
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,#0xDB
	push	acc
	mov	a,#0x0F
	push	acc
	mov	a,#0x49
	push	acc
	mov	a,#0x40
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	___fsdiv
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dptr,#_Read_angle_angle_1_229
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
;	main.c:1163: if (angle < 0.0) angle += 360.0; 
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	clr	a
	push	acc
	push	acc
	push	acc
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	___fslt
	mov	r6,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
	mov	a,r6
	jz	L042002?
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
	lcall	___fsadd
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dptr,#_Read_angle_angle_1_229
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
L042002?:
;	main.c:1164: if (angle > 360.0) angle -= 360.0; 
	mov	dptr,#_Read_angle_angle_1_229
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
	jz	L042004?
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
	mov	dptr,#_Read_angle_angle_1_229
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
L042004?:
;	main.c:1165: return angle; 
	mov	dptr,#_Read_angle_angle_1_229
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
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Auto_mode_slave'
;------------------------------------------------------------
;sloc0                     Allocated with name '_Auto_mode_slave_sloc0_1_0'
;count                     Allocated with name '_Auto_mode_slave_count_1_231'
;command                   Allocated with name '_Auto_mode_slave_command_1_231'
;state_res                 Allocated with name '_Auto_mode_slave_state_res_1_231'
;bound                     Allocated with name '_Auto_mode_slave_bound_1_231'
;c                         Allocated with name '_Auto_mode_slave_c_1_231'
;dummy                     Allocated with name '_Auto_mode_slave_dummy_1_231'
;angle                     Allocated with name '_Auto_mode_slave_angle_1_231'
;------------------------------------------------------------
;	main.c:1168: void Auto_mode_slave(){
;	-----------------------------------------
;	 function Auto_mode_slave
;	-----------------------------------------
_Auto_mode_slave:
;	main.c:1171: xdata int state_res = 1;
	mov	dptr,#_Auto_mode_slave_state_res_1_231
	mov	a,#0x01
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	main.c:1177: curr_angle = Read_angle();
	lcall	_Read_angle
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	dptr,#_curr_angle
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
;	main.c:1179: while(count < 20 && state_res){
	clr	a
	mov	_Auto_mode_slave_sloc0_1_0,a
	mov	(_Auto_mode_slave_sloc0_1_0 + 1),a
L043020?:
	clr	c
	mov	a,_Auto_mode_slave_sloc0_1_0
	subb	a,#0x14
	mov	a,(_Auto_mode_slave_sloc0_1_0 + 1)
	xrl	a,#0x80
	subb	a,#0x80
	jc	L043042?
	ljmp	L043022?
L043042?:
	mov	dptr,#_Auto_mode_slave_state_res_1_231
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	orl	a,r4
	jnz	L043043?
	ljmp	L043022?
L043043?:
;	main.c:1181: if(RXU1()){
	push	ar4
	push	ar5
	lcall	_RXU1
	pop	ar5
	pop	ar4
	jc	L043044?
	ljmp	L043012?
L043044?:
;	main.c:1182: c=getchar1();	
	push	ar4
	push	ar5
	lcall	_getchar1
	mov	r6,dpl
	pop	ar5
	pop	ar4
;	main.c:1183: if(c=='!'){
	cjne	r6,#0x21,L043045?
	sjmp	L043046?
L043045?:
	ljmp	L043009?
L043046?:
;	main.c:1184: getstr1(buff, sizeof(buff)-1);
	mov	_getstr1_PARM_2,#0x13
	mov	dptr,#_buff
	mov	b,#0x40
	lcall	_getstr1
;	main.c:1185: if(strlen(buff)==11){
	mov	dptr,#_buff
	mov	b,#0x40
	lcall	_strlen
	mov	r7,dpl
	mov	r2,dph
	cjne	r7,#0x0B,L043047?
	cjne	r2,#0x00,L043047?
	sjmp	L043048?
L043047?:
	ljmp	L043012?
L043048?:
;	main.c:1187: sscanf(buff,"%03d,%03d,%01d,%01d",&dummy, &dummy,&dummy,&command);
	mov	a,#_Auto_mode_slave_command_1_231
	push	acc
	mov	a,#(_Auto_mode_slave_command_1_231 >> 8)
	push	acc
	clr	a
	push	acc
	mov	a,#_Auto_mode_slave_dummy_1_231
	push	acc
	mov	a,#(_Auto_mode_slave_dummy_1_231 >> 8)
	push	acc
	clr	a
	push	acc
	mov	a,#_Auto_mode_slave_dummy_1_231
	push	acc
	mov	a,#(_Auto_mode_slave_dummy_1_231 >> 8)
	push	acc
	clr	a
	push	acc
	mov	a,#_Auto_mode_slave_dummy_1_231
	push	acc
	mov	a,#(_Auto_mode_slave_dummy_1_231 >> 8)
	push	acc
	clr	a
	push	acc
	mov	a,#__str_5
	push	acc
	mov	a,#(__str_5 >> 8)
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
	add	a,#0xee
	mov	sp,a
;	main.c:1188: if(command) state_res = 1;
	mov	dptr,#_Auto_mode_slave_command_1_231
	movx	a,@dptr
	mov	r7,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	orl	a,r7
	jz	L043002?
	mov	dptr,#_Auto_mode_slave_state_res_1_231
	mov	a,#0x01
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	ljmp	L043012?
L043002?:
;	main.c:1189: else state_res = 0;
	mov	dptr,#_Auto_mode_slave_state_res_1_231
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	sjmp	L043012?
L043009?:
;	main.c:1192: else if(c=='@'){
	cjne	r6,#0x40,L043012?
;	main.c:1193: sprintf(buff, "%01d,%02d,%ld,%05d,%03d\n", state_res, count, freq100, 0, (int)curr_angle);
	mov	dptr,#_curr_angle
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	dpl,r2
	mov	dph,r3
	mov	b,r6
	push	ar4
	push	ar5
	lcall	___fs2sint
	mov	r2,dpl
	mov	r3,dph
	pop	ar5
	pop	ar4
	push	ar2
	push	ar3
	clr	a
	push	acc
	push	acc
	mov	dptr,#_freq100
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
	push	_Auto_mode_slave_sloc0_1_0
	push	(_Auto_mode_slave_sloc0_1_0 + 1)
	push	ar4
	push	ar5
	mov	a,#__str_6
	push	acc
	mov	a,#(__str_6 >> 8)
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
	add	a,#0xee
	mov	sp,a
;	main.c:1194: waitms(5); 
	mov	dptr,#0x0005
	lcall	_waitms
;	main.c:1195: sendstr1(buff);
	mov	dptr,#_buff
	mov	b,#0x40
	lcall	_sendstr1
L043012?:
;	main.c:1199: Move_forward();
	lcall	_Move_forward
;	main.c:1201: d1 = ADC_at_Pin(QFP32_MUX_P1_3);
	mov	dpl,#0x09
	lcall	_ADC_at_Pin
	mov	a,dpl
	mov	b,dph
	mov	dptr,#_d1
	movx	@dptr,a
	inc	dptr
	mov	a,b
	movx	@dptr,a
;	main.c:1202: d2 = ADC_at_Pin(QFP32_MUX_P1_4);
	mov	dpl,#0x0A
	lcall	_ADC_at_Pin
	mov	r2,dpl
	mov	r3,dph
	mov	dptr,#_d2
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
;	main.c:1203: bound = check_bound(d1,d2);
	mov	dptr,#_d1
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	_check_bound_PARM_2,r2
	mov	(_check_bound_PARM_2 + 1),r3
	mov	dpl,r4
	mov	dph,r5
	lcall	_check_bound
	mov	r2,dpl
	mov	r3,dph
;	main.c:1204: printf("f:%04ld, d1:%d, d2:%d, bound_dectect: %d, distance: %d\r\n",freq100, d1,d2,bound,distance);
	push	ar2
	push	ar3
	mov	dptr,#_distance
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	push	ar2
	push	ar3
	mov	dptr,#_d2
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	dptr,#_d1
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	dptr,#_freq100
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
	mov	a,#__str_7
	push	acc
	mov	a,#(__str_7 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf1
	mov	sp,a
;	main.c:1205: printf("%d \r\n", count);
	push	_Auto_mode_slave_sloc0_1_0
	push	(_Auto_mode_slave_sloc0_1_0 + 1)
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
	pop	ar3
	pop	ar2
;	main.c:1206: if (freq100>=5355){
	mov	dptr,#_freq100
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	clr	c
	mov	a,r4
	subb	a,#0xEB
	mov	a,r5
	subb	a,#0x14
	mov	a,r6
	subb	a,#0x00
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jc	L043014?
;	main.c:1207: mea_yes = 0;
	mov	dptr,#_mea_yes
	clr	a
	movx	@dptr,a
;	main.c:1208: Move_back_ms(100);
	mov	dptr,#0x0064
	push	ar2
	push	ar3
	lcall	_Move_back_ms
;	main.c:1209: waitms(100);
	mov	dptr,#0x0064
	lcall	_waitms
;	main.c:1210: servo_pick();
	lcall	_servo_pick
	pop	ar3
	pop	ar2
;	main.c:1211: count++;
	inc	_Auto_mode_slave_sloc0_1_0
	clr	a
	cjne	a,_Auto_mode_slave_sloc0_1_0,L043053?
	inc	(_Auto_mode_slave_sloc0_1_0 + 1)
L043053?:
;	main.c:1212: waitms(100);
	mov	dptr,#0x0064
	push	ar2
	push	ar3
	lcall	_waitms
;	main.c:1213: mea_yes = 1;
	mov	dptr,#_mea_yes
	mov	a,#0x01
	movx	@dptr,a
;	main.c:1214: Move_forward();
	lcall	_Move_forward
	pop	ar3
	pop	ar2
L043014?:
;	main.c:1217: if (distance < 600){
	mov	dptr,#_distance
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	clr	c
	mov	a,r4
	subb	a,#0x58
	mov	a,r5
	xrl	a,#0x80
	subb	a,#0x82
	jnc	L043016?
;	main.c:1218: servo_moveaway();
	push	ar2
	push	ar3
	lcall	_servo_moveaway
	pop	ar3
	pop	ar2
L043016?:
;	main.c:1221: if(bound == 1){
	cjne	r2,#0x01,L043055?
	cjne	r3,#0x00,L043055?
	sjmp	L043056?
L043055?:
	ljmp	L043020?
L043056?:
;	main.c:1222: Move_back_ms(400);
	mov	dptr,#0x0190
	lcall	_Move_back_ms
;	main.c:1223: waitms(100);
	mov	dptr,#0x0064
	lcall	_waitms
;	main.c:1224: angle = get_random_90_250();
	lcall	_get_random_90_250
	mov	__mulint_PARM_2,dpl
	mov	(__mulint_PARM_2 + 1),dph
;	main.c:1225: Right_angle(angle*600/90);
	mov	dptr,#0x0258
	lcall	__mulint
	mov	r2,dpl
	mov	r3,dph
	mov	__divuint_PARM_2,#0x5A
	clr	a
	mov	(__divuint_PARM_2 + 1),a
	mov	dpl,r2
	mov	dph,r3
	lcall	__divuint
	lcall	_Right_angle
;	main.c:1226: curr_angle = Read_angle() * 1.2;
	lcall	_Read_angle
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	mov	dptr,#0x999A
	mov	b,#0x99
	mov	a,#0x3F
	lcall	___fsmul
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dptr,#_curr_angle
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
	ljmp	L043020?
L043022?:
;	main.c:1229: dummy = 0;
	mov	dptr,#_Auto_mode_slave_dummy_1_231
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	main.c:1231: sprintf(buff, "0,20,%04ld,%05d,%03d,%03d,%03d\n", freq100, weight, (int)curr_angle);
	mov	dptr,#_curr_angle
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
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	___fs2sint
	mov	r2,dpl
	mov	r3,dph
	push	ar2
	push	ar3
	mov	dptr,#_weight
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	dptr,#_freq100
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
	mov	a,#__str_9
	push	acc
	mov	a,#(__str_9 >> 8)
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
	add	a,#0xf2
	mov	sp,a
;	main.c:1232: dummy++;
	mov	dptr,#_Auto_mode_slave_dummy_1_231
	mov	a,#0x01
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	main.c:1233: waitms(5); 
	mov	dptr,#0x0005
	lcall	_waitms
;	main.c:1234: sendstr1(buff);
	mov	dptr,#_buff
	mov	b,#0x40
	lcall	_sendstr1
;	main.c:1235: printf("%s\r\n",buff);
	mov	a,#_buff
	push	acc
	mov	a,#(_buff >> 8)
	push	acc
	mov	a,#0x40
	push	acc
	mov	a,#__str_10
	push	acc
	mov	a,#(__str_10 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
;	main.c:1236: if(dummy = 100) break;
	mov	dptr,#_Auto_mode_slave_dummy_1_231
	mov	a,#0x64
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Joystick_Control'
;------------------------------------------------------------
;vy_ptr                    Allocated with name '_Joystick_Control_PARM_2'
;vx_ptr                    Allocated to registers r2 r3 r4 
;sloc0                     Allocated with name '_Joystick_Control_sloc0_1_0'
;sloc1                     Allocated with name '_Joystick_Control_sloc1_1_0'
;sloc2                     Allocated with name '_Joystick_Control_sloc2_1_0'
;sloc3                     Allocated with name '_Joystick_Control_sloc3_1_0'
;sloc4                     Allocated with name '_Joystick_Control_sloc4_1_0'
;sloc5                     Allocated with name '_Joystick_Control_sloc5_1_0'
;vx_error                  Allocated with name '_Joystick_Control_vx_error_1_242'
;vy_error                  Allocated with name '_Joystick_Control_vy_error_1_242'
;vx_err                    Allocated with name '_Joystick_Control_vx_err_1_242'
;vy_err                    Allocated with name '_Joystick_Control_vy_err_1_242'
;------------------------------------------------------------
;	main.c:1240: float Joystick_Control(int *vx_ptr, int *vy_ptr)
;	-----------------------------------------
;	 function Joystick_Control
;	-----------------------------------------
_Joystick_Control:
;	main.c:1244: vx = *vx_ptr; 
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	mov	dptr,#_vx
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
;	main.c:1245: vy = *vy_ptr; 
	mov	r2,_Joystick_Control_PARM_2
	mov	r3,(_Joystick_Control_PARM_2 + 1)
	mov	r4,(_Joystick_Control_PARM_2 + 2)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	mov	dptr,#_vy
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
;	main.c:1248: raw_angle = Read_angle();
	lcall	_Read_angle
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	dptr,#_raw_angle
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
;	main.c:1251: vx_error = abs(vx-vx_thres)*100/vx_thres; 
	mov	dptr,#_vx_thres
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#_vx
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,r4
	clr	c
	subb	a,r2
	mov	dpl,a
	mov	a,r5
	subb	a,r3
	mov	dph,a
	lcall	_abs
	mov	__mulint_PARM_2,dpl
	mov	(__mulint_PARM_2 + 1),dph
	mov	dptr,#0x0064
	lcall	__mulint
	mov	r2,dpl
	mov	r3,dph
	mov	dptr,#_vx_thres
	movx	a,@dptr
	mov	__divsint_PARM_2,a
	inc	dptr
	movx	a,@dptr
	mov	(__divsint_PARM_2 + 1),a
	mov	dpl,r2
	mov	dph,r3
	lcall	__divsint
	mov	a,dpl
	mov	b,dph
	mov	dptr,#_Joystick_Control_vx_error_1_242
	movx	@dptr,a
	inc	dptr
	mov	a,b
	movx	@dptr,a
;	main.c:1252: vy_error = abs(vy-vy_thres)*100/vy_thres; 
	mov	dptr,#_vy_thres
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#_vy
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,r4
	clr	c
	subb	a,r2
	mov	dpl,a
	mov	a,r5
	subb	a,r3
	mov	dph,a
	lcall	_abs
	mov	__mulint_PARM_2,dpl
	mov	(__mulint_PARM_2 + 1),dph
	mov	dptr,#0x0064
	lcall	__mulint
	mov	r2,dpl
	mov	r3,dph
	mov	dptr,#_vy_thres
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	__divsint_PARM_2,r4
	mov	(__divsint_PARM_2 + 1),r5
	mov	dpl,r2
	mov	dph,r3
	push	ar4
	push	ar5
	lcall	__divsint
	mov	r2,dpl
	mov	r3,dph
	pop	ar5
	pop	ar4
	mov	dptr,#_Joystick_Control_vy_error_1_242
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
;	main.c:1253: vx_err = vx-vx_thres; 
	mov	dptr,#_vx_thres
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_vx
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	mov	a,r0
	clr	c
	subb	a,r6
	mov	r6,a
	mov	a,r1
	subb	a,r7
	mov	r7,a
	mov	dptr,#_Joystick_Control_vx_err_1_242
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
;	main.c:1254: vy_err = vy-vy_thres; 
	mov	dptr,#_vy
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	mov	a,r0
	clr	c
	subb	a,r4
	mov	_Joystick_Control_sloc0_1_0,a
	mov	a,r1
	subb	a,r5
	mov	(_Joystick_Control_sloc0_1_0 + 1),a
	mov	dptr,#_Joystick_Control_vy_err_1_242
	mov	a,_Joystick_Control_sloc0_1_0
	movx	@dptr,a
	inc	dptr
	mov	a,(_Joystick_Control_sloc0_1_0 + 1)
	movx	@dptr,a
;	main.c:1255: pwm_left = 0; 
	mov	dptr,#_pwm_left
;	main.c:1256: pwm_right = 0; 
	clr	a
	movx	@dptr,a
	mov	dptr,#_pwm_right
	movx	@dptr,a
;	main.c:1258: if ((vy_error>5) && (vx_error<5)){
	clr	c
	mov	a,#0x05
	subb	a,r2
	clr	a
	xrl	a,#0x80
	mov	b,r3
	xrl	b,#0x80
	subb	a,b
	clr	a
	rlc	a
	mov	_Joystick_Control_sloc2_1_0,a
	jnz	L044062?
	ljmp	L044005?
L044062?:
	mov	dptr,#_Joystick_Control_vx_error_1_242
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r0,a
	clr	c
	mov	a,r1
	subb	a,#0x05
	mov	a,r0
	xrl	a,#0x80
	subb	a,#0x80
	jc	L044063?
	ljmp	L044005?
L044063?:
;	main.c:1259: pwm_left = vy_error; 
	mov	dptr,#_pwm_left
	mov	a,r2
	movx	@dptr,a
;	main.c:1260: pwm_right = vy_error * pwm_corr; 
	mov	dpl,r2
	mov	dph,r3
	push	ar2
	push	ar3
	push	ar6
	push	ar7
	lcall	___sint2fs
	mov	r1,dpl
	mov	r0,dph
	mov	r4,b
	mov	r5,a
	mov	dptr,#_pwm_corr
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
	mov	dpl,r1
	mov	dph,r0
	mov	b,r4
	mov	a,r5
	lcall	___fsmul
	mov	r4,dpl
	mov	r5,dph
	mov	r0,b
	mov	r1,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r0
	mov	a,r1
	lcall	___fs2uchar
	mov	_Joystick_Control_sloc1_1_0,dpl
	pop	ar7
	pop	ar6
	pop	ar3
	pop	ar2
	mov	dptr,#_pwm_right
	mov	a,_Joystick_Control_sloc1_1_0
	movx	@dptr,a
;	main.c:1261: if (vy_err > 0){ //move forward
	clr	c
	clr	a
	subb	a,_Joystick_Control_sloc0_1_0
	clr	a
	xrl	a,#0x80
	mov	b,(_Joystick_Control_sloc0_1_0 + 1)
	xrl	b,#0x80
	subb	a,b
	jnc	L044002?
;	main.c:1262: L_motor_dir = 0; 
	mov	dptr,#_L_motor_dir
;	main.c:1263: R_motor_dir = 0; 
	clr	a
	movx	@dptr,a
	mov	dptr,#_R_motor_dir
	movx	@dptr,a
	sjmp	L044005?
L044002?:
;	main.c:1266: L_motor_dir = 1; 
	mov	dptr,#_L_motor_dir
	mov	a,#0x01
	movx	@dptr,a
;	main.c:1267: R_motor_dir = 1; 
	mov	dptr,#_R_motor_dir
	mov	a,#0x01
	movx	@dptr,a
;	main.c:1268: pwm_right *= 1.05;
	mov	dpl,_Joystick_Control_sloc1_1_0
	push	ar2
	push	ar3
	push	ar6
	push	ar7
	lcall	___uchar2fs
	mov	r4,dpl
	mov	r5,dph
	mov	r1,b
	mov	r0,a
	push	ar4
	push	ar5
	push	ar1
	push	ar0
	mov	dptr,#0x6666
	mov	b,#0x86
	mov	a,#0x3F
	lcall	___fsmul
	mov	r4,dpl
	mov	r5,dph
	mov	r0,b
	mov	r1,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r0
	mov	a,r1
	lcall	___fs2uchar
	mov	a,dpl
	pop	ar7
	pop	ar6
	pop	ar3
	pop	ar2
	mov	dptr,#_pwm_right
	movx	@dptr,a
;	main.c:1351: return curr_angle; 
;	main.c:1268: pwm_right *= 1.05;
L044005?:
;	main.c:1271: if ((vx_error>5)&&(vy_error<5)){
	mov	dptr,#_Joystick_Control_vx_error_1_242
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	clr	c
	mov	a,#0x05
	subb	a,r4
	clr	a
	xrl	a,#0x80
	mov	b,r5
	xrl	b,#0x80
	subb	a,b
	clr	a
	rlc	a
	mov	r1,a
	jnz	L044065?
	ljmp	L044015?
L044065?:
	clr	c
	mov	a,r2
	subb	a,#0x05
	mov	a,r3
	xrl	a,#0x80
	subb	a,#0x80
	jc	L044066?
	ljmp	L044015?
L044066?:
;	main.c:1272: pwm_left = vx_error; 
	push	ar1
	mov	dptr,#_pwm_left
	mov	a,r4
	movx	@dptr,a
;	main.c:1273: pwm_right = vx_error * pwm_corr; 
	mov	dpl,r4
	mov	dph,r5
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	lcall	___sint2fs
	mov	r2,dpl
	mov	r3,dph
	mov	r1,b
	mov	r0,a
	mov	dptr,#_pwm_corr
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
	mov	dpl,r2
	mov	dph,r3
	mov	b,r1
	mov	a,r0
	lcall	___fsmul
	mov	r2,dpl
	mov	r3,dph
	mov	r0,b
	mov	r1,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r0
	mov	a,r1
	push	ar1
	lcall	___fs2uchar
	mov	a,dpl
	pop	ar1
	pop	ar7
	pop	ar6
	pop	ar5
	pop	ar4
	mov	dptr,#_pwm_right
	movx	@dptr,a
;	main.c:1274: if (vx_err > 0){ //turn right
	clr	c
	clr	a
	subb	a,r6
	clr	a
	xrl	a,#0x80
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	pop	ar1
	jc	L044067?
	ljmp	L044008?
L044067?:
;	main.c:1275: L_motor_dir = 1; 
	push	ar1
	mov	dptr,#_L_motor_dir
	mov	a,#0x01
	movx	@dptr,a
;	main.c:1276: R_motor_dir = 0;
	mov	dptr,#_R_motor_dir
	clr	a
	movx	@dptr,a
;	main.c:1277: curr_angle += angle_diff * 1.45; // TUNE THIS
	push	ar4
	push	ar5
	push	ar1
	mov	dptr,#_angle_diff
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
	mov	dptr,#0x999A
	mov	b,#0xB9
	mov	a,#0x3F
	lcall	___fsmul
	mov	_Joystick_Control_sloc3_1_0,dpl
	mov	(_Joystick_Control_sloc3_1_0 + 1),dph
	mov	(_Joystick_Control_sloc3_1_0 + 2),b
	mov	(_Joystick_Control_sloc3_1_0 + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar1
	mov	dptr,#_curr_angle
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	push	ar1
	push	_Joystick_Control_sloc3_1_0
	push	(_Joystick_Control_sloc3_1_0 + 1)
	push	(_Joystick_Control_sloc3_1_0 + 2)
	push	(_Joystick_Control_sloc3_1_0 + 3)
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	mov	a,r3
	lcall	___fsadd
	mov	r2,dpl
	mov	r3,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar1
	pop	ar5
	pop	ar4
	mov	dptr,#_curr_angle
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
	pop	ar1
	ljmp	L044009?
L044008?:
;	main.c:1280: L_motor_dir = 0; 
	push	ar1
	mov	dptr,#_L_motor_dir
	clr	a
	movx	@dptr,a
;	main.c:1281: R_motor_dir = 1; 
	mov	dptr,#_R_motor_dir
	mov	a,#0x01
	movx	@dptr,a
;	main.c:1282: curr_angle -= angle_diff * 1.4; // TUNE THIS
	push	ar4
	push	ar5
	push	ar1
	mov	dptr,#_angle_diff
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
	mov	dptr,#0x3333
	mov	b,#0xB3
	mov	a,#0x3F
	lcall	___fsmul
	mov	_Joystick_Control_sloc3_1_0,dpl
	mov	(_Joystick_Control_sloc3_1_0 + 1),dph
	mov	(_Joystick_Control_sloc3_1_0 + 2),b
	mov	(_Joystick_Control_sloc3_1_0 + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar1
	mov	dptr,#_curr_angle
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	push	ar1
	push	_Joystick_Control_sloc3_1_0
	push	(_Joystick_Control_sloc3_1_0 + 1)
	push	(_Joystick_Control_sloc3_1_0 + 2)
	push	(_Joystick_Control_sloc3_1_0 + 3)
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	mov	a,r3
	lcall	___fssub
	mov	r2,dpl
	mov	r3,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar1
	pop	ar5
	pop	ar4
	mov	dptr,#_curr_angle
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
;	main.c:1351: return curr_angle; 
	pop	ar1
;	main.c:1282: curr_angle -= angle_diff * 1.4; // TUNE THIS
L044009?:
;	main.c:1284: if (curr_angle > 360.0) curr_angle -= 360.0; 
	mov	dptr,#_curr_angle
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	push	ar1
	clr	a
	push	acc
	push	acc
	mov	a,#0xB4
	push	acc
	mov	a,#0x43
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r6
	mov	a,r7
	lcall	___fsgt
	mov	r0,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar1
	pop	ar7
	pop	ar6
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
	mov	a,r0
	jz	L044011?
	push	ar4
	push	ar5
	push	ar1
	clr	a
	push	acc
	push	acc
	mov	a,#0xB4
	push	acc
	mov	a,#0x43
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r6
	mov	a,r7
	lcall	___fssub
	mov	r2,dpl
	mov	r3,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar1
	pop	ar5
	pop	ar4
	mov	dptr,#_curr_angle
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
L044011?:
;	main.c:1285: if (curr_angle < 0.0) curr_angle += 360.0; 
	mov	dptr,#_curr_angle
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	push	ar1
	clr	a
	push	acc
	push	acc
	push	acc
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r6
	mov	a,r7
	lcall	___fslt
	mov	r0,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar1
	pop	ar7
	pop	ar6
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
	mov	a,r0
	jz	L044015?
	push	ar4
	push	ar5
	push	ar1
	clr	a
	push	acc
	push	acc
	mov	a,#0xB4
	push	acc
	mov	a,#0x43
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r6
	mov	a,r7
	lcall	___fsadd
	mov	r2,dpl
	mov	r3,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar1
	pop	ar5
	pop	ar4
	mov	dptr,#_curr_angle
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
L044015?:
;	main.c:1287: if ((vx_error>5)&&(vy_error)>5){
	mov	a,r1
	jnz	L044070?
	ljmp	L044040?
L044070?:
	mov	a,_Joystick_Control_sloc2_1_0
	jnz	L044071?
	ljmp	L044040?
L044071?:
;	main.c:1289: angle_diff = fabsf(raw_angle - last_raw_angle);
	mov	dptr,#_raw_angle
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	push	ar4
	push	ar5
	mov	dptr,#_last_raw_angle
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
	mov	dpl,r2
	mov	dph,r3
	mov	b,r6
	mov	a,r7
	lcall	___fssub
	mov	r2,dpl
	mov	r3,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r6
	mov	a,r7
	lcall	_fabsf
	mov	_Joystick_Control_sloc4_1_0,dpl
	mov	(_Joystick_Control_sloc4_1_0 + 1),dph
	mov	(_Joystick_Control_sloc4_1_0 + 2),b
	mov	(_Joystick_Control_sloc4_1_0 + 3),a
	pop	ar5
	pop	ar4
	mov	dptr,#_angle_diff
	mov	a,_Joystick_Control_sloc4_1_0
	movx	@dptr,a
	inc	dptr
	mov	a,(_Joystick_Control_sloc4_1_0 + 1)
	movx	@dptr,a
	inc	dptr
	mov	a,(_Joystick_Control_sloc4_1_0 + 2)
	movx	@dptr,a
	inc	dptr
	mov	a,(_Joystick_Control_sloc4_1_0 + 3)
	movx	@dptr,a
;	main.c:1290: if (vy_err>0){
	mov	dptr,#_Joystick_Control_vy_err_1_242
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	clr	c
	clr	a
	subb	a,r0
	clr	a
	xrl	a,#0x80
	mov	b,r1
	xrl	b,#0x80
	subb	a,b
	jc	L044072?
	ljmp	L044027?
L044072?:
;	main.c:1291: L_motor_dir = 0; 
	push	ar0
	push	ar1
	mov	dptr,#_L_motor_dir
;	main.c:1292: R_motor_dir = 0; 
	clr	a
	movx	@dptr,a
	mov	dptr,#_R_motor_dir
	movx	@dptr,a
;	main.c:1294: if (vx_err>0){
	mov	dptr,#_Joystick_Control_vx_err_1_242
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	clr	c
	clr	a
	subb	a,r0
	clr	a
	xrl	a,#0x80
	mov	b,r1
	xrl	b,#0x80
	subb	a,b
	pop	ar1
	pop	ar0
	jc	L044073?
	ljmp	L044024?
L044073?:
;	main.c:1296: if (vy*100<=vy_thres*100/2){
	push	ar0
	push	ar1
	mov	dptr,#_vy
	movx	a,@dptr
	mov	__mulint_PARM_2,a
	inc	dptr
	movx	a,@dptr
	mov	(__mulint_PARM_2 + 1),a
	mov	dptr,#0x0064
	push	ar4
	push	ar5
	push	ar0
	push	ar1
	lcall	__mulint
	mov	_Joystick_Control_sloc3_1_0,dpl
	mov	(_Joystick_Control_sloc3_1_0 + 1),dph
	pop	ar1
	pop	ar0
	mov	dptr,#_vy_thres
	movx	a,@dptr
	mov	__mulint_PARM_2,a
	inc	dptr
	movx	a,@dptr
	mov	(__mulint_PARM_2 + 1),a
	mov	dptr,#0x0064
	lcall	__mulint
	mov	r0,dpl
	mov	r1,dph
	mov	__divsint_PARM_2,#0x02
	clr	a
	mov	(__divsint_PARM_2 + 1),a
	mov	dpl,r0
	mov	dph,r1
	lcall	__divsint
	mov	r0,dpl
	mov	r1,dph
	pop	ar5
	pop	ar4
	clr	c
	mov	a,r0
	subb	a,_Joystick_Control_sloc3_1_0
	mov	a,r1
	xrl	a,#0x80
	mov	b,(_Joystick_Control_sloc3_1_0 + 1)
	xrl	b,#0x80
	subb	a,b
	pop	ar1
	pop	ar0
	jnc	L044074?
	ljmp	L044018?
L044074?:
;	main.c:1297: pwm_left = vy_error; 
	push	ar0
	push	ar1
	mov	dptr,#_Joystick_Control_vy_error_1_242
	movx	a,@dptr
	mov	_Joystick_Control_sloc3_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_Joystick_Control_sloc3_1_0 + 1),a
	mov	dptr,#_pwm_left
	mov	a,_Joystick_Control_sloc3_1_0
	movx	@dptr,a
;	main.c:1298: pwm_right = pwm_corr*vy_error*100/(vx_error+vy_error);
	mov	dptr,#_pwm_corr
	movx	a,@dptr
	mov	_Joystick_Control_sloc5_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_Joystick_Control_sloc5_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_Joystick_Control_sloc5_1_0 + 2),a
	inc	dptr
	movx	a,@dptr
	mov	(_Joystick_Control_sloc5_1_0 + 3),a
	mov	dpl,_Joystick_Control_sloc3_1_0
	mov	dph,(_Joystick_Control_sloc3_1_0 + 1)
	push	ar4
	push	ar5
	push	ar0
	push	ar1
	lcall	___sint2fs
	mov	r6,dpl
	mov	r7,dph
	mov	r2,b
	mov	r3,a
	push	ar6
	push	ar7
	push	ar2
	push	ar3
	mov	dpl,_Joystick_Control_sloc5_1_0
	mov	dph,(_Joystick_Control_sloc5_1_0 + 1)
	mov	b,(_Joystick_Control_sloc5_1_0 + 2)
	mov	a,(_Joystick_Control_sloc5_1_0 + 3)
	lcall	___fsmul
	mov	r2,dpl
	mov	r3,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	push	ar2
	push	ar3
	push	ar6
	push	ar7
	mov	dptr,#0x0000
	mov	b,#0xC8
	mov	a,#0x42
	lcall	___fsmul
	mov	_Joystick_Control_sloc5_1_0,dpl
	mov	(_Joystick_Control_sloc5_1_0 + 1),dph
	mov	(_Joystick_Control_sloc5_1_0 + 2),b
	mov	(_Joystick_Control_sloc5_1_0 + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar1
	pop	ar0
	pop	ar5
	pop	ar4
	mov	a,_Joystick_Control_sloc3_1_0
	add	a,r4
	mov	dpl,a
	mov	a,(_Joystick_Control_sloc3_1_0 + 1)
	addc	a,r5
	mov	dph,a
	push	ar4
	push	ar5
	lcall	___sint2fs
	mov	r0,dpl
	mov	r1,dph
	mov	r2,b
	mov	r3,a
	push	ar0
	push	ar1
	push	ar0
	push	ar1
	push	ar2
	push	ar3
	mov	dpl,_Joystick_Control_sloc5_1_0
	mov	dph,(_Joystick_Control_sloc5_1_0 + 1)
	mov	b,(_Joystick_Control_sloc5_1_0 + 2)
	mov	a,(_Joystick_Control_sloc5_1_0 + 3)
	lcall	___fsdiv
	mov	r2,dpl
	mov	r3,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r6
	mov	a,r7
	lcall	___fs2uchar
	mov	a,dpl
	pop	ar1
	pop	ar0
	pop	ar5
	pop	ar4
	mov	dptr,#_pwm_right
	movx	@dptr,a
	pop	ar1
	pop	ar0
	ljmp	L044019?
L044018?:
;	main.c:1301: pwm_left = vx_error; 
	push	ar0
	push	ar1
	mov	dptr,#_pwm_left
	mov	a,r4
	movx	@dptr,a
;	main.c:1302: pwm_right = pwm_corr*vx_error*100/(vx_error+vy_error);
	mov	dptr,#_pwm_corr
	movx	a,@dptr
	mov	_Joystick_Control_sloc5_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_Joystick_Control_sloc5_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_Joystick_Control_sloc5_1_0 + 2),a
	inc	dptr
	movx	a,@dptr
	mov	(_Joystick_Control_sloc5_1_0 + 3),a
	mov	dpl,r4
	mov	dph,r5
	push	ar4
	push	ar5
	lcall	___sint2fs
	mov	r0,dpl
	mov	r1,dph
	mov	r2,b
	mov	r3,a
	push	ar0
	push	ar1
	push	ar0
	push	ar1
	push	ar2
	push	ar3
	mov	dpl,_Joystick_Control_sloc5_1_0
	mov	dph,(_Joystick_Control_sloc5_1_0 + 1)
	mov	b,(_Joystick_Control_sloc5_1_0 + 2)
	mov	a,(_Joystick_Control_sloc5_1_0 + 3)
	lcall	___fsmul
	mov	r2,dpl
	mov	r3,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	push	ar2
	push	ar3
	push	ar6
	push	ar7
	mov	dptr,#0x0000
	mov	b,#0xC8
	mov	a,#0x42
	lcall	___fsmul
	mov	_Joystick_Control_sloc5_1_0,dpl
	mov	(_Joystick_Control_sloc5_1_0 + 1),dph
	mov	(_Joystick_Control_sloc5_1_0 + 2),b
	mov	(_Joystick_Control_sloc5_1_0 + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar1
	pop	ar0
	pop	ar5
	pop	ar4
	mov	dptr,#_Joystick_Control_vy_error_1_242
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	mov	a,r0
	add	a,r4
	mov	dpl,a
	mov	a,r1
	addc	a,r5
	mov	dph,a
	push	ar4
	push	ar5
	lcall	___sint2fs
	mov	r0,dpl
	mov	r1,dph
	mov	r2,b
	mov	r3,a
	push	ar0
	push	ar1
	push	ar0
	push	ar1
	push	ar2
	push	ar3
	mov	dpl,_Joystick_Control_sloc5_1_0
	mov	dph,(_Joystick_Control_sloc5_1_0 + 1)
	mov	b,(_Joystick_Control_sloc5_1_0 + 2)
	mov	a,(_Joystick_Control_sloc5_1_0 + 3)
	lcall	___fsdiv
	mov	r2,dpl
	mov	r3,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r6
	mov	a,r7
	lcall	___fs2uchar
	mov	a,dpl
	pop	ar1
	pop	ar0
	pop	ar5
	pop	ar4
	mov	dptr,#_pwm_right
	movx	@dptr,a
;	main.c:1351: return curr_angle; 
	pop	ar1
	pop	ar0
;	main.c:1302: pwm_right = pwm_corr*vx_error*100/(vx_error+vy_error);
L044019?:
;	main.c:1304: curr_angle += angle_diff * 1.5; // TUNE THIS 
	push	ar0
	push	ar1
	push	ar4
	push	ar5
	push	ar0
	push	ar1
	push	_Joystick_Control_sloc4_1_0
	push	(_Joystick_Control_sloc4_1_0 + 1)
	push	(_Joystick_Control_sloc4_1_0 + 2)
	push	(_Joystick_Control_sloc4_1_0 + 3)
	mov	dptr,#0x0000
	mov	b,#0xC0
	mov	a,#0x3F
	lcall	___fsmul
	mov	_Joystick_Control_sloc5_1_0,dpl
	mov	(_Joystick_Control_sloc5_1_0 + 1),dph
	mov	(_Joystick_Control_sloc5_1_0 + 2),b
	mov	(_Joystick_Control_sloc5_1_0 + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar1
	pop	ar0
	mov	dptr,#_curr_angle
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	push	ar0
	push	ar1
	push	_Joystick_Control_sloc5_1_0
	push	(_Joystick_Control_sloc5_1_0 + 1)
	push	(_Joystick_Control_sloc5_1_0 + 2)
	push	(_Joystick_Control_sloc5_1_0 + 3)
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	mov	a,r3
	lcall	___fsadd
	mov	r2,dpl
	mov	r3,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar1
	pop	ar0
	pop	ar5
	pop	ar4
	mov	dptr,#_curr_angle
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
	pop	ar1
	pop	ar0
	ljmp	L044027?
L044024?:
;	main.c:1308: if (vy*100<=vy_thres*100/2){
	mov	dptr,#_vy
	movx	a,@dptr
	mov	__mulint_PARM_2,a
	inc	dptr
	movx	a,@dptr
	mov	(__mulint_PARM_2 + 1),a
	mov	dptr,#0x0064
	push	ar4
	push	ar5
	push	ar0
	push	ar1
	lcall	__mulint
	mov	r2,dpl
	mov	r3,dph
	pop	ar1
	pop	ar0
	pop	ar5
	pop	ar4
	mov	dptr,#_vy_thres
	movx	a,@dptr
	mov	__mulint_PARM_2,a
	inc	dptr
	movx	a,@dptr
	mov	(__mulint_PARM_2 + 1),a
	mov	dptr,#0x0064
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	push	ar0
	push	ar1
	lcall	__mulint
	mov	r6,dpl
	mov	r7,dph
	mov	__divsint_PARM_2,#0x02
	clr	a
	mov	(__divsint_PARM_2 + 1),a
	mov	dpl,r6
	mov	dph,r7
	lcall	__divsint
	mov	r6,dpl
	mov	r7,dph
	pop	ar1
	pop	ar0
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
	clr	c
	mov	a,r6
	subb	a,r2
	mov	a,r7
	xrl	a,#0x80
	mov	b,r3
	xrl	b,#0x80
	subb	a,b
	jnc	L044075?
	ljmp	L044021?
L044075?:
;	main.c:1309: pwm_left = vy_error*100/(vx_error+vy_error);
	mov	dptr,#_Joystick_Control_vy_error_1_242
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	__mulint_PARM_2,r2
	mov	(__mulint_PARM_2 + 1),r3
	mov	dptr,#0x0064
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	push	ar0
	push	ar1
	lcall	__mulint
	mov	r6,dpl
	mov	r7,dph
	pop	ar1
	pop	ar0
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
	mov	a,r2
	add	a,r4
	mov	__divsint_PARM_2,a
	mov	a,r3
	addc	a,r5
	mov	(__divsint_PARM_2 + 1),a
	mov	dpl,r6
	mov	dph,r7
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	push	ar0
	push	ar1
	lcall	__divsint
	mov	r6,dpl
	pop	ar1
	pop	ar0
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
	mov	dptr,#_pwm_left
	mov	a,r6
	movx	@dptr,a
;	main.c:1310: pwm_right = vy_error*pwm_corr; 
	mov	dpl,r2
	mov	dph,r3
	push	ar4
	push	ar5
	push	ar0
	push	ar1
	lcall	___sint2fs
	mov	r2,dpl
	mov	r3,dph
	mov	r6,b
	mov	r7,a
	mov	dptr,#_pwm_corr
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
	mov	dpl,r2
	mov	dph,r3
	mov	b,r6
	mov	a,r7
	lcall	___fsmul
	mov	r2,dpl
	mov	r3,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r6
	mov	a,r7
	lcall	___fs2uchar
	mov	a,dpl
	pop	ar1
	pop	ar0
	pop	ar5
	pop	ar4
	mov	dptr,#_pwm_right
	movx	@dptr,a
	ljmp	L044022?
L044021?:
;	main.c:1313: pwm_left = vx_error*100/(vx_error+vy_error);
	mov	__mulint_PARM_2,r4
	mov	(__mulint_PARM_2 + 1),r5
	mov	dptr,#0x0064
	push	ar4
	push	ar5
	push	ar0
	push	ar1
	lcall	__mulint
	mov	r2,dpl
	mov	r3,dph
	pop	ar1
	pop	ar0
	pop	ar5
	pop	ar4
	mov	dptr,#_Joystick_Control_vy_error_1_242
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,r6
	add	a,r4
	mov	__divsint_PARM_2,a
	mov	a,r7
	addc	a,r5
	mov	(__divsint_PARM_2 + 1),a
	mov	dpl,r2
	mov	dph,r3
	push	ar4
	push	ar5
	push	ar0
	push	ar1
	lcall	__divsint
	mov	r2,dpl
	pop	ar1
	pop	ar0
	pop	ar5
	pop	ar4
	mov	dptr,#_pwm_left
	mov	a,r2
	movx	@dptr,a
;	main.c:1314: pwm_right = vx_error*pwm_corr; 
	mov	dpl,r4
	mov	dph,r5
	push	ar4
	push	ar5
	push	ar0
	push	ar1
	lcall	___sint2fs
	mov	r2,dpl
	mov	r3,dph
	mov	r6,b
	mov	r7,a
	mov	dptr,#_pwm_corr
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
	mov	dpl,r2
	mov	dph,r3
	mov	b,r6
	mov	a,r7
	lcall	___fsmul
	mov	r2,dpl
	mov	r3,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r6
	mov	a,r7
	lcall	___fs2uchar
	mov	a,dpl
	pop	ar1
	pop	ar0
	pop	ar5
	pop	ar4
	mov	dptr,#_pwm_right
	movx	@dptr,a
L044022?:
;	main.c:1316: curr_angle -= angle_diff * 1.5; // TUNE THIS 
	push	ar0
	push	ar1
	push	ar4
	push	ar5
	push	ar0
	push	ar1
	push	_Joystick_Control_sloc4_1_0
	push	(_Joystick_Control_sloc4_1_0 + 1)
	push	(_Joystick_Control_sloc4_1_0 + 2)
	push	(_Joystick_Control_sloc4_1_0 + 3)
	mov	dptr,#0x0000
	mov	b,#0xC0
	mov	a,#0x3F
	lcall	___fsmul
	mov	_Joystick_Control_sloc5_1_0,dpl
	mov	(_Joystick_Control_sloc5_1_0 + 1),dph
	mov	(_Joystick_Control_sloc5_1_0 + 2),b
	mov	(_Joystick_Control_sloc5_1_0 + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar1
	pop	ar0
	mov	dptr,#_curr_angle
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	push	ar0
	push	ar1
	push	_Joystick_Control_sloc5_1_0
	push	(_Joystick_Control_sloc5_1_0 + 1)
	push	(_Joystick_Control_sloc5_1_0 + 2)
	push	(_Joystick_Control_sloc5_1_0 + 3)
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	mov	a,r3
	lcall	___fssub
	mov	r2,dpl
	mov	r3,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar1
	pop	ar0
	pop	ar5
	pop	ar4
	mov	dptr,#_curr_angle
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
;	main.c:1351: return curr_angle; 
	pop	ar1
	pop	ar0
;	main.c:1316: curr_angle -= angle_diff * 1.5; // TUNE THIS 
L044027?:
;	main.c:1320: if (vy_err<0){
	mov	a,r1
	jb	acc.7,L044076?
	ljmp	L044040?
L044076?:
;	main.c:1321: L_motor_dir = 1; 
	mov	dptr,#_L_motor_dir
	mov	a,#0x01
	movx	@dptr,a
;	main.c:1322: R_motor_dir = 1; 
	mov	dptr,#_R_motor_dir
	mov	a,#0x01
	movx	@dptr,a
;	main.c:1324: if (vx_err>0){
	mov	dptr,#_Joystick_Control_vx_err_1_242
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	clr	c
	clr	a
	subb	a,r2
	clr	a
	xrl	a,#0x80
	mov	b,r3
	xrl	b,#0x80
	subb	a,b
	jc	L044077?
	ljmp	L044035?
L044077?:
;	main.c:1325: if (vy*100<=vy_thres*100/2){
	mov	dptr,#_vy
	movx	a,@dptr
	mov	__mulint_PARM_2,a
	inc	dptr
	movx	a,@dptr
	mov	(__mulint_PARM_2 + 1),a
	mov	dptr,#0x0064
	push	ar4
	push	ar5
	lcall	__mulint
	mov	r2,dpl
	mov	r3,dph
	pop	ar5
	pop	ar4
	mov	dptr,#_vy_thres
	movx	a,@dptr
	mov	__mulint_PARM_2,a
	inc	dptr
	movx	a,@dptr
	mov	(__mulint_PARM_2 + 1),a
	mov	dptr,#0x0064
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	lcall	__mulint
	mov	r6,dpl
	mov	r7,dph
	mov	__divsint_PARM_2,#0x02
	clr	a
	mov	(__divsint_PARM_2 + 1),a
	mov	dpl,r6
	mov	dph,r7
	lcall	__divsint
	mov	r6,dpl
	mov	r7,dph
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
	clr	c
	mov	a,r6
	subb	a,r2
	mov	a,r7
	xrl	a,#0x80
	mov	b,r3
	xrl	b,#0x80
	subb	a,b
	jnc	L044078?
	ljmp	L044029?
L044078?:
;	main.c:1326: pwm_left = vy_error; 
	mov	dptr,#_Joystick_Control_vy_error_1_242
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#_pwm_left
	mov	a,r2
	movx	@dptr,a
;	main.c:1327: pwm_right = pwm_corr*vy_error*100/(vx_error+vy_error);
	mov	dptr,#_pwm_corr
	movx	a,@dptr
	mov	_Joystick_Control_sloc5_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_Joystick_Control_sloc5_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_Joystick_Control_sloc5_1_0 + 2),a
	inc	dptr
	movx	a,@dptr
	mov	(_Joystick_Control_sloc5_1_0 + 3),a
	mov	dpl,r2
	mov	dph,r3
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	lcall	___sint2fs
	mov	r6,dpl
	mov	r7,dph
	mov	r0,b
	mov	r1,a
	push	ar6
	push	ar7
	push	ar0
	push	ar1
	mov	dpl,_Joystick_Control_sloc5_1_0
	mov	dph,(_Joystick_Control_sloc5_1_0 + 1)
	mov	b,(_Joystick_Control_sloc5_1_0 + 2)
	mov	a,(_Joystick_Control_sloc5_1_0 + 3)
	lcall	___fsmul
	mov	r6,dpl
	mov	r7,dph
	mov	r0,b
	mov	r1,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	push	ar6
	push	ar7
	push	ar0
	push	ar1
	mov	dptr,#0x0000
	mov	b,#0xC8
	mov	a,#0x42
	lcall	___fsmul
	mov	_Joystick_Control_sloc5_1_0,dpl
	mov	(_Joystick_Control_sloc5_1_0 + 1),dph
	mov	(_Joystick_Control_sloc5_1_0 + 2),b
	mov	(_Joystick_Control_sloc5_1_0 + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
	mov	a,r2
	add	a,r4
	mov	dpl,a
	mov	a,r3
	addc	a,r5
	mov	dph,a
	lcall	___sint2fs
	mov	r2,dpl
	mov	r3,dph
	mov	r6,b
	mov	r7,a
	push	ar2
	push	ar3
	push	ar6
	push	ar7
	mov	dpl,_Joystick_Control_sloc5_1_0
	mov	dph,(_Joystick_Control_sloc5_1_0 + 1)
	mov	b,(_Joystick_Control_sloc5_1_0 + 2)
	mov	a,(_Joystick_Control_sloc5_1_0 + 3)
	lcall	___fsdiv
	mov	r2,dpl
	mov	r3,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r6
	mov	a,r7
	lcall	___fs2uchar
	mov	a,dpl
	mov	dptr,#_pwm_right
	movx	@dptr,a
	ljmp	L044030?
L044029?:
;	main.c:1330: pwm_left = vx_error; 
	mov	dptr,#_pwm_left
	mov	a,r4
	movx	@dptr,a
;	main.c:1331: pwm_right = pwm_corr*vx_error*100/(vx_error+vy_error);
	mov	dptr,#_pwm_corr
	movx	a,@dptr
	mov	_Joystick_Control_sloc5_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_Joystick_Control_sloc5_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_Joystick_Control_sloc5_1_0 + 2),a
	inc	dptr
	movx	a,@dptr
	mov	(_Joystick_Control_sloc5_1_0 + 3),a
	mov	dpl,r4
	mov	dph,r5
	push	ar4
	push	ar5
	lcall	___sint2fs
	mov	r0,dpl
	mov	r1,dph
	mov	r2,b
	mov	r3,a
	push	ar0
	push	ar1
	push	ar2
	push	ar3
	mov	dpl,_Joystick_Control_sloc5_1_0
	mov	dph,(_Joystick_Control_sloc5_1_0 + 1)
	mov	b,(_Joystick_Control_sloc5_1_0 + 2)
	mov	a,(_Joystick_Control_sloc5_1_0 + 3)
	lcall	___fsmul
	mov	r2,dpl
	mov	r3,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	push	ar2
	push	ar3
	push	ar6
	push	ar7
	mov	dptr,#0x0000
	mov	b,#0xC8
	mov	a,#0x42
	lcall	___fsmul
	mov	_Joystick_Control_sloc5_1_0,dpl
	mov	(_Joystick_Control_sloc5_1_0 + 1),dph
	mov	(_Joystick_Control_sloc5_1_0 + 2),b
	mov	(_Joystick_Control_sloc5_1_0 + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar5
	pop	ar4
	mov	dptr,#_Joystick_Control_vy_error_1_242
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	mov	a,r0
	add	a,r4
	mov	dpl,a
	mov	a,r1
	addc	a,r5
	mov	dph,a
	lcall	___sint2fs
	mov	r0,dpl
	mov	r1,dph
	mov	r2,b
	mov	r3,a
	push	ar0
	push	ar1
	push	ar2
	push	ar3
	mov	dpl,_Joystick_Control_sloc5_1_0
	mov	dph,(_Joystick_Control_sloc5_1_0 + 1)
	mov	b,(_Joystick_Control_sloc5_1_0 + 2)
	mov	a,(_Joystick_Control_sloc5_1_0 + 3)
	lcall	___fsdiv
	mov	r2,dpl
	mov	r3,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r6
	mov	a,r7
	lcall	___fs2uchar
	mov	a,dpl
	mov	dptr,#_pwm_right
	movx	@dptr,a
L044030?:
;	main.c:1333: curr_angle -= angle_diff * 1.4; // TUNE THIS 
	push	_Joystick_Control_sloc4_1_0
	push	(_Joystick_Control_sloc4_1_0 + 1)
	push	(_Joystick_Control_sloc4_1_0 + 2)
	push	(_Joystick_Control_sloc4_1_0 + 3)
	mov	dptr,#0x3333
	mov	b,#0xB3
	mov	a,#0x3F
	lcall	___fsmul
	mov	_Joystick_Control_sloc5_1_0,dpl
	mov	(_Joystick_Control_sloc5_1_0 + 1),dph
	mov	(_Joystick_Control_sloc5_1_0 + 2),b
	mov	(_Joystick_Control_sloc5_1_0 + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dptr,#_curr_angle
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	push	_Joystick_Control_sloc5_1_0
	push	(_Joystick_Control_sloc5_1_0 + 1)
	push	(_Joystick_Control_sloc5_1_0 + 2)
	push	(_Joystick_Control_sloc5_1_0 + 3)
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	mov	a,r3
	lcall	___fssub
	mov	r2,dpl
	mov	r3,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dptr,#_curr_angle
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
	ljmp	L044040?
L044035?:
;	main.c:1337: if (vy*100<=vy_thres*100/2){
	mov	dptr,#_vy
	movx	a,@dptr
	mov	__mulint_PARM_2,a
	inc	dptr
	movx	a,@dptr
	mov	(__mulint_PARM_2 + 1),a
	mov	dptr,#0x0064
	push	ar4
	push	ar5
	lcall	__mulint
	mov	r2,dpl
	mov	r3,dph
	pop	ar5
	pop	ar4
	mov	dptr,#_vy_thres
	movx	a,@dptr
	mov	__mulint_PARM_2,a
	inc	dptr
	movx	a,@dptr
	mov	(__mulint_PARM_2 + 1),a
	mov	dptr,#0x0064
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	lcall	__mulint
	mov	r6,dpl
	mov	r7,dph
	mov	__divsint_PARM_2,#0x02
	clr	a
	mov	(__divsint_PARM_2 + 1),a
	mov	dpl,r6
	mov	dph,r7
	lcall	__divsint
	mov	r6,dpl
	mov	r7,dph
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
	clr	c
	mov	a,r6
	subb	a,r2
	mov	a,r7
	xrl	a,#0x80
	mov	b,r3
	xrl	b,#0x80
	subb	a,b
	jnc	L044079?
	ljmp	L044032?
L044079?:
;	main.c:1338: pwm_left = vy_error*100/(vx_error+vy_error);
	mov	dptr,#_Joystick_Control_vy_error_1_242
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	__mulint_PARM_2,r2
	mov	(__mulint_PARM_2 + 1),r3
	mov	dptr,#0x0064
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	lcall	__mulint
	mov	r6,dpl
	mov	r7,dph
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
	mov	a,r2
	add	a,r4
	mov	__divsint_PARM_2,a
	mov	a,r3
	addc	a,r5
	mov	(__divsint_PARM_2 + 1),a
	mov	dpl,r6
	mov	dph,r7
	push	ar2
	push	ar3
	lcall	__divsint
	mov	r6,dpl
	pop	ar3
	pop	ar2
	mov	dptr,#_pwm_left
	mov	a,r6
	movx	@dptr,a
;	main.c:1339: pwm_right =pwm_corr*vy_error; 
	mov	dptr,#_pwm_corr
	movx	a,@dptr
	mov	_Joystick_Control_sloc5_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_Joystick_Control_sloc5_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_Joystick_Control_sloc5_1_0 + 2),a
	inc	dptr
	movx	a,@dptr
	mov	(_Joystick_Control_sloc5_1_0 + 3),a
	mov	dpl,r2
	mov	dph,r3
	lcall	___sint2fs
	mov	r2,dpl
	mov	r3,dph
	mov	r6,b
	mov	r7,a
	push	ar2
	push	ar3
	push	ar6
	push	ar7
	mov	dpl,_Joystick_Control_sloc5_1_0
	mov	dph,(_Joystick_Control_sloc5_1_0 + 1)
	mov	b,(_Joystick_Control_sloc5_1_0 + 2)
	mov	a,(_Joystick_Control_sloc5_1_0 + 3)
	lcall	___fsmul
	mov	r2,dpl
	mov	r3,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r6
	mov	a,r7
	lcall	___fs2uchar
	mov	a,dpl
	mov	dptr,#_pwm_right
	movx	@dptr,a
	ljmp	L044033?
L044032?:
;	main.c:1342: pwm_left = vx_error*100/(vx_error+vy_error);
	mov	__mulint_PARM_2,r4
	mov	(__mulint_PARM_2 + 1),r5
	mov	dptr,#0x0064
	push	ar4
	push	ar5
	lcall	__mulint
	mov	r2,dpl
	mov	r3,dph
	pop	ar5
	pop	ar4
	mov	dptr,#_Joystick_Control_vy_error_1_242
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,r6
	add	a,r4
	mov	__divsint_PARM_2,a
	mov	a,r7
	addc	a,r5
	mov	(__divsint_PARM_2 + 1),a
	mov	dpl,r2
	mov	dph,r3
	push	ar4
	push	ar5
	lcall	__divsint
	mov	r2,dpl
	pop	ar5
	pop	ar4
	mov	dptr,#_pwm_left
	mov	a,r2
	movx	@dptr,a
;	main.c:1343: pwm_right = pwm_corr*vx_error; 
	mov	dptr,#_pwm_corr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r4
	mov	dph,r5
	push	ar2
	push	ar3
	push	ar6
	push	ar7
	lcall	___sint2fs
	mov	r4,dpl
	mov	r5,dph
	mov	r0,b
	mov	r1,a
	pop	ar7
	pop	ar6
	pop	ar3
	pop	ar2
	push	ar4
	push	ar5
	push	ar0
	push	ar1
	mov	dpl,r2
	mov	dph,r3
	mov	b,r6
	mov	a,r7
	lcall	___fsmul
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	___fs2uchar
	mov	a,dpl
	mov	dptr,#_pwm_right
	movx	@dptr,a
L044033?:
;	main.c:1345: curr_angle += angle_diff * 1.4; // TUNE THIS 
	push	_Joystick_Control_sloc4_1_0
	push	(_Joystick_Control_sloc4_1_0 + 1)
	push	(_Joystick_Control_sloc4_1_0 + 2)
	push	(_Joystick_Control_sloc4_1_0 + 3)
	mov	dptr,#0x3333
	mov	b,#0xB3
	mov	a,#0x3F
	lcall	___fsmul
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dptr,#_curr_angle
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
	push	ar2
	push	ar3
	push	ar4
	push	ar5
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
	mov	dptr,#_curr_angle
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
L044040?:
;	main.c:1350: last_raw_angle = raw_angle; 
	mov	dptr,#_raw_angle
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
	mov	dptr,#_last_raw_angle
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
;	main.c:1351: return curr_angle; 
	mov	dptr,#_curr_angle
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
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;sloc0                     Allocated with name '_main_sloc0_1_0'
;c                         Allocated with name '_main_c_1_265'
;angle_count               Allocated with name '_main_angle_count_1_265'
;------------------------------------------------------------
;	main.c:1355: void main (void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	main.c:1361: Init_all();
	lcall	_Init_all
;	main.c:1362: BMM150_Init();
	lcall	_BMM150_Init
;	main.c:1363: waitms(500);
	mov	dptr,#0x01F4
	lcall	_waitms
;	main.c:1364: UART1_Init(9600);
	mov	dptr,#0x2580
	clr	a
	mov	b,a
	lcall	_UART1_Init
;	main.c:1366: ReceptionOff();
	lcall	_ReceptionOff
;	main.c:1369: SendATCommand("AT+VER\r\n");
	mov	dptr,#__str_11
	mov	b,#0x80
	lcall	_SendATCommand
;	main.c:1370: SendATCommand("AT+BAUD\r\n");
	mov	dptr,#__str_12
	mov	b,#0x80
	lcall	_SendATCommand
;	main.c:1371: SendATCommand("AT+RFID\r\n");
	mov	dptr,#__str_13
	mov	b,#0x80
	lcall	_SendATCommand
;	main.c:1372: SendATCommand("AT+DVID\r\n");
	mov	dptr,#__str_14
	mov	b,#0x80
	lcall	_SendATCommand
;	main.c:1373: SendATCommand("AT+RFC002\r\n");
	mov	dptr,#__str_15
	mov	b,#0x80
	lcall	_SendATCommand
;	main.c:1374: SendATCommand("AT+POWE\r\n");
	mov	dptr,#__str_16
	mov	b,#0x80
	lcall	_SendATCommand
;	main.c:1375: SendATCommand("AT+CLSS\r\n");
	mov	dptr,#__str_17
	mov	b,#0x80
	lcall	_SendATCommand
;	main.c:1376: SendATCommand("AT+DVIDEF11\r\n");  
	mov	dptr,#__str_18
	mov	b,#0x80
	lcall	_SendATCommand
;	main.c:1379: L_bridge_1 = 0; 
	clr	_P2_1
;	main.c:1380: L_bridge_2 = 0; 
	clr	_P2_2
;	main.c:1381: R_bridge_1 = 0; 
	clr	_P2_4
;	main.c:1382: R_bridge_2 = 0; 
	clr	_P2_3
;	main.c:1383: vx = 0; 
	mov	dptr,#_vx
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	main.c:1384: vy = 0; 
	mov	dptr,#_vy
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	main.c:1387: curr_angle = Read_angle();
	lcall	_Read_angle
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	dptr,#_curr_angle
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
;	main.c:1390: waitms(1000);
	mov	dptr,#0x03E8
	lcall	_waitms
;	main.c:1391: while(1){	
L045016?:
;	main.c:1393: printf("angle: %d, raw_angle: %d\r\n", (int)curr_angle, (int)Read_angle());
	lcall	_Read_angle
	lcall	___fs2sint
	mov	r2,dpl
	mov	r3,dph
	mov	dptr,#_curr_angle
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	push	ar2
	push	ar3
	lcall	___fs2sint
	mov	r4,dpl
	mov	r5,dph
	push	ar4
	push	ar5
	mov	a,#__str_19
	push	acc
	mov	a,#(__str_19 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
;	main.c:1395: if(pick=='1'){
	mov	dptr,#_pick
	movx	a,@dptr
	mov	r2,a
	cjne	r2,#0x31,L045002?
;	main.c:1396: servo_pick();
	lcall	_servo_pick
;	main.c:1397: waitms(1000);
	mov	dptr,#0x03E8
	lcall	_waitms
;	main.c:1398: pick = 0;
	mov	dptr,#_pick
	clr	a
	movx	@dptr,a
L045002?:
;	main.c:1401: if(auto_mode){
	mov	dptr,#_auto_mode
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	orl	a,r2
	jz	L045004?
;	main.c:1402: Auto_mode_slave();
	lcall	_Auto_mode_slave
;	main.c:1403: auto_mode = 0;
	mov	dptr,#_auto_mode
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
L045004?:
;	main.c:1406: if(RXU1()) // Something has arrived
	lcall	_RXU1
	jnc	L045016?
;	main.c:1408: c=getchar1();
	lcall	_getchar1
	mov	r2,dpl
;	main.c:1409: if(c=='!') // Master is sending message
	cjne	r2,#0x21,L045031?
	sjmp	L045032?
L045031?:
	ljmp	L045011?
L045032?:
;	main.c:1411: getstr1(buff, sizeof(buff)-1);
	mov	_getstr1_PARM_2,#0x13
	mov	dptr,#_buff
	mov	b,#0x40
	lcall	_getstr1
;	main.c:1412: if(strlen(buff)==11)
	mov	dptr,#_buff
	mov	b,#0x40
	lcall	_strlen
	mov	r3,dpl
	mov	r4,dph
	cjne	r3,#0x0B,L045033?
	cjne	r4,#0x00,L045033?
	sjmp	L045034?
L045033?:
	ljmp	L045006?
L045034?:
;	main.c:1416: sscanf(buff,"%03d,%03d,%01d,%01d",&vx, &vy,&pick,&auto_mode);
	mov	a,#_auto_mode
	push	acc
	mov	a,#(_auto_mode >> 8)
	push	acc
	clr	a
	push	acc
	mov	a,#_pick
	push	acc
	mov	a,#(_pick >> 8)
	push	acc
	clr	a
	push	acc
	mov	a,#_vy
	push	acc
	mov	a,#(_vy >> 8)
	push	acc
	clr	a
	push	acc
	mov	a,#_vx
	push	acc
	mov	a,#(_vx >> 8)
	push	acc
	clr	a
	push	acc
	mov	a,#__str_5
	push	acc
	mov	a,#(__str_5 >> 8)
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
	add	a,#0xee
	mov	sp,a
;	main.c:1417: pick = buff[8];
	mov	dptr,#_pick
	mov	r0,#(_buff + 0x0008)
	mov	a,@r0
	movx	@dptr,a
;	main.c:1419: curr_angle = Joystick_Control(&vx, &vy);
	mov	_Joystick_Control_PARM_2,#_vy
	mov	(_Joystick_Control_PARM_2 + 1),#(_vy >> 8)
	mov	(_Joystick_Control_PARM_2 + 2),#0x00
	mov	dptr,#_vx
	mov	b,#0x00
	lcall	_Joystick_Control
	mov	r3,dpl
	mov	r4,dph
	mov	r5,b
	mov	r6,a
	mov	dptr,#_curr_angle
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
	ljmp	L045016?
L045006?:
;	main.c:1422: printf("*** BAD MESSAGE ***: %s\r\n", buff);
	mov	a,#_buff
	push	acc
	mov	a,#(_buff >> 8)
	push	acc
	mov	a,#0x40
	push	acc
	mov	a,#__str_20
	push	acc
	mov	a,#(__str_20 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
	ljmp	L045016?
L045011?:
;	main.c:1425: else if(c=='@') // Master wants slave data
	cjne	r2,#0x40,L045035?
	sjmp	L045036?
L045035?:
	ljmp	L045016?
L045036?:
;	main.c:1427: sprintf(buff, "0,00,%04ld,%05d,%03d,%03d,%03d\n", freq100, weight, (int)curr_angle, pwm_left, pwm_right);
	mov	dptr,#_pwm_right
	movx	a,@dptr
	mov	r2,a
	mov	r3,#0x00
	mov	dptr,#_pwm_left
	movx	a,@dptr
	mov	r4,a
	mov	_main_sloc0_1_0,r4
	mov	(_main_sloc0_1_0 + 1),#0x00
	mov	dptr,#_curr_angle
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	dpl,r6
	mov	dph,r7
	mov	b,r4
	push	ar2
	push	ar3
	lcall	___fs2sint
	mov	r4,dpl
	mov	r5,dph
	push	_main_sloc0_1_0
	push	(_main_sloc0_1_0 + 1)
	push	ar4
	push	ar5
	mov	dptr,#_weight
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	dptr,#_freq100
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
	mov	a,#__str_21
	push	acc
	mov	a,#(__str_21 >> 8)
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
	add	a,#0xee
	mov	sp,a
;	main.c:1428: waitms(5); // The radio seems to need this delay...
	mov	dptr,#0x0005
	lcall	_waitms
;	main.c:1429: sendstr1(buff);
	mov	dptr,#_buff
	mov	b,#0x40
	lcall	_sendstr1
	ljmp	L045016?
	rseg R_CSEG

	rseg R_XINIT
__xinit__pwm_counter:
	db 0x00,0x00	; 0
__xinit__servo_counter:
	db 0x00,0x00	; 0
__xinit__pwm_left:
	db 0x00	; 0 
__xinit__pwm_right:
	db 0x00	; 0 
__xinit__L_motor_dir:
	db 0x01	; 1 
__xinit__R_motor_dir:
	db 0x01	; 1 
__xinit__servo_base:
	db 0x32	; 50 
__xinit__servo_arm:
	db 0x32	; 50 
__xinit__vx_thres:
	db 0xA1,0x00	;  161
__xinit__vy_thres:
	db 0xA6,0x00	;  166
__xinit__vx:
	db 0x00,0x00	;  0
__xinit__vy:
	db 0x00,0x00	;  0
__xinit__fre_mea_count:
	db 0x00,0x00	; 0
__xinit__weight_mea_count:
	db 0x00,0x00	; 0
__xinit__seed:
	db 0x39,0x30	; 12345
__xinit__pwm_corr:
	db 0x33,0x33,0x73,0x3F	;  9.500000e-001
__xinit__curr_angle:
	db 0x00,0x00,0x00,0x00	;  0.000000e+000
__xinit__raw_angle:
	db 0x00,0x00,0x00,0x00	;  0.000000e+000
__xinit__last_raw_angle:
	db 0x00,0x00,0x00,0x00	;  0.000000e+000
__xinit__angle_diff:
	db 0x00,0x00,0x00,0x00	;  0.000000e+000
__xinit__mea_yes:
	db 0x01	;  1 
__xinit__weight:
	db 0x00,0x00	; 0
__xinit__duration:
	db 0x00,0x00,0x00,0x00	;  0.000000e+000
__xinit__auto_mode:
	db 0x00,0x00	;  0
__xinit__pick:
	db 0x00	;  0 

	rseg R_CONST
__str_0:
	db 'Error: Could not find BMM150 sensor (Chip ID: 0x%02X)'
	db 0x0D
	db 0x0A
	db 0x00
__str_1:
	db 'BMM150 initialized successfully! Chip ID: 0x%02X'
	db 0x0D
	db 0x0A
	db 0x00
__str_2:
	db 'Command: %s'
	db 0x00
__str_3:
	db 'Response: %s'
	db 0x0D
	db 0x0A
	db 0x00
__str_4:
	db 'AT+DVID0000'
	db 0x0D
	db 0x0A
	db 0x00
__str_5:
	db '%03d,%03d,%01d,%01d'
	db 0x00
__str_6:
	db '%01d,%02d,%ld,%05d,%03d'
	db 0x0A
	db 0x00
__str_7:
	db 'f:%04ld, d1:%d, d2:%d, bound_dectect: %d, distance: %d'
	db 0x0D
	db 0x0A
	db 0x00
__str_8:
	db '%d '
	db 0x0D
	db 0x0A
	db 0x00
__str_9:
	db '0,20,%04ld,%05d,%03d,%03d,%03d'
	db 0x0A
	db 0x00
__str_10:
	db '%s'
	db 0x0D
	db 0x0A
	db 0x00
__str_11:
	db 'AT+VER'
	db 0x0D
	db 0x0A
	db 0x00
__str_12:
	db 'AT+BAUD'
	db 0x0D
	db 0x0A
	db 0x00
__str_13:
	db 'AT+RFID'
	db 0x0D
	db 0x0A
	db 0x00
__str_14:
	db 'AT+DVID'
	db 0x0D
	db 0x0A
	db 0x00
__str_15:
	db 'AT+RFC002'
	db 0x0D
	db 0x0A
	db 0x00
__str_16:
	db 'AT+POWE'
	db 0x0D
	db 0x0A
	db 0x00
__str_17:
	db 'AT+CLSS'
	db 0x0D
	db 0x0A
	db 0x00
__str_18:
	db 'AT+DVIDEF11'
	db 0x0D
	db 0x0A
	db 0x00
__str_19:
	db 'angle: %d, raw_angle: %d'
	db 0x0D
	db 0x0A
	db 0x00
__str_20:
	db '*** BAD MESSAGE ***: %s'
	db 0x0D
	db 0x0A
	db 0x00
__str_21:
	db '0,00,%04ld,%05d,%03d,%03d,%03d'
	db 0x0A
	db 0x00

	CSEG

end
