;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.6.0 #4309 (Jul 28 2006)
; This file generated Sat May 02 15:12:57 2015
;--------------------------------------------------------
	.module driver_lcd
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _P5_7
	.globl _P5_6
	.globl _P5_5
	.globl _P5_4
	.globl _P5_3
	.globl _P5_2
	.globl _P5_1
	.globl _P5_0
	.globl _P4_7
	.globl _P4_6
	.globl _P4_5
	.globl _P4_4
	.globl _P4_3
	.globl _P4_2
	.globl _P4_1
	.globl _P4_0
	.globl _PX0L
	.globl _PT0L
	.globl _PX1L
	.globl _PT1L
	.globl _PLS
	.globl _PT2L
	.globl _PPCL
	.globl _EC
	.globl _CCF0
	.globl _CCF1
	.globl _CCF2
	.globl _CCF3
	.globl _CCF4
	.globl _CR
	.globl _CF
	.globl _TF2
	.globl _EXF2
	.globl _RCLK
	.globl _TCLK
	.globl _EXEN2
	.globl _TR2
	.globl _C_T2
	.globl _CP_RL2
	.globl _T2CON_7
	.globl _T2CON_6
	.globl _T2CON_5
	.globl _T2CON_4
	.globl _T2CON_3
	.globl _T2CON_2
	.globl _T2CON_1
	.globl _T2CON_0
	.globl _PT2
	.globl _ET2
	.globl _CY
	.globl _AC
	.globl _F0
	.globl _RS1
	.globl _RS0
	.globl _OV
	.globl _F1
	.globl _P
	.globl _PS
	.globl _PT1
	.globl _PX1
	.globl _PT0
	.globl _PX0
	.globl _RD
	.globl _WR
	.globl _T1
	.globl _T0
	.globl _INT1
	.globl _INT0
	.globl _TXD
	.globl _RXD
	.globl _P3_7
	.globl _P3_6
	.globl _P3_5
	.globl _P3_4
	.globl _P3_3
	.globl _P3_2
	.globl _P3_1
	.globl _P3_0
	.globl _EA
	.globl _ES
	.globl _ET1
	.globl _EX1
	.globl _ET0
	.globl _EX0
	.globl _P2_7
	.globl _P2_6
	.globl _P2_5
	.globl _P2_4
	.globl _P2_3
	.globl _P2_2
	.globl _P2_1
	.globl _P2_0
	.globl _SM0
	.globl _SM1
	.globl _SM2
	.globl _REN
	.globl _TB8
	.globl _RB8
	.globl _TI
	.globl _RI
	.globl _P1_7
	.globl _P1_6
	.globl _P1_5
	.globl _P1_4
	.globl _P1_3
	.globl _P1_2
	.globl _P1_1
	.globl _P1_0
	.globl _TF1
	.globl _TR1
	.globl _TF0
	.globl _TR0
	.globl _IE1
	.globl _IT1
	.globl _IE0
	.globl _IT0
	.globl _P0_7
	.globl _P0_6
	.globl _P0_5
	.globl _P0_4
	.globl _P0_3
	.globl _P0_2
	.globl _P0_1
	.globl _P0_0
	.globl _EECON
	.globl _KBF
	.globl _KBE
	.globl _KBLS
	.globl _BRL
	.globl _BDRCON
	.globl _T2MOD
	.globl _SPDAT
	.globl _SPSTA
	.globl _SPCON
	.globl _SADEN
	.globl _SADDR
	.globl _WDTPRG
	.globl _WDTRST
	.globl _P5
	.globl _P4
	.globl _IPH1
	.globl _IPL1
	.globl _IPH0
	.globl _IPL0
	.globl _IEN1
	.globl _IEN0
	.globl _CMOD
	.globl _CL
	.globl _CH
	.globl _CCON
	.globl _CCAPM4
	.globl _CCAPM3
	.globl _CCAPM2
	.globl _CCAPM1
	.globl _CCAPM0
	.globl _CCAP4L
	.globl _CCAP3L
	.globl _CCAP2L
	.globl _CCAP1L
	.globl _CCAP0L
	.globl _CCAP4H
	.globl _CCAP3H
	.globl _CCAP2H
	.globl _CCAP1H
	.globl _CCAP0H
	.globl _CKCKON1
	.globl _CKCKON0
	.globl _CKRL
	.globl _AUXR1
	.globl _AUXR
	.globl _TH2
	.globl _TL2
	.globl _RCAP2H
	.globl _RCAP2L
	.globl _T2CON
	.globl _B
	.globl _ACC
	.globl _PSW
	.globl _IP
	.globl _P3
	.globl _IE
	.globl _P2
	.globl _SBUF
	.globl _SCON
	.globl _P1
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _PCON
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _P0
	.globl _xbuffer
	.globl _SDCard
	.globl _CardType
	.globl _Stat
	.globl _send_command
	.globl _lcdinit
	.globl _lcdgotoaddr
	.globl _lcdgotoxy
	.globl _lcdputch
	.globl _lcdputstr_currloc
	.globl _lcdputstr
	.globl _get_lcd_addr
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (DATA)
_P0	=	0x0080
_SP	=	0x0081
_DPL	=	0x0082
_DPH	=	0x0083
_PCON	=	0x0087
_TCON	=	0x0088
_TMOD	=	0x0089
_TL0	=	0x008a
_TL1	=	0x008b
_TH0	=	0x008c
_TH1	=	0x008d
_P1	=	0x0090
_SCON	=	0x0098
_SBUF	=	0x0099
_P2	=	0x00a0
_IE	=	0x00a8
_P3	=	0x00b0
_IP	=	0x00b8
_PSW	=	0x00d0
_ACC	=	0x00e0
_B	=	0x00f0
_T2CON	=	0x00c8
_RCAP2L	=	0x00ca
_RCAP2H	=	0x00cb
_TL2	=	0x00cc
_TH2	=	0x00cd
_AUXR	=	0x008e
_AUXR1	=	0x00a2
_CKRL	=	0x0097
_CKCKON0	=	0x008f
_CKCKON1	=	0x00af
_CCAP0H	=	0x00fa
_CCAP1H	=	0x00fb
_CCAP2H	=	0x00fc
_CCAP3H	=	0x00fd
_CCAP4H	=	0x00fe
_CCAP0L	=	0x00ea
_CCAP1L	=	0x00eb
_CCAP2L	=	0x00ec
_CCAP3L	=	0x00ed
_CCAP4L	=	0x00ee
_CCAPM0	=	0x00da
_CCAPM1	=	0x00db
_CCAPM2	=	0x00dc
_CCAPM3	=	0x00dd
_CCAPM4	=	0x00de
_CCON	=	0x00d8
_CH	=	0x00f9
_CL	=	0x00e9
_CMOD	=	0x00d9
_IEN0	=	0x00a8
_IEN1	=	0x00b1
_IPL0	=	0x00b8
_IPH0	=	0x00b7
_IPL1	=	0x00b2
_IPH1	=	0x00b3
_P4	=	0x00c0
_P5	=	0x00d8
_WDTRST	=	0x00a6
_WDTPRG	=	0x00a7
_SADDR	=	0x00a9
_SADEN	=	0x00b9
_SPCON	=	0x00c3
_SPSTA	=	0x00c4
_SPDAT	=	0x00c5
_T2MOD	=	0x00c9
_BDRCON	=	0x009b
_BRL	=	0x009a
_KBLS	=	0x009c
_KBE	=	0x009d
_KBF	=	0x009e
_EECON	=	0x00d2
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (DATA)
_P0_0	=	0x0080
_P0_1	=	0x0081
_P0_2	=	0x0082
_P0_3	=	0x0083
_P0_4	=	0x0084
_P0_5	=	0x0085
_P0_6	=	0x0086
_P0_7	=	0x0087
_IT0	=	0x0088
_IE0	=	0x0089
_IT1	=	0x008a
_IE1	=	0x008b
_TR0	=	0x008c
_TF0	=	0x008d
_TR1	=	0x008e
_TF1	=	0x008f
_P1_0	=	0x0090
_P1_1	=	0x0091
_P1_2	=	0x0092
_P1_3	=	0x0093
_P1_4	=	0x0094
_P1_5	=	0x0095
_P1_6	=	0x0096
_P1_7	=	0x0097
_RI	=	0x0098
_TI	=	0x0099
_RB8	=	0x009a
_TB8	=	0x009b
_REN	=	0x009c
_SM2	=	0x009d
_SM1	=	0x009e
_SM0	=	0x009f
_P2_0	=	0x00a0
_P2_1	=	0x00a1
_P2_2	=	0x00a2
_P2_3	=	0x00a3
_P2_4	=	0x00a4
_P2_5	=	0x00a5
_P2_6	=	0x00a6
_P2_7	=	0x00a7
_EX0	=	0x00a8
_ET0	=	0x00a9
_EX1	=	0x00aa
_ET1	=	0x00ab
_ES	=	0x00ac
_EA	=	0x00af
_P3_0	=	0x00b0
_P3_1	=	0x00b1
_P3_2	=	0x00b2
_P3_3	=	0x00b3
_P3_4	=	0x00b4
_P3_5	=	0x00b5
_P3_6	=	0x00b6
_P3_7	=	0x00b7
_RXD	=	0x00b0
_TXD	=	0x00b1
_INT0	=	0x00b2
_INT1	=	0x00b3
_T0	=	0x00b4
_T1	=	0x00b5
_WR	=	0x00b6
_RD	=	0x00b7
_PX0	=	0x00b8
_PT0	=	0x00b9
_PX1	=	0x00ba
_PT1	=	0x00bb
_PS	=	0x00bc
_P	=	0x00d0
_F1	=	0x00d1
_OV	=	0x00d2
_RS0	=	0x00d3
_RS1	=	0x00d4
_F0	=	0x00d5
_AC	=	0x00d6
_CY	=	0x00d7
_ET2	=	0x00ad
_PT2	=	0x00bd
_T2CON_0	=	0x00c8
_T2CON_1	=	0x00c9
_T2CON_2	=	0x00ca
_T2CON_3	=	0x00cb
_T2CON_4	=	0x00cc
_T2CON_5	=	0x00cd
_T2CON_6	=	0x00ce
_T2CON_7	=	0x00cf
_CP_RL2	=	0x00c8
_C_T2	=	0x00c9
_TR2	=	0x00ca
_EXEN2	=	0x00cb
_TCLK	=	0x00cc
_RCLK	=	0x00cd
_EXF2	=	0x00ce
_TF2	=	0x00cf
_CF	=	0x00df
_CR	=	0x00de
_CCF4	=	0x00dc
_CCF3	=	0x00db
_CCF2	=	0x00da
_CCF1	=	0x00d9
_CCF0	=	0x00d8
_EC	=	0x00ae
_PPCL	=	0x00be
_PT2L	=	0x00bd
_PLS	=	0x00bc
_PT1L	=	0x00bb
_PX1L	=	0x00ba
_PT0L	=	0x00b9
_PX0L	=	0x00b8
_P4_0	=	0x00c0
_P4_1	=	0x00c1
_P4_2	=	0x00c2
_P4_3	=	0x00c3
_P4_4	=	0x00c4
_P4_5	=	0x00c5
_P4_6	=	0x00c6
_P4_7	=	0x00c7
_P5_0	=	0x00d8
_P5_1	=	0x00d9
_P5_2	=	0x00da
_P5_3	=	0x00db
_P5_4	=	0x00dc
_P5_5	=	0x00dd
_P5_6	=	0x00de
_P5_7	=	0x00df
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area OSEG    (OVR,DATA)
;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
_lcdinstwrptr	=	0xf000
_lcdinstrdptr	=	0xf100
_lcddatawrptr	=	0xf200
_lcddatardptr	=	0xf300
_Stat::
	.ds 1
_CardType	=	0x1000
_SDCard	=	0x2000
_xbuffer	=	0x3000
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'send_command'
;------------------------------------------------------------
;cmd                       Allocated to registers r2 
;------------------------------------------------------------
;	Drivers/driver_lcd.c:24: void send_command(unsigned char cmd)
;	-----------------------------------------
;	 function send_command
;	-----------------------------------------
_send_command:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
;	genReceive
	mov	r2,dpl
;	Drivers/driver_lcd.c:26: lcdbusywait();                              // Wait for LCD to get free
00101$:
;	genAssign
	mov	dptr,#_lcdinstrdptr
	movx	a,@dptr
	mov	r3,a
;	genAnd
	anl	ar3,#0x80
;	genCmpEq
;	gencjneshort
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 198.b	optimized misc jump sequence
	cjne	r3,#0x00,00101$
;	Peephole 200.b	removed redundant sjmp
;	Peephole 300	removed redundant label 00112$
;	Peephole 300	removed redundant label 00113$
;	Drivers/driver_lcd.c:27: lcdinstwrptr = cmd; 	                    // Send Instruction/Address
;	genAssign
	mov	dptr,#_lcdinstwrptr
	mov	a,r2
	movx	@dptr,a
;	Drivers/driver_lcd.c:28: lcdbusywait();                              // Wait for LCD to get free
00104$:
;	genAssign
	mov	dptr,#_lcdinstrdptr
	movx	a,@dptr
	mov	r2,a
;	genAnd
	anl	ar2,#0x80
;	genCmpEq
;	gencjneshort
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 198.b	optimized misc jump sequence
	cjne	r2,#0x00,00104$
;	Peephole 200.b	removed redundant sjmp
;	Peephole 300	removed redundant label 00114$
;	Peephole 300	removed redundant label 00115$
;	Peephole 300	removed redundant label 00107$
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'lcdinit'
;------------------------------------------------------------
;------------------------------------------------------------
;	Drivers/driver_lcd.c:32: void lcdinit(void)
;	-----------------------------------------
;	 function lcdinit
;	-----------------------------------------
_lcdinit:
;	Drivers/driver_lcd.c:34: send_command(0x30);
;	genCall
	mov	dpl,#0x30
	lcall	_send_command
;	Drivers/driver_lcd.c:35: Delay(16);                          // Delay longer than 15ms
;	genCall
;	Peephole 182.b	used 16 bit load of dptr
	mov	dptr,#0x0010
	lcall	_Delay
;	Drivers/driver_lcd.c:36: send_command(0x30);
;	genCall
	mov	dpl,#0x30
	lcall	_send_command
;	Drivers/driver_lcd.c:37: Delay(6);			    			// Delay longer than 4.1ms
;	genCall
;	Peephole 182.b	used 16 bit load of dptr
	mov	dptr,#0x0006
	lcall	_Delay
;	Drivers/driver_lcd.c:38: send_command(0x30);
;	genCall
	mov	dpl,#0x30
	lcall	_send_command
;	Drivers/driver_lcd.c:39: send_command(0x38);
;	genCall
	mov	dpl,#0x38
	lcall	_send_command
;	Drivers/driver_lcd.c:40: send_command(0x08);				    // Display Off
;	genCall
	mov	dpl,#0x08
	lcall	_send_command
;	Drivers/driver_lcd.c:41: send_command(0x0C);				    // Display On, Cursor Off, Blink Off
;	genCall
	mov	dpl,#0x0C
	lcall	_send_command
;	Drivers/driver_lcd.c:42: send_command(0x06);  				// Entry Mode Set Command
;	genCall
	mov	dpl,#0x06
	lcall	_send_command
;	Drivers/driver_lcd.c:43: LCD_CLEAR;				            // Clear screen and Reset cursor
;	genCall
	mov	dpl,#0x01
;	Peephole 253.b	replaced lcall/ret with ljmp
	ljmp	_send_command
;
;------------------------------------------------------------
;Allocation info for local variables in function 'lcdgotoaddr'
;------------------------------------------------------------
;addr                      Allocated to registers r2 
;------------------------------------------------------------
;	Drivers/driver_lcd.c:47: void lcdgotoaddr(unsigned char addr)
;	-----------------------------------------
;	 function lcdgotoaddr
;	-----------------------------------------
_lcdgotoaddr:
;	genReceive
	mov	r2,dpl
;	Drivers/driver_lcd.c:49: send_command(addr|0x80);                    // Send Address with a 1 on the MSB for Address Write
;	genOr
	mov	a,#0x80
	orl	a,r2
	mov	dpl,a
;	genCall
;	Peephole 253.b	replaced lcall/ret with ljmp
	ljmp	_send_command
;
;------------------------------------------------------------
;Allocation info for local variables in function 'lcdgotoxy'
;------------------------------------------------------------
;column                    Allocated to stack - offset -3
;row                       Allocated to registers r2 
;------------------------------------------------------------
;	Drivers/driver_lcd.c:53: void lcdgotoxy(unsigned char row, unsigned char column)
;	-----------------------------------------
;	 function lcdgotoxy
;	-----------------------------------------
_lcdgotoxy:
	push	_bp
	mov	_bp,sp
;	genReceive
	mov	r2,dpl
;	Drivers/driver_lcd.c:55: switch (row)                                // Switch through row and send corresponding address to LCD
;	genCmpEq
;	gencjneshort
	cjne	r2,#0x00,00111$
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00101$
00111$:
;	genCmpEq
;	gencjneshort
	cjne	r2,#0x01,00112$
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00102$
00112$:
;	genCmpEq
;	gencjneshort
;	Peephole 112.b	changed ljmp to sjmp
;	Drivers/driver_lcd.c:57: case 0:
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 198.b	optimized misc jump sequence
	cjne	r2,#0x02,00104$
	sjmp	00103$
;	Peephole 300	removed redundant label 00113$
00101$:
;	Drivers/driver_lcd.c:58: send_command(0x80 + column);            // 0x80 + column in second nibble for row 0
;	genPlus
	mov	r0,_bp
	dec	r0
	dec	r0
	dec	r0
;     genPlusIncr
	mov	a,#0x80
	add	a,@r0
	mov	dpl,a
;	genCall
	lcall	_send_command
;	Drivers/driver_lcd.c:59: break;
;	Drivers/driver_lcd.c:60: case 1:
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00106$
00102$:
;	Drivers/driver_lcd.c:61: send_command(0xC0 + column);            // 0xC0 + column for row 1
;	genPlus
	mov	r0,_bp
	dec	r0
	dec	r0
	dec	r0
;     genPlusIncr
	mov	a,#0xC0
	add	a,@r0
	mov	dpl,a
;	genCall
	lcall	_send_command
;	Drivers/driver_lcd.c:62: break;
;	Drivers/driver_lcd.c:63: case 2:
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00106$
00103$:
;	Drivers/driver_lcd.c:64: send_command(0x90 + column);            // 0x90 + column for row 2
;	genPlus
	mov	r0,_bp
	dec	r0
	dec	r0
	dec	r0
;     genPlusIncr
	mov	a,#0x90
	add	a,@r0
	mov	dpl,a
;	genCall
	lcall	_send_command
;	Drivers/driver_lcd.c:65: break;
;	Drivers/driver_lcd.c:66: default:
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00106$
00104$:
;	Drivers/driver_lcd.c:67: send_command(0xD0 + column);            // 0xD0 + column for row 3
;	genPlus
	mov	r0,_bp
	dec	r0
	dec	r0
	dec	r0
;     genPlusIncr
	mov	a,#0xD0
	add	a,@r0
	mov	dpl,a
;	genCall
	lcall	_send_command
;	Drivers/driver_lcd.c:69: }
00106$:
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'lcdputch'
;------------------------------------------------------------
;value                     Allocated to registers r2 
;row                       Allocated to registers r3 
;cursor_loc                Allocated to registers r2 
;------------------------------------------------------------
;	Drivers/driver_lcd.c:73: void lcdputch(char value)
;	-----------------------------------------
;	 function lcdputch
;	-----------------------------------------
_lcdputch:
;	genReceive
	mov	r2,dpl
;	Drivers/driver_lcd.c:77: switch (value)                              // Switch through character to be printed
;	genCmpEq
;	gencjneshort
	cjne	r2,#0x0A,00143$
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00102$
00143$:
;	genCmpEq
;	gencjneshort
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 198.b	optimized misc jump sequence
	cjne	r2,#0x0D,00114$
;	Peephole 200.b	removed redundant sjmp
;	Peephole 300	removed redundant label 00144$
;	Peephole 300	removed redundant label 00145$
;	Drivers/driver_lcd.c:80: value = 0x80|get_lcd_addr()&0xF0;
;	genCall
	lcall	_get_lcd_addr
	mov	a,dpl
;	genAnd
	anl	a,#0xF0
	mov	r3,a
;	genOr
	mov	a,#0x80
	orl	a,r3
;	Drivers/driver_lcd.c:81: lcdgotoaddr(value);
;	genCall
	mov	r2,a
;	Peephole 244.c	loading dpl from a instead of r2
	mov	dpl,a
;	Drivers/driver_lcd.c:82: break;
;	Peephole 251.a	replaced ljmp to ret with ret
;	Peephole 253.a	replaced lcall/ret with ljmp
	ljmp	_lcdgotoaddr
;	Drivers/driver_lcd.c:83: case '\n':                                  // If /n then goto next row
00102$:
;	Drivers/driver_lcd.c:84: value = get_lcd_addr();
;	genCall
	lcall	_get_lcd_addr
	mov	r2,dpl
;	Drivers/driver_lcd.c:85: row = value & 0xF0;
;	genAnd
	mov	a,#0xF0
	anl	a,r2
;	Drivers/driver_lcd.c:86: if (row == 0x00) row = 1;
;	genIfx
	mov	r3,a
;	Peephole 105	removed redundant mov
;	genIfxJump
;	Peephole 108.b	removed ljmp by inverse jump logic
	jnz	00112$
;	Peephole 300	removed redundant label 00146$
;	genAssign
	mov	r3,#0x01
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00113$
00112$:
;	Drivers/driver_lcd.c:87: else if (row == 0x40) row = 2;
;	genCmpEq
;	gencjneshort
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 198.b	optimized misc jump sequence
	cjne	r3,#0x40,00109$
;	Peephole 200.b	removed redundant sjmp
;	Peephole 300	removed redundant label 00147$
;	Peephole 300	removed redundant label 00148$
;	genAssign
	mov	r3,#0x02
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00113$
00109$:
;	Drivers/driver_lcd.c:88: else if (row == 0x10) row = 3;
;	genCmpEq
;	gencjneshort
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 198.b	optimized misc jump sequence
	cjne	r3,#0x10,00106$
;	Peephole 200.b	removed redundant sjmp
;	Peephole 300	removed redundant label 00149$
;	Peephole 300	removed redundant label 00150$
;	genAssign
	mov	r3,#0x03
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00113$
00106$:
;	Drivers/driver_lcd.c:89: else if (row == 0x50) row = 0;
;	genCmpEq
;	gencjneshort
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 198.b	optimized misc jump sequence
	cjne	r3,#0x50,00113$
;	Peephole 200.b	removed redundant sjmp
;	Peephole 300	removed redundant label 00151$
;	Peephole 300	removed redundant label 00152$
;	genAssign
	mov	r3,#0x00
00113$:
;	Drivers/driver_lcd.c:90: lcdgotoxy(row,value&0x00);
;	genIpush
;	Peephole 181	changed mov to clr
	clr	a
	push	acc
;	genCall
	mov	dpl,r3
	lcall	_lcdgotoxy
	dec	sp
;	Drivers/driver_lcd.c:91: break;
;	Peephole 251.a	replaced ljmp to ret with ret
	ret
;	Drivers/driver_lcd.c:92: default:                                    // For all other characters print as it is
00114$:
;	Drivers/driver_lcd.c:93: lcddatawrptr = value;                         // Send character to be printed
;	genAssign
	mov	dptr,#_lcddatawrptr
	mov	a,r2
	movx	@dptr,a
;	Drivers/driver_lcd.c:94: Delay(2);
;	genCall
;	Peephole 182.b	used 16 bit load of dptr
	mov	dptr,#0x0002
	lcall	_Delay
;	Drivers/driver_lcd.c:95: cursor_loc = get_lcd_addr();            // This code is for next row selection correction
;	genCall
	lcall	_get_lcd_addr
	mov	r2,dpl
;	genAssign
;	Drivers/driver_lcd.c:96: if (cursor_loc == 0x40)                 // -- The logic used is to check where the cursor lands
;	genCmpEq
;	gencjneshort
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 198.b	optimized misc jump sequence
	cjne	r2,#0x40,00127$
;	Peephole 200.b	removed redundant sjmp
;	Peephole 300	removed redundant label 00153$
;	Peephole 300	removed redundant label 00154$
;	Drivers/driver_lcd.c:97: lcdgotoxy(3,0);                     // -- and set it at where it is supposed to land after
;	genIpush
;	Peephole 181	changed mov to clr
	clr	a
	push	acc
;	genCall
	mov	dpl,#0x03
	lcall	_lcdgotoxy
	dec	sp
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 251.b	replaced sjmp to ret with ret
	ret
00127$:
;	Drivers/driver_lcd.c:98: else if (cursor_loc == 0x10)            // -- each character is printed
;	genCmpEq
;	gencjneshort
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 198.b	optimized misc jump sequence
	cjne	r2,#0x10,00124$
;	Peephole 200.b	removed redundant sjmp
;	Peephole 300	removed redundant label 00155$
;	Peephole 300	removed redundant label 00156$
;	Drivers/driver_lcd.c:99: lcdgotoxy(1,0);
;	genIpush
;	Peephole 181	changed mov to clr
	clr	a
	push	acc
;	genCall
	mov	dpl,#0x01
	lcall	_lcdgotoxy
	dec	sp
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 251.b	replaced sjmp to ret with ret
	ret
00124$:
;	Drivers/driver_lcd.c:100: else if (cursor_loc == 0x50)
;	genCmpEq
;	gencjneshort
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 198.b	optimized misc jump sequence
	cjne	r2,#0x50,00121$
;	Peephole 200.b	removed redundant sjmp
;	Peephole 300	removed redundant label 00157$
;	Peephole 300	removed redundant label 00158$
;	Drivers/driver_lcd.c:101: lcdgotoxy(2,0);
;	genIpush
;	Peephole 181	changed mov to clr
	clr	a
	push	acc
;	genCall
	mov	dpl,#0x02
	lcall	_lcdgotoxy
	dec	sp
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 251.b	replaced sjmp to ret with ret
	ret
00121$:
;	Drivers/driver_lcd.c:102: else if (cursor_loc == 0x20)
;	genCmpEq
;	gencjneshort
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 198.b	optimized misc jump sequence
	cjne	r2,#0x20,00118$
;	Peephole 200.b	removed redundant sjmp
;	Peephole 300	removed redundant label 00159$
;	Peephole 300	removed redundant label 00160$
;	Drivers/driver_lcd.c:103: lcdgotoxy(3,0);
;	genIpush
;	Peephole 181	changed mov to clr
	clr	a
	push	acc
;	genCall
	mov	dpl,#0x03
	lcall	_lcdgotoxy
	dec	sp
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 251.b	replaced sjmp to ret with ret
	ret
00118$:
;	Drivers/driver_lcd.c:104: else if (cursor_loc == 0x60)
;	genCmpEq
;	gencjneshort
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 198.b	optimized misc jump sequence
	cjne	r2,#0x60,00130$
;	Peephole 200.b	removed redundant sjmp
;	Peephole 300	removed redundant label 00161$
;	Peephole 300	removed redundant label 00162$
;	Drivers/driver_lcd.c:105: lcdgotoxy(0,0);
;	genIpush
;	Peephole 181	changed mov to clr
	clr	a
	push	acc
;	genCall
	mov	dpl,#0x00
	lcall	_lcdgotoxy
	dec	sp
;	Drivers/driver_lcd.c:107: }
00130$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'lcdputstr_currloc'
;------------------------------------------------------------
;string                    Allocated to registers r2 r3 r4 
;------------------------------------------------------------
;	Drivers/driver_lcd.c:111: void lcdputstr_currloc(char *string)
;	-----------------------------------------
;	 function lcdputstr_currloc
;	-----------------------------------------
_lcdputstr_currloc:
;	genReceive
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
;	Drivers/driver_lcd.c:113: while(*string!='\0')                        // Send to LCD till end of string
;	genAssign
00101$:
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
;	genCmpEq
;	gencjneshort
;	Peephole 112.b	changed ljmp to sjmp
	mov	r5,a
;	Peephole 115.b	jump optimization
	jz	00104$
;	Peephole 300	removed redundant label 00109$
;	Drivers/driver_lcd.c:114: lcdputch(*string++);
;	genAssign
;	genPlus
;     genPlusIncr
	inc	r2
	cjne	r2,#0x00,00110$
	inc	r3
00110$:
;	genCall
	mov	dpl,r5
	push	ar2
	push	ar3
	push	ar4
	lcall	_lcdputch
	pop	ar4
	pop	ar3
	pop	ar2
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00101$
00104$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'lcdputstr'
;------------------------------------------------------------
;string                    Allocated to registers r2 r3 r4 
;------------------------------------------------------------
;	Drivers/driver_lcd.c:118: void lcdputstr(char *string)
;	-----------------------------------------
;	 function lcdputstr
;	-----------------------------------------
_lcdputstr:
;	genReceive
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
;	Drivers/driver_lcd.c:120: LCD_CLEAR;                                  // Clear Screen
;	genCall
	mov	dpl,#0x01
	push	ar2
	push	ar3
	push	ar4
	lcall	_send_command
	pop	ar4
	pop	ar3
	pop	ar2
;	Drivers/driver_lcd.c:121: Delay(2);
;	genCall
;	Peephole 182.b	used 16 bit load of dptr
	mov	dptr,#0x0002
	push	ar2
	push	ar3
	push	ar4
	lcall	_Delay
	pop	ar4
	pop	ar3
	pop	ar2
;	Drivers/driver_lcd.c:122: while(*string!='\0')                        // Send to LCD till end of string
;	genAssign
00101$:
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
;	genCmpEq
;	gencjneshort
;	Peephole 112.b	changed ljmp to sjmp
	mov	r5,a
;	Peephole 115.b	jump optimization
	jz	00104$
;	Peephole 300	removed redundant label 00109$
;	Drivers/driver_lcd.c:123: lcdputch(*string++);
;	genAssign
;	genPlus
;     genPlusIncr
	inc	r2
	cjne	r2,#0x00,00110$
	inc	r3
00110$:
;	genCall
	mov	dpl,r5
	push	ar2
	push	ar3
	push	ar4
	lcall	_lcdputch
	pop	ar4
	pop	ar3
	pop	ar2
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00101$
00104$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'get_lcd_addr'
;------------------------------------------------------------
;address                   Allocated to registers 
;------------------------------------------------------------
;	Drivers/driver_lcd.c:127: unsigned char get_lcd_addr(void)
;	-----------------------------------------
;	 function get_lcd_addr
;	-----------------------------------------
_get_lcd_addr:
;	Drivers/driver_lcd.c:130: lcdbusywait();
00101$:
;	genAssign
	mov	dptr,#_lcdinstrdptr
	movx	a,@dptr
	mov	r2,a
;	genAnd
	anl	ar2,#0x80
;	genCmpEq
;	gencjneshort
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 198.b	optimized misc jump sequence
	cjne	r2,#0x00,00101$
;	Peephole 200.b	removed redundant sjmp
;	Peephole 300	removed redundant label 00108$
;	Peephole 300	removed redundant label 00109$
;	Drivers/driver_lcd.c:131: address = (lcdinstrdptr & 0x7F);			// Remove Busy Flag(MSB) to get address
;	genAssign
	mov	dptr,#_lcdinstrdptr
	movx	a,@dptr
	mov	r2,a
;	genAnd
	mov	a,#0x7F
	anl	a,r2
	mov	dpl,a
;	Drivers/driver_lcd.c:132: return (address);
;	genRet
;	Peephole 300	removed redundant label 00104$
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
