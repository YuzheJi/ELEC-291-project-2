;--------------------------------------------------------
; File Created by C51
; Version 1.0.0 #1170 (Feb 16 2022) (MSVC)
; This file was generated Sat Mar 22 00:16:27 2025
;--------------------------------------------------------
$name bmm150
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
	public _bmm150_aux_mag_data_PARM_3
	public _bmm150_aux_mag_data_PARM_2
	public _bmm150_read_mag_data_PARM_2
	public _bmm150_get_sensor_settings_PARM_2
	public _bmm150_set_sensor_settings_PARM_3
	public _bmm150_set_sensor_settings_PARM_2
	public _bmm150_set_presetmode_PARM_2
	public _bmm150_get_op_mode_PARM_2
	public _bmm150_set_op_mode_PARM_2
	public _bmm150_set_regs_PARM_4
	public _bmm150_set_regs_PARM_3
	public _bmm150_set_regs_PARM_2
	public _bmm150_init
	public _bmm150_set_regs
	public _bmm150_get_regs
	public _bmm150_soft_reset
	public _bmm150_set_op_mode
	public _bmm150_get_op_mode
	public _bmm150_set_presetmode
	public _bmm150_set_sensor_settings
	public _bmm150_get_sensor_settings
	public _bmm150_read_mag_data
	public _bmm150_get_interrupt_status
	public _bmm150_aux_mag_data
;--------------------------------------------------------
; Special Function Registers
;--------------------------------------------------------
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	rbank0 segment data overlay
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	rseg R_DSEG
_bmm150_init_dev_1_64:
	ds 3
_bmm150_init_chip_id_1_65:
	ds 1
_bmm150_set_regs_PARM_2:
	ds 3
_bmm150_set_regs_PARM_3:
	ds 4
_bmm150_set_regs_PARM_4:
	ds 3
_bmm150_set_regs_reg_addr_1_69:
	ds 1
_bmm150_set_regs_rslt_1_70:
	ds 1
_bmm150_set_regs_sloc0_1_0:
	ds 3
_bmm150_soft_reset_reg_data_1_79:
	ds 1
_bmm150_set_op_mode_PARM_2:
	ds 3
_bmm150_get_op_mode_PARM_2:
	ds 3
_bmm150_get_op_mode_op_mode_1_88:
	ds 3
_bmm150_get_op_mode_rslt_1_89:
	ds 1
_bmm150_get_op_mode_reg_data_1_89:
	ds 1
_bmm150_set_presetmode_PARM_2:
	ds 3
_bmm150_set_sensor_settings_PARM_2:
	ds 3
_bmm150_set_sensor_settings_PARM_3:
	ds 3
_bmm150_get_sensor_settings_PARM_2:
	ds 3
_bmm150_get_sensor_settings_setting_1_105:
	ds 8
_bmm150_read_mag_data_PARM_2:
	ds 3
_bmm150_read_mag_data_mag_data_1_107:
	ds 3
_bmm150_read_mag_data_rslt_1_108:
	ds 1
_bmm150_read_mag_data_msb_data_1_108:
	ds 2
_bmm150_read_mag_data_reg_data_1_108:
	ds 8
_bmm150_read_mag_data_raw_mag_data_1_108:
	ds 8
_bmm150_get_interrupt_status_interrupt_status_1_111:
	ds 1
_bmm150_get_interrupt_status_data_ready_status_1_111:
	ds 1
_bmm150_aux_mag_data_PARM_2:
	ds 3
_bmm150_aux_mag_data_PARM_3:
	ds 3
_bmm150_aux_mag_data_aux_data_1_114:
	ds 3
_bmm150_aux_mag_data_rslt_1_115:
	ds 1
_bmm150_aux_mag_data_raw_mag_data_1_115:
	ds 8
_bmm150_aux_mag_data_sloc0_1_0:
	ds 3
_set_power_control_bit_PARM_2:
	ds 3
_set_power_control_bit_reg_data_1_122:
	ds 1
_read_trim_registers_dev_1_125:
	ds 3
_read_trim_registers_rslt_1_126:
	ds 1
_read_trim_registers_trim_x1y1_1_126:
	ds 2
_read_trim_registers_trim_xyz_data_1_126:
	ds 4
_read_trim_registers_trim_xy1xy2_1_126:
	ds 10
_read_trim_registers_temp_msb_1_126:
	ds 2
_read_trim_registers_sloc0_1_0:
	ds 3
_write_op_mode_PARM_2:
	ds 3
_write_op_mode_reg_data_1_131:
	ds 1
_set_xy_rep_PARM_2:
	ds 3
_set_xy_rep_rep_xy_1_138:
	ds 1
_set_z_rep_PARM_2:
	ds 3
_set_z_rep_rep_z_1_140:
	ds 1
_set_odr_PARM_2:
	ds 3
_set_odr_reg_data_1_142:
	ds 1
_set_odr_xyz_rep_PARM_2:
	ds 3
_set_control_measurement_xyz_PARM_2:
	ds 3
_set_control_measurement_xyz_reg_data_1_149:
	ds 1
_mode_settings_PARM_2:
	ds 3
_mode_settings_PARM_3:
	ds 3
_interrupt_pin_settings_PARM_2:
	ds 3
_interrupt_pin_settings_PARM_3:
	ds 3
_interrupt_pin_settings_desired_settings_1_163:
	ds 2
_interrupt_pin_settings_reg_data_1_164:
	ds 1
_interrupt_pin_settings_int_settings_1_164:
	ds 11
_interrupt_pin_settings_sloc0_1_0:
	ds 3
_interrupt_config_PARM_2:
	ds 3
_interrupt_config_PARM_3:
	ds 3
_interrupt_config_desired_settings_1_171:
	ds 2
_interrupt_config_reg_data_1_172:
	ds 1
_interrupt_config_int_settings_1_172:
	ds 11
_interrupt_config_sloc0_1_0:
	ds 3
_interrupt_threshold_settings_PARM_2:
	ds 3
_interrupt_threshold_settings_PARM_3:
	ds 3
_interrupt_threshold_settings_reg_data_1_179:
	ds 1
_compensate_x_PARM_2:
	ds 2
_compensate_x_PARM_3:
	ds 3
_compensate_x_mag_data_x_1_182:
	ds 2
_compensate_x_retval_1_183:
	ds 2
_compensate_x_process_comp_x0_1_183:
	ds 2
_compensate_x_process_comp_x3_1_183:
	ds 4
_compensate_x_process_comp_x4_1_183:
	ds 4
_compensate_x_sloc0_1_0:
	ds 3
_compensate_x_sloc1_1_0:
	ds 4
_compensate_y_PARM_2:
	ds 2
_compensate_y_PARM_3:
	ds 3
_compensate_y_mag_data_y_1_191:
	ds 2
_compensate_y_retval_1_192:
	ds 2
_compensate_y_process_comp_y0_1_192:
	ds 2
_compensate_y_process_comp_y3_1_192:
	ds 4
_compensate_y_process_comp_y4_1_192:
	ds 4
_compensate_y_process_comp_y6_1_192:
	ds 4
_compensate_y_sloc0_1_0:
	ds 4
_compensate_z_PARM_2:
	ds 2
_compensate_z_PARM_3:
	ds 3
_compensate_z_mag_data_z_1_200:
	ds 2
_compensate_z_process_comp_z0_1_201:
	ds 2
_compensate_z_process_comp_z1_1_201:
	ds 4
_compensate_z_process_comp_z2_1_201:
	ds 4
_compensate_z_sloc0_1_0:
	ds 2
_compensate_z_sloc1_1_0:
	ds 2
_compensate_z_sloc2_1_0:
	ds 2
_perform_normal_self_test_self_test_bit_1_209:
	ds 1
_enable_normal_self_test_PARM_2:
	ds 3
_enable_normal_self_test_self_test_enable_1_211:
	ds 3
_enable_normal_self_test_rslt_1_212:
	ds 1
_enable_normal_self_test_reg_data_1_212:
	ds 1
_validate_normal_self_test_self_test_rslt_1_216:
	ds 5
_adv_self_test_settings_settings_1_223:
	ds 17
_adv_self_test_measurement_PARM_2:
	ds 3
_adv_self_test_measurement_PARM_3:
	ds 3
_adv_self_test_measurement_rslt_1_227:
	ds 1
_adv_self_test_measurement_settings_1_227:
	ds 17
_adv_self_test_measurement_mag_data_1_227:
	ds 6
_adv_self_test_measurement_sloc0_1_0:
	ds 2
_set_adv_self_test_current_PARM_2:
	ds 3
_set_adv_self_test_current_reg_data_1_232:
	ds 1
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	rseg	R_OSEG
	rseg	R_OSEG
_are_settings_changed_PARM_2:
	ds 2
	rseg	R_OSEG
_parse_setting_PARM_2:
	ds 3
_parse_setting_reg_data_1_161:
	ds 3
_parse_setting_sloc0_1_0:
	ds 3
_parse_setting_sloc1_1_0:
	ds 3
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
; Interrupt vectors
;--------------------------------------------------------
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
;Allocation info for local variables in function 'bmm150_init'
;------------------------------------------------------------
;dev                       Allocated with name '_bmm150_init_dev_1_64'
;rslt                      Allocated to registers r5 
;chip_id                   Allocated with name '_bmm150_init_chip_id_1_65'
;------------------------------------------------------------
;	bmm150.c:571: int8_t bmm150_init(struct bmm150_dev *dev)
;	-----------------------------------------
;	 function bmm150_init
;	-----------------------------------------
_bmm150_init:
	using	0
	mov	_bmm150_init_dev_1_64,dpl
	mov	(_bmm150_init_dev_1_64 + 1),dph
	mov	(_bmm150_init_dev_1_64 + 2),b
;	bmm150.c:574: uint8_t chip_id = 0;
	mov	_bmm150_init_chip_id_1_65,#0x00
;	bmm150.c:577: rslt = set_power_control_bit(BMM150_POWER_CNTRL_ENABLE, dev);
	mov	_set_power_control_bit_PARM_2,_bmm150_init_dev_1_64
	mov	(_set_power_control_bit_PARM_2 + 1),(_bmm150_init_dev_1_64 + 1)
	mov	(_set_power_control_bit_PARM_2 + 2),(_bmm150_init_dev_1_64 + 2)
	mov	dpl,#0x01
	lcall	_set_power_control_bit
;	bmm150.c:579: if (rslt == BMM150_OK)
	mov	a,dpl
	mov	r5,a
	jz	L002012?
	ljmp	L002006?
L002012?:
;	bmm150.c:582: dev->delay_us(BMM150_START_UP_TIME, dev->intf_ptr);
	mov	a,#0x0A
	add	a,_bmm150_init_dev_1_64
	mov	r6,a
	clr	a
	addc	a,(_bmm150_init_dev_1_64 + 1)
	mov	r7,a
	mov	r0,(_bmm150_init_dev_1_64 + 2)
	mov	dpl,r6
	mov	dph,r7
	mov	b,r0
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	a,#0x02
	add	a,_bmm150_init_dev_1_64
	mov	r0,a
	clr	a
	addc	a,(_bmm150_init_dev_1_64 + 1)
	mov	r1,a
	mov	r2,(_bmm150_init_dev_1_64 + 2)
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	lcall	__gptrget
	mov	r0,a
	inc	dptr
	lcall	__gptrget
	mov	r1,a
	inc	dptr
	lcall	__gptrget
	mov	r2,a
	push	ar6
	push	ar7
	push	ar0
	push	ar1
	push	ar2
	mov	a,#L002013?
	push	acc
	mov	a,#(L002013? >> 8)
	push	acc
	push	ar6
	push	ar7
	mov	dptr,#0x0BB8
	clr	a
	mov	b,a
	ret
L002013?:
	dec	sp
	dec	sp
	dec	sp
	pop	ar7
	pop	ar6
;	bmm150.c:585: rslt = bmm150_get_regs(BMM150_REG_CHIP_ID, &chip_id, 1, dev);
	push	_bmm150_init_dev_1_64
	push	(_bmm150_init_dev_1_64 + 1)
	push	(_bmm150_init_dev_1_64 + 2)
	mov	a,#0x01
	push	acc
	clr	a
	push	acc
	push	acc
	push	acc
	mov	a,#_bmm150_init_chip_id_1_65
	push	acc
	mov	a,#(_bmm150_init_chip_id_1_65 >> 8)
	push	acc
	mov	a,#0x40
	push	acc
	mov	dpl,#0x40
	lcall	_bmm150_get_regs
	mov	r5,dpl
	mov	a,sp
	add	a,#0xf6
	mov	sp,a
;	bmm150.c:588: if (rslt == BMM150_OK)
	mov	a,r5
;	bmm150.c:591: if (chip_id == BMM150_CHIP_ID)
	jnz	L002006?
	mov	r2,_bmm150_init_chip_id_1_65
	mov	r3,a
	cjne	r2,#0x32,L002006?
	cjne	r3,#0x00,L002006?
;	bmm150.c:593: dev->chip_id = chip_id;
	mov	dpl,_bmm150_init_dev_1_64
	mov	dph,(_bmm150_init_dev_1_64 + 1)
	mov	b,(_bmm150_init_dev_1_64 + 2)
	mov	a,_bmm150_init_chip_id_1_65
	lcall	__gptrput
;	bmm150.c:596: rslt = read_trim_registers(dev);
	mov	dpl,_bmm150_init_dev_1_64
	mov	dph,(_bmm150_init_dev_1_64 + 1)
	mov	b,(_bmm150_init_dev_1_64 + 2)
	lcall	_read_trim_registers
	mov	r5,dpl
L002006?:
;	bmm150.c:601: return rslt;
	mov	dpl,r5
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'bmm150_set_regs'
;------------------------------------------------------------
;reg_data                  Allocated with name '_bmm150_set_regs_PARM_2'
;len                       Allocated with name '_bmm150_set_regs_PARM_3'
;dev                       Allocated with name '_bmm150_set_regs_PARM_4'
;reg_addr                  Allocated with name '_bmm150_set_regs_reg_addr_1_69'
;rslt                      Allocated with name '_bmm150_set_regs_rslt_1_70'
;sloc0                     Allocated with name '_bmm150_set_regs_sloc0_1_0'
;------------------------------------------------------------
;	bmm150.c:608: int8_t bmm150_set_regs(uint8_t reg_addr, const uint8_t *reg_data, uint32_t len, struct bmm150_dev *dev)
;	-----------------------------------------
;	 function bmm150_set_regs
;	-----------------------------------------
_bmm150_set_regs:
	mov	_bmm150_set_regs_reg_addr_1_69,dpl
;	bmm150.c:613: rslt = null_ptr_check(dev);
	mov	dpl,_bmm150_set_regs_PARM_4
	mov	dph,(_bmm150_set_regs_PARM_4 + 1)
	mov	b,(_bmm150_set_regs_PARM_4 + 2)
	lcall	_null_ptr_check
;	bmm150.c:616: if ((rslt == BMM150_OK) && (reg_data != NULL) && (len != 0))
	mov	a,dpl
	mov	_bmm150_set_regs_rslt_1_70,a
	jz	L003011?
	ljmp	L003002?
L003011?:
	clr	a
	cjne	a,_bmm150_set_regs_PARM_2,L003012?
	clr	a
	cjne	a,(_bmm150_set_regs_PARM_2 + 1),L003012?
	clr	a
	cjne	a,(_bmm150_set_regs_PARM_2 + 2),L003012?
	ljmp	L003002?
L003012?:
	mov	a,_bmm150_set_regs_PARM_3
	orl	a,(_bmm150_set_regs_PARM_3 + 1)
	orl	a,(_bmm150_set_regs_PARM_3 + 2)
	orl	a,(_bmm150_set_regs_PARM_3 + 3)
	jnz	L003013?
	ljmp	L003002?
L003013?:
;	bmm150.c:623: dev->intf_rslt = dev->write(reg_addr, reg_data, len, dev->intf_ptr);
	mov	r7,_bmm150_set_regs_PARM_4
	mov	r0,(_bmm150_set_regs_PARM_4 + 1)
	mov	r1,(_bmm150_set_regs_PARM_4 + 2)
	mov	a,#0x05
	add	a,r7
	mov	_bmm150_set_regs_sloc0_1_0,a
	clr	a
	addc	a,r0
	mov	(_bmm150_set_regs_sloc0_1_0 + 1),a
	mov	(_bmm150_set_regs_sloc0_1_0 + 2),r1
	mov	a,#0x08
	add	a,r7
	mov	r5,a
	clr	a
	addc	a,r0
	mov	r6,a
	mov	ar2,r1
	mov	dpl,r5
	mov	dph,r6
	mov	b,r2
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	mov	a,#0x02
	add	a,r7
	mov	r7,a
	clr	a
	addc	a,r0
	mov	r0,a
	mov	dpl,r7
	mov	dph,r0
	mov	b,r1
	lcall	__gptrget
	mov	r7,a
	inc	dptr
	lcall	__gptrget
	mov	r0,a
	inc	dptr
	lcall	__gptrget
	mov	r1,a
	push	ar6
	push	ar7
	push	ar0
	push	ar1
	push	_bmm150_set_regs_PARM_3
	push	(_bmm150_set_regs_PARM_3 + 1)
	push	(_bmm150_set_regs_PARM_3 + 2)
	push	(_bmm150_set_regs_PARM_3 + 3)
	push	_bmm150_set_regs_PARM_2
	push	(_bmm150_set_regs_PARM_2 + 1)
	push	(_bmm150_set_regs_PARM_2 + 2)
	mov	a,#L003014?
	push	acc
	mov	a,#(L003014? >> 8)
	push	acc
	push	ar5
	push	ar6
	mov	dpl,_bmm150_set_regs_reg_addr_1_69
	ret
L003014?:
	mov	r5,dpl
	mov	a,sp
	add	a,#0xf6
	mov	sp,a
	pop	ar6
	mov	dpl,_bmm150_set_regs_sloc0_1_0
	mov	dph,(_bmm150_set_regs_sloc0_1_0 + 1)
	mov	b,(_bmm150_set_regs_sloc0_1_0 + 2)
	mov	a,r5
	lcall	__gptrput
	sjmp	L003003?
L003002?:
;	bmm150.c:627: rslt = BMM150_E_NULL_PTR;
	mov	_bmm150_set_regs_rslt_1_70,#0xFF
L003003?:
;	bmm150.c:630: return rslt;
	mov	dpl,_bmm150_set_regs_rslt_1_70
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'bmm150_get_regs'
;------------------------------------------------------------
;reg_data                  Allocated to stack - offset -5
;len                       Allocated to stack - offset -9
;dev                       Allocated to stack - offset -12
;reg_addr                  Allocated to stack - offset 1
;rslt                      Allocated to stack - offset 2
;sloc0                     Allocated to stack - offset 3
;------------------------------------------------------------
;	bmm150.c:636: int8_t bmm150_get_regs(uint8_t reg_addr, uint8_t *reg_data, uint32_t len, struct bmm150_dev *dev) __reentrant
;	-----------------------------------------
;	 function bmm150_get_regs
;	-----------------------------------------
_bmm150_get_regs:
	push	_bp
	mov	_bp,sp
	push	dpl
	mov	a,sp
	add	a,#0x05
	mov	sp,a
;	bmm150.c:641: rslt = null_ptr_check(dev);
	mov	a,_bp
	add	a,#0xf4
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_null_ptr_check
	mov	r3,dpl
	mov	r0,_bp
	inc	r0
	inc	r0
	mov	@r0,ar3
;	bmm150.c:644: if ((rslt == BMM150_OK) && (reg_data != NULL))
	mov	r0,_bp
	inc	r0
	inc	r0
	mov	a,@r0
	jz	L004012?
	ljmp	L004004?
L004012?:
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	cjne	@r0,#0x00,L004013?
	inc	r0
	cjne	@r0,#0x00,L004013?
	inc	r0
	cjne	@r0,#0x00,L004013?
	ljmp	L004004?
L004013?:
;	bmm150.c:646: if (dev->intf != BMM150_I2C_INTF)
	mov	a,_bp
	add	a,#0xf4
	mov	r0,a
	mov	ar7,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar2,@r0
	mov	a,#0x01
	add	a,r7
	mov	r4,a
	clr	a
	addc	a,r3
	mov	r5,a
	mov	ar6,r2
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	r4,a
	cjne	r4,#0x01,L004014?
	sjmp	L004002?
L004014?:
;	bmm150.c:649: reg_addr = reg_addr | 0x80;
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	orl	a,#0x80
	mov	@r0,a
L004002?:
;	bmm150.c:653: dev->intf_rslt = dev->read(reg_addr, reg_data, len, dev->intf_ptr);
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	a,#0x05
	add	a,r7
	mov	@r0,a
	clr	a
	addc	a,r3
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar2
	mov	a,#0x06
	add	a,r7
	mov	r4,a
	clr	a
	addc	a,r3
	mov	r5,a
	mov	ar6,r2
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	mov	a,#0x02
	add	a,r7
	mov	r7,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	dpl,r7
	mov	dph,r3
	mov	b,r2
	lcall	__gptrget
	mov	r7,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r2,a
	push	ar5
	push	ar7
	push	ar3
	push	ar2
	mov	a,_bp
	add	a,#0xf7
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,#L004015?
	push	acc
	mov	a,#(L004015? >> 8)
	push	acc
	push	ar4
	push	ar5
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	ret
L004015?:
	mov	r4,dpl
	mov	a,sp
	add	a,#0xf6
	mov	sp,a
	pop	ar5
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r4
	lcall	__gptrput
	sjmp	L004005?
L004004?:
;	bmm150.c:657: rslt = BMM150_E_NULL_PTR;
	mov	r0,_bp
	inc	r0
	inc	r0
	mov	@r0,#0xFF
L004005?:
;	bmm150.c:660: return rslt;
	mov	r0,_bp
	inc	r0
	inc	r0
	mov	dpl,@r0
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'bmm150_soft_reset'
;------------------------------------------------------------
;dev                       Allocated to registers r2 r3 r4 
;rslt                      Allocated to registers r5 
;reg_data                  Allocated with name '_bmm150_soft_reset_reg_data_1_79'
;------------------------------------------------------------
;	bmm150.c:667: int8_t bmm150_soft_reset(struct bmm150_dev *dev)
;	-----------------------------------------
;	 function bmm150_soft_reset
;	-----------------------------------------
_bmm150_soft_reset:
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
;	bmm150.c:672: rslt = bmm150_get_regs(BMM150_REG_POWER_CONTROL, &reg_data, 1, dev);
	push	ar2
	push	ar3
	push	ar4
	push	ar2
	push	ar3
	push	ar4
	mov	a,#0x01
	push	acc
	clr	a
	push	acc
	push	acc
	push	acc
	mov	a,#_bmm150_soft_reset_reg_data_1_79
	push	acc
	mov	a,#(_bmm150_soft_reset_reg_data_1_79 >> 8)
	push	acc
	mov	a,#0x40
	push	acc
	mov	dpl,#0x4B
	lcall	_bmm150_get_regs
	mov	r5,dpl
	mov	a,sp
	add	a,#0xf6
	mov	sp,a
	pop	ar4
	pop	ar3
	pop	ar2
;	bmm150.c:674: if (rslt == BMM150_OK)
	mov	a,r5
	jz	L005006?
	ljmp	L005002?
L005006?:
;	bmm150.c:676: reg_data = reg_data | BMM150_SET_SOFT_RESET;
	mov	r6,_bmm150_soft_reset_reg_data_1_79
	orl	ar6,#0x82
	mov	_bmm150_soft_reset_reg_data_1_79,r6
;	bmm150.c:677: rslt = bmm150_set_regs(BMM150_REG_POWER_CONTROL, &reg_data, 1, dev);
	mov	_bmm150_set_regs_PARM_2,#_bmm150_soft_reset_reg_data_1_79
	mov	(_bmm150_set_regs_PARM_2 + 1),#0x00
	mov	(_bmm150_set_regs_PARM_2 + 2),#0x40
	mov	_bmm150_set_regs_PARM_3,#0x01
	clr	a
	mov	(_bmm150_set_regs_PARM_3 + 1),a
	mov	(_bmm150_set_regs_PARM_3 + 2),a
	mov	(_bmm150_set_regs_PARM_3 + 3),a
	mov	_bmm150_set_regs_PARM_4,r2
	mov	(_bmm150_set_regs_PARM_4 + 1),r3
	mov	(_bmm150_set_regs_PARM_4 + 2),r4
	mov	dpl,#0x4B
	push	ar2
	push	ar3
	push	ar4
	lcall	_bmm150_set_regs
	mov	r5,dpl
	pop	ar4
	pop	ar3
	pop	ar2
;	bmm150.c:678: dev->delay_us(BMM150_DELAY_SOFT_RESET, dev->intf_ptr);
	mov	a,#0x0A
	add	a,r2
	mov	r6,a
	clr	a
	addc	a,r3
	mov	r7,a
	mov	ar0,r4
	mov	dpl,r6
	mov	dph,r7
	mov	b,r0
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	a,#0x02
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	push	ar5
	push	ar6
	push	ar7
	push	ar2
	push	ar3
	push	ar4
	mov	a,#L005007?
	push	acc
	mov	a,#(L005007? >> 8)
	push	acc
	push	ar6
	push	ar7
	mov	dptr,#0x03E8
	clr	a
	mov	b,a
	ret
L005007?:
	dec	sp
	dec	sp
	dec	sp
	pop	ar7
	pop	ar6
	pop	ar5
L005002?:
;	bmm150.c:681: return rslt;
	mov	dpl,r5
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'bmm150_set_op_mode'
;------------------------------------------------------------
;dev                       Allocated with name '_bmm150_set_op_mode_PARM_2'
;settings                  Allocated to registers r2 r3 r4 
;rslt                      Allocated to registers r5 
;pwr_mode                  Allocated to registers r2 
;------------------------------------------------------------
;	bmm150.c:687: int8_t bmm150_set_op_mode(const struct bmm150_settings *settings, struct bmm150_dev *dev)
;	-----------------------------------------
;	 function bmm150_set_op_mode
;	-----------------------------------------
_bmm150_set_op_mode:
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
;	bmm150.c:693: rslt = null_ptr_check(dev);
	mov	dpl,_bmm150_set_op_mode_PARM_2
	mov	dph,(_bmm150_set_op_mode_PARM_2 + 1)
	mov	b,(_bmm150_set_op_mode_PARM_2 + 2)
	push	ar2
	push	ar3
	push	ar4
	lcall	_null_ptr_check
	mov	r5,dpl
	pop	ar4
	pop	ar3
	pop	ar2
;	bmm150.c:696: if (rslt == BMM150_OK)
	mov	a,r5
	jz	L006025?
	ljmp	L006014?
L006025?:
;	bmm150.c:698: pwr_mode = settings->pwr_mode;
	inc	r2
	cjne	r2,#0x00,L006026?
	inc	r3
L006026?:
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
;	bmm150.c:701: switch (pwr_mode)
	mov	r2,a
	mov	r3,a
	mov	r4,#0x00
	cjne	r3,#0x00,L006027?
	cjne	r4,#0x00,L006027?
	sjmp	L006001?
L006027?:
	cjne	r3,#0x01,L006028?
	cjne	r4,#0x00,L006028?
	sjmp	L006004?
L006028?:
	cjne	r3,#0x03,L006029?
	cjne	r4,#0x00,L006029?
	sjmp	L006007?
L006029?:
	cjne	r3,#0x04,L006030?
	cjne	r4,#0x00,L006030?
	ljmp	L006010?
L006030?:
	ljmp	L006011?
;	bmm150.c:703: case BMM150_POWERMODE_NORMAL:
L006001?:
;	bmm150.c:708: rslt = suspend_to_sleep_mode(dev);
	mov	dpl,_bmm150_set_op_mode_PARM_2
	mov	dph,(_bmm150_set_op_mode_PARM_2 + 1)
	mov	b,(_bmm150_set_op_mode_PARM_2 + 2)
	push	ar2
	lcall	_suspend_to_sleep_mode
	mov	r5,dpl
	pop	ar2
;	bmm150.c:709: if (rslt == BMM150_OK)
	mov	a,r5
	jnz	L006014?
;	bmm150.c:712: rslt = write_op_mode(pwr_mode, dev);
	mov	_write_op_mode_PARM_2,_bmm150_set_op_mode_PARM_2
	mov	(_write_op_mode_PARM_2 + 1),(_bmm150_set_op_mode_PARM_2 + 1)
	mov	(_write_op_mode_PARM_2 + 2),(_bmm150_set_op_mode_PARM_2 + 2)
	mov	dpl,r2
	lcall	_write_op_mode
	mov	r5,dpl
;	bmm150.c:715: break;
;	bmm150.c:716: case BMM150_POWERMODE_FORCED:
	sjmp	L006014?
L006004?:
;	bmm150.c:721: rslt = suspend_to_sleep_mode(dev);
	mov	dpl,_bmm150_set_op_mode_PARM_2
	mov	dph,(_bmm150_set_op_mode_PARM_2 + 1)
	mov	b,(_bmm150_set_op_mode_PARM_2 + 2)
	push	ar2
	lcall	_suspend_to_sleep_mode
	mov	r5,dpl
	pop	ar2
;	bmm150.c:722: if (rslt == BMM150_OK)
	mov	a,r5
	jnz	L006014?
;	bmm150.c:725: rslt = write_op_mode(pwr_mode, dev);
	mov	_write_op_mode_PARM_2,_bmm150_set_op_mode_PARM_2
	mov	(_write_op_mode_PARM_2 + 1),(_bmm150_set_op_mode_PARM_2 + 1)
	mov	(_write_op_mode_PARM_2 + 2),(_bmm150_set_op_mode_PARM_2 + 2)
	mov	dpl,r2
	lcall	_write_op_mode
	mov	r5,dpl
;	bmm150.c:728: break;
;	bmm150.c:729: case BMM150_POWERMODE_SLEEP:
	sjmp	L006014?
L006007?:
;	bmm150.c:734: rslt = suspend_to_sleep_mode(dev);
	mov	dpl,_bmm150_set_op_mode_PARM_2
	mov	dph,(_bmm150_set_op_mode_PARM_2 + 1)
	mov	b,(_bmm150_set_op_mode_PARM_2 + 2)
	push	ar2
	lcall	_suspend_to_sleep_mode
	mov	r5,dpl
	pop	ar2
;	bmm150.c:735: if (rslt == BMM150_OK)
	mov	a,r5
	jnz	L006014?
;	bmm150.c:738: rslt = write_op_mode(pwr_mode, dev);
	mov	_write_op_mode_PARM_2,_bmm150_set_op_mode_PARM_2
	mov	(_write_op_mode_PARM_2 + 1),(_bmm150_set_op_mode_PARM_2 + 1)
	mov	(_write_op_mode_PARM_2 + 2),(_bmm150_set_op_mode_PARM_2 + 2)
	mov	dpl,r2
	lcall	_write_op_mode
	mov	r5,dpl
;	bmm150.c:741: break;
;	bmm150.c:742: case BMM150_POWERMODE_SUSPEND:
	sjmp	L006014?
L006010?:
;	bmm150.c:745: rslt = set_power_control_bit(BMM150_POWER_CNTRL_DISABLE, dev);
	mov	_set_power_control_bit_PARM_2,_bmm150_set_op_mode_PARM_2
	mov	(_set_power_control_bit_PARM_2 + 1),(_bmm150_set_op_mode_PARM_2 + 1)
	mov	(_set_power_control_bit_PARM_2 + 2),(_bmm150_set_op_mode_PARM_2 + 2)
	mov	dpl,#0x00
	lcall	_set_power_control_bit
	mov	r5,dpl
;	bmm150.c:746: break;
;	bmm150.c:747: default:
	sjmp	L006014?
L006011?:
;	bmm150.c:748: rslt = BMM150_E_INVALID_CONFIG;
	mov	r5,#0xFD
;	bmm150.c:750: }
L006014?:
;	bmm150.c:753: return rslt;
	mov	dpl,r5
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'bmm150_get_op_mode'
;------------------------------------------------------------
;dev                       Allocated with name '_bmm150_get_op_mode_PARM_2'
;op_mode                   Allocated with name '_bmm150_get_op_mode_op_mode_1_88'
;rslt                      Allocated with name '_bmm150_get_op_mode_rslt_1_89'
;reg_data                  Allocated with name '_bmm150_get_op_mode_reg_data_1_89'
;------------------------------------------------------------
;	bmm150.c:759: int8_t bmm150_get_op_mode(uint8_t *op_mode, struct bmm150_dev *dev)
;	-----------------------------------------
;	 function bmm150_get_op_mode
;	-----------------------------------------
_bmm150_get_op_mode:
	mov	_bmm150_get_op_mode_op_mode_1_88,dpl
	mov	(_bmm150_get_op_mode_op_mode_1_88 + 1),dph
	mov	(_bmm150_get_op_mode_op_mode_1_88 + 2),b
;	bmm150.c:765: rslt = null_ptr_check(dev);
	mov	dpl,_bmm150_get_op_mode_PARM_2
	mov	dph,(_bmm150_get_op_mode_PARM_2 + 1)
	mov	b,(_bmm150_get_op_mode_PARM_2 + 2)
	lcall	_null_ptr_check
;	bmm150.c:768: if (rslt == BMM150_OK)
	mov	a,dpl
	mov	_bmm150_get_op_mode_rslt_1_89,a
	jnz	L007005?
;	bmm150.c:770: if (dev->pwr_cntrl_bit == BMM150_POWER_CNTRL_DISABLE)
	mov	r6,_bmm150_get_op_mode_PARM_2
	mov	r7,(_bmm150_get_op_mode_PARM_2 + 1)
	mov	r0,(_bmm150_get_op_mode_PARM_2 + 2)
	mov	a,#0x1E
	add	a,r6
	mov	r1,a
	clr	a
	addc	a,r7
	mov	r5,a
	mov	ar2,r0
	mov	dpl,r1
	mov	dph,r5
	mov	b,r2
	lcall	__gptrget
	jnz	L007002?
;	bmm150.c:773: *op_mode = BMM150_POWERMODE_SUSPEND;
	mov	dpl,_bmm150_get_op_mode_op_mode_1_88
	mov	dph,(_bmm150_get_op_mode_op_mode_1_88 + 1)
	mov	b,(_bmm150_get_op_mode_op_mode_1_88 + 2)
	mov	a,#0x04
	lcall	__gptrput
	sjmp	L007005?
L007002?:
;	bmm150.c:778: rslt = bmm150_get_regs(BMM150_REG_OP_MODE, &reg_data, 1, dev);
	push	ar6
	push	ar7
	push	ar0
	mov	a,#0x01
	push	acc
	clr	a
	push	acc
	push	acc
	push	acc
	mov	a,#_bmm150_get_op_mode_reg_data_1_89
	push	acc
	mov	a,#(_bmm150_get_op_mode_reg_data_1_89 >> 8)
	push	acc
	mov	a,#0x40
	push	acc
	mov	dpl,#0x4C
	lcall	_bmm150_get_regs
	mov	_bmm150_get_op_mode_rslt_1_89,dpl
	mov	a,sp
	add	a,#0xf6
	mov	sp,a
;	bmm150.c:779: *op_mode = BMM150_GET_BITS(reg_data, BMM150_OP_MODE);
	mov	r2,_bmm150_get_op_mode_reg_data_1_89
	anl	ar2,#0x06
	clr	a
	clr	c
	rrc	a
	xch	a,r2
	rrc	a
	xch	a,r2
	mov	r3,a
	mov	dpl,_bmm150_get_op_mode_op_mode_1_88
	mov	dph,(_bmm150_get_op_mode_op_mode_1_88 + 1)
	mov	b,(_bmm150_get_op_mode_op_mode_1_88 + 2)
	mov	a,r2
	lcall	__gptrput
L007005?:
;	bmm150.c:783: return rslt;
	mov	dpl,_bmm150_get_op_mode_rslt_1_89
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'bmm150_set_presetmode'
;------------------------------------------------------------
;dev                       Allocated with name '_bmm150_set_presetmode_PARM_2'
;settings                  Allocated to registers r2 r3 r4 
;rslt                      Allocated to registers r5 
;preset_mode               Allocated to registers r6 
;------------------------------------------------------------
;	bmm150.c:789: int8_t bmm150_set_presetmode(struct bmm150_settings *settings, struct bmm150_dev *dev)
;	-----------------------------------------
;	 function bmm150_set_presetmode
;	-----------------------------------------
_bmm150_set_presetmode:
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
;	bmm150.c:795: rslt = null_ptr_check(dev);
	mov	dpl,_bmm150_set_presetmode_PARM_2
	mov	dph,(_bmm150_set_presetmode_PARM_2 + 1)
	mov	b,(_bmm150_set_presetmode_PARM_2 + 2)
	push	ar2
	push	ar3
	push	ar4
	lcall	_null_ptr_check
	mov	r5,dpl
	pop	ar4
	pop	ar3
	pop	ar2
;	bmm150.c:798: if (rslt == BMM150_OK)
	mov	a,r5
	jz	L008016?
	ljmp	L008008?
L008016?:
;	bmm150.c:800: preset_mode = settings->preset_mode;
	mov	a,#0x05
	add	a,r2
	mov	r6,a
	clr	a
	addc	a,r3
	mov	r7,a
	mov	ar0,r4
	mov	dpl,r6
	mov	dph,r7
	mov	b,r0
	lcall	__gptrget
	mov	r6,a
;	bmm150.c:802: switch (preset_mode)
	mov	r7,#0x00
	cjne	r6,#0x01,L008017?
	cjne	r7,#0x00,L008017?
	sjmp	L008001?
L008017?:
	cjne	r6,#0x02,L008018?
	cjne	r7,#0x00,L008018?
	sjmp	L008002?
L008018?:
	cjne	r6,#0x03,L008019?
	cjne	r7,#0x00,L008019?
	ljmp	L008003?
L008019?:
	cjne	r6,#0x04,L008020?
	cjne	r7,#0x00,L008020?
	ljmp	L008004?
L008020?:
	ljmp	L008005?
;	bmm150.c:804: case BMM150_PRESETMODE_LOWPOWER:
L008001?:
;	bmm150.c:809: settings->data_rate = BMM150_DATA_RATE_10HZ;
	mov	a,#0x02
	add	a,r2
	mov	r6,a
	clr	a
	addc	a,r3
	mov	r7,a
	mov	ar0,r4
	mov	dpl,r6
	mov	dph,r7
	mov	b,r0
	clr	a
	lcall	__gptrput
;	bmm150.c:810: settings->xy_rep = BMM150_REPXY_LOWPOWER;
	mov	a,#0x03
	add	a,r2
	mov	r6,a
	clr	a
	addc	a,r3
	mov	r7,a
	mov	ar0,r4
	mov	dpl,r6
	mov	dph,r7
	mov	b,r0
	mov	a,#0x01
	lcall	__gptrput
;	bmm150.c:811: settings->z_rep = BMM150_REPZ_LOWPOWER;
	mov	a,#0x04
	add	a,r2
	mov	r6,a
	clr	a
	addc	a,r3
	mov	r7,a
	mov	ar0,r4
	mov	dpl,r6
	mov	dph,r7
	mov	b,r0
	mov	a,#0x01
	lcall	__gptrput
;	bmm150.c:812: rslt = set_odr_xyz_rep(settings, dev);
	mov	_set_odr_xyz_rep_PARM_2,_bmm150_set_presetmode_PARM_2
	mov	(_set_odr_xyz_rep_PARM_2 + 1),(_bmm150_set_presetmode_PARM_2 + 1)
	mov	(_set_odr_xyz_rep_PARM_2 + 2),(_bmm150_set_presetmode_PARM_2 + 2)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_set_odr_xyz_rep
	mov	r5,dpl
;	bmm150.c:813: break;
	ljmp	L008008?
;	bmm150.c:814: case BMM150_PRESETMODE_REGULAR:
L008002?:
;	bmm150.c:819: settings->data_rate = BMM150_DATA_RATE_10HZ;
	mov	a,#0x02
	add	a,r2
	mov	r6,a
	clr	a
	addc	a,r3
	mov	r7,a
	mov	ar0,r4
	mov	dpl,r6
	mov	dph,r7
	mov	b,r0
	clr	a
	lcall	__gptrput
;	bmm150.c:820: settings->xy_rep = BMM150_REPXY_REGULAR;
	mov	a,#0x03
	add	a,r2
	mov	r6,a
	clr	a
	addc	a,r3
	mov	r7,a
	mov	ar0,r4
	mov	dpl,r6
	mov	dph,r7
	mov	b,r0
;	bmm150.c:821: settings->z_rep = BMM150_REPZ_REGULAR;
	mov	a,#0x04
	lcall	__gptrput
	add	a,r2
	mov	r6,a
	clr	a
	addc	a,r3
	mov	r7,a
	mov	ar0,r4
	mov	dpl,r6
	mov	dph,r7
	mov	b,r0
	mov	a,#0x07
	lcall	__gptrput
;	bmm150.c:822: rslt = set_odr_xyz_rep(settings, dev);
	mov	_set_odr_xyz_rep_PARM_2,_bmm150_set_presetmode_PARM_2
	mov	(_set_odr_xyz_rep_PARM_2 + 1),(_bmm150_set_presetmode_PARM_2 + 1)
	mov	(_set_odr_xyz_rep_PARM_2 + 2),(_bmm150_set_presetmode_PARM_2 + 2)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_set_odr_xyz_rep
	mov	r5,dpl
;	bmm150.c:823: break;
	ljmp	L008008?
;	bmm150.c:824: case BMM150_PRESETMODE_HIGHACCURACY:
L008003?:
;	bmm150.c:829: settings->data_rate = BMM150_DATA_RATE_20HZ;
	mov	a,#0x02
	add	a,r2
	mov	r6,a
	clr	a
	addc	a,r3
	mov	r7,a
	mov	ar0,r4
	mov	dpl,r6
	mov	dph,r7
	mov	b,r0
	mov	a,#0x05
	lcall	__gptrput
;	bmm150.c:830: settings->xy_rep = BMM150_REPXY_HIGHACCURACY;
	mov	a,#0x03
	add	a,r2
	mov	r6,a
	clr	a
	addc	a,r3
	mov	r7,a
	mov	ar0,r4
	mov	dpl,r6
	mov	dph,r7
	mov	b,r0
	mov	a,#0x17
	lcall	__gptrput
;	bmm150.c:831: settings->z_rep = BMM150_REPZ_HIGHACCURACY;
	mov	a,#0x04
	add	a,r2
	mov	r6,a
	clr	a
	addc	a,r3
	mov	r7,a
	mov	ar0,r4
	mov	dpl,r6
	mov	dph,r7
	mov	b,r0
	mov	a,#0x29
	lcall	__gptrput
;	bmm150.c:832: rslt = set_odr_xyz_rep(settings, dev);
	mov	_set_odr_xyz_rep_PARM_2,_bmm150_set_presetmode_PARM_2
	mov	(_set_odr_xyz_rep_PARM_2 + 1),(_bmm150_set_presetmode_PARM_2 + 1)
	mov	(_set_odr_xyz_rep_PARM_2 + 2),(_bmm150_set_presetmode_PARM_2 + 2)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_set_odr_xyz_rep
	mov	r5,dpl
;	bmm150.c:833: break;
;	bmm150.c:834: case BMM150_PRESETMODE_ENHANCED:
	sjmp	L008008?
L008004?:
;	bmm150.c:839: settings->data_rate = BMM150_DATA_RATE_10HZ;
	mov	a,#0x02
	add	a,r2
	mov	r6,a
	clr	a
	addc	a,r3
	mov	r7,a
	mov	ar0,r4
	mov	dpl,r6
	mov	dph,r7
	mov	b,r0
	clr	a
	lcall	__gptrput
;	bmm150.c:840: settings->xy_rep = BMM150_REPXY_ENHANCED;
	mov	a,#0x03
	add	a,r2
	mov	r6,a
	clr	a
	addc	a,r3
	mov	r7,a
	mov	ar0,r4
	mov	dpl,r6
	mov	dph,r7
	mov	b,r0
	mov	a,#0x07
	lcall	__gptrput
;	bmm150.c:841: settings->z_rep = BMM150_REPZ_ENHANCED;
	mov	a,#0x04
	add	a,r2
	mov	r6,a
	clr	a
	addc	a,r3
	mov	r7,a
	mov	ar0,r4
	mov	dpl,r6
	mov	dph,r7
	mov	b,r0
	mov	a,#0x0D
	lcall	__gptrput
;	bmm150.c:842: rslt = set_odr_xyz_rep(settings, dev);
	mov	_set_odr_xyz_rep_PARM_2,_bmm150_set_presetmode_PARM_2
	mov	(_set_odr_xyz_rep_PARM_2 + 1),(_bmm150_set_presetmode_PARM_2 + 1)
	mov	(_set_odr_xyz_rep_PARM_2 + 2),(_bmm150_set_presetmode_PARM_2 + 2)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_set_odr_xyz_rep
	mov	r5,dpl
;	bmm150.c:843: break;
;	bmm150.c:844: default:
	sjmp	L008008?
L008005?:
;	bmm150.c:845: rslt = BMM150_E_INVALID_CONFIG;
	mov	r5,#0xFD
;	bmm150.c:847: }
L008008?:
;	bmm150.c:850: return rslt;
	mov	dpl,r5
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'bmm150_set_sensor_settings'
;------------------------------------------------------------
;settings                  Allocated with name '_bmm150_set_sensor_settings_PARM_2'
;dev                       Allocated with name '_bmm150_set_sensor_settings_PARM_3'
;desired_settings          Allocated to registers r2 r3 
;rslt                      Allocated to registers r4 
;------------------------------------------------------------
;	bmm150.c:857: int8_t bmm150_set_sensor_settings(uint16_t desired_settings,
;	-----------------------------------------
;	 function bmm150_set_sensor_settings
;	-----------------------------------------
_bmm150_set_sensor_settings:
	mov	r2,dpl
	mov	r3,dph
;	bmm150.c:864: rslt = null_ptr_check(dev);
	mov	dpl,_bmm150_set_sensor_settings_PARM_3
	mov	dph,(_bmm150_set_sensor_settings_PARM_3 + 1)
	mov	b,(_bmm150_set_sensor_settings_PARM_3 + 2)
	push	ar2
	push	ar3
	lcall	_null_ptr_check
	mov	r4,dpl
	pop	ar3
	pop	ar2
;	bmm150.c:867: if (rslt == BMM150_OK)
	mov	a,r4
	jz	L009024?
	ljmp	L009013?
L009024?:
;	bmm150.c:869: if (are_settings_changed(MODE_SETTING_SEL, desired_settings))
	mov	_are_settings_changed_PARM_2,r2
	mov	(_are_settings_changed_PARM_2 + 1),r3
	mov	dptr,#0x000F
	push	ar2
	push	ar3
	push	ar4
	lcall	_are_settings_changed
	mov	a,dpl
	pop	ar4
	pop	ar3
	pop	ar2
	jz	L009002?
;	bmm150.c:872: rslt = mode_settings(desired_settings, settings, dev);
	mov	_mode_settings_PARM_2,_bmm150_set_sensor_settings_PARM_2
	mov	(_mode_settings_PARM_2 + 1),(_bmm150_set_sensor_settings_PARM_2 + 1)
	mov	(_mode_settings_PARM_2 + 2),(_bmm150_set_sensor_settings_PARM_2 + 2)
	mov	_mode_settings_PARM_3,_bmm150_set_sensor_settings_PARM_3
	mov	(_mode_settings_PARM_3 + 1),(_bmm150_set_sensor_settings_PARM_3 + 1)
	mov	(_mode_settings_PARM_3 + 2),(_bmm150_set_sensor_settings_PARM_3 + 2)
	mov	dpl,r2
	mov	dph,r3
	push	ar2
	push	ar3
	lcall	_mode_settings
	mov	r4,dpl
	pop	ar3
	pop	ar2
L009002?:
;	bmm150.c:875: if ((!rslt) && are_settings_changed(INTERRUPT_PIN_SETTING_SEL, desired_settings))
	mov	a,r4
	jnz	L009004?
	mov	_are_settings_changed_PARM_2,r2
	mov	(_are_settings_changed_PARM_2 + 1),r3
	mov	dptr,#0x01F0
	push	ar2
	push	ar3
	push	ar4
	lcall	_are_settings_changed
	mov	a,dpl
	pop	ar4
	pop	ar3
	pop	ar2
	jz	L009004?
;	bmm150.c:878: rslt = interrupt_pin_settings(desired_settings, settings, dev);
	mov	_interrupt_pin_settings_PARM_2,_bmm150_set_sensor_settings_PARM_2
	mov	(_interrupt_pin_settings_PARM_2 + 1),(_bmm150_set_sensor_settings_PARM_2 + 1)
	mov	(_interrupt_pin_settings_PARM_2 + 2),(_bmm150_set_sensor_settings_PARM_2 + 2)
	mov	_interrupt_pin_settings_PARM_3,_bmm150_set_sensor_settings_PARM_3
	mov	(_interrupt_pin_settings_PARM_3 + 1),(_bmm150_set_sensor_settings_PARM_3 + 1)
	mov	(_interrupt_pin_settings_PARM_3 + 2),(_bmm150_set_sensor_settings_PARM_3 + 2)
	mov	dpl,r2
	mov	dph,r3
	push	ar2
	push	ar3
	lcall	_interrupt_pin_settings
	mov	r4,dpl
	pop	ar3
	pop	ar2
L009004?:
;	bmm150.c:881: if ((!rslt) && are_settings_changed(INTERRUPT_CONFIG_SEL, desired_settings))
	mov	a,r4
	jnz	L009007?
	mov	_are_settings_changed_PARM_2,r2
	mov	(_are_settings_changed_PARM_2 + 1),r3
	mov	dptr,#0x1E00
	push	ar2
	push	ar3
	push	ar4
	lcall	_are_settings_changed
	mov	a,dpl
	pop	ar4
	pop	ar3
	pop	ar2
	jz	L009007?
;	bmm150.c:884: rslt = interrupt_config(desired_settings, settings, dev);
	mov	_interrupt_config_PARM_2,_bmm150_set_sensor_settings_PARM_2
	mov	(_interrupt_config_PARM_2 + 1),(_bmm150_set_sensor_settings_PARM_2 + 1)
	mov	(_interrupt_config_PARM_2 + 2),(_bmm150_set_sensor_settings_PARM_2 + 2)
	mov	_interrupt_config_PARM_3,_bmm150_set_sensor_settings_PARM_3
	mov	(_interrupt_config_PARM_3 + 1),(_bmm150_set_sensor_settings_PARM_3 + 1)
	mov	(_interrupt_config_PARM_3 + 2),(_bmm150_set_sensor_settings_PARM_3 + 2)
	mov	dpl,r2
	mov	dph,r3
	push	ar2
	push	ar3
	lcall	_interrupt_config
	mov	r4,dpl
	pop	ar3
	pop	ar2
L009007?:
;	bmm150.c:887: if ((!rslt) && are_settings_changed(INTERRUPT_THRESHOLD_CONFIG_SEL, desired_settings))
	mov	a,r4
	jnz	L009013?
	mov	_are_settings_changed_PARM_2,r2
	mov	(_are_settings_changed_PARM_2 + 1),r3
	mov	dptr,#0x6000
	push	ar2
	push	ar3
	push	ar4
	lcall	_are_settings_changed
	mov	a,dpl
	pop	ar4
	pop	ar3
	pop	ar2
	jz	L009013?
;	bmm150.c:890: rslt = interrupt_threshold_settings(desired_settings, settings, dev);
	mov	_interrupt_threshold_settings_PARM_2,_bmm150_set_sensor_settings_PARM_2
	mov	(_interrupt_threshold_settings_PARM_2 + 1),(_bmm150_set_sensor_settings_PARM_2 + 1)
	mov	(_interrupt_threshold_settings_PARM_2 + 2),(_bmm150_set_sensor_settings_PARM_2 + 2)
	mov	_interrupt_threshold_settings_PARM_3,_bmm150_set_sensor_settings_PARM_3
	mov	(_interrupt_threshold_settings_PARM_3 + 1),(_bmm150_set_sensor_settings_PARM_3 + 1)
	mov	(_interrupt_threshold_settings_PARM_3 + 2),(_bmm150_set_sensor_settings_PARM_3 + 2)
	mov	dpl,r2
	mov	dph,r3
	lcall	_interrupt_threshold_settings
	mov	r4,dpl
L009013?:
;	bmm150.c:894: return rslt;
	mov	dpl,r4
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'bmm150_get_sensor_settings'
;------------------------------------------------------------
;dev                       Allocated with name '_bmm150_get_sensor_settings_PARM_2'
;settings                  Allocated to registers r2 r3 r4 
;rslt                      Allocated to registers r5 
;setting                   Allocated with name '_bmm150_get_sensor_settings_setting_1_105'
;------------------------------------------------------------
;	bmm150.c:900: int8_t bmm150_get_sensor_settings(struct bmm150_settings *settings, struct bmm150_dev *dev)
;	-----------------------------------------
;	 function bmm150_get_sensor_settings
;	-----------------------------------------
_bmm150_get_sensor_settings:
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
;	bmm150.c:903: uint8_t setting[BMM150_LEN_SETTING_DATA] = { 0 };
	mov	_bmm150_get_sensor_settings_setting_1_105,#0x00
	mov	(_bmm150_get_sensor_settings_setting_1_105 + 0x0001),#0x00
	mov	(_bmm150_get_sensor_settings_setting_1_105 + 0x0002),#0x00
	mov	(_bmm150_get_sensor_settings_setting_1_105 + 0x0003),#0x00
	mov	(_bmm150_get_sensor_settings_setting_1_105 + 0x0004),#0x00
	mov	(_bmm150_get_sensor_settings_setting_1_105 + 0x0005),#0x00
	mov	(_bmm150_get_sensor_settings_setting_1_105 + 0x0006),#0x00
	mov	(_bmm150_get_sensor_settings_setting_1_105 + 0x0007),#0x00
;	bmm150.c:906: rslt = bmm150_get_regs(BMM150_REG_POWER_CONTROL, setting, BMM150_LEN_SETTING_DATA, dev);
	push	ar2
	push	ar3
	push	ar4
	push	_bmm150_get_sensor_settings_PARM_2
	push	(_bmm150_get_sensor_settings_PARM_2 + 1)
	push	(_bmm150_get_sensor_settings_PARM_2 + 2)
	mov	a,#0x08
	push	acc
	clr	a
	push	acc
	push	acc
	push	acc
	mov	a,#_bmm150_get_sensor_settings_setting_1_105
	push	acc
	mov	a,#(_bmm150_get_sensor_settings_setting_1_105 >> 8)
	push	acc
	mov	a,#0x40
	push	acc
	mov	dpl,#0x4B
	lcall	_bmm150_get_regs
	mov	r5,dpl
	mov	a,sp
	add	a,#0xf6
	mov	sp,a
	pop	ar4
	pop	ar3
	pop	ar2
;	bmm150.c:908: if (rslt == BMM150_OK)
	mov	a,r5
	jnz	L010002?
;	bmm150.c:911: parse_setting(setting, settings);
	mov	_parse_setting_PARM_2,r2
	mov	(_parse_setting_PARM_2 + 1),r3
	mov	(_parse_setting_PARM_2 + 2),r4
	mov	dptr,#_bmm150_get_sensor_settings_setting_1_105
	mov	b,#0x40
	push	ar5
	lcall	_parse_setting
	pop	ar5
L010002?:
;	bmm150.c:914: return rslt;
	mov	dpl,r5
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'bmm150_read_mag_data'
;------------------------------------------------------------
;dev                       Allocated with name '_bmm150_read_mag_data_PARM_2'
;mag_data                  Allocated with name '_bmm150_read_mag_data_mag_data_1_107'
;rslt                      Allocated with name '_bmm150_read_mag_data_rslt_1_108'
;msb_data                  Allocated with name '_bmm150_read_mag_data_msb_data_1_108'
;reg_data                  Allocated with name '_bmm150_read_mag_data_reg_data_1_108'
;raw_mag_data              Allocated with name '_bmm150_read_mag_data_raw_mag_data_1_108'
;------------------------------------------------------------
;	bmm150.c:922: int8_t bmm150_read_mag_data(struct bmm150_mag_data *mag_data, struct bmm150_dev *dev)
;	-----------------------------------------
;	 function bmm150_read_mag_data
;	-----------------------------------------
_bmm150_read_mag_data:
	mov	_bmm150_read_mag_data_mag_data_1_107,dpl
	mov	(_bmm150_read_mag_data_mag_data_1_107 + 1),dph
	mov	(_bmm150_read_mag_data_mag_data_1_107 + 2),b
;	bmm150.c:926: uint8_t reg_data[BMM150_LEN_XYZR_DATA] = { 0 };
	mov	_bmm150_read_mag_data_reg_data_1_108,#0x00
	mov	(_bmm150_read_mag_data_reg_data_1_108 + 0x0001),#0x00
	mov	(_bmm150_read_mag_data_reg_data_1_108 + 0x0002),#0x00
	mov	(_bmm150_read_mag_data_reg_data_1_108 + 0x0003),#0x00
	mov	(_bmm150_read_mag_data_reg_data_1_108 + 0x0004),#0x00
	mov	(_bmm150_read_mag_data_reg_data_1_108 + 0x0005),#0x00
	mov	(_bmm150_read_mag_data_reg_data_1_108 + 0x0006),#0x00
	mov	(_bmm150_read_mag_data_reg_data_1_108 + 0x0007),#0x00
;	bmm150.c:930: rslt = bmm150_get_regs(BMM150_REG_DATA_X_LSB, reg_data, BMM150_LEN_XYZR_DATA, dev);
	push	_bmm150_read_mag_data_PARM_2
	push	(_bmm150_read_mag_data_PARM_2 + 1)
	push	(_bmm150_read_mag_data_PARM_2 + 2)
	mov	a,#0x08
	push	acc
	clr	a
	push	acc
	push	acc
	push	acc
	mov	a,#_bmm150_read_mag_data_reg_data_1_108
	push	acc
	mov	a,#(_bmm150_read_mag_data_reg_data_1_108 >> 8)
	push	acc
	mov	a,#0x40
	push	acc
	mov	dpl,#0x42
	lcall	_bmm150_get_regs
	mov	_bmm150_read_mag_data_rslt_1_108,dpl
	mov	a,sp
	add	a,#0xf6
	mov	sp,a
;	bmm150.c:932: if (rslt == BMM150_OK)
	mov	a,_bmm150_read_mag_data_rslt_1_108
	jz	L011006?
	ljmp	L011002?
L011006?:
;	bmm150.c:935: reg_data[0] = BMM150_GET_BITS(reg_data[0], BMM150_DATA_X);
	mov	r6,_bmm150_read_mag_data_reg_data_1_108
	anl	ar6,#0xF8
	clr	a
	swap	a
	rl	a
	xch	a,r6
	swap	a
	rl	a
	anl	a,#0x1f
	xrl	a,r6
	xch	a,r6
	anl	a,#0x1f
	xch	a,r6
	xrl	a,r6
	xch	a,r6
	mov	_bmm150_read_mag_data_reg_data_1_108,r6
;	bmm150.c:939: msb_data = ((int16_t)((int8_t)reg_data[1])) * 32;
	mov	r7,(_bmm150_read_mag_data_reg_data_1_108 + 0x0001)
	mov	a,(_bmm150_read_mag_data_reg_data_1_108 + 0x0001)
	rlc	a
	subb	a,acc
	mov	_bmm150_read_mag_data_msb_data_1_108,r7
	swap	a
	rl	a
	anl	a,#0xe0
	xch	a,_bmm150_read_mag_data_msb_data_1_108
	swap	a
	rl	a
	xch	a,_bmm150_read_mag_data_msb_data_1_108
	xrl	a,_bmm150_read_mag_data_msb_data_1_108
	xch	a,_bmm150_read_mag_data_msb_data_1_108
	anl	a,#0xe0
	xch	a,_bmm150_read_mag_data_msb_data_1_108
	xrl	a,_bmm150_read_mag_data_msb_data_1_108
	mov	(_bmm150_read_mag_data_msb_data_1_108 + 1),a
;	bmm150.c:942: raw_mag_data.raw_datax = (int16_t)(msb_data | reg_data[0]);
	mov	r5,#0x00
	mov	a,_bmm150_read_mag_data_msb_data_1_108
	orl	ar6,a
	mov	a,(_bmm150_read_mag_data_msb_data_1_108 + 1)
	orl	ar5,a
	mov	_bmm150_read_mag_data_raw_mag_data_1_108,r6
	mov	(_bmm150_read_mag_data_raw_mag_data_1_108 + 1),r5
;	bmm150.c:945: reg_data[2] = BMM150_GET_BITS(reg_data[2], BMM150_DATA_Y);
	mov	r5,(_bmm150_read_mag_data_reg_data_1_108 + 0x0002)
	anl	ar5,#0xF8
	clr	a
	swap	a
	rl	a
	xch	a,r5
	swap	a
	rl	a
	anl	a,#0x1f
	xrl	a,r5
	xch	a,r5
	anl	a,#0x1f
	xch	a,r5
	xrl	a,r5
	xch	a,r5
	mov	(_bmm150_read_mag_data_reg_data_1_108 + 0x0002),r5
;	bmm150.c:949: msb_data = ((int16_t)((int8_t)reg_data[3])) * 32;
	mov	r6,(_bmm150_read_mag_data_reg_data_1_108 + 0x0003)
	mov	a,(_bmm150_read_mag_data_reg_data_1_108 + 0x0003)
	rlc	a
	subb	a,acc
	mov	_bmm150_read_mag_data_msb_data_1_108,r6
	swap	a
	rl	a
	anl	a,#0xe0
	xch	a,_bmm150_read_mag_data_msb_data_1_108
	swap	a
	rl	a
	xch	a,_bmm150_read_mag_data_msb_data_1_108
	xrl	a,_bmm150_read_mag_data_msb_data_1_108
	xch	a,_bmm150_read_mag_data_msb_data_1_108
	anl	a,#0xe0
	xch	a,_bmm150_read_mag_data_msb_data_1_108
	xrl	a,_bmm150_read_mag_data_msb_data_1_108
	mov	(_bmm150_read_mag_data_msb_data_1_108 + 1),a
;	bmm150.c:952: raw_mag_data.raw_datay = (int16_t)(msb_data | reg_data[2]);
	mov	r6,#0x00
	mov	a,_bmm150_read_mag_data_msb_data_1_108
	orl	ar5,a
	mov	a,(_bmm150_read_mag_data_msb_data_1_108 + 1)
	orl	ar6,a
	mov	(_bmm150_read_mag_data_raw_mag_data_1_108 + 0x0002),r5
	mov	((_bmm150_read_mag_data_raw_mag_data_1_108 + 0x0002) + 1),r6
;	bmm150.c:955: reg_data[4] = BMM150_GET_BITS(reg_data[4], BMM150_DATA_Z);
	mov	r5,(_bmm150_read_mag_data_reg_data_1_108 + 0x0004)
	anl	ar5,#0xFE
	clr	a
	clr	c
	rrc	a
	xch	a,r5
	rrc	a
	xch	a,r5
	mov	(_bmm150_read_mag_data_reg_data_1_108 + 0x0004),r5
;	bmm150.c:959: msb_data = ((int16_t)((int8_t)reg_data[5])) * 128;
	mov	r6,(_bmm150_read_mag_data_reg_data_1_108 + 0x0005)
	mov	a,(_bmm150_read_mag_data_reg_data_1_108 + 0x0005)
	rlc	a
	subb	a,acc
	mov	_bmm150_read_mag_data_msb_data_1_108,r6
	anl	a,#0x01
	mov	c,acc.0
	xch	a,_bmm150_read_mag_data_msb_data_1_108
	rrc	a
	xch	a,_bmm150_read_mag_data_msb_data_1_108
	rrc	a
	xch	a,_bmm150_read_mag_data_msb_data_1_108
	mov	(_bmm150_read_mag_data_msb_data_1_108 + 1),a
;	bmm150.c:962: raw_mag_data.raw_dataz = (int16_t)(msb_data | reg_data[4]);
	mov	r6,#0x00
	mov	a,_bmm150_read_mag_data_msb_data_1_108
	orl	ar5,a
	mov	a,(_bmm150_read_mag_data_msb_data_1_108 + 1)
	orl	ar6,a
	mov	(_bmm150_read_mag_data_raw_mag_data_1_108 + 0x0004),r5
	mov	((_bmm150_read_mag_data_raw_mag_data_1_108 + 0x0004) + 1),r6
;	bmm150.c:965: reg_data[6] = BMM150_GET_BITS(reg_data[6], BMM150_DATA_RHALL);
	mov	r5,(_bmm150_read_mag_data_reg_data_1_108 + 0x0006)
	anl	ar5,#0xFC
	clr	a
	clr	c
	rrc	a
	xch	a,r5
	rrc	a
	xch	a,r5
	clr	c
	rrc	a
	xch	a,r5
	rrc	a
	xch	a,r5
	mov	(_bmm150_read_mag_data_reg_data_1_108 + 0x0006),r5
;	bmm150.c:966: raw_mag_data.raw_data_r = (uint16_t)(((uint16_t)reg_data[7] << 6) | reg_data[6]);
	mov	r6,(_bmm150_read_mag_data_reg_data_1_108 + 0x0007)
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
	mov	r7,a
	mov	r2,#0x00
	mov	a,r5
	orl	ar6,a
	mov	a,r2
	orl	ar7,a
	mov	(_bmm150_read_mag_data_raw_mag_data_1_108 + 0x0006),r6
	mov	((_bmm150_read_mag_data_raw_mag_data_1_108 + 0x0006) + 1),r7
;	bmm150.c:969: mag_data->x = compensate_x(raw_mag_data.raw_datax, raw_mag_data.raw_data_r, dev);
	mov	dpl,_bmm150_read_mag_data_raw_mag_data_1_108
	mov	dph,(_bmm150_read_mag_data_raw_mag_data_1_108 + 1)
	mov	_compensate_x_PARM_2,r6
	mov	(_compensate_x_PARM_2 + 1),r7
	mov	_compensate_x_PARM_3,_bmm150_read_mag_data_PARM_2
	mov	(_compensate_x_PARM_3 + 1),(_bmm150_read_mag_data_PARM_2 + 1)
	mov	(_compensate_x_PARM_3 + 2),(_bmm150_read_mag_data_PARM_2 + 2)
	lcall	_compensate_x
	mov	r2,dpl
	mov	r3,dph
	mov	dpl,_bmm150_read_mag_data_mag_data_1_107
	mov	dph,(_bmm150_read_mag_data_mag_data_1_107 + 1)
	mov	b,(_bmm150_read_mag_data_mag_data_1_107 + 2)
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
;	bmm150.c:972: mag_data->y = compensate_y(raw_mag_data.raw_datay, raw_mag_data.raw_data_r, dev);
	mov	a,#0x02
	add	a,_bmm150_read_mag_data_mag_data_1_107
	mov	r2,a
	clr	a
	addc	a,(_bmm150_read_mag_data_mag_data_1_107 + 1)
	mov	r3,a
	mov	r4,(_bmm150_read_mag_data_mag_data_1_107 + 2)
	mov	dpl,(_bmm150_read_mag_data_raw_mag_data_1_108 + 0x0002)
	mov	dph,((_bmm150_read_mag_data_raw_mag_data_1_108 + 0x0002) + 1)
	mov	_compensate_y_PARM_2,(_bmm150_read_mag_data_raw_mag_data_1_108 + 0x0006)
	mov	(_compensate_y_PARM_2 + 1),((_bmm150_read_mag_data_raw_mag_data_1_108 + 0x0006) + 1)
	mov	_compensate_y_PARM_3,_bmm150_read_mag_data_PARM_2
	mov	(_compensate_y_PARM_3 + 1),(_bmm150_read_mag_data_PARM_2 + 1)
	mov	(_compensate_y_PARM_3 + 2),(_bmm150_read_mag_data_PARM_2 + 2)
	push	ar2
	push	ar3
	push	ar4
	lcall	_compensate_y
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
;	bmm150.c:975: mag_data->z = compensate_z(raw_mag_data.raw_dataz, raw_mag_data.raw_data_r, dev);
	mov	a,#0x04
	add	a,_bmm150_read_mag_data_mag_data_1_107
	mov	r2,a
	clr	a
	addc	a,(_bmm150_read_mag_data_mag_data_1_107 + 1)
	mov	r3,a
	mov	r4,(_bmm150_read_mag_data_mag_data_1_107 + 2)
	mov	dpl,(_bmm150_read_mag_data_raw_mag_data_1_108 + 0x0004)
	mov	dph,((_bmm150_read_mag_data_raw_mag_data_1_108 + 0x0004) + 1)
	mov	_compensate_z_PARM_2,(_bmm150_read_mag_data_raw_mag_data_1_108 + 0x0006)
	mov	(_compensate_z_PARM_2 + 1),((_bmm150_read_mag_data_raw_mag_data_1_108 + 0x0006) + 1)
	mov	_compensate_z_PARM_3,_bmm150_read_mag_data_PARM_2
	mov	(_compensate_z_PARM_3 + 1),(_bmm150_read_mag_data_PARM_2 + 1)
	mov	(_compensate_z_PARM_3 + 2),(_bmm150_read_mag_data_PARM_2 + 2)
	push	ar2
	push	ar3
	push	ar4
	lcall	_compensate_z
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
L011002?:
;	bmm150.c:978: return rslt;
	mov	dpl,_bmm150_read_mag_data_rslt_1_108
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'bmm150_get_interrupt_status'
;------------------------------------------------------------
;dev                       Allocated to registers r2 r3 r4 
;rslt                      Allocated to registers r5 
;interrupt_status          Allocated with name '_bmm150_get_interrupt_status_interrupt_status_1_111'
;data_ready_status         Allocated with name '_bmm150_get_interrupt_status_data_ready_status_1_111'
;------------------------------------------------------------
;	bmm150.c:1048: int8_t bmm150_get_interrupt_status(struct bmm150_dev *dev)
;	-----------------------------------------
;	 function bmm150_get_interrupt_status
;	-----------------------------------------
_bmm150_get_interrupt_status:
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
;	bmm150.c:1055: rslt = bmm150_get_regs(BMM150_REG_DATA_READY_STATUS, &data_ready_status, 1, dev);
	push	ar2
	push	ar3
	push	ar4
	push	ar2
	push	ar3
	push	ar4
	mov	a,#0x01
	push	acc
	clr	a
	push	acc
	push	acc
	push	acc
	mov	a,#_bmm150_get_interrupt_status_data_ready_status_1_111
	push	acc
	mov	a,#(_bmm150_get_interrupt_status_data_ready_status_1_111 >> 8)
	push	acc
	mov	a,#0x40
	push	acc
	mov	dpl,#0x48
	lcall	_bmm150_get_regs
	mov	r5,dpl
	mov	a,sp
	add	a,#0xf6
	mov	sp,a
	pop	ar4
	pop	ar3
	pop	ar2
;	bmm150.c:1057: if (rslt == BMM150_OK)
	mov	a,r5
	jnz	L012004?
;	bmm150.c:1060: rslt = bmm150_get_regs(BMM150_REG_INTERRUPT_STATUS, &interrupt_status, 1, dev);
	push	ar2
	push	ar3
	push	ar4
	push	ar2
	push	ar3
	push	ar4
	mov	a,#0x01
	push	acc
	clr	a
	push	acc
	push	acc
	push	acc
	mov	a,#_bmm150_get_interrupt_status_interrupt_status_1_111
	push	acc
	mov	a,#(_bmm150_get_interrupt_status_interrupt_status_1_111 >> 8)
	push	acc
	mov	a,#0x40
	push	acc
	mov	dpl,#0x4A
	lcall	_bmm150_get_regs
	mov	r5,dpl
	mov	a,sp
	add	a,#0xf6
	mov	sp,a
	pop	ar4
	pop	ar3
	pop	ar2
;	bmm150.c:1062: if (rslt == BMM150_OK)
	mov	a,r5
;	bmm150.c:1065: data_ready_status = BMM150_GET_BITS_POS_0(data_ready_status, BMM150_DRDY_STATUS);
	jnz	L012004?
	mov	r6,_bmm150_get_interrupt_status_data_ready_status_1_111
	anl	ar6,#0x01
	mov	_bmm150_get_interrupt_status_data_ready_status_1_111,r6
;	bmm150.c:1068: dev->int_status = (data_ready_status << 8) | interrupt_status;
	mov	a,#0x1C
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	r7,_bmm150_get_interrupt_status_data_ready_status_1_111
	mov	r6,#0x00
	mov	r0,_bmm150_get_interrupt_status_interrupt_status_1_111
	mov	r1,#0x00
	mov	a,r0
	orl	ar6,a
	mov	a,r1
	orl	ar7,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
L012004?:
;	bmm150.c:1072: return rslt;
	mov	dpl,r5
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'bmm150_aux_mag_data'
;------------------------------------------------------------
;mag_data                  Allocated with name '_bmm150_aux_mag_data_PARM_2'
;dev                       Allocated with name '_bmm150_aux_mag_data_PARM_3'
;aux_data                  Allocated with name '_bmm150_aux_mag_data_aux_data_1_114'
;rslt                      Allocated with name '_bmm150_aux_mag_data_rslt_1_115'
;msb_data                  Allocated to registers r7 r2 
;raw_mag_data              Allocated with name '_bmm150_aux_mag_data_raw_mag_data_1_115'
;sloc0                     Allocated with name '_bmm150_aux_mag_data_sloc0_1_0'
;------------------------------------------------------------
;	bmm150.c:1081: int8_t bmm150_aux_mag_data(uint8_t *aux_data, struct bmm150_mag_data *mag_data, const struct bmm150_dev *dev)
;	-----------------------------------------
;	 function bmm150_aux_mag_data
;	-----------------------------------------
_bmm150_aux_mag_data:
	mov	_bmm150_aux_mag_data_aux_data_1_114,dpl
	mov	(_bmm150_aux_mag_data_aux_data_1_114 + 1),dph
	mov	(_bmm150_aux_mag_data_aux_data_1_114 + 2),b
;	bmm150.c:1088: rslt = null_ptr_check(dev);
	mov	dpl,_bmm150_aux_mag_data_PARM_3
	mov	dph,(_bmm150_aux_mag_data_PARM_3 + 1)
	mov	b,(_bmm150_aux_mag_data_PARM_3 + 2)
	lcall	_null_ptr_check
;	bmm150.c:1091: if ((rslt == BMM150_OK) && (aux_data != NULL))
	mov	a,dpl
	mov	_bmm150_aux_mag_data_rslt_1_115,a
	jz	L013008?
	ljmp	L013002?
L013008?:
	clr	a
	cjne	a,_bmm150_aux_mag_data_aux_data_1_114,L013009?
	clr	a
	cjne	a,(_bmm150_aux_mag_data_aux_data_1_114 + 1),L013009?
	clr	a
	cjne	a,(_bmm150_aux_mag_data_aux_data_1_114 + 2),L013009?
	ljmp	L013002?
L013009?:
;	bmm150.c:1094: aux_data[0] = BMM150_GET_BITS(aux_data[0], BMM150_DATA_X);
	mov	dpl,_bmm150_aux_mag_data_aux_data_1_114
	mov	dph,(_bmm150_aux_mag_data_aux_data_1_114 + 1)
	mov	b,(_bmm150_aux_mag_data_aux_data_1_114 + 2)
	lcall	__gptrget
	mov	r6,a
	anl	ar6,#0xF8
	clr	a
	swap	a
	rl	a
	xch	a,r6
	swap	a
	rl	a
	anl	a,#0x1f
	xrl	a,r6
	xch	a,r6
	anl	a,#0x1f
	xch	a,r6
	xrl	a,r6
	xch	a,r6
	mov	dpl,_bmm150_aux_mag_data_aux_data_1_114
	mov	dph,(_bmm150_aux_mag_data_aux_data_1_114 + 1)
	mov	b,(_bmm150_aux_mag_data_aux_data_1_114 + 2)
	mov	a,r6
	lcall	__gptrput
;	bmm150.c:1098: msb_data = ((int16_t)((int8_t)aux_data[1])) * 32;
	mov	a,#0x01
	add	a,_bmm150_aux_mag_data_aux_data_1_114
	mov	r7,a
	clr	a
	addc	a,(_bmm150_aux_mag_data_aux_data_1_114 + 1)
	mov	r5,a
	mov	r2,(_bmm150_aux_mag_data_aux_data_1_114 + 2)
	mov	dpl,r7
	mov	dph,r5
	mov	b,r2
	lcall	__gptrget
	mov	r7,a
	rlc	a
	subb	a,acc
	swap	a
	rl	a
	anl	a,#0xe0
	xch	a,r7
	swap	a
	rl	a
	xch	a,r7
	xrl	a,r7
	xch	a,r7
	anl	a,#0xe0
	xch	a,r7
	xrl	a,r7
	mov	r2,a
;	bmm150.c:1101: raw_mag_data.raw_datax = (int16_t)(msb_data | aux_data[0]);
	mov	r3,#0x00
	mov	a,r7
	orl	ar6,a
	mov	a,r2
	orl	ar3,a
	mov	_bmm150_aux_mag_data_raw_mag_data_1_115,r6
	mov	(_bmm150_aux_mag_data_raw_mag_data_1_115 + 1),r3
;	bmm150.c:1104: aux_data[2] = BMM150_GET_BITS(aux_data[2], BMM150_DATA_Y);
	mov	a,#0x02
	add	a,_bmm150_aux_mag_data_aux_data_1_114
	mov	_bmm150_aux_mag_data_sloc0_1_0,a
	clr	a
	addc	a,(_bmm150_aux_mag_data_aux_data_1_114 + 1)
	mov	(_bmm150_aux_mag_data_sloc0_1_0 + 1),a
	mov	(_bmm150_aux_mag_data_sloc0_1_0 + 2),(_bmm150_aux_mag_data_aux_data_1_114 + 2)
	mov	dpl,_bmm150_aux_mag_data_sloc0_1_0
	mov	dph,(_bmm150_aux_mag_data_sloc0_1_0 + 1)
	mov	b,(_bmm150_aux_mag_data_sloc0_1_0 + 2)
	lcall	__gptrget
	mov	r6,a
	anl	ar6,#0xF8
	clr	a
	swap	a
	rl	a
	xch	a,r6
	swap	a
	rl	a
	anl	a,#0x1f
	xrl	a,r6
	xch	a,r6
	anl	a,#0x1f
	xch	a,r6
	xrl	a,r6
	xch	a,r6
	mov	dpl,_bmm150_aux_mag_data_sloc0_1_0
	mov	dph,(_bmm150_aux_mag_data_sloc0_1_0 + 1)
	mov	b,(_bmm150_aux_mag_data_sloc0_1_0 + 2)
	mov	a,r6
	lcall	__gptrput
;	bmm150.c:1108: msb_data = ((int16_t)((int8_t)aux_data[3])) * 32;
	mov	a,#0x03
	add	a,_bmm150_aux_mag_data_aux_data_1_114
	mov	r3,a
	clr	a
	addc	a,(_bmm150_aux_mag_data_aux_data_1_114 + 1)
	mov	r4,a
	mov	r5,(_bmm150_aux_mag_data_aux_data_1_114 + 2)
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	r3,a
	rlc	a
	subb	a,acc
	mov	ar7,r3
	swap	a
	rl	a
	anl	a,#0xe0
	xch	a,r7
	swap	a
	rl	a
	xch	a,r7
	xrl	a,r7
	xch	a,r7
	anl	a,#0xe0
	xch	a,r7
	xrl	a,r7
	mov	r2,a
;	bmm150.c:1111: raw_mag_data.raw_datay = (int16_t)(msb_data | aux_data[2]);
	mov	r3,#0x00
	mov	a,r7
	orl	ar6,a
	mov	a,r2
	orl	ar3,a
	mov	(_bmm150_aux_mag_data_raw_mag_data_1_115 + 0x0002),r6
	mov	((_bmm150_aux_mag_data_raw_mag_data_1_115 + 0x0002) + 1),r3
;	bmm150.c:1114: aux_data[4] = BMM150_GET_BITS(aux_data[4], BMM150_DATA_Z);
	mov	a,#0x04
	add	a,_bmm150_aux_mag_data_aux_data_1_114
	mov	_bmm150_aux_mag_data_sloc0_1_0,a
	clr	a
	addc	a,(_bmm150_aux_mag_data_aux_data_1_114 + 1)
	mov	(_bmm150_aux_mag_data_sloc0_1_0 + 1),a
	mov	(_bmm150_aux_mag_data_sloc0_1_0 + 2),(_bmm150_aux_mag_data_aux_data_1_114 + 2)
	mov	dpl,_bmm150_aux_mag_data_sloc0_1_0
	mov	dph,(_bmm150_aux_mag_data_sloc0_1_0 + 1)
	mov	b,(_bmm150_aux_mag_data_sloc0_1_0 + 2)
	lcall	__gptrget
	mov	r6,a
	anl	ar6,#0xFE
	clr	a
	clr	c
	rrc	a
	xch	a,r6
	rrc	a
	xch	a,r6
	mov	dpl,_bmm150_aux_mag_data_sloc0_1_0
	mov	dph,(_bmm150_aux_mag_data_sloc0_1_0 + 1)
	mov	b,(_bmm150_aux_mag_data_sloc0_1_0 + 2)
	mov	a,r6
	lcall	__gptrput
;	bmm150.c:1118: msb_data = ((int16_t)((int8_t)aux_data[5])) * 128;
	mov	a,#0x05
	add	a,_bmm150_aux_mag_data_aux_data_1_114
	mov	r3,a
	clr	a
	addc	a,(_bmm150_aux_mag_data_aux_data_1_114 + 1)
	mov	r4,a
	mov	r5,(_bmm150_aux_mag_data_aux_data_1_114 + 2)
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	r3,a
	rlc	a
	subb	a,acc
	mov	ar7,r3
	anl	a,#0x01
	mov	c,acc.0
	xch	a,r7
	rrc	a
	xch	a,r7
	rrc	a
	xch	a,r7
	mov	r2,a
;	bmm150.c:1121: raw_mag_data.raw_dataz = (int16_t)(msb_data | aux_data[4]);
	mov	r3,#0x00
	mov	a,r6
	orl	ar7,a
	mov	a,r3
	orl	ar2,a
	mov	(_bmm150_aux_mag_data_raw_mag_data_1_115 + 0x0004),r7
	mov	((_bmm150_aux_mag_data_raw_mag_data_1_115 + 0x0004) + 1),r2
;	bmm150.c:1124: aux_data[6] = BMM150_GET_BITS(aux_data[6], BMM150_DATA_RHALL);
	mov	a,#0x06
	add	a,_bmm150_aux_mag_data_aux_data_1_114
	mov	r2,a
	clr	a
	addc	a,(_bmm150_aux_mag_data_aux_data_1_114 + 1)
	mov	r3,a
	mov	r4,(_bmm150_aux_mag_data_aux_data_1_114 + 2)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r5,a
	anl	ar5,#0xFC
	clr	a
	clr	c
	rrc	a
	xch	a,r5
	rrc	a
	xch	a,r5
	clr	c
	rrc	a
	xch	a,r5
	rrc	a
	xch	a,r5
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	__gptrput
;	bmm150.c:1125: raw_mag_data.raw_data_r = (uint16_t)(((uint16_t)aux_data[7] << 6) | aux_data[6]);
	mov	a,#0x07
	add	a,_bmm150_aux_mag_data_aux_data_1_114
	mov	r2,a
	clr	a
	addc	a,(_bmm150_aux_mag_data_aux_data_1_114 + 1)
	mov	r3,a
	mov	r4,(_bmm150_aux_mag_data_aux_data_1_114 + 2)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
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
	mov	a,r5
	orl	ar2,a
	mov	a,r4
	orl	ar3,a
	mov	(_bmm150_aux_mag_data_raw_mag_data_1_115 + 0x0006),r2
	mov	((_bmm150_aux_mag_data_raw_mag_data_1_115 + 0x0006) + 1),r3
;	bmm150.c:1128: mag_data->x = compensate_x(raw_mag_data.raw_datax, raw_mag_data.raw_data_r, dev);
	mov	r4,_bmm150_aux_mag_data_PARM_2
	mov	r5,(_bmm150_aux_mag_data_PARM_2 + 1)
	mov	r6,(_bmm150_aux_mag_data_PARM_2 + 2)
	mov	dpl,_bmm150_aux_mag_data_raw_mag_data_1_115
	mov	dph,(_bmm150_aux_mag_data_raw_mag_data_1_115 + 1)
	mov	_compensate_x_PARM_2,r2
	mov	(_compensate_x_PARM_2 + 1),r3
	mov	_compensate_x_PARM_3,_bmm150_aux_mag_data_PARM_3
	mov	(_compensate_x_PARM_3 + 1),(_bmm150_aux_mag_data_PARM_3 + 1)
	mov	(_compensate_x_PARM_3 + 2),(_bmm150_aux_mag_data_PARM_3 + 2)
	push	ar4
	push	ar5
	push	ar6
	lcall	_compensate_x
	mov	r2,dpl
	mov	r3,dph
	pop	ar6
	pop	ar5
	pop	ar4
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
;	bmm150.c:1131: mag_data->y = compensate_y(raw_mag_data.raw_datay, raw_mag_data.raw_data_r, dev);
	mov	a,#0x02
	add	a,r4
	mov	_bmm150_aux_mag_data_sloc0_1_0,a
	clr	a
	addc	a,r5
	mov	(_bmm150_aux_mag_data_sloc0_1_0 + 1),a
	mov	(_bmm150_aux_mag_data_sloc0_1_0 + 2),r6
	mov	dpl,(_bmm150_aux_mag_data_raw_mag_data_1_115 + 0x0002)
	mov	dph,((_bmm150_aux_mag_data_raw_mag_data_1_115 + 0x0002) + 1)
	mov	_compensate_y_PARM_2,(_bmm150_aux_mag_data_raw_mag_data_1_115 + 0x0006)
	mov	(_compensate_y_PARM_2 + 1),((_bmm150_aux_mag_data_raw_mag_data_1_115 + 0x0006) + 1)
	mov	_compensate_y_PARM_3,_bmm150_aux_mag_data_PARM_3
	mov	(_compensate_y_PARM_3 + 1),(_bmm150_aux_mag_data_PARM_3 + 1)
	mov	(_compensate_y_PARM_3 + 2),(_bmm150_aux_mag_data_PARM_3 + 2)
	push	ar4
	push	ar5
	push	ar6
	lcall	_compensate_y
	mov	r2,dpl
	mov	r3,dph
	pop	ar6
	pop	ar5
	pop	ar4
	mov	dpl,_bmm150_aux_mag_data_sloc0_1_0
	mov	dph,(_bmm150_aux_mag_data_sloc0_1_0 + 1)
	mov	b,(_bmm150_aux_mag_data_sloc0_1_0 + 2)
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
;	bmm150.c:1134: mag_data->z = compensate_z(raw_mag_data.raw_dataz, raw_mag_data.raw_data_r, dev);
	mov	a,#0x04
	add	a,r4
	mov	r4,a
	clr	a
	addc	a,r5
	mov	r5,a
	mov	dpl,(_bmm150_aux_mag_data_raw_mag_data_1_115 + 0x0004)
	mov	dph,((_bmm150_aux_mag_data_raw_mag_data_1_115 + 0x0004) + 1)
	mov	_compensate_z_PARM_2,(_bmm150_aux_mag_data_raw_mag_data_1_115 + 0x0006)
	mov	(_compensate_z_PARM_2 + 1),((_bmm150_aux_mag_data_raw_mag_data_1_115 + 0x0006) + 1)
	mov	_compensate_z_PARM_3,_bmm150_aux_mag_data_PARM_3
	mov	(_compensate_z_PARM_3 + 1),(_bmm150_aux_mag_data_PARM_3 + 1)
	mov	(_compensate_z_PARM_3 + 2),(_bmm150_aux_mag_data_PARM_3 + 2)
	push	ar4
	push	ar5
	push	ar6
	lcall	_compensate_z
	mov	r2,dpl
	mov	r3,dph
	pop	ar6
	pop	ar5
	pop	ar4
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
L013002?:
;	bmm150.c:1137: return rslt;
	mov	dpl,_bmm150_aux_mag_data_rslt_1_115
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'null_ptr_check'
;------------------------------------------------------------
;dev                       Allocated to registers r2 r3 r4 
;rslt                      Allocated to registers r2 
;------------------------------------------------------------
;	bmm150.c:1147: __xdata static int8_t null_ptr_check(const struct bmm150_dev *dev)
;	-----------------------------------------
;	 function null_ptr_check
;	-----------------------------------------
_null_ptr_check:
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
;	bmm150.c:1151: if ((dev == NULL) || (dev->read == NULL) || (dev->write == NULL) || (dev->delay_us == NULL) ||
	cjne	r2,#0x00,L014014?
	cjne	r3,#0x00,L014014?
	cjne	r4,#0x00,L014014?
	ljmp	L014001?
L014014?:
	mov	a,#0x06
	add	a,r2
	mov	r5,a
	clr	a
	addc	a,r3
	mov	r6,a
	mov	ar7,r4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	mov	r7,#0x80
	cjne	r5,#0x00,L014015?
	cjne	r6,#0x00,L014015?
	cjne	r7,#0x00,L014015?
	sjmp	L014001?
L014015?:
	mov	a,#0x08
	add	a,r2
	mov	r5,a
	clr	a
	addc	a,r3
	mov	r6,a
	mov	ar7,r4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	mov	r7,#0x80
	cjne	r5,#0x00,L014016?
	cjne	r6,#0x00,L014016?
	cjne	r7,#0x00,L014016?
	sjmp	L014001?
L014016?:
	mov	a,#0x0A
	add	a,r2
	mov	r5,a
	clr	a
	addc	a,r3
	mov	r6,a
	mov	ar7,r4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	mov	r7,#0x80
	cjne	r5,#0x00,L014017?
	cjne	r6,#0x00,L014017?
	cjne	r7,#0x00,L014017?
	sjmp	L014001?
L014017?:
;	bmm150.c:1152: (dev->intf_ptr == NULL))
	mov	a,#0x02
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	cjne	r2,#0x00,L014002?
	cjne	r3,#0x00,L014002?
	cjne	r4,#0x00,L014002?
L014001?:
;	bmm150.c:1155: rslt = BMM150_E_NULL_PTR;
	mov	r2,#0xFF
	sjmp	L014003?
L014002?:
;	bmm150.c:1160: rslt = BMM150_OK;
	mov	r2,#0x00
L014003?:
;	bmm150.c:1163: return rslt;
	mov	dpl,r2
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'set_power_control_bit'
;------------------------------------------------------------
;dev                       Allocated with name '_set_power_control_bit_PARM_2'
;pwrcntrl_bit              Allocated to registers r2 
;rslt                      Allocated to registers r3 
;reg_data                  Allocated with name '_set_power_control_bit_reg_data_1_122'
;------------------------------------------------------------
;	bmm150.c:1169: __xdata static int8_t set_power_control_bit(uint8_t pwrcntrl_bit, struct bmm150_dev *dev)
;	-----------------------------------------
;	 function set_power_control_bit
;	-----------------------------------------
_set_power_control_bit:
	mov	r2,dpl
;	bmm150.c:1172: uint8_t reg_data = 0;
	mov	_set_power_control_bit_reg_data_1_122,#0x00
;	bmm150.c:1175: rslt = bmm150_get_regs(BMM150_REG_POWER_CONTROL, &reg_data, 1, dev);
	push	ar2
	push	_set_power_control_bit_PARM_2
	push	(_set_power_control_bit_PARM_2 + 1)
	push	(_set_power_control_bit_PARM_2 + 2)
	mov	a,#0x01
	push	acc
	clr	a
	push	acc
	push	acc
	push	acc
	mov	a,#_set_power_control_bit_reg_data_1_122
	push	acc
	mov	a,#(_set_power_control_bit_reg_data_1_122 >> 8)
	push	acc
	mov	a,#0x40
	push	acc
	mov	dpl,#0x4B
	lcall	_bmm150_get_regs
	mov	r3,dpl
	mov	a,sp
	add	a,#0xf6
	mov	sp,a
	pop	ar2
;	bmm150.c:1178: if (rslt == BMM150_OK)
	mov	a,r3
	jnz	L015004?
;	bmm150.c:1181: reg_data = BMM150_SET_BITS_POS_0(reg_data, BMM150_PWR_CNTRL, pwrcntrl_bit);
	mov	a,#0xFE
	anl	a,_set_power_control_bit_reg_data_1_122
	mov	r4,a
	mov	ar5,r2
	anl	ar5,#0x01
	clr	a
	mov	r6,a
	mov	r7,a
	mov	a,r4
	orl	ar5,a
	mov	a,r7
	orl	ar6,a
	mov	_set_power_control_bit_reg_data_1_122,r5
;	bmm150.c:1182: rslt = bmm150_set_regs(BMM150_REG_POWER_CONTROL, &reg_data, 1, dev);
	mov	_bmm150_set_regs_PARM_2,#_set_power_control_bit_reg_data_1_122
	mov	(_bmm150_set_regs_PARM_2 + 1),#0x00
	mov	(_bmm150_set_regs_PARM_2 + 2),#0x40
	mov	_bmm150_set_regs_PARM_3,#0x01
	clr	a
	mov	(_bmm150_set_regs_PARM_3 + 1),a
	mov	(_bmm150_set_regs_PARM_3 + 2),a
	mov	(_bmm150_set_regs_PARM_3 + 3),a
	mov	_bmm150_set_regs_PARM_4,_set_power_control_bit_PARM_2
	mov	(_bmm150_set_regs_PARM_4 + 1),(_set_power_control_bit_PARM_2 + 1)
	mov	(_bmm150_set_regs_PARM_4 + 2),(_set_power_control_bit_PARM_2 + 2)
	mov	dpl,#0x4B
	push	ar2
	lcall	_bmm150_set_regs
	mov	r3,dpl
	pop	ar2
;	bmm150.c:1184: if (rslt == BMM150_OK)
	mov	a,r3
	jnz	L015004?
;	bmm150.c:1189: dev->pwr_cntrl_bit = pwrcntrl_bit;
	mov	a,#0x1E
	add	a,_set_power_control_bit_PARM_2
	mov	r4,a
	clr	a
	addc	a,(_set_power_control_bit_PARM_2 + 1)
	mov	r5,a
	mov	r6,(_set_power_control_bit_PARM_2 + 2)
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r2
	lcall	__gptrput
L015004?:
;	bmm150.c:1193: return rslt;
	mov	dpl,r3
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'read_trim_registers'
;------------------------------------------------------------
;dev                       Allocated with name '_read_trim_registers_dev_1_125'
;rslt                      Allocated with name '_read_trim_registers_rslt_1_126'
;trim_x1y1                 Allocated with name '_read_trim_registers_trim_x1y1_1_126'
;trim_xyz_data             Allocated with name '_read_trim_registers_trim_xyz_data_1_126'
;trim_xy1xy2               Allocated with name '_read_trim_registers_trim_xy1xy2_1_126'
;temp_msb                  Allocated with name '_read_trim_registers_temp_msb_1_126'
;sloc0                     Allocated with name '_read_trim_registers_sloc0_1_0'
;------------------------------------------------------------
;	bmm150.c:1200: __xdata static int8_t read_trim_registers(struct bmm150_dev *dev)
;	-----------------------------------------
;	 function read_trim_registers
;	-----------------------------------------
_read_trim_registers:
	mov	_read_trim_registers_dev_1_125,dpl
	mov	(_read_trim_registers_dev_1_125 + 1),dph
	mov	(_read_trim_registers_dev_1_125 + 2),b
;	bmm150.c:1203: uint8_t trim_x1y1[2] = { 0 };
	mov	_read_trim_registers_trim_x1y1_1_126,#0x00
	mov	(_read_trim_registers_trim_x1y1_1_126 + 0x0001),#0x00
;	bmm150.c:1204: uint8_t trim_xyz_data[4] = { 0 };
	mov	_read_trim_registers_trim_xyz_data_1_126,#0x00
	mov	(_read_trim_registers_trim_xyz_data_1_126 + 0x0001),#0x00
	mov	(_read_trim_registers_trim_xyz_data_1_126 + 0x0002),#0x00
	mov	(_read_trim_registers_trim_xyz_data_1_126 + 0x0003),#0x00
;	bmm150.c:1205: uint8_t trim_xy1xy2[10] = { 0 };
	mov	_read_trim_registers_trim_xy1xy2_1_126,#0x00
	mov	(_read_trim_registers_trim_xy1xy2_1_126 + 0x0001),#0x00
	mov	(_read_trim_registers_trim_xy1xy2_1_126 + 0x0002),#0x00
	mov	(_read_trim_registers_trim_xy1xy2_1_126 + 0x0003),#0x00
	mov	(_read_trim_registers_trim_xy1xy2_1_126 + 0x0004),#0x00
	mov	(_read_trim_registers_trim_xy1xy2_1_126 + 0x0005),#0x00
	mov	(_read_trim_registers_trim_xy1xy2_1_126 + 0x0006),#0x00
	mov	(_read_trim_registers_trim_xy1xy2_1_126 + 0x0007),#0x00
	mov	(_read_trim_registers_trim_xy1xy2_1_126 + 0x0008),#0x00
	mov	(_read_trim_registers_trim_xy1xy2_1_126 + 0x0009),#0x00
;	bmm150.c:1209: rslt = bmm150_get_regs(BMM150_DIG_X1, trim_x1y1, 2, dev);
	push	_read_trim_registers_dev_1_125
	push	(_read_trim_registers_dev_1_125 + 1)
	push	(_read_trim_registers_dev_1_125 + 2)
	mov	a,#0x02
	push	acc
	clr	a
	push	acc
	push	acc
	push	acc
	mov	a,#_read_trim_registers_trim_x1y1_1_126
	push	acc
	mov	a,#(_read_trim_registers_trim_x1y1_1_126 >> 8)
	push	acc
	mov	a,#0x40
	push	acc
	mov	dpl,#0x5D
	lcall	_bmm150_get_regs
	mov	_read_trim_registers_rslt_1_126,dpl
	mov	a,sp
	add	a,#0xf6
	mov	sp,a
;	bmm150.c:1211: if (rslt == BMM150_OK)
	mov	a,_read_trim_registers_rslt_1_126
	jz	L016012?
	ljmp	L016006?
L016012?:
;	bmm150.c:1213: rslt = bmm150_get_regs(BMM150_DIG_Z4_LSB, trim_xyz_data, 4, dev);
	push	_read_trim_registers_dev_1_125
	push	(_read_trim_registers_dev_1_125 + 1)
	push	(_read_trim_registers_dev_1_125 + 2)
	mov	a,#0x04
	push	acc
	clr	a
	push	acc
	push	acc
	push	acc
	mov	a,#_read_trim_registers_trim_xyz_data_1_126
	push	acc
	mov	a,#(_read_trim_registers_trim_xyz_data_1_126 >> 8)
	push	acc
	mov	a,#0x40
	push	acc
	mov	dpl,#0x62
	lcall	_bmm150_get_regs
	mov	_read_trim_registers_rslt_1_126,dpl
	mov	a,sp
	add	a,#0xf6
	mov	sp,a
;	bmm150.c:1215: if (rslt == BMM150_OK)
	mov	a,_read_trim_registers_rslt_1_126
	jz	L016013?
	ljmp	L016006?
L016013?:
;	bmm150.c:1217: rslt = bmm150_get_regs(BMM150_DIG_Z2_LSB, trim_xy1xy2, 10, dev);
	push	_read_trim_registers_dev_1_125
	push	(_read_trim_registers_dev_1_125 + 1)
	push	(_read_trim_registers_dev_1_125 + 2)
	mov	a,#0x0A
	push	acc
	clr	a
	push	acc
	push	acc
	push	acc
	mov	a,#_read_trim_registers_trim_xy1xy2_1_126
	push	acc
	mov	a,#(_read_trim_registers_trim_xy1xy2_1_126 >> 8)
	push	acc
	mov	a,#0x40
	push	acc
	mov	dpl,#0x68
	lcall	_bmm150_get_regs
	mov	_read_trim_registers_rslt_1_126,dpl
	mov	a,sp
	add	a,#0xf6
	mov	sp,a
;	bmm150.c:1219: if (rslt == BMM150_OK)
	mov	a,_read_trim_registers_rslt_1_126
	jz	L016014?
	ljmp	L016006?
L016014?:
;	bmm150.c:1224: dev->trim_data.dig_x1 = (int8_t)trim_x1y1[0];
	mov	a,#0x0C
	add	a,_read_trim_registers_dev_1_125
	mov	r6,a
	clr	a
	addc	a,(_read_trim_registers_dev_1_125 + 1)
	mov	r7,a
	mov	r5,(_read_trim_registers_dev_1_125 + 2)
	mov	r2,_read_trim_registers_trim_x1y1_1_126
	mov	dpl,r6
	mov	dph,r7
	mov	b,r5
	mov	a,r2
	lcall	__gptrput
;	bmm150.c:1225: dev->trim_data.dig_y1 = (int8_t)trim_x1y1[1];
	mov	a,#0x0C
	add	a,_read_trim_registers_dev_1_125
	mov	r2,a
	clr	a
	addc	a,(_read_trim_registers_dev_1_125 + 1)
	mov	r3,a
	mov	r4,(_read_trim_registers_dev_1_125 + 2)
	mov	a,#0x01
	add	a,r2
	mov	_read_trim_registers_sloc0_1_0,a
	clr	a
	addc	a,r3
	mov	(_read_trim_registers_sloc0_1_0 + 1),a
	mov	(_read_trim_registers_sloc0_1_0 + 2),r4
	mov	r5,(_read_trim_registers_trim_x1y1_1_126 + 0x0001)
	mov	dpl,_read_trim_registers_sloc0_1_0
	mov	dph,(_read_trim_registers_sloc0_1_0 + 1)
	mov	b,(_read_trim_registers_sloc0_1_0 + 2)
	mov	a,r5
	lcall	__gptrput
;	bmm150.c:1226: dev->trim_data.dig_x2 = (int8_t)trim_xyz_data[2];
	mov	a,#0x02
	add	a,r2
	mov	_read_trim_registers_sloc0_1_0,a
	clr	a
	addc	a,r3
	mov	(_read_trim_registers_sloc0_1_0 + 1),a
	mov	(_read_trim_registers_sloc0_1_0 + 2),r4
	mov	r5,(_read_trim_registers_trim_xyz_data_1_126 + 0x0002)
	mov	dpl,_read_trim_registers_sloc0_1_0
	mov	dph,(_read_trim_registers_sloc0_1_0 + 1)
	mov	b,(_read_trim_registers_sloc0_1_0 + 2)
	mov	a,r5
	lcall	__gptrput
;	bmm150.c:1227: dev->trim_data.dig_y2 = (int8_t)trim_xyz_data[3];
	mov	a,#0x03
	add	a,r2
	mov	_read_trim_registers_sloc0_1_0,a
	clr	a
	addc	a,r3
	mov	(_read_trim_registers_sloc0_1_0 + 1),a
	mov	(_read_trim_registers_sloc0_1_0 + 2),r4
	mov	r5,(_read_trim_registers_trim_xyz_data_1_126 + 0x0003)
	mov	dpl,_read_trim_registers_sloc0_1_0
	mov	dph,(_read_trim_registers_sloc0_1_0 + 1)
	mov	b,(_read_trim_registers_sloc0_1_0 + 2)
	mov	a,r5
	lcall	__gptrput
;	bmm150.c:1228: temp_msb = ((uint16_t)trim_xy1xy2[3]) << 8;
	mov	r5,(_read_trim_registers_trim_xy1xy2_1_126 + 0x0003)
	mov	(_read_trim_registers_temp_msb_1_126 + 1),r5
	mov	_read_trim_registers_temp_msb_1_126,#0x00
;	bmm150.c:1229: dev->trim_data.dig_z1 = (uint16_t)(temp_msb | trim_xy1xy2[2]);
	mov	a,#0x04
	add	a,r2
	mov	_read_trim_registers_sloc0_1_0,a
	clr	a
	addc	a,r3
	mov	(_read_trim_registers_sloc0_1_0 + 1),a
	mov	(_read_trim_registers_sloc0_1_0 + 2),r4
	mov	r5,(_read_trim_registers_trim_xy1xy2_1_126 + 0x0002)
	mov	r6,#0x00
	mov	a,_read_trim_registers_temp_msb_1_126
	orl	ar5,a
	mov	a,(_read_trim_registers_temp_msb_1_126 + 1)
	orl	ar6,a
	mov	dpl,_read_trim_registers_sloc0_1_0
	mov	dph,(_read_trim_registers_sloc0_1_0 + 1)
	mov	b,(_read_trim_registers_sloc0_1_0 + 2)
	mov	a,r5
	lcall	__gptrput
	inc	dptr
	mov	a,r6
	lcall	__gptrput
;	bmm150.c:1230: temp_msb = ((uint16_t)trim_xy1xy2[1]) << 8;
	mov	r5,(_read_trim_registers_trim_xy1xy2_1_126 + 0x0001)
	mov	(_read_trim_registers_temp_msb_1_126 + 1),r5
	mov	_read_trim_registers_temp_msb_1_126,#0x00
;	bmm150.c:1231: dev->trim_data.dig_z2 = (int16_t)(temp_msb | trim_xy1xy2[0]);
	mov	a,#0x06
	add	a,r2
	mov	_read_trim_registers_sloc0_1_0,a
	clr	a
	addc	a,r3
	mov	(_read_trim_registers_sloc0_1_0 + 1),a
	mov	(_read_trim_registers_sloc0_1_0 + 2),r4
	mov	r5,_read_trim_registers_trim_xy1xy2_1_126
	mov	r6,#0x00
	mov	a,_read_trim_registers_temp_msb_1_126
	orl	ar5,a
	mov	a,(_read_trim_registers_temp_msb_1_126 + 1)
	orl	ar6,a
	mov	dpl,_read_trim_registers_sloc0_1_0
	mov	dph,(_read_trim_registers_sloc0_1_0 + 1)
	mov	b,(_read_trim_registers_sloc0_1_0 + 2)
	mov	a,r5
	lcall	__gptrput
	inc	dptr
	mov	a,r6
	lcall	__gptrput
;	bmm150.c:1232: temp_msb = ((uint16_t)trim_xy1xy2[7]) << 8;
	mov	r5,(_read_trim_registers_trim_xy1xy2_1_126 + 0x0007)
	mov	(_read_trim_registers_temp_msb_1_126 + 1),r5
	mov	_read_trim_registers_temp_msb_1_126,#0x00
;	bmm150.c:1233: dev->trim_data.dig_z3 = (int16_t)(temp_msb | trim_xy1xy2[6]);
	mov	a,#0x08
	add	a,r2
	mov	_read_trim_registers_sloc0_1_0,a
	clr	a
	addc	a,r3
	mov	(_read_trim_registers_sloc0_1_0 + 1),a
	mov	(_read_trim_registers_sloc0_1_0 + 2),r4
	mov	r5,(_read_trim_registers_trim_xy1xy2_1_126 + 0x0006)
	mov	r6,#0x00
	mov	a,_read_trim_registers_temp_msb_1_126
	orl	ar5,a
	mov	a,(_read_trim_registers_temp_msb_1_126 + 1)
	orl	ar6,a
	mov	dpl,_read_trim_registers_sloc0_1_0
	mov	dph,(_read_trim_registers_sloc0_1_0 + 1)
	mov	b,(_read_trim_registers_sloc0_1_0 + 2)
	mov	a,r5
	lcall	__gptrput
	inc	dptr
	mov	a,r6
	lcall	__gptrput
;	bmm150.c:1234: temp_msb = ((uint16_t)trim_xyz_data[1]) << 8;
	mov	r5,(_read_trim_registers_trim_xyz_data_1_126 + 0x0001)
	mov	(_read_trim_registers_temp_msb_1_126 + 1),r5
	mov	_read_trim_registers_temp_msb_1_126,#0x00
;	bmm150.c:1235: dev->trim_data.dig_z4 = (int16_t)(temp_msb | trim_xyz_data[0]);
	mov	a,#0x0A
	add	a,r2
	mov	_read_trim_registers_sloc0_1_0,a
	clr	a
	addc	a,r3
	mov	(_read_trim_registers_sloc0_1_0 + 1),a
	mov	(_read_trim_registers_sloc0_1_0 + 2),r4
	mov	r5,_read_trim_registers_trim_xyz_data_1_126
	mov	r6,#0x00
	mov	a,_read_trim_registers_temp_msb_1_126
	orl	ar5,a
	mov	a,(_read_trim_registers_temp_msb_1_126 + 1)
	orl	ar6,a
	mov	dpl,_read_trim_registers_sloc0_1_0
	mov	dph,(_read_trim_registers_sloc0_1_0 + 1)
	mov	b,(_read_trim_registers_sloc0_1_0 + 2)
	mov	a,r5
	lcall	__gptrput
	inc	dptr
	mov	a,r6
	lcall	__gptrput
;	bmm150.c:1236: dev->trim_data.dig_xy1 = trim_xy1xy2[9];
	mov	a,#0x0C
	add	a,r2
	mov	_read_trim_registers_sloc0_1_0,a
	clr	a
	addc	a,r3
	mov	(_read_trim_registers_sloc0_1_0 + 1),a
	mov	(_read_trim_registers_sloc0_1_0 + 2),r4
	mov	r5,(_read_trim_registers_trim_xy1xy2_1_126 + 0x0009)
	mov	dpl,_read_trim_registers_sloc0_1_0
	mov	dph,(_read_trim_registers_sloc0_1_0 + 1)
	mov	b,(_read_trim_registers_sloc0_1_0 + 2)
	mov	a,r5
	lcall	__gptrput
;	bmm150.c:1237: dev->trim_data.dig_xy2 = (int8_t)trim_xy1xy2[8];
	mov	a,#0x0D
	add	a,r2
	mov	_read_trim_registers_sloc0_1_0,a
	clr	a
	addc	a,r3
	mov	(_read_trim_registers_sloc0_1_0 + 1),a
	mov	(_read_trim_registers_sloc0_1_0 + 2),r4
	mov	r5,(_read_trim_registers_trim_xy1xy2_1_126 + 0x0008)
	mov	dpl,_read_trim_registers_sloc0_1_0
	mov	dph,(_read_trim_registers_sloc0_1_0 + 1)
	mov	b,(_read_trim_registers_sloc0_1_0 + 2)
	mov	a,r5
	lcall	__gptrput
;	bmm150.c:1238: temp_msb = ((uint16_t)(trim_xy1xy2[5] & 0x7F)) << 8;
	mov	a,#0x7F
	anl	a,(_read_trim_registers_trim_xy1xy2_1_126 + 0x0005)
	mov	r5,a
	mov	(_read_trim_registers_temp_msb_1_126 + 1),r5
	mov	_read_trim_registers_temp_msb_1_126,#0x00
;	bmm150.c:1239: dev->trim_data.dig_xyz1 = (uint16_t)(temp_msb | trim_xy1xy2[4]);
	mov	a,#0x0E
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	r5,(_read_trim_registers_trim_xy1xy2_1_126 + 0x0004)
	mov	r6,#0x00
	mov	a,_read_trim_registers_temp_msb_1_126
	orl	ar5,a
	mov	a,(_read_trim_registers_temp_msb_1_126 + 1)
	orl	ar6,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	__gptrput
	inc	dptr
	mov	a,r6
	lcall	__gptrput
L016006?:
;	bmm150.c:1244: return rslt;
	mov	dpl,_read_trim_registers_rslt_1_126
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'write_op_mode'
;------------------------------------------------------------
;dev                       Allocated with name '_write_op_mode_PARM_2'
;op_mode                   Allocated to registers r2 
;rslt                      Allocated to registers r3 
;reg_data                  Allocated with name '_write_op_mode_reg_data_1_131'
;------------------------------------------------------------
;	bmm150.c:1251: __xdata static int8_t write_op_mode(uint8_t op_mode, struct bmm150_dev *dev)
;	-----------------------------------------
;	 function write_op_mode
;	-----------------------------------------
_write_op_mode:
	mov	r2,dpl
;	bmm150.c:1257: rslt = bmm150_get_regs(BMM150_REG_OP_MODE, &reg_data, 1, dev);
	push	ar2
	push	_write_op_mode_PARM_2
	push	(_write_op_mode_PARM_2 + 1)
	push	(_write_op_mode_PARM_2 + 2)
	mov	a,#0x01
	push	acc
	clr	a
	push	acc
	push	acc
	push	acc
	mov	a,#_write_op_mode_reg_data_1_131
	push	acc
	mov	a,#(_write_op_mode_reg_data_1_131 >> 8)
	push	acc
	mov	a,#0x40
	push	acc
	mov	dpl,#0x4C
	lcall	_bmm150_get_regs
	mov	r3,dpl
	mov	a,sp
	add	a,#0xf6
	mov	sp,a
	pop	ar2
;	bmm150.c:1259: if (rslt == BMM150_OK)
	mov	a,r3
	jnz	L017002?
;	bmm150.c:1262: reg_data = BMM150_SET_BITS(reg_data, BMM150_OP_MODE, op_mode);
	mov	a,#0xF9
	anl	a,_write_op_mode_reg_data_1_131
	mov	r4,a
	clr	a
	xch	a,r2
	add	a,acc
	xch	a,r2
	rlc	a
	anl	ar2,#0x06
	clr	a
	mov	r5,a
	mov	r6,a
	mov	a,r4
	orl	ar2,a
	mov	a,r6
	orl	ar5,a
	mov	_write_op_mode_reg_data_1_131,r2
;	bmm150.c:1263: rslt = bmm150_set_regs(BMM150_REG_OP_MODE, &reg_data, 1, dev);
	mov	_bmm150_set_regs_PARM_2,#_write_op_mode_reg_data_1_131
	mov	(_bmm150_set_regs_PARM_2 + 1),#0x00
	mov	(_bmm150_set_regs_PARM_2 + 2),#0x40
	mov	_bmm150_set_regs_PARM_3,#0x01
	clr	a
	mov	(_bmm150_set_regs_PARM_3 + 1),a
	mov	(_bmm150_set_regs_PARM_3 + 2),a
	mov	(_bmm150_set_regs_PARM_3 + 3),a
	mov	_bmm150_set_regs_PARM_4,_write_op_mode_PARM_2
	mov	(_bmm150_set_regs_PARM_4 + 1),(_write_op_mode_PARM_2 + 1)
	mov	(_bmm150_set_regs_PARM_4 + 2),(_write_op_mode_PARM_2 + 2)
	mov	dpl,#0x4C
	lcall	_bmm150_set_regs
	mov	r3,dpl
L017002?:
;	bmm150.c:1266: return rslt;
	mov	dpl,r3
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'suspend_to_sleep_mode'
;------------------------------------------------------------
;dev                       Allocated to registers r2 r3 r4 
;rslt                      Allocated to registers r5 
;------------------------------------------------------------
;	bmm150.c:1273: __xdata static int8_t suspend_to_sleep_mode(struct bmm150_dev *dev)
;	-----------------------------------------
;	 function suspend_to_sleep_mode
;	-----------------------------------------
_suspend_to_sleep_mode:
;	bmm150.c:1278: rslt = null_ptr_check(dev);
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	push	ar2
	push	ar3
	push	ar4
	lcall	_null_ptr_check
	mov	r5,dpl
	pop	ar4
	pop	ar3
	pop	ar2
;	bmm150.c:1281: if (rslt == BMM150_OK)
	mov	a,r5
	jz	L018009?
	ljmp	L018004?
L018009?:
;	bmm150.c:1283: if (dev->pwr_cntrl_bit == BMM150_POWER_CNTRL_DISABLE)
	mov	a,#0x1E
	add	a,r2
	mov	r6,a
	clr	a
	addc	a,r3
	mov	r7,a
	mov	ar0,r4
	mov	dpl,r6
	mov	dph,r7
	mov	b,r0
	lcall	__gptrget
	jz	L018010?
	ljmp	L018004?
L018010?:
;	bmm150.c:1285: rslt = set_power_control_bit(BMM150_POWER_CNTRL_ENABLE, dev);
	mov	_set_power_control_bit_PARM_2,r2
	mov	(_set_power_control_bit_PARM_2 + 1),r3
	mov	(_set_power_control_bit_PARM_2 + 2),r4
	mov	dpl,#0x01
	push	ar2
	push	ar3
	push	ar4
	lcall	_set_power_control_bit
	mov	r5,dpl
	pop	ar4
	pop	ar3
	pop	ar2
;	bmm150.c:1288: dev->delay_us(BMM150_START_UP_TIME, dev->intf_ptr);
	mov	a,#0x0A
	add	a,r2
	mov	r6,a
	clr	a
	addc	a,r3
	mov	r7,a
	mov	ar0,r4
	mov	dpl,r6
	mov	dph,r7
	mov	b,r0
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	a,#0x02
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	push	ar5
	push	ar6
	push	ar7
	push	ar2
	push	ar3
	push	ar4
	mov	a,#L018011?
	push	acc
	mov	a,#(L018011? >> 8)
	push	acc
	push	ar6
	push	ar7
	mov	dptr,#0x0BB8
	clr	a
	mov	b,a
	ret
L018011?:
	dec	sp
	dec	sp
	dec	sp
	pop	ar7
	pop	ar6
	pop	ar5
L018004?:
;	bmm150.c:1292: return rslt;
	mov	dpl,r5
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'set_xy_rep'
;------------------------------------------------------------
;dev                       Allocated with name '_set_xy_rep_PARM_2'
;settings                  Allocated to registers r2 r3 r4 
;rslt                      Allocated to registers 
;rep_xy                    Allocated with name '_set_xy_rep_rep_xy_1_138'
;------------------------------------------------------------
;	bmm150.c:1298: __xdata static int8_t set_xy_rep(const struct bmm150_settings *settings, struct bmm150_dev *dev)
;	-----------------------------------------
;	 function set_xy_rep
;	-----------------------------------------
_set_xy_rep:
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
;	bmm150.c:1304: rep_xy = settings->xy_rep;
	mov	a,#0x03
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	_set_xy_rep_rep_xy_1_138,a
;	bmm150.c:1305: rslt = bmm150_set_regs(BMM150_REG_REP_XY, &rep_xy, 1, dev);
	mov	_bmm150_set_regs_PARM_2,#_set_xy_rep_rep_xy_1_138
	mov	(_bmm150_set_regs_PARM_2 + 1),#0x00
	mov	(_bmm150_set_regs_PARM_2 + 2),#0x40
	mov	_bmm150_set_regs_PARM_3,#0x01
	clr	a
	mov	(_bmm150_set_regs_PARM_3 + 1),a
	mov	(_bmm150_set_regs_PARM_3 + 2),a
	mov	(_bmm150_set_regs_PARM_3 + 3),a
	mov	_bmm150_set_regs_PARM_4,_set_xy_rep_PARM_2
	mov	(_bmm150_set_regs_PARM_4 + 1),(_set_xy_rep_PARM_2 + 1)
	mov	(_bmm150_set_regs_PARM_4 + 2),(_set_xy_rep_PARM_2 + 2)
	mov	dpl,#0x51
;	bmm150.c:1307: return rslt;
	ljmp	_bmm150_set_regs
;------------------------------------------------------------
;Allocation info for local variables in function 'set_z_rep'
;------------------------------------------------------------
;dev                       Allocated with name '_set_z_rep_PARM_2'
;settings                  Allocated to registers r2 r3 r4 
;rslt                      Allocated to registers 
;rep_z                     Allocated with name '_set_z_rep_rep_z_1_140'
;------------------------------------------------------------
;	bmm150.c:1313: __xdata static int8_t set_z_rep(const struct bmm150_settings *settings, struct bmm150_dev *dev)
;	-----------------------------------------
;	 function set_z_rep
;	-----------------------------------------
_set_z_rep:
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
;	bmm150.c:1319: rep_z = settings->z_rep;
	mov	a,#0x04
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	_set_z_rep_rep_z_1_140,a
;	bmm150.c:1320: rslt = bmm150_set_regs(BMM150_REG_REP_Z, &rep_z, 1, dev);
	mov	_bmm150_set_regs_PARM_2,#_set_z_rep_rep_z_1_140
	mov	(_bmm150_set_regs_PARM_2 + 1),#0x00
	mov	(_bmm150_set_regs_PARM_2 + 2),#0x40
	mov	_bmm150_set_regs_PARM_3,#0x01
	clr	a
	mov	(_bmm150_set_regs_PARM_3 + 1),a
	mov	(_bmm150_set_regs_PARM_3 + 2),a
	mov	(_bmm150_set_regs_PARM_3 + 3),a
	mov	_bmm150_set_regs_PARM_4,_set_z_rep_PARM_2
	mov	(_bmm150_set_regs_PARM_4 + 1),(_set_z_rep_PARM_2 + 1)
	mov	(_bmm150_set_regs_PARM_4 + 2),(_set_z_rep_PARM_2 + 2)
	mov	dpl,#0x52
;	bmm150.c:1322: return rslt;
	ljmp	_bmm150_set_regs
;------------------------------------------------------------
;Allocation info for local variables in function 'set_odr'
;------------------------------------------------------------
;dev                       Allocated with name '_set_odr_PARM_2'
;settings                  Allocated to registers r2 r3 r4 
;rslt                      Allocated to registers r5 
;reg_data                  Allocated with name '_set_odr_reg_data_1_142'
;------------------------------------------------------------
;	bmm150.c:1328: __xdata static int8_t set_odr(const struct bmm150_settings *settings, struct bmm150_dev *dev)
;	-----------------------------------------
;	 function set_odr
;	-----------------------------------------
_set_odr:
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
;	bmm150.c:1334: rslt = bmm150_get_regs(BMM150_REG_OP_MODE, &reg_data, 1, dev);
	push	ar2
	push	ar3
	push	ar4
	push	_set_odr_PARM_2
	push	(_set_odr_PARM_2 + 1)
	push	(_set_odr_PARM_2 + 2)
	mov	a,#0x01
	push	acc
	clr	a
	push	acc
	push	acc
	push	acc
	mov	a,#_set_odr_reg_data_1_142
	push	acc
	mov	a,#(_set_odr_reg_data_1_142 >> 8)
	push	acc
	mov	a,#0x40
	push	acc
	mov	dpl,#0x4C
	lcall	_bmm150_get_regs
	mov	r5,dpl
	mov	a,sp
	add	a,#0xf6
	mov	sp,a
	pop	ar4
	pop	ar3
	pop	ar2
;	bmm150.c:1336: if (rslt == BMM150_OK)
	mov	a,r5
	jnz	L021002?
;	bmm150.c:1339: reg_data = BMM150_SET_BITS(reg_data, BMM150_ODR, settings->data_rate);
	mov	a,#0xC7
	anl	a,_set_odr_reg_data_1_142
	mov	r6,a
	mov	a,#0x02
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	clr	a
	swap	a
	rr	a
	anl	a,#0xf8
	xch	a,r2
	swap	a
	rr	a
	xch	a,r2
	xrl	a,r2
	xch	a,r2
	anl	a,#0xf8
	xch	a,r2
	xrl	a,r2
	anl	ar2,#0x38
	clr	a
	mov	r3,a
	mov	r4,a
	mov	a,r6
	orl	ar2,a
	mov	a,r4
	orl	ar3,a
	mov	_set_odr_reg_data_1_142,r2
;	bmm150.c:1340: rslt = bmm150_set_regs(BMM150_REG_OP_MODE, &reg_data, 1, dev);
	mov	_bmm150_set_regs_PARM_2,#_set_odr_reg_data_1_142
	mov	(_bmm150_set_regs_PARM_2 + 1),#0x00
	mov	(_bmm150_set_regs_PARM_2 + 2),#0x40
	mov	_bmm150_set_regs_PARM_3,#0x01
	clr	a
	mov	(_bmm150_set_regs_PARM_3 + 1),a
	mov	(_bmm150_set_regs_PARM_3 + 2),a
	mov	(_bmm150_set_regs_PARM_3 + 3),a
	mov	_bmm150_set_regs_PARM_4,_set_odr_PARM_2
	mov	(_bmm150_set_regs_PARM_4 + 1),(_set_odr_PARM_2 + 1)
	mov	(_bmm150_set_regs_PARM_4 + 2),(_set_odr_PARM_2 + 2)
	mov	dpl,#0x4C
	lcall	_bmm150_set_regs
	mov	r5,dpl
L021002?:
;	bmm150.c:1343: return rslt;
	mov	dpl,r5
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'set_odr_xyz_rep'
;------------------------------------------------------------
;dev                       Allocated with name '_set_odr_xyz_rep_PARM_2'
;settings                  Allocated to registers r2 r3 r4 
;rslt                      Allocated to registers r5 
;------------------------------------------------------------
;	bmm150.c:1349: __xdata static int8_t set_odr_xyz_rep(const struct bmm150_settings *settings, struct bmm150_dev *dev)
;	-----------------------------------------
;	 function set_odr_xyz_rep
;	-----------------------------------------
_set_odr_xyz_rep:
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
;	bmm150.c:1354: rslt = set_odr(settings, dev);
	mov	_set_odr_PARM_2,_set_odr_xyz_rep_PARM_2
	mov	(_set_odr_PARM_2 + 1),(_set_odr_xyz_rep_PARM_2 + 1)
	mov	(_set_odr_PARM_2 + 2),(_set_odr_xyz_rep_PARM_2 + 2)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	push	ar2
	push	ar3
	push	ar4
	lcall	_set_odr
	mov	r5,dpl
	pop	ar4
	pop	ar3
	pop	ar2
;	bmm150.c:1356: if (rslt == BMM150_OK)
	mov	a,r5
	jnz	L022004?
;	bmm150.c:1359: rslt = set_xy_rep(settings, dev);
	mov	_set_xy_rep_PARM_2,_set_odr_xyz_rep_PARM_2
	mov	(_set_xy_rep_PARM_2 + 1),(_set_odr_xyz_rep_PARM_2 + 1)
	mov	(_set_xy_rep_PARM_2 + 2),(_set_odr_xyz_rep_PARM_2 + 2)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	push	ar2
	push	ar3
	push	ar4
	lcall	_set_xy_rep
	mov	r5,dpl
	pop	ar4
	pop	ar3
	pop	ar2
;	bmm150.c:1361: if (rslt == BMM150_OK)
	mov	a,r5
	jnz	L022004?
;	bmm150.c:1364: rslt = set_z_rep(settings, dev);
	mov	_set_z_rep_PARM_2,_set_odr_xyz_rep_PARM_2
	mov	(_set_z_rep_PARM_2 + 1),(_set_odr_xyz_rep_PARM_2 + 1)
	mov	(_set_z_rep_PARM_2 + 2),(_set_odr_xyz_rep_PARM_2 + 2)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_set_z_rep
	mov	r5,dpl
L022004?:
;	bmm150.c:1368: return rslt;
	mov	dpl,r5
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'set_control_measurement_xyz'
;------------------------------------------------------------
;dev                       Allocated with name '_set_control_measurement_xyz_PARM_2'
;settings                  Allocated to registers r2 r3 r4 
;rslt                      Allocated to registers r5 
;reg_data                  Allocated with name '_set_control_measurement_xyz_reg_data_1_149'
;------------------------------------------------------------
;	bmm150.c:1375: __xdata static int8_t set_control_measurement_xyz(const struct bmm150_settings *settings, struct bmm150_dev *dev)
;	-----------------------------------------
;	 function set_control_measurement_xyz
;	-----------------------------------------
_set_control_measurement_xyz:
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
;	bmm150.c:1380: rslt = bmm150_get_regs(BMM150_REG_AXES_ENABLE, &reg_data, 1, dev);
	push	ar2
	push	ar3
	push	ar4
	push	_set_control_measurement_xyz_PARM_2
	push	(_set_control_measurement_xyz_PARM_2 + 1)
	push	(_set_control_measurement_xyz_PARM_2 + 2)
	mov	a,#0x01
	push	acc
	clr	a
	push	acc
	push	acc
	push	acc
	mov	a,#_set_control_measurement_xyz_reg_data_1_149
	push	acc
	mov	a,#(_set_control_measurement_xyz_reg_data_1_149 >> 8)
	push	acc
	mov	a,#0x40
	push	acc
	mov	dpl,#0x4E
	lcall	_bmm150_get_regs
	mov	r5,dpl
	mov	a,sp
	add	a,#0xf6
	mov	sp,a
	pop	ar4
	pop	ar3
	pop	ar2
;	bmm150.c:1382: if (rslt == BMM150_OK)
	mov	a,r5
	jnz	L023002?
;	bmm150.c:1385: reg_data = BMM150_SET_BITS(reg_data, BMM150_CONTROL_MEASURE, settings->xyz_axes_control);
	mov	a,#0xC7
	anl	a,_set_control_measurement_xyz_reg_data_1_149
	mov	r6,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	clr	a
	swap	a
	rr	a
	anl	a,#0xf8
	xch	a,r2
	swap	a
	rr	a
	xch	a,r2
	xrl	a,r2
	xch	a,r2
	anl	a,#0xf8
	xch	a,r2
	xrl	a,r2
	anl	ar2,#0x38
	clr	a
	mov	r3,a
	mov	r4,a
	mov	a,r6
	orl	ar2,a
	mov	a,r4
	orl	ar3,a
	mov	_set_control_measurement_xyz_reg_data_1_149,r2
;	bmm150.c:1386: rslt = bmm150_set_regs(BMM150_REG_AXES_ENABLE, &reg_data, 1, dev);
	mov	_bmm150_set_regs_PARM_2,#_set_control_measurement_xyz_reg_data_1_149
	mov	(_bmm150_set_regs_PARM_2 + 1),#0x00
	mov	(_bmm150_set_regs_PARM_2 + 2),#0x40
	mov	_bmm150_set_regs_PARM_3,#0x01
	clr	a
	mov	(_bmm150_set_regs_PARM_3 + 1),a
	mov	(_bmm150_set_regs_PARM_3 + 2),a
	mov	(_bmm150_set_regs_PARM_3 + 3),a
	mov	_bmm150_set_regs_PARM_4,_set_control_measurement_xyz_PARM_2
	mov	(_bmm150_set_regs_PARM_4 + 1),(_set_control_measurement_xyz_PARM_2 + 1)
	mov	(_bmm150_set_regs_PARM_4 + 2),(_set_control_measurement_xyz_PARM_2 + 2)
	mov	dpl,#0x4E
	lcall	_bmm150_set_regs
	mov	r5,dpl
L023002?:
;	bmm150.c:1389: return rslt;
	mov	dpl,r5
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'are_settings_changed'
;------------------------------------------------------------
;desired_settings          Allocated with name '_are_settings_changed_PARM_2'
;sub_settings              Allocated to registers r2 r3 
;settings_changed          Allocated to registers r2 
;------------------------------------------------------------
;	bmm150.c:1396: __xdata static uint8_t are_settings_changed(uint16_t sub_settings, uint16_t desired_settings)
;	-----------------------------------------
;	 function are_settings_changed
;	-----------------------------------------
_are_settings_changed:
	mov	r2,dpl
	mov	r3,dph
;	bmm150.c:1400: if (sub_settings & desired_settings)
	mov	a,_are_settings_changed_PARM_2
	anl	ar2,a
	mov	a,(_are_settings_changed_PARM_2 + 1)
	anl	ar3,a
	mov	a,r2
	orl	a,r3
	jz	L024002?
;	bmm150.c:1403: settings_changed = BMM150_TRUE;
	mov	r2,#0x01
	sjmp	L024003?
L024002?:
;	bmm150.c:1408: settings_changed = BMM150_FALSE;
	mov	r2,#0x00
L024003?:
;	bmm150.c:1411: return settings_changed;
	mov	dpl,r2
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'mode_settings'
;------------------------------------------------------------
;settings                  Allocated with name '_mode_settings_PARM_2'
;dev                       Allocated with name '_mode_settings_PARM_3'
;desired_settings          Allocated to registers r2 r3 
;rslt                      Allocated to registers r4 
;------------------------------------------------------------
;	bmm150.c:1418: __xdata static int8_t mode_settings(uint16_t desired_settings, const struct bmm150_settings *settings, struct bmm150_dev *dev)
;	-----------------------------------------
;	 function mode_settings
;	-----------------------------------------
_mode_settings:
	mov	r2,dpl
	mov	r3,dph
;	bmm150.c:1420: int8_t rslt = BMM150_E_INVALID_CONFIG;
	mov	r4,#0xFD
;	bmm150.c:1422: if (desired_settings & BMM150_SEL_DATA_RATE)
	mov	a,r2
	jnb	acc.0,L025002?
;	bmm150.c:1425: rslt = set_odr(settings, dev);
	mov	_set_odr_PARM_2,_mode_settings_PARM_3
	mov	(_set_odr_PARM_2 + 1),(_mode_settings_PARM_3 + 1)
	mov	(_set_odr_PARM_2 + 2),(_mode_settings_PARM_3 + 2)
	mov	dpl,_mode_settings_PARM_2
	mov	dph,(_mode_settings_PARM_2 + 1)
	mov	b,(_mode_settings_PARM_2 + 2)
	push	ar2
	push	ar3
	lcall	_set_odr
	mov	r4,dpl
	pop	ar3
	pop	ar2
L025002?:
;	bmm150.c:1428: if (desired_settings & BMM150_SEL_CONTROL_MEASURE)
	mov	a,r2
	jnb	acc.1,L025004?
;	bmm150.c:1431: rslt = set_control_measurement_xyz(settings, dev);
	mov	_set_control_measurement_xyz_PARM_2,_mode_settings_PARM_3
	mov	(_set_control_measurement_xyz_PARM_2 + 1),(_mode_settings_PARM_3 + 1)
	mov	(_set_control_measurement_xyz_PARM_2 + 2),(_mode_settings_PARM_3 + 2)
	mov	dpl,_mode_settings_PARM_2
	mov	dph,(_mode_settings_PARM_2 + 1)
	mov	b,(_mode_settings_PARM_2 + 2)
	push	ar2
	push	ar3
	lcall	_set_control_measurement_xyz
	mov	r4,dpl
	pop	ar3
	pop	ar2
L025004?:
;	bmm150.c:1434: if (desired_settings & BMM150_SEL_XY_REP)
	mov	a,r2
	jnb	acc.2,L025006?
;	bmm150.c:1437: rslt = set_xy_rep(settings, dev);
	mov	_set_xy_rep_PARM_2,_mode_settings_PARM_3
	mov	(_set_xy_rep_PARM_2 + 1),(_mode_settings_PARM_3 + 1)
	mov	(_set_xy_rep_PARM_2 + 2),(_mode_settings_PARM_3 + 2)
	mov	dpl,_mode_settings_PARM_2
	mov	dph,(_mode_settings_PARM_2 + 1)
	mov	b,(_mode_settings_PARM_2 + 2)
	push	ar2
	push	ar3
	lcall	_set_xy_rep
	mov	r4,dpl
	pop	ar3
	pop	ar2
L025006?:
;	bmm150.c:1440: if (desired_settings & BMM150_SEL_Z_REP)
	mov	a,r2
	jnb	acc.3,L025008?
;	bmm150.c:1443: rslt = set_z_rep(settings, dev);
	mov	_set_z_rep_PARM_2,_mode_settings_PARM_3
	mov	(_set_z_rep_PARM_2 + 1),(_mode_settings_PARM_3 + 1)
	mov	(_set_z_rep_PARM_2 + 2),(_mode_settings_PARM_3 + 2)
	mov	dpl,_mode_settings_PARM_2
	mov	dph,(_mode_settings_PARM_2 + 1)
	mov	b,(_mode_settings_PARM_2 + 2)
	lcall	_set_z_rep
	mov	r4,dpl
L025008?:
;	bmm150.c:1446: return rslt;
	mov	dpl,r4
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'parse_setting'
;------------------------------------------------------------
;settings                  Allocated with name '_parse_setting_PARM_2'
;reg_data                  Allocated with name '_parse_setting_reg_data_1_161'
;sloc0                     Allocated with name '_parse_setting_sloc0_1_0'
;sloc1                     Allocated with name '_parse_setting_sloc1_1_0'
;------------------------------------------------------------
;	bmm150.c:1453: __xdata static void parse_setting(const uint8_t *reg_data, struct bmm150_settings *settings)
;	-----------------------------------------
;	 function parse_setting
;	-----------------------------------------
_parse_setting:
	mov	_parse_setting_reg_data_1_161,dpl
	mov	(_parse_setting_reg_data_1_161 + 1),dph
	mov	(_parse_setting_reg_data_1_161 + 2),b
;	bmm150.c:1458: settings->z_rep = reg_data[7];
	mov	r5,_parse_setting_PARM_2
	mov	r6,(_parse_setting_PARM_2 + 1)
	mov	r7,(_parse_setting_PARM_2 + 2)
	mov	a,#0x04
	add	a,r5
	mov	_parse_setting_sloc0_1_0,a
	clr	a
	addc	a,r6
	mov	(_parse_setting_sloc0_1_0 + 1),a
	mov	(_parse_setting_sloc0_1_0 + 2),r7
	mov	a,#0x07
	add	a,_parse_setting_reg_data_1_161
	mov	r3,a
	clr	a
	addc	a,(_parse_setting_reg_data_1_161 + 1)
	mov	r4,a
	mov	r2,(_parse_setting_reg_data_1_161 + 2)
	mov	dpl,r3
	mov	dph,r4
	mov	b,r2
	lcall	__gptrget
	mov	dpl,_parse_setting_sloc0_1_0
	mov	dph,(_parse_setting_sloc0_1_0 + 1)
	mov	b,(_parse_setting_sloc0_1_0 + 2)
	lcall	__gptrput
;	bmm150.c:1459: settings->xy_rep = reg_data[6];
	mov	a,#0x03
	add	a,r5
	mov	_parse_setting_sloc0_1_0,a
	clr	a
	addc	a,r6
	mov	(_parse_setting_sloc0_1_0 + 1),a
	mov	(_parse_setting_sloc0_1_0 + 2),r7
	mov	a,#0x06
	add	a,_parse_setting_reg_data_1_161
	mov	r0,a
	clr	a
	addc	a,(_parse_setting_reg_data_1_161 + 1)
	mov	r1,a
	mov	r2,(_parse_setting_reg_data_1_161 + 2)
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	lcall	__gptrget
	mov	dpl,_parse_setting_sloc0_1_0
	mov	dph,(_parse_setting_sloc0_1_0 + 1)
	mov	b,(_parse_setting_sloc0_1_0 + 2)
	lcall	__gptrput
;	bmm150.c:1460: settings->int_settings.high_threshold = reg_data[5];
	mov	a,#0x06
	add	a,r5
	mov	_parse_setting_sloc0_1_0,a
	clr	a
	addc	a,r6
	mov	(_parse_setting_sloc0_1_0 + 1),a
	mov	(_parse_setting_sloc0_1_0 + 2),r7
	mov	a,#0x10
	add	a,r5
	mov	_parse_setting_sloc1_1_0,a
	clr	a
	addc	a,r6
	mov	(_parse_setting_sloc1_1_0 + 1),a
	mov	(_parse_setting_sloc1_1_0 + 2),r7
	mov	a,#0x05
	add	a,_parse_setting_reg_data_1_161
	mov	r3,a
	clr	a
	addc	a,(_parse_setting_reg_data_1_161 + 1)
	mov	r4,a
	mov	r2,(_parse_setting_reg_data_1_161 + 2)
	mov	dpl,r3
	mov	dph,r4
	mov	b,r2
	lcall	__gptrget
	mov	dpl,_parse_setting_sloc1_1_0
	mov	dph,(_parse_setting_sloc1_1_0 + 1)
	mov	b,(_parse_setting_sloc1_1_0 + 2)
	lcall	__gptrput
;	bmm150.c:1461: settings->int_settings.low_threshold = reg_data[4];
	mov	a,#0x0F
	add	a,r5
	mov	_parse_setting_sloc1_1_0,a
	clr	a
	addc	a,r6
	mov	(_parse_setting_sloc1_1_0 + 1),a
	mov	(_parse_setting_sloc1_1_0 + 2),r7
	mov	a,#0x04
	add	a,_parse_setting_reg_data_1_161
	mov	r0,a
	clr	a
	addc	a,(_parse_setting_reg_data_1_161 + 1)
	mov	r1,a
	mov	r2,(_parse_setting_reg_data_1_161 + 2)
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	lcall	__gptrget
	mov	dpl,_parse_setting_sloc1_1_0
	mov	dph,(_parse_setting_sloc1_1_0 + 1)
	mov	b,(_parse_setting_sloc1_1_0 + 2)
	lcall	__gptrput
;	bmm150.c:1462: settings->xyz_axes_control = BMM150_GET_BITS(reg_data[3], BMM150_CONTROL_MEASURE);
	mov	a,#0x03
	add	a,_parse_setting_reg_data_1_161
	mov	r2,a
	clr	a
	addc	a,(_parse_setting_reg_data_1_161 + 1)
	mov	r3,a
	mov	r4,(_parse_setting_reg_data_1_161 + 2)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	mov	a,#0x38
	anl	a,r2
	mov	r4,a
	clr	a
	swap	a
	rl	a
	xch	a,r4
	swap	a
	rl	a
	anl	a,#0x1f
	xrl	a,r4
	xch	a,r4
	anl	a,#0x1f
	xch	a,r4
	xrl	a,r4
	xch	a,r4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r4
	lcall	__gptrput
;	bmm150.c:1463: settings->int_settings.drdy_pin_en = BMM150_GET_BITS(reg_data[3], BMM150_DRDY_EN);
	mov	a,#0x80
	anl	a,r2
	mov	r4,a
	clr	a
	mov	c,acc.7
	xch	a,r4
	rlc	a
	xch	a,r4
	rlc	a
	xch	a,r4
	anl	a,#0x01
	mov	dpl,_parse_setting_sloc0_1_0
	mov	dph,(_parse_setting_sloc0_1_0 + 1)
	mov	b,(_parse_setting_sloc0_1_0 + 2)
	mov	a,r4
	lcall	__gptrput
;	bmm150.c:1464: settings->int_settings.int_pin_en = BMM150_GET_BITS(reg_data[3], BMM150_INT_PIN_EN);
	mov	a,#0x07
	add	a,r5
	mov	_parse_setting_sloc1_1_0,a
	clr	a
	addc	a,r6
	mov	(_parse_setting_sloc1_1_0 + 1),a
	mov	(_parse_setting_sloc1_1_0 + 2),r7
	mov	a,#0x40
	anl	a,r2
	mov	r4,a
	clr	a
	mov	c,acc.7
	xch	a,r4
	rlc	a
	xch	a,r4
	rlc	a
	mov	c,acc.7
	xch	a,r4
	rlc	a
	xch	a,r4
	rlc	a
	xch	a,r4
	anl	a,#0x03
	mov	dpl,_parse_setting_sloc1_1_0
	mov	dph,(_parse_setting_sloc1_1_0 + 1)
	mov	b,(_parse_setting_sloc1_1_0 + 2)
	mov	a,r4
	lcall	__gptrput
;	bmm150.c:1465: settings->int_settings.drdy_polarity = BMM150_GET_BITS(reg_data[3], BMM150_DRDY_POLARITY);
	mov	a,#0x08
	add	a,r5
	mov	_parse_setting_sloc1_1_0,a
	clr	a
	addc	a,r6
	mov	(_parse_setting_sloc1_1_0 + 1),a
	mov	(_parse_setting_sloc1_1_0 + 2),r7
	mov	a,#0x04
	anl	a,r2
	mov	r4,a
	clr	a
	clr	c
	rrc	a
	xch	a,r4
	rrc	a
	xch	a,r4
	clr	c
	rrc	a
	xch	a,r4
	rrc	a
	xch	a,r4
	mov	dpl,_parse_setting_sloc1_1_0
	mov	dph,(_parse_setting_sloc1_1_0 + 1)
	mov	b,(_parse_setting_sloc1_1_0 + 2)
	mov	a,r4
	lcall	__gptrput
;	bmm150.c:1466: settings->int_settings.int_latch = BMM150_GET_BITS(reg_data[3], BMM150_INT_LATCH);
	mov	a,#0x09
	add	a,r5
	mov	_parse_setting_sloc1_1_0,a
	clr	a
	addc	a,r6
	mov	(_parse_setting_sloc1_1_0 + 1),a
	mov	(_parse_setting_sloc1_1_0 + 2),r7
	mov	a,#0x02
	anl	a,r2
	mov	r4,a
	clr	a
	clr	c
	rrc	a
	xch	a,r4
	rrc	a
	xch	a,r4
	mov	dpl,_parse_setting_sloc1_1_0
	mov	dph,(_parse_setting_sloc1_1_0 + 1)
	mov	b,(_parse_setting_sloc1_1_0 + 2)
	mov	a,r4
	lcall	__gptrput
;	bmm150.c:1467: settings->int_settings.int_polarity = BMM150_GET_BITS_POS_0(reg_data[3], BMM150_INT_POLARITY);
	mov	a,#0x0A
	add	a,r5
	mov	r4,a
	clr	a
	addc	a,r6
	mov	r0,a
	mov	ar1,r7
	anl	ar2,#0x01
	mov	dpl,r4
	mov	dph,r0
	mov	b,r1
	mov	a,r2
	lcall	__gptrput
;	bmm150.c:1468: settings->int_settings.data_overrun_en = BMM150_GET_BITS(reg_data[2], BMM150_DATA_OVERRUN_INT);
	mov	a,#0x0B
	add	a,r5
	mov	_parse_setting_sloc1_1_0,a
	clr	a
	addc	a,r6
	mov	(_parse_setting_sloc1_1_0 + 1),a
	mov	(_parse_setting_sloc1_1_0 + 2),r7
	mov	a,#0x02
	add	a,_parse_setting_reg_data_1_161
	mov	r0,a
	clr	a
	addc	a,(_parse_setting_reg_data_1_161 + 1)
	mov	r1,a
	mov	r2,(_parse_setting_reg_data_1_161 + 2)
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	lcall	__gptrget
	mov	r0,a
	mov	a,#0x80
	anl	a,r0
	mov	r3,a
	clr	a
	mov	c,acc.7
	xch	a,r3
	rlc	a
	xch	a,r3
	rlc	a
	xch	a,r3
	anl	a,#0x01
	mov	dpl,_parse_setting_sloc1_1_0
	mov	dph,(_parse_setting_sloc1_1_0 + 1)
	mov	b,(_parse_setting_sloc1_1_0 + 2)
	mov	a,r3
	lcall	__gptrput
;	bmm150.c:1469: settings->int_settings.overflow_int_en = BMM150_GET_BITS(reg_data[2], BMM150_OVERFLOW_INT);
	mov	a,#0x0C
	add	a,r5
	mov	_parse_setting_sloc1_1_0,a
	clr	a
	addc	a,r6
	mov	(_parse_setting_sloc1_1_0 + 1),a
	mov	(_parse_setting_sloc1_1_0 + 2),r7
	mov	a,#0x40
	anl	a,r0
	mov	r3,a
	clr	a
	mov	c,acc.7
	xch	a,r3
	rlc	a
	xch	a,r3
	rlc	a
	mov	c,acc.7
	xch	a,r3
	rlc	a
	xch	a,r3
	rlc	a
	xch	a,r3
	anl	a,#0x03
	mov	dpl,_parse_setting_sloc1_1_0
	mov	dph,(_parse_setting_sloc1_1_0 + 1)
	mov	b,(_parse_setting_sloc1_1_0 + 2)
	mov	a,r3
	lcall	__gptrput
;	bmm150.c:1470: settings->int_settings.high_int_en = BMM150_GET_BITS(reg_data[2], BMM150_HIGH_THRESHOLD_INT);
	mov	a,#0x0D
	add	a,r5
	mov	_parse_setting_sloc1_1_0,a
	clr	a
	addc	a,r6
	mov	(_parse_setting_sloc1_1_0 + 1),a
	mov	(_parse_setting_sloc1_1_0 + 2),r7
	mov	a,#0x38
	anl	a,r0
	mov	r3,a
	clr	a
	swap	a
	rl	a
	xch	a,r3
	swap	a
	rl	a
	anl	a,#0x1f
	xrl	a,r3
	xch	a,r3
	anl	a,#0x1f
	xch	a,r3
	xrl	a,r3
	xch	a,r3
	mov	dpl,_parse_setting_sloc1_1_0
	mov	dph,(_parse_setting_sloc1_1_0 + 1)
	mov	b,(_parse_setting_sloc1_1_0 + 2)
	mov	a,r3
	lcall	__gptrput
;	bmm150.c:1471: settings->int_settings.low_int_en = BMM150_GET_BITS_POS_0(reg_data[2], BMM150_LOW_THRESHOLD_INT);
	mov	a,#0x0E
	add	a,r5
	mov	r3,a
	clr	a
	addc	a,r6
	mov	r4,a
	mov	ar1,r7
	anl	ar0,#0x07
	mov	dpl,r3
	mov	dph,r4
	mov	b,r1
	mov	a,r0
	lcall	__gptrput
;	bmm150.c:1472: settings->data_rate = BMM150_GET_BITS(reg_data[1], BMM150_ODR);
	mov	a,#0x02
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	a,#0x01
	add	a,_parse_setting_reg_data_1_161
	mov	r2,a
	clr	a
	addc	a,(_parse_setting_reg_data_1_161 + 1)
	mov	r3,a
	mov	r4,(_parse_setting_reg_data_1_161 + 2)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	anl	ar2,#0x38
	clr	a
	swap	a
	rl	a
	xch	a,r2
	swap	a
	rl	a
	anl	a,#0x1f
	xrl	a,r2
	xch	a,r2
	anl	a,#0x1f
	xch	a,r2
	xrl	a,r2
	xch	a,r2
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r2
	ljmp	__gptrput
;------------------------------------------------------------
;Allocation info for local variables in function 'interrupt_pin_settings'
;------------------------------------------------------------
;settings                  Allocated with name '_interrupt_pin_settings_PARM_2'
;dev                       Allocated with name '_interrupt_pin_settings_PARM_3'
;desired_settings          Allocated with name '_interrupt_pin_settings_desired_settings_1_163'
;rslt                      Allocated to registers r4 
;reg_data                  Allocated with name '_interrupt_pin_settings_reg_data_1_164'
;int_settings              Allocated with name '_interrupt_pin_settings_int_settings_1_164'
;sloc0                     Allocated with name '_interrupt_pin_settings_sloc0_1_0'
;------------------------------------------------------------
;	bmm150.c:1480: __xdata static int8_t interrupt_pin_settings(uint16_t desired_settings,
;	-----------------------------------------
;	 function interrupt_pin_settings
;	-----------------------------------------
_interrupt_pin_settings:
	mov	_interrupt_pin_settings_desired_settings_1_163,dpl
	mov	(_interrupt_pin_settings_desired_settings_1_163 + 1),dph
;	bmm150.c:1488: rslt = bmm150_get_regs(BMM150_REG_AXES_ENABLE, &reg_data, 1, dev);
	push	_interrupt_pin_settings_PARM_3
	push	(_interrupt_pin_settings_PARM_3 + 1)
	push	(_interrupt_pin_settings_PARM_3 + 2)
	mov	a,#0x01
	push	acc
	clr	a
	push	acc
	push	acc
	push	acc
	mov	a,#_interrupt_pin_settings_reg_data_1_164
	push	acc
	mov	a,#(_interrupt_pin_settings_reg_data_1_164 >> 8)
	push	acc
	mov	a,#0x40
	push	acc
	mov	dpl,#0x4E
	lcall	_bmm150_get_regs
	mov	r4,dpl
	mov	a,sp
	add	a,#0xf6
	mov	sp,a
;	bmm150.c:1490: if (rslt == BMM150_OK)
	mov	a,r4
	jz	L027021?
	ljmp	L027012?
L027021?:
;	bmm150.c:1493: int_settings.drdy_pin_en = settings->int_settings.drdy_pin_en;
	mov	_interrupt_pin_settings_sloc0_1_0,_interrupt_pin_settings_PARM_2
	mov	(_interrupt_pin_settings_sloc0_1_0 + 1),(_interrupt_pin_settings_PARM_2 + 1)
	mov	(_interrupt_pin_settings_sloc0_1_0 + 2),(_interrupt_pin_settings_PARM_2 + 2)
	mov	a,#0x06
	add	a,_interrupt_pin_settings_sloc0_1_0
	mov	r2,a
	clr	a
	addc	a,(_interrupt_pin_settings_sloc0_1_0 + 1)
	mov	r3,a
	mov	r5,(_interrupt_pin_settings_sloc0_1_0 + 2)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r5
	lcall	__gptrget
	mov	r2,a
	mov	_interrupt_pin_settings_int_settings_1_164,r2
;	bmm150.c:1494: int_settings.int_pin_en = settings->int_settings.int_pin_en;
	mov	a,#0x07
	add	a,_interrupt_pin_settings_sloc0_1_0
	mov	r2,a
	clr	a
	addc	a,(_interrupt_pin_settings_sloc0_1_0 + 1)
	mov	r3,a
	mov	r5,(_interrupt_pin_settings_sloc0_1_0 + 2)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r5
	lcall	__gptrget
	mov	r2,a
	mov	(_interrupt_pin_settings_int_settings_1_164 + 0x0001),r2
;	bmm150.c:1495: int_settings.drdy_polarity = settings->int_settings.drdy_polarity;
	mov	a,#0x08
	add	a,_interrupt_pin_settings_sloc0_1_0
	mov	r2,a
	clr	a
	addc	a,(_interrupt_pin_settings_sloc0_1_0 + 1)
	mov	r3,a
	mov	r5,(_interrupt_pin_settings_sloc0_1_0 + 2)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r5
	lcall	__gptrget
	mov	r2,a
	mov	(_interrupt_pin_settings_int_settings_1_164 + 0x0002),r2
;	bmm150.c:1496: int_settings.int_polarity = settings->int_settings.int_polarity;
	mov	a,#0x0A
	add	a,_interrupt_pin_settings_sloc0_1_0
	mov	r2,a
	clr	a
	addc	a,(_interrupt_pin_settings_sloc0_1_0 + 1)
	mov	r3,a
	mov	r5,(_interrupt_pin_settings_sloc0_1_0 + 2)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r5
	lcall	__gptrget
	mov	r2,a
	mov	(_interrupt_pin_settings_int_settings_1_164 + 0x0004),r2
;	bmm150.c:1498: if (desired_settings & BMM150_SEL_DRDY_PIN_EN)
	mov	a,_interrupt_pin_settings_desired_settings_1_163
	jnb	acc.4,L027002?
;	bmm150.c:1503: reg_data = BMM150_SET_BITS(reg_data, BMM150_DRDY_EN, int_settings.drdy_pin_en);
	mov	a,#0x7F
	anl	a,_interrupt_pin_settings_reg_data_1_164
	mov	r2,a
	mov	r3,_interrupt_pin_settings_int_settings_1_164
	clr	a
	anl	a,#0x01
	mov	c,acc.0
	xch	a,r3
	rrc	a
	xch	a,r3
	rrc	a
	xch	a,r3
	anl	ar3,#0x80
	clr	a
	mov	r5,a
	mov	r6,a
	mov	a,r2
	orl	ar3,a
	mov	a,r6
	orl	ar5,a
	mov	_interrupt_pin_settings_reg_data_1_164,r3
L027002?:
;	bmm150.c:1506: if (desired_settings & BMM150_SEL_INT_PIN_EN)
	mov	a,_interrupt_pin_settings_desired_settings_1_163
	jnb	acc.5,L027004?
;	bmm150.c:1509: reg_data = BMM150_SET_BITS(reg_data, BMM150_INT_PIN_EN, int_settings.int_pin_en);
	mov	a,#0xBF
	anl	a,_interrupt_pin_settings_reg_data_1_164
	mov	r2,a
	mov	r3,(_interrupt_pin_settings_int_settings_1_164 + 0x0001)
	clr	a
	anl	a,#0x03
	mov	c,acc.0
	xch	a,r3
	rrc	a
	xch	a,r3
	rrc	a
	mov	c,acc.0
	xch	a,r3
	rrc	a
	xch	a,r3
	rrc	a
	xch	a,r3
	anl	ar3,#0x40
	clr	a
	mov	r5,a
	mov	r6,a
	mov	a,r2
	orl	ar3,a
	mov	a,r6
	orl	ar5,a
	mov	_interrupt_pin_settings_reg_data_1_164,r3
L027004?:
;	bmm150.c:1512: if (desired_settings & BMM150_SEL_DRDY_POLARITY)
	mov	a,_interrupt_pin_settings_desired_settings_1_163
	jnb	acc.6,L027006?
;	bmm150.c:1515: reg_data = BMM150_SET_BITS(reg_data, BMM150_DRDY_POLARITY, int_settings.drdy_polarity);
	mov	a,#0xFB
	anl	a,_interrupt_pin_settings_reg_data_1_164
	mov	r2,a
	mov	r3,(_interrupt_pin_settings_int_settings_1_164 + 0x0002)
	clr	a
	xch	a,r3
	add	a,acc
	xch	a,r3
	rlc	a
	xch	a,r3
	add	a,acc
	xch	a,r3
	rlc	a
	anl	ar3,#0x04
	clr	a
	mov	r5,a
	mov	r6,a
	mov	a,r2
	orl	ar3,a
	mov	a,r6
	orl	ar5,a
	mov	_interrupt_pin_settings_reg_data_1_164,r3
L027006?:
;	bmm150.c:1518: if (desired_settings & BMM150_SEL_INT_LATCH)
	mov	a,_interrupt_pin_settings_desired_settings_1_163
	jnb	acc.7,L027008?
;	bmm150.c:1521: reg_data = BMM150_SET_BITS(reg_data, BMM150_INT_LATCH, int_settings.int_latch);
	mov	a,#0xFD
	anl	a,_interrupt_pin_settings_reg_data_1_164
	mov	r2,a
	mov	r3,(_interrupt_pin_settings_int_settings_1_164 + 0x0003)
	clr	a
	xch	a,r3
	add	a,acc
	xch	a,r3
	rlc	a
	anl	ar3,#0x02
	clr	a
	mov	r5,a
	mov	r6,a
	mov	a,r2
	orl	ar3,a
	mov	a,r6
	orl	ar5,a
	mov	_interrupt_pin_settings_reg_data_1_164,r3
L027008?:
;	bmm150.c:1524: if (desired_settings & BMM150_SEL_INT_POLARITY)
	mov	a,(_interrupt_pin_settings_desired_settings_1_163 + 1)
	jnb	acc.0,L027010?
;	bmm150.c:1527: reg_data = BMM150_SET_BITS_POS_0(reg_data, BMM150_INT_POLARITY, int_settings.int_polarity);
	mov	a,#0xFE
	anl	a,_interrupt_pin_settings_reg_data_1_164
	mov	r2,a
	mov	r3,(_interrupt_pin_settings_int_settings_1_164 + 0x0004)
	anl	ar3,#0x01
	clr	a
	mov	r5,a
	mov	r6,a
	mov	a,r2
	orl	ar3,a
	mov	a,r6
	orl	ar5,a
	mov	_interrupt_pin_settings_reg_data_1_164,r3
L027010?:
;	bmm150.c:1531: rslt = bmm150_set_regs(BMM150_REG_AXES_ENABLE, &reg_data, 1, dev);
	mov	_bmm150_set_regs_PARM_2,#_interrupt_pin_settings_reg_data_1_164
	mov	(_bmm150_set_regs_PARM_2 + 1),#0x00
	mov	(_bmm150_set_regs_PARM_2 + 2),#0x40
	mov	_bmm150_set_regs_PARM_3,#0x01
	clr	a
	mov	(_bmm150_set_regs_PARM_3 + 1),a
	mov	(_bmm150_set_regs_PARM_3 + 2),a
	mov	(_bmm150_set_regs_PARM_3 + 3),a
	mov	_bmm150_set_regs_PARM_4,_interrupt_pin_settings_PARM_3
	mov	(_bmm150_set_regs_PARM_4 + 1),(_interrupt_pin_settings_PARM_3 + 1)
	mov	(_bmm150_set_regs_PARM_4 + 2),(_interrupt_pin_settings_PARM_3 + 2)
	mov	dpl,#0x4E
	lcall	_bmm150_set_regs
	mov	r4,dpl
L027012?:
;	bmm150.c:1534: return rslt;
	mov	dpl,r4
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'interrupt_config'
;------------------------------------------------------------
;settings                  Allocated with name '_interrupt_config_PARM_2'
;dev                       Allocated with name '_interrupt_config_PARM_3'
;desired_settings          Allocated with name '_interrupt_config_desired_settings_1_171'
;rslt                      Allocated to registers r4 
;reg_data                  Allocated with name '_interrupt_config_reg_data_1_172'
;int_settings              Allocated with name '_interrupt_config_int_settings_1_172'
;sloc0                     Allocated with name '_interrupt_config_sloc0_1_0'
;------------------------------------------------------------
;	bmm150.c:1543: __xdata static int8_t interrupt_config(uint16_t desired_settings, const struct bmm150_settings *settings,
;	-----------------------------------------
;	 function interrupt_config
;	-----------------------------------------
_interrupt_config:
	mov	_interrupt_config_desired_settings_1_171,dpl
	mov	(_interrupt_config_desired_settings_1_171 + 1),dph
;	bmm150.c:1550: rslt = bmm150_get_regs(BMM150_REG_INT_CONFIG, &reg_data, 1, dev);
	push	_interrupt_config_PARM_3
	push	(_interrupt_config_PARM_3 + 1)
	push	(_interrupt_config_PARM_3 + 2)
	mov	a,#0x01
	push	acc
	clr	a
	push	acc
	push	acc
	push	acc
	mov	a,#_interrupt_config_reg_data_1_172
	push	acc
	mov	a,#(_interrupt_config_reg_data_1_172 >> 8)
	push	acc
	mov	a,#0x40
	push	acc
	mov	dpl,#0x4D
	lcall	_bmm150_get_regs
	mov	r4,dpl
	mov	a,sp
	add	a,#0xf6
	mov	sp,a
;	bmm150.c:1552: if (rslt == BMM150_OK)
	mov	a,r4
	jz	L028018?
	ljmp	L028010?
L028018?:
;	bmm150.c:1555: int_settings.drdy_pin_en = settings->int_settings.drdy_pin_en;
	mov	_interrupt_config_sloc0_1_0,_interrupt_config_PARM_2
	mov	(_interrupt_config_sloc0_1_0 + 1),(_interrupt_config_PARM_2 + 1)
	mov	(_interrupt_config_sloc0_1_0 + 2),(_interrupt_config_PARM_2 + 2)
	mov	a,#0x06
	add	a,_interrupt_config_sloc0_1_0
	mov	r2,a
	clr	a
	addc	a,(_interrupt_config_sloc0_1_0 + 1)
	mov	r3,a
	mov	r5,(_interrupt_config_sloc0_1_0 + 2)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r5
	lcall	__gptrget
	mov	r2,a
	mov	_interrupt_config_int_settings_1_172,r2
;	bmm150.c:1556: int_settings.int_pin_en = settings->int_settings.int_pin_en;
	mov	a,#0x07
	add	a,_interrupt_config_sloc0_1_0
	mov	r2,a
	clr	a
	addc	a,(_interrupt_config_sloc0_1_0 + 1)
	mov	r3,a
	mov	r5,(_interrupt_config_sloc0_1_0 + 2)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r5
	lcall	__gptrget
	mov	r2,a
	mov	(_interrupt_config_int_settings_1_172 + 0x0001),r2
;	bmm150.c:1557: int_settings.drdy_polarity = settings->int_settings.drdy_polarity;
	mov	a,#0x08
	add	a,_interrupt_config_sloc0_1_0
	mov	r2,a
	clr	a
	addc	a,(_interrupt_config_sloc0_1_0 + 1)
	mov	r3,a
	mov	r5,(_interrupt_config_sloc0_1_0 + 2)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r5
	lcall	__gptrget
	mov	r2,a
	mov	(_interrupt_config_int_settings_1_172 + 0x0002),r2
;	bmm150.c:1558: int_settings.int_polarity = settings->int_settings.int_polarity;
	mov	a,#0x0A
	add	a,_interrupt_config_sloc0_1_0
	mov	r2,a
	clr	a
	addc	a,(_interrupt_config_sloc0_1_0 + 1)
	mov	r3,a
	mov	r5,(_interrupt_config_sloc0_1_0 + 2)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r5
	lcall	__gptrget
	mov	r2,a
	mov	(_interrupt_config_int_settings_1_172 + 0x0004),r2
;	bmm150.c:1560: if (desired_settings & BMM150_SEL_DATA_OVERRUN_INT)
	mov	a,(_interrupt_config_desired_settings_1_171 + 1)
	jnb	acc.1,L028002?
;	bmm150.c:1563: reg_data = BMM150_SET_BITS(reg_data, BMM150_DATA_OVERRUN_INT, int_settings.data_overrun_en);
	mov	a,#0x7F
	anl	a,_interrupt_config_reg_data_1_172
	mov	r2,a
	mov	r3,(_interrupt_config_int_settings_1_172 + 0x0005)
	clr	a
	anl	a,#0x01
	mov	c,acc.0
	xch	a,r3
	rrc	a
	xch	a,r3
	rrc	a
	xch	a,r3
	anl	ar3,#0x80
	clr	a
	mov	r5,a
	mov	r6,a
	mov	a,r2
	orl	ar3,a
	mov	a,r6
	orl	ar5,a
	mov	_interrupt_config_reg_data_1_172,r3
L028002?:
;	bmm150.c:1566: if (desired_settings & BMM150_SEL_OVERFLOW_INT)
	mov	a,(_interrupt_config_desired_settings_1_171 + 1)
	jnb	acc.2,L028004?
;	bmm150.c:1569: reg_data = BMM150_SET_BITS(reg_data, BMM150_OVERFLOW_INT, int_settings.overflow_int_en);
	mov	a,#0xBF
	anl	a,_interrupt_config_reg_data_1_172
	mov	r2,a
	mov	r3,(_interrupt_config_int_settings_1_172 + 0x0006)
	clr	a
	anl	a,#0x03
	mov	c,acc.0
	xch	a,r3
	rrc	a
	xch	a,r3
	rrc	a
	mov	c,acc.0
	xch	a,r3
	rrc	a
	xch	a,r3
	rrc	a
	xch	a,r3
	anl	ar3,#0x40
	clr	a
	mov	r5,a
	mov	r6,a
	mov	a,r2
	orl	ar3,a
	mov	a,r6
	orl	ar5,a
	mov	_interrupt_config_reg_data_1_172,r3
L028004?:
;	bmm150.c:1572: if (desired_settings & BMM150_SEL_HIGH_THRESHOLD_INT)
	mov	a,(_interrupt_config_desired_settings_1_171 + 1)
	jnb	acc.3,L028006?
;	bmm150.c:1575: reg_data = BMM150_SET_BITS(reg_data, BMM150_HIGH_THRESHOLD_INT, int_settings.high_int_en);
	mov	a,#0xC7
	anl	a,_interrupt_config_reg_data_1_172
	mov	r2,a
	mov	r3,(_interrupt_config_int_settings_1_172 + 0x0007)
	clr	a
	swap	a
	rr	a
	anl	a,#0xf8
	xch	a,r3
	swap	a
	rr	a
	xch	a,r3
	xrl	a,r3
	xch	a,r3
	anl	a,#0xf8
	xch	a,r3
	xrl	a,r3
	anl	ar3,#0x38
	clr	a
	mov	r5,a
	mov	r6,a
	mov	a,r2
	orl	ar3,a
	mov	a,r6
	orl	ar5,a
	mov	_interrupt_config_reg_data_1_172,r3
L028006?:
;	bmm150.c:1578: if (desired_settings & BMM150_SEL_LOW_THRESHOLD_INT)
	mov	a,(_interrupt_config_desired_settings_1_171 + 1)
	jnb	acc.4,L028008?
;	bmm150.c:1581: reg_data = BMM150_SET_BITS_POS_0(reg_data, BMM150_LOW_THRESHOLD_INT, int_settings.low_int_en);
	mov	a,#0xF8
	anl	a,_interrupt_config_reg_data_1_172
	mov	r2,a
	mov	r3,(_interrupt_config_int_settings_1_172 + 0x0008)
	anl	ar3,#0x07
	clr	a
	mov	r5,a
	mov	r6,a
	mov	a,r2
	orl	ar3,a
	mov	a,r6
	orl	ar5,a
	mov	_interrupt_config_reg_data_1_172,r3
L028008?:
;	bmm150.c:1585: rslt = bmm150_set_regs(BMM150_REG_INT_CONFIG, &reg_data, 1, dev);
	mov	_bmm150_set_regs_PARM_2,#_interrupt_config_reg_data_1_172
	mov	(_bmm150_set_regs_PARM_2 + 1),#0x00
	mov	(_bmm150_set_regs_PARM_2 + 2),#0x40
	mov	_bmm150_set_regs_PARM_3,#0x01
	clr	a
	mov	(_bmm150_set_regs_PARM_3 + 1),a
	mov	(_bmm150_set_regs_PARM_3 + 2),a
	mov	(_bmm150_set_regs_PARM_3 + 3),a
	mov	_bmm150_set_regs_PARM_4,_interrupt_config_PARM_3
	mov	(_bmm150_set_regs_PARM_4 + 1),(_interrupt_config_PARM_3 + 1)
	mov	(_bmm150_set_regs_PARM_4 + 2),(_interrupt_config_PARM_3 + 2)
	mov	dpl,#0x4D
	lcall	_bmm150_set_regs
	mov	r4,dpl
L028010?:
;	bmm150.c:1588: return rslt;
	mov	dpl,r4
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'interrupt_threshold_settings'
;------------------------------------------------------------
;settings                  Allocated with name '_interrupt_threshold_settings_PARM_2'
;dev                       Allocated with name '_interrupt_threshold_settings_PARM_3'
;desired_settings          Allocated to registers r2 r3 
;rslt                      Allocated to registers r4 
;reg_data                  Allocated with name '_interrupt_threshold_settings_reg_data_1_179'
;------------------------------------------------------------
;	bmm150.c:1595: __xdata static int8_t interrupt_threshold_settings(uint16_t desired_settings,
;	-----------------------------------------
;	 function interrupt_threshold_settings
;	-----------------------------------------
_interrupt_threshold_settings:
	mov	r2,dpl
	mov	r3,dph
;	bmm150.c:1599: int8_t rslt = BMM150_E_INVALID_CONFIG;
	mov	r4,#0xFD
;	bmm150.c:1602: if (desired_settings & BMM150_SEL_LOW_THRESHOLD_SETTING)
	mov	a,r3
	jnb	acc.5,L029002?
;	bmm150.c:1605: reg_data = settings->int_settings.low_threshold;
	mov	a,#0x0F
	add	a,_interrupt_threshold_settings_PARM_2
	mov	r5,a
	clr	a
	addc	a,(_interrupt_threshold_settings_PARM_2 + 1)
	mov	r6,a
	mov	r7,(_interrupt_threshold_settings_PARM_2 + 2)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	_interrupt_threshold_settings_reg_data_1_179,a
;	bmm150.c:1606: rslt = bmm150_set_regs(BMM150_REG_LOW_THRESHOLD, &reg_data, 1, dev);
	mov	_bmm150_set_regs_PARM_2,#_interrupt_threshold_settings_reg_data_1_179
	mov	(_bmm150_set_regs_PARM_2 + 1),#0x00
	mov	(_bmm150_set_regs_PARM_2 + 2),#0x40
	mov	_bmm150_set_regs_PARM_3,#0x01
	clr	a
	mov	(_bmm150_set_regs_PARM_3 + 1),a
	mov	(_bmm150_set_regs_PARM_3 + 2),a
	mov	(_bmm150_set_regs_PARM_3 + 3),a
	mov	_bmm150_set_regs_PARM_4,_interrupt_threshold_settings_PARM_3
	mov	(_bmm150_set_regs_PARM_4 + 1),(_interrupt_threshold_settings_PARM_3 + 1)
	mov	(_bmm150_set_regs_PARM_4 + 2),(_interrupt_threshold_settings_PARM_3 + 2)
	mov	dpl,#0x4F
	push	ar2
	push	ar3
	lcall	_bmm150_set_regs
	mov	r4,dpl
	pop	ar3
	pop	ar2
L029002?:
;	bmm150.c:1609: if (desired_settings & BMM150_SEL_HIGH_THRESHOLD_SETTING)
	mov	a,r3
	jnb	acc.6,L029004?
;	bmm150.c:1612: reg_data = settings->int_settings.high_threshold;
	mov	a,#0x10
	add	a,_interrupt_threshold_settings_PARM_2
	mov	r2,a
	clr	a
	addc	a,(_interrupt_threshold_settings_PARM_2 + 1)
	mov	r3,a
	mov	r5,(_interrupt_threshold_settings_PARM_2 + 2)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r5
	lcall	__gptrget
	mov	_interrupt_threshold_settings_reg_data_1_179,a
;	bmm150.c:1613: rslt = bmm150_set_regs(BMM150_REG_HIGH_THRESHOLD, &reg_data, 1, dev);
	mov	_bmm150_set_regs_PARM_2,#_interrupt_threshold_settings_reg_data_1_179
	mov	(_bmm150_set_regs_PARM_2 + 1),#0x00
	mov	(_bmm150_set_regs_PARM_2 + 2),#0x40
	mov	_bmm150_set_regs_PARM_3,#0x01
	clr	a
	mov	(_bmm150_set_regs_PARM_3 + 1),a
	mov	(_bmm150_set_regs_PARM_3 + 2),a
	mov	(_bmm150_set_regs_PARM_3 + 3),a
	mov	_bmm150_set_regs_PARM_4,_interrupt_threshold_settings_PARM_3
	mov	(_bmm150_set_regs_PARM_4 + 1),(_interrupt_threshold_settings_PARM_3 + 1)
	mov	(_bmm150_set_regs_PARM_4 + 2),(_interrupt_threshold_settings_PARM_3 + 2)
	mov	dpl,#0x50
	lcall	_bmm150_set_regs
	mov	r4,dpl
L029004?:
;	bmm150.c:1616: return rslt;
	mov	dpl,r4
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'compensate_x'
;------------------------------------------------------------
;data_rhall                Allocated with name '_compensate_x_PARM_2'
;dev                       Allocated with name '_compensate_x_PARM_3'
;mag_data_x                Allocated with name '_compensate_x_mag_data_x_1_182'
;retval                    Allocated with name '_compensate_x_retval_1_183'
;process_comp_x0           Allocated with name '_compensate_x_process_comp_x0_1_183'
;process_comp_x1           Allocated to registers r2 r3 r4 r5 
;process_comp_x2           Allocated to registers 
;process_comp_x3           Allocated with name '_compensate_x_process_comp_x3_1_183'
;process_comp_x4           Allocated with name '_compensate_x_process_comp_x4_1_183'
;process_comp_x5           Allocated to registers 
;process_comp_x6           Allocated to registers r2 r3 r4 r5 
;process_comp_x7           Allocated to registers r2 r3 r4 r5 
;process_comp_x8           Allocated to registers 
;process_comp_x9           Allocated to registers 
;process_comp_x10          Allocated to registers r2 r3 r4 r5 
;sloc0                     Allocated with name '_compensate_x_sloc0_1_0'
;sloc1                     Allocated with name '_compensate_x_sloc1_1_0'
;------------------------------------------------------------
;	bmm150.c:1731: __xdata static int16_t compensate_x(int16_t mag_data_x, uint16_t data_rhall, const struct bmm150_dev *dev)
;	-----------------------------------------
;	 function compensate_x
;	-----------------------------------------
_compensate_x:
	mov	_compensate_x_mag_data_x_1_182,dpl
	mov	(_compensate_x_mag_data_x_1_182 + 1),dph
;	bmm150.c:1747: if (mag_data_x != BMM150_OVERFLOW_ADCVAL_XYAXES_FLIP)
	clr	a
	cjne	a,_compensate_x_mag_data_x_1_182,L030019?
	mov	a,#0xF0
	cjne	a,(_compensate_x_mag_data_x_1_182 + 1),L030019?
	ljmp	L030011?
L030019?:
;	bmm150.c:1749: if (data_rhall != 0)
	mov	a,_compensate_x_PARM_2
	orl	a,(_compensate_x_PARM_2 + 1)
	jz	L030005?
;	bmm150.c:1752: process_comp_x0 = data_rhall;
	mov	_compensate_x_process_comp_x0_1_183,_compensate_x_PARM_2
	mov	(_compensate_x_process_comp_x0_1_183 + 1),(_compensate_x_PARM_2 + 1)
	sjmp	L030006?
L030005?:
;	bmm150.c:1754: else if (dev->trim_data.dig_xyz1 != 0)
	mov	a,#0x1A
	add	a,_compensate_x_PARM_3
	mov	r6,a
	clr	a
	addc	a,(_compensate_x_PARM_3 + 1)
	mov	r7,a
	mov	r0,(_compensate_x_PARM_3 + 2)
	mov	dpl,r6
	mov	dph,r7
	mov	b,r0
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	orl	a,r6
	jz	L030002?
;	bmm150.c:1756: process_comp_x0 = dev->trim_data.dig_xyz1;
	mov	_compensate_x_process_comp_x0_1_183,r6
	mov	(_compensate_x_process_comp_x0_1_183 + 1),r7
	sjmp	L030006?
L030002?:
;	bmm150.c:1760: process_comp_x0 = 0;
	clr	a
	mov	_compensate_x_process_comp_x0_1_183,a
	mov	(_compensate_x_process_comp_x0_1_183 + 1),a
L030006?:
;	bmm150.c:1763: if (process_comp_x0 != 0)
	mov	a,_compensate_x_process_comp_x0_1_183
	orl	a,(_compensate_x_process_comp_x0_1_183 + 1)
	jnz	L030022?
	ljmp	L030008?
L030022?:
;	bmm150.c:1766: process_comp_x1 = ((int32_t)dev->trim_data.dig_xyz1) * 16384;
	mov	r6,_compensate_x_PARM_3
	mov	r7,(_compensate_x_PARM_3 + 1)
	mov	r0,(_compensate_x_PARM_3 + 2)
	mov	a,#0x0C
	add	a,r6
	mov	_compensate_x_sloc0_1_0,a
	clr	a
	addc	a,r7
	mov	(_compensate_x_sloc0_1_0 + 1),a
	mov	(_compensate_x_sloc0_1_0 + 2),r0
	mov	a,#0x1A
	add	a,r6
	mov	r2,a
	clr	a
	addc	a,r7
	mov	r3,a
	mov	ar4,r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	clr	a
	mov	r4,a
	mov	a,r3
	xch	a,r4
	anl	a,#0x03
	mov	c,acc.0
	xch	a,r4
	rrc	a
	xch	a,r4
	rrc	a
	mov	c,acc.0
	xch	a,r4
	rrc	a
	xch	a,r4
	rrc	a
	xch	a,r4
	mov	r5,a
	mov	a,r2
	rr	a
	rr	a
	anl	a,#0xc0
	mov	r3,a
	mov	a,r2
	rr	a
	rr	a
	anl	a,#0x3f
	orl	a,r4
	mov	r4,a
	mov	r2,#0x00
;	bmm150.c:1767: process_comp_x2 = ((uint16_t)(process_comp_x1 / process_comp_x0)) - ((uint16_t)0x4000);
	mov	__divslong_PARM_2,_compensate_x_process_comp_x0_1_183
	mov	(__divslong_PARM_2 + 1),(_compensate_x_process_comp_x0_1_183 + 1)
	mov	(__divslong_PARM_2 + 2),#0x00
	mov	(__divslong_PARM_2 + 3),#0x00
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	push	ar6
	push	ar7
	push	ar0
	lcall	__divslong
	mov	r2,dpl
	mov	r3,dph
	mov	_compensate_x_retval_1_183,r2
	mov	a,r3
	add	a,#0xc0
;	bmm150.c:1769: process_comp_x3 = (((int32_t)retval) * ((int32_t)retval));
	mov	(_compensate_x_retval_1_183 + 1),a
	mov	_compensate_x_sloc1_1_0,_compensate_x_retval_1_183
	mov	(_compensate_x_sloc1_1_0 + 1),a
	rlc	a
	subb	a,acc
	mov	(_compensate_x_sloc1_1_0 + 2),a
	mov	(_compensate_x_sloc1_1_0 + 3),a
	mov	__mullong_PARM_2,_compensate_x_sloc1_1_0
	mov	(__mullong_PARM_2 + 1),(_compensate_x_sloc1_1_0 + 1)
	mov	(__mullong_PARM_2 + 2),(_compensate_x_sloc1_1_0 + 2)
	mov	(__mullong_PARM_2 + 3),(_compensate_x_sloc1_1_0 + 3)
	mov	dpl,_compensate_x_sloc1_1_0
	mov	dph,(_compensate_x_sloc1_1_0 + 1)
	mov	b,(_compensate_x_sloc1_1_0 + 2)
	mov	a,(_compensate_x_sloc1_1_0 + 3)
	lcall	__mullong
	mov	_compensate_x_process_comp_x3_1_183,dpl
	mov	(_compensate_x_process_comp_x3_1_183 + 1),dph
	mov	(_compensate_x_process_comp_x3_1_183 + 2),b
	mov	(_compensate_x_process_comp_x3_1_183 + 3),a
	pop	ar0
	pop	ar7
	pop	ar6
;	bmm150.c:1770: process_comp_x4 = (((int32_t)dev->trim_data.dig_xy2) * (process_comp_x3 / 128));
	mov	a,#0x19
	add	a,r6
	mov	r3,a
	clr	a
	addc	a,r7
	mov	r2,a
	mov	ar4,r0
	mov	dpl,r3
	mov	dph,r2
	mov	b,r4
	lcall	__gptrget
	mov	r3,a
	rlc	a
	subb	a,acc
	mov	r2,a
	mov	r4,a
	mov	r5,a
	mov	__divslong_PARM_2,#0x80
	clr	a
	mov	(__divslong_PARM_2 + 1),a
	mov	(__divslong_PARM_2 + 2),a
	mov	(__divslong_PARM_2 + 3),a
	mov	dpl,_compensate_x_process_comp_x3_1_183
	mov	dph,(_compensate_x_process_comp_x3_1_183 + 1)
	mov	b,(_compensate_x_process_comp_x3_1_183 + 2)
	mov	a,(_compensate_x_process_comp_x3_1_183 + 3)
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	push	ar0
	lcall	__divslong
	mov	__mullong_PARM_2,dpl
	mov	(__mullong_PARM_2 + 1),dph
	mov	(__mullong_PARM_2 + 2),b
	mov	(__mullong_PARM_2 + 3),a
	pop	ar0
	pop	ar7
	pop	ar6
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
	mov	dpl,r3
	mov	dph,r2
	mov	b,r4
	mov	a,r5
	push	ar6
	push	ar7
	push	ar0
	lcall	__mullong
	mov	_compensate_x_process_comp_x4_1_183,dpl
	mov	(_compensate_x_process_comp_x4_1_183 + 1),dph
	mov	(_compensate_x_process_comp_x4_1_183 + 2),b
	mov	(_compensate_x_process_comp_x4_1_183 + 3),a
	pop	ar0
	pop	ar7
	pop	ar6
;	bmm150.c:1771: process_comp_x5 = (int32_t)(((int16_t)dev->trim_data.dig_xy1) * 128);
	mov	a,#0x18
	add	a,r6
	mov	r1,a
	clr	a
	addc	a,r7
	mov	r2,a
	mov	ar3,r0
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	lcall	__gptrget
	mov	r1,a
	clr	a
	anl	a,#0x01
	mov	c,acc.0
	xch	a,r1
	rrc	a
	xch	a,r1
	rrc	a
	xch	a,r1
	mov	__mullong_PARM_2,r1
	mov	(__mullong_PARM_2 + 1),a
	rlc	a
	subb	a,acc
	mov	(__mullong_PARM_2 + 2),a
	mov	(__mullong_PARM_2 + 3),a
;	bmm150.c:1772: process_comp_x6 = ((int32_t)retval) * process_comp_x5;
	mov	dpl,_compensate_x_sloc1_1_0
	mov	dph,(_compensate_x_sloc1_1_0 + 1)
	mov	b,(_compensate_x_sloc1_1_0 + 2)
	mov	a,(_compensate_x_sloc1_1_0 + 3)
	push	ar6
	push	ar7
	push	ar0
	lcall	__mullong
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
;	bmm150.c:1773: process_comp_x7 = (((process_comp_x4 + process_comp_x6) / 512) + ((int32_t)0x100000));
	mov	a,r2
	add	a,_compensate_x_process_comp_x4_1_183
	mov	r2,a
	mov	a,r3
	addc	a,(_compensate_x_process_comp_x4_1_183 + 1)
	mov	r3,a
	mov	a,r4
	addc	a,(_compensate_x_process_comp_x4_1_183 + 2)
	mov	r4,a
	mov	a,r5
	addc	a,(_compensate_x_process_comp_x4_1_183 + 3)
	mov	r5,a
	mov	__divslong_PARM_2,#0x00
	mov	(__divslong_PARM_2 + 1),#0x02
	mov	(__divslong_PARM_2 + 2),#0x00
	mov	(__divslong_PARM_2 + 3),#0x00
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	__divslong
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	pop	ar0
	pop	ar7
	pop	ar6
	mov	a,#0x10
	add	a,r4
	mov	r4,a
	clr	a
	addc	a,r5
	mov	r5,a
;	bmm150.c:1774: process_comp_x8 = ((int32_t)(((int16_t)dev->trim_data.dig_x2) + ((int16_t)0xA0)));
	mov	a,#0x0E
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	mov	b,r0
	lcall	__gptrget
	mov	r6,a
	rlc	a
	subb	a,acc
	mov	r7,a
	mov	a,#0xA0
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	__mullong_PARM_2,r6
	mov	(__mullong_PARM_2 + 1),a
	rlc	a
	subb	a,acc
	mov	(__mullong_PARM_2 + 2),a
	mov	(__mullong_PARM_2 + 3),a
;	bmm150.c:1775: process_comp_x9 = ((process_comp_x7 * process_comp_x8) / 4096);
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	__mullong
	mov	__divslong_PARM_2,#0x00
	mov	(__divslong_PARM_2 + 1),#0x10
	mov	(__divslong_PARM_2 + 2),#0x00
	mov	(__divslong_PARM_2 + 3),#0x00
	lcall	__divslong
	mov	__mullong_PARM_2,dpl
	mov	(__mullong_PARM_2 + 1),dph
	mov	(__mullong_PARM_2 + 2),b
	mov	(__mullong_PARM_2 + 3),a
;	bmm150.c:1776: process_comp_x10 = ((int32_t)mag_data_x) * process_comp_x9;
	mov	r2,_compensate_x_mag_data_x_1_182
	mov	a,(_compensate_x_mag_data_x_1_182 + 1)
	mov	r3,a
	rlc	a
	subb	a,acc
	mov	r4,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__mullong
;	bmm150.c:1777: retval = ((int16_t)(process_comp_x10 / 8192));
	mov	__divslong_PARM_2,#0x00
	mov	(__divslong_PARM_2 + 1),#0x20
	mov	(__divslong_PARM_2 + 2),#0x00
	mov	(__divslong_PARM_2 + 3),#0x00
	lcall	__divslong
	mov	r2,dpl
	mov	r3,dph
	mov	_compensate_x_retval_1_183,r2
	mov	(_compensate_x_retval_1_183 + 1),r3
;	bmm150.c:1778: retval = (retval + (((int16_t)dev->trim_data.dig_x1) * 8)) / 16;
	mov	dpl,_compensate_x_sloc0_1_0
	mov	dph,(_compensate_x_sloc0_1_0 + 1)
	mov	b,(_compensate_x_sloc0_1_0 + 2)
	lcall	__gptrget
	mov	r2,a
	rlc	a
	subb	a,acc
	swap	a
	rr	a
	anl	a,#0xf8
	xch	a,r2
	swap	a
	rr	a
	xch	a,r2
	xrl	a,r2
	xch	a,r2
	anl	a,#0xf8
	xch	a,r2
	xrl	a,r2
	mov	r3,a
	mov	a,r2
	add	a,_compensate_x_retval_1_183
	mov	dpl,a
	mov	a,r3
	addc	a,(_compensate_x_retval_1_183 + 1)
	mov	dph,a
	mov	__divsint_PARM_2,#0x10
	clr	a
	mov	(__divsint_PARM_2 + 1),a
	lcall	__divsint
	mov	_compensate_x_retval_1_183,dpl
	mov	(_compensate_x_retval_1_183 + 1),dph
	sjmp	L030012?
L030008?:
;	bmm150.c:1782: retval = BMM150_OVERFLOW_OUTPUT;
	mov	_compensate_x_retval_1_183,#0x00
	mov	(_compensate_x_retval_1_183 + 1),#0x80
	sjmp	L030012?
L030011?:
;	bmm150.c:1788: retval = BMM150_OVERFLOW_OUTPUT;
	mov	_compensate_x_retval_1_183,#0x00
	mov	(_compensate_x_retval_1_183 + 1),#0x80
L030012?:
;	bmm150.c:1791: return retval;
	mov	dpl,_compensate_x_retval_1_183
	mov	dph,(_compensate_x_retval_1_183 + 1)
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'compensate_y'
;------------------------------------------------------------
;data_rhall                Allocated with name '_compensate_y_PARM_2'
;dev                       Allocated with name '_compensate_y_PARM_3'
;mag_data_y                Allocated with name '_compensate_y_mag_data_y_1_191'
;retval                    Allocated with name '_compensate_y_retval_1_192'
;process_comp_y0           Allocated with name '_compensate_y_process_comp_y0_1_192'
;process_comp_y1           Allocated to registers r2 r3 r4 r5 
;process_comp_y2           Allocated to registers 
;process_comp_y3           Allocated with name '_compensate_y_process_comp_y3_1_192'
;process_comp_y4           Allocated with name '_compensate_y_process_comp_y4_1_192'
;process_comp_y5           Allocated to registers 
;process_comp_y6           Allocated with name '_compensate_y_process_comp_y6_1_192'
;process_comp_y7           Allocated to registers 
;process_comp_y8           Allocated to registers 
;process_comp_y9           Allocated to registers r2 r3 r4 r5 
;sloc0                     Allocated with name '_compensate_y_sloc0_1_0'
;------------------------------------------------------------
;	bmm150.c:1798: __xdata static int16_t compensate_y(int16_t mag_data_y, uint16_t data_rhall, const struct bmm150_dev *dev)
;	-----------------------------------------
;	 function compensate_y
;	-----------------------------------------
_compensate_y:
	mov	_compensate_y_mag_data_y_1_191,dpl
	mov	(_compensate_y_mag_data_y_1_191 + 1),dph
;	bmm150.c:1813: if (mag_data_y != BMM150_OVERFLOW_ADCVAL_XYAXES_FLIP)
	clr	a
	cjne	a,_compensate_y_mag_data_y_1_191,L031019?
	mov	a,#0xF0
	cjne	a,(_compensate_y_mag_data_y_1_191 + 1),L031019?
	ljmp	L031011?
L031019?:
;	bmm150.c:1815: if (data_rhall != 0)
	mov	a,_compensate_y_PARM_2
	orl	a,(_compensate_y_PARM_2 + 1)
	jz	L031005?
;	bmm150.c:1818: process_comp_y0 = data_rhall;
	mov	_compensate_y_process_comp_y0_1_192,_compensate_y_PARM_2
	mov	(_compensate_y_process_comp_y0_1_192 + 1),(_compensate_y_PARM_2 + 1)
	sjmp	L031006?
L031005?:
;	bmm150.c:1820: else if (dev->trim_data.dig_xyz1 != 0)
	mov	a,#0x1A
	add	a,_compensate_y_PARM_3
	mov	r6,a
	clr	a
	addc	a,(_compensate_y_PARM_3 + 1)
	mov	r7,a
	mov	r0,(_compensate_y_PARM_3 + 2)
	mov	dpl,r6
	mov	dph,r7
	mov	b,r0
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	orl	a,r6
	jz	L031002?
;	bmm150.c:1822: process_comp_y0 = dev->trim_data.dig_xyz1;
	mov	_compensate_y_process_comp_y0_1_192,r6
	mov	(_compensate_y_process_comp_y0_1_192 + 1),r7
	sjmp	L031006?
L031002?:
;	bmm150.c:1826: process_comp_y0 = 0;
	clr	a
	mov	_compensate_y_process_comp_y0_1_192,a
	mov	(_compensate_y_process_comp_y0_1_192 + 1),a
L031006?:
;	bmm150.c:1829: if (process_comp_y0 != 0)
	mov	a,_compensate_y_process_comp_y0_1_192
	orl	a,(_compensate_y_process_comp_y0_1_192 + 1)
	jnz	L031022?
	ljmp	L031008?
L031022?:
;	bmm150.c:1832: process_comp_y1 = (((int32_t)dev->trim_data.dig_xyz1) * 16384) / process_comp_y0;
	mov	r6,_compensate_y_PARM_3
	mov	r7,(_compensate_y_PARM_3 + 1)
	mov	r0,(_compensate_y_PARM_3 + 2)
	mov	a,#0x1A
	add	a,r6
	mov	r1,a
	clr	a
	addc	a,r7
	mov	r4,a
	mov	ar5,r0
	mov	dpl,r1
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	r1,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	clr	a
	mov	r5,a
	mov	a,r4
	xch	a,r5
	anl	a,#0x03
	mov	c,acc.0
	xch	a,r5
	rrc	a
	xch	a,r5
	rrc	a
	mov	c,acc.0
	xch	a,r5
	rrc	a
	xch	a,r5
	rrc	a
	xch	a,r5
	mov	r2,a
	mov	a,r1
	rr	a
	rr	a
	anl	a,#0xc0
	mov	r4,a
	mov	a,r1
	rr	a
	rr	a
	anl	a,#0x3f
	orl	a,r5
	mov	r5,a
	mov	r1,#0x00
	mov	__divslong_PARM_2,_compensate_y_process_comp_y0_1_192
	mov	(__divslong_PARM_2 + 1),(_compensate_y_process_comp_y0_1_192 + 1)
	mov	(__divslong_PARM_2 + 2),#0x00
	mov	(__divslong_PARM_2 + 3),#0x00
	mov	dpl,r1
	mov	dph,r4
	mov	b,r5
	mov	a,r2
	push	ar6
	push	ar7
	push	ar0
	lcall	__divslong
	mov	r2,dpl
	mov	r3,dph
;	bmm150.c:1833: process_comp_y2 = ((uint16_t)process_comp_y1) - ((uint16_t)0x4000);
	mov	_compensate_y_retval_1_192,r2
	mov	a,r3
	add	a,#0xc0
;	bmm150.c:1835: process_comp_y3 = ((int32_t) retval) * ((int32_t)retval);
	mov	(_compensate_y_retval_1_192 + 1),a
	mov	_compensate_y_sloc0_1_0,_compensate_y_retval_1_192
	mov	(_compensate_y_sloc0_1_0 + 1),a
	rlc	a
	subb	a,acc
	mov	(_compensate_y_sloc0_1_0 + 2),a
	mov	(_compensate_y_sloc0_1_0 + 3),a
	mov	__mullong_PARM_2,_compensate_y_sloc0_1_0
	mov	(__mullong_PARM_2 + 1),(_compensate_y_sloc0_1_0 + 1)
	mov	(__mullong_PARM_2 + 2),(_compensate_y_sloc0_1_0 + 2)
	mov	(__mullong_PARM_2 + 3),(_compensate_y_sloc0_1_0 + 3)
	mov	dpl,_compensate_y_sloc0_1_0
	mov	dph,(_compensate_y_sloc0_1_0 + 1)
	mov	b,(_compensate_y_sloc0_1_0 + 2)
	mov	a,(_compensate_y_sloc0_1_0 + 3)
	lcall	__mullong
	mov	_compensate_y_process_comp_y3_1_192,dpl
	mov	(_compensate_y_process_comp_y3_1_192 + 1),dph
	mov	(_compensate_y_process_comp_y3_1_192 + 2),b
	mov	(_compensate_y_process_comp_y3_1_192 + 3),a
	pop	ar0
	pop	ar7
	pop	ar6
;	bmm150.c:1836: process_comp_y4 = ((int32_t)dev->trim_data.dig_xy2) * (process_comp_y3 / 128);
	mov	a,#0x19
	add	a,r6
	mov	r3,a
	clr	a
	addc	a,r7
	mov	r2,a
	mov	ar4,r0
	mov	dpl,r3
	mov	dph,r2
	mov	b,r4
	lcall	__gptrget
	mov	r3,a
	rlc	a
	subb	a,acc
	mov	r2,a
	mov	r4,a
	mov	r5,a
	mov	__divslong_PARM_2,#0x80
	clr	a
	mov	(__divslong_PARM_2 + 1),a
	mov	(__divslong_PARM_2 + 2),a
	mov	(__divslong_PARM_2 + 3),a
	mov	dpl,_compensate_y_process_comp_y3_1_192
	mov	dph,(_compensate_y_process_comp_y3_1_192 + 1)
	mov	b,(_compensate_y_process_comp_y3_1_192 + 2)
	mov	a,(_compensate_y_process_comp_y3_1_192 + 3)
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	push	ar0
	lcall	__divslong
	mov	__mullong_PARM_2,dpl
	mov	(__mullong_PARM_2 + 1),dph
	mov	(__mullong_PARM_2 + 2),b
	mov	(__mullong_PARM_2 + 3),a
	pop	ar0
	pop	ar7
	pop	ar6
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
	mov	dpl,r3
	mov	dph,r2
	mov	b,r4
	mov	a,r5
	push	ar6
	push	ar7
	push	ar0
	lcall	__mullong
	mov	_compensate_y_process_comp_y4_1_192,dpl
	mov	(_compensate_y_process_comp_y4_1_192 + 1),dph
	mov	(_compensate_y_process_comp_y4_1_192 + 2),b
	mov	(_compensate_y_process_comp_y4_1_192 + 3),a
	pop	ar0
	pop	ar7
	pop	ar6
;	bmm150.c:1837: process_comp_y5 = ((int32_t)(((int16_t)dev->trim_data.dig_xy1) * 128));
	mov	a,#0x18
	add	a,r6
	mov	r1,a
	clr	a
	addc	a,r7
	mov	r2,a
	mov	ar3,r0
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	lcall	__gptrget
	mov	r1,a
	clr	a
	anl	a,#0x01
	mov	c,acc.0
	xch	a,r1
	rrc	a
	xch	a,r1
	rrc	a
	xch	a,r1
	mov	__mullong_PARM_2,r1
	mov	(__mullong_PARM_2 + 1),a
	rlc	a
	subb	a,acc
	mov	(__mullong_PARM_2 + 2),a
	mov	(__mullong_PARM_2 + 3),a
;	bmm150.c:1838: process_comp_y6 = ((process_comp_y4 + (((int32_t)retval) * process_comp_y5)) / 512);
	mov	dpl,_compensate_y_sloc0_1_0
	mov	dph,(_compensate_y_sloc0_1_0 + 1)
	mov	b,(_compensate_y_sloc0_1_0 + 2)
	mov	a,(_compensate_y_sloc0_1_0 + 3)
	push	ar6
	push	ar7
	push	ar0
	lcall	__mullong
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	a,r2
	add	a,_compensate_y_process_comp_y4_1_192
	mov	r2,a
	mov	a,r3
	addc	a,(_compensate_y_process_comp_y4_1_192 + 1)
	mov	r3,a
	mov	a,r4
	addc	a,(_compensate_y_process_comp_y4_1_192 + 2)
	mov	r4,a
	mov	a,r5
	addc	a,(_compensate_y_process_comp_y4_1_192 + 3)
	mov	r5,a
	mov	__divslong_PARM_2,#0x00
	mov	(__divslong_PARM_2 + 1),#0x02
	mov	(__divslong_PARM_2 + 2),#0x00
	mov	(__divslong_PARM_2 + 3),#0x00
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	__divslong
	mov	_compensate_y_process_comp_y6_1_192,dpl
	mov	(_compensate_y_process_comp_y6_1_192 + 1),dph
	mov	(_compensate_y_process_comp_y6_1_192 + 2),b
	mov	(_compensate_y_process_comp_y6_1_192 + 3),a
	pop	ar0
	pop	ar7
	pop	ar6
;	bmm150.c:1839: process_comp_y7 = ((int32_t)(((int16_t)dev->trim_data.dig_y2) + ((int16_t)0xA0)));
	mov	a,#0x0F
	add	a,r6
	mov	r1,a
	clr	a
	addc	a,r7
	mov	r2,a
	mov	ar3,r0
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	lcall	__gptrget
	mov	r1,a
	rlc	a
	subb	a,acc
	mov	r2,a
	mov	a,#0xA0
	add	a,r1
	mov	r1,a
	clr	a
	addc	a,r2
	mov	__mullong_PARM_2,r1
	mov	(__mullong_PARM_2 + 1),a
	rlc	a
	subb	a,acc
	mov	(__mullong_PARM_2 + 2),a
	mov	(__mullong_PARM_2 + 3),a
;	bmm150.c:1840: process_comp_y8 = (((process_comp_y6 + ((int32_t)0x100000)) * process_comp_y7) / 4096);
	mov	r2,_compensate_y_process_comp_y6_1_192
	mov	r3,(_compensate_y_process_comp_y6_1_192 + 1)
	mov	a,#0x10
	add	a,(_compensate_y_process_comp_y6_1_192 + 2)
	mov	r4,a
	clr	a
	addc	a,(_compensate_y_process_comp_y6_1_192 + 3)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	push	ar6
	push	ar7
	push	ar0
	lcall	__mullong
	mov	__divslong_PARM_2,#0x00
	mov	(__divslong_PARM_2 + 1),#0x10
	mov	(__divslong_PARM_2 + 2),#0x00
	mov	(__divslong_PARM_2 + 3),#0x00
	lcall	__divslong
	mov	__mullong_PARM_2,dpl
	mov	(__mullong_PARM_2 + 1),dph
	mov	(__mullong_PARM_2 + 2),b
	mov	(__mullong_PARM_2 + 3),a
;	bmm150.c:1841: process_comp_y9 = (((int32_t)mag_data_y) * process_comp_y8);
	mov	r2,_compensate_y_mag_data_y_1_191
	mov	a,(_compensate_y_mag_data_y_1_191 + 1)
	mov	r3,a
	rlc	a
	subb	a,acc
	mov	r4,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__mullong
;	bmm150.c:1842: retval = (int16_t)(process_comp_y9 / 8192);
	mov	__divslong_PARM_2,#0x00
	mov	(__divslong_PARM_2 + 1),#0x20
	mov	(__divslong_PARM_2 + 2),#0x00
	mov	(__divslong_PARM_2 + 3),#0x00
	lcall	__divslong
	mov	r2,dpl
	mov	r3,dph
	pop	ar0
	pop	ar7
	pop	ar6
	mov	_compensate_y_retval_1_192,r2
	mov	(_compensate_y_retval_1_192 + 1),r3
;	bmm150.c:1843: retval = (retval + (((int16_t)dev->trim_data.dig_y1) * 8)) / 16;
	mov	a,#0x0D
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	mov	b,r0
	lcall	__gptrget
	mov	r6,a
	rlc	a
	subb	a,acc
	swap	a
	rr	a
	anl	a,#0xf8
	xch	a,r6
	swap	a
	rr	a
	xch	a,r6
	xrl	a,r6
	xch	a,r6
	anl	a,#0xf8
	xch	a,r6
	xrl	a,r6
	mov	r2,a
	mov	a,r6
	add	a,_compensate_y_retval_1_192
	mov	dpl,a
	mov	a,r2
	addc	a,(_compensate_y_retval_1_192 + 1)
	mov	dph,a
	mov	__divsint_PARM_2,#0x10
	clr	a
	mov	(__divsint_PARM_2 + 1),a
	lcall	__divsint
	mov	_compensate_y_retval_1_192,dpl
	mov	(_compensate_y_retval_1_192 + 1),dph
	sjmp	L031012?
L031008?:
;	bmm150.c:1847: retval = BMM150_OVERFLOW_OUTPUT;
	mov	_compensate_y_retval_1_192,#0x00
	mov	(_compensate_y_retval_1_192 + 1),#0x80
	sjmp	L031012?
L031011?:
;	bmm150.c:1853: retval = BMM150_OVERFLOW_OUTPUT;
	mov	_compensate_y_retval_1_192,#0x00
	mov	(_compensate_y_retval_1_192 + 1),#0x80
L031012?:
;	bmm150.c:1856: return retval;
	mov	dpl,_compensate_y_retval_1_192
	mov	dph,(_compensate_y_retval_1_192 + 1)
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'compensate_z'
;------------------------------------------------------------
;data_rhall                Allocated with name '_compensate_z_PARM_2'
;dev                       Allocated with name '_compensate_z_PARM_3'
;mag_data_z                Allocated with name '_compensate_z_mag_data_z_1_200'
;retval                    Allocated to registers r2 r3 r4 r5 
;process_comp_z0           Allocated with name '_compensate_z_process_comp_z0_1_201'
;process_comp_z1           Allocated with name '_compensate_z_process_comp_z1_1_201'
;process_comp_z2           Allocated with name '_compensate_z_process_comp_z2_1_201'
;process_comp_z3           Allocated to registers r2 r3 r4 r5 
;process_comp_z4           Allocated to registers r2 r3 
;sloc0                     Allocated with name '_compensate_z_sloc0_1_0'
;sloc1                     Allocated with name '_compensate_z_sloc1_1_0'
;sloc2                     Allocated with name '_compensate_z_sloc2_1_0'
;------------------------------------------------------------
;	bmm150.c:1863: __xdata static int16_t compensate_z(int16_t mag_data_z, uint16_t data_rhall, const struct bmm150_dev *dev)
;	-----------------------------------------
;	 function compensate_z
;	-----------------------------------------
_compensate_z:
	mov	_compensate_z_mag_data_z_1_200,dpl
	mov	(_compensate_z_mag_data_z_1_200 + 1),dph
;	bmm150.c:1872: if (mag_data_z != BMM150_OVERFLOW_ADCVAL_ZAXIS_HALL)
	clr	a
	cjne	a,_compensate_z_mag_data_z_1_200,L032024?
	mov	a,#0xC0
	cjne	a,(_compensate_z_mag_data_z_1_200 + 1),L032024?
	ljmp	L032013?
L032024?:
;	bmm150.c:1874: if ((dev->trim_data.dig_z2 != 0) && (dev->trim_data.dig_z1 != 0) && (data_rhall != 0) &&
	mov	r4,_compensate_z_PARM_3
	mov	r5,(_compensate_z_PARM_3 + 1)
	mov	r6,(_compensate_z_PARM_3 + 2)
	mov	a,#0x12
	add	a,r4
	mov	r7,a
	clr	a
	addc	a,r5
	mov	r0,a
	mov	ar1,r6
	mov	dpl,r7
	mov	dph,r0
	mov	b,r1
	lcall	__gptrget
	mov	_compensate_z_sloc2_1_0,a
	inc	dptr
	lcall	__gptrget
	mov	(_compensate_z_sloc2_1_0 + 1),a
	mov	a,_compensate_z_sloc2_1_0
	orl	a,(_compensate_z_sloc2_1_0 + 1)
	jnz	L032025?
	ljmp	L032007?
L032025?:
	mov	a,#0x10
	add	a,r4
	mov	r1,a
	clr	a
	addc	a,r5
	mov	r2,a
	mov	ar3,r6
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	lcall	__gptrget
	mov	_compensate_z_sloc1_1_0,a
	inc	dptr
	lcall	__gptrget
	mov	(_compensate_z_sloc1_1_0 + 1),a
	mov	a,_compensate_z_sloc1_1_0
	orl	a,(_compensate_z_sloc1_1_0 + 1)
	jnz	L032026?
	ljmp	L032007?
L032026?:
	mov	a,_compensate_z_PARM_2
	orl	a,(_compensate_z_PARM_2 + 1)
	jnz	L032027?
	ljmp	L032007?
L032027?:
;	bmm150.c:1875: (dev->trim_data.dig_xyz1 != 0))
	mov	a,#0x1A
	add	a,r4
	mov	r1,a
	clr	a
	addc	a,r5
	mov	r2,a
	mov	ar3,r6
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	lcall	__gptrget
	mov	_compensate_z_sloc0_1_0,a
	inc	dptr
	lcall	__gptrget
	mov	(_compensate_z_sloc0_1_0 + 1),a
	mov	a,_compensate_z_sloc0_1_0
	orl	a,(_compensate_z_sloc0_1_0 + 1)
	jnz	L032028?
	ljmp	L032007?
L032028?:
;	bmm150.c:1878: process_comp_z0 = ((int16_t)data_rhall) - ((int16_t) dev->trim_data.dig_xyz1);
	mov	a,_compensate_z_PARM_2
	clr	c
	subb	a,_compensate_z_sloc0_1_0
	mov	_compensate_z_process_comp_z0_1_201,a
	mov	a,(_compensate_z_PARM_2 + 1)
	subb	a,(_compensate_z_sloc0_1_0 + 1)
	mov	(_compensate_z_process_comp_z0_1_201 + 1),a
;	bmm150.c:1879: process_comp_z1 = (((int32_t)dev->trim_data.dig_z3) * ((int32_t)(process_comp_z0))) / 4;
	mov	a,#0x14
	add	a,r4
	mov	r3,a
	clr	a
	addc	a,r5
	mov	r2,a
	mov	ar1,r6
	mov	dpl,r3
	mov	dph,r2
	mov	b,r1
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r2,a
	rlc	a
	subb	a,acc
	mov	r1,a
	mov	r7,a
	mov	__mullong_PARM_2,_compensate_z_process_comp_z0_1_201
	mov	a,(_compensate_z_process_comp_z0_1_201 + 1)
	mov	(__mullong_PARM_2 + 1),a
	rlc	a
	subb	a,acc
	mov	(__mullong_PARM_2 + 2),a
	mov	(__mullong_PARM_2 + 3),a
	mov	dpl,r3
	mov	dph,r2
	mov	b,r1
	mov	a,r7
	push	ar4
	push	ar5
	push	ar6
	lcall	__mullong
	mov	r2,dpl
	mov	r3,dph
	mov	r7,b
	mov	r0,a
	mov	__divslong_PARM_2,#0x04
	clr	a
	mov	(__divslong_PARM_2 + 1),a
	mov	(__divslong_PARM_2 + 2),a
	mov	(__divslong_PARM_2 + 3),a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	mov	a,r0
	lcall	__divslong
	mov	_compensate_z_process_comp_z1_1_201,dpl
	mov	(_compensate_z_process_comp_z1_1_201 + 1),dph
	mov	(_compensate_z_process_comp_z1_1_201 + 2),b
	mov	(_compensate_z_process_comp_z1_1_201 + 3),a
	pop	ar6
	pop	ar5
	pop	ar4
;	bmm150.c:1880: process_comp_z2 = (((int32_t)(mag_data_z - dev->trim_data.dig_z4)) * 32768);
	mov	a,#0x16
	add	a,r4
	mov	r4,a
	clr	a
	addc	a,r5
	mov	r5,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	mov	a,_compensate_z_mag_data_z_1_200
	clr	c
	subb	a,r4
	mov	r4,a
	mov	a,(_compensate_z_mag_data_z_1_200 + 1)
	subb	a,r5
	mov	r5,a
	rlc	a
	subb	a,acc
	mov	(_compensate_z_process_comp_z2_1_201 + 2),r5
	anl	a,#0x01
	mov	c,acc.0
	xch	a,(_compensate_z_process_comp_z2_1_201 + 2)
	rrc	a
	xch	a,(_compensate_z_process_comp_z2_1_201 + 2)
	rrc	a
	xch	a,(_compensate_z_process_comp_z2_1_201 + 2)
	mov	(_compensate_z_process_comp_z2_1_201 + 3),a
	mov	a,r4
	rr	a
	anl	a,#0x80
	mov	(_compensate_z_process_comp_z2_1_201 + 1),a
	mov	a,r4
	clr	c
	rrc	a
	orl	a,(_compensate_z_process_comp_z2_1_201 + 2)
	mov	(_compensate_z_process_comp_z2_1_201 + 2),a
	mov	_compensate_z_process_comp_z2_1_201,#0x00
;	bmm150.c:1881: process_comp_z3 = ((int32_t)dev->trim_data.dig_z1) * (((int16_t)data_rhall) * 2);
	mov	r4,_compensate_z_sloc1_1_0
	mov	r5,(_compensate_z_sloc1_1_0 + 1)
	clr	a
	mov	r6,a
	mov	r1,a
	mov	a,_compensate_z_PARM_2
	add	a,acc
	mov	r2,a
	mov	a,(_compensate_z_PARM_2 + 1)
	rlc	a
	mov	__mullong_PARM_2,r2
	mov	(__mullong_PARM_2 + 1),a
	rlc	a
	subb	a,acc
	mov	(__mullong_PARM_2 + 2),a
	mov	(__mullong_PARM_2 + 3),a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r1
	lcall	__mullong
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
;	bmm150.c:1882: process_comp_z4 = (int16_t)((process_comp_z3 + (32768)) / 65536);
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
;	bmm150.c:1883: retval = ((process_comp_z2 - process_comp_z1) / (dev->trim_data.dig_z2 + process_comp_z4));
	mov	a,_compensate_z_process_comp_z2_1_201
	clr	c
	subb	a,_compensate_z_process_comp_z1_1_201
	mov	r4,a
	mov	a,(_compensate_z_process_comp_z2_1_201 + 1)
	subb	a,(_compensate_z_process_comp_z1_1_201 + 1)
	mov	r5,a
	mov	a,(_compensate_z_process_comp_z2_1_201 + 2)
	subb	a,(_compensate_z_process_comp_z1_1_201 + 2)
	mov	r6,a
	mov	a,(_compensate_z_process_comp_z2_1_201 + 3)
	subb	a,(_compensate_z_process_comp_z1_1_201 + 3)
	mov	r7,a
	mov	a,r2
	add	a,_compensate_z_sloc2_1_0
	mov	r2,a
	mov	a,r3
	addc	a,(_compensate_z_sloc2_1_0 + 1)
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
;	bmm150.c:1886: if (retval > BMM150_POSITIVE_SATURATION_Z)
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
	jnc	L032004?
;	bmm150.c:1888: retval = BMM150_POSITIVE_SATURATION_Z;
	mov	r2,#0xFF
	mov	r3,#0x7F
	mov	r4,#0x00
	mov	r5,#0x00
	sjmp	L032005?
L032004?:
;	bmm150.c:1890: else if (retval < BMM150_NEGATIVE_SATURATION_Z)
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
	jnc	L032005?
;	bmm150.c:1892: retval = BMM150_NEGATIVE_SATURATION_Z;
	mov	r2,#0x01
	mov	r3,#0x80
	mov	r4,#0xFF
	mov	r5,#0xFF
L032005?:
;	bmm150.c:1896: retval = retval / 16;
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
	sjmp	L032014?
L032007?:
;	bmm150.c:1900: retval = BMM150_OVERFLOW_OUTPUT;
	mov	r2,#0x00
	mov	r3,#0x80
	mov	r4,#0xFF
	mov	r5,#0xFF
	sjmp	L032014?
L032013?:
;	bmm150.c:1906: retval = BMM150_OVERFLOW_OUTPUT;
	mov	r2,#0x00
	mov	r3,#0x80
	mov	r4,#0xFF
	mov	r5,#0xFF
L032014?:
;	bmm150.c:1909: return (int16_t)retval;
	mov	dpl,r2
	mov	dph,r3
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'perform_normal_self_test'
;------------------------------------------------------------
;dev                       Allocated to registers r2 r3 r4 
;rslt                      Allocated to registers r5 
;self_test_bit             Allocated with name '_perform_normal_self_test_self_test_bit_1_209'
;------------------------------------------------------------
;	bmm150.c:1918: __xdata static int8_t perform_normal_self_test(struct bmm150_dev *dev)
;	-----------------------------------------
;	 function perform_normal_self_test
;	-----------------------------------------
_perform_normal_self_test:
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
;	bmm150.c:1924: rslt = enable_normal_self_test(&self_test_bit, dev);
	mov	_enable_normal_self_test_PARM_2,r2
	mov	(_enable_normal_self_test_PARM_2 + 1),r3
	mov	(_enable_normal_self_test_PARM_2 + 2),r4
	mov	dptr,#_perform_normal_self_test_self_test_bit_1_209
	mov	b,#0x40
	push	ar2
	push	ar3
	push	ar4
	lcall	_enable_normal_self_test
	mov	r5,dpl
	pop	ar4
	pop	ar3
	pop	ar2
;	bmm150.c:1927: if ((rslt == BMM150_OK) && (self_test_bit == 0))
	mov	a,r5
	jnz	L033002?
	mov	a,_perform_normal_self_test_self_test_bit_1_209
	jnz	L033002?
;	bmm150.c:1930: rslt = validate_normal_self_test(dev);
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_validate_normal_self_test
	mov	r5,dpl
L033002?:
;	bmm150.c:1933: return rslt;
	mov	dpl,r5
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'enable_normal_self_test'
;------------------------------------------------------------
;dev                       Allocated with name '_enable_normal_self_test_PARM_2'
;self_test_enable          Allocated with name '_enable_normal_self_test_self_test_enable_1_211'
;rslt                      Allocated with name '_enable_normal_self_test_rslt_1_212'
;reg_data                  Allocated with name '_enable_normal_self_test_reg_data_1_212'
;self_test_val             Allocated to registers 
;------------------------------------------------------------
;	bmm150.c:1941: __xdata static int8_t enable_normal_self_test(uint8_t *self_test_enable, struct bmm150_dev *dev)
;	-----------------------------------------
;	 function enable_normal_self_test
;	-----------------------------------------
_enable_normal_self_test:
	mov	_enable_normal_self_test_self_test_enable_1_211,dpl
	mov	(_enable_normal_self_test_self_test_enable_1_211 + 1),dph
	mov	(_enable_normal_self_test_self_test_enable_1_211 + 2),b
;	bmm150.c:1948: rslt = bmm150_get_regs(BMM150_REG_OP_MODE, &reg_data, 1, dev);
	push	_enable_normal_self_test_PARM_2
	push	(_enable_normal_self_test_PARM_2 + 1)
	push	(_enable_normal_self_test_PARM_2 + 2)
	mov	a,#0x01
	push	acc
	clr	a
	push	acc
	push	acc
	push	acc
	mov	a,#_enable_normal_self_test_reg_data_1_212
	push	acc
	mov	a,#(_enable_normal_self_test_reg_data_1_212 >> 8)
	push	acc
	mov	a,#0x40
	push	acc
	mov	dpl,#0x4C
	lcall	_bmm150_get_regs
	mov	_enable_normal_self_test_rslt_1_212,dpl
	mov	a,sp
	add	a,#0xf6
	mov	sp,a
;	bmm150.c:1950: if (rslt == BMM150_OK)
	mov	a,_enable_normal_self_test_rslt_1_212
	jz	L034009?
	ljmp	L034004?
L034009?:
;	bmm150.c:1954: reg_data = BMM150_SET_BITS_POS_0(reg_data, BMM150_SELF_TEST, self_test_val);
	mov	a,#0xFE
	anl	a,_enable_normal_self_test_reg_data_1_212
	mov	r6,a
	orl	ar6,#0x01
	mov	_enable_normal_self_test_reg_data_1_212,r6
;	bmm150.c:1957: rslt = bmm150_set_regs(BMM150_REG_OP_MODE, &reg_data, 1, dev);
	mov	_bmm150_set_regs_PARM_2,#_enable_normal_self_test_reg_data_1_212
	mov	(_bmm150_set_regs_PARM_2 + 1),#0x00
	mov	(_bmm150_set_regs_PARM_2 + 2),#0x40
	mov	_bmm150_set_regs_PARM_3,#0x01
	clr	a
	mov	(_bmm150_set_regs_PARM_3 + 1),a
	mov	(_bmm150_set_regs_PARM_3 + 2),a
	mov	(_bmm150_set_regs_PARM_3 + 3),a
	mov	_bmm150_set_regs_PARM_4,_enable_normal_self_test_PARM_2
	mov	(_bmm150_set_regs_PARM_4 + 1),(_enable_normal_self_test_PARM_2 + 1)
	mov	(_bmm150_set_regs_PARM_4 + 2),(_enable_normal_self_test_PARM_2 + 2)
	mov	dpl,#0x4C
	lcall	_bmm150_set_regs
	mov	_enable_normal_self_test_rslt_1_212,dpl
;	bmm150.c:1958: dev->delay_us(BMM150_DELAY_NORMAL_SELF_TEST, dev->intf_ptr);
	mov	r6,_enable_normal_self_test_PARM_2
	mov	r7,(_enable_normal_self_test_PARM_2 + 1)
	mov	r0,(_enable_normal_self_test_PARM_2 + 2)
	mov	a,#0x0A
	add	a,r6
	mov	r1,a
	clr	a
	addc	a,r7
	mov	r2,a
	mov	ar3,r0
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	lcall	__gptrget
	mov	r1,a
	inc	dptr
	lcall	__gptrget
	mov	r2,a
	mov	a,#0x02
	add	a,r6
	mov	r3,a
	clr	a
	addc	a,r7
	mov	r4,a
	mov	ar5,r0
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	push	ar2
	push	ar6
	push	ar7
	push	ar0
	push	ar1
	push	ar3
	push	ar4
	push	ar5
	mov	a,#L034010?
	push	acc
	mov	a,#(L034010? >> 8)
	push	acc
	push	ar1
	push	ar2
	mov	dptr,#0x07D0
	clr	a
	mov	b,a
	ret
L034010?:
	dec	sp
	dec	sp
	dec	sp
	pop	ar1
	pop	ar0
	pop	ar7
	pop	ar6
	pop	ar2
;	bmm150.c:1960: if (rslt == BMM150_OK)
	mov	a,_enable_normal_self_test_rslt_1_212
	jnz	L034004?
;	bmm150.c:1963: rslt = bmm150_get_regs(BMM150_REG_OP_MODE, &reg_data, 1, dev);
	push	ar6
	push	ar7
	push	ar0
	mov	a,#0x01
	push	acc
	clr	a
	push	acc
	push	acc
	push	acc
	mov	a,#_enable_normal_self_test_reg_data_1_212
	push	acc
	mov	a,#(_enable_normal_self_test_reg_data_1_212 >> 8)
	push	acc
	mov	a,#0x40
	push	acc
	mov	dpl,#0x4C
	lcall	_bmm150_get_regs
	mov	_enable_normal_self_test_rslt_1_212,dpl
	mov	a,sp
	add	a,#0xf6
	mov	sp,a
;	bmm150.c:1968: *self_test_enable = BMM150_GET_BITS_POS_0(reg_data, BMM150_SELF_TEST);
	mov	r2,_enable_normal_self_test_reg_data_1_212
	anl	ar2,#0x01
	mov	r3,#0x00
	mov	dpl,_enable_normal_self_test_self_test_enable_1_211
	mov	dph,(_enable_normal_self_test_self_test_enable_1_211 + 1)
	mov	b,(_enable_normal_self_test_self_test_enable_1_211 + 2)
	mov	a,r2
	lcall	__gptrput
L034004?:
;	bmm150.c:1972: return rslt;
	mov	dpl,_enable_normal_self_test_rslt_1_212
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'validate_normal_self_test'
;------------------------------------------------------------
;dev                       Allocated to registers r2 r3 r4 
;rslt                      Allocated to registers r2 
;status                    Allocated to registers r3 
;self_test_rslt            Allocated with name '_validate_normal_self_test_self_test_rslt_1_216'
;------------------------------------------------------------
;	bmm150.c:1980: __xdata static int8_t validate_normal_self_test(struct bmm150_dev *dev)
;	-----------------------------------------
;	 function validate_normal_self_test
;	-----------------------------------------
_validate_normal_self_test:
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
;	bmm150.c:1987: rslt = bmm150_get_regs(BMM150_REG_DATA_X_LSB, self_test_rslt, BMM150_LEN_SELF_TEST, dev);
	push	ar2
	push	ar3
	push	ar4
	mov	a,#0x05
	push	acc
	clr	a
	push	acc
	push	acc
	push	acc
	mov	a,#_validate_normal_self_test_self_test_rslt_1_216
	push	acc
	mov	a,#(_validate_normal_self_test_self_test_rslt_1_216 >> 8)
	push	acc
	mov	a,#0x40
	push	acc
	mov	dpl,#0x42
	lcall	_bmm150_get_regs
	mov	r2,dpl
	mov	a,sp
	add	a,#0xf6
	mov	sp,a
;	bmm150.c:1989: if (rslt == BMM150_OK)
	mov	a,r2
;	bmm150.c:1993: self_test_rslt[0] = BMM150_GET_BITS_POS_0(self_test_rslt[0], BMM150_SELF_TEST);
	jnz	L035008?
	mov	r3,_validate_normal_self_test_self_test_rslt_1_216
	anl	ar3,#0x01
	mov	_validate_normal_self_test_self_test_rslt_1_216,r3
;	bmm150.c:1996: self_test_rslt[2] = BMM150_GET_BITS_POS_0(self_test_rslt[2], BMM150_SELF_TEST);
	mov	r4,(_validate_normal_self_test_self_test_rslt_1_216 + 0x0002)
	anl	ar4,#0x01
	mov	(_validate_normal_self_test_self_test_rslt_1_216 + 0x0002),r4
;	bmm150.c:1999: self_test_rslt[4] = BMM150_GET_BITS_POS_0(self_test_rslt[4], BMM150_SELF_TEST);
	mov	r5,(_validate_normal_self_test_self_test_rslt_1_216 + 0x0004)
	anl	ar5,#0x01
	mov	r6,#0x00
;	bmm150.c:2004: status = (uint8_t)((self_test_rslt[4] << 2) | (self_test_rslt[2] << 1) | self_test_rslt[0]);
	mov	a,r5
	mov	(_validate_normal_self_test_self_test_rslt_1_216 + 0x0004),a
	add	a,acc
	add	a,acc
	mov	r5,a
	mov	a,r4
	add	a,r4
	orl	a,r5
	orl	ar3,a
;	bmm150.c:2007: if (status == BMM150_SELF_TEST_STATUS_SUCCESS)
	mov	ar4,r3
	mov	r5,#0x00
	cjne	r4,#0x07,L035005?
	cjne	r5,#0x00,L035005?
;	bmm150.c:2010: rslt = BMM150_OK;
	mov	r2,#0x00
	sjmp	L035008?
L035005?:
;	bmm150.c:2014: if (status == BMM150_SELF_TEST_STATUS_XYZ_FAIL)
	mov	a,r3
	jnz	L035002?
;	bmm150.c:2017: rslt = BMM150_W_NORMAL_SELF_TEST_XYZ_FAIL;
	mov	r2,#0x07
	sjmp	L035008?
L035002?:
;	bmm150.c:2022: rslt = (int8_t)status;
	mov	ar2,r3
L035008?:
;	bmm150.c:2027: return rslt;
	mov	dpl,r2
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'adv_self_test_settings'
;------------------------------------------------------------
;dev                       Allocated to registers r2 r3 r4 
;rslt                      Allocated to registers r5 
;settings                  Allocated with name '_adv_self_test_settings_settings_1_223'
;------------------------------------------------------------
;	bmm150.c:2079: __xdata static int8_t adv_self_test_settings(struct bmm150_dev *dev)
;	-----------------------------------------
;	 function adv_self_test_settings
;	-----------------------------------------
_adv_self_test_settings:
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
;	bmm150.c:2085: settings.pwr_mode = BMM150_POWERMODE_SLEEP;
	mov	(_adv_self_test_settings_settings_1_223 + 0x0001),#0x03
;	bmm150.c:2086: rslt = bmm150_set_op_mode(&settings, dev);
	mov	_bmm150_set_op_mode_PARM_2,r2
	mov	(_bmm150_set_op_mode_PARM_2 + 1),r3
	mov	(_bmm150_set_op_mode_PARM_2 + 2),r4
	mov	dptr,#_adv_self_test_settings_settings_1_223
	mov	b,#0x40
	push	ar2
	push	ar3
	push	ar4
	lcall	_bmm150_set_op_mode
	mov	r5,dpl
	pop	ar4
	pop	ar3
	pop	ar2
;	bmm150.c:2088: if (rslt == BMM150_OK)
	mov	a,r5
	jnz	L036004?
;	bmm150.c:2091: settings.xyz_axes_control = BMM150_DISABLE_XY_AXIS;
	mov	_adv_self_test_settings_settings_1_223,#0x03
;	bmm150.c:2092: rslt = set_control_measurement_xyz(&settings, dev);
	mov	_set_control_measurement_xyz_PARM_2,r2
	mov	(_set_control_measurement_xyz_PARM_2 + 1),r3
	mov	(_set_control_measurement_xyz_PARM_2 + 2),r4
	mov	dptr,#_adv_self_test_settings_settings_1_223
	mov	b,#0x40
	push	ar2
	push	ar3
	push	ar4
	lcall	_set_control_measurement_xyz
	mov	r5,dpl
	pop	ar4
	pop	ar3
	pop	ar2
;	bmm150.c:2094: if (rslt == BMM150_OK)
	mov	a,r5
	jnz	L036004?
;	bmm150.c:2097: settings.z_rep = BMM150_SELF_TEST_REP_Z;
	mov	(_adv_self_test_settings_settings_1_223 + 0x0004),#0x04
;	bmm150.c:2098: rslt = set_z_rep(&settings, dev);
	mov	_set_z_rep_PARM_2,r2
	mov	(_set_z_rep_PARM_2 + 1),r3
	mov	(_set_z_rep_PARM_2 + 2),r4
	mov	dptr,#_adv_self_test_settings_settings_1_223
	mov	b,#0x40
	lcall	_set_z_rep
	mov	r5,dpl
L036004?:
;	bmm150.c:2102: return rslt;
	mov	dpl,r5
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'adv_self_test_measurement'
;------------------------------------------------------------
;data_z                    Allocated with name '_adv_self_test_measurement_PARM_2'
;dev                       Allocated with name '_adv_self_test_measurement_PARM_3'
;self_test_current         Allocated to registers 
;rslt                      Allocated with name '_adv_self_test_measurement_rslt_1_227'
;settings                  Allocated with name '_adv_self_test_measurement_settings_1_227'
;mag_data                  Allocated with name '_adv_self_test_measurement_mag_data_1_227'
;sloc0                     Allocated with name '_adv_self_test_measurement_sloc0_1_0'
;------------------------------------------------------------
;	bmm150.c:2109: __xdata static int8_t adv_self_test_measurement(uint8_t self_test_current, int16_t *data_z, struct bmm150_dev *dev)
;	-----------------------------------------
;	 function adv_self_test_measurement
;	-----------------------------------------
_adv_self_test_measurement:
;	bmm150.c:2118: rslt = set_adv_self_test_current(self_test_current, dev);
	mov	_set_adv_self_test_current_PARM_2,_adv_self_test_measurement_PARM_3
	mov	(_set_adv_self_test_current_PARM_2 + 1),(_adv_self_test_measurement_PARM_3 + 1)
	mov	(_set_adv_self_test_current_PARM_2 + 2),(_adv_self_test_measurement_PARM_3 + 2)
	lcall	_set_adv_self_test_current
;	bmm150.c:2120: if (rslt == BMM150_OK)
	mov	a,dpl
	mov	_adv_self_test_measurement_rslt_1_227,a
	jz	L037012?
	ljmp	L037006?
L037012?:
;	bmm150.c:2123: settings.pwr_mode = BMM150_POWERMODE_FORCED;
	mov	(_adv_self_test_measurement_settings_1_227 + 0x0001),#0x01
;	bmm150.c:2124: rslt = bmm150_set_op_mode(&settings, dev);
	mov	_bmm150_set_op_mode_PARM_2,_adv_self_test_measurement_PARM_3
	mov	(_bmm150_set_op_mode_PARM_2 + 1),(_adv_self_test_measurement_PARM_3 + 1)
	mov	(_bmm150_set_op_mode_PARM_2 + 2),(_adv_self_test_measurement_PARM_3 + 2)
	mov	dptr,#_adv_self_test_measurement_settings_1_227
	mov	b,#0x40
	lcall	_bmm150_set_op_mode
	mov	_adv_self_test_measurement_rslt_1_227,dpl
;	bmm150.c:2127: dev->delay_us(BMM150_DELAY_ADV_SELF_TEST, dev->intf_ptr);
	mov	r3,_adv_self_test_measurement_PARM_3
	mov	r4,(_adv_self_test_measurement_PARM_3 + 1)
	mov	r5,(_adv_self_test_measurement_PARM_3 + 2)
	mov	a,#0x0A
	add	a,r3
	mov	r6,a
	clr	a
	addc	a,r4
	mov	r7,a
	mov	ar2,r5
	mov	dpl,r6
	mov	dph,r7
	mov	b,r2
	lcall	__gptrget
	mov	_adv_self_test_measurement_sloc0_1_0,a
	inc	dptr
	lcall	__gptrget
	mov	(_adv_self_test_measurement_sloc0_1_0 + 1),a
	mov	a,#0x02
	add	a,r3
	mov	r2,a
	clr	a
	addc	a,r4
	mov	r6,a
	mov	ar7,r5
	mov	dpl,r2
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	push	ar3
	push	ar4
	push	ar5
	push	ar2
	push	ar6
	push	ar7
	mov	a,#L037013?
	push	acc
	mov	a,#(L037013? >> 8)
	push	acc
	push	_adv_self_test_measurement_sloc0_1_0
	push	(_adv_self_test_measurement_sloc0_1_0 + 1)
	mov	dptr,#0x0FA0
	clr	a
	mov	b,a
	ret
L037013?:
	dec	sp
	dec	sp
	dec	sp
	pop	ar5
	pop	ar4
	pop	ar3
;	bmm150.c:2129: if (rslt == BMM150_OK)
	mov	a,_adv_self_test_measurement_rslt_1_227
	jnz	L037006?
;	bmm150.c:2132: rslt = bmm150_read_mag_data(&mag_data, dev);
	mov	_bmm150_read_mag_data_PARM_2,r3
	mov	(_bmm150_read_mag_data_PARM_2 + 1),r4
	mov	(_bmm150_read_mag_data_PARM_2 + 2),r5
	mov	dptr,#_adv_self_test_measurement_mag_data_1_227
	mov	b,#0x40
	lcall	_bmm150_read_mag_data
;	bmm150.c:2134: if (rslt == BMM150_OK)
	mov	a,dpl
	mov	_adv_self_test_measurement_rslt_1_227,a
	jnz	L037006?
;	bmm150.c:2137: *data_z = mag_data.z;
	mov	r2,_adv_self_test_measurement_PARM_2
	mov	r3,(_adv_self_test_measurement_PARM_2 + 1)
	mov	r4,(_adv_self_test_measurement_PARM_2 + 2)
	mov	r5,(_adv_self_test_measurement_mag_data_1_227 + 0x0004)
	mov	r6,((_adv_self_test_measurement_mag_data_1_227 + 0x0004) + 1)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	__gptrput
	inc	dptr
	mov	a,r6
	lcall	__gptrput
L037006?:
;	bmm150.c:2142: return rslt;
	mov	dpl,_adv_self_test_measurement_rslt_1_227
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'set_adv_self_test_current'
;------------------------------------------------------------
;dev                       Allocated with name '_set_adv_self_test_current_PARM_2'
;self_test_current         Allocated to registers r2 
;rslt                      Allocated to registers r3 
;reg_data                  Allocated with name '_set_adv_self_test_current_reg_data_1_232'
;------------------------------------------------------------
;	bmm150.c:2180: __xdata static int8_t set_adv_self_test_current(uint8_t self_test_current, struct bmm150_dev *dev)
;	-----------------------------------------
;	 function set_adv_self_test_current
;	-----------------------------------------
_set_adv_self_test_current:
	mov	r2,dpl
;	bmm150.c:2186: rslt = bmm150_get_regs(BMM150_REG_OP_MODE, &reg_data, 1, dev);
	push	ar2
	push	_set_adv_self_test_current_PARM_2
	push	(_set_adv_self_test_current_PARM_2 + 1)
	push	(_set_adv_self_test_current_PARM_2 + 2)
	mov	a,#0x01
	push	acc
	clr	a
	push	acc
	push	acc
	push	acc
	mov	a,#_set_adv_self_test_current_reg_data_1_232
	push	acc
	mov	a,#(_set_adv_self_test_current_reg_data_1_232 >> 8)
	push	acc
	mov	a,#0x40
	push	acc
	mov	dpl,#0x4C
	lcall	_bmm150_get_regs
	mov	r3,dpl
	mov	a,sp
	add	a,#0xf6
	mov	sp,a
	pop	ar2
;	bmm150.c:2188: if (rslt == BMM150_OK)
	mov	a,r3
	jnz	L038002?
;	bmm150.c:2193: reg_data = BMM150_SET_BITS(reg_data, BMM150_ADV_SELF_TEST, self_test_current);
	mov	a,#0x3F
	anl	a,_set_adv_self_test_current_reg_data_1_232
	mov	r4,a
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
	anl	ar2,#0xC0
	clr	a
	mov	r5,a
	mov	r6,a
	mov	a,r4
	orl	ar2,a
	mov	a,r6
	orl	ar5,a
	mov	_set_adv_self_test_current_reg_data_1_232,r2
;	bmm150.c:2194: rslt = bmm150_set_regs(BMM150_REG_OP_MODE, &reg_data, 1, dev);
	mov	_bmm150_set_regs_PARM_2,#_set_adv_self_test_current_reg_data_1_232
	mov	(_bmm150_set_regs_PARM_2 + 1),#0x00
	mov	(_bmm150_set_regs_PARM_2 + 2),#0x40
	mov	_bmm150_set_regs_PARM_3,#0x01
	clr	a
	mov	(_bmm150_set_regs_PARM_3 + 1),a
	mov	(_bmm150_set_regs_PARM_3 + 2),a
	mov	(_bmm150_set_regs_PARM_3 + 3),a
	mov	_bmm150_set_regs_PARM_4,_set_adv_self_test_current_PARM_2
	mov	(_bmm150_set_regs_PARM_4 + 1),(_set_adv_self_test_current_PARM_2 + 1)
	mov	(_bmm150_set_regs_PARM_4 + 2),(_set_adv_self_test_current_PARM_2 + 2)
	mov	dpl,#0x4C
	lcall	_bmm150_set_regs
	mov	r3,dpl
L038002?:
;	bmm150.c:2197: return rslt;
	mov	dpl,r3
	ret
	rseg R_CSEG

	rseg R_XINIT

	rseg R_CONST

	CSEG

end
