;--------------------------------------------------------
; File Created by C51
; Version 1.0.0 #1170 (Feb 16 2022) (MSVC)
; This file was generated Sat Mar 22 15:47:02 2025
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
	public _bmm150_read_mag_data_PARM_2
	public _bmm150_set_presetmode_PARM_2
	public _bmm150_set_op_mode_PARM_2
	public _bmm150_set_regs_PARM_4
	public _bmm150_set_regs_PARM_3
	public _bmm150_set_regs_PARM_2
	public _bmm150_init
	public _bmm150_set_regs
	public _bmm150_get_regs
	public _bmm150_set_op_mode
	public _bmm150_set_presetmode
	public _bmm150_read_mag_data
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
_bmm150_init_dev_1_48:
	ds 3
_bmm150_set_regs_PARM_2:
	ds 3
_bmm150_set_regs_PARM_3:
	ds 4
_bmm150_set_regs_PARM_4:
	ds 3
_bmm150_set_regs_reg_addr_1_54:
	ds 1
_bmm150_set_regs_sloc0_1_0:
	ds 3
_bmm150_set_op_mode_PARM_2:
	ds 3
_bmm150_set_presetmode_PARM_2:
	ds 3
_bmm150_read_mag_data_PARM_2:
	ds 3
_set_power_control_bit_PARM_2:
	ds 3
_write_op_mode_PARM_2:
	ds 3
_set_xy_rep_PARM_2:
	ds 3
_set_odr_PARM_2:
	ds 3
_set_odr_xyz_rep_PARM_2:
	ds 3
_set_control_measurement_xyz_PARM_2:
	ds 3
_compensate_x_PARM_2:
	ds 2
_compensate_x_PARM_3:
	ds 3
_compensate_x_mag_data_x_1_110:
	ds 2
_compensate_x_sloc0_1_0:
	ds 3
_compensate_x_sloc1_1_0:
	ds 2
_compensate_x_sloc2_1_0:
	ds 4
_compensate_y_PARM_2:
	ds 2
_compensate_y_PARM_3:
	ds 3
_compensate_y_mag_data_y_1_119:
	ds 2
_compensate_y_sloc0_1_0:
	ds 2
_compensate_y_sloc1_1_0:
	ds 4
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	rseg	R_OSEG
	rseg	R_OSEG
_are_settings_changed_PARM_2:
	ds 2
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
_bmm150_init_chip_id_1_49:
	ds 1
_bmm150_set_regs_rslt_1_55:
	ds 1
_bmm150_set_op_mode_rslt_1_64:
	ds 1
_bmm150_read_mag_data_reg_data_1_73:
	ds 8
_bmm150_read_mag_data_raw_mag_data_1_73:
	ds 6
_null_ptr_check_rslt_1_76:
	ds 1
_set_power_control_bit_rslt_1_80:
	ds 1
_set_power_control_bit_reg_data_1_80:
	ds 1
_read_trim_registers_rslt_1_84:
	ds 1
_read_trim_registers_trim_x1y1_1_84:
	ds 2
_read_trim_registers_trim_xyz_data_1_84:
	ds 4
_read_trim_registers_trim_xy1xy2_1_84:
	ds 10
_write_op_mode_rslt_1_89:
	ds 1
_write_op_mode_reg_data_1_89:
	ds 1
_suspend_to_sleep_mode_rslt_1_92:
	ds 1
_set_xy_rep_rep_xy_1_96:
	ds 1
_set_odr_rslt_1_98:
	ds 1
_set_odr_reg_data_1_98:
	ds 1
_set_odr_xyz_rep_rslt_1_101:
	ds 1
_set_control_measurement_xyz_rslt_1_104:
	ds 1
_set_control_measurement_xyz_reg_data_1_104:
	ds 1
_are_settings_changed_settings_changed_1_107:
	ds 1
_compensate_x_retval_1_111:
	ds 2
_compensate_x_process_comp_x0_1_111:
	ds 2
_compensate_y_retval_1_120:
	ds 2
_compensate_y_process_comp_y0_1_120:
	ds 2
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
;dev                       Allocated with name '_bmm150_init_dev_1_48'
;rslt                      Allocated to registers r5 
;chip_id                   Allocated with name '_bmm150_init_chip_id_1_49'
;------------------------------------------------------------
;	bmm150.c:530: xdata int8_t bmm150_init(struct bmm150_dev *dev)
;	-----------------------------------------
;	 function bmm150_init
;	-----------------------------------------
_bmm150_init:
	using	0
	mov	_bmm150_init_dev_1_48,dpl
	mov	(_bmm150_init_dev_1_48 + 1),dph
	mov	(_bmm150_init_dev_1_48 + 2),b
;	bmm150.c:534: chip_id = 0; 
	mov	dptr,#_bmm150_init_chip_id_1_49
	clr	a
	movx	@dptr,a
;	bmm150.c:537: rslt = set_power_control_bit(BMM150_POWER_CNTRL_ENABLE, dev);
	mov	_set_power_control_bit_PARM_2,_bmm150_init_dev_1_48
	mov	(_set_power_control_bit_PARM_2 + 1),(_bmm150_init_dev_1_48 + 1)
	mov	(_set_power_control_bit_PARM_2 + 2),(_bmm150_init_dev_1_48 + 2)
	mov	dpl,#0x01
	lcall	_set_power_control_bit
	mov	r5,dpl
;	bmm150.c:538: printf("powering sensor\n");
	push	ar5
	mov	a,#__str_0
	push	acc
	mov	a,#(__str_0 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	pop	ar5
;	bmm150.c:540: if (rslt == BMM150_OK)
	mov	a,r5
	jz	L002013?
	ljmp	L002006?
L002013?:
;	bmm150.c:543: printf("startup time delay 3ms\n"); 
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
;	bmm150.c:544: dev->delay_us(BMM150_START_UP_TIME, dev->intf_ptr);
	mov	a,#0x0A
	add	a,_bmm150_init_dev_1_48
	mov	r6,a
	clr	a
	addc	a,(_bmm150_init_dev_1_48 + 1)
	mov	r7,a
	mov	r0,(_bmm150_init_dev_1_48 + 2)
	mov	dpl,r6
	mov	dph,r7
	mov	b,r0
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	a,#0x02
	add	a,_bmm150_init_dev_1_48
	mov	r0,a
	clr	a
	addc	a,(_bmm150_init_dev_1_48 + 1)
	mov	r1,a
	mov	r2,(_bmm150_init_dev_1_48 + 2)
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
	mov	a,#L002014?
	push	acc
	mov	a,#(L002014? >> 8)
	push	acc
	push	ar6
	push	ar7
	mov	dptr,#0x0BB8
	clr	a
	mov	b,a
	ret
L002014?:
	dec	sp
	dec	sp
	dec	sp
	pop	ar7
	pop	ar6
;	bmm150.c:547: printf("reading chip ID\n"); 
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
;	bmm150.c:548: rslt = bmm150_get_regs(BMM150_REG_CHIP_ID, &chip_id, 1, dev);
	push	_bmm150_init_dev_1_48
	push	(_bmm150_init_dev_1_48 + 1)
	push	(_bmm150_init_dev_1_48 + 2)
	mov	a,#0x01
	push	acc
	clr	a
	push	acc
	push	acc
	push	acc
	mov	a,#_bmm150_init_chip_id_1_49
	push	acc
	mov	a,#(_bmm150_init_chip_id_1_49 >> 8)
	push	acc
	clr	a
	push	acc
	mov	dpl,#0x40
	lcall	_bmm150_get_regs
	mov	r5,dpl
	mov	a,sp
	add	a,#0xf6
	mov	sp,a
;	bmm150.c:551: if (rslt == BMM150_OK)
	mov	a,r5
	jz	L002015?
	ljmp	L002007?
L002015?:
;	bmm150.c:554: if (chip_id == BMM150_CHIP_ID)
	mov	dptr,#_bmm150_init_chip_id_1_49
	movx	a,@dptr
	mov	r2,a
	mov	r3,a
	mov	r4,#0x00
	cjne	r3,#0x32,L002016?
	cjne	r4,#0x00,L002016?
	sjmp	L002017?
L002016?:
	ljmp	L002007?
L002017?:
;	bmm150.c:556: printf("Chip ID is: %d\n", chip_id); 
	mov	r3,#0x00
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
;	bmm150.c:557: dev->chip_id = chip_id;
	mov	dptr,#_bmm150_init_chip_id_1_49
	movx	a,@dptr
	mov	dpl,_bmm150_init_dev_1_48
	mov	dph,(_bmm150_init_dev_1_48 + 1)
	mov	b,(_bmm150_init_dev_1_48 + 2)
	lcall	__gptrput
;	bmm150.c:560: printf("Updating trim values\n"); 
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
;	bmm150.c:561: rslt = read_trim_registers(dev);
	mov	dpl,_bmm150_init_dev_1_48
	mov	dph,(_bmm150_init_dev_1_48 + 1)
	mov	b,(_bmm150_init_dev_1_48 + 2)
	lcall	_read_trim_registers
	mov	r5,dpl
;	bmm150.c:562: printf("Trim values done\n"); 
	push	ar5
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
	pop	ar5
	sjmp	L002007?
L002006?:
;	bmm150.c:567: printf("INIT NOT OK\n"); 
	push	ar5
	mov	a,#__str_6
	push	acc
	mov	a,#(__str_6 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	pop	ar5
L002007?:
;	bmm150.c:570: return rslt;
	mov	dpl,r5
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'bmm150_set_regs'
;------------------------------------------------------------
;reg_data                  Allocated with name '_bmm150_set_regs_PARM_2'
;len                       Allocated with name '_bmm150_set_regs_PARM_3'
;dev                       Allocated with name '_bmm150_set_regs_PARM_4'
;reg_addr                  Allocated with name '_bmm150_set_regs_reg_addr_1_54'
;sloc0                     Allocated with name '_bmm150_set_regs_sloc0_1_0'
;rslt                      Allocated with name '_bmm150_set_regs_rslt_1_55'
;------------------------------------------------------------
;	bmm150.c:577: xdata int8_t bmm150_set_regs(uint8_t reg_addr, const uint8_t *reg_data, uint32_t len, struct bmm150_dev *dev)
;	-----------------------------------------
;	 function bmm150_set_regs
;	-----------------------------------------
_bmm150_set_regs:
	mov	_bmm150_set_regs_reg_addr_1_54,dpl
;	bmm150.c:582: rslt = null_ptr_check(dev);
	mov	dpl,_bmm150_set_regs_PARM_4
	mov	dph,(_bmm150_set_regs_PARM_4 + 1)
	mov	b,(_bmm150_set_regs_PARM_4 + 2)
	lcall	_null_ptr_check
	mov	r3,dpl
	mov	dptr,#_bmm150_set_regs_rslt_1_55
	mov	a,r3
	movx	@dptr,a
;	bmm150.c:585: if ((rslt == BMM150_OK) && (reg_data != NULL) && (len != 0))
	mov	a,r3
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
;	bmm150.c:592: dev->intf_rslt = dev->write(reg_addr, reg_data, len, dev->intf_ptr);
	mov	r6,_bmm150_set_regs_PARM_4
	mov	r7,(_bmm150_set_regs_PARM_4 + 1)
	mov	r0,(_bmm150_set_regs_PARM_4 + 2)
	mov	a,#0x05
	add	a,r6
	mov	_bmm150_set_regs_sloc0_1_0,a
	clr	a
	addc	a,r7
	mov	(_bmm150_set_regs_sloc0_1_0 + 1),a
	mov	(_bmm150_set_regs_sloc0_1_0 + 2),r0
	mov	a,#0x08
	add	a,r6
	mov	r4,a
	clr	a
	addc	a,r7
	mov	r5,a
	mov	ar2,r0
	mov	dpl,r4
	mov	dph,r5
	mov	b,r2
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	mov	a,#0x02
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
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	inc	dptr
	lcall	__gptrget
	mov	r0,a
	push	ar5
	push	ar6
	push	ar7
	push	ar0
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
	push	ar4
	push	ar5
	mov	dpl,_bmm150_set_regs_reg_addr_1_54
	ret
L003014?:
	mov	r4,dpl
	mov	a,sp
	add	a,#0xf6
	mov	sp,a
	pop	ar5
	mov	dpl,_bmm150_set_regs_sloc0_1_0
	mov	dph,(_bmm150_set_regs_sloc0_1_0 + 1)
	mov	b,(_bmm150_set_regs_sloc0_1_0 + 2)
	mov	a,r4
	lcall	__gptrput
	sjmp	L003003?
L003002?:
;	bmm150.c:596: rslt = BMM150_E_NULL_PTR;
	mov	dptr,#_bmm150_set_regs_rslt_1_55
	mov	a,#0xFF
	movx	@dptr,a
L003003?:
;	bmm150.c:599: return rslt;
	mov	dptr,#_bmm150_set_regs_rslt_1_55
	movx	a,@dptr
	mov	dpl,a
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
;	bmm150.c:605: xdata int8_t bmm150_get_regs(uint8_t reg_addr, uint8_t *reg_data, uint32_t len, struct bmm150_dev *dev) reentrant
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
;	bmm150.c:610: rslt = null_ptr_check(dev);
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
;	bmm150.c:613: if ((rslt == BMM150_OK) && (reg_data != NULL))
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
;	bmm150.c:615: if (dev->intf == BMM150_SPI_INTF)
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
	jnz	L004002?
;	bmm150.c:618: reg_addr = reg_addr | 0x80;
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	orl	a,#0x80
	mov	@r0,a
L004002?:
;	bmm150.c:622: dev->intf_rslt = dev->read(reg_addr, reg_data, len, dev->intf_ptr);
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
;	bmm150.c:626: rslt = BMM150_E_NULL_PTR;
	mov	r0,_bp
	inc	r0
	inc	r0
	mov	@r0,#0xFF
L004005?:
;	bmm150.c:629: return rslt;
	mov	r0,_bp
	inc	r0
	inc	r0
	mov	dpl,@r0
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'bmm150_set_op_mode'
;------------------------------------------------------------
;dev                       Allocated with name '_bmm150_set_op_mode_PARM_2'
;settings                  Allocated to registers r2 r3 r4 
;rslt                      Allocated with name '_bmm150_set_op_mode_rslt_1_64'
;pwr_mode                  Allocated with name '_bmm150_set_op_mode_pwr_mode_1_64'
;------------------------------------------------------------
;	bmm150.c:656: xdata int8_t bmm150_set_op_mode(const struct bmm150_settings *settings, struct bmm150_dev *dev)
;	-----------------------------------------
;	 function bmm150_set_op_mode
;	-----------------------------------------
_bmm150_set_op_mode:
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
;	bmm150.c:662: rslt = null_ptr_check(dev);
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
	mov	dptr,#_bmm150_set_op_mode_rslt_1_64
	mov	a,r5
	movx	@dptr,a
;	bmm150.c:665: if (rslt == BMM150_OK)
	mov	a,r5
	jnz	L005006?
;	bmm150.c:667: pwr_mode = settings->pwr_mode;
	inc	r2
	cjne	r2,#0x00,L005013?
	inc	r3
L005013?:
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
;	bmm150.c:670: if (pwr_mode == BMM150_POWERMODE_NORMAL){
	mov	r2,a
	jnz	L005006?
;	bmm150.c:671: rslt = suspend_to_sleep_mode(dev);
	mov	dpl,_bmm150_set_op_mode_PARM_2
	mov	dph,(_bmm150_set_op_mode_PARM_2 + 1)
	mov	b,(_bmm150_set_op_mode_PARM_2 + 2)
	push	ar2
	lcall	_suspend_to_sleep_mode
	mov	r3,dpl
	pop	ar2
	mov	dptr,#_bmm150_set_op_mode_rslt_1_64
	mov	a,r3
	movx	@dptr,a
;	bmm150.c:672: if (rslt == BMM150_OK)
	mov	a,r3
	jnz	L005006?
;	bmm150.c:675: rslt = write_op_mode(pwr_mode, dev);
	mov	_write_op_mode_PARM_2,_bmm150_set_op_mode_PARM_2
	mov	(_write_op_mode_PARM_2 + 1),(_bmm150_set_op_mode_PARM_2 + 1)
	mov	(_write_op_mode_PARM_2 + 2),(_bmm150_set_op_mode_PARM_2 + 2)
	mov	dpl,r2
	lcall	_write_op_mode
	mov	a,dpl
	mov	dptr,#_bmm150_set_op_mode_rslt_1_64
	movx	@dptr,a
L005006?:
;	bmm150.c:730: return rslt;
	mov	dptr,#_bmm150_set_op_mode_rslt_1_64
	movx	a,@dptr
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'bmm150_set_presetmode'
;------------------------------------------------------------
;dev                       Allocated with name '_bmm150_set_presetmode_PARM_2'
;settings                  Allocated to registers r2 r3 r4 
;rslt                      Allocated to registers r5 
;preset_mode               Allocated to registers r6 
;------------------------------------------------------------
;	bmm150.c:766: xdata int8_t bmm150_set_presetmode(struct bmm150_settings *settings, struct bmm150_dev *dev)
;	-----------------------------------------
;	 function bmm150_set_presetmode
;	-----------------------------------------
_bmm150_set_presetmode:
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
;	bmm150.c:772: rslt = null_ptr_check(dev);
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
;	bmm150.c:775: if (rslt == BMM150_OK)
	mov	a,r5
	jnz	L006004?
;	bmm150.c:777: preset_mode = settings->preset_mode;
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
	lcall	__gptrget
	mov	r6,a
;	bmm150.c:779: if (preset_mode == BMM150_PRESETMODE_LOWPOWER)
	mov	r7,#0x00
	cjne	r6,#0x01,L006004?
	cjne	r7,#0x00,L006004?
;	bmm150.c:784: settings->data_rate = BMM150_DATA_RATE_10HZ;
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
;	bmm150.c:785: settings->xy_rep = BMM150_REPXY_LOWPOWER;
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
;	bmm150.c:787: rslt = set_odr_xyz_rep(settings, dev);
	mov	_set_odr_xyz_rep_PARM_2,_bmm150_set_presetmode_PARM_2
	mov	(_set_odr_xyz_rep_PARM_2 + 1),(_bmm150_set_presetmode_PARM_2 + 1)
	mov	(_set_odr_xyz_rep_PARM_2 + 2),(_bmm150_set_presetmode_PARM_2 + 2)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_set_odr_xyz_rep
	mov	r5,dpl
L006004?:
;	bmm150.c:792: return rslt;
	mov	dpl,r5
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'bmm150_read_mag_data'
;------------------------------------------------------------
;dev                       Allocated with name '_bmm150_read_mag_data_PARM_2'
;mag_data                  Allocated to registers r2 r3 r4 
;rslt                      Allocated with name '_bmm150_read_mag_data_rslt_1_73'
;msb_data                  Allocated with name '_bmm150_read_mag_data_msb_data_1_73'
;reg_data                  Allocated with name '_bmm150_read_mag_data_reg_data_1_73'
;raw_mag_data              Allocated with name '_bmm150_read_mag_data_raw_mag_data_1_73'
;------------------------------------------------------------
;	bmm150.c:864: xdata int8_t bmm150_read_mag_data(struct bmm150_mag_data *mag_data, struct bmm150_dev *dev)
;	-----------------------------------------
;	 function bmm150_read_mag_data
;	-----------------------------------------
_bmm150_read_mag_data:
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
;	bmm150.c:868: xdata uint8_t reg_data[BMM150_LEN_XYZR_DATA] = { 0 };
	mov	dptr,#_bmm150_read_mag_data_reg_data_1_73
	clr	a
	movx	@dptr,a
	mov	dptr,#(_bmm150_read_mag_data_reg_data_1_73 + 0x0001)
	movx	@dptr,a
	mov	dptr,#(_bmm150_read_mag_data_reg_data_1_73 + 0x0002)
	movx	@dptr,a
	mov	dptr,#(_bmm150_read_mag_data_reg_data_1_73 + 0x0003)
	movx	@dptr,a
	mov	dptr,#(_bmm150_read_mag_data_reg_data_1_73 + 0x0004)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_bmm150_read_mag_data_reg_data_1_73 + 0x0005)
	movx	@dptr,a
	mov	dptr,#(_bmm150_read_mag_data_reg_data_1_73 + 0x0006)
	movx	@dptr,a
	mov	dptr,#(_bmm150_read_mag_data_reg_data_1_73 + 0x0007)
	movx	@dptr,a
;	bmm150.c:872: rslt = bmm150_get_regs(BMM150_REG_DATA_X_LSB, reg_data, BMM150_LEN_XYZR_DATA, dev);
	push	ar2
	push	ar3
	push	ar4
	push	_bmm150_read_mag_data_PARM_2
	push	(_bmm150_read_mag_data_PARM_2 + 1)
	push	(_bmm150_read_mag_data_PARM_2 + 2)
	mov	a,#0x08
	push	acc
	clr	a
	push	acc
	push	acc
	push	acc
	mov	a,#_bmm150_read_mag_data_reg_data_1_73
	push	acc
	mov	a,#(_bmm150_read_mag_data_reg_data_1_73 >> 8)
	push	acc
	clr	a
	push	acc
	mov	dpl,#0x42
	lcall	_bmm150_get_regs
	mov	r5,dpl
	mov	a,sp
	add	a,#0xf6
	mov	sp,a
	pop	ar4
	pop	ar3
	pop	ar2
;	bmm150.c:874: if (rslt == BMM150_OK)
	mov	a,r5
	jz	L007006?
	ljmp	L007002?
L007006?:
;	bmm150.c:877: reg_data[0] = BMM150_GET_BITS(reg_data[0], BMM150_DATA_X);
	mov	dptr,#_bmm150_read_mag_data_reg_data_1_73
	movx	a,@dptr
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
	mov	dptr,#_bmm150_read_mag_data_reg_data_1_73
	mov	a,r6
	movx	@dptr,a
;	bmm150.c:881: msb_data = ((int16_t)((int8_t)reg_data[1])) * 32;
	mov	dptr,#(_bmm150_read_mag_data_reg_data_1_73 + 0x0001)
	movx	a,@dptr
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
	mov	r0,a
;	bmm150.c:884: raw_mag_data.raw_datax = (int16_t)(msb_data | reg_data[0]);
	mov	r1,#0x00
	mov	a,r6
	orl	ar7,a
	mov	a,r1
	orl	ar0,a
	mov	dptr,#_bmm150_read_mag_data_raw_mag_data_1_73
	mov	a,r7
	movx	@dptr,a
	inc	dptr
	mov	a,r0
	movx	@dptr,a
;	bmm150.c:887: reg_data[2] = BMM150_GET_BITS(reg_data[2], BMM150_DATA_Y);
	mov	dptr,#(_bmm150_read_mag_data_reg_data_1_73 + 0x0002)
	movx	a,@dptr
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
	mov	dptr,#(_bmm150_read_mag_data_reg_data_1_73 + 0x0002)
	mov	a,r6
	movx	@dptr,a
;	bmm150.c:891: msb_data = ((int16_t)((int8_t)reg_data[3])) * 32;
	mov	dptr,#(_bmm150_read_mag_data_reg_data_1_73 + 0x0003)
	movx	a,@dptr
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
	mov	r0,a
;	bmm150.c:894: raw_mag_data.raw_datay = (int16_t)(msb_data | reg_data[2]);
	mov	r1,#0x00
	mov	a,r6
	orl	ar7,a
	mov	a,r1
	orl	ar0,a
	mov	dptr,#(_bmm150_read_mag_data_raw_mag_data_1_73 + 0x0002)
	mov	a,r7
	movx	@dptr,a
	inc	dptr
	mov	a,r0
	movx	@dptr,a
;	bmm150.c:897: reg_data[4] = BMM150_GET_BITS(reg_data[4], BMM150_DATA_Z);
	mov	dptr,#(_bmm150_read_mag_data_reg_data_1_73 + 0x0004)
	movx	a,@dptr
	mov	r6,a
	anl	ar6,#0xFE
	clr	a
	clr	c
	rrc	a
	xch	a,r6
	rrc	a
	xch	a,r6
	mov	dptr,#(_bmm150_read_mag_data_reg_data_1_73 + 0x0004)
	mov	a,r6
	movx	@dptr,a
;	bmm150.c:907: reg_data[6] = BMM150_GET_BITS(reg_data[6], BMM150_DATA_RHALL);
	mov	dptr,#(_bmm150_read_mag_data_reg_data_1_73 + 0x0006)
	movx	a,@dptr
	mov	r6,a
	anl	ar6,#0xFC
	clr	a
	clr	c
	rrc	a
	xch	a,r6
	rrc	a
	xch	a,r6
	clr	c
	rrc	a
	xch	a,r6
	rrc	a
	xch	a,r6
	mov	dptr,#(_bmm150_read_mag_data_reg_data_1_73 + 0x0006)
	mov	a,r6
	movx	@dptr,a
;	bmm150.c:908: raw_mag_data.raw_data_r = (uint16_t)(((uint16_t)reg_data[7] << 6) | reg_data[6]);
	mov	dptr,#(_bmm150_read_mag_data_reg_data_1_73 + 0x0007)
	movx	a,@dptr
	mov	r7,a
	clr	a
	anl	a,#0x03
	mov	c,acc.0
	xch	a,r7
	rrc	a
	xch	a,r7
	rrc	a
	mov	c,acc.0
	xch	a,r7
	rrc	a
	xch	a,r7
	rrc	a
	xch	a,r7
	mov	r0,a
	mov	r1,#0x00
	mov	a,r6
	orl	ar7,a
	mov	a,r1
	orl	ar0,a
	mov	dptr,#(_bmm150_read_mag_data_raw_mag_data_1_73 + 0x0004)
	mov	a,r7
	movx	@dptr,a
	inc	dptr
	mov	a,r0
	movx	@dptr,a
;	bmm150.c:911: mag_data->x = compensate_x(raw_mag_data.raw_datax, raw_mag_data.raw_data_r, dev);
	mov	dptr,#_bmm150_read_mag_data_raw_mag_data_1_73
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	mov	_compensate_x_PARM_2,r7
	mov	(_compensate_x_PARM_2 + 1),r0
	mov	_compensate_x_PARM_3,_bmm150_read_mag_data_PARM_2
	mov	(_compensate_x_PARM_3 + 1),(_bmm150_read_mag_data_PARM_2 + 1)
	mov	(_compensate_x_PARM_3 + 2),(_bmm150_read_mag_data_PARM_2 + 2)
	mov	dpl,r6
	mov	dph,r1
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	lcall	_compensate_x
	mov	r6,dpl
	mov	r7,dph
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
;	bmm150.c:914: mag_data->y = compensate_y(raw_mag_data.raw_datay, raw_mag_data.raw_data_r, dev);
	mov	a,#0x02
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	dptr,#(_bmm150_read_mag_data_raw_mag_data_1_73 + 0x0002)
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#(_bmm150_read_mag_data_raw_mag_data_1_73 + 0x0004)
	movx	a,@dptr
	mov	_compensate_y_PARM_2,a
	inc	dptr
	movx	a,@dptr
	mov	(_compensate_y_PARM_2 + 1),a
	mov	_compensate_y_PARM_3,_bmm150_read_mag_data_PARM_2
	mov	(_compensate_y_PARM_3 + 1),(_bmm150_read_mag_data_PARM_2 + 1)
	mov	(_compensate_y_PARM_3 + 2),(_bmm150_read_mag_data_PARM_2 + 2)
	mov	dpl,r6
	mov	dph,r7
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	lcall	_compensate_y
	mov	r6,dpl
	mov	r7,dph
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
L007002?:
;	bmm150.c:920: return rslt;
	mov	dpl,r5
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'null_ptr_check'
;------------------------------------------------------------
;rslt                      Allocated with name '_null_ptr_check_rslt_1_76'
;dev                       Allocated to registers r2 r3 r4 
;------------------------------------------------------------
;	bmm150.c:1089: xdata static int8_t null_ptr_check(const struct bmm150_dev *dev)
;	-----------------------------------------
;	 function null_ptr_check
;	-----------------------------------------
_null_ptr_check:
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
;	bmm150.c:1093: if ((dev == NULL) || (dev->read == NULL) || (dev->write == NULL) || (dev->delay_us == NULL) ||
	cjne	r2,#0x00,L008014?
	cjne	r3,#0x00,L008014?
	cjne	r4,#0x00,L008014?
	ljmp	L008001?
L008014?:
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
	cjne	r5,#0x00,L008015?
	cjne	r6,#0x00,L008015?
	cjne	r7,#0x00,L008015?
	sjmp	L008001?
L008015?:
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
	cjne	r5,#0x00,L008016?
	cjne	r6,#0x00,L008016?
	cjne	r7,#0x00,L008016?
	sjmp	L008001?
L008016?:
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
	cjne	r5,#0x00,L008017?
	cjne	r6,#0x00,L008017?
	cjne	r7,#0x00,L008017?
	sjmp	L008001?
L008017?:
;	bmm150.c:1094: (dev->intf_ptr == NULL))
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
	cjne	r2,#0x00,L008002?
	cjne	r3,#0x00,L008002?
	cjne	r4,#0x00,L008002?
L008001?:
;	bmm150.c:1097: rslt = BMM150_E_NULL_PTR;
	mov	dptr,#_null_ptr_check_rslt_1_76
	mov	a,#0xFF
	movx	@dptr,a
	sjmp	L008003?
L008002?:
;	bmm150.c:1102: rslt = BMM150_OK;
	mov	dptr,#_null_ptr_check_rslt_1_76
	clr	a
	movx	@dptr,a
L008003?:
;	bmm150.c:1105: return rslt;
	mov	dptr,#_null_ptr_check_rslt_1_76
	movx	a,@dptr
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'set_power_control_bit'
;------------------------------------------------------------
;dev                       Allocated with name '_set_power_control_bit_PARM_2'
;pwrcntrl_bit              Allocated to registers r2 
;rslt                      Allocated with name '_set_power_control_bit_rslt_1_80'
;reg_data                  Allocated with name '_set_power_control_bit_reg_data_1_80'
;------------------------------------------------------------
;	bmm150.c:1111: xdata static int8_t set_power_control_bit(uint8_t pwrcntrl_bit, struct bmm150_dev *dev)
;	-----------------------------------------
;	 function set_power_control_bit
;	-----------------------------------------
_set_power_control_bit:
	mov	r2,dpl
;	bmm150.c:1114: xdata uint8_t reg_data = 0;
	mov	dptr,#_set_power_control_bit_reg_data_1_80
	clr	a
	movx	@dptr,a
;	bmm150.c:1117: rslt = bmm150_get_regs(BMM150_REG_POWER_CONTROL, &reg_data, 1, dev);
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
	mov	a,#_set_power_control_bit_reg_data_1_80
	push	acc
	mov	a,#(_set_power_control_bit_reg_data_1_80 >> 8)
	push	acc
	clr	a
	push	acc
	mov	dpl,#0x4B
	lcall	_bmm150_get_regs
	mov	r3,dpl
	mov	a,sp
	add	a,#0xf6
	mov	sp,a
	mov	dptr,#_set_power_control_bit_rslt_1_80
	mov	a,r3
	movx	@dptr,a
;	bmm150.c:1118: printf("Power control register is read\n");
	push	ar3
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
	pop	ar3
	pop	ar2
;	bmm150.c:1121: if (rslt == BMM150_OK)
	mov	a,r3
	jnz	L009004?
;	bmm150.c:1124: reg_data = BMM150_SET_BITS_POS_0(reg_data, BMM150_PWR_CNTRL, pwrcntrl_bit);
	mov	dptr,#_set_power_control_bit_reg_data_1_80
	movx	a,@dptr
	mov	r3,a
	anl	ar3,#0xFE
	mov	ar4,r2
	anl	ar4,#0x01
	clr	a
	mov	r5,a
	mov	r6,a
	mov	a,r3
	orl	ar4,a
	mov	a,r6
	orl	ar5,a
	mov	dptr,#_set_power_control_bit_reg_data_1_80
	mov	a,r4
	movx	@dptr,a
;	bmm150.c:1125: rslt = bmm150_set_regs(BMM150_REG_POWER_CONTROL, &reg_data, 1, dev);
	mov	_bmm150_set_regs_PARM_2,#_set_power_control_bit_reg_data_1_80
	mov	(_bmm150_set_regs_PARM_2 + 1),#(_set_power_control_bit_reg_data_1_80 >> 8)
	mov	(_bmm150_set_regs_PARM_2 + 2),#0x00
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
	mov	dptr,#_set_power_control_bit_rslt_1_80
	mov	a,r3
	movx	@dptr,a
;	bmm150.c:1127: if (rslt == BMM150_OK)
	mov	a,r3
	jnz	L009004?
;	bmm150.c:1132: dev->pwr_cntrl_bit = pwrcntrl_bit;
	mov	a,#0x14
	add	a,_set_power_control_bit_PARM_2
	mov	r3,a
	clr	a
	addc	a,(_set_power_control_bit_PARM_2 + 1)
	mov	r4,a
	mov	r5,(_set_power_control_bit_PARM_2 + 2)
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	mov	a,r2
	lcall	__gptrput
L009004?:
;	bmm150.c:1136: printf("set_power_control_bit DONE\n"); 
	mov	a,#__str_8
	push	acc
	mov	a,#(__str_8 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	bmm150.c:1137: return rslt;
	mov	dptr,#_set_power_control_bit_rslt_1_80
	movx	a,@dptr
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'read_trim_registers'
;------------------------------------------------------------
;dev                       Allocated to registers r2 r3 r4 
;rslt                      Allocated with name '_read_trim_registers_rslt_1_84'
;trim_x1y1                 Allocated with name '_read_trim_registers_trim_x1y1_1_84'
;trim_xyz_data             Allocated with name '_read_trim_registers_trim_xyz_data_1_84'
;trim_xy1xy2               Allocated with name '_read_trim_registers_trim_xy1xy2_1_84'
;temp_msb                  Allocated with name '_read_trim_registers_temp_msb_1_84'
;------------------------------------------------------------
;	bmm150.c:1144: xdata static int8_t read_trim_registers(struct bmm150_dev *dev)
;	-----------------------------------------
;	 function read_trim_registers
;	-----------------------------------------
_read_trim_registers:
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
;	bmm150.c:1147: xdata uint8_t trim_x1y1[2] = { 0 };
	mov	dptr,#_read_trim_registers_trim_x1y1_1_84
;	bmm150.c:1148: xdata uint8_t trim_xyz_data[4] = { 0 };
	clr	a
	movx	@dptr,a
	mov	dptr,#(_read_trim_registers_trim_x1y1_1_84 + 0x0001)
	movx	@dptr,a
	mov	dptr,#_read_trim_registers_trim_xyz_data_1_84
	movx	@dptr,a
	mov	dptr,#(_read_trim_registers_trim_xyz_data_1_84 + 0x0001)
	movx	@dptr,a
	mov	dptr,#(_read_trim_registers_trim_xyz_data_1_84 + 0x0002)
;	bmm150.c:1149: xdata uint8_t trim_xy1xy2[10] = { 0 };
	clr	a
	movx	@dptr,a
	mov	dptr,#(_read_trim_registers_trim_xyz_data_1_84 + 0x0003)
	movx	@dptr,a
	mov	dptr,#_read_trim_registers_trim_xy1xy2_1_84
	movx	@dptr,a
	mov	dptr,#(_read_trim_registers_trim_xy1xy2_1_84 + 0x0001)
	movx	@dptr,a
	mov	dptr,#(_read_trim_registers_trim_xy1xy2_1_84 + 0x0002)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_read_trim_registers_trim_xy1xy2_1_84 + 0x0003)
	movx	@dptr,a
	mov	dptr,#(_read_trim_registers_trim_xy1xy2_1_84 + 0x0004)
	movx	@dptr,a
	mov	dptr,#(_read_trim_registers_trim_xy1xy2_1_84 + 0x0005)
	movx	@dptr,a
	mov	dptr,#(_read_trim_registers_trim_xy1xy2_1_84 + 0x0006)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_read_trim_registers_trim_xy1xy2_1_84 + 0x0007)
	movx	@dptr,a
	mov	dptr,#(_read_trim_registers_trim_xy1xy2_1_84 + 0x0008)
	movx	@dptr,a
	mov	dptr,#(_read_trim_registers_trim_xy1xy2_1_84 + 0x0009)
	movx	@dptr,a
;	bmm150.c:1153: rslt = bmm150_get_regs(BMM150_DIG_X1, trim_x1y1, 2, dev);
	push	ar2
	push	ar3
	push	ar4
	push	ar2
	push	ar3
	push	ar4
	mov	a,#0x02
	push	acc
	clr	a
	push	acc
	push	acc
	push	acc
	mov	a,#_read_trim_registers_trim_x1y1_1_84
	push	acc
	mov	a,#(_read_trim_registers_trim_x1y1_1_84 >> 8)
	push	acc
	clr	a
	push	acc
	mov	dpl,#0x5D
	lcall	_bmm150_get_regs
	mov	r5,dpl
	mov	a,sp
	add	a,#0xf6
	mov	sp,a
	pop	ar4
	pop	ar3
	pop	ar2
	mov	dptr,#_read_trim_registers_rslt_1_84
	mov	a,r5
	movx	@dptr,a
;	bmm150.c:1155: if (rslt == BMM150_OK)
	mov	a,r5
	jz	L010012?
	ljmp	L010006?
L010012?:
;	bmm150.c:1157: rslt = bmm150_get_regs(BMM150_DIG_Z4_LSB, trim_xyz_data, 4, dev);
	push	ar2
	push	ar3
	push	ar4
	push	ar2
	push	ar3
	push	ar4
	mov	a,#0x04
	push	acc
	clr	a
	push	acc
	push	acc
	push	acc
	mov	a,#_read_trim_registers_trim_xyz_data_1_84
	push	acc
	mov	a,#(_read_trim_registers_trim_xyz_data_1_84 >> 8)
	push	acc
	clr	a
	push	acc
	mov	dpl,#0x62
	lcall	_bmm150_get_regs
	mov	r5,dpl
	mov	a,sp
	add	a,#0xf6
	mov	sp,a
	pop	ar4
	pop	ar3
	pop	ar2
	mov	dptr,#_read_trim_registers_rslt_1_84
	mov	a,r5
	movx	@dptr,a
;	bmm150.c:1159: if (rslt == BMM150_OK)
	mov	a,r5
	jz	L010013?
	ljmp	L010006?
L010013?:
;	bmm150.c:1161: rslt = bmm150_get_regs(BMM150_DIG_Z2_LSB, trim_xy1xy2, 10, dev);
	push	ar2
	push	ar3
	push	ar4
	push	ar2
	push	ar3
	push	ar4
	mov	a,#0x0A
	push	acc
	clr	a
	push	acc
	push	acc
	push	acc
	mov	a,#_read_trim_registers_trim_xy1xy2_1_84
	push	acc
	mov	a,#(_read_trim_registers_trim_xy1xy2_1_84 >> 8)
	push	acc
	clr	a
	push	acc
	mov	dpl,#0x68
	lcall	_bmm150_get_regs
	mov	r5,dpl
	mov	a,sp
	add	a,#0xf6
	mov	sp,a
	pop	ar4
	pop	ar3
	pop	ar2
	mov	dptr,#_read_trim_registers_rslt_1_84
	mov	a,r5
	movx	@dptr,a
;	bmm150.c:1163: if (rslt == BMM150_OK)
	mov	a,r5
	jz	L010014?
	ljmp	L010006?
L010014?:
;	bmm150.c:1168: dev->trim_data.dig_x1 = (int8_t)trim_x1y1[0];
	mov	a,#0x0C
	add	a,r2
	mov	r5,a
	clr	a
	addc	a,r3
	mov	r6,a
	mov	ar7,r4
	mov	dptr,#_read_trim_registers_trim_x1y1_1_84
	movx	a,@dptr
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrput
;	bmm150.c:1169: dev->trim_data.dig_y1 = (int8_t)trim_x1y1[1];
	mov	a,#0x0C
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	a,#0x01
	add	a,r2
	mov	r5,a
	clr	a
	addc	a,r3
	mov	r6,a
	mov	ar7,r4
	mov	dptr,#(_read_trim_registers_trim_x1y1_1_84 + 0x0001)
	movx	a,@dptr
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrput
;	bmm150.c:1170: dev->trim_data.dig_x2 = (int8_t)trim_xyz_data[2];
	mov	a,#0x02
	add	a,r2
	mov	r5,a
	clr	a
	addc	a,r3
	mov	r6,a
	mov	ar7,r4
	mov	dptr,#(_read_trim_registers_trim_xyz_data_1_84 + 0x0002)
	movx	a,@dptr
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrput
;	bmm150.c:1171: dev->trim_data.dig_y2 = (int8_t)trim_xyz_data[3];
	mov	a,#0x03
	add	a,r2
	mov	r5,a
	clr	a
	addc	a,r3
	mov	r6,a
	mov	ar7,r4
	mov	dptr,#(_read_trim_registers_trim_xyz_data_1_84 + 0x0003)
	movx	a,@dptr
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrput
;	bmm150.c:1180: dev->trim_data.dig_xy1 = trim_xy1xy2[9];
	mov	a,#0x04
	add	a,r2
	mov	r5,a
	clr	a
	addc	a,r3
	mov	r6,a
	mov	ar7,r4
	mov	dptr,#(_read_trim_registers_trim_xy1xy2_1_84 + 0x0009)
	movx	a,@dptr
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrput
;	bmm150.c:1181: dev->trim_data.dig_xy2 = (int8_t)trim_xy1xy2[8];
	mov	a,#0x05
	add	a,r2
	mov	r5,a
	clr	a
	addc	a,r3
	mov	r6,a
	mov	ar7,r4
	mov	dptr,#(_read_trim_registers_trim_xy1xy2_1_84 + 0x0008)
	movx	a,@dptr
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrput
;	bmm150.c:1182: temp_msb = ((uint16_t)(trim_xy1xy2[5] & 0x7F)) << 8;
	mov	dptr,#(_read_trim_registers_trim_xy1xy2_1_84 + 0x0005)
	movx	a,@dptr
	mov	r5,a
	anl	ar5,#0x7F
	mov	ar6,r5
	mov	r5,#0x00
;	bmm150.c:1183: dev->trim_data.dig_xyz1 = (uint16_t)(temp_msb | trim_xy1xy2[4]);
	mov	a,#0x06
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	dptr,#(_read_trim_registers_trim_xy1xy2_1_84 + 0x0004)
	movx	a,@dptr
	mov	r7,a
	mov	r0,#0x00
	orl	ar5,a
	mov	a,r0
	orl	ar6,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	__gptrput
	inc	dptr
	mov	a,r6
	lcall	__gptrput
L010006?:
;	bmm150.c:1188: return rslt;
	mov	dptr,#_read_trim_registers_rslt_1_84
	movx	a,@dptr
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'write_op_mode'
;------------------------------------------------------------
;dev                       Allocated with name '_write_op_mode_PARM_2'
;op_mode                   Allocated to registers r2 
;rslt                      Allocated with name '_write_op_mode_rslt_1_89'
;reg_data                  Allocated with name '_write_op_mode_reg_data_1_89'
;------------------------------------------------------------
;	bmm150.c:1195: xdata static int8_t write_op_mode(uint8_t op_mode, struct bmm150_dev *dev)
;	-----------------------------------------
;	 function write_op_mode
;	-----------------------------------------
_write_op_mode:
	mov	r2,dpl
;	bmm150.c:1201: rslt = bmm150_get_regs(BMM150_REG_OP_MODE, &reg_data, 1, dev);
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
	mov	a,#_write_op_mode_reg_data_1_89
	push	acc
	mov	a,#(_write_op_mode_reg_data_1_89 >> 8)
	push	acc
	clr	a
	push	acc
	mov	dpl,#0x4C
	lcall	_bmm150_get_regs
	mov	r3,dpl
	mov	a,sp
	add	a,#0xf6
	mov	sp,a
	pop	ar2
	mov	dptr,#_write_op_mode_rslt_1_89
	mov	a,r3
	movx	@dptr,a
;	bmm150.c:1203: if (rslt == BMM150_OK)
	mov	a,r3
	jnz	L011002?
;	bmm150.c:1206: reg_data = BMM150_SET_BITS(reg_data, BMM150_OP_MODE, op_mode);
	mov	dptr,#_write_op_mode_reg_data_1_89
	movx	a,@dptr
	mov	r3,a
	anl	ar3,#0xF9
	clr	a
	xch	a,r2
	add	a,acc
	xch	a,r2
	rlc	a
	anl	ar2,#0x06
	clr	a
	mov	r4,a
	mov	r5,a
	mov	a,r3
	orl	ar2,a
	mov	a,r5
	orl	ar4,a
	mov	dptr,#_write_op_mode_reg_data_1_89
	mov	a,r2
	movx	@dptr,a
;	bmm150.c:1207: rslt = bmm150_set_regs(BMM150_REG_OP_MODE, &reg_data, 1, dev);
	mov	_bmm150_set_regs_PARM_2,#_write_op_mode_reg_data_1_89
	mov	(_bmm150_set_regs_PARM_2 + 1),#(_write_op_mode_reg_data_1_89 >> 8)
	mov	(_bmm150_set_regs_PARM_2 + 2),#0x00
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
	mov	a,dpl
	mov	dptr,#_write_op_mode_rslt_1_89
	movx	@dptr,a
L011002?:
;	bmm150.c:1210: return rslt;
	mov	dptr,#_write_op_mode_rslt_1_89
	movx	a,@dptr
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'suspend_to_sleep_mode'
;------------------------------------------------------------
;dev                       Allocated to registers r2 r3 r4 
;rslt                      Allocated with name '_suspend_to_sleep_mode_rslt_1_92'
;------------------------------------------------------------
;	bmm150.c:1217: xdata static int8_t suspend_to_sleep_mode(struct bmm150_dev *dev)
;	-----------------------------------------
;	 function suspend_to_sleep_mode
;	-----------------------------------------
_suspend_to_sleep_mode:
;	bmm150.c:1222: rslt = null_ptr_check(dev);
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
	mov	dptr,#_suspend_to_sleep_mode_rslt_1_92
	mov	a,r5
	movx	@dptr,a
;	bmm150.c:1225: if (rslt == BMM150_OK)
	mov	a,r5
	jz	L012009?
	ljmp	L012004?
L012009?:
;	bmm150.c:1227: if (dev->pwr_cntrl_bit == BMM150_POWER_CNTRL_DISABLE)
	mov	a,#0x14
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
	jz	L012010?
	ljmp	L012004?
L012010?:
;	bmm150.c:1229: rslt = set_power_control_bit(BMM150_POWER_CNTRL_ENABLE, dev);
	mov	_set_power_control_bit_PARM_2,r2
	mov	(_set_power_control_bit_PARM_2 + 1),r3
	mov	(_set_power_control_bit_PARM_2 + 2),r4
	mov	dpl,#0x01
	push	ar2
	push	ar3
	push	ar4
	lcall	_set_power_control_bit
	mov	a,dpl
	pop	ar4
	pop	ar3
	pop	ar2
	mov	dptr,#_suspend_to_sleep_mode_rslt_1_92
	movx	@dptr,a
;	bmm150.c:1232: dev->delay_us(BMM150_START_UP_TIME, dev->intf_ptr);
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
	push	ar2
	push	ar3
	push	ar4
	mov	a,#L012011?
	push	acc
	mov	a,#(L012011? >> 8)
	push	acc
	push	ar5
	push	ar6
	mov	dptr,#0x0BB8
	clr	a
	mov	b,a
	ret
L012011?:
	dec	sp
	dec	sp
	dec	sp
	pop	ar6
	pop	ar5
L012004?:
;	bmm150.c:1236: return rslt;
	mov	dptr,#_suspend_to_sleep_mode_rslt_1_92
	movx	a,@dptr
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'set_xy_rep'
;------------------------------------------------------------
;dev                       Allocated with name '_set_xy_rep_PARM_2'
;settings                  Allocated to registers r2 r3 r4 
;rslt                      Allocated with name '_set_xy_rep_rslt_1_96'
;rep_xy                    Allocated with name '_set_xy_rep_rep_xy_1_96'
;------------------------------------------------------------
;	bmm150.c:1242: xdata static int8_t set_xy_rep(const struct bmm150_settings *settings, struct bmm150_dev *dev)
;	-----------------------------------------
;	 function set_xy_rep
;	-----------------------------------------
_set_xy_rep:
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
;	bmm150.c:1248: rep_xy = settings->xy_rep;
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
	mov	dptr,#_set_xy_rep_rep_xy_1_96
	movx	@dptr,a
;	bmm150.c:1249: rslt = bmm150_set_regs(BMM150_REG_REP_XY, &rep_xy, 1, dev);
	mov	_bmm150_set_regs_PARM_2,#_set_xy_rep_rep_xy_1_96
	mov	(_bmm150_set_regs_PARM_2 + 1),#(_set_xy_rep_rep_xy_1_96 >> 8)
	mov	(_bmm150_set_regs_PARM_2 + 2),#0x00
	mov	_bmm150_set_regs_PARM_3,#0x01
	clr	a
	mov	(_bmm150_set_regs_PARM_3 + 1),a
	mov	(_bmm150_set_regs_PARM_3 + 2),a
	mov	(_bmm150_set_regs_PARM_3 + 3),a
	mov	_bmm150_set_regs_PARM_4,_set_xy_rep_PARM_2
	mov	(_bmm150_set_regs_PARM_4 + 1),(_set_xy_rep_PARM_2 + 1)
	mov	(_bmm150_set_regs_PARM_4 + 2),(_set_xy_rep_PARM_2 + 2)
	mov	dpl,#0x51
;	bmm150.c:1251: return rslt;
	ljmp	_bmm150_set_regs
;------------------------------------------------------------
;Allocation info for local variables in function 'set_odr'
;------------------------------------------------------------
;dev                       Allocated with name '_set_odr_PARM_2'
;settings                  Allocated to registers r2 r3 r4 
;rslt                      Allocated with name '_set_odr_rslt_1_98'
;reg_data                  Allocated with name '_set_odr_reg_data_1_98'
;------------------------------------------------------------
;	bmm150.c:1272: xdata static int8_t set_odr(const struct bmm150_settings *settings, struct bmm150_dev *dev)
;	-----------------------------------------
;	 function set_odr
;	-----------------------------------------
_set_odr:
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
;	bmm150.c:1278: rslt = bmm150_get_regs(BMM150_REG_OP_MODE, &reg_data, 1, dev);
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
	mov	a,#_set_odr_reg_data_1_98
	push	acc
	mov	a,#(_set_odr_reg_data_1_98 >> 8)
	push	acc
	clr	a
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
	mov	dptr,#_set_odr_rslt_1_98
	mov	a,r5
	movx	@dptr,a
;	bmm150.c:1280: if (rslt == BMM150_OK)
	mov	a,r5
	jnz	L014002?
;	bmm150.c:1283: reg_data = BMM150_SET_BITS(reg_data, BMM150_ODR, settings->data_rate);
	mov	dptr,#_set_odr_reg_data_1_98
	movx	a,@dptr
	mov	r5,a
	anl	ar5,#0xC7
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
	mov	a,r5
	orl	ar2,a
	mov	a,r4
	orl	ar3,a
	mov	dptr,#_set_odr_reg_data_1_98
	mov	a,r2
	movx	@dptr,a
;	bmm150.c:1284: rslt = bmm150_set_regs(BMM150_REG_OP_MODE, &reg_data, 1, dev);
	mov	_bmm150_set_regs_PARM_2,#_set_odr_reg_data_1_98
	mov	(_bmm150_set_regs_PARM_2 + 1),#(_set_odr_reg_data_1_98 >> 8)
	mov	(_bmm150_set_regs_PARM_2 + 2),#0x00
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
	mov	a,dpl
	mov	dptr,#_set_odr_rslt_1_98
	movx	@dptr,a
L014002?:
;	bmm150.c:1287: return rslt;
	mov	dptr,#_set_odr_rslt_1_98
	movx	a,@dptr
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'set_odr_xyz_rep'
;------------------------------------------------------------
;dev                       Allocated with name '_set_odr_xyz_rep_PARM_2'
;settings                  Allocated to registers r2 r3 r4 
;rslt                      Allocated with name '_set_odr_xyz_rep_rslt_1_101'
;------------------------------------------------------------
;	bmm150.c:1293: xdata static int8_t set_odr_xyz_rep(const struct bmm150_settings *settings, struct bmm150_dev *dev)
;	-----------------------------------------
;	 function set_odr_xyz_rep
;	-----------------------------------------
_set_odr_xyz_rep:
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
;	bmm150.c:1298: rslt = set_odr(settings, dev);
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
	mov	dptr,#_set_odr_xyz_rep_rslt_1_101
	mov	a,r5
	movx	@dptr,a
;	bmm150.c:1300: if (rslt == BMM150_OK)
	mov	a,r5
	jnz	L015002?
;	bmm150.c:1303: rslt = set_xy_rep(settings, dev);
	mov	_set_xy_rep_PARM_2,_set_odr_xyz_rep_PARM_2
	mov	(_set_xy_rep_PARM_2 + 1),(_set_odr_xyz_rep_PARM_2 + 1)
	mov	(_set_xy_rep_PARM_2 + 2),(_set_odr_xyz_rep_PARM_2 + 2)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_set_xy_rep
	mov	a,dpl
	mov	dptr,#_set_odr_xyz_rep_rslt_1_101
	movx	@dptr,a
L015002?:
;	bmm150.c:1312: return rslt;
	mov	dptr,#_set_odr_xyz_rep_rslt_1_101
	movx	a,@dptr
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'set_control_measurement_xyz'
;------------------------------------------------------------
;dev                       Allocated with name '_set_control_measurement_xyz_PARM_2'
;settings                  Allocated to registers r2 r3 r4 
;rslt                      Allocated with name '_set_control_measurement_xyz_rslt_1_104'
;reg_data                  Allocated with name '_set_control_measurement_xyz_reg_data_1_104'
;------------------------------------------------------------
;	bmm150.c:1319: xdata static int8_t set_control_measurement_xyz(const struct bmm150_settings *settings, struct bmm150_dev *dev)
;	-----------------------------------------
;	 function set_control_measurement_xyz
;	-----------------------------------------
_set_control_measurement_xyz:
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
;	bmm150.c:1324: rslt = bmm150_get_regs(BMM150_REG_AXES_ENABLE, &reg_data, 1, dev);
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
	mov	a,#_set_control_measurement_xyz_reg_data_1_104
	push	acc
	mov	a,#(_set_control_measurement_xyz_reg_data_1_104 >> 8)
	push	acc
	clr	a
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
	mov	dptr,#_set_control_measurement_xyz_rslt_1_104
	mov	a,r5
	movx	@dptr,a
;	bmm150.c:1326: if (rslt == BMM150_OK)
	mov	a,r5
	jnz	L016002?
;	bmm150.c:1329: reg_data = BMM150_SET_BITS(reg_data, BMM150_CONTROL_MEASURE, settings->xyz_axes_control);
	mov	dptr,#_set_control_measurement_xyz_reg_data_1_104
	movx	a,@dptr
	mov	r5,a
	anl	ar5,#0xC7
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
	mov	a,r5
	orl	ar2,a
	mov	a,r4
	orl	ar3,a
	mov	dptr,#_set_control_measurement_xyz_reg_data_1_104
	mov	a,r2
	movx	@dptr,a
;	bmm150.c:1330: rslt = bmm150_set_regs(BMM150_REG_AXES_ENABLE, &reg_data, 1, dev);
	mov	_bmm150_set_regs_PARM_2,#_set_control_measurement_xyz_reg_data_1_104
	mov	(_bmm150_set_regs_PARM_2 + 1),#(_set_control_measurement_xyz_reg_data_1_104 >> 8)
	mov	(_bmm150_set_regs_PARM_2 + 2),#0x00
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
	mov	a,dpl
	mov	dptr,#_set_control_measurement_xyz_rslt_1_104
	movx	@dptr,a
L016002?:
;	bmm150.c:1333: return rslt;
	mov	dptr,#_set_control_measurement_xyz_rslt_1_104
	movx	a,@dptr
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'are_settings_changed'
;------------------------------------------------------------
;settings_changed          Allocated with name '_are_settings_changed_settings_changed_1_107'
;desired_settings          Allocated with name '_are_settings_changed_PARM_2'
;sub_settings              Allocated to registers r2 r3 
;------------------------------------------------------------
;	bmm150.c:1340: xdata static uint8_t are_settings_changed(uint16_t sub_settings, uint16_t desired_settings)
;	-----------------------------------------
;	 function are_settings_changed
;	-----------------------------------------
_are_settings_changed:
	mov	r2,dpl
	mov	r3,dph
;	bmm150.c:1344: if (sub_settings & desired_settings)
	mov	a,_are_settings_changed_PARM_2
	anl	ar2,a
	mov	a,(_are_settings_changed_PARM_2 + 1)
	anl	ar3,a
	mov	a,r2
	orl	a,r3
	jz	L017002?
;	bmm150.c:1347: settings_changed = BMM150_TRUE;
	mov	dptr,#_are_settings_changed_settings_changed_1_107
	mov	a,#0x01
	movx	@dptr,a
	sjmp	L017003?
L017002?:
;	bmm150.c:1352: settings_changed = BMM150_FALSE;
	mov	dptr,#_are_settings_changed_settings_changed_1_107
	clr	a
	movx	@dptr,a
L017003?:
;	bmm150.c:1355: return settings_changed;
	mov	dptr,#_are_settings_changed_settings_changed_1_107
	movx	a,@dptr
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'compensate_x'
;------------------------------------------------------------
;data_rhall                Allocated with name '_compensate_x_PARM_2'
;dev                       Allocated with name '_compensate_x_PARM_3'
;mag_data_x                Allocated with name '_compensate_x_mag_data_x_1_110'
;sloc0                     Allocated with name '_compensate_x_sloc0_1_0'
;sloc1                     Allocated with name '_compensate_x_sloc1_1_0'
;sloc2                     Allocated with name '_compensate_x_sloc2_1_0'
;retval                    Allocated with name '_compensate_x_retval_1_111'
;process_comp_x0           Allocated with name '_compensate_x_process_comp_x0_1_111'
;process_comp_x1           Allocated with name '_compensate_x_process_comp_x1_1_111'
;process_comp_x2           Allocated with name '_compensate_x_process_comp_x2_1_111'
;process_comp_x3           Allocated with name '_compensate_x_process_comp_x3_1_111'
;process_comp_x4           Allocated with name '_compensate_x_process_comp_x4_1_111'
;process_comp_x5           Allocated with name '_compensate_x_process_comp_x5_1_111'
;process_comp_x6           Allocated with name '_compensate_x_process_comp_x6_1_111'
;process_comp_x7           Allocated with name '_compensate_x_process_comp_x7_1_111'
;process_comp_x8           Allocated with name '_compensate_x_process_comp_x8_1_111'
;process_comp_x9           Allocated with name '_compensate_x_process_comp_x9_1_111'
;process_comp_x10          Allocated with name '_compensate_x_process_comp_x10_1_111'
;------------------------------------------------------------
;	bmm150.c:1568: xdata static int16_t compensate_x(int16_t mag_data_x, uint16_t data_rhall, const struct bmm150_dev *dev)
;	-----------------------------------------
;	 function compensate_x
;	-----------------------------------------
_compensate_x:
	mov	_compensate_x_mag_data_x_1_110,dpl
	mov	(_compensate_x_mag_data_x_1_110 + 1),dph
;	bmm150.c:1584: if (mag_data_x != BMM150_OVERFLOW_ADCVAL_XYAXES_FLIP)
	clr	a
	cjne	a,_compensate_x_mag_data_x_1_110,L018019?
	mov	a,#0xF0
	cjne	a,(_compensate_x_mag_data_x_1_110 + 1),L018019?
	ljmp	L018011?
L018019?:
;	bmm150.c:1586: if (data_rhall != 0)
	mov	a,_compensate_x_PARM_2
	orl	a,(_compensate_x_PARM_2 + 1)
	jz	L018005?
;	bmm150.c:1589: process_comp_x0 = data_rhall;
	mov	dptr,#_compensate_x_process_comp_x0_1_111
	mov	a,_compensate_x_PARM_2
	movx	@dptr,a
	inc	dptr
	mov	a,(_compensate_x_PARM_2 + 1)
	movx	@dptr,a
	sjmp	L018006?
L018005?:
;	bmm150.c:1591: else if (dev->trim_data.dig_xyz1 != 0)
	mov	a,#0x12
	add	a,_compensate_x_PARM_3
	mov	r4,a
	clr	a
	addc	a,(_compensate_x_PARM_3 + 1)
	mov	r5,a
	mov	r6,(_compensate_x_PARM_3 + 2)
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	orl	a,r4
	jz	L018002?
;	bmm150.c:1593: process_comp_x0 = dev->trim_data.dig_xyz1;
	mov	dptr,#_compensate_x_process_comp_x0_1_111
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
	sjmp	L018006?
L018002?:
;	bmm150.c:1597: process_comp_x0 = 0;
	mov	dptr,#_compensate_x_process_comp_x0_1_111
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
L018006?:
;	bmm150.c:1600: if (process_comp_x0 != 0)
	mov	dptr,#_compensate_x_process_comp_x0_1_111
	movx	a,@dptr
	mov	_compensate_x_sloc1_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_compensate_x_sloc1_1_0 + 1),a
	mov	a,_compensate_x_sloc1_1_0
	orl	a,(_compensate_x_sloc1_1_0 + 1)
	jnz	L018022?
	ljmp	L018008?
L018022?:
;	bmm150.c:1603: process_comp_x1 = ((int32_t)dev->trim_data.dig_xyz1) * 16384;
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
	mov	a,#0x12
	add	a,r6
	mov	r2,a
	clr	a
	addc	a,r7
	mov	r3,a
	mov	ar1,r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r1
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	clr	a
	mov	r1,a
	mov	a,r3
	xch	a,r1
	anl	a,#0x03
	mov	c,acc.0
	xch	a,r1
	rrc	a
	xch	a,r1
	rrc	a
	mov	c,acc.0
	xch	a,r1
	rrc	a
	xch	a,r1
	rrc	a
	xch	a,r1
	mov	r4,a
	mov	a,r2
	rr	a
	rr	a
	anl	a,#0xc0
	mov	r3,a
	mov	a,r2
	rr	a
	rr	a
	anl	a,#0x3f
	orl	a,r1
	mov	r1,a
	mov	r2,#0x00
;	bmm150.c:1604: process_comp_x2 = ((uint16_t)(process_comp_x1 / process_comp_x0)) - ((uint16_t)0x4000);
	mov	__divslong_PARM_2,_compensate_x_sloc1_1_0
	mov	(__divslong_PARM_2 + 1),(_compensate_x_sloc1_1_0 + 1)
	mov	(__divslong_PARM_2 + 2),#0x00
	mov	(__divslong_PARM_2 + 3),#0x00
	mov	dpl,r2
	mov	dph,r3
	mov	b,r1
	mov	a,r4
	push	ar6
	push	ar7
	push	ar0
	lcall	__divslong
	mov	r2,dpl
	mov	r3,dph
	mov	_compensate_x_sloc1_1_0,r2
	mov	a,r3
	add	a,#0xc0
	mov	(_compensate_x_sloc1_1_0 + 1),a
;	bmm150.c:1606: process_comp_x3 = (((int32_t)retval) * ((int32_t)retval));
	mov	r4,_compensate_x_sloc1_1_0
	mov	r5,(_compensate_x_sloc1_1_0 + 1)
	mov	_compensate_x_sloc2_1_0,r4
	mov	a,r5
	mov	(_compensate_x_sloc2_1_0 + 1),a
	rlc	a
	subb	a,acc
	mov	(_compensate_x_sloc2_1_0 + 2),a
	mov	(_compensate_x_sloc2_1_0 + 3),a
	mov	r3,_compensate_x_sloc1_1_0
	mov	r2,(_compensate_x_sloc1_1_0 + 1)
	mov	__mullong_PARM_2,r3
	mov	a,r2
	mov	(__mullong_PARM_2 + 1),a
	rlc	a
	subb	a,acc
	mov	(__mullong_PARM_2 + 2),a
	mov	(__mullong_PARM_2 + 3),a
;	bmm150.c:1607: process_comp_x4 = (((int32_t)dev->trim_data.dig_xy2) * (process_comp_x3 / 128));
	mov	dpl,_compensate_x_sloc2_1_0
	mov	dph,(_compensate_x_sloc2_1_0 + 1)
	mov	b,(_compensate_x_sloc2_1_0 + 2)
	mov	a,(_compensate_x_sloc2_1_0 + 3)
	lcall	__mullong
	mov	_compensate_x_sloc2_1_0,dpl
	mov	(_compensate_x_sloc2_1_0 + 1),dph
	mov	(_compensate_x_sloc2_1_0 + 2),b
	mov	(_compensate_x_sloc2_1_0 + 3),a
	pop	ar0
	pop	ar7
	pop	ar6
	mov	a,#0x11
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
	mov	r3,a
	mov	r4,a
	mov	__divslong_PARM_2,#0x80
	clr	a
	mov	(__divslong_PARM_2 + 1),a
	mov	(__divslong_PARM_2 + 2),a
	mov	(__divslong_PARM_2 + 3),a
	mov	dpl,_compensate_x_sloc2_1_0
	mov	dph,(_compensate_x_sloc2_1_0 + 1)
	mov	b,(_compensate_x_sloc2_1_0 + 2)
	mov	a,(_compensate_x_sloc2_1_0 + 3)
	push	ar2
	push	ar3
	push	ar4
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
	pop	ar4
	pop	ar3
	pop	ar2
;	bmm150.c:1608: process_comp_x5 = (int32_t)(((int16_t)dev->trim_data.dig_xy1) * 128);
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	mov	a,r4
	push	ar6
	push	ar7
	push	ar0
	lcall	__mullong
	mov	_compensate_x_sloc2_1_0,dpl
	mov	(_compensate_x_sloc2_1_0 + 1),dph
	mov	(_compensate_x_sloc2_1_0 + 2),b
	mov	(_compensate_x_sloc2_1_0 + 3),a
	pop	ar0
	pop	ar7
	pop	ar6
	mov	a,#0x10
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
;	bmm150.c:1609: process_comp_x6 = ((int32_t)retval) * process_comp_x5;
	mov	r2,_compensate_x_sloc1_1_0
	mov	a,(_compensate_x_sloc1_1_0 + 1)
	mov	r3,a
	rlc	a
	subb	a,acc
	mov	r4,a
;	bmm150.c:1610: process_comp_x7 = (((process_comp_x4 + process_comp_x6) / 512) + ((int32_t)0x100000));
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	push	ar6
	push	ar7
	push	ar0
	lcall	__mullong
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	a,r2
	add	a,_compensate_x_sloc2_1_0
	mov	r2,a
	mov	a,r3
	addc	a,(_compensate_x_sloc2_1_0 + 1)
	mov	r3,a
	mov	a,r4
	addc	a,(_compensate_x_sloc2_1_0 + 2)
	mov	r4,a
	mov	a,r5
	addc	a,(_compensate_x_sloc2_1_0 + 3)
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
;	bmm150.c:1611: process_comp_x8 = ((int32_t)(((int16_t)dev->trim_data.dig_x2) + ((int16_t)0xA0)));
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
;	bmm150.c:1612: process_comp_x9 = ((process_comp_x7 * process_comp_x8) / 4096);
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	__mullong
;	bmm150.c:1613: process_comp_x10 = ((int32_t)mag_data_x) * process_comp_x9;
	mov	__divslong_PARM_2,#0x00
	mov	(__divslong_PARM_2 + 1),#0x10
	mov	(__divslong_PARM_2 + 2),#0x00
	mov	(__divslong_PARM_2 + 3),#0x00
	lcall	__divslong
	mov	__mullong_PARM_2,dpl
	mov	(__mullong_PARM_2 + 1),dph
	mov	(__mullong_PARM_2 + 2),b
	mov	(__mullong_PARM_2 + 3),a
	mov	r2,_compensate_x_mag_data_x_1_110
	mov	a,(_compensate_x_mag_data_x_1_110 + 1)
	mov	r3,a
	rlc	a
	subb	a,acc
	mov	r4,a
;	bmm150.c:1614: retval = ((int16_t)(process_comp_x10 / 8192));
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
;	bmm150.c:1615: retval = (retval + (((int16_t)dev->trim_data.dig_x1) * 8)) / 16;
	mov	dpl,_compensate_x_sloc0_1_0
	mov	dph,(_compensate_x_sloc0_1_0 + 1)
	mov	b,(_compensate_x_sloc0_1_0 + 2)
	lcall	__gptrget
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
	mov	dptr,#_compensate_x_retval_1_111
	movx	@dptr,a
	inc	dptr
	mov	a,b
	movx	@dptr,a
	sjmp	L018012?
L018008?:
;	bmm150.c:1619: retval = BMM150_OVERFLOW_OUTPUT;
	mov	dptr,#_compensate_x_retval_1_111
	clr	a
	movx	@dptr,a
	inc	dptr
	mov	a,#0x80
	movx	@dptr,a
	sjmp	L018012?
L018011?:
;	bmm150.c:1625: retval = BMM150_OVERFLOW_OUTPUT;
	mov	dptr,#_compensate_x_retval_1_111
	clr	a
	movx	@dptr,a
	inc	dptr
	mov	a,#0x80
	movx	@dptr,a
L018012?:
;	bmm150.c:1628: return retval;
	mov	dptr,#_compensate_x_retval_1_111
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	dpl,r2
	mov	dph,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'compensate_y'
;------------------------------------------------------------
;data_rhall                Allocated with name '_compensate_y_PARM_2'
;dev                       Allocated with name '_compensate_y_PARM_3'
;mag_data_y                Allocated with name '_compensate_y_mag_data_y_1_119'
;sloc0                     Allocated with name '_compensate_y_sloc0_1_0'
;sloc1                     Allocated with name '_compensate_y_sloc1_1_0'
;retval                    Allocated with name '_compensate_y_retval_1_120'
;process_comp_y0           Allocated with name '_compensate_y_process_comp_y0_1_120'
;process_comp_y1           Allocated with name '_compensate_y_process_comp_y1_1_120'
;process_comp_y2           Allocated with name '_compensate_y_process_comp_y2_1_120'
;process_comp_y3           Allocated with name '_compensate_y_process_comp_y3_1_120'
;process_comp_y4           Allocated with name '_compensate_y_process_comp_y4_1_120'
;process_comp_y5           Allocated with name '_compensate_y_process_comp_y5_1_120'
;process_comp_y6           Allocated with name '_compensate_y_process_comp_y6_1_120'
;process_comp_y7           Allocated with name '_compensate_y_process_comp_y7_1_120'
;process_comp_y8           Allocated with name '_compensate_y_process_comp_y8_1_120'
;process_comp_y9           Allocated with name '_compensate_y_process_comp_y9_1_120'
;------------------------------------------------------------
;	bmm150.c:1635: xdata static int16_t compensate_y(int16_t mag_data_y, uint16_t data_rhall, const struct bmm150_dev *dev)
;	-----------------------------------------
;	 function compensate_y
;	-----------------------------------------
_compensate_y:
	mov	_compensate_y_mag_data_y_1_119,dpl
	mov	(_compensate_y_mag_data_y_1_119 + 1),dph
;	bmm150.c:1650: if (mag_data_y != BMM150_OVERFLOW_ADCVAL_XYAXES_FLIP)
	clr	a
	cjne	a,_compensate_y_mag_data_y_1_119,L019019?
	mov	a,#0xF0
	cjne	a,(_compensate_y_mag_data_y_1_119 + 1),L019019?
	ljmp	L019011?
L019019?:
;	bmm150.c:1652: if (data_rhall != 0)
	mov	a,_compensate_y_PARM_2
	orl	a,(_compensate_y_PARM_2 + 1)
	jz	L019005?
;	bmm150.c:1655: process_comp_y0 = data_rhall;
	mov	dptr,#_compensate_y_process_comp_y0_1_120
	mov	a,_compensate_y_PARM_2
	movx	@dptr,a
	inc	dptr
	mov	a,(_compensate_y_PARM_2 + 1)
	movx	@dptr,a
	sjmp	L019006?
L019005?:
;	bmm150.c:1657: else if (dev->trim_data.dig_xyz1 != 0)
	mov	a,#0x12
	add	a,_compensate_y_PARM_3
	mov	r4,a
	clr	a
	addc	a,(_compensate_y_PARM_3 + 1)
	mov	r5,a
	mov	r6,(_compensate_y_PARM_3 + 2)
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	orl	a,r4
	jz	L019002?
;	bmm150.c:1659: process_comp_y0 = dev->trim_data.dig_xyz1;
	mov	dptr,#_compensate_y_process_comp_y0_1_120
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
	sjmp	L019006?
L019002?:
;	bmm150.c:1663: process_comp_y0 = 0;
	mov	dptr,#_compensate_y_process_comp_y0_1_120
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
L019006?:
;	bmm150.c:1666: if (process_comp_y0 != 0)
	mov	dptr,#_compensate_y_process_comp_y0_1_120
	movx	a,@dptr
	mov	_compensate_y_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_compensate_y_sloc0_1_0 + 1),a
	mov	a,_compensate_y_sloc0_1_0
	orl	a,(_compensate_y_sloc0_1_0 + 1)
	jnz	L019022?
	ljmp	L019008?
L019022?:
;	bmm150.c:1669: process_comp_y1 = (((int32_t)dev->trim_data.dig_xyz1) * 16384) / process_comp_y0;
	mov	r6,_compensate_y_PARM_3
	mov	r7,(_compensate_y_PARM_3 + 1)
	mov	r0,(_compensate_y_PARM_3 + 2)
	mov	a,#0x12
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
	clr	a
	mov	r3,a
	mov	a,r2
	xch	a,r3
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
	mov	r4,a
	mov	a,r1
	rr	a
	rr	a
	anl	a,#0xc0
	mov	r2,a
	mov	a,r1
	rr	a
	rr	a
	anl	a,#0x3f
	orl	a,r3
	mov	r3,a
	mov	r1,#0x00
	mov	__divslong_PARM_2,_compensate_y_sloc0_1_0
	mov	(__divslong_PARM_2 + 1),(_compensate_y_sloc0_1_0 + 1)
	mov	(__divslong_PARM_2 + 2),#0x00
	mov	(__divslong_PARM_2 + 3),#0x00
;	bmm150.c:1670: process_comp_y2 = ((uint16_t)process_comp_y1) - ((uint16_t)0x4000);
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	mov	a,r4
	push	ar6
	push	ar7
	push	ar0
	lcall	__divslong
	mov	r2,dpl
	mov	r3,dph
	mov	_compensate_y_sloc0_1_0,r2
	mov	a,r3
	add	a,#0xc0
	mov	(_compensate_y_sloc0_1_0 + 1),a
;	bmm150.c:1672: process_comp_y3 = ((int32_t) retval) * ((int32_t)retval);
	mov	r4,_compensate_y_sloc0_1_0
	mov	r5,(_compensate_y_sloc0_1_0 + 1)
	mov	_compensate_y_sloc1_1_0,r4
	mov	a,r5
	mov	(_compensate_y_sloc1_1_0 + 1),a
	rlc	a
	subb	a,acc
	mov	(_compensate_y_sloc1_1_0 + 2),a
	mov	(_compensate_y_sloc1_1_0 + 3),a
	mov	r3,_compensate_y_sloc0_1_0
	mov	r2,(_compensate_y_sloc0_1_0 + 1)
	mov	__mullong_PARM_2,r3
	mov	a,r2
	mov	(__mullong_PARM_2 + 1),a
	rlc	a
	subb	a,acc
	mov	(__mullong_PARM_2 + 2),a
	mov	(__mullong_PARM_2 + 3),a
;	bmm150.c:1673: process_comp_y4 = ((int32_t)dev->trim_data.dig_xy2) * (process_comp_y3 / 128);
	mov	dpl,_compensate_y_sloc1_1_0
	mov	dph,(_compensate_y_sloc1_1_0 + 1)
	mov	b,(_compensate_y_sloc1_1_0 + 2)
	mov	a,(_compensate_y_sloc1_1_0 + 3)
	lcall	__mullong
	mov	_compensate_y_sloc1_1_0,dpl
	mov	(_compensate_y_sloc1_1_0 + 1),dph
	mov	(_compensate_y_sloc1_1_0 + 2),b
	mov	(_compensate_y_sloc1_1_0 + 3),a
	pop	ar0
	pop	ar7
	pop	ar6
	mov	a,#0x11
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
	mov	r3,a
	mov	r4,a
	mov	__divslong_PARM_2,#0x80
	clr	a
	mov	(__divslong_PARM_2 + 1),a
	mov	(__divslong_PARM_2 + 2),a
	mov	(__divslong_PARM_2 + 3),a
	mov	dpl,_compensate_y_sloc1_1_0
	mov	dph,(_compensate_y_sloc1_1_0 + 1)
	mov	b,(_compensate_y_sloc1_1_0 + 2)
	mov	a,(_compensate_y_sloc1_1_0 + 3)
	push	ar2
	push	ar3
	push	ar4
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
	pop	ar4
	pop	ar3
	pop	ar2
;	bmm150.c:1674: process_comp_y5 = ((int32_t)(((int16_t)dev->trim_data.dig_xy1) * 128));
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	mov	a,r4
	push	ar6
	push	ar7
	push	ar0
	lcall	__mullong
	mov	_compensate_y_sloc1_1_0,dpl
	mov	(_compensate_y_sloc1_1_0 + 1),dph
	mov	(_compensate_y_sloc1_1_0 + 2),b
	mov	(_compensate_y_sloc1_1_0 + 3),a
	pop	ar0
	pop	ar7
	pop	ar6
	mov	a,#0x10
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
;	bmm150.c:1675: process_comp_y6 = ((process_comp_y4 + (((int32_t)retval) * process_comp_y5)) / 512);
	mov	r2,_compensate_y_sloc0_1_0
	mov	a,(_compensate_y_sloc0_1_0 + 1)
	mov	r3,a
	rlc	a
	subb	a,acc
	mov	r4,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	push	ar6
	push	ar7
	push	ar0
	lcall	__mullong
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	a,r2
	add	a,_compensate_y_sloc1_1_0
	mov	r2,a
	mov	a,r3
	addc	a,(_compensate_y_sloc1_1_0 + 1)
	mov	r3,a
	mov	a,r4
	addc	a,(_compensate_y_sloc1_1_0 + 2)
	mov	r4,a
	mov	a,r5
	addc	a,(_compensate_y_sloc1_1_0 + 3)
	mov	r5,a
	mov	__divslong_PARM_2,#0x00
	mov	(__divslong_PARM_2 + 1),#0x02
	mov	(__divslong_PARM_2 + 2),#0x00
	mov	(__divslong_PARM_2 + 3),#0x00
;	bmm150.c:1676: process_comp_y7 = ((int32_t)(((int16_t)dev->trim_data.dig_y2) + ((int16_t)0xA0)));
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	__divslong
	mov	_compensate_y_sloc1_1_0,dpl
	mov	(_compensate_y_sloc1_1_0 + 1),dph
	mov	(_compensate_y_sloc1_1_0 + 2),b
	mov	(_compensate_y_sloc1_1_0 + 3),a
	pop	ar0
	pop	ar7
	pop	ar6
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
;	bmm150.c:1677: process_comp_y8 = (((process_comp_y6 + ((int32_t)0x100000)) * process_comp_y7) / 4096);
	mov	r2,_compensate_y_sloc1_1_0
	mov	r3,(_compensate_y_sloc1_1_0 + 1)
	mov	a,#0x10
	add	a,(_compensate_y_sloc1_1_0 + 2)
	mov	r4,a
	clr	a
	addc	a,(_compensate_y_sloc1_1_0 + 3)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	push	ar6
	push	ar7
	push	ar0
	lcall	__mullong
;	bmm150.c:1678: process_comp_y9 = (((int32_t)mag_data_y) * process_comp_y8);
	mov	__divslong_PARM_2,#0x00
	mov	(__divslong_PARM_2 + 1),#0x10
	mov	(__divslong_PARM_2 + 2),#0x00
	mov	(__divslong_PARM_2 + 3),#0x00
	lcall	__divslong
	mov	__mullong_PARM_2,dpl
	mov	(__mullong_PARM_2 + 1),dph
	mov	(__mullong_PARM_2 + 2),b
	mov	(__mullong_PARM_2 + 3),a
	mov	r2,_compensate_y_mag_data_y_1_119
	mov	a,(_compensate_y_mag_data_y_1_119 + 1)
	mov	r3,a
	rlc	a
	subb	a,acc
	mov	r4,a
;	bmm150.c:1679: retval = (int16_t)(process_comp_y9 / 8192);
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
	pop	ar0
	pop	ar7
	pop	ar6
;	bmm150.c:1680: retval = (retval + (((int16_t)dev->trim_data.dig_y1) * 8)) / 16;
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
	mov	r4,a
	mov	a,r6
	add	a,r2
	mov	dpl,a
	mov	a,r4
	addc	a,r3
	mov	dph,a
	mov	__divsint_PARM_2,#0x10
	clr	a
	mov	(__divsint_PARM_2 + 1),a
	lcall	__divsint
	mov	a,dpl
	mov	b,dph
	mov	dptr,#_compensate_y_retval_1_120
	movx	@dptr,a
	inc	dptr
	mov	a,b
	movx	@dptr,a
	sjmp	L019012?
L019008?:
;	bmm150.c:1684: retval = BMM150_OVERFLOW_OUTPUT;
	mov	dptr,#_compensate_y_retval_1_120
	clr	a
	movx	@dptr,a
	inc	dptr
	mov	a,#0x80
	movx	@dptr,a
	sjmp	L019012?
L019011?:
;	bmm150.c:1690: retval = BMM150_OVERFLOW_OUTPUT;
	mov	dptr,#_compensate_y_retval_1_120
	clr	a
	movx	@dptr,a
	inc	dptr
	mov	a,#0x80
	movx	@dptr,a
L019012?:
;	bmm150.c:1693: return retval;
	mov	dptr,#_compensate_y_retval_1_120
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	dpl,r2
	mov	dph,a
	ret
	rseg R_CSEG

	rseg R_XINIT

	rseg R_CONST
__str_0:
	db 'powering sensor'
	db 0x0A
	db 0x00
__str_1:
	db 'startup time delay 3ms'
	db 0x0A
	db 0x00
__str_2:
	db 'reading chip ID'
	db 0x0A
	db 0x00
__str_3:
	db 'Chip ID is: %d'
	db 0x0A
	db 0x00
__str_4:
	db 'Updating trim values'
	db 0x0A
	db 0x00
__str_5:
	db 'Trim values done'
	db 0x0A
	db 0x00
__str_6:
	db 'INIT NOT OK'
	db 0x0A
	db 0x00
__str_7:
	db 'Power control register is read'
	db 0x0A
	db 0x00
__str_8:
	db 'set_power_control_bit DONE'
	db 0x0A
	db 0x00

	CSEG

end
