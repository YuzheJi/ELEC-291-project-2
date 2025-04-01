;--------------------------------------------------------
; File Created by C51
; Version 1.0.0 #1170 (Feb 16 2022) (MSVC)
; This file was generated Mon Mar 31 17:59:07 2025
;--------------------------------------------------------
$name main
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
	public _servo_pick
	public _Timer5_ISR
	public _ReadHX711
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
	public _weight
	public _mea_yes
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
_BMM150_Read_Data_mag_x_1_124:
	ds 3
_getstr1_PARM_2:
	ds 1
_Read_angle_sloc0_1_0:
	ds 4
_Auto_mode_slave_sloc0_1_0:
	ds 2
_Auto_mode_slave_sloc1_1_0:
	ds 4
_Joystick_Control_PARM_2:
	ds 3
_Joystick_Control_sloc0_1_0:
	ds 2
_Joystick_Control_sloc1_1_0:
	ds 1
_Joystick_Control_sloc2_1_0:
	ds 2
_Joystick_Control_sloc3_1_0:
	ds 1
_Joystick_Control_sloc4_1_0:
	ds 2
_Joystick_Control_sloc5_1_0:
	ds 4
_Joystick_Control_sloc6_1_0:
	ds 2
_main_pick_char_1_237:
	ds 1
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
_BMM150_Read_Trim_Registers_trim_x1y1_1_97:
	ds 2
_BMM150_Read_Trim_Registers_trim_xyz_data_1_97:
	ds 4
_BMM150_Read_Trim_Registers_trim_xy1xy2_1_97:
	ds 10
_BMM150_compensate_x_retval_1_107:
	ds 2
_BMM150_compensate_x_process_comp_x0_1_107:
	ds 2
_BMM150_compensate_y_retval_1_116:
	ds 2
_BMM150_compensate_y_process_comp_y0_1_116:
	ds 2
_BMM150_Read_Data_x_val_1_125:
	ds 2
_BMM150_Read_Data_y_val_1_125:
	ds 2
_BMM150_Read_Data_rhall_val_1_125:
	ds 2
_ReadHX711_dataa_1_169:
	ds 4
_ReadHX711_j_1_169:
	ds 1
_Read_angle_mag_x_1_203:
	ds 2
_Read_angle_mag_y_1_203:
	ds 2
_Read_angle_sum_x_1_203:
	ds 4
_Read_angle_sum_y_1_203:
	ds 4
_Read_angle_angle_1_203:
	ds 4
_Auto_mode_slave_command_1_205:
	ds 2
_Auto_mode_slave_state_res_1_205:
	ds 2
_Auto_mode_slave_dummy_1_205:
	ds 2
_Joystick_Control_vx_error_1_214:
	ds 2
_main_vx_1_237:
	ds 2
_main_vy_1_237:
	ds 2
_main_auto_mode_1_237:
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
_mea_yes:
	ds 1
_weight:
	ds 2
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
;	main.c:111: char _c51_external_startup (void)
;	-----------------------------------------
;	 function _c51_external_startup
;	-----------------------------------------
__c51_external_startup:
	using	0
;	main.c:114: SFRPAGE = 0x00;
	mov	_SFRPAGE,#0x00
;	main.c:115: WDTCN = 0xDE; //First key
	mov	_WDTCN,#0xDE
;	main.c:116: WDTCN = 0xAD; //Second key
	mov	_WDTCN,#0xAD
;	main.c:118: VDM0CN=0x80;       // enable VDD monitor
	mov	_VDM0CN,#0x80
;	main.c:119: RSTSRC=0x02|0x04;  // Enable reset on missing clock detector and VDD
	mov	_RSTSRC,#0x06
;	main.c:126: SFRPAGE = 0x10;
	mov	_SFRPAGE,#0x10
;	main.c:127: PFE0CN  = 0x20; // SYSCLK < 75 MHz.
	mov	_PFE0CN,#0x20
;	main.c:128: SFRPAGE = 0x00;
	mov	_SFRPAGE,#0x00
;	main.c:149: CLKSEL = 0x00;
	mov	_CLKSEL,#0x00
;	main.c:150: CLKSEL = 0x00;
	mov	_CLKSEL,#0x00
;	main.c:151: while ((CLKSEL & 0x80) == 0);
L002001?:
	mov	a,_CLKSEL
	jnb	acc.7,L002001?
;	main.c:152: CLKSEL = 0x03;
	mov	_CLKSEL,#0x03
;	main.c:153: CLKSEL = 0x03;
	mov	_CLKSEL,#0x03
;	main.c:154: while ((CLKSEL & 0x80) == 0);
L002004?:
	mov	a,_CLKSEL
	jnb	acc.7,L002004?
;	main.c:160: P0MDOUT |= 0b_1100_0000;
	orl	_P0MDOUT,#0xC0
;	main.c:161: P1MDOUT |= 0b_0000_0110;
	orl	_P1MDOUT,#0x06
;	main.c:162: P2MDOUT |= 0b_0000_0001; // P2.0 in push-pull mode
	orl	_P2MDOUT,#0x01
;	main.c:163: XBR0     = 0b_0000_0011; // UART0E = 1 and SPI0E = 1               
	mov	_XBR0,#0x03
;	main.c:164: XBR1     = 0b_0000_0000;
	mov	_XBR1,#0x00
;	main.c:165: XBR2     = 0b_0100_0001; // Enable crossbar and uart 1
	mov	_XBR2,#0x41
;	main.c:166: P0SKIP 	 = 0b_0000_0111; 
	mov	_P0SKIP,#0x07
;	main.c:167: P1SKIP   = 0b_1111_1001;
	mov	_P1SKIP,#0xF9
;	main.c:172: SCON0 = 0x10;
	mov	_SCON0,#0x10
;	main.c:173: TH1 = 0x100-((SYSCLK/BAUDRATE)/(2L*12L));
	mov	_TH1,#0xE6
;	main.c:174: TL1 = TH1;      // Init Timer1
	mov	_TL1,_TH1
;	main.c:175: TMOD &= ~0xf0;  // TMOD: timer 1 in 8-bit auto-reload
	anl	_TMOD,#0x0F
;	main.c:176: TMOD |=  0x20;                       
	orl	_TMOD,#0x20
;	main.c:177: TR1 = 1; // START Timer1
	setb	_TR1
;	main.c:178: TI = 1;  // Indicate TX0 ready
	setb	_TI
;	main.c:179: P2_0=1; // 'set' pin to 1 is normal operation mode.
	setb	_P2_0
;	main.c:182: SPI0CKR = (SYSCLK/(2*F_SCK_MAX))-1;
	mov	_SPI0CKR,#0x11
;	main.c:183: SPI0CFG = 0b_1110_0000; // SPI mode 3
	mov	_SPI0CFG,#0xE0
;	main.c:184: SPI0CN0 = 0b_0000_0001; // SPI enabled and in three wire mode
	mov	_SPI0CN0,#0x01
;	main.c:187: SFRPAGE=0x10;
	mov	_SFRPAGE,#0x10
;	main.c:188: TMR5CN0=0x00;
	mov	_TMR5CN0,#0x00
;	main.c:189: TMR5=0xffff;   // Set to reload immediately
	mov	_TMR5,#0xFF
	mov	(_TMR5 >> 8),#0xFF
;	main.c:190: EIE2|=0b_0000_1000; // Enable Timer5 interrupts
	orl	_EIE2,#0x08
;	main.c:191: TR5=1;         // Start Timer5 (TMR5CN0 is bit addressable)
	setb	_TR5
;	main.c:193: EA=1;  // Enable global interrupts
	setb	_EA
;	main.c:194: SFRPAGE=0x00;
	mov	_SFRPAGE,#0x00
;	main.c:196: return 0;
	mov	dpl,#0x00
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Timer3us'
;------------------------------------------------------------
;us                        Allocated to registers r2 
;i                         Allocated to registers r3 
;------------------------------------------------------------
;	main.c:200: void Timer3us(unsigned char us)
;	-----------------------------------------
;	 function Timer3us
;	-----------------------------------------
_Timer3us:
	mov	r2,dpl
;	main.c:205: CKCON0|=0b_0100_0000;
	orl	_CKCON0,#0x40
;	main.c:207: TMR3RL = (-(SYSCLK)/1000000L); // Set Timer3 to overflow in 1us.
	mov	_TMR3RL,#0xB8
	mov	(_TMR3RL >> 8),#0xFF
;	main.c:208: TMR3 = TMR3RL;                 // Initialize Timer3 for first overflow
	mov	_TMR3,_TMR3RL
	mov	(_TMR3 >> 8),(_TMR3RL >> 8)
;	main.c:210: TMR3CN0 = 0x04;                 // Sart Timer3 and clear overflow flag
	mov	_TMR3CN0,#0x04
;	main.c:211: for (i = 0; i < us; i++)       // Count <us> overflows
	mov	r3,#0x00
L003004?:
	clr	c
	mov	a,r3
	subb	a,r2
	jnc	L003007?
;	main.c:213: while (!(TMR3CN0 & 0x80));  // Wait for overflow
L003001?:
	mov	a,_TMR3CN0
	jnb	acc.7,L003001?
;	main.c:214: TMR3CN0 &= ~(0x80);         // Clear overflow indicator
	anl	_TMR3CN0,#0x7F
;	main.c:211: for (i = 0; i < us; i++)       // Count <us> overflows
	inc	r3
	sjmp	L003004?
L003007?:
;	main.c:216: TMR3CN0 = 0 ;                   // Stop Timer3 and clear overflow flag
	mov	_TMR3CN0,#0x00
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'waitms'
;------------------------------------------------------------
;ms                        Allocated to registers r2 r3 
;j                         Allocated to registers r4 r5 
;k                         Allocated to registers r6 
;------------------------------------------------------------
;	main.c:219: void waitms (unsigned int ms)
;	-----------------------------------------
;	 function waitms
;	-----------------------------------------
_waitms:
	mov	r2,dpl
	mov	r3,dph
;	main.c:223: for(j=0; j<ms; j++)
	mov	r4,#0x00
	mov	r5,#0x00
L004005?:
	clr	c
	mov	a,r4
	subb	a,r2
	mov	a,r5
	subb	a,r3
	jnc	L004009?
;	main.c:224: for (k=0; k<4; k++) Timer3us(250);
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
;	main.c:223: for(j=0; j<ms; j++)
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
;	main.c:227: unsigned char SPI_transfer(unsigned char tx_data)
;	-----------------------------------------
;	 function SPI_transfer
;	-----------------------------------------
_SPI_transfer:
	mov	_SPI0DAT,dpl
;	main.c:230: while (!SPIF);      // Wait for transfer to complete
L005001?:
;	main.c:231: SPIF = 0;           // Clear SPI interrupt flag
	jbc	_SPIF,L005008?
	sjmp	L005001?
L005008?:
;	main.c:232: return SPI0DAT;     // Return received data
	mov	dpl,_SPI0DAT
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'SPI_read'
;------------------------------------------------------------
;reg_addr                  Allocated to registers r2 
;value                     Allocated with name '_SPI_read_value_1_93'
;------------------------------------------------------------
;	main.c:235: unsigned char SPI_read(unsigned char reg_addr)
;	-----------------------------------------
;	 function SPI_read
;	-----------------------------------------
_SPI_read:
	mov	r2,dpl
;	main.c:240: reg_addr = reg_addr | 0x80;
	orl	ar2,#0x80
;	main.c:242: CS = 0;                // Select the device
	clr	_P1_0
;	main.c:243: SPI_transfer(reg_addr);     // Send register address
	mov	dpl,r2
	lcall	_SPI_transfer
;	main.c:244: value = SPI_transfer(0x00); // Read value (send dummy byte) dummy byte is a placeholder byte sent by the master when it wants to receive data
	mov	dpl,#0x00
	lcall	_SPI_transfer
;	main.c:245: CS = 1;                // Deselect the device
	setb	_P1_0
;	main.c:247: return value;
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'SPI_write'
;------------------------------------------------------------
;reg_value                 Allocated with name '_SPI_write_PARM_2'
;reg_addr                  Allocated to registers r2 
;------------------------------------------------------------
;	main.c:250: void SPI_write(unsigned char reg_addr, unsigned char reg_value)
;	-----------------------------------------
;	 function SPI_write
;	-----------------------------------------
_SPI_write:
	mov	r2,dpl
;	main.c:253: reg_addr = reg_addr & 0x7F;
	anl	ar2,#0x7F
;	main.c:255: CS = 0;                // Select device
	clr	_P1_0
;	main.c:256: SPI_transfer(reg_addr);     // Send register address
	mov	dpl,r2
	lcall	_SPI_transfer
;	main.c:257: SPI_transfer(reg_value);    // Send value
	mov	dpl,_SPI_write_PARM_2
	lcall	_SPI_transfer
;	main.c:258: CS = 1;                // Deselect device
	setb	_P1_0
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'BMM150_Read_Trim_Registers'
;------------------------------------------------------------
;i                         Allocated with name '_BMM150_Read_Trim_Registers_i_1_97'
;temp_msb                  Allocated with name '_BMM150_Read_Trim_Registers_temp_msb_1_97'
;trim_x1y1                 Allocated with name '_BMM150_Read_Trim_Registers_trim_x1y1_1_97'
;trim_xyz_data             Allocated with name '_BMM150_Read_Trim_Registers_trim_xyz_data_1_97'
;trim_xy1xy2               Allocated with name '_BMM150_Read_Trim_Registers_trim_xy1xy2_1_97'
;------------------------------------------------------------
;	main.c:261: void BMM150_Read_Trim_Registers(void)
;	-----------------------------------------
;	 function BMM150_Read_Trim_Registers
;	-----------------------------------------
_BMM150_Read_Trim_Registers:
;	main.c:265: xdata uint8_t trim_x1y1[2] = {0};
	mov	dptr,#_BMM150_Read_Trim_Registers_trim_x1y1_1_97
;	main.c:266: xdata uint8_t trim_xyz_data[4] = {0};
	clr	a
	movx	@dptr,a
	mov	dptr,#(_BMM150_Read_Trim_Registers_trim_x1y1_1_97 + 0x0001)
	movx	@dptr,a
	mov	dptr,#_BMM150_Read_Trim_Registers_trim_xyz_data_1_97
	movx	@dptr,a
	mov	dptr,#(_BMM150_Read_Trim_Registers_trim_xyz_data_1_97 + 0x0001)
	movx	@dptr,a
	mov	dptr,#(_BMM150_Read_Trim_Registers_trim_xyz_data_1_97 + 0x0002)
;	main.c:267: xdata uint8_t trim_xy1xy2[10] = {0};
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
;	main.c:270: for (i=0;i<2;i++){
	mov	r2,#0x00
L008001?:
	cjne	r2,#0x02,L008024?
L008024?:
	jnc	L008004?
;	main.c:271: trim_x1y1[i] = SPI_read(BMM150_DIG_X1+i); 
	mov	a,r2
	add	a,#_BMM150_Read_Trim_Registers_trim_x1y1_1_97
	mov	r3,a
	clr	a
	addc	a,#(_BMM150_Read_Trim_Registers_trim_x1y1_1_97 >> 8)
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
;	main.c:270: for (i=0;i<2;i++){
	inc	r2
	sjmp	L008001?
L008004?:
;	main.c:273: for (i=0;i<4;i++){
	mov	r2,#0x00
L008005?:
	cjne	r2,#0x04,L008026?
L008026?:
	jnc	L008008?
;	main.c:274: trim_xyz_data[i] = SPI_read(BMM150_DIG_Z4_LSB+i);
	mov	a,r2
	add	a,#_BMM150_Read_Trim_Registers_trim_xyz_data_1_97
	mov	r3,a
	clr	a
	addc	a,#(_BMM150_Read_Trim_Registers_trim_xyz_data_1_97 >> 8)
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
;	main.c:273: for (i=0;i<4;i++){
	inc	r2
	sjmp	L008005?
L008008?:
;	main.c:276: for (i=0;i<10;i++){
	mov	r2,#0x00
L008009?:
	cjne	r2,#0x0A,L008028?
L008028?:
	jnc	L008012?
;	main.c:277: trim_xy1xy2[i] = SPI_read(BMM150_DIG_Z2_LSB+i);
	mov	a,r2
	add	a,#_BMM150_Read_Trim_Registers_trim_xy1xy2_1_97
	mov	r3,a
	clr	a
	addc	a,#(_BMM150_Read_Trim_Registers_trim_xy1xy2_1_97 >> 8)
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
;	main.c:276: for (i=0;i<10;i++){
	inc	r2
	sjmp	L008009?
L008012?:
;	main.c:280: dig_x1 = (int8_t) trim_x1y1[0]; 
	mov	dptr,#_BMM150_Read_Trim_Registers_trim_x1y1_1_97
	movx	a,@dptr
	mov	dptr,#_dig_x1
	movx	@dptr,a
;	main.c:281: dig_y1 = (int8_t) trim_x1y1[1]; 
	mov	dptr,#(_BMM150_Read_Trim_Registers_trim_x1y1_1_97 + 0x0001)
	movx	a,@dptr
	mov	dptr,#_dig_y1
	movx	@dptr,a
;	main.c:282: dig_x2 = (int8_t) trim_xyz_data[2]; 
	mov	dptr,#(_BMM150_Read_Trim_Registers_trim_xyz_data_1_97 + 0x0002)
	movx	a,@dptr
	mov	dptr,#_dig_x2
	movx	@dptr,a
;	main.c:283: dig_y2 = (int8_t) trim_xyz_data[3]; 
	mov	dptr,#(_BMM150_Read_Trim_Registers_trim_xyz_data_1_97 + 0x0003)
	movx	a,@dptr
	mov	dptr,#_dig_y2
	movx	@dptr,a
;	main.c:297: dig_xy1 = trim_xy1xy2[9];
	mov	dptr,#(_BMM150_Read_Trim_Registers_trim_xy1xy2_1_97 + 0x0009)
	movx	a,@dptr
	mov	dptr,#_dig_xy1
	movx	@dptr,a
;	main.c:298: dig_xy2 = (int8_t)trim_xy1xy2[8];
	mov	dptr,#(_BMM150_Read_Trim_Registers_trim_xy1xy2_1_97 + 0x0008)
	movx	a,@dptr
	mov	dptr,#_dig_xy2
	movx	@dptr,a
;	main.c:300: temp_msb = ((uint16_t)(trim_xy1xy2[5] & 0x7F)) << 8;
	mov	dptr,#(_BMM150_Read_Trim_Registers_trim_xy1xy2_1_97 + 0x0005)
	movx	a,@dptr
	mov	r2,a
	anl	ar2,#0x7F
	mov	ar3,r2
	mov	r2,#0x00
;	main.c:301: dig_xyz1 = (uint16_t)(temp_msb | trim_xy1xy2[4]);
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
;	main.c:305: void BMM150_Init(void)
;	-----------------------------------------
;	 function BMM150_Init
;	-----------------------------------------
_BMM150_Init:
;	main.c:310: CS = 1; // Deselect BMM150
	setb	_P1_0
;	main.c:313: waitms(10);
	mov	dptr,#0x000A
	lcall	_waitms
;	main.c:316: SPI_write(BMM150_POWER_CONTROL, 0x82);
	mov	_SPI_write_PARM_2,#0x82
	mov	dpl,#0x4B
	lcall	_SPI_write
;	main.c:317: waitms(10);  // Wait for reset to complete
	mov	dptr,#0x000A
	lcall	_waitms
;	main.c:320: SPI_write(BMM150_POWER_CONTROL, BMM150_POWER_ON);
	mov	_SPI_write_PARM_2,#0x01
	mov	dpl,#0x4B
	lcall	_SPI_write
;	main.c:321: waitms(5);
	mov	dptr,#0x0005
	lcall	_waitms
;	main.c:324: chip_id = SPI_read(BMM150_CHIP_ID);
	mov	dpl,#0x40
	lcall	_SPI_read
	mov	r2,dpl
;	main.c:325: if (chip_id != BMM150_CHIP_ID_VALUE)
	cjne	r2,#0x32,L009011?
	sjmp	L009005?
L009011?:
;	main.c:327: printf("Error: Could not find BMM150 sensor (Chip ID: 0x%02X)\r\n", chip_id);
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
;	main.c:328: while (1) {
L009002?:
;	main.c:329: printf("Press restart to check again!\r");
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
	sjmp	L009002?
L009005?:
;	main.c:333: printf("DONE! Chip ID = 0x%02X\r\n", chip_id);
	mov	r3,#0x00
	push	ar2
	push	ar3
	push	ar2
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
;	main.c:337: SPI_write(BMM150_OP_MODE, BMM150_NORMAL_MODE | (BMM150_ODR_10HZ * 8));
	mov	_SPI_write_PARM_2,#0x00
	mov	dpl,#0x4C
	lcall	_SPI_write
;	main.c:340: SPI_write(BMM150_REP_XY, 0x7F); // XY-repetitions = 9
	mov	_SPI_write_PARM_2,#0x7F
	mov	dpl,#0x51
	lcall	_SPI_write
;	main.c:341: SPI_write(BMM150_REP_Z, 0x0E);  // Z-repetitions = 15
	mov	_SPI_write_PARM_2,#0x0E
	mov	dpl,#0x52
	lcall	_SPI_write
;	main.c:343: BMM150_Read_Trim_Registers();
	lcall	_BMM150_Read_Trim_Registers
;	main.c:345: printf("BMM150 initialized successfully! Chip ID: 0x%02X\r\n", chip_id);
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
;	main.c:346: return; 
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'BMM150_compensate_x'
;------------------------------------------------------------
;data_rhall                Allocated with name '_BMM150_compensate_x_PARM_2'
;mag_data_x                Allocated to registers r2 r3 r4 
;sloc0                     Allocated with name '_BMM150_compensate_x_sloc0_1_0'
;retval                    Allocated with name '_BMM150_compensate_x_retval_1_107'
;process_comp_x0           Allocated with name '_BMM150_compensate_x_process_comp_x0_1_107'
;process_comp_x1           Allocated with name '_BMM150_compensate_x_process_comp_x1_1_107'
;process_comp_x2           Allocated with name '_BMM150_compensate_x_process_comp_x2_1_107'
;process_comp_x3           Allocated with name '_BMM150_compensate_x_process_comp_x3_1_107'
;process_comp_x4           Allocated with name '_BMM150_compensate_x_process_comp_x4_1_107'
;process_comp_x5           Allocated with name '_BMM150_compensate_x_process_comp_x5_1_107'
;process_comp_x6           Allocated with name '_BMM150_compensate_x_process_comp_x6_1_107'
;process_comp_x7           Allocated with name '_BMM150_compensate_x_process_comp_x7_1_107'
;process_comp_x8           Allocated with name '_BMM150_compensate_x_process_comp_x8_1_107'
;process_comp_x9           Allocated with name '_BMM150_compensate_x_process_comp_x9_1_107'
;process_comp_x10          Allocated with name '_BMM150_compensate_x_process_comp_x10_1_107'
;------------------------------------------------------------
;	main.c:349: int16_t BMM150_compensate_x(int16_t *mag_data_x, int16_t *data_rhall)
;	-----------------------------------------
;	 function BMM150_compensate_x
;	-----------------------------------------
_BMM150_compensate_x:
;	main.c:367: if (*mag_data_x != BMM150_OVERFLOW_ADCVAL_XYAXES_FLIP){
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
;	main.c:368: if (*data_rhall != 0)
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
;	main.c:371: process_comp_x0 = *data_rhall;
	mov	dptr,#_BMM150_compensate_x_process_comp_x0_1_107
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
	sjmp	L010006?
L010005?:
;	main.c:373: else if (dig_xyz1 != 0)
	mov	dptr,#_dig_xyz1
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	orl	a,r4
	jz	L010002?
;	main.c:375: process_comp_x0 = dig_xyz1;
	mov	dptr,#_BMM150_compensate_x_process_comp_x0_1_107
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
	sjmp	L010006?
L010002?:
;	main.c:379: process_comp_x0 = 0;
	mov	dptr,#_BMM150_compensate_x_process_comp_x0_1_107
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
L010006?:
;	main.c:381: if (process_comp_x0 != 0)
	mov	dptr,#_BMM150_compensate_x_process_comp_x0_1_107
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	orl	a,r4
	jnz	L010022?
	ljmp	L010008?
L010022?:
;	main.c:384: process_comp_x1 = ((int32_t)dig_xyz1) * 16384;
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
;	main.c:385: process_comp_x2 = ((uint16_t)(process_comp_x1 / process_comp_x0)) - ((uint16_t)0x4000);
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
;	main.c:387: process_comp_x3 = (((int32_t)retval) * ((int32_t)retval));
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
;	main.c:388: process_comp_x4 = (((int32_t)dig_xy2) * (process_comp_x3 / 128));
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
;	main.c:389: process_comp_x5 = (int32_t)(((int16_t)dig_xy1) * 128);
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
;	main.c:390: process_comp_x6 = ((int32_t)retval) * process_comp_x5;
	mov	a,r5
	rlc	a
	subb	a,acc
	mov	r6,a
;	main.c:391: process_comp_x7 = (((process_comp_x4 + process_comp_x6) / 512) + ((int32_t)0x100000));
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
;	main.c:392: process_comp_x8 = ((int32_t)(((int16_t)dig_x2) + ((int16_t)0xA0)));
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
;	main.c:393: process_comp_x9 = ((process_comp_x7 * process_comp_x8) / 4096);
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	__mullong
;	main.c:394: process_comp_x10 = ((int32_t)*mag_data_x) * process_comp_x9;
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
;	main.c:395: retval = ((int16_t)(process_comp_x10 / 8192));
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
;	main.c:396: retval = (retval + (((int16_t)dig_x1) * 8)) / 16;
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
	mov	dptr,#_BMM150_compensate_x_retval_1_107
	movx	@dptr,a
	inc	dptr
	mov	a,b
	movx	@dptr,a
	sjmp	L010012?
L010008?:
;	main.c:399: retval = BMM150_OVERFLOW_OUTPUT; 
	mov	dptr,#_BMM150_compensate_x_retval_1_107
	clr	a
	movx	@dptr,a
	inc	dptr
	mov	a,#0x80
	movx	@dptr,a
	sjmp	L010012?
L010011?:
;	main.c:403: retval = BMM150_OVERFLOW_OUTPUT; 
	mov	dptr,#_BMM150_compensate_x_retval_1_107
	clr	a
	movx	@dptr,a
	inc	dptr
	mov	a,#0x80
	movx	@dptr,a
L010012?:
;	main.c:405: return retval; 
	mov	dptr,#_BMM150_compensate_x_retval_1_107
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
;retval                    Allocated with name '_BMM150_compensate_y_retval_1_116'
;process_comp_y0           Allocated with name '_BMM150_compensate_y_process_comp_y0_1_116'
;process_comp_y1           Allocated with name '_BMM150_compensate_y_process_comp_y1_1_116'
;process_comp_y2           Allocated with name '_BMM150_compensate_y_process_comp_y2_1_116'
;process_comp_y3           Allocated with name '_BMM150_compensate_y_process_comp_y3_1_116'
;process_comp_y4           Allocated with name '_BMM150_compensate_y_process_comp_y4_1_116'
;process_comp_y5           Allocated with name '_BMM150_compensate_y_process_comp_y5_1_116'
;process_comp_y6           Allocated with name '_BMM150_compensate_y_process_comp_y6_1_116'
;process_comp_y7           Allocated with name '_BMM150_compensate_y_process_comp_y7_1_116'
;process_comp_y8           Allocated with name '_BMM150_compensate_y_process_comp_y8_1_116'
;process_comp_y9           Allocated with name '_BMM150_compensate_y_process_comp_y9_1_116'
;------------------------------------------------------------
;	main.c:408: int16_t BMM150_compensate_y (int16_t *mag_data_y, int16_t *data_rhall)
;	-----------------------------------------
;	 function BMM150_compensate_y
;	-----------------------------------------
_BMM150_compensate_y:
;	main.c:426: if (*mag_data_y != BMM150_OVERFLOW_ADCVAL_XYAXES_FLIP)
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
;	main.c:428: if (*data_rhall != 0)
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
;	main.c:431: process_comp_y0 = *data_rhall;
	mov	dptr,#_BMM150_compensate_y_process_comp_y0_1_116
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
	sjmp	L011006?
L011005?:
;	main.c:433: else if (dig_xyz1 != 0)
	mov	dptr,#_dig_xyz1
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	orl	a,r4
	jz	L011002?
;	main.c:435: process_comp_y0 = dig_xyz1;
	mov	dptr,#_BMM150_compensate_y_process_comp_y0_1_116
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
	sjmp	L011006?
L011002?:
;	main.c:439: process_comp_y0 = 0;
	mov	dptr,#_BMM150_compensate_y_process_comp_y0_1_116
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
L011006?:
;	main.c:442: if (process_comp_y0 != 0)
	mov	dptr,#_BMM150_compensate_y_process_comp_y0_1_116
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	orl	a,r4
	jnz	L011022?
	ljmp	L011008?
L011022?:
;	main.c:445: process_comp_y1 = (((int32_t)dig_xyz1) * 16384) / process_comp_y0;
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
;	main.c:446: process_comp_y2 = ((uint16_t)process_comp_y1) - ((uint16_t)0x4000);
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
;	main.c:448: process_comp_y3 = ((int32_t) retval) * ((int32_t)retval);
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
;	main.c:449: process_comp_y4 = ((int32_t)dig_xy2) * (process_comp_y3 / 128);
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
;	main.c:450: process_comp_y5 = ((int32_t)(((int16_t)dig_xy1) * 128));
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
;	main.c:451: process_comp_y6 = ((process_comp_y4 + (((int32_t)retval) * process_comp_y5)) / 512);
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
;	main.c:452: process_comp_y7 = ((int32_t)(((int16_t)dig_y2) + ((int16_t)0xA0)));
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
;	main.c:453: process_comp_y8 = (((process_comp_y6 + ((int32_t)0x100000)) * process_comp_y7) / 4096);
	mov	a,#0x10
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__mullong
;	main.c:454: process_comp_y9 = (((int32_t)*mag_data_y) * process_comp_y8);
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
;	main.c:455: retval = (int16_t)(process_comp_y9 / 8192);
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
;	main.c:456: retval = (retval + (((int16_t)dig_y1) * 8)) / 16;
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
	mov	dptr,#_BMM150_compensate_y_retval_1_116
	movx	@dptr,a
	inc	dptr
	mov	a,b
	movx	@dptr,a
	sjmp	L011012?
L011008?:
;	main.c:460: retval = BMM150_OVERFLOW_OUTPUT;
	mov	dptr,#_BMM150_compensate_y_retval_1_116
	clr	a
	movx	@dptr,a
	inc	dptr
	mov	a,#0x80
	movx	@dptr,a
	sjmp	L011012?
L011011?:
;	main.c:466: retval = BMM150_OVERFLOW_OUTPUT;
	mov	dptr,#_BMM150_compensate_y_retval_1_116
	clr	a
	movx	@dptr,a
	inc	dptr
	mov	a,#0x80
	movx	@dptr,a
L011012?:
;	main.c:469: return retval;
	mov	dptr,#_BMM150_compensate_y_retval_1_116
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
;mag_x                     Allocated with name '_BMM150_Read_Data_mag_x_1_124'
;raw_x_lsb                 Allocated with name '_BMM150_Read_Data_raw_x_lsb_1_125'
;raw_x_msb                 Allocated with name '_BMM150_Read_Data_raw_x_msb_1_125'
;raw_y_lsb                 Allocated with name '_BMM150_Read_Data_raw_y_lsb_1_125'
;raw_y_msb                 Allocated with name '_BMM150_Read_Data_raw_y_msb_1_125'
;raw_rhall_lsb             Allocated with name '_BMM150_Read_Data_raw_rhall_lsb_1_125'
;raw_rhall_msb             Allocated with name '_BMM150_Read_Data_raw_rhall_msb_1_125'
;x_val                     Allocated with name '_BMM150_Read_Data_x_val_1_125'
;y_val                     Allocated with name '_BMM150_Read_Data_y_val_1_125'
;rhall_val                 Allocated with name '_BMM150_Read_Data_rhall_val_1_125'
;msb_data                  Allocated with name '_BMM150_Read_Data_msb_data_1_125'
;------------------------------------------------------------
;	main.c:472: void BMM150_Read_Data(int16_t *mag_x, int16_t *mag_y)
;	-----------------------------------------
;	 function BMM150_Read_Data
;	-----------------------------------------
_BMM150_Read_Data:
	mov	_BMM150_Read_Data_mag_x_1_124,dpl
	mov	(_BMM150_Read_Data_mag_x_1_124 + 1),dph
	mov	(_BMM150_Read_Data_mag_x_1_124 + 2),b
;	main.c:479: raw_x_lsb = SPI_read(BMM150_DATA_X_LSB);
	mov	dpl,#0x42
	lcall	_SPI_read
	mov	r5,dpl
;	main.c:480: raw_x_msb = SPI_read(BMM150_DATA_X_MSB);
	mov	dpl,#0x43
	push	ar5
	lcall	_SPI_read
	mov	r6,dpl
;	main.c:481: raw_y_lsb = SPI_read(BMM150_DATA_Y_LSB);
	mov	dpl,#0x44
	push	ar6
	lcall	_SPI_read
	mov	r7,dpl
;	main.c:482: raw_y_msb = SPI_read(BMM150_DATA_Y_MSB);
	mov	dpl,#0x45
	push	ar7
	lcall	_SPI_read
	mov	r0,dpl
;	main.c:485: raw_rhall_lsb = SPI_read(BMM150_RHALL_LSB); 
	mov	dpl,#0x48
	push	ar0
	lcall	_SPI_read
	mov	r1,dpl
;	main.c:486: raw_rhall_msb = SPI_read(BMM150_RHALL_MSB);
	mov	dpl,#0x49
	push	ar1
	lcall	_SPI_read
	mov	r2,dpl
	pop	ar1
	pop	ar0
	pop	ar7
	pop	ar6
	pop	ar5
;	main.c:490: raw_x_lsb = ((raw_x_lsb & 0b_1111_1000)) >> 3;
	anl	ar5,#0xF8
	mov	a,r5
	swap	a
	rl	a
	anl	a,#0x1f
	mov	r5,a
;	main.c:491: msb_data = ((int16_t)((int8_t)raw_x_msb)) << 5; 
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
;	main.c:492: x_val = (int16_t)(msb_data | raw_x_lsb);
	mov	r4,#0x00
	mov	dptr,#_BMM150_Read_Data_x_val_1_125
	mov	a,r5
	orl	a,r6
	movx	@dptr,a
	mov	a,r4
	orl	a,r3
	inc	dptr
	movx	@dptr,a
;	main.c:495: raw_y_lsb = ((raw_y_lsb & 0b_1111_1000)) >> 3;
	anl	ar7,#0xF8
	mov	a,r7
	swap	a
	rl	a
	anl	a,#0x1f
	mov	r7,a
;	main.c:496: msb_data = ((int16_t)((int8_t)raw_y_msb)) << 5; 
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
;	main.c:497: y_val = (int16_t)(msb_data | raw_y_lsb);
	mov	r4,#0x00
	mov	dptr,#_BMM150_Read_Data_y_val_1_125
	mov	a,r7
	orl	a,r0
	movx	@dptr,a
	mov	a,r4
	orl	a,r3
	inc	dptr
	movx	@dptr,a
;	main.c:505: raw_rhall_lsb = ((raw_rhall_lsb & 0xFC) >> 2);
	anl	ar1,#0xFC
	mov	a,r1
	rr	a
	rr	a
	anl	a,#0x3f
	mov	r1,a
;	main.c:506: rhall_val = (uint16_t)(((uint16_t)raw_rhall_msb << 6) | raw_rhall_lsb);
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
	mov	dptr,#_BMM150_Read_Data_rhall_val_1_125
	mov	a,r1
	orl	a,r2
	movx	@dptr,a
	mov	a,r4
	orl	a,r3
	inc	dptr
	movx	@dptr,a
;	main.c:509: *mag_x = BMM150_compensate_x(&x_val, &rhall_val);
	mov	_BMM150_compensate_x_PARM_2,#_BMM150_Read_Data_rhall_val_1_125
	mov	(_BMM150_compensate_x_PARM_2 + 1),#(_BMM150_Read_Data_rhall_val_1_125 >> 8)
	mov	(_BMM150_compensate_x_PARM_2 + 2),#0x00
	mov	dptr,#_BMM150_Read_Data_x_val_1_125
	mov	b,#0x00
	lcall	_BMM150_compensate_x
	mov	r2,dpl
	mov	r3,dph
	mov	dpl,_BMM150_Read_Data_mag_x_1_124
	mov	dph,(_BMM150_Read_Data_mag_x_1_124 + 1)
	mov	b,(_BMM150_Read_Data_mag_x_1_124 + 2)
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
;	main.c:510: *mag_y = BMM150_compensate_y(&y_val, &rhall_val);
	mov	r2,_BMM150_Read_Data_PARM_2
	mov	r3,(_BMM150_Read_Data_PARM_2 + 1)
	mov	r4,(_BMM150_Read_Data_PARM_2 + 2)
	mov	_BMM150_compensate_y_PARM_2,#_BMM150_Read_Data_rhall_val_1_125
	mov	(_BMM150_compensate_y_PARM_2 + 1),#(_BMM150_Read_Data_rhall_val_1_125 >> 8)
	mov	(_BMM150_compensate_y_PARM_2 + 2),#0x00
	mov	dptr,#_BMM150_Read_Data_y_val_1_125
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
;	main.c:516: void UART1_Init (unsigned long baudrate)
;	-----------------------------------------
;	 function UART1_Init
;	-----------------------------------------
_UART1_Init:
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
;	main.c:518: SFRPAGE = 0x20;
	mov	_SFRPAGE,#0x20
;	main.c:519: SMOD1 = 0x0C; // no parity, 8 data bits, 1 stop bit
	mov	_SMOD1,#0x0C
;	main.c:520: SCON1 = 0x10;
	mov	_SCON1,#0x10
;	main.c:521: SBCON1 =0x00;   // disable baud rate generator
	mov	_SBCON1,#0x00
;	main.c:522: SBRL1 = 0x10000L-((SYSCLK/baudrate)/(12L*2L));
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
;	main.c:523: TI1 = 1; // indicate ready for TX
	setb	_TI1
;	main.c:524: SBCON1 |= 0x40;   // enable baud rate generator
	orl	_SBCON1,#0x40
;	main.c:525: SFRPAGE = 0x00;
	mov	_SFRPAGE,#0x00
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'putchar1'
;------------------------------------------------------------
;c                         Allocated to registers r2 
;------------------------------------------------------------
;	main.c:528: void putchar1 (char c) 
;	-----------------------------------------
;	 function putchar1
;	-----------------------------------------
_putchar1:
	mov	r2,dpl
;	main.c:530: SFRPAGE = 0x20;
	mov	_SFRPAGE,#0x20
;	main.c:531: while (!TI1);
L014001?:
;	main.c:532: TI1=0;
	jbc	_TI1,L014008?
	sjmp	L014001?
L014008?:
;	main.c:533: SBUF1 = c;
	mov	_SBUF1,r2
;	main.c:534: SFRPAGE = 0x00;
	mov	_SFRPAGE,#0x00
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'sendstr1'
;------------------------------------------------------------
;s                         Allocated to registers r2 r3 r4 
;------------------------------------------------------------
;	main.c:537: void sendstr1 (char * s)
;	-----------------------------------------
;	 function sendstr1
;	-----------------------------------------
_sendstr1:
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
;	main.c:539: while(*s)
L015001?:
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r5,a
	jz	L015004?
;	main.c:541: putchar1(*s);
	mov	dpl,r5
	push	ar2
	push	ar3
	push	ar4
	lcall	_putchar1
	pop	ar4
	pop	ar3
	pop	ar2
;	main.c:542: s++;	
	inc	r2
	cjne	r2,#0x00,L015001?
	inc	r3
	sjmp	L015001?
L015004?:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'getchar1'
;------------------------------------------------------------
;c                         Allocated with name '_getchar1_c_1_134'
;------------------------------------------------------------
;	main.c:546: char getchar1 (void)
;	-----------------------------------------
;	 function getchar1
;	-----------------------------------------
_getchar1:
;	main.c:549: SFRPAGE = 0x20;
	mov	_SFRPAGE,#0x20
;	main.c:550: while (!RI1);
L016001?:
;	main.c:551: RI1=0;
	jbc	_RI1,L016008?
	sjmp	L016001?
L016008?:
;	main.c:553: SCON1&=0b_0011_1111;
	anl	_SCON1,#0x3F
;	main.c:554: c = SBUF1;
	mov	dpl,_SBUF1
;	main.c:555: SFRPAGE = 0x00;
	mov	_SFRPAGE,#0x00
;	main.c:556: return (c);
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'getchar1_with_timeout'
;------------------------------------------------------------
;c                         Allocated with name '_getchar1_with_timeout_c_1_136'
;timeout                   Allocated with name '_getchar1_with_timeout_timeout_1_136'
;------------------------------------------------------------
;	main.c:559: char getchar1_with_timeout (void)
;	-----------------------------------------
;	 function getchar1_with_timeout
;	-----------------------------------------
_getchar1_with_timeout:
;	main.c:563: SFRPAGE = 0x20;
	mov	_SFRPAGE,#0x20
;	main.c:565: while (!RI1)
	mov	r2,#0x00
	mov	r3,#0x00
L017003?:
	jb	_RI1,L017005?
;	main.c:567: SFRPAGE = 0x00;
	mov	_SFRPAGE,#0x00
;	main.c:568: Timer3us(20);
	mov	dpl,#0x14
	push	ar2
	push	ar3
	lcall	_Timer3us
	pop	ar3
	pop	ar2
;	main.c:569: SFRPAGE = 0x20;
	mov	_SFRPAGE,#0x20
;	main.c:570: timeout++;
	inc	r2
	cjne	r2,#0x00,L017012?
	inc	r3
L017012?:
;	main.c:571: if(timeout==25000)
	cjne	r2,#0xA8,L017003?
	cjne	r3,#0x61,L017003?
;	main.c:573: SFRPAGE = 0x00;
	mov	_SFRPAGE,#0x00
;	main.c:574: return ('\n'); // Timeout after half second
	mov	dpl,#0x0A
	ret
L017005?:
;	main.c:577: RI1=0;
	clr	_RI1
;	main.c:579: SCON1&=0b_0011_1111;
	anl	_SCON1,#0x3F
;	main.c:580: c = SBUF1;
	mov	dpl,_SBUF1
;	main.c:581: SFRPAGE = 0x00;
	mov	_SFRPAGE,#0x00
;	main.c:582: return (c);
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'getstr1'
;------------------------------------------------------------
;n                         Allocated with name '_getstr1_PARM_2'
;s                         Allocated to registers r2 r3 r4 
;c                         Allocated with name '_getstr1_c_1_140'
;cnt                       Allocated with name '_getstr1_cnt_1_140'
;------------------------------------------------------------
;	main.c:585: void getstr1 (char * s, unsigned char n)
;	-----------------------------------------
;	 function getstr1
;	-----------------------------------------
_getstr1:
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
;	main.c:591: while(1)
	mov	r5,#0x00
	mov	ar6,r2
	mov	ar7,r3
	mov	ar0,r4
L018007?:
;	main.c:593: c=getchar1_with_timeout();
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
;	main.c:594: if(c=='\n')
	cjne	r1,#0x0A,L018002?
;	main.c:596: *s=0;
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	clr	a
;	main.c:597: return;
	ljmp	__gptrput
L018002?:
;	main.c:600: if (cnt<n)
	clr	c
	mov	a,r5
	subb	a,_getstr1_PARM_2
	jnc	L018004?
;	main.c:602: cnt++;
	inc	r5
;	main.c:603: *s=c;
	mov	dpl,r6
	mov	dph,r7
	mov	b,r0
	mov	a,r1
	lcall	__gptrput
	inc	dptr
	mov	r6,dpl
	mov	r7,dph
;	main.c:604: s++;
	mov	ar2,r6
	mov	ar3,r7
	mov	ar4,r0
	sjmp	L018007?
L018004?:
;	main.c:608: *s=0;
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	clr	a
;	main.c:609: return;
	ljmp	__gptrput
;------------------------------------------------------------
;Allocation info for local variables in function 'RXU1'
;------------------------------------------------------------
;------------------------------------------------------------
;	main.c:615: bit RXU1 (void)
;	-----------------------------------------
;	 function RXU1
;	-----------------------------------------
_RXU1:
;	main.c:618: SFRPAGE = 0x20;
	mov	_SFRPAGE,#0x20
;	main.c:619: mybit=RI1;
	mov	c,_RI1
;	main.c:620: SFRPAGE = 0x00;
	mov	_SFRPAGE,#0x00
;	main.c:621: return mybit;
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'waitms_or_RI1'
;------------------------------------------------------------
;ms                        Allocated to registers r2 r3 
;j                         Allocated with name '_waitms_or_RI1_j_1_148'
;k                         Allocated with name '_waitms_or_RI1_k_1_148'
;------------------------------------------------------------
;	main.c:624: void waitms_or_RI1 (unsigned int ms)
;	-----------------------------------------
;	 function waitms_or_RI1
;	-----------------------------------------
_waitms_or_RI1:
	mov	r2,dpl
	mov	r3,dph
;	main.c:628: for(j=0; j<ms; j++)
	mov	r4,#0x00
	mov	r5,#0x00
L020007?:
	clr	c
	mov	a,r4
	subb	a,r2
	mov	a,r5
	subb	a,r3
	jnc	L020011?
;	main.c:630: for (k=0; k<4; k++)
	mov	r6,#0x00
L020003?:
	cjne	r6,#0x04,L020019?
L020019?:
	jnc	L020009?
;	main.c:632: if(RXU1()) return;
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
;	main.c:633: Timer3us(250);
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
;	main.c:630: for (k=0; k<4; k++)
	inc	r6
	sjmp	L020003?
L020009?:
;	main.c:628: for(j=0; j<ms; j++)
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
;	main.c:638: void SendATCommand (char * s)
;	-----------------------------------------
;	 function SendATCommand
;	-----------------------------------------
_SendATCommand:
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
;	main.c:640: printf("Command: %s", s);
	push	ar2
	push	ar3
	push	ar4
	push	ar2
	push	ar3
	push	ar4
	mov	a,#__str_4
	push	acc
	mov	a,#(__str_4 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
;	main.c:641: P2_0=0; // 'set' pin to 0 is 'AT' mode.
	clr	_P2_0
;	main.c:642: waitms(5);
	mov	dptr,#0x0005
	lcall	_waitms
	pop	ar4
	pop	ar3
	pop	ar2
;	main.c:643: sendstr1(s);
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_sendstr1
;	main.c:644: getstr1(buff, sizeof(buff)-1);
	mov	_getstr1_PARM_2,#0x13
	mov	dptr,#_buff
	mov	b,#0x40
	lcall	_getstr1
;	main.c:645: waitms(10);
	mov	dptr,#0x000A
	lcall	_waitms
;	main.c:646: P2_0=1; // 'set' pin to 1 is normal operation mode.
	setb	_P2_0
;	main.c:647: printf("Response: %s\r\n", buff);
	mov	a,#_buff
	push	acc
	mov	a,#(_buff >> 8)
	push	acc
	mov	a,#0x40
	push	acc
	mov	a,#__str_5
	push	acc
	mov	a,#(__str_5 >> 8)
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
;	main.c:650: void ReceptionOff (void)
;	-----------------------------------------
;	 function ReceptionOff
;	-----------------------------------------
_ReceptionOff:
;	main.c:652: P2_0=0; // 'set' pin to 0 is 'AT' mode.
	clr	_P2_0
;	main.c:653: waitms(10);
	mov	dptr,#0x000A
	lcall	_waitms
;	main.c:654: sendstr1("AT+DVID0000\r\n"); // Some unused id, so that we get nothing in RXD1.
	mov	dptr,#__str_6
	mov	b,#0x80
	lcall	_sendstr1
;	main.c:655: waitms(10);
	mov	dptr,#0x000A
	lcall	_waitms
;	main.c:657: SCON1&=0b_0011_1111;
	anl	_SCON1,#0x3F
;	main.c:658: P2_0=1; // 'set' pin to 1 is normal operation mode.
	setb	_P2_0
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Set_Pin_Output'
;------------------------------------------------------------
;pin                       Allocated to registers r2 
;mask                      Allocated to registers r3 
;------------------------------------------------------------
;	main.c:661: void Set_Pin_Output (unsigned char pin)
;	-----------------------------------------
;	 function Set_Pin_Output
;	-----------------------------------------
_Set_Pin_Output:
	mov	r2,dpl
;	main.c:665: mask=(1<<(pin&0x7));
	mov	a,#0x07
	anl	a,r2
	mov	b,a
	inc	b
	mov	a,#0x01
	sjmp	L023011?
L023009?:
	add	a,acc
L023011?:
	djnz	b,L023009?
	mov	r3,a
;	main.c:666: switch(pin/0x10)
	mov	a,r2
	swap	a
	anl	a,#0x0f
	mov  r2,a
	add	a,#0xff - 0x03
	jc	L023006?
	mov	a,r2
	add	a,r2
	add	a,r2
	mov	dptr,#L023013?
	jmp	@a+dptr
L023013?:
	ljmp	L023001?
	ljmp	L023002?
	ljmp	L023003?
	ljmp	L023004?
;	main.c:668: case 0: P0MDOUT |= mask; break;
L023001?:
	mov	a,r3
	orl	_P0MDOUT,a
;	main.c:669: case 1: P1MDOUT |= mask; break;
	ret
L023002?:
	mov	a,r3
	orl	_P1MDOUT,a
;	main.c:670: case 2: P2MDOUT |= mask; break; 
	ret
L023003?:
	mov	a,r3
	orl	_P2MDOUT,a
;	main.c:671: case 3: P3MDOUT |= mask; break; 
	ret
L023004?:
	mov	a,r3
	orl	_P3MDOUT,a
;	main.c:672: }	
L023006?:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Set_Pin_Input'
;------------------------------------------------------------
;mask                      Allocated with name '_Set_Pin_Input_mask_1_159'
;pin                       Allocated to registers r2 
;------------------------------------------------------------
;	main.c:675: void Set_Pin_Input (unsigned char pin)
;	-----------------------------------------
;	 function Set_Pin_Input
;	-----------------------------------------
_Set_Pin_Input:
	mov	r2,dpl
;	main.c:679: mask=(1<<(pin&0x7));
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
;	main.c:680: mask=~mask;
	cpl	a
	mov	r3,a
;	main.c:681: switch(pin/0x10)
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
;	main.c:683: case 0: P0MDOUT &= mask; break;
L024001?:
	mov	a,r3
	anl	_P0MDOUT,a
;	main.c:684: case 1: P1MDOUT &= mask; break;
	ret
L024002?:
	mov	a,r3
	anl	_P1MDOUT,a
;	main.c:685: case 2: P2MDOUT &= mask; break; 
	ret
L024003?:
	mov	a,r3
	anl	_P2MDOUT,a
;	main.c:686: case 3: P3MDOUT &= mask; break; 
	ret
L024004?:
	mov	a,r3
	anl	_P3MDOUT,a
;	main.c:687: }	
L024006?:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'InitADC'
;------------------------------------------------------------
;------------------------------------------------------------
;	main.c:690: void InitADC (void)
;	-----------------------------------------
;	 function InitADC
;	-----------------------------------------
_InitADC:
;	main.c:692: SFRPAGE = 0x00;
	mov	_SFRPAGE,#0x00
;	main.c:693: ADEN=0; // Disable ADC
	clr	_ADEN
;	main.c:698: (0x0 << 0) ; // Accumulate n conversions: 0x0: 1, 0x1:4, 0x2:8, 0x3:16, 0x4:32
	mov	_ADC0CN1,#0x80
;	main.c:702: (0x0 << 2); // 0:SYSCLK ADCCLK = SYSCLK. 1:HFOSC0 ADCCLK = HFOSC0.
	mov	_ADC0CF0,#0x20
;	main.c:706: (0x1E << 0); // Conversion Tracking Time. Tadtk = ADTK / (Fsarclk)
	mov	_ADC0CF1,#0x1E
;	main.c:715: (0x0 << 0) ; // TEMPE. 0: Disable the Temperature Sensor. 1: Enable the Temperature Sensor.
	mov	_ADC0CN0,#0x00
;	main.c:720: (0x1F << 0); // ADPWR. Power Up Delay Time. Tpwrtime = ((4 * (ADPWR + 1)) + 2) / (Fadcclk)
	mov	_ADC0CF2,#0x3F
;	main.c:724: (0x0 << 0) ; // ADCM. 0x0: ADBUSY, 0x1: TIMER0, 0x2: TIMER2, 0x3: TIMER3, 0x4: CNVSTR, 0x5: CEX5, 0x6: TIMER4, 0x7: TIMER5, 0x8: CLU0, 0x9: CLU1, 0xA: CLU2, 0xB: CLU3
	mov	_ADC0CN2,#0x00
;	main.c:726: ADEN=1; // Enable ADC
	setb	_ADEN
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'InitPinADC'
;------------------------------------------------------------
;pin_num                   Allocated with name '_InitPinADC_PARM_2'
;portno                    Allocated to registers r2 
;mask                      Allocated to registers r3 
;------------------------------------------------------------
;	main.c:729: void InitPinADC (unsigned char portno, unsigned char pin_num)
;	-----------------------------------------
;	 function InitPinADC
;	-----------------------------------------
_InitPinADC:
	mov	r2,dpl
;	main.c:733: mask=1<<pin_num;
	mov	b,_InitPinADC_PARM_2
	inc	b
	mov	a,#0x01
	sjmp	L026013?
L026011?:
	add	a,acc
L026013?:
	djnz	b,L026011?
	mov	r3,a
;	main.c:735: SFRPAGE = 0x20;
	mov	_SFRPAGE,#0x20
;	main.c:736: switch (portno)
	cjne	r2,#0x00,L026014?
	sjmp	L026001?
L026014?:
	cjne	r2,#0x01,L026015?
	sjmp	L026002?
L026015?:
;	main.c:738: case 0:
	cjne	r2,#0x02,L026005?
	sjmp	L026003?
L026001?:
;	main.c:739: P0MDIN &= (~mask); // Set pin as analog input
	mov	a,r3
	cpl	a
	mov	r2,a
	anl	_P0MDIN,a
;	main.c:740: P0SKIP |= mask; // Skip Crossbar decoding for this pin
	mov	a,r3
	orl	_P0SKIP,a
;	main.c:741: break;
;	main.c:742: case 1:
	sjmp	L026005?
L026002?:
;	main.c:743: P1MDIN &= (~mask); // Set pin as analog input
	mov	a,r3
	cpl	a
	mov	r2,a
	anl	_P1MDIN,a
;	main.c:744: P1SKIP |= mask; // Skip Crossbar decoding for this pin
	mov	a,r3
	orl	_P1SKIP,a
;	main.c:745: break;
;	main.c:746: case 2:
	sjmp	L026005?
L026003?:
;	main.c:747: P2MDIN &= (~mask); // Set pin as analog input
	mov	a,r3
	cpl	a
	mov	r2,a
	anl	_P2MDIN,a
;	main.c:748: P2SKIP |= mask; // Skip Crossbar decoding for this pin
	mov	a,r3
	orl	_P2SKIP,a
;	main.c:752: }
L026005?:
;	main.c:753: SFRPAGE = 0x00;
	mov	_SFRPAGE,#0x00
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ADC_at_Pin'
;------------------------------------------------------------
;pin                       Allocated to registers 
;------------------------------------------------------------
;	main.c:756: unsigned int ADC_at_Pin(unsigned char pin)
;	-----------------------------------------
;	 function ADC_at_Pin
;	-----------------------------------------
_ADC_at_Pin:
	mov	_ADC0MX,dpl
;	main.c:759: ADINT = 0;
	clr	_ADINT
;	main.c:760: ADBUSY = 1;     // Convert voltage at the pin
	setb	_ADBUSY
;	main.c:761: while (!ADINT); // Wait for conversion to complete
L027001?:
	jnb	_ADINT,L027001?
;	main.c:762: return (ADC0);
	mov	dpl,_ADC0
	mov	dph,(_ADC0 >> 8)
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ReadHX711'
;------------------------------------------------------------
;dataa                     Allocated with name '_ReadHX711_dataa_1_169'
;i                         Allocated with name '_ReadHX711_i_1_169'
;ans                       Allocated with name '_ReadHX711_ans_1_169'
;j                         Allocated with name '_ReadHX711_j_1_169'
;------------------------------------------------------------
;	main.c:765: int ReadHX711(void) {
;	-----------------------------------------
;	 function ReadHX711
;	-----------------------------------------
_ReadHX711:
;	main.c:766: xdata unsigned long dataa = 0;
	mov	dptr,#_ReadHX711_dataa_1_169
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	main.c:771: PD_SCK = 0;
	clr	_P2_5
;	main.c:773: for (i = 0; i < 24; i++) {
	mov	r2,#0x00
L028011?:
	clr	c
	mov	a,r2
	xrl	a,#0x80
	subb	a,#0x98
	jc	L028037?
	ljmp	L028014?
L028037?:
;	main.c:774: PD_SCK = 1;
	setb	_P2_5
;	main.c:775: for (j = 0; j < 4; j++);
	mov	dptr,#_ReadHX711_j_1_169
	clr	a
	movx	@dptr,a
L028003?:
	mov	dptr,#_ReadHX711_j_1_169
	movx	a,@dptr
	mov	r3,a
	clr	c
	xrl	a,#0x80
	subb	a,#0x84
	jnc	L028006?
	mov	dptr,#_ReadHX711_j_1_169
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	sjmp	L028003?
L028006?:
;	main.c:776: dataa = dataa << 1;
	mov	dptr,#_ReadHX711_dataa_1_169
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	a,r3
	add	a,r3
	mov	r3,a
	mov	a,r4
	rlc	a
	mov	r4,a
	mov	a,r5
	rlc	a
	mov	r5,a
	mov	a,r6
	rlc	a
	mov	r6,a
	mov	dptr,#_ReadHX711_dataa_1_169
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
;	main.c:777: if (DOUT) {
	jnb	_P2_6,L028002?
;	main.c:778: dataa |= 0x01;
	mov	dptr,#_ReadHX711_dataa_1_169
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	dptr,#_ReadHX711_dataa_1_169
	mov	a,#0x01
	orl	a,r3
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
L028002?:
;	main.c:780: PD_SCK = 0;
	clr	_P2_5
;	main.c:781: for (j = 0; j < 4; j++);
	mov	dptr,#_ReadHX711_j_1_169
	clr	a
	movx	@dptr,a
L028007?:
	mov	dptr,#_ReadHX711_j_1_169
	movx	a,@dptr
	mov	r3,a
	clr	c
	xrl	a,#0x80
	subb	a,#0x84
	jnc	L028013?
	mov	dptr,#_ReadHX711_j_1_169
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	sjmp	L028007?
L028013?:
;	main.c:773: for (i = 0; i < 24; i++) {
	inc	r2
	ljmp	L028011?
L028014?:
;	main.c:784: PD_SCK = 1;
	setb	_P2_5
;	main.c:785: for (j = 0; j < 4; j++);
	mov	dptr,#_ReadHX711_j_1_169
	clr	a
	movx	@dptr,a
L028015?:
	mov	dptr,#_ReadHX711_j_1_169
	movx	a,@dptr
	mov	r2,a
	clr	c
	xrl	a,#0x80
	subb	a,#0x84
	jnc	L028018?
	mov	dptr,#_ReadHX711_j_1_169
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	sjmp	L028015?
L028018?:
;	main.c:786: PD_SCK = 0;
	clr	_P2_5
;	main.c:787: for (j = 0; j < 4; j++);
	mov	dptr,#_ReadHX711_j_1_169
	clr	a
	movx	@dptr,a
L028019?:
	mov	dptr,#_ReadHX711_j_1_169
	movx	a,@dptr
	mov	r2,a
	clr	c
	xrl	a,#0x80
	subb	a,#0x84
	jnc	L028022?
	mov	dptr,#_ReadHX711_j_1_169
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	sjmp	L028019?
L028022?:
;	main.c:788: ans = (dataa % 1000000)/10;
	mov	dptr,#_ReadHX711_dataa_1_169
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
;	main.c:789: return ans;
	ljmp	__divulong
;------------------------------------------------------------
;Allocation info for local variables in function 'Timer5_ISR'
;------------------------------------------------------------
;------------------------------------------------------------
;	main.c:792: void Timer5_ISR (void) interrupt INTERRUPT_TIMER5
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
;	main.c:794: SFRPAGE=0x10;
	mov	_SFRPAGE,#0x10
;	main.c:795: TF5H = 0; // Clear Timer5 interrupt flag
	clr	_TF5H
;	main.c:796: TMR5RL = RELOAD_10us; // Reload Timer5 for 10us intervals 
	mov	_TMR5RL,#0xC4
	mov	(_TMR5RL >> 8),#0xFF
;	main.c:798: fre_mea_count++;
	mov	dptr,#_fre_mea_count
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
;	main.c:799: if(fre_mea_count == 1000){
	mov	dptr,#_fre_mea_count
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	cjne	r2,#0xE8,L029004?
	cjne	r3,#0x03,L029004?
;	main.c:800: fre_mea_count = 0;
	mov	dptr,#_fre_mea_count
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	main.c:801: if(mea_yes) freq100 = get_freq();
	mov	dptr,#_mea_yes
	movx	a,@dptr
	mov	r2,a
	jz	L029004?
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
L029004?:
;	main.c:804: weight_mea_count++;
	mov	dptr,#_weight_mea_count
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
;	main.c:805: if(weight_mea_count == 20000){
	mov	dptr,#_weight_mea_count
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	cjne	r2,#0x20,L029008?
	cjne	r3,#0x4E,L029008?
;	main.c:806: weight_mea_count = 0;
	mov	dptr,#_weight_mea_count
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	main.c:807: if(mea_yes) weight = ReadHX711();
	mov	dptr,#_mea_yes
	movx	a,@dptr
	mov	r2,a
	jz	L029008?
	lcall	_ReadHX711
	mov	a,dpl
	mov	b,dph
	mov	dptr,#_weight
	movx	@dptr,a
	inc	dptr
	mov	a,b
	movx	@dptr,a
L029008?:
;	main.c:810: pwm_counter++; 
	mov	dptr,#_pwm_counter
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
;	main.c:811: if (pwm_counter == 100){
	mov	dptr,#_pwm_counter
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	cjne	r2,#0x64,L029010?
	cjne	r3,#0x00,L029010?
;	main.c:812: pwm_counter = 0; 
	mov	dptr,#_pwm_counter
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
L029010?:
;	main.c:815: if (pwm_right > pwm_counter){
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
	jnc	L029015?
;	main.c:816: if(L_motor_dir){
	mov	dptr,#_L_motor_dir
	movx	a,@dptr
	mov	r2,a
	jz	L029012?
;	main.c:817: L_bridge_1 = 1; 
	setb	_P2_1
;	main.c:818: L_bridge_2 = 0; 
	clr	_P2_2
	sjmp	L029016?
L029012?:
;	main.c:821: L_bridge_1 = 0; 
	clr	_P2_1
;	main.c:822: L_bridge_2 = 1; 
	setb	_P2_2
	sjmp	L029016?
L029015?:
;	main.c:826: L_bridge_1 = 0; 
	clr	_P2_1
;	main.c:827: L_bridge_2 = 0; 
	clr	_P2_2
L029016?:
;	main.c:829: if (pwm_left > pwm_counter){
	mov	dptr,#_pwm_left
	movx	a,@dptr
	mov	r2,a
	mov	r5,#0x00
	clr	c
	mov	a,r3
	subb	a,r2
	mov	a,r4
	subb	a,r5
	jnc	L029021?
;	main.c:830: if (R_motor_dir){
	mov	dptr,#_R_motor_dir
	movx	a,@dptr
	mov	r2,a
	jz	L029018?
;	main.c:831: R_bridge_1 = 1; 
	setb	_P2_4
;	main.c:832: R_bridge_2 = 0;
	clr	_P2_3
	sjmp	L029022?
L029018?:
;	main.c:835: R_bridge_1 = 0; 
	clr	_P2_4
;	main.c:836: R_bridge_2 = 1;
	setb	_P2_3
	sjmp	L029022?
L029021?:
;	main.c:840: R_bridge_1 = 0; 
	clr	_P2_4
;	main.c:841: R_bridge_2 = 0; 
	clr	_P2_3
L029022?:
;	main.c:844: servo_counter++;
	mov	dptr,#_servo_counter
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
;	main.c:845: if(servo_counter==2000)
	mov	dptr,#_servo_counter
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	cjne	r2,#0xD0,L029024?
	cjne	r3,#0x07,L029024?
;	main.c:847: servo_counter=0;
	mov	dptr,#_servo_counter
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	main.c:848: Servo_arm=1;
	setb	_P1_6
;	main.c:849: Servo_base=1;
	setb	_P1_7
L029024?:
;	main.c:851: if(servo_arm==servo_counter)
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
	mov	a,r2
	cjne	a,ar3,L029026?
	mov	a,r5
	cjne	a,ar4,L029026?
;	main.c:853: Servo_arm=0;
	clr	_P1_6
L029026?:
;	main.c:855: if(servo_base==servo_counter)
	mov	dptr,#_servo_base
	movx	a,@dptr
	mov	r2,a
	mov	r5,#0x00
	cjne	a,ar3,L029029?
	mov	a,r5
	cjne	a,ar4,L029029?
;	main.c:857: Servo_base=0;
	clr	_P1_7
L029029?:
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
;i                         Allocated with name '_servo_pick_i_1_188'
;------------------------------------------------------------
;	main.c:861: void servo_pick(){
;	-----------------------------------------
;	 function servo_pick
;	-----------------------------------------
_servo_pick:
;	main.c:863: servo_arm = 1;
	mov	dptr,#_servo_arm
	mov	a,#0x01
	movx	@dptr,a
;	main.c:865: servo_base = 250;
	mov	dptr,#_servo_base
	mov	a,#0xFA
	movx	@dptr,a
;	main.c:866: waitms(200);
	mov	dptr,#0x00C8
	lcall	_waitms
;	main.c:867: servo_arm = 250;
	mov	dptr,#_servo_arm
	mov	a,#0xFA
	movx	@dptr,a
;	main.c:868: Magnet = 1;
	setb	_P1_5
;	main.c:869: waitms(200);
	mov	dptr,#0x00C8
	lcall	_waitms
;	main.c:870: for(i = 0; i<89; i++){
	mov	r2,#0x00
	mov	r3,#0x00
L030001?:
	clr	c
	mov	a,r2
	subb	a,#0x59
	mov	a,r3
	xrl	a,#0x80
	subb	a,#0x80
	jnc	L030004?
;	main.c:871: waitms(5);
	mov	dptr,#0x0005
	push	ar2
	push	ar3
	lcall	_waitms
	pop	ar3
	pop	ar2
;	main.c:872: servo_base--;
	mov	dptr,#_servo_base
	movx	a,@dptr
	dec	a
	mov	dptr,#_servo_base
	movx	@dptr,a
;	main.c:870: for(i = 0; i<89; i++){
	inc	r2
	cjne	r2,#0x00,L030001?
	inc	r3
	sjmp	L030001?
L030004?:
;	main.c:874: waitms(200);
	mov	dptr,#0x00C8
	lcall	_waitms
;	main.c:875: for(i = 0; i<159; i++){
	mov	r2,#0x00
	mov	r3,#0x00
L030005?:
	clr	c
	mov	a,r2
	subb	a,#0x9F
	mov	a,r3
	xrl	a,#0x80
	subb	a,#0x80
	jnc	L030008?
;	main.c:876: waitms(5);
	mov	dptr,#0x0005
	push	ar2
	push	ar3
	lcall	_waitms
	pop	ar3
	pop	ar2
;	main.c:877: servo_arm--;
	mov	dptr,#_servo_arm
	movx	a,@dptr
	dec	a
	mov	dptr,#_servo_arm
	movx	@dptr,a
;	main.c:875: for(i = 0; i<159; i++){
	inc	r2
	cjne	r2,#0x00,L030005?
	inc	r3
	sjmp	L030005?
L030008?:
;	main.c:879: waitms(200);
	mov	dptr,#0x00C8
	lcall	_waitms
;	main.c:880: for(i = 0; i<65; i++){
	mov	r2,#0x00
	mov	r3,#0x00
L030009?:
	clr	c
	mov	a,r2
	subb	a,#0x41
	mov	a,r3
	xrl	a,#0x80
	subb	a,#0x80
	jnc	L030012?
;	main.c:881: waitms(5);
	mov	dptr,#0x0005
	push	ar2
	push	ar3
	lcall	_waitms
	pop	ar3
	pop	ar2
;	main.c:882: servo_base--;
	mov	dptr,#_servo_base
	movx	a,@dptr
	dec	a
	mov	dptr,#_servo_base
	movx	@dptr,a
;	main.c:880: for(i = 0; i<65; i++){
	inc	r2
	cjne	r2,#0x00,L030009?
	inc	r3
	sjmp	L030009?
L030012?:
;	main.c:884: waitms(500);
	mov	dptr,#0x01F4
	lcall	_waitms
;	main.c:885: Magnet = 0;
	clr	_P1_5
;	main.c:886: waitms(200);
	mov	dptr,#0x00C8
	lcall	_waitms
;	main.c:887: servo_arm=1;
	mov	dptr,#_servo_arm
	mov	a,#0x01
	movx	@dptr,a
;	main.c:888: servo_base=1;
	mov	dptr,#_servo_base
	mov	a,#0x01
	movx	@dptr,a
;	main.c:889: return;
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'check_bound'
;------------------------------------------------------------
;d2                        Allocated with name '_check_bound_PARM_2'
;d1                        Allocated to registers r2 r3 
;------------------------------------------------------------
;	main.c:892: int check_bound(int d1, int d2){
;	-----------------------------------------
;	 function check_bound
;	-----------------------------------------
_check_bound:
	mov	r2,dpl
	mov	r3,dph
;	main.c:893: if(d1>12000||d2>12000)	return 1;
	clr	c
	mov	a,#0xE0
	subb	a,r2
	mov	a,#(0x2E ^ 0x80)
	mov	b,r3
	xrl	b,#0x80
	subb	a,b
	jc	L031001?
	mov	a,#0xE0
	subb	a,_check_bound_PARM_2
	mov	a,#(0x2E ^ 0x80)
	mov	b,(_check_bound_PARM_2 + 1)
	xrl	b,#0x80
	subb	a,b
	jnc	L031002?
L031001?:
	mov	dptr,#0x0001
;	main.c:894: else return 0;
	ret
L031002?:
	mov	dptr,#0x0000
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Init_all'
;------------------------------------------------------------
;------------------------------------------------------------
;	main.c:897: void Init_all(){
;	-----------------------------------------
;	 function Init_all
;	-----------------------------------------
_Init_all:
;	main.c:899: Set_Pin_Output(0x24);
	mov	dpl,#0x24
	lcall	_Set_Pin_Output
;	main.c:900: Set_Pin_Output(0x23);
	mov	dpl,#0x23
	lcall	_Set_Pin_Output
;	main.c:901: Set_Pin_Output(0x22);
	mov	dpl,#0x22
	lcall	_Set_Pin_Output
;	main.c:902: Set_Pin_Output(0x21);
	mov	dpl,#0x21
	lcall	_Set_Pin_Output
;	main.c:903: Set_Pin_Output(0x17);
	mov	dpl,#0x17
	lcall	_Set_Pin_Output
;	main.c:904: Set_Pin_Output(0x16);
	mov	dpl,#0x16
	lcall	_Set_Pin_Output
;	main.c:905: Set_Pin_Output(0x15);
	mov	dpl,#0x15
	lcall	_Set_Pin_Output
;	main.c:906: Set_Pin_Output(0x10); // CS
	mov	dpl,#0x10
	lcall	_Set_Pin_Output
;	main.c:908: Set_Pin_Input(0x30);
	mov	dpl,#0x30
	lcall	_Set_Pin_Input
;	main.c:909: Set_Pin_Output(0x25); // CLK for Load
	mov	dpl,#0x25
	lcall	_Set_Pin_Output
;	main.c:910: Set_Pin_Input(0x26);
	mov	dpl,#0x26
	lcall	_Set_Pin_Input
;	main.c:913: InitPinADC(1,3);
	mov	_InitPinADC_PARM_2,#0x03
	mov	dpl,#0x01
	lcall	_InitPinADC
;	main.c:914: InitPinADC(1,4);
	mov	_InitPinADC_PARM_2,#0x04
	mov	dpl,#0x01
	lcall	_InitPinADC
;	main.c:915: InitADC();
	lcall	_InitADC
;	main.c:917: TMOD&=0b_1111_0000; 
	anl	_TMOD,#0xF0
;	main.c:918: TMOD|=0b_0000_0001; 
	orl	_TMOD,#0x01
;	main.c:919: TR0=0; 
	clr	_TR0
;	main.c:921: Servo_arm=0;
	clr	_P1_6
;	main.c:922: Servo_base=0;
	clr	_P1_7
;	main.c:923: Magnet = 0;
	clr	_P1_5
;	main.c:924: PD_SCK = 0;
	clr	_P2_5
;	main.c:925: return;
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Move_back_ms'
;------------------------------------------------------------
;ms                        Allocated to registers r2 r3 
;------------------------------------------------------------
;	main.c:928: void Move_back_ms(int ms){
;	-----------------------------------------
;	 function Move_back_ms
;	-----------------------------------------
_Move_back_ms:
	mov	r2,dpl
	mov	r3,dph
;	main.c:930: L_motor_dir = 1;
	mov	dptr,#_L_motor_dir
	mov	a,#0x01
	movx	@dptr,a
;	main.c:931: R_motor_dir = 1;
	mov	dptr,#_R_motor_dir
	mov	a,#0x01
	movx	@dptr,a
;	main.c:933: pwm_left = 50;
	mov	dptr,#_pwm_left
	mov	a,#0x32
	movx	@dptr,a
;	main.c:934: pwm_right = 50;
	mov	dptr,#_pwm_right
	mov	a,#0x32
	movx	@dptr,a
;	main.c:936: waitms(ms);
	mov	dpl,r2
	mov	dph,r3
	lcall	_waitms
;	main.c:938: L_motor_dir = 0;
	mov	dptr,#_L_motor_dir
;	main.c:939: R_motor_dir = 0;
;	main.c:940: pwm_left = 0;
;	main.c:941: pwm_right = 0;
	clr	a
	movx	@dptr,a
	mov	dptr,#_R_motor_dir
	movx	@dptr,a
	mov	dptr,#_pwm_left
	movx	@dptr,a
	mov	dptr,#_pwm_right
	movx	@dptr,a
;	main.c:942: return;
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Right_angle'
;------------------------------------------------------------
;angle                     Allocated to registers r2 r3 
;------------------------------------------------------------
;	main.c:945: void Right_angle(int angle){
;	-----------------------------------------
;	 function Right_angle
;	-----------------------------------------
_Right_angle:
	mov	r2,dpl
	mov	r3,dph
;	main.c:947: L_motor_dir = 1;
	mov	dptr,#_L_motor_dir
	mov	a,#0x01
	movx	@dptr,a
;	main.c:948: R_motor_dir = 0;
	mov	dptr,#_R_motor_dir
	clr	a
	movx	@dptr,a
;	main.c:949: pwm_left = 80;
	mov	dptr,#_pwm_left
	mov	a,#0x50
	movx	@dptr,a
;	main.c:950: pwm_right = 80 * pwm_corr;
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
;	main.c:952: waitms(angle);
	mov	dpl,r2
	mov	dph,r3
	lcall	_waitms
;	main.c:954: L_motor_dir = 0;
	mov	dptr,#_L_motor_dir
;	main.c:955: R_motor_dir = 0;
;	main.c:956: pwm_left = 0;
;	main.c:957: pwm_right = 0;
	clr	a
	movx	@dptr,a
	mov	dptr,#_R_motor_dir
	movx	@dptr,a
	mov	dptr,#_pwm_left
	movx	@dptr,a
	mov	dptr,#_pwm_right
	movx	@dptr,a
;	main.c:958: return;
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Move_forward'
;------------------------------------------------------------
;------------------------------------------------------------
;	main.c:961: void Move_forward(){
;	-----------------------------------------
;	 function Move_forward
;	-----------------------------------------
_Move_forward:
;	main.c:963: L_motor_dir = 0;
	mov	dptr,#_L_motor_dir
;	main.c:964: R_motor_dir = 0;
	clr	a
	movx	@dptr,a
	mov	dptr,#_R_motor_dir
	movx	@dptr,a
;	main.c:965: pwm_left = 60;
	mov	dptr,#_pwm_left
	mov	a,#0x3C
	movx	@dptr,a
;	main.c:966: pwm_right = 60 * pwm_corr;
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
;	main.c:967: return;
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'simple_rand'
;------------------------------------------------------------
;------------------------------------------------------------
;	main.c:970: unsigned int simple_rand() {
;	-----------------------------------------
;	 function simple_rand
;	-----------------------------------------
_simple_rand:
;	main.c:971: seed = (seed * 25173 + 13849) & 0xFFFF;  
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
;	main.c:972: return seed;     
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
;	main.c:975: unsigned int get_random_90_250() {
;	-----------------------------------------
;	 function get_random_90_250
;	-----------------------------------------
_get_random_90_250:
;	main.c:976: return (simple_rand() % (250 - 85 + 1)) + 85;
	lcall	_simple_rand
	mov	__moduint_PARM_2,#0xA6
	clr	a
	mov	(__moduint_PARM_2 + 1),a
	lcall	__moduint
	mov	a,dpl
	mov	b,dph
	add	a,#0x55
	mov	dpl,a
	clr	a
	addc	a,b
	mov	dph,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Read_angle'
;------------------------------------------------------------
;sloc0                     Allocated with name '_Read_angle_sloc0_1_0'
;i                         Allocated with name '_Read_angle_i_1_203'
;mag_x                     Allocated with name '_Read_angle_mag_x_1_203'
;mag_y                     Allocated with name '_Read_angle_mag_y_1_203'
;sum_x                     Allocated with name '_Read_angle_sum_x_1_203'
;sum_y                     Allocated with name '_Read_angle_sum_y_1_203'
;angle                     Allocated with name '_Read_angle_angle_1_203'
;------------------------------------------------------------
;	main.c:979: float Read_angle(void)
;	-----------------------------------------
;	 function Read_angle
;	-----------------------------------------
_Read_angle:
;	main.c:986: sum_x = 0.0; sum_y = 0.0;
	mov	dptr,#_Read_angle_sum_x_1_203
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_Read_angle_sum_y_1_203
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	main.c:989: for (i = 0; i < 10; i++){
	mov	r2,#0x00
L038005?:
	cjne	r2,#0x0A,L038016?
L038016?:
	jc	L038017?
	ljmp	L038008?
L038017?:
;	main.c:990: BMM150_Read_Data(&mag_x, &mag_y);
	mov	_BMM150_Read_Data_PARM_2,#_Read_angle_mag_y_1_203
	mov	(_BMM150_Read_Data_PARM_2 + 1),#(_Read_angle_mag_y_1_203 >> 8)
	mov	(_BMM150_Read_Data_PARM_2 + 2),#0x00
	mov	dptr,#_Read_angle_mag_x_1_203
	mov	b,#0x00
	push	ar2
	lcall	_BMM150_Read_Data
;	main.c:991: sum_x += (float)mag_x; 
	mov	dptr,#_Read_angle_mag_x_1_203
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dpl,r3
	mov	dph,r4
	lcall	___sint2fs
	mov	_Read_angle_sloc0_1_0,dpl
	mov	(_Read_angle_sloc0_1_0 + 1),dph
	mov	(_Read_angle_sloc0_1_0 + 2),b
	mov	(_Read_angle_sloc0_1_0 + 3),a
	mov	dptr,#_Read_angle_sum_x_1_203
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
	push	_Read_angle_sloc0_1_0
	push	(_Read_angle_sloc0_1_0 + 1)
	push	(_Read_angle_sloc0_1_0 + 2)
	push	(_Read_angle_sloc0_1_0 + 3)
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
	mov	dptr,#_Read_angle_sum_x_1_203
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
;	main.c:992: sum_y += (float)mag_y; 
	mov	dptr,#_Read_angle_mag_y_1_203
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dpl,r3
	mov	dph,r4
	lcall	___sint2fs
	mov	_Read_angle_sloc0_1_0,dpl
	mov	(_Read_angle_sloc0_1_0 + 1),dph
	mov	(_Read_angle_sloc0_1_0 + 2),b
	mov	(_Read_angle_sloc0_1_0 + 3),a
	mov	dptr,#_Read_angle_sum_y_1_203
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
	push	_Read_angle_sloc0_1_0
	push	(_Read_angle_sloc0_1_0 + 1)
	push	(_Read_angle_sloc0_1_0 + 2)
	push	(_Read_angle_sloc0_1_0 + 3)
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
	mov	dptr,#_Read_angle_sum_y_1_203
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
;	main.c:993: waitms(1);
	mov	dptr,#0x0001
	lcall	_waitms
	pop	ar2
;	main.c:989: for (i = 0; i < 10; i++){
	inc	r2
	ljmp	L038005?
L038008?:
;	main.c:995: angle = atan2f(sum_y/25.0, sum_x/25.0) * 180.0 / M_PI;
	mov	dptr,#_Read_angle_sum_y_1_203
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
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dptr,#_Read_angle_sum_x_1_203
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
	mov	_atan2f_PARM_2,dpl
	mov	(_atan2f_PARM_2 + 1),dph
	mov	(_atan2f_PARM_2 + 2),b
	mov	(_atan2f_PARM_2 + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
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
	mov	dptr,#_Read_angle_angle_1_203
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
;	main.c:996: if (angle < 0.0) angle += 360.0; 
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
	jz	L038002?
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
	mov	dptr,#_Read_angle_angle_1_203
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
L038002?:
;	main.c:997: if (angle > 360.0) angle -= 360.0; 
	mov	dptr,#_Read_angle_angle_1_203
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
	jz	L038004?
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
	mov	dptr,#_Read_angle_angle_1_203
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
L038004?:
;	main.c:998: return angle; 
	mov	dptr,#_Read_angle_angle_1_203
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
;sloc1                     Allocated with name '_Auto_mode_slave_sloc1_1_0'
;count                     Allocated with name '_Auto_mode_slave_count_1_205'
;command                   Allocated with name '_Auto_mode_slave_command_1_205'
;state_res                 Allocated with name '_Auto_mode_slave_state_res_1_205'
;bound                     Allocated with name '_Auto_mode_slave_bound_1_205'
;c                         Allocated with name '_Auto_mode_slave_c_1_205'
;dummy                     Allocated with name '_Auto_mode_slave_dummy_1_205'
;angle                     Allocated with name '_Auto_mode_slave_angle_1_205'
;------------------------------------------------------------
;	main.c:1001: void Auto_mode_slave(){
;	-----------------------------------------
;	 function Auto_mode_slave
;	-----------------------------------------
_Auto_mode_slave:
;	main.c:1004: xdata int state_res = 1;
	mov	dptr,#_Auto_mode_slave_state_res_1_205
	mov	a,#0x01
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	main.c:1011: while(count < 20 && state_res){
	clr	a
	mov	_Auto_mode_slave_sloc0_1_0,a
	mov	(_Auto_mode_slave_sloc0_1_0 + 1),a
L039018?:
	clr	c
	mov	a,_Auto_mode_slave_sloc0_1_0
	subb	a,#0x14
	mov	a,(_Auto_mode_slave_sloc0_1_0 + 1)
	xrl	a,#0x80
	subb	a,#0x80
	jc	L039034?
	ljmp	L039020?
L039034?:
	mov	dptr,#_Auto_mode_slave_state_res_1_205
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	orl	a,r4
	jnz	L039035?
	ljmp	L039020?
L039035?:
;	main.c:1013: if(RXU1()){
	push	ar4
	push	ar5
	lcall	_RXU1
	pop	ar5
	pop	ar4
	jc	L039036?
	ljmp	L039012?
L039036?:
;	main.c:1014: c=getchar1();	
	push	ar4
	push	ar5
	lcall	_getchar1
	mov	r6,dpl
	pop	ar5
	pop	ar4
;	main.c:1015: if(c=='!'){
	cjne	r6,#0x21,L039037?
	sjmp	L039038?
L039037?:
	ljmp	L039009?
L039038?:
;	main.c:1016: getstr1(buff, sizeof(buff)-1);
	mov	_getstr1_PARM_2,#0x13
	mov	dptr,#_buff
	mov	b,#0x40
	lcall	_getstr1
;	main.c:1017: if(strlen(buff)==11){
	mov	dptr,#_buff
	mov	b,#0x40
	lcall	_strlen
	mov	r7,dpl
	mov	r2,dph
	cjne	r7,#0x0B,L039039?
	cjne	r2,#0x00,L039039?
	sjmp	L039040?
L039039?:
	ljmp	L039012?
L039040?:
;	main.c:1018: printf("master_messgae_auto_mode: %s\r\n", buff);
	mov	a,#_buff
	push	acc
	mov	a,#(_buff >> 8)
	push	acc
	mov	a,#0x40
	push	acc
	mov	a,#__str_7
	push	acc
	mov	a,#(__str_7 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
;	main.c:1019: sscanf(buff,"%03d,%03d,%01d,%01d",&dummy, &dummy,&dummy,&command);
	mov	a,#_Auto_mode_slave_command_1_205
	push	acc
	mov	a,#(_Auto_mode_slave_command_1_205 >> 8)
	push	acc
	clr	a
	push	acc
	mov	a,#_Auto_mode_slave_dummy_1_205
	push	acc
	mov	a,#(_Auto_mode_slave_dummy_1_205 >> 8)
	push	acc
	clr	a
	push	acc
	mov	a,#_Auto_mode_slave_dummy_1_205
	push	acc
	mov	a,#(_Auto_mode_slave_dummy_1_205 >> 8)
	push	acc
	clr	a
	push	acc
	mov	a,#_Auto_mode_slave_dummy_1_205
	push	acc
	mov	a,#(_Auto_mode_slave_dummy_1_205 >> 8)
	push	acc
	clr	a
	push	acc
	mov	a,#__str_8
	push	acc
	mov	a,#(__str_8 >> 8)
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
;	main.c:1020: if(command) state_res = 1;
	mov	dptr,#_Auto_mode_slave_command_1_205
	movx	a,@dptr
	mov	r7,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	orl	a,r7
	jz	L039002?
	mov	dptr,#_Auto_mode_slave_state_res_1_205
	mov	a,#0x01
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	sjmp	L039012?
L039002?:
;	main.c:1021: else state_res = 0;
	mov	dptr,#_Auto_mode_slave_state_res_1_205
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	sjmp	L039012?
L039009?:
;	main.c:1027: else if(c=='@'){
	cjne	r6,#0x40,L039012?
;	main.c:1028: sprintf(buff, "%01d,%02d,%ld,%05d,%4.1f\n", state_res, count,freq100, 0, curr_angle);
	mov	dptr,#_curr_angle
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
	add	a,#0xec
	mov	sp,a
;	main.c:1029: waitms(5); 
	mov	dptr,#0x0005
	lcall	_waitms
;	main.c:1030: sendstr1(buff);
	mov	dptr,#_buff
	mov	b,#0x40
	lcall	_sendstr1
L039012?:
;	main.c:1035: Move_forward();
	lcall	_Move_forward
;	main.c:1037: d1 = ADC_at_Pin(QFP32_MUX_P1_3);
	mov	dpl,#0x09
	lcall	_ADC_at_Pin
	mov	a,dpl
	mov	b,dph
	mov	dptr,#_d1
	movx	@dptr,a
	inc	dptr
	mov	a,b
	movx	@dptr,a
;	main.c:1038: d2 = ADC_at_Pin(QFP32_MUX_P1_4);
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
;	main.c:1039: bound = check_bound(d1,d2);
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
;	main.c:1040: printf("f:%04ld, d1:%d, d2:%d, bound_dectect: %d\r\n",freq100, d1,d2,bound);
	push	ar2
	push	ar3
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
	mov	a,#__str_10
	push	acc
	mov	a,#(__str_10 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf3
	mov	sp,a
	pop	ar3
	pop	ar2
;	main.c:1042: if (freq100>=5340){
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
	subb	a,#0xDC
	mov	a,r5
	subb	a,#0x14
	mov	a,r6
	subb	a,#0x00
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jc	L039014?
;	main.c:1043: mea_yes = 0;
	mov	dptr,#_mea_yes
	clr	a
	movx	@dptr,a
;	main.c:1044: Move_back_ms(300);
	mov	dptr,#0x012C
	push	ar2
	push	ar3
	lcall	_Move_back_ms
;	main.c:1045: waitms(100);
	mov	dptr,#0x0064
	lcall	_waitms
;	main.c:1046: servo_pick();
	lcall	_servo_pick
	pop	ar3
	pop	ar2
;	main.c:1047: count++;
	inc	_Auto_mode_slave_sloc0_1_0
	clr	a
	cjne	a,_Auto_mode_slave_sloc0_1_0,L039045?
	inc	(_Auto_mode_slave_sloc0_1_0 + 1)
L039045?:
;	main.c:1048: waitms(100);
	mov	dptr,#0x0064
	push	ar2
	push	ar3
	lcall	_waitms
;	main.c:1049: mea_yes = 1;
	mov	dptr,#_mea_yes
	mov	a,#0x01
	movx	@dptr,a
;	main.c:1050: Move_forward();
	lcall	_Move_forward
	pop	ar3
	pop	ar2
L039014?:
;	main.c:1053: if(bound == 1){
	cjne	r2,#0x01,L039046?
	cjne	r3,#0x00,L039046?
	sjmp	L039047?
L039046?:
	ljmp	L039018?
L039047?:
;	main.c:1054: Move_back_ms(500);
	mov	dptr,#0x01F4
	lcall	_Move_back_ms
;	main.c:1055: waitms(100);
	mov	dptr,#0x0064
	lcall	_waitms
;	main.c:1056: curr_angle = Read_angle();
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
;	main.c:1057: angle = get_random_90_250();
	lcall	_get_random_90_250
	mov	__mulint_PARM_2,dpl
	mov	(__mulint_PARM_2 + 1),dph
;	main.c:1058: Right_angle(angle*600/90);
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
;	main.c:1059: curr_angle = fabsf(curr_angle - Read_angle());
	lcall	_Read_angle
	mov	_Auto_mode_slave_sloc1_1_0,dpl
	mov	(_Auto_mode_slave_sloc1_1_0 + 1),dph
	mov	(_Auto_mode_slave_sloc1_1_0 + 2),b
	mov	(_Auto_mode_slave_sloc1_1_0 + 3),a
	mov	dptr,#_curr_angle
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	push	_Auto_mode_slave_sloc1_1_0
	push	(_Auto_mode_slave_sloc1_1_0 + 1)
	push	(_Auto_mode_slave_sloc1_1_0 + 2)
	push	(_Auto_mode_slave_sloc1_1_0 + 3)
	mov	dpl,r6
	mov	dph,r7
	mov	b,r2
	mov	a,r3
	lcall	___fssub
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
	lcall	_fabsf
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
	ljmp	L039018?
L039020?:
;	main.c:1063: printf("Auto mode finished!\r\n");
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
;sloc6                     Allocated with name '_Joystick_Control_sloc6_1_0'
;vx                        Allocated with name '_Joystick_Control_vx_1_214'
;vy                        Allocated with name '_Joystick_Control_vy_1_214'
;vx_error                  Allocated with name '_Joystick_Control_vx_error_1_214'
;vy_error                  Allocated with name '_Joystick_Control_vy_error_1_214'
;vx_err                    Allocated with name '_Joystick_Control_vx_err_1_214'
;vy_err                    Allocated with name '_Joystick_Control_vy_err_1_214'
;threshold                 Allocated with name '_Joystick_Control_threshold_1_214'
;------------------------------------------------------------
;	main.c:1066: void Joystick_Control(int *vx_ptr, int *vy_ptr)
;	-----------------------------------------
;	 function Joystick_Control
;	-----------------------------------------
_Joystick_Control:
;	main.c:1071: vx = *vx_ptr; 
	lcall	__gptrget
	mov	_Joystick_Control_sloc0_1_0,a
	inc	dptr
	lcall	__gptrget
	mov	(_Joystick_Control_sloc0_1_0 + 1),a
;	main.c:1072: vy = *vy_ptr; 
	mov	r4,_Joystick_Control_PARM_2
	mov	r5,(_Joystick_Control_PARM_2 + 1)
	mov	r6,(_Joystick_Control_PARM_2 + 2)
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
;	main.c:1074: vx_error = abs(vx-vx_thres)*100/vx_thres; 
	mov	dptr,#_vx_thres
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,_Joystick_Control_sloc0_1_0
	clr	c
	subb	a,r6
	mov	dpl,a
	mov	a,(_Joystick_Control_sloc0_1_0 + 1)
	subb	a,r7
	mov	dph,a
	push	ar4
	push	ar5
	lcall	_abs
	mov	__mulint_PARM_2,dpl
	mov	(__mulint_PARM_2 + 1),dph
	mov	dptr,#0x0064
	lcall	__mulint
	mov	r6,dpl
	mov	r7,dph
	mov	dptr,#_vx_thres
	movx	a,@dptr
	mov	__divsint_PARM_2,a
	inc	dptr
	movx	a,@dptr
	mov	(__divsint_PARM_2 + 1),a
	mov	dpl,r6
	mov	dph,r7
	lcall	__divsint
	mov	a,dpl
	mov	b,dph
	pop	ar5
	pop	ar4
	mov	dptr,#_Joystick_Control_vx_error_1_214
	movx	@dptr,a
	inc	dptr
	mov	a,b
	movx	@dptr,a
;	main.c:1075: vy_error = abs(vy-vy_thres)*100/vy_thres; 
	mov	dptr,#_vy_thres
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,r4
	clr	c
	subb	a,r6
	mov	dpl,a
	mov	a,r5
	subb	a,r7
	mov	dph,a
	push	ar4
	push	ar5
	lcall	_abs
	mov	__mulint_PARM_2,dpl
	mov	(__mulint_PARM_2 + 1),dph
	mov	dptr,#0x0064
	lcall	__mulint
	mov	r6,dpl
	mov	r7,dph
	mov	dptr,#_vy_thres
	movx	a,@dptr
	mov	_Joystick_Control_sloc2_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_Joystick_Control_sloc2_1_0 + 1),a
	mov	__divsint_PARM_2,_Joystick_Control_sloc2_1_0
	mov	(__divsint_PARM_2 + 1),(_Joystick_Control_sloc2_1_0 + 1)
;	main.c:1076: vx_err = vx-vx_thres; 
	mov	dpl,r6
	mov	dph,r7
	lcall	__divsint
	mov	r6,dpl
	mov	r7,dph
	pop	ar5
	pop	ar4
	mov	dptr,#_vx_thres
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	a,_Joystick_Control_sloc0_1_0
	clr	c
	subb	a,r2
	mov	_Joystick_Control_sloc4_1_0,a
	mov	a,(_Joystick_Control_sloc0_1_0 + 1)
	subb	a,r3
	mov	(_Joystick_Control_sloc4_1_0 + 1),a
;	main.c:1077: vy_err = vy-vy_thres; 
	mov	a,r4
	clr	c
	subb	a,_Joystick_Control_sloc2_1_0
	mov	_Joystick_Control_sloc0_1_0,a
	mov	a,r5
	subb	a,(_Joystick_Control_sloc2_1_0 + 1)
	mov	(_Joystick_Control_sloc0_1_0 + 1),a
;	main.c:1078: pwm_left = 0; 
	mov	dptr,#_pwm_left
;	main.c:1079: pwm_right = 0; 
	clr	a
	movx	@dptr,a
	mov	dptr,#_pwm_right
	movx	@dptr,a
;	main.c:1081: if ((vy_error>5) && (vx_error<5)){
	clr	c
	mov	a,#0x05
	subb	a,r6
	clr	a
	xrl	a,#0x80
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	clr	a
	rlc	a
	mov	_Joystick_Control_sloc1_1_0,a
	jnz	L040056?
	ljmp	L040005?
L040056?:
	mov	dptr,#_Joystick_Control_vx_error_1_214
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	clr	c
	mov	a,r2
	subb	a,#0x05
	mov	a,r3
	xrl	a,#0x80
	subb	a,#0x80
	jc	L040057?
	ljmp	L040005?
L040057?:
;	main.c:1082: pwm_left = vy_error; 
	mov	dptr,#_pwm_left
	mov	a,r6
	movx	@dptr,a
;	main.c:1083: pwm_right = vy_error * pwm_corr; 
	mov	dpl,r6
	mov	dph,r7
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	lcall	___sint2fs
	mov	r2,dpl
	mov	r3,dph
	mov	r0,b
	mov	r1,a
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
	mov	b,r0
	mov	a,r1
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
	lcall	___fs2uchar
	mov	_Joystick_Control_sloc3_1_0,dpl
	pop	ar7
	pop	ar6
	pop	ar5
	pop	ar4
	mov	dptr,#_pwm_right
	mov	a,_Joystick_Control_sloc3_1_0
	movx	@dptr,a
;	main.c:1084: if (vy_err > 0){ //move forward
	clr	c
	clr	a
	subb	a,_Joystick_Control_sloc0_1_0
	clr	a
	xrl	a,#0x80
	mov	b,(_Joystick_Control_sloc0_1_0 + 1)
	xrl	b,#0x80
	subb	a,b
	jnc	L040002?
;	main.c:1085: L_motor_dir = 0; 
	mov	dptr,#_L_motor_dir
;	main.c:1086: R_motor_dir = 0; 
	clr	a
	movx	@dptr,a
	mov	dptr,#_R_motor_dir
	movx	@dptr,a
	sjmp	L040005?
L040002?:
;	main.c:1089: L_motor_dir = 1; 
	mov	dptr,#_L_motor_dir
	mov	a,#0x01
	movx	@dptr,a
;	main.c:1090: R_motor_dir = 1; 
	mov	dptr,#_R_motor_dir
	mov	a,#0x01
	movx	@dptr,a
;	main.c:1091: pwm_right *= 1.05;
	mov	dpl,_Joystick_Control_sloc3_1_0
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	lcall	___uchar2fs
	mov	r0,dpl
	mov	r1,dph
	mov	r2,b
	mov	r3,a
	push	ar0
	push	ar1
	push	ar2
	push	ar3
	mov	dptr,#0x6666
	mov	b,#0x86
	mov	a,#0x3F
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
	lcall	___fs2uchar
	mov	a,dpl
	pop	ar7
	pop	ar6
	pop	ar5
	pop	ar4
	mov	dptr,#_pwm_right
	movx	@dptr,a
;	main.c:1162: return; 
;	main.c:1091: pwm_right *= 1.05;
L040005?:
;	main.c:1094: if ((vx_error>5)&&(vy_error<5)){
	mov	dptr,#_Joystick_Control_vx_error_1_214
	movx	a,@dptr
	mov	_Joystick_Control_sloc6_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_Joystick_Control_sloc6_1_0 + 1),a
	clr	c
	mov	a,#0x05
	subb	a,_Joystick_Control_sloc6_1_0
	clr	a
	xrl	a,#0x80
	mov	b,(_Joystick_Control_sloc6_1_0 + 1)
	xrl	b,#0x80
	subb	a,b
	clr	a
	rlc	a
	mov	_Joystick_Control_sloc3_1_0,a
	jnz	L040059?
	ljmp	L040011?
L040059?:
	clr	c
	mov	a,r6
	subb	a,#0x05
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jc	L040060?
	ljmp	L040011?
L040060?:
;	main.c:1095: pwm_left = vx_error; 
	push	ar4
	push	ar5
	mov	dptr,#_pwm_left
	mov	a,_Joystick_Control_sloc6_1_0
	movx	@dptr,a
;	main.c:1096: pwm_right = vx_error * pwm_corr; 
	mov	dpl,_Joystick_Control_sloc6_1_0
	mov	dph,(_Joystick_Control_sloc6_1_0 + 1)
	push	ar6
	push	ar7
	lcall	___sint2fs
	mov	r4,dpl
	mov	r5,dph
	mov	r2,b
	mov	r3,a
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
	mov	dpl,r4
	mov	dph,r5
	mov	b,r2
	mov	a,r3
	lcall	___fsmul
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar7
	pop	ar6
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	lcall	___fs2uchar
	mov	a,dpl
	pop	ar7
	pop	ar6
	pop	ar5
	pop	ar4
	mov	dptr,#_pwm_right
	movx	@dptr,a
;	main.c:1097: if (vx_err > 0){ //turn right
	clr	c
	clr	a
	subb	a,_Joystick_Control_sloc4_1_0
	clr	a
	xrl	a,#0x80
	mov	b,(_Joystick_Control_sloc4_1_0 + 1)
	xrl	b,#0x80
	subb	a,b
	pop	ar5
	pop	ar4
	jnc	L040008?
;	main.c:1098: L_motor_dir = 1; 
	mov	dptr,#_L_motor_dir
	mov	a,#0x01
	movx	@dptr,a
;	main.c:1099: R_motor_dir = 0; 
	mov	dptr,#_R_motor_dir
	clr	a
	movx	@dptr,a
	sjmp	L040011?
L040008?:
;	main.c:1102: L_motor_dir = 0; 
	mov	dptr,#_L_motor_dir
	clr	a
	movx	@dptr,a
;	main.c:1103: R_motor_dir = 1; 
	mov	dptr,#_R_motor_dir
	mov	a,#0x01
	movx	@dptr,a
L040011?:
;	main.c:1106: if ((vx_error>5)&&(vy_error)>5){
	mov	a,_Joystick_Control_sloc3_1_0
	jnz	L040062?
	ret
L040062?:
	mov	a,_Joystick_Control_sloc1_1_0
	jnz	L040063?
	ret
L040063?:
;	main.c:1108: if (vy_err>0){
	clr	c
	clr	a
	subb	a,_Joystick_Control_sloc0_1_0
	clr	a
	xrl	a,#0x80
	mov	b,(_Joystick_Control_sloc0_1_0 + 1)
	xrl	b,#0x80
	subb	a,b
	jc	L040064?
	ljmp	L040023?
L040064?:
;	main.c:1109: L_motor_dir = 0; 
	mov	dptr,#_L_motor_dir
;	main.c:1110: R_motor_dir = 0; 
	clr	a
	movx	@dptr,a
	mov	dptr,#_R_motor_dir
	movx	@dptr,a
;	main.c:1112: if (vx_err>0){
	clr	c
	clr	a
	subb	a,_Joystick_Control_sloc4_1_0
	clr	a
	xrl	a,#0x80
	mov	b,(_Joystick_Control_sloc4_1_0 + 1)
	xrl	b,#0x80
	subb	a,b
	jc	L040065?
	ljmp	L040020?
L040065?:
;	main.c:1113: if (vy*100<=vy_thres*100/2){
	mov	__mulint_PARM_2,r4
	mov	(__mulint_PARM_2 + 1),r5
	mov	dptr,#0x0064
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	lcall	__mulint
	mov	r2,dpl
	mov	r3,dph
	pop	ar7
	pop	ar6
	pop	ar5
	pop	ar4
	mov	__mulint_PARM_2,_Joystick_Control_sloc2_1_0
	mov	(__mulint_PARM_2 + 1),(_Joystick_Control_sloc2_1_0 + 1)
	mov	dptr,#0x0064
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	push	ar6
	push	ar7
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
	pop	ar7
	pop	ar6
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
	clr	c
	mov	a,r0
	subb	a,r2
	mov	a,r1
	xrl	a,#0x80
	mov	b,r3
	xrl	b,#0x80
	subb	a,b
	jnc	L040066?
	ljmp	L040014?
L040066?:
;	main.c:1114: pwm_left = vy_error; 
	push	ar4
	push	ar5
	mov	dptr,#_pwm_left
	mov	a,r6
	movx	@dptr,a
;	main.c:1115: pwm_right = pwm_corr*vy_error*100/(vx_error+vy_error);
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
	mov	dpl,r6
	mov	dph,r7
	push	ar6
	push	ar7
	lcall	___sint2fs
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	mov	dpl,_Joystick_Control_sloc5_1_0
	mov	dph,(_Joystick_Control_sloc5_1_0 + 1)
	mov	b,(_Joystick_Control_sloc5_1_0 + 2)
	mov	a,(_Joystick_Control_sloc5_1_0 + 3)
	lcall	___fsmul
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar7
	pop	ar6
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	push	ar2
	push	ar3
	push	ar4
	push	ar5
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
	pop	ar7
	pop	ar6
	pop	ar5
	pop	ar4
	mov	a,r6
	add	a,_Joystick_Control_sloc6_1_0
	mov	dpl,a
	mov	a,r7
	addc	a,(_Joystick_Control_sloc6_1_0 + 1)
	mov	dph,a
	push	ar6
	push	ar7
	lcall	___sint2fs
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	mov	dpl,_Joystick_Control_sloc5_1_0
	mov	dph,(_Joystick_Control_sloc5_1_0 + 1)
	mov	b,(_Joystick_Control_sloc5_1_0 + 2)
	mov	a,(_Joystick_Control_sloc5_1_0 + 3)
	lcall	___fsdiv
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar7
	pop	ar6
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	lcall	___fs2uchar
	mov	a,dpl
	pop	ar7
	pop	ar6
	pop	ar5
	pop	ar4
	mov	dptr,#_pwm_right
	movx	@dptr,a
	pop	ar5
	pop	ar4
	ljmp	L040023?
L040014?:
;	main.c:1118: pwm_left = vx_error; 
	push	ar4
	push	ar5
	mov	dptr,#_pwm_left
	mov	a,_Joystick_Control_sloc6_1_0
	movx	@dptr,a
;	main.c:1119: pwm_right = pwm_corr*vx_error*100/(vx_error+vy_error);
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
	mov	dpl,_Joystick_Control_sloc6_1_0
	mov	dph,(_Joystick_Control_sloc6_1_0 + 1)
	push	ar6
	push	ar7
	lcall	___sint2fs
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	mov	dpl,_Joystick_Control_sloc5_1_0
	mov	dph,(_Joystick_Control_sloc5_1_0 + 1)
	mov	b,(_Joystick_Control_sloc5_1_0 + 2)
	mov	a,(_Joystick_Control_sloc5_1_0 + 3)
	lcall	___fsmul
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar7
	pop	ar6
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	push	ar2
	push	ar3
	push	ar4
	push	ar5
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
	pop	ar7
	pop	ar6
	pop	ar5
	pop	ar4
	mov	a,r6
	add	a,_Joystick_Control_sloc6_1_0
	mov	dpl,a
	mov	a,r7
	addc	a,(_Joystick_Control_sloc6_1_0 + 1)
	mov	dph,a
	push	ar6
	push	ar7
	lcall	___sint2fs
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	mov	dpl,_Joystick_Control_sloc5_1_0
	mov	dph,(_Joystick_Control_sloc5_1_0 + 1)
	mov	b,(_Joystick_Control_sloc5_1_0 + 2)
	mov	a,(_Joystick_Control_sloc5_1_0 + 3)
	lcall	___fsdiv
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar7
	pop	ar6
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	lcall	___fs2uchar
	mov	a,dpl
	pop	ar7
	pop	ar6
	pop	ar5
	pop	ar4
	mov	dptr,#_pwm_right
	movx	@dptr,a
	pop	ar5
	pop	ar4
	ljmp	L040023?
L040020?:
;	main.c:1124: if (vy*100<=vy_thres*100/2){
	mov	__mulint_PARM_2,r4
	mov	(__mulint_PARM_2 + 1),r5
	mov	dptr,#0x0064
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	lcall	__mulint
	mov	r2,dpl
	mov	r3,dph
	pop	ar7
	pop	ar6
	pop	ar5
	pop	ar4
	mov	__mulint_PARM_2,_Joystick_Control_sloc2_1_0
	mov	(__mulint_PARM_2 + 1),(_Joystick_Control_sloc2_1_0 + 1)
	mov	dptr,#0x0064
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	push	ar6
	push	ar7
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
	pop	ar7
	pop	ar6
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
	clr	c
	mov	a,r0
	subb	a,r2
	mov	a,r1
	xrl	a,#0x80
	mov	b,r3
	xrl	b,#0x80
	subb	a,b
	jnc	L040067?
	ljmp	L040017?
L040067?:
;	main.c:1125: pwm_left = vy_error*100/(vx_error+vy_error);
	push	ar4
	push	ar5
	mov	__mulint_PARM_2,r6
	mov	(__mulint_PARM_2 + 1),r7
	mov	dptr,#0x0064
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	lcall	__mulint
	mov	r2,dpl
	mov	r3,dph
	pop	ar7
	pop	ar6
	mov	a,r6
	add	a,_Joystick_Control_sloc6_1_0
	mov	__divsint_PARM_2,a
	mov	a,r7
	addc	a,(_Joystick_Control_sloc6_1_0 + 1)
	mov	(__divsint_PARM_2 + 1),a
	mov	dpl,r2
	mov	dph,r3
	push	ar6
	push	ar7
	lcall	__divsint
	mov	r2,dpl
	pop	ar7
	pop	ar6
	pop	ar5
	pop	ar4
	mov	dptr,#_pwm_left
	mov	a,r2
	movx	@dptr,a
;	main.c:1126: pwm_right = vy_error*pwm_corr; 
	mov	dpl,r6
	mov	dph,r7
	push	ar6
	push	ar7
	lcall	___sint2fs
	mov	r2,dpl
	mov	r3,dph
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
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	___fsmul
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar7
	pop	ar6
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	lcall	___fs2uchar
	mov	a,dpl
	pop	ar7
	pop	ar6
	pop	ar5
	pop	ar4
	mov	dptr,#_pwm_right
	movx	@dptr,a
	pop	ar5
	pop	ar4
	ljmp	L040023?
L040017?:
;	main.c:1129: pwm_left = vx_error*100/(vx_error+vy_error);
	push	ar4
	push	ar5
	mov	__mulint_PARM_2,_Joystick_Control_sloc6_1_0
	mov	(__mulint_PARM_2 + 1),(_Joystick_Control_sloc6_1_0 + 1)
	mov	dptr,#0x0064
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	lcall	__mulint
	mov	r2,dpl
	mov	r3,dph
	pop	ar7
	pop	ar6
	mov	a,r6
	add	a,_Joystick_Control_sloc6_1_0
	mov	__divsint_PARM_2,a
	mov	a,r7
	addc	a,(_Joystick_Control_sloc6_1_0 + 1)
	mov	(__divsint_PARM_2 + 1),a
	mov	dpl,r2
	mov	dph,r3
	push	ar6
	push	ar7
	lcall	__divsint
	mov	r2,dpl
	pop	ar7
	pop	ar6
	pop	ar5
	pop	ar4
	mov	dptr,#_pwm_left
	mov	a,r2
	movx	@dptr,a
;	main.c:1130: pwm_right = vx_error*pwm_corr; 
	mov	dpl,_Joystick_Control_sloc6_1_0
	mov	dph,(_Joystick_Control_sloc6_1_0 + 1)
	push	ar6
	push	ar7
	lcall	___sint2fs
	mov	r2,dpl
	mov	r3,dph
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
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	___fsmul
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar7
	pop	ar6
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	lcall	___fs2uchar
	mov	a,dpl
	pop	ar7
	pop	ar6
	pop	ar5
	pop	ar4
	mov	dptr,#_pwm_right
	movx	@dptr,a
;	main.c:1162: return; 
	pop	ar5
	pop	ar4
;	main.c:1130: pwm_right = vx_error*pwm_corr; 
L040023?:
;	main.c:1135: if (vy_err<0){
	mov	a,(_Joystick_Control_sloc0_1_0 + 1)
	jb	acc.7,L040068?
	ret
L040068?:
;	main.c:1136: L_motor_dir = 1; 
	mov	dptr,#_L_motor_dir
	mov	a,#0x01
	movx	@dptr,a
;	main.c:1137: R_motor_dir = 1; 
	mov	dptr,#_R_motor_dir
	mov	a,#0x01
	movx	@dptr,a
;	main.c:1139: if (vx_err>0){
	clr	c
	clr	a
	subb	a,_Joystick_Control_sloc4_1_0
	clr	a
	xrl	a,#0x80
	mov	b,(_Joystick_Control_sloc4_1_0 + 1)
	xrl	b,#0x80
	subb	a,b
	jc	L040069?
	ljmp	L040031?
L040069?:
;	main.c:1140: if (vy*100<=vy_thres*100/2){
	mov	__mulint_PARM_2,r4
	mov	(__mulint_PARM_2 + 1),r5
	mov	dptr,#0x0064
	push	ar6
	push	ar7
	lcall	__mulint
	mov	r2,dpl
	mov	r3,dph
	pop	ar7
	pop	ar6
	mov	__mulint_PARM_2,_Joystick_Control_sloc2_1_0
	mov	(__mulint_PARM_2 + 1),(_Joystick_Control_sloc2_1_0 + 1)
	mov	dptr,#0x0064
	push	ar2
	push	ar3
	push	ar6
	push	ar7
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
	pop	ar7
	pop	ar6
	pop	ar3
	pop	ar2
	clr	c
	mov	a,r0
	subb	a,r2
	mov	a,r1
	xrl	a,#0x80
	mov	b,r3
	xrl	b,#0x80
	subb	a,b
	jnc	L040070?
	ljmp	L040025?
L040070?:
;	main.c:1141: pwm_left = vy_error; 
	mov	dptr,#_pwm_left
	mov	a,r6
	movx	@dptr,a
;	main.c:1142: pwm_right = pwm_corr*vy_error*100/(vx_error+vy_error);
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
	mov	dpl,r6
	mov	dph,r7
	push	ar6
	push	ar7
	lcall	___sint2fs
	mov	r2,dpl
	mov	r3,dph
	mov	r0,b
	mov	r1,a
	push	ar2
	push	ar3
	push	ar0
	push	ar1
	mov	dpl,_Joystick_Control_sloc5_1_0
	mov	dph,(_Joystick_Control_sloc5_1_0 + 1)
	mov	b,(_Joystick_Control_sloc5_1_0 + 2)
	mov	a,(_Joystick_Control_sloc5_1_0 + 3)
	lcall	___fsmul
	mov	r2,dpl
	mov	r3,dph
	mov	r0,b
	mov	r1,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	push	ar2
	push	ar3
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
	pop	ar7
	pop	ar6
	mov	a,r6
	add	a,_Joystick_Control_sloc6_1_0
	mov	dpl,a
	mov	a,r7
	addc	a,(_Joystick_Control_sloc6_1_0 + 1)
	mov	dph,a
	lcall	___sint2fs
	mov	r2,dpl
	mov	r3,dph
	mov	r0,b
	mov	r1,a
	push	ar2
	push	ar3
	push	ar0
	push	ar1
	mov	dpl,_Joystick_Control_sloc5_1_0
	mov	dph,(_Joystick_Control_sloc5_1_0 + 1)
	mov	b,(_Joystick_Control_sloc5_1_0 + 2)
	mov	a,(_Joystick_Control_sloc5_1_0 + 3)
	lcall	___fsdiv
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
	lcall	___fs2uchar
	mov	a,dpl
	mov	dptr,#_pwm_right
	movx	@dptr,a
	ret
L040025?:
;	main.c:1145: pwm_left = vx_error; 
	mov	dptr,#_pwm_left
	mov	a,_Joystick_Control_sloc6_1_0
	movx	@dptr,a
;	main.c:1146: pwm_right = pwm_corr*vx_error*100/(vx_error+vy_error);
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
	mov	dpl,_Joystick_Control_sloc6_1_0
	mov	dph,(_Joystick_Control_sloc6_1_0 + 1)
	push	ar6
	push	ar7
	lcall	___sint2fs
	mov	r2,dpl
	mov	r3,dph
	mov	r0,b
	mov	r1,a
	push	ar2
	push	ar3
	push	ar0
	push	ar1
	mov	dpl,_Joystick_Control_sloc5_1_0
	mov	dph,(_Joystick_Control_sloc5_1_0 + 1)
	mov	b,(_Joystick_Control_sloc5_1_0 + 2)
	mov	a,(_Joystick_Control_sloc5_1_0 + 3)
	lcall	___fsmul
	mov	r2,dpl
	mov	r3,dph
	mov	r0,b
	mov	r1,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	push	ar2
	push	ar3
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
	pop	ar7
	pop	ar6
	mov	a,r6
	add	a,_Joystick_Control_sloc6_1_0
	mov	dpl,a
	mov	a,r7
	addc	a,(_Joystick_Control_sloc6_1_0 + 1)
	mov	dph,a
	lcall	___sint2fs
	mov	r2,dpl
	mov	r3,dph
	mov	r0,b
	mov	r1,a
	push	ar2
	push	ar3
	push	ar0
	push	ar1
	mov	dpl,_Joystick_Control_sloc5_1_0
	mov	dph,(_Joystick_Control_sloc5_1_0 + 1)
	mov	b,(_Joystick_Control_sloc5_1_0 + 2)
	mov	a,(_Joystick_Control_sloc5_1_0 + 3)
	lcall	___fsdiv
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
	lcall	___fs2uchar
	mov	a,dpl
	mov	dptr,#_pwm_right
	movx	@dptr,a
	ret
L040031?:
;	main.c:1151: if (vy*100<=vy_thres*100/2){
	mov	__mulint_PARM_2,r4
	mov	(__mulint_PARM_2 + 1),r5
	mov	dptr,#0x0064
	push	ar6
	push	ar7
	lcall	__mulint
	mov	r2,dpl
	mov	r3,dph
	pop	ar7
	pop	ar6
	mov	__mulint_PARM_2,_Joystick_Control_sloc2_1_0
	mov	(__mulint_PARM_2 + 1),(_Joystick_Control_sloc2_1_0 + 1)
	mov	dptr,#0x0064
	push	ar2
	push	ar3
	push	ar6
	push	ar7
	lcall	__mulint
	mov	r4,dpl
	mov	r5,dph
	mov	__divsint_PARM_2,#0x02
	clr	a
	mov	(__divsint_PARM_2 + 1),a
	mov	dpl,r4
	mov	dph,r5
	lcall	__divsint
	mov	r4,dpl
	mov	r5,dph
	pop	ar7
	pop	ar6
	pop	ar3
	pop	ar2
	clr	c
	mov	a,r4
	subb	a,r2
	mov	a,r5
	xrl	a,#0x80
	mov	b,r3
	xrl	b,#0x80
	subb	a,b
	jnc	L040071?
	ljmp	L040028?
L040071?:
;	main.c:1152: pwm_left = vy_error*100/(vx_error+vy_error);
	mov	__mulint_PARM_2,r6
	mov	(__mulint_PARM_2 + 1),r7
	mov	dptr,#0x0064
	push	ar6
	push	ar7
	lcall	__mulint
	mov	r2,dpl
	mov	r3,dph
	pop	ar7
	pop	ar6
	mov	a,r6
	add	a,_Joystick_Control_sloc6_1_0
	mov	__divsint_PARM_2,a
	mov	a,r7
	addc	a,(_Joystick_Control_sloc6_1_0 + 1)
	mov	(__divsint_PARM_2 + 1),a
	mov	dpl,r2
	mov	dph,r3
	push	ar6
	push	ar7
	lcall	__divsint
	mov	r2,dpl
	pop	ar7
	pop	ar6
	mov	dptr,#_pwm_left
	mov	a,r2
	movx	@dptr,a
;	main.c:1153: pwm_right =pwm_corr*vy_error; 
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
	mov	dpl,r6
	mov	dph,r7
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
	ret
L040028?:
;	main.c:1156: pwm_left = vx_error*100/(vx_error+vy_error);
	mov	__mulint_PARM_2,_Joystick_Control_sloc6_1_0
	mov	(__mulint_PARM_2 + 1),(_Joystick_Control_sloc6_1_0 + 1)
	mov	dptr,#0x0064
	push	ar6
	push	ar7
	lcall	__mulint
	mov	r2,dpl
	mov	r3,dph
	pop	ar7
	pop	ar6
	mov	a,r6
	add	a,_Joystick_Control_sloc6_1_0
	mov	__divsint_PARM_2,a
	mov	a,r7
	addc	a,(_Joystick_Control_sloc6_1_0 + 1)
	mov	(__divsint_PARM_2 + 1),a
	mov	dpl,r2
	mov	dph,r3
	lcall	__divsint
	mov	r2,dpl
	mov	dptr,#_pwm_left
	mov	a,r2
	movx	@dptr,a
;	main.c:1157: pwm_right = pwm_corr*vx_error; 
	mov	dptr,#_pwm_corr
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
	mov	dpl,_Joystick_Control_sloc6_1_0
	mov	dph,(_Joystick_Control_sloc6_1_0 + 1)
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
;	main.c:1162: return; 
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;pick_char                 Allocated with name '_main_pick_char_1_237'
;c                         Allocated with name '_main_c_1_237'
;vx                        Allocated with name '_main_vx_1_237'
;vy                        Allocated with name '_main_vy_1_237'
;auto_mode                 Allocated with name '_main_auto_mode_1_237'
;------------------------------------------------------------
;	main.c:1165: void main (void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	main.c:1168: xdata int vx = 0, vy = 0; 
	mov	dptr,#_main_vx_1_237
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_main_vy_1_237
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	main.c:1169: xdata int auto_mode = 0;
	mov	dptr,#_main_auto_mode_1_237
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	main.c:1170: char pick_char = '0';
	mov	_main_pick_char_1_237,#0x30
;	main.c:1173: Init_all();
	lcall	_Init_all
;	main.c:1174: BMM150_Init();
	lcall	_BMM150_Init
;	main.c:1175: waitms(500);
	mov	dptr,#0x01F4
	lcall	_waitms
;	main.c:1176: printf("\r\nEFM8LB12 JDY-40 Slave Test.\r\n");
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
;	main.c:1177: UART1_Init(9600);
	mov	dptr,#0x2580
	clr	a
	mov	b,a
	lcall	_UART1_Init
;	main.c:1179: ReceptionOff();
	lcall	_ReceptionOff
;	main.c:1182: SendATCommand("AT+VER\r\n");
	mov	dptr,#__str_13
	mov	b,#0x80
	lcall	_SendATCommand
;	main.c:1183: SendATCommand("AT+BAUD\r\n");
	mov	dptr,#__str_14
	mov	b,#0x80
	lcall	_SendATCommand
;	main.c:1184: SendATCommand("AT+RFID\r\n");
	mov	dptr,#__str_15
	mov	b,#0x80
	lcall	_SendATCommand
;	main.c:1185: SendATCommand("AT+DVID\r\n");
	mov	dptr,#__str_16
	mov	b,#0x80
	lcall	_SendATCommand
;	main.c:1186: SendATCommand("AT+RFC002\r\n");
	mov	dptr,#__str_17
	mov	b,#0x80
	lcall	_SendATCommand
;	main.c:1187: SendATCommand("AT+POWE\r\n");
	mov	dptr,#__str_18
	mov	b,#0x80
	lcall	_SendATCommand
;	main.c:1188: SendATCommand("AT+CLSS\r\n");
	mov	dptr,#__str_19
	mov	b,#0x80
	lcall	_SendATCommand
;	main.c:1189: SendATCommand("AT+DVIDEF11\r\n");  
	mov	dptr,#__str_20
	mov	b,#0x80
	lcall	_SendATCommand
;	main.c:1192: L_bridge_1 = 0; 
	clr	_P2_1
;	main.c:1193: L_bridge_2 = 0; 
	clr	_P2_2
;	main.c:1194: R_bridge_1 = 0; 
	clr	_P2_4
;	main.c:1195: R_bridge_2 = 0; 
	clr	_P2_3
;	main.c:1197: while(1)
L041016?:
;	main.c:1201: if(pick_char=='1'){
	mov	a,#0x31
	cjne	a,_main_pick_char_1_237,L041002?
;	main.c:1202: servo_pick();
	lcall	_servo_pick
;	main.c:1203: waitms(1000);
	mov	dptr,#0x03E8
	lcall	_waitms
;	main.c:1204: pick_char = '0';
	mov	_main_pick_char_1_237,#0x30
L041002?:
;	main.c:1207: if(auto_mode){
	mov	dptr,#_main_auto_mode_1_237
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	orl	a,r2
	jz	L041004?
;	main.c:1208: Auto_mode_slave();
	lcall	_Auto_mode_slave
;	main.c:1209: auto_mode = 0;
	mov	dptr,#_main_auto_mode_1_237
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
L041004?:
;	main.c:1211: curr_angle = Read_angle();
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
;	main.c:1212: printf("weight: %u\r\n",weight);
	mov	dptr,#_weight
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
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	main.c:1213: if(RXU1()) // Something has arrived
	lcall	_RXU1
	jnc	L041016?
;	main.c:1215: c=getchar1();
	lcall	_getchar1
	mov	r2,dpl
;	main.c:1216: if(c=='!') // Master is sending message
	cjne	r2,#0x21,L041031?
	sjmp	L041032?
L041031?:
	ljmp	L041011?
L041032?:
;	main.c:1218: getstr1(buff, sizeof(buff)-1);
	mov	_getstr1_PARM_2,#0x13
	mov	dptr,#_buff
	mov	b,#0x40
	lcall	_getstr1
;	main.c:1219: if(strlen(buff)==11)
	mov	dptr,#_buff
	mov	b,#0x40
	lcall	_strlen
	mov	r3,dpl
	mov	r4,dph
	cjne	r3,#0x0B,L041033?
	cjne	r4,#0x00,L041033?
	sjmp	L041034?
L041033?:
	ljmp	L041006?
L041034?:
;	main.c:1221: printf("Master says: %s\r\n", buff);
	mov	a,#_buff
	push	acc
	mov	a,#(_buff >> 8)
	push	acc
	mov	a,#0x40
	push	acc
	mov	a,#__str_22
	push	acc
	mov	a,#(__str_22 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
;	main.c:1222: sscanf(buff, "%03d,%03d,%c,%01d", &vx, &vy, &pick_char, &auto_mode);
	mov	a,#_main_auto_mode_1_237
	push	acc
	mov	a,#(_main_auto_mode_1_237 >> 8)
	push	acc
	clr	a
	push	acc
	mov	a,#_main_pick_char_1_237
	push	acc
	mov	a,#(_main_pick_char_1_237 >> 8)
	push	acc
	mov	a,#0x40
	push	acc
	mov	a,#_main_vy_1_237
	push	acc
	mov	a,#(_main_vy_1_237 >> 8)
	push	acc
	clr	a
	push	acc
	mov	a,#_main_vx_1_237
	push	acc
	mov	a,#(_main_vx_1_237 >> 8)
	push	acc
	clr	a
	push	acc
	mov	a,#__str_23
	push	acc
	mov	a,#(__str_23 >> 8)
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
;	main.c:1223: printf("Joystick Received: Vx = %d, Vy = %d, Order = %c, Auto = %d\r\n", vx, vy, pick_char, auto_mode);
	mov	a,_main_pick_char_1_237
	mov	r3,a
	rlc	a
	subb	a,acc
	mov	r4,a
	mov	dptr,#_main_auto_mode_1_237
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	push	ar3
	push	ar4
	mov	dptr,#_main_vy_1_237
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	dptr,#_main_vx_1_237
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	a,#__str_24
	push	acc
	mov	a,#(__str_24 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf5
	mov	sp,a
;	main.c:1224: Joystick_Control(&vx, &vy);
	mov	_Joystick_Control_PARM_2,#_main_vy_1_237
	mov	(_Joystick_Control_PARM_2 + 1),#(_main_vy_1_237 >> 8)
	mov	(_Joystick_Control_PARM_2 + 2),#0x00
	mov	dptr,#_main_vx_1_237
	mov	b,#0x00
	lcall	_Joystick_Control
	ljmp	L041016?
L041006?:
;	main.c:1227: printf("*** BAD MESSAGE ***: %s\r\n", buff);
	mov	a,#_buff
	push	acc
	mov	a,#(_buff >> 8)
	push	acc
	mov	a,#0x40
	push	acc
	mov	a,#__str_25
	push	acc
	mov	a,#(__str_25 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
	ljmp	L041016?
L041011?:
;	main.c:1230: else if(c=='@') // Master wants slave data
	cjne	r2,#0x40,L041035?
	sjmp	L041036?
L041035?:
	ljmp	L041016?
L041036?:
;	main.c:1232: sprintf(buff, "0,00,%04ld,%05d,%4.1f\n", freq100, weight, curr_angle);
	mov	dptr,#_curr_angle
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
	mov	a,#__str_26
	push	acc
	mov	a,#(__str_26 >> 8)
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
	add	a,#0xf0
	mov	sp,a
;	main.c:1233: printf("%s\r\n",buff);
	mov	a,#_buff
	push	acc
	mov	a,#(_buff >> 8)
	push	acc
	mov	a,#0x40
	push	acc
	mov	a,#__str_27
	push	acc
	mov	a,#(__str_27 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
;	main.c:1234: waitms(5); // The radio seems to need this delay...
	mov	dptr,#0x0005
	lcall	_waitms
;	main.c:1235: sendstr1(buff);
	mov	dptr,#_buff
	mov	b,#0x40
	lcall	_sendstr1
	ljmp	L041016?
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
	db 0x01	; 1 
__xinit__servo_arm:
	db 0x01	; 1 
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
__xinit__mea_yes:
	db 0x01	;  1 
__xinit__weight:
	db 0x00,0x00	; 0

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
	db 'DONE! Chip ID = 0x%02X'
	db 0x0D
	db 0x0A
	db 0x00
__str_3:
	db 'BMM150 initialized successfully! Chip ID: 0x%02X'
	db 0x0D
	db 0x0A
	db 0x00
__str_4:
	db 'Command: %s'
	db 0x00
__str_5:
	db 'Response: %s'
	db 0x0D
	db 0x0A
	db 0x00
__str_6:
	db 'AT+DVID0000'
	db 0x0D
	db 0x0A
	db 0x00
__str_7:
	db 'master_messgae_auto_mode: %s'
	db 0x0D
	db 0x0A
	db 0x00
__str_8:
	db '%03d,%03d,%01d,%01d'
	db 0x00
__str_9:
	db '%01d,%02d,%ld,%05d,%4.1f'
	db 0x0A
	db 0x00
__str_10:
	db 'f:%04ld, d1:%d, d2:%d, bound_dectect: %d'
	db 0x0D
	db 0x0A
	db 0x00
__str_11:
	db 'Auto mode finished!'
	db 0x0D
	db 0x0A
	db 0x00
__str_12:
	db 0x0D
	db 0x0A
	db 'EFM8LB12 JDY-40 Slave Test.'
	db 0x0D
	db 0x0A
	db 0x00
__str_13:
	db 'AT+VER'
	db 0x0D
	db 0x0A
	db 0x00
__str_14:
	db 'AT+BAUD'
	db 0x0D
	db 0x0A
	db 0x00
__str_15:
	db 'AT+RFID'
	db 0x0D
	db 0x0A
	db 0x00
__str_16:
	db 'AT+DVID'
	db 0x0D
	db 0x0A
	db 0x00
__str_17:
	db 'AT+RFC002'
	db 0x0D
	db 0x0A
	db 0x00
__str_18:
	db 'AT+POWE'
	db 0x0D
	db 0x0A
	db 0x00
__str_19:
	db 'AT+CLSS'
	db 0x0D
	db 0x0A
	db 0x00
__str_20:
	db 'AT+DVIDEF11'
	db 0x0D
	db 0x0A
	db 0x00
__str_21:
	db 'weight: %u'
	db 0x0D
	db 0x0A
	db 0x00
__str_22:
	db 'Master says: %s'
	db 0x0D
	db 0x0A
	db 0x00
__str_23:
	db '%03d,%03d,%c,%01d'
	db 0x00
__str_24:
	db 'Joystick Received: Vx = %d, Vy = %d, Order = %c, Auto = %d'
	db 0x0D
	db 0x0A
	db 0x00
__str_25:
	db '*** BAD MESSAGE ***: %s'
	db 0x0D
	db 0x0A
	db 0x00
__str_26:
	db '0,00,%04ld,%05d,%4.1f'
	db 0x0A
	db 0x00
__str_27:
	db '%s'
	db 0x0D
	db 0x0A
	db 0x00

	CSEG

end
