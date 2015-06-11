;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.6.0 #4309 (Jul 28 2006)
; This file generated Tue Apr 21 22:20:46 2015
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
	.globl _CardType
	.globl _Stat
	.globl _SD_GetR1
	.globl _SD_GetR2
	.globl _SD_Command
	.globl _Delay
	.globl _SD_Init
	.globl _SD_ReadSector
	.globl _SD_WriteSector
	.globl _SD_WaitForReady
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
LSD_GetR2$R2$1$1==.
_SD_GetR2_R2_1_1:
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
;Allocation info for local variables in function 'SD_GetR1'
;------------------------------------------------------------
;i                         Allocated to registers r3 
;j                         Allocated to registers r2 
;------------------------------------------------------------
	G$SD_GetR1$0$0 ==.
	C$sd.c$4$0$0 ==.
;	sd.c:4: BYTE SD_GetR1()
;	-----------------------------------------
;	 function SD_GetR1
;	-----------------------------------------
_SD_GetR1:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
	C$sd.c$6$1$0 ==.
;	sd.c:6: BYTE i, j=0xFF;
;	genAssign
	mov	r2,#0xFF
	C$sd.c$8$1$1 ==.
;	sd.c:8: for( i=0; i<8; i++ )
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
	C$sd.c$10$2$2 ==.
;	sd.c:10: j = SPI_Byte( 0xff );
;	genCall
	mov	dpl,#0xFF
	push	ar3
	lcall	_SPI_Byte
	mov	r4,dpl
	pop	ar3
;	genAssign
	mov	ar2,r4
	C$sd.c$11$2$2 ==.
;	sd.c:11: if(j != 0xff)         /* if it isn't 0xff, it is a response */
;	genCmpEq
;	gencjneshort
	cjne	r2,#0xFF,00114$
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00105$
00114$:
	C$sd.c$12$2$2 ==.
;	sd.c:12: return(j);
;	genRet
	mov	dpl,r2
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 251.b	replaced sjmp to ret with ret
	ret
00105$:
	C$sd.c$8$1$1 ==.
;	sd.c:8: for( i=0; i<8; i++ )
;	genPlus
;     genPlusIncr
	inc	r3
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00103$
00106$:
	C$sd.c$14$1$1 ==.
;	sd.c:14: return(j);
;	genRet
	mov	dpl,r2
;	Peephole 300	removed redundant label 00107$
	C$sd.c$15$1$1 ==.
	XG$SD_GetR1$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'SD_GetR2'
;------------------------------------------------------------
;R2                        Allocated with name '_SD_GetR2_R2_1_1'
;------------------------------------------------------------
	G$SD_GetR2$0$0 ==.
	C$sd.c$17$1$1 ==.
;	sd.c:17: WORD SD_GetR2()
;	-----------------------------------------
;	 function SD_GetR2
;	-----------------------------------------
_SD_GetR2:
	C$sd.c$21$1$1 ==.
;	sd.c:21: R2 = ((SD_GetR1())<< 8)&0xff00;
;	genCall
	lcall	_SD_GetR1
	mov	r2,dpl
;	genCast
;	genLeftShift
;	genLeftShiftLiteral
;	genlshTwo
;	peephole 177.e	removed redundant move
	mov	ar3,r2
	mov	r2,#0x00
;	genAnd
	mov	r0,#_SD_GetR2_R2_1_1
	mov	@r0,#0x00
	inc	r0
	mov	@r0,ar3
	C$sd.c$22$1$1 ==.
;	sd.c:22: R2 |= SPI_Byte( 0xff );
;	genCall
	mov	dpl,#0xFF
	lcall	_SPI_Byte
	mov	r2,dpl
;	genCast
	mov	r3,#0x00
;	genOr
	mov	r0,#_SD_GetR2_R2_1_1
	mov	a,r2
	orl	a,@r0
	mov	@r0,a
	mov	a,r3
	inc	r0
	orl	a,@r0
	mov	@r0,a
	C$sd.c$23$1$1 ==.
;	sd.c:23: return( R2 );
;	genRet
	mov	r0,#_SD_GetR2_R2_1_1
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
;	Peephole 300	removed redundant label 00101$
	C$sd.c$24$1$1 ==.
	XG$SD_GetR2$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'SD_Command'
;------------------------------------------------------------
;ThisArgument              Allocated to stack - offset -6
;ThisCommand               Allocated to registers r2 
;Temp                      Allocated to stack - offset 1
;i                         Allocated to registers r3 
;------------------------------------------------------------
	G$SD_Command$0$0 ==.
	C$sd.c$26$1$1 ==.
;	sd.c:26: BYTE SD_Command( BYTE ThisCommand, ULONG ThisArgument )
;	-----------------------------------------
;	 function SD_Command
;	-----------------------------------------
_SD_Command:
	push	_bp
;	peephole 177.h	optimized mov sequence
	mov	a,sp
	mov	_bp,a
	add	a,#0x04
	mov	sp,a
;	genReceive
	mov	r2,dpl
	C$sd.c$32$1$1 ==.
;	sd.c:32: SPI_EnableCS();
;	genCall
	push	ar2
	lcall	_SPI_EnableCS
	pop	ar2
	C$sd.c$35$1$1 ==.
;	sd.c:35: SPI_Byte( 0xFF );
;	genCall
	mov	dpl,#0xFF
	push	ar2
	lcall	_SPI_Byte
	pop	ar2
	C$sd.c$38$1$1 ==.
;	sd.c:38: SPI_Byte(0x40 | ThisCommand);
;	genOr
	mov	a,#0x40
	orl	a,r2
	mov	dpl,a
;	genCall
	push	ar2
	lcall	_SPI_Byte
	pop	ar2
	C$sd.c$41$1$1 ==.
;	sd.c:41: Temp.ul = ThisArgument;
;	genAddrOf
	mov	a,_bp
	add	a,#0x01
;	genPointerSet
;	genNearPointerSet
;	Peephole 239	used a instead of acc
	mov	r0,a
	mov	a,_bp
	add	a,#0xfffffffa
	mov	r1,a
	mov	a,@r1
	mov	@r0,a
	inc	r0
	inc	r1
	mov	a,@r1
	mov	@r0,a
	inc	r0
	inc	r1
	mov	a,@r1
	mov	@r0,a
	inc	r0
	inc	r1
	mov	a,@r1
	mov	@r0,a
	C$sd.c$42$1$1 ==.
;	sd.c:42: for( i=0; i<4; i++ )
;	genAssign
	mov	r3,#0x00
00101$:
;	genCmpLt
;	genCmp
	cjne	r3,#0x04,00113$
00113$:
;	genIfxJump
;	Peephole 108.a	removed ljmp by inverse jump logic
	jnc	00104$
;	Peephole 300	removed redundant label 00114$
	C$sd.c$43$1$1 ==.
;	sd.c:43: SPI_Byte( Temp.b[ i ] );
;	genAddrOf
;	Peephole 212	reduced add sequence to inc
	mov	r4,_bp
	inc	r4
;	genPlus
;	Peephole 236.g	used r3 instead of ar3
	mov	a,r3
;	Peephole 236.a	used r4 instead of ar4
	add	a,r4
	mov	r0,a
;	genPointerGet
;	genNearPointerGet
	mov	dpl,@r0
;	genCall
	push	ar2
	push	ar3
	lcall	_SPI_Byte
	pop	ar3
	pop	ar2
	C$sd.c$42$1$1 ==.
;	sd.c:42: for( i=0; i<4; i++ )
;	genPlus
;     genPlusIncr
	inc	r3
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00101$
00104$:
	C$sd.c$46$1$1 ==.
;	sd.c:46: SPI_Byte((ThisCommand == CMD_GO_IDLE_STATE)? 0x95:0xFF);
;	genNot
	mov	a,r2
	cjne	a,#0x01,00115$
00115$:
	clr	a
	rlc	a
;	genIfx
	mov	r2,a
;	Peephole 105	removed redundant mov
;	genIfxJump
;	Peephole 108.c	removed ljmp by inverse jump logic
	jz	00107$
;	Peephole 300	removed redundant label 00116$
;	genAssign
	mov	r2,#0x95
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00108$
00107$:
;	genAssign
	mov	r2,#0xFF
00108$:
;	genCall
	mov	dpl,r2
	lcall	_SPI_Byte
	C$sd.c$49$1$1 ==.
;	sd.c:49: SPI_Byte( 0xFF );
;	genCall
	mov	dpl,#0xFF
	lcall	_SPI_Byte
	C$sd.c$50$1$1 ==.
;	sd.c:50: return( 0 );
;	genRet
	mov	dpl,#0x00
;	Peephole 300	removed redundant label 00105$
	mov	sp,_bp
	pop	_bp
	C$sd.c$51$1$1 ==.
	XG$SD_Command$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Delay'
;------------------------------------------------------------
;MilSec                    Allocated to registers r2 r3 
;i                         Allocated to registers r6 r7 
;j                         Allocated to registers r4 r5 
;------------------------------------------------------------
	G$Delay$0$0 ==.
	C$sd.c$53$1$1 ==.
;	sd.c:53: void Delay( WORD MilSec )
;	-----------------------------------------
;	 function Delay
;	-----------------------------------------
_Delay:
;	genReceive
	mov	r2,dpl
	mov	r3,dph
	C$sd.c$56$1$1 ==.
;	sd.c:56: for (j=0;j<MilSec;j++)
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
	C$sd.c$57$1$1 ==.
;	sd.c:57: for (i=0xFC65;i<0xFFFF;i++);
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
	C$sd.c$56$1$1 ==.
;	sd.c:56: for (j=0;j<MilSec;j++)
;	genPlus
;     genPlusIncr
;	tail increment optimized (range 7)
	inc	r4
	cjne	r4,#0x00,00104$
	inc	r5
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00104$
00108$:
	C$sd.c$58$1$1 ==.
	XG$Delay$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'SD_Init'
;------------------------------------------------------------
;CardStatus                Allocated to registers r2 r3 
;Count                     Allocated to registers r2 r3 
;------------------------------------------------------------
	G$SD_Init$0$0 ==.
	C$sd.c$60$1$1 ==.
;	sd.c:60: BYTE SD_Init()
;	-----------------------------------------
;	 function SD_Init
;	-----------------------------------------
_SD_Init:
	C$sd.c$68$1$1 ==.
;	sd.c:68: SPI_Init();
;	genCall
	lcall	_SPI_Init
	C$sd.c$71$1$1 ==.
;	sd.c:71: SPI_DisableCS();
;	genCall
	lcall	_SPI_DisableCS
	C$sd.c$76$1$1 ==.
;	sd.c:76: for(Count=0;Count<100;Count++)
;	genAssign
	mov	r2,#0x64
	mov	r3,#0x00
00123$:
	C$sd.c$77$1$1 ==.
;	sd.c:77: SPI_Byte( 0xFF );
;	genCall
	mov	dpl,#0xFF
	push	ar2
	push	ar3
	lcall	_SPI_Byte
	pop	ar3
	pop	ar2
;	genMinus
;	genMinusDec
	dec	r2
	cjne	r2,#0xff,00140$
	dec	r3
00140$:
	C$sd.c$76$1$1 ==.
;	sd.c:76: for(Count=0;Count<100;Count++)
;	genIfx
	mov	a,r2
	orl	a,r3
;	genIfxJump
;	Peephole 108.b	removed ljmp by inverse jump logic
	jnz	00123$
;	Peephole 300	removed redundant label 00141$
	C$sd.c$80$1$1 ==.
;	sd.c:80: SPI_EnableCS();
;	genCall
	lcall	_SPI_EnableCS
	C$sd.c$86$1$1 ==.
;	sd.c:86: CardType = 0;
;	genAssign
	mov	dptr,#_CardType
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	C$sd.c$89$1$1 ==.
;	sd.c:89: do
;	genAssign
	mov	r2,#0xE8
	mov	r3,#0x03
00102$:
	C$sd.c$91$2$2 ==.
;	sd.c:91: Delay(1);
;	genCall
;	Peephole 182.b	used 16 bit load of dptr
	mov	dptr,#0x0001
	push	ar2
	push	ar3
	lcall	_Delay
	pop	ar3
	pop	ar2
	C$sd.c$92$2$2 ==.
;	sd.c:92: SD_Command( CMD_GO_IDLE_STATE, 0 );
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
	C$sd.c$93$1$1 ==.
;	sd.c:93: } while((SD_GetR1() != IDLE_STATE) && (--Count));
;	genCall
	push	ar2
	push	ar3
	lcall	_SD_GetR1
	mov	r4,dpl
	pop	ar3
	pop	ar2
;	genCmpEq
;	gencjneshort
	cjne	r4,#0x01,00142$
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00104$
00142$:
;	genMinus
;	genMinusDec
	dec	r2
	cjne	r2,#0xff,00143$
	dec	r3
00143$:
;	genIfx
	mov	a,r2
	orl	a,r3
;	genIfxJump
;	Peephole 108.b	removed ljmp by inverse jump logic
	jnz	00102$
;	Peephole 300	removed redundant label 00144$
00104$:
	C$sd.c$96$1$1 ==.
;	sd.c:96: if( !Count )
;	genIfx
	mov	a,r2
	orl	a,r3
;	genIfxJump
;	Peephole 108.b	removed ljmp by inverse jump logic
	jnz	00106$
;	Peephole 300	removed redundant label 00145$
	C$sd.c$97$1$1 ==.
;	sd.c:97: return( SD_TIME_OUT );
;	genRet
	mov	dpl,#0x01
;	Peephole 251.a	replaced ljmp to ret with ret
	ret
00106$:
	C$sd.c$106$1$1 ==.
;	sd.c:106: SD_Command( CMD_APP_CMD, 0 );
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
	C$sd.c$107$1$1 ==.
;	sd.c:107: SD_Command( ACMD_SEND_OP_COND, 0 );
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
	C$sd.c$108$1$1 ==.
;	sd.c:108: if( SD_GetR1() <= 1 )
;	genCall
	lcall	_SD_GetR1
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
;	Peephole 300	removed redundant label 00146$
	C$sd.c$110$2$3 ==.
;	sd.c:110: CardType = 2;
;	genAssign
	mov	dptr,#_CardType
	mov	a,#0x02
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00134$
00108$:
	C$sd.c$114$2$4 ==.
;	sd.c:114: CardType = 1;
;	genAssign
	mov	dptr,#_CardType
	mov	a,#0x01
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	C$sd.c$118$1$1 ==.
;	sd.c:118: do
00134$:
;	genAssign
	mov	r2,#0xD0
	mov	r3,#0x07
00114$:
	C$sd.c$120$2$5 ==.
;	sd.c:120: Delay(1);
;	genCall
;	Peephole 182.b	used 16 bit load of dptr
	mov	dptr,#0x0001
	push	ar2
	push	ar3
	lcall	_Delay
	pop	ar3
	pop	ar2
	C$sd.c$121$2$5 ==.
;	sd.c:121: if( CardType == 2 )
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
;	Peephole 300	removed redundant label 00147$
;	Peephole 300	removed redundant label 00148$
	C$sd.c$123$3$6 ==.
;	sd.c:123: SD_Command( CMD_APP_CMD, 0 );
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
	C$sd.c$124$3$6 ==.
;	sd.c:124: SD_Command( ACMD_SEND_OP_COND, 0 );
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
	C$sd.c$128$3$7 ==.
;	sd.c:128: SD_Command( CMD_SEND_OP_COND, 0 );
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
	C$sd.c$130$1$1 ==.
;	sd.c:130: } while(SD_GetR1() && --Count);
;	genCall
	push	ar2
	push	ar3
	lcall	_SD_GetR1
	mov	a,dpl
	pop	ar3
	pop	ar2
;	genIfx
;	genIfxJump
;	Peephole 108.c	removed ljmp by inverse jump logic
	jz	00116$
;	Peephole 300	removed redundant label 00149$
;	genMinus
;	genMinusDec
	dec	r2
	cjne	r2,#0xff,00150$
	dec	r3
00150$:
;	genIfx
	mov	a,r2
	orl	a,r3
;	genIfxJump
	jz	00151$
	ljmp	00114$
00151$:
00116$:
	C$sd.c$132$1$1 ==.
;	sd.c:132: if( !Count )
;	genIfx
	mov	a,r2
	orl	a,r3
;	genIfxJump
;	Peephole 108.b	removed ljmp by inverse jump logic
	jnz	00118$
;	Peephole 300	removed redundant label 00152$
	C$sd.c$133$1$1 ==.
;	sd.c:133: return( SD_TIME_OUT );
;	genRet
	mov	dpl,#0x01
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 251.b	replaced sjmp to ret with ret
	ret
00118$:
	C$sd.c$138$1$1 ==.
;	sd.c:138: SD_Command( CMD_SEND_STATUS, 0 );
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
	C$sd.c$139$1$1 ==.
;	sd.c:139: CardStatus = SD_GetR2();
;	genCall
	lcall	_SD_GetR2
	mov	r2,dpl
	mov	r3,dph
;	genAssign
	C$sd.c$141$1$1 ==.
;	sd.c:141: if( CardStatus )
;	genIfx
	mov	a,r2
	orl	a,r3
;	genIfxJump
;	Peephole 108.c	removed ljmp by inverse jump logic
	jz	00120$
;	Peephole 300	removed redundant label 00153$
	C$sd.c$142$1$1 ==.
;	sd.c:142: return( SD_ERROR );
;	genRet
	mov	dpl,#0x02
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 251.b	replaced sjmp to ret with ret
	ret
00120$:
	C$sd.c$157$1$1 ==.
;	sd.c:157: SPI_Initf();
;	genCall
	lcall	_SPI_Initf
	C$sd.c$160$1$1 ==.
;	sd.c:160: SPI_DisableCS();
;	genCall
	lcall	_SPI_DisableCS
	C$sd.c$163$1$1 ==.
;	sd.c:163: return( 0 );
;	genRet
	mov	dpl,#0x00
;	Peephole 300	removed redundant label 00124$
	C$sd.c$164$1$1 ==.
	XG$SD_Init$0$0 ==.
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
	G$SD_ReadSector$0$0 ==.
	C$sd.c$167$1$1 ==.
;	sd.c:167: BYTE SD_ReadSector( ULONG SectorNumber, BYTE *Buffer )
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
	C$sd.c$173$1$1 ==.
;	sd.c:173: SD_Command( CMD_READ_SINGLE_BLOCK, SectorNumber << 9 );
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
	C$sd.c$174$1$1 ==.
;	sd.c:174: c = SD_GetR1();
;	genCall
	lcall	_SD_GetR1
	mov	r2,dpl
;	genAssign
	C$sd.c$175$1$1 ==.
;	sd.c:175: i = SD_GetR1();
;	genCall
	push	ar2
	lcall	_SD_GetR1
	mov	r3,dpl
	pop	ar2
;	genAssign
	C$sd.c$179$1$1 ==.
;	sd.c:179: while( (i == 0xff) && --count)
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
	C$sd.c$180$1$1 ==.
;	sd.c:180: i = SD_GetR1();
;	genCall
	push	ar2
	push	ar4
	push	ar5
	lcall	_SD_GetR1
	mov	r6,dpl
	pop	ar5
	pop	ar4
	pop	ar2
;	genAssign
	mov	ar3,r6
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00102$
00104$:
	C$sd.c$183$1$1 ==.
;	sd.c:183: if(c || i != 0xFE)
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
	C$sd.c$184$1$1 ==.
;	sd.c:184: return( 1 );
;	genRet
	mov	dpl,#0x01
	C$sd.c$187$1$1 ==.
;	sd.c:187: for( count=0; count<SD_DATA_SIZE; count++)
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
	C$sd.c$188$1$1 ==.
;	sd.c:188: *Buffer++ = SPI_Byte(0xFF);
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
	C$sd.c$187$1$1 ==.
;	sd.c:187: for( count=0; count<SD_DATA_SIZE; count++)
;	genIfx
	mov	a,r5
	orl	a,r6
;	genIfxJump
;	Peephole 108.b	removed ljmp by inverse jump logic
	jnz	00110$
;	Peephole 300	removed redundant label 00128$
	C$sd.c$191$1$1 ==.
;	sd.c:191: SPI_Byte(0xFF);
;	genCall
	mov	dpl,#0xFF
	lcall	_SPI_Byte
	C$sd.c$192$1$1 ==.
;	sd.c:192: SPI_Byte(0xFF);
;	genCall
	mov	dpl,#0xFF
	lcall	_SPI_Byte
	C$sd.c$195$1$1 ==.
;	sd.c:195: SPI_DisableCS();
;	genCall
	lcall	_SPI_DisableCS
	C$sd.c$197$1$1 ==.
;	sd.c:197: return( 0 );
;	genRet
	mov	dpl,#0x00
00111$:
	pop	_bp
	C$sd.c$198$1$1 ==.
	XG$SD_ReadSector$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'SD_WriteSector'
;------------------------------------------------------------
;Buffer                    Allocated to stack - offset -5
;SectorNumber              Allocated to registers r2 r3 r4 r5 
;i                         Allocated to registers 
;count                     Allocated to registers r5 r6 
;------------------------------------------------------------
	G$SD_WriteSector$0$0 ==.
	C$sd.c$200$1$1 ==.
;	sd.c:200: BYTE SD_WriteSector( ULONG SectorNumber, BYTE *Buffer )
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
	C$sd.c$206$1$1 ==.
;	sd.c:206: SD_Command( CMD_WRITE_SINGLE_BLOCK, SectorNumber << 9 );
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
	C$sd.c$207$1$1 ==.
;	sd.c:207: i = SD_GetR1();
;	genCall
	lcall	_SD_GetR1
	C$sd.c$210$1$1 ==.
;	sd.c:210: SPI_Byte( 0xFE );
;	genCall
	mov	dpl,#0xFE
	lcall	_SPI_Byte
	C$sd.c$213$1$1 ==.
;	sd.c:213: for( count= 0; count< 512; count++ )
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
	C$sd.c$215$2$2 ==.
;	sd.c:215: SPI_Byte(*Buffer++);
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
	C$sd.c$213$2$2 ==.
;	sd.c:213: for( count= 0; count< 512; count++ )
;	genIfx
	mov	a,r5
	orl	a,r6
;	genIfxJump
;	Peephole 108.b	removed ljmp by inverse jump logic
	jnz	00106$
;	Peephole 300	removed redundant label 00115$
	C$sd.c$218$1$1 ==.
;	sd.c:218: SPI_Byte(0xFF);
;	genCall
	mov	dpl,#0xFF
	lcall	_SPI_Byte
	C$sd.c$219$1$1 ==.
;	sd.c:219: SPI_Byte(0xFF);
;	genCall
	mov	dpl,#0xFF
	lcall	_SPI_Byte
	C$sd.c$222$1$1 ==.
;	sd.c:222: while( SPI_Byte( 0xFF ) != 0xFF)
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
	C$sd.c$227$1$1 ==.
;	sd.c:227: SPI_Byte( 0xFF );
;	genCall
	mov	dpl,#0xFF
	lcall	_SPI_Byte
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00101$
00103$:
	C$sd.c$230$1$1 ==.
;	sd.c:230: SPI_DisableCS();
;	genCall
	lcall	_SPI_DisableCS
	C$sd.c$231$1$1 ==.
;	sd.c:231: SPI_Byte( 0xFF );
;	genCall
	mov	dpl,#0xFF
	lcall	_SPI_Byte
	C$sd.c$232$1$1 ==.
;	sd.c:232: return( 0 );
;	genRet
	mov	dpl,#0x00
;	Peephole 300	removed redundant label 00107$
	pop	_bp
	C$sd.c$233$1$1 ==.
	XG$SD_WriteSector$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'SD_WaitForReady'
;------------------------------------------------------------
;i                         Allocated to registers r4 
;j                         Allocated to registers r2 r3 
;------------------------------------------------------------
	G$SD_WaitForReady$0$0 ==.
	C$sd.c$235$1$1 ==.
;	sd.c:235: BYTE SD_WaitForReady()
;	-----------------------------------------
;	 function SD_WaitForReady
;	-----------------------------------------
_SD_WaitForReady:
	C$sd.c$240$1$1 ==.
;	sd.c:240: SPI_Byte( 0xFF );
;	genCall
	mov	dpl,#0xFF
	lcall	_SPI_Byte
	C$sd.c$243$1$1 ==.
;	sd.c:243: do
;	genAssign
	mov	r2,#0xF4
	mov	r3,#0x01
00102$:
	C$sd.c$245$2$2 ==.
;	sd.c:245: i = SPI_Byte( 0xFF );
;	genCall
	mov	dpl,#0xFF
	push	ar2
	push	ar3
	lcall	_SPI_Byte
	mov	r4,dpl
	pop	ar3
	pop	ar2
;	genAssign
	C$sd.c$246$2$2 ==.
;	sd.c:246: Delay( 1 );
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
	C$sd.c$247$1$1 ==.
;	sd.c:247: } while ((i != 0xFF) && --j);
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
	C$sd.c$249$1$1 ==.
;	sd.c:249: return( i );
;	genRet
	mov	dpl,r4
;	Peephole 300	removed redundant label 00105$
	C$sd.c$250$1$1 ==.
	XG$SD_WaitForReady$0$0 ==.
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
