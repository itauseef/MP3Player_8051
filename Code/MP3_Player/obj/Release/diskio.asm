;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.6.0 #4309 (Jul 28 2006)
; This file generated Tue Apr 21 22:20:45 2015
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
	.globl _CardType
	.globl _Stat
	.globl _disk_initialize
	.globl _disk_status
	.globl _disk_read
	.globl _disk_write
	.globl _disk_ioctl
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (DATA)
G$P0$0$0 == 0x0080
_P0	=	0x0080
G$SP$0$0 == 0x0081
_SP	=	0x0081
G$DPL$0$0 == 0x0082
_DPL	=	0x0082
G$DPH$0$0 == 0x0083
_DPH	=	0x0083
G$PCON$0$0 == 0x0087
_PCON	=	0x0087
G$TCON$0$0 == 0x0088
_TCON	=	0x0088
G$TMOD$0$0 == 0x0089
_TMOD	=	0x0089
G$TL0$0$0 == 0x008a
_TL0	=	0x008a
G$TL1$0$0 == 0x008b
_TL1	=	0x008b
G$TH0$0$0 == 0x008c
_TH0	=	0x008c
G$TH1$0$0 == 0x008d
_TH1	=	0x008d
G$P1$0$0 == 0x0090
_P1	=	0x0090
G$SCON$0$0 == 0x0098
_SCON	=	0x0098
G$SBUF$0$0 == 0x0099
_SBUF	=	0x0099
G$P2$0$0 == 0x00a0
_P2	=	0x00a0
G$IE$0$0 == 0x00a8
_IE	=	0x00a8
G$P3$0$0 == 0x00b0
_P3	=	0x00b0
G$IP$0$0 == 0x00b8
_IP	=	0x00b8
G$PSW$0$0 == 0x00d0
_PSW	=	0x00d0
G$ACC$0$0 == 0x00e0
_ACC	=	0x00e0
G$B$0$0 == 0x00f0
_B	=	0x00f0
G$T2CON$0$0 == 0x00c8
_T2CON	=	0x00c8
G$RCAP2L$0$0 == 0x00ca
_RCAP2L	=	0x00ca
G$RCAP2H$0$0 == 0x00cb
_RCAP2H	=	0x00cb
G$TL2$0$0 == 0x00cc
_TL2	=	0x00cc
G$TH2$0$0 == 0x00cd
_TH2	=	0x00cd
G$AUXR$0$0 == 0x008e
_AUXR	=	0x008e
G$AUXR1$0$0 == 0x00a2
_AUXR1	=	0x00a2
G$CKRL$0$0 == 0x0097
_CKRL	=	0x0097
G$CKCKON0$0$0 == 0x008f
_CKCKON0	=	0x008f
G$CKCKON1$0$0 == 0x008f
_CKCKON1	=	0x008f
G$CCAP0H$0$0 == 0x00fa
_CCAP0H	=	0x00fa
G$CCAP1H$0$0 == 0x00fb
_CCAP1H	=	0x00fb
G$CCAP2H$0$0 == 0x00fc
_CCAP2H	=	0x00fc
G$CCAP3H$0$0 == 0x00fd
_CCAP3H	=	0x00fd
G$CCAP4H$0$0 == 0x00fe
_CCAP4H	=	0x00fe
G$CCAP0L$0$0 == 0x00ea
_CCAP0L	=	0x00ea
G$CCAP1L$0$0 == 0x00eb
_CCAP1L	=	0x00eb
G$CCAP2L$0$0 == 0x00ec
_CCAP2L	=	0x00ec
G$CCAP3L$0$0 == 0x00ed
_CCAP3L	=	0x00ed
G$CCAP4L$0$0 == 0x00ee
_CCAP4L	=	0x00ee
G$CCAPM0$0$0 == 0x00da
_CCAPM0	=	0x00da
G$CCAPM1$0$0 == 0x00db
_CCAPM1	=	0x00db
G$CCAPM2$0$0 == 0x00dc
_CCAPM2	=	0x00dc
G$CCAPM3$0$0 == 0x00dd
_CCAPM3	=	0x00dd
G$CCAPM4$0$0 == 0x00de
_CCAPM4	=	0x00de
G$CCON$0$0 == 0x00d8
_CCON	=	0x00d8
G$CH$0$0 == 0x00f9
_CH	=	0x00f9
G$CL$0$0 == 0x00e9
_CL	=	0x00e9
G$CMOD$0$0 == 0x00d9
_CMOD	=	0x00d9
G$IEN0$0$0 == 0x00a8
_IEN0	=	0x00a8
G$IEN1$0$0 == 0x00b1
_IEN1	=	0x00b1
G$IPL0$0$0 == 0x00b8
_IPL0	=	0x00b8
G$IPH0$0$0 == 0x00b7
_IPH0	=	0x00b7
G$IPL1$0$0 == 0x00b2
_IPL1	=	0x00b2
G$IPH1$0$0 == 0x00b3
_IPH1	=	0x00b3
G$P4$0$0 == 0x00c0
_P4	=	0x00c0
G$P5$0$0 == 0x00d8
_P5	=	0x00d8
G$WDTRST$0$0 == 0x00a6
_WDTRST	=	0x00a6
G$WDTPRG$0$0 == 0x00a7
_WDTPRG	=	0x00a7
G$SADDR$0$0 == 0x00a9
_SADDR	=	0x00a9
G$SADEN$0$0 == 0x00b9
_SADEN	=	0x00b9
G$SPCON$0$0 == 0x00c3
_SPCON	=	0x00c3
G$SPSTA$0$0 == 0x00c4
_SPSTA	=	0x00c4
G$SPDAT$0$0 == 0x00c5
_SPDAT	=	0x00c5
G$T2MOD$0$0 == 0x00c9
_T2MOD	=	0x00c9
G$BDRCON$0$0 == 0x009b
_BDRCON	=	0x009b
G$BRL$0$0 == 0x009a
_BRL	=	0x009a
G$KBLS$0$0 == 0x009c
_KBLS	=	0x009c
G$KBE$0$0 == 0x009d
_KBE	=	0x009d
G$KBF$0$0 == 0x009e
_KBF	=	0x009e
G$EECON$0$0 == 0x00d2
_EECON	=	0x00d2
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (DATA)
G$P0_0$0$0 == 0x0080
_P0_0	=	0x0080
G$P0_1$0$0 == 0x0081
_P0_1	=	0x0081
G$P0_2$0$0 == 0x0082
_P0_2	=	0x0082
G$P0_3$0$0 == 0x0083
_P0_3	=	0x0083
G$P0_4$0$0 == 0x0084
_P0_4	=	0x0084
G$P0_5$0$0 == 0x0085
_P0_5	=	0x0085
G$P0_6$0$0 == 0x0086
_P0_6	=	0x0086
G$P0_7$0$0 == 0x0087
_P0_7	=	0x0087
G$IT0$0$0 == 0x0088
_IT0	=	0x0088
G$IE0$0$0 == 0x0089
_IE0	=	0x0089
G$IT1$0$0 == 0x008a
_IT1	=	0x008a
G$IE1$0$0 == 0x008b
_IE1	=	0x008b
G$TR0$0$0 == 0x008c
_TR0	=	0x008c
G$TF0$0$0 == 0x008d
_TF0	=	0x008d
G$TR1$0$0 == 0x008e
_TR1	=	0x008e
G$TF1$0$0 == 0x008f
_TF1	=	0x008f
G$P1_0$0$0 == 0x0090
_P1_0	=	0x0090
G$P1_1$0$0 == 0x0091
_P1_1	=	0x0091
G$P1_2$0$0 == 0x0092
_P1_2	=	0x0092
G$P1_3$0$0 == 0x0093
_P1_3	=	0x0093
G$P1_4$0$0 == 0x0094
_P1_4	=	0x0094
G$P1_5$0$0 == 0x0095
_P1_5	=	0x0095
G$P1_6$0$0 == 0x0096
_P1_6	=	0x0096
G$P1_7$0$0 == 0x0097
_P1_7	=	0x0097
G$RI$0$0 == 0x0098
_RI	=	0x0098
G$TI$0$0 == 0x0099
_TI	=	0x0099
G$RB8$0$0 == 0x009a
_RB8	=	0x009a
G$TB8$0$0 == 0x009b
_TB8	=	0x009b
G$REN$0$0 == 0x009c
_REN	=	0x009c
G$SM2$0$0 == 0x009d
_SM2	=	0x009d
G$SM1$0$0 == 0x009e
_SM1	=	0x009e
G$SM0$0$0 == 0x009f
_SM0	=	0x009f
G$P2_0$0$0 == 0x00a0
_P2_0	=	0x00a0
G$P2_1$0$0 == 0x00a1
_P2_1	=	0x00a1
G$P2_2$0$0 == 0x00a2
_P2_2	=	0x00a2
G$P2_3$0$0 == 0x00a3
_P2_3	=	0x00a3
G$P2_4$0$0 == 0x00a4
_P2_4	=	0x00a4
G$P2_5$0$0 == 0x00a5
_P2_5	=	0x00a5
G$P2_6$0$0 == 0x00a6
_P2_6	=	0x00a6
G$P2_7$0$0 == 0x00a7
_P2_7	=	0x00a7
G$EX0$0$0 == 0x00a8
_EX0	=	0x00a8
G$ET0$0$0 == 0x00a9
_ET0	=	0x00a9
G$EX1$0$0 == 0x00aa
_EX1	=	0x00aa
G$ET1$0$0 == 0x00ab
_ET1	=	0x00ab
G$ES$0$0 == 0x00ac
_ES	=	0x00ac
G$EA$0$0 == 0x00af
_EA	=	0x00af
G$P3_0$0$0 == 0x00b0
_P3_0	=	0x00b0
G$P3_1$0$0 == 0x00b1
_P3_1	=	0x00b1
G$P3_2$0$0 == 0x00b2
_P3_2	=	0x00b2
G$P3_3$0$0 == 0x00b3
_P3_3	=	0x00b3
G$P3_4$0$0 == 0x00b4
_P3_4	=	0x00b4
G$P3_5$0$0 == 0x00b5
_P3_5	=	0x00b5
G$P3_6$0$0 == 0x00b6
_P3_6	=	0x00b6
G$P3_7$0$0 == 0x00b7
_P3_7	=	0x00b7
G$RXD$0$0 == 0x00b0
_RXD	=	0x00b0
G$TXD$0$0 == 0x00b1
_TXD	=	0x00b1
G$INT0$0$0 == 0x00b2
_INT0	=	0x00b2
G$INT1$0$0 == 0x00b3
_INT1	=	0x00b3
G$T0$0$0 == 0x00b4
_T0	=	0x00b4
G$T1$0$0 == 0x00b5
_T1	=	0x00b5
G$WR$0$0 == 0x00b6
_WR	=	0x00b6
G$RD$0$0 == 0x00b7
_RD	=	0x00b7
G$PX0$0$0 == 0x00b8
_PX0	=	0x00b8
G$PT0$0$0 == 0x00b9
_PT0	=	0x00b9
G$PX1$0$0 == 0x00ba
_PX1	=	0x00ba
G$PT1$0$0 == 0x00bb
_PT1	=	0x00bb
G$PS$0$0 == 0x00bc
_PS	=	0x00bc
G$P$0$0 == 0x00d0
_P	=	0x00d0
G$F1$0$0 == 0x00d1
_F1	=	0x00d1
G$OV$0$0 == 0x00d2
_OV	=	0x00d2
G$RS0$0$0 == 0x00d3
_RS0	=	0x00d3
G$RS1$0$0 == 0x00d4
_RS1	=	0x00d4
G$F0$0$0 == 0x00d5
_F0	=	0x00d5
G$AC$0$0 == 0x00d6
_AC	=	0x00d6
G$CY$0$0 == 0x00d7
_CY	=	0x00d7
G$ET2$0$0 == 0x00ad
_ET2	=	0x00ad
G$PT2$0$0 == 0x00bd
_PT2	=	0x00bd
G$T2CON_0$0$0 == 0x00c8
_T2CON_0	=	0x00c8
G$T2CON_1$0$0 == 0x00c9
_T2CON_1	=	0x00c9
G$T2CON_2$0$0 == 0x00ca
_T2CON_2	=	0x00ca
G$T2CON_3$0$0 == 0x00cb
_T2CON_3	=	0x00cb
G$T2CON_4$0$0 == 0x00cc
_T2CON_4	=	0x00cc
G$T2CON_5$0$0 == 0x00cd
_T2CON_5	=	0x00cd
G$T2CON_6$0$0 == 0x00ce
_T2CON_6	=	0x00ce
G$T2CON_7$0$0 == 0x00cf
_T2CON_7	=	0x00cf
G$CP_RL2$0$0 == 0x00c8
_CP_RL2	=	0x00c8
G$C_T2$0$0 == 0x00c9
_C_T2	=	0x00c9
G$TR2$0$0 == 0x00ca
_TR2	=	0x00ca
G$EXEN2$0$0 == 0x00cb
_EXEN2	=	0x00cb
G$TCLK$0$0 == 0x00cc
_TCLK	=	0x00cc
G$RCLK$0$0 == 0x00cd
_RCLK	=	0x00cd
G$EXF2$0$0 == 0x00ce
_EXF2	=	0x00ce
G$TF2$0$0 == 0x00cf
_TF2	=	0x00cf
G$CF$0$0 == 0x00df
_CF	=	0x00df
G$CR$0$0 == 0x00de
_CR	=	0x00de
G$CCF4$0$0 == 0x00dc
_CCF4	=	0x00dc
G$CCF3$0$0 == 0x00db
_CCF3	=	0x00db
G$CCF2$0$0 == 0x00da
_CCF2	=	0x00da
G$CCF1$0$0 == 0x00d9
_CCF1	=	0x00d9
G$CCF0$0$0 == 0x00d8
_CCF0	=	0x00d8
G$EC$0$0 == 0x00ae
_EC	=	0x00ae
G$PPCL$0$0 == 0x00be
_PPCL	=	0x00be
G$PT2L$0$0 == 0x00bd
_PT2L	=	0x00bd
G$PLS$0$0 == 0x00bc
_PLS	=	0x00bc
G$PT1L$0$0 == 0x00bb
_PT1L	=	0x00bb
G$PX1L$0$0 == 0x00ba
_PX1L	=	0x00ba
G$PT0L$0$0 == 0x00b9
_PT0L	=	0x00b9
G$PX0L$0$0 == 0x00b8
_PX0L	=	0x00b8
G$P4_0$0$0 == 0x00c0
_P4_0	=	0x00c0
G$P4_1$0$0 == 0x00c1
_P4_1	=	0x00c1
G$P4_2$0$0 == 0x00c2
_P4_2	=	0x00c2
G$P4_3$0$0 == 0x00c3
_P4_3	=	0x00c3
G$P4_4$0$0 == 0x00c4
_P4_4	=	0x00c4
G$P4_5$0$0 == 0x00c5
_P4_5	=	0x00c5
G$P4_6$0$0 == 0x00c6
_P4_6	=	0x00c6
G$P4_7$0$0 == 0x00c7
_P4_7	=	0x00c7
G$P5_0$0$0 == 0x00d8
_P5_0	=	0x00d8
G$P5_1$0$0 == 0x00d9
_P5_1	=	0x00d9
G$P5_2$0$0 == 0x00da
_P5_2	=	0x00da
G$P5_3$0$0 == 0x00db
_P5_3	=	0x00db
G$P5_4$0$0 == 0x00dc
_P5_4	=	0x00dc
G$P5_5$0$0 == 0x00dd
_P5_5	=	0x00dd
G$P5_6$0$0 == 0x00de
_P5_6	=	0x00de
G$P5_7$0$0 == 0x00df
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
G$Stat$0$0==.
_Stat::
	.ds 1
G$CardType$0$0 == 0x3000
_CardType	=	0x3000
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
	G$disk_initialize$0$0 ==.
	C$diskio.c$23$0$0 ==.
;	diskio.c:23: DSTATUS disk_initialize( BYTE drv )
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
	C$diskio.c$26$1$1 ==.
;	diskio.c:26: if( drv != 0)
;	genCmpEq
;	gencjneshort
	cjne	r2,#0x00,00109$
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00102$
00109$:
	C$diskio.c$27$1$1 ==.
;	diskio.c:27: return STA_NOINIT;
;	genRet
	mov	dpl,#0x01
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 251.b	replaced sjmp to ret with ret
	ret
00102$:
	C$diskio.c$30$1$1 ==.
;	diskio.c:30: if( !SD_Init() )
;	genCall
	lcall	_SD_Init
	mov	a,dpl
;	genIfx
;	genIfxJump
;	Peephole 108.b	removed ljmp by inverse jump logic
	jnz	00104$
;	Peephole 300	removed redundant label 00110$
	C$diskio.c$33$2$2 ==.
;	diskio.c:33: Stat &= ~STA_NOINIT;
;	genAssign
;	genAnd
	mov	dptr,#_Stat
	movx	a,@dptr
	mov	r2,a
;	Peephole 248.b	optimized and to xdata
	anl	a,#0xFE
	movx	@dptr,a
00104$:
	C$diskio.c$37$1$1 ==.
;	diskio.c:37: return( Stat );
;	genAssign
	mov	dptr,#_Stat
	movx	a,@dptr
;	genRet
	C$diskio.c$38$1$1 ==.
	XG$disk_initialize$0$0 ==.
;	Peephole 234.a	loading dpl directly from a(ccumulator), r2 not set
	mov	dpl,a
;	Peephole 300	removed redundant label 00105$
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'disk_status'
;------------------------------------------------------------
;drv                       Allocated to registers r2 
;------------------------------------------------------------
	G$disk_status$0$0 ==.
	C$diskio.c$43$1$1 ==.
;	diskio.c:43: DSTATUS disk_status( BYTE drv	)
;	-----------------------------------------
;	 function disk_status
;	-----------------------------------------
_disk_status:
;	genReceive
	mov	r2,dpl
	C$diskio.c$46$1$1 ==.
;	diskio.c:46: if( drv != 0)
;	genCmpEq
;	gencjneshort
	cjne	r2,#0x00,00106$
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00102$
00106$:
	C$diskio.c$47$1$1 ==.
;	diskio.c:47: return STA_NOINIT;
;	genRet
	mov	dpl,#0x01
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 251.b	replaced sjmp to ret with ret
	ret
00102$:
	C$diskio.c$50$1$1 ==.
;	diskio.c:50: return( Stat );
;	genAssign
	mov	dptr,#_Stat
	movx	a,@dptr
;	genRet
	C$diskio.c$51$1$1 ==.
	XG$disk_status$0$0 ==.
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
	G$disk_read$0$0 ==.
	C$diskio.c$58$1$1 ==.
;	diskio.c:58: DRESULT disk_read ( BYTE drv, BYTE *buff, DWORD sector, BYTE count )
;	-----------------------------------------
;	 function disk_read
;	-----------------------------------------
_disk_read:
	push	_bp
	mov	_bp,sp
;	genReceive
	C$diskio.c$61$1$1 ==.
;	diskio.c:61: if( drv || !count || (count>
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
	C$diskio.c$62$1$1 ==.
;	diskio.c:62: 1) )
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
	C$diskio.c$63$1$1 ==.
;	diskio.c:63: return( RES_PARERR );
;	genRet
	mov	dpl,#0x04
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00109$
00102$:
	C$diskio.c$66$1$1 ==.
;	diskio.c:66: if( Stat & STA_NOINIT )
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
	C$diskio.c$67$1$1 ==.
;	diskio.c:67: return( RES_NOTRDY );
;	genRet
	mov	dpl,#0x03
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00109$
00106$:
	C$diskio.c$70$1$1 ==.
;	diskio.c:70: if( SD_ReadSector( sector, buff ) )
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
	C$diskio.c$71$1$1 ==.
;	diskio.c:71: return( RES_ERROR );
;	genRet
	mov	dpl,#0x01
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00109$
00108$:
	C$diskio.c$74$1$1 ==.
;	diskio.c:74: return( RES_OK );
;	genRet
	mov	dpl,#0x00
00109$:
	pop	_bp
	C$diskio.c$75$1$1 ==.
	XG$disk_read$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'disk_write'
;------------------------------------------------------------
;buff                      Allocated to stack - offset -5
;sector                    Allocated to stack - offset -9
;count                     Allocated to stack - offset -10
;drv                       Allocated to registers r2 
;------------------------------------------------------------
	G$disk_write$0$0 ==.
	C$diskio.c$81$1$1 ==.
;	diskio.c:81: DRESULT disk_write( BYTE drv, const BYTE *buff, DWORD sector, BYTE count )
;	-----------------------------------------
;	 function disk_write
;	-----------------------------------------
_disk_write:
	push	_bp
	mov	_bp,sp
;	genReceive
	C$diskio.c$84$1$1 ==.
;	diskio.c:84: if( drv || !count || (count>
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
	C$diskio.c$85$1$1 ==.
;	diskio.c:85: 1) )
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
	C$diskio.c$86$1$1 ==.
;	diskio.c:86: return( RES_PARERR );
;	genRet
	mov	dpl,#0x04
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00109$
00102$:
	C$diskio.c$89$1$1 ==.
;	diskio.c:89: if( Stat & STA_NOINIT )
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
	C$diskio.c$90$1$1 ==.
;	diskio.c:90: return( RES_NOTRDY );
;	genRet
	mov	dpl,#0x03
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00109$
00106$:
	C$diskio.c$93$1$1 ==.
;	diskio.c:93: if( SD_WriteSector( sector, buff ) )
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
	C$diskio.c$94$1$1 ==.
;	diskio.c:94: return( RES_ERROR );
;	genRet
	mov	dpl,#0x01
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00109$
00108$:
	C$diskio.c$97$1$1 ==.
;	diskio.c:97: return( RES_OK );
;	genRet
	mov	dpl,#0x00
00109$:
	pop	_bp
	C$diskio.c$98$1$1 ==.
	XG$disk_write$0$0 ==.
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
	G$disk_ioctl$0$0 ==.
	C$diskio.c$106$1$1 ==.
;	diskio.c:106: DRESULT disk_ioctl ( BYTE drv, BYTE ctrl, void *buff )
;	-----------------------------------------
;	 function disk_ioctl
;	-----------------------------------------
_disk_ioctl:
	push	_bp
	mov	_bp,sp
;	genReceive
	mov	r2,dpl
	C$diskio.c$112$1$1 ==.
;	diskio.c:112: if( drv != 0)
;	genCmpEq
;	gencjneshort
	cjne	r2,#0x00,00116$
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00102$
00116$:
	C$diskio.c$113$1$1 ==.
;	diskio.c:113: return RES_PARERR;
;	genRet
	mov	dpl,#0x04
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00110$
00102$:
	C$diskio.c$116$1$1 ==.
;	diskio.c:116: if( Stat & STA_NOINIT )
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
	C$diskio.c$117$1$1 ==.
;	diskio.c:117: return RES_NOTRDY;
;	genRet
	mov	dpl,#0x03
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00110$
00104$:
	C$diskio.c$119$1$1 ==.
;	diskio.c:119: res = RES_ERROR;
;	genAssign
	mov	r2,#0x01
	C$diskio.c$121$1$1 ==.
;	diskio.c:121: switch( ctrl )
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
	C$diskio.c$125$2$2 ==.
;	diskio.c:125: SPI_EnableCS();
;	genCall
	push	ar2
	lcall	_SPI_EnableCS
	pop	ar2
	C$diskio.c$126$2$2 ==.
;	diskio.c:126: if( SD_WaitForReady() == 0xFF )
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
	C$diskio.c$127$2$2 ==.
;	diskio.c:127: res = RES_OK;
;	genAssign
	mov	r2,#0x00
	C$diskio.c$128$2$2 ==.
;	diskio.c:128: break;
	C$diskio.c$130$2$2 ==.
;	diskio.c:130: default:
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00109$
00108$:
	C$diskio.c$131$2$2 ==.
;	diskio.c:131: res = RES_PARERR;
;	genAssign
	mov	r2,#0x04
	C$diskio.c$133$1$1 ==.
;	diskio.c:133: }
00109$:
	C$diskio.c$135$1$1 ==.
;	diskio.c:135: SPI_DisableCS();
;	genCall
	push	ar2
	lcall	_SPI_DisableCS
	pop	ar2
	C$diskio.c$136$1$1 ==.
;	diskio.c:136: SPI_Byte( 0xFF );
;	genCall
	mov	dpl,#0xFF
	push	ar2
	lcall	_SPI_Byte
	pop	ar2
	C$diskio.c$137$1$1 ==.
;	diskio.c:137: return res;
;	genRet
	mov	dpl,r2
00110$:
	pop	_bp
	C$diskio.c$138$1$1 ==.
	XG$disk_ioctl$0$0 ==.
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
