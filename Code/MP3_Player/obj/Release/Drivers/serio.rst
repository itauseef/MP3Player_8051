                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : FreeWare ANSI-C Compiler
                              3 ; Version 2.6.0 #4309 (Jul 28 2006)
                              4 ; This file generated Sat May 02 15:12:57 2015
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
                            208 	.globl _xbuffer
                            209 	.globl _SDCard
                            210 	.globl _CardType
                            211 	.globl _Stat
                            212 	.globl _putchar
                            213 	.globl _getchar
                            214 	.globl _atoi
                            215 	.globl _atox
                            216 	.globl _getnumber
                            217 	.globl _getnumbetween
                            218 ;--------------------------------------------------------
                            219 ; special function registers
                            220 ;--------------------------------------------------------
                            221 	.area RSEG    (DATA)
                    0080    222 _P0	=	0x0080
                    0081    223 _SP	=	0x0081
                    0082    224 _DPL	=	0x0082
                    0083    225 _DPH	=	0x0083
                    0087    226 _PCON	=	0x0087
                    0088    227 _TCON	=	0x0088
                    0089    228 _TMOD	=	0x0089
                    008A    229 _TL0	=	0x008a
                    008B    230 _TL1	=	0x008b
                    008C    231 _TH0	=	0x008c
                    008D    232 _TH1	=	0x008d
                    0090    233 _P1	=	0x0090
                    0098    234 _SCON	=	0x0098
                    0099    235 _SBUF	=	0x0099
                    00A0    236 _P2	=	0x00a0
                    00A8    237 _IE	=	0x00a8
                    00B0    238 _P3	=	0x00b0
                    00B8    239 _IP	=	0x00b8
                    00D0    240 _PSW	=	0x00d0
                    00E0    241 _ACC	=	0x00e0
                    00F0    242 _B	=	0x00f0
                    00C8    243 _T2CON	=	0x00c8
                    00CA    244 _RCAP2L	=	0x00ca
                    00CB    245 _RCAP2H	=	0x00cb
                    00CC    246 _TL2	=	0x00cc
                    00CD    247 _TH2	=	0x00cd
                    008E    248 _AUXR	=	0x008e
                    00A2    249 _AUXR1	=	0x00a2
                    0097    250 _CKRL	=	0x0097
                    008F    251 _CKCKON0	=	0x008f
                    00AF    252 _CKCKON1	=	0x00af
                    00FA    253 _CCAP0H	=	0x00fa
                    00FB    254 _CCAP1H	=	0x00fb
                    00FC    255 _CCAP2H	=	0x00fc
                    00FD    256 _CCAP3H	=	0x00fd
                    00FE    257 _CCAP4H	=	0x00fe
                    00EA    258 _CCAP0L	=	0x00ea
                    00EB    259 _CCAP1L	=	0x00eb
                    00EC    260 _CCAP2L	=	0x00ec
                    00ED    261 _CCAP3L	=	0x00ed
                    00EE    262 _CCAP4L	=	0x00ee
                    00DA    263 _CCAPM0	=	0x00da
                    00DB    264 _CCAPM1	=	0x00db
                    00DC    265 _CCAPM2	=	0x00dc
                    00DD    266 _CCAPM3	=	0x00dd
                    00DE    267 _CCAPM4	=	0x00de
                    00D8    268 _CCON	=	0x00d8
                    00F9    269 _CH	=	0x00f9
                    00E9    270 _CL	=	0x00e9
                    00D9    271 _CMOD	=	0x00d9
                    00A8    272 _IEN0	=	0x00a8
                    00B1    273 _IEN1	=	0x00b1
                    00B8    274 _IPL0	=	0x00b8
                    00B7    275 _IPH0	=	0x00b7
                    00B2    276 _IPL1	=	0x00b2
                    00B3    277 _IPH1	=	0x00b3
                    00C0    278 _P4	=	0x00c0
                    00D8    279 _P5	=	0x00d8
                    00A6    280 _WDTRST	=	0x00a6
                    00A7    281 _WDTPRG	=	0x00a7
                    00A9    282 _SADDR	=	0x00a9
                    00B9    283 _SADEN	=	0x00b9
                    00C3    284 _SPCON	=	0x00c3
                    00C4    285 _SPSTA	=	0x00c4
                    00C5    286 _SPDAT	=	0x00c5
                    00C9    287 _T2MOD	=	0x00c9
                    009B    288 _BDRCON	=	0x009b
                    009A    289 _BRL	=	0x009a
                    009C    290 _KBLS	=	0x009c
                    009D    291 _KBE	=	0x009d
                    009E    292 _KBF	=	0x009e
                    00D2    293 _EECON	=	0x00d2
                            294 ;--------------------------------------------------------
                            295 ; special function bits
                            296 ;--------------------------------------------------------
                            297 	.area RSEG    (DATA)
                    0080    298 _P0_0	=	0x0080
                    0081    299 _P0_1	=	0x0081
                    0082    300 _P0_2	=	0x0082
                    0083    301 _P0_3	=	0x0083
                    0084    302 _P0_4	=	0x0084
                    0085    303 _P0_5	=	0x0085
                    0086    304 _P0_6	=	0x0086
                    0087    305 _P0_7	=	0x0087
                    0088    306 _IT0	=	0x0088
                    0089    307 _IE0	=	0x0089
                    008A    308 _IT1	=	0x008a
                    008B    309 _IE1	=	0x008b
                    008C    310 _TR0	=	0x008c
                    008D    311 _TF0	=	0x008d
                    008E    312 _TR1	=	0x008e
                    008F    313 _TF1	=	0x008f
                    0090    314 _P1_0	=	0x0090
                    0091    315 _P1_1	=	0x0091
                    0092    316 _P1_2	=	0x0092
                    0093    317 _P1_3	=	0x0093
                    0094    318 _P1_4	=	0x0094
                    0095    319 _P1_5	=	0x0095
                    0096    320 _P1_6	=	0x0096
                    0097    321 _P1_7	=	0x0097
                    0098    322 _RI	=	0x0098
                    0099    323 _TI	=	0x0099
                    009A    324 _RB8	=	0x009a
                    009B    325 _TB8	=	0x009b
                    009C    326 _REN	=	0x009c
                    009D    327 _SM2	=	0x009d
                    009E    328 _SM1	=	0x009e
                    009F    329 _SM0	=	0x009f
                    00A0    330 _P2_0	=	0x00a0
                    00A1    331 _P2_1	=	0x00a1
                    00A2    332 _P2_2	=	0x00a2
                    00A3    333 _P2_3	=	0x00a3
                    00A4    334 _P2_4	=	0x00a4
                    00A5    335 _P2_5	=	0x00a5
                    00A6    336 _P2_6	=	0x00a6
                    00A7    337 _P2_7	=	0x00a7
                    00A8    338 _EX0	=	0x00a8
                    00A9    339 _ET0	=	0x00a9
                    00AA    340 _EX1	=	0x00aa
                    00AB    341 _ET1	=	0x00ab
                    00AC    342 _ES	=	0x00ac
                    00AF    343 _EA	=	0x00af
                    00B0    344 _P3_0	=	0x00b0
                    00B1    345 _P3_1	=	0x00b1
                    00B2    346 _P3_2	=	0x00b2
                    00B3    347 _P3_3	=	0x00b3
                    00B4    348 _P3_4	=	0x00b4
                    00B5    349 _P3_5	=	0x00b5
                    00B6    350 _P3_6	=	0x00b6
                    00B7    351 _P3_7	=	0x00b7
                    00B0    352 _RXD	=	0x00b0
                    00B1    353 _TXD	=	0x00b1
                    00B2    354 _INT0	=	0x00b2
                    00B3    355 _INT1	=	0x00b3
                    00B4    356 _T0	=	0x00b4
                    00B5    357 _T1	=	0x00b5
                    00B6    358 _WR	=	0x00b6
                    00B7    359 _RD	=	0x00b7
                    00B8    360 _PX0	=	0x00b8
                    00B9    361 _PT0	=	0x00b9
                    00BA    362 _PX1	=	0x00ba
                    00BB    363 _PT1	=	0x00bb
                    00BC    364 _PS	=	0x00bc
                    00D0    365 _P	=	0x00d0
                    00D1    366 _F1	=	0x00d1
                    00D2    367 _OV	=	0x00d2
                    00D3    368 _RS0	=	0x00d3
                    00D4    369 _RS1	=	0x00d4
                    00D5    370 _F0	=	0x00d5
                    00D6    371 _AC	=	0x00d6
                    00D7    372 _CY	=	0x00d7
                    00AD    373 _ET2	=	0x00ad
                    00BD    374 _PT2	=	0x00bd
                    00C8    375 _T2CON_0	=	0x00c8
                    00C9    376 _T2CON_1	=	0x00c9
                    00CA    377 _T2CON_2	=	0x00ca
                    00CB    378 _T2CON_3	=	0x00cb
                    00CC    379 _T2CON_4	=	0x00cc
                    00CD    380 _T2CON_5	=	0x00cd
                    00CE    381 _T2CON_6	=	0x00ce
                    00CF    382 _T2CON_7	=	0x00cf
                    00C8    383 _CP_RL2	=	0x00c8
                    00C9    384 _C_T2	=	0x00c9
                    00CA    385 _TR2	=	0x00ca
                    00CB    386 _EXEN2	=	0x00cb
                    00CC    387 _TCLK	=	0x00cc
                    00CD    388 _RCLK	=	0x00cd
                    00CE    389 _EXF2	=	0x00ce
                    00CF    390 _TF2	=	0x00cf
                    00DF    391 _CF	=	0x00df
                    00DE    392 _CR	=	0x00de
                    00DC    393 _CCF4	=	0x00dc
                    00DB    394 _CCF3	=	0x00db
                    00DA    395 _CCF2	=	0x00da
                    00D9    396 _CCF1	=	0x00d9
                    00D8    397 _CCF0	=	0x00d8
                    00AE    398 _EC	=	0x00ae
                    00BE    399 _PPCL	=	0x00be
                    00BD    400 _PT2L	=	0x00bd
                    00BC    401 _PLS	=	0x00bc
                    00BB    402 _PT1L	=	0x00bb
                    00BA    403 _PX1L	=	0x00ba
                    00B9    404 _PT0L	=	0x00b9
                    00B8    405 _PX0L	=	0x00b8
                    00C0    406 _P4_0	=	0x00c0
                    00C1    407 _P4_1	=	0x00c1
                    00C2    408 _P4_2	=	0x00c2
                    00C3    409 _P4_3	=	0x00c3
                    00C4    410 _P4_4	=	0x00c4
                    00C5    411 _P4_5	=	0x00c5
                    00C6    412 _P4_6	=	0x00c6
                    00C7    413 _P4_7	=	0x00c7
                    00D8    414 _P5_0	=	0x00d8
                    00D9    415 _P5_1	=	0x00d9
                    00DA    416 _P5_2	=	0x00da
                    00DB    417 _P5_3	=	0x00db
                    00DC    418 _P5_4	=	0x00dc
                    00DD    419 _P5_5	=	0x00dd
                    00DE    420 _P5_6	=	0x00de
                    00DF    421 _P5_7	=	0x00df
                            422 ;--------------------------------------------------------
                            423 ; overlayable register banks
                            424 ;--------------------------------------------------------
                            425 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     426 	.ds 8
                            427 ;--------------------------------------------------------
                            428 ; overlayable bit register bank
                            429 ;--------------------------------------------------------
                            430 	.area BIT_BANK	(REL,OVR,DATA)
   0020                     431 bits:
   0020                     432 	.ds 1
                    8000    433 	b0 = bits[0]
                    8100    434 	b1 = bits[1]
                    8200    435 	b2 = bits[2]
                    8300    436 	b3 = bits[3]
                    8400    437 	b4 = bits[4]
                    8500    438 	b5 = bits[5]
                    8600    439 	b6 = bits[6]
                    8700    440 	b7 = bits[7]
                            441 ;--------------------------------------------------------
                            442 ; internal ram data
                            443 ;--------------------------------------------------------
                            444 	.area DSEG    (DATA)
                            445 ;--------------------------------------------------------
                            446 ; overlayable items in internal ram 
                            447 ;--------------------------------------------------------
                            448 	.area OSEG    (OVR,DATA)
                            449 ;--------------------------------------------------------
                            450 ; indirectly addressable internal ram data
                            451 ;--------------------------------------------------------
                            452 	.area ISEG    (DATA)
                            453 ;--------------------------------------------------------
                            454 ; bit data
                            455 ;--------------------------------------------------------
                            456 	.area BSEG    (BIT)
                            457 ;--------------------------------------------------------
                            458 ; paged external ram data
                            459 ;--------------------------------------------------------
                            460 	.area PSEG    (PAG,XDATA)
                            461 ;--------------------------------------------------------
                            462 ; external ram data
                            463 ;--------------------------------------------------------
                            464 	.area XSEG    (XDATA)
                    F000    465 _lcdinstwrptr	=	0xf000
                    F100    466 _lcdinstrdptr	=	0xf100
                    F200    467 _lcddatawrptr	=	0xf200
                    F300    468 _lcddatardptr	=	0xf300
   0005                     469 _Stat::
   0005                     470 	.ds 1
                    1000    471 _CardType	=	0x1000
                    2000    472 _SDCard	=	0x2000
                    3000    473 _xbuffer	=	0x3000
                            474 ;--------------------------------------------------------
                            475 ; external initialized ram data
                            476 ;--------------------------------------------------------
                            477 	.area XISEG   (XDATA)
                            478 	.area HOME    (CODE)
                            479 	.area GSINIT0 (CODE)
                            480 	.area GSINIT1 (CODE)
                            481 	.area GSINIT2 (CODE)
                            482 	.area GSINIT3 (CODE)
                            483 	.area GSINIT4 (CODE)
                            484 	.area GSINIT5 (CODE)
                            485 	.area GSINIT  (CODE)
                            486 	.area GSFINAL (CODE)
                            487 	.area CSEG    (CODE)
                            488 ;--------------------------------------------------------
                            489 ; global & static initialisations
                            490 ;--------------------------------------------------------
                            491 	.area HOME    (CODE)
                            492 	.area GSINIT  (CODE)
                            493 	.area GSFINAL (CODE)
                            494 	.area GSINIT  (CODE)
                            495 ;--------------------------------------------------------
                            496 ; Home
                            497 ;--------------------------------------------------------
                            498 	.area HOME    (CODE)
                            499 	.area CSEG    (CODE)
                            500 ;--------------------------------------------------------
                            501 ; code
                            502 ;--------------------------------------------------------
                            503 	.area CSEG    (CODE)
                            504 ;------------------------------------------------------------
                            505 ;Allocation info for local variables in function 'putchar'
                            506 ;------------------------------------------------------------
                            507 ;c                         Allocated to registers 
                            508 ;------------------------------------------------------------
                            509 ;	Drivers/serio.c:22: void putchar (char c)
                            510 ;	-----------------------------------------
                            511 ;	 function putchar
                            512 ;	-----------------------------------------
   08BA                     513 _putchar:
                    0002    514 	ar2 = 0x02
                    0003    515 	ar3 = 0x03
                    0004    516 	ar4 = 0x04
                    0005    517 	ar5 = 0x05
                    0006    518 	ar6 = 0x06
                    0007    519 	ar7 = 0x07
                    0000    520 	ar0 = 0x00
                    0001    521 	ar1 = 0x01
                            522 ;	genReceive
   08BA 85 82 99            523 	mov	_SBUF,dpl
                            524 ;	Drivers/serio.c:25: while (!TI); 		            // Wait for TX ready on TI
   08BD                     525 00101$:
                            526 ;	genIfx
                            527 ;	genIfxJump
                            528 ;	Peephole 108.d	removed ljmp by inverse jump logic
                            529 ;	Drivers/serio.c:26: TI = 0;  			            // Clear TI flag
                            530 ;	genAssign
                            531 ;	Peephole 250.a	using atomic test and clear
   08BD 10 99 02            532 	jbc	_TI,00108$
   08C0 80 FB               533 	sjmp	00101$
   08C2                     534 00108$:
                            535 ;	Peephole 300	removed redundant label 00104$
   08C2 22                  536 	ret
                            537 ;------------------------------------------------------------
                            538 ;Allocation info for local variables in function 'getchar'
                            539 ;------------------------------------------------------------
                            540 ;------------------------------------------------------------
                            541 ;	Drivers/serio.c:30: char getchar (void)
                            542 ;	-----------------------------------------
                            543 ;	 function getchar
                            544 ;	-----------------------------------------
   08C3                     545 _getchar:
                            546 ;	Drivers/serio.c:32: while (!RI);                 	// Wait for character to be received on RI
   08C3                     547 00101$:
                            548 ;	genIfx
                            549 ;	genIfxJump
                            550 ;	Peephole 108.d	removed ljmp by inverse jump logic
                            551 ;	Drivers/serio.c:33: RI = 0;				            // Clear RI flag
                            552 ;	genAssign
                            553 ;	Peephole 250.a	using atomic test and clear
   08C3 10 98 02            554 	jbc	_RI,00108$
   08C6 80 FB               555 	sjmp	00101$
   08C8                     556 00108$:
                            557 ;	Drivers/serio.c:34: return SBUF;  		            // Return character from SBUF
                            558 ;	genAssign
   08C8 85 99 82            559 	mov	dpl,_SBUF
                            560 ;	genRet
                            561 ;	Peephole 300	removed redundant label 00104$
   08CB 22                  562 	ret
                            563 ;------------------------------------------------------------
                            564 ;Allocation info for local variables in function 'atoi'
                            565 ;------------------------------------------------------------
                            566 ;line                      Allocated to registers r2 r3 r4 
                            567 ;sign                      Allocated to registers b0 
                            568 ;number                    Allocated to registers r5 r6 
                            569 ;sloc0                     Allocated to stack - offset 1
                            570 ;------------------------------------------------------------
                            571 ;	Drivers/serio.c:38: int atoi (char *line)
                            572 ;	-----------------------------------------
                            573 ;	 function atoi
                            574 ;	-----------------------------------------
   08CC                     575 _atoi:
   08CC C0 10               576 	push	_bp
   08CE 85 81 10            577 	mov	_bp,sp
   08D1 05 81               578 	inc	sp
                            579 ;	genReceive
   08D3 AA 82               580 	mov	r2,dpl
   08D5 AB 83               581 	mov	r3,dph
   08D7 AC F0               582 	mov	r4,b
                            583 ;	Drivers/serio.c:44: sign = 1;                                                           /* establish sign */
                            584 ;	genAssign
   08D9 8A 05               585 	mov	ar5,r2
   08DB 8B 06               586 	mov	ar6,r3
   08DD 8C 07               587 	mov	ar7,r4
   08DF                     588 00114$:
                            589 ;	Drivers/serio.c:43: for ( ; *line == ' ' || *line == '\r\n' || *line == '\t'; line++);  /* skip white space */
                            590 ;	genPointerGet
                            591 ;	genGenPointerGet
   08DF 8D 82               592 	mov	dpl,r5
   08E1 8E 83               593 	mov	dph,r6
   08E3 8F F0               594 	mov	b,r7
   08E5 A8 10               595 	mov	r0,_bp
   08E7 08                  596 	inc	r0
   08E8 12 62 42            597 	lcall	__gptrget
   08EB F6                  598 	mov	@r0,a
                            599 ;	genCmpEq
   08EC A8 10               600 	mov	r0,_bp
   08EE 08                  601 	inc	r0
                            602 ;	gencjneshort
   08EF B6 20 02            603 	cjne	@r0,#0x20,00132$
                            604 ;	Peephole 112.b	changed ljmp to sjmp
   08F2 80 0E               605 	sjmp	00116$
   08F4                     606 00132$:
                            607 ;	genCmpEq
   08F4 A8 10               608 	mov	r0,_bp
   08F6 08                  609 	inc	r0
                            610 ;	gencjneshort
   08F7 B6 0D 02            611 	cjne	@r0,#0x0D,00133$
                            612 ;	Peephole 112.b	changed ljmp to sjmp
   08FA 80 06               613 	sjmp	00116$
   08FC                     614 00133$:
                            615 ;	genCmpEq
   08FC A8 10               616 	mov	r0,_bp
   08FE 08                  617 	inc	r0
                            618 ;	gencjneshort
                            619 ;	Peephole 112.b	changed ljmp to sjmp
                            620 ;	Peephole 198.b	optimized misc jump sequence
   08FF B6 09 07            621 	cjne	@r0,#0x09,00131$
                            622 ;	Peephole 200.b	removed redundant sjmp
                            623 ;	Peephole 300	removed redundant label 00134$
                            624 ;	Peephole 300	removed redundant label 00135$
   0902                     625 00116$:
                            626 ;	genPlus
                            627 ;     genPlusIncr
                            628 ;	tail increment optimized (range 9)
   0902 0D                  629 	inc	r5
   0903 BD 00 D9            630 	cjne	r5,#0x00,00114$
   0906 0E                  631 	inc	r6
                            632 ;	Peephole 112.b	changed ljmp to sjmp
   0907 80 D6               633 	sjmp	00114$
   0909                     634 00131$:
                            635 ;	genAssign
   0909 8D 02               636 	mov	ar2,r5
   090B 8E 03               637 	mov	ar3,r6
   090D 8F 04               638 	mov	ar4,r7
                            639 ;	Drivers/serio.c:44: sign = 1;                                                           /* establish sign */
                            640 ;	genAssign
   090F D2 00               641 	setb	b0
                            642 ;	Drivers/serio.c:45: if (*line == '+' || *line == '-')  sign = (*line++ == '+');
                            643 ;	genCmpEq
   0911 A8 10               644 	mov	r0,_bp
   0913 08                  645 	inc	r0
                            646 ;	gencjneshort
   0914 B6 2B 02            647 	cjne	@r0,#0x2B,00136$
                            648 ;	Peephole 112.b	changed ljmp to sjmp
   0917 80 06               649 	sjmp	00101$
   0919                     650 00136$:
                            651 ;	genCmpEq
   0919 A8 10               652 	mov	r0,_bp
   091B 08                  653 	inc	r0
                            654 ;	gencjneshort
                            655 ;	Peephole 112.b	changed ljmp to sjmp
                            656 ;	Peephole 198.b	optimized misc jump sequence
   091C B6 2D 18            657 	cjne	@r0,#0x2D,00102$
                            658 ;	Peephole 200.b	removed redundant sjmp
                            659 ;	Peephole 300	removed redundant label 00137$
                            660 ;	Peephole 300	removed redundant label 00138$
   091F                     661 00101$:
                            662 ;	genPointerGet
                            663 ;	genGenPointerGet
   091F 8A 82               664 	mov	dpl,r2
   0921 8B 83               665 	mov	dph,r3
   0923 8C F0               666 	mov	b,r4
   0925 12 62 42            667 	lcall	__gptrget
   0928 FD                  668 	mov	r5,a
   0929 A3                  669 	inc	dptr
   092A AA 82               670 	mov	r2,dpl
   092C AB 83               671 	mov	r3,dph
                            672 ;	genCmpEq
                            673 ;	gencjne
                            674 ;	gencjneshort
                            675 ;	Peephole 241.d	optimized compare
   092E E4                  676 	clr	a
   092F BD 2B 01            677 	cjne	r5,#0x2B,00139$
   0932 04                  678 	inc	a
   0933                     679 00139$:
                            680 ;	Peephole 300	removed redundant label 00140$
   0933 24 FF               681 	add	a,#0xff
   0935 92 00               682 	mov	b0,c
   0937                     683 00102$:
                            684 ;	Drivers/serio.c:46: for (number=0;*line != '\r\n'; line++)                              /* compute decimal value */
                            685 ;	genAssign
   0937 7D 00               686 	mov	r5,#0x00
   0939 7E 00               687 	mov	r6,#0x00
                            688 ;	genAssign
   093B                     689 00108$:
                            690 ;	genPointerGet
                            691 ;	genGenPointerGet
   093B 8A 82               692 	mov	dpl,r2
   093D 8B 83               693 	mov	dph,r3
   093F 8C F0               694 	mov	b,r4
   0941 12 62 42            695 	lcall	__gptrget
   0944 FF                  696 	mov	r7,a
                            697 ;	genCmpEq
                            698 ;	gencjneshort
   0945 BF 0D 03            699 	cjne	r7,#0x0D,00141$
   0948 02 09 C6            700 	ljmp	00111$
   094B                     701 00141$:
                            702 ;	Drivers/serio.c:48: if(*line >= '0' && *line <= '9') number = (number * 10) + (*line - '0');
                            703 ;	genCmpLt
                            704 ;	genCmp
   094B C3                  705 	clr	c
   094C EF                  706 	mov	a,r7
   094D 64 80               707 	xrl	a,#0x80
   094F 94 B0               708 	subb	a,#0xb0
                            709 ;	genIfxJump
                            710 ;	Peephole 112.b	changed ljmp to sjmp
                            711 ;	Peephole 160.a	removed sjmp by inverse jump logic
                            712 ;	genCmpGt
                            713 ;	genCmp
   0951 40 52               714 	jc	00105$
                            715 ;	Peephole 300	removed redundant label 00142$
                            716 ;	Peephole 256.a	removed redundant clr c
                            717 ;	Peephole 159	avoided xrl during execution
   0953 74 B9               718 	mov	a,#(0x39 ^ 0x80)
   0955 8F F0               719 	mov	b,r7
   0957 63 F0 80            720 	xrl	b,#0x80
   095A 95 F0               721 	subb	a,b
                            722 ;	genIfxJump
                            723 ;	Peephole 112.b	changed ljmp to sjmp
                            724 ;	Peephole 160.a	removed sjmp by inverse jump logic
   095C 40 47               725 	jc	00105$
                            726 ;	Peephole 300	removed redundant label 00143$
                            727 ;	genIpush
   095E C0 02               728 	push	ar2
   0960 C0 03               729 	push	ar3
   0962 C0 04               730 	push	ar4
                            731 ;	genIpush
   0964 C0 04               732 	push	ar4
   0966 C0 07               733 	push	ar7
   0968 C0 20               734 	push	bits
   096A 74 0A               735 	mov	a,#0x0A
   096C C0 E0               736 	push	acc
                            737 ;	Peephole 181	changed mov to clr
   096E E4                  738 	clr	a
   096F C0 E0               739 	push	acc
                            740 ;	genCall
   0971 8D 82               741 	mov	dpl,r5
   0973 8E 83               742 	mov	dph,r6
   0975 12 5F C5            743 	lcall	__mulint
   0978 AA 82               744 	mov	r2,dpl
   097A AB 83               745 	mov	r3,dph
   097C 15 81               746 	dec	sp
   097E 15 81               747 	dec	sp
   0980 D0 20               748 	pop	bits
   0982 D0 07               749 	pop	ar7
   0984 D0 04               750 	pop	ar4
                            751 ;	genCast
   0986 EF                  752 	mov	a,r7
   0987 33                  753 	rlc	a
   0988 95 E0               754 	subb	a,acc
   098A FC                  755 	mov	r4,a
                            756 ;	genMinus
   098B EF                  757 	mov	a,r7
   098C 24 D0               758 	add	a,#0xd0
   098E FF                  759 	mov	r7,a
   098F EC                  760 	mov	a,r4
   0990 34 FF               761 	addc	a,#0xff
   0992 FC                  762 	mov	r4,a
                            763 ;	genPlus
                            764 ;	Peephole 236.g	used r7 instead of ar7
   0993 EF                  765 	mov	a,r7
                            766 ;	Peephole 236.a	used r2 instead of ar2
   0994 2A                  767 	add	a,r2
   0995 FA                  768 	mov	r2,a
                            769 ;	Peephole 236.g	used r4 instead of ar4
   0996 EC                  770 	mov	a,r4
                            771 ;	Peephole 236.b	used r3 instead of ar3
   0997 3B                  772 	addc	a,r3
   0998 FB                  773 	mov	r3,a
                            774 ;	genAssign
   0999 8A 05               775 	mov	ar5,r2
   099B 8B 06               776 	mov	ar6,r3
                            777 ;	genIpop
   099D D0 04               778 	pop	ar4
   099F D0 03               779 	pop	ar3
   09A1 D0 02               780 	pop	ar2
                            781 ;	Peephole 112.b	changed ljmp to sjmp
   09A3 80 19               782 	sjmp	00110$
   09A5                     783 00105$:
                            784 ;	Drivers/serio.c:51: printf_tiny("\r\n  Invalid Entry.\0338       \0338");
                            785 ;	genIpush
   09A5 C0 20               786 	push	bits
   09A7 74 E6               787 	mov	a,#__str_0
   09A9 C0 E0               788 	push	acc
   09AB 74 72               789 	mov	a,#(__str_0 >> 8)
   09AD C0 E0               790 	push	acc
                            791 ;	genCall
   09AF 12 5E BD            792 	lcall	_printf_tiny
   09B2 15 81               793 	dec	sp
   09B4 15 81               794 	dec	sp
   09B6 D0 20               795 	pop	bits
                            796 ;	Drivers/serio.c:52: number=FAIL;
                            797 ;	genAssign
   09B8 7D FF               798 	mov	r5,#0xFF
   09BA 7E FF               799 	mov	r6,#0xFF
                            800 ;	Drivers/serio.c:53: break;
                            801 ;	Peephole 112.b	changed ljmp to sjmp
   09BC 80 08               802 	sjmp	00111$
   09BE                     803 00110$:
                            804 ;	Drivers/serio.c:46: for (number=0;*line != '\r\n'; line++)                              /* compute decimal value */
                            805 ;	genPlus
                            806 ;     genPlusIncr
   09BE 0A                  807 	inc	r2
   09BF BA 00 01            808 	cjne	r2,#0x00,00144$
   09C2 0B                  809 	inc	r3
   09C3                     810 00144$:
   09C3 02 09 3B            811 	ljmp	00108$
   09C6                     812 00111$:
                            813 ;	Drivers/serio.c:56: return (sign ? number : -number);
                            814 ;	genIfx
                            815 ;	genIfxJump
                            816 ;	Peephole 108.d	removed ljmp by inverse jump logic
   09C6 30 00 06            817 	jnb	b0,00120$
                            818 ;	Peephole 300	removed redundant label 00145$
                            819 ;	genAssign
   09C9 8D 02               820 	mov	ar2,r5
   09CB 8E 03               821 	mov	ar3,r6
                            822 ;	Peephole 112.b	changed ljmp to sjmp
   09CD 80 07               823 	sjmp	00121$
   09CF                     824 00120$:
                            825 ;	genUminus
   09CF C3                  826 	clr	c
   09D0 E4                  827 	clr	a
   09D1 9D                  828 	subb	a,r5
   09D2 FA                  829 	mov	r2,a
   09D3 E4                  830 	clr	a
   09D4 9E                  831 	subb	a,r6
   09D5 FB                  832 	mov	r3,a
   09D6                     833 00121$:
                            834 ;	genRet
   09D6 8A 82               835 	mov	dpl,r2
   09D8 8B 83               836 	mov	dph,r3
                            837 ;	Peephole 300	removed redundant label 00118$
   09DA 85 10 81            838 	mov	sp,_bp
   09DD D0 10               839 	pop	_bp
   09DF 22                  840 	ret
                            841 ;------------------------------------------------------------
                            842 ;Allocation info for local variables in function 'atox'
                            843 ;------------------------------------------------------------
                            844 ;line                      Allocated to registers r2 r3 r4 
                            845 ;number                    Allocated to registers r5 r6 
                            846 ;sloc0                     Allocated to stack - offset 1
                            847 ;------------------------------------------------------------
                            848 ;	Drivers/serio.c:60: unsigned int atox (char *line)
                            849 ;	-----------------------------------------
                            850 ;	 function atox
                            851 ;	-----------------------------------------
   09E0                     852 _atox:
   09E0 C0 10               853 	push	_bp
   09E2 85 81 10            854 	mov	_bp,sp
   09E5 05 81               855 	inc	sp
   09E7 05 81               856 	inc	sp
                            857 ;	genReceive
   09E9 AA 82               858 	mov	r2,dpl
   09EB AB 83               859 	mov	r3,dph
   09ED AC F0               860 	mov	r4,b
                            861 ;	Drivers/serio.c:76: }
                            862 ;	genAssign
   09EF                     863 00119$:
                            864 ;	Drivers/serio.c:64: for ( ; *line == ' ' || *line == '\r\n' || *line == '\t'; line++);  /* skip white space */
                            865 ;	genPointerGet
                            866 ;	genGenPointerGet
   09EF 8A 82               867 	mov	dpl,r2
   09F1 8B 83               868 	mov	dph,r3
   09F3 8C F0               869 	mov	b,r4
   09F5 12 62 42            870 	lcall	__gptrget
   09F8 FD                  871 	mov	r5,a
                            872 ;	genCmpEq
                            873 ;	gencjneshort
   09F9 BD 20 02            874 	cjne	r5,#0x20,00137$
                            875 ;	Peephole 112.b	changed ljmp to sjmp
   09FC 80 08               876 	sjmp	00121$
   09FE                     877 00137$:
                            878 ;	genCmpEq
                            879 ;	gencjneshort
   09FE BD 0D 02            880 	cjne	r5,#0x0D,00138$
                            881 ;	Peephole 112.b	changed ljmp to sjmp
   0A01 80 03               882 	sjmp	00121$
   0A03                     883 00138$:
                            884 ;	genCmpEq
                            885 ;	gencjneshort
                            886 ;	Peephole 112.b	changed ljmp to sjmp
                            887 ;	Peephole 198.b	optimized misc jump sequence
   0A03 BD 09 07            888 	cjne	r5,#0x09,00122$
                            889 ;	Peephole 200.b	removed redundant sjmp
                            890 ;	Peephole 300	removed redundant label 00139$
                            891 ;	Peephole 300	removed redundant label 00140$
   0A06                     892 00121$:
                            893 ;	genPlus
                            894 ;     genPlusIncr
                            895 ;	tail increment optimized (range 9)
   0A06 0A                  896 	inc	r2
   0A07 BA 00 E5            897 	cjne	r2,#0x00,00119$
   0A0A 0B                  898 	inc	r3
                            899 ;	Peephole 112.b	changed ljmp to sjmp
   0A0B 80 E2               900 	sjmp	00119$
   0A0D                     901 00122$:
                            902 ;	Drivers/serio.c:65: for (number=0;*line != '\r\n'; line++)                              /* compute hexadecimal value */
                            903 ;	genAssign
   0A0D 7D 00               904 	mov	r5,#0x00
   0A0F 7E 00               905 	mov	r6,#0x00
                            906 ;	genAssign
   0A11                     907 00113$:
                            908 ;	genPointerGet
                            909 ;	genGenPointerGet
   0A11 8A 82               910 	mov	dpl,r2
   0A13 8B 83               911 	mov	dph,r3
   0A15 8C F0               912 	mov	b,r4
   0A17 12 62 42            913 	lcall	__gptrget
   0A1A FF                  914 	mov	r7,a
                            915 ;	genCmpEq
                            916 ;	gencjneshort
   0A1B BF 0D 03            917 	cjne	r7,#0x0D,00141$
   0A1E 02 0B 29            918 	ljmp	00116$
   0A21                     919 00141$:
                            920 ;	Drivers/serio.c:67: if(*line >= '0' && *line <= '9') number = (number * 16) + (*line - '0');
                            921 ;	genCmpLt
                            922 ;	genCmp
   0A21 C3                  923 	clr	c
   0A22 EF                  924 	mov	a,r7
   0A23 64 80               925 	xrl	a,#0x80
   0A25 94 B0               926 	subb	a,#0xb0
                            927 ;	genIfxJump
                            928 ;	Peephole 112.b	changed ljmp to sjmp
                            929 ;	Peephole 160.a	removed sjmp by inverse jump logic
                            930 ;	genCmpGt
                            931 ;	genCmp
   0A27 40 41               932 	jc	00110$
                            933 ;	Peephole 300	removed redundant label 00142$
                            934 ;	Peephole 256.a	removed redundant clr c
                            935 ;	Peephole 159	avoided xrl during execution
   0A29 74 B9               936 	mov	a,#(0x39 ^ 0x80)
   0A2B 8F F0               937 	mov	b,r7
   0A2D 63 F0 80            938 	xrl	b,#0x80
   0A30 95 F0               939 	subb	a,b
                            940 ;	genIfxJump
                            941 ;	Peephole 112.b	changed ljmp to sjmp
                            942 ;	Peephole 160.a	removed sjmp by inverse jump logic
   0A32 40 36               943 	jc	00110$
                            944 ;	Peephole 300	removed redundant label 00143$
                            945 ;	genIpush
   0A34 C0 02               946 	push	ar2
   0A36 C0 03               947 	push	ar3
   0A38 C0 04               948 	push	ar4
                            949 ;	genLeftShift
                            950 ;	genLeftShiftLiteral
                            951 ;	genlshTwo
   0A3A 8D 02               952 	mov	ar2,r5
   0A3C EE                  953 	mov	a,r6
   0A3D C4                  954 	swap	a
   0A3E 54 F0               955 	anl	a,#0xf0
   0A40 CA                  956 	xch	a,r2
   0A41 C4                  957 	swap	a
   0A42 CA                  958 	xch	a,r2
   0A43 6A                  959 	xrl	a,r2
   0A44 CA                  960 	xch	a,r2
   0A45 54 F0               961 	anl	a,#0xf0
   0A47 CA                  962 	xch	a,r2
   0A48 6A                  963 	xrl	a,r2
   0A49 FB                  964 	mov	r3,a
                            965 ;	genCast
   0A4A EF                  966 	mov	a,r7
   0A4B 33                  967 	rlc	a
   0A4C 95 E0               968 	subb	a,acc
   0A4E FC                  969 	mov	r4,a
                            970 ;	genMinus
   0A4F EF                  971 	mov	a,r7
   0A50 24 D0               972 	add	a,#0xd0
   0A52 FF                  973 	mov	r7,a
   0A53 EC                  974 	mov	a,r4
   0A54 34 FF               975 	addc	a,#0xff
   0A56 FC                  976 	mov	r4,a
                            977 ;	genPlus
                            978 ;	Peephole 236.g	used r7 instead of ar7
   0A57 EF                  979 	mov	a,r7
                            980 ;	Peephole 236.a	used r2 instead of ar2
   0A58 2A                  981 	add	a,r2
   0A59 FA                  982 	mov	r2,a
                            983 ;	Peephole 236.g	used r4 instead of ar4
   0A5A EC                  984 	mov	a,r4
                            985 ;	Peephole 236.b	used r3 instead of ar3
   0A5B 3B                  986 	addc	a,r3
   0A5C FB                  987 	mov	r3,a
                            988 ;	genAssign
   0A5D 8A 05               989 	mov	ar5,r2
   0A5F 8B 06               990 	mov	ar6,r3
                            991 ;	genIpop
   0A61 D0 04               992 	pop	ar4
   0A63 D0 03               993 	pop	ar3
   0A65 D0 02               994 	pop	ar2
   0A67 02 0B 21            995 	ljmp	00115$
   0A6A                     996 00110$:
                            997 ;	Drivers/serio.c:68: else if(*line >= 'a' && *line <= 'f') number = (number * 16) + (*line - 'a'+10);
                            998 ;	genPointerGet
                            999 ;	genGenPointerGet
   0A6A 8A 82              1000 	mov	dpl,r2
   0A6C 8B 83              1001 	mov	dph,r3
   0A6E 8C F0              1002 	mov	b,r4
   0A70 12 62 42           1003 	lcall	__gptrget
                           1004 ;	genCmpLt
                           1005 ;	genCmp
   0A73 FF                 1006 	mov	r7,a
   0A74 C3                 1007 	clr	c
                           1008 ;	Peephole 106	removed redundant mov
   0A75 64 80              1009 	xrl	a,#0x80
   0A77 94 E1              1010 	subb	a,#0xe1
                           1011 ;	genIfxJump
                           1012 ;	Peephole 112.b	changed ljmp to sjmp
                           1013 ;	Peephole 160.a	removed sjmp by inverse jump logic
                           1014 ;	genCmpGt
                           1015 ;	genCmp
   0A79 40 49              1016 	jc	00106$
                           1017 ;	Peephole 300	removed redundant label 00144$
                           1018 ;	Peephole 256.a	removed redundant clr c
                           1019 ;	Peephole 159	avoided xrl during execution
   0A7B 74 E6              1020 	mov	a,#(0x66 ^ 0x80)
   0A7D 8F F0              1021 	mov	b,r7
   0A7F 63 F0 80           1022 	xrl	b,#0x80
   0A82 95 F0              1023 	subb	a,b
                           1024 ;	genIfxJump
                           1025 ;	Peephole 112.b	changed ljmp to sjmp
                           1026 ;	Peephole 160.a	removed sjmp by inverse jump logic
   0A84 40 3E              1027 	jc	00106$
                           1028 ;	Peephole 300	removed redundant label 00145$
                           1029 ;	genIpush
   0A86 C0 02              1030 	push	ar2
   0A88 C0 03              1031 	push	ar3
   0A8A C0 04              1032 	push	ar4
                           1033 ;	genLeftShift
                           1034 ;	genLeftShiftLiteral
   0A8C A8 10              1035 	mov	r0,_bp
   0A8E 08                 1036 	inc	r0
                           1037 ;	genlshTwo
   0A8F A6 05              1038 	mov	@r0,ar5
   0A91 EE                 1039 	mov	a,r6
   0A92 C4                 1040 	swap	a
   0A93 54 F0              1041 	anl	a,#0xf0
   0A95 C6                 1042 	xch	a,@r0
   0A96 C4                 1043 	swap	a
   0A97 C6                 1044 	xch	a,@r0
   0A98 66                 1045 	xrl	a,@r0
   0A99 C6                 1046 	xch	a,@r0
   0A9A 54 F0              1047 	anl	a,#0xf0
   0A9C C6                 1048 	xch	a,@r0
   0A9D 66                 1049 	xrl	a,@r0
   0A9E 08                 1050 	inc	r0
   0A9F F6                 1051 	mov	@r0,a
                           1052 ;	genCast
                           1053 ;	peephole 177.h	optimized mov sequence
   0AA0 EF                 1054 	mov	a,r7
                           1055 ;	Peephole 236.i	used r4 instead of ar4
   0AA1 FC                 1056 	mov	r4,a
   0AA2 33                 1057 	rlc	a
   0AA3 95 E0              1058 	subb	a,acc
   0AA5 FA                 1059 	mov	r2,a
                           1060 ;	genPlus
                           1061 ;     genPlusIncr
   0AA6 74 A9              1062 	mov	a,#0xA9
                           1063 ;	Peephole 236.a	used r4 instead of ar4
   0AA8 2C                 1064 	add	a,r4
   0AA9 FC                 1065 	mov	r4,a
   0AAA 74 FF              1066 	mov	a,#0xFF
                           1067 ;	Peephole 236.b	used r2 instead of ar2
   0AAC 3A                 1068 	addc	a,r2
   0AAD FA                 1069 	mov	r2,a
                           1070 ;	genPlus
   0AAE A8 10              1071 	mov	r0,_bp
   0AB0 08                 1072 	inc	r0
                           1073 ;	Peephole 236.g	used r4 instead of ar4
   0AB1 EC                 1074 	mov	a,r4
   0AB2 26                 1075 	add	a,@r0
   0AB3 FC                 1076 	mov	r4,a
                           1077 ;	Peephole 236.g	used r2 instead of ar2
   0AB4 EA                 1078 	mov	a,r2
   0AB5 08                 1079 	inc	r0
   0AB6 36                 1080 	addc	a,@r0
   0AB7 FA                 1081 	mov	r2,a
                           1082 ;	genAssign
   0AB8 8C 05              1083 	mov	ar5,r4
   0ABA 8A 06              1084 	mov	ar6,r2
                           1085 ;	genIpop
   0ABC D0 04              1086 	pop	ar4
   0ABE D0 03              1087 	pop	ar3
   0AC0 D0 02              1088 	pop	ar2
                           1089 ;	Peephole 112.b	changed ljmp to sjmp
   0AC2 80 5D              1090 	sjmp	00115$
   0AC4                    1091 00106$:
                           1092 ;	Drivers/serio.c:69: else if(*line >= 'A' && *line <= 'F') number = (number * 16) + (*line - 'A'+10);
                           1093 ;	genCmpLt
                           1094 ;	genCmp
   0AC4 C3                 1095 	clr	c
   0AC5 EF                 1096 	mov	a,r7
   0AC6 64 80              1097 	xrl	a,#0x80
   0AC8 94 C1              1098 	subb	a,#0xc1
                           1099 ;	genIfxJump
                           1100 ;	Peephole 112.b	changed ljmp to sjmp
                           1101 ;	Peephole 160.a	removed sjmp by inverse jump logic
                           1102 ;	genCmpGt
                           1103 ;	genCmp
   0ACA 40 40              1104 	jc	00102$
                           1105 ;	Peephole 300	removed redundant label 00146$
                           1106 ;	Peephole 256.a	removed redundant clr c
                           1107 ;	Peephole 159	avoided xrl during execution
   0ACC 74 C6              1108 	mov	a,#(0x46 ^ 0x80)
   0ACE 8F F0              1109 	mov	b,r7
   0AD0 63 F0 80           1110 	xrl	b,#0x80
   0AD3 95 F0              1111 	subb	a,b
                           1112 ;	genIfxJump
                           1113 ;	Peephole 112.b	changed ljmp to sjmp
                           1114 ;	Peephole 160.a	removed sjmp by inverse jump logic
   0AD5 40 35              1115 	jc	00102$
                           1116 ;	Peephole 300	removed redundant label 00147$
                           1117 ;	genIpush
   0AD7 C0 02              1118 	push	ar2
   0AD9 C0 03              1119 	push	ar3
   0ADB C0 04              1120 	push	ar4
                           1121 ;	genLeftShift
                           1122 ;	genLeftShiftLiteral
                           1123 ;	genlshTwo
   0ADD 8D 02              1124 	mov	ar2,r5
   0ADF EE                 1125 	mov	a,r6
   0AE0 C4                 1126 	swap	a
   0AE1 54 F0              1127 	anl	a,#0xf0
   0AE3 CA                 1128 	xch	a,r2
   0AE4 C4                 1129 	swap	a
   0AE5 CA                 1130 	xch	a,r2
   0AE6 6A                 1131 	xrl	a,r2
   0AE7 CA                 1132 	xch	a,r2
   0AE8 54 F0              1133 	anl	a,#0xf0
   0AEA CA                 1134 	xch	a,r2
   0AEB 6A                 1135 	xrl	a,r2
   0AEC FB                 1136 	mov	r3,a
                           1137 ;	genCast
   0AED EF                 1138 	mov	a,r7
   0AEE 33                 1139 	rlc	a
   0AEF 95 E0              1140 	subb	a,acc
   0AF1 FC                 1141 	mov	r4,a
                           1142 ;	genPlus
                           1143 ;     genPlusIncr
   0AF2 74 C9              1144 	mov	a,#0xC9
                           1145 ;	Peephole 236.a	used r7 instead of ar7
   0AF4 2F                 1146 	add	a,r7
   0AF5 FF                 1147 	mov	r7,a
   0AF6 74 FF              1148 	mov	a,#0xFF
                           1149 ;	Peephole 236.b	used r4 instead of ar4
   0AF8 3C                 1150 	addc	a,r4
   0AF9 FC                 1151 	mov	r4,a
                           1152 ;	genPlus
                           1153 ;	Peephole 236.g	used r7 instead of ar7
   0AFA EF                 1154 	mov	a,r7
                           1155 ;	Peephole 236.a	used r2 instead of ar2
   0AFB 2A                 1156 	add	a,r2
   0AFC FA                 1157 	mov	r2,a
                           1158 ;	Peephole 236.g	used r4 instead of ar4
   0AFD EC                 1159 	mov	a,r4
                           1160 ;	Peephole 236.b	used r3 instead of ar3
   0AFE 3B                 1161 	addc	a,r3
   0AFF FB                 1162 	mov	r3,a
                           1163 ;	genAssign
   0B00 8A 05              1164 	mov	ar5,r2
   0B02 8B 06              1165 	mov	ar6,r3
                           1166 ;	genIpop
   0B04 D0 04              1167 	pop	ar4
   0B06 D0 03              1168 	pop	ar3
   0B08 D0 02              1169 	pop	ar2
                           1170 ;	Peephole 112.b	changed ljmp to sjmp
   0B0A 80 15              1171 	sjmp	00115$
   0B0C                    1172 00102$:
                           1173 ;	Drivers/serio.c:72: printf_tiny("\r\n  Invalid Entry.\0338       \0338");
                           1174 ;	genIpush
   0B0C 74 E6              1175 	mov	a,#__str_0
   0B0E C0 E0              1176 	push	acc
   0B10 74 72              1177 	mov	a,#(__str_0 >> 8)
   0B12 C0 E0              1178 	push	acc
                           1179 ;	genCall
   0B14 12 5E BD           1180 	lcall	_printf_tiny
   0B17 15 81              1181 	dec	sp
   0B19 15 81              1182 	dec	sp
                           1183 ;	Drivers/serio.c:73: number=FAIL;
                           1184 ;	genAssign
   0B1B 7D FF              1185 	mov	r5,#0xFF
   0B1D 7E FF              1186 	mov	r6,#0xFF
                           1187 ;	Drivers/serio.c:74: break;
                           1188 ;	Peephole 112.b	changed ljmp to sjmp
   0B1F 80 08              1189 	sjmp	00116$
   0B21                    1190 00115$:
                           1191 ;	Drivers/serio.c:65: for (number=0;*line != '\r\n'; line++)                              /* compute hexadecimal value */
                           1192 ;	genPlus
                           1193 ;     genPlusIncr
   0B21 0A                 1194 	inc	r2
   0B22 BA 00 01           1195 	cjne	r2,#0x00,00148$
   0B25 0B                 1196 	inc	r3
   0B26                    1197 00148$:
   0B26 02 0A 11           1198 	ljmp	00113$
   0B29                    1199 00116$:
                           1200 ;	Drivers/serio.c:77: return (number);
                           1201 ;	genRet
   0B29 8D 82              1202 	mov	dpl,r5
   0B2B 8E 83              1203 	mov	dph,r6
                           1204 ;	Peephole 300	removed redundant label 00123$
   0B2D 85 10 81           1205 	mov	sp,_bp
   0B30 D0 10              1206 	pop	_bp
   0B32 22                 1207 	ret
                           1208 ;------------------------------------------------------------
                           1209 ;Allocation info for local variables in function 'getnumber'
                           1210 ;------------------------------------------------------------
                           1211 ;lengthnum                 Allocated to registers r2 r3 
                           1212 ;spot                      Allocated to registers r4 r5 
                           1213 ;line                      Allocated to stack - offset 1
                           1214 ;------------------------------------------------------------
                           1215 ;	Drivers/serio.c:81: unsigned int getnumber (int lengthnum)
                           1216 ;	-----------------------------------------
                           1217 ;	 function getnumber
                           1218 ;	-----------------------------------------
   0B33                    1219 _getnumber:
   0B33 C0 10              1220 	push	_bp
                           1221 ;	peephole 177.h	optimized mov sequence
   0B35 E5 81              1222 	mov	a,sp
   0B37 F5 10              1223 	mov	_bp,a
   0B39 24 07              1224 	add	a,#0x07
   0B3B F5 81              1225 	mov	sp,a
                           1226 ;	genReceive
   0B3D AA 82              1227 	mov	r2,dpl
   0B3F AB 83              1228 	mov	r3,dph
                           1229 ;	Drivers/serio.c:83: int spot=0;
                           1230 ;	genAssign
                           1231 ;	Drivers/serio.c:85: while ((line[spot] = getchar()) != '\r\n')
                           1232 ;	genAddrOf
                           1233 ;	Peephole 3.c	changed mov to clr
   0B41 E4                 1234 	clr	a
   0B42 FC                 1235 	mov	r4,a
   0B43 FD                 1236 	mov	r5,a
                           1237 ;	Peephole 212	reduced add sequence to inc
   0B44 AE 10              1238 	mov	r6,_bp
   0B46 0E                 1239 	inc	r6
                           1240 ;	genPlus
                           1241 ;     genPlusIncr
   0B47 0A                 1242 	inc	r2
   0B48 BA 00 01           1243 	cjne	r2,#0x00,00123$
   0B4B 0B                 1244 	inc	r3
   0B4C                    1245 00123$:
   0B4C                    1246 00111$:
                           1247 ;	genPlus
                           1248 ;	Peephole 236.g	used r4 instead of ar4
   0B4C EC                 1249 	mov	a,r4
                           1250 ;	Peephole 236.a	used r6 instead of ar6
   0B4D 2E                 1251 	add	a,r6
   0B4E F8                 1252 	mov	r0,a
                           1253 ;	genCall
   0B4F C0 02              1254 	push	ar2
   0B51 C0 03              1255 	push	ar3
   0B53 C0 04              1256 	push	ar4
   0B55 C0 05              1257 	push	ar5
   0B57 C0 06              1258 	push	ar6
   0B59 C0 00              1259 	push	ar0
   0B5B 12 08 C3           1260 	lcall	_getchar
   0B5E AF 82              1261 	mov	r7,dpl
   0B60 D0 00              1262 	pop	ar0
   0B62 D0 06              1263 	pop	ar6
   0B64 D0 05              1264 	pop	ar5
   0B66 D0 04              1265 	pop	ar4
   0B68 D0 03              1266 	pop	ar3
   0B6A D0 02              1267 	pop	ar2
                           1268 ;	genPointerSet
                           1269 ;	genNearPointerSet
   0B6C A6 07              1270 	mov	@r0,ar7
                           1271 ;	genCmpEq
                           1272 ;	gencjneshort
   0B6E BF 0D 03           1273 	cjne	r7,#0x0D,00124$
   0B71 02 0C 50           1274 	ljmp	00113$
   0B74                    1275 00124$:
                           1276 ;	Drivers/serio.c:87: if (line[spot]=='\b')                   // Process Backspace
                           1277 ;	genPointerGet
                           1278 ;	genNearPointerGet
   0B74 86 07              1279 	mov	ar7,@r0
                           1280 ;	genCmpEq
                           1281 ;	gencjneshort
                           1282 ;	Peephole 112.b	changed ljmp to sjmp
                           1283 ;	Peephole 198.b	optimized misc jump sequence
   0B76 BF 08 75           1284 	cjne	r7,#0x08,00109$
                           1285 ;	Peephole 200.b	removed redundant sjmp
                           1286 ;	Peephole 300	removed redundant label 00125$
                           1287 ;	Peephole 300	removed redundant label 00126$
                           1288 ;	Drivers/serio.c:89: if(spot >0)
                           1289 ;	genCmpGt
                           1290 ;	genCmp
   0B79 C3                 1291 	clr	c
                           1292 ;	Peephole 181	changed mov to clr
   0B7A E4                 1293 	clr	a
   0B7B 9C                 1294 	subb	a,r4
                           1295 ;	Peephole 159	avoided xrl during execution
   0B7C 74 80              1296 	mov	a,#(0x00 ^ 0x80)
   0B7E 8D F0              1297 	mov	b,r5
   0B80 63 F0 80           1298 	xrl	b,#0x80
   0B83 95 F0              1299 	subb	a,b
                           1300 ;	genIfxJump
                           1301 ;	Peephole 108.a	removed ljmp by inverse jump logic
   0B85 50 C5              1302 	jnc	00111$
                           1303 ;	Peephole 300	removed redundant label 00127$
                           1304 ;	Drivers/serio.c:91: line[spot--]='\r\n';
                           1305 ;	genIpush
   0B87 C0 02              1306 	push	ar2
   0B89 C0 03              1307 	push	ar3
                           1308 ;	genAssign
   0B8B 8C 07              1309 	mov	ar7,r4
   0B8D 8D 02              1310 	mov	ar2,r5
                           1311 ;	genMinus
                           1312 ;	genMinusDec
   0B8F 1C                 1313 	dec	r4
   0B90 BC FF 01           1314 	cjne	r4,#0xff,00128$
   0B93 1D                 1315 	dec	r5
   0B94                    1316 00128$:
                           1317 ;	genPlus
                           1318 ;	Peephole 236.g	used r7 instead of ar7
   0B94 EF                 1319 	mov	a,r7
                           1320 ;	Peephole 236.a	used r6 instead of ar6
   0B95 2E                 1321 	add	a,r6
   0B96 F9                 1322 	mov	r1,a
                           1323 ;	genPointerSet
                           1324 ;	genNearPointerSet
   0B97 77 0D              1325 	mov	@r1,#0x0D
                           1326 ;	Drivers/serio.c:92: putchar('\bs');
                           1327 ;	genCall
   0B99 75 82 08           1328 	mov	dpl,#0x08
   0B9C C0 02              1329 	push	ar2
   0B9E C0 03              1330 	push	ar3
   0BA0 C0 04              1331 	push	ar4
   0BA2 C0 05              1332 	push	ar5
   0BA4 C0 06              1333 	push	ar6
   0BA6 12 08 BA           1334 	lcall	_putchar
   0BA9 D0 06              1335 	pop	ar6
   0BAB D0 05              1336 	pop	ar5
   0BAD D0 04              1337 	pop	ar4
   0BAF D0 03              1338 	pop	ar3
   0BB1 D0 02              1339 	pop	ar2
                           1340 ;	Drivers/serio.c:93: putchar(' ');
                           1341 ;	genCall
   0BB3 75 82 20           1342 	mov	dpl,#0x20
   0BB6 C0 02              1343 	push	ar2
   0BB8 C0 03              1344 	push	ar3
   0BBA C0 04              1345 	push	ar4
   0BBC C0 05              1346 	push	ar5
   0BBE C0 06              1347 	push	ar6
   0BC0 12 08 BA           1348 	lcall	_putchar
   0BC3 D0 06              1349 	pop	ar6
   0BC5 D0 05              1350 	pop	ar5
   0BC7 D0 04              1351 	pop	ar4
   0BC9 D0 03              1352 	pop	ar3
   0BCB D0 02              1353 	pop	ar2
                           1354 ;	Drivers/serio.c:94: putchar('\bs');
                           1355 ;	genCall
   0BCD 75 82 08           1356 	mov	dpl,#0x08
   0BD0 C0 02              1357 	push	ar2
   0BD2 C0 03              1358 	push	ar3
   0BD4 C0 04              1359 	push	ar4
   0BD6 C0 05              1360 	push	ar5
   0BD8 C0 06              1361 	push	ar6
   0BDA 12 08 BA           1362 	lcall	_putchar
   0BDD D0 06              1363 	pop	ar6
   0BDF D0 05              1364 	pop	ar5
   0BE1 D0 04              1365 	pop	ar4
   0BE3 D0 03              1366 	pop	ar3
   0BE5 D0 02              1367 	pop	ar2
                           1368 ;	genIpop
   0BE7 D0 03              1369 	pop	ar3
   0BE9 D0 02              1370 	pop	ar2
   0BEB 02 0B 4C           1371 	ljmp	00111$
   0BEE                    1372 00109$:
                           1373 ;	Drivers/serio.c:97: else if ((line[spot]>='0')&&(line[spot]<='9'))
                           1374 ;	genPointerGet
                           1375 ;	genNearPointerGet
   0BEE 86 07              1376 	mov	ar7,@r0
                           1377 ;	genCmpLt
                           1378 ;	genCmp
   0BF0 C3                 1379 	clr	c
   0BF1 EF                 1380 	mov	a,r7
   0BF2 64 80              1381 	xrl	a,#0x80
   0BF4 94 B0              1382 	subb	a,#0xb0
                           1383 ;	genIfxJump
   0BF6 50 03              1384 	jnc	00129$
   0BF8 02 0B 4C           1385 	ljmp	00111$
   0BFB                    1386 00129$:
                           1387 ;	genPointerGet
                           1388 ;	genNearPointerGet
   0BFB 86 07              1389 	mov	ar7,@r0
                           1390 ;	genCmpGt
                           1391 ;	genCmp
   0BFD C3                 1392 	clr	c
                           1393 ;	Peephole 159	avoided xrl during execution
   0BFE 74 B9              1394 	mov	a,#(0x39 ^ 0x80)
   0C00 8F F0              1395 	mov	b,r7
   0C02 63 F0 80           1396 	xrl	b,#0x80
   0C05 95 F0              1397 	subb	a,b
                           1398 ;	genIfxJump
   0C07 50 03              1399 	jnc	00130$
   0C09 02 0B 4C           1400 	ljmp	00111$
   0C0C                    1401 00130$:
                           1402 ;	Drivers/serio.c:99: putchar(line[spot]);
                           1403 ;	genPointerGet
                           1404 ;	genNearPointerGet
   0C0C 86 82              1405 	mov	dpl,@r0
                           1406 ;	genCall
   0C0E C0 02              1407 	push	ar2
   0C10 C0 03              1408 	push	ar3
   0C12 C0 04              1409 	push	ar4
   0C14 C0 05              1410 	push	ar5
   0C16 C0 06              1411 	push	ar6
   0C18 12 08 BA           1412 	lcall	_putchar
   0C1B D0 06              1413 	pop	ar6
   0C1D D0 05              1414 	pop	ar5
   0C1F D0 04              1415 	pop	ar4
   0C21 D0 03              1416 	pop	ar3
   0C23 D0 02              1417 	pop	ar2
                           1418 ;	Drivers/serio.c:100: spot++;
                           1419 ;	genPlus
                           1420 ;     genPlusIncr
   0C25 0C                 1421 	inc	r4
   0C26 BC 00 01           1422 	cjne	r4,#0x00,00131$
   0C29 0D                 1423 	inc	r5
   0C2A                    1424 00131$:
                           1425 ;	Drivers/serio.c:101: if(spot>=lengthnum+1)
                           1426 ;	genCmpLt
                           1427 ;	genCmp
   0C2A C3                 1428 	clr	c
   0C2B EC                 1429 	mov	a,r4
   0C2C 9A                 1430 	subb	a,r2
   0C2D ED                 1431 	mov	a,r5
   0C2E 64 80              1432 	xrl	a,#0x80
   0C30 8B F0              1433 	mov	b,r3
   0C32 63 F0 80           1434 	xrl	b,#0x80
   0C35 95 F0              1435 	subb	a,b
                           1436 ;	genIfxJump
   0C37 50 03              1437 	jnc	00132$
   0C39 02 0B 4C           1438 	ljmp	00111$
   0C3C                    1439 00132$:
                           1440 ;	Drivers/serio.c:103: printf_tiny("\r\n  Invalid Entry.\0338       \0338");
                           1441 ;	genIpush
   0C3C 74 E6              1442 	mov	a,#__str_0
   0C3E C0 E0              1443 	push	acc
   0C40 74 72              1444 	mov	a,#(__str_0 >> 8)
   0C42 C0 E0              1445 	push	acc
                           1446 ;	genCall
   0C44 12 5E BD           1447 	lcall	_printf_tiny
   0C47 15 81              1448 	dec	sp
   0C49 15 81              1449 	dec	sp
                           1450 ;	Drivers/serio.c:104: return FAIL;
                           1451 ;	genRet
                           1452 ;	Peephole 182.b	used 16 bit load of dptr
   0C4B 90 FF FF           1453 	mov	dptr,#0xFFFF
                           1454 ;	Peephole 112.b	changed ljmp to sjmp
   0C4E 80 0D              1455 	sjmp	00114$
   0C50                    1456 00113$:
                           1457 ;	Drivers/serio.c:108: return (atoi(line));
                           1458 ;	genAssign
                           1459 ;	genCast
   0C50 7A 00              1460 	mov	r2,#0x00
   0C52 7B 40              1461 	mov	r3,#0x40
                           1462 ;	genCall
   0C54 8E 82              1463 	mov	dpl,r6
   0C56 8A 83              1464 	mov	dph,r2
   0C58 8B F0              1465 	mov	b,r3
   0C5A 12 08 CC           1466 	lcall	_atoi
                           1467 ;	genRet
   0C5D                    1468 00114$:
   0C5D 85 10 81           1469 	mov	sp,_bp
   0C60 D0 10              1470 	pop	_bp
   0C62 22                 1471 	ret
                           1472 ;------------------------------------------------------------
                           1473 ;Allocation info for local variables in function 'getnumbetween'
                           1474 ;------------------------------------------------------------
                           1475 ;highlim                   Allocated to stack - offset -4
                           1476 ;lengthnum                 Allocated to stack - offset -6
                           1477 ;lowlim                    Allocated to registers r2 r3 
                           1478 ;check_value               Allocated to registers r4 r5 
                           1479 ;------------------------------------------------------------
                           1480 ;	Drivers/serio.c:112: int getnumbetween(int lowlim, int highlim, int lengthnum)
                           1481 ;	-----------------------------------------
                           1482 ;	 function getnumbetween
                           1483 ;	-----------------------------------------
   0C63                    1484 _getnumbetween:
   0C63 C0 10              1485 	push	_bp
   0C65 85 81 10           1486 	mov	_bp,sp
                           1487 ;	genReceive
   0C68 AA 82              1488 	mov	r2,dpl
   0C6A AB 83              1489 	mov	r3,dph
                           1490 ;	Drivers/serio.c:115: check_value = getnumber(lengthnum);
                           1491 ;	genCall
   0C6C E5 10              1492 	mov	a,_bp
   0C6E 24 FA              1493 	add	a,#0xfffffffa
   0C70 F8                 1494 	mov	r0,a
   0C71 86 82              1495 	mov	dpl,@r0
   0C73 08                 1496 	inc	r0
   0C74 86 83              1497 	mov	dph,@r0
   0C76 C0 02              1498 	push	ar2
   0C78 C0 03              1499 	push	ar3
   0C7A 12 0B 33           1500 	lcall	_getnumber
   0C7D AC 82              1501 	mov	r4,dpl
   0C7F AD 83              1502 	mov	r5,dph
   0C81 D0 03              1503 	pop	ar3
   0C83 D0 02              1504 	pop	ar2
                           1505 ;	genAssign
                           1506 ;	Drivers/serio.c:116: if((check_value < lowlim) || (check_value > highlim))
                           1507 ;	genCmpLt
                           1508 ;	genCmp
   0C85 C3                 1509 	clr	c
   0C86 EC                 1510 	mov	a,r4
   0C87 9A                 1511 	subb	a,r2
   0C88 ED                 1512 	mov	a,r5
   0C89 64 80              1513 	xrl	a,#0x80
   0C8B 8B F0              1514 	mov	b,r3
   0C8D 63 F0 80           1515 	xrl	b,#0x80
   0C90 95 F0              1516 	subb	a,b
                           1517 ;	genIfxJump
                           1518 ;	Peephole 112.b	changed ljmp to sjmp
                           1519 ;	Peephole 160.a	removed sjmp by inverse jump logic
   0C92 40 15              1520 	jc	00101$
                           1521 ;	Peephole 300	removed redundant label 00107$
                           1522 ;	genCmpGt
   0C94 E5 10              1523 	mov	a,_bp
   0C96 24 FC              1524 	add	a,#0xfffffffc
   0C98 F8                 1525 	mov	r0,a
                           1526 ;	genCmp
   0C99 C3                 1527 	clr	c
   0C9A E6                 1528 	mov	a,@r0
   0C9B 9C                 1529 	subb	a,r4
   0C9C 08                 1530 	inc	r0
   0C9D E6                 1531 	mov	a,@r0
   0C9E 64 80              1532 	xrl	a,#0x80
   0CA0 8D F0              1533 	mov	b,r5
   0CA2 63 F0 80           1534 	xrl	b,#0x80
   0CA5 95 F0              1535 	subb	a,b
                           1536 ;	genIfxJump
                           1537 ;	Peephole 108.a	removed ljmp by inverse jump logic
   0CA7 50 44              1538 	jnc	00102$
                           1539 ;	Peephole 300	removed redundant label 00108$
   0CA9                    1540 00101$:
                           1541 ;	Drivers/serio.c:118: printf_tiny("\r\n  Invalid Entry.\0338       \0338");
                           1542 ;	genIpush
   0CA9 C0 02              1543 	push	ar2
   0CAB C0 03              1544 	push	ar3
   0CAD 74 E6              1545 	mov	a,#__str_0
   0CAF C0 E0              1546 	push	acc
   0CB1 74 72              1547 	mov	a,#(__str_0 >> 8)
   0CB3 C0 E0              1548 	push	acc
                           1549 ;	genCall
   0CB5 12 5E BD           1550 	lcall	_printf_tiny
   0CB8 15 81              1551 	dec	sp
   0CBA 15 81              1552 	dec	sp
   0CBC D0 03              1553 	pop	ar3
   0CBE D0 02              1554 	pop	ar2
                           1555 ;	Drivers/serio.c:119: check_value = getnumbetween(lowlim, highlim, lengthnum);
                           1556 ;	genIpush
   0CC0 E5 10              1557 	mov	a,_bp
   0CC2 24 FA              1558 	add	a,#0xfffffffa
   0CC4 F8                 1559 	mov	r0,a
   0CC5 E6                 1560 	mov	a,@r0
   0CC6 C0 E0              1561 	push	acc
   0CC8 08                 1562 	inc	r0
   0CC9 E6                 1563 	mov	a,@r0
   0CCA C0 E0              1564 	push	acc
                           1565 ;	genIpush
   0CCC E5 10              1566 	mov	a,_bp
   0CCE 24 FC              1567 	add	a,#0xfffffffc
   0CD0 F8                 1568 	mov	r0,a
   0CD1 E6                 1569 	mov	a,@r0
   0CD2 C0 E0              1570 	push	acc
   0CD4 08                 1571 	inc	r0
   0CD5 E6                 1572 	mov	a,@r0
   0CD6 C0 E0              1573 	push	acc
                           1574 ;	genCall
   0CD8 8A 82              1575 	mov	dpl,r2
   0CDA 8B 83              1576 	mov	dph,r3
   0CDC 12 0C 63           1577 	lcall	_getnumbetween
   0CDF AA 82              1578 	mov	r2,dpl
   0CE1 AB 83              1579 	mov	r3,dph
   0CE3 E5 81              1580 	mov	a,sp
   0CE5 24 FC              1581 	add	a,#0xfc
   0CE7 F5 81              1582 	mov	sp,a
                           1583 ;	genAssign
   0CE9 8A 04              1584 	mov	ar4,r2
   0CEB 8B 05              1585 	mov	ar5,r3
   0CED                    1586 00102$:
                           1587 ;	Drivers/serio.c:121: printf_tiny("\r\n                \0338");
                           1588 ;	genIpush
   0CED C0 04              1589 	push	ar4
   0CEF C0 05              1590 	push	ar5
   0CF1 74 04              1591 	mov	a,#__str_1
   0CF3 C0 E0              1592 	push	acc
   0CF5 74 73              1593 	mov	a,#(__str_1 >> 8)
   0CF7 C0 E0              1594 	push	acc
                           1595 ;	genCall
   0CF9 12 5E BD           1596 	lcall	_printf_tiny
   0CFC 15 81              1597 	dec	sp
   0CFE 15 81              1598 	dec	sp
   0D00 D0 05              1599 	pop	ar5
   0D02 D0 04              1600 	pop	ar4
                           1601 ;	Drivers/serio.c:122: return check_value;
                           1602 ;	genRet
   0D04 8C 82              1603 	mov	dpl,r4
   0D06 8D 83              1604 	mov	dph,r5
                           1605 ;	Peephole 300	removed redundant label 00104$
   0D08 D0 10              1606 	pop	_bp
   0D0A 22                 1607 	ret
                           1608 	.area CSEG    (CODE)
                           1609 	.area CONST   (CODE)
   72E6                    1610 __str_0:
   72E6 0D                 1611 	.db 0x0D
   72E7 0A                 1612 	.db 0x0A
   72E8 20 20 49 6E 76 61  1613 	.ascii "  Invalid Entry."
        6C 69 64 20 45 6E
        74 72 79 2E
   72F8 1B                 1614 	.db 0x1B
   72F9 38 20 20 20 20 20  1615 	.ascii "8       "
        20 20
   7301 1B                 1616 	.db 0x1B
   7302 38                 1617 	.ascii "8"
   7303 00                 1618 	.db 0x00
   7304                    1619 __str_1:
   7304 0D                 1620 	.db 0x0D
   7305 0A                 1621 	.db 0x0A
   7306 20 20 20 20 20 20  1622 	.ascii "                "
        20 20 20 20 20 20
        20 20 20 20
   7316 1B                 1623 	.db 0x1B
   7317 38                 1624 	.ascii "8"
   7318 00                 1625 	.db 0x00
                           1626 	.area XINIT   (CODE)
