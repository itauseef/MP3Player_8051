;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.6.0 #4309 (Jul 28 2006)
; This file generated Sat May 02 15:12:58 2015
;--------------------------------------------------------
	.module sd
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
	.globl _SD_PrintTXT
	.globl _SD_ReadMP3
	.globl _SD_Command
	.globl _SD_GetByte
	.globl _SD_GetWord
	.globl _Delay
	.globl _SD_Init
	.globl _SD_ReadSector
	.globl _SD_WriteSector
	.globl _SD_WaitForReady
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
_SD_GetWord_R2_1_1:
	.ds 2
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
;Allocation info for local variables in function 'SD_PrintTXT'
;------------------------------------------------------------
;SectorNumber              Allocated to registers r2 r3 r4 r5 
;c                         Allocated to registers r2 
;i                         Allocated to registers r3 
;count                     Allocated to registers r4 r5 
;------------------------------------------------------------
;	FatDrivers/sd.c:30: BYTE SD_PrintTXT( ULONG SectorNumber)
;	-----------------------------------------
;	 function SD_PrintTXT
;	-----------------------------------------
_SD_PrintTXT:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
;     genReceive
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
;	FatDrivers/sd.c:35: SD_Command( CMD_READ_SINGLE_BLOCK, SectorNumber<<9);
;	genLeftShift
;	genLeftShiftLiteral
;	genlshFour
	mov	a,r2
;	Peephole 254	optimized left shift
	add	a,r2
	xch	a,r3
	rlc	a
	xch	a,r4
	rlc	a
	xch	a,r5
	mov	r2,#0x00
;	genIpush
	push	ar2
	push	ar3
	push	ar4
	push	ar5
;	genCall
	mov	dpl,#0x11
	lcall	_SD_Command
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	FatDrivers/sd.c:36: c = SD_GetByte();
;	genCall
	lcall	_SD_GetByte
	mov	r2,dpl
;	genAssign
;	FatDrivers/sd.c:37: i = SD_GetByte();
;	genCall
	push	ar2
	lcall	_SD_GetByte
	mov	r3,dpl
	pop	ar2
;	genAssign
;	FatDrivers/sd.c:41: while( (i == 0xff) && --count)
;	genAssign
	mov	r4,#0xFF
	mov	r5,#0xFF
00102$:
;	genCmpEq
;	gencjneshort
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 198.b	optimized misc jump sequence
	cjne	r3,#0xFF,00104$
;	Peephole 200.b	removed redundant sjmp
;	Peephole 300	removed redundant label 00124$
;	Peephole 300	removed redundant label 00125$
;	genMinus
;	genMinusDec
	dec	r4
	cjne	r4,#0xff,00126$
	dec	r5
00126$:
;	genIfx
	mov	a,r4
	orl	a,r5
;	genIfxJump
;	Peephole 108.c	removed ljmp by inverse jump logic
	jz	00104$
;	Peephole 300	removed redundant label 00127$
;	FatDrivers/sd.c:42: i = SD_GetByte();
;	genCall
	push	ar2
	push	ar4
	push	ar5
	lcall	_SD_GetByte
	mov	r6,dpl
	pop	ar5
	pop	ar4
	pop	ar2
;	genAssign
	mov	ar3,r6
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00102$
00104$:
;	FatDrivers/sd.c:45: if(c || i != 0xFE)
;	genIfx
	mov	a,r2
;	genIfxJump
;	Peephole 108.b	removed ljmp by inverse jump logic
	jnz	00105$
;	Peephole 300	removed redundant label 00128$
;	genCmpEq
;	gencjneshort
	cjne	r3,#0xFE,00129$
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00120$
00129$:
00105$:
;	FatDrivers/sd.c:46: return( 1 );
;	genRet
	mov	dpl,#0x01
;	FatDrivers/sd.c:49: for( count=1; count<=SD_DATA_SIZE; count++)
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 251.b	replaced sjmp to ret with ret
	ret
00120$:
;	genAssign
	mov	r3,#0x00
	mov	r4,#0x02
00112$:
;	FatDrivers/sd.c:51: c= SPI_Byte(0xFF);
;	genCall
	mov	dpl,#0xFF
	push	ar3
	push	ar4
	lcall	_SPI_Byte
	mov	r5,dpl
	pop	ar4
	pop	ar3
;	genAssign
	mov	ar2,r5
;	FatDrivers/sd.c:52: if(c!=0) putchar(c);
;	genCmpEq
;	gencjneshort
	cjne	r2,#0x00,00130$
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00109$
00130$:
;	genCall
	mov	dpl,r2
	push	ar3
	push	ar4
	lcall	_putchar
	pop	ar4
	pop	ar3
00109$:
;	genMinus
;	genMinusDec
	dec	r3
	cjne	r3,#0xff,00131$
	dec	r4
00131$:
;	FatDrivers/sd.c:49: for( count=1; count<=SD_DATA_SIZE; count++)
;	genIfx
	mov	a,r3
	orl	a,r4
;	genIfxJump
;	Peephole 108.b	removed ljmp by inverse jump logic
	jnz	00112$
;	Peephole 300	removed redundant label 00132$
;	FatDrivers/sd.c:56: SPI_Byte(0xFF);
;	genCall
	mov	dpl,#0xFF
	lcall	_SPI_Byte
;	FatDrivers/sd.c:57: SPI_Byte(0xFF);
;	genCall
	mov	dpl,#0xFF
	lcall	_SPI_Byte
;	FatDrivers/sd.c:60: Disable_SD_Card();
;	genAssign
	setb	_P1_1
;	FatDrivers/sd.c:62: return( 0 );
;	genRet
	mov	dpl,#0x00
;	Peephole 300	removed redundant label 00113$
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'SD_ReadMP3'
;------------------------------------------------------------
;mp3address                Allocated to registers r2 r3 r4 r5 
;c                         Allocated to registers r2 
;i                         Allocated to registers r3 
;x                         Allocated to registers r4 
;count                     Allocated to registers r2 r3 
;------------------------------------------------------------
;	FatDrivers/sd.c:66: BYTE SD_ReadMP3(unsigned long mp3address)
;	-----------------------------------------
;	 function SD_ReadMP3
;	-----------------------------------------
_SD_ReadMP3:
;     genReceive
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
;	FatDrivers/sd.c:72: SD_Command( CMD_READ_SINGLE_BLOCK, mp3address<<9);
;	genLeftShift
;	genLeftShiftLiteral
;	genlshFour
	mov	a,r2
;	Peephole 254	optimized left shift
	add	a,r2
	xch	a,r3
	rlc	a
	xch	a,r4
	rlc	a
	xch	a,r5
	mov	r2,#0x00
;	genIpush
	push	ar2
	push	ar3
	push	ar4
	push	ar5
;	genCall
	mov	dpl,#0x11
	lcall	_SD_Command
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	FatDrivers/sd.c:73: c = SD_GetByte();
;	genCall
	lcall	_SD_GetByte
	mov	r2,dpl
;	genAssign
;	FatDrivers/sd.c:74: i = SD_GetByte();
;	genCall
	push	ar2
	lcall	_SD_GetByte
	mov	r3,dpl
	pop	ar2
;	genAssign
;	FatDrivers/sd.c:78: while( (i == 0xff) && --count)
;	genAssign
	mov	r4,#0xFF
	mov	r5,#0xFF
00102$:
;	genCmpEq
;	gencjneshort
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 198.b	optimized misc jump sequence
	cjne	r3,#0xFF,00104$
;	Peephole 200.b	removed redundant sjmp
;	Peephole 300	removed redundant label 00474$
;	Peephole 300	removed redundant label 00475$
;	genMinus
;	genMinusDec
	dec	r4
	cjne	r4,#0xff,00476$
	dec	r5
00476$:
;	genIfx
	mov	a,r4
	orl	a,r5
;	genIfxJump
;	Peephole 108.c	removed ljmp by inverse jump logic
	jz	00104$
;	Peephole 300	removed redundant label 00477$
;	FatDrivers/sd.c:79: i = SD_GetByte();
;	genCall
	push	ar2
	push	ar4
	push	ar5
	lcall	_SD_GetByte
	mov	r6,dpl
	pop	ar5
	pop	ar4
	pop	ar2
;	genAssign
	mov	ar3,r6
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00102$
00104$:
;	FatDrivers/sd.c:82: if(c || i != 0xFE)
;	genIfx
	mov	a,r2
;	genIfxJump
;	Peephole 108.b	removed ljmp by inverse jump logic
	jnz	00105$
;	Peephole 300	removed redundant label 00478$
;	genCmpEq
;	gencjneshort
	cjne	r3,#0xFE,00479$
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00106$
00479$:
00105$:
;	FatDrivers/sd.c:83: return( 1 );
;	genRet
	mov	dpl,#0x01
;	Peephole 251.a	replaced ljmp to ret with ret
	ret
00106$:
;	FatDrivers/sd.c:86: STA013_CS_ENABLE=1;
;	genAssign
	setb	_P1_3
;	FatDrivers/sd.c:89: for( count=1; count<=SD_DATA_SIZE; count=count+x)
;	genAssign
	mov	r2,#0x01
	mov	r3,#0x00
00321$:
;	genCmpGt
;	genCmp
	clr	c
;	Peephole 181	changed mov to clr
	clr	a
	subb	a,r2
	mov	a,#0x02
	subb	a,r3
;	genIfxJump
	jnc	00480$
	ljmp	00324$
00480$:
;	FatDrivers/sd.c:91: x=0;
;	genAssign
	mov	r4,#0x00
;	FatDrivers/sd.c:92: if(!(STA013_DEMAND_PIN))        // CHECK IF DEMAND PIN LOW
;	genIfx
;	genIfxJump
	jnb	_P1_4,00481$
	ljmp	00319$
00481$:
;	FatDrivers/sd.c:94: SPIPutChar(0xFF);SPIWait();SPIPutChar(0xFF);SPIWait();SPIPutChar(0xFF);SPIWait();SPIPutChar(0xFF);SPIWait();
;	genAssign
	mov	_SPDAT,#0xFF
00108$:
;	genAnd
	mov	a,_SPSTA
;	genIfxJump
;	Peephole 108.d	removed ljmp by inverse jump logic
	jnb	acc.7,00108$
;	Peephole 300	removed redundant label 00482$
;	genAssign
	mov	_SPDAT,#0xFF
00111$:
;	genAnd
	mov	a,_SPSTA
;	genIfxJump
;	Peephole 108.d	removed ljmp by inverse jump logic
	jnb	acc.7,00111$
;	Peephole 300	removed redundant label 00483$
;	genAssign
	mov	_SPDAT,#0xFF
00114$:
;	genAnd
	mov	a,_SPSTA
;	genIfxJump
;	Peephole 108.d	removed ljmp by inverse jump logic
	jnb	acc.7,00114$
;	Peephole 300	removed redundant label 00484$
;	genAssign
	mov	_SPDAT,#0xFF
00117$:
;	genAnd
	mov	a,_SPSTA
;	genIfxJump
;	Peephole 108.d	removed ljmp by inverse jump logic
	jnb	acc.7,00117$
;	Peephole 300	removed redundant label 00485$
;	FatDrivers/sd.c:95: SPIPutChar(0xFF);SPIWait();SPIPutChar(0xFF);SPIWait();SPIPutChar(0xFF);SPIWait();SPIPutChar(0xFF);SPIWait();
;	genAssign
	mov	_SPDAT,#0xFF
00120$:
;	genAnd
	mov	a,_SPSTA
;	genIfxJump
;	Peephole 108.d	removed ljmp by inverse jump logic
	jnb	acc.7,00120$
;	Peephole 300	removed redundant label 00486$
;	genAssign
	mov	_SPDAT,#0xFF
00123$:
;	genAnd
	mov	a,_SPSTA
;	genIfxJump
;	Peephole 108.d	removed ljmp by inverse jump logic
	jnb	acc.7,00123$
;	Peephole 300	removed redundant label 00487$
;	genAssign
	mov	_SPDAT,#0xFF
00126$:
;	genAnd
	mov	a,_SPSTA
;	genIfxJump
;	Peephole 108.d	removed ljmp by inverse jump logic
	jnb	acc.7,00126$
;	Peephole 300	removed redundant label 00488$
;	genAssign
	mov	_SPDAT,#0xFF
00129$:
;	genAnd
	mov	a,_SPSTA
;	genIfxJump
;	Peephole 108.d	removed ljmp by inverse jump logic
	jnb	acc.7,00129$
;	Peephole 300	removed redundant label 00489$
;	FatDrivers/sd.c:96: SPIPutChar(0xFF);SPIWait();SPIPutChar(0xFF);SPIWait();//10
;	genAssign
	mov	_SPDAT,#0xFF
00132$:
;	genAnd
	mov	a,_SPSTA
;	genIfxJump
;	Peephole 108.d	removed ljmp by inverse jump logic
	jnb	acc.7,00132$
;	Peephole 300	removed redundant label 00490$
;	genAssign
	mov	_SPDAT,#0xFF
00135$:
;	genAnd
	mov	a,_SPSTA
;	genIfxJump
;	Peephole 108.d	removed ljmp by inverse jump logic
	jnb	acc.7,00135$
;	Peephole 300	removed redundant label 00491$
;	FatDrivers/sd.c:97: SPIPutChar(0xFF);SPIWait();SPIPutChar(0xFF);SPIWait();SPIPutChar(0xFF);SPIWait();SPIPutChar(0xFF);SPIWait();
;	genAssign
	mov	_SPDAT,#0xFF
00138$:
;	genAnd
	mov	a,_SPSTA
;	genIfxJump
;	Peephole 108.d	removed ljmp by inverse jump logic
	jnb	acc.7,00138$
;	Peephole 300	removed redundant label 00492$
;	genAssign
	mov	_SPDAT,#0xFF
00141$:
;	genAnd
	mov	a,_SPSTA
;	genIfxJump
;	Peephole 108.d	removed ljmp by inverse jump logic
	jnb	acc.7,00141$
;	Peephole 300	removed redundant label 00493$
;	genAssign
	mov	_SPDAT,#0xFF
00144$:
;	genAnd
	mov	a,_SPSTA
;	genIfxJump
;	Peephole 108.d	removed ljmp by inverse jump logic
	jnb	acc.7,00144$
;	Peephole 300	removed redundant label 00494$
;	genAssign
	mov	_SPDAT,#0xFF
00147$:
;	genAnd
	mov	a,_SPSTA
;	genIfxJump
;	Peephole 108.d	removed ljmp by inverse jump logic
	jnb	acc.7,00147$
;	Peephole 300	removed redundant label 00495$
;	FatDrivers/sd.c:98: SPIPutChar(0xFF);SPIWait();SPIPutChar(0xFF);SPIWait();SPIPutChar(0xFF);SPIWait();SPIPutChar(0xFF);SPIWait();
;	genAssign
	mov	_SPDAT,#0xFF
00150$:
;	genAnd
	mov	a,_SPSTA
;	genIfxJump
;	Peephole 108.d	removed ljmp by inverse jump logic
	jnb	acc.7,00150$
;	Peephole 300	removed redundant label 00496$
;	genAssign
	mov	_SPDAT,#0xFF
00153$:
;	genAnd
	mov	a,_SPSTA
;	genIfxJump
;	Peephole 108.d	removed ljmp by inverse jump logic
	jnb	acc.7,00153$
;	Peephole 300	removed redundant label 00497$
;	genAssign
	mov	_SPDAT,#0xFF
00156$:
;	genAnd
	mov	a,_SPSTA
;	genIfxJump
;	Peephole 108.d	removed ljmp by inverse jump logic
	jnb	acc.7,00156$
;	Peephole 300	removed redundant label 00498$
;	genAssign
	mov	_SPDAT,#0xFF
00159$:
;	genAnd
	mov	a,_SPSTA
;	genIfxJump
;	Peephole 108.d	removed ljmp by inverse jump logic
	jnb	acc.7,00159$
;	Peephole 300	removed redundant label 00499$
;	FatDrivers/sd.c:99: SPIPutChar(0xFF);SPIWait();SPIPutChar(0xFF);SPIWait();//20
;	genAssign
	mov	_SPDAT,#0xFF
00162$:
;	genAnd
	mov	a,_SPSTA
;	genIfxJump
;	Peephole 108.d	removed ljmp by inverse jump logic
	jnb	acc.7,00162$
;	Peephole 300	removed redundant label 00500$
;	genAssign
	mov	_SPDAT,#0xFF
00165$:
;	genAnd
	mov	a,_SPSTA
;	genIfxJump
;	Peephole 108.d	removed ljmp by inverse jump logic
	jnb	acc.7,00165$
;	Peephole 300	removed redundant label 00501$
;	FatDrivers/sd.c:100: SPIPutChar(0xFF);SPIWait();SPIPutChar(0xFF);SPIWait();SPIPutChar(0xFF);SPIWait();SPIPutChar(0xFF);SPIWait();
;	genAssign
	mov	_SPDAT,#0xFF
00168$:
;	genAnd
	mov	a,_SPSTA
;	genIfxJump
;	Peephole 108.d	removed ljmp by inverse jump logic
	jnb	acc.7,00168$
;	Peephole 300	removed redundant label 00502$
;	genAssign
	mov	_SPDAT,#0xFF
00171$:
;	genAnd
	mov	a,_SPSTA
;	genIfxJump
;	Peephole 108.d	removed ljmp by inverse jump logic
	jnb	acc.7,00171$
;	Peephole 300	removed redundant label 00503$
;	genAssign
	mov	_SPDAT,#0xFF
00174$:
;	genAnd
	mov	a,_SPSTA
;	genIfxJump
;	Peephole 108.d	removed ljmp by inverse jump logic
	jnb	acc.7,00174$
;	Peephole 300	removed redundant label 00504$
;	genAssign
	mov	_SPDAT,#0xFF
00177$:
;	genAnd
	mov	a,_SPSTA
;	genIfxJump
;	Peephole 108.d	removed ljmp by inverse jump logic
	jnb	acc.7,00177$
;	Peephole 300	removed redundant label 00505$
;	FatDrivers/sd.c:101: SPIPutChar(0xFF);SPIWait();SPIPutChar(0xFF);SPIWait();SPIPutChar(0xFF);SPIWait();SPIPutChar(0xFF);SPIWait();
;	genAssign
	mov	_SPDAT,#0xFF
00180$:
;	genAnd
	mov	a,_SPSTA
;	genIfxJump
;	Peephole 108.d	removed ljmp by inverse jump logic
	jnb	acc.7,00180$
;	Peephole 300	removed redundant label 00506$
;	genAssign
	mov	_SPDAT,#0xFF
00183$:
;	genAnd
	mov	a,_SPSTA
;	genIfxJump
;	Peephole 108.d	removed ljmp by inverse jump logic
	jnb	acc.7,00183$
;	Peephole 300	removed redundant label 00507$
;	genAssign
	mov	_SPDAT,#0xFF
00186$:
;	genAnd
	mov	a,_SPSTA
;	genIfxJump
;	Peephole 108.d	removed ljmp by inverse jump logic
	jnb	acc.7,00186$
;	Peephole 300	removed redundant label 00508$
;	genAssign
	mov	_SPDAT,#0xFF
00189$:
;	genAnd
	mov	a,_SPSTA
;	genIfxJump
;	Peephole 108.d	removed ljmp by inverse jump logic
	jnb	acc.7,00189$
;	Peephole 300	removed redundant label 00509$
;	FatDrivers/sd.c:102: SPIPutChar(0xFF);SPIWait();SPIPutChar(0xFF);SPIWait();//30
;	genAssign
	mov	_SPDAT,#0xFF
00192$:
;	genAnd
	mov	a,_SPSTA
;	genIfxJump
;	Peephole 108.d	removed ljmp by inverse jump logic
	jnb	acc.7,00192$
;	Peephole 300	removed redundant label 00510$
;	genAssign
	mov	_SPDAT,#0xFF
00195$:
;	genAnd
	mov	a,_SPSTA
;	genIfxJump
;	Peephole 108.d	removed ljmp by inverse jump logic
	jnb	acc.7,00195$
;	Peephole 300	removed redundant label 00511$
;	FatDrivers/sd.c:103: SPIPutChar(0xFF);SPIWait();SPIPutChar(0xFF);SPIWait();SPIPutChar(0xFF);SPIWait();SPIPutChar(0xFF);SPIWait();
;	genAssign
	mov	_SPDAT,#0xFF
00198$:
;	genAnd
	mov	a,_SPSTA
;	genIfxJump
;	Peephole 108.d	removed ljmp by inverse jump logic
	jnb	acc.7,00198$
;	Peephole 300	removed redundant label 00512$
;	genAssign
	mov	_SPDAT,#0xFF
00201$:
;	genAnd
	mov	a,_SPSTA
;	genIfxJump
;	Peephole 108.d	removed ljmp by inverse jump logic
	jnb	acc.7,00201$
;	Peephole 300	removed redundant label 00513$
;	genAssign
	mov	_SPDAT,#0xFF
00204$:
;	genAnd
	mov	a,_SPSTA
;	genIfxJump
;	Peephole 108.d	removed ljmp by inverse jump logic
	jnb	acc.7,00204$
;	Peephole 300	removed redundant label 00514$
;	genAssign
	mov	_SPDAT,#0xFF
00207$:
;	genAnd
	mov	a,_SPSTA
;	genIfxJump
;	Peephole 108.d	removed ljmp by inverse jump logic
	jnb	acc.7,00207$
;	Peephole 300	removed redundant label 00515$
;	FatDrivers/sd.c:104: SPIPutChar(0xFF);SPIWait();SPIPutChar(0xFF);SPIWait();SPIPutChar(0xFF);SPIWait();SPIPutChar(0xFF);SPIWait();
;	genAssign
	mov	_SPDAT,#0xFF
00210$:
;	genAnd
	mov	a,_SPSTA
;	genIfxJump
;	Peephole 108.d	removed ljmp by inverse jump logic
	jnb	acc.7,00210$
;	Peephole 300	removed redundant label 00516$
;	genAssign
	mov	_SPDAT,#0xFF
00213$:
;	genAnd
	mov	a,_SPSTA
;	genIfxJump
;	Peephole 108.d	removed ljmp by inverse jump logic
	jnb	acc.7,00213$
;	Peephole 300	removed redundant label 00517$
;	genAssign
	mov	_SPDAT,#0xFF
00216$:
;	genAnd
	mov	a,_SPSTA
;	genIfxJump
;	Peephole 108.d	removed ljmp by inverse jump logic
	jnb	acc.7,00216$
;	Peephole 300	removed redundant label 00518$
;	genAssign
	mov	_SPDAT,#0xFF
00219$:
;	genAnd
	mov	a,_SPSTA
;	genIfxJump
;	Peephole 108.d	removed ljmp by inverse jump logic
	jnb	acc.7,00219$
;	Peephole 300	removed redundant label 00519$
;	FatDrivers/sd.c:105: SPIPutChar(0xFF);SPIWait();SPIPutChar(0xFF);SPIWait();//40
;	genAssign
	mov	_SPDAT,#0xFF
00222$:
;	genAnd
	mov	a,_SPSTA
;	genIfxJump
;	Peephole 108.d	removed ljmp by inverse jump logic
	jnb	acc.7,00222$
;	Peephole 300	removed redundant label 00520$
;	genAssign
	mov	_SPDAT,#0xFF
00225$:
;	genAnd
	mov	a,_SPSTA
;	genIfxJump
;	Peephole 108.d	removed ljmp by inverse jump logic
	jnb	acc.7,00225$
;	Peephole 300	removed redundant label 00521$
;	FatDrivers/sd.c:106: SPIPutChar(0xFF);SPIWait();SPIPutChar(0xFF);SPIWait();SPIPutChar(0xFF);SPIWait();SPIPutChar(0xFF);SPIWait();
;	genAssign
	mov	_SPDAT,#0xFF
00228$:
;	genAnd
	mov	a,_SPSTA
;	genIfxJump
;	Peephole 108.d	removed ljmp by inverse jump logic
	jnb	acc.7,00228$
;	Peephole 300	removed redundant label 00522$
;	genAssign
	mov	_SPDAT,#0xFF
00231$:
;	genAnd
	mov	a,_SPSTA
;	genIfxJump
;	Peephole 108.d	removed ljmp by inverse jump logic
	jnb	acc.7,00231$
;	Peephole 300	removed redundant label 00523$
;	genAssign
	mov	_SPDAT,#0xFF
00234$:
;	genAnd
	mov	a,_SPSTA
;	genIfxJump
;	Peephole 108.d	removed ljmp by inverse jump logic
	jnb	acc.7,00234$
;	Peephole 300	removed redundant label 00524$
;	genAssign
	mov	_SPDAT,#0xFF
00237$:
;	genAnd
	mov	a,_SPSTA
;	genIfxJump
;	Peephole 108.d	removed ljmp by inverse jump logic
	jnb	acc.7,00237$
;	Peephole 300	removed redundant label 00525$
;	FatDrivers/sd.c:107: SPIPutChar(0xFF);SPIWait();SPIPutChar(0xFF);SPIWait();SPIPutChar(0xFF);SPIWait();SPIPutChar(0xFF);SPIWait();
;	genAssign
	mov	_SPDAT,#0xFF
00240$:
;	genAnd
	mov	a,_SPSTA
;	genIfxJump
;	Peephole 108.d	removed ljmp by inverse jump logic
	jnb	acc.7,00240$
;	Peephole 300	removed redundant label 00526$
;	genAssign
	mov	_SPDAT,#0xFF
00243$:
;	genAnd
	mov	a,_SPSTA
;	genIfxJump
;	Peephole 108.d	removed ljmp by inverse jump logic
	jnb	acc.7,00243$
;	Peephole 300	removed redundant label 00527$
;	genAssign
	mov	_SPDAT,#0xFF
00246$:
;	genAnd
	mov	a,_SPSTA
;	genIfxJump
;	Peephole 108.d	removed ljmp by inverse jump logic
	jnb	acc.7,00246$
;	Peephole 300	removed redundant label 00528$
;	genAssign
	mov	_SPDAT,#0xFF
00249$:
;	genAnd
	mov	a,_SPSTA
;	genIfxJump
;	Peephole 108.d	removed ljmp by inverse jump logic
	jnb	acc.7,00249$
;	Peephole 300	removed redundant label 00529$
;	FatDrivers/sd.c:108: SPIPutChar(0xFF);SPIWait();SPIPutChar(0xFF);SPIWait();//50
;	genAssign
	mov	_SPDAT,#0xFF
00252$:
;	genAnd
	mov	a,_SPSTA
;	genIfxJump
;	Peephole 108.d	removed ljmp by inverse jump logic
	jnb	acc.7,00252$
;	Peephole 300	removed redundant label 00530$
;	genAssign
	mov	_SPDAT,#0xFF
00255$:
;	genAnd
	mov	a,_SPSTA
;	genIfxJump
;	Peephole 108.d	removed ljmp by inverse jump logic
	jnb	acc.7,00255$
;	Peephole 300	removed redundant label 00531$
;	FatDrivers/sd.c:109: SPIPutChar(0xFF);SPIWait();SPIPutChar(0xFF);SPIWait();SPIPutChar(0xFF);SPIWait();SPIPutChar(0xFF);SPIWait();
;	genAssign
	mov	_SPDAT,#0xFF
00258$:
;	genAnd
	mov	a,_SPSTA
;	genIfxJump
;	Peephole 108.d	removed ljmp by inverse jump logic
	jnb	acc.7,00258$
;	Peephole 300	removed redundant label 00532$
;	genAssign
	mov	_SPDAT,#0xFF
00261$:
;	genAnd
	mov	a,_SPSTA
;	genIfxJump
;	Peephole 108.d	removed ljmp by inverse jump logic
	jnb	acc.7,00261$
;	Peephole 300	removed redundant label 00533$
;	genAssign
	mov	_SPDAT,#0xFF
00264$:
;	genAnd
	mov	a,_SPSTA
;	genIfxJump
;	Peephole 108.d	removed ljmp by inverse jump logic
	jnb	acc.7,00264$
;	Peephole 300	removed redundant label 00534$
;	genAssign
	mov	_SPDAT,#0xFF
00267$:
;	genAnd
	mov	a,_SPSTA
;	genIfxJump
;	Peephole 108.d	removed ljmp by inverse jump logic
	jnb	acc.7,00267$
;	Peephole 300	removed redundant label 00535$
;	FatDrivers/sd.c:110: SPIPutChar(0xFF);SPIWait();SPIPutChar(0xFF);SPIWait();SPIPutChar(0xFF);SPIWait();SPIPutChar(0xFF);SPIWait();
;	genAssign
	mov	_SPDAT,#0xFF
00270$:
;	genAnd
	mov	a,_SPSTA
;	genIfxJump
;	Peephole 108.d	removed ljmp by inverse jump logic
	jnb	acc.7,00270$
;	Peephole 300	removed redundant label 00536$
;	genAssign
	mov	_SPDAT,#0xFF
00273$:
;	genAnd
	mov	a,_SPSTA
;	genIfxJump
;	Peephole 108.d	removed ljmp by inverse jump logic
	jnb	acc.7,00273$
;	Peephole 300	removed redundant label 00537$
;	genAssign
	mov	_SPDAT,#0xFF
00276$:
;	genAnd
	mov	a,_SPSTA
;	genIfxJump
;	Peephole 108.d	removed ljmp by inverse jump logic
	jnb	acc.7,00276$
;	Peephole 300	removed redundant label 00538$
;	genAssign
	mov	_SPDAT,#0xFF
00279$:
;	genAnd
	mov	a,_SPSTA
;	genIfxJump
;	Peephole 108.d	removed ljmp by inverse jump logic
	jnb	acc.7,00279$
;	Peephole 300	removed redundant label 00539$
;	FatDrivers/sd.c:111: SPIPutChar(0xFF);SPIWait();SPIPutChar(0xFF);SPIWait();//60
;	genAssign
	mov	_SPDAT,#0xFF
00282$:
;	genAnd
	mov	a,_SPSTA
;	genIfxJump
;	Peephole 108.d	removed ljmp by inverse jump logic
	jnb	acc.7,00282$
;	Peephole 300	removed redundant label 00540$
;	genAssign
	mov	_SPDAT,#0xFF
00285$:
;	genAnd
	mov	a,_SPSTA
;	genIfxJump
;	Peephole 108.d	removed ljmp by inverse jump logic
	jnb	acc.7,00285$
;	Peephole 300	removed redundant label 00541$
;	FatDrivers/sd.c:112: SPIPutChar(0xFF);SPIWait();SPIPutChar(0xFF);SPIWait();SPIPutChar(0xFF);SPIWait();SPIPutChar(0xFF);SPIWait();//64
;	genAssign
	mov	_SPDAT,#0xFF
00288$:
;	genAnd
	mov	a,_SPSTA
;	genIfxJump
;	Peephole 108.d	removed ljmp by inverse jump logic
	jnb	acc.7,00288$
;	Peephole 300	removed redundant label 00542$
;	genAssign
	mov	_SPDAT,#0xFF
00291$:
;	genAnd
	mov	a,_SPSTA
;	genIfxJump
;	Peephole 108.d	removed ljmp by inverse jump logic
	jnb	acc.7,00291$
;	Peephole 300	removed redundant label 00543$
;	genAssign
	mov	_SPDAT,#0xFF
00294$:
;	genAnd
	mov	a,_SPSTA
;	genIfxJump
;	Peephole 108.d	removed ljmp by inverse jump logic
	jnb	acc.7,00294$
;	Peephole 300	removed redundant label 00544$
;	genAssign
	mov	_SPDAT,#0xFF
00297$:
;	genAnd
	mov	a,_SPSTA
;	genIfxJump
;	Peephole 108.d	removed ljmp by inverse jump logic
	jnb	acc.7,00297$
;	Peephole 300	removed redundant label 00545$
;	FatDrivers/sd.c:113: x=64;
;	genAssign
	mov	r4,#0x40
	ljmp	00323$
00319$:
;	FatDrivers/sd.c:117: if(RI)                     // Check if a key is pressed then process it
;	genIfx
;	genIfxJump
	jb	_RI,00546$
	ljmp	00323$
00546$:
;	FatDrivers/sd.c:118: {   switch (SBUF)
;	genAssign
	mov	r5,_SBUF
;	genCmpEq
;	gencjneshort
	cjne	r5,#0x2B,00547$
	ljmp	00315$
00547$:
;	genCmpEq
;	gencjneshort
	cjne	r5,#0x2D,00548$
	ljmp	00315$
00548$:
;	genCmpEq
;	gencjneshort
	cjne	r5,#0x69,00549$
	ljmp	00313$
00549$:
;	genCmpEq
;	gencjneshort
	cjne	r5,#0x6D,00550$
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00302$
00550$:
;	genCmpEq
;	gencjneshort
	cjne	r5,#0x70,00551$
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00304$
00551$:
;	genCmpEq
;	gencjneshort
	cjne	r5,#0x71,00552$
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00309$
00552$:
;	genCmpEq
;	gencjneshort
	cjne	r5,#0x75,00553$
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00303$
00553$:
	ljmp	00315$
;	FatDrivers/sd.c:122: case 'm':   STA013WriteReg(STA_REG_MUTE,1);break; //mute
00302$:
;	genIpush
	push	ar2
	push	ar3
	push	ar4
	mov	a,#0x01
	push	acc
;	genCall
	mov	dpl,#0x14
	lcall	_STA013WriteReg
	dec	sp
	pop	ar4
	pop	ar3
	pop	ar2
	ljmp	00315$
;	FatDrivers/sd.c:123: case 'u':   STA013WriteReg(STA_REG_MUTE,0);break; //unmute
00303$:
;	genIpush
	push	ar2
	push	ar3
	push	ar4
;	Peephole 181	changed mov to clr
	clr	a
	push	acc
;	genCall
	mov	dpl,#0x14
	lcall	_STA013WriteReg
	dec	sp
	pop	ar4
	pop	ar3
	pop	ar2
;	FatDrivers/sd.c:124: case 'p':   RI=0;    // pause
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00315$
00304$:
;	genAssign
	clr	_RI
;	FatDrivers/sd.c:125: STA013PauseDecoder();
;	genCall
	push	ar2
	push	ar3
	push	ar4
	lcall	_STA013PauseDecoder
	pop	ar4
	pop	ar3
	pop	ar2
;	FatDrivers/sd.c:126: while((!RI)&&(SBUF!='r'));
00306$:
;	genIfx
;	genIfxJump
;	Peephole 108.e	removed ljmp by inverse jump logic
	jb	_RI,00308$
;	Peephole 300	removed redundant label 00554$
;	genCmpEq
;	gencjneshort
	mov	a,_SBUF
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 198.b	optimized misc jump sequence
	cjne	a,#0x72,00306$
;	Peephole 200.b	removed redundant sjmp
;	Peephole 300	removed redundant label 00555$
;	Peephole 300	removed redundant label 00556$
00308$:
;	FatDrivers/sd.c:127: STA013ResumeDecoder();
;	genCall
	push	ar2
	push	ar3
	push	ar4
	lcall	_STA013ResumeDecoder
	pop	ar4
	pop	ar3
	pop	ar2
;	FatDrivers/sd.c:128: break;
;	FatDrivers/sd.c:129: case 'q':   WDTRST=0X1E;    // quit by resetting
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00315$
00309$:
;	genAssign
	mov	_WDTRST,#0x1E
;	FatDrivers/sd.c:130: WDTRST=0XE1;
;	genAssign
	mov	_WDTRST,#0xE1
;	FatDrivers/sd.c:131: while(1);
00311$:
;	FatDrivers/sd.c:133: case 'i':   printf_tiny("\0338Average Bit Rate: %d Kbps",STA013GetAverageBitrate());    //get transfer rate from STA013
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00311$
00313$:
;	genCall
	push	ar2
	push	ar3
	push	ar4
	lcall	_STA013GetAverageBitrate
	mov	r5,dpl
	mov	r6,dph
	pop	ar4
	pop	ar3
	pop	ar2
;	genIpush
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	push	ar6
;	genIpush
	mov	a,#__str_0
	push	acc
	mov	a,#(__str_0 >> 8)
	push	acc
;	genCall
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar4
	pop	ar3
	pop	ar2
;	FatDrivers/sd.c:136: }
00315$:
;	FatDrivers/sd.c:137: RI=0;
;	genAssign
	clr	_RI
00323$:
;	FatDrivers/sd.c:89: for( count=1; count<=SD_DATA_SIZE; count=count+x)
;	genCast
	mov	r5,#0x00
;	genPlus
;	Peephole 236.g	used r4 instead of ar4
	mov	a,r4
;	Peephole 236.a	used r2 instead of ar2
	add	a,r2
	mov	r2,a
;	Peephole 236.g	used r5 instead of ar5
	mov	a,r5
;	Peephole 236.b	used r3 instead of ar3
	addc	a,r3
	mov	r3,a
	ljmp	00321$
00324$:
;	FatDrivers/sd.c:141: STA013_CS_ENABLE=0;
;	genAssign
	clr	_P1_3
;	FatDrivers/sd.c:143: SPI_Byte(0xFF);
;	genCall
	mov	dpl,#0xFF
	lcall	_SPI_Byte
;	FatDrivers/sd.c:144: SPI_Byte(0xFF);
;	genCall
	mov	dpl,#0xFF
	lcall	_SPI_Byte
;	FatDrivers/sd.c:147: Disable_SD_Card();
;	genAssign
	setb	_P1_1
;	FatDrivers/sd.c:148: return( 0 );
;	genRet
	mov	dpl,#0x00
;	Peephole 300	removed redundant label 00325$
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'SD_Command'
;------------------------------------------------------------
;ThisArgument              Allocated to stack - offset -6
;ThisCommand               Allocated to registers r2 
;------------------------------------------------------------
;	FatDrivers/sd.c:152: BYTE SD_Command( BYTE ThisCommand, ULONG ThisArgument )
;	-----------------------------------------
;	 function SD_Command
;	-----------------------------------------
_SD_Command:
	push	_bp
	mov	_bp,sp
;	genReceive
	mov	r2,dpl
;	FatDrivers/sd.c:155: Enable_SD_Card();
;	genAssign
	clr	_P1_1
;	FatDrivers/sd.c:158: SPI_nClocks(20);
;	genCall
	mov	dpl,#0x14
	push	ar2
	lcall	_SPI_nClocks
	pop	ar2
;	FatDrivers/sd.c:161: SPI_Byte(0x40 | ThisCommand);
;	genOr
	mov	a,#0x40
	orl	a,r2
	mov	dpl,a
;	genCall
	push	ar2
	lcall	_SPI_Byte
	pop	ar2
;	FatDrivers/sd.c:164: SPI_Byte((unsigned char)(0xFF&(ThisArgument>>24)));
;	genGetByte
	mov	a,_bp
	add	a,#0xfffffffa
;	Peephole 185	changed order of increment (acc incremented also!)
	inc	a
;	Peephole 185	changed order of increment (acc incremented also!)
	inc	a
;	Peephole 185	changed order of increment (acc incremented also!)
	inc	a
	mov	r0,a
	mov	dpl,@r0
;	genCall
	push	ar2
	lcall	_SPI_Byte
	pop	ar2
;	FatDrivers/sd.c:165: SPI_Byte((unsigned char)(0xFF&(ThisArgument>>16)));
;	genGetByte
	mov	a,_bp
	add	a,#0xfffffffa
;	Peephole 185	changed order of increment (acc incremented also!)
	inc	a
;	Peephole 185	changed order of increment (acc incremented also!)
	inc	a
	mov	r0,a
	mov	dpl,@r0
;	genCall
	push	ar2
	lcall	_SPI_Byte
	pop	ar2
;	FatDrivers/sd.c:166: SPI_Byte((unsigned char)(0xFF&(ThisArgument>>8)));
;	genGetByte
	mov	a,_bp
	add	a,#0xfffffffa
;	Peephole 185	changed order of increment (acc incremented also!)
	inc	a
	mov	r0,a
	mov	dpl,@r0
;	genCall
	push	ar2
	lcall	_SPI_Byte
	pop	ar2
;	FatDrivers/sd.c:167: SPI_Byte((unsigned char)(0xFF&(ThisArgument)));
;	genAnd
	mov	a,_bp
	add	a,#0xfffffffa
	mov	r0,a
	mov	ar3,@r0
	mov	r4,#0x00
	mov	r5,#0x00
	mov	r6,#0x00
;	genCast
	mov	dpl,r3
;	genCall
	push	ar2
	lcall	_SPI_Byte
	pop	ar2
;	FatDrivers/sd.c:169: SPI_Byte((ThisCommand == CMD_GO_IDLE_STATE)? 0x95:0xFF);
;	genNot
	mov	a,r2
	cjne	a,#0x01,00106$
00106$:
	clr	a
	rlc	a
;	genIfx
	mov	r2,a
;	Peephole 105	removed redundant mov
;	genIfxJump
;	Peephole 108.c	removed ljmp by inverse jump logic
	jz	00103$
;	Peephole 300	removed redundant label 00107$
;	genAssign
	mov	r2,#0x95
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00104$
00103$:
;	genAssign
	mov	r2,#0xFF
00104$:
;	genCall
	mov	dpl,r2
	lcall	_SPI_Byte
;	FatDrivers/sd.c:172: SPI_Byte( 0xFF );
;	genCall
	mov	dpl,#0xFF
	lcall	_SPI_Byte
;	FatDrivers/sd.c:173: return( 0 );
;	genRet
	mov	dpl,#0x00
;	Peephole 300	removed redundant label 00101$
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'SD_GetByte'
;------------------------------------------------------------
;i                         Allocated to registers r3 
;j                         Allocated to registers r2 
;------------------------------------------------------------
;	FatDrivers/sd.c:177: BYTE SD_GetByte()
;	-----------------------------------------
;	 function SD_GetByte
;	-----------------------------------------
_SD_GetByte:
;	FatDrivers/sd.c:179: BYTE i, j=0xFF;
;	genAssign
	mov	r2,#0xFF
;	FatDrivers/sd.c:180: for( i=0; i<8; i++ )
;	genAssign
	mov	r3,#0x00
00103$:
;	genCmpLt
;	genCmp
	cjne	r3,#0x08,00112$
00112$:
;	genIfxJump
;	Peephole 108.a	removed ljmp by inverse jump logic
	jnc	00106$
;	Peephole 300	removed redundant label 00113$
;	FatDrivers/sd.c:183: j = SPI_Byte( 0xff );
;	genCall
	mov	dpl,#0xFF
	push	ar3
	lcall	_SPI_Byte
	mov	r4,dpl
	pop	ar3
;	genAssign
	mov	ar2,r4
;	FatDrivers/sd.c:184: if(j != 0xff)         /* if it isn't 0xff, it is a response */
;	genCmpEq
;	gencjneshort
	cjne	r2,#0xFF,00114$
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00105$
00114$:
;	FatDrivers/sd.c:185: return(j);
;	genRet
	mov	dpl,r2
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 251.b	replaced sjmp to ret with ret
	ret
00105$:
;	FatDrivers/sd.c:180: for( i=0; i<8; i++ )
;	genPlus
;     genPlusIncr
	inc	r3
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00103$
00106$:
;	FatDrivers/sd.c:187: return(j);
;	genRet
	mov	dpl,r2
;	Peephole 300	removed redundant label 00107$
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'SD_GetWord'
;------------------------------------------------------------
;R2                        Allocated with name '_SD_GetWord_R2_1_1'
;------------------------------------------------------------
;	FatDrivers/sd.c:191: WORD SD_GetWord()
;	-----------------------------------------
;	 function SD_GetWord
;	-----------------------------------------
_SD_GetWord:
;	FatDrivers/sd.c:195: R2 = ((SD_GetByte())<< 8)&0xff00;
;	genCall
	lcall	_SD_GetByte
	mov	r2,dpl
;	genCast
;	genLeftShift
;	genLeftShiftLiteral
;	genlshTwo
;	peephole 177.e	removed redundant move
	mov	ar3,r2
	mov	r2,#0x00
;	genAnd
	mov	r0,#_SD_GetWord_R2_1_1
	mov	@r0,#0x00
	inc	r0
	mov	@r0,ar3
;	FatDrivers/sd.c:196: R2 |= SPI_Byte( 0xff );
;	genCall
	mov	dpl,#0xFF
	lcall	_SPI_Byte
	mov	r2,dpl
;	genCast
	mov	r3,#0x00
;	genOr
	mov	r0,#_SD_GetWord_R2_1_1
	mov	a,r2
	orl	a,@r0
	mov	@r0,a
	mov	a,r3
	inc	r0
	orl	a,@r0
	mov	@r0,a
;	FatDrivers/sd.c:197: return( R2 );
;	genRet
	mov	r0,#_SD_GetWord_R2_1_1
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
;	Peephole 300	removed redundant label 00101$
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Delay'
;------------------------------------------------------------
;MilSec                    Allocated to registers r2 r3 
;i                         Allocated to registers r6 r7 
;j                         Allocated to registers r4 r5 
;------------------------------------------------------------
;	FatDrivers/sd.c:201: void Delay( WORD MilSec )
;	-----------------------------------------
;	 function Delay
;	-----------------------------------------
_Delay:
;	genReceive
	mov	r2,dpl
	mov	r3,dph
;	FatDrivers/sd.c:204: for (j=0; j< MilSec; j++)
;	genAssign
	mov	r4,#0x00
	mov	r5,#0x00
00104$:
;	genCmpLt
;	genCmp
	clr	c
	mov	a,r4
	subb	a,r2
	mov	a,r5
	subb	a,r3
;	genIfxJump
;	Peephole 108.a	removed ljmp by inverse jump logic
	jnc	00108$
;	Peephole 300	removed redundant label 00116$
;	FatDrivers/sd.c:205: for (i=0xFC65; i<0xFFFF; i++);
;	genAssign
	mov	r6,#0x9A
	mov	r7,#0x03
00103$:
;	genMinus
;	genMinusDec
	dec	r6
	cjne	r6,#0xff,00117$
	dec	r7
00117$:
;	genIfx
	mov	a,r6
	orl	a,r7
;	genIfxJump
;	Peephole 108.b	removed ljmp by inverse jump logic
	jnz	00103$
;	Peephole 300	removed redundant label 00118$
;	FatDrivers/sd.c:204: for (j=0; j< MilSec; j++)
;	genPlus
;     genPlusIncr
;	tail increment optimized (range 7)
	inc	r4
	cjne	r4,#0x00,00104$
	inc	r5
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00104$
00108$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'SD_Init'
;------------------------------------------------------------
;Count                     Allocated to registers r2 r3 
;------------------------------------------------------------
;	FatDrivers/sd.c:209: BYTE SD_Init()
;	-----------------------------------------
;	 function SD_Init
;	-----------------------------------------
_SD_Init:
;	FatDrivers/sd.c:213: SPI_Init();      // Start with slow speed
;	genAssign
	setb	_P1_1
;	genAssign
	mov	_SPCON,#0x72
;	FatDrivers/sd.c:214: Disable_SD_Card();
;	genAssign
	setb	_P1_1
;	FatDrivers/sd.c:215: SPI_nClocks(10); // 74 clocks with CS high to start SDCARD interface
;	genCall
	mov	dpl,#0x0A
	lcall	_SPI_nClocks
;	FatDrivers/sd.c:216: Enable_SD_Card();
;	genAssign
	clr	_P1_1
;	FatDrivers/sd.c:219: CardType = 0;
;	genAssign
	mov	dptr,#_CardType
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	FatDrivers/sd.c:220: do                // Wait till SD Card comes in IDLE mode or timeout of function
;	genAssign
	mov	r2,#0xE8
	mov	r3,#0x03
00102$:
;	FatDrivers/sd.c:222: Delay(1);
;	genCall
;	Peephole 182.b	used 16 bit load of dptr
	mov	dptr,#0x0001
	push	ar2
	push	ar3
	lcall	_Delay
	pop	ar3
	pop	ar2
;	FatDrivers/sd.c:223: SD_Command( CMD_GO_IDLE_STATE, 0 );
;	genIpush
	push	ar2
	push	ar3
;	Peephole 181	changed mov to clr
	clr	a
	push	acc
	push	acc
	push	acc
	push	acc
;	genCall
	mov	dpl,#0x00
	lcall	_SD_Command
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar3
	pop	ar2
;	FatDrivers/sd.c:225: while((SD_GetByte() != IDLE_STATE) && (--Count));
;	genCall
	push	ar2
	push	ar3
	lcall	_SD_GetByte
	mov	r4,dpl
	pop	ar3
	pop	ar2
;	genCmpEq
;	gencjneshort
	cjne	r4,#0x01,00134$
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00104$
00134$:
;	genMinus
;	genMinusDec
	dec	r2
	cjne	r2,#0xff,00135$
	dec	r3
00135$:
;	genIfx
	mov	a,r2
	orl	a,r3
;	genIfxJump
;	Peephole 108.b	removed ljmp by inverse jump logic
	jnz	00102$
;	Peephole 300	removed redundant label 00136$
00104$:
;	FatDrivers/sd.c:226: if( !Count )
;	genIfx
	mov	a,r2
	orl	a,r3
;	genIfxJump
;	Peephole 108.b	removed ljmp by inverse jump logic
	jnz	00106$
;	Peephole 300	removed redundant label 00137$
;	FatDrivers/sd.c:231: return( SD_TIME_OUT );
;	genRet
	mov	dpl,#0x01
;	Peephole 251.a	replaced ljmp to ret with ret
	ret
00106$:
;	FatDrivers/sd.c:235: SD_Command( CMD_APP_CMD, 0 );
;	genIpush
;	Peephole 181	changed mov to clr
	clr	a
	push	acc
	push	acc
	push	acc
	push	acc
;	genCall
	mov	dpl,#0x37
	lcall	_SD_Command
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	FatDrivers/sd.c:236: SD_Command( ACMD_SEND_OP_COND, 0 );
;	genIpush
;	Peephole 181	changed mov to clr
	clr	a
	push	acc
	push	acc
	push	acc
	push	acc
;	genCall
	mov	dpl,#0x29
	lcall	_SD_Command
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	FatDrivers/sd.c:237: if( SD_GetByte() <= 1 )
;	genCall
	lcall	_SD_GetByte
;	genCmpGt
;	genCmp
;	genIfxJump
;	Peephole 132.b	optimized genCmpGt by inverse logic (acc differs)
;	peephole 177.g	optimized mov sequence
	mov	a,dpl
	mov	r2,a
	add	a,#0xff - 0x01
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 160.a	removed sjmp by inverse jump logic
	jc	00108$
;	Peephole 300	removed redundant label 00138$
;	FatDrivers/sd.c:238: CardType = 2;
;	genAssign
	mov	dptr,#_CardType
	mov	a,#0x02
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00129$
00108$:
;	FatDrivers/sd.c:240: CardType = 1;
;	genAssign
	mov	dptr,#_CardType
	mov	a,#0x01
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	FatDrivers/sd.c:241: do     // Recheck Card Type and send appropriate initialization commands
00129$:
;	genAssign
	mov	r2,#0xD0
	mov	r3,#0x07
00114$:
;	FatDrivers/sd.c:243: Delay(1);
;	genCall
;	Peephole 182.b	used 16 bit load of dptr
	mov	dptr,#0x0001
	push	ar2
	push	ar3
	lcall	_Delay
	pop	ar3
	pop	ar2
;	FatDrivers/sd.c:244: if( CardType == 2 )
;	genAssign
	mov	dptr,#_CardType
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
;	genCmpEq
;	gencjneshort
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 198.a	optimized misc jump sequence
	cjne	r4,#0x02,00111$
	cjne	r5,#0x00,00111$
;	Peephole 200.b	removed redundant sjmp
;	Peephole 300	removed redundant label 00139$
;	Peephole 300	removed redundant label 00140$
;	FatDrivers/sd.c:246: SD_Command( CMD_APP_CMD, 0 );
;	genIpush
	push	ar2
	push	ar3
;	Peephole 181	changed mov to clr
	clr	a
	push	acc
	push	acc
	push	acc
	push	acc
;	genCall
	mov	dpl,#0x37
	lcall	_SD_Command
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar3
	pop	ar2
;	FatDrivers/sd.c:247: SD_Command( ACMD_SEND_OP_COND, 0 );
;	genIpush
	push	ar2
	push	ar3
;	Peephole 181	changed mov to clr
	clr	a
	push	acc
	push	acc
	push	acc
	push	acc
;	genCall
	mov	dpl,#0x29
	lcall	_SD_Command
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar3
	pop	ar2
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00115$
00111$:
;	FatDrivers/sd.c:251: SD_Command( CMD_SEND_OP_COND, 0 );
;	genIpush
	push	ar2
	push	ar3
;	Peephole 181	changed mov to clr
	clr	a
	push	acc
	push	acc
	push	acc
	push	acc
;	genCall
	mov	dpl,#0x01
	lcall	_SD_Command
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar3
	pop	ar2
00115$:
;	FatDrivers/sd.c:254: while(SD_GetByte() && --Count);
;	genCall
	push	ar2
	push	ar3
	lcall	_SD_GetByte
	mov	a,dpl
	pop	ar3
	pop	ar2
;	genIfx
;	genIfxJump
;	Peephole 108.c	removed ljmp by inverse jump logic
	jz	00116$
;	Peephole 300	removed redundant label 00141$
;	genMinus
;	genMinusDec
	dec	r2
	cjne	r2,#0xff,00142$
	dec	r3
00142$:
;	genIfx
	mov	a,r2
	orl	a,r3
;	genIfxJump
	jz	00143$
	ljmp	00114$
00143$:
00116$:
;	FatDrivers/sd.c:255: if( !Count )
;	genIfx
	mov	a,r2
	orl	a,r3
;	genIfxJump
;	Peephole 108.b	removed ljmp by inverse jump logic
	jnz	00118$
;	Peephole 300	removed redundant label 00144$
;	FatDrivers/sd.c:260: return( SD_TIME_OUT );
;	genRet
	mov	dpl,#0x01
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 251.b	replaced sjmp to ret with ret
	ret
00118$:
;	FatDrivers/sd.c:264: SD_Command( CMD_SEND_STATUS, 0 );
;	genIpush
;	Peephole 181	changed mov to clr
	clr	a
	push	acc
	push	acc
	push	acc
	push	acc
;	genCall
	mov	dpl,#0x0D
	lcall	_SD_Command
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	FatDrivers/sd.c:265: Count = SD_GetWord();
;	genCall
	lcall	_SD_GetWord
	mov	r2,dpl
	mov	r3,dph
;	genAssign
;	FatDrivers/sd.c:267: if( Count )
;	genIfx
	mov	a,r2
	orl	a,r3
;	genIfxJump
;	Peephole 108.c	removed ljmp by inverse jump logic
	jz	00120$
;	Peephole 300	removed redundant label 00145$
;	FatDrivers/sd.c:272: return( SD_ERROR );
;	genRet
	mov	dpl,#0x02
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 251.b	replaced sjmp to ret with ret
	ret
00120$:
;	FatDrivers/sd.c:282: SD_Command( CMD_SET_BLOCKLEN, 512 );
;	genIpush
;	Peephole 181	changed mov to clr
	clr	a
	push	acc
	mov	a,#0x02
	push	acc
;	Peephole 181	changed mov to clr
	clr	a
	push	acc
	push	acc
;	genCall
	mov	dpl,#0x10
	lcall	_SD_Command
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	FatDrivers/sd.c:283: SD_GetByte();
;	genCall
	lcall	_SD_GetByte
;	FatDrivers/sd.c:286: SPI_SetFast();
;	genAssign
	setb	_P1_1
;	genAssign
	mov	_SPCON,#0x70
;	FatDrivers/sd.c:287: Disable_SD_Card();
;	genAssign
	setb	_P1_1
;	FatDrivers/sd.c:288: return( 0 ); // Init OK
;	genRet
	mov	dpl,#0x00
;	Peephole 300	removed redundant label 00121$
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'SD_ReadSector'
;------------------------------------------------------------
;Buffer                    Allocated to stack - offset -5
;SectorNumber              Allocated to registers r2 r3 r4 r5 
;c                         Allocated to registers r2 
;i                         Allocated to registers r3 
;count                     Allocated to registers r4 r5 
;------------------------------------------------------------
;	FatDrivers/sd.c:292: BYTE SD_ReadSector( ULONG SectorNumber, BYTE *Buffer )
;	-----------------------------------------
;	 function SD_ReadSector
;	-----------------------------------------
_SD_ReadSector:
	push	_bp
	mov	_bp,sp
;     genReceive
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
;	FatDrivers/sd.c:297: SD_Command( CMD_READ_SINGLE_BLOCK, SectorNumber<<9);
;	genLeftShift
;	genLeftShiftLiteral
;	genlshFour
	mov	a,r2
;	Peephole 254	optimized left shift
	add	a,r2
	xch	a,r3
	rlc	a
	xch	a,r4
	rlc	a
	xch	a,r5
	mov	r2,#0x00
;	genIpush
	push	ar2
	push	ar3
	push	ar4
	push	ar5
;	genCall
	mov	dpl,#0x11
	lcall	_SD_Command
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	FatDrivers/sd.c:298: c = SD_GetByte();
;	genCall
	lcall	_SD_GetByte
	mov	r2,dpl
;	genAssign
;	FatDrivers/sd.c:299: i = SD_GetByte();
;	genCall
	push	ar2
	lcall	_SD_GetByte
	mov	r3,dpl
	pop	ar2
;	genAssign
;	FatDrivers/sd.c:303: while( (i == 0xff) && --count)
;	genAssign
	mov	r4,#0xFF
	mov	r5,#0xFF
00102$:
;	genCmpEq
;	gencjneshort
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 198.b	optimized misc jump sequence
	cjne	r3,#0xFF,00104$
;	Peephole 200.b	removed redundant sjmp
;	Peephole 300	removed redundant label 00121$
;	Peephole 300	removed redundant label 00122$
;	genMinus
;	genMinusDec
	dec	r4
	cjne	r4,#0xff,00123$
	dec	r5
00123$:
;	genIfx
	mov	a,r4
	orl	a,r5
;	genIfxJump
;	Peephole 108.c	removed ljmp by inverse jump logic
	jz	00104$
;	Peephole 300	removed redundant label 00124$
;	FatDrivers/sd.c:304: i = SD_GetByte();
;	genCall
	push	ar2
	push	ar4
	push	ar5
	lcall	_SD_GetByte
	mov	r6,dpl
	pop	ar5
	pop	ar4
	pop	ar2
;	genAssign
	mov	ar3,r6
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00102$
00104$:
;	FatDrivers/sd.c:307: if(c || i != 0xFE)
;	genIfx
	mov	a,r2
;	genIfxJump
;	Peephole 108.b	removed ljmp by inverse jump logic
	jnz	00105$
;	Peephole 300	removed redundant label 00125$
;	genCmpEq
;	gencjneshort
	cjne	r3,#0xFE,00126$
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00117$
00126$:
00105$:
;	FatDrivers/sd.c:308: return( 1 );
;	genRet
	mov	dpl,#0x01
;	FatDrivers/sd.c:311: for( count=1; count<=SD_DATA_SIZE; count++)
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00111$
00117$:
;	genAssign
	mov	a,_bp
	add	a,#0xfffffffb
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
;	genAssign
	mov	r5,#0x00
	mov	r6,#0x02
00110$:
;	FatDrivers/sd.c:327: *Buffer++=SPI_Byte(0xFF);
;	genCall
	mov	dpl,#0xFF
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	push	ar6
	lcall	_SPI_Byte
	mov	r7,dpl
	pop	ar6
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
;	genPointerSet
;	genGenPointerSet
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r7
	lcall	__gptrput
	inc	dptr
	mov	r2,dpl
	mov	r3,dph
;	genMinus
;	genMinusDec
	dec	r5
	cjne	r5,#0xff,00127$
	dec	r6
00127$:
;	FatDrivers/sd.c:311: for( count=1; count<=SD_DATA_SIZE; count++)
;	genIfx
	mov	a,r5
	orl	a,r6
;	genIfxJump
;	Peephole 108.b	removed ljmp by inverse jump logic
	jnz	00110$
;	Peephole 300	removed redundant label 00128$
;	FatDrivers/sd.c:330: SPI_Byte(0xFF);
;	genCall
	mov	dpl,#0xFF
	lcall	_SPI_Byte
;	FatDrivers/sd.c:331: SPI_Byte(0xFF);
;	genCall
	mov	dpl,#0xFF
	lcall	_SPI_Byte
;	FatDrivers/sd.c:334: Disable_SD_Card();
;	genAssign
	setb	_P1_1
;	FatDrivers/sd.c:336: return( 0 );
;	genRet
	mov	dpl,#0x00
00111$:
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'SD_WriteSector'
;------------------------------------------------------------
;Buffer                    Allocated to stack - offset -5
;SectorNumber              Allocated to registers r2 r3 r4 r5 
;i                         Allocated to registers 
;count                     Allocated to registers r5 r6 
;------------------------------------------------------------
;	FatDrivers/sd.c:341: BYTE SD_WriteSector( ULONG SectorNumber, BYTE *Buffer )
;	-----------------------------------------
;	 function SD_WriteSector
;	-----------------------------------------
_SD_WriteSector:
	push	_bp
	mov	_bp,sp
;     genReceive
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
;	FatDrivers/sd.c:347: SD_Command( CMD_WRITE_SINGLE_BLOCK, SectorNumber << 9 );
;	genLeftShift
;	genLeftShiftLiteral
;	genlshFour
	mov	a,r2
;	Peephole 254	optimized left shift
	add	a,r2
	xch	a,r3
	rlc	a
	xch	a,r4
	rlc	a
	xch	a,r5
	mov	r2,#0x00
;	genIpush
	push	ar2
	push	ar3
	push	ar4
	push	ar5
;	genCall
	mov	dpl,#0x18
	lcall	_SD_Command
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	FatDrivers/sd.c:348: i = SD_GetByte();
;	genCall
	lcall	_SD_GetByte
;	FatDrivers/sd.c:351: SPI_Byte( 0xFE );
;	genCall
	mov	dpl,#0xFE
	lcall	_SPI_Byte
;	FatDrivers/sd.c:354: for( count= 0; count< 512; count++ )
;	genAssign
	mov	a,_bp
	add	a,#0xfffffffb
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
;	genAssign
	mov	r5,#0x00
	mov	r6,#0x02
00106$:
;	FatDrivers/sd.c:356: SPI_Byte(*Buffer++);
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r7,a
	inc	dptr
	mov	r2,dpl
	mov	r3,dph
;	genCall
	mov	dpl,r7
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	push	ar6
	lcall	_SPI_Byte
	pop	ar6
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
;	genMinus
;	genMinusDec
	dec	r5
	cjne	r5,#0xff,00114$
	dec	r6
00114$:
;	FatDrivers/sd.c:354: for( count= 0; count< 512; count++ )
;	genIfx
	mov	a,r5
	orl	a,r6
;	genIfxJump
;	Peephole 108.b	removed ljmp by inverse jump logic
	jnz	00106$
;	Peephole 300	removed redundant label 00115$
;	FatDrivers/sd.c:360: SPI_Byte(0xFF);
;	genCall
	mov	dpl,#0xFF
	lcall	_SPI_Byte
;	FatDrivers/sd.c:361: SPI_Byte(0xFF);
;	genCall
	mov	dpl,#0xFF
	lcall	_SPI_Byte
;	FatDrivers/sd.c:364: while( SPI_Byte( 0xFF ) != 0xFF)
00101$:
;	genCall
	mov	dpl,#0xFF
	lcall	_SPI_Byte
	mov	r2,dpl
;	genCmpEq
;	gencjneshort
	cjne	r2,#0xFF,00116$
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00103$
00116$:
;	FatDrivers/sd.c:369: SPI_Byte( 0xFF );
;	genCall
	mov	dpl,#0xFF
	lcall	_SPI_Byte
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00101$
00103$:
;	FatDrivers/sd.c:372: Disable_SD_Card();
;	genAssign
	setb	_P1_1
;	FatDrivers/sd.c:373: SPI_Byte( 0xFF );
;	genCall
	mov	dpl,#0xFF
	lcall	_SPI_Byte
;	FatDrivers/sd.c:374: return( 0 );
;	genRet
	mov	dpl,#0x00
;	Peephole 300	removed redundant label 00107$
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'SD_WaitForReady'
;------------------------------------------------------------
;i                         Allocated to registers r4 
;j                         Allocated to registers r2 r3 
;------------------------------------------------------------
;	FatDrivers/sd.c:377: BYTE SD_WaitForReady()
;	-----------------------------------------
;	 function SD_WaitForReady
;	-----------------------------------------
_SD_WaitForReady:
;	FatDrivers/sd.c:382: SPI_Byte( 0xFF );
;	genCall
	mov	dpl,#0xFF
	lcall	_SPI_Byte
;	FatDrivers/sd.c:385: do
;	genAssign
	mov	r2,#0xF4
	mov	r3,#0x01
00102$:
;	FatDrivers/sd.c:387: i = SPI_Byte( 0xFF );
;	genCall
	mov	dpl,#0xFF
	push	ar2
	push	ar3
	lcall	_SPI_Byte
	mov	r4,dpl
	pop	ar3
	pop	ar2
;	genAssign
;	FatDrivers/sd.c:388: Delay( 1 );
;	genCall
;	Peephole 182.b	used 16 bit load of dptr
	mov	dptr,#0x0001
	push	ar2
	push	ar3
	push	ar4
	lcall	_Delay
	pop	ar4
	pop	ar3
	pop	ar2
;	FatDrivers/sd.c:390: while ((i != 0xFF) && --j);
;	genCmpEq
;	gencjneshort
	cjne	r4,#0xFF,00110$
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00104$
00110$:
;	genMinus
;	genMinusDec
	dec	r2
	cjne	r2,#0xff,00111$
	dec	r3
00111$:
;	genIfx
	mov	a,r2
	orl	a,r3
;	genIfxJump
;	Peephole 108.b	removed ljmp by inverse jump logic
	jnz	00102$
;	Peephole 300	removed redundant label 00112$
00104$:
;	FatDrivers/sd.c:392: return( i );
;	genRet
	mov	dpl,r4
;	Peephole 300	removed redundant label 00105$
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
__str_0:
	.db 0x1B
	.ascii "8Average Bit Rate: %d Kbps"
	.db 0x00
	.area XINIT   (CODE)
