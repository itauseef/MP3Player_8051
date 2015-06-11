                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : FreeWare ANSI-C Compiler
                              3 ; Version 2.6.0 #4309 (Jul 28 2006)
                              4 ; This file generated Tue Apr 21 22:20:46 2015
                              5 ;--------------------------------------------------------
                              6 	.module serio
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
                            210 	.globl _putchar
                            211 	.globl _getchar
                            212 	.globl _getstr
                            213 ;--------------------------------------------------------
                            214 ; special function registers
                            215 ;--------------------------------------------------------
                            216 	.area RSEG    (DATA)
                    0080    217 G$P0$0$0 == 0x0080
                    0080    218 _P0	=	0x0080
                    0081    219 G$SP$0$0 == 0x0081
                    0081    220 _SP	=	0x0081
                    0082    221 G$DPL$0$0 == 0x0082
                    0082    222 _DPL	=	0x0082
                    0083    223 G$DPH$0$0 == 0x0083
                    0083    224 _DPH	=	0x0083
                    0087    225 G$PCON$0$0 == 0x0087
                    0087    226 _PCON	=	0x0087
                    0088    227 G$TCON$0$0 == 0x0088
                    0088    228 _TCON	=	0x0088
                    0089    229 G$TMOD$0$0 == 0x0089
                    0089    230 _TMOD	=	0x0089
                    008A    231 G$TL0$0$0 == 0x008a
                    008A    232 _TL0	=	0x008a
                    008B    233 G$TL1$0$0 == 0x008b
                    008B    234 _TL1	=	0x008b
                    008C    235 G$TH0$0$0 == 0x008c
                    008C    236 _TH0	=	0x008c
                    008D    237 G$TH1$0$0 == 0x008d
                    008D    238 _TH1	=	0x008d
                    0090    239 G$P1$0$0 == 0x0090
                    0090    240 _P1	=	0x0090
                    0098    241 G$SCON$0$0 == 0x0098
                    0098    242 _SCON	=	0x0098
                    0099    243 G$SBUF$0$0 == 0x0099
                    0099    244 _SBUF	=	0x0099
                    00A0    245 G$P2$0$0 == 0x00a0
                    00A0    246 _P2	=	0x00a0
                    00A8    247 G$IE$0$0 == 0x00a8
                    00A8    248 _IE	=	0x00a8
                    00B0    249 G$P3$0$0 == 0x00b0
                    00B0    250 _P3	=	0x00b0
                    00B8    251 G$IP$0$0 == 0x00b8
                    00B8    252 _IP	=	0x00b8
                    00D0    253 G$PSW$0$0 == 0x00d0
                    00D0    254 _PSW	=	0x00d0
                    00E0    255 G$ACC$0$0 == 0x00e0
                    00E0    256 _ACC	=	0x00e0
                    00F0    257 G$B$0$0 == 0x00f0
                    00F0    258 _B	=	0x00f0
                    00C8    259 G$T2CON$0$0 == 0x00c8
                    00C8    260 _T2CON	=	0x00c8
                    00CA    261 G$RCAP2L$0$0 == 0x00ca
                    00CA    262 _RCAP2L	=	0x00ca
                    00CB    263 G$RCAP2H$0$0 == 0x00cb
                    00CB    264 _RCAP2H	=	0x00cb
                    00CC    265 G$TL2$0$0 == 0x00cc
                    00CC    266 _TL2	=	0x00cc
                    00CD    267 G$TH2$0$0 == 0x00cd
                    00CD    268 _TH2	=	0x00cd
                    008E    269 G$AUXR$0$0 == 0x008e
                    008E    270 _AUXR	=	0x008e
                    00A2    271 G$AUXR1$0$0 == 0x00a2
                    00A2    272 _AUXR1	=	0x00a2
                    0097    273 G$CKRL$0$0 == 0x0097
                    0097    274 _CKRL	=	0x0097
                    008F    275 G$CKCKON0$0$0 == 0x008f
                    008F    276 _CKCKON0	=	0x008f
                    008F    277 G$CKCKON1$0$0 == 0x008f
                    008F    278 _CKCKON1	=	0x008f
                    00FA    279 G$CCAP0H$0$0 == 0x00fa
                    00FA    280 _CCAP0H	=	0x00fa
                    00FB    281 G$CCAP1H$0$0 == 0x00fb
                    00FB    282 _CCAP1H	=	0x00fb
                    00FC    283 G$CCAP2H$0$0 == 0x00fc
                    00FC    284 _CCAP2H	=	0x00fc
                    00FD    285 G$CCAP3H$0$0 == 0x00fd
                    00FD    286 _CCAP3H	=	0x00fd
                    00FE    287 G$CCAP4H$0$0 == 0x00fe
                    00FE    288 _CCAP4H	=	0x00fe
                    00EA    289 G$CCAP0L$0$0 == 0x00ea
                    00EA    290 _CCAP0L	=	0x00ea
                    00EB    291 G$CCAP1L$0$0 == 0x00eb
                    00EB    292 _CCAP1L	=	0x00eb
                    00EC    293 G$CCAP2L$0$0 == 0x00ec
                    00EC    294 _CCAP2L	=	0x00ec
                    00ED    295 G$CCAP3L$0$0 == 0x00ed
                    00ED    296 _CCAP3L	=	0x00ed
                    00EE    297 G$CCAP4L$0$0 == 0x00ee
                    00EE    298 _CCAP4L	=	0x00ee
                    00DA    299 G$CCAPM0$0$0 == 0x00da
                    00DA    300 _CCAPM0	=	0x00da
                    00DB    301 G$CCAPM1$0$0 == 0x00db
                    00DB    302 _CCAPM1	=	0x00db
                    00DC    303 G$CCAPM2$0$0 == 0x00dc
                    00DC    304 _CCAPM2	=	0x00dc
                    00DD    305 G$CCAPM3$0$0 == 0x00dd
                    00DD    306 _CCAPM3	=	0x00dd
                    00DE    307 G$CCAPM4$0$0 == 0x00de
                    00DE    308 _CCAPM4	=	0x00de
                    00D8    309 G$CCON$0$0 == 0x00d8
                    00D8    310 _CCON	=	0x00d8
                    00F9    311 G$CH$0$0 == 0x00f9
                    00F9    312 _CH	=	0x00f9
                    00E9    313 G$CL$0$0 == 0x00e9
                    00E9    314 _CL	=	0x00e9
                    00D9    315 G$CMOD$0$0 == 0x00d9
                    00D9    316 _CMOD	=	0x00d9
                    00A8    317 G$IEN0$0$0 == 0x00a8
                    00A8    318 _IEN0	=	0x00a8
                    00B1    319 G$IEN1$0$0 == 0x00b1
                    00B1    320 _IEN1	=	0x00b1
                    00B8    321 G$IPL0$0$0 == 0x00b8
                    00B8    322 _IPL0	=	0x00b8
                    00B7    323 G$IPH0$0$0 == 0x00b7
                    00B7    324 _IPH0	=	0x00b7
                    00B2    325 G$IPL1$0$0 == 0x00b2
                    00B2    326 _IPL1	=	0x00b2
                    00B3    327 G$IPH1$0$0 == 0x00b3
                    00B3    328 _IPH1	=	0x00b3
                    00C0    329 G$P4$0$0 == 0x00c0
                    00C0    330 _P4	=	0x00c0
                    00D8    331 G$P5$0$0 == 0x00d8
                    00D8    332 _P5	=	0x00d8
                    00A6    333 G$WDTRST$0$0 == 0x00a6
                    00A6    334 _WDTRST	=	0x00a6
                    00A7    335 G$WDTPRG$0$0 == 0x00a7
                    00A7    336 _WDTPRG	=	0x00a7
                    00A9    337 G$SADDR$0$0 == 0x00a9
                    00A9    338 _SADDR	=	0x00a9
                    00B9    339 G$SADEN$0$0 == 0x00b9
                    00B9    340 _SADEN	=	0x00b9
                    00C3    341 G$SPCON$0$0 == 0x00c3
                    00C3    342 _SPCON	=	0x00c3
                    00C4    343 G$SPSTA$0$0 == 0x00c4
                    00C4    344 _SPSTA	=	0x00c4
                    00C5    345 G$SPDAT$0$0 == 0x00c5
                    00C5    346 _SPDAT	=	0x00c5
                    00C9    347 G$T2MOD$0$0 == 0x00c9
                    00C9    348 _T2MOD	=	0x00c9
                    009B    349 G$BDRCON$0$0 == 0x009b
                    009B    350 _BDRCON	=	0x009b
                    009A    351 G$BRL$0$0 == 0x009a
                    009A    352 _BRL	=	0x009a
                    009C    353 G$KBLS$0$0 == 0x009c
                    009C    354 _KBLS	=	0x009c
                    009D    355 G$KBE$0$0 == 0x009d
                    009D    356 _KBE	=	0x009d
                    009E    357 G$KBF$0$0 == 0x009e
                    009E    358 _KBF	=	0x009e
                    00D2    359 G$EECON$0$0 == 0x00d2
                    00D2    360 _EECON	=	0x00d2
                            361 ;--------------------------------------------------------
                            362 ; special function bits
                            363 ;--------------------------------------------------------
                            364 	.area RSEG    (DATA)
                    0080    365 G$P0_0$0$0 == 0x0080
                    0080    366 _P0_0	=	0x0080
                    0081    367 G$P0_1$0$0 == 0x0081
                    0081    368 _P0_1	=	0x0081
                    0082    369 G$P0_2$0$0 == 0x0082
                    0082    370 _P0_2	=	0x0082
                    0083    371 G$P0_3$0$0 == 0x0083
                    0083    372 _P0_3	=	0x0083
                    0084    373 G$P0_4$0$0 == 0x0084
                    0084    374 _P0_4	=	0x0084
                    0085    375 G$P0_5$0$0 == 0x0085
                    0085    376 _P0_5	=	0x0085
                    0086    377 G$P0_6$0$0 == 0x0086
                    0086    378 _P0_6	=	0x0086
                    0087    379 G$P0_7$0$0 == 0x0087
                    0087    380 _P0_7	=	0x0087
                    0088    381 G$IT0$0$0 == 0x0088
                    0088    382 _IT0	=	0x0088
                    0089    383 G$IE0$0$0 == 0x0089
                    0089    384 _IE0	=	0x0089
                    008A    385 G$IT1$0$0 == 0x008a
                    008A    386 _IT1	=	0x008a
                    008B    387 G$IE1$0$0 == 0x008b
                    008B    388 _IE1	=	0x008b
                    008C    389 G$TR0$0$0 == 0x008c
                    008C    390 _TR0	=	0x008c
                    008D    391 G$TF0$0$0 == 0x008d
                    008D    392 _TF0	=	0x008d
                    008E    393 G$TR1$0$0 == 0x008e
                    008E    394 _TR1	=	0x008e
                    008F    395 G$TF1$0$0 == 0x008f
                    008F    396 _TF1	=	0x008f
                    0090    397 G$P1_0$0$0 == 0x0090
                    0090    398 _P1_0	=	0x0090
                    0091    399 G$P1_1$0$0 == 0x0091
                    0091    400 _P1_1	=	0x0091
                    0092    401 G$P1_2$0$0 == 0x0092
                    0092    402 _P1_2	=	0x0092
                    0093    403 G$P1_3$0$0 == 0x0093
                    0093    404 _P1_3	=	0x0093
                    0094    405 G$P1_4$0$0 == 0x0094
                    0094    406 _P1_4	=	0x0094
                    0095    407 G$P1_5$0$0 == 0x0095
                    0095    408 _P1_5	=	0x0095
                    0096    409 G$P1_6$0$0 == 0x0096
                    0096    410 _P1_6	=	0x0096
                    0097    411 G$P1_7$0$0 == 0x0097
                    0097    412 _P1_7	=	0x0097
                    0098    413 G$RI$0$0 == 0x0098
                    0098    414 _RI	=	0x0098
                    0099    415 G$TI$0$0 == 0x0099
                    0099    416 _TI	=	0x0099
                    009A    417 G$RB8$0$0 == 0x009a
                    009A    418 _RB8	=	0x009a
                    009B    419 G$TB8$0$0 == 0x009b
                    009B    420 _TB8	=	0x009b
                    009C    421 G$REN$0$0 == 0x009c
                    009C    422 _REN	=	0x009c
                    009D    423 G$SM2$0$0 == 0x009d
                    009D    424 _SM2	=	0x009d
                    009E    425 G$SM1$0$0 == 0x009e
                    009E    426 _SM1	=	0x009e
                    009F    427 G$SM0$0$0 == 0x009f
                    009F    428 _SM0	=	0x009f
                    00A0    429 G$P2_0$0$0 == 0x00a0
                    00A0    430 _P2_0	=	0x00a0
                    00A1    431 G$P2_1$0$0 == 0x00a1
                    00A1    432 _P2_1	=	0x00a1
                    00A2    433 G$P2_2$0$0 == 0x00a2
                    00A2    434 _P2_2	=	0x00a2
                    00A3    435 G$P2_3$0$0 == 0x00a3
                    00A3    436 _P2_3	=	0x00a3
                    00A4    437 G$P2_4$0$0 == 0x00a4
                    00A4    438 _P2_4	=	0x00a4
                    00A5    439 G$P2_5$0$0 == 0x00a5
                    00A5    440 _P2_5	=	0x00a5
                    00A6    441 G$P2_6$0$0 == 0x00a6
                    00A6    442 _P2_6	=	0x00a6
                    00A7    443 G$P2_7$0$0 == 0x00a7
                    00A7    444 _P2_7	=	0x00a7
                    00A8    445 G$EX0$0$0 == 0x00a8
                    00A8    446 _EX0	=	0x00a8
                    00A9    447 G$ET0$0$0 == 0x00a9
                    00A9    448 _ET0	=	0x00a9
                    00AA    449 G$EX1$0$0 == 0x00aa
                    00AA    450 _EX1	=	0x00aa
                    00AB    451 G$ET1$0$0 == 0x00ab
                    00AB    452 _ET1	=	0x00ab
                    00AC    453 G$ES$0$0 == 0x00ac
                    00AC    454 _ES	=	0x00ac
                    00AF    455 G$EA$0$0 == 0x00af
                    00AF    456 _EA	=	0x00af
                    00B0    457 G$P3_0$0$0 == 0x00b0
                    00B0    458 _P3_0	=	0x00b0
                    00B1    459 G$P3_1$0$0 == 0x00b1
                    00B1    460 _P3_1	=	0x00b1
                    00B2    461 G$P3_2$0$0 == 0x00b2
                    00B2    462 _P3_2	=	0x00b2
                    00B3    463 G$P3_3$0$0 == 0x00b3
                    00B3    464 _P3_3	=	0x00b3
                    00B4    465 G$P3_4$0$0 == 0x00b4
                    00B4    466 _P3_4	=	0x00b4
                    00B5    467 G$P3_5$0$0 == 0x00b5
                    00B5    468 _P3_5	=	0x00b5
                    00B6    469 G$P3_6$0$0 == 0x00b6
                    00B6    470 _P3_6	=	0x00b6
                    00B7    471 G$P3_7$0$0 == 0x00b7
                    00B7    472 _P3_7	=	0x00b7
                    00B0    473 G$RXD$0$0 == 0x00b0
                    00B0    474 _RXD	=	0x00b0
                    00B1    475 G$TXD$0$0 == 0x00b1
                    00B1    476 _TXD	=	0x00b1
                    00B2    477 G$INT0$0$0 == 0x00b2
                    00B2    478 _INT0	=	0x00b2
                    00B3    479 G$INT1$0$0 == 0x00b3
                    00B3    480 _INT1	=	0x00b3
                    00B4    481 G$T0$0$0 == 0x00b4
                    00B4    482 _T0	=	0x00b4
                    00B5    483 G$T1$0$0 == 0x00b5
                    00B5    484 _T1	=	0x00b5
                    00B6    485 G$WR$0$0 == 0x00b6
                    00B6    486 _WR	=	0x00b6
                    00B7    487 G$RD$0$0 == 0x00b7
                    00B7    488 _RD	=	0x00b7
                    00B8    489 G$PX0$0$0 == 0x00b8
                    00B8    490 _PX0	=	0x00b8
                    00B9    491 G$PT0$0$0 == 0x00b9
                    00B9    492 _PT0	=	0x00b9
                    00BA    493 G$PX1$0$0 == 0x00ba
                    00BA    494 _PX1	=	0x00ba
                    00BB    495 G$PT1$0$0 == 0x00bb
                    00BB    496 _PT1	=	0x00bb
                    00BC    497 G$PS$0$0 == 0x00bc
                    00BC    498 _PS	=	0x00bc
                    00D0    499 G$P$0$0 == 0x00d0
                    00D0    500 _P	=	0x00d0
                    00D1    501 G$F1$0$0 == 0x00d1
                    00D1    502 _F1	=	0x00d1
                    00D2    503 G$OV$0$0 == 0x00d2
                    00D2    504 _OV	=	0x00d2
                    00D3    505 G$RS0$0$0 == 0x00d3
                    00D3    506 _RS0	=	0x00d3
                    00D4    507 G$RS1$0$0 == 0x00d4
                    00D4    508 _RS1	=	0x00d4
                    00D5    509 G$F0$0$0 == 0x00d5
                    00D5    510 _F0	=	0x00d5
                    00D6    511 G$AC$0$0 == 0x00d6
                    00D6    512 _AC	=	0x00d6
                    00D7    513 G$CY$0$0 == 0x00d7
                    00D7    514 _CY	=	0x00d7
                    00AD    515 G$ET2$0$0 == 0x00ad
                    00AD    516 _ET2	=	0x00ad
                    00BD    517 G$PT2$0$0 == 0x00bd
                    00BD    518 _PT2	=	0x00bd
                    00C8    519 G$T2CON_0$0$0 == 0x00c8
                    00C8    520 _T2CON_0	=	0x00c8
                    00C9    521 G$T2CON_1$0$0 == 0x00c9
                    00C9    522 _T2CON_1	=	0x00c9
                    00CA    523 G$T2CON_2$0$0 == 0x00ca
                    00CA    524 _T2CON_2	=	0x00ca
                    00CB    525 G$T2CON_3$0$0 == 0x00cb
                    00CB    526 _T2CON_3	=	0x00cb
                    00CC    527 G$T2CON_4$0$0 == 0x00cc
                    00CC    528 _T2CON_4	=	0x00cc
                    00CD    529 G$T2CON_5$0$0 == 0x00cd
                    00CD    530 _T2CON_5	=	0x00cd
                    00CE    531 G$T2CON_6$0$0 == 0x00ce
                    00CE    532 _T2CON_6	=	0x00ce
                    00CF    533 G$T2CON_7$0$0 == 0x00cf
                    00CF    534 _T2CON_7	=	0x00cf
                    00C8    535 G$CP_RL2$0$0 == 0x00c8
                    00C8    536 _CP_RL2	=	0x00c8
                    00C9    537 G$C_T2$0$0 == 0x00c9
                    00C9    538 _C_T2	=	0x00c9
                    00CA    539 G$TR2$0$0 == 0x00ca
                    00CA    540 _TR2	=	0x00ca
                    00CB    541 G$EXEN2$0$0 == 0x00cb
                    00CB    542 _EXEN2	=	0x00cb
                    00CC    543 G$TCLK$0$0 == 0x00cc
                    00CC    544 _TCLK	=	0x00cc
                    00CD    545 G$RCLK$0$0 == 0x00cd
                    00CD    546 _RCLK	=	0x00cd
                    00CE    547 G$EXF2$0$0 == 0x00ce
                    00CE    548 _EXF2	=	0x00ce
                    00CF    549 G$TF2$0$0 == 0x00cf
                    00CF    550 _TF2	=	0x00cf
                    00DF    551 G$CF$0$0 == 0x00df
                    00DF    552 _CF	=	0x00df
                    00DE    553 G$CR$0$0 == 0x00de
                    00DE    554 _CR	=	0x00de
                    00DC    555 G$CCF4$0$0 == 0x00dc
                    00DC    556 _CCF4	=	0x00dc
                    00DB    557 G$CCF3$0$0 == 0x00db
                    00DB    558 _CCF3	=	0x00db
                    00DA    559 G$CCF2$0$0 == 0x00da
                    00DA    560 _CCF2	=	0x00da
                    00D9    561 G$CCF1$0$0 == 0x00d9
                    00D9    562 _CCF1	=	0x00d9
                    00D8    563 G$CCF0$0$0 == 0x00d8
                    00D8    564 _CCF0	=	0x00d8
                    00AE    565 G$EC$0$0 == 0x00ae
                    00AE    566 _EC	=	0x00ae
                    00BE    567 G$PPCL$0$0 == 0x00be
                    00BE    568 _PPCL	=	0x00be
                    00BD    569 G$PT2L$0$0 == 0x00bd
                    00BD    570 _PT2L	=	0x00bd
                    00BC    571 G$PLS$0$0 == 0x00bc
                    00BC    572 _PLS	=	0x00bc
                    00BB    573 G$PT1L$0$0 == 0x00bb
                    00BB    574 _PT1L	=	0x00bb
                    00BA    575 G$PX1L$0$0 == 0x00ba
                    00BA    576 _PX1L	=	0x00ba
                    00B9    577 G$PT0L$0$0 == 0x00b9
                    00B9    578 _PT0L	=	0x00b9
                    00B8    579 G$PX0L$0$0 == 0x00b8
                    00B8    580 _PX0L	=	0x00b8
                    00C0    581 G$P4_0$0$0 == 0x00c0
                    00C0    582 _P4_0	=	0x00c0
                    00C1    583 G$P4_1$0$0 == 0x00c1
                    00C1    584 _P4_1	=	0x00c1
                    00C2    585 G$P4_2$0$0 == 0x00c2
                    00C2    586 _P4_2	=	0x00c2
                    00C3    587 G$P4_3$0$0 == 0x00c3
                    00C3    588 _P4_3	=	0x00c3
                    00C4    589 G$P4_4$0$0 == 0x00c4
                    00C4    590 _P4_4	=	0x00c4
                    00C5    591 G$P4_5$0$0 == 0x00c5
                    00C5    592 _P4_5	=	0x00c5
                    00C6    593 G$P4_6$0$0 == 0x00c6
                    00C6    594 _P4_6	=	0x00c6
                    00C7    595 G$P4_7$0$0 == 0x00c7
                    00C7    596 _P4_7	=	0x00c7
                    00D8    597 G$P5_0$0$0 == 0x00d8
                    00D8    598 _P5_0	=	0x00d8
                    00D9    599 G$P5_1$0$0 == 0x00d9
                    00D9    600 _P5_1	=	0x00d9
                    00DA    601 G$P5_2$0$0 == 0x00da
                    00DA    602 _P5_2	=	0x00da
                    00DB    603 G$P5_3$0$0 == 0x00db
                    00DB    604 _P5_3	=	0x00db
                    00DC    605 G$P5_4$0$0 == 0x00dc
                    00DC    606 _P5_4	=	0x00dc
                    00DD    607 G$P5_5$0$0 == 0x00dd
                    00DD    608 _P5_5	=	0x00dd
                    00DE    609 G$P5_6$0$0 == 0x00de
                    00DE    610 _P5_6	=	0x00de
                    00DF    611 G$P5_7$0$0 == 0x00df
                    00DF    612 _P5_7	=	0x00df
                            613 ;--------------------------------------------------------
                            614 ; overlayable register banks
                            615 ;--------------------------------------------------------
                            616 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     617 	.ds 8
                            618 ;--------------------------------------------------------
                            619 ; internal ram data
                            620 ;--------------------------------------------------------
                            621 	.area DSEG    (DATA)
                            622 ;--------------------------------------------------------
                            623 ; overlayable items in internal ram 
                            624 ;--------------------------------------------------------
                            625 	.area OSEG    (OVR,DATA)
                            626 ;--------------------------------------------------------
                            627 ; indirectly addressable internal ram data
                            628 ;--------------------------------------------------------
                            629 	.area ISEG    (DATA)
                            630 ;--------------------------------------------------------
                            631 ; bit data
                            632 ;--------------------------------------------------------
                            633 	.area BSEG    (BIT)
                            634 ;--------------------------------------------------------
                            635 ; paged external ram data
                            636 ;--------------------------------------------------------
                            637 	.area PSEG    (PAG,XDATA)
                            638 ;--------------------------------------------------------
                            639 ; external ram data
                            640 ;--------------------------------------------------------
                            641 	.area XSEG    (XDATA)
                    0000    642 G$Stat$0$0==.
   0047                     643 _Stat::
   0047                     644 	.ds 1
                    3000    645 G$CardType$0$0 == 0x3000
                    3000    646 _CardType	=	0x3000
                            647 ;--------------------------------------------------------
                            648 ; external initialized ram data
                            649 ;--------------------------------------------------------
                            650 	.area XISEG   (XDATA)
                            651 	.area HOME    (CODE)
                            652 	.area GSINIT0 (CODE)
                            653 	.area GSINIT1 (CODE)
                            654 	.area GSINIT2 (CODE)
                            655 	.area GSINIT3 (CODE)
                            656 	.area GSINIT4 (CODE)
                            657 	.area GSINIT5 (CODE)
                            658 	.area GSINIT  (CODE)
                            659 	.area GSFINAL (CODE)
                            660 	.area CSEG    (CODE)
                            661 ;--------------------------------------------------------
                            662 ; global & static initialisations
                            663 ;--------------------------------------------------------
                            664 	.area HOME    (CODE)
                            665 	.area GSINIT  (CODE)
                            666 	.area GSFINAL (CODE)
                            667 	.area GSINIT  (CODE)
                            668 ;--------------------------------------------------------
                            669 ; Home
                            670 ;--------------------------------------------------------
                            671 	.area HOME    (CODE)
                            672 	.area CSEG    (CODE)
                            673 ;--------------------------------------------------------
                            674 ; code
                            675 ;--------------------------------------------------------
                            676 	.area CSEG    (CODE)
                            677 ;------------------------------------------------------------
                            678 ;Allocation info for local variables in function 'putchar'
                            679 ;------------------------------------------------------------
                            680 ;c                         Allocated to registers 
                            681 ;------------------------------------------------------------
                    0000    682 	G$putchar$0$0 ==.
                    0000    683 	C$serio.c$3$0$0 ==.
                            684 ;	serio.c:3: void putchar (char c)
                            685 ;	-----------------------------------------
                            686 ;	 function putchar
                            687 ;	-----------------------------------------
   0B3F                     688 _putchar:
                    0002    689 	ar2 = 0x02
                    0003    690 	ar3 = 0x03
                    0004    691 	ar4 = 0x04
                    0005    692 	ar5 = 0x05
                    0006    693 	ar6 = 0x06
                    0007    694 	ar7 = 0x07
                    0000    695 	ar0 = 0x00
                    0001    696 	ar1 = 0x01
                            697 ;	genReceive
   0B3F 85 82 99            698 	mov	_SBUF,dpl
                    0003    699 	C$serio.c$6$1$1 ==.
                            700 ;	serio.c:6: while (!TI);   												// wait for TX ready, spin on TI
   0B42                     701 00101$:
                            702 ;	genIfx
                            703 ;	genIfxJump
                            704 ;	Peephole 108.d	removed ljmp by inverse jump logic
                    0003    705 	C$serio.c$7$1$1 ==.
                            706 ;	serio.c:7: TI = 0;  										// clear TI flag
                            707 ;	genAssign
                            708 ;	Peephole 250.a	using atomic test and clear
   0B42 10 99 02            709 	jbc	_TI,00108$
   0B45 80 FB               710 	sjmp	00101$
   0B47                     711 00108$:
                            712 ;	Peephole 300	removed redundant label 00104$
                    0008    713 	C$serio.c$8$1$1 ==.
                    0008    714 	XG$putchar$0$0 ==.
   0B47 22                  715 	ret
                            716 ;------------------------------------------------------------
                            717 ;Allocation info for local variables in function 'getchar'
                            718 ;------------------------------------------------------------
                            719 ;------------------------------------------------------------
                    0009    720 	G$getchar$0$0 ==.
                    0009    721 	C$serio.c$10$1$1 ==.
                            722 ;	serio.c:10: char getchar (void)
                            723 ;	-----------------------------------------
                            724 ;	 function getchar
                            725 ;	-----------------------------------------
   0B48                     726 _getchar:
                    0009    727 	C$serio.c$12$1$1 ==.
                            728 ;	serio.c:12: while (!RI);											// wait for character to be received, spin on RI
   0B48                     729 00101$:
                            730 ;	genIfx
                            731 ;	genIfxJump
                            732 ;	Peephole 108.d	removed ljmp by inverse jump logic
                    0009    733 	C$serio.c$13$1$1 ==.
                            734 ;	serio.c:13: RI = 0;											// clear RI flag
                            735 ;	genAssign
                            736 ;	Peephole 250.a	using atomic test and clear
   0B48 10 98 02            737 	jbc	_RI,00108$
   0B4B 80 FB               738 	sjmp	00101$
   0B4D                     739 00108$:
                    000E    740 	C$serio.c$14$1$1 ==.
                            741 ;	serio.c:14: return SBUF;  										// return character from SBUF
                            742 ;	genAssign
   0B4D 85 99 82            743 	mov	dpl,_SBUF
                            744 ;	genRet
                            745 ;	Peephole 300	removed redundant label 00104$
                    0011    746 	C$serio.c$15$1$1 ==.
                    0011    747 	XG$getchar$0$0 ==.
   0B50 22                  748 	ret
                            749 ;------------------------------------------------------------
                            750 ;Allocation info for local variables in function 'getstr'
                            751 ;------------------------------------------------------------
                            752 ;c                         Allocated to registers r2 
                            753 ;i                         Allocated to registers r4 r5 
                            754 ;str                       Allocated to stack - offset 1
                            755 ;------------------------------------------------------------
                    0012    756 	G$getstr$0$0 ==.
                    0012    757 	C$serio.c$17$1$1 ==.
                            758 ;	serio.c:17: unsigned char* getstr()
                            759 ;	-----------------------------------------
                            760 ;	 function getstr
                            761 ;	-----------------------------------------
   0B51                     762 _getstr:
   0B51 C0 0F               763 	push	_bp
                            764 ;	peephole 177.h	optimized mov sequence
   0B53 E5 81               765 	mov	a,sp
   0B55 F5 0F               766 	mov	_bp,a
   0B57 24 38               767 	add	a,#0x38
   0B59 F5 81               768 	mov	sp,a
                    001C    769 	C$serio.c$23$1$1 ==.
                            770 ;	serio.c:23: c=getchar(); 										 //Getting Input from user
                            771 ;	genCall
   0B5B 12 0B 48            772 	lcall	_getchar
                            773 ;	genAssign
                    001F    774 	C$serio.c$24$1$1 ==.
                            775 ;	serio.c:24: putchar(c);									        //Displaying user inputted character
                            776 ;	genCall
   0B5E AA 82               777 	mov  r2,dpl
                            778 ;	Peephole 177.a	removed redundant mov
   0B60 C0 02               779 	push	ar2
   0B62 12 0B 3F            780 	lcall	_putchar
   0B65 D0 02               781 	pop	ar2
                    0028    782 	C$serio.c$26$2$2 ==.
                            783 ;	serio.c:26: while(c!=13)  										 //Takes input from user until end of input, which is indicated by 'e'
                            784 ;	genAddrOf
                            785 ;	Peephole 212	reduced add sequence to inc
   0B67 AB 0F               786 	mov	r3,_bp
   0B69 0B                  787 	inc	r3
                            788 ;	genAssign
   0B6A 7C 00               789 	mov	r4,#0x00
   0B6C 7D 00               790 	mov	r5,#0x00
   0B6E                     791 00103$:
                            792 ;	genCmpEq
                            793 ;	gencjneshort
   0B6E BA 0D 02            794 	cjne	r2,#0x0D,00112$
                            795 ;	Peephole 112.b	changed ljmp to sjmp
   0B71 80 39               796 	sjmp	00105$
   0B73                     797 00112$:
                    0034    798 	C$serio.c$28$2$2 ==.
                            799 ;	serio.c:28: str[i]=c; 									  //Combining characters into a string
                            800 ;	genPlus
                            801 ;	Peephole 236.g	used r4 instead of ar4
   0B73 EC                  802 	mov	a,r4
                            803 ;	Peephole 236.a	used r3 instead of ar3
   0B74 2B                  804 	add	a,r3
   0B75 F8                  805 	mov	r0,a
                            806 ;	genPointerSet
                            807 ;	genNearPointerSet
   0B76 A6 02               808 	mov	@r0,ar2
                    0039    809 	C$serio.c$29$2$2 ==.
                            810 ;	serio.c:29: i++;
                            811 ;	genPlus
                            812 ;     genPlusIncr
   0B78 0C                  813 	inc	r4
   0B79 BC 00 01            814 	cjne	r4,#0x00,00113$
   0B7C 0D                  815 	inc	r5
   0B7D                     816 00113$:
                    003E    817 	C$serio.c$30$2$2 ==.
                            818 ;	serio.c:30: c=getchar(); 									 //Getting Input from user
                            819 ;	genCall
   0B7D C0 03               820 	push	ar3
   0B7F C0 04               821 	push	ar4
   0B81 C0 05               822 	push	ar5
   0B83 12 0B 48            823 	lcall	_getchar
   0B86 AE 82               824 	mov	r6,dpl
   0B88 D0 05               825 	pop	ar5
   0B8A D0 04               826 	pop	ar4
   0B8C D0 03               827 	pop	ar3
                            828 ;	genAssign
   0B8E 8E 02               829 	mov	ar2,r6
                    0051    830 	C$serio.c$31$2$2 ==.
                            831 ;	serio.c:31: if(c!=13)
                            832 ;	genCmpEq
                            833 ;	gencjneshort
   0B90 BA 0D 02            834 	cjne	r2,#0x0D,00114$
                            835 ;	Peephole 112.b	changed ljmp to sjmp
   0B93 80 D9               836 	sjmp	00103$
   0B95                     837 00114$:
                    0056    838 	C$serio.c$33$3$3 ==.
                            839 ;	serio.c:33: putchar(c); 								 //Displaying characters entered except the end of input character '\n'
                            840 ;	genCall
   0B95 8A 82               841 	mov	dpl,r2
   0B97 C0 02               842 	push	ar2
   0B99 C0 03               843 	push	ar3
   0B9B C0 04               844 	push	ar4
   0B9D C0 05               845 	push	ar5
   0B9F 12 0B 3F            846 	lcall	_putchar
   0BA2 D0 05               847 	pop	ar5
   0BA4 D0 04               848 	pop	ar4
   0BA6 D0 03               849 	pop	ar3
   0BA8 D0 02               850 	pop	ar2
                            851 ;	Peephole 112.b	changed ljmp to sjmp
   0BAA 80 C2               852 	sjmp	00103$
   0BAC                     853 00105$:
                    006D    854 	C$serio.c$37$1$1 ==.
                            855 ;	serio.c:37: str[i]='\0';  										 //Last character of string is NULL
                            856 ;	genPlus
                            857 ;	Peephole 236.g	used r4 instead of ar4
   0BAC EC                  858 	mov	a,r4
                            859 ;	Peephole 236.a	used r3 instead of ar3
   0BAD 2B                  860 	add	a,r3
   0BAE F8                  861 	mov	r0,a
                            862 ;	genPointerSet
                            863 ;	genNearPointerSet
   0BAF 76 00               864 	mov	@r0,#0x00
                    0072    865 	C$serio.c$39$1$1 ==.
                            866 ;	serio.c:39: return(str);										  //returning the input to the calling function as a integer
                            867 ;	genAssign
                            868 ;	genCast
   0BB1 7A 00               869 	mov	r2,#0x00
   0BB3 7C 40               870 	mov	r4,#0x40
                            871 ;	genRet
   0BB5 8B 82               872 	mov	dpl,r3
   0BB7 8A 83               873 	mov	dph,r2
   0BB9 8C F0               874 	mov	b,r4
                            875 ;	Peephole 300	removed redundant label 00106$
   0BBB 85 0F 81            876 	mov	sp,_bp
   0BBE D0 0F               877 	pop	_bp
                    0081    878 	C$serio.c$40$1$1 ==.
                    0081    879 	XG$getstr$0$0 ==.
   0BC0 22                  880 	ret
                            881 	.area CSEG    (CODE)
                            882 	.area CONST   (CODE)
                            883 	.area XINIT   (CODE)
