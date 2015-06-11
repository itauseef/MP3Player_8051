                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : FreeWare ANSI-C Compiler
                              3 ; Version 2.6.0 #4309 (Jul 28 2006)
                              4 ; This file generated Sat May 02 15:12:58 2015
                              5 ;--------------------------------------------------------
                              6 	.module sd
                              7 	.optsdcc -mmcs51 --model-small
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _P5_7
                             13 	.globl _P5_6
                             14 	.globl _P5_5
                             15 	.globl _P5_4
                             16 	.globl _P5_3
                             17 	.globl _P5_2
                             18 	.globl _P5_1
                             19 	.globl _P5_0
                             20 	.globl _P4_7
                             21 	.globl _P4_6
                             22 	.globl _P4_5
                             23 	.globl _P4_4
                             24 	.globl _P4_3
                             25 	.globl _P4_2
                             26 	.globl _P4_1
                             27 	.globl _P4_0
                             28 	.globl _PX0L
                             29 	.globl _PT0L
                             30 	.globl _PX1L
                             31 	.globl _PT1L
                             32 	.globl _PLS
                             33 	.globl _PT2L
                             34 	.globl _PPCL
                             35 	.globl _EC
                             36 	.globl _CCF0
                             37 	.globl _CCF1
                             38 	.globl _CCF2
                             39 	.globl _CCF3
                             40 	.globl _CCF4
                             41 	.globl _CR
                             42 	.globl _CF
                             43 	.globl _TF2
                             44 	.globl _EXF2
                             45 	.globl _RCLK
                             46 	.globl _TCLK
                             47 	.globl _EXEN2
                             48 	.globl _TR2
                             49 	.globl _C_T2
                             50 	.globl _CP_RL2
                             51 	.globl _T2CON_7
                             52 	.globl _T2CON_6
                             53 	.globl _T2CON_5
                             54 	.globl _T2CON_4
                             55 	.globl _T2CON_3
                             56 	.globl _T2CON_2
                             57 	.globl _T2CON_1
                             58 	.globl _T2CON_0
                             59 	.globl _PT2
                             60 	.globl _ET2
                             61 	.globl _CY
                             62 	.globl _AC
                             63 	.globl _F0
                             64 	.globl _RS1
                             65 	.globl _RS0
                             66 	.globl _OV
                             67 	.globl _F1
                             68 	.globl _P
                             69 	.globl _PS
                             70 	.globl _PT1
                             71 	.globl _PX1
                             72 	.globl _PT0
                             73 	.globl _PX0
                             74 	.globl _RD
                             75 	.globl _WR
                             76 	.globl _T1
                             77 	.globl _T0
                             78 	.globl _INT1
                             79 	.globl _INT0
                             80 	.globl _TXD
                             81 	.globl _RXD
                             82 	.globl _P3_7
                             83 	.globl _P3_6
                             84 	.globl _P3_5
                             85 	.globl _P3_4
                             86 	.globl _P3_3
                             87 	.globl _P3_2
                             88 	.globl _P3_1
                             89 	.globl _P3_0
                             90 	.globl _EA
                             91 	.globl _ES
                             92 	.globl _ET1
                             93 	.globl _EX1
                             94 	.globl _ET0
                             95 	.globl _EX0
                             96 	.globl _P2_7
                             97 	.globl _P2_6
                             98 	.globl _P2_5
                             99 	.globl _P2_4
                            100 	.globl _P2_3
                            101 	.globl _P2_2
                            102 	.globl _P2_1
                            103 	.globl _P2_0
                            104 	.globl _SM0
                            105 	.globl _SM1
                            106 	.globl _SM2
                            107 	.globl _REN
                            108 	.globl _TB8
                            109 	.globl _RB8
                            110 	.globl _TI
                            111 	.globl _RI
                            112 	.globl _P1_7
                            113 	.globl _P1_6
                            114 	.globl _P1_5
                            115 	.globl _P1_4
                            116 	.globl _P1_3
                            117 	.globl _P1_2
                            118 	.globl _P1_1
                            119 	.globl _P1_0
                            120 	.globl _TF1
                            121 	.globl _TR1
                            122 	.globl _TF0
                            123 	.globl _TR0
                            124 	.globl _IE1
                            125 	.globl _IT1
                            126 	.globl _IE0
                            127 	.globl _IT0
                            128 	.globl _P0_7
                            129 	.globl _P0_6
                            130 	.globl _P0_5
                            131 	.globl _P0_4
                            132 	.globl _P0_3
                            133 	.globl _P0_2
                            134 	.globl _P0_1
                            135 	.globl _P0_0
                            136 	.globl _EECON
                            137 	.globl _KBF
                            138 	.globl _KBE
                            139 	.globl _KBLS
                            140 	.globl _BRL
                            141 	.globl _BDRCON
                            142 	.globl _T2MOD
                            143 	.globl _SPDAT
                            144 	.globl _SPSTA
                            145 	.globl _SPCON
                            146 	.globl _SADEN
                            147 	.globl _SADDR
                            148 	.globl _WDTPRG
                            149 	.globl _WDTRST
                            150 	.globl _P5
                            151 	.globl _P4
                            152 	.globl _IPH1
                            153 	.globl _IPL1
                            154 	.globl _IPH0
                            155 	.globl _IPL0
                            156 	.globl _IEN1
                            157 	.globl _IEN0
                            158 	.globl _CMOD
                            159 	.globl _CL
                            160 	.globl _CH
                            161 	.globl _CCON
                            162 	.globl _CCAPM4
                            163 	.globl _CCAPM3
                            164 	.globl _CCAPM2
                            165 	.globl _CCAPM1
                            166 	.globl _CCAPM0
                            167 	.globl _CCAP4L
                            168 	.globl _CCAP3L
                            169 	.globl _CCAP2L
                            170 	.globl _CCAP1L
                            171 	.globl _CCAP0L
                            172 	.globl _CCAP4H
                            173 	.globl _CCAP3H
                            174 	.globl _CCAP2H
                            175 	.globl _CCAP1H
                            176 	.globl _CCAP0H
                            177 	.globl _CKCKON1
                            178 	.globl _CKCKON0
                            179 	.globl _CKRL
                            180 	.globl _AUXR1
                            181 	.globl _AUXR
                            182 	.globl _TH2
                            183 	.globl _TL2
                            184 	.globl _RCAP2H
                            185 	.globl _RCAP2L
                            186 	.globl _T2CON
                            187 	.globl _B
                            188 	.globl _ACC
                            189 	.globl _PSW
                            190 	.globl _IP
                            191 	.globl _P3
                            192 	.globl _IE
                            193 	.globl _P2
                            194 	.globl _SBUF
                            195 	.globl _SCON
                            196 	.globl _P1
                            197 	.globl _TH1
                            198 	.globl _TH0
                            199 	.globl _TL1
                            200 	.globl _TL0
                            201 	.globl _TMOD
                            202 	.globl _TCON
                            203 	.globl _PCON
                            204 	.globl _DPH
                            205 	.globl _DPL
                            206 	.globl _SP
                            207 	.globl _P0
                            208 	.globl _xbuffer
                            209 	.globl _SDCard
                            210 	.globl _CardType
                            211 	.globl _Stat
                            212 	.globl _SD_PrintTXT
                            213 	.globl _SD_ReadMP3
                            214 	.globl _SD_Command
                            215 	.globl _SD_GetByte
                            216 	.globl _SD_GetWord
                            217 	.globl _Delay
                            218 	.globl _SD_Init
                            219 	.globl _SD_ReadSector
                            220 	.globl _SD_WriteSector
                            221 	.globl _SD_WaitForReady
                            222 ;--------------------------------------------------------
                            223 ; special function registers
                            224 ;--------------------------------------------------------
                            225 	.area RSEG    (DATA)
                    0080    226 _P0	=	0x0080
                    0081    227 _SP	=	0x0081
                    0082    228 _DPL	=	0x0082
                    0083    229 _DPH	=	0x0083
                    0087    230 _PCON	=	0x0087
                    0088    231 _TCON	=	0x0088
                    0089    232 _TMOD	=	0x0089
                    008A    233 _TL0	=	0x008a
                    008B    234 _TL1	=	0x008b
                    008C    235 _TH0	=	0x008c
                    008D    236 _TH1	=	0x008d
                    0090    237 _P1	=	0x0090
                    0098    238 _SCON	=	0x0098
                    0099    239 _SBUF	=	0x0099
                    00A0    240 _P2	=	0x00a0
                    00A8    241 _IE	=	0x00a8
                    00B0    242 _P3	=	0x00b0
                    00B8    243 _IP	=	0x00b8
                    00D0    244 _PSW	=	0x00d0
                    00E0    245 _ACC	=	0x00e0
                    00F0    246 _B	=	0x00f0
                    00C8    247 _T2CON	=	0x00c8
                    00CA    248 _RCAP2L	=	0x00ca
                    00CB    249 _RCAP2H	=	0x00cb
                    00CC    250 _TL2	=	0x00cc
                    00CD    251 _TH2	=	0x00cd
                    008E    252 _AUXR	=	0x008e
                    00A2    253 _AUXR1	=	0x00a2
                    0097    254 _CKRL	=	0x0097
                    008F    255 _CKCKON0	=	0x008f
                    00AF    256 _CKCKON1	=	0x00af
                    00FA    257 _CCAP0H	=	0x00fa
                    00FB    258 _CCAP1H	=	0x00fb
                    00FC    259 _CCAP2H	=	0x00fc
                    00FD    260 _CCAP3H	=	0x00fd
                    00FE    261 _CCAP4H	=	0x00fe
                    00EA    262 _CCAP0L	=	0x00ea
                    00EB    263 _CCAP1L	=	0x00eb
                    00EC    264 _CCAP2L	=	0x00ec
                    00ED    265 _CCAP3L	=	0x00ed
                    00EE    266 _CCAP4L	=	0x00ee
                    00DA    267 _CCAPM0	=	0x00da
                    00DB    268 _CCAPM1	=	0x00db
                    00DC    269 _CCAPM2	=	0x00dc
                    00DD    270 _CCAPM3	=	0x00dd
                    00DE    271 _CCAPM4	=	0x00de
                    00D8    272 _CCON	=	0x00d8
                    00F9    273 _CH	=	0x00f9
                    00E9    274 _CL	=	0x00e9
                    00D9    275 _CMOD	=	0x00d9
                    00A8    276 _IEN0	=	0x00a8
                    00B1    277 _IEN1	=	0x00b1
                    00B8    278 _IPL0	=	0x00b8
                    00B7    279 _IPH0	=	0x00b7
                    00B2    280 _IPL1	=	0x00b2
                    00B3    281 _IPH1	=	0x00b3
                    00C0    282 _P4	=	0x00c0
                    00D8    283 _P5	=	0x00d8
                    00A6    284 _WDTRST	=	0x00a6
                    00A7    285 _WDTPRG	=	0x00a7
                    00A9    286 _SADDR	=	0x00a9
                    00B9    287 _SADEN	=	0x00b9
                    00C3    288 _SPCON	=	0x00c3
                    00C4    289 _SPSTA	=	0x00c4
                    00C5    290 _SPDAT	=	0x00c5
                    00C9    291 _T2MOD	=	0x00c9
                    009B    292 _BDRCON	=	0x009b
                    009A    293 _BRL	=	0x009a
                    009C    294 _KBLS	=	0x009c
                    009D    295 _KBE	=	0x009d
                    009E    296 _KBF	=	0x009e
                    00D2    297 _EECON	=	0x00d2
                            298 ;--------------------------------------------------------
                            299 ; special function bits
                            300 ;--------------------------------------------------------
                            301 	.area RSEG    (DATA)
                    0080    302 _P0_0	=	0x0080
                    0081    303 _P0_1	=	0x0081
                    0082    304 _P0_2	=	0x0082
                    0083    305 _P0_3	=	0x0083
                    0084    306 _P0_4	=	0x0084
                    0085    307 _P0_5	=	0x0085
                    0086    308 _P0_6	=	0x0086
                    0087    309 _P0_7	=	0x0087
                    0088    310 _IT0	=	0x0088
                    0089    311 _IE0	=	0x0089
                    008A    312 _IT1	=	0x008a
                    008B    313 _IE1	=	0x008b
                    008C    314 _TR0	=	0x008c
                    008D    315 _TF0	=	0x008d
                    008E    316 _TR1	=	0x008e
                    008F    317 _TF1	=	0x008f
                    0090    318 _P1_0	=	0x0090
                    0091    319 _P1_1	=	0x0091
                    0092    320 _P1_2	=	0x0092
                    0093    321 _P1_3	=	0x0093
                    0094    322 _P1_4	=	0x0094
                    0095    323 _P1_5	=	0x0095
                    0096    324 _P1_6	=	0x0096
                    0097    325 _P1_7	=	0x0097
                    0098    326 _RI	=	0x0098
                    0099    327 _TI	=	0x0099
                    009A    328 _RB8	=	0x009a
                    009B    329 _TB8	=	0x009b
                    009C    330 _REN	=	0x009c
                    009D    331 _SM2	=	0x009d
                    009E    332 _SM1	=	0x009e
                    009F    333 _SM0	=	0x009f
                    00A0    334 _P2_0	=	0x00a0
                    00A1    335 _P2_1	=	0x00a1
                    00A2    336 _P2_2	=	0x00a2
                    00A3    337 _P2_3	=	0x00a3
                    00A4    338 _P2_4	=	0x00a4
                    00A5    339 _P2_5	=	0x00a5
                    00A6    340 _P2_6	=	0x00a6
                    00A7    341 _P2_7	=	0x00a7
                    00A8    342 _EX0	=	0x00a8
                    00A9    343 _ET0	=	0x00a9
                    00AA    344 _EX1	=	0x00aa
                    00AB    345 _ET1	=	0x00ab
                    00AC    346 _ES	=	0x00ac
                    00AF    347 _EA	=	0x00af
                    00B0    348 _P3_0	=	0x00b0
                    00B1    349 _P3_1	=	0x00b1
                    00B2    350 _P3_2	=	0x00b2
                    00B3    351 _P3_3	=	0x00b3
                    00B4    352 _P3_4	=	0x00b4
                    00B5    353 _P3_5	=	0x00b5
                    00B6    354 _P3_6	=	0x00b6
                    00B7    355 _P3_7	=	0x00b7
                    00B0    356 _RXD	=	0x00b0
                    00B1    357 _TXD	=	0x00b1
                    00B2    358 _INT0	=	0x00b2
                    00B3    359 _INT1	=	0x00b3
                    00B4    360 _T0	=	0x00b4
                    00B5    361 _T1	=	0x00b5
                    00B6    362 _WR	=	0x00b6
                    00B7    363 _RD	=	0x00b7
                    00B8    364 _PX0	=	0x00b8
                    00B9    365 _PT0	=	0x00b9
                    00BA    366 _PX1	=	0x00ba
                    00BB    367 _PT1	=	0x00bb
                    00BC    368 _PS	=	0x00bc
                    00D0    369 _P	=	0x00d0
                    00D1    370 _F1	=	0x00d1
                    00D2    371 _OV	=	0x00d2
                    00D3    372 _RS0	=	0x00d3
                    00D4    373 _RS1	=	0x00d4
                    00D5    374 _F0	=	0x00d5
                    00D6    375 _AC	=	0x00d6
                    00D7    376 _CY	=	0x00d7
                    00AD    377 _ET2	=	0x00ad
                    00BD    378 _PT2	=	0x00bd
                    00C8    379 _T2CON_0	=	0x00c8
                    00C9    380 _T2CON_1	=	0x00c9
                    00CA    381 _T2CON_2	=	0x00ca
                    00CB    382 _T2CON_3	=	0x00cb
                    00CC    383 _T2CON_4	=	0x00cc
                    00CD    384 _T2CON_5	=	0x00cd
                    00CE    385 _T2CON_6	=	0x00ce
                    00CF    386 _T2CON_7	=	0x00cf
                    00C8    387 _CP_RL2	=	0x00c8
                    00C9    388 _C_T2	=	0x00c9
                    00CA    389 _TR2	=	0x00ca
                    00CB    390 _EXEN2	=	0x00cb
                    00CC    391 _TCLK	=	0x00cc
                    00CD    392 _RCLK	=	0x00cd
                    00CE    393 _EXF2	=	0x00ce
                    00CF    394 _TF2	=	0x00cf
                    00DF    395 _CF	=	0x00df
                    00DE    396 _CR	=	0x00de
                    00DC    397 _CCF4	=	0x00dc
                    00DB    398 _CCF3	=	0x00db
                    00DA    399 _CCF2	=	0x00da
                    00D9    400 _CCF1	=	0x00d9
                    00D8    401 _CCF0	=	0x00d8
                    00AE    402 _EC	=	0x00ae
                    00BE    403 _PPCL	=	0x00be
                    00BD    404 _PT2L	=	0x00bd
                    00BC    405 _PLS	=	0x00bc
                    00BB    406 _PT1L	=	0x00bb
                    00BA    407 _PX1L	=	0x00ba
                    00B9    408 _PT0L	=	0x00b9
                    00B8    409 _PX0L	=	0x00b8
                    00C0    410 _P4_0	=	0x00c0
                    00C1    411 _P4_1	=	0x00c1
                    00C2    412 _P4_2	=	0x00c2
                    00C3    413 _P4_3	=	0x00c3
                    00C4    414 _P4_4	=	0x00c4
                    00C5    415 _P4_5	=	0x00c5
                    00C6    416 _P4_6	=	0x00c6
                    00C7    417 _P4_7	=	0x00c7
                    00D8    418 _P5_0	=	0x00d8
                    00D9    419 _P5_1	=	0x00d9
                    00DA    420 _P5_2	=	0x00da
                    00DB    421 _P5_3	=	0x00db
                    00DC    422 _P5_4	=	0x00dc
                    00DD    423 _P5_5	=	0x00dd
                    00DE    424 _P5_6	=	0x00de
                    00DF    425 _P5_7	=	0x00df
                            426 ;--------------------------------------------------------
                            427 ; overlayable register banks
                            428 ;--------------------------------------------------------
                            429 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     430 	.ds 8
                            431 ;--------------------------------------------------------
                            432 ; internal ram data
                            433 ;--------------------------------------------------------
                            434 	.area DSEG    (DATA)
                            435 ;--------------------------------------------------------
                            436 ; overlayable items in internal ram 
                            437 ;--------------------------------------------------------
                            438 	.area OSEG    (OVR,DATA)
                            439 ;--------------------------------------------------------
                            440 ; indirectly addressable internal ram data
                            441 ;--------------------------------------------------------
                            442 	.area ISEG    (DATA)
   0011                     443 _SD_GetWord_R2_1_1:
   0011                     444 	.ds 2
                            445 ;--------------------------------------------------------
                            446 ; bit data
                            447 ;--------------------------------------------------------
                            448 	.area BSEG    (BIT)
                            449 ;--------------------------------------------------------
                            450 ; paged external ram data
                            451 ;--------------------------------------------------------
                            452 	.area PSEG    (PAG,XDATA)
                            453 ;--------------------------------------------------------
                            454 ; external ram data
                            455 ;--------------------------------------------------------
                            456 	.area XSEG    (XDATA)
                    F000    457 _lcdinstwrptr	=	0xf000
                    F100    458 _lcdinstrdptr	=	0xf100
                    F200    459 _lcddatawrptr	=	0xf200
                    F300    460 _lcddatardptr	=	0xf300
   0007                     461 _Stat::
   0007                     462 	.ds 1
                    1000    463 _CardType	=	0x1000
                    2000    464 _SDCard	=	0x2000
                    3000    465 _xbuffer	=	0x3000
                            466 ;--------------------------------------------------------
                            467 ; external initialized ram data
                            468 ;--------------------------------------------------------
                            469 	.area XISEG   (XDATA)
                            470 	.area HOME    (CODE)
                            471 	.area GSINIT0 (CODE)
                            472 	.area GSINIT1 (CODE)
                            473 	.area GSINIT2 (CODE)
                            474 	.area GSINIT3 (CODE)
                            475 	.area GSINIT4 (CODE)
                            476 	.area GSINIT5 (CODE)
                            477 	.area GSINIT  (CODE)
                            478 	.area GSFINAL (CODE)
                            479 	.area CSEG    (CODE)
                            480 ;--------------------------------------------------------
                            481 ; global & static initialisations
                            482 ;--------------------------------------------------------
                            483 	.area HOME    (CODE)
                            484 	.area GSINIT  (CODE)
                            485 	.area GSFINAL (CODE)
                            486 	.area GSINIT  (CODE)
                            487 ;--------------------------------------------------------
                            488 ; Home
                            489 ;--------------------------------------------------------
                            490 	.area HOME    (CODE)
                            491 	.area CSEG    (CODE)
                            492 ;--------------------------------------------------------
                            493 ; code
                            494 ;--------------------------------------------------------
                            495 	.area CSEG    (CODE)
                            496 ;------------------------------------------------------------
                            497 ;Allocation info for local variables in function 'SD_PrintTXT'
                            498 ;------------------------------------------------------------
                            499 ;SectorNumber              Allocated to registers r2 r3 r4 r5 
                            500 ;c                         Allocated to registers r2 
                            501 ;i                         Allocated to registers r3 
                            502 ;count                     Allocated to registers r4 r5 
                            503 ;------------------------------------------------------------
                            504 ;	FatDrivers/sd.c:30: BYTE SD_PrintTXT( ULONG SectorNumber)
                            505 ;	-----------------------------------------
                            506 ;	 function SD_PrintTXT
                            507 ;	-----------------------------------------
   0F35                     508 _SD_PrintTXT:
                    0002    509 	ar2 = 0x02
                    0003    510 	ar3 = 0x03
                    0004    511 	ar4 = 0x04
                    0005    512 	ar5 = 0x05
                    0006    513 	ar6 = 0x06
                    0007    514 	ar7 = 0x07
                    0000    515 	ar0 = 0x00
                    0001    516 	ar1 = 0x01
                            517 ;     genReceive
   0F35 AA 82               518 	mov	r2,dpl
   0F37 AB 83               519 	mov	r3,dph
   0F39 AC F0               520 	mov	r4,b
   0F3B FD                  521 	mov	r5,a
                            522 ;	FatDrivers/sd.c:35: SD_Command( CMD_READ_SINGLE_BLOCK, SectorNumber<<9);
                            523 ;	genLeftShift
                            524 ;	genLeftShiftLiteral
                            525 ;	genlshFour
   0F3C EA                  526 	mov	a,r2
                            527 ;	Peephole 254	optimized left shift
   0F3D 2A                  528 	add	a,r2
   0F3E CB                  529 	xch	a,r3
   0F3F 33                  530 	rlc	a
   0F40 CC                  531 	xch	a,r4
   0F41 33                  532 	rlc	a
   0F42 CD                  533 	xch	a,r5
   0F43 7A 00               534 	mov	r2,#0x00
                            535 ;	genIpush
   0F45 C0 02               536 	push	ar2
   0F47 C0 03               537 	push	ar3
   0F49 C0 04               538 	push	ar4
   0F4B C0 05               539 	push	ar5
                            540 ;	genCall
   0F4D 75 82 11            541 	mov	dpl,#0x11
   0F50 12 13 48            542 	lcall	_SD_Command
   0F53 E5 81               543 	mov	a,sp
   0F55 24 FC               544 	add	a,#0xfc
   0F57 F5 81               545 	mov	sp,a
                            546 ;	FatDrivers/sd.c:36: c = SD_GetByte();
                            547 ;	genCall
   0F59 12 13 CD            548 	lcall	_SD_GetByte
   0F5C AA 82               549 	mov	r2,dpl
                            550 ;	genAssign
                            551 ;	FatDrivers/sd.c:37: i = SD_GetByte();
                            552 ;	genCall
   0F5E C0 02               553 	push	ar2
   0F60 12 13 CD            554 	lcall	_SD_GetByte
   0F63 AB 82               555 	mov	r3,dpl
   0F65 D0 02               556 	pop	ar2
                            557 ;	genAssign
                            558 ;	FatDrivers/sd.c:41: while( (i == 0xff) && --count)
                            559 ;	genAssign
   0F67 7C FF               560 	mov	r4,#0xFF
   0F69 7D FF               561 	mov	r5,#0xFF
   0F6B                     562 00102$:
                            563 ;	genCmpEq
                            564 ;	gencjneshort
                            565 ;	Peephole 112.b	changed ljmp to sjmp
                            566 ;	Peephole 198.b	optimized misc jump sequence
   0F6B BB FF 1E            567 	cjne	r3,#0xFF,00104$
                            568 ;	Peephole 200.b	removed redundant sjmp
                            569 ;	Peephole 300	removed redundant label 00124$
                            570 ;	Peephole 300	removed redundant label 00125$
                            571 ;	genMinus
                            572 ;	genMinusDec
   0F6E 1C                  573 	dec	r4
   0F6F BC FF 01            574 	cjne	r4,#0xff,00126$
   0F72 1D                  575 	dec	r5
   0F73                     576 00126$:
                            577 ;	genIfx
   0F73 EC                  578 	mov	a,r4
   0F74 4D                  579 	orl	a,r5
                            580 ;	genIfxJump
                            581 ;	Peephole 108.c	removed ljmp by inverse jump logic
   0F75 60 15               582 	jz	00104$
                            583 ;	Peephole 300	removed redundant label 00127$
                            584 ;	FatDrivers/sd.c:42: i = SD_GetByte();
                            585 ;	genCall
   0F77 C0 02               586 	push	ar2
   0F79 C0 04               587 	push	ar4
   0F7B C0 05               588 	push	ar5
   0F7D 12 13 CD            589 	lcall	_SD_GetByte
   0F80 AE 82               590 	mov	r6,dpl
   0F82 D0 05               591 	pop	ar5
   0F84 D0 04               592 	pop	ar4
   0F86 D0 02               593 	pop	ar2
                            594 ;	genAssign
   0F88 8E 03               595 	mov	ar3,r6
                            596 ;	Peephole 112.b	changed ljmp to sjmp
   0F8A 80 DF               597 	sjmp	00102$
   0F8C                     598 00104$:
                            599 ;	FatDrivers/sd.c:45: if(c || i != 0xFE)
                            600 ;	genIfx
   0F8C EA                  601 	mov	a,r2
                            602 ;	genIfxJump
                            603 ;	Peephole 108.b	removed ljmp by inverse jump logic
   0F8D 70 05               604 	jnz	00105$
                            605 ;	Peephole 300	removed redundant label 00128$
                            606 ;	genCmpEq
                            607 ;	gencjneshort
   0F8F BB FE 02            608 	cjne	r3,#0xFE,00129$
                            609 ;	Peephole 112.b	changed ljmp to sjmp
   0F92 80 04               610 	sjmp	00120$
   0F94                     611 00129$:
   0F94                     612 00105$:
                            613 ;	FatDrivers/sd.c:46: return( 1 );
                            614 ;	genRet
   0F94 75 82 01            615 	mov	dpl,#0x01
                            616 ;	FatDrivers/sd.c:49: for( count=1; count<=SD_DATA_SIZE; count++)
                            617 ;	Peephole 112.b	changed ljmp to sjmp
                            618 ;	Peephole 251.b	replaced sjmp to ret with ret
   0F97 22                  619 	ret
   0F98                     620 00120$:
                            621 ;	genAssign
   0F98 7B 00               622 	mov	r3,#0x00
   0F9A 7C 02               623 	mov	r4,#0x02
   0F9C                     624 00112$:
                            625 ;	FatDrivers/sd.c:51: c= SPI_Byte(0xFF);
                            626 ;	genCall
   0F9C 75 82 FF            627 	mov	dpl,#0xFF
   0F9F C0 03               628 	push	ar3
   0FA1 C0 04               629 	push	ar4
   0FA3 12 03 AD            630 	lcall	_SPI_Byte
   0FA6 AD 82               631 	mov	r5,dpl
   0FA8 D0 04               632 	pop	ar4
   0FAA D0 03               633 	pop	ar3
                            634 ;	genAssign
   0FAC 8D 02               635 	mov	ar2,r5
                            636 ;	FatDrivers/sd.c:52: if(c!=0) putchar(c);
                            637 ;	genCmpEq
                            638 ;	gencjneshort
   0FAE BA 00 02            639 	cjne	r2,#0x00,00130$
                            640 ;	Peephole 112.b	changed ljmp to sjmp
   0FB1 80 0D               641 	sjmp	00109$
   0FB3                     642 00130$:
                            643 ;	genCall
   0FB3 8A 82               644 	mov	dpl,r2
   0FB5 C0 03               645 	push	ar3
   0FB7 C0 04               646 	push	ar4
   0FB9 12 08 BA            647 	lcall	_putchar
   0FBC D0 04               648 	pop	ar4
   0FBE D0 03               649 	pop	ar3
   0FC0                     650 00109$:
                            651 ;	genMinus
                            652 ;	genMinusDec
   0FC0 1B                  653 	dec	r3
   0FC1 BB FF 01            654 	cjne	r3,#0xff,00131$
   0FC4 1C                  655 	dec	r4
   0FC5                     656 00131$:
                            657 ;	FatDrivers/sd.c:49: for( count=1; count<=SD_DATA_SIZE; count++)
                            658 ;	genIfx
   0FC5 EB                  659 	mov	a,r3
   0FC6 4C                  660 	orl	a,r4
                            661 ;	genIfxJump
                            662 ;	Peephole 108.b	removed ljmp by inverse jump logic
   0FC7 70 D3               663 	jnz	00112$
                            664 ;	Peephole 300	removed redundant label 00132$
                            665 ;	FatDrivers/sd.c:56: SPI_Byte(0xFF);
                            666 ;	genCall
   0FC9 75 82 FF            667 	mov	dpl,#0xFF
   0FCC 12 03 AD            668 	lcall	_SPI_Byte
                            669 ;	FatDrivers/sd.c:57: SPI_Byte(0xFF);
                            670 ;	genCall
   0FCF 75 82 FF            671 	mov	dpl,#0xFF
   0FD2 12 03 AD            672 	lcall	_SPI_Byte
                            673 ;	FatDrivers/sd.c:60: Disable_SD_Card();
                            674 ;	genAssign
   0FD5 D2 91               675 	setb	_P1_1
                            676 ;	FatDrivers/sd.c:62: return( 0 );
                            677 ;	genRet
   0FD7 75 82 00            678 	mov	dpl,#0x00
                            679 ;	Peephole 300	removed redundant label 00113$
   0FDA 22                  680 	ret
                            681 ;------------------------------------------------------------
                            682 ;Allocation info for local variables in function 'SD_ReadMP3'
                            683 ;------------------------------------------------------------
                            684 ;mp3address                Allocated to registers r2 r3 r4 r5 
                            685 ;c                         Allocated to registers r2 
                            686 ;i                         Allocated to registers r3 
                            687 ;x                         Allocated to registers r4 
                            688 ;count                     Allocated to registers r2 r3 
                            689 ;------------------------------------------------------------
                            690 ;	FatDrivers/sd.c:66: BYTE SD_ReadMP3(unsigned long mp3address)
                            691 ;	-----------------------------------------
                            692 ;	 function SD_ReadMP3
                            693 ;	-----------------------------------------
   0FDB                     694 _SD_ReadMP3:
                            695 ;     genReceive
   0FDB AA 82               696 	mov	r2,dpl
   0FDD AB 83               697 	mov	r3,dph
   0FDF AC F0               698 	mov	r4,b
   0FE1 FD                  699 	mov	r5,a
                            700 ;	FatDrivers/sd.c:72: SD_Command( CMD_READ_SINGLE_BLOCK, mp3address<<9);
                            701 ;	genLeftShift
                            702 ;	genLeftShiftLiteral
                            703 ;	genlshFour
   0FE2 EA                  704 	mov	a,r2
                            705 ;	Peephole 254	optimized left shift
   0FE3 2A                  706 	add	a,r2
   0FE4 CB                  707 	xch	a,r3
   0FE5 33                  708 	rlc	a
   0FE6 CC                  709 	xch	a,r4
   0FE7 33                  710 	rlc	a
   0FE8 CD                  711 	xch	a,r5
   0FE9 7A 00               712 	mov	r2,#0x00
                            713 ;	genIpush
   0FEB C0 02               714 	push	ar2
   0FED C0 03               715 	push	ar3
   0FEF C0 04               716 	push	ar4
   0FF1 C0 05               717 	push	ar5
                            718 ;	genCall
   0FF3 75 82 11            719 	mov	dpl,#0x11
   0FF6 12 13 48            720 	lcall	_SD_Command
   0FF9 E5 81               721 	mov	a,sp
   0FFB 24 FC               722 	add	a,#0xfc
   0FFD F5 81               723 	mov	sp,a
                            724 ;	FatDrivers/sd.c:73: c = SD_GetByte();
                            725 ;	genCall
   0FFF 12 13 CD            726 	lcall	_SD_GetByte
   1002 AA 82               727 	mov	r2,dpl
                            728 ;	genAssign
                            729 ;	FatDrivers/sd.c:74: i = SD_GetByte();
                            730 ;	genCall
   1004 C0 02               731 	push	ar2
   1006 12 13 CD            732 	lcall	_SD_GetByte
   1009 AB 82               733 	mov	r3,dpl
   100B D0 02               734 	pop	ar2
                            735 ;	genAssign
                            736 ;	FatDrivers/sd.c:78: while( (i == 0xff) && --count)
                            737 ;	genAssign
   100D 7C FF               738 	mov	r4,#0xFF
   100F 7D FF               739 	mov	r5,#0xFF
   1011                     740 00102$:
                            741 ;	genCmpEq
                            742 ;	gencjneshort
                            743 ;	Peephole 112.b	changed ljmp to sjmp
                            744 ;	Peephole 198.b	optimized misc jump sequence
   1011 BB FF 1E            745 	cjne	r3,#0xFF,00104$
                            746 ;	Peephole 200.b	removed redundant sjmp
                            747 ;	Peephole 300	removed redundant label 00474$
                            748 ;	Peephole 300	removed redundant label 00475$
                            749 ;	genMinus
                            750 ;	genMinusDec
   1014 1C                  751 	dec	r4
   1015 BC FF 01            752 	cjne	r4,#0xff,00476$
   1018 1D                  753 	dec	r5
   1019                     754 00476$:
                            755 ;	genIfx
   1019 EC                  756 	mov	a,r4
   101A 4D                  757 	orl	a,r5
                            758 ;	genIfxJump
                            759 ;	Peephole 108.c	removed ljmp by inverse jump logic
   101B 60 15               760 	jz	00104$
                            761 ;	Peephole 300	removed redundant label 00477$
                            762 ;	FatDrivers/sd.c:79: i = SD_GetByte();
                            763 ;	genCall
   101D C0 02               764 	push	ar2
   101F C0 04               765 	push	ar4
   1021 C0 05               766 	push	ar5
   1023 12 13 CD            767 	lcall	_SD_GetByte
   1026 AE 82               768 	mov	r6,dpl
   1028 D0 05               769 	pop	ar5
   102A D0 04               770 	pop	ar4
   102C D0 02               771 	pop	ar2
                            772 ;	genAssign
   102E 8E 03               773 	mov	ar3,r6
                            774 ;	Peephole 112.b	changed ljmp to sjmp
   1030 80 DF               775 	sjmp	00102$
   1032                     776 00104$:
                            777 ;	FatDrivers/sd.c:82: if(c || i != 0xFE)
                            778 ;	genIfx
   1032 EA                  779 	mov	a,r2
                            780 ;	genIfxJump
                            781 ;	Peephole 108.b	removed ljmp by inverse jump logic
   1033 70 05               782 	jnz	00105$
                            783 ;	Peephole 300	removed redundant label 00478$
                            784 ;	genCmpEq
                            785 ;	gencjneshort
   1035 BB FE 02            786 	cjne	r3,#0xFE,00479$
                            787 ;	Peephole 112.b	changed ljmp to sjmp
   1038 80 04               788 	sjmp	00106$
   103A                     789 00479$:
   103A                     790 00105$:
                            791 ;	FatDrivers/sd.c:83: return( 1 );
                            792 ;	genRet
   103A 75 82 01            793 	mov	dpl,#0x01
                            794 ;	Peephole 251.a	replaced ljmp to ret with ret
   103D 22                  795 	ret
   103E                     796 00106$:
                            797 ;	FatDrivers/sd.c:86: STA013_CS_ENABLE=1;
                            798 ;	genAssign
   103E D2 93               799 	setb	_P1_3
                            800 ;	FatDrivers/sd.c:89: for( count=1; count<=SD_DATA_SIZE; count=count+x)
                            801 ;	genAssign
   1040 7A 01               802 	mov	r2,#0x01
   1042 7B 00               803 	mov	r3,#0x00
   1044                     804 00321$:
                            805 ;	genCmpGt
                            806 ;	genCmp
   1044 C3                  807 	clr	c
                            808 ;	Peephole 181	changed mov to clr
   1045 E4                  809 	clr	a
   1046 9A                  810 	subb	a,r2
   1047 74 02               811 	mov	a,#0x02
   1049 9B                  812 	subb	a,r3
                            813 ;	genIfxJump
   104A 50 03               814 	jnc	00480$
   104C 02 13 34            815 	ljmp	00324$
   104F                     816 00480$:
                            817 ;	FatDrivers/sd.c:91: x=0;
                            818 ;	genAssign
   104F 7C 00               819 	mov	r4,#0x00
                            820 ;	FatDrivers/sd.c:92: if(!(STA013_DEMAND_PIN))        // CHECK IF DEMAND PIN LOW
                            821 ;	genIfx
                            822 ;	genIfxJump
   1051 30 94 03            823 	jnb	_P1_4,00481$
   1054 02 12 5C            824 	ljmp	00319$
   1057                     825 00481$:
                            826 ;	FatDrivers/sd.c:94: SPIPutChar(0xFF);SPIWait();SPIPutChar(0xFF);SPIWait();SPIPutChar(0xFF);SPIWait();SPIPutChar(0xFF);SPIWait();
                            827 ;	genAssign
   1057 75 C5 FF            828 	mov	_SPDAT,#0xFF
   105A                     829 00108$:
                            830 ;	genAnd
   105A E5 C4               831 	mov	a,_SPSTA
                            832 ;	genIfxJump
                            833 ;	Peephole 108.d	removed ljmp by inverse jump logic
   105C 30 E7 FB            834 	jnb	acc.7,00108$
                            835 ;	Peephole 300	removed redundant label 00482$
                            836 ;	genAssign
   105F 75 C5 FF            837 	mov	_SPDAT,#0xFF
   1062                     838 00111$:
                            839 ;	genAnd
   1062 E5 C4               840 	mov	a,_SPSTA
                            841 ;	genIfxJump
                            842 ;	Peephole 108.d	removed ljmp by inverse jump logic
   1064 30 E7 FB            843 	jnb	acc.7,00111$
                            844 ;	Peephole 300	removed redundant label 00483$
                            845 ;	genAssign
   1067 75 C5 FF            846 	mov	_SPDAT,#0xFF
   106A                     847 00114$:
                            848 ;	genAnd
   106A E5 C4               849 	mov	a,_SPSTA
                            850 ;	genIfxJump
                            851 ;	Peephole 108.d	removed ljmp by inverse jump logic
   106C 30 E7 FB            852 	jnb	acc.7,00114$
                            853 ;	Peephole 300	removed redundant label 00484$
                            854 ;	genAssign
   106F 75 C5 FF            855 	mov	_SPDAT,#0xFF
   1072                     856 00117$:
                            857 ;	genAnd
   1072 E5 C4               858 	mov	a,_SPSTA
                            859 ;	genIfxJump
                            860 ;	Peephole 108.d	removed ljmp by inverse jump logic
   1074 30 E7 FB            861 	jnb	acc.7,00117$
                            862 ;	Peephole 300	removed redundant label 00485$
                            863 ;	FatDrivers/sd.c:95: SPIPutChar(0xFF);SPIWait();SPIPutChar(0xFF);SPIWait();SPIPutChar(0xFF);SPIWait();SPIPutChar(0xFF);SPIWait();
                            864 ;	genAssign
   1077 75 C5 FF            865 	mov	_SPDAT,#0xFF
   107A                     866 00120$:
                            867 ;	genAnd
   107A E5 C4               868 	mov	a,_SPSTA
                            869 ;	genIfxJump
                            870 ;	Peephole 108.d	removed ljmp by inverse jump logic
   107C 30 E7 FB            871 	jnb	acc.7,00120$
                            872 ;	Peephole 300	removed redundant label 00486$
                            873 ;	genAssign
   107F 75 C5 FF            874 	mov	_SPDAT,#0xFF
   1082                     875 00123$:
                            876 ;	genAnd
   1082 E5 C4               877 	mov	a,_SPSTA
                            878 ;	genIfxJump
                            879 ;	Peephole 108.d	removed ljmp by inverse jump logic
   1084 30 E7 FB            880 	jnb	acc.7,00123$
                            881 ;	Peephole 300	removed redundant label 00487$
                            882 ;	genAssign
   1087 75 C5 FF            883 	mov	_SPDAT,#0xFF
   108A                     884 00126$:
                            885 ;	genAnd
   108A E5 C4               886 	mov	a,_SPSTA
                            887 ;	genIfxJump
                            888 ;	Peephole 108.d	removed ljmp by inverse jump logic
   108C 30 E7 FB            889 	jnb	acc.7,00126$
                            890 ;	Peephole 300	removed redundant label 00488$
                            891 ;	genAssign
   108F 75 C5 FF            892 	mov	_SPDAT,#0xFF
   1092                     893 00129$:
                            894 ;	genAnd
   1092 E5 C4               895 	mov	a,_SPSTA
                            896 ;	genIfxJump
                            897 ;	Peephole 108.d	removed ljmp by inverse jump logic
   1094 30 E7 FB            898 	jnb	acc.7,00129$
                            899 ;	Peephole 300	removed redundant label 00489$
                            900 ;	FatDrivers/sd.c:96: SPIPutChar(0xFF);SPIWait();SPIPutChar(0xFF);SPIWait();//10
                            901 ;	genAssign
   1097 75 C5 FF            902 	mov	_SPDAT,#0xFF
   109A                     903 00132$:
                            904 ;	genAnd
   109A E5 C4               905 	mov	a,_SPSTA
                            906 ;	genIfxJump
                            907 ;	Peephole 108.d	removed ljmp by inverse jump logic
   109C 30 E7 FB            908 	jnb	acc.7,00132$
                            909 ;	Peephole 300	removed redundant label 00490$
                            910 ;	genAssign
   109F 75 C5 FF            911 	mov	_SPDAT,#0xFF
   10A2                     912 00135$:
                            913 ;	genAnd
   10A2 E5 C4               914 	mov	a,_SPSTA
                            915 ;	genIfxJump
                            916 ;	Peephole 108.d	removed ljmp by inverse jump logic
   10A4 30 E7 FB            917 	jnb	acc.7,00135$
                            918 ;	Peephole 300	removed redundant label 00491$
                            919 ;	FatDrivers/sd.c:97: SPIPutChar(0xFF);SPIWait();SPIPutChar(0xFF);SPIWait();SPIPutChar(0xFF);SPIWait();SPIPutChar(0xFF);SPIWait();
                            920 ;	genAssign
   10A7 75 C5 FF            921 	mov	_SPDAT,#0xFF
   10AA                     922 00138$:
                            923 ;	genAnd
   10AA E5 C4               924 	mov	a,_SPSTA
                            925 ;	genIfxJump
                            926 ;	Peephole 108.d	removed ljmp by inverse jump logic
   10AC 30 E7 FB            927 	jnb	acc.7,00138$
                            928 ;	Peephole 300	removed redundant label 00492$
                            929 ;	genAssign
   10AF 75 C5 FF            930 	mov	_SPDAT,#0xFF
   10B2                     931 00141$:
                            932 ;	genAnd
   10B2 E5 C4               933 	mov	a,_SPSTA
                            934 ;	genIfxJump
                            935 ;	Peephole 108.d	removed ljmp by inverse jump logic
   10B4 30 E7 FB            936 	jnb	acc.7,00141$
                            937 ;	Peephole 300	removed redundant label 00493$
                            938 ;	genAssign
   10B7 75 C5 FF            939 	mov	_SPDAT,#0xFF
   10BA                     940 00144$:
                            941 ;	genAnd
   10BA E5 C4               942 	mov	a,_SPSTA
                            943 ;	genIfxJump
                            944 ;	Peephole 108.d	removed ljmp by inverse jump logic
   10BC 30 E7 FB            945 	jnb	acc.7,00144$
                            946 ;	Peephole 300	removed redundant label 00494$
                            947 ;	genAssign
   10BF 75 C5 FF            948 	mov	_SPDAT,#0xFF
   10C2                     949 00147$:
                            950 ;	genAnd
   10C2 E5 C4               951 	mov	a,_SPSTA
                            952 ;	genIfxJump
                            953 ;	Peephole 108.d	removed ljmp by inverse jump logic
   10C4 30 E7 FB            954 	jnb	acc.7,00147$
                            955 ;	Peephole 300	removed redundant label 00495$
                            956 ;	FatDrivers/sd.c:98: SPIPutChar(0xFF);SPIWait();SPIPutChar(0xFF);SPIWait();SPIPutChar(0xFF);SPIWait();SPIPutChar(0xFF);SPIWait();
                            957 ;	genAssign
   10C7 75 C5 FF            958 	mov	_SPDAT,#0xFF
   10CA                     959 00150$:
                            960 ;	genAnd
   10CA E5 C4               961 	mov	a,_SPSTA
                            962 ;	genIfxJump
                            963 ;	Peephole 108.d	removed ljmp by inverse jump logic
   10CC 30 E7 FB            964 	jnb	acc.7,00150$
                            965 ;	Peephole 300	removed redundant label 00496$
                            966 ;	genAssign
   10CF 75 C5 FF            967 	mov	_SPDAT,#0xFF
   10D2                     968 00153$:
                            969 ;	genAnd
   10D2 E5 C4               970 	mov	a,_SPSTA
                            971 ;	genIfxJump
                            972 ;	Peephole 108.d	removed ljmp by inverse jump logic
   10D4 30 E7 FB            973 	jnb	acc.7,00153$
                            974 ;	Peephole 300	removed redundant label 00497$
                            975 ;	genAssign
   10D7 75 C5 FF            976 	mov	_SPDAT,#0xFF
   10DA                     977 00156$:
                            978 ;	genAnd
   10DA E5 C4               979 	mov	a,_SPSTA
                            980 ;	genIfxJump
                            981 ;	Peephole 108.d	removed ljmp by inverse jump logic
   10DC 30 E7 FB            982 	jnb	acc.7,00156$
                            983 ;	Peephole 300	removed redundant label 00498$
                            984 ;	genAssign
   10DF 75 C5 FF            985 	mov	_SPDAT,#0xFF
   10E2                     986 00159$:
                            987 ;	genAnd
   10E2 E5 C4               988 	mov	a,_SPSTA
                            989 ;	genIfxJump
                            990 ;	Peephole 108.d	removed ljmp by inverse jump logic
   10E4 30 E7 FB            991 	jnb	acc.7,00159$
                            992 ;	Peephole 300	removed redundant label 00499$
                            993 ;	FatDrivers/sd.c:99: SPIPutChar(0xFF);SPIWait();SPIPutChar(0xFF);SPIWait();//20
                            994 ;	genAssign
   10E7 75 C5 FF            995 	mov	_SPDAT,#0xFF
   10EA                     996 00162$:
                            997 ;	genAnd
   10EA E5 C4               998 	mov	a,_SPSTA
                            999 ;	genIfxJump
                           1000 ;	Peephole 108.d	removed ljmp by inverse jump logic
   10EC 30 E7 FB           1001 	jnb	acc.7,00162$
                           1002 ;	Peephole 300	removed redundant label 00500$
                           1003 ;	genAssign
   10EF 75 C5 FF           1004 	mov	_SPDAT,#0xFF
   10F2                    1005 00165$:
                           1006 ;	genAnd
   10F2 E5 C4              1007 	mov	a,_SPSTA
                           1008 ;	genIfxJump
                           1009 ;	Peephole 108.d	removed ljmp by inverse jump logic
   10F4 30 E7 FB           1010 	jnb	acc.7,00165$
                           1011 ;	Peephole 300	removed redundant label 00501$
                           1012 ;	FatDrivers/sd.c:100: SPIPutChar(0xFF);SPIWait();SPIPutChar(0xFF);SPIWait();SPIPutChar(0xFF);SPIWait();SPIPutChar(0xFF);SPIWait();
                           1013 ;	genAssign
   10F7 75 C5 FF           1014 	mov	_SPDAT,#0xFF
   10FA                    1015 00168$:
                           1016 ;	genAnd
   10FA E5 C4              1017 	mov	a,_SPSTA
                           1018 ;	genIfxJump
                           1019 ;	Peephole 108.d	removed ljmp by inverse jump logic
   10FC 30 E7 FB           1020 	jnb	acc.7,00168$
                           1021 ;	Peephole 300	removed redundant label 00502$
                           1022 ;	genAssign
   10FF 75 C5 FF           1023 	mov	_SPDAT,#0xFF
   1102                    1024 00171$:
                           1025 ;	genAnd
   1102 E5 C4              1026 	mov	a,_SPSTA
                           1027 ;	genIfxJump
                           1028 ;	Peephole 108.d	removed ljmp by inverse jump logic
   1104 30 E7 FB           1029 	jnb	acc.7,00171$
                           1030 ;	Peephole 300	removed redundant label 00503$
                           1031 ;	genAssign
   1107 75 C5 FF           1032 	mov	_SPDAT,#0xFF
   110A                    1033 00174$:
                           1034 ;	genAnd
   110A E5 C4              1035 	mov	a,_SPSTA
                           1036 ;	genIfxJump
                           1037 ;	Peephole 108.d	removed ljmp by inverse jump logic
   110C 30 E7 FB           1038 	jnb	acc.7,00174$
                           1039 ;	Peephole 300	removed redundant label 00504$
                           1040 ;	genAssign
   110F 75 C5 FF           1041 	mov	_SPDAT,#0xFF
   1112                    1042 00177$:
                           1043 ;	genAnd
   1112 E5 C4              1044 	mov	a,_SPSTA
                           1045 ;	genIfxJump
                           1046 ;	Peephole 108.d	removed ljmp by inverse jump logic
   1114 30 E7 FB           1047 	jnb	acc.7,00177$
                           1048 ;	Peephole 300	removed redundant label 00505$
                           1049 ;	FatDrivers/sd.c:101: SPIPutChar(0xFF);SPIWait();SPIPutChar(0xFF);SPIWait();SPIPutChar(0xFF);SPIWait();SPIPutChar(0xFF);SPIWait();
                           1050 ;	genAssign
   1117 75 C5 FF           1051 	mov	_SPDAT,#0xFF
   111A                    1052 00180$:
                           1053 ;	genAnd
   111A E5 C4              1054 	mov	a,_SPSTA
                           1055 ;	genIfxJump
                           1056 ;	Peephole 108.d	removed ljmp by inverse jump logic
   111C 30 E7 FB           1057 	jnb	acc.7,00180$
                           1058 ;	Peephole 300	removed redundant label 00506$
                           1059 ;	genAssign
   111F 75 C5 FF           1060 	mov	_SPDAT,#0xFF
   1122                    1061 00183$:
                           1062 ;	genAnd
   1122 E5 C4              1063 	mov	a,_SPSTA
                           1064 ;	genIfxJump
                           1065 ;	Peephole 108.d	removed ljmp by inverse jump logic
   1124 30 E7 FB           1066 	jnb	acc.7,00183$
                           1067 ;	Peephole 300	removed redundant label 00507$
                           1068 ;	genAssign
   1127 75 C5 FF           1069 	mov	_SPDAT,#0xFF
   112A                    1070 00186$:
                           1071 ;	genAnd
   112A E5 C4              1072 	mov	a,_SPSTA
                           1073 ;	genIfxJump
                           1074 ;	Peephole 108.d	removed ljmp by inverse jump logic
   112C 30 E7 FB           1075 	jnb	acc.7,00186$
                           1076 ;	Peephole 300	removed redundant label 00508$
                           1077 ;	genAssign
   112F 75 C5 FF           1078 	mov	_SPDAT,#0xFF
   1132                    1079 00189$:
                           1080 ;	genAnd
   1132 E5 C4              1081 	mov	a,_SPSTA
                           1082 ;	genIfxJump
                           1083 ;	Peephole 108.d	removed ljmp by inverse jump logic
   1134 30 E7 FB           1084 	jnb	acc.7,00189$
                           1085 ;	Peephole 300	removed redundant label 00509$
                           1086 ;	FatDrivers/sd.c:102: SPIPutChar(0xFF);SPIWait();SPIPutChar(0xFF);SPIWait();//30
                           1087 ;	genAssign
   1137 75 C5 FF           1088 	mov	_SPDAT,#0xFF
   113A                    1089 00192$:
                           1090 ;	genAnd
   113A E5 C4              1091 	mov	a,_SPSTA
                           1092 ;	genIfxJump
                           1093 ;	Peephole 108.d	removed ljmp by inverse jump logic
   113C 30 E7 FB           1094 	jnb	acc.7,00192$
                           1095 ;	Peephole 300	removed redundant label 00510$
                           1096 ;	genAssign
   113F 75 C5 FF           1097 	mov	_SPDAT,#0xFF
   1142                    1098 00195$:
                           1099 ;	genAnd
   1142 E5 C4              1100 	mov	a,_SPSTA
                           1101 ;	genIfxJump
                           1102 ;	Peephole 108.d	removed ljmp by inverse jump logic
   1144 30 E7 FB           1103 	jnb	acc.7,00195$
                           1104 ;	Peephole 300	removed redundant label 00511$
                           1105 ;	FatDrivers/sd.c:103: SPIPutChar(0xFF);SPIWait();SPIPutChar(0xFF);SPIWait();SPIPutChar(0xFF);SPIWait();SPIPutChar(0xFF);SPIWait();
                           1106 ;	genAssign
   1147 75 C5 FF           1107 	mov	_SPDAT,#0xFF
   114A                    1108 00198$:
                           1109 ;	genAnd
   114A E5 C4              1110 	mov	a,_SPSTA
                           1111 ;	genIfxJump
                           1112 ;	Peephole 108.d	removed ljmp by inverse jump logic
   114C 30 E7 FB           1113 	jnb	acc.7,00198$
                           1114 ;	Peephole 300	removed redundant label 00512$
                           1115 ;	genAssign
   114F 75 C5 FF           1116 	mov	_SPDAT,#0xFF
   1152                    1117 00201$:
                           1118 ;	genAnd
   1152 E5 C4              1119 	mov	a,_SPSTA
                           1120 ;	genIfxJump
                           1121 ;	Peephole 108.d	removed ljmp by inverse jump logic
   1154 30 E7 FB           1122 	jnb	acc.7,00201$
                           1123 ;	Peephole 300	removed redundant label 00513$
                           1124 ;	genAssign
   1157 75 C5 FF           1125 	mov	_SPDAT,#0xFF
   115A                    1126 00204$:
                           1127 ;	genAnd
   115A E5 C4              1128 	mov	a,_SPSTA
                           1129 ;	genIfxJump
                           1130 ;	Peephole 108.d	removed ljmp by inverse jump logic
   115C 30 E7 FB           1131 	jnb	acc.7,00204$
                           1132 ;	Peephole 300	removed redundant label 00514$
                           1133 ;	genAssign
   115F 75 C5 FF           1134 	mov	_SPDAT,#0xFF
   1162                    1135 00207$:
                           1136 ;	genAnd
   1162 E5 C4              1137 	mov	a,_SPSTA
                           1138 ;	genIfxJump
                           1139 ;	Peephole 108.d	removed ljmp by inverse jump logic
   1164 30 E7 FB           1140 	jnb	acc.7,00207$
                           1141 ;	Peephole 300	removed redundant label 00515$
                           1142 ;	FatDrivers/sd.c:104: SPIPutChar(0xFF);SPIWait();SPIPutChar(0xFF);SPIWait();SPIPutChar(0xFF);SPIWait();SPIPutChar(0xFF);SPIWait();
                           1143 ;	genAssign
   1167 75 C5 FF           1144 	mov	_SPDAT,#0xFF
   116A                    1145 00210$:
                           1146 ;	genAnd
   116A E5 C4              1147 	mov	a,_SPSTA
                           1148 ;	genIfxJump
                           1149 ;	Peephole 108.d	removed ljmp by inverse jump logic
   116C 30 E7 FB           1150 	jnb	acc.7,00210$
                           1151 ;	Peephole 300	removed redundant label 00516$
                           1152 ;	genAssign
   116F 75 C5 FF           1153 	mov	_SPDAT,#0xFF
   1172                    1154 00213$:
                           1155 ;	genAnd
   1172 E5 C4              1156 	mov	a,_SPSTA
                           1157 ;	genIfxJump
                           1158 ;	Peephole 108.d	removed ljmp by inverse jump logic
   1174 30 E7 FB           1159 	jnb	acc.7,00213$
                           1160 ;	Peephole 300	removed redundant label 00517$
                           1161 ;	genAssign
   1177 75 C5 FF           1162 	mov	_SPDAT,#0xFF
   117A                    1163 00216$:
                           1164 ;	genAnd
   117A E5 C4              1165 	mov	a,_SPSTA
                           1166 ;	genIfxJump
                           1167 ;	Peephole 108.d	removed ljmp by inverse jump logic
   117C 30 E7 FB           1168 	jnb	acc.7,00216$
                           1169 ;	Peephole 300	removed redundant label 00518$
                           1170 ;	genAssign
   117F 75 C5 FF           1171 	mov	_SPDAT,#0xFF
   1182                    1172 00219$:
                           1173 ;	genAnd
   1182 E5 C4              1174 	mov	a,_SPSTA
                           1175 ;	genIfxJump
                           1176 ;	Peephole 108.d	removed ljmp by inverse jump logic
   1184 30 E7 FB           1177 	jnb	acc.7,00219$
                           1178 ;	Peephole 300	removed redundant label 00519$
                           1179 ;	FatDrivers/sd.c:105: SPIPutChar(0xFF);SPIWait();SPIPutChar(0xFF);SPIWait();//40
                           1180 ;	genAssign
   1187 75 C5 FF           1181 	mov	_SPDAT,#0xFF
   118A                    1182 00222$:
                           1183 ;	genAnd
   118A E5 C4              1184 	mov	a,_SPSTA
                           1185 ;	genIfxJump
                           1186 ;	Peephole 108.d	removed ljmp by inverse jump logic
   118C 30 E7 FB           1187 	jnb	acc.7,00222$
                           1188 ;	Peephole 300	removed redundant label 00520$
                           1189 ;	genAssign
   118F 75 C5 FF           1190 	mov	_SPDAT,#0xFF
   1192                    1191 00225$:
                           1192 ;	genAnd
   1192 E5 C4              1193 	mov	a,_SPSTA
                           1194 ;	genIfxJump
                           1195 ;	Peephole 108.d	removed ljmp by inverse jump logic
   1194 30 E7 FB           1196 	jnb	acc.7,00225$
                           1197 ;	Peephole 300	removed redundant label 00521$
                           1198 ;	FatDrivers/sd.c:106: SPIPutChar(0xFF);SPIWait();SPIPutChar(0xFF);SPIWait();SPIPutChar(0xFF);SPIWait();SPIPutChar(0xFF);SPIWait();
                           1199 ;	genAssign
   1197 75 C5 FF           1200 	mov	_SPDAT,#0xFF
   119A                    1201 00228$:
                           1202 ;	genAnd
   119A E5 C4              1203 	mov	a,_SPSTA
                           1204 ;	genIfxJump
                           1205 ;	Peephole 108.d	removed ljmp by inverse jump logic
   119C 30 E7 FB           1206 	jnb	acc.7,00228$
                           1207 ;	Peephole 300	removed redundant label 00522$
                           1208 ;	genAssign
   119F 75 C5 FF           1209 	mov	_SPDAT,#0xFF
   11A2                    1210 00231$:
                           1211 ;	genAnd
   11A2 E5 C4              1212 	mov	a,_SPSTA
                           1213 ;	genIfxJump
                           1214 ;	Peephole 108.d	removed ljmp by inverse jump logic
   11A4 30 E7 FB           1215 	jnb	acc.7,00231$
                           1216 ;	Peephole 300	removed redundant label 00523$
                           1217 ;	genAssign
   11A7 75 C5 FF           1218 	mov	_SPDAT,#0xFF
   11AA                    1219 00234$:
                           1220 ;	genAnd
   11AA E5 C4              1221 	mov	a,_SPSTA
                           1222 ;	genIfxJump
                           1223 ;	Peephole 108.d	removed ljmp by inverse jump logic
   11AC 30 E7 FB           1224 	jnb	acc.7,00234$
                           1225 ;	Peephole 300	removed redundant label 00524$
                           1226 ;	genAssign
   11AF 75 C5 FF           1227 	mov	_SPDAT,#0xFF
   11B2                    1228 00237$:
                           1229 ;	genAnd
   11B2 E5 C4              1230 	mov	a,_SPSTA
                           1231 ;	genIfxJump
                           1232 ;	Peephole 108.d	removed ljmp by inverse jump logic
   11B4 30 E7 FB           1233 	jnb	acc.7,00237$
                           1234 ;	Peephole 300	removed redundant label 00525$
                           1235 ;	FatDrivers/sd.c:107: SPIPutChar(0xFF);SPIWait();SPIPutChar(0xFF);SPIWait();SPIPutChar(0xFF);SPIWait();SPIPutChar(0xFF);SPIWait();
                           1236 ;	genAssign
   11B7 75 C5 FF           1237 	mov	_SPDAT,#0xFF
   11BA                    1238 00240$:
                           1239 ;	genAnd
   11BA E5 C4              1240 	mov	a,_SPSTA
                           1241 ;	genIfxJump
                           1242 ;	Peephole 108.d	removed ljmp by inverse jump logic
   11BC 30 E7 FB           1243 	jnb	acc.7,00240$
                           1244 ;	Peephole 300	removed redundant label 00526$
                           1245 ;	genAssign
   11BF 75 C5 FF           1246 	mov	_SPDAT,#0xFF
   11C2                    1247 00243$:
                           1248 ;	genAnd
   11C2 E5 C4              1249 	mov	a,_SPSTA
                           1250 ;	genIfxJump
                           1251 ;	Peephole 108.d	removed ljmp by inverse jump logic
   11C4 30 E7 FB           1252 	jnb	acc.7,00243$
                           1253 ;	Peephole 300	removed redundant label 00527$
                           1254 ;	genAssign
   11C7 75 C5 FF           1255 	mov	_SPDAT,#0xFF
   11CA                    1256 00246$:
                           1257 ;	genAnd
   11CA E5 C4              1258 	mov	a,_SPSTA
                           1259 ;	genIfxJump
                           1260 ;	Peephole 108.d	removed ljmp by inverse jump logic
   11CC 30 E7 FB           1261 	jnb	acc.7,00246$
                           1262 ;	Peephole 300	removed redundant label 00528$
                           1263 ;	genAssign
   11CF 75 C5 FF           1264 	mov	_SPDAT,#0xFF
   11D2                    1265 00249$:
                           1266 ;	genAnd
   11D2 E5 C4              1267 	mov	a,_SPSTA
                           1268 ;	genIfxJump
                           1269 ;	Peephole 108.d	removed ljmp by inverse jump logic
   11D4 30 E7 FB           1270 	jnb	acc.7,00249$
                           1271 ;	Peephole 300	removed redundant label 00529$
                           1272 ;	FatDrivers/sd.c:108: SPIPutChar(0xFF);SPIWait();SPIPutChar(0xFF);SPIWait();//50
                           1273 ;	genAssign
   11D7 75 C5 FF           1274 	mov	_SPDAT,#0xFF
   11DA                    1275 00252$:
                           1276 ;	genAnd
   11DA E5 C4              1277 	mov	a,_SPSTA
                           1278 ;	genIfxJump
                           1279 ;	Peephole 108.d	removed ljmp by inverse jump logic
   11DC 30 E7 FB           1280 	jnb	acc.7,00252$
                           1281 ;	Peephole 300	removed redundant label 00530$
                           1282 ;	genAssign
   11DF 75 C5 FF           1283 	mov	_SPDAT,#0xFF
   11E2                    1284 00255$:
                           1285 ;	genAnd
   11E2 E5 C4              1286 	mov	a,_SPSTA
                           1287 ;	genIfxJump
                           1288 ;	Peephole 108.d	removed ljmp by inverse jump logic
   11E4 30 E7 FB           1289 	jnb	acc.7,00255$
                           1290 ;	Peephole 300	removed redundant label 00531$
                           1291 ;	FatDrivers/sd.c:109: SPIPutChar(0xFF);SPIWait();SPIPutChar(0xFF);SPIWait();SPIPutChar(0xFF);SPIWait();SPIPutChar(0xFF);SPIWait();
                           1292 ;	genAssign
   11E7 75 C5 FF           1293 	mov	_SPDAT,#0xFF
   11EA                    1294 00258$:
                           1295 ;	genAnd
   11EA E5 C4              1296 	mov	a,_SPSTA
                           1297 ;	genIfxJump
                           1298 ;	Peephole 108.d	removed ljmp by inverse jump logic
   11EC 30 E7 FB           1299 	jnb	acc.7,00258$
                           1300 ;	Peephole 300	removed redundant label 00532$
                           1301 ;	genAssign
   11EF 75 C5 FF           1302 	mov	_SPDAT,#0xFF
   11F2                    1303 00261$:
                           1304 ;	genAnd
   11F2 E5 C4              1305 	mov	a,_SPSTA
                           1306 ;	genIfxJump
                           1307 ;	Peephole 108.d	removed ljmp by inverse jump logic
   11F4 30 E7 FB           1308 	jnb	acc.7,00261$
                           1309 ;	Peephole 300	removed redundant label 00533$
                           1310 ;	genAssign
   11F7 75 C5 FF           1311 	mov	_SPDAT,#0xFF
   11FA                    1312 00264$:
                           1313 ;	genAnd
   11FA E5 C4              1314 	mov	a,_SPSTA
                           1315 ;	genIfxJump
                           1316 ;	Peephole 108.d	removed ljmp by inverse jump logic
   11FC 30 E7 FB           1317 	jnb	acc.7,00264$
                           1318 ;	Peephole 300	removed redundant label 00534$
                           1319 ;	genAssign
   11FF 75 C5 FF           1320 	mov	_SPDAT,#0xFF
   1202                    1321 00267$:
                           1322 ;	genAnd
   1202 E5 C4              1323 	mov	a,_SPSTA
                           1324 ;	genIfxJump
                           1325 ;	Peephole 108.d	removed ljmp by inverse jump logic
   1204 30 E7 FB           1326 	jnb	acc.7,00267$
                           1327 ;	Peephole 300	removed redundant label 00535$
                           1328 ;	FatDrivers/sd.c:110: SPIPutChar(0xFF);SPIWait();SPIPutChar(0xFF);SPIWait();SPIPutChar(0xFF);SPIWait();SPIPutChar(0xFF);SPIWait();
                           1329 ;	genAssign
   1207 75 C5 FF           1330 	mov	_SPDAT,#0xFF
   120A                    1331 00270$:
                           1332 ;	genAnd
   120A E5 C4              1333 	mov	a,_SPSTA
                           1334 ;	genIfxJump
                           1335 ;	Peephole 108.d	removed ljmp by inverse jump logic
   120C 30 E7 FB           1336 	jnb	acc.7,00270$
                           1337 ;	Peephole 300	removed redundant label 00536$
                           1338 ;	genAssign
   120F 75 C5 FF           1339 	mov	_SPDAT,#0xFF
   1212                    1340 00273$:
                           1341 ;	genAnd
   1212 E5 C4              1342 	mov	a,_SPSTA
                           1343 ;	genIfxJump
                           1344 ;	Peephole 108.d	removed ljmp by inverse jump logic
   1214 30 E7 FB           1345 	jnb	acc.7,00273$
                           1346 ;	Peephole 300	removed redundant label 00537$
                           1347 ;	genAssign
   1217 75 C5 FF           1348 	mov	_SPDAT,#0xFF
   121A                    1349 00276$:
                           1350 ;	genAnd
   121A E5 C4              1351 	mov	a,_SPSTA
                           1352 ;	genIfxJump
                           1353 ;	Peephole 108.d	removed ljmp by inverse jump logic
   121C 30 E7 FB           1354 	jnb	acc.7,00276$
                           1355 ;	Peephole 300	removed redundant label 00538$
                           1356 ;	genAssign
   121F 75 C5 FF           1357 	mov	_SPDAT,#0xFF
   1222                    1358 00279$:
                           1359 ;	genAnd
   1222 E5 C4              1360 	mov	a,_SPSTA
                           1361 ;	genIfxJump
                           1362 ;	Peephole 108.d	removed ljmp by inverse jump logic
   1224 30 E7 FB           1363 	jnb	acc.7,00279$
                           1364 ;	Peephole 300	removed redundant label 00539$
                           1365 ;	FatDrivers/sd.c:111: SPIPutChar(0xFF);SPIWait();SPIPutChar(0xFF);SPIWait();//60
                           1366 ;	genAssign
   1227 75 C5 FF           1367 	mov	_SPDAT,#0xFF
   122A                    1368 00282$:
                           1369 ;	genAnd
   122A E5 C4              1370 	mov	a,_SPSTA
                           1371 ;	genIfxJump
                           1372 ;	Peephole 108.d	removed ljmp by inverse jump logic
   122C 30 E7 FB           1373 	jnb	acc.7,00282$
                           1374 ;	Peephole 300	removed redundant label 00540$
                           1375 ;	genAssign
   122F 75 C5 FF           1376 	mov	_SPDAT,#0xFF
   1232                    1377 00285$:
                           1378 ;	genAnd
   1232 E5 C4              1379 	mov	a,_SPSTA
                           1380 ;	genIfxJump
                           1381 ;	Peephole 108.d	removed ljmp by inverse jump logic
   1234 30 E7 FB           1382 	jnb	acc.7,00285$
                           1383 ;	Peephole 300	removed redundant label 00541$
                           1384 ;	FatDrivers/sd.c:112: SPIPutChar(0xFF);SPIWait();SPIPutChar(0xFF);SPIWait();SPIPutChar(0xFF);SPIWait();SPIPutChar(0xFF);SPIWait();//64
                           1385 ;	genAssign
   1237 75 C5 FF           1386 	mov	_SPDAT,#0xFF
   123A                    1387 00288$:
                           1388 ;	genAnd
   123A E5 C4              1389 	mov	a,_SPSTA
                           1390 ;	genIfxJump
                           1391 ;	Peephole 108.d	removed ljmp by inverse jump logic
   123C 30 E7 FB           1392 	jnb	acc.7,00288$
                           1393 ;	Peephole 300	removed redundant label 00542$
                           1394 ;	genAssign
   123F 75 C5 FF           1395 	mov	_SPDAT,#0xFF
   1242                    1396 00291$:
                           1397 ;	genAnd
   1242 E5 C4              1398 	mov	a,_SPSTA
                           1399 ;	genIfxJump
                           1400 ;	Peephole 108.d	removed ljmp by inverse jump logic
   1244 30 E7 FB           1401 	jnb	acc.7,00291$
                           1402 ;	Peephole 300	removed redundant label 00543$
                           1403 ;	genAssign
   1247 75 C5 FF           1404 	mov	_SPDAT,#0xFF
   124A                    1405 00294$:
                           1406 ;	genAnd
   124A E5 C4              1407 	mov	a,_SPSTA
                           1408 ;	genIfxJump
                           1409 ;	Peephole 108.d	removed ljmp by inverse jump logic
   124C 30 E7 FB           1410 	jnb	acc.7,00294$
                           1411 ;	Peephole 300	removed redundant label 00544$
                           1412 ;	genAssign
   124F 75 C5 FF           1413 	mov	_SPDAT,#0xFF
   1252                    1414 00297$:
                           1415 ;	genAnd
   1252 E5 C4              1416 	mov	a,_SPSTA
                           1417 ;	genIfxJump
                           1418 ;	Peephole 108.d	removed ljmp by inverse jump logic
   1254 30 E7 FB           1419 	jnb	acc.7,00297$
                           1420 ;	Peephole 300	removed redundant label 00545$
                           1421 ;	FatDrivers/sd.c:113: x=64;
                           1422 ;	genAssign
   1257 7C 40              1423 	mov	r4,#0x40
   1259 02 13 29           1424 	ljmp	00323$
   125C                    1425 00319$:
                           1426 ;	FatDrivers/sd.c:117: if(RI)                     // Check if a key is pressed then process it
                           1427 ;	genIfx
                           1428 ;	genIfxJump
   125C 20 98 03           1429 	jb	_RI,00546$
   125F 02 13 29           1430 	ljmp	00323$
   1262                    1431 00546$:
                           1432 ;	FatDrivers/sd.c:118: {   switch (SBUF)
                           1433 ;	genAssign
   1262 AD 99              1434 	mov	r5,_SBUF
                           1435 ;	genCmpEq
                           1436 ;	gencjneshort
   1264 BD 2B 03           1437 	cjne	r5,#0x2B,00547$
   1267 02 13 27           1438 	ljmp	00315$
   126A                    1439 00547$:
                           1440 ;	genCmpEq
                           1441 ;	gencjneshort
   126A BD 2D 03           1442 	cjne	r5,#0x2D,00548$
   126D 02 13 27           1443 	ljmp	00315$
   1270                    1444 00548$:
                           1445 ;	genCmpEq
                           1446 ;	gencjneshort
   1270 BD 69 03           1447 	cjne	r5,#0x69,00549$
   1273 02 12 F3           1448 	ljmp	00313$
   1276                    1449 00549$:
                           1450 ;	genCmpEq
                           1451 ;	gencjneshort
   1276 BD 6D 02           1452 	cjne	r5,#0x6D,00550$
                           1453 ;	Peephole 112.b	changed ljmp to sjmp
   1279 80 12              1454 	sjmp	00302$
   127B                    1455 00550$:
                           1456 ;	genCmpEq
                           1457 ;	gencjneshort
   127B BD 70 02           1458 	cjne	r5,#0x70,00551$
                           1459 ;	Peephole 112.b	changed ljmp to sjmp
   127E 80 41              1460 	sjmp	00304$
   1280                    1461 00551$:
                           1462 ;	genCmpEq
                           1463 ;	gencjneshort
   1280 BD 71 02           1464 	cjne	r5,#0x71,00552$
                           1465 ;	Peephole 112.b	changed ljmp to sjmp
   1283 80 66              1466 	sjmp	00309$
   1285                    1467 00552$:
                           1468 ;	genCmpEq
                           1469 ;	gencjneshort
   1285 BD 75 02           1470 	cjne	r5,#0x75,00553$
                           1471 ;	Peephole 112.b	changed ljmp to sjmp
   1288 80 1E              1472 	sjmp	00303$
   128A                    1473 00553$:
   128A 02 13 27           1474 	ljmp	00315$
                           1475 ;	FatDrivers/sd.c:122: case 'm':   STA013WriteReg(STA_REG_MUTE,1);break; //mute
   128D                    1476 00302$:
                           1477 ;	genIpush
   128D C0 02              1478 	push	ar2
   128F C0 03              1479 	push	ar3
   1291 C0 04              1480 	push	ar4
   1293 74 01              1481 	mov	a,#0x01
   1295 C0 E0              1482 	push	acc
                           1483 ;	genCall
   1297 75 82 14           1484 	mov	dpl,#0x14
   129A 12 03 D9           1485 	lcall	_STA013WriteReg
   129D 15 81              1486 	dec	sp
   129F D0 04              1487 	pop	ar4
   12A1 D0 03              1488 	pop	ar3
   12A3 D0 02              1489 	pop	ar2
   12A5 02 13 27           1490 	ljmp	00315$
                           1491 ;	FatDrivers/sd.c:123: case 'u':   STA013WriteReg(STA_REG_MUTE,0);break; //unmute
   12A8                    1492 00303$:
                           1493 ;	genIpush
   12A8 C0 02              1494 	push	ar2
   12AA C0 03              1495 	push	ar3
   12AC C0 04              1496 	push	ar4
                           1497 ;	Peephole 181	changed mov to clr
   12AE E4                 1498 	clr	a
   12AF C0 E0              1499 	push	acc
                           1500 ;	genCall
   12B1 75 82 14           1501 	mov	dpl,#0x14
   12B4 12 03 D9           1502 	lcall	_STA013WriteReg
   12B7 15 81              1503 	dec	sp
   12B9 D0 04              1504 	pop	ar4
   12BB D0 03              1505 	pop	ar3
   12BD D0 02              1506 	pop	ar2
                           1507 ;	FatDrivers/sd.c:124: case 'p':   RI=0;    // pause
                           1508 ;	Peephole 112.b	changed ljmp to sjmp
   12BF 80 66              1509 	sjmp	00315$
   12C1                    1510 00304$:
                           1511 ;	genAssign
   12C1 C2 98              1512 	clr	_RI
                           1513 ;	FatDrivers/sd.c:125: STA013PauseDecoder();
                           1514 ;	genCall
   12C3 C0 02              1515 	push	ar2
   12C5 C0 03              1516 	push	ar3
   12C7 C0 04              1517 	push	ar4
   12C9 12 05 C5           1518 	lcall	_STA013PauseDecoder
   12CC D0 04              1519 	pop	ar4
   12CE D0 03              1520 	pop	ar3
   12D0 D0 02              1521 	pop	ar2
                           1522 ;	FatDrivers/sd.c:126: while((!RI)&&(SBUF!='r'));
   12D2                    1523 00306$:
                           1524 ;	genIfx
                           1525 ;	genIfxJump
                           1526 ;	Peephole 108.e	removed ljmp by inverse jump logic
   12D2 20 98 05           1527 	jb	_RI,00308$
                           1528 ;	Peephole 300	removed redundant label 00554$
                           1529 ;	genCmpEq
                           1530 ;	gencjneshort
   12D5 E5 99              1531 	mov	a,_SBUF
                           1532 ;	Peephole 112.b	changed ljmp to sjmp
                           1533 ;	Peephole 198.b	optimized misc jump sequence
   12D7 B4 72 F8           1534 	cjne	a,#0x72,00306$
                           1535 ;	Peephole 200.b	removed redundant sjmp
                           1536 ;	Peephole 300	removed redundant label 00555$
                           1537 ;	Peephole 300	removed redundant label 00556$
   12DA                    1538 00308$:
                           1539 ;	FatDrivers/sd.c:127: STA013ResumeDecoder();
                           1540 ;	genCall
   12DA C0 02              1541 	push	ar2
   12DC C0 03              1542 	push	ar3
   12DE C0 04              1543 	push	ar4
   12E0 12 05 DD           1544 	lcall	_STA013ResumeDecoder
   12E3 D0 04              1545 	pop	ar4
   12E5 D0 03              1546 	pop	ar3
   12E7 D0 02              1547 	pop	ar2
                           1548 ;	FatDrivers/sd.c:128: break;
                           1549 ;	FatDrivers/sd.c:129: case 'q':   WDTRST=0X1E;    // quit by resetting
                           1550 ;	Peephole 112.b	changed ljmp to sjmp
   12E9 80 3C              1551 	sjmp	00315$
   12EB                    1552 00309$:
                           1553 ;	genAssign
   12EB 75 A6 1E           1554 	mov	_WDTRST,#0x1E
                           1555 ;	FatDrivers/sd.c:130: WDTRST=0XE1;
                           1556 ;	genAssign
   12EE 75 A6 E1           1557 	mov	_WDTRST,#0xE1
                           1558 ;	FatDrivers/sd.c:131: while(1);
   12F1                    1559 00311$:
                           1560 ;	FatDrivers/sd.c:133: case 'i':   printf_tiny("\0338Average Bit Rate: %d Kbps",STA013GetAverageBitrate());    //get transfer rate from STA013
                           1561 ;	Peephole 112.b	changed ljmp to sjmp
   12F1 80 FE              1562 	sjmp	00311$
   12F3                    1563 00313$:
                           1564 ;	genCall
   12F3 C0 02              1565 	push	ar2
   12F5 C0 03              1566 	push	ar3
   12F7 C0 04              1567 	push	ar4
   12F9 12 06 82           1568 	lcall	_STA013GetAverageBitrate
   12FC AD 82              1569 	mov	r5,dpl
   12FE AE 83              1570 	mov	r6,dph
   1300 D0 04              1571 	pop	ar4
   1302 D0 03              1572 	pop	ar3
   1304 D0 02              1573 	pop	ar2
                           1574 ;	genIpush
   1306 C0 02              1575 	push	ar2
   1308 C0 03              1576 	push	ar3
   130A C0 04              1577 	push	ar4
   130C C0 05              1578 	push	ar5
   130E C0 06              1579 	push	ar6
                           1580 ;	genIpush
   1310 74 19              1581 	mov	a,#__str_0
   1312 C0 E0              1582 	push	acc
   1314 74 73              1583 	mov	a,#(__str_0 >> 8)
   1316 C0 E0              1584 	push	acc
                           1585 ;	genCall
   1318 12 5E BD           1586 	lcall	_printf_tiny
   131B E5 81              1587 	mov	a,sp
   131D 24 FC              1588 	add	a,#0xfc
   131F F5 81              1589 	mov	sp,a
   1321 D0 04              1590 	pop	ar4
   1323 D0 03              1591 	pop	ar3
   1325 D0 02              1592 	pop	ar2
                           1593 ;	FatDrivers/sd.c:136: }
   1327                    1594 00315$:
                           1595 ;	FatDrivers/sd.c:137: RI=0;
                           1596 ;	genAssign
   1327 C2 98              1597 	clr	_RI
   1329                    1598 00323$:
                           1599 ;	FatDrivers/sd.c:89: for( count=1; count<=SD_DATA_SIZE; count=count+x)
                           1600 ;	genCast
   1329 7D 00              1601 	mov	r5,#0x00
                           1602 ;	genPlus
                           1603 ;	Peephole 236.g	used r4 instead of ar4
   132B EC                 1604 	mov	a,r4
                           1605 ;	Peephole 236.a	used r2 instead of ar2
   132C 2A                 1606 	add	a,r2
   132D FA                 1607 	mov	r2,a
                           1608 ;	Peephole 236.g	used r5 instead of ar5
   132E ED                 1609 	mov	a,r5
                           1610 ;	Peephole 236.b	used r3 instead of ar3
   132F 3B                 1611 	addc	a,r3
   1330 FB                 1612 	mov	r3,a
   1331 02 10 44           1613 	ljmp	00321$
   1334                    1614 00324$:
                           1615 ;	FatDrivers/sd.c:141: STA013_CS_ENABLE=0;
                           1616 ;	genAssign
   1334 C2 93              1617 	clr	_P1_3
                           1618 ;	FatDrivers/sd.c:143: SPI_Byte(0xFF);
                           1619 ;	genCall
   1336 75 82 FF           1620 	mov	dpl,#0xFF
   1339 12 03 AD           1621 	lcall	_SPI_Byte
                           1622 ;	FatDrivers/sd.c:144: SPI_Byte(0xFF);
                           1623 ;	genCall
   133C 75 82 FF           1624 	mov	dpl,#0xFF
   133F 12 03 AD           1625 	lcall	_SPI_Byte
                           1626 ;	FatDrivers/sd.c:147: Disable_SD_Card();
                           1627 ;	genAssign
   1342 D2 91              1628 	setb	_P1_1
                           1629 ;	FatDrivers/sd.c:148: return( 0 );
                           1630 ;	genRet
   1344 75 82 00           1631 	mov	dpl,#0x00
                           1632 ;	Peephole 300	removed redundant label 00325$
   1347 22                 1633 	ret
                           1634 ;------------------------------------------------------------
                           1635 ;Allocation info for local variables in function 'SD_Command'
                           1636 ;------------------------------------------------------------
                           1637 ;ThisArgument              Allocated to stack - offset -6
                           1638 ;ThisCommand               Allocated to registers r2 
                           1639 ;------------------------------------------------------------
                           1640 ;	FatDrivers/sd.c:152: BYTE SD_Command( BYTE ThisCommand, ULONG ThisArgument )
                           1641 ;	-----------------------------------------
                           1642 ;	 function SD_Command
                           1643 ;	-----------------------------------------
   1348                    1644 _SD_Command:
   1348 C0 10              1645 	push	_bp
   134A 85 81 10           1646 	mov	_bp,sp
                           1647 ;	genReceive
   134D AA 82              1648 	mov	r2,dpl
                           1649 ;	FatDrivers/sd.c:155: Enable_SD_Card();
                           1650 ;	genAssign
   134F C2 91              1651 	clr	_P1_1
                           1652 ;	FatDrivers/sd.c:158: SPI_nClocks(20);
                           1653 ;	genCall
   1351 75 82 14           1654 	mov	dpl,#0x14
   1354 C0 02              1655 	push	ar2
   1356 12 03 B9           1656 	lcall	_SPI_nClocks
   1359 D0 02              1657 	pop	ar2
                           1658 ;	FatDrivers/sd.c:161: SPI_Byte(0x40 | ThisCommand);
                           1659 ;	genOr
   135B 74 40              1660 	mov	a,#0x40
   135D 4A                 1661 	orl	a,r2
   135E F5 82              1662 	mov	dpl,a
                           1663 ;	genCall
   1360 C0 02              1664 	push	ar2
   1362 12 03 AD           1665 	lcall	_SPI_Byte
   1365 D0 02              1666 	pop	ar2
                           1667 ;	FatDrivers/sd.c:164: SPI_Byte((unsigned char)(0xFF&(ThisArgument>>24)));
                           1668 ;	genGetByte
   1367 E5 10              1669 	mov	a,_bp
   1369 24 FA              1670 	add	a,#0xfffffffa
                           1671 ;	Peephole 185	changed order of increment (acc incremented also!)
   136B 04                 1672 	inc	a
                           1673 ;	Peephole 185	changed order of increment (acc incremented also!)
   136C 04                 1674 	inc	a
                           1675 ;	Peephole 185	changed order of increment (acc incremented also!)
   136D 04                 1676 	inc	a
   136E F8                 1677 	mov	r0,a
   136F 86 82              1678 	mov	dpl,@r0
                           1679 ;	genCall
   1371 C0 02              1680 	push	ar2
   1373 12 03 AD           1681 	lcall	_SPI_Byte
   1376 D0 02              1682 	pop	ar2
                           1683 ;	FatDrivers/sd.c:165: SPI_Byte((unsigned char)(0xFF&(ThisArgument>>16)));
                           1684 ;	genGetByte
   1378 E5 10              1685 	mov	a,_bp
   137A 24 FA              1686 	add	a,#0xfffffffa
                           1687 ;	Peephole 185	changed order of increment (acc incremented also!)
   137C 04                 1688 	inc	a
                           1689 ;	Peephole 185	changed order of increment (acc incremented also!)
   137D 04                 1690 	inc	a
   137E F8                 1691 	mov	r0,a
   137F 86 82              1692 	mov	dpl,@r0
                           1693 ;	genCall
   1381 C0 02              1694 	push	ar2
   1383 12 03 AD           1695 	lcall	_SPI_Byte
   1386 D0 02              1696 	pop	ar2
                           1697 ;	FatDrivers/sd.c:166: SPI_Byte((unsigned char)(0xFF&(ThisArgument>>8)));
                           1698 ;	genGetByte
   1388 E5 10              1699 	mov	a,_bp
   138A 24 FA              1700 	add	a,#0xfffffffa
                           1701 ;	Peephole 185	changed order of increment (acc incremented also!)
   138C 04                 1702 	inc	a
   138D F8                 1703 	mov	r0,a
   138E 86 82              1704 	mov	dpl,@r0
                           1705 ;	genCall
   1390 C0 02              1706 	push	ar2
   1392 12 03 AD           1707 	lcall	_SPI_Byte
   1395 D0 02              1708 	pop	ar2
                           1709 ;	FatDrivers/sd.c:167: SPI_Byte((unsigned char)(0xFF&(ThisArgument)));
                           1710 ;	genAnd
   1397 E5 10              1711 	mov	a,_bp
   1399 24 FA              1712 	add	a,#0xfffffffa
   139B F8                 1713 	mov	r0,a
   139C 86 03              1714 	mov	ar3,@r0
   139E 7C 00              1715 	mov	r4,#0x00
   13A0 7D 00              1716 	mov	r5,#0x00
   13A2 7E 00              1717 	mov	r6,#0x00
                           1718 ;	genCast
   13A4 8B 82              1719 	mov	dpl,r3
                           1720 ;	genCall
   13A6 C0 02              1721 	push	ar2
   13A8 12 03 AD           1722 	lcall	_SPI_Byte
   13AB D0 02              1723 	pop	ar2
                           1724 ;	FatDrivers/sd.c:169: SPI_Byte((ThisCommand == CMD_GO_IDLE_STATE)? 0x95:0xFF);
                           1725 ;	genNot
   13AD EA                 1726 	mov	a,r2
   13AE B4 01 00           1727 	cjne	a,#0x01,00106$
   13B1                    1728 00106$:
   13B1 E4                 1729 	clr	a
   13B2 33                 1730 	rlc	a
                           1731 ;	genIfx
   13B3 FA                 1732 	mov	r2,a
                           1733 ;	Peephole 105	removed redundant mov
                           1734 ;	genIfxJump
                           1735 ;	Peephole 108.c	removed ljmp by inverse jump logic
   13B4 60 04              1736 	jz	00103$
                           1737 ;	Peephole 300	removed redundant label 00107$
                           1738 ;	genAssign
   13B6 7A 95              1739 	mov	r2,#0x95
                           1740 ;	Peephole 112.b	changed ljmp to sjmp
   13B8 80 02              1741 	sjmp	00104$
   13BA                    1742 00103$:
                           1743 ;	genAssign
   13BA 7A FF              1744 	mov	r2,#0xFF
   13BC                    1745 00104$:
                           1746 ;	genCall
   13BC 8A 82              1747 	mov	dpl,r2
   13BE 12 03 AD           1748 	lcall	_SPI_Byte
                           1749 ;	FatDrivers/sd.c:172: SPI_Byte( 0xFF );
                           1750 ;	genCall
   13C1 75 82 FF           1751 	mov	dpl,#0xFF
   13C4 12 03 AD           1752 	lcall	_SPI_Byte
                           1753 ;	FatDrivers/sd.c:173: return( 0 );
                           1754 ;	genRet
   13C7 75 82 00           1755 	mov	dpl,#0x00
                           1756 ;	Peephole 300	removed redundant label 00101$
   13CA D0 10              1757 	pop	_bp
   13CC 22                 1758 	ret
                           1759 ;------------------------------------------------------------
                           1760 ;Allocation info for local variables in function 'SD_GetByte'
                           1761 ;------------------------------------------------------------
                           1762 ;i                         Allocated to registers r3 
                           1763 ;j                         Allocated to registers r2 
                           1764 ;------------------------------------------------------------
                           1765 ;	FatDrivers/sd.c:177: BYTE SD_GetByte()
                           1766 ;	-----------------------------------------
                           1767 ;	 function SD_GetByte
                           1768 ;	-----------------------------------------
   13CD                    1769 _SD_GetByte:
                           1770 ;	FatDrivers/sd.c:179: BYTE i, j=0xFF;
                           1771 ;	genAssign
   13CD 7A FF              1772 	mov	r2,#0xFF
                           1773 ;	FatDrivers/sd.c:180: for( i=0; i<8; i++ )
                           1774 ;	genAssign
   13CF 7B 00              1775 	mov	r3,#0x00
   13D1                    1776 00103$:
                           1777 ;	genCmpLt
                           1778 ;	genCmp
   13D1 BB 08 00           1779 	cjne	r3,#0x08,00112$
   13D4                    1780 00112$:
                           1781 ;	genIfxJump
                           1782 ;	Peephole 108.a	removed ljmp by inverse jump logic
   13D4 50 19              1783 	jnc	00106$
                           1784 ;	Peephole 300	removed redundant label 00113$
                           1785 ;	FatDrivers/sd.c:183: j = SPI_Byte( 0xff );
                           1786 ;	genCall
   13D6 75 82 FF           1787 	mov	dpl,#0xFF
   13D9 C0 03              1788 	push	ar3
   13DB 12 03 AD           1789 	lcall	_SPI_Byte
   13DE AC 82              1790 	mov	r4,dpl
   13E0 D0 03              1791 	pop	ar3
                           1792 ;	genAssign
   13E2 8C 02              1793 	mov	ar2,r4
                           1794 ;	FatDrivers/sd.c:184: if(j != 0xff)         /* if it isn't 0xff, it is a response */
                           1795 ;	genCmpEq
                           1796 ;	gencjneshort
   13E4 BA FF 02           1797 	cjne	r2,#0xFF,00114$
                           1798 ;	Peephole 112.b	changed ljmp to sjmp
   13E7 80 03              1799 	sjmp	00105$
   13E9                    1800 00114$:
                           1801 ;	FatDrivers/sd.c:185: return(j);
                           1802 ;	genRet
   13E9 8A 82              1803 	mov	dpl,r2
                           1804 ;	Peephole 112.b	changed ljmp to sjmp
                           1805 ;	Peephole 251.b	replaced sjmp to ret with ret
   13EB 22                 1806 	ret
   13EC                    1807 00105$:
                           1808 ;	FatDrivers/sd.c:180: for( i=0; i<8; i++ )
                           1809 ;	genPlus
                           1810 ;     genPlusIncr
   13EC 0B                 1811 	inc	r3
                           1812 ;	Peephole 112.b	changed ljmp to sjmp
   13ED 80 E2              1813 	sjmp	00103$
   13EF                    1814 00106$:
                           1815 ;	FatDrivers/sd.c:187: return(j);
                           1816 ;	genRet
   13EF 8A 82              1817 	mov	dpl,r2
                           1818 ;	Peephole 300	removed redundant label 00107$
   13F1 22                 1819 	ret
                           1820 ;------------------------------------------------------------
                           1821 ;Allocation info for local variables in function 'SD_GetWord'
                           1822 ;------------------------------------------------------------
                           1823 ;R2                        Allocated with name '_SD_GetWord_R2_1_1'
                           1824 ;------------------------------------------------------------
                           1825 ;	FatDrivers/sd.c:191: WORD SD_GetWord()
                           1826 ;	-----------------------------------------
                           1827 ;	 function SD_GetWord
                           1828 ;	-----------------------------------------
   13F2                    1829 _SD_GetWord:
                           1830 ;	FatDrivers/sd.c:195: R2 = ((SD_GetByte())<< 8)&0xff00;
                           1831 ;	genCall
   13F2 12 13 CD           1832 	lcall	_SD_GetByte
   13F5 AA 82              1833 	mov	r2,dpl
                           1834 ;	genCast
                           1835 ;	genLeftShift
                           1836 ;	genLeftShiftLiteral
                           1837 ;	genlshTwo
                           1838 ;	peephole 177.e	removed redundant move
   13F7 8A 03              1839 	mov	ar3,r2
   13F9 7A 00              1840 	mov	r2,#0x00
                           1841 ;	genAnd
   13FB 78 11              1842 	mov	r0,#_SD_GetWord_R2_1_1
   13FD 76 00              1843 	mov	@r0,#0x00
   13FF 08                 1844 	inc	r0
   1400 A6 03              1845 	mov	@r0,ar3
                           1846 ;	FatDrivers/sd.c:196: R2 |= SPI_Byte( 0xff );
                           1847 ;	genCall
   1402 75 82 FF           1848 	mov	dpl,#0xFF
   1405 12 03 AD           1849 	lcall	_SPI_Byte
   1408 AA 82              1850 	mov	r2,dpl
                           1851 ;	genCast
   140A 7B 00              1852 	mov	r3,#0x00
                           1853 ;	genOr
   140C 78 11              1854 	mov	r0,#_SD_GetWord_R2_1_1
   140E EA                 1855 	mov	a,r2
   140F 46                 1856 	orl	a,@r0
   1410 F6                 1857 	mov	@r0,a
   1411 EB                 1858 	mov	a,r3
   1412 08                 1859 	inc	r0
   1413 46                 1860 	orl	a,@r0
   1414 F6                 1861 	mov	@r0,a
                           1862 ;	FatDrivers/sd.c:197: return( R2 );
                           1863 ;	genRet
   1415 78 11              1864 	mov	r0,#_SD_GetWord_R2_1_1
   1417 86 82              1865 	mov	dpl,@r0
   1419 08                 1866 	inc	r0
   141A 86 83              1867 	mov	dph,@r0
                           1868 ;	Peephole 300	removed redundant label 00101$
   141C 22                 1869 	ret
                           1870 ;------------------------------------------------------------
                           1871 ;Allocation info for local variables in function 'Delay'
                           1872 ;------------------------------------------------------------
                           1873 ;MilSec                    Allocated to registers r2 r3 
                           1874 ;i                         Allocated to registers r6 r7 
                           1875 ;j                         Allocated to registers r4 r5 
                           1876 ;------------------------------------------------------------
                           1877 ;	FatDrivers/sd.c:201: void Delay( WORD MilSec )
                           1878 ;	-----------------------------------------
                           1879 ;	 function Delay
                           1880 ;	-----------------------------------------
   141D                    1881 _Delay:
                           1882 ;	genReceive
   141D AA 82              1883 	mov	r2,dpl
   141F AB 83              1884 	mov	r3,dph
                           1885 ;	FatDrivers/sd.c:204: for (j=0; j< MilSec; j++)
                           1886 ;	genAssign
   1421 7C 00              1887 	mov	r4,#0x00
   1423 7D 00              1888 	mov	r5,#0x00
   1425                    1889 00104$:
                           1890 ;	genCmpLt
                           1891 ;	genCmp
   1425 C3                 1892 	clr	c
   1426 EC                 1893 	mov	a,r4
   1427 9A                 1894 	subb	a,r2
   1428 ED                 1895 	mov	a,r5
   1429 9B                 1896 	subb	a,r3
                           1897 ;	genIfxJump
                           1898 ;	Peephole 108.a	removed ljmp by inverse jump logic
   142A 50 14              1899 	jnc	00108$
                           1900 ;	Peephole 300	removed redundant label 00116$
                           1901 ;	FatDrivers/sd.c:205: for (i=0xFC65; i<0xFFFF; i++);
                           1902 ;	genAssign
   142C 7E 9A              1903 	mov	r6,#0x9A
   142E 7F 03              1904 	mov	r7,#0x03
   1430                    1905 00103$:
                           1906 ;	genMinus
                           1907 ;	genMinusDec
   1430 1E                 1908 	dec	r6
   1431 BE FF 01           1909 	cjne	r6,#0xff,00117$
   1434 1F                 1910 	dec	r7
   1435                    1911 00117$:
                           1912 ;	genIfx
   1435 EE                 1913 	mov	a,r6
   1436 4F                 1914 	orl	a,r7
                           1915 ;	genIfxJump
                           1916 ;	Peephole 108.b	removed ljmp by inverse jump logic
   1437 70 F7              1917 	jnz	00103$
                           1918 ;	Peephole 300	removed redundant label 00118$
                           1919 ;	FatDrivers/sd.c:204: for (j=0; j< MilSec; j++)
                           1920 ;	genPlus
                           1921 ;     genPlusIncr
                           1922 ;	tail increment optimized (range 7)
   1439 0C                 1923 	inc	r4
   143A BC 00 E8           1924 	cjne	r4,#0x00,00104$
   143D 0D                 1925 	inc	r5
                           1926 ;	Peephole 112.b	changed ljmp to sjmp
   143E 80 E5              1927 	sjmp	00104$
   1440                    1928 00108$:
   1440 22                 1929 	ret
                           1930 ;------------------------------------------------------------
                           1931 ;Allocation info for local variables in function 'SD_Init'
                           1932 ;------------------------------------------------------------
                           1933 ;Count                     Allocated to registers r2 r3 
                           1934 ;------------------------------------------------------------
                           1935 ;	FatDrivers/sd.c:209: BYTE SD_Init()
                           1936 ;	-----------------------------------------
                           1937 ;	 function SD_Init
                           1938 ;	-----------------------------------------
   1441                    1939 _SD_Init:
                           1940 ;	FatDrivers/sd.c:213: SPI_Init();      // Start with slow speed
                           1941 ;	genAssign
   1441 D2 91              1942 	setb	_P1_1
                           1943 ;	genAssign
   1443 75 C3 72           1944 	mov	_SPCON,#0x72
                           1945 ;	FatDrivers/sd.c:214: Disable_SD_Card();
                           1946 ;	genAssign
   1446 D2 91              1947 	setb	_P1_1
                           1948 ;	FatDrivers/sd.c:215: SPI_nClocks(10); // 74 clocks with CS high to start SDCARD interface
                           1949 ;	genCall
   1448 75 82 0A           1950 	mov	dpl,#0x0A
   144B 12 03 B9           1951 	lcall	_SPI_nClocks
                           1952 ;	FatDrivers/sd.c:216: Enable_SD_Card();
                           1953 ;	genAssign
   144E C2 91              1954 	clr	_P1_1
                           1955 ;	FatDrivers/sd.c:219: CardType = 0;
                           1956 ;	genAssign
   1450 90 10 00           1957 	mov	dptr,#_CardType
   1453 E4                 1958 	clr	a
   1454 F0                 1959 	movx	@dptr,a
   1455 A3                 1960 	inc	dptr
   1456 F0                 1961 	movx	@dptr,a
                           1962 ;	FatDrivers/sd.c:220: do                // Wait till SD Card comes in IDLE mode or timeout of function
                           1963 ;	genAssign
   1457 7A E8              1964 	mov	r2,#0xE8
   1459 7B 03              1965 	mov	r3,#0x03
   145B                    1966 00102$:
                           1967 ;	FatDrivers/sd.c:222: Delay(1);
                           1968 ;	genCall
                           1969 ;	Peephole 182.b	used 16 bit load of dptr
   145B 90 00 01           1970 	mov	dptr,#0x0001
   145E C0 02              1971 	push	ar2
   1460 C0 03              1972 	push	ar3
   1462 12 14 1D           1973 	lcall	_Delay
   1465 D0 03              1974 	pop	ar3
   1467 D0 02              1975 	pop	ar2
                           1976 ;	FatDrivers/sd.c:223: SD_Command( CMD_GO_IDLE_STATE, 0 );
                           1977 ;	genIpush
   1469 C0 02              1978 	push	ar2
   146B C0 03              1979 	push	ar3
                           1980 ;	Peephole 181	changed mov to clr
   146D E4                 1981 	clr	a
   146E C0 E0              1982 	push	acc
   1470 C0 E0              1983 	push	acc
   1472 C0 E0              1984 	push	acc
   1474 C0 E0              1985 	push	acc
                           1986 ;	genCall
   1476 75 82 00           1987 	mov	dpl,#0x00
   1479 12 13 48           1988 	lcall	_SD_Command
   147C E5 81              1989 	mov	a,sp
   147E 24 FC              1990 	add	a,#0xfc
   1480 F5 81              1991 	mov	sp,a
   1482 D0 03              1992 	pop	ar3
   1484 D0 02              1993 	pop	ar2
                           1994 ;	FatDrivers/sd.c:225: while((SD_GetByte() != IDLE_STATE) && (--Count));
                           1995 ;	genCall
   1486 C0 02              1996 	push	ar2
   1488 C0 03              1997 	push	ar3
   148A 12 13 CD           1998 	lcall	_SD_GetByte
   148D AC 82              1999 	mov	r4,dpl
   148F D0 03              2000 	pop	ar3
   1491 D0 02              2001 	pop	ar2
                           2002 ;	genCmpEq
                           2003 ;	gencjneshort
   1493 BC 01 02           2004 	cjne	r4,#0x01,00134$
                           2005 ;	Peephole 112.b	changed ljmp to sjmp
   1496 80 09              2006 	sjmp	00104$
   1498                    2007 00134$:
                           2008 ;	genMinus
                           2009 ;	genMinusDec
   1498 1A                 2010 	dec	r2
   1499 BA FF 01           2011 	cjne	r2,#0xff,00135$
   149C 1B                 2012 	dec	r3
   149D                    2013 00135$:
                           2014 ;	genIfx
   149D EA                 2015 	mov	a,r2
   149E 4B                 2016 	orl	a,r3
                           2017 ;	genIfxJump
                           2018 ;	Peephole 108.b	removed ljmp by inverse jump logic
   149F 70 BA              2019 	jnz	00102$
                           2020 ;	Peephole 300	removed redundant label 00136$
   14A1                    2021 00104$:
                           2022 ;	FatDrivers/sd.c:226: if( !Count )
                           2023 ;	genIfx
   14A1 EA                 2024 	mov	a,r2
   14A2 4B                 2025 	orl	a,r3
                           2026 ;	genIfxJump
                           2027 ;	Peephole 108.b	removed ljmp by inverse jump logic
   14A3 70 04              2028 	jnz	00106$
                           2029 ;	Peephole 300	removed redundant label 00137$
                           2030 ;	FatDrivers/sd.c:231: return( SD_TIME_OUT );
                           2031 ;	genRet
   14A5 75 82 01           2032 	mov	dpl,#0x01
                           2033 ;	Peephole 251.a	replaced ljmp to ret with ret
   14A8 22                 2034 	ret
   14A9                    2035 00106$:
                           2036 ;	FatDrivers/sd.c:235: SD_Command( CMD_APP_CMD, 0 );
                           2037 ;	genIpush
                           2038 ;	Peephole 181	changed mov to clr
   14A9 E4                 2039 	clr	a
   14AA C0 E0              2040 	push	acc
   14AC C0 E0              2041 	push	acc
   14AE C0 E0              2042 	push	acc
   14B0 C0 E0              2043 	push	acc
                           2044 ;	genCall
   14B2 75 82 37           2045 	mov	dpl,#0x37
   14B5 12 13 48           2046 	lcall	_SD_Command
   14B8 E5 81              2047 	mov	a,sp
   14BA 24 FC              2048 	add	a,#0xfc
   14BC F5 81              2049 	mov	sp,a
                           2050 ;	FatDrivers/sd.c:236: SD_Command( ACMD_SEND_OP_COND, 0 );
                           2051 ;	genIpush
                           2052 ;	Peephole 181	changed mov to clr
   14BE E4                 2053 	clr	a
   14BF C0 E0              2054 	push	acc
   14C1 C0 E0              2055 	push	acc
   14C3 C0 E0              2056 	push	acc
   14C5 C0 E0              2057 	push	acc
                           2058 ;	genCall
   14C7 75 82 29           2059 	mov	dpl,#0x29
   14CA 12 13 48           2060 	lcall	_SD_Command
   14CD E5 81              2061 	mov	a,sp
   14CF 24 FC              2062 	add	a,#0xfc
   14D1 F5 81              2063 	mov	sp,a
                           2064 ;	FatDrivers/sd.c:237: if( SD_GetByte() <= 1 )
                           2065 ;	genCall
   14D3 12 13 CD           2066 	lcall	_SD_GetByte
                           2067 ;	genCmpGt
                           2068 ;	genCmp
                           2069 ;	genIfxJump
                           2070 ;	Peephole 132.b	optimized genCmpGt by inverse logic (acc differs)
                           2071 ;	peephole 177.g	optimized mov sequence
   14D6 E5 82              2072 	mov	a,dpl
   14D8 FA                 2073 	mov	r2,a
   14D9 24 FE              2074 	add	a,#0xff - 0x01
                           2075 ;	Peephole 112.b	changed ljmp to sjmp
                           2076 ;	Peephole 160.a	removed sjmp by inverse jump logic
   14DB 40 0B              2077 	jc	00108$
                           2078 ;	Peephole 300	removed redundant label 00138$
                           2079 ;	FatDrivers/sd.c:238: CardType = 2;
                           2080 ;	genAssign
   14DD 90 10 00           2081 	mov	dptr,#_CardType
   14E0 74 02              2082 	mov	a,#0x02
   14E2 F0                 2083 	movx	@dptr,a
   14E3 E4                 2084 	clr	a
   14E4 A3                 2085 	inc	dptr
   14E5 F0                 2086 	movx	@dptr,a
                           2087 ;	Peephole 112.b	changed ljmp to sjmp
   14E6 80 09              2088 	sjmp	00129$
   14E8                    2089 00108$:
                           2090 ;	FatDrivers/sd.c:240: CardType = 1;
                           2091 ;	genAssign
   14E8 90 10 00           2092 	mov	dptr,#_CardType
   14EB 74 01              2093 	mov	a,#0x01
   14ED F0                 2094 	movx	@dptr,a
   14EE E4                 2095 	clr	a
   14EF A3                 2096 	inc	dptr
   14F0 F0                 2097 	movx	@dptr,a
                           2098 ;	FatDrivers/sd.c:241: do     // Recheck Card Type and send appropriate initialization commands
   14F1                    2099 00129$:
                           2100 ;	genAssign
   14F1 7A D0              2101 	mov	r2,#0xD0
   14F3 7B 07              2102 	mov	r3,#0x07
   14F5                    2103 00114$:
                           2104 ;	FatDrivers/sd.c:243: Delay(1);
                           2105 ;	genCall
                           2106 ;	Peephole 182.b	used 16 bit load of dptr
   14F5 90 00 01           2107 	mov	dptr,#0x0001
   14F8 C0 02              2108 	push	ar2
   14FA C0 03              2109 	push	ar3
   14FC 12 14 1D           2110 	lcall	_Delay
   14FF D0 03              2111 	pop	ar3
   1501 D0 02              2112 	pop	ar2
                           2113 ;	FatDrivers/sd.c:244: if( CardType == 2 )
                           2114 ;	genAssign
   1503 90 10 00           2115 	mov	dptr,#_CardType
   1506 E0                 2116 	movx	a,@dptr
   1507 FC                 2117 	mov	r4,a
   1508 A3                 2118 	inc	dptr
   1509 E0                 2119 	movx	a,@dptr
   150A FD                 2120 	mov	r5,a
                           2121 ;	genCmpEq
                           2122 ;	gencjneshort
                           2123 ;	Peephole 112.b	changed ljmp to sjmp
                           2124 ;	Peephole 198.a	optimized misc jump sequence
   150B BC 02 3F           2125 	cjne	r4,#0x02,00111$
   150E BD 00 3C           2126 	cjne	r5,#0x00,00111$
                           2127 ;	Peephole 200.b	removed redundant sjmp
                           2128 ;	Peephole 300	removed redundant label 00139$
                           2129 ;	Peephole 300	removed redundant label 00140$
                           2130 ;	FatDrivers/sd.c:246: SD_Command( CMD_APP_CMD, 0 );
                           2131 ;	genIpush
   1511 C0 02              2132 	push	ar2
   1513 C0 03              2133 	push	ar3
                           2134 ;	Peephole 181	changed mov to clr
   1515 E4                 2135 	clr	a
   1516 C0 E0              2136 	push	acc
   1518 C0 E0              2137 	push	acc
   151A C0 E0              2138 	push	acc
   151C C0 E0              2139 	push	acc
                           2140 ;	genCall
   151E 75 82 37           2141 	mov	dpl,#0x37
   1521 12 13 48           2142 	lcall	_SD_Command
   1524 E5 81              2143 	mov	a,sp
   1526 24 FC              2144 	add	a,#0xfc
   1528 F5 81              2145 	mov	sp,a
   152A D0 03              2146 	pop	ar3
   152C D0 02              2147 	pop	ar2
                           2148 ;	FatDrivers/sd.c:247: SD_Command( ACMD_SEND_OP_COND, 0 );
                           2149 ;	genIpush
   152E C0 02              2150 	push	ar2
   1530 C0 03              2151 	push	ar3
                           2152 ;	Peephole 181	changed mov to clr
   1532 E4                 2153 	clr	a
   1533 C0 E0              2154 	push	acc
   1535 C0 E0              2155 	push	acc
   1537 C0 E0              2156 	push	acc
   1539 C0 E0              2157 	push	acc
                           2158 ;	genCall
   153B 75 82 29           2159 	mov	dpl,#0x29
   153E 12 13 48           2160 	lcall	_SD_Command
   1541 E5 81              2161 	mov	a,sp
   1543 24 FC              2162 	add	a,#0xfc
   1545 F5 81              2163 	mov	sp,a
   1547 D0 03              2164 	pop	ar3
   1549 D0 02              2165 	pop	ar2
                           2166 ;	Peephole 112.b	changed ljmp to sjmp
   154B 80 1D              2167 	sjmp	00115$
   154D                    2168 00111$:
                           2169 ;	FatDrivers/sd.c:251: SD_Command( CMD_SEND_OP_COND, 0 );
                           2170 ;	genIpush
   154D C0 02              2171 	push	ar2
   154F C0 03              2172 	push	ar3
                           2173 ;	Peephole 181	changed mov to clr
   1551 E4                 2174 	clr	a
   1552 C0 E0              2175 	push	acc
   1554 C0 E0              2176 	push	acc
   1556 C0 E0              2177 	push	acc
   1558 C0 E0              2178 	push	acc
                           2179 ;	genCall
   155A 75 82 01           2180 	mov	dpl,#0x01
   155D 12 13 48           2181 	lcall	_SD_Command
   1560 E5 81              2182 	mov	a,sp
   1562 24 FC              2183 	add	a,#0xfc
   1564 F5 81              2184 	mov	sp,a
   1566 D0 03              2185 	pop	ar3
   1568 D0 02              2186 	pop	ar2
   156A                    2187 00115$:
                           2188 ;	FatDrivers/sd.c:254: while(SD_GetByte() && --Count);
                           2189 ;	genCall
   156A C0 02              2190 	push	ar2
   156C C0 03              2191 	push	ar3
   156E 12 13 CD           2192 	lcall	_SD_GetByte
   1571 E5 82              2193 	mov	a,dpl
   1573 D0 03              2194 	pop	ar3
   1575 D0 02              2195 	pop	ar2
                           2196 ;	genIfx
                           2197 ;	genIfxJump
                           2198 ;	Peephole 108.c	removed ljmp by inverse jump logic
   1577 60 0C              2199 	jz	00116$
                           2200 ;	Peephole 300	removed redundant label 00141$
                           2201 ;	genMinus
                           2202 ;	genMinusDec
   1579 1A                 2203 	dec	r2
   157A BA FF 01           2204 	cjne	r2,#0xff,00142$
   157D 1B                 2205 	dec	r3
   157E                    2206 00142$:
                           2207 ;	genIfx
   157E EA                 2208 	mov	a,r2
   157F 4B                 2209 	orl	a,r3
                           2210 ;	genIfxJump
   1580 60 03              2211 	jz	00143$
   1582 02 14 F5           2212 	ljmp	00114$
   1585                    2213 00143$:
   1585                    2214 00116$:
                           2215 ;	FatDrivers/sd.c:255: if( !Count )
                           2216 ;	genIfx
   1585 EA                 2217 	mov	a,r2
   1586 4B                 2218 	orl	a,r3
                           2219 ;	genIfxJump
                           2220 ;	Peephole 108.b	removed ljmp by inverse jump logic
   1587 70 04              2221 	jnz	00118$
                           2222 ;	Peephole 300	removed redundant label 00144$
                           2223 ;	FatDrivers/sd.c:260: return( SD_TIME_OUT );
                           2224 ;	genRet
   1589 75 82 01           2225 	mov	dpl,#0x01
                           2226 ;	Peephole 112.b	changed ljmp to sjmp
                           2227 ;	Peephole 251.b	replaced sjmp to ret with ret
   158C 22                 2228 	ret
   158D                    2229 00118$:
                           2230 ;	FatDrivers/sd.c:264: SD_Command( CMD_SEND_STATUS, 0 );
                           2231 ;	genIpush
                           2232 ;	Peephole 181	changed mov to clr
   158D E4                 2233 	clr	a
   158E C0 E0              2234 	push	acc
   1590 C0 E0              2235 	push	acc
   1592 C0 E0              2236 	push	acc
   1594 C0 E0              2237 	push	acc
                           2238 ;	genCall
   1596 75 82 0D           2239 	mov	dpl,#0x0D
   1599 12 13 48           2240 	lcall	_SD_Command
   159C E5 81              2241 	mov	a,sp
   159E 24 FC              2242 	add	a,#0xfc
   15A0 F5 81              2243 	mov	sp,a
                           2244 ;	FatDrivers/sd.c:265: Count = SD_GetWord();
                           2245 ;	genCall
   15A2 12 13 F2           2246 	lcall	_SD_GetWord
   15A5 AA 82              2247 	mov	r2,dpl
   15A7 AB 83              2248 	mov	r3,dph
                           2249 ;	genAssign
                           2250 ;	FatDrivers/sd.c:267: if( Count )
                           2251 ;	genIfx
   15A9 EA                 2252 	mov	a,r2
   15AA 4B                 2253 	orl	a,r3
                           2254 ;	genIfxJump
                           2255 ;	Peephole 108.c	removed ljmp by inverse jump logic
   15AB 60 04              2256 	jz	00120$
                           2257 ;	Peephole 300	removed redundant label 00145$
                           2258 ;	FatDrivers/sd.c:272: return( SD_ERROR );
                           2259 ;	genRet
   15AD 75 82 02           2260 	mov	dpl,#0x02
                           2261 ;	Peephole 112.b	changed ljmp to sjmp
                           2262 ;	Peephole 251.b	replaced sjmp to ret with ret
   15B0 22                 2263 	ret
   15B1                    2264 00120$:
                           2265 ;	FatDrivers/sd.c:282: SD_Command( CMD_SET_BLOCKLEN, 512 );
                           2266 ;	genIpush
                           2267 ;	Peephole 181	changed mov to clr
   15B1 E4                 2268 	clr	a
   15B2 C0 E0              2269 	push	acc
   15B4 74 02              2270 	mov	a,#0x02
   15B6 C0 E0              2271 	push	acc
                           2272 ;	Peephole 181	changed mov to clr
   15B8 E4                 2273 	clr	a
   15B9 C0 E0              2274 	push	acc
   15BB C0 E0              2275 	push	acc
                           2276 ;	genCall
   15BD 75 82 10           2277 	mov	dpl,#0x10
   15C0 12 13 48           2278 	lcall	_SD_Command
   15C3 E5 81              2279 	mov	a,sp
   15C5 24 FC              2280 	add	a,#0xfc
   15C7 F5 81              2281 	mov	sp,a
                           2282 ;	FatDrivers/sd.c:283: SD_GetByte();
                           2283 ;	genCall
   15C9 12 13 CD           2284 	lcall	_SD_GetByte
                           2285 ;	FatDrivers/sd.c:286: SPI_SetFast();
                           2286 ;	genAssign
   15CC D2 91              2287 	setb	_P1_1
                           2288 ;	genAssign
   15CE 75 C3 70           2289 	mov	_SPCON,#0x70
                           2290 ;	FatDrivers/sd.c:287: Disable_SD_Card();
                           2291 ;	genAssign
   15D1 D2 91              2292 	setb	_P1_1
                           2293 ;	FatDrivers/sd.c:288: return( 0 ); // Init OK
                           2294 ;	genRet
   15D3 75 82 00           2295 	mov	dpl,#0x00
                           2296 ;	Peephole 300	removed redundant label 00121$
   15D6 22                 2297 	ret
                           2298 ;------------------------------------------------------------
                           2299 ;Allocation info for local variables in function 'SD_ReadSector'
                           2300 ;------------------------------------------------------------
                           2301 ;Buffer                    Allocated to stack - offset -5
                           2302 ;SectorNumber              Allocated to registers r2 r3 r4 r5 
                           2303 ;c                         Allocated to registers r2 
                           2304 ;i                         Allocated to registers r3 
                           2305 ;count                     Allocated to registers r4 r5 
                           2306 ;------------------------------------------------------------
                           2307 ;	FatDrivers/sd.c:292: BYTE SD_ReadSector( ULONG SectorNumber, BYTE *Buffer )
                           2308 ;	-----------------------------------------
                           2309 ;	 function SD_ReadSector
                           2310 ;	-----------------------------------------
   15D7                    2311 _SD_ReadSector:
   15D7 C0 10              2312 	push	_bp
   15D9 85 81 10           2313 	mov	_bp,sp
                           2314 ;     genReceive
   15DC AA 82              2315 	mov	r2,dpl
   15DE AB 83              2316 	mov	r3,dph
   15E0 AC F0              2317 	mov	r4,b
   15E2 FD                 2318 	mov	r5,a
                           2319 ;	FatDrivers/sd.c:297: SD_Command( CMD_READ_SINGLE_BLOCK, SectorNumber<<9);
                           2320 ;	genLeftShift
                           2321 ;	genLeftShiftLiteral
                           2322 ;	genlshFour
   15E3 EA                 2323 	mov	a,r2
                           2324 ;	Peephole 254	optimized left shift
   15E4 2A                 2325 	add	a,r2
   15E5 CB                 2326 	xch	a,r3
   15E6 33                 2327 	rlc	a
   15E7 CC                 2328 	xch	a,r4
   15E8 33                 2329 	rlc	a
   15E9 CD                 2330 	xch	a,r5
   15EA 7A 00              2331 	mov	r2,#0x00
                           2332 ;	genIpush
   15EC C0 02              2333 	push	ar2
   15EE C0 03              2334 	push	ar3
   15F0 C0 04              2335 	push	ar4
   15F2 C0 05              2336 	push	ar5
                           2337 ;	genCall
   15F4 75 82 11           2338 	mov	dpl,#0x11
   15F7 12 13 48           2339 	lcall	_SD_Command
   15FA E5 81              2340 	mov	a,sp
   15FC 24 FC              2341 	add	a,#0xfc
   15FE F5 81              2342 	mov	sp,a
                           2343 ;	FatDrivers/sd.c:298: c = SD_GetByte();
                           2344 ;	genCall
   1600 12 13 CD           2345 	lcall	_SD_GetByte
   1603 AA 82              2346 	mov	r2,dpl
                           2347 ;	genAssign
                           2348 ;	FatDrivers/sd.c:299: i = SD_GetByte();
                           2349 ;	genCall
   1605 C0 02              2350 	push	ar2
   1607 12 13 CD           2351 	lcall	_SD_GetByte
   160A AB 82              2352 	mov	r3,dpl
   160C D0 02              2353 	pop	ar2
                           2354 ;	genAssign
                           2355 ;	FatDrivers/sd.c:303: while( (i == 0xff) && --count)
                           2356 ;	genAssign
   160E 7C FF              2357 	mov	r4,#0xFF
   1610 7D FF              2358 	mov	r5,#0xFF
   1612                    2359 00102$:
                           2360 ;	genCmpEq
                           2361 ;	gencjneshort
                           2362 ;	Peephole 112.b	changed ljmp to sjmp
                           2363 ;	Peephole 198.b	optimized misc jump sequence
   1612 BB FF 1E           2364 	cjne	r3,#0xFF,00104$
                           2365 ;	Peephole 200.b	removed redundant sjmp
                           2366 ;	Peephole 300	removed redundant label 00121$
                           2367 ;	Peephole 300	removed redundant label 00122$
                           2368 ;	genMinus
                           2369 ;	genMinusDec
   1615 1C                 2370 	dec	r4
   1616 BC FF 01           2371 	cjne	r4,#0xff,00123$
   1619 1D                 2372 	dec	r5
   161A                    2373 00123$:
                           2374 ;	genIfx
   161A EC                 2375 	mov	a,r4
   161B 4D                 2376 	orl	a,r5
                           2377 ;	genIfxJump
                           2378 ;	Peephole 108.c	removed ljmp by inverse jump logic
   161C 60 15              2379 	jz	00104$
                           2380 ;	Peephole 300	removed redundant label 00124$
                           2381 ;	FatDrivers/sd.c:304: i = SD_GetByte();
                           2382 ;	genCall
   161E C0 02              2383 	push	ar2
   1620 C0 04              2384 	push	ar4
   1622 C0 05              2385 	push	ar5
   1624 12 13 CD           2386 	lcall	_SD_GetByte
   1627 AE 82              2387 	mov	r6,dpl
   1629 D0 05              2388 	pop	ar5
   162B D0 04              2389 	pop	ar4
   162D D0 02              2390 	pop	ar2
                           2391 ;	genAssign
   162F 8E 03              2392 	mov	ar3,r6
                           2393 ;	Peephole 112.b	changed ljmp to sjmp
   1631 80 DF              2394 	sjmp	00102$
   1633                    2395 00104$:
                           2396 ;	FatDrivers/sd.c:307: if(c || i != 0xFE)
                           2397 ;	genIfx
   1633 EA                 2398 	mov	a,r2
                           2399 ;	genIfxJump
                           2400 ;	Peephole 108.b	removed ljmp by inverse jump logic
   1634 70 05              2401 	jnz	00105$
                           2402 ;	Peephole 300	removed redundant label 00125$
                           2403 ;	genCmpEq
                           2404 ;	gencjneshort
   1636 BB FE 02           2405 	cjne	r3,#0xFE,00126$
                           2406 ;	Peephole 112.b	changed ljmp to sjmp
   1639 80 05              2407 	sjmp	00117$
   163B                    2408 00126$:
   163B                    2409 00105$:
                           2410 ;	FatDrivers/sd.c:308: return( 1 );
                           2411 ;	genRet
   163B 75 82 01           2412 	mov	dpl,#0x01
                           2413 ;	FatDrivers/sd.c:311: for( count=1; count<=SD_DATA_SIZE; count++)
                           2414 ;	Peephole 112.b	changed ljmp to sjmp
   163E 80 56              2415 	sjmp	00111$
   1640                    2416 00117$:
                           2417 ;	genAssign
   1640 E5 10              2418 	mov	a,_bp
   1642 24 FB              2419 	add	a,#0xfffffffb
   1644 F8                 2420 	mov	r0,a
   1645 86 02              2421 	mov	ar2,@r0
   1647 08                 2422 	inc	r0
   1648 86 03              2423 	mov	ar3,@r0
   164A 08                 2424 	inc	r0
   164B 86 04              2425 	mov	ar4,@r0
                           2426 ;	genAssign
   164D 7D 00              2427 	mov	r5,#0x00
   164F 7E 02              2428 	mov	r6,#0x02
   1651                    2429 00110$:
                           2430 ;	FatDrivers/sd.c:327: *Buffer++=SPI_Byte(0xFF);
                           2431 ;	genCall
   1651 75 82 FF           2432 	mov	dpl,#0xFF
   1654 C0 02              2433 	push	ar2
   1656 C0 03              2434 	push	ar3
   1658 C0 04              2435 	push	ar4
   165A C0 05              2436 	push	ar5
   165C C0 06              2437 	push	ar6
   165E 12 03 AD           2438 	lcall	_SPI_Byte
   1661 AF 82              2439 	mov	r7,dpl
   1663 D0 06              2440 	pop	ar6
   1665 D0 05              2441 	pop	ar5
   1667 D0 04              2442 	pop	ar4
   1669 D0 03              2443 	pop	ar3
   166B D0 02              2444 	pop	ar2
                           2445 ;	genPointerSet
                           2446 ;	genGenPointerSet
   166D 8A 82              2447 	mov	dpl,r2
   166F 8B 83              2448 	mov	dph,r3
   1671 8C F0              2449 	mov	b,r4
   1673 EF                 2450 	mov	a,r7
   1674 12 5E A4           2451 	lcall	__gptrput
   1677 A3                 2452 	inc	dptr
   1678 AA 82              2453 	mov	r2,dpl
   167A AB 83              2454 	mov	r3,dph
                           2455 ;	genMinus
                           2456 ;	genMinusDec
   167C 1D                 2457 	dec	r5
   167D BD FF 01           2458 	cjne	r5,#0xff,00127$
   1680 1E                 2459 	dec	r6
   1681                    2460 00127$:
                           2461 ;	FatDrivers/sd.c:311: for( count=1; count<=SD_DATA_SIZE; count++)
                           2462 ;	genIfx
   1681 ED                 2463 	mov	a,r5
   1682 4E                 2464 	orl	a,r6
                           2465 ;	genIfxJump
                           2466 ;	Peephole 108.b	removed ljmp by inverse jump logic
   1683 70 CC              2467 	jnz	00110$
                           2468 ;	Peephole 300	removed redundant label 00128$
                           2469 ;	FatDrivers/sd.c:330: SPI_Byte(0xFF);
                           2470 ;	genCall
   1685 75 82 FF           2471 	mov	dpl,#0xFF
   1688 12 03 AD           2472 	lcall	_SPI_Byte
                           2473 ;	FatDrivers/sd.c:331: SPI_Byte(0xFF);
                           2474 ;	genCall
   168B 75 82 FF           2475 	mov	dpl,#0xFF
   168E 12 03 AD           2476 	lcall	_SPI_Byte
                           2477 ;	FatDrivers/sd.c:334: Disable_SD_Card();
                           2478 ;	genAssign
   1691 D2 91              2479 	setb	_P1_1
                           2480 ;	FatDrivers/sd.c:336: return( 0 );
                           2481 ;	genRet
   1693 75 82 00           2482 	mov	dpl,#0x00
   1696                    2483 00111$:
   1696 D0 10              2484 	pop	_bp
   1698 22                 2485 	ret
                           2486 ;------------------------------------------------------------
                           2487 ;Allocation info for local variables in function 'SD_WriteSector'
                           2488 ;------------------------------------------------------------
                           2489 ;Buffer                    Allocated to stack - offset -5
                           2490 ;SectorNumber              Allocated to registers r2 r3 r4 r5 
                           2491 ;i                         Allocated to registers 
                           2492 ;count                     Allocated to registers r5 r6 
                           2493 ;------------------------------------------------------------
                           2494 ;	FatDrivers/sd.c:341: BYTE SD_WriteSector( ULONG SectorNumber, BYTE *Buffer )
                           2495 ;	-----------------------------------------
                           2496 ;	 function SD_WriteSector
                           2497 ;	-----------------------------------------
   1699                    2498 _SD_WriteSector:
   1699 C0 10              2499 	push	_bp
   169B 85 81 10           2500 	mov	_bp,sp
                           2501 ;     genReceive
   169E AA 82              2502 	mov	r2,dpl
   16A0 AB 83              2503 	mov	r3,dph
   16A2 AC F0              2504 	mov	r4,b
   16A4 FD                 2505 	mov	r5,a
                           2506 ;	FatDrivers/sd.c:347: SD_Command( CMD_WRITE_SINGLE_BLOCK, SectorNumber << 9 );
                           2507 ;	genLeftShift
                           2508 ;	genLeftShiftLiteral
                           2509 ;	genlshFour
   16A5 EA                 2510 	mov	a,r2
                           2511 ;	Peephole 254	optimized left shift
   16A6 2A                 2512 	add	a,r2
   16A7 CB                 2513 	xch	a,r3
   16A8 33                 2514 	rlc	a
   16A9 CC                 2515 	xch	a,r4
   16AA 33                 2516 	rlc	a
   16AB CD                 2517 	xch	a,r5
   16AC 7A 00              2518 	mov	r2,#0x00
                           2519 ;	genIpush
   16AE C0 02              2520 	push	ar2
   16B0 C0 03              2521 	push	ar3
   16B2 C0 04              2522 	push	ar4
   16B4 C0 05              2523 	push	ar5
                           2524 ;	genCall
   16B6 75 82 18           2525 	mov	dpl,#0x18
   16B9 12 13 48           2526 	lcall	_SD_Command
   16BC E5 81              2527 	mov	a,sp
   16BE 24 FC              2528 	add	a,#0xfc
   16C0 F5 81              2529 	mov	sp,a
                           2530 ;	FatDrivers/sd.c:348: i = SD_GetByte();
                           2531 ;	genCall
   16C2 12 13 CD           2532 	lcall	_SD_GetByte
                           2533 ;	FatDrivers/sd.c:351: SPI_Byte( 0xFE );
                           2534 ;	genCall
   16C5 75 82 FE           2535 	mov	dpl,#0xFE
   16C8 12 03 AD           2536 	lcall	_SPI_Byte
                           2537 ;	FatDrivers/sd.c:354: for( count= 0; count< 512; count++ )
                           2538 ;	genAssign
   16CB E5 10              2539 	mov	a,_bp
   16CD 24 FB              2540 	add	a,#0xfffffffb
   16CF F8                 2541 	mov	r0,a
   16D0 86 02              2542 	mov	ar2,@r0
   16D2 08                 2543 	inc	r0
   16D3 86 03              2544 	mov	ar3,@r0
   16D5 08                 2545 	inc	r0
   16D6 86 04              2546 	mov	ar4,@r0
                           2547 ;	genAssign
   16D8 7D 00              2548 	mov	r5,#0x00
   16DA 7E 02              2549 	mov	r6,#0x02
   16DC                    2550 00106$:
                           2551 ;	FatDrivers/sd.c:356: SPI_Byte(*Buffer++);
                           2552 ;	genPointerGet
                           2553 ;	genGenPointerGet
   16DC 8A 82              2554 	mov	dpl,r2
   16DE 8B 83              2555 	mov	dph,r3
   16E0 8C F0              2556 	mov	b,r4
   16E2 12 62 42           2557 	lcall	__gptrget
   16E5 FF                 2558 	mov	r7,a
   16E6 A3                 2559 	inc	dptr
   16E7 AA 82              2560 	mov	r2,dpl
   16E9 AB 83              2561 	mov	r3,dph
                           2562 ;	genCall
   16EB 8F 82              2563 	mov	dpl,r7
   16ED C0 02              2564 	push	ar2
   16EF C0 03              2565 	push	ar3
   16F1 C0 04              2566 	push	ar4
   16F3 C0 05              2567 	push	ar5
   16F5 C0 06              2568 	push	ar6
   16F7 12 03 AD           2569 	lcall	_SPI_Byte
   16FA D0 06              2570 	pop	ar6
   16FC D0 05              2571 	pop	ar5
   16FE D0 04              2572 	pop	ar4
   1700 D0 03              2573 	pop	ar3
   1702 D0 02              2574 	pop	ar2
                           2575 ;	genMinus
                           2576 ;	genMinusDec
   1704 1D                 2577 	dec	r5
   1705 BD FF 01           2578 	cjne	r5,#0xff,00114$
   1708 1E                 2579 	dec	r6
   1709                    2580 00114$:
                           2581 ;	FatDrivers/sd.c:354: for( count= 0; count< 512; count++ )
                           2582 ;	genIfx
   1709 ED                 2583 	mov	a,r5
   170A 4E                 2584 	orl	a,r6
                           2585 ;	genIfxJump
                           2586 ;	Peephole 108.b	removed ljmp by inverse jump logic
   170B 70 CF              2587 	jnz	00106$
                           2588 ;	Peephole 300	removed redundant label 00115$
                           2589 ;	FatDrivers/sd.c:360: SPI_Byte(0xFF);
                           2590 ;	genCall
   170D 75 82 FF           2591 	mov	dpl,#0xFF
   1710 12 03 AD           2592 	lcall	_SPI_Byte
                           2593 ;	FatDrivers/sd.c:361: SPI_Byte(0xFF);
                           2594 ;	genCall
   1713 75 82 FF           2595 	mov	dpl,#0xFF
   1716 12 03 AD           2596 	lcall	_SPI_Byte
                           2597 ;	FatDrivers/sd.c:364: while( SPI_Byte( 0xFF ) != 0xFF)
   1719                    2598 00101$:
                           2599 ;	genCall
   1719 75 82 FF           2600 	mov	dpl,#0xFF
   171C 12 03 AD           2601 	lcall	_SPI_Byte
   171F AA 82              2602 	mov	r2,dpl
                           2603 ;	genCmpEq
                           2604 ;	gencjneshort
   1721 BA FF 02           2605 	cjne	r2,#0xFF,00116$
                           2606 ;	Peephole 112.b	changed ljmp to sjmp
   1724 80 08              2607 	sjmp	00103$
   1726                    2608 00116$:
                           2609 ;	FatDrivers/sd.c:369: SPI_Byte( 0xFF );
                           2610 ;	genCall
   1726 75 82 FF           2611 	mov	dpl,#0xFF
   1729 12 03 AD           2612 	lcall	_SPI_Byte
                           2613 ;	Peephole 112.b	changed ljmp to sjmp
   172C 80 EB              2614 	sjmp	00101$
   172E                    2615 00103$:
                           2616 ;	FatDrivers/sd.c:372: Disable_SD_Card();
                           2617 ;	genAssign
   172E D2 91              2618 	setb	_P1_1
                           2619 ;	FatDrivers/sd.c:373: SPI_Byte( 0xFF );
                           2620 ;	genCall
   1730 75 82 FF           2621 	mov	dpl,#0xFF
   1733 12 03 AD           2622 	lcall	_SPI_Byte
                           2623 ;	FatDrivers/sd.c:374: return( 0 );
                           2624 ;	genRet
   1736 75 82 00           2625 	mov	dpl,#0x00
                           2626 ;	Peephole 300	removed redundant label 00107$
   1739 D0 10              2627 	pop	_bp
   173B 22                 2628 	ret
                           2629 ;------------------------------------------------------------
                           2630 ;Allocation info for local variables in function 'SD_WaitForReady'
                           2631 ;------------------------------------------------------------
                           2632 ;i                         Allocated to registers r4 
                           2633 ;j                         Allocated to registers r2 r3 
                           2634 ;------------------------------------------------------------
                           2635 ;	FatDrivers/sd.c:377: BYTE SD_WaitForReady()
                           2636 ;	-----------------------------------------
                           2637 ;	 function SD_WaitForReady
                           2638 ;	-----------------------------------------
   173C                    2639 _SD_WaitForReady:
                           2640 ;	FatDrivers/sd.c:382: SPI_Byte( 0xFF );
                           2641 ;	genCall
   173C 75 82 FF           2642 	mov	dpl,#0xFF
   173F 12 03 AD           2643 	lcall	_SPI_Byte
                           2644 ;	FatDrivers/sd.c:385: do
                           2645 ;	genAssign
   1742 7A F4              2646 	mov	r2,#0xF4
   1744 7B 01              2647 	mov	r3,#0x01
   1746                    2648 00102$:
                           2649 ;	FatDrivers/sd.c:387: i = SPI_Byte( 0xFF );
                           2650 ;	genCall
   1746 75 82 FF           2651 	mov	dpl,#0xFF
   1749 C0 02              2652 	push	ar2
   174B C0 03              2653 	push	ar3
   174D 12 03 AD           2654 	lcall	_SPI_Byte
   1750 AC 82              2655 	mov	r4,dpl
   1752 D0 03              2656 	pop	ar3
   1754 D0 02              2657 	pop	ar2
                           2658 ;	genAssign
                           2659 ;	FatDrivers/sd.c:388: Delay( 1 );
                           2660 ;	genCall
                           2661 ;	Peephole 182.b	used 16 bit load of dptr
   1756 90 00 01           2662 	mov	dptr,#0x0001
   1759 C0 02              2663 	push	ar2
   175B C0 03              2664 	push	ar3
   175D C0 04              2665 	push	ar4
   175F 12 14 1D           2666 	lcall	_Delay
   1762 D0 04              2667 	pop	ar4
   1764 D0 03              2668 	pop	ar3
   1766 D0 02              2669 	pop	ar2
                           2670 ;	FatDrivers/sd.c:390: while ((i != 0xFF) && --j);
                           2671 ;	genCmpEq
                           2672 ;	gencjneshort
   1768 BC FF 02           2673 	cjne	r4,#0xFF,00110$
                           2674 ;	Peephole 112.b	changed ljmp to sjmp
   176B 80 09              2675 	sjmp	00104$
   176D                    2676 00110$:
                           2677 ;	genMinus
                           2678 ;	genMinusDec
   176D 1A                 2679 	dec	r2
   176E BA FF 01           2680 	cjne	r2,#0xff,00111$
   1771 1B                 2681 	dec	r3
   1772                    2682 00111$:
                           2683 ;	genIfx
   1772 EA                 2684 	mov	a,r2
   1773 4B                 2685 	orl	a,r3
                           2686 ;	genIfxJump
                           2687 ;	Peephole 108.b	removed ljmp by inverse jump logic
   1774 70 D0              2688 	jnz	00102$
                           2689 ;	Peephole 300	removed redundant label 00112$
   1776                    2690 00104$:
                           2691 ;	FatDrivers/sd.c:392: return( i );
                           2692 ;	genRet
   1776 8C 82              2693 	mov	dpl,r4
                           2694 ;	Peephole 300	removed redundant label 00105$
   1778 22                 2695 	ret
                           2696 	.area CSEG    (CODE)
                           2697 	.area CONST   (CODE)
   7319                    2698 __str_0:
   7319 1B                 2699 	.db 0x1B
   731A 38 41 76 65 72 61  2700 	.ascii "8Average Bit Rate: %d Kbps"
        67 65 20 42 69 74
        20 52 61 74 65 3A
        20 25 64 20 4B 62
        70 73
   7334 00                 2701 	.db 0x00
                           2702 	.area XINIT   (CODE)
