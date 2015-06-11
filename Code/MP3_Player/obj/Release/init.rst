                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : FreeWare ANSI-C Compiler
                              3 ; Version 2.6.0 #4309 (Jul 28 2006)
                              4 ; This file generated Tue Apr 21 22:20:46 2015
                              5 ;--------------------------------------------------------
                              6 	.module init
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
                            210 	.globl _init
                            211 ;--------------------------------------------------------
                            212 ; special function registers
                            213 ;--------------------------------------------------------
                            214 	.area RSEG    (DATA)
                    0080    215 G$P0$0$0 == 0x0080
                    0080    216 _P0	=	0x0080
                    0081    217 G$SP$0$0 == 0x0081
                    0081    218 _SP	=	0x0081
                    0082    219 G$DPL$0$0 == 0x0082
                    0082    220 _DPL	=	0x0082
                    0083    221 G$DPH$0$0 == 0x0083
                    0083    222 _DPH	=	0x0083
                    0087    223 G$PCON$0$0 == 0x0087
                    0087    224 _PCON	=	0x0087
                    0088    225 G$TCON$0$0 == 0x0088
                    0088    226 _TCON	=	0x0088
                    0089    227 G$TMOD$0$0 == 0x0089
                    0089    228 _TMOD	=	0x0089
                    008A    229 G$TL0$0$0 == 0x008a
                    008A    230 _TL0	=	0x008a
                    008B    231 G$TL1$0$0 == 0x008b
                    008B    232 _TL1	=	0x008b
                    008C    233 G$TH0$0$0 == 0x008c
                    008C    234 _TH0	=	0x008c
                    008D    235 G$TH1$0$0 == 0x008d
                    008D    236 _TH1	=	0x008d
                    0090    237 G$P1$0$0 == 0x0090
                    0090    238 _P1	=	0x0090
                    0098    239 G$SCON$0$0 == 0x0098
                    0098    240 _SCON	=	0x0098
                    0099    241 G$SBUF$0$0 == 0x0099
                    0099    242 _SBUF	=	0x0099
                    00A0    243 G$P2$0$0 == 0x00a0
                    00A0    244 _P2	=	0x00a0
                    00A8    245 G$IE$0$0 == 0x00a8
                    00A8    246 _IE	=	0x00a8
                    00B0    247 G$P3$0$0 == 0x00b0
                    00B0    248 _P3	=	0x00b0
                    00B8    249 G$IP$0$0 == 0x00b8
                    00B8    250 _IP	=	0x00b8
                    00D0    251 G$PSW$0$0 == 0x00d0
                    00D0    252 _PSW	=	0x00d0
                    00E0    253 G$ACC$0$0 == 0x00e0
                    00E0    254 _ACC	=	0x00e0
                    00F0    255 G$B$0$0 == 0x00f0
                    00F0    256 _B	=	0x00f0
                    00C8    257 G$T2CON$0$0 == 0x00c8
                    00C8    258 _T2CON	=	0x00c8
                    00CA    259 G$RCAP2L$0$0 == 0x00ca
                    00CA    260 _RCAP2L	=	0x00ca
                    00CB    261 G$RCAP2H$0$0 == 0x00cb
                    00CB    262 _RCAP2H	=	0x00cb
                    00CC    263 G$TL2$0$0 == 0x00cc
                    00CC    264 _TL2	=	0x00cc
                    00CD    265 G$TH2$0$0 == 0x00cd
                    00CD    266 _TH2	=	0x00cd
                    008E    267 G$AUXR$0$0 == 0x008e
                    008E    268 _AUXR	=	0x008e
                    00A2    269 G$AUXR1$0$0 == 0x00a2
                    00A2    270 _AUXR1	=	0x00a2
                    0097    271 G$CKRL$0$0 == 0x0097
                    0097    272 _CKRL	=	0x0097
                    008F    273 G$CKCKON0$0$0 == 0x008f
                    008F    274 _CKCKON0	=	0x008f
                    008F    275 G$CKCKON1$0$0 == 0x008f
                    008F    276 _CKCKON1	=	0x008f
                    00FA    277 G$CCAP0H$0$0 == 0x00fa
                    00FA    278 _CCAP0H	=	0x00fa
                    00FB    279 G$CCAP1H$0$0 == 0x00fb
                    00FB    280 _CCAP1H	=	0x00fb
                    00FC    281 G$CCAP2H$0$0 == 0x00fc
                    00FC    282 _CCAP2H	=	0x00fc
                    00FD    283 G$CCAP3H$0$0 == 0x00fd
                    00FD    284 _CCAP3H	=	0x00fd
                    00FE    285 G$CCAP4H$0$0 == 0x00fe
                    00FE    286 _CCAP4H	=	0x00fe
                    00EA    287 G$CCAP0L$0$0 == 0x00ea
                    00EA    288 _CCAP0L	=	0x00ea
                    00EB    289 G$CCAP1L$0$0 == 0x00eb
                    00EB    290 _CCAP1L	=	0x00eb
                    00EC    291 G$CCAP2L$0$0 == 0x00ec
                    00EC    292 _CCAP2L	=	0x00ec
                    00ED    293 G$CCAP3L$0$0 == 0x00ed
                    00ED    294 _CCAP3L	=	0x00ed
                    00EE    295 G$CCAP4L$0$0 == 0x00ee
                    00EE    296 _CCAP4L	=	0x00ee
                    00DA    297 G$CCAPM0$0$0 == 0x00da
                    00DA    298 _CCAPM0	=	0x00da
                    00DB    299 G$CCAPM1$0$0 == 0x00db
                    00DB    300 _CCAPM1	=	0x00db
                    00DC    301 G$CCAPM2$0$0 == 0x00dc
                    00DC    302 _CCAPM2	=	0x00dc
                    00DD    303 G$CCAPM3$0$0 == 0x00dd
                    00DD    304 _CCAPM3	=	0x00dd
                    00DE    305 G$CCAPM4$0$0 == 0x00de
                    00DE    306 _CCAPM4	=	0x00de
                    00D8    307 G$CCON$0$0 == 0x00d8
                    00D8    308 _CCON	=	0x00d8
                    00F9    309 G$CH$0$0 == 0x00f9
                    00F9    310 _CH	=	0x00f9
                    00E9    311 G$CL$0$0 == 0x00e9
                    00E9    312 _CL	=	0x00e9
                    00D9    313 G$CMOD$0$0 == 0x00d9
                    00D9    314 _CMOD	=	0x00d9
                    00A8    315 G$IEN0$0$0 == 0x00a8
                    00A8    316 _IEN0	=	0x00a8
                    00B1    317 G$IEN1$0$0 == 0x00b1
                    00B1    318 _IEN1	=	0x00b1
                    00B8    319 G$IPL0$0$0 == 0x00b8
                    00B8    320 _IPL0	=	0x00b8
                    00B7    321 G$IPH0$0$0 == 0x00b7
                    00B7    322 _IPH0	=	0x00b7
                    00B2    323 G$IPL1$0$0 == 0x00b2
                    00B2    324 _IPL1	=	0x00b2
                    00B3    325 G$IPH1$0$0 == 0x00b3
                    00B3    326 _IPH1	=	0x00b3
                    00C0    327 G$P4$0$0 == 0x00c0
                    00C0    328 _P4	=	0x00c0
                    00D8    329 G$P5$0$0 == 0x00d8
                    00D8    330 _P5	=	0x00d8
                    00A6    331 G$WDTRST$0$0 == 0x00a6
                    00A6    332 _WDTRST	=	0x00a6
                    00A7    333 G$WDTPRG$0$0 == 0x00a7
                    00A7    334 _WDTPRG	=	0x00a7
                    00A9    335 G$SADDR$0$0 == 0x00a9
                    00A9    336 _SADDR	=	0x00a9
                    00B9    337 G$SADEN$0$0 == 0x00b9
                    00B9    338 _SADEN	=	0x00b9
                    00C3    339 G$SPCON$0$0 == 0x00c3
                    00C3    340 _SPCON	=	0x00c3
                    00C4    341 G$SPSTA$0$0 == 0x00c4
                    00C4    342 _SPSTA	=	0x00c4
                    00C5    343 G$SPDAT$0$0 == 0x00c5
                    00C5    344 _SPDAT	=	0x00c5
                    00C9    345 G$T2MOD$0$0 == 0x00c9
                    00C9    346 _T2MOD	=	0x00c9
                    009B    347 G$BDRCON$0$0 == 0x009b
                    009B    348 _BDRCON	=	0x009b
                    009A    349 G$BRL$0$0 == 0x009a
                    009A    350 _BRL	=	0x009a
                    009C    351 G$KBLS$0$0 == 0x009c
                    009C    352 _KBLS	=	0x009c
                    009D    353 G$KBE$0$0 == 0x009d
                    009D    354 _KBE	=	0x009d
                    009E    355 G$KBF$0$0 == 0x009e
                    009E    356 _KBF	=	0x009e
                    00D2    357 G$EECON$0$0 == 0x00d2
                    00D2    358 _EECON	=	0x00d2
                            359 ;--------------------------------------------------------
                            360 ; special function bits
                            361 ;--------------------------------------------------------
                            362 	.area RSEG    (DATA)
                    0080    363 G$P0_0$0$0 == 0x0080
                    0080    364 _P0_0	=	0x0080
                    0081    365 G$P0_1$0$0 == 0x0081
                    0081    366 _P0_1	=	0x0081
                    0082    367 G$P0_2$0$0 == 0x0082
                    0082    368 _P0_2	=	0x0082
                    0083    369 G$P0_3$0$0 == 0x0083
                    0083    370 _P0_3	=	0x0083
                    0084    371 G$P0_4$0$0 == 0x0084
                    0084    372 _P0_4	=	0x0084
                    0085    373 G$P0_5$0$0 == 0x0085
                    0085    374 _P0_5	=	0x0085
                    0086    375 G$P0_6$0$0 == 0x0086
                    0086    376 _P0_6	=	0x0086
                    0087    377 G$P0_7$0$0 == 0x0087
                    0087    378 _P0_7	=	0x0087
                    0088    379 G$IT0$0$0 == 0x0088
                    0088    380 _IT0	=	0x0088
                    0089    381 G$IE0$0$0 == 0x0089
                    0089    382 _IE0	=	0x0089
                    008A    383 G$IT1$0$0 == 0x008a
                    008A    384 _IT1	=	0x008a
                    008B    385 G$IE1$0$0 == 0x008b
                    008B    386 _IE1	=	0x008b
                    008C    387 G$TR0$0$0 == 0x008c
                    008C    388 _TR0	=	0x008c
                    008D    389 G$TF0$0$0 == 0x008d
                    008D    390 _TF0	=	0x008d
                    008E    391 G$TR1$0$0 == 0x008e
                    008E    392 _TR1	=	0x008e
                    008F    393 G$TF1$0$0 == 0x008f
                    008F    394 _TF1	=	0x008f
                    0090    395 G$P1_0$0$0 == 0x0090
                    0090    396 _P1_0	=	0x0090
                    0091    397 G$P1_1$0$0 == 0x0091
                    0091    398 _P1_1	=	0x0091
                    0092    399 G$P1_2$0$0 == 0x0092
                    0092    400 _P1_2	=	0x0092
                    0093    401 G$P1_3$0$0 == 0x0093
                    0093    402 _P1_3	=	0x0093
                    0094    403 G$P1_4$0$0 == 0x0094
                    0094    404 _P1_4	=	0x0094
                    0095    405 G$P1_5$0$0 == 0x0095
                    0095    406 _P1_5	=	0x0095
                    0096    407 G$P1_6$0$0 == 0x0096
                    0096    408 _P1_6	=	0x0096
                    0097    409 G$P1_7$0$0 == 0x0097
                    0097    410 _P1_7	=	0x0097
                    0098    411 G$RI$0$0 == 0x0098
                    0098    412 _RI	=	0x0098
                    0099    413 G$TI$0$0 == 0x0099
                    0099    414 _TI	=	0x0099
                    009A    415 G$RB8$0$0 == 0x009a
                    009A    416 _RB8	=	0x009a
                    009B    417 G$TB8$0$0 == 0x009b
                    009B    418 _TB8	=	0x009b
                    009C    419 G$REN$0$0 == 0x009c
                    009C    420 _REN	=	0x009c
                    009D    421 G$SM2$0$0 == 0x009d
                    009D    422 _SM2	=	0x009d
                    009E    423 G$SM1$0$0 == 0x009e
                    009E    424 _SM1	=	0x009e
                    009F    425 G$SM0$0$0 == 0x009f
                    009F    426 _SM0	=	0x009f
                    00A0    427 G$P2_0$0$0 == 0x00a0
                    00A0    428 _P2_0	=	0x00a0
                    00A1    429 G$P2_1$0$0 == 0x00a1
                    00A1    430 _P2_1	=	0x00a1
                    00A2    431 G$P2_2$0$0 == 0x00a2
                    00A2    432 _P2_2	=	0x00a2
                    00A3    433 G$P2_3$0$0 == 0x00a3
                    00A3    434 _P2_3	=	0x00a3
                    00A4    435 G$P2_4$0$0 == 0x00a4
                    00A4    436 _P2_4	=	0x00a4
                    00A5    437 G$P2_5$0$0 == 0x00a5
                    00A5    438 _P2_5	=	0x00a5
                    00A6    439 G$P2_6$0$0 == 0x00a6
                    00A6    440 _P2_6	=	0x00a6
                    00A7    441 G$P2_7$0$0 == 0x00a7
                    00A7    442 _P2_7	=	0x00a7
                    00A8    443 G$EX0$0$0 == 0x00a8
                    00A8    444 _EX0	=	0x00a8
                    00A9    445 G$ET0$0$0 == 0x00a9
                    00A9    446 _ET0	=	0x00a9
                    00AA    447 G$EX1$0$0 == 0x00aa
                    00AA    448 _EX1	=	0x00aa
                    00AB    449 G$ET1$0$0 == 0x00ab
                    00AB    450 _ET1	=	0x00ab
                    00AC    451 G$ES$0$0 == 0x00ac
                    00AC    452 _ES	=	0x00ac
                    00AF    453 G$EA$0$0 == 0x00af
                    00AF    454 _EA	=	0x00af
                    00B0    455 G$P3_0$0$0 == 0x00b0
                    00B0    456 _P3_0	=	0x00b0
                    00B1    457 G$P3_1$0$0 == 0x00b1
                    00B1    458 _P3_1	=	0x00b1
                    00B2    459 G$P3_2$0$0 == 0x00b2
                    00B2    460 _P3_2	=	0x00b2
                    00B3    461 G$P3_3$0$0 == 0x00b3
                    00B3    462 _P3_3	=	0x00b3
                    00B4    463 G$P3_4$0$0 == 0x00b4
                    00B4    464 _P3_4	=	0x00b4
                    00B5    465 G$P3_5$0$0 == 0x00b5
                    00B5    466 _P3_5	=	0x00b5
                    00B6    467 G$P3_6$0$0 == 0x00b6
                    00B6    468 _P3_6	=	0x00b6
                    00B7    469 G$P3_7$0$0 == 0x00b7
                    00B7    470 _P3_7	=	0x00b7
                    00B0    471 G$RXD$0$0 == 0x00b0
                    00B0    472 _RXD	=	0x00b0
                    00B1    473 G$TXD$0$0 == 0x00b1
                    00B1    474 _TXD	=	0x00b1
                    00B2    475 G$INT0$0$0 == 0x00b2
                    00B2    476 _INT0	=	0x00b2
                    00B3    477 G$INT1$0$0 == 0x00b3
                    00B3    478 _INT1	=	0x00b3
                    00B4    479 G$T0$0$0 == 0x00b4
                    00B4    480 _T0	=	0x00b4
                    00B5    481 G$T1$0$0 == 0x00b5
                    00B5    482 _T1	=	0x00b5
                    00B6    483 G$WR$0$0 == 0x00b6
                    00B6    484 _WR	=	0x00b6
                    00B7    485 G$RD$0$0 == 0x00b7
                    00B7    486 _RD	=	0x00b7
                    00B8    487 G$PX0$0$0 == 0x00b8
                    00B8    488 _PX0	=	0x00b8
                    00B9    489 G$PT0$0$0 == 0x00b9
                    00B9    490 _PT0	=	0x00b9
                    00BA    491 G$PX1$0$0 == 0x00ba
                    00BA    492 _PX1	=	0x00ba
                    00BB    493 G$PT1$0$0 == 0x00bb
                    00BB    494 _PT1	=	0x00bb
                    00BC    495 G$PS$0$0 == 0x00bc
                    00BC    496 _PS	=	0x00bc
                    00D0    497 G$P$0$0 == 0x00d0
                    00D0    498 _P	=	0x00d0
                    00D1    499 G$F1$0$0 == 0x00d1
                    00D1    500 _F1	=	0x00d1
                    00D2    501 G$OV$0$0 == 0x00d2
                    00D2    502 _OV	=	0x00d2
                    00D3    503 G$RS0$0$0 == 0x00d3
                    00D3    504 _RS0	=	0x00d3
                    00D4    505 G$RS1$0$0 == 0x00d4
                    00D4    506 _RS1	=	0x00d4
                    00D5    507 G$F0$0$0 == 0x00d5
                    00D5    508 _F0	=	0x00d5
                    00D6    509 G$AC$0$0 == 0x00d6
                    00D6    510 _AC	=	0x00d6
                    00D7    511 G$CY$0$0 == 0x00d7
                    00D7    512 _CY	=	0x00d7
                    00AD    513 G$ET2$0$0 == 0x00ad
                    00AD    514 _ET2	=	0x00ad
                    00BD    515 G$PT2$0$0 == 0x00bd
                    00BD    516 _PT2	=	0x00bd
                    00C8    517 G$T2CON_0$0$0 == 0x00c8
                    00C8    518 _T2CON_0	=	0x00c8
                    00C9    519 G$T2CON_1$0$0 == 0x00c9
                    00C9    520 _T2CON_1	=	0x00c9
                    00CA    521 G$T2CON_2$0$0 == 0x00ca
                    00CA    522 _T2CON_2	=	0x00ca
                    00CB    523 G$T2CON_3$0$0 == 0x00cb
                    00CB    524 _T2CON_3	=	0x00cb
                    00CC    525 G$T2CON_4$0$0 == 0x00cc
                    00CC    526 _T2CON_4	=	0x00cc
                    00CD    527 G$T2CON_5$0$0 == 0x00cd
                    00CD    528 _T2CON_5	=	0x00cd
                    00CE    529 G$T2CON_6$0$0 == 0x00ce
                    00CE    530 _T2CON_6	=	0x00ce
                    00CF    531 G$T2CON_7$0$0 == 0x00cf
                    00CF    532 _T2CON_7	=	0x00cf
                    00C8    533 G$CP_RL2$0$0 == 0x00c8
                    00C8    534 _CP_RL2	=	0x00c8
                    00C9    535 G$C_T2$0$0 == 0x00c9
                    00C9    536 _C_T2	=	0x00c9
                    00CA    537 G$TR2$0$0 == 0x00ca
                    00CA    538 _TR2	=	0x00ca
                    00CB    539 G$EXEN2$0$0 == 0x00cb
                    00CB    540 _EXEN2	=	0x00cb
                    00CC    541 G$TCLK$0$0 == 0x00cc
                    00CC    542 _TCLK	=	0x00cc
                    00CD    543 G$RCLK$0$0 == 0x00cd
                    00CD    544 _RCLK	=	0x00cd
                    00CE    545 G$EXF2$0$0 == 0x00ce
                    00CE    546 _EXF2	=	0x00ce
                    00CF    547 G$TF2$0$0 == 0x00cf
                    00CF    548 _TF2	=	0x00cf
                    00DF    549 G$CF$0$0 == 0x00df
                    00DF    550 _CF	=	0x00df
                    00DE    551 G$CR$0$0 == 0x00de
                    00DE    552 _CR	=	0x00de
                    00DC    553 G$CCF4$0$0 == 0x00dc
                    00DC    554 _CCF4	=	0x00dc
                    00DB    555 G$CCF3$0$0 == 0x00db
                    00DB    556 _CCF3	=	0x00db
                    00DA    557 G$CCF2$0$0 == 0x00da
                    00DA    558 _CCF2	=	0x00da
                    00D9    559 G$CCF1$0$0 == 0x00d9
                    00D9    560 _CCF1	=	0x00d9
                    00D8    561 G$CCF0$0$0 == 0x00d8
                    00D8    562 _CCF0	=	0x00d8
                    00AE    563 G$EC$0$0 == 0x00ae
                    00AE    564 _EC	=	0x00ae
                    00BE    565 G$PPCL$0$0 == 0x00be
                    00BE    566 _PPCL	=	0x00be
                    00BD    567 G$PT2L$0$0 == 0x00bd
                    00BD    568 _PT2L	=	0x00bd
                    00BC    569 G$PLS$0$0 == 0x00bc
                    00BC    570 _PLS	=	0x00bc
                    00BB    571 G$PT1L$0$0 == 0x00bb
                    00BB    572 _PT1L	=	0x00bb
                    00BA    573 G$PX1L$0$0 == 0x00ba
                    00BA    574 _PX1L	=	0x00ba
                    00B9    575 G$PT0L$0$0 == 0x00b9
                    00B9    576 _PT0L	=	0x00b9
                    00B8    577 G$PX0L$0$0 == 0x00b8
                    00B8    578 _PX0L	=	0x00b8
                    00C0    579 G$P4_0$0$0 == 0x00c0
                    00C0    580 _P4_0	=	0x00c0
                    00C1    581 G$P4_1$0$0 == 0x00c1
                    00C1    582 _P4_1	=	0x00c1
                    00C2    583 G$P4_2$0$0 == 0x00c2
                    00C2    584 _P4_2	=	0x00c2
                    00C3    585 G$P4_3$0$0 == 0x00c3
                    00C3    586 _P4_3	=	0x00c3
                    00C4    587 G$P4_4$0$0 == 0x00c4
                    00C4    588 _P4_4	=	0x00c4
                    00C5    589 G$P4_5$0$0 == 0x00c5
                    00C5    590 _P4_5	=	0x00c5
                    00C6    591 G$P4_6$0$0 == 0x00c6
                    00C6    592 _P4_6	=	0x00c6
                    00C7    593 G$P4_7$0$0 == 0x00c7
                    00C7    594 _P4_7	=	0x00c7
                    00D8    595 G$P5_0$0$0 == 0x00d8
                    00D8    596 _P5_0	=	0x00d8
                    00D9    597 G$P5_1$0$0 == 0x00d9
                    00D9    598 _P5_1	=	0x00d9
                    00DA    599 G$P5_2$0$0 == 0x00da
                    00DA    600 _P5_2	=	0x00da
                    00DB    601 G$P5_3$0$0 == 0x00db
                    00DB    602 _P5_3	=	0x00db
                    00DC    603 G$P5_4$0$0 == 0x00dc
                    00DC    604 _P5_4	=	0x00dc
                    00DD    605 G$P5_5$0$0 == 0x00dd
                    00DD    606 _P5_5	=	0x00dd
                    00DE    607 G$P5_6$0$0 == 0x00de
                    00DE    608 _P5_6	=	0x00de
                    00DF    609 G$P5_7$0$0 == 0x00df
                    00DF    610 _P5_7	=	0x00df
                            611 ;--------------------------------------------------------
                            612 ; overlayable register banks
                            613 ;--------------------------------------------------------
                            614 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     615 	.ds 8
                            616 ;--------------------------------------------------------
                            617 ; internal ram data
                            618 ;--------------------------------------------------------
                            619 	.area DSEG    (DATA)
                            620 ;--------------------------------------------------------
                            621 ; overlayable items in internal ram 
                            622 ;--------------------------------------------------------
                            623 	.area OSEG    (OVR,DATA)
                            624 ;--------------------------------------------------------
                            625 ; indirectly addressable internal ram data
                            626 ;--------------------------------------------------------
                            627 	.area ISEG    (DATA)
                            628 ;--------------------------------------------------------
                            629 ; bit data
                            630 ;--------------------------------------------------------
                            631 	.area BSEG    (BIT)
                            632 ;--------------------------------------------------------
                            633 ; paged external ram data
                            634 ;--------------------------------------------------------
                            635 	.area PSEG    (PAG,XDATA)
                            636 ;--------------------------------------------------------
                            637 ; external ram data
                            638 ;--------------------------------------------------------
                            639 	.area XSEG    (XDATA)
                    0000    640 G$Stat$0$0==.
   0001                     641 _Stat::
   0001                     642 	.ds 1
                    3000    643 G$CardType$0$0 == 0x3000
                    3000    644 _CardType	=	0x3000
                            645 ;--------------------------------------------------------
                            646 ; external initialized ram data
                            647 ;--------------------------------------------------------
                            648 	.area XISEG   (XDATA)
                            649 	.area HOME    (CODE)
                            650 	.area GSINIT0 (CODE)
                            651 	.area GSINIT1 (CODE)
                            652 	.area GSINIT2 (CODE)
                            653 	.area GSINIT3 (CODE)
                            654 	.area GSINIT4 (CODE)
                            655 	.area GSINIT5 (CODE)
                            656 	.area GSINIT  (CODE)
                            657 	.area GSFINAL (CODE)
                            658 	.area CSEG    (CODE)
                            659 ;--------------------------------------------------------
                            660 ; global & static initialisations
                            661 ;--------------------------------------------------------
                            662 	.area HOME    (CODE)
                            663 	.area GSINIT  (CODE)
                            664 	.area GSFINAL (CODE)
                            665 	.area GSINIT  (CODE)
                            666 ;--------------------------------------------------------
                            667 ; Home
                            668 ;--------------------------------------------------------
                            669 	.area HOME    (CODE)
                            670 	.area CSEG    (CODE)
                            671 ;--------------------------------------------------------
                            672 ; code
                            673 ;--------------------------------------------------------
                            674 	.area CSEG    (CODE)
                            675 ;------------------------------------------------------------
                            676 ;Allocation info for local variables in function 'init'
                            677 ;------------------------------------------------------------
                            678 ;------------------------------------------------------------
                    0000    679 	G$init$0$0 ==.
                    0000    680 	C$init.c$3$0$0 ==.
                            681 ;	init.c:3: void init()               									   //Intiallisation function
                            682 ;	-----------------------------------------
                            683 ;	 function init
                            684 ;	-----------------------------------------
   01B5                     685 _init:
                    0002    686 	ar2 = 0x02
                    0003    687 	ar3 = 0x03
                    0004    688 	ar4 = 0x04
                    0005    689 	ar5 = 0x05
                    0006    690 	ar6 = 0x06
                    0007    691 	ar7 = 0x07
                    0000    692 	ar0 = 0x00
                    0001    693 	ar1 = 0x01
                    0000    694 	C$init.c$5$1$1 ==.
                            695 ;	init.c:5: SCON = 0x50;										  // SCON register set to serial mode 1 and receiver enabled
                            696 ;	genAssign
   01B5 75 98 50            697 	mov	_SCON,#0x50
                    0003    698 	C$init.c$6$1$1 ==.
                            699 ;	init.c:6: PCON |= SMOD;										  // Set SOMOD bit to operate at double baud rate
                            700 ;	genOr
   01B8 43 87 80            701 	orl	_PCON,#0x80
                    0006    702 	C$init.c$7$1$1 ==.
                            703 ;	init.c:7: BDRCON &=0xEC;       									  // BRR = 0 to stop BR generator, SRC = 0 to select Fosc/12 as freq
                            704 ;	genAnd
   01BB 53 9B EC            705 	anl	_BDRCON,#0xEC
                    0009    706 	C$init.c$8$1$1 ==.
                            707 ;	init.c:8: BDRCON |=0x0E;        									  // SPD = 1 to select fast mode, RBCK = TBCK = 1 to select internal baud rate generator
                            708 ;	genOr
   01BE 43 9B 0E            709 	orl	_BDRCON,#0x0E
                    000C    710 	C$init.c$9$1$1 ==.
                            711 ;	init.c:9: BRL = 0xFD;            									  // Enter value in BRL register to select appropriate rate
                            712 ;	genAssign
   01C1 75 9A FD            713 	mov	_BRL,#0xFD
                    000F    714 	C$init.c$10$1$1 ==.
                            715 ;	init.c:10: EA = 1; 										        // Enable all interrupts
                            716 ;	genAssign
   01C4 D2 AF               717 	setb	_EA
                    0011    718 	C$init.c$11$1$1 ==.
                            719 ;	init.c:11: BDRCON |=0x10;         									  // Start internal Baud rate Generator
                            720 ;	genOr
   01C6 43 9B 10            721 	orl	_BDRCON,#0x10
                            722 ;	Peephole 300	removed redundant label 00101$
                    0014    723 	C$init.c$12$1$1 ==.
                    0014    724 	XG$init$0$0 ==.
   01C9 22                  725 	ret
                            726 	.area CSEG    (CODE)
                            727 	.area CONST   (CODE)
                            728 	.area XINIT   (CODE)
