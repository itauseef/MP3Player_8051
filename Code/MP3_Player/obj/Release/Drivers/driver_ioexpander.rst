                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : FreeWare ANSI-C Compiler
                              3 ; Version 2.6.0 #4309 (Jul 28 2006)
                              4 ; This file generated Sat May 02 15:12:56 2015
                              5 ;--------------------------------------------------------
                              6 	.module driver_ioexpander
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
                            212 	.globl _ioebytew
                            213 	.globl _ioebyter
                            214 ;--------------------------------------------------------
                            215 ; special function registers
                            216 ;--------------------------------------------------------
                            217 	.area RSEG    (DATA)
                    0080    218 _P0	=	0x0080
                    0081    219 _SP	=	0x0081
                    0082    220 _DPL	=	0x0082
                    0083    221 _DPH	=	0x0083
                    0087    222 _PCON	=	0x0087
                    0088    223 _TCON	=	0x0088
                    0089    224 _TMOD	=	0x0089
                    008A    225 _TL0	=	0x008a
                    008B    226 _TL1	=	0x008b
                    008C    227 _TH0	=	0x008c
                    008D    228 _TH1	=	0x008d
                    0090    229 _P1	=	0x0090
                    0098    230 _SCON	=	0x0098
                    0099    231 _SBUF	=	0x0099
                    00A0    232 _P2	=	0x00a0
                    00A8    233 _IE	=	0x00a8
                    00B0    234 _P3	=	0x00b0
                    00B8    235 _IP	=	0x00b8
                    00D0    236 _PSW	=	0x00d0
                    00E0    237 _ACC	=	0x00e0
                    00F0    238 _B	=	0x00f0
                    00C8    239 _T2CON	=	0x00c8
                    00CA    240 _RCAP2L	=	0x00ca
                    00CB    241 _RCAP2H	=	0x00cb
                    00CC    242 _TL2	=	0x00cc
                    00CD    243 _TH2	=	0x00cd
                    008E    244 _AUXR	=	0x008e
                    00A2    245 _AUXR1	=	0x00a2
                    0097    246 _CKRL	=	0x0097
                    008F    247 _CKCKON0	=	0x008f
                    00AF    248 _CKCKON1	=	0x00af
                    00FA    249 _CCAP0H	=	0x00fa
                    00FB    250 _CCAP1H	=	0x00fb
                    00FC    251 _CCAP2H	=	0x00fc
                    00FD    252 _CCAP3H	=	0x00fd
                    00FE    253 _CCAP4H	=	0x00fe
                    00EA    254 _CCAP0L	=	0x00ea
                    00EB    255 _CCAP1L	=	0x00eb
                    00EC    256 _CCAP2L	=	0x00ec
                    00ED    257 _CCAP3L	=	0x00ed
                    00EE    258 _CCAP4L	=	0x00ee
                    00DA    259 _CCAPM0	=	0x00da
                    00DB    260 _CCAPM1	=	0x00db
                    00DC    261 _CCAPM2	=	0x00dc
                    00DD    262 _CCAPM3	=	0x00dd
                    00DE    263 _CCAPM4	=	0x00de
                    00D8    264 _CCON	=	0x00d8
                    00F9    265 _CH	=	0x00f9
                    00E9    266 _CL	=	0x00e9
                    00D9    267 _CMOD	=	0x00d9
                    00A8    268 _IEN0	=	0x00a8
                    00B1    269 _IEN1	=	0x00b1
                    00B8    270 _IPL0	=	0x00b8
                    00B7    271 _IPH0	=	0x00b7
                    00B2    272 _IPL1	=	0x00b2
                    00B3    273 _IPH1	=	0x00b3
                    00C0    274 _P4	=	0x00c0
                    00D8    275 _P5	=	0x00d8
                    00A6    276 _WDTRST	=	0x00a6
                    00A7    277 _WDTPRG	=	0x00a7
                    00A9    278 _SADDR	=	0x00a9
                    00B9    279 _SADEN	=	0x00b9
                    00C3    280 _SPCON	=	0x00c3
                    00C4    281 _SPSTA	=	0x00c4
                    00C5    282 _SPDAT	=	0x00c5
                    00C9    283 _T2MOD	=	0x00c9
                    009B    284 _BDRCON	=	0x009b
                    009A    285 _BRL	=	0x009a
                    009C    286 _KBLS	=	0x009c
                    009D    287 _KBE	=	0x009d
                    009E    288 _KBF	=	0x009e
                    00D2    289 _EECON	=	0x00d2
                            290 ;--------------------------------------------------------
                            291 ; special function bits
                            292 ;--------------------------------------------------------
                            293 	.area RSEG    (DATA)
                    0080    294 _P0_0	=	0x0080
                    0081    295 _P0_1	=	0x0081
                    0082    296 _P0_2	=	0x0082
                    0083    297 _P0_3	=	0x0083
                    0084    298 _P0_4	=	0x0084
                    0085    299 _P0_5	=	0x0085
                    0086    300 _P0_6	=	0x0086
                    0087    301 _P0_7	=	0x0087
                    0088    302 _IT0	=	0x0088
                    0089    303 _IE0	=	0x0089
                    008A    304 _IT1	=	0x008a
                    008B    305 _IE1	=	0x008b
                    008C    306 _TR0	=	0x008c
                    008D    307 _TF0	=	0x008d
                    008E    308 _TR1	=	0x008e
                    008F    309 _TF1	=	0x008f
                    0090    310 _P1_0	=	0x0090
                    0091    311 _P1_1	=	0x0091
                    0092    312 _P1_2	=	0x0092
                    0093    313 _P1_3	=	0x0093
                    0094    314 _P1_4	=	0x0094
                    0095    315 _P1_5	=	0x0095
                    0096    316 _P1_6	=	0x0096
                    0097    317 _P1_7	=	0x0097
                    0098    318 _RI	=	0x0098
                    0099    319 _TI	=	0x0099
                    009A    320 _RB8	=	0x009a
                    009B    321 _TB8	=	0x009b
                    009C    322 _REN	=	0x009c
                    009D    323 _SM2	=	0x009d
                    009E    324 _SM1	=	0x009e
                    009F    325 _SM0	=	0x009f
                    00A0    326 _P2_0	=	0x00a0
                    00A1    327 _P2_1	=	0x00a1
                    00A2    328 _P2_2	=	0x00a2
                    00A3    329 _P2_3	=	0x00a3
                    00A4    330 _P2_4	=	0x00a4
                    00A5    331 _P2_5	=	0x00a5
                    00A6    332 _P2_6	=	0x00a6
                    00A7    333 _P2_7	=	0x00a7
                    00A8    334 _EX0	=	0x00a8
                    00A9    335 _ET0	=	0x00a9
                    00AA    336 _EX1	=	0x00aa
                    00AB    337 _ET1	=	0x00ab
                    00AC    338 _ES	=	0x00ac
                    00AF    339 _EA	=	0x00af
                    00B0    340 _P3_0	=	0x00b0
                    00B1    341 _P3_1	=	0x00b1
                    00B2    342 _P3_2	=	0x00b2
                    00B3    343 _P3_3	=	0x00b3
                    00B4    344 _P3_4	=	0x00b4
                    00B5    345 _P3_5	=	0x00b5
                    00B6    346 _P3_6	=	0x00b6
                    00B7    347 _P3_7	=	0x00b7
                    00B0    348 _RXD	=	0x00b0
                    00B1    349 _TXD	=	0x00b1
                    00B2    350 _INT0	=	0x00b2
                    00B3    351 _INT1	=	0x00b3
                    00B4    352 _T0	=	0x00b4
                    00B5    353 _T1	=	0x00b5
                    00B6    354 _WR	=	0x00b6
                    00B7    355 _RD	=	0x00b7
                    00B8    356 _PX0	=	0x00b8
                    00B9    357 _PT0	=	0x00b9
                    00BA    358 _PX1	=	0x00ba
                    00BB    359 _PT1	=	0x00bb
                    00BC    360 _PS	=	0x00bc
                    00D0    361 _P	=	0x00d0
                    00D1    362 _F1	=	0x00d1
                    00D2    363 _OV	=	0x00d2
                    00D3    364 _RS0	=	0x00d3
                    00D4    365 _RS1	=	0x00d4
                    00D5    366 _F0	=	0x00d5
                    00D6    367 _AC	=	0x00d6
                    00D7    368 _CY	=	0x00d7
                    00AD    369 _ET2	=	0x00ad
                    00BD    370 _PT2	=	0x00bd
                    00C8    371 _T2CON_0	=	0x00c8
                    00C9    372 _T2CON_1	=	0x00c9
                    00CA    373 _T2CON_2	=	0x00ca
                    00CB    374 _T2CON_3	=	0x00cb
                    00CC    375 _T2CON_4	=	0x00cc
                    00CD    376 _T2CON_5	=	0x00cd
                    00CE    377 _T2CON_6	=	0x00ce
                    00CF    378 _T2CON_7	=	0x00cf
                    00C8    379 _CP_RL2	=	0x00c8
                    00C9    380 _C_T2	=	0x00c9
                    00CA    381 _TR2	=	0x00ca
                    00CB    382 _EXEN2	=	0x00cb
                    00CC    383 _TCLK	=	0x00cc
                    00CD    384 _RCLK	=	0x00cd
                    00CE    385 _EXF2	=	0x00ce
                    00CF    386 _TF2	=	0x00cf
                    00DF    387 _CF	=	0x00df
                    00DE    388 _CR	=	0x00de
                    00DC    389 _CCF4	=	0x00dc
                    00DB    390 _CCF3	=	0x00db
                    00DA    391 _CCF2	=	0x00da
                    00D9    392 _CCF1	=	0x00d9
                    00D8    393 _CCF0	=	0x00d8
                    00AE    394 _EC	=	0x00ae
                    00BE    395 _PPCL	=	0x00be
                    00BD    396 _PT2L	=	0x00bd
                    00BC    397 _PLS	=	0x00bc
                    00BB    398 _PT1L	=	0x00bb
                    00BA    399 _PX1L	=	0x00ba
                    00B9    400 _PT0L	=	0x00b9
                    00B8    401 _PX0L	=	0x00b8
                    00C0    402 _P4_0	=	0x00c0
                    00C1    403 _P4_1	=	0x00c1
                    00C2    404 _P4_2	=	0x00c2
                    00C3    405 _P4_3	=	0x00c3
                    00C4    406 _P4_4	=	0x00c4
                    00C5    407 _P4_5	=	0x00c5
                    00C6    408 _P4_6	=	0x00c6
                    00C7    409 _P4_7	=	0x00c7
                    00D8    410 _P5_0	=	0x00d8
                    00D9    411 _P5_1	=	0x00d9
                    00DA    412 _P5_2	=	0x00da
                    00DB    413 _P5_3	=	0x00db
                    00DC    414 _P5_4	=	0x00dc
                    00DD    415 _P5_5	=	0x00dd
                    00DE    416 _P5_6	=	0x00de
                    00DF    417 _P5_7	=	0x00df
                            418 ;--------------------------------------------------------
                            419 ; overlayable register banks
                            420 ;--------------------------------------------------------
                            421 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     422 	.ds 8
                            423 ;--------------------------------------------------------
                            424 ; internal ram data
                            425 ;--------------------------------------------------------
                            426 	.area DSEG    (DATA)
                            427 ;--------------------------------------------------------
                            428 ; overlayable items in internal ram 
                            429 ;--------------------------------------------------------
                            430 	.area OSEG    (OVR,DATA)
                            431 ;--------------------------------------------------------
                            432 ; indirectly addressable internal ram data
                            433 ;--------------------------------------------------------
                            434 	.area ISEG    (DATA)
                            435 ;--------------------------------------------------------
                            436 ; bit data
                            437 ;--------------------------------------------------------
                            438 	.area BSEG    (BIT)
                            439 ;--------------------------------------------------------
                            440 ; paged external ram data
                            441 ;--------------------------------------------------------
                            442 	.area PSEG    (PAG,XDATA)
                            443 ;--------------------------------------------------------
                            444 ; external ram data
                            445 ;--------------------------------------------------------
                            446 	.area XSEG    (XDATA)
                    F000    447 _lcdinstwrptr	=	0xf000
                    F100    448 _lcdinstrdptr	=	0xf100
                    F200    449 _lcddatawrptr	=	0xf200
                    F300    450 _lcddatardptr	=	0xf300
   0001                     451 _Stat::
   0001                     452 	.ds 1
                    1000    453 _CardType	=	0x1000
                    2000    454 _SDCard	=	0x2000
                    3000    455 _xbuffer	=	0x3000
                            456 ;--------------------------------------------------------
                            457 ; external initialized ram data
                            458 ;--------------------------------------------------------
                            459 	.area XISEG   (XDATA)
                            460 	.area HOME    (CODE)
                            461 	.area GSINIT0 (CODE)
                            462 	.area GSINIT1 (CODE)
                            463 	.area GSINIT2 (CODE)
                            464 	.area GSINIT3 (CODE)
                            465 	.area GSINIT4 (CODE)
                            466 	.area GSINIT5 (CODE)
                            467 	.area GSINIT  (CODE)
                            468 	.area GSFINAL (CODE)
                            469 	.area CSEG    (CODE)
                            470 ;--------------------------------------------------------
                            471 ; global & static initialisations
                            472 ;--------------------------------------------------------
                            473 	.area HOME    (CODE)
                            474 	.area GSINIT  (CODE)
                            475 	.area GSFINAL (CODE)
                            476 	.area GSINIT  (CODE)
                            477 ;--------------------------------------------------------
                            478 ; Home
                            479 ;--------------------------------------------------------
                            480 	.area HOME    (CODE)
                            481 	.area CSEG    (CODE)
                            482 ;--------------------------------------------------------
                            483 ; code
                            484 ;--------------------------------------------------------
                            485 	.area CSEG    (CODE)
                            486 ;------------------------------------------------------------
                            487 ;Allocation info for local variables in function 'ioebytew'
                            488 ;------------------------------------------------------------
                            489 ;write_byte                Allocated to registers r2 
                            490 ;------------------------------------------------------------
                            491 ;	Drivers/driver_ioexpander.c:25: unsigned char ioebytew(unsigned char write_byte)
                            492 ;	-----------------------------------------
                            493 ;	 function ioebytew
                            494 ;	-----------------------------------------
   0167                     495 _ioebytew:
                    0002    496 	ar2 = 0x02
                    0003    497 	ar3 = 0x03
                    0004    498 	ar4 = 0x04
                    0005    499 	ar5 = 0x05
                    0006    500 	ar6 = 0x06
                    0007    501 	ar7 = 0x07
                    0000    502 	ar0 = 0x00
                    0001    503 	ar1 = 0x01
                            504 ;	genReceive
   0167 AA 82               505 	mov	r2,dpl
                            506 ;	Drivers/driver_ioexpander.c:27: i2c_start();						        // Start I2C transactions
                            507 ;	genCall
   0169 C0 02               508 	push	ar2
   016B 12 00 5F            509 	lcall	_i2c_start
   016E D0 02               510 	pop	ar2
                            511 ;	Drivers/driver_ioexpander.c:28: put_i2c_byte(Expander_Address_Word_Write);	// Send Device Address Word for Write
                            512 ;	genCall
   0170 75 82 40            513 	mov	dpl,#0x40
   0173 C0 02               514 	push	ar2
   0175 12 00 8E            515 	lcall	_put_i2c_byte
   0178 D0 02               516 	pop	ar2
                            517 ;	Drivers/driver_ioexpander.c:29: if (get_i2c_bit() == ACK)					// Check acknowledgment
                            518 ;	genCall
   017A C0 02               519 	push	ar2
   017C 12 00 7D            520 	lcall	_get_i2c_bit
   017F E5 82               521 	mov	a,dpl
   0181 D0 02               522 	pop	ar2
                            523 ;	genIfx
                            524 ;	genIfxJump
                            525 ;	Peephole 108.b	removed ljmp by inverse jump logic
   0183 70 17               526 	jnz	00105$
                            527 ;	Peephole 300	removed redundant label 00111$
                            528 ;	Drivers/driver_ioexpander.c:31: put_i2c_byte(write_byte);				// Write Data over I2C
                            529 ;	genCall
   0185 8A 82               530 	mov	dpl,r2
   0187 12 00 8E            531 	lcall	_put_i2c_byte
                            532 ;	Drivers/driver_ioexpander.c:32: if (get_i2c_bit() == ACK)				// Check acknowledgment
                            533 ;	genCall
   018A 12 00 7D            534 	lcall	_get_i2c_bit
   018D E5 82               535 	mov	a,dpl
                            536 ;	genIfx
                            537 ;	genIfxJump
                            538 ;	Peephole 108.b	removed ljmp by inverse jump logic
   018F 70 07               539 	jnz	00102$
                            540 ;	Peephole 300	removed redundant label 00112$
                            541 ;	Drivers/driver_ioexpander.c:34: i2c_stop();				            // Stop I2C transactions
                            542 ;	genCall
   0191 12 00 6A            543 	lcall	_i2c_stop
                            544 ;	Drivers/driver_ioexpander.c:35: return(SUCCESS);
                            545 ;	genRet
   0194 75 82 01            546 	mov	dpl,#0x01
                            547 ;	Peephole 112.b	changed ljmp to sjmp
                            548 ;	Peephole 251.b	replaced sjmp to ret with ret
   0197 22                  549 	ret
   0198                     550 00102$:
                            551 ;	Drivers/driver_ioexpander.c:42: return(FAIL);
                            552 ;	genRet
   0198 75 82 FF            553 	mov	dpl,#0xFF
                            554 ;	Peephole 112.b	changed ljmp to sjmp
                            555 ;	Drivers/driver_ioexpander.c:50: return(FAIL);
                            556 ;	genRet
                            557 ;	Peephole 237.a	removed sjmp to ret
   019B 22                  558 	ret
   019C                     559 00105$:
   019C 75 82 FF            560 	mov	dpl,#0xFF
                            561 ;	Peephole 300	removed redundant label 00107$
   019F 22                  562 	ret
                            563 ;------------------------------------------------------------
                            564 ;Allocation info for local variables in function 'ioebyter'
                            565 ;------------------------------------------------------------
                            566 ;read_byte                 Allocated to registers r2 
                            567 ;------------------------------------------------------------
                            568 ;	Drivers/driver_ioexpander.c:55: unsigned char ioebyter(void)
                            569 ;	-----------------------------------------
                            570 ;	 function ioebyter
                            571 ;	-----------------------------------------
   01A0                     572 _ioebyter:
                            573 ;	Drivers/driver_ioexpander.c:58: i2c_start();                                // Start I2C transactions
                            574 ;	genCall
   01A0 12 00 5F            575 	lcall	_i2c_start
                            576 ;	Drivers/driver_ioexpander.c:59: put_i2c_byte(Expander_Address_Word_Read);   // Send Device Address Word for Read
                            577 ;	genCall
   01A3 75 82 41            578 	mov	dpl,#0x41
   01A6 12 00 8E            579 	lcall	_put_i2c_byte
                            580 ;	Drivers/driver_ioexpander.c:60: if (get_i2c_bit() == ACK)					// Check acknowledgment
                            581 ;	genCall
   01A9 12 00 7D            582 	lcall	_get_i2c_bit
   01AC E5 82               583 	mov	a,dpl
                            584 ;	genIfx
                            585 ;	genIfxJump
                            586 ;	Peephole 108.b	removed ljmp by inverse jump logic
   01AE 70 0F               587 	jnz	00102$
                            588 ;	Peephole 300	removed redundant label 00107$
                            589 ;	Drivers/driver_ioexpander.c:62: read_byte = get_i2c_byte();             // Read byte over I2C
                            590 ;	genCall
   01B0 12 00 AC            591 	lcall	_get_i2c_byte
   01B3 AA 82               592 	mov	r2,dpl
                            593 ;	genAssign
                            594 ;	Drivers/driver_ioexpander.c:63: i2c_stop();					            // Stop I2C transactions
                            595 ;	genCall
   01B5 C0 02               596 	push	ar2
   01B7 12 00 6A            597 	lcall	_i2c_stop
   01BA D0 02               598 	pop	ar2
                            599 ;	Drivers/driver_ioexpander.c:64: return(read_byte);
                            600 ;	genRet
   01BC 8A 82               601 	mov	dpl,r2
                            602 ;	Peephole 112.b	changed ljmp to sjmp
                            603 ;	Drivers/driver_ioexpander.c:71: return(FAIL);
                            604 ;	genRet
                            605 ;	Peephole 237.a	removed sjmp to ret
   01BE 22                  606 	ret
   01BF                     607 00102$:
   01BF 75 82 FF            608 	mov	dpl,#0xFF
                            609 ;	Peephole 300	removed redundant label 00104$
   01C2 22                  610 	ret
                            611 	.area CSEG    (CODE)
                            612 	.area CONST   (CODE)
                            613 	.area XINIT   (CODE)
