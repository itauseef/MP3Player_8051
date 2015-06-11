;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.6.0 #4309 (Jul 28 2006)
; This file generated Sat May 02 15:12:56 2015
;--------------------------------------------------------
	.module driver_i2c
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
	.globl _i2c_start
	.globl _i2c_stop
	.globl _i2c_clock
	.globl _get_i2c_bit
	.globl _put_i2c_byte
	.globl _get_i2c_byte
	.globl _i2cSend
	.globl _i2cReceive
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
_i2cReceive_data1_1_1:
	.ds 1
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
;Allocation info for local variables in function 'i2c_start'
;------------------------------------------------------------
;------------------------------------------------------------
;	Drivers/driver_i2c.c:26: void i2c_start(void)
;	-----------------------------------------
;	 function i2c_start
;	-----------------------------------------
_i2c_start:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
;	Drivers/driver_i2c.c:28: SCL = 0;
;	genAssign
	clr	_P1_0
;	Drivers/driver_i2c.c:29: SDA = 1;                // I2C is started by having SDA falling edge during High SCL
;	genAssign
	setb	_P1_2
;	Drivers/driver_i2c.c:30: SCL = 1;
;	genAssign
	setb	_P1_0
;	Drivers/driver_i2c.c:31: SDA = 0;
;	genAssign
	clr	_P1_2
;	Drivers/driver_i2c.c:32: SCL = 0;
;	genAssign
	clr	_P1_0
;	Peephole 300	removed redundant label 00101$
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'i2c_stop'
;------------------------------------------------------------
;------------------------------------------------------------
;	Drivers/driver_i2c.c:36: void i2c_stop(void)
;	-----------------------------------------
;	 function i2c_stop
;	-----------------------------------------
_i2c_stop:
;	Drivers/driver_i2c.c:38: SCL = 0;
;	genAssign
	clr	_P1_0
;	Drivers/driver_i2c.c:39: SDA = 0;                // I2C is stopped by having SDA rising edge during High SCL
;	genAssign
	clr	_P1_2
;	Drivers/driver_i2c.c:40: SCL = 1;
;	genAssign
	setb	_P1_0
;	Drivers/driver_i2c.c:41: SDA = 1;
;	genAssign
	setb	_P1_2
;	Drivers/driver_i2c.c:42: SCL = 0;
;	genAssign
	clr	_P1_0
;	Peephole 300	removed redundant label 00101$
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'i2c_clock'
;------------------------------------------------------------
;------------------------------------------------------------
;	Drivers/driver_i2c.c:46: void i2c_clock(void)
;	-----------------------------------------
;	 function i2c_clock
;	-----------------------------------------
_i2c_clock:
;	Drivers/driver_i2c.c:48: SCL = 1;    			// Clock Set
;	genAssign
	setb	_P1_0
;	Drivers/driver_i2c.c:49: NOP;
;	genInline
	 nop 
;	Drivers/driver_i2c.c:50: NOP;                    // Wait till EEPROM requirement
;	genInline
	 nop 
;	Drivers/driver_i2c.c:51: NOP;
;	genInline
	 nop 
;	Drivers/driver_i2c.c:52: SCL = 0;			    // Clock Reset for one cycle.
;	genAssign
	clr	_P1_0
;	Peephole 300	removed redundant label 00101$
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'get_i2c_bit'
;------------------------------------------------------------
;rcv                       Allocated to registers 
;------------------------------------------------------------
;	Drivers/driver_i2c.c:56: char get_i2c_bit(void)
;	-----------------------------------------
;	 function get_i2c_bit
;	-----------------------------------------
_get_i2c_bit:
;	Drivers/driver_i2c.c:59: SDA = 1;            // Set SDA high to accept input from devices
;	genAssign
	setb	_P1_2
;	Drivers/driver_i2c.c:60: NOP;
;	genInline
	 nop 
;	Drivers/driver_i2c.c:61: SCL = 1;			// Clock Set to Receive
;	genAssign
	setb	_P1_0
;	Drivers/driver_i2c.c:62: NOP;
;	genInline
	 nop 
;	Drivers/driver_i2c.c:63: rcv = SDA;			// Get bit on SDA
;	genAssign
	clr	a
	mov	c,_P1_2
	rlc	a
;	genAssign
	mov	r2,a
;	Peephole 244.c	loading dpl from a instead of r2
	mov	dpl,a
;	Drivers/driver_i2c.c:64: NOP;
;	genInline
	 nop 
;	Drivers/driver_i2c.c:65: SCL = 0;			// Clock Reset to End Cycle
;	genAssign
	clr	_P1_0
;	Drivers/driver_i2c.c:66: return (rcv);
;	genRet
;	Peephole 300	removed redundant label 00101$
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'put_i2c_byte'
;------------------------------------------------------------
;cc                        Allocated to registers r2 
;i                         Allocated to registers r3 
;------------------------------------------------------------
;	Drivers/driver_i2c.c:70: void put_i2c_byte(unsigned char cc)
;	-----------------------------------------
;	 function put_i2c_byte
;	-----------------------------------------
_put_i2c_byte:
;	genReceive
	mov	r2,dpl
;	Drivers/driver_i2c.c:73: for (i=0;i<8;i++)                   // Iterate for 8 bits
;	genAssign
	mov	r3,#0x00
00101$:
;	genCmpLt
;	genCmp
	cjne	r3,#0x08,00110$
00110$:
;	genIfxJump
;	Peephole 108.a	removed ljmp by inverse jump logic
	jnc	00105$
;	Peephole 300	removed redundant label 00111$
;	Drivers/driver_i2c.c:75: cc=(cc<<1)|(cc>>(7));           // Circular rotate to get MSB in LSB position
;	genRLC
	mov	a,r2
	rl	a
;	Drivers/driver_i2c.c:76: SDA = (__bit)(cc&0x01);         // Send MSB over I2C
;	genGetAbit
	mov	r2,a
;	Peephole 105	removed redundant mov
	rrc	a
	mov	_P1_2,c
;	Drivers/driver_i2c.c:77: i2c_clock();					// Issue Clock Cycle
;	genCall
	push	ar2
	push	ar3
	lcall	_i2c_clock
	pop	ar3
	pop	ar2
;	Drivers/driver_i2c.c:73: for (i=0;i<8;i++)                   // Iterate for 8 bits
;	genPlus
;     genPlusIncr
	inc	r3
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00101$
00105$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'get_i2c_byte'
;------------------------------------------------------------
;i                         Allocated to registers r3 
;cc                        Allocated to registers r2 
;------------------------------------------------------------
;	Drivers/driver_i2c.c:81: unsigned char get_i2c_byte()
;	-----------------------------------------
;	 function get_i2c_byte
;	-----------------------------------------
_get_i2c_byte:
;	Drivers/driver_i2c.c:83: unsigned char i, cc = 0;
;	genAssign
	mov	r2,#0x00
;	Drivers/driver_i2c.c:84: SDA = 1;							// Set I2C for Read
;	genAssign
	setb	_P1_2
;	Drivers/driver_i2c.c:85: for (i=0;i<8;i++)                   // Iterate for 8 bits
;	genAssign
	mov	r3,#0x08
00103$:
;	Drivers/driver_i2c.c:87: cc <<= 1;						// Rotate byte before reading to left by 1 bit
;	genLeftShift
;	genLeftShiftLiteral
;	genlshOne
	mov	a,r2
;	Peephole 254	optimized left shift
	add	a,r2
	mov	r2,a
;	Drivers/driver_i2c.c:88: cc |= get_i2c_bit();			// bit on i2c is put into LSB
;	genCall
	push	ar2
	push	ar3
	lcall	_get_i2c_bit
	mov	r4,dpl
	pop	ar3
	pop	ar2
;	genOr
	mov	a,r4
	orl	ar2,a
;	genDjnz
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 205	optimized misc jump sequence
	djnz	r3,00103$
;	Peephole 300	removed redundant label 00109$
;	Peephole 300	removed redundant label 00110$
;	Drivers/driver_i2c.c:85: for (i=0;i<8;i++)                   // Iterate for 8 bits
;	Drivers/driver_i2c.c:90: SDA = 1;                    		// Send Acknowledgment
;	genAssign
	setb	_P1_2
;	Drivers/driver_i2c.c:91: i2c_clock();						// Issue Clock Cycle
;	genCall
	push	ar2
	lcall	_i2c_clock
	pop	ar2
;	Drivers/driver_i2c.c:92: return cc;
;	genRet
	mov	dpl,r2
;	Peephole 300	removed redundant label 00104$
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'i2cSend'
;------------------------------------------------------------
;subAddr                   Allocated to stack - offset -3
;data1                     Allocated to stack - offset -4
;device                    Allocated to registers r2 
;------------------------------------------------------------
;	Drivers/driver_i2c.c:96: void i2cSend(unsigned char device, unsigned char subAddr, unsigned char data1)
;	-----------------------------------------
;	 function i2cSend
;	-----------------------------------------
_i2cSend:
	push	_bp
	mov	_bp,sp
;	genReceive
	mov	r2,dpl
;	Drivers/driver_i2c.c:98: i2c_start();                   // do start transition
;	genCall
	push	ar2
	lcall	_i2c_start
	pop	ar2
;	Drivers/driver_i2c.c:99: put_i2c_byte(device);            // send DEVICE address
;	genCall
	mov	dpl,r2
	lcall	_put_i2c_byte
;	Drivers/driver_i2c.c:100: get_i2c_bit();
;	genCall
	lcall	_get_i2c_bit
;	Drivers/driver_i2c.c:101: put_i2c_byte(subAddr);         // and the subaddress
;	genCall
	mov	r0,_bp
	dec	r0
	dec	r0
	dec	r0
	mov	dpl,@r0
	lcall	_put_i2c_byte
;	Drivers/driver_i2c.c:102: get_i2c_bit();
;	genCall
	lcall	_get_i2c_bit
;	Drivers/driver_i2c.c:103: put_i2c_byte(data1);           // send the data
;	genCall
	mov	a,_bp
	add	a,#0xfffffffc
	mov	r0,a
	mov	dpl,@r0
	lcall	_put_i2c_byte
;	Drivers/driver_i2c.c:104: get_i2c_bit();
;	genCall
	lcall	_get_i2c_bit
;	Drivers/driver_i2c.c:105: i2c_stop();                    // send STOP transition
;	genCall
	lcall	_i2c_stop
;	Peephole 300	removed redundant label 00101$
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'i2cReceive'
;------------------------------------------------------------
;subAddr                   Allocated to stack - offset -3
;device                    Allocated to registers r2 
;data1                     Allocated with name '_i2cReceive_data1_1_1'
;------------------------------------------------------------
;	Drivers/driver_i2c.c:109: unsigned char i2cReceive(unsigned char device, unsigned char subAddr)
;	-----------------------------------------
;	 function i2cReceive
;	-----------------------------------------
_i2cReceive:
	push	_bp
	mov	_bp,sp
;	genReceive
	mov	r2,dpl
;	Drivers/driver_i2c.c:112: i2c_start();                // do start transition
;	genCall
	push	ar2
	lcall	_i2c_start
	pop	ar2
;	Drivers/driver_i2c.c:113: put_i2c_byte(device);       // send DEVICE address
;	genCall
	mov	dpl,r2
	push	ar2
	lcall	_put_i2c_byte
	pop	ar2
;	Drivers/driver_i2c.c:114: get_i2c_bit();
;	genCall
	push	ar2
	lcall	_get_i2c_bit
	pop	ar2
;	Drivers/driver_i2c.c:115: put_i2c_byte(subAddr);      // and the subaddress
;	genCall
	mov	r0,_bp
	dec	r0
	dec	r0
	dec	r0
	mov	dpl,@r0
	push	ar2
	lcall	_put_i2c_byte
	pop	ar2
;	Drivers/driver_i2c.c:116: get_i2c_bit();
;	genCall
	push	ar2
	lcall	_get_i2c_bit
	pop	ar2
;	Drivers/driver_i2c.c:117: i2c_stop();
;	genCall
	push	ar2
	lcall	_i2c_stop
	pop	ar2
;	Drivers/driver_i2c.c:118: i2c_start();                // transition
;	genCall
	push	ar2
	lcall	_i2c_start
	pop	ar2
;	Drivers/driver_i2c.c:119: put_i2c_byte(device|0x01);  // resend DEVICE, with READ bit set
;	genOr
	mov	a,#0x01
	orl	a,r2
	mov	dpl,a
;	genCall
	lcall	_put_i2c_byte
;	Drivers/driver_i2c.c:120: get_i2c_bit();
;	genCall
	lcall	_get_i2c_bit
;	Drivers/driver_i2c.c:121: data1 = get_i2c_byte();     // receive data bytes
;	genCall
	lcall	_get_i2c_byte
	mov	_i2cReceive_data1_1_1,dpl
;	Drivers/driver_i2c.c:122: get_i2c_bit();
;	genCall
	lcall	_get_i2c_bit
;	Drivers/driver_i2c.c:123: i2c_stop();                 // send STOP transition
;	genCall
	lcall	_i2c_stop
;	Drivers/driver_i2c.c:124: return data1;
;	genRet
	mov	dpl,_i2cReceive_data1_1_1
;	Peephole 300	removed redundant label 00101$
	pop	_bp
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
