                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : FreeWare ANSI-C Compiler
                              3 ; Version 2.6.0 #4309 (Jul 28 2006)
                              4 ; This file generated Tue Apr 21 22:20:46 2015
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
                            208 	.globl _CardType
                            209 	.globl _Stat
                            210 	.globl _SD_GetR1
                            211 	.globl _SD_GetR2
                            212 	.globl _SD_Command
                            213 	.globl _Delay
                            214 	.globl _SD_Init
                            215 	.globl _SD_ReadSector
                            216 	.globl _SD_WriteSector
                            217 	.globl _SD_WaitForReady
                            218 ;--------------------------------------------------------
                            219 ; special function registers
                            220 ;--------------------------------------------------------
                            221 	.area RSEG    (DATA)
                    0080    222 G$P0$0$0 == 0x0080
                    0080    223 _P0	=	0x0080
                    0081    224 G$SP$0$0 == 0x0081
                    0081    225 _SP	=	0x0081
                    0082    226 G$DPL$0$0 == 0x0082
                    0082    227 _DPL	=	0x0082
                    0083    228 G$DPH$0$0 == 0x0083
                    0083    229 _DPH	=	0x0083
                    0087    230 G$PCON$0$0 == 0x0087
                    0087    231 _PCON	=	0x0087
                    0088    232 G$TCON$0$0 == 0x0088
                    0088    233 _TCON	=	0x0088
                    0089    234 G$TMOD$0$0 == 0x0089
                    0089    235 _TMOD	=	0x0089
                    008A    236 G$TL0$0$0 == 0x008a
                    008A    237 _TL0	=	0x008a
                    008B    238 G$TL1$0$0 == 0x008b
                    008B    239 _TL1	=	0x008b
                    008C    240 G$TH0$0$0 == 0x008c
                    008C    241 _TH0	=	0x008c
                    008D    242 G$TH1$0$0 == 0x008d
                    008D    243 _TH1	=	0x008d
                    0090    244 G$P1$0$0 == 0x0090
                    0090    245 _P1	=	0x0090
                    0098    246 G$SCON$0$0 == 0x0098
                    0098    247 _SCON	=	0x0098
                    0099    248 G$SBUF$0$0 == 0x0099
                    0099    249 _SBUF	=	0x0099
                    00A0    250 G$P2$0$0 == 0x00a0
                    00A0    251 _P2	=	0x00a0
                    00A8    252 G$IE$0$0 == 0x00a8
                    00A8    253 _IE	=	0x00a8
                    00B0    254 G$P3$0$0 == 0x00b0
                    00B0    255 _P3	=	0x00b0
                    00B8    256 G$IP$0$0 == 0x00b8
                    00B8    257 _IP	=	0x00b8
                    00D0    258 G$PSW$0$0 == 0x00d0
                    00D0    259 _PSW	=	0x00d0
                    00E0    260 G$ACC$0$0 == 0x00e0
                    00E0    261 _ACC	=	0x00e0
                    00F0    262 G$B$0$0 == 0x00f0
                    00F0    263 _B	=	0x00f0
                    00C8    264 G$T2CON$0$0 == 0x00c8
                    00C8    265 _T2CON	=	0x00c8
                    00CA    266 G$RCAP2L$0$0 == 0x00ca
                    00CA    267 _RCAP2L	=	0x00ca
                    00CB    268 G$RCAP2H$0$0 == 0x00cb
                    00CB    269 _RCAP2H	=	0x00cb
                    00CC    270 G$TL2$0$0 == 0x00cc
                    00CC    271 _TL2	=	0x00cc
                    00CD    272 G$TH2$0$0 == 0x00cd
                    00CD    273 _TH2	=	0x00cd
                    008E    274 G$AUXR$0$0 == 0x008e
                    008E    275 _AUXR	=	0x008e
                    00A2    276 G$AUXR1$0$0 == 0x00a2
                    00A2    277 _AUXR1	=	0x00a2
                    0097    278 G$CKRL$0$0 == 0x0097
                    0097    279 _CKRL	=	0x0097
                    008F    280 G$CKCKON0$0$0 == 0x008f
                    008F    281 _CKCKON0	=	0x008f
                    008F    282 G$CKCKON1$0$0 == 0x008f
                    008F    283 _CKCKON1	=	0x008f
                    00FA    284 G$CCAP0H$0$0 == 0x00fa
                    00FA    285 _CCAP0H	=	0x00fa
                    00FB    286 G$CCAP1H$0$0 == 0x00fb
                    00FB    287 _CCAP1H	=	0x00fb
                    00FC    288 G$CCAP2H$0$0 == 0x00fc
                    00FC    289 _CCAP2H	=	0x00fc
                    00FD    290 G$CCAP3H$0$0 == 0x00fd
                    00FD    291 _CCAP3H	=	0x00fd
                    00FE    292 G$CCAP4H$0$0 == 0x00fe
                    00FE    293 _CCAP4H	=	0x00fe
                    00EA    294 G$CCAP0L$0$0 == 0x00ea
                    00EA    295 _CCAP0L	=	0x00ea
                    00EB    296 G$CCAP1L$0$0 == 0x00eb
                    00EB    297 _CCAP1L	=	0x00eb
                    00EC    298 G$CCAP2L$0$0 == 0x00ec
                    00EC    299 _CCAP2L	=	0x00ec
                    00ED    300 G$CCAP3L$0$0 == 0x00ed
                    00ED    301 _CCAP3L	=	0x00ed
                    00EE    302 G$CCAP4L$0$0 == 0x00ee
                    00EE    303 _CCAP4L	=	0x00ee
                    00DA    304 G$CCAPM0$0$0 == 0x00da
                    00DA    305 _CCAPM0	=	0x00da
                    00DB    306 G$CCAPM1$0$0 == 0x00db
                    00DB    307 _CCAPM1	=	0x00db
                    00DC    308 G$CCAPM2$0$0 == 0x00dc
                    00DC    309 _CCAPM2	=	0x00dc
                    00DD    310 G$CCAPM3$0$0 == 0x00dd
                    00DD    311 _CCAPM3	=	0x00dd
                    00DE    312 G$CCAPM4$0$0 == 0x00de
                    00DE    313 _CCAPM4	=	0x00de
                    00D8    314 G$CCON$0$0 == 0x00d8
                    00D8    315 _CCON	=	0x00d8
                    00F9    316 G$CH$0$0 == 0x00f9
                    00F9    317 _CH	=	0x00f9
                    00E9    318 G$CL$0$0 == 0x00e9
                    00E9    319 _CL	=	0x00e9
                    00D9    320 G$CMOD$0$0 == 0x00d9
                    00D9    321 _CMOD	=	0x00d9
                    00A8    322 G$IEN0$0$0 == 0x00a8
                    00A8    323 _IEN0	=	0x00a8
                    00B1    324 G$IEN1$0$0 == 0x00b1
                    00B1    325 _IEN1	=	0x00b1
                    00B8    326 G$IPL0$0$0 == 0x00b8
                    00B8    327 _IPL0	=	0x00b8
                    00B7    328 G$IPH0$0$0 == 0x00b7
                    00B7    329 _IPH0	=	0x00b7
                    00B2    330 G$IPL1$0$0 == 0x00b2
                    00B2    331 _IPL1	=	0x00b2
                    00B3    332 G$IPH1$0$0 == 0x00b3
                    00B3    333 _IPH1	=	0x00b3
                    00C0    334 G$P4$0$0 == 0x00c0
                    00C0    335 _P4	=	0x00c0
                    00D8    336 G$P5$0$0 == 0x00d8
                    00D8    337 _P5	=	0x00d8
                    00A6    338 G$WDTRST$0$0 == 0x00a6
                    00A6    339 _WDTRST	=	0x00a6
                    00A7    340 G$WDTPRG$0$0 == 0x00a7
                    00A7    341 _WDTPRG	=	0x00a7
                    00A9    342 G$SADDR$0$0 == 0x00a9
                    00A9    343 _SADDR	=	0x00a9
                    00B9    344 G$SADEN$0$0 == 0x00b9
                    00B9    345 _SADEN	=	0x00b9
                    00C3    346 G$SPCON$0$0 == 0x00c3
                    00C3    347 _SPCON	=	0x00c3
                    00C4    348 G$SPSTA$0$0 == 0x00c4
                    00C4    349 _SPSTA	=	0x00c4
                    00C5    350 G$SPDAT$0$0 == 0x00c5
                    00C5    351 _SPDAT	=	0x00c5
                    00C9    352 G$T2MOD$0$0 == 0x00c9
                    00C9    353 _T2MOD	=	0x00c9
                    009B    354 G$BDRCON$0$0 == 0x009b
                    009B    355 _BDRCON	=	0x009b
                    009A    356 G$BRL$0$0 == 0x009a
                    009A    357 _BRL	=	0x009a
                    009C    358 G$KBLS$0$0 == 0x009c
                    009C    359 _KBLS	=	0x009c
                    009D    360 G$KBE$0$0 == 0x009d
                    009D    361 _KBE	=	0x009d
                    009E    362 G$KBF$0$0 == 0x009e
                    009E    363 _KBF	=	0x009e
                    00D2    364 G$EECON$0$0 == 0x00d2
                    00D2    365 _EECON	=	0x00d2
                            366 ;--------------------------------------------------------
                            367 ; special function bits
                            368 ;--------------------------------------------------------
                            369 	.area RSEG    (DATA)
                    0080    370 G$P0_0$0$0 == 0x0080
                    0080    371 _P0_0	=	0x0080
                    0081    372 G$P0_1$0$0 == 0x0081
                    0081    373 _P0_1	=	0x0081
                    0082    374 G$P0_2$0$0 == 0x0082
                    0082    375 _P0_2	=	0x0082
                    0083    376 G$P0_3$0$0 == 0x0083
                    0083    377 _P0_3	=	0x0083
                    0084    378 G$P0_4$0$0 == 0x0084
                    0084    379 _P0_4	=	0x0084
                    0085    380 G$P0_5$0$0 == 0x0085
                    0085    381 _P0_5	=	0x0085
                    0086    382 G$P0_6$0$0 == 0x0086
                    0086    383 _P0_6	=	0x0086
                    0087    384 G$P0_7$0$0 == 0x0087
                    0087    385 _P0_7	=	0x0087
                    0088    386 G$IT0$0$0 == 0x0088
                    0088    387 _IT0	=	0x0088
                    0089    388 G$IE0$0$0 == 0x0089
                    0089    389 _IE0	=	0x0089
                    008A    390 G$IT1$0$0 == 0x008a
                    008A    391 _IT1	=	0x008a
                    008B    392 G$IE1$0$0 == 0x008b
                    008B    393 _IE1	=	0x008b
                    008C    394 G$TR0$0$0 == 0x008c
                    008C    395 _TR0	=	0x008c
                    008D    396 G$TF0$0$0 == 0x008d
                    008D    397 _TF0	=	0x008d
                    008E    398 G$TR1$0$0 == 0x008e
                    008E    399 _TR1	=	0x008e
                    008F    400 G$TF1$0$0 == 0x008f
                    008F    401 _TF1	=	0x008f
                    0090    402 G$P1_0$0$0 == 0x0090
                    0090    403 _P1_0	=	0x0090
                    0091    404 G$P1_1$0$0 == 0x0091
                    0091    405 _P1_1	=	0x0091
                    0092    406 G$P1_2$0$0 == 0x0092
                    0092    407 _P1_2	=	0x0092
                    0093    408 G$P1_3$0$0 == 0x0093
                    0093    409 _P1_3	=	0x0093
                    0094    410 G$P1_4$0$0 == 0x0094
                    0094    411 _P1_4	=	0x0094
                    0095    412 G$P1_5$0$0 == 0x0095
                    0095    413 _P1_5	=	0x0095
                    0096    414 G$P1_6$0$0 == 0x0096
                    0096    415 _P1_6	=	0x0096
                    0097    416 G$P1_7$0$0 == 0x0097
                    0097    417 _P1_7	=	0x0097
                    0098    418 G$RI$0$0 == 0x0098
                    0098    419 _RI	=	0x0098
                    0099    420 G$TI$0$0 == 0x0099
                    0099    421 _TI	=	0x0099
                    009A    422 G$RB8$0$0 == 0x009a
                    009A    423 _RB8	=	0x009a
                    009B    424 G$TB8$0$0 == 0x009b
                    009B    425 _TB8	=	0x009b
                    009C    426 G$REN$0$0 == 0x009c
                    009C    427 _REN	=	0x009c
                    009D    428 G$SM2$0$0 == 0x009d
                    009D    429 _SM2	=	0x009d
                    009E    430 G$SM1$0$0 == 0x009e
                    009E    431 _SM1	=	0x009e
                    009F    432 G$SM0$0$0 == 0x009f
                    009F    433 _SM0	=	0x009f
                    00A0    434 G$P2_0$0$0 == 0x00a0
                    00A0    435 _P2_0	=	0x00a0
                    00A1    436 G$P2_1$0$0 == 0x00a1
                    00A1    437 _P2_1	=	0x00a1
                    00A2    438 G$P2_2$0$0 == 0x00a2
                    00A2    439 _P2_2	=	0x00a2
                    00A3    440 G$P2_3$0$0 == 0x00a3
                    00A3    441 _P2_3	=	0x00a3
                    00A4    442 G$P2_4$0$0 == 0x00a4
                    00A4    443 _P2_4	=	0x00a4
                    00A5    444 G$P2_5$0$0 == 0x00a5
                    00A5    445 _P2_5	=	0x00a5
                    00A6    446 G$P2_6$0$0 == 0x00a6
                    00A6    447 _P2_6	=	0x00a6
                    00A7    448 G$P2_7$0$0 == 0x00a7
                    00A7    449 _P2_7	=	0x00a7
                    00A8    450 G$EX0$0$0 == 0x00a8
                    00A8    451 _EX0	=	0x00a8
                    00A9    452 G$ET0$0$0 == 0x00a9
                    00A9    453 _ET0	=	0x00a9
                    00AA    454 G$EX1$0$0 == 0x00aa
                    00AA    455 _EX1	=	0x00aa
                    00AB    456 G$ET1$0$0 == 0x00ab
                    00AB    457 _ET1	=	0x00ab
                    00AC    458 G$ES$0$0 == 0x00ac
                    00AC    459 _ES	=	0x00ac
                    00AF    460 G$EA$0$0 == 0x00af
                    00AF    461 _EA	=	0x00af
                    00B0    462 G$P3_0$0$0 == 0x00b0
                    00B0    463 _P3_0	=	0x00b0
                    00B1    464 G$P3_1$0$0 == 0x00b1
                    00B1    465 _P3_1	=	0x00b1
                    00B2    466 G$P3_2$0$0 == 0x00b2
                    00B2    467 _P3_2	=	0x00b2
                    00B3    468 G$P3_3$0$0 == 0x00b3
                    00B3    469 _P3_3	=	0x00b3
                    00B4    470 G$P3_4$0$0 == 0x00b4
                    00B4    471 _P3_4	=	0x00b4
                    00B5    472 G$P3_5$0$0 == 0x00b5
                    00B5    473 _P3_5	=	0x00b5
                    00B6    474 G$P3_6$0$0 == 0x00b6
                    00B6    475 _P3_6	=	0x00b6
                    00B7    476 G$P3_7$0$0 == 0x00b7
                    00B7    477 _P3_7	=	0x00b7
                    00B0    478 G$RXD$0$0 == 0x00b0
                    00B0    479 _RXD	=	0x00b0
                    00B1    480 G$TXD$0$0 == 0x00b1
                    00B1    481 _TXD	=	0x00b1
                    00B2    482 G$INT0$0$0 == 0x00b2
                    00B2    483 _INT0	=	0x00b2
                    00B3    484 G$INT1$0$0 == 0x00b3
                    00B3    485 _INT1	=	0x00b3
                    00B4    486 G$T0$0$0 == 0x00b4
                    00B4    487 _T0	=	0x00b4
                    00B5    488 G$T1$0$0 == 0x00b5
                    00B5    489 _T1	=	0x00b5
                    00B6    490 G$WR$0$0 == 0x00b6
                    00B6    491 _WR	=	0x00b6
                    00B7    492 G$RD$0$0 == 0x00b7
                    00B7    493 _RD	=	0x00b7
                    00B8    494 G$PX0$0$0 == 0x00b8
                    00B8    495 _PX0	=	0x00b8
                    00B9    496 G$PT0$0$0 == 0x00b9
                    00B9    497 _PT0	=	0x00b9
                    00BA    498 G$PX1$0$0 == 0x00ba
                    00BA    499 _PX1	=	0x00ba
                    00BB    500 G$PT1$0$0 == 0x00bb
                    00BB    501 _PT1	=	0x00bb
                    00BC    502 G$PS$0$0 == 0x00bc
                    00BC    503 _PS	=	0x00bc
                    00D0    504 G$P$0$0 == 0x00d0
                    00D0    505 _P	=	0x00d0
                    00D1    506 G$F1$0$0 == 0x00d1
                    00D1    507 _F1	=	0x00d1
                    00D2    508 G$OV$0$0 == 0x00d2
                    00D2    509 _OV	=	0x00d2
                    00D3    510 G$RS0$0$0 == 0x00d3
                    00D3    511 _RS0	=	0x00d3
                    00D4    512 G$RS1$0$0 == 0x00d4
                    00D4    513 _RS1	=	0x00d4
                    00D5    514 G$F0$0$0 == 0x00d5
                    00D5    515 _F0	=	0x00d5
                    00D6    516 G$AC$0$0 == 0x00d6
                    00D6    517 _AC	=	0x00d6
                    00D7    518 G$CY$0$0 == 0x00d7
                    00D7    519 _CY	=	0x00d7
                    00AD    520 G$ET2$0$0 == 0x00ad
                    00AD    521 _ET2	=	0x00ad
                    00BD    522 G$PT2$0$0 == 0x00bd
                    00BD    523 _PT2	=	0x00bd
                    00C8    524 G$T2CON_0$0$0 == 0x00c8
                    00C8    525 _T2CON_0	=	0x00c8
                    00C9    526 G$T2CON_1$0$0 == 0x00c9
                    00C9    527 _T2CON_1	=	0x00c9
                    00CA    528 G$T2CON_2$0$0 == 0x00ca
                    00CA    529 _T2CON_2	=	0x00ca
                    00CB    530 G$T2CON_3$0$0 == 0x00cb
                    00CB    531 _T2CON_3	=	0x00cb
                    00CC    532 G$T2CON_4$0$0 == 0x00cc
                    00CC    533 _T2CON_4	=	0x00cc
                    00CD    534 G$T2CON_5$0$0 == 0x00cd
                    00CD    535 _T2CON_5	=	0x00cd
                    00CE    536 G$T2CON_6$0$0 == 0x00ce
                    00CE    537 _T2CON_6	=	0x00ce
                    00CF    538 G$T2CON_7$0$0 == 0x00cf
                    00CF    539 _T2CON_7	=	0x00cf
                    00C8    540 G$CP_RL2$0$0 == 0x00c8
                    00C8    541 _CP_RL2	=	0x00c8
                    00C9    542 G$C_T2$0$0 == 0x00c9
                    00C9    543 _C_T2	=	0x00c9
                    00CA    544 G$TR2$0$0 == 0x00ca
                    00CA    545 _TR2	=	0x00ca
                    00CB    546 G$EXEN2$0$0 == 0x00cb
                    00CB    547 _EXEN2	=	0x00cb
                    00CC    548 G$TCLK$0$0 == 0x00cc
                    00CC    549 _TCLK	=	0x00cc
                    00CD    550 G$RCLK$0$0 == 0x00cd
                    00CD    551 _RCLK	=	0x00cd
                    00CE    552 G$EXF2$0$0 == 0x00ce
                    00CE    553 _EXF2	=	0x00ce
                    00CF    554 G$TF2$0$0 == 0x00cf
                    00CF    555 _TF2	=	0x00cf
                    00DF    556 G$CF$0$0 == 0x00df
                    00DF    557 _CF	=	0x00df
                    00DE    558 G$CR$0$0 == 0x00de
                    00DE    559 _CR	=	0x00de
                    00DC    560 G$CCF4$0$0 == 0x00dc
                    00DC    561 _CCF4	=	0x00dc
                    00DB    562 G$CCF3$0$0 == 0x00db
                    00DB    563 _CCF3	=	0x00db
                    00DA    564 G$CCF2$0$0 == 0x00da
                    00DA    565 _CCF2	=	0x00da
                    00D9    566 G$CCF1$0$0 == 0x00d9
                    00D9    567 _CCF1	=	0x00d9
                    00D8    568 G$CCF0$0$0 == 0x00d8
                    00D8    569 _CCF0	=	0x00d8
                    00AE    570 G$EC$0$0 == 0x00ae
                    00AE    571 _EC	=	0x00ae
                    00BE    572 G$PPCL$0$0 == 0x00be
                    00BE    573 _PPCL	=	0x00be
                    00BD    574 G$PT2L$0$0 == 0x00bd
                    00BD    575 _PT2L	=	0x00bd
                    00BC    576 G$PLS$0$0 == 0x00bc
                    00BC    577 _PLS	=	0x00bc
                    00BB    578 G$PT1L$0$0 == 0x00bb
                    00BB    579 _PT1L	=	0x00bb
                    00BA    580 G$PX1L$0$0 == 0x00ba
                    00BA    581 _PX1L	=	0x00ba
                    00B9    582 G$PT0L$0$0 == 0x00b9
                    00B9    583 _PT0L	=	0x00b9
                    00B8    584 G$PX0L$0$0 == 0x00b8
                    00B8    585 _PX0L	=	0x00b8
                    00C0    586 G$P4_0$0$0 == 0x00c0
                    00C0    587 _P4_0	=	0x00c0
                    00C1    588 G$P4_1$0$0 == 0x00c1
                    00C1    589 _P4_1	=	0x00c1
                    00C2    590 G$P4_2$0$0 == 0x00c2
                    00C2    591 _P4_2	=	0x00c2
                    00C3    592 G$P4_3$0$0 == 0x00c3
                    00C3    593 _P4_3	=	0x00c3
                    00C4    594 G$P4_4$0$0 == 0x00c4
                    00C4    595 _P4_4	=	0x00c4
                    00C5    596 G$P4_5$0$0 == 0x00c5
                    00C5    597 _P4_5	=	0x00c5
                    00C6    598 G$P4_6$0$0 == 0x00c6
                    00C6    599 _P4_6	=	0x00c6
                    00C7    600 G$P4_7$0$0 == 0x00c7
                    00C7    601 _P4_7	=	0x00c7
                    00D8    602 G$P5_0$0$0 == 0x00d8
                    00D8    603 _P5_0	=	0x00d8
                    00D9    604 G$P5_1$0$0 == 0x00d9
                    00D9    605 _P5_1	=	0x00d9
                    00DA    606 G$P5_2$0$0 == 0x00da
                    00DA    607 _P5_2	=	0x00da
                    00DB    608 G$P5_3$0$0 == 0x00db
                    00DB    609 _P5_3	=	0x00db
                    00DC    610 G$P5_4$0$0 == 0x00dc
                    00DC    611 _P5_4	=	0x00dc
                    00DD    612 G$P5_5$0$0 == 0x00dd
                    00DD    613 _P5_5	=	0x00dd
                    00DE    614 G$P5_6$0$0 == 0x00de
                    00DE    615 _P5_6	=	0x00de
                    00DF    616 G$P5_7$0$0 == 0x00df
                    00DF    617 _P5_7	=	0x00df
                            618 ;--------------------------------------------------------
                            619 ; overlayable register banks
                            620 ;--------------------------------------------------------
                            621 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     622 	.ds 8
                            623 ;--------------------------------------------------------
                            624 ; internal ram data
                            625 ;--------------------------------------------------------
                            626 	.area DSEG    (DATA)
                            627 ;--------------------------------------------------------
                            628 ; overlayable items in internal ram 
                            629 ;--------------------------------------------------------
                            630 	.area OSEG    (OVR,DATA)
                            631 ;--------------------------------------------------------
                            632 ; indirectly addressable internal ram data
                            633 ;--------------------------------------------------------
                            634 	.area ISEG    (DATA)
                    0000    635 LSD_GetR2$R2$1$1==.
   0010                     636 _SD_GetR2_R2_1_1:
   0010                     637 	.ds 2
                            638 ;--------------------------------------------------------
                            639 ; bit data
                            640 ;--------------------------------------------------------
                            641 	.area BSEG    (BIT)
                            642 ;--------------------------------------------------------
                            643 ; paged external ram data
                            644 ;--------------------------------------------------------
                            645 	.area PSEG    (PAG,XDATA)
                            646 ;--------------------------------------------------------
                            647 ; external ram data
                            648 ;--------------------------------------------------------
                            649 	.area XSEG    (XDATA)
                    0000    650 G$Stat$0$0==.
   0046                     651 _Stat::
   0046                     652 	.ds 1
                    3000    653 G$CardType$0$0 == 0x3000
                    3000    654 _CardType	=	0x3000
                            655 ;--------------------------------------------------------
                            656 ; external initialized ram data
                            657 ;--------------------------------------------------------
                            658 	.area XISEG   (XDATA)
                            659 	.area HOME    (CODE)
                            660 	.area GSINIT0 (CODE)
                            661 	.area GSINIT1 (CODE)
                            662 	.area GSINIT2 (CODE)
                            663 	.area GSINIT3 (CODE)
                            664 	.area GSINIT4 (CODE)
                            665 	.area GSINIT5 (CODE)
                            666 	.area GSINIT  (CODE)
                            667 	.area GSFINAL (CODE)
                            668 	.area CSEG    (CODE)
                            669 ;--------------------------------------------------------
                            670 ; global & static initialisations
                            671 ;--------------------------------------------------------
                            672 	.area HOME    (CODE)
                            673 	.area GSINIT  (CODE)
                            674 	.area GSFINAL (CODE)
                            675 	.area GSINIT  (CODE)
                            676 ;--------------------------------------------------------
                            677 ; Home
                            678 ;--------------------------------------------------------
                            679 	.area HOME    (CODE)
                            680 	.area CSEG    (CODE)
                            681 ;--------------------------------------------------------
                            682 ; code
                            683 ;--------------------------------------------------------
                            684 	.area CSEG    (CODE)
                            685 ;------------------------------------------------------------
                            686 ;Allocation info for local variables in function 'SD_GetR1'
                            687 ;------------------------------------------------------------
                            688 ;i                         Allocated to registers r3 
                            689 ;j                         Allocated to registers r2 
                            690 ;------------------------------------------------------------
                    0000    691 	G$SD_GetR1$0$0 ==.
                    0000    692 	C$sd.c$4$0$0 ==.
                            693 ;	sd.c:4: BYTE SD_GetR1()
                            694 ;	-----------------------------------------
                            695 ;	 function SD_GetR1
                            696 ;	-----------------------------------------
   0717                     697 _SD_GetR1:
                    0002    698 	ar2 = 0x02
                    0003    699 	ar3 = 0x03
                    0004    700 	ar4 = 0x04
                    0005    701 	ar5 = 0x05
                    0006    702 	ar6 = 0x06
                    0007    703 	ar7 = 0x07
                    0000    704 	ar0 = 0x00
                    0001    705 	ar1 = 0x01
                    0000    706 	C$sd.c$6$1$0 ==.
                            707 ;	sd.c:6: BYTE i, j=0xFF;
                            708 ;	genAssign
   0717 7A FF               709 	mov	r2,#0xFF
                    0002    710 	C$sd.c$8$1$1 ==.
                            711 ;	sd.c:8: for( i=0; i<8; i++ )
                            712 ;	genAssign
   0719 7B 00               713 	mov	r3,#0x00
   071B                     714 00103$:
                            715 ;	genCmpLt
                            716 ;	genCmp
   071B BB 08 00            717 	cjne	r3,#0x08,00112$
   071E                     718 00112$:
                            719 ;	genIfxJump
                            720 ;	Peephole 108.a	removed ljmp by inverse jump logic
   071E 50 19               721 	jnc	00106$
                            722 ;	Peephole 300	removed redundant label 00113$
                    0009    723 	C$sd.c$10$2$2 ==.
                            724 ;	sd.c:10: j = SPI_Byte( 0xff );
                            725 ;	genCall
   0720 75 82 FF            726 	mov	dpl,#0xFF
   0723 C0 03               727 	push	ar3
   0725 12 0B C1            728 	lcall	_SPI_Byte
   0728 AC 82               729 	mov	r4,dpl
   072A D0 03               730 	pop	ar3
                            731 ;	genAssign
   072C 8C 02               732 	mov	ar2,r4
                    0017    733 	C$sd.c$11$2$2 ==.
                            734 ;	sd.c:11: if(j != 0xff)         /* if it isn't 0xff, it is a response */
                            735 ;	genCmpEq
                            736 ;	gencjneshort
   072E BA FF 02            737 	cjne	r2,#0xFF,00114$
                            738 ;	Peephole 112.b	changed ljmp to sjmp
   0731 80 03               739 	sjmp	00105$
   0733                     740 00114$:
                    001C    741 	C$sd.c$12$2$2 ==.
                            742 ;	sd.c:12: return(j);
                            743 ;	genRet
   0733 8A 82               744 	mov	dpl,r2
                            745 ;	Peephole 112.b	changed ljmp to sjmp
                            746 ;	Peephole 251.b	replaced sjmp to ret with ret
   0735 22                  747 	ret
   0736                     748 00105$:
                    001F    749 	C$sd.c$8$1$1 ==.
                            750 ;	sd.c:8: for( i=0; i<8; i++ )
                            751 ;	genPlus
                            752 ;     genPlusIncr
   0736 0B                  753 	inc	r3
                            754 ;	Peephole 112.b	changed ljmp to sjmp
   0737 80 E2               755 	sjmp	00103$
   0739                     756 00106$:
                    0022    757 	C$sd.c$14$1$1 ==.
                            758 ;	sd.c:14: return(j);
                            759 ;	genRet
   0739 8A 82               760 	mov	dpl,r2
                            761 ;	Peephole 300	removed redundant label 00107$
                    0024    762 	C$sd.c$15$1$1 ==.
                    0024    763 	XG$SD_GetR1$0$0 ==.
   073B 22                  764 	ret
                            765 ;------------------------------------------------------------
                            766 ;Allocation info for local variables in function 'SD_GetR2'
                            767 ;------------------------------------------------------------
                            768 ;R2                        Allocated with name '_SD_GetR2_R2_1_1'
                            769 ;------------------------------------------------------------
                    0025    770 	G$SD_GetR2$0$0 ==.
                    0025    771 	C$sd.c$17$1$1 ==.
                            772 ;	sd.c:17: WORD SD_GetR2()
                            773 ;	-----------------------------------------
                            774 ;	 function SD_GetR2
                            775 ;	-----------------------------------------
   073C                     776 _SD_GetR2:
                    0025    777 	C$sd.c$21$1$1 ==.
                            778 ;	sd.c:21: R2 = ((SD_GetR1())<< 8)&0xff00;
                            779 ;	genCall
   073C 12 07 17            780 	lcall	_SD_GetR1
   073F AA 82               781 	mov	r2,dpl
                            782 ;	genCast
                            783 ;	genLeftShift
                            784 ;	genLeftShiftLiteral
                            785 ;	genlshTwo
                            786 ;	peephole 177.e	removed redundant move
   0741 8A 03               787 	mov	ar3,r2
   0743 7A 00               788 	mov	r2,#0x00
                            789 ;	genAnd
   0745 78 10               790 	mov	r0,#_SD_GetR2_R2_1_1
   0747 76 00               791 	mov	@r0,#0x00
   0749 08                  792 	inc	r0
   074A A6 03               793 	mov	@r0,ar3
                    0035    794 	C$sd.c$22$1$1 ==.
                            795 ;	sd.c:22: R2 |= SPI_Byte( 0xff );
                            796 ;	genCall
   074C 75 82 FF            797 	mov	dpl,#0xFF
   074F 12 0B C1            798 	lcall	_SPI_Byte
   0752 AA 82               799 	mov	r2,dpl
                            800 ;	genCast
   0754 7B 00               801 	mov	r3,#0x00
                            802 ;	genOr
   0756 78 10               803 	mov	r0,#_SD_GetR2_R2_1_1
   0758 EA                  804 	mov	a,r2
   0759 46                  805 	orl	a,@r0
   075A F6                  806 	mov	@r0,a
   075B EB                  807 	mov	a,r3
   075C 08                  808 	inc	r0
   075D 46                  809 	orl	a,@r0
   075E F6                  810 	mov	@r0,a
                    0048    811 	C$sd.c$23$1$1 ==.
                            812 ;	sd.c:23: return( R2 );
                            813 ;	genRet
   075F 78 10               814 	mov	r0,#_SD_GetR2_R2_1_1
   0761 86 82               815 	mov	dpl,@r0
   0763 08                  816 	inc	r0
   0764 86 83               817 	mov	dph,@r0
                            818 ;	Peephole 300	removed redundant label 00101$
                    004F    819 	C$sd.c$24$1$1 ==.
                    004F    820 	XG$SD_GetR2$0$0 ==.
   0766 22                  821 	ret
                            822 ;------------------------------------------------------------
                            823 ;Allocation info for local variables in function 'SD_Command'
                            824 ;------------------------------------------------------------
                            825 ;ThisArgument              Allocated to stack - offset -6
                            826 ;ThisCommand               Allocated to registers r2 
                            827 ;Temp                      Allocated to stack - offset 1
                            828 ;i                         Allocated to registers r3 
                            829 ;------------------------------------------------------------
                    0050    830 	G$SD_Command$0$0 ==.
                    0050    831 	C$sd.c$26$1$1 ==.
                            832 ;	sd.c:26: BYTE SD_Command( BYTE ThisCommand, ULONG ThisArgument )
                            833 ;	-----------------------------------------
                            834 ;	 function SD_Command
                            835 ;	-----------------------------------------
   0767                     836 _SD_Command:
   0767 C0 0F               837 	push	_bp
                            838 ;	peephole 177.h	optimized mov sequence
   0769 E5 81               839 	mov	a,sp
   076B F5 0F               840 	mov	_bp,a
   076D 24 04               841 	add	a,#0x04
   076F F5 81               842 	mov	sp,a
                            843 ;	genReceive
   0771 AA 82               844 	mov	r2,dpl
                    005C    845 	C$sd.c$32$1$1 ==.
                            846 ;	sd.c:32: SPI_EnableCS();
                            847 ;	genCall
   0773 C0 02               848 	push	ar2
   0775 12 0B CD            849 	lcall	_SPI_EnableCS
   0778 D0 02               850 	pop	ar2
                    0063    851 	C$sd.c$35$1$1 ==.
                            852 ;	sd.c:35: SPI_Byte( 0xFF );
                            853 ;	genCall
   077A 75 82 FF            854 	mov	dpl,#0xFF
   077D C0 02               855 	push	ar2
   077F 12 0B C1            856 	lcall	_SPI_Byte
   0782 D0 02               857 	pop	ar2
                    006D    858 	C$sd.c$38$1$1 ==.
                            859 ;	sd.c:38: SPI_Byte(0x40 | ThisCommand);
                            860 ;	genOr
   0784 74 40               861 	mov	a,#0x40
   0786 4A                  862 	orl	a,r2
   0787 F5 82               863 	mov	dpl,a
                            864 ;	genCall
   0789 C0 02               865 	push	ar2
   078B 12 0B C1            866 	lcall	_SPI_Byte
   078E D0 02               867 	pop	ar2
                    0079    868 	C$sd.c$41$1$1 ==.
                            869 ;	sd.c:41: Temp.ul = ThisArgument;
                            870 ;	genAddrOf
   0790 E5 0F               871 	mov	a,_bp
   0792 24 01               872 	add	a,#0x01
                            873 ;	genPointerSet
                            874 ;	genNearPointerSet
                            875 ;	Peephole 239	used a instead of acc
   0794 F8                  876 	mov	r0,a
   0795 E5 0F               877 	mov	a,_bp
   0797 24 FA               878 	add	a,#0xfffffffa
   0799 F9                  879 	mov	r1,a
   079A E7                  880 	mov	a,@r1
   079B F6                  881 	mov	@r0,a
   079C 08                  882 	inc	r0
   079D 09                  883 	inc	r1
   079E E7                  884 	mov	a,@r1
   079F F6                  885 	mov	@r0,a
   07A0 08                  886 	inc	r0
   07A1 09                  887 	inc	r1
   07A2 E7                  888 	mov	a,@r1
   07A3 F6                  889 	mov	@r0,a
   07A4 08                  890 	inc	r0
   07A5 09                  891 	inc	r1
   07A6 E7                  892 	mov	a,@r1
   07A7 F6                  893 	mov	@r0,a
                    0091    894 	C$sd.c$42$1$1 ==.
                            895 ;	sd.c:42: for( i=0; i<4; i++ )
                            896 ;	genAssign
   07A8 7B 00               897 	mov	r3,#0x00
   07AA                     898 00101$:
                            899 ;	genCmpLt
                            900 ;	genCmp
   07AA BB 04 00            901 	cjne	r3,#0x04,00113$
   07AD                     902 00113$:
                            903 ;	genIfxJump
                            904 ;	Peephole 108.a	removed ljmp by inverse jump logic
   07AD 50 16               905 	jnc	00104$
                            906 ;	Peephole 300	removed redundant label 00114$
                    0098    907 	C$sd.c$43$1$1 ==.
                            908 ;	sd.c:43: SPI_Byte( Temp.b[ i ] );
                            909 ;	genAddrOf
                            910 ;	Peephole 212	reduced add sequence to inc
   07AF AC 0F               911 	mov	r4,_bp
   07B1 0C                  912 	inc	r4
                            913 ;	genPlus
                            914 ;	Peephole 236.g	used r3 instead of ar3
   07B2 EB                  915 	mov	a,r3
                            916 ;	Peephole 236.a	used r4 instead of ar4
   07B3 2C                  917 	add	a,r4
   07B4 F8                  918 	mov	r0,a
                            919 ;	genPointerGet
                            920 ;	genNearPointerGet
   07B5 86 82               921 	mov	dpl,@r0
                            922 ;	genCall
   07B7 C0 02               923 	push	ar2
   07B9 C0 03               924 	push	ar3
   07BB 12 0B C1            925 	lcall	_SPI_Byte
   07BE D0 03               926 	pop	ar3
   07C0 D0 02               927 	pop	ar2
                    00AB    928 	C$sd.c$42$1$1 ==.
                            929 ;	sd.c:42: for( i=0; i<4; i++ )
                            930 ;	genPlus
                            931 ;     genPlusIncr
   07C2 0B                  932 	inc	r3
                            933 ;	Peephole 112.b	changed ljmp to sjmp
   07C3 80 E5               934 	sjmp	00101$
   07C5                     935 00104$:
                    00AE    936 	C$sd.c$46$1$1 ==.
                            937 ;	sd.c:46: SPI_Byte((ThisCommand == CMD_GO_IDLE_STATE)? 0x95:0xFF);
                            938 ;	genNot
   07C5 EA                  939 	mov	a,r2
   07C6 B4 01 00            940 	cjne	a,#0x01,00115$
   07C9                     941 00115$:
   07C9 E4                  942 	clr	a
   07CA 33                  943 	rlc	a
                            944 ;	genIfx
   07CB FA                  945 	mov	r2,a
                            946 ;	Peephole 105	removed redundant mov
                            947 ;	genIfxJump
                            948 ;	Peephole 108.c	removed ljmp by inverse jump logic
   07CC 60 04               949 	jz	00107$
                            950 ;	Peephole 300	removed redundant label 00116$
                            951 ;	genAssign
   07CE 7A 95               952 	mov	r2,#0x95
                            953 ;	Peephole 112.b	changed ljmp to sjmp
   07D0 80 02               954 	sjmp	00108$
   07D2                     955 00107$:
                            956 ;	genAssign
   07D2 7A FF               957 	mov	r2,#0xFF
   07D4                     958 00108$:
                            959 ;	genCall
   07D4 8A 82               960 	mov	dpl,r2
   07D6 12 0B C1            961 	lcall	_SPI_Byte
                    00C2    962 	C$sd.c$49$1$1 ==.
                            963 ;	sd.c:49: SPI_Byte( 0xFF );
                            964 ;	genCall
   07D9 75 82 FF            965 	mov	dpl,#0xFF
   07DC 12 0B C1            966 	lcall	_SPI_Byte
                    00C8    967 	C$sd.c$50$1$1 ==.
                            968 ;	sd.c:50: return( 0 );
                            969 ;	genRet
   07DF 75 82 00            970 	mov	dpl,#0x00
                            971 ;	Peephole 300	removed redundant label 00105$
   07E2 85 0F 81            972 	mov	sp,_bp
   07E5 D0 0F               973 	pop	_bp
                    00D0    974 	C$sd.c$51$1$1 ==.
                    00D0    975 	XG$SD_Command$0$0 ==.
   07E7 22                  976 	ret
                            977 ;------------------------------------------------------------
                            978 ;Allocation info for local variables in function 'Delay'
                            979 ;------------------------------------------------------------
                            980 ;MilSec                    Allocated to registers r2 r3 
                            981 ;i                         Allocated to registers r6 r7 
                            982 ;j                         Allocated to registers r4 r5 
                            983 ;------------------------------------------------------------
                    00D1    984 	G$Delay$0$0 ==.
                    00D1    985 	C$sd.c$53$1$1 ==.
                            986 ;	sd.c:53: void Delay( WORD MilSec )
                            987 ;	-----------------------------------------
                            988 ;	 function Delay
                            989 ;	-----------------------------------------
   07E8                     990 _Delay:
                            991 ;	genReceive
   07E8 AA 82               992 	mov	r2,dpl
   07EA AB 83               993 	mov	r3,dph
                    00D5    994 	C$sd.c$56$1$1 ==.
                            995 ;	sd.c:56: for (j=0;j<MilSec;j++)
                            996 ;	genAssign
   07EC 7C 00               997 	mov	r4,#0x00
   07EE 7D 00               998 	mov	r5,#0x00
   07F0                     999 00104$:
                           1000 ;	genCmpLt
                           1001 ;	genCmp
   07F0 C3                 1002 	clr	c
   07F1 EC                 1003 	mov	a,r4
   07F2 9A                 1004 	subb	a,r2
   07F3 ED                 1005 	mov	a,r5
   07F4 9B                 1006 	subb	a,r3
                           1007 ;	genIfxJump
                           1008 ;	Peephole 108.a	removed ljmp by inverse jump logic
   07F5 50 14              1009 	jnc	00108$
                           1010 ;	Peephole 300	removed redundant label 00116$
                    00E0   1011 	C$sd.c$57$1$1 ==.
                           1012 ;	sd.c:57: for (i=0xFC65;i<0xFFFF;i++);
                           1013 ;	genAssign
   07F7 7E 9A              1014 	mov	r6,#0x9A
   07F9 7F 03              1015 	mov	r7,#0x03
   07FB                    1016 00103$:
                           1017 ;	genMinus
                           1018 ;	genMinusDec
   07FB 1E                 1019 	dec	r6
   07FC BE FF 01           1020 	cjne	r6,#0xff,00117$
   07FF 1F                 1021 	dec	r7
   0800                    1022 00117$:
                           1023 ;	genIfx
   0800 EE                 1024 	mov	a,r6
   0801 4F                 1025 	orl	a,r7
                           1026 ;	genIfxJump
                           1027 ;	Peephole 108.b	removed ljmp by inverse jump logic
   0802 70 F7              1028 	jnz	00103$
                           1029 ;	Peephole 300	removed redundant label 00118$
                    00ED   1030 	C$sd.c$56$1$1 ==.
                           1031 ;	sd.c:56: for (j=0;j<MilSec;j++)
                           1032 ;	genPlus
                           1033 ;     genPlusIncr
                           1034 ;	tail increment optimized (range 7)
   0804 0C                 1035 	inc	r4
   0805 BC 00 E8           1036 	cjne	r4,#0x00,00104$
   0808 0D                 1037 	inc	r5
                           1038 ;	Peephole 112.b	changed ljmp to sjmp
   0809 80 E5              1039 	sjmp	00104$
   080B                    1040 00108$:
                    00F4   1041 	C$sd.c$58$1$1 ==.
                    00F4   1042 	XG$Delay$0$0 ==.
   080B 22                 1043 	ret
                           1044 ;------------------------------------------------------------
                           1045 ;Allocation info for local variables in function 'SD_Init'
                           1046 ;------------------------------------------------------------
                           1047 ;CardStatus                Allocated to registers r2 r3 
                           1048 ;Count                     Allocated to registers r2 r3 
                           1049 ;------------------------------------------------------------
                    00F5   1050 	G$SD_Init$0$0 ==.
                    00F5   1051 	C$sd.c$60$1$1 ==.
                           1052 ;	sd.c:60: BYTE SD_Init()
                           1053 ;	-----------------------------------------
                           1054 ;	 function SD_Init
                           1055 ;	-----------------------------------------
   080C                    1056 _SD_Init:
                    00F5   1057 	C$sd.c$68$1$1 ==.
                           1058 ;	sd.c:68: SPI_Init();
                           1059 ;	genCall
   080C 12 0B D3           1060 	lcall	_SPI_Init
                    00F8   1061 	C$sd.c$71$1$1 ==.
                           1062 ;	sd.c:71: SPI_DisableCS();
                           1063 ;	genCall
   080F 12 0B D0           1064 	lcall	_SPI_DisableCS
                    00FB   1065 	C$sd.c$76$1$1 ==.
                           1066 ;	sd.c:76: for(Count=0;Count<100;Count++)
                           1067 ;	genAssign
   0812 7A 64              1068 	mov	r2,#0x64
   0814 7B 00              1069 	mov	r3,#0x00
   0816                    1070 00123$:
                    00FF   1071 	C$sd.c$77$1$1 ==.
                           1072 ;	sd.c:77: SPI_Byte( 0xFF );
                           1073 ;	genCall
   0816 75 82 FF           1074 	mov	dpl,#0xFF
   0819 C0 02              1075 	push	ar2
   081B C0 03              1076 	push	ar3
   081D 12 0B C1           1077 	lcall	_SPI_Byte
   0820 D0 03              1078 	pop	ar3
   0822 D0 02              1079 	pop	ar2
                           1080 ;	genMinus
                           1081 ;	genMinusDec
   0824 1A                 1082 	dec	r2
   0825 BA FF 01           1083 	cjne	r2,#0xff,00140$
   0828 1B                 1084 	dec	r3
   0829                    1085 00140$:
                    0112   1086 	C$sd.c$76$1$1 ==.
                           1087 ;	sd.c:76: for(Count=0;Count<100;Count++)
                           1088 ;	genIfx
   0829 EA                 1089 	mov	a,r2
   082A 4B                 1090 	orl	a,r3
                           1091 ;	genIfxJump
                           1092 ;	Peephole 108.b	removed ljmp by inverse jump logic
   082B 70 E9              1093 	jnz	00123$
                           1094 ;	Peephole 300	removed redundant label 00141$
                    0116   1095 	C$sd.c$80$1$1 ==.
                           1096 ;	sd.c:80: SPI_EnableCS();
                           1097 ;	genCall
   082D 12 0B CD           1098 	lcall	_SPI_EnableCS
                    0119   1099 	C$sd.c$86$1$1 ==.
                           1100 ;	sd.c:86: CardType = 0;
                           1101 ;	genAssign
   0830 90 30 00           1102 	mov	dptr,#_CardType
   0833 E4                 1103 	clr	a
   0834 F0                 1104 	movx	@dptr,a
   0835 A3                 1105 	inc	dptr
   0836 F0                 1106 	movx	@dptr,a
                    0120   1107 	C$sd.c$89$1$1 ==.
                           1108 ;	sd.c:89: do
                           1109 ;	genAssign
   0837 7A E8              1110 	mov	r2,#0xE8
   0839 7B 03              1111 	mov	r3,#0x03
   083B                    1112 00102$:
                    0124   1113 	C$sd.c$91$2$2 ==.
                           1114 ;	sd.c:91: Delay(1);
                           1115 ;	genCall
                           1116 ;	Peephole 182.b	used 16 bit load of dptr
   083B 90 00 01           1117 	mov	dptr,#0x0001
   083E C0 02              1118 	push	ar2
   0840 C0 03              1119 	push	ar3
   0842 12 07 E8           1120 	lcall	_Delay
   0845 D0 03              1121 	pop	ar3
   0847 D0 02              1122 	pop	ar2
                    0132   1123 	C$sd.c$92$2$2 ==.
                           1124 ;	sd.c:92: SD_Command( CMD_GO_IDLE_STATE, 0 );
                           1125 ;	genIpush
   0849 C0 02              1126 	push	ar2
   084B C0 03              1127 	push	ar3
                           1128 ;	Peephole 181	changed mov to clr
   084D E4                 1129 	clr	a
   084E C0 E0              1130 	push	acc
   0850 C0 E0              1131 	push	acc
   0852 C0 E0              1132 	push	acc
   0854 C0 E0              1133 	push	acc
                           1134 ;	genCall
   0856 75 82 00           1135 	mov	dpl,#0x00
   0859 12 07 67           1136 	lcall	_SD_Command
   085C E5 81              1137 	mov	a,sp
   085E 24 FC              1138 	add	a,#0xfc
   0860 F5 81              1139 	mov	sp,a
   0862 D0 03              1140 	pop	ar3
   0864 D0 02              1141 	pop	ar2
                    014F   1142 	C$sd.c$93$1$1 ==.
                           1143 ;	sd.c:93: } while((SD_GetR1() != IDLE_STATE) && (--Count));
                           1144 ;	genCall
   0866 C0 02              1145 	push	ar2
   0868 C0 03              1146 	push	ar3
   086A 12 07 17           1147 	lcall	_SD_GetR1
   086D AC 82              1148 	mov	r4,dpl
   086F D0 03              1149 	pop	ar3
   0871 D0 02              1150 	pop	ar2
                           1151 ;	genCmpEq
                           1152 ;	gencjneshort
   0873 BC 01 02           1153 	cjne	r4,#0x01,00142$
                           1154 ;	Peephole 112.b	changed ljmp to sjmp
   0876 80 09              1155 	sjmp	00104$
   0878                    1156 00142$:
                           1157 ;	genMinus
                           1158 ;	genMinusDec
   0878 1A                 1159 	dec	r2
   0879 BA FF 01           1160 	cjne	r2,#0xff,00143$
   087C 1B                 1161 	dec	r3
   087D                    1162 00143$:
                           1163 ;	genIfx
   087D EA                 1164 	mov	a,r2
   087E 4B                 1165 	orl	a,r3
                           1166 ;	genIfxJump
                           1167 ;	Peephole 108.b	removed ljmp by inverse jump logic
   087F 70 BA              1168 	jnz	00102$
                           1169 ;	Peephole 300	removed redundant label 00144$
   0881                    1170 00104$:
                    016A   1171 	C$sd.c$96$1$1 ==.
                           1172 ;	sd.c:96: if( !Count )
                           1173 ;	genIfx
   0881 EA                 1174 	mov	a,r2
   0882 4B                 1175 	orl	a,r3
                           1176 ;	genIfxJump
                           1177 ;	Peephole 108.b	removed ljmp by inverse jump logic
   0883 70 04              1178 	jnz	00106$
                           1179 ;	Peephole 300	removed redundant label 00145$
                    016E   1180 	C$sd.c$97$1$1 ==.
                           1181 ;	sd.c:97: return( SD_TIME_OUT );
                           1182 ;	genRet
   0885 75 82 01           1183 	mov	dpl,#0x01
                           1184 ;	Peephole 251.a	replaced ljmp to ret with ret
   0888 22                 1185 	ret
   0889                    1186 00106$:
                    0172   1187 	C$sd.c$106$1$1 ==.
                           1188 ;	sd.c:106: SD_Command( CMD_APP_CMD, 0 );
                           1189 ;	genIpush
                           1190 ;	Peephole 181	changed mov to clr
   0889 E4                 1191 	clr	a
   088A C0 E0              1192 	push	acc
   088C C0 E0              1193 	push	acc
   088E C0 E0              1194 	push	acc
   0890 C0 E0              1195 	push	acc
                           1196 ;	genCall
   0892 75 82 37           1197 	mov	dpl,#0x37
   0895 12 07 67           1198 	lcall	_SD_Command
   0898 E5 81              1199 	mov	a,sp
   089A 24 FC              1200 	add	a,#0xfc
   089C F5 81              1201 	mov	sp,a
                    0187   1202 	C$sd.c$107$1$1 ==.
                           1203 ;	sd.c:107: SD_Command( ACMD_SEND_OP_COND, 0 );
                           1204 ;	genIpush
                           1205 ;	Peephole 181	changed mov to clr
   089E E4                 1206 	clr	a
   089F C0 E0              1207 	push	acc
   08A1 C0 E0              1208 	push	acc
   08A3 C0 E0              1209 	push	acc
   08A5 C0 E0              1210 	push	acc
                           1211 ;	genCall
   08A7 75 82 29           1212 	mov	dpl,#0x29
   08AA 12 07 67           1213 	lcall	_SD_Command
   08AD E5 81              1214 	mov	a,sp
   08AF 24 FC              1215 	add	a,#0xfc
   08B1 F5 81              1216 	mov	sp,a
                    019C   1217 	C$sd.c$108$1$1 ==.
                           1218 ;	sd.c:108: if( SD_GetR1() <= 1 )
                           1219 ;	genCall
   08B3 12 07 17           1220 	lcall	_SD_GetR1
                           1221 ;	genCmpGt
                           1222 ;	genCmp
                           1223 ;	genIfxJump
                           1224 ;	Peephole 132.b	optimized genCmpGt by inverse logic (acc differs)
                           1225 ;	peephole 177.g	optimized mov sequence
   08B6 E5 82              1226 	mov	a,dpl
   08B8 FA                 1227 	mov	r2,a
   08B9 24 FE              1228 	add	a,#0xff - 0x01
                           1229 ;	Peephole 112.b	changed ljmp to sjmp
                           1230 ;	Peephole 160.a	removed sjmp by inverse jump logic
   08BB 40 0B              1231 	jc	00108$
                           1232 ;	Peephole 300	removed redundant label 00146$
                    01A6   1233 	C$sd.c$110$2$3 ==.
                           1234 ;	sd.c:110: CardType = 2;
                           1235 ;	genAssign
   08BD 90 30 00           1236 	mov	dptr,#_CardType
   08C0 74 02              1237 	mov	a,#0x02
   08C2 F0                 1238 	movx	@dptr,a
   08C3 E4                 1239 	clr	a
   08C4 A3                 1240 	inc	dptr
   08C5 F0                 1241 	movx	@dptr,a
                           1242 ;	Peephole 112.b	changed ljmp to sjmp
   08C6 80 09              1243 	sjmp	00134$
   08C8                    1244 00108$:
                    01B1   1245 	C$sd.c$114$2$4 ==.
                           1246 ;	sd.c:114: CardType = 1;
                           1247 ;	genAssign
   08C8 90 30 00           1248 	mov	dptr,#_CardType
   08CB 74 01              1249 	mov	a,#0x01
   08CD F0                 1250 	movx	@dptr,a
   08CE E4                 1251 	clr	a
   08CF A3                 1252 	inc	dptr
   08D0 F0                 1253 	movx	@dptr,a
                    01BA   1254 	C$sd.c$118$1$1 ==.
                           1255 ;	sd.c:118: do
   08D1                    1256 00134$:
                           1257 ;	genAssign
   08D1 7A D0              1258 	mov	r2,#0xD0
   08D3 7B 07              1259 	mov	r3,#0x07
   08D5                    1260 00114$:
                    01BE   1261 	C$sd.c$120$2$5 ==.
                           1262 ;	sd.c:120: Delay(1);
                           1263 ;	genCall
                           1264 ;	Peephole 182.b	used 16 bit load of dptr
   08D5 90 00 01           1265 	mov	dptr,#0x0001
   08D8 C0 02              1266 	push	ar2
   08DA C0 03              1267 	push	ar3
   08DC 12 07 E8           1268 	lcall	_Delay
   08DF D0 03              1269 	pop	ar3
   08E1 D0 02              1270 	pop	ar2
                    01CC   1271 	C$sd.c$121$2$5 ==.
                           1272 ;	sd.c:121: if( CardType == 2 )
                           1273 ;	genAssign
   08E3 90 30 00           1274 	mov	dptr,#_CardType
   08E6 E0                 1275 	movx	a,@dptr
   08E7 FC                 1276 	mov	r4,a
   08E8 A3                 1277 	inc	dptr
   08E9 E0                 1278 	movx	a,@dptr
   08EA FD                 1279 	mov	r5,a
                           1280 ;	genCmpEq
                           1281 ;	gencjneshort
                           1282 ;	Peephole 112.b	changed ljmp to sjmp
                           1283 ;	Peephole 198.a	optimized misc jump sequence
   08EB BC 02 3F           1284 	cjne	r4,#0x02,00111$
   08EE BD 00 3C           1285 	cjne	r5,#0x00,00111$
                           1286 ;	Peephole 200.b	removed redundant sjmp
                           1287 ;	Peephole 300	removed redundant label 00147$
                           1288 ;	Peephole 300	removed redundant label 00148$
                    01DA   1289 	C$sd.c$123$3$6 ==.
                           1290 ;	sd.c:123: SD_Command( CMD_APP_CMD, 0 );
                           1291 ;	genIpush
   08F1 C0 02              1292 	push	ar2
   08F3 C0 03              1293 	push	ar3
                           1294 ;	Peephole 181	changed mov to clr
   08F5 E4                 1295 	clr	a
   08F6 C0 E0              1296 	push	acc
   08F8 C0 E0              1297 	push	acc
   08FA C0 E0              1298 	push	acc
   08FC C0 E0              1299 	push	acc
                           1300 ;	genCall
   08FE 75 82 37           1301 	mov	dpl,#0x37
   0901 12 07 67           1302 	lcall	_SD_Command
   0904 E5 81              1303 	mov	a,sp
   0906 24 FC              1304 	add	a,#0xfc
   0908 F5 81              1305 	mov	sp,a
   090A D0 03              1306 	pop	ar3
   090C D0 02              1307 	pop	ar2
                    01F7   1308 	C$sd.c$124$3$6 ==.
                           1309 ;	sd.c:124: SD_Command( ACMD_SEND_OP_COND, 0 );
                           1310 ;	genIpush
   090E C0 02              1311 	push	ar2
   0910 C0 03              1312 	push	ar3
                           1313 ;	Peephole 181	changed mov to clr
   0912 E4                 1314 	clr	a
   0913 C0 E0              1315 	push	acc
   0915 C0 E0              1316 	push	acc
   0917 C0 E0              1317 	push	acc
   0919 C0 E0              1318 	push	acc
                           1319 ;	genCall
   091B 75 82 29           1320 	mov	dpl,#0x29
   091E 12 07 67           1321 	lcall	_SD_Command
   0921 E5 81              1322 	mov	a,sp
   0923 24 FC              1323 	add	a,#0xfc
   0925 F5 81              1324 	mov	sp,a
   0927 D0 03              1325 	pop	ar3
   0929 D0 02              1326 	pop	ar2
                           1327 ;	Peephole 112.b	changed ljmp to sjmp
   092B 80 1D              1328 	sjmp	00115$
   092D                    1329 00111$:
                    0216   1330 	C$sd.c$128$3$7 ==.
                           1331 ;	sd.c:128: SD_Command( CMD_SEND_OP_COND, 0 );
                           1332 ;	genIpush
   092D C0 02              1333 	push	ar2
   092F C0 03              1334 	push	ar3
                           1335 ;	Peephole 181	changed mov to clr
   0931 E4                 1336 	clr	a
   0932 C0 E0              1337 	push	acc
   0934 C0 E0              1338 	push	acc
   0936 C0 E0              1339 	push	acc
   0938 C0 E0              1340 	push	acc
                           1341 ;	genCall
   093A 75 82 01           1342 	mov	dpl,#0x01
   093D 12 07 67           1343 	lcall	_SD_Command
   0940 E5 81              1344 	mov	a,sp
   0942 24 FC              1345 	add	a,#0xfc
   0944 F5 81              1346 	mov	sp,a
   0946 D0 03              1347 	pop	ar3
   0948 D0 02              1348 	pop	ar2
   094A                    1349 00115$:
                    0233   1350 	C$sd.c$130$1$1 ==.
                           1351 ;	sd.c:130: } while(SD_GetR1() && --Count);
                           1352 ;	genCall
   094A C0 02              1353 	push	ar2
   094C C0 03              1354 	push	ar3
   094E 12 07 17           1355 	lcall	_SD_GetR1
   0951 E5 82              1356 	mov	a,dpl
   0953 D0 03              1357 	pop	ar3
   0955 D0 02              1358 	pop	ar2
                           1359 ;	genIfx
                           1360 ;	genIfxJump
                           1361 ;	Peephole 108.c	removed ljmp by inverse jump logic
   0957 60 0C              1362 	jz	00116$
                           1363 ;	Peephole 300	removed redundant label 00149$
                           1364 ;	genMinus
                           1365 ;	genMinusDec
   0959 1A                 1366 	dec	r2
   095A BA FF 01           1367 	cjne	r2,#0xff,00150$
   095D 1B                 1368 	dec	r3
   095E                    1369 00150$:
                           1370 ;	genIfx
   095E EA                 1371 	mov	a,r2
   095F 4B                 1372 	orl	a,r3
                           1373 ;	genIfxJump
   0960 60 03              1374 	jz	00151$
   0962 02 08 D5           1375 	ljmp	00114$
   0965                    1376 00151$:
   0965                    1377 00116$:
                    024E   1378 	C$sd.c$132$1$1 ==.
                           1379 ;	sd.c:132: if( !Count )
                           1380 ;	genIfx
   0965 EA                 1381 	mov	a,r2
   0966 4B                 1382 	orl	a,r3
                           1383 ;	genIfxJump
                           1384 ;	Peephole 108.b	removed ljmp by inverse jump logic
   0967 70 04              1385 	jnz	00118$
                           1386 ;	Peephole 300	removed redundant label 00152$
                    0252   1387 	C$sd.c$133$1$1 ==.
                           1388 ;	sd.c:133: return( SD_TIME_OUT );
                           1389 ;	genRet
   0969 75 82 01           1390 	mov	dpl,#0x01
                           1391 ;	Peephole 112.b	changed ljmp to sjmp
                           1392 ;	Peephole 251.b	replaced sjmp to ret with ret
   096C 22                 1393 	ret
   096D                    1394 00118$:
                    0256   1395 	C$sd.c$138$1$1 ==.
                           1396 ;	sd.c:138: SD_Command( CMD_SEND_STATUS, 0 );
                           1397 ;	genIpush
                           1398 ;	Peephole 181	changed mov to clr
   096D E4                 1399 	clr	a
   096E C0 E0              1400 	push	acc
   0970 C0 E0              1401 	push	acc
   0972 C0 E0              1402 	push	acc
   0974 C0 E0              1403 	push	acc
                           1404 ;	genCall
   0976 75 82 0D           1405 	mov	dpl,#0x0D
   0979 12 07 67           1406 	lcall	_SD_Command
   097C E5 81              1407 	mov	a,sp
   097E 24 FC              1408 	add	a,#0xfc
   0980 F5 81              1409 	mov	sp,a
                    026B   1410 	C$sd.c$139$1$1 ==.
                           1411 ;	sd.c:139: CardStatus = SD_GetR2();
                           1412 ;	genCall
   0982 12 07 3C           1413 	lcall	_SD_GetR2
   0985 AA 82              1414 	mov	r2,dpl
   0987 AB 83              1415 	mov	r3,dph
                           1416 ;	genAssign
                    0272   1417 	C$sd.c$141$1$1 ==.
                           1418 ;	sd.c:141: if( CardStatus )
                           1419 ;	genIfx
   0989 EA                 1420 	mov	a,r2
   098A 4B                 1421 	orl	a,r3
                           1422 ;	genIfxJump
                           1423 ;	Peephole 108.c	removed ljmp by inverse jump logic
   098B 60 04              1424 	jz	00120$
                           1425 ;	Peephole 300	removed redundant label 00153$
                    0276   1426 	C$sd.c$142$1$1 ==.
                           1427 ;	sd.c:142: return( SD_ERROR );
                           1428 ;	genRet
   098D 75 82 02           1429 	mov	dpl,#0x02
                           1430 ;	Peephole 112.b	changed ljmp to sjmp
                           1431 ;	Peephole 251.b	replaced sjmp to ret with ret
   0990 22                 1432 	ret
   0991                    1433 00120$:
                    027A   1434 	C$sd.c$157$1$1 ==.
                           1435 ;	sd.c:157: SPI_Initf();
                           1436 ;	genCall
   0991 12 0B DA           1437 	lcall	_SPI_Initf
                    027D   1438 	C$sd.c$160$1$1 ==.
                           1439 ;	sd.c:160: SPI_DisableCS();
                           1440 ;	genCall
   0994 12 0B D0           1441 	lcall	_SPI_DisableCS
                    0280   1442 	C$sd.c$163$1$1 ==.
                           1443 ;	sd.c:163: return( 0 );
                           1444 ;	genRet
   0997 75 82 00           1445 	mov	dpl,#0x00
                           1446 ;	Peephole 300	removed redundant label 00124$
                    0283   1447 	C$sd.c$164$1$1 ==.
                    0283   1448 	XG$SD_Init$0$0 ==.
   099A 22                 1449 	ret
                           1450 ;------------------------------------------------------------
                           1451 ;Allocation info for local variables in function 'SD_ReadSector'
                           1452 ;------------------------------------------------------------
                           1453 ;Buffer                    Allocated to stack - offset -5
                           1454 ;SectorNumber              Allocated to registers r2 r3 r4 r5 
                           1455 ;c                         Allocated to registers r2 
                           1456 ;i                         Allocated to registers r3 
                           1457 ;count                     Allocated to registers r4 r5 
                           1458 ;------------------------------------------------------------
                    0284   1459 	G$SD_ReadSector$0$0 ==.
                    0284   1460 	C$sd.c$167$1$1 ==.
                           1461 ;	sd.c:167: BYTE SD_ReadSector( ULONG SectorNumber, BYTE *Buffer )
                           1462 ;	-----------------------------------------
                           1463 ;	 function SD_ReadSector
                           1464 ;	-----------------------------------------
   099B                    1465 _SD_ReadSector:
   099B C0 0F              1466 	push	_bp
   099D 85 81 0F           1467 	mov	_bp,sp
                           1468 ;     genReceive
   09A0 AA 82              1469 	mov	r2,dpl
   09A2 AB 83              1470 	mov	r3,dph
   09A4 AC F0              1471 	mov	r4,b
   09A6 FD                 1472 	mov	r5,a
                    0290   1473 	C$sd.c$173$1$1 ==.
                           1474 ;	sd.c:173: SD_Command( CMD_READ_SINGLE_BLOCK, SectorNumber << 9 );
                           1475 ;	genLeftShift
                           1476 ;	genLeftShiftLiteral
                           1477 ;	genlshFour
   09A7 EA                 1478 	mov	a,r2
                           1479 ;	Peephole 254	optimized left shift
   09A8 2A                 1480 	add	a,r2
   09A9 CB                 1481 	xch	a,r3
   09AA 33                 1482 	rlc	a
   09AB CC                 1483 	xch	a,r4
   09AC 33                 1484 	rlc	a
   09AD CD                 1485 	xch	a,r5
   09AE 7A 00              1486 	mov	r2,#0x00
                           1487 ;	genIpush
   09B0 C0 02              1488 	push	ar2
   09B2 C0 03              1489 	push	ar3
   09B4 C0 04              1490 	push	ar4
   09B6 C0 05              1491 	push	ar5
                           1492 ;	genCall
   09B8 75 82 11           1493 	mov	dpl,#0x11
   09BB 12 07 67           1494 	lcall	_SD_Command
   09BE E5 81              1495 	mov	a,sp
   09C0 24 FC              1496 	add	a,#0xfc
   09C2 F5 81              1497 	mov	sp,a
                    02AD   1498 	C$sd.c$174$1$1 ==.
                           1499 ;	sd.c:174: c = SD_GetR1();
                           1500 ;	genCall
   09C4 12 07 17           1501 	lcall	_SD_GetR1
   09C7 AA 82              1502 	mov	r2,dpl
                           1503 ;	genAssign
                    02B2   1504 	C$sd.c$175$1$1 ==.
                           1505 ;	sd.c:175: i = SD_GetR1();
                           1506 ;	genCall
   09C9 C0 02              1507 	push	ar2
   09CB 12 07 17           1508 	lcall	_SD_GetR1
   09CE AB 82              1509 	mov	r3,dpl
   09D0 D0 02              1510 	pop	ar2
                           1511 ;	genAssign
                    02BB   1512 	C$sd.c$179$1$1 ==.
                           1513 ;	sd.c:179: while( (i == 0xff) && --count)
                           1514 ;	genAssign
   09D2 7C FF              1515 	mov	r4,#0xFF
   09D4 7D FF              1516 	mov	r5,#0xFF
   09D6                    1517 00102$:
                           1518 ;	genCmpEq
                           1519 ;	gencjneshort
                           1520 ;	Peephole 112.b	changed ljmp to sjmp
                           1521 ;	Peephole 198.b	optimized misc jump sequence
   09D6 BB FF 1E           1522 	cjne	r3,#0xFF,00104$
                           1523 ;	Peephole 200.b	removed redundant sjmp
                           1524 ;	Peephole 300	removed redundant label 00121$
                           1525 ;	Peephole 300	removed redundant label 00122$
                           1526 ;	genMinus
                           1527 ;	genMinusDec
   09D9 1C                 1528 	dec	r4
   09DA BC FF 01           1529 	cjne	r4,#0xff,00123$
   09DD 1D                 1530 	dec	r5
   09DE                    1531 00123$:
                           1532 ;	genIfx
   09DE EC                 1533 	mov	a,r4
   09DF 4D                 1534 	orl	a,r5
                           1535 ;	genIfxJump
                           1536 ;	Peephole 108.c	removed ljmp by inverse jump logic
   09E0 60 15              1537 	jz	00104$
                           1538 ;	Peephole 300	removed redundant label 00124$
                    02CB   1539 	C$sd.c$180$1$1 ==.
                           1540 ;	sd.c:180: i = SD_GetR1();
                           1541 ;	genCall
   09E2 C0 02              1542 	push	ar2
   09E4 C0 04              1543 	push	ar4
   09E6 C0 05              1544 	push	ar5
   09E8 12 07 17           1545 	lcall	_SD_GetR1
   09EB AE 82              1546 	mov	r6,dpl
   09ED D0 05              1547 	pop	ar5
   09EF D0 04              1548 	pop	ar4
   09F1 D0 02              1549 	pop	ar2
                           1550 ;	genAssign
   09F3 8E 03              1551 	mov	ar3,r6
                           1552 ;	Peephole 112.b	changed ljmp to sjmp
   09F5 80 DF              1553 	sjmp	00102$
   09F7                    1554 00104$:
                    02E0   1555 	C$sd.c$183$1$1 ==.
                           1556 ;	sd.c:183: if(c || i != 0xFE)
                           1557 ;	genIfx
   09F7 EA                 1558 	mov	a,r2
                           1559 ;	genIfxJump
                           1560 ;	Peephole 108.b	removed ljmp by inverse jump logic
   09F8 70 05              1561 	jnz	00105$
                           1562 ;	Peephole 300	removed redundant label 00125$
                           1563 ;	genCmpEq
                           1564 ;	gencjneshort
   09FA BB FE 02           1565 	cjne	r3,#0xFE,00126$
                           1566 ;	Peephole 112.b	changed ljmp to sjmp
   09FD 80 05              1567 	sjmp	00117$
   09FF                    1568 00126$:
   09FF                    1569 00105$:
                    02E8   1570 	C$sd.c$184$1$1 ==.
                           1571 ;	sd.c:184: return( 1 );
                           1572 ;	genRet
   09FF 75 82 01           1573 	mov	dpl,#0x01
                    02EB   1574 	C$sd.c$187$1$1 ==.
                           1575 ;	sd.c:187: for( count=0; count<SD_DATA_SIZE; count++)
                           1576 ;	Peephole 112.b	changed ljmp to sjmp
   0A02 80 57              1577 	sjmp	00111$
   0A04                    1578 00117$:
                           1579 ;	genAssign
   0A04 E5 0F              1580 	mov	a,_bp
   0A06 24 FB              1581 	add	a,#0xfffffffb
   0A08 F8                 1582 	mov	r0,a
   0A09 86 02              1583 	mov	ar2,@r0
   0A0B 08                 1584 	inc	r0
   0A0C 86 03              1585 	mov	ar3,@r0
   0A0E 08                 1586 	inc	r0
   0A0F 86 04              1587 	mov	ar4,@r0
                           1588 ;	genAssign
   0A11 7D 00              1589 	mov	r5,#0x00
   0A13 7E 02              1590 	mov	r6,#0x02
   0A15                    1591 00110$:
                    02FE   1592 	C$sd.c$188$1$1 ==.
                           1593 ;	sd.c:188: *Buffer++ = SPI_Byte(0xFF);
                           1594 ;	genCall
   0A15 75 82 FF           1595 	mov	dpl,#0xFF
   0A18 C0 02              1596 	push	ar2
   0A1A C0 03              1597 	push	ar3
   0A1C C0 04              1598 	push	ar4
   0A1E C0 05              1599 	push	ar5
   0A20 C0 06              1600 	push	ar6
   0A22 12 0B C1           1601 	lcall	_SPI_Byte
   0A25 AF 82              1602 	mov	r7,dpl
   0A27 D0 06              1603 	pop	ar6
   0A29 D0 05              1604 	pop	ar5
   0A2B D0 04              1605 	pop	ar4
   0A2D D0 03              1606 	pop	ar3
   0A2F D0 02              1607 	pop	ar2
                           1608 ;	genPointerSet
                           1609 ;	genGenPointerSet
   0A31 8A 82              1610 	mov	dpl,r2
   0A33 8B 83              1611 	mov	dph,r3
   0A35 8C F0              1612 	mov	b,r4
   0A37 EF                 1613 	mov	a,r7
   0A38 12 42 DC           1614 	lcall	__gptrput
   0A3B A3                 1615 	inc	dptr
   0A3C AA 82              1616 	mov	r2,dpl
   0A3E AB 83              1617 	mov	r3,dph
                           1618 ;	genMinus
                           1619 ;	genMinusDec
   0A40 1D                 1620 	dec	r5
   0A41 BD FF 01           1621 	cjne	r5,#0xff,00127$
   0A44 1E                 1622 	dec	r6
   0A45                    1623 00127$:
                    032E   1624 	C$sd.c$187$1$1 ==.
                           1625 ;	sd.c:187: for( count=0; count<SD_DATA_SIZE; count++)
                           1626 ;	genIfx
   0A45 ED                 1627 	mov	a,r5
   0A46 4E                 1628 	orl	a,r6
                           1629 ;	genIfxJump
                           1630 ;	Peephole 108.b	removed ljmp by inverse jump logic
   0A47 70 CC              1631 	jnz	00110$
                           1632 ;	Peephole 300	removed redundant label 00128$
                    0332   1633 	C$sd.c$191$1$1 ==.
                           1634 ;	sd.c:191: SPI_Byte(0xFF);
                           1635 ;	genCall
   0A49 75 82 FF           1636 	mov	dpl,#0xFF
   0A4C 12 0B C1           1637 	lcall	_SPI_Byte
                    0338   1638 	C$sd.c$192$1$1 ==.
                           1639 ;	sd.c:192: SPI_Byte(0xFF);
                           1640 ;	genCall
   0A4F 75 82 FF           1641 	mov	dpl,#0xFF
   0A52 12 0B C1           1642 	lcall	_SPI_Byte
                    033E   1643 	C$sd.c$195$1$1 ==.
                           1644 ;	sd.c:195: SPI_DisableCS();
                           1645 ;	genCall
   0A55 12 0B D0           1646 	lcall	_SPI_DisableCS
                    0341   1647 	C$sd.c$197$1$1 ==.
                           1648 ;	sd.c:197: return( 0 );
                           1649 ;	genRet
   0A58 75 82 00           1650 	mov	dpl,#0x00
   0A5B                    1651 00111$:
   0A5B D0 0F              1652 	pop	_bp
                    0346   1653 	C$sd.c$198$1$1 ==.
                    0346   1654 	XG$SD_ReadSector$0$0 ==.
   0A5D 22                 1655 	ret
                           1656 ;------------------------------------------------------------
                           1657 ;Allocation info for local variables in function 'SD_WriteSector'
                           1658 ;------------------------------------------------------------
                           1659 ;Buffer                    Allocated to stack - offset -5
                           1660 ;SectorNumber              Allocated to registers r2 r3 r4 r5 
                           1661 ;i                         Allocated to registers 
                           1662 ;count                     Allocated to registers r5 r6 
                           1663 ;------------------------------------------------------------
                    0347   1664 	G$SD_WriteSector$0$0 ==.
                    0347   1665 	C$sd.c$200$1$1 ==.
                           1666 ;	sd.c:200: BYTE SD_WriteSector( ULONG SectorNumber, BYTE *Buffer )
                           1667 ;	-----------------------------------------
                           1668 ;	 function SD_WriteSector
                           1669 ;	-----------------------------------------
   0A5E                    1670 _SD_WriteSector:
   0A5E C0 0F              1671 	push	_bp
   0A60 85 81 0F           1672 	mov	_bp,sp
                           1673 ;     genReceive
   0A63 AA 82              1674 	mov	r2,dpl
   0A65 AB 83              1675 	mov	r3,dph
   0A67 AC F0              1676 	mov	r4,b
   0A69 FD                 1677 	mov	r5,a
                    0353   1678 	C$sd.c$206$1$1 ==.
                           1679 ;	sd.c:206: SD_Command( CMD_WRITE_SINGLE_BLOCK, SectorNumber << 9 );
                           1680 ;	genLeftShift
                           1681 ;	genLeftShiftLiteral
                           1682 ;	genlshFour
   0A6A EA                 1683 	mov	a,r2
                           1684 ;	Peephole 254	optimized left shift
   0A6B 2A                 1685 	add	a,r2
   0A6C CB                 1686 	xch	a,r3
   0A6D 33                 1687 	rlc	a
   0A6E CC                 1688 	xch	a,r4
   0A6F 33                 1689 	rlc	a
   0A70 CD                 1690 	xch	a,r5
   0A71 7A 00              1691 	mov	r2,#0x00
                           1692 ;	genIpush
   0A73 C0 02              1693 	push	ar2
   0A75 C0 03              1694 	push	ar3
   0A77 C0 04              1695 	push	ar4
   0A79 C0 05              1696 	push	ar5
                           1697 ;	genCall
   0A7B 75 82 18           1698 	mov	dpl,#0x18
   0A7E 12 07 67           1699 	lcall	_SD_Command
   0A81 E5 81              1700 	mov	a,sp
   0A83 24 FC              1701 	add	a,#0xfc
   0A85 F5 81              1702 	mov	sp,a
                    0370   1703 	C$sd.c$207$1$1 ==.
                           1704 ;	sd.c:207: i = SD_GetR1();
                           1705 ;	genCall
   0A87 12 07 17           1706 	lcall	_SD_GetR1
                    0373   1707 	C$sd.c$210$1$1 ==.
                           1708 ;	sd.c:210: SPI_Byte( 0xFE );
                           1709 ;	genCall
   0A8A 75 82 FE           1710 	mov	dpl,#0xFE
   0A8D 12 0B C1           1711 	lcall	_SPI_Byte
                    0379   1712 	C$sd.c$213$1$1 ==.
                           1713 ;	sd.c:213: for( count= 0; count< 512; count++ )
                           1714 ;	genAssign
   0A90 E5 0F              1715 	mov	a,_bp
   0A92 24 FB              1716 	add	a,#0xfffffffb
   0A94 F8                 1717 	mov	r0,a
   0A95 86 02              1718 	mov	ar2,@r0
   0A97 08                 1719 	inc	r0
   0A98 86 03              1720 	mov	ar3,@r0
   0A9A 08                 1721 	inc	r0
   0A9B 86 04              1722 	mov	ar4,@r0
                           1723 ;	genAssign
   0A9D 7D 00              1724 	mov	r5,#0x00
   0A9F 7E 02              1725 	mov	r6,#0x02
   0AA1                    1726 00106$:
                    038A   1727 	C$sd.c$215$2$2 ==.
                           1728 ;	sd.c:215: SPI_Byte(*Buffer++);
                           1729 ;	genPointerGet
                           1730 ;	genGenPointerGet
   0AA1 8A 82              1731 	mov	dpl,r2
   0AA3 8B 83              1732 	mov	dph,r3
   0AA5 8C F0              1733 	mov	b,r4
   0AA7 12 47 8A           1734 	lcall	__gptrget
   0AAA FF                 1735 	mov	r7,a
   0AAB A3                 1736 	inc	dptr
   0AAC AA 82              1737 	mov	r2,dpl
   0AAE AB 83              1738 	mov	r3,dph
                           1739 ;	genCall
   0AB0 8F 82              1740 	mov	dpl,r7
   0AB2 C0 02              1741 	push	ar2
   0AB4 C0 03              1742 	push	ar3
   0AB6 C0 04              1743 	push	ar4
   0AB8 C0 05              1744 	push	ar5
   0ABA C0 06              1745 	push	ar6
   0ABC 12 0B C1           1746 	lcall	_SPI_Byte
   0ABF D0 06              1747 	pop	ar6
   0AC1 D0 05              1748 	pop	ar5
   0AC3 D0 04              1749 	pop	ar4
   0AC5 D0 03              1750 	pop	ar3
   0AC7 D0 02              1751 	pop	ar2
                           1752 ;	genMinus
                           1753 ;	genMinusDec
   0AC9 1D                 1754 	dec	r5
   0ACA BD FF 01           1755 	cjne	r5,#0xff,00114$
   0ACD 1E                 1756 	dec	r6
   0ACE                    1757 00114$:
                    03B7   1758 	C$sd.c$213$2$2 ==.
                           1759 ;	sd.c:213: for( count= 0; count< 512; count++ )
                           1760 ;	genIfx
   0ACE ED                 1761 	mov	a,r5
   0ACF 4E                 1762 	orl	a,r6
                           1763 ;	genIfxJump
                           1764 ;	Peephole 108.b	removed ljmp by inverse jump logic
   0AD0 70 CF              1765 	jnz	00106$
                           1766 ;	Peephole 300	removed redundant label 00115$
                    03BB   1767 	C$sd.c$218$1$1 ==.
                           1768 ;	sd.c:218: SPI_Byte(0xFF);
                           1769 ;	genCall
   0AD2 75 82 FF           1770 	mov	dpl,#0xFF
   0AD5 12 0B C1           1771 	lcall	_SPI_Byte
                    03C1   1772 	C$sd.c$219$1$1 ==.
                           1773 ;	sd.c:219: SPI_Byte(0xFF);
                           1774 ;	genCall
   0AD8 75 82 FF           1775 	mov	dpl,#0xFF
   0ADB 12 0B C1           1776 	lcall	_SPI_Byte
                    03C7   1777 	C$sd.c$222$1$1 ==.
                           1778 ;	sd.c:222: while( SPI_Byte( 0xFF ) != 0xFF)
   0ADE                    1779 00101$:
                           1780 ;	genCall
   0ADE 75 82 FF           1781 	mov	dpl,#0xFF
   0AE1 12 0B C1           1782 	lcall	_SPI_Byte
   0AE4 AA 82              1783 	mov	r2,dpl
                           1784 ;	genCmpEq
                           1785 ;	gencjneshort
   0AE6 BA FF 02           1786 	cjne	r2,#0xFF,00116$
                           1787 ;	Peephole 112.b	changed ljmp to sjmp
   0AE9 80 08              1788 	sjmp	00103$
   0AEB                    1789 00116$:
                    03D4   1790 	C$sd.c$227$1$1 ==.
                           1791 ;	sd.c:227: SPI_Byte( 0xFF );
                           1792 ;	genCall
   0AEB 75 82 FF           1793 	mov	dpl,#0xFF
   0AEE 12 0B C1           1794 	lcall	_SPI_Byte
                           1795 ;	Peephole 112.b	changed ljmp to sjmp
   0AF1 80 EB              1796 	sjmp	00101$
   0AF3                    1797 00103$:
                    03DC   1798 	C$sd.c$230$1$1 ==.
                           1799 ;	sd.c:230: SPI_DisableCS();
                           1800 ;	genCall
   0AF3 12 0B D0           1801 	lcall	_SPI_DisableCS
                    03DF   1802 	C$sd.c$231$1$1 ==.
                           1803 ;	sd.c:231: SPI_Byte( 0xFF );
                           1804 ;	genCall
   0AF6 75 82 FF           1805 	mov	dpl,#0xFF
   0AF9 12 0B C1           1806 	lcall	_SPI_Byte
                    03E5   1807 	C$sd.c$232$1$1 ==.
                           1808 ;	sd.c:232: return( 0 );
                           1809 ;	genRet
   0AFC 75 82 00           1810 	mov	dpl,#0x00
                           1811 ;	Peephole 300	removed redundant label 00107$
   0AFF D0 0F              1812 	pop	_bp
                    03EA   1813 	C$sd.c$233$1$1 ==.
                    03EA   1814 	XG$SD_WriteSector$0$0 ==.
   0B01 22                 1815 	ret
                           1816 ;------------------------------------------------------------
                           1817 ;Allocation info for local variables in function 'SD_WaitForReady'
                           1818 ;------------------------------------------------------------
                           1819 ;i                         Allocated to registers r4 
                           1820 ;j                         Allocated to registers r2 r3 
                           1821 ;------------------------------------------------------------
                    03EB   1822 	G$SD_WaitForReady$0$0 ==.
                    03EB   1823 	C$sd.c$235$1$1 ==.
                           1824 ;	sd.c:235: BYTE SD_WaitForReady()
                           1825 ;	-----------------------------------------
                           1826 ;	 function SD_WaitForReady
                           1827 ;	-----------------------------------------
   0B02                    1828 _SD_WaitForReady:
                    03EB   1829 	C$sd.c$240$1$1 ==.
                           1830 ;	sd.c:240: SPI_Byte( 0xFF );
                           1831 ;	genCall
   0B02 75 82 FF           1832 	mov	dpl,#0xFF
   0B05 12 0B C1           1833 	lcall	_SPI_Byte
                    03F1   1834 	C$sd.c$243$1$1 ==.
                           1835 ;	sd.c:243: do
                           1836 ;	genAssign
   0B08 7A F4              1837 	mov	r2,#0xF4
   0B0A 7B 01              1838 	mov	r3,#0x01
   0B0C                    1839 00102$:
                    03F5   1840 	C$sd.c$245$2$2 ==.
                           1841 ;	sd.c:245: i = SPI_Byte( 0xFF );
                           1842 ;	genCall
   0B0C 75 82 FF           1843 	mov	dpl,#0xFF
   0B0F C0 02              1844 	push	ar2
   0B11 C0 03              1845 	push	ar3
   0B13 12 0B C1           1846 	lcall	_SPI_Byte
   0B16 AC 82              1847 	mov	r4,dpl
   0B18 D0 03              1848 	pop	ar3
   0B1A D0 02              1849 	pop	ar2
                           1850 ;	genAssign
                    0405   1851 	C$sd.c$246$2$2 ==.
                           1852 ;	sd.c:246: Delay( 1 );
                           1853 ;	genCall
                           1854 ;	Peephole 182.b	used 16 bit load of dptr
   0B1C 90 00 01           1855 	mov	dptr,#0x0001
   0B1F C0 02              1856 	push	ar2
   0B21 C0 03              1857 	push	ar3
   0B23 C0 04              1858 	push	ar4
   0B25 12 07 E8           1859 	lcall	_Delay
   0B28 D0 04              1860 	pop	ar4
   0B2A D0 03              1861 	pop	ar3
   0B2C D0 02              1862 	pop	ar2
                    0417   1863 	C$sd.c$247$1$1 ==.
                           1864 ;	sd.c:247: } while ((i != 0xFF) && --j);
                           1865 ;	genCmpEq
                           1866 ;	gencjneshort
   0B2E BC FF 02           1867 	cjne	r4,#0xFF,00110$
                           1868 ;	Peephole 112.b	changed ljmp to sjmp
   0B31 80 09              1869 	sjmp	00104$
   0B33                    1870 00110$:
                           1871 ;	genMinus
                           1872 ;	genMinusDec
   0B33 1A                 1873 	dec	r2
   0B34 BA FF 01           1874 	cjne	r2,#0xff,00111$
   0B37 1B                 1875 	dec	r3
   0B38                    1876 00111$:
                           1877 ;	genIfx
   0B38 EA                 1878 	mov	a,r2
   0B39 4B                 1879 	orl	a,r3
                           1880 ;	genIfxJump
                           1881 ;	Peephole 108.b	removed ljmp by inverse jump logic
   0B3A 70 D0              1882 	jnz	00102$
                           1883 ;	Peephole 300	removed redundant label 00112$
   0B3C                    1884 00104$:
                    0425   1885 	C$sd.c$249$1$1 ==.
                           1886 ;	sd.c:249: return( i );
                           1887 ;	genRet
   0B3C 8C 82              1888 	mov	dpl,r4
                           1889 ;	Peephole 300	removed redundant label 00105$
                    0427   1890 	C$sd.c$250$1$1 ==.
                    0427   1891 	XG$SD_WaitForReady$0$0 ==.
   0B3E 22                 1892 	ret
                           1893 	.area CSEG    (CODE)
                           1894 	.area CONST   (CODE)
                           1895 	.area XINIT   (CODE)
