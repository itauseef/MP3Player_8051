                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : FreeWare ANSI-C Compiler
                              3 ; Version 2.6.0 #4309 (Jul 28 2006)
                              4 ; This file generated Tue Apr 21 22:20:45 2015
                              5 ;--------------------------------------------------------
                              6 	.module diskio
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
                            210 	.globl _disk_initialize
                            211 	.globl _disk_status
                            212 	.globl _disk_read
                            213 	.globl _disk_write
                            214 	.globl _disk_ioctl
                            215 ;--------------------------------------------------------
                            216 ; special function registers
                            217 ;--------------------------------------------------------
                            218 	.area RSEG    (DATA)
                    0080    219 G$P0$0$0 == 0x0080
                    0080    220 _P0	=	0x0080
                    0081    221 G$SP$0$0 == 0x0081
                    0081    222 _SP	=	0x0081
                    0082    223 G$DPL$0$0 == 0x0082
                    0082    224 _DPL	=	0x0082
                    0083    225 G$DPH$0$0 == 0x0083
                    0083    226 _DPH	=	0x0083
                    0087    227 G$PCON$0$0 == 0x0087
                    0087    228 _PCON	=	0x0087
                    0088    229 G$TCON$0$0 == 0x0088
                    0088    230 _TCON	=	0x0088
                    0089    231 G$TMOD$0$0 == 0x0089
                    0089    232 _TMOD	=	0x0089
                    008A    233 G$TL0$0$0 == 0x008a
                    008A    234 _TL0	=	0x008a
                    008B    235 G$TL1$0$0 == 0x008b
                    008B    236 _TL1	=	0x008b
                    008C    237 G$TH0$0$0 == 0x008c
                    008C    238 _TH0	=	0x008c
                    008D    239 G$TH1$0$0 == 0x008d
                    008D    240 _TH1	=	0x008d
                    0090    241 G$P1$0$0 == 0x0090
                    0090    242 _P1	=	0x0090
                    0098    243 G$SCON$0$0 == 0x0098
                    0098    244 _SCON	=	0x0098
                    0099    245 G$SBUF$0$0 == 0x0099
                    0099    246 _SBUF	=	0x0099
                    00A0    247 G$P2$0$0 == 0x00a0
                    00A0    248 _P2	=	0x00a0
                    00A8    249 G$IE$0$0 == 0x00a8
                    00A8    250 _IE	=	0x00a8
                    00B0    251 G$P3$0$0 == 0x00b0
                    00B0    252 _P3	=	0x00b0
                    00B8    253 G$IP$0$0 == 0x00b8
                    00B8    254 _IP	=	0x00b8
                    00D0    255 G$PSW$0$0 == 0x00d0
                    00D0    256 _PSW	=	0x00d0
                    00E0    257 G$ACC$0$0 == 0x00e0
                    00E0    258 _ACC	=	0x00e0
                    00F0    259 G$B$0$0 == 0x00f0
                    00F0    260 _B	=	0x00f0
                    00C8    261 G$T2CON$0$0 == 0x00c8
                    00C8    262 _T2CON	=	0x00c8
                    00CA    263 G$RCAP2L$0$0 == 0x00ca
                    00CA    264 _RCAP2L	=	0x00ca
                    00CB    265 G$RCAP2H$0$0 == 0x00cb
                    00CB    266 _RCAP2H	=	0x00cb
                    00CC    267 G$TL2$0$0 == 0x00cc
                    00CC    268 _TL2	=	0x00cc
                    00CD    269 G$TH2$0$0 == 0x00cd
                    00CD    270 _TH2	=	0x00cd
                    008E    271 G$AUXR$0$0 == 0x008e
                    008E    272 _AUXR	=	0x008e
                    00A2    273 G$AUXR1$0$0 == 0x00a2
                    00A2    274 _AUXR1	=	0x00a2
                    0097    275 G$CKRL$0$0 == 0x0097
                    0097    276 _CKRL	=	0x0097
                    008F    277 G$CKCKON0$0$0 == 0x008f
                    008F    278 _CKCKON0	=	0x008f
                    008F    279 G$CKCKON1$0$0 == 0x008f
                    008F    280 _CKCKON1	=	0x008f
                    00FA    281 G$CCAP0H$0$0 == 0x00fa
                    00FA    282 _CCAP0H	=	0x00fa
                    00FB    283 G$CCAP1H$0$0 == 0x00fb
                    00FB    284 _CCAP1H	=	0x00fb
                    00FC    285 G$CCAP2H$0$0 == 0x00fc
                    00FC    286 _CCAP2H	=	0x00fc
                    00FD    287 G$CCAP3H$0$0 == 0x00fd
                    00FD    288 _CCAP3H	=	0x00fd
                    00FE    289 G$CCAP4H$0$0 == 0x00fe
                    00FE    290 _CCAP4H	=	0x00fe
                    00EA    291 G$CCAP0L$0$0 == 0x00ea
                    00EA    292 _CCAP0L	=	0x00ea
                    00EB    293 G$CCAP1L$0$0 == 0x00eb
                    00EB    294 _CCAP1L	=	0x00eb
                    00EC    295 G$CCAP2L$0$0 == 0x00ec
                    00EC    296 _CCAP2L	=	0x00ec
                    00ED    297 G$CCAP3L$0$0 == 0x00ed
                    00ED    298 _CCAP3L	=	0x00ed
                    00EE    299 G$CCAP4L$0$0 == 0x00ee
                    00EE    300 _CCAP4L	=	0x00ee
                    00DA    301 G$CCAPM0$0$0 == 0x00da
                    00DA    302 _CCAPM0	=	0x00da
                    00DB    303 G$CCAPM1$0$0 == 0x00db
                    00DB    304 _CCAPM1	=	0x00db
                    00DC    305 G$CCAPM2$0$0 == 0x00dc
                    00DC    306 _CCAPM2	=	0x00dc
                    00DD    307 G$CCAPM3$0$0 == 0x00dd
                    00DD    308 _CCAPM3	=	0x00dd
                    00DE    309 G$CCAPM4$0$0 == 0x00de
                    00DE    310 _CCAPM4	=	0x00de
                    00D8    311 G$CCON$0$0 == 0x00d8
                    00D8    312 _CCON	=	0x00d8
                    00F9    313 G$CH$0$0 == 0x00f9
                    00F9    314 _CH	=	0x00f9
                    00E9    315 G$CL$0$0 == 0x00e9
                    00E9    316 _CL	=	0x00e9
                    00D9    317 G$CMOD$0$0 == 0x00d9
                    00D9    318 _CMOD	=	0x00d9
                    00A8    319 G$IEN0$0$0 == 0x00a8
                    00A8    320 _IEN0	=	0x00a8
                    00B1    321 G$IEN1$0$0 == 0x00b1
                    00B1    322 _IEN1	=	0x00b1
                    00B8    323 G$IPL0$0$0 == 0x00b8
                    00B8    324 _IPL0	=	0x00b8
                    00B7    325 G$IPH0$0$0 == 0x00b7
                    00B7    326 _IPH0	=	0x00b7
                    00B2    327 G$IPL1$0$0 == 0x00b2
                    00B2    328 _IPL1	=	0x00b2
                    00B3    329 G$IPH1$0$0 == 0x00b3
                    00B3    330 _IPH1	=	0x00b3
                    00C0    331 G$P4$0$0 == 0x00c0
                    00C0    332 _P4	=	0x00c0
                    00D8    333 G$P5$0$0 == 0x00d8
                    00D8    334 _P5	=	0x00d8
                    00A6    335 G$WDTRST$0$0 == 0x00a6
                    00A6    336 _WDTRST	=	0x00a6
                    00A7    337 G$WDTPRG$0$0 == 0x00a7
                    00A7    338 _WDTPRG	=	0x00a7
                    00A9    339 G$SADDR$0$0 == 0x00a9
                    00A9    340 _SADDR	=	0x00a9
                    00B9    341 G$SADEN$0$0 == 0x00b9
                    00B9    342 _SADEN	=	0x00b9
                    00C3    343 G$SPCON$0$0 == 0x00c3
                    00C3    344 _SPCON	=	0x00c3
                    00C4    345 G$SPSTA$0$0 == 0x00c4
                    00C4    346 _SPSTA	=	0x00c4
                    00C5    347 G$SPDAT$0$0 == 0x00c5
                    00C5    348 _SPDAT	=	0x00c5
                    00C9    349 G$T2MOD$0$0 == 0x00c9
                    00C9    350 _T2MOD	=	0x00c9
                    009B    351 G$BDRCON$0$0 == 0x009b
                    009B    352 _BDRCON	=	0x009b
                    009A    353 G$BRL$0$0 == 0x009a
                    009A    354 _BRL	=	0x009a
                    009C    355 G$KBLS$0$0 == 0x009c
                    009C    356 _KBLS	=	0x009c
                    009D    357 G$KBE$0$0 == 0x009d
                    009D    358 _KBE	=	0x009d
                    009E    359 G$KBF$0$0 == 0x009e
                    009E    360 _KBF	=	0x009e
                    00D2    361 G$EECON$0$0 == 0x00d2
                    00D2    362 _EECON	=	0x00d2
                            363 ;--------------------------------------------------------
                            364 ; special function bits
                            365 ;--------------------------------------------------------
                            366 	.area RSEG    (DATA)
                    0080    367 G$P0_0$0$0 == 0x0080
                    0080    368 _P0_0	=	0x0080
                    0081    369 G$P0_1$0$0 == 0x0081
                    0081    370 _P0_1	=	0x0081
                    0082    371 G$P0_2$0$0 == 0x0082
                    0082    372 _P0_2	=	0x0082
                    0083    373 G$P0_3$0$0 == 0x0083
                    0083    374 _P0_3	=	0x0083
                    0084    375 G$P0_4$0$0 == 0x0084
                    0084    376 _P0_4	=	0x0084
                    0085    377 G$P0_5$0$0 == 0x0085
                    0085    378 _P0_5	=	0x0085
                    0086    379 G$P0_6$0$0 == 0x0086
                    0086    380 _P0_6	=	0x0086
                    0087    381 G$P0_7$0$0 == 0x0087
                    0087    382 _P0_7	=	0x0087
                    0088    383 G$IT0$0$0 == 0x0088
                    0088    384 _IT0	=	0x0088
                    0089    385 G$IE0$0$0 == 0x0089
                    0089    386 _IE0	=	0x0089
                    008A    387 G$IT1$0$0 == 0x008a
                    008A    388 _IT1	=	0x008a
                    008B    389 G$IE1$0$0 == 0x008b
                    008B    390 _IE1	=	0x008b
                    008C    391 G$TR0$0$0 == 0x008c
                    008C    392 _TR0	=	0x008c
                    008D    393 G$TF0$0$0 == 0x008d
                    008D    394 _TF0	=	0x008d
                    008E    395 G$TR1$0$0 == 0x008e
                    008E    396 _TR1	=	0x008e
                    008F    397 G$TF1$0$0 == 0x008f
                    008F    398 _TF1	=	0x008f
                    0090    399 G$P1_0$0$0 == 0x0090
                    0090    400 _P1_0	=	0x0090
                    0091    401 G$P1_1$0$0 == 0x0091
                    0091    402 _P1_1	=	0x0091
                    0092    403 G$P1_2$0$0 == 0x0092
                    0092    404 _P1_2	=	0x0092
                    0093    405 G$P1_3$0$0 == 0x0093
                    0093    406 _P1_3	=	0x0093
                    0094    407 G$P1_4$0$0 == 0x0094
                    0094    408 _P1_4	=	0x0094
                    0095    409 G$P1_5$0$0 == 0x0095
                    0095    410 _P1_5	=	0x0095
                    0096    411 G$P1_6$0$0 == 0x0096
                    0096    412 _P1_6	=	0x0096
                    0097    413 G$P1_7$0$0 == 0x0097
                    0097    414 _P1_7	=	0x0097
                    0098    415 G$RI$0$0 == 0x0098
                    0098    416 _RI	=	0x0098
                    0099    417 G$TI$0$0 == 0x0099
                    0099    418 _TI	=	0x0099
                    009A    419 G$RB8$0$0 == 0x009a
                    009A    420 _RB8	=	0x009a
                    009B    421 G$TB8$0$0 == 0x009b
                    009B    422 _TB8	=	0x009b
                    009C    423 G$REN$0$0 == 0x009c
                    009C    424 _REN	=	0x009c
                    009D    425 G$SM2$0$0 == 0x009d
                    009D    426 _SM2	=	0x009d
                    009E    427 G$SM1$0$0 == 0x009e
                    009E    428 _SM1	=	0x009e
                    009F    429 G$SM0$0$0 == 0x009f
                    009F    430 _SM0	=	0x009f
                    00A0    431 G$P2_0$0$0 == 0x00a0
                    00A0    432 _P2_0	=	0x00a0
                    00A1    433 G$P2_1$0$0 == 0x00a1
                    00A1    434 _P2_1	=	0x00a1
                    00A2    435 G$P2_2$0$0 == 0x00a2
                    00A2    436 _P2_2	=	0x00a2
                    00A3    437 G$P2_3$0$0 == 0x00a3
                    00A3    438 _P2_3	=	0x00a3
                    00A4    439 G$P2_4$0$0 == 0x00a4
                    00A4    440 _P2_4	=	0x00a4
                    00A5    441 G$P2_5$0$0 == 0x00a5
                    00A5    442 _P2_5	=	0x00a5
                    00A6    443 G$P2_6$0$0 == 0x00a6
                    00A6    444 _P2_6	=	0x00a6
                    00A7    445 G$P2_7$0$0 == 0x00a7
                    00A7    446 _P2_7	=	0x00a7
                    00A8    447 G$EX0$0$0 == 0x00a8
                    00A8    448 _EX0	=	0x00a8
                    00A9    449 G$ET0$0$0 == 0x00a9
                    00A9    450 _ET0	=	0x00a9
                    00AA    451 G$EX1$0$0 == 0x00aa
                    00AA    452 _EX1	=	0x00aa
                    00AB    453 G$ET1$0$0 == 0x00ab
                    00AB    454 _ET1	=	0x00ab
                    00AC    455 G$ES$0$0 == 0x00ac
                    00AC    456 _ES	=	0x00ac
                    00AF    457 G$EA$0$0 == 0x00af
                    00AF    458 _EA	=	0x00af
                    00B0    459 G$P3_0$0$0 == 0x00b0
                    00B0    460 _P3_0	=	0x00b0
                    00B1    461 G$P3_1$0$0 == 0x00b1
                    00B1    462 _P3_1	=	0x00b1
                    00B2    463 G$P3_2$0$0 == 0x00b2
                    00B2    464 _P3_2	=	0x00b2
                    00B3    465 G$P3_3$0$0 == 0x00b3
                    00B3    466 _P3_3	=	0x00b3
                    00B4    467 G$P3_4$0$0 == 0x00b4
                    00B4    468 _P3_4	=	0x00b4
                    00B5    469 G$P3_5$0$0 == 0x00b5
                    00B5    470 _P3_5	=	0x00b5
                    00B6    471 G$P3_6$0$0 == 0x00b6
                    00B6    472 _P3_6	=	0x00b6
                    00B7    473 G$P3_7$0$0 == 0x00b7
                    00B7    474 _P3_7	=	0x00b7
                    00B0    475 G$RXD$0$0 == 0x00b0
                    00B0    476 _RXD	=	0x00b0
                    00B1    477 G$TXD$0$0 == 0x00b1
                    00B1    478 _TXD	=	0x00b1
                    00B2    479 G$INT0$0$0 == 0x00b2
                    00B2    480 _INT0	=	0x00b2
                    00B3    481 G$INT1$0$0 == 0x00b3
                    00B3    482 _INT1	=	0x00b3
                    00B4    483 G$T0$0$0 == 0x00b4
                    00B4    484 _T0	=	0x00b4
                    00B5    485 G$T1$0$0 == 0x00b5
                    00B5    486 _T1	=	0x00b5
                    00B6    487 G$WR$0$0 == 0x00b6
                    00B6    488 _WR	=	0x00b6
                    00B7    489 G$RD$0$0 == 0x00b7
                    00B7    490 _RD	=	0x00b7
                    00B8    491 G$PX0$0$0 == 0x00b8
                    00B8    492 _PX0	=	0x00b8
                    00B9    493 G$PT0$0$0 == 0x00b9
                    00B9    494 _PT0	=	0x00b9
                    00BA    495 G$PX1$0$0 == 0x00ba
                    00BA    496 _PX1	=	0x00ba
                    00BB    497 G$PT1$0$0 == 0x00bb
                    00BB    498 _PT1	=	0x00bb
                    00BC    499 G$PS$0$0 == 0x00bc
                    00BC    500 _PS	=	0x00bc
                    00D0    501 G$P$0$0 == 0x00d0
                    00D0    502 _P	=	0x00d0
                    00D1    503 G$F1$0$0 == 0x00d1
                    00D1    504 _F1	=	0x00d1
                    00D2    505 G$OV$0$0 == 0x00d2
                    00D2    506 _OV	=	0x00d2
                    00D3    507 G$RS0$0$0 == 0x00d3
                    00D3    508 _RS0	=	0x00d3
                    00D4    509 G$RS1$0$0 == 0x00d4
                    00D4    510 _RS1	=	0x00d4
                    00D5    511 G$F0$0$0 == 0x00d5
                    00D5    512 _F0	=	0x00d5
                    00D6    513 G$AC$0$0 == 0x00d6
                    00D6    514 _AC	=	0x00d6
                    00D7    515 G$CY$0$0 == 0x00d7
                    00D7    516 _CY	=	0x00d7
                    00AD    517 G$ET2$0$0 == 0x00ad
                    00AD    518 _ET2	=	0x00ad
                    00BD    519 G$PT2$0$0 == 0x00bd
                    00BD    520 _PT2	=	0x00bd
                    00C8    521 G$T2CON_0$0$0 == 0x00c8
                    00C8    522 _T2CON_0	=	0x00c8
                    00C9    523 G$T2CON_1$0$0 == 0x00c9
                    00C9    524 _T2CON_1	=	0x00c9
                    00CA    525 G$T2CON_2$0$0 == 0x00ca
                    00CA    526 _T2CON_2	=	0x00ca
                    00CB    527 G$T2CON_3$0$0 == 0x00cb
                    00CB    528 _T2CON_3	=	0x00cb
                    00CC    529 G$T2CON_4$0$0 == 0x00cc
                    00CC    530 _T2CON_4	=	0x00cc
                    00CD    531 G$T2CON_5$0$0 == 0x00cd
                    00CD    532 _T2CON_5	=	0x00cd
                    00CE    533 G$T2CON_6$0$0 == 0x00ce
                    00CE    534 _T2CON_6	=	0x00ce
                    00CF    535 G$T2CON_7$0$0 == 0x00cf
                    00CF    536 _T2CON_7	=	0x00cf
                    00C8    537 G$CP_RL2$0$0 == 0x00c8
                    00C8    538 _CP_RL2	=	0x00c8
                    00C9    539 G$C_T2$0$0 == 0x00c9
                    00C9    540 _C_T2	=	0x00c9
                    00CA    541 G$TR2$0$0 == 0x00ca
                    00CA    542 _TR2	=	0x00ca
                    00CB    543 G$EXEN2$0$0 == 0x00cb
                    00CB    544 _EXEN2	=	0x00cb
                    00CC    545 G$TCLK$0$0 == 0x00cc
                    00CC    546 _TCLK	=	0x00cc
                    00CD    547 G$RCLK$0$0 == 0x00cd
                    00CD    548 _RCLK	=	0x00cd
                    00CE    549 G$EXF2$0$0 == 0x00ce
                    00CE    550 _EXF2	=	0x00ce
                    00CF    551 G$TF2$0$0 == 0x00cf
                    00CF    552 _TF2	=	0x00cf
                    00DF    553 G$CF$0$0 == 0x00df
                    00DF    554 _CF	=	0x00df
                    00DE    555 G$CR$0$0 == 0x00de
                    00DE    556 _CR	=	0x00de
                    00DC    557 G$CCF4$0$0 == 0x00dc
                    00DC    558 _CCF4	=	0x00dc
                    00DB    559 G$CCF3$0$0 == 0x00db
                    00DB    560 _CCF3	=	0x00db
                    00DA    561 G$CCF2$0$0 == 0x00da
                    00DA    562 _CCF2	=	0x00da
                    00D9    563 G$CCF1$0$0 == 0x00d9
                    00D9    564 _CCF1	=	0x00d9
                    00D8    565 G$CCF0$0$0 == 0x00d8
                    00D8    566 _CCF0	=	0x00d8
                    00AE    567 G$EC$0$0 == 0x00ae
                    00AE    568 _EC	=	0x00ae
                    00BE    569 G$PPCL$0$0 == 0x00be
                    00BE    570 _PPCL	=	0x00be
                    00BD    571 G$PT2L$0$0 == 0x00bd
                    00BD    572 _PT2L	=	0x00bd
                    00BC    573 G$PLS$0$0 == 0x00bc
                    00BC    574 _PLS	=	0x00bc
                    00BB    575 G$PT1L$0$0 == 0x00bb
                    00BB    576 _PT1L	=	0x00bb
                    00BA    577 G$PX1L$0$0 == 0x00ba
                    00BA    578 _PX1L	=	0x00ba
                    00B9    579 G$PT0L$0$0 == 0x00b9
                    00B9    580 _PT0L	=	0x00b9
                    00B8    581 G$PX0L$0$0 == 0x00b8
                    00B8    582 _PX0L	=	0x00b8
                    00C0    583 G$P4_0$0$0 == 0x00c0
                    00C0    584 _P4_0	=	0x00c0
                    00C1    585 G$P4_1$0$0 == 0x00c1
                    00C1    586 _P4_1	=	0x00c1
                    00C2    587 G$P4_2$0$0 == 0x00c2
                    00C2    588 _P4_2	=	0x00c2
                    00C3    589 G$P4_3$0$0 == 0x00c3
                    00C3    590 _P4_3	=	0x00c3
                    00C4    591 G$P4_4$0$0 == 0x00c4
                    00C4    592 _P4_4	=	0x00c4
                    00C5    593 G$P4_5$0$0 == 0x00c5
                    00C5    594 _P4_5	=	0x00c5
                    00C6    595 G$P4_6$0$0 == 0x00c6
                    00C6    596 _P4_6	=	0x00c6
                    00C7    597 G$P4_7$0$0 == 0x00c7
                    00C7    598 _P4_7	=	0x00c7
                    00D8    599 G$P5_0$0$0 == 0x00d8
                    00D8    600 _P5_0	=	0x00d8
                    00D9    601 G$P5_1$0$0 == 0x00d9
                    00D9    602 _P5_1	=	0x00d9
                    00DA    603 G$P5_2$0$0 == 0x00da
                    00DA    604 _P5_2	=	0x00da
                    00DB    605 G$P5_3$0$0 == 0x00db
                    00DB    606 _P5_3	=	0x00db
                    00DC    607 G$P5_4$0$0 == 0x00dc
                    00DC    608 _P5_4	=	0x00dc
                    00DD    609 G$P5_5$0$0 == 0x00dd
                    00DD    610 _P5_5	=	0x00dd
                    00DE    611 G$P5_6$0$0 == 0x00de
                    00DE    612 _P5_6	=	0x00de
                    00DF    613 G$P5_7$0$0 == 0x00df
                    00DF    614 _P5_7	=	0x00df
                            615 ;--------------------------------------------------------
                            616 ; overlayable register banks
                            617 ;--------------------------------------------------------
                            618 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     619 	.ds 8
                            620 ;--------------------------------------------------------
                            621 ; internal ram data
                            622 ;--------------------------------------------------------
                            623 	.area DSEG    (DATA)
                            624 ;--------------------------------------------------------
                            625 ; overlayable items in internal ram 
                            626 ;--------------------------------------------------------
                            627 	.area OSEG    (OVR,DATA)
                            628 ;--------------------------------------------------------
                            629 ; indirectly addressable internal ram data
                            630 ;--------------------------------------------------------
                            631 	.area ISEG    (DATA)
                            632 ;--------------------------------------------------------
                            633 ; bit data
                            634 ;--------------------------------------------------------
                            635 	.area BSEG    (BIT)
                            636 ;--------------------------------------------------------
                            637 ; paged external ram data
                            638 ;--------------------------------------------------------
                            639 	.area PSEG    (PAG,XDATA)
                            640 ;--------------------------------------------------------
                            641 ; external ram data
                            642 ;--------------------------------------------------------
                            643 	.area XSEG    (XDATA)
                    0000    644 G$Stat$0$0==.
   0000                     645 _Stat::
   0000                     646 	.ds 1
                    3000    647 G$CardType$0$0 == 0x3000
                    3000    648 _CardType	=	0x3000
                            649 ;--------------------------------------------------------
                            650 ; external initialized ram data
                            651 ;--------------------------------------------------------
                            652 	.area XISEG   (XDATA)
                            653 	.area HOME    (CODE)
                            654 	.area GSINIT0 (CODE)
                            655 	.area GSINIT1 (CODE)
                            656 	.area GSINIT2 (CODE)
                            657 	.area GSINIT3 (CODE)
                            658 	.area GSINIT4 (CODE)
                            659 	.area GSINIT5 (CODE)
                            660 	.area GSINIT  (CODE)
                            661 	.area GSFINAL (CODE)
                            662 	.area CSEG    (CODE)
                            663 ;--------------------------------------------------------
                            664 ; global & static initialisations
                            665 ;--------------------------------------------------------
                            666 	.area HOME    (CODE)
                            667 	.area GSINIT  (CODE)
                            668 	.area GSFINAL (CODE)
                            669 	.area GSINIT  (CODE)
                            670 ;--------------------------------------------------------
                            671 ; Home
                            672 ;--------------------------------------------------------
                            673 	.area HOME    (CODE)
                            674 	.area CSEG    (CODE)
                            675 ;--------------------------------------------------------
                            676 ; code
                            677 ;--------------------------------------------------------
                            678 	.area CSEG    (CODE)
                            679 ;------------------------------------------------------------
                            680 ;Allocation info for local variables in function 'disk_initialize'
                            681 ;------------------------------------------------------------
                            682 ;drv                       Allocated to registers r2 
                            683 ;------------------------------------------------------------
                    0000    684 	G$disk_initialize$0$0 ==.
                    0000    685 	C$diskio.c$23$0$0 ==.
                            686 ;	diskio.c:23: DSTATUS disk_initialize( BYTE drv )
                            687 ;	-----------------------------------------
                            688 ;	 function disk_initialize
                            689 ;	-----------------------------------------
   005F                     690 _disk_initialize:
                    0002    691 	ar2 = 0x02
                    0003    692 	ar3 = 0x03
                    0004    693 	ar4 = 0x04
                    0005    694 	ar5 = 0x05
                    0006    695 	ar6 = 0x06
                    0007    696 	ar7 = 0x07
                    0000    697 	ar0 = 0x00
                    0001    698 	ar1 = 0x01
                            699 ;	genReceive
   005F AA 82               700 	mov	r2,dpl
                    0002    701 	C$diskio.c$26$1$1 ==.
                            702 ;	diskio.c:26: if( drv != 0)
                            703 ;	genCmpEq
                            704 ;	gencjneshort
   0061 BA 00 02            705 	cjne	r2,#0x00,00109$
                            706 ;	Peephole 112.b	changed ljmp to sjmp
   0064 80 04               707 	sjmp	00102$
   0066                     708 00109$:
                    0007    709 	C$diskio.c$27$1$1 ==.
                            710 ;	diskio.c:27: return STA_NOINIT;
                            711 ;	genRet
   0066 75 82 01            712 	mov	dpl,#0x01
                            713 ;	Peephole 112.b	changed ljmp to sjmp
                            714 ;	Peephole 251.b	replaced sjmp to ret with ret
   0069 22                  715 	ret
   006A                     716 00102$:
                    000B    717 	C$diskio.c$30$1$1 ==.
                            718 ;	diskio.c:30: if( !SD_Init() )
                            719 ;	genCall
   006A 12 08 0C            720 	lcall	_SD_Init
   006D E5 82               721 	mov	a,dpl
                            722 ;	genIfx
                            723 ;	genIfxJump
                            724 ;	Peephole 108.b	removed ljmp by inverse jump logic
   006F 70 08               725 	jnz	00104$
                            726 ;	Peephole 300	removed redundant label 00110$
                    0012    727 	C$diskio.c$33$2$2 ==.
                            728 ;	diskio.c:33: Stat &= ~STA_NOINIT;
                            729 ;	genAssign
                            730 ;	genAnd
   0071 90 00 00            731 	mov	dptr,#_Stat
   0074 E0                  732 	movx	a,@dptr
   0075 FA                  733 	mov	r2,a
                            734 ;	Peephole 248.b	optimized and to xdata
   0076 54 FE               735 	anl	a,#0xFE
   0078 F0                  736 	movx	@dptr,a
   0079                     737 00104$:
                    001A    738 	C$diskio.c$37$1$1 ==.
                            739 ;	diskio.c:37: return( Stat );
                            740 ;	genAssign
   0079 90 00 00            741 	mov	dptr,#_Stat
   007C E0                  742 	movx	a,@dptr
                            743 ;	genRet
                    001E    744 	C$diskio.c$38$1$1 ==.
                    001E    745 	XG$disk_initialize$0$0 ==.
                            746 ;	Peephole 234.a	loading dpl directly from a(ccumulator), r2 not set
   007D F5 82               747 	mov	dpl,a
                            748 ;	Peephole 300	removed redundant label 00105$
   007F 22                  749 	ret
                            750 ;------------------------------------------------------------
                            751 ;Allocation info for local variables in function 'disk_status'
                            752 ;------------------------------------------------------------
                            753 ;drv                       Allocated to registers r2 
                            754 ;------------------------------------------------------------
                    0021    755 	G$disk_status$0$0 ==.
                    0021    756 	C$diskio.c$43$1$1 ==.
                            757 ;	diskio.c:43: DSTATUS disk_status( BYTE drv	)
                            758 ;	-----------------------------------------
                            759 ;	 function disk_status
                            760 ;	-----------------------------------------
   0080                     761 _disk_status:
                            762 ;	genReceive
   0080 AA 82               763 	mov	r2,dpl
                    0023    764 	C$diskio.c$46$1$1 ==.
                            765 ;	diskio.c:46: if( drv != 0)
                            766 ;	genCmpEq
                            767 ;	gencjneshort
   0082 BA 00 02            768 	cjne	r2,#0x00,00106$
                            769 ;	Peephole 112.b	changed ljmp to sjmp
   0085 80 04               770 	sjmp	00102$
   0087                     771 00106$:
                    0028    772 	C$diskio.c$47$1$1 ==.
                            773 ;	diskio.c:47: return STA_NOINIT;
                            774 ;	genRet
   0087 75 82 01            775 	mov	dpl,#0x01
                            776 ;	Peephole 112.b	changed ljmp to sjmp
                            777 ;	Peephole 251.b	replaced sjmp to ret with ret
   008A 22                  778 	ret
   008B                     779 00102$:
                    002C    780 	C$diskio.c$50$1$1 ==.
                            781 ;	diskio.c:50: return( Stat );
                            782 ;	genAssign
   008B 90 00 00            783 	mov	dptr,#_Stat
   008E E0                  784 	movx	a,@dptr
                            785 ;	genRet
                    0030    786 	C$diskio.c$51$1$1 ==.
                    0030    787 	XG$disk_status$0$0 ==.
                            788 ;	Peephole 234.a	loading dpl directly from a(ccumulator), r2 not set
   008F F5 82               789 	mov	dpl,a
                            790 ;	Peephole 300	removed redundant label 00103$
   0091 22                  791 	ret
                            792 ;------------------------------------------------------------
                            793 ;Allocation info for local variables in function 'disk_read'
                            794 ;------------------------------------------------------------
                            795 ;buff                      Allocated to stack - offset -5
                            796 ;sector                    Allocated to stack - offset -9
                            797 ;count                     Allocated to stack - offset -10
                            798 ;drv                       Allocated to registers r2 
                            799 ;------------------------------------------------------------
                    0033    800 	G$disk_read$0$0 ==.
                    0033    801 	C$diskio.c$58$1$1 ==.
                            802 ;	diskio.c:58: DRESULT disk_read ( BYTE drv, BYTE *buff, DWORD sector, BYTE count )
                            803 ;	-----------------------------------------
                            804 ;	 function disk_read
                            805 ;	-----------------------------------------
   0092                     806 _disk_read:
   0092 C0 0F               807 	push	_bp
   0094 85 81 0F            808 	mov	_bp,sp
                            809 ;	genReceive
                    0038    810 	C$diskio.c$61$1$1 ==.
                            811 ;	diskio.c:61: if( drv || !count || (count>
                            812 ;	genIfx
                            813 ;	peephole 177.g	optimized mov sequence
   0097 E5 82               814 	mov	a,dpl
   0099 FA                  815 	mov	r2,a
                            816 ;	genIfxJump
                            817 ;	Peephole 108.b	removed ljmp by inverse jump logic
   009A 70 12               818 	jnz	00101$
                            819 ;	Peephole 300	removed redundant label 00115$
                            820 ;	genIfx
   009C E5 0F               821 	mov	a,_bp
   009E 24 F6               822 	add	a,#0xfffffff6
   00A0 F8                  823 	mov	r0,a
   00A1 E6                  824 	mov	a,@r0
                            825 ;	genIfxJump
                            826 ;	Peephole 108.c	removed ljmp by inverse jump logic
   00A2 60 0A               827 	jz	00101$
                            828 ;	Peephole 300	removed redundant label 00116$
                    0045    829 	C$diskio.c$62$1$1 ==.
                            830 ;	diskio.c:62: 1) )
                            831 ;	genCmpGt
   00A4 E5 0F               832 	mov	a,_bp
   00A6 24 F6               833 	add	a,#0xfffffff6
   00A8 F8                  834 	mov	r0,a
                            835 ;	genCmp
                            836 ;	genIfxJump
                            837 ;	Peephole 108.a	removed ljmp by inverse jump logic
                            838 ;	Peephole 132.b	optimized genCmpGt by inverse logic (acc differs)
   00A9 E6                  839 	mov	a,@r0
   00AA 24 FE               840 	add	a,#0xff - 0x01
   00AC 50 05               841 	jnc	00102$
                            842 ;	Peephole 300	removed redundant label 00117$
   00AE                     843 00101$:
                    004F    844 	C$diskio.c$63$1$1 ==.
                            845 ;	diskio.c:63: return( RES_PARERR );
                            846 ;	genRet
   00AE 75 82 04            847 	mov	dpl,#0x04
                            848 ;	Peephole 112.b	changed ljmp to sjmp
   00B1 80 42               849 	sjmp	00109$
   00B3                     850 00102$:
                    0054    851 	C$diskio.c$66$1$1 ==.
                            852 ;	diskio.c:66: if( Stat & STA_NOINIT )
                            853 ;	genAssign
   00B3 90 00 00            854 	mov	dptr,#_Stat
   00B6 E0                  855 	movx	a,@dptr
                            856 ;	genAnd
   00B7 FA                  857 	mov	r2,a
                            858 ;	Peephole 105	removed redundant mov
                            859 ;	genIfxJump
                            860 ;	Peephole 108.d	removed ljmp by inverse jump logic
   00B8 30 E0 05            861 	jnb	acc.0,00106$
                            862 ;	Peephole 300	removed redundant label 00118$
                    005C    863 	C$diskio.c$67$1$1 ==.
                            864 ;	diskio.c:67: return( RES_NOTRDY );
                            865 ;	genRet
   00BB 75 82 03            866 	mov	dpl,#0x03
                            867 ;	Peephole 112.b	changed ljmp to sjmp
   00BE 80 35               868 	sjmp	00109$
   00C0                     869 00106$:
                    0061    870 	C$diskio.c$70$1$1 ==.
                            871 ;	diskio.c:70: if( SD_ReadSector( sector, buff ) )
                            872 ;	genIpush
   00C0 E5 0F               873 	mov	a,_bp
   00C2 24 FB               874 	add	a,#0xfffffffb
   00C4 F8                  875 	mov	r0,a
   00C5 E6                  876 	mov	a,@r0
   00C6 C0 E0               877 	push	acc
   00C8 08                  878 	inc	r0
   00C9 E6                  879 	mov	a,@r0
   00CA C0 E0               880 	push	acc
   00CC 08                  881 	inc	r0
   00CD E6                  882 	mov	a,@r0
   00CE C0 E0               883 	push	acc
                            884 ;	genCall
   00D0 E5 0F               885 	mov	a,_bp
   00D2 24 F7               886 	add	a,#0xfffffff7
   00D4 F8                  887 	mov	r0,a
   00D5 86 82               888 	mov	dpl,@r0
   00D7 08                  889 	inc	r0
   00D8 86 83               890 	mov	dph,@r0
   00DA 08                  891 	inc	r0
   00DB 86 F0               892 	mov	b,@r0
   00DD 08                  893 	inc	r0
   00DE E6                  894 	mov	a,@r0
   00DF 12 09 9B            895 	lcall	_SD_ReadSector
   00E2 AA 82               896 	mov	r2,dpl
   00E4 15 81               897 	dec	sp
   00E6 15 81               898 	dec	sp
   00E8 15 81               899 	dec	sp
                            900 ;	genIfx
   00EA EA                  901 	mov	a,r2
                            902 ;	genIfxJump
                            903 ;	Peephole 108.c	removed ljmp by inverse jump logic
   00EB 60 05               904 	jz	00108$
                            905 ;	Peephole 300	removed redundant label 00119$
                    008E    906 	C$diskio.c$71$1$1 ==.
                            907 ;	diskio.c:71: return( RES_ERROR );
                            908 ;	genRet
   00ED 75 82 01            909 	mov	dpl,#0x01
                            910 ;	Peephole 112.b	changed ljmp to sjmp
   00F0 80 03               911 	sjmp	00109$
   00F2                     912 00108$:
                    0093    913 	C$diskio.c$74$1$1 ==.
                            914 ;	diskio.c:74: return( RES_OK );
                            915 ;	genRet
   00F2 75 82 00            916 	mov	dpl,#0x00
   00F5                     917 00109$:
   00F5 D0 0F               918 	pop	_bp
                    0098    919 	C$diskio.c$75$1$1 ==.
                    0098    920 	XG$disk_read$0$0 ==.
   00F7 22                  921 	ret
                            922 ;------------------------------------------------------------
                            923 ;Allocation info for local variables in function 'disk_write'
                            924 ;------------------------------------------------------------
                            925 ;buff                      Allocated to stack - offset -5
                            926 ;sector                    Allocated to stack - offset -9
                            927 ;count                     Allocated to stack - offset -10
                            928 ;drv                       Allocated to registers r2 
                            929 ;------------------------------------------------------------
                    0099    930 	G$disk_write$0$0 ==.
                    0099    931 	C$diskio.c$81$1$1 ==.
                            932 ;	diskio.c:81: DRESULT disk_write( BYTE drv, const BYTE *buff, DWORD sector, BYTE count )
                            933 ;	-----------------------------------------
                            934 ;	 function disk_write
                            935 ;	-----------------------------------------
   00F8                     936 _disk_write:
   00F8 C0 0F               937 	push	_bp
   00FA 85 81 0F            938 	mov	_bp,sp
                            939 ;	genReceive
                    009E    940 	C$diskio.c$84$1$1 ==.
                            941 ;	diskio.c:84: if( drv || !count || (count>
                            942 ;	genIfx
                            943 ;	peephole 177.g	optimized mov sequence
   00FD E5 82               944 	mov	a,dpl
   00FF FA                  945 	mov	r2,a
                            946 ;	genIfxJump
                            947 ;	Peephole 108.b	removed ljmp by inverse jump logic
   0100 70 12               948 	jnz	00101$
                            949 ;	Peephole 300	removed redundant label 00115$
                            950 ;	genIfx
   0102 E5 0F               951 	mov	a,_bp
   0104 24 F6               952 	add	a,#0xfffffff6
   0106 F8                  953 	mov	r0,a
   0107 E6                  954 	mov	a,@r0
                            955 ;	genIfxJump
                            956 ;	Peephole 108.c	removed ljmp by inverse jump logic
   0108 60 0A               957 	jz	00101$
                            958 ;	Peephole 300	removed redundant label 00116$
                    00AB    959 	C$diskio.c$85$1$1 ==.
                            960 ;	diskio.c:85: 1) )
                            961 ;	genCmpGt
   010A E5 0F               962 	mov	a,_bp
   010C 24 F6               963 	add	a,#0xfffffff6
   010E F8                  964 	mov	r0,a
                            965 ;	genCmp
                            966 ;	genIfxJump
                            967 ;	Peephole 108.a	removed ljmp by inverse jump logic
                            968 ;	Peephole 132.b	optimized genCmpGt by inverse logic (acc differs)
   010F E6                  969 	mov	a,@r0
   0110 24 FE               970 	add	a,#0xff - 0x01
   0112 50 05               971 	jnc	00102$
                            972 ;	Peephole 300	removed redundant label 00117$
   0114                     973 00101$:
                    00B5    974 	C$diskio.c$86$1$1 ==.
                            975 ;	diskio.c:86: return( RES_PARERR );
                            976 ;	genRet
   0114 75 82 04            977 	mov	dpl,#0x04
                            978 ;	Peephole 112.b	changed ljmp to sjmp
   0117 80 42               979 	sjmp	00109$
   0119                     980 00102$:
                    00BA    981 	C$diskio.c$89$1$1 ==.
                            982 ;	diskio.c:89: if( Stat & STA_NOINIT )
                            983 ;	genAssign
   0119 90 00 00            984 	mov	dptr,#_Stat
   011C E0                  985 	movx	a,@dptr
                            986 ;	genAnd
   011D FA                  987 	mov	r2,a
                            988 ;	Peephole 105	removed redundant mov
                            989 ;	genIfxJump
                            990 ;	Peephole 108.d	removed ljmp by inverse jump logic
   011E 30 E0 05            991 	jnb	acc.0,00106$
                            992 ;	Peephole 300	removed redundant label 00118$
                    00C2    993 	C$diskio.c$90$1$1 ==.
                            994 ;	diskio.c:90: return( RES_NOTRDY );
                            995 ;	genRet
   0121 75 82 03            996 	mov	dpl,#0x03
                            997 ;	Peephole 112.b	changed ljmp to sjmp
   0124 80 35               998 	sjmp	00109$
   0126                     999 00106$:
                    00C7   1000 	C$diskio.c$93$1$1 ==.
                           1001 ;	diskio.c:93: if( SD_WriteSector( sector, buff ) )
                           1002 ;	genIpush
   0126 E5 0F              1003 	mov	a,_bp
   0128 24 FB              1004 	add	a,#0xfffffffb
   012A F8                 1005 	mov	r0,a
   012B E6                 1006 	mov	a,@r0
   012C C0 E0              1007 	push	acc
   012E 08                 1008 	inc	r0
   012F E6                 1009 	mov	a,@r0
   0130 C0 E0              1010 	push	acc
   0132 08                 1011 	inc	r0
   0133 E6                 1012 	mov	a,@r0
   0134 C0 E0              1013 	push	acc
                           1014 ;	genCall
   0136 E5 0F              1015 	mov	a,_bp
   0138 24 F7              1016 	add	a,#0xfffffff7
   013A F8                 1017 	mov	r0,a
   013B 86 82              1018 	mov	dpl,@r0
   013D 08                 1019 	inc	r0
   013E 86 83              1020 	mov	dph,@r0
   0140 08                 1021 	inc	r0
   0141 86 F0              1022 	mov	b,@r0
   0143 08                 1023 	inc	r0
   0144 E6                 1024 	mov	a,@r0
   0145 12 0A 5E           1025 	lcall	_SD_WriteSector
   0148 AA 82              1026 	mov	r2,dpl
   014A 15 81              1027 	dec	sp
   014C 15 81              1028 	dec	sp
   014E 15 81              1029 	dec	sp
                           1030 ;	genIfx
   0150 EA                 1031 	mov	a,r2
                           1032 ;	genIfxJump
                           1033 ;	Peephole 108.c	removed ljmp by inverse jump logic
   0151 60 05              1034 	jz	00108$
                           1035 ;	Peephole 300	removed redundant label 00119$
                    00F4   1036 	C$diskio.c$94$1$1 ==.
                           1037 ;	diskio.c:94: return( RES_ERROR );
                           1038 ;	genRet
   0153 75 82 01           1039 	mov	dpl,#0x01
                           1040 ;	Peephole 112.b	changed ljmp to sjmp
   0156 80 03              1041 	sjmp	00109$
   0158                    1042 00108$:
                    00F9   1043 	C$diskio.c$97$1$1 ==.
                           1044 ;	diskio.c:97: return( RES_OK );
                           1045 ;	genRet
   0158 75 82 00           1046 	mov	dpl,#0x00
   015B                    1047 00109$:
   015B D0 0F              1048 	pop	_bp
                    00FE   1049 	C$diskio.c$98$1$1 ==.
                    00FE   1050 	XG$disk_write$0$0 ==.
   015D 22                 1051 	ret
                           1052 ;------------------------------------------------------------
                           1053 ;Allocation info for local variables in function 'disk_ioctl'
                           1054 ;------------------------------------------------------------
                           1055 ;ctrl                      Allocated to stack - offset -3
                           1056 ;buff                      Allocated to stack - offset -6
                           1057 ;drv                       Allocated to registers r2 
                           1058 ;res                       Allocated to registers r2 
                           1059 ;ptr                       Allocated to registers 
                           1060 ;------------------------------------------------------------
                    00FF   1061 	G$disk_ioctl$0$0 ==.
                    00FF   1062 	C$diskio.c$106$1$1 ==.
                           1063 ;	diskio.c:106: DRESULT disk_ioctl ( BYTE drv, BYTE ctrl, void *buff )
                           1064 ;	-----------------------------------------
                           1065 ;	 function disk_ioctl
                           1066 ;	-----------------------------------------
   015E                    1067 _disk_ioctl:
   015E C0 0F              1068 	push	_bp
   0160 85 81 0F           1069 	mov	_bp,sp
                           1070 ;	genReceive
   0163 AA 82              1071 	mov	r2,dpl
                    0106   1072 	C$diskio.c$112$1$1 ==.
                           1073 ;	diskio.c:112: if( drv != 0)
                           1074 ;	genCmpEq
                           1075 ;	gencjneshort
   0165 BA 00 02           1076 	cjne	r2,#0x00,00116$
                           1077 ;	Peephole 112.b	changed ljmp to sjmp
   0168 80 05              1078 	sjmp	00102$
   016A                    1079 00116$:
                    010B   1080 	C$diskio.c$113$1$1 ==.
                           1081 ;	diskio.c:113: return RES_PARERR;
                           1082 ;	genRet
   016A 75 82 04           1083 	mov	dpl,#0x04
                           1084 ;	Peephole 112.b	changed ljmp to sjmp
   016D 80 43              1085 	sjmp	00110$
   016F                    1086 00102$:
                    0110   1087 	C$diskio.c$116$1$1 ==.
                           1088 ;	diskio.c:116: if( Stat & STA_NOINIT )
                           1089 ;	genAssign
   016F 90 00 00           1090 	mov	dptr,#_Stat
   0172 E0                 1091 	movx	a,@dptr
                           1092 ;	genAnd
   0173 FA                 1093 	mov	r2,a
                           1094 ;	Peephole 105	removed redundant mov
                           1095 ;	genIfxJump
                           1096 ;	Peephole 108.d	removed ljmp by inverse jump logic
   0174 30 E0 05           1097 	jnb	acc.0,00104$
                           1098 ;	Peephole 300	removed redundant label 00117$
                    0118   1099 	C$diskio.c$117$1$1 ==.
                           1100 ;	diskio.c:117: return RES_NOTRDY;
                           1101 ;	genRet
   0177 75 82 03           1102 	mov	dpl,#0x03
                           1103 ;	Peephole 112.b	changed ljmp to sjmp
   017A 80 36              1104 	sjmp	00110$
   017C                    1105 00104$:
                    011D   1106 	C$diskio.c$119$1$1 ==.
                           1107 ;	diskio.c:119: res = RES_ERROR;
                           1108 ;	genAssign
   017C 7A 01              1109 	mov	r2,#0x01
                    011F   1110 	C$diskio.c$121$1$1 ==.
                           1111 ;	diskio.c:121: switch( ctrl )
                           1112 ;	genCmpEq
   017E A8 0F              1113 	mov	r0,_bp
   0180 18                 1114 	dec	r0
   0181 18                 1115 	dec	r0
   0182 18                 1116 	dec	r0
                           1117 ;	gencjneshort
                           1118 ;	Peephole 112.b	changed ljmp to sjmp
                           1119 ;	Peephole 198.b	optimized misc jump sequence
   0183 B6 00 17           1120 	cjne	@r0,#0x00,00108$
                           1121 ;	Peephole 200.b	removed redundant sjmp
                           1122 ;	Peephole 300	removed redundant label 00118$
                           1123 ;	Peephole 300	removed redundant label 00119$
                    0127   1124 	C$diskio.c$125$2$2 ==.
                           1125 ;	diskio.c:125: SPI_EnableCS();
                           1126 ;	genCall
   0186 C0 02              1127 	push	ar2
   0188 12 0B CD           1128 	lcall	_SPI_EnableCS
   018B D0 02              1129 	pop	ar2
                    012E   1130 	C$diskio.c$126$2$2 ==.
                           1131 ;	diskio.c:126: if( SD_WaitForReady() == 0xFF )
                           1132 ;	genCall
   018D C0 02              1133 	push	ar2
   018F 12 0B 02           1134 	lcall	_SD_WaitForReady
   0192 AB 82              1135 	mov	r3,dpl
   0194 D0 02              1136 	pop	ar2
                           1137 ;	genCmpEq
                           1138 ;	gencjneshort
                           1139 ;	Peephole 112.b	changed ljmp to sjmp
                           1140 ;	Peephole 198.b	optimized misc jump sequence
   0196 BB FF 06           1141 	cjne	r3,#0xFF,00109$
                           1142 ;	Peephole 200.b	removed redundant sjmp
                           1143 ;	Peephole 300	removed redundant label 00120$
                           1144 ;	Peephole 300	removed redundant label 00121$
                    013A   1145 	C$diskio.c$127$2$2 ==.
                           1146 ;	diskio.c:127: res = RES_OK;
                           1147 ;	genAssign
   0199 7A 00              1148 	mov	r2,#0x00
                    013C   1149 	C$diskio.c$128$2$2 ==.
                           1150 ;	diskio.c:128: break;
                    013C   1151 	C$diskio.c$130$2$2 ==.
                           1152 ;	diskio.c:130: default:
                           1153 ;	Peephole 112.b	changed ljmp to sjmp
   019B 80 02              1154 	sjmp	00109$
   019D                    1155 00108$:
                    013E   1156 	C$diskio.c$131$2$2 ==.
                           1157 ;	diskio.c:131: res = RES_PARERR;
                           1158 ;	genAssign
   019D 7A 04              1159 	mov	r2,#0x04
                    0140   1160 	C$diskio.c$133$1$1 ==.
                           1161 ;	diskio.c:133: }
   019F                    1162 00109$:
                    0140   1163 	C$diskio.c$135$1$1 ==.
                           1164 ;	diskio.c:135: SPI_DisableCS();
                           1165 ;	genCall
   019F C0 02              1166 	push	ar2
   01A1 12 0B D0           1167 	lcall	_SPI_DisableCS
   01A4 D0 02              1168 	pop	ar2
                    0147   1169 	C$diskio.c$136$1$1 ==.
                           1170 ;	diskio.c:136: SPI_Byte( 0xFF );
                           1171 ;	genCall
   01A6 75 82 FF           1172 	mov	dpl,#0xFF
   01A9 C0 02              1173 	push	ar2
   01AB 12 0B C1           1174 	lcall	_SPI_Byte
   01AE D0 02              1175 	pop	ar2
                    0151   1176 	C$diskio.c$137$1$1 ==.
                           1177 ;	diskio.c:137: return res;
                           1178 ;	genRet
   01B0 8A 82              1179 	mov	dpl,r2
   01B2                    1180 00110$:
   01B2 D0 0F              1181 	pop	_bp
                    0155   1182 	C$diskio.c$138$1$1 ==.
                    0155   1183 	XG$disk_ioctl$0$0 ==.
   01B4 22                 1184 	ret
                           1185 	.area CSEG    (CODE)
                           1186 	.area CONST   (CODE)
                           1187 	.area XINIT   (CODE)
