;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.6.0 #4309 (Jul 28 2006)
; This file generated Sat May 02 15:12:57 2015
;--------------------------------------------------------
	.module serio
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
	.globl _putchar
	.globl _getchar
	.globl _atoi
	.globl _atox
	.globl _getnumber
	.globl _getnumbetween
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
; overlayable bit register bank
;--------------------------------------------------------
	.area BIT_BANK	(REL,OVR,DATA)
bits:
	.ds 1
	b0 = bits[0]
	b1 = bits[1]
	b2 = bits[2]
	b3 = bits[3]
	b4 = bits[4]
	b5 = bits[5]
	b6 = bits[6]
	b7 = bits[7]
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
;Allocation info for local variables in function 'putchar'
;------------------------------------------------------------
;c                         Allocated to registers 
;------------------------------------------------------------
;	Drivers/serio.c:22: void putchar (char c)
;	-----------------------------------------
;	 function putchar
;	-----------------------------------------
_putchar:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
;	genReceive
	mov	_SBUF,dpl
;	Drivers/serio.c:25: while (!TI); 		            // Wait for TX ready on TI
00101$:
;	genIfx
;	genIfxJump
;	Peephole 108.d	removed ljmp by inverse jump logic
;	Drivers/serio.c:26: TI = 0;  			            // Clear TI flag
;	genAssign
;	Peephole 250.a	using atomic test and clear
	jbc	_TI,00108$
	sjmp	00101$
00108$:
;	Peephole 300	removed redundant label 00104$
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'getchar'
;------------------------------------------------------------
;------------------------------------------------------------
;	Drivers/serio.c:30: char getchar (void)
;	-----------------------------------------
;	 function getchar
;	-----------------------------------------
_getchar:
;	Drivers/serio.c:32: while (!RI);                 	// Wait for character to be received on RI
00101$:
;	genIfx
;	genIfxJump
;	Peephole 108.d	removed ljmp by inverse jump logic
;	Drivers/serio.c:33: RI = 0;				            // Clear RI flag
;	genAssign
;	Peephole 250.a	using atomic test and clear
	jbc	_RI,00108$
	sjmp	00101$
00108$:
;	Drivers/serio.c:34: return SBUF;  		            // Return character from SBUF
;	genAssign
	mov	dpl,_SBUF
;	genRet
;	Peephole 300	removed redundant label 00104$
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'atoi'
;------------------------------------------------------------
;line                      Allocated to registers r2 r3 r4 
;sign                      Allocated to registers b0 
;number                    Allocated to registers r5 r6 
;sloc0                     Allocated to stack - offset 1
;------------------------------------------------------------
;	Drivers/serio.c:38: int atoi (char *line)
;	-----------------------------------------
;	 function atoi
;	-----------------------------------------
_atoi:
	push	_bp
	mov	_bp,sp
	inc	sp
;	genReceive
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
;	Drivers/serio.c:44: sign = 1;                                                           /* establish sign */
;	genAssign
	mov	ar5,r2
	mov	ar6,r3
	mov	ar7,r4
00114$:
;	Drivers/serio.c:43: for ( ; *line == ' ' || *line == '\r\n' || *line == '\t'; line++);  /* skip white space */
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,_bp
	inc	r0
	lcall	__gptrget
	mov	@r0,a
;	genCmpEq
	mov	r0,_bp
	inc	r0
;	gencjneshort
	cjne	@r0,#0x20,00132$
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00116$
00132$:
;	genCmpEq
	mov	r0,_bp
	inc	r0
;	gencjneshort
	cjne	@r0,#0x0D,00133$
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00116$
00133$:
;	genCmpEq
	mov	r0,_bp
	inc	r0
;	gencjneshort
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 198.b	optimized misc jump sequence
	cjne	@r0,#0x09,00131$
;	Peephole 200.b	removed redundant sjmp
;	Peephole 300	removed redundant label 00134$
;	Peephole 300	removed redundant label 00135$
00116$:
;	genPlus
;     genPlusIncr
;	tail increment optimized (range 9)
	inc	r5
	cjne	r5,#0x00,00114$
	inc	r6
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00114$
00131$:
;	genAssign
	mov	ar2,r5
	mov	ar3,r6
	mov	ar4,r7
;	Drivers/serio.c:44: sign = 1;                                                           /* establish sign */
;	genAssign
	setb	b0
;	Drivers/serio.c:45: if (*line == '+' || *line == '-')  sign = (*line++ == '+');
;	genCmpEq
	mov	r0,_bp
	inc	r0
;	gencjneshort
	cjne	@r0,#0x2B,00136$
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00101$
00136$:
;	genCmpEq
	mov	r0,_bp
	inc	r0
;	gencjneshort
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 198.b	optimized misc jump sequence
	cjne	@r0,#0x2D,00102$
;	Peephole 200.b	removed redundant sjmp
;	Peephole 300	removed redundant label 00137$
;	Peephole 300	removed redundant label 00138$
00101$:
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	mov	r2,dpl
	mov	r3,dph
;	genCmpEq
;	gencjne
;	gencjneshort
;	Peephole 241.d	optimized compare
	clr	a
	cjne	r5,#0x2B,00139$
	inc	a
00139$:
;	Peephole 300	removed redundant label 00140$
	add	a,#0xff
	mov	b0,c
00102$:
;	Drivers/serio.c:46: for (number=0;*line != '\r\n'; line++)                              /* compute decimal value */
;	genAssign
	mov	r5,#0x00
	mov	r6,#0x00
;	genAssign
00108$:
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r7,a
;	genCmpEq
;	gencjneshort
	cjne	r7,#0x0D,00141$
	ljmp	00111$
00141$:
;	Drivers/serio.c:48: if(*line >= '0' && *line <= '9') number = (number * 10) + (*line - '0');
;	genCmpLt
;	genCmp
	clr	c
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0xb0
;	genIfxJump
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 160.a	removed sjmp by inverse jump logic
;	genCmpGt
;	genCmp
	jc	00105$
;	Peephole 300	removed redundant label 00142$
;	Peephole 256.a	removed redundant clr c
;	Peephole 159	avoided xrl during execution
	mov	a,#(0x39 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
;	genIfxJump
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 160.a	removed sjmp by inverse jump logic
	jc	00105$
;	Peephole 300	removed redundant label 00143$
;	genIpush
	push	ar2
	push	ar3
	push	ar4
;	genIpush
	push	ar4
	push	ar7
	push	bits
	mov	a,#0x0A
	push	acc
;	Peephole 181	changed mov to clr
	clr	a
	push	acc
;	genCall
	mov	dpl,r5
	mov	dph,r6
	lcall	__mulint
	mov	r2,dpl
	mov	r3,dph
	dec	sp
	dec	sp
	pop	bits
	pop	ar7
	pop	ar4
;	genCast
	mov	a,r7
	rlc	a
	subb	a,acc
	mov	r4,a
;	genMinus
	mov	a,r7
	add	a,#0xd0
	mov	r7,a
	mov	a,r4
	addc	a,#0xff
	mov	r4,a
;	genPlus
;	Peephole 236.g	used r7 instead of ar7
	mov	a,r7
;	Peephole 236.a	used r2 instead of ar2
	add	a,r2
	mov	r2,a
;	Peephole 236.g	used r4 instead of ar4
	mov	a,r4
;	Peephole 236.b	used r3 instead of ar3
	addc	a,r3
	mov	r3,a
;	genAssign
	mov	ar5,r2
	mov	ar6,r3
;	genIpop
	pop	ar4
	pop	ar3
	pop	ar2
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00110$
00105$:
;	Drivers/serio.c:51: printf_tiny("\r\n  Invalid Entry.\0338       \0338");
;	genIpush
	push	bits
	mov	a,#__str_0
	push	acc
	mov	a,#(__str_0 >> 8)
	push	acc
;	genCall
	lcall	_printf_tiny
	dec	sp
	dec	sp
	pop	bits
;	Drivers/serio.c:52: number=FAIL;
;	genAssign
	mov	r5,#0xFF
	mov	r6,#0xFF
;	Drivers/serio.c:53: break;
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00111$
00110$:
;	Drivers/serio.c:46: for (number=0;*line != '\r\n'; line++)                              /* compute decimal value */
;	genPlus
;     genPlusIncr
	inc	r2
	cjne	r2,#0x00,00144$
	inc	r3
00144$:
	ljmp	00108$
00111$:
;	Drivers/serio.c:56: return (sign ? number : -number);
;	genIfx
;	genIfxJump
;	Peephole 108.d	removed ljmp by inverse jump logic
	jnb	b0,00120$
;	Peephole 300	removed redundant label 00145$
;	genAssign
	mov	ar2,r5
	mov	ar3,r6
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00121$
00120$:
;	genUminus
	clr	c
	clr	a
	subb	a,r5
	mov	r2,a
	clr	a
	subb	a,r6
	mov	r3,a
00121$:
;	genRet
	mov	dpl,r2
	mov	dph,r3
;	Peephole 300	removed redundant label 00118$
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'atox'
;------------------------------------------------------------
;line                      Allocated to registers r2 r3 r4 
;number                    Allocated to registers r5 r6 
;sloc0                     Allocated to stack - offset 1
;------------------------------------------------------------
;	Drivers/serio.c:60: unsigned int atox (char *line)
;	-----------------------------------------
;	 function atox
;	-----------------------------------------
_atox:
	push	_bp
	mov	_bp,sp
	inc	sp
	inc	sp
;	genReceive
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
;	Drivers/serio.c:76: }
;	genAssign
00119$:
;	Drivers/serio.c:64: for ( ; *line == ' ' || *line == '\r\n' || *line == '\t'; line++);  /* skip white space */
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r5,a
;	genCmpEq
;	gencjneshort
	cjne	r5,#0x20,00137$
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00121$
00137$:
;	genCmpEq
;	gencjneshort
	cjne	r5,#0x0D,00138$
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00121$
00138$:
;	genCmpEq
;	gencjneshort
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 198.b	optimized misc jump sequence
	cjne	r5,#0x09,00122$
;	Peephole 200.b	removed redundant sjmp
;	Peephole 300	removed redundant label 00139$
;	Peephole 300	removed redundant label 00140$
00121$:
;	genPlus
;     genPlusIncr
;	tail increment optimized (range 9)
	inc	r2
	cjne	r2,#0x00,00119$
	inc	r3
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00119$
00122$:
;	Drivers/serio.c:65: for (number=0;*line != '\r\n'; line++)                              /* compute hexadecimal value */
;	genAssign
	mov	r5,#0x00
	mov	r6,#0x00
;	genAssign
00113$:
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r7,a
;	genCmpEq
;	gencjneshort
	cjne	r7,#0x0D,00141$
	ljmp	00116$
00141$:
;	Drivers/serio.c:67: if(*line >= '0' && *line <= '9') number = (number * 16) + (*line - '0');
;	genCmpLt
;	genCmp
	clr	c
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0xb0
;	genIfxJump
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 160.a	removed sjmp by inverse jump logic
;	genCmpGt
;	genCmp
	jc	00110$
;	Peephole 300	removed redundant label 00142$
;	Peephole 256.a	removed redundant clr c
;	Peephole 159	avoided xrl during execution
	mov	a,#(0x39 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
;	genIfxJump
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 160.a	removed sjmp by inverse jump logic
	jc	00110$
;	Peephole 300	removed redundant label 00143$
;	genIpush
	push	ar2
	push	ar3
	push	ar4
;	genLeftShift
;	genLeftShiftLiteral
;	genlshTwo
	mov	ar2,r5
	mov	a,r6
	swap	a
	anl	a,#0xf0
	xch	a,r2
	swap	a
	xch	a,r2
	xrl	a,r2
	xch	a,r2
	anl	a,#0xf0
	xch	a,r2
	xrl	a,r2
	mov	r3,a
;	genCast
	mov	a,r7
	rlc	a
	subb	a,acc
	mov	r4,a
;	genMinus
	mov	a,r7
	add	a,#0xd0
	mov	r7,a
	mov	a,r4
	addc	a,#0xff
	mov	r4,a
;	genPlus
;	Peephole 236.g	used r7 instead of ar7
	mov	a,r7
;	Peephole 236.a	used r2 instead of ar2
	add	a,r2
	mov	r2,a
;	Peephole 236.g	used r4 instead of ar4
	mov	a,r4
;	Peephole 236.b	used r3 instead of ar3
	addc	a,r3
	mov	r3,a
;	genAssign
	mov	ar5,r2
	mov	ar6,r3
;	genIpop
	pop	ar4
	pop	ar3
	pop	ar2
	ljmp	00115$
00110$:
;	Drivers/serio.c:68: else if(*line >= 'a' && *line <= 'f') number = (number * 16) + (*line - 'a'+10);
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
;	genCmpLt
;	genCmp
	mov	r7,a
	clr	c
;	Peephole 106	removed redundant mov
	xrl	a,#0x80
	subb	a,#0xe1
;	genIfxJump
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 160.a	removed sjmp by inverse jump logic
;	genCmpGt
;	genCmp
	jc	00106$
;	Peephole 300	removed redundant label 00144$
;	Peephole 256.a	removed redundant clr c
;	Peephole 159	avoided xrl during execution
	mov	a,#(0x66 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
;	genIfxJump
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 160.a	removed sjmp by inverse jump logic
	jc	00106$
;	Peephole 300	removed redundant label 00145$
;	genIpush
	push	ar2
	push	ar3
	push	ar4
;	genLeftShift
;	genLeftShiftLiteral
	mov	r0,_bp
	inc	r0
;	genlshTwo
	mov	@r0,ar5
	mov	a,r6
	swap	a
	anl	a,#0xf0
	xch	a,@r0
	swap	a
	xch	a,@r0
	xrl	a,@r0
	xch	a,@r0
	anl	a,#0xf0
	xch	a,@r0
	xrl	a,@r0
	inc	r0
	mov	@r0,a
;	genCast
;	peephole 177.h	optimized mov sequence
	mov	a,r7
;	Peephole 236.i	used r4 instead of ar4
	mov	r4,a
	rlc	a
	subb	a,acc
	mov	r2,a
;	genPlus
;     genPlusIncr
	mov	a,#0xA9
;	Peephole 236.a	used r4 instead of ar4
	add	a,r4
	mov	r4,a
	mov	a,#0xFF
;	Peephole 236.b	used r2 instead of ar2
	addc	a,r2
	mov	r2,a
;	genPlus
	mov	r0,_bp
	inc	r0
;	Peephole 236.g	used r4 instead of ar4
	mov	a,r4
	add	a,@r0
	mov	r4,a
;	Peephole 236.g	used r2 instead of ar2
	mov	a,r2
	inc	r0
	addc	a,@r0
	mov	r2,a
;	genAssign
	mov	ar5,r4
	mov	ar6,r2
;	genIpop
	pop	ar4
	pop	ar3
	pop	ar2
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00115$
00106$:
;	Drivers/serio.c:69: else if(*line >= 'A' && *line <= 'F') number = (number * 16) + (*line - 'A'+10);
;	genCmpLt
;	genCmp
	clr	c
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0xc1
;	genIfxJump
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 160.a	removed sjmp by inverse jump logic
;	genCmpGt
;	genCmp
	jc	00102$
;	Peephole 300	removed redundant label 00146$
;	Peephole 256.a	removed redundant clr c
;	Peephole 159	avoided xrl during execution
	mov	a,#(0x46 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
;	genIfxJump
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 160.a	removed sjmp by inverse jump logic
	jc	00102$
;	Peephole 300	removed redundant label 00147$
;	genIpush
	push	ar2
	push	ar3
	push	ar4
;	genLeftShift
;	genLeftShiftLiteral
;	genlshTwo
	mov	ar2,r5
	mov	a,r6
	swap	a
	anl	a,#0xf0
	xch	a,r2
	swap	a
	xch	a,r2
	xrl	a,r2
	xch	a,r2
	anl	a,#0xf0
	xch	a,r2
	xrl	a,r2
	mov	r3,a
;	genCast
	mov	a,r7
	rlc	a
	subb	a,acc
	mov	r4,a
;	genPlus
;     genPlusIncr
	mov	a,#0xC9
;	Peephole 236.a	used r7 instead of ar7
	add	a,r7
	mov	r7,a
	mov	a,#0xFF
;	Peephole 236.b	used r4 instead of ar4
	addc	a,r4
	mov	r4,a
;	genPlus
;	Peephole 236.g	used r7 instead of ar7
	mov	a,r7
;	Peephole 236.a	used r2 instead of ar2
	add	a,r2
	mov	r2,a
;	Peephole 236.g	used r4 instead of ar4
	mov	a,r4
;	Peephole 236.b	used r3 instead of ar3
	addc	a,r3
	mov	r3,a
;	genAssign
	mov	ar5,r2
	mov	ar6,r3
;	genIpop
	pop	ar4
	pop	ar3
	pop	ar2
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00115$
00102$:
;	Drivers/serio.c:72: printf_tiny("\r\n  Invalid Entry.\0338       \0338");
;	genIpush
	mov	a,#__str_0
	push	acc
	mov	a,#(__str_0 >> 8)
	push	acc
;	genCall
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	Drivers/serio.c:73: number=FAIL;
;	genAssign
	mov	r5,#0xFF
	mov	r6,#0xFF
;	Drivers/serio.c:74: break;
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00116$
00115$:
;	Drivers/serio.c:65: for (number=0;*line != '\r\n'; line++)                              /* compute hexadecimal value */
;	genPlus
;     genPlusIncr
	inc	r2
	cjne	r2,#0x00,00148$
	inc	r3
00148$:
	ljmp	00113$
00116$:
;	Drivers/serio.c:77: return (number);
;	genRet
	mov	dpl,r5
	mov	dph,r6
;	Peephole 300	removed redundant label 00123$
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'getnumber'
;------------------------------------------------------------
;lengthnum                 Allocated to registers r2 r3 
;spot                      Allocated to registers r4 r5 
;line                      Allocated to stack - offset 1
;------------------------------------------------------------
;	Drivers/serio.c:81: unsigned int getnumber (int lengthnum)
;	-----------------------------------------
;	 function getnumber
;	-----------------------------------------
_getnumber:
	push	_bp
;	peephole 177.h	optimized mov sequence
	mov	a,sp
	mov	_bp,a
	add	a,#0x07
	mov	sp,a
;	genReceive
	mov	r2,dpl
	mov	r3,dph
;	Drivers/serio.c:83: int spot=0;
;	genAssign
;	Drivers/serio.c:85: while ((line[spot] = getchar()) != '\r\n')
;	genAddrOf
;	Peephole 3.c	changed mov to clr
	clr	a
	mov	r4,a
	mov	r5,a
;	Peephole 212	reduced add sequence to inc
	mov	r6,_bp
	inc	r6
;	genPlus
;     genPlusIncr
	inc	r2
	cjne	r2,#0x00,00123$
	inc	r3
00123$:
00111$:
;	genPlus
;	Peephole 236.g	used r4 instead of ar4
	mov	a,r4
;	Peephole 236.a	used r6 instead of ar6
	add	a,r6
	mov	r0,a
;	genCall
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	push	ar6
	push	ar0
	lcall	_getchar
	mov	r7,dpl
	pop	ar0
	pop	ar6
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
;	genPointerSet
;	genNearPointerSet
	mov	@r0,ar7
;	genCmpEq
;	gencjneshort
	cjne	r7,#0x0D,00124$
	ljmp	00113$
00124$:
;	Drivers/serio.c:87: if (line[spot]=='\b')                   // Process Backspace
;	genPointerGet
;	genNearPointerGet
	mov	ar7,@r0
;	genCmpEq
;	gencjneshort
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 198.b	optimized misc jump sequence
	cjne	r7,#0x08,00109$
;	Peephole 200.b	removed redundant sjmp
;	Peephole 300	removed redundant label 00125$
;	Peephole 300	removed redundant label 00126$
;	Drivers/serio.c:89: if(spot >0)
;	genCmpGt
;	genCmp
	clr	c
;	Peephole 181	changed mov to clr
	clr	a
	subb	a,r4
;	Peephole 159	avoided xrl during execution
	mov	a,#(0x00 ^ 0x80)
	mov	b,r5
	xrl	b,#0x80
	subb	a,b
;	genIfxJump
;	Peephole 108.a	removed ljmp by inverse jump logic
	jnc	00111$
;	Peephole 300	removed redundant label 00127$
;	Drivers/serio.c:91: line[spot--]='\r\n';
;	genIpush
	push	ar2
	push	ar3
;	genAssign
	mov	ar7,r4
	mov	ar2,r5
;	genMinus
;	genMinusDec
	dec	r4
	cjne	r4,#0xff,00128$
	dec	r5
00128$:
;	genPlus
;	Peephole 236.g	used r7 instead of ar7
	mov	a,r7
;	Peephole 236.a	used r6 instead of ar6
	add	a,r6
	mov	r1,a
;	genPointerSet
;	genNearPointerSet
	mov	@r1,#0x0D
;	Drivers/serio.c:92: putchar('\bs');
;	genCall
	mov	dpl,#0x08
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	push	ar6
	lcall	_putchar
	pop	ar6
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
;	Drivers/serio.c:93: putchar(' ');
;	genCall
	mov	dpl,#0x20
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	push	ar6
	lcall	_putchar
	pop	ar6
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
;	Drivers/serio.c:94: putchar('\bs');
;	genCall
	mov	dpl,#0x08
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	push	ar6
	lcall	_putchar
	pop	ar6
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
;	genIpop
	pop	ar3
	pop	ar2
	ljmp	00111$
00109$:
;	Drivers/serio.c:97: else if ((line[spot]>='0')&&(line[spot]<='9'))
;	genPointerGet
;	genNearPointerGet
	mov	ar7,@r0
;	genCmpLt
;	genCmp
	clr	c
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0xb0
;	genIfxJump
	jnc	00129$
	ljmp	00111$
00129$:
;	genPointerGet
;	genNearPointerGet
	mov	ar7,@r0
;	genCmpGt
;	genCmp
	clr	c
;	Peephole 159	avoided xrl during execution
	mov	a,#(0x39 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
;	genIfxJump
	jnc	00130$
	ljmp	00111$
00130$:
;	Drivers/serio.c:99: putchar(line[spot]);
;	genPointerGet
;	genNearPointerGet
	mov	dpl,@r0
;	genCall
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	push	ar6
	lcall	_putchar
	pop	ar6
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
;	Drivers/serio.c:100: spot++;
;	genPlus
;     genPlusIncr
	inc	r4
	cjne	r4,#0x00,00131$
	inc	r5
00131$:
;	Drivers/serio.c:101: if(spot>=lengthnum+1)
;	genCmpLt
;	genCmp
	clr	c
	mov	a,r4
	subb	a,r2
	mov	a,r5
	xrl	a,#0x80
	mov	b,r3
	xrl	b,#0x80
	subb	a,b
;	genIfxJump
	jnc	00132$
	ljmp	00111$
00132$:
;	Drivers/serio.c:103: printf_tiny("\r\n  Invalid Entry.\0338       \0338");
;	genIpush
	mov	a,#__str_0
	push	acc
	mov	a,#(__str_0 >> 8)
	push	acc
;	genCall
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	Drivers/serio.c:104: return FAIL;
;	genRet
;	Peephole 182.b	used 16 bit load of dptr
	mov	dptr,#0xFFFF
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00114$
00113$:
;	Drivers/serio.c:108: return (atoi(line));
;	genAssign
;	genCast
	mov	r2,#0x00
	mov	r3,#0x40
;	genCall
	mov	dpl,r6
	mov	dph,r2
	mov	b,r3
	lcall	_atoi
;	genRet
00114$:
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'getnumbetween'
;------------------------------------------------------------
;highlim                   Allocated to stack - offset -4
;lengthnum                 Allocated to stack - offset -6
;lowlim                    Allocated to registers r2 r3 
;check_value               Allocated to registers r4 r5 
;------------------------------------------------------------
;	Drivers/serio.c:112: int getnumbetween(int lowlim, int highlim, int lengthnum)
;	-----------------------------------------
;	 function getnumbetween
;	-----------------------------------------
_getnumbetween:
	push	_bp
	mov	_bp,sp
;	genReceive
	mov	r2,dpl
	mov	r3,dph
;	Drivers/serio.c:115: check_value = getnumber(lengthnum);
;	genCall
	mov	a,_bp
	add	a,#0xfffffffa
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	push	ar2
	push	ar3
	lcall	_getnumber
	mov	r4,dpl
	mov	r5,dph
	pop	ar3
	pop	ar2
;	genAssign
;	Drivers/serio.c:116: if((check_value < lowlim) || (check_value > highlim))
;	genCmpLt
;	genCmp
	clr	c
	mov	a,r4
	subb	a,r2
	mov	a,r5
	xrl	a,#0x80
	mov	b,r3
	xrl	b,#0x80
	subb	a,b
;	genIfxJump
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 160.a	removed sjmp by inverse jump logic
	jc	00101$
;	Peephole 300	removed redundant label 00107$
;	genCmpGt
	mov	a,_bp
	add	a,#0xfffffffc
	mov	r0,a
;	genCmp
	clr	c
	mov	a,@r0
	subb	a,r4
	inc	r0
	mov	a,@r0
	xrl	a,#0x80
	mov	b,r5
	xrl	b,#0x80
	subb	a,b
;	genIfxJump
;	Peephole 108.a	removed ljmp by inverse jump logic
	jnc	00102$
;	Peephole 300	removed redundant label 00108$
00101$:
;	Drivers/serio.c:118: printf_tiny("\r\n  Invalid Entry.\0338       \0338");
;	genIpush
	push	ar2
	push	ar3
	mov	a,#__str_0
	push	acc
	mov	a,#(__str_0 >> 8)
	push	acc
;	genCall
	lcall	_printf_tiny
	dec	sp
	dec	sp
	pop	ar3
	pop	ar2
;	Drivers/serio.c:119: check_value = getnumbetween(lowlim, highlim, lengthnum);
;	genIpush
	mov	a,_bp
	add	a,#0xfffffffa
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
;	genIpush
	mov	a,_bp
	add	a,#0xfffffffc
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
;	genCall
	mov	dpl,r2
	mov	dph,r3
	lcall	_getnumbetween
	mov	r2,dpl
	mov	r3,dph
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	genAssign
	mov	ar4,r2
	mov	ar5,r3
00102$:
;	Drivers/serio.c:121: printf_tiny("\r\n                \0338");
;	genIpush
	push	ar4
	push	ar5
	mov	a,#__str_1
	push	acc
	mov	a,#(__str_1 >> 8)
	push	acc
;	genCall
	lcall	_printf_tiny
	dec	sp
	dec	sp
	pop	ar5
	pop	ar4
;	Drivers/serio.c:122: return check_value;
;	genRet
	mov	dpl,r4
	mov	dph,r5
;	Peephole 300	removed redundant label 00104$
	pop	_bp
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
__str_0:
	.db 0x0D
	.db 0x0A
	.ascii "  Invalid Entry."
	.db 0x1B
	.ascii "8       "
	.db 0x1B
	.ascii "8"
	.db 0x00
__str_1:
	.db 0x0D
	.db 0x0A
	.ascii "                "
	.db 0x1B
	.ascii "8"
	.db 0x00
	.area XINIT   (CODE)
