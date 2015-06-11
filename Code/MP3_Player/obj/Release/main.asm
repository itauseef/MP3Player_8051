;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.6.0 #4309 (Jul 28 2006)
; This file generated Sat May 02 15:12:59 2015
;--------------------------------------------------------
	.module main
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
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
	.globl _ChooseFile
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
_ChooseFile_fs_1_1:
	.ds 2
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area OSEG    (OVR,DATA)
;--------------------------------------------------------
; Stack segment in internal ram 
;--------------------------------------------------------
	.area	SSEG	(DATA)
__start__stack:
	.ds	1

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
_ChooseFile_finfo_1_1:
	.ds 22
_ChooseFile_selectedfile_1_1:
	.ds 27
_ChooseFile_dirs_1_1:
	.ds 19
_ChooseFile_clust_1_1:
	.ds 4
_ChooseFile_res_1_1:
	.ds 1
_ChooseFile_t1_1_1:
	.ds 1
_ChooseFile_t2_1_1:
	.ds 1
_ChooseFile_t3_1_1:
	.ds 1
_ChooseFile_sectorn_1_1:
	.ds 4
_ChooseFile_findstring_1_1:
	.ds 120
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
; interrupt vector 
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area CSEG    (CODE)
__sdcc_program_startup:
	lcall	_main
;	return from main will lock up
	sjmp .
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;i                         Allocated to registers r4 r5 
;nvramptr                  Allocated to registers r2 r3 
;------------------------------------------------------------
;	main.c:38: void main()
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
;	main.c:44: _sdcc_external_startup();
;	genCall
	lcall	__sdcc_external_startup
;	main.c:48: for(i=0; i<0x8000; i++)
;	genAssign
	mov	r2,#0x00
	mov	r3,#0x00
;	genAssign
	mov	r4,#0x00
	mov	r5,#0x80
00121$:
;	main.c:49: *nvramptr++=0;
;	genPointerSet
;     genFarPointerSet
	mov	dpl,r2
	mov	dph,r3
;	Peephole 181	changed mov to clr
	clr	a
	movx	@dptr,a
	inc	dptr
	mov	r2,dpl
	mov	r3,dph
;	genMinus
;	genMinusDec
	dec	r4
	cjne	r4,#0xff,00131$
	dec	r5
00131$:
;	main.c:48: for(i=0; i<0x8000; i++)
;	genIfx
	mov	a,r4
	orl	a,r5
;	genIfxJump
;	Peephole 108.b	removed ljmp by inverse jump logic
	jnz	00121$
;	Peephole 300	removed redundant label 00132$
;	main.c:52: clrvtscreen();
;	genCall
	lcall	_clrvtscreen
;	main.c:57: lcdputstr("\MP3 Player/");
;	genCall
;	Peephole 182.a	used 16 bit load of DPTR
	mov	dptr,#__str_0
	mov	b,#0x80
	lcall	_lcdputstr
;	main.c:60: if( f_mount( 0, &SDCard ) )
;	genIpush
;	Peephole 181	changed mov to clr
	clr	a
	push	acc
	mov	a,#0x20
	push	acc
;	Peephole 181	changed mov to clr
	clr	a
	push	acc
;	genCall
	mov	dpl,#0x00
	lcall	_f_mount
	mov	r2,dpl
	dec	sp
	dec	sp
	dec	sp
;	genIfx
	mov	a,r2
;	genIfxJump
;	Peephole 108.c	removed ljmp by inverse jump logic
	jz	00105$
;	Peephole 300	removed redundant label 00133$
;	main.c:65: while( 1 );
00102$:
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00102$
00105$:
;	main.c:69: if(disk_initialize(0) & STA_NOINIT)
;	genCall
	mov	dpl,#0x00
	lcall	_disk_initialize
	mov	a,dpl
;	genAnd
;	genIfxJump
;	Peephole 108.d	removed ljmp by inverse jump logic
	jnb	acc.0,00110$
;	Peephole 300	removed redundant label 00134$
;	main.c:74: while(1);
00107$:
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00107$
00110$:
;	main.c:77: if (!STA013Init())
;	genCall
	lcall	_STA013Init
	mov	a,dpl
;	genIfx
;	genIfxJump
;	Peephole 108.b	removed ljmp by inverse jump logic
	jnz	00117$
;	Peephole 300	removed redundant label 00135$
;	main.c:82: while(1);
00112$:
;	main.c:86: while(1)
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00112$
00117$:
;	main.c:88: starlines(1);
;	genCall
	mov	dpl,#0x01
	lcall	_starlines
;	main.c:89: printf_tiny("\r\n\033[5;31;47m*************************ESD FINAL PROJECT****************************\033[0m");
;	genIpush
	mov	a,#__str_1
	push	acc
	mov	a,#(__str_1 >> 8)
	push	acc
;	genCall
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:90: starlines(1);
;	genCall
	mov	dpl,#0x01
	lcall	_starlines
;	main.c:94: i2cReceive(Clock_Address,0x00));
;	genIpush
;	Peephole 181	changed mov to clr
	clr	a
	push	acc
;	genCall
	mov	dpl,#0xD0
	lcall	_i2cReceive
	mov	r2,dpl
	dec	sp
;	genCast
	mov	r3,#0x00
;	main.c:93: i2cReceive(Clock_Address,0x01),
;	genIpush
	push	ar2
	push	ar3
	mov	a,#0x01
	push	acc
;	genCall
	mov	dpl,#0xD0
	lcall	_i2cReceive
	mov	r4,dpl
	dec	sp
	pop	ar3
	pop	ar2
;	genCast
	mov	r5,#0x00
;	main.c:92: i2cReceive(Clock_Address,0x02),
;	genIpush
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	mov	a,#0x02
	push	acc
;	genCall
	mov	dpl,#0xD0
	lcall	_i2cReceive
	mov	r6,dpl
	dec	sp
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
;	genCast
	mov	r7,#0x00
;	main.c:91: printf_tiny("\r\nThe Time is : \0337%x:%x:%x\r\n",
;	genIpush
	push	ar2
	push	ar3
;	genIpush
	push	ar4
	push	ar5
;	genIpush
	push	ar6
	push	ar7
;	genIpush
	mov	a,#__str_2
	push	acc
	mov	a,#(__str_2 >> 8)
	push	acc
;	genCall
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xf8
	mov	sp,a
;	main.c:96: ChooseFile("/");
;	genCall
;	Peephole 182.a	used 16 bit load of DPTR
	mov	dptr,#__str_3
	mov	b,#0x80
	lcall	_ChooseFile
	ljmp	00117$
;	Peephole 259.b	removed redundant label 00122$ and ret
;
;------------------------------------------------------------
;Allocation info for local variables in function 'ChooseFile'
;------------------------------------------------------------
;path                      Allocated to stack - offset 1
;i                         Allocated to registers r2 
;j                         Allocated to registers 
;sloc0                     Allocated to stack - offset 4
;fs                        Allocated with name '_ChooseFile_fs_1_1'
;finfo                     Allocated with name '_ChooseFile_finfo_1_1'
;selectedfile              Allocated with name '_ChooseFile_selectedfile_1_1'
;dirs                      Allocated with name '_ChooseFile_dirs_1_1'
;clust                     Allocated with name '_ChooseFile_clust_1_1'
;res                       Allocated with name '_ChooseFile_res_1_1'
;t1                        Allocated with name '_ChooseFile_t1_1_1'
;t2                        Allocated with name '_ChooseFile_t2_1_1'
;t3                        Allocated with name '_ChooseFile_t3_1_1'
;sectorn                   Allocated with name '_ChooseFile_sectorn_1_1'
;findstring                Allocated with name '_ChooseFile_findstring_1_1'
;------------------------------------------------------------
;	main.c:100: unsigned char ChooseFile( char *path )
;	-----------------------------------------
;	 function ChooseFile
;	-----------------------------------------
_ChooseFile:
	push	_bp
	mov	_bp,sp
;     genReceive
	push	dpl
	push	dph
	push	b
	mov	a,sp
	add	a,#0x07
	mov	sp,a
;	main.c:117: if(disk_read(0, SDCard.win, SDCard.dirbase, 1) != RES_OK)
;	genPointerGet
;	genFarPointerGet
	mov	dptr,#(_SDCard + 0x000c)
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
;	genIpush
	mov	a,#0x01
	push	acc
;	genIpush
	push	ar5
	push	ar6
	push	ar7
	push	ar2
;	genIpush
	mov	a,#(_SDCard + 0x0020)
	push	acc
	mov	a,#((_SDCard + 0x0020) >> 8)
	push	acc
;	Peephole 181	changed mov to clr
	clr	a
	push	acc
;	genCall
	mov	dpl,#0x00
	lcall	_disk_read
	mov	r2,dpl
	mov	a,sp
	add	a,#0xf8
	mov	sp,a
;	genCmpEq
;	gencjneshort
	cjne	r2,#0x00,00224$
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00102$
00224$:
;	main.c:122: return 1;
;	genRet
	mov	dpl,#0x01
	ljmp	00164$
00102$:
;	main.c:126: if( f_opendir(&dirs, path) == FR_OK )
;	genIpush
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
;	genCall
;	Peephole 182.a	used 16 bit load of DPTR
	mov	dptr,#_ChooseFile_dirs_1_1
	mov	b,#0x00
	lcall	_f_opendir
	mov	r2,dpl
	dec	sp
	dec	sp
	dec	sp
;	genIfx
	mov	a,r2
;	genIfxJump
	jz	00225$
	ljmp	00162$
00225$:
;	main.c:128: printf_tiny("\r\n Root Directory - SD Card %s\r\n\n", path );
;	genIpush
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
;	genIpush
	mov	a,#__str_4
	push	acc
	mov	a,#(__str_4 >> 8)
	push	acc
;	genCall
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	main.c:129: while( (f_readdir(&dirs, &finfo) == FR_OK) && finfo.fname[0] )
;	genAssign
	mov	r2,#0x01
00104$:
;	genIpush
	push	ar2
	mov	a,#_ChooseFile_finfo_1_1
	push	acc
	mov	a,#(_ChooseFile_finfo_1_1 >> 8)
	push	acc
;	Peephole 181	changed mov to clr
	clr	a
	push	acc
;	genCall
;	Peephole 182.a	used 16 bit load of DPTR
	mov	dptr,#_ChooseFile_dirs_1_1
	mov	b,#0x00
	lcall	_f_readdir
	mov	r3,dpl
	dec	sp
	dec	sp
	dec	sp
	pop	ar2
;	genIfx
	mov	a,r3
;	genIfxJump
	jz	00226$
	ljmp	00106$
00226$:
;	genPointerGet
;	genFarPointerGet
	mov	dptr,#(_ChooseFile_finfo_1_1 + 0x0009)
	movx	a,@dptr
;	genIfxJump
	jnz	00227$
	ljmp	00106$
00227$:
;	main.c:131: printf_tiny("%d )\t",i++);                          // Printing Index Number
;	genAssign
	mov	ar3,r2
;	genPlus
;     genPlusIncr
	inc	r2
;	genCast
	mov	r4,#0x00
;	genIpush
	push	ar2
	push	ar3
	push	ar4
;	genIpush
	mov	a,#__str_5
	push	acc
	mov	a,#(__str_5 >> 8)
	push	acc
;	genCall
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar2
;	main.c:132: putchar('[');                                       // Printing File/Folder Attributes
;	genCall
	mov	dpl,#0x5B
	push	ar2
	lcall	_putchar
	pop	ar2
;	main.c:133: putchar(( finfo.fattrib & AM_RDO ) ? 'r' : '.');
;	genPointerGet
;	genFarPointerGet
	mov	dptr,#(_ChooseFile_finfo_1_1 + 0x0008)
	movx	a,@dptr
;	genAnd
	mov	r3,a
;	Peephole 105	removed redundant mov
;	genIfxJump
;	Peephole 108.d	removed ljmp by inverse jump logic
	jnb	acc.0,00166$
;	Peephole 300	removed redundant label 00228$
;	genAssign
	mov	r3,#0x72
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00167$
00166$:
;	genAssign
	mov	r3,#0x2E
00167$:
;	genCall
	mov	dpl,r3
	push	ar2
	lcall	_putchar
	pop	ar2
;	main.c:134: putchar(( finfo.fattrib & AM_HID ) ? 'h' : '.');
;	genPointerGet
;	genFarPointerGet
	mov	dptr,#(_ChooseFile_finfo_1_1 + 0x0008)
	movx	a,@dptr
;	genAnd
	mov	r3,a
;	Peephole 105	removed redundant mov
;	genIfxJump
;	Peephole 108.d	removed ljmp by inverse jump logic
	jnb	acc.1,00168$
;	Peephole 300	removed redundant label 00229$
;	genAssign
	mov	r3,#0x68
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00169$
00168$:
;	genAssign
	mov	r3,#0x2E
00169$:
;	genCall
	mov	dpl,r3
	push	ar2
	lcall	_putchar
	pop	ar2
;	main.c:135: putchar(( finfo.fattrib & AM_SYS ) ? 's' : '.');
;	genPointerGet
;	genFarPointerGet
	mov	dptr,#(_ChooseFile_finfo_1_1 + 0x0008)
	movx	a,@dptr
;	genAnd
	mov	r3,a
;	Peephole 105	removed redundant mov
;	genIfxJump
;	Peephole 108.d	removed ljmp by inverse jump logic
	jnb	acc.2,00170$
;	Peephole 300	removed redundant label 00230$
;	genAssign
	mov	r3,#0x73
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00171$
00170$:
;	genAssign
	mov	r3,#0x2E
00171$:
;	genCall
	mov	dpl,r3
	push	ar2
	lcall	_putchar
	pop	ar2
;	main.c:136: putchar(( finfo.fattrib & AM_VOL ) ? 'v' : '.');
;	genPointerGet
;	genFarPointerGet
	mov	dptr,#(_ChooseFile_finfo_1_1 + 0x0008)
	movx	a,@dptr
;	genAnd
	mov	r3,a
;	Peephole 105	removed redundant mov
;	genIfxJump
;	Peephole 108.d	removed ljmp by inverse jump logic
	jnb	acc.3,00172$
;	Peephole 300	removed redundant label 00231$
;	genAssign
	mov	r3,#0x76
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00173$
00172$:
;	genAssign
	mov	r3,#0x2E
00173$:
;	genCall
	mov	dpl,r3
	push	ar2
	lcall	_putchar
	pop	ar2
;	main.c:137: putchar(( finfo.fattrib & AM_LFN ) ? 'l' : '.');
;	genPointerGet
;	genFarPointerGet
	mov	dptr,#(_ChooseFile_finfo_1_1 + 0x0008)
	movx	a,@dptr
;	genAnd
	mov	r3,a
;	Peephole 105	removed redundant mov
	anl	a,#0x0F
;	Peephole 108.c	removed ljmp by inverse jump logic
	jz	00174$
;	Peephole 300	removed redundant label 00232$
;	genAssign
	mov	r3,#0x6C
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00175$
00174$:
;	genAssign
	mov	r3,#0x2E
00175$:
;	genCall
	mov	dpl,r3
	push	ar2
	lcall	_putchar
	pop	ar2
;	main.c:138: putchar(( finfo.fattrib & AM_DIR ) ? 'd' : '.');
;	genPointerGet
;	genFarPointerGet
	mov	dptr,#(_ChooseFile_finfo_1_1 + 0x0008)
	movx	a,@dptr
;	genAnd
	mov	r3,a
;	Peephole 105	removed redundant mov
;	genIfxJump
;	Peephole 108.d	removed ljmp by inverse jump logic
	jnb	acc.4,00176$
;	Peephole 300	removed redundant label 00233$
;	genAssign
	mov	r3,#0x64
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00177$
00176$:
;	genAssign
	mov	r3,#0x2E
00177$:
;	genCall
	mov	dpl,r3
	push	ar2
	lcall	_putchar
	pop	ar2
;	main.c:139: putchar(( finfo.fattrib & AM_ARC ) ? 'a' : '.');
;	genPointerGet
;	genFarPointerGet
	mov	dptr,#(_ChooseFile_finfo_1_1 + 0x0008)
	movx	a,@dptr
;	genAnd
	mov	r3,a
;	Peephole 105	removed redundant mov
;	genIfxJump
;	Peephole 108.d	removed ljmp by inverse jump logic
	jnb	acc.5,00178$
;	Peephole 300	removed redundant label 00234$
;	genAssign
	mov	r3,#0x61
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00179$
00178$:
;	genAssign
	mov	r3,#0x2E
00179$:
;	genCall
	mov	dpl,r3
	push	ar2
	lcall	_putchar
	pop	ar2
;	main.c:140: putchar(']');
;	genCall
	mov	dpl,#0x5D
	push	ar2
	lcall	_putchar
	pop	ar2
;	main.c:141: printf_tiny("%s  %s\r\n", (finfo.fattrib & AM_DIR)?"<DIR>":"     ", finfo.fname );  // Printing File/Folder Name
;	genPointerGet
;	genFarPointerGet
	mov	dptr,#(_ChooseFile_finfo_1_1 + 0x0008)
	movx	a,@dptr
;	genAnd
	mov	r3,a
;	Peephole 105	removed redundant mov
;	genIfxJump
;	Peephole 108.d	removed ljmp by inverse jump logic
	jnb	acc.4,00180$
;	Peephole 300	removed redundant label 00235$
;	genAssign
	mov	r3,#__str_7
	mov	r4,#(__str_7 >> 8)
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00181$
00180$:
;	genAssign
	mov	r3,#__str_8
	mov	r4,#(__str_8 >> 8)
00181$:
;	genCast
	mov	r5,#0x80
;	genIpush
	push	ar2
	mov	a,#(_ChooseFile_finfo_1_1 + 0x0009)
	push	acc
	mov	a,#((_ChooseFile_finfo_1_1 + 0x0009) >> 8)
	push	acc
;	Peephole 181	changed mov to clr
	clr	a
	push	acc
;	genIpush
	push	ar3
	push	ar4
	push	ar5
;	genIpush
	mov	a,#__str_6
	push	acc
	mov	a,#(__str_6 >> 8)
	push	acc
;	genCall
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xf8
	mov	sp,a
	pop	ar2
	ljmp	00104$
00106$:
;	main.c:143: starlines(1);
;	genCall
	mov	dpl,#0x01
	push	ar2
	lcall	_starlines
	pop	ar2
;	main.c:144: printf_tiny("\r\n\nSelect File:\0337");     // Get Index Number of file to processed from User.
;	genIpush
	push	ar2
	mov	a,#__str_9
	push	acc
	mov	a,#(__str_9 >> 8)
	push	acc
;	genCall
	lcall	_printf_tiny
	dec	sp
	dec	sp
	pop	ar2
;	main.c:145: i=getnumbetween(0,i,3);
;	genCast
	mov	r3,#0x00
;	genIpush
	mov	a,#0x03
	push	acc
;	Peephole 181	changed mov to clr
	clr	a
	push	acc
;	genIpush
	push	ar2
	push	ar3
;	genCall
;	Peephole 182.b	used 16 bit load of dptr
	mov	dptr,#0x0000
	lcall	_getnumbetween
	mov	r2,dpl
	mov	r3,dph
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	genCast
;	main.c:146: f_opendir(&dirs, path);
;	genIpush
	push	ar2
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
;	genCall
;	Peephole 182.a	used 16 bit load of DPTR
	mov	dptr,#_ChooseFile_dirs_1_1
	mov	b,#0x00
	lcall	_f_opendir
	dec	sp
	dec	sp
	dec	sp
	pop	ar2
;	main.c:147: while(i--) f_readdir(&dirs, &finfo);        // Rewind index to selected file
;	genAssign
	mov	ar3,r2
00107$:
;	genAssign
	mov	ar4,r3
;	genMinus
;	genMinusDec
	dec	r3
;	genIfx
	mov	a,r4
;	genIfxJump
;	Peephole 108.c	removed ljmp by inverse jump logic
	jz	00109$
;	Peephole 300	removed redundant label 00236$
;	genIpush
	push	ar3
	mov	a,#_ChooseFile_finfo_1_1
	push	acc
	mov	a,#(_ChooseFile_finfo_1_1 >> 8)
	push	acc
;	Peephole 181	changed mov to clr
	clr	a
	push	acc
;	genCall
;	Peephole 182.a	used 16 bit load of DPTR
	mov	dptr,#_ChooseFile_dirs_1_1
	mov	b,#0x00
	lcall	_f_readdir
	dec	sp
	dec	sp
	dec	sp
	pop	ar3
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00107$
00109$:
;	main.c:148: clrvtscreen();
;	genCall
	lcall	_clrvtscreen
;	main.c:149: starlines(1);
;	genCall
	mov	dpl,#0x01
	lcall	_starlines
;	main.c:150: if(f_open(&selectedfile,finfo.fname,0))     // Open selected file
;	genIpush
;	Peephole 181	changed mov to clr
	clr	a
	push	acc
;	genIpush
	mov	a,#(_ChooseFile_finfo_1_1 + 0x0009)
	push	acc
	mov	a,#((_ChooseFile_finfo_1_1 + 0x0009) >> 8)
	push	acc
;	Peephole 181	changed mov to clr
	clr	a
	push	acc
;	genCall
;	Peephole 182.a	used 16 bit load of DPTR
	mov	dptr,#_ChooseFile_selectedfile_1_1
	mov	b,#0x00
	lcall	_f_open
	mov	r3,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	genIfx
	mov	a,r3
;	genIfxJump
;	Peephole 108.c	removed ljmp by inverse jump logic
	jz	00114$
;	Peephole 300	removed redundant label 00237$
;	main.c:152: printf_tiny("Cannot open file.");       // If Folder Selected or Unable to read file then Reset
;	genIpush
	mov	a,#__str_10
	push	acc
	mov	a,#(__str_10 >> 8)
	push	acc
;	genCall
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:153: entercontinue();
;	genCall
	lcall	_entercontinue
;	main.c:154: WDTRST=0X1E;
;	genAssign
	mov	_WDTRST,#0x1E
;	main.c:155: WDTRST=0XE1;
;	genAssign
	mov	_WDTRST,#0xE1
;	main.c:156: while(1);
00111$:
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00111$
00114$:
;	main.c:158: i=3;                                        // If File Opened then process Extension
;	genAssign
	mov	r2,#0x03
;	main.c:159: t1=finfo.fname[strlen(finfo.fname)-3];
;	genCall
;	Peephole 182.a	used 16 bit load of DPTR
	mov	dptr,#(_ChooseFile_finfo_1_1 + 0x0009)
	mov	b,#0x00
	push	ar2
	lcall	_strlen
	mov	r3,dpl
	mov	r4,dph
	pop	ar2
;	genCast
;	genMinus
;	genMinusDec
	mov	a,r3
	add	a,#0xfd
;	genPlus
	add	a,#(_ChooseFile_finfo_1_1 + 0x0009)
	mov	dpl,a
;	Peephole 240	use clr instead of addc a,#0
	clr	a
	addc	a,#((_ChooseFile_finfo_1_1 + 0x0009) >> 8)
	mov	dph,a
;	genPointerGet
;	genFarPointerGet
	movx	a,@dptr
;	genAssign
	mov	r3,a
	mov	dptr,#_ChooseFile_t1_1_1
;	Peephole 100	removed redundant mov
	movx	@dptr,a
;	main.c:160: t2=finfo.fname[strlen(finfo.fname)-2];
;	genCall
;	Peephole 182.a	used 16 bit load of DPTR
	mov	dptr,#(_ChooseFile_finfo_1_1 + 0x0009)
	mov	b,#0x00
	push	ar2
	lcall	_strlen
	mov	r3,dpl
	mov	r4,dph
	pop	ar2
;	genCast
;	genMinus
;	genMinusDec
	mov	a,r3
	add	a,#0xfe
;	genPlus
	add	a,#(_ChooseFile_finfo_1_1 + 0x0009)
	mov	dpl,a
;	Peephole 240	use clr instead of addc a,#0
	clr	a
	addc	a,#((_ChooseFile_finfo_1_1 + 0x0009) >> 8)
	mov	dph,a
;	genPointerGet
;	genFarPointerGet
	movx	a,@dptr
;	genAssign
	mov	r3,a
	mov	dptr,#_ChooseFile_t2_1_1
;	Peephole 100	removed redundant mov
	movx	@dptr,a
;	main.c:161: t3=finfo.fname[strlen(finfo.fname)-1];
;	genCall
;	Peephole 182.a	used 16 bit load of DPTR
	mov	dptr,#(_ChooseFile_finfo_1_1 + 0x0009)
	mov	b,#0x00
	push	ar2
	lcall	_strlen
	mov	r3,dpl
	mov	r4,dph
	pop	ar2
;	genCast
;	genMinus
;	genMinusDec
	mov	a,r3
	dec	a
;	genPlus
	add	a,#(_ChooseFile_finfo_1_1 + 0x0009)
	mov	dpl,a
;	Peephole 240	use clr instead of addc a,#0
	clr	a
	addc	a,#((_ChooseFile_finfo_1_1 + 0x0009) >> 8)
	mov	dph,a
;	genPointerGet
;	genFarPointerGet
	movx	a,@dptr
;	genAssign
	mov	r3,a
	mov	dptr,#_ChooseFile_t3_1_1
;	Peephole 100	removed redundant mov
	movx	@dptr,a
;	main.c:162: if((t1=='t'||t1=='T')&&(t2=='x'||t2=='X')&&(t3=='t'||t3=='T')) i=0;
;	genAssign
	mov	dptr,#_ChooseFile_t1_1_1
	movx	a,@dptr
	mov	r4,a
;	genCmpEq
;	gencjneshort
	cjne	r4,#0x74,00238$
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00119$
00238$:
;	genCmpEq
;	gencjneshort
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 198.b	optimized misc jump sequence
	cjne	r4,#0x54,00116$
;	Peephole 200.b	removed redundant sjmp
;	Peephole 300	removed redundant label 00239$
;	Peephole 300	removed redundant label 00240$
00119$:
;	genAssign
	mov	dptr,#_ChooseFile_t2_1_1
	movx	a,@dptr
	mov	r4,a
;	genCmpEq
;	gencjneshort
	cjne	r4,#0x78,00241$
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00121$
00241$:
;	genCmpEq
;	gencjneshort
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 198.b	optimized misc jump sequence
	cjne	r4,#0x58,00116$
;	Peephole 200.b	removed redundant sjmp
;	Peephole 300	removed redundant label 00242$
;	Peephole 300	removed redundant label 00243$
00121$:
;	genCmpEq
;	gencjneshort
	cjne	r3,#0x74,00244$
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00115$
00244$:
;	genCmpEq
;	gencjneshort
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 198.b	optimized misc jump sequence
	cjne	r3,#0x54,00116$
;	Peephole 200.b	removed redundant sjmp
;	Peephole 300	removed redundant label 00245$
;	Peephole 300	removed redundant label 00246$
00115$:
;	genAssign
	mov	r2,#0x00
00116$:
;	main.c:163: if((t1=='m'||t1=='M')&&(t2=='p'||t2=='P')&&(t3=='3')) i=1;
;	genAssign
	mov	dptr,#_ChooseFile_t1_1_1
	movx	a,@dptr
	mov	r4,a
;	genCmpEq
;	gencjneshort
	cjne	r4,#0x6D,00247$
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00126$
00247$:
;	genCmpEq
;	gencjneshort
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 198.b	optimized misc jump sequence
	cjne	r4,#0x4D,00123$
;	Peephole 200.b	removed redundant sjmp
;	Peephole 300	removed redundant label 00248$
;	Peephole 300	removed redundant label 00249$
00126$:
;	genAssign
	mov	dptr,#_ChooseFile_t2_1_1
	movx	a,@dptr
	mov	r4,a
;	genCmpEq
;	gencjneshort
	cjne	r4,#0x70,00250$
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00127$
00250$:
;	genCmpEq
;	gencjneshort
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 198.b	optimized misc jump sequence
	cjne	r4,#0x50,00123$
;	Peephole 200.b	removed redundant sjmp
;	Peephole 300	removed redundant label 00251$
;	Peephole 300	removed redundant label 00252$
00127$:
;	genCmpEq
;	gencjneshort
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 198.b	optimized misc jump sequence
	cjne	r3,#0x33,00123$
;	Peephole 200.b	removed redundant sjmp
;	Peephole 300	removed redundant label 00253$
;	Peephole 300	removed redundant label 00254$
;	genAssign
	mov	r2,#0x01
00123$:
;	main.c:167: if (i)                                      // Process MP3 File
;	genIfx
	mov	a,r2
;	genIfxJump
	jnz	00255$
	ljmp	00151$
00255$:
;	main.c:169: sectorn=(DWORD)(selectedfile.org_clust-2) * (&SDCard)->sects_clust + (&SDCard)->database;
;	genPointerGet
;	genFarPointerGet
	mov	dptr,#(_ChooseFile_selectedfile_1_1 + 0x000f)
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
;	genMinus
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
;	genMinusDec
	mov	a,r3
	add	a,#0xfe
	mov	@r0,a
	mov	a,r4
	addc	a,#0xff
	inc	r0
	mov	@r0,a
	mov	a,r5
	addc	a,#0xff
	inc	r0
	mov	@r0,a
	mov	a,r6
	addc	a,#0xff
	inc	r0
	mov	@r0,a
;	genPointerGet
;	genFarPointerGet
	mov	dptr,#(_SDCard + 0x001d)
	movx	a,@dptr
	mov	r7,a
;	genCast
	mov	r3,#0x00
	mov	r4,#0x00
	mov	r5,#0x00
;	genIpush
	push	ar7
	push	ar3
	push	ar4
	push	ar5
;	genCall
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	r0
	mov	a,@r0
	lcall	__mullong
	mov	r0,_bp
	inc	r0
	inc	r0
	inc	r0
	inc	r0
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
	inc	r0
	mov	@r0,b
	inc	r0
	mov	@r0,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	genPointerGet
;	genFarPointerGet
	mov	dptr,#(_SDCard + 0x0010)
	movx	a,@dptr
	mov	r7,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
;	genPlus
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
;	Peephole 236.g	used r7 instead of ar7
	mov	a,r7
	add	a,@r0
	mov	r7,a
;	Peephole 236.g	used r3 instead of ar3
	mov	a,r3
	inc	r0
	addc	a,@r0
	mov	r3,a
;	Peephole 236.g	used r4 instead of ar4
	mov	a,r4
	inc	r0
	addc	a,@r0
	mov	r4,a
;	Peephole 236.g	used r5 instead of ar5
	mov	a,r5
	inc	r0
	addc	a,@r0
	mov	r5,a
;	genAssign
	mov	dptr,#_ChooseFile_sectorn_1_1
	mov	a,r7
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
;	main.c:170: SD_ReadSector(sectorn,SDCard.win);      // Process ID3 Tag to find song name and other details
;	genIpush
	mov	a,#(_SDCard + 0x0020)
	push	acc
	mov	a,#((_SDCard + 0x0020) >> 8)
	push	acc
;	Peephole 181	changed mov to clr
	clr	a
	push	acc
;	genCall
	mov	dpl,r7
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	_SD_ReadSector
	dec	sp
	dec	sp
	dec	sp
;	main.c:173: if (SDCard.win[0]=='I'&&SDCard.win[1]=='D'&&SDCard.win[2]=='3')
;	genPointerGet
;	genFarPointerGet
	mov	dptr,#(_SDCard + 0x0020)
	movx	a,@dptr
	mov	r3,a
;	genCmpEq
;	gencjneshort
	cjne	r3,#0x49,00256$
	sjmp	00257$
00256$:
	ljmp	00138$
00257$:
;	genPointerGet
;	genFarPointerGet
	mov	dptr,#(_SDCard + 0x0021)
	movx	a,@dptr
	mov	r3,a
;	genCmpEq
;	gencjneshort
	cjne	r3,#0x44,00258$
	sjmp	00259$
00258$:
	ljmp	00138$
00259$:
;	genPointerGet
;	genFarPointerGet
	mov	dptr,#(_SDCard + 0x0022)
	movx	a,@dptr
	mov	r3,a
;	genCmpEq
;	gencjneshort
	cjne	r3,#0x33,00260$
	sjmp	00261$
00260$:
	ljmp	00138$
00261$:
;	main.c:175: printf_tiny("\r\nPlaying File: \033[5;31;47m");
;	genIpush
	mov	a,#__str_11
	push	acc
	mov	a,#(__str_11 >> 8)
	push	acc
;	genCall
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:176: lcdputstr("\rPlaying File: \r\n");
;	genCall
;	Peephole 182.a	used 16 bit load of DPTR
	mov	dptr,#__str_12
	mov	b,#0x80
	lcall	_lcdputstr
;	main.c:177: for(i=21; i<60; i++)
;	genAssign
	mov	r3,#0x15
00133$:
;	genCmpLt
;	genCmp
	cjne	r3,#0x3C,00262$
00262$:
;	genIfxJump
	jc	00263$
	ljmp	00139$
00263$:
;	main.c:179: putchar(SDCard.win[i]);
;	genCast
	mov	ar4,r3
	mov	r5,#0x00
;	genPlus
;	Peephole 236.g	used r4 instead of ar4
	mov	a,r4
	add	a,#(_SDCard + 0x0020)
	mov	dpl,a
;	Peephole 236.g	used r5 instead of ar5
	mov	a,r5
	addc	a,#((_SDCard + 0x0020) >> 8)
	mov	dph,a
;	genPointerGet
;	genFarPointerGet
	movx	a,@dptr
;	genCall
	mov	r6,a
;	Peephole 244.c	loading dpl from a instead of r6
	mov	dpl,a
	push	ar3
	push	ar4
	push	ar5
	lcall	_putchar
	pop	ar5
	pop	ar4
	pop	ar3
;	main.c:180: lcdputch((SDCard.win[i]));
;	genPlus
;	Peephole 236.g	used r4 instead of ar4
	mov	a,r4
	add	a,#(_SDCard + 0x0020)
	mov	dpl,a
;	Peephole 236.g	used r5 instead of ar5
	mov	a,r5
	addc	a,#((_SDCard + 0x0020) >> 8)
	mov	dph,a
;	genPointerGet
;	genFarPointerGet
	movx	a,@dptr
;	genCall
	mov	r4,a
;	Peephole 244.c	loading dpl from a instead of r4
	mov	dpl,a
	push	ar3
	lcall	_lcdputch
	pop	ar3
;	main.c:181: if((SDCard.win[i+1]=='T')&&(SDCard.win[i+2]=='P')&&(SDCard.win[i+3]=='E')&&(SDCard.win[i+4]=='1'))
;	genCast
	mov	ar4,r3
	mov	r5,#0x00
;	genPlus
;     genPlusIncr
	mov	a,#0x01
;	Peephole 236.a	used r4 instead of ar4
	add	a,r4
	mov	r6,a
;	Peephole 181	changed mov to clr
	clr	a
;	Peephole 236.b	used r5 instead of ar5
	addc	a,r5
	mov	r7,a
;	genPlus
;	Peephole 236.g	used r6 instead of ar6
	mov	a,r6
	add	a,#(_SDCard + 0x0020)
	mov	dpl,a
;	Peephole 236.g	used r7 instead of ar7
	mov	a,r7
	addc	a,#((_SDCard + 0x0020) >> 8)
	mov	dph,a
;	genPointerGet
;	genFarPointerGet
	movx	a,@dptr
	mov	r6,a
;	genCmpEq
;	gencjneshort
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 198.b	optimized misc jump sequence
	cjne	r6,#0x54,00135$
;	Peephole 200.b	removed redundant sjmp
;	Peephole 300	removed redundant label 00264$
;	Peephole 300	removed redundant label 00265$
;	genPlus
;     genPlusIncr
	mov	a,#0x02
;	Peephole 236.a	used r4 instead of ar4
	add	a,r4
	mov	r6,a
;	Peephole 181	changed mov to clr
	clr	a
;	Peephole 236.b	used r5 instead of ar5
	addc	a,r5
	mov	r7,a
;	genPlus
;	Peephole 236.g	used r6 instead of ar6
	mov	a,r6
	add	a,#(_SDCard + 0x0020)
	mov	dpl,a
;	Peephole 236.g	used r7 instead of ar7
	mov	a,r7
	addc	a,#((_SDCard + 0x0020) >> 8)
	mov	dph,a
;	genPointerGet
;	genFarPointerGet
	movx	a,@dptr
	mov	r6,a
;	genCmpEq
;	gencjneshort
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 198.b	optimized misc jump sequence
	cjne	r6,#0x50,00135$
;	Peephole 200.b	removed redundant sjmp
;	Peephole 300	removed redundant label 00266$
;	Peephole 300	removed redundant label 00267$
;	genPlus
;     genPlusIncr
	mov	a,#0x03
;	Peephole 236.a	used r4 instead of ar4
	add	a,r4
	mov	r6,a
;	Peephole 181	changed mov to clr
	clr	a
;	Peephole 236.b	used r5 instead of ar5
	addc	a,r5
	mov	r7,a
;	genPlus
;	Peephole 236.g	used r6 instead of ar6
	mov	a,r6
	add	a,#(_SDCard + 0x0020)
	mov	dpl,a
;	Peephole 236.g	used r7 instead of ar7
	mov	a,r7
	addc	a,#((_SDCard + 0x0020) >> 8)
	mov	dph,a
;	genPointerGet
;	genFarPointerGet
	movx	a,@dptr
	mov	r6,a
;	genCmpEq
;	gencjneshort
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 198.b	optimized misc jump sequence
	cjne	r6,#0x45,00135$
;	Peephole 200.b	removed redundant sjmp
;	Peephole 300	removed redundant label 00268$
;	Peephole 300	removed redundant label 00269$
;	genPlus
;     genPlusIncr
	mov	a,#0x04
;	Peephole 236.a	used r4 instead of ar4
	add	a,r4
	mov	r4,a
;	Peephole 181	changed mov to clr
	clr	a
;	Peephole 236.b	used r5 instead of ar5
	addc	a,r5
	mov	r5,a
;	genPlus
;	Peephole 236.g	used r4 instead of ar4
	mov	a,r4
	add	a,#(_SDCard + 0x0020)
	mov	dpl,a
;	Peephole 236.g	used r5 instead of ar5
	mov	a,r5
	addc	a,#((_SDCard + 0x0020) >> 8)
	mov	dph,a
;	genPointerGet
;	genFarPointerGet
	movx	a,@dptr
	mov	r4,a
;	genCmpEq
;	gencjneshort
	cjne	r4,#0x31,00270$
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00139$
00270$:
;	main.c:182: break;
00135$:
;	main.c:177: for(i=21; i<60; i++)
;	genPlus
;     genPlusIncr
	inc	r3
	ljmp	00133$
00138$:
;	main.c:187: printf_tiny("\r\nPlaying File: \033[5;31;47m%s",finfo.fname);
;	genIpush
	mov	a,#(_ChooseFile_finfo_1_1 + 0x0009)
	push	acc
	mov	a,#((_ChooseFile_finfo_1_1 + 0x0009) >> 8)
	push	acc
;	Peephole 181	changed mov to clr
	clr	a
	push	acc
;	genIpush
	mov	a,#__str_13
	push	acc
	mov	a,#(__str_13 >> 8)
	push	acc
;	genCall
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
00139$:
;	main.c:189: printf_tiny("\033[0m");                 // Start an interface for user to choose options while playing
;	genIpush
	mov	a,#__str_14
	push	acc
	mov	a,#(__str_14 >> 8)
	push	acc
;	genCall
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:190: starlines(1);
;	genCall
	mov	dpl,#0x01
	lcall	_starlines
;	main.c:191: printf_tiny("\r\n 'q' to stop playing and reselect song");
;	genIpush
	mov	a,#__str_15
	push	acc
	mov	a,#(__str_15 >> 8)
	push	acc
;	genCall
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:192: printf_tiny("\r\n '+' to increase volume");
;	genIpush
	mov	a,#__str_16
	push	acc
	mov	a,#(__str_16 >> 8)
	push	acc
;	genCall
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:193: printf_tiny("\r\n '-' to decrease volume");
;	genIpush
	mov	a,#__str_17
	push	acc
	mov	a,#(__str_17 >> 8)
	push	acc
;	genCall
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:194: printf_tiny("\r\n 'i' to query decoder bit-rate\t\t\0337");
;	genIpush
	mov	a,#__str_18
	push	acc
	mov	a,#(__str_18 >> 8)
	push	acc
;	genCall
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:195: printf_tiny("\r\n 'm' to mute");
;	genIpush
	mov	a,#__str_19
	push	acc
	mov	a,#(__str_19 >> 8)
	push	acc
;	genCall
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:196: printf_tiny("\r\n 'u' to unmute");
;	genIpush
	mov	a,#__str_20
	push	acc
	mov	a,#(__str_20 >> 8)
	push	acc
;	genCall
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:197: printf_tiny("\r\n 'p' to pause/unpause");
;	genIpush
	mov	a,#__str_21
	push	acc
	mov	a,#(__str_21 >> 8)
	push	acc
;	genCall
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:198: starlines(1);
;	genCall
	mov	dpl,#0x01
	lcall	_starlines
;	main.c:199: STA013StartDecoder();
;	genCall
	lcall	_STA013StartDecoder
;	main.c:206: f_mp3_read(&selectedfile,xbuffer,finfo.fsize,&selectedfile.fptr);
;	genPointerGet
;	genFarPointerGet
	mov	dptr,#_ChooseFile_finfo_1_1
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
;	genCast
;	genIpush
	mov	a,#(_ChooseFile_selectedfile_1_1 + 0x0007)
	push	acc
	mov	a,#((_ChooseFile_selectedfile_1_1 + 0x0007) >> 8)
	push	acc
;	Peephole 181	changed mov to clr
	clr	a
	push	acc
;	genIpush
	push	ar3
	push	ar4
;	genIpush
	mov	a,#_xbuffer
	push	acc
	mov	a,#(_xbuffer >> 8)
	push	acc
;	Peephole 181	changed mov to clr
	clr	a
	push	acc
;	genCall
;	Peephole 182.a	used 16 bit load of DPTR
	mov	dptr,#_ChooseFile_selectedfile_1_1
	mov	b,#0x00
	lcall	_f_mp3_read
	mov	a,sp
	add	a,#0xf8
	mov	sp,a
;	main.c:208: STA013StopDecoder();
;	genCall
	lcall	_STA013StopDecoder
;	main.c:209: entercontinue();
;	genCall
	lcall	_entercontinue
;	main.c:210: WDTRST=0X1E;
;	genAssign
	mov	_WDTRST,#0x1E
;	main.c:211: WDTRST=0XE1;
;	genAssign
	mov	_WDTRST,#0xE1
;	main.c:212: while(1);
00143$:
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00143$
00151$:
;	main.c:214: else if(i==0)
;	genIfx
	mov	a,r2
;	genIfxJump
	jz	00271$
	ljmp	00152$
00271$:
;	main.c:216: starlines(1);
;	genCall
	mov	dpl,#0x01
	lcall	_starlines
;	main.c:217: printf_tiny("\r\nSending \033[5;31;47m%s\033[0m via Zigbee.\r\n\n",finfo.fname);
;	genIpush
	mov	a,#(_ChooseFile_finfo_1_1 + 0x0009)
	push	acc
	mov	a,#((_ChooseFile_finfo_1_1 + 0x0009) >> 8)
	push	acc
;	Peephole 181	changed mov to clr
	clr	a
	push	acc
;	genIpush
	mov	a,#__str_22
	push	acc
	mov	a,#(__str_22 >> 8)
	push	acc
;	genCall
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	main.c:218: P3_4=1;
;	genAssign
	setb	_P3_4
;	main.c:219: entercontinue();
;	genCall
	lcall	_entercontinue
;	main.c:220: CKCKON0=0x00;
;	genAssign
	mov	_CKCKON0,#0x00
;	main.c:221: BDRCON&=0xFD;
;	genAnd
	anl	_BDRCON,#0xFD
;	main.c:222: PCON&=0x5F;
;	genAnd
	anl	_PCON,#0x5F
;	main.c:223: Delay(90);
;	genCall
;	Peephole 182.b	used 16 bit load of dptr
	mov	dptr,#0x005A
	lcall	_Delay
;	main.c:230: f_txt_read(&selectedfile,xbuffer,finfo.fsize,&selectedfile.fptr);
;	genPointerGet
;	genFarPointerGet
	mov	dptr,#_ChooseFile_finfo_1_1
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
;	genCast
;	genIpush
	mov	a,#(_ChooseFile_selectedfile_1_1 + 0x0007)
	push	acc
	mov	a,#((_ChooseFile_selectedfile_1_1 + 0x0007) >> 8)
	push	acc
;	Peephole 181	changed mov to clr
	clr	a
	push	acc
;	genIpush
	push	ar3
	push	ar4
;	genIpush
	mov	a,#_xbuffer
	push	acc
	mov	a,#(_xbuffer >> 8)
	push	acc
;	Peephole 181	changed mov to clr
	clr	a
	push	acc
;	genCall
;	Peephole 182.a	used 16 bit load of DPTR
	mov	dptr,#_ChooseFile_selectedfile_1_1
	mov	b,#0x00
	lcall	_f_txt_read
	mov	a,sp
	add	a,#0xf8
	mov	sp,a
;	main.c:232: putchar(0);
;	genCall
	mov	dpl,#0x00
	lcall	_putchar
;	main.c:233: printf_tiny("TIMESTAMP:%x:%x:%x",i2cReceive(Clock_Address,0x02),i2cReceive(Clock_Address,0x01),i2cReceive(Clock_Address,0x00));
;	genIpush
;	Peephole 181	changed mov to clr
	clr	a
	push	acc
;	genCall
	mov	dpl,#0xD0
	lcall	_i2cReceive
	mov	r3,dpl
	dec	sp
;	genCast
	mov	r4,#0x00
;	genIpush
	push	ar3
	push	ar4
	mov	a,#0x01
	push	acc
;	genCall
	mov	dpl,#0xD0
	lcall	_i2cReceive
	mov	r5,dpl
	dec	sp
	pop	ar4
	pop	ar3
;	genCast
	mov	ar2,r5
	mov	r6,#0x00
;	genIpush
	push	ar2
	push	ar3
	push	ar4
	push	ar6
	mov	a,#0x02
	push	acc
;	genCall
	mov	dpl,#0xD0
	lcall	_i2cReceive
	mov	r7,dpl
	dec	sp
	pop	ar6
	pop	ar4
	pop	ar3
	pop	ar2
;	genCast
	mov	r5,#0x00
;	genIpush
	push	ar3
	push	ar4
;	genIpush
	push	ar2
	push	ar6
;	genIpush
	push	ar7
	push	ar5
;	genIpush
	mov	a,#__str_23
	push	acc
	mov	a,#(__str_23 >> 8)
	push	acc
;	genCall
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xf8
	mov	sp,a
;	main.c:234: P3_4=0;
;	genAssign
	clr	_P3_4
;	main.c:235: P3_5=1;
;	genAssign
	setb	_P3_5
;	main.c:236: Delay(90);
;	genCall
;	Peephole 182.b	used 16 bit load of dptr
	mov	dptr,#0x005A
	lcall	_Delay
;	main.c:237: _sdcc_external_startup();
;	genCall
	lcall	__sdcc_external_startup
;	main.c:238: entercontinue();
;	genCall
	lcall	_entercontinue
;	main.c:239: WDTRST=0X1E;
;	genAssign
	mov	_WDTRST,#0x1E
;	main.c:240: WDTRST=0XE1;
;	genAssign
	mov	_WDTRST,#0xE1
;	main.c:241: while(1);
00146$:
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00146$
00152$:
;	main.c:243: if (i==3)
;	genCmpEq
;	gencjneshort
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 198.b	optimized misc jump sequence
	cjne	r2,#0x03,00158$
;	Peephole 200.b	removed redundant sjmp
;	Peephole 300	removed redundant label 00272$
;	Peephole 300	removed redundant label 00273$
;	main.c:245: printf_tiny("\r\nCannot Use This File.");
;	genIpush
	mov	a,#__str_24
	push	acc
	mov	a,#(__str_24 >> 8)
	push	acc
;	genCall
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:246: entercontinue();
;	genCall
	lcall	_entercontinue
;	main.c:247: WDTPRG |= 0x07;         // Watchdog Timer Set for 2 seconds
;	genOr
	orl	_WDTPRG,#0x07
;	main.c:248: WDTRST=0X1E;
;	genAssign
	mov	_WDTRST,#0x1E
;	main.c:249: WDTRST=0XE1;
;	genAssign
	mov	_WDTRST,#0xE1
;	main.c:250: while(1);
00154$:
;	main.c:252: while   (f_readdir(&dirs, &finfo) == FR_OK);
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00154$
00158$:
;	genIpush
	mov	a,#_ChooseFile_finfo_1_1
	push	acc
	mov	a,#(_ChooseFile_finfo_1_1 >> 8)
	push	acc
;	Peephole 181	changed mov to clr
	clr	a
	push	acc
;	genCall
;	Peephole 182.a	used 16 bit load of DPTR
	mov	dptr,#_ChooseFile_dirs_1_1
	mov	b,#0x00
	lcall	_f_readdir
	mov	r2,dpl
	dec	sp
	dec	sp
	dec	sp
;	genIfx
	mov	a,r2
;	genIfxJump
;	Peephole 108.b	removed ljmp by inverse jump logic
	jnz	00163$
;	Peephole 300	removed redundant label 00274$
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00158$
00162$:
;	main.c:259: return 1;
;	genRet
	mov	dpl,#0x01
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00164$
00163$:
;	main.c:261: return 1;
;	genRet
	mov	dpl,#0x01
00164$:
	mov	sp,_bp
	pop	_bp
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
__str_0:
	.ascii "MP3 Player/"
	.db 0x00
__str_1:
	.db 0x0D
	.db 0x0A
	.db 0x1B
	.ascii "[5;31;47m*************************ESD FINAL PROJECT******"
	.ascii "**********************"
	.db 0x1B
	.ascii "[0m"
	.db 0x00
__str_2:
	.db 0x0D
	.db 0x0A
	.ascii "The Time is : "
	.db 0x1B
	.ascii "7%x:%x:%x"
	.db 0x0D
	.db 0x0A
	.db 0x00
__str_3:
	.ascii "/"
	.db 0x00
__str_4:
	.db 0x0D
	.db 0x0A
	.ascii " Root Directory - SD Card %s"
	.db 0x0D
	.db 0x0A
	.db 0x0A
	.db 0x00
__str_5:
	.ascii "%d )"
	.db 0x09
	.db 0x00
__str_6:
	.ascii "%s  %s"
	.db 0x0D
	.db 0x0A
	.db 0x00
__str_7:
	.ascii "<DIR>"
	.db 0x00
__str_8:
	.ascii "     "
	.db 0x00
__str_9:
	.db 0x0D
	.db 0x0A
	.db 0x0A
	.ascii "Select File:"
	.db 0x1B
	.ascii "7"
	.db 0x00
__str_10:
	.ascii "Cannot open file."
	.db 0x00
__str_11:
	.db 0x0D
	.db 0x0A
	.ascii "Playing File: "
	.db 0x1B
	.ascii "[5;31;47m"
	.db 0x00
__str_12:
	.db 0x0D
	.ascii "Playing File: "
	.db 0x0D
	.db 0x0A
	.db 0x00
__str_13:
	.db 0x0D
	.db 0x0A
	.ascii "Playing File: "
	.db 0x1B
	.ascii "[5;31;47m%s"
	.db 0x00
__str_14:
	.db 0x1B
	.ascii "[0m"
	.db 0x00
__str_15:
	.db 0x0D
	.db 0x0A
	.ascii " 'q' to stop playing and reselect song"
	.db 0x00
__str_16:
	.db 0x0D
	.db 0x0A
	.ascii " '+' to increase volume"
	.db 0x00
__str_17:
	.db 0x0D
	.db 0x0A
	.ascii " '-' to decrease volume"
	.db 0x00
__str_18:
	.db 0x0D
	.db 0x0A
	.ascii " 'i' to query decoder bit-rate"
	.db 0x09
	.db 0x09
	.db 0x1B
	.ascii "7"
	.db 0x00
__str_19:
	.db 0x0D
	.db 0x0A
	.ascii " 'm' to mute"
	.db 0x00
__str_20:
	.db 0x0D
	.db 0x0A
	.ascii " 'u' to unmute"
	.db 0x00
__str_21:
	.db 0x0D
	.db 0x0A
	.ascii " 'p' to pause/unpause"
	.db 0x00
__str_22:
	.db 0x0D
	.db 0x0A
	.ascii "Sending "
	.db 0x1B
	.ascii "[5;31;47m%s"
	.db 0x1B
	.ascii "[0m via Zigbee."
	.db 0x0D
	.db 0x0A
	.db 0x0A
	.db 0x00
__str_23:
	.ascii "TIMESTAMP:%x:%x:%x"
	.db 0x00
__str_24:
	.db 0x0D
	.db 0x0A
	.ascii "Cannot Use This File."
	.db 0x00
	.area XINIT   (CODE)
