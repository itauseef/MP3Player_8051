;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.6.0 #4309 (Jul 28 2006)
; This file generated Sat May 02 15:12:58 2015
;--------------------------------------------------------
	.module diskio
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
	.globl _disk_initialize
	.globl _disk_status
	.globl _disk_read
	.globl _disk_mp3_read
	.globl _disk_txt_read
	.globl _disk_write
	.globl _disk_ioctl
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
;Allocation info for local variables in function 'disk_initialize'
;------------------------------------------------------------
;drv                       Allocated to registers r2 
;------------------------------------------------------------
;	FatDrivers/diskio.c:49: DSTATUS disk_initialize( BYTE drv )
;	-----------------------------------------
;	 function disk_initialize
;	-----------------------------------------
_disk_initialize:
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
;	FatDrivers/diskio.c:52: if( drv != 0)
;	genCmpEq
;	gencjneshort
	cjne	r2,#0x00,00109$
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00102$
00109$:
;	FatDrivers/diskio.c:53: return STA_NOINIT;
;	genRet
	mov	dpl,#0x01
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 251.b	replaced sjmp to ret with ret
	ret
00102$:
;	FatDrivers/diskio.c:56: if( !SD_Init() )
;	genCall
	lcall	_SD_Init
	mov	a,dpl
;	genIfx
;	genIfxJump
;	Peephole 108.b	removed ljmp by inverse jump logic
	jnz	00104$
;	Peephole 300	removed redundant label 00110$
;	FatDrivers/diskio.c:59: Stat &= ~STA_NOINIT;
;	genAssign
;	genAnd
	mov	dptr,#_Stat
	movx	a,@dptr
	mov	r2,a
;	Peephole 248.b	optimized and to xdata
	anl	a,#0xFE
	movx	@dptr,a
00104$:
;	FatDrivers/diskio.c:63: return( Stat );
;	genAssign
	mov	dptr,#_Stat
	movx	a,@dptr
;	genRet
;	Peephole 234.a	loading dpl directly from a(ccumulator), r2 not set
	mov	dpl,a
;	Peephole 300	removed redundant label 00105$
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'disk_status'
;------------------------------------------------------------
;drv                       Allocated to registers r2 
;------------------------------------------------------------
;	FatDrivers/diskio.c:69: DSTATUS disk_status( BYTE drv	)
;	-----------------------------------------
;	 function disk_status
;	-----------------------------------------
_disk_status:
;	genReceive
	mov	r2,dpl
;	FatDrivers/diskio.c:72: if( drv != 0)
;	genCmpEq
;	gencjneshort
	cjne	r2,#0x00,00106$
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00102$
00106$:
;	FatDrivers/diskio.c:73: return STA_NOINIT;
;	genRet
	mov	dpl,#0x01
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 251.b	replaced sjmp to ret with ret
	ret
00102$:
;	FatDrivers/diskio.c:76: return( Stat );
;	genAssign
	mov	dptr,#_Stat
	movx	a,@dptr
;	genRet
;	Peephole 234.a	loading dpl directly from a(ccumulator), r2 not set
	mov	dpl,a
;	Peephole 300	removed redundant label 00103$
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'disk_read'
;------------------------------------------------------------
;buff                      Allocated to stack - offset -5
;sector                    Allocated to stack - offset -9
;count                     Allocated to stack - offset -10
;drv                       Allocated to registers r2 
;------------------------------------------------------------
;	FatDrivers/diskio.c:84: DRESULT disk_read ( BYTE drv, BYTE *buff, DWORD sector, BYTE count )
;	-----------------------------------------
;	 function disk_read
;	-----------------------------------------
_disk_read:
	push	_bp
	mov	_bp,sp
;	genReceive
;	FatDrivers/diskio.c:87: if( drv || !count || (count>
;	genIfx
;	peephole 177.g	optimized mov sequence
	mov	a,dpl
	mov	r2,a
;	genIfxJump
;	Peephole 108.b	removed ljmp by inverse jump logic
	jnz	00101$
;	Peephole 300	removed redundant label 00115$
;	genIfx
	mov	a,_bp
	add	a,#0xfffffff6
	mov	r0,a
	mov	a,@r0
;	genIfxJump
;	Peephole 108.c	removed ljmp by inverse jump logic
	jz	00101$
;	Peephole 300	removed redundant label 00116$
;	FatDrivers/diskio.c:88: 1) )
;	genCmpGt
	mov	a,_bp
	add	a,#0xfffffff6
	mov	r0,a
;	genCmp
;	genIfxJump
;	Peephole 108.a	removed ljmp by inverse jump logic
;	Peephole 132.b	optimized genCmpGt by inverse logic (acc differs)
	mov	a,@r0
	add	a,#0xff - 0x01
	jnc	00102$
;	Peephole 300	removed redundant label 00117$
00101$:
;	FatDrivers/diskio.c:89: return( RES_PARERR );
;	genRet
	mov	dpl,#0x04
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00109$
00102$:
;	FatDrivers/diskio.c:92: if( Stat & STA_NOINIT )
;	genAssign
	mov	dptr,#_Stat
	movx	a,@dptr
;	genAnd
	mov	r2,a
;	Peephole 105	removed redundant mov
;	genIfxJump
;	Peephole 108.d	removed ljmp by inverse jump logic
	jnb	acc.0,00106$
;	Peephole 300	removed redundant label 00118$
;	FatDrivers/diskio.c:93: return( RES_NOTRDY );
;	genRet
	mov	dpl,#0x03
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00109$
00106$:
;	FatDrivers/diskio.c:96: if( SD_ReadSector( sector, buff ) )
;	genIpush
	mov	a,_bp
	add	a,#0xfffffffb
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
;	genCall
	mov	a,_bp
	add	a,#0xfffffff7
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	r0
	mov	a,@r0
	lcall	_SD_ReadSector
	mov	r2,dpl
	dec	sp
	dec	sp
	dec	sp
;	genIfx
	mov	a,r2
;	genIfxJump
;	Peephole 108.c	removed ljmp by inverse jump logic
	jz	00108$
;	Peephole 300	removed redundant label 00119$
;	FatDrivers/diskio.c:97: return( RES_ERROR );
;	genRet
	mov	dpl,#0x01
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00109$
00108$:
;	FatDrivers/diskio.c:100: return( RES_OK );
;	genRet
	mov	dpl,#0x00
00109$:
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'disk_mp3_read'
;------------------------------------------------------------
;buff                      Allocated to stack - offset -5
;sector                    Allocated to stack - offset -9
;count                     Allocated to stack - offset -10
;drv                       Allocated to registers r2 
;------------------------------------------------------------
;	FatDrivers/diskio.c:103: DRESULT disk_mp3_read ( BYTE drv, BYTE *buff, DWORD sector, BYTE count )
;	-----------------------------------------
;	 function disk_mp3_read
;	-----------------------------------------
_disk_mp3_read:
	push	_bp
	mov	_bp,sp
;	genReceive
;	FatDrivers/diskio.c:106: if( drv || !count || (count>
;	genIfx
;	peephole 177.g	optimized mov sequence
	mov	a,dpl
	mov	r2,a
;	genIfxJump
;	Peephole 108.b	removed ljmp by inverse jump logic
	jnz	00101$
;	Peephole 300	removed redundant label 00115$
;	genIfx
	mov	a,_bp
	add	a,#0xfffffff6
	mov	r0,a
	mov	a,@r0
;	genIfxJump
;	Peephole 108.c	removed ljmp by inverse jump logic
	jz	00101$
;	Peephole 300	removed redundant label 00116$
;	FatDrivers/diskio.c:107: 1) )
;	genCmpGt
	mov	a,_bp
	add	a,#0xfffffff6
	mov	r0,a
;	genCmp
;	genIfxJump
;	Peephole 108.a	removed ljmp by inverse jump logic
;	Peephole 132.b	optimized genCmpGt by inverse logic (acc differs)
	mov	a,@r0
	add	a,#0xff - 0x01
	jnc	00102$
;	Peephole 300	removed redundant label 00117$
00101$:
;	FatDrivers/diskio.c:108: return( RES_PARERR );
;	genRet
	mov	dpl,#0x04
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00109$
00102$:
;	FatDrivers/diskio.c:111: if( Stat & STA_NOINIT )
;	genAssign
	mov	dptr,#_Stat
	movx	a,@dptr
;	genAnd
	mov	r2,a
;	Peephole 105	removed redundant mov
;	genIfxJump
;	Peephole 108.d	removed ljmp by inverse jump logic
	jnb	acc.0,00106$
;	Peephole 300	removed redundant label 00118$
;	FatDrivers/diskio.c:112: return( RES_NOTRDY );
;	genRet
	mov	dpl,#0x03
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00109$
00106$:
;	FatDrivers/diskio.c:114: *buff=*buff;        // Lazily used buff instead of getting rid of the variable
;	genAssign
	mov	a,_bp
	add	a,#0xfffffffb
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
;	genPointerSet
;	genGenPointerSet
	mov	r5,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
;	Peephole 191	removed redundant mov
	lcall	__gptrput
;	FatDrivers/diskio.c:117: if( SD_ReadMP3( sector ) )
;	genCall
	mov	a,_bp
	add	a,#0xfffffff7
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	r0
	mov	a,@r0
	lcall	_SD_ReadMP3
	mov	a,dpl
;	genIfx
;	genIfxJump
;	Peephole 108.c	removed ljmp by inverse jump logic
	jz	00108$
;	Peephole 300	removed redundant label 00119$
;	FatDrivers/diskio.c:118: return( RES_ERROR );
;	genRet
	mov	dpl,#0x01
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00109$
00108$:
;	FatDrivers/diskio.c:121: return( RES_OK );
;	genRet
	mov	dpl,#0x00
00109$:
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'disk_txt_read'
;------------------------------------------------------------
;buff                      Allocated to stack - offset -5
;sector                    Allocated to stack - offset -9
;count                     Allocated to stack - offset -10
;drv                       Allocated to registers r2 
;------------------------------------------------------------
;	FatDrivers/diskio.c:124: DRESULT disk_txt_read ( BYTE drv, BYTE *buff, DWORD sector, BYTE count )
;	-----------------------------------------
;	 function disk_txt_read
;	-----------------------------------------
_disk_txt_read:
	push	_bp
	mov	_bp,sp
;	genReceive
;	FatDrivers/diskio.c:127: if( drv || !count || (count>
;	genIfx
;	peephole 177.g	optimized mov sequence
	mov	a,dpl
	mov	r2,a
;	genIfxJump
;	Peephole 108.b	removed ljmp by inverse jump logic
	jnz	00101$
;	Peephole 300	removed redundant label 00115$
;	genIfx
	mov	a,_bp
	add	a,#0xfffffff6
	mov	r0,a
	mov	a,@r0
;	genIfxJump
;	Peephole 108.c	removed ljmp by inverse jump logic
	jz	00101$
;	Peephole 300	removed redundant label 00116$
;	FatDrivers/diskio.c:128: 1) )
;	genCmpGt
	mov	a,_bp
	add	a,#0xfffffff6
	mov	r0,a
;	genCmp
;	genIfxJump
;	Peephole 108.a	removed ljmp by inverse jump logic
;	Peephole 132.b	optimized genCmpGt by inverse logic (acc differs)
	mov	a,@r0
	add	a,#0xff - 0x01
	jnc	00102$
;	Peephole 300	removed redundant label 00117$
00101$:
;	FatDrivers/diskio.c:129: return( RES_PARERR );
;	genRet
	mov	dpl,#0x04
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00109$
00102$:
;	FatDrivers/diskio.c:132: if( Stat & STA_NOINIT )
;	genAssign
	mov	dptr,#_Stat
	movx	a,@dptr
;	genAnd
	mov	r2,a
;	Peephole 105	removed redundant mov
;	genIfxJump
;	Peephole 108.d	removed ljmp by inverse jump logic
	jnb	acc.0,00106$
;	Peephole 300	removed redundant label 00118$
;	FatDrivers/diskio.c:133: return( RES_NOTRDY );
;	genRet
	mov	dpl,#0x03
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00109$
00106$:
;	FatDrivers/diskio.c:135: *buff=*buff;        // Lazily used buff instead of getting rid of the variable
;	genAssign
	mov	a,_bp
	add	a,#0xfffffffb
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
;	genPointerSet
;	genGenPointerSet
	mov	r5,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
;	Peephole 191	removed redundant mov
	lcall	__gptrput
;	FatDrivers/diskio.c:138: if( SD_PrintTXT( sector) )
;	genCall
	mov	a,_bp
	add	a,#0xfffffff7
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	r0
	mov	a,@r0
	lcall	_SD_PrintTXT
	mov	a,dpl
;	genIfx
;	genIfxJump
;	Peephole 108.c	removed ljmp by inverse jump logic
	jz	00108$
;	Peephole 300	removed redundant label 00119$
;	FatDrivers/diskio.c:139: return( RES_ERROR );
;	genRet
	mov	dpl,#0x01
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00109$
00108$:
;	FatDrivers/diskio.c:142: return( RES_OK );
;	genRet
	mov	dpl,#0x00
00109$:
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'disk_write'
;------------------------------------------------------------
;buff                      Allocated to stack - offset -5
;sector                    Allocated to stack - offset -9
;count                     Allocated to stack - offset -10
;drv                       Allocated to registers r2 
;------------------------------------------------------------
;	FatDrivers/diskio.c:149: DRESULT disk_write( BYTE drv, const BYTE *buff, DWORD sector, BYTE count )
;	-----------------------------------------
;	 function disk_write
;	-----------------------------------------
_disk_write:
	push	_bp
	mov	_bp,sp
;	genReceive
;	FatDrivers/diskio.c:152: if( drv || !count || (count>
;	genIfx
;	peephole 177.g	optimized mov sequence
	mov	a,dpl
	mov	r2,a
;	genIfxJump
;	Peephole 108.b	removed ljmp by inverse jump logic
	jnz	00101$
;	Peephole 300	removed redundant label 00115$
;	genIfx
	mov	a,_bp
	add	a,#0xfffffff6
	mov	r0,a
	mov	a,@r0
;	genIfxJump
;	Peephole 108.c	removed ljmp by inverse jump logic
	jz	00101$
;	Peephole 300	removed redundant label 00116$
;	FatDrivers/diskio.c:153: 1) )
;	genCmpGt
	mov	a,_bp
	add	a,#0xfffffff6
	mov	r0,a
;	genCmp
;	genIfxJump
;	Peephole 108.a	removed ljmp by inverse jump logic
;	Peephole 132.b	optimized genCmpGt by inverse logic (acc differs)
	mov	a,@r0
	add	a,#0xff - 0x01
	jnc	00102$
;	Peephole 300	removed redundant label 00117$
00101$:
;	FatDrivers/diskio.c:154: return( RES_PARERR );
;	genRet
	mov	dpl,#0x04
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00109$
00102$:
;	FatDrivers/diskio.c:157: if( Stat & STA_NOINIT )
;	genAssign
	mov	dptr,#_Stat
	movx	a,@dptr
;	genAnd
	mov	r2,a
;	Peephole 105	removed redundant mov
;	genIfxJump
;	Peephole 108.d	removed ljmp by inverse jump logic
	jnb	acc.0,00106$
;	Peephole 300	removed redundant label 00118$
;	FatDrivers/diskio.c:158: return( RES_NOTRDY );
;	genRet
	mov	dpl,#0x03
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00109$
00106$:
;	FatDrivers/diskio.c:161: if( SD_WriteSector( sector, buff ) )
;	genIpush
	mov	a,_bp
	add	a,#0xfffffffb
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
;	genCall
	mov	a,_bp
	add	a,#0xfffffff7
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	r0
	mov	a,@r0
	lcall	_SD_WriteSector
	mov	r2,dpl
	dec	sp
	dec	sp
	dec	sp
;	genIfx
	mov	a,r2
;	genIfxJump
;	Peephole 108.c	removed ljmp by inverse jump logic
	jz	00108$
;	Peephole 300	removed redundant label 00119$
;	FatDrivers/diskio.c:162: return( RES_ERROR );
;	genRet
	mov	dpl,#0x01
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00109$
00108$:
;	FatDrivers/diskio.c:165: return( RES_OK );
;	genRet
	mov	dpl,#0x00
00109$:
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'disk_ioctl'
;------------------------------------------------------------
;ctrl                      Allocated to stack - offset -3
;buff                      Allocated to stack - offset -6
;drv                       Allocated to registers r2 
;res                       Allocated to registers r2 
;ptr                       Allocated to registers 
;------------------------------------------------------------
;	FatDrivers/diskio.c:174: DRESULT disk_ioctl ( BYTE drv, BYTE ctrl, void *buff )
;	-----------------------------------------
;	 function disk_ioctl
;	-----------------------------------------
_disk_ioctl:
	push	_bp
	mov	_bp,sp
;	genReceive
	mov	r2,dpl
;	FatDrivers/diskio.c:180: if( drv != 0)
;	genCmpEq
;	gencjneshort
	cjne	r2,#0x00,00116$
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00102$
00116$:
;	FatDrivers/diskio.c:181: return RES_PARERR;
;	genRet
	mov	dpl,#0x04
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00110$
00102$:
;	FatDrivers/diskio.c:184: if( Stat & STA_NOINIT )
;	genAssign
	mov	dptr,#_Stat
	movx	a,@dptr
;	genAnd
	mov	r2,a
;	Peephole 105	removed redundant mov
;	genIfxJump
;	Peephole 108.d	removed ljmp by inverse jump logic
	jnb	acc.0,00104$
;	Peephole 300	removed redundant label 00117$
;	FatDrivers/diskio.c:185: return RES_NOTRDY;
;	genRet
	mov	dpl,#0x03
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00110$
00104$:
;	FatDrivers/diskio.c:187: res = RES_ERROR;
;	genAssign
	mov	r2,#0x01
;	FatDrivers/diskio.c:189: switch( ctrl )
;	genCmpEq
	mov	r0,_bp
	dec	r0
	dec	r0
	dec	r0
;	gencjneshort
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 198.b	optimized misc jump sequence
	cjne	@r0,#0x00,00108$
;	Peephole 200.b	removed redundant sjmp
;	Peephole 300	removed redundant label 00118$
;	Peephole 300	removed redundant label 00119$
;	FatDrivers/diskio.c:193: Enable_SD_Card();
;	genAssign
	clr	_P1_1
;	FatDrivers/diskio.c:194: if( SD_WaitForReady() == 0xFF )
;	genCall
	push	ar2
	lcall	_SD_WaitForReady
	mov	r3,dpl
	pop	ar2
;	genCmpEq
;	gencjneshort
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 198.b	optimized misc jump sequence
	cjne	r3,#0xFF,00109$
;	Peephole 200.b	removed redundant sjmp
;	Peephole 300	removed redundant label 00120$
;	Peephole 300	removed redundant label 00121$
;	FatDrivers/diskio.c:195: res = RES_OK;
;	genAssign
	mov	r2,#0x00
;	FatDrivers/diskio.c:196: break;
;	FatDrivers/diskio.c:198: default:
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00109$
00108$:
;	FatDrivers/diskio.c:199: res = RES_PARERR;
;	genAssign
	mov	r2,#0x04
;	FatDrivers/diskio.c:201: }
00109$:
;	FatDrivers/diskio.c:203: Disable_SD_Card();
;	genAssign
	setb	_P1_1
;	FatDrivers/diskio.c:204: SPI_Byte( 0xFF );
;	genCall
	mov	dpl,#0xFF
	push	ar2
	lcall	_SPI_Byte
	pop	ar2
;	FatDrivers/diskio.c:205: return res;
;	genRet
	mov	dpl,r2
00110$:
	pop	_bp
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
