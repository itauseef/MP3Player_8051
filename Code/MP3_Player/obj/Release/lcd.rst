                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : FreeWare ANSI-C Compiler
                              3 ; Version 2.6.0 #4309 (Jul 28 2006)
                              4 ; This file generated Tue Apr 21 22:20:46 2015
                              5 ;--------------------------------------------------------
                              6 	.module lcd
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
                            210 ;--------------------------------------------------------
                            211 ; special function registers
                            212 ;--------------------------------------------------------
                            213 	.area RSEG    (DATA)
                    0080    214 G$P0$0$0 == 0x0080
                    0080    215 _P0	=	0x0080
                    0081    216 G$SP$0$0 == 0x0081
                    0081    217 _SP	=	0x0081
                    0082    218 G$DPL$0$0 == 0x0082
                    0082    219 _DPL	=	0x0082
                    0083    220 G$DPH$0$0 == 0x0083
                    0083    221 _DPH	=	0x0083
                    0087    222 G$PCON$0$0 == 0x0087
                    0087    223 _PCON	=	0x0087
                    0088    224 G$TCON$0$0 == 0x0088
                    0088    225 _TCON	=	0x0088
                    0089    226 G$TMOD$0$0 == 0x0089
                    0089    227 _TMOD	=	0x0089
                    008A    228 G$TL0$0$0 == 0x008a
                    008A    229 _TL0	=	0x008a
                    008B    230 G$TL1$0$0 == 0x008b
                    008B    231 _TL1	=	0x008b
                    008C    232 G$TH0$0$0 == 0x008c
                    008C    233 _TH0	=	0x008c
                    008D    234 G$TH1$0$0 == 0x008d
                    008D    235 _TH1	=	0x008d
                    0090    236 G$P1$0$0 == 0x0090
                    0090    237 _P1	=	0x0090
                    0098    238 G$SCON$0$0 == 0x0098
                    0098    239 _SCON	=	0x0098
                    0099    240 G$SBUF$0$0 == 0x0099
                    0099    241 _SBUF	=	0x0099
                    00A0    242 G$P2$0$0 == 0x00a0
                    00A0    243 _P2	=	0x00a0
                    00A8    244 G$IE$0$0 == 0x00a8
                    00A8    245 _IE	=	0x00a8
                    00B0    246 G$P3$0$0 == 0x00b0
                    00B0    247 _P3	=	0x00b0
                    00B8    248 G$IP$0$0 == 0x00b8
                    00B8    249 _IP	=	0x00b8
                    00D0    250 G$PSW$0$0 == 0x00d0
                    00D0    251 _PSW	=	0x00d0
                    00E0    252 G$ACC$0$0 == 0x00e0
                    00E0    253 _ACC	=	0x00e0
                    00F0    254 G$B$0$0 == 0x00f0
                    00F0    255 _B	=	0x00f0
                    00C8    256 G$T2CON$0$0 == 0x00c8
                    00C8    257 _T2CON	=	0x00c8
                    00CA    258 G$RCAP2L$0$0 == 0x00ca
                    00CA    259 _RCAP2L	=	0x00ca
                    00CB    260 G$RCAP2H$0$0 == 0x00cb
                    00CB    261 _RCAP2H	=	0x00cb
                    00CC    262 G$TL2$0$0 == 0x00cc
                    00CC    263 _TL2	=	0x00cc
                    00CD    264 G$TH2$0$0 == 0x00cd
                    00CD    265 _TH2	=	0x00cd
                    008E    266 G$AUXR$0$0 == 0x008e
                    008E    267 _AUXR	=	0x008e
                    00A2    268 G$AUXR1$0$0 == 0x00a2
                    00A2    269 _AUXR1	=	0x00a2
                    0097    270 G$CKRL$0$0 == 0x0097
                    0097    271 _CKRL	=	0x0097
                    008F    272 G$CKCKON0$0$0 == 0x008f
                    008F    273 _CKCKON0	=	0x008f
                    008F    274 G$CKCKON1$0$0 == 0x008f
                    008F    275 _CKCKON1	=	0x008f
                    00FA    276 G$CCAP0H$0$0 == 0x00fa
                    00FA    277 _CCAP0H	=	0x00fa
                    00FB    278 G$CCAP1H$0$0 == 0x00fb
                    00FB    279 _CCAP1H	=	0x00fb
                    00FC    280 G$CCAP2H$0$0 == 0x00fc
                    00FC    281 _CCAP2H	=	0x00fc
                    00FD    282 G$CCAP3H$0$0 == 0x00fd
                    00FD    283 _CCAP3H	=	0x00fd
                    00FE    284 G$CCAP4H$0$0 == 0x00fe
                    00FE    285 _CCAP4H	=	0x00fe
                    00EA    286 G$CCAP0L$0$0 == 0x00ea
                    00EA    287 _CCAP0L	=	0x00ea
                    00EB    288 G$CCAP1L$0$0 == 0x00eb
                    00EB    289 _CCAP1L	=	0x00eb
                    00EC    290 G$CCAP2L$0$0 == 0x00ec
                    00EC    291 _CCAP2L	=	0x00ec
                    00ED    292 G$CCAP3L$0$0 == 0x00ed
                    00ED    293 _CCAP3L	=	0x00ed
                    00EE    294 G$CCAP4L$0$0 == 0x00ee
                    00EE    295 _CCAP4L	=	0x00ee
                    00DA    296 G$CCAPM0$0$0 == 0x00da
                    00DA    297 _CCAPM0	=	0x00da
                    00DB    298 G$CCAPM1$0$0 == 0x00db
                    00DB    299 _CCAPM1	=	0x00db
                    00DC    300 G$CCAPM2$0$0 == 0x00dc
                    00DC    301 _CCAPM2	=	0x00dc
                    00DD    302 G$CCAPM3$0$0 == 0x00dd
                    00DD    303 _CCAPM3	=	0x00dd
                    00DE    304 G$CCAPM4$0$0 == 0x00de
                    00DE    305 _CCAPM4	=	0x00de
                    00D8    306 G$CCON$0$0 == 0x00d8
                    00D8    307 _CCON	=	0x00d8
                    00F9    308 G$CH$0$0 == 0x00f9
                    00F9    309 _CH	=	0x00f9
                    00E9    310 G$CL$0$0 == 0x00e9
                    00E9    311 _CL	=	0x00e9
                    00D9    312 G$CMOD$0$0 == 0x00d9
                    00D9    313 _CMOD	=	0x00d9
                    00A8    314 G$IEN0$0$0 == 0x00a8
                    00A8    315 _IEN0	=	0x00a8
                    00B1    316 G$IEN1$0$0 == 0x00b1
                    00B1    317 _IEN1	=	0x00b1
                    00B8    318 G$IPL0$0$0 == 0x00b8
                    00B8    319 _IPL0	=	0x00b8
                    00B7    320 G$IPH0$0$0 == 0x00b7
                    00B7    321 _IPH0	=	0x00b7
                    00B2    322 G$IPL1$0$0 == 0x00b2
                    00B2    323 _IPL1	=	0x00b2
                    00B3    324 G$IPH1$0$0 == 0x00b3
                    00B3    325 _IPH1	=	0x00b3
                    00C0    326 G$P4$0$0 == 0x00c0
                    00C0    327 _P4	=	0x00c0
                    00D8    328 G$P5$0$0 == 0x00d8
                    00D8    329 _P5	=	0x00d8
                    00A6    330 G$WDTRST$0$0 == 0x00a6
                    00A6    331 _WDTRST	=	0x00a6
                    00A7    332 G$WDTPRG$0$0 == 0x00a7
                    00A7    333 _WDTPRG	=	0x00a7
                    00A9    334 G$SADDR$0$0 == 0x00a9
                    00A9    335 _SADDR	=	0x00a9
                    00B9    336 G$SADEN$0$0 == 0x00b9
                    00B9    337 _SADEN	=	0x00b9
                    00C3    338 G$SPCON$0$0 == 0x00c3
                    00C3    339 _SPCON	=	0x00c3
                    00C4    340 G$SPSTA$0$0 == 0x00c4
                    00C4    341 _SPSTA	=	0x00c4
                    00C5    342 G$SPDAT$0$0 == 0x00c5
                    00C5    343 _SPDAT	=	0x00c5
                    00C9    344 G$T2MOD$0$0 == 0x00c9
                    00C9    345 _T2MOD	=	0x00c9
                    009B    346 G$BDRCON$0$0 == 0x009b
                    009B    347 _BDRCON	=	0x009b
                    009A    348 G$BRL$0$0 == 0x009a
                    009A    349 _BRL	=	0x009a
                    009C    350 G$KBLS$0$0 == 0x009c
                    009C    351 _KBLS	=	0x009c
                    009D    352 G$KBE$0$0 == 0x009d
                    009D    353 _KBE	=	0x009d
                    009E    354 G$KBF$0$0 == 0x009e
                    009E    355 _KBF	=	0x009e
                    00D2    356 G$EECON$0$0 == 0x00d2
                    00D2    357 _EECON	=	0x00d2
                            358 ;--------------------------------------------------------
                            359 ; special function bits
                            360 ;--------------------------------------------------------
                            361 	.area RSEG    (DATA)
                    0080    362 G$P0_0$0$0 == 0x0080
                    0080    363 _P0_0	=	0x0080
                    0081    364 G$P0_1$0$0 == 0x0081
                    0081    365 _P0_1	=	0x0081
                    0082    366 G$P0_2$0$0 == 0x0082
                    0082    367 _P0_2	=	0x0082
                    0083    368 G$P0_3$0$0 == 0x0083
                    0083    369 _P0_3	=	0x0083
                    0084    370 G$P0_4$0$0 == 0x0084
                    0084    371 _P0_4	=	0x0084
                    0085    372 G$P0_5$0$0 == 0x0085
                    0085    373 _P0_5	=	0x0085
                    0086    374 G$P0_6$0$0 == 0x0086
                    0086    375 _P0_6	=	0x0086
                    0087    376 G$P0_7$0$0 == 0x0087
                    0087    377 _P0_7	=	0x0087
                    0088    378 G$IT0$0$0 == 0x0088
                    0088    379 _IT0	=	0x0088
                    0089    380 G$IE0$0$0 == 0x0089
                    0089    381 _IE0	=	0x0089
                    008A    382 G$IT1$0$0 == 0x008a
                    008A    383 _IT1	=	0x008a
                    008B    384 G$IE1$0$0 == 0x008b
                    008B    385 _IE1	=	0x008b
                    008C    386 G$TR0$0$0 == 0x008c
                    008C    387 _TR0	=	0x008c
                    008D    388 G$TF0$0$0 == 0x008d
                    008D    389 _TF0	=	0x008d
                    008E    390 G$TR1$0$0 == 0x008e
                    008E    391 _TR1	=	0x008e
                    008F    392 G$TF1$0$0 == 0x008f
                    008F    393 _TF1	=	0x008f
                    0090    394 G$P1_0$0$0 == 0x0090
                    0090    395 _P1_0	=	0x0090
                    0091    396 G$P1_1$0$0 == 0x0091
                    0091    397 _P1_1	=	0x0091
                    0092    398 G$P1_2$0$0 == 0x0092
                    0092    399 _P1_2	=	0x0092
                    0093    400 G$P1_3$0$0 == 0x0093
                    0093    401 _P1_3	=	0x0093
                    0094    402 G$P1_4$0$0 == 0x0094
                    0094    403 _P1_4	=	0x0094
                    0095    404 G$P1_5$0$0 == 0x0095
                    0095    405 _P1_5	=	0x0095
                    0096    406 G$P1_6$0$0 == 0x0096
                    0096    407 _P1_6	=	0x0096
                    0097    408 G$P1_7$0$0 == 0x0097
                    0097    409 _P1_7	=	0x0097
                    0098    410 G$RI$0$0 == 0x0098
                    0098    411 _RI	=	0x0098
                    0099    412 G$TI$0$0 == 0x0099
                    0099    413 _TI	=	0x0099
                    009A    414 G$RB8$0$0 == 0x009a
                    009A    415 _RB8	=	0x009a
                    009B    416 G$TB8$0$0 == 0x009b
                    009B    417 _TB8	=	0x009b
                    009C    418 G$REN$0$0 == 0x009c
                    009C    419 _REN	=	0x009c
                    009D    420 G$SM2$0$0 == 0x009d
                    009D    421 _SM2	=	0x009d
                    009E    422 G$SM1$0$0 == 0x009e
                    009E    423 _SM1	=	0x009e
                    009F    424 G$SM0$0$0 == 0x009f
                    009F    425 _SM0	=	0x009f
                    00A0    426 G$P2_0$0$0 == 0x00a0
                    00A0    427 _P2_0	=	0x00a0
                    00A1    428 G$P2_1$0$0 == 0x00a1
                    00A1    429 _P2_1	=	0x00a1
                    00A2    430 G$P2_2$0$0 == 0x00a2
                    00A2    431 _P2_2	=	0x00a2
                    00A3    432 G$P2_3$0$0 == 0x00a3
                    00A3    433 _P2_3	=	0x00a3
                    00A4    434 G$P2_4$0$0 == 0x00a4
                    00A4    435 _P2_4	=	0x00a4
                    00A5    436 G$P2_5$0$0 == 0x00a5
                    00A5    437 _P2_5	=	0x00a5
                    00A6    438 G$P2_6$0$0 == 0x00a6
                    00A6    439 _P2_6	=	0x00a6
                    00A7    440 G$P2_7$0$0 == 0x00a7
                    00A7    441 _P2_7	=	0x00a7
                    00A8    442 G$EX0$0$0 == 0x00a8
                    00A8    443 _EX0	=	0x00a8
                    00A9    444 G$ET0$0$0 == 0x00a9
                    00A9    445 _ET0	=	0x00a9
                    00AA    446 G$EX1$0$0 == 0x00aa
                    00AA    447 _EX1	=	0x00aa
                    00AB    448 G$ET1$0$0 == 0x00ab
                    00AB    449 _ET1	=	0x00ab
                    00AC    450 G$ES$0$0 == 0x00ac
                    00AC    451 _ES	=	0x00ac
                    00AF    452 G$EA$0$0 == 0x00af
                    00AF    453 _EA	=	0x00af
                    00B0    454 G$P3_0$0$0 == 0x00b0
                    00B0    455 _P3_0	=	0x00b0
                    00B1    456 G$P3_1$0$0 == 0x00b1
                    00B1    457 _P3_1	=	0x00b1
                    00B2    458 G$P3_2$0$0 == 0x00b2
                    00B2    459 _P3_2	=	0x00b2
                    00B3    460 G$P3_3$0$0 == 0x00b3
                    00B3    461 _P3_3	=	0x00b3
                    00B4    462 G$P3_4$0$0 == 0x00b4
                    00B4    463 _P3_4	=	0x00b4
                    00B5    464 G$P3_5$0$0 == 0x00b5
                    00B5    465 _P3_5	=	0x00b5
                    00B6    466 G$P3_6$0$0 == 0x00b6
                    00B6    467 _P3_6	=	0x00b6
                    00B7    468 G$P3_7$0$0 == 0x00b7
                    00B7    469 _P3_7	=	0x00b7
                    00B0    470 G$RXD$0$0 == 0x00b0
                    00B0    471 _RXD	=	0x00b0
                    00B1    472 G$TXD$0$0 == 0x00b1
                    00B1    473 _TXD	=	0x00b1
                    00B2    474 G$INT0$0$0 == 0x00b2
                    00B2    475 _INT0	=	0x00b2
                    00B3    476 G$INT1$0$0 == 0x00b3
                    00B3    477 _INT1	=	0x00b3
                    00B4    478 G$T0$0$0 == 0x00b4
                    00B4    479 _T0	=	0x00b4
                    00B5    480 G$T1$0$0 == 0x00b5
                    00B5    481 _T1	=	0x00b5
                    00B6    482 G$WR$0$0 == 0x00b6
                    00B6    483 _WR	=	0x00b6
                    00B7    484 G$RD$0$0 == 0x00b7
                    00B7    485 _RD	=	0x00b7
                    00B8    486 G$PX0$0$0 == 0x00b8
                    00B8    487 _PX0	=	0x00b8
                    00B9    488 G$PT0$0$0 == 0x00b9
                    00B9    489 _PT0	=	0x00b9
                    00BA    490 G$PX1$0$0 == 0x00ba
                    00BA    491 _PX1	=	0x00ba
                    00BB    492 G$PT1$0$0 == 0x00bb
                    00BB    493 _PT1	=	0x00bb
                    00BC    494 G$PS$0$0 == 0x00bc
                    00BC    495 _PS	=	0x00bc
                    00D0    496 G$P$0$0 == 0x00d0
                    00D0    497 _P	=	0x00d0
                    00D1    498 G$F1$0$0 == 0x00d1
                    00D1    499 _F1	=	0x00d1
                    00D2    500 G$OV$0$0 == 0x00d2
                    00D2    501 _OV	=	0x00d2
                    00D3    502 G$RS0$0$0 == 0x00d3
                    00D3    503 _RS0	=	0x00d3
                    00D4    504 G$RS1$0$0 == 0x00d4
                    00D4    505 _RS1	=	0x00d4
                    00D5    506 G$F0$0$0 == 0x00d5
                    00D5    507 _F0	=	0x00d5
                    00D6    508 G$AC$0$0 == 0x00d6
                    00D6    509 _AC	=	0x00d6
                    00D7    510 G$CY$0$0 == 0x00d7
                    00D7    511 _CY	=	0x00d7
                    00AD    512 G$ET2$0$0 == 0x00ad
                    00AD    513 _ET2	=	0x00ad
                    00BD    514 G$PT2$0$0 == 0x00bd
                    00BD    515 _PT2	=	0x00bd
                    00C8    516 G$T2CON_0$0$0 == 0x00c8
                    00C8    517 _T2CON_0	=	0x00c8
                    00C9    518 G$T2CON_1$0$0 == 0x00c9
                    00C9    519 _T2CON_1	=	0x00c9
                    00CA    520 G$T2CON_2$0$0 == 0x00ca
                    00CA    521 _T2CON_2	=	0x00ca
                    00CB    522 G$T2CON_3$0$0 == 0x00cb
                    00CB    523 _T2CON_3	=	0x00cb
                    00CC    524 G$T2CON_4$0$0 == 0x00cc
                    00CC    525 _T2CON_4	=	0x00cc
                    00CD    526 G$T2CON_5$0$0 == 0x00cd
                    00CD    527 _T2CON_5	=	0x00cd
                    00CE    528 G$T2CON_6$0$0 == 0x00ce
                    00CE    529 _T2CON_6	=	0x00ce
                    00CF    530 G$T2CON_7$0$0 == 0x00cf
                    00CF    531 _T2CON_7	=	0x00cf
                    00C8    532 G$CP_RL2$0$0 == 0x00c8
                    00C8    533 _CP_RL2	=	0x00c8
                    00C9    534 G$C_T2$0$0 == 0x00c9
                    00C9    535 _C_T2	=	0x00c9
                    00CA    536 G$TR2$0$0 == 0x00ca
                    00CA    537 _TR2	=	0x00ca
                    00CB    538 G$EXEN2$0$0 == 0x00cb
                    00CB    539 _EXEN2	=	0x00cb
                    00CC    540 G$TCLK$0$0 == 0x00cc
                    00CC    541 _TCLK	=	0x00cc
                    00CD    542 G$RCLK$0$0 == 0x00cd
                    00CD    543 _RCLK	=	0x00cd
                    00CE    544 G$EXF2$0$0 == 0x00ce
                    00CE    545 _EXF2	=	0x00ce
                    00CF    546 G$TF2$0$0 == 0x00cf
                    00CF    547 _TF2	=	0x00cf
                    00DF    548 G$CF$0$0 == 0x00df
                    00DF    549 _CF	=	0x00df
                    00DE    550 G$CR$0$0 == 0x00de
                    00DE    551 _CR	=	0x00de
                    00DC    552 G$CCF4$0$0 == 0x00dc
                    00DC    553 _CCF4	=	0x00dc
                    00DB    554 G$CCF3$0$0 == 0x00db
                    00DB    555 _CCF3	=	0x00db
                    00DA    556 G$CCF2$0$0 == 0x00da
                    00DA    557 _CCF2	=	0x00da
                    00D9    558 G$CCF1$0$0 == 0x00d9
                    00D9    559 _CCF1	=	0x00d9
                    00D8    560 G$CCF0$0$0 == 0x00d8
                    00D8    561 _CCF0	=	0x00d8
                    00AE    562 G$EC$0$0 == 0x00ae
                    00AE    563 _EC	=	0x00ae
                    00BE    564 G$PPCL$0$0 == 0x00be
                    00BE    565 _PPCL	=	0x00be
                    00BD    566 G$PT2L$0$0 == 0x00bd
                    00BD    567 _PT2L	=	0x00bd
                    00BC    568 G$PLS$0$0 == 0x00bc
                    00BC    569 _PLS	=	0x00bc
                    00BB    570 G$PT1L$0$0 == 0x00bb
                    00BB    571 _PT1L	=	0x00bb
                    00BA    572 G$PX1L$0$0 == 0x00ba
                    00BA    573 _PX1L	=	0x00ba
                    00B9    574 G$PT0L$0$0 == 0x00b9
                    00B9    575 _PT0L	=	0x00b9
                    00B8    576 G$PX0L$0$0 == 0x00b8
                    00B8    577 _PX0L	=	0x00b8
                    00C0    578 G$P4_0$0$0 == 0x00c0
                    00C0    579 _P4_0	=	0x00c0
                    00C1    580 G$P4_1$0$0 == 0x00c1
                    00C1    581 _P4_1	=	0x00c1
                    00C2    582 G$P4_2$0$0 == 0x00c2
                    00C2    583 _P4_2	=	0x00c2
                    00C3    584 G$P4_3$0$0 == 0x00c3
                    00C3    585 _P4_3	=	0x00c3
                    00C4    586 G$P4_4$0$0 == 0x00c4
                    00C4    587 _P4_4	=	0x00c4
                    00C5    588 G$P4_5$0$0 == 0x00c5
                    00C5    589 _P4_5	=	0x00c5
                    00C6    590 G$P4_6$0$0 == 0x00c6
                    00C6    591 _P4_6	=	0x00c6
                    00C7    592 G$P4_7$0$0 == 0x00c7
                    00C7    593 _P4_7	=	0x00c7
                    00D8    594 G$P5_0$0$0 == 0x00d8
                    00D8    595 _P5_0	=	0x00d8
                    00D9    596 G$P5_1$0$0 == 0x00d9
                    00D9    597 _P5_1	=	0x00d9
                    00DA    598 G$P5_2$0$0 == 0x00da
                    00DA    599 _P5_2	=	0x00da
                    00DB    600 G$P5_3$0$0 == 0x00db
                    00DB    601 _P5_3	=	0x00db
                    00DC    602 G$P5_4$0$0 == 0x00dc
                    00DC    603 _P5_4	=	0x00dc
                    00DD    604 G$P5_5$0$0 == 0x00dd
                    00DD    605 _P5_5	=	0x00dd
                    00DE    606 G$P5_6$0$0 == 0x00de
                    00DE    607 _P5_6	=	0x00de
                    00DF    608 G$P5_7$0$0 == 0x00df
                    00DF    609 _P5_7	=	0x00df
                            610 ;--------------------------------------------------------
                            611 ; overlayable register banks
                            612 ;--------------------------------------------------------
                            613 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     614 	.ds 8
                            615 ;--------------------------------------------------------
                            616 ; internal ram data
                            617 ;--------------------------------------------------------
                            618 	.area DSEG    (DATA)
                            619 ;--------------------------------------------------------
                            620 ; overlayable items in internal ram 
                            621 ;--------------------------------------------------------
                            622 	.area OSEG    (OVR,DATA)
                            623 ;--------------------------------------------------------
                            624 ; indirectly addressable internal ram data
                            625 ;--------------------------------------------------------
                            626 	.area ISEG    (DATA)
                            627 ;--------------------------------------------------------
                            628 ; bit data
                            629 ;--------------------------------------------------------
                            630 	.area BSEG    (BIT)
                            631 ;--------------------------------------------------------
                            632 ; paged external ram data
                            633 ;--------------------------------------------------------
                            634 	.area PSEG    (PAG,XDATA)
                            635 ;--------------------------------------------------------
                            636 ; external ram data
                            637 ;--------------------------------------------------------
                            638 	.area XSEG    (XDATA)
                    0000    639 G$Stat$0$0==.
   0002                     640 _Stat::
   0002                     641 	.ds 1
                    3000    642 G$CardType$0$0 == 0x3000
                    3000    643 _CardType	=	0x3000
                            644 ;--------------------------------------------------------
                            645 ; external initialized ram data
                            646 ;--------------------------------------------------------
                            647 	.area XISEG   (XDATA)
                            648 	.area HOME    (CODE)
                            649 	.area GSINIT0 (CODE)
                            650 	.area GSINIT1 (CODE)
                            651 	.area GSINIT2 (CODE)
                            652 	.area GSINIT3 (CODE)
                            653 	.area GSINIT4 (CODE)
                            654 	.area GSINIT5 (CODE)
                            655 	.area GSINIT  (CODE)
                            656 	.area GSFINAL (CODE)
                            657 	.area CSEG    (CODE)
                            658 ;--------------------------------------------------------
                            659 ; global & static initialisations
                            660 ;--------------------------------------------------------
                            661 	.area HOME    (CODE)
                            662 	.area GSINIT  (CODE)
                            663 	.area GSFINAL (CODE)
                            664 	.area GSINIT  (CODE)
                            665 ;--------------------------------------------------------
                            666 ; Home
                            667 ;--------------------------------------------------------
                            668 	.area HOME    (CODE)
                            669 	.area CSEG    (CODE)
                            670 ;--------------------------------------------------------
                            671 ; code
                            672 ;--------------------------------------------------------
                            673 	.area CSEG    (CODE)
                            674 	.area CSEG    (CODE)
                            675 	.area CONST   (CODE)
                            676 	.area XINIT   (CODE)
