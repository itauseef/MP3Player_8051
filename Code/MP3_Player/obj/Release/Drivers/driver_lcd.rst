                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : FreeWare ANSI-C Compiler
                              3 ; Version 2.6.0 #4309 (Jul 28 2006)
                              4 ; This file generated Sat May 02 15:12:57 2015
                              5 ;--------------------------------------------------------
                              6 	.module driver_lcd
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
                            212 	.globl _send_command
                            213 	.globl _lcdinit
                            214 	.globl _lcdgotoaddr
                            215 	.globl _lcdgotoxy
                            216 	.globl _lcdputch
                            217 	.globl _lcdputstr_currloc
                            218 	.globl _lcdputstr
                            219 	.globl _get_lcd_addr
                            220 ;--------------------------------------------------------
                            221 ; special function registers
                            222 ;--------------------------------------------------------
                            223 	.area RSEG    (DATA)
                    0080    224 _P0	=	0x0080
                    0081    225 _SP	=	0x0081
                    0082    226 _DPL	=	0x0082
                    0083    227 _DPH	=	0x0083
                    0087    228 _PCON	=	0x0087
                    0088    229 _TCON	=	0x0088
                    0089    230 _TMOD	=	0x0089
                    008A    231 _TL0	=	0x008a
                    008B    232 _TL1	=	0x008b
                    008C    233 _TH0	=	0x008c
                    008D    234 _TH1	=	0x008d
                    0090    235 _P1	=	0x0090
                    0098    236 _SCON	=	0x0098
                    0099    237 _SBUF	=	0x0099
                    00A0    238 _P2	=	0x00a0
                    00A8    239 _IE	=	0x00a8
                    00B0    240 _P3	=	0x00b0
                    00B8    241 _IP	=	0x00b8
                    00D0    242 _PSW	=	0x00d0
                    00E0    243 _ACC	=	0x00e0
                    00F0    244 _B	=	0x00f0
                    00C8    245 _T2CON	=	0x00c8
                    00CA    246 _RCAP2L	=	0x00ca
                    00CB    247 _RCAP2H	=	0x00cb
                    00CC    248 _TL2	=	0x00cc
                    00CD    249 _TH2	=	0x00cd
                    008E    250 _AUXR	=	0x008e
                    00A2    251 _AUXR1	=	0x00a2
                    0097    252 _CKRL	=	0x0097
                    008F    253 _CKCKON0	=	0x008f
                    00AF    254 _CKCKON1	=	0x00af
                    00FA    255 _CCAP0H	=	0x00fa
                    00FB    256 _CCAP1H	=	0x00fb
                    00FC    257 _CCAP2H	=	0x00fc
                    00FD    258 _CCAP3H	=	0x00fd
                    00FE    259 _CCAP4H	=	0x00fe
                    00EA    260 _CCAP0L	=	0x00ea
                    00EB    261 _CCAP1L	=	0x00eb
                    00EC    262 _CCAP2L	=	0x00ec
                    00ED    263 _CCAP3L	=	0x00ed
                    00EE    264 _CCAP4L	=	0x00ee
                    00DA    265 _CCAPM0	=	0x00da
                    00DB    266 _CCAPM1	=	0x00db
                    00DC    267 _CCAPM2	=	0x00dc
                    00DD    268 _CCAPM3	=	0x00dd
                    00DE    269 _CCAPM4	=	0x00de
                    00D8    270 _CCON	=	0x00d8
                    00F9    271 _CH	=	0x00f9
                    00E9    272 _CL	=	0x00e9
                    00D9    273 _CMOD	=	0x00d9
                    00A8    274 _IEN0	=	0x00a8
                    00B1    275 _IEN1	=	0x00b1
                    00B8    276 _IPL0	=	0x00b8
                    00B7    277 _IPH0	=	0x00b7
                    00B2    278 _IPL1	=	0x00b2
                    00B3    279 _IPH1	=	0x00b3
                    00C0    280 _P4	=	0x00c0
                    00D8    281 _P5	=	0x00d8
                    00A6    282 _WDTRST	=	0x00a6
                    00A7    283 _WDTPRG	=	0x00a7
                    00A9    284 _SADDR	=	0x00a9
                    00B9    285 _SADEN	=	0x00b9
                    00C3    286 _SPCON	=	0x00c3
                    00C4    287 _SPSTA	=	0x00c4
                    00C5    288 _SPDAT	=	0x00c5
                    00C9    289 _T2MOD	=	0x00c9
                    009B    290 _BDRCON	=	0x009b
                    009A    291 _BRL	=	0x009a
                    009C    292 _KBLS	=	0x009c
                    009D    293 _KBE	=	0x009d
                    009E    294 _KBF	=	0x009e
                    00D2    295 _EECON	=	0x00d2
                            296 ;--------------------------------------------------------
                            297 ; special function bits
                            298 ;--------------------------------------------------------
                            299 	.area RSEG    (DATA)
                    0080    300 _P0_0	=	0x0080
                    0081    301 _P0_1	=	0x0081
                    0082    302 _P0_2	=	0x0082
                    0083    303 _P0_3	=	0x0083
                    0084    304 _P0_4	=	0x0084
                    0085    305 _P0_5	=	0x0085
                    0086    306 _P0_6	=	0x0086
                    0087    307 _P0_7	=	0x0087
                    0088    308 _IT0	=	0x0088
                    0089    309 _IE0	=	0x0089
                    008A    310 _IT1	=	0x008a
                    008B    311 _IE1	=	0x008b
                    008C    312 _TR0	=	0x008c
                    008D    313 _TF0	=	0x008d
                    008E    314 _TR1	=	0x008e
                    008F    315 _TF1	=	0x008f
                    0090    316 _P1_0	=	0x0090
                    0091    317 _P1_1	=	0x0091
                    0092    318 _P1_2	=	0x0092
                    0093    319 _P1_3	=	0x0093
                    0094    320 _P1_4	=	0x0094
                    0095    321 _P1_5	=	0x0095
                    0096    322 _P1_6	=	0x0096
                    0097    323 _P1_7	=	0x0097
                    0098    324 _RI	=	0x0098
                    0099    325 _TI	=	0x0099
                    009A    326 _RB8	=	0x009a
                    009B    327 _TB8	=	0x009b
                    009C    328 _REN	=	0x009c
                    009D    329 _SM2	=	0x009d
                    009E    330 _SM1	=	0x009e
                    009F    331 _SM0	=	0x009f
                    00A0    332 _P2_0	=	0x00a0
                    00A1    333 _P2_1	=	0x00a1
                    00A2    334 _P2_2	=	0x00a2
                    00A3    335 _P2_3	=	0x00a3
                    00A4    336 _P2_4	=	0x00a4
                    00A5    337 _P2_5	=	0x00a5
                    00A6    338 _P2_6	=	0x00a6
                    00A7    339 _P2_7	=	0x00a7
                    00A8    340 _EX0	=	0x00a8
                    00A9    341 _ET0	=	0x00a9
                    00AA    342 _EX1	=	0x00aa
                    00AB    343 _ET1	=	0x00ab
                    00AC    344 _ES	=	0x00ac
                    00AF    345 _EA	=	0x00af
                    00B0    346 _P3_0	=	0x00b0
                    00B1    347 _P3_1	=	0x00b1
                    00B2    348 _P3_2	=	0x00b2
                    00B3    349 _P3_3	=	0x00b3
                    00B4    350 _P3_4	=	0x00b4
                    00B5    351 _P3_5	=	0x00b5
                    00B6    352 _P3_6	=	0x00b6
                    00B7    353 _P3_7	=	0x00b7
                    00B0    354 _RXD	=	0x00b0
                    00B1    355 _TXD	=	0x00b1
                    00B2    356 _INT0	=	0x00b2
                    00B3    357 _INT1	=	0x00b3
                    00B4    358 _T0	=	0x00b4
                    00B5    359 _T1	=	0x00b5
                    00B6    360 _WR	=	0x00b6
                    00B7    361 _RD	=	0x00b7
                    00B8    362 _PX0	=	0x00b8
                    00B9    363 _PT0	=	0x00b9
                    00BA    364 _PX1	=	0x00ba
                    00BB    365 _PT1	=	0x00bb
                    00BC    366 _PS	=	0x00bc
                    00D0    367 _P	=	0x00d0
                    00D1    368 _F1	=	0x00d1
                    00D2    369 _OV	=	0x00d2
                    00D3    370 _RS0	=	0x00d3
                    00D4    371 _RS1	=	0x00d4
                    00D5    372 _F0	=	0x00d5
                    00D6    373 _AC	=	0x00d6
                    00D7    374 _CY	=	0x00d7
                    00AD    375 _ET2	=	0x00ad
                    00BD    376 _PT2	=	0x00bd
                    00C8    377 _T2CON_0	=	0x00c8
                    00C9    378 _T2CON_1	=	0x00c9
                    00CA    379 _T2CON_2	=	0x00ca
                    00CB    380 _T2CON_3	=	0x00cb
                    00CC    381 _T2CON_4	=	0x00cc
                    00CD    382 _T2CON_5	=	0x00cd
                    00CE    383 _T2CON_6	=	0x00ce
                    00CF    384 _T2CON_7	=	0x00cf
                    00C8    385 _CP_RL2	=	0x00c8
                    00C9    386 _C_T2	=	0x00c9
                    00CA    387 _TR2	=	0x00ca
                    00CB    388 _EXEN2	=	0x00cb
                    00CC    389 _TCLK	=	0x00cc
                    00CD    390 _RCLK	=	0x00cd
                    00CE    391 _EXF2	=	0x00ce
                    00CF    392 _TF2	=	0x00cf
                    00DF    393 _CF	=	0x00df
                    00DE    394 _CR	=	0x00de
                    00DC    395 _CCF4	=	0x00dc
                    00DB    396 _CCF3	=	0x00db
                    00DA    397 _CCF2	=	0x00da
                    00D9    398 _CCF1	=	0x00d9
                    00D8    399 _CCF0	=	0x00d8
                    00AE    400 _EC	=	0x00ae
                    00BE    401 _PPCL	=	0x00be
                    00BD    402 _PT2L	=	0x00bd
                    00BC    403 _PLS	=	0x00bc
                    00BB    404 _PT1L	=	0x00bb
                    00BA    405 _PX1L	=	0x00ba
                    00B9    406 _PT0L	=	0x00b9
                    00B8    407 _PX0L	=	0x00b8
                    00C0    408 _P4_0	=	0x00c0
                    00C1    409 _P4_1	=	0x00c1
                    00C2    410 _P4_2	=	0x00c2
                    00C3    411 _P4_3	=	0x00c3
                    00C4    412 _P4_4	=	0x00c4
                    00C5    413 _P4_5	=	0x00c5
                    00C6    414 _P4_6	=	0x00c6
                    00C7    415 _P4_7	=	0x00c7
                    00D8    416 _P5_0	=	0x00d8
                    00D9    417 _P5_1	=	0x00d9
                    00DA    418 _P5_2	=	0x00da
                    00DB    419 _P5_3	=	0x00db
                    00DC    420 _P5_4	=	0x00dc
                    00DD    421 _P5_5	=	0x00dd
                    00DE    422 _P5_6	=	0x00de
                    00DF    423 _P5_7	=	0x00df
                            424 ;--------------------------------------------------------
                            425 ; overlayable register banks
                            426 ;--------------------------------------------------------
                            427 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     428 	.ds 8
                            429 ;--------------------------------------------------------
                            430 ; internal ram data
                            431 ;--------------------------------------------------------
                            432 	.area DSEG    (DATA)
                            433 ;--------------------------------------------------------
                            434 ; overlayable items in internal ram 
                            435 ;--------------------------------------------------------
                            436 	.area OSEG    (OVR,DATA)
                            437 ;--------------------------------------------------------
                            438 ; indirectly addressable internal ram data
                            439 ;--------------------------------------------------------
                            440 	.area ISEG    (DATA)
                            441 ;--------------------------------------------------------
                            442 ; bit data
                            443 ;--------------------------------------------------------
                            444 	.area BSEG    (BIT)
                            445 ;--------------------------------------------------------
                            446 ; paged external ram data
                            447 ;--------------------------------------------------------
                            448 	.area PSEG    (PAG,XDATA)
                            449 ;--------------------------------------------------------
                            450 ; external ram data
                            451 ;--------------------------------------------------------
                            452 	.area XSEG    (XDATA)
                    F000    453 _lcdinstwrptr	=	0xf000
                    F100    454 _lcdinstrdptr	=	0xf100
                    F200    455 _lcddatawrptr	=	0xf200
                    F300    456 _lcddatardptr	=	0xf300
   0002                     457 _Stat::
   0002                     458 	.ds 1
                    1000    459 _CardType	=	0x1000
                    2000    460 _SDCard	=	0x2000
                    3000    461 _xbuffer	=	0x3000
                            462 ;--------------------------------------------------------
                            463 ; external initialized ram data
                            464 ;--------------------------------------------------------
                            465 	.area XISEG   (XDATA)
                            466 	.area HOME    (CODE)
                            467 	.area GSINIT0 (CODE)
                            468 	.area GSINIT1 (CODE)
                            469 	.area GSINIT2 (CODE)
                            470 	.area GSINIT3 (CODE)
                            471 	.area GSINIT4 (CODE)
                            472 	.area GSINIT5 (CODE)
                            473 	.area GSINIT  (CODE)
                            474 	.area GSFINAL (CODE)
                            475 	.area CSEG    (CODE)
                            476 ;--------------------------------------------------------
                            477 ; global & static initialisations
                            478 ;--------------------------------------------------------
                            479 	.area HOME    (CODE)
                            480 	.area GSINIT  (CODE)
                            481 	.area GSFINAL (CODE)
                            482 	.area GSINIT  (CODE)
                            483 ;--------------------------------------------------------
                            484 ; Home
                            485 ;--------------------------------------------------------
                            486 	.area HOME    (CODE)
                            487 	.area CSEG    (CODE)
                            488 ;--------------------------------------------------------
                            489 ; code
                            490 ;--------------------------------------------------------
                            491 	.area CSEG    (CODE)
                            492 ;------------------------------------------------------------
                            493 ;Allocation info for local variables in function 'send_command'
                            494 ;------------------------------------------------------------
                            495 ;cmd                       Allocated to registers r2 
                            496 ;------------------------------------------------------------
                            497 ;	Drivers/driver_lcd.c:24: void send_command(unsigned char cmd)
                            498 ;	-----------------------------------------
                            499 ;	 function send_command
                            500 ;	-----------------------------------------
   01C3                     501 _send_command:
                    0002    502 	ar2 = 0x02
                    0003    503 	ar3 = 0x03
                    0004    504 	ar4 = 0x04
                    0005    505 	ar5 = 0x05
                    0006    506 	ar6 = 0x06
                    0007    507 	ar7 = 0x07
                    0000    508 	ar0 = 0x00
                    0001    509 	ar1 = 0x01
                            510 ;	genReceive
   01C3 AA 82               511 	mov	r2,dpl
                            512 ;	Drivers/driver_lcd.c:26: lcdbusywait();                              // Wait for LCD to get free
   01C5                     513 00101$:
                            514 ;	genAssign
   01C5 90 F1 00            515 	mov	dptr,#_lcdinstrdptr
   01C8 E0                  516 	movx	a,@dptr
   01C9 FB                  517 	mov	r3,a
                            518 ;	genAnd
   01CA 53 03 80            519 	anl	ar3,#0x80
                            520 ;	genCmpEq
                            521 ;	gencjneshort
                            522 ;	Peephole 112.b	changed ljmp to sjmp
                            523 ;	Peephole 198.b	optimized misc jump sequence
   01CD BB 00 F5            524 	cjne	r3,#0x00,00101$
                            525 ;	Peephole 200.b	removed redundant sjmp
                            526 ;	Peephole 300	removed redundant label 00112$
                            527 ;	Peephole 300	removed redundant label 00113$
                            528 ;	Drivers/driver_lcd.c:27: lcdinstwrptr = cmd; 	                    // Send Instruction/Address
                            529 ;	genAssign
   01D0 90 F0 00            530 	mov	dptr,#_lcdinstwrptr
   01D3 EA                  531 	mov	a,r2
   01D4 F0                  532 	movx	@dptr,a
                            533 ;	Drivers/driver_lcd.c:28: lcdbusywait();                              // Wait for LCD to get free
   01D5                     534 00104$:
                            535 ;	genAssign
   01D5 90 F1 00            536 	mov	dptr,#_lcdinstrdptr
   01D8 E0                  537 	movx	a,@dptr
   01D9 FA                  538 	mov	r2,a
                            539 ;	genAnd
   01DA 53 02 80            540 	anl	ar2,#0x80
                            541 ;	genCmpEq
                            542 ;	gencjneshort
                            543 ;	Peephole 112.b	changed ljmp to sjmp
                            544 ;	Peephole 198.b	optimized misc jump sequence
   01DD BA 00 F5            545 	cjne	r2,#0x00,00104$
                            546 ;	Peephole 200.b	removed redundant sjmp
                            547 ;	Peephole 300	removed redundant label 00114$
                            548 ;	Peephole 300	removed redundant label 00115$
                            549 ;	Peephole 300	removed redundant label 00107$
   01E0 22                  550 	ret
                            551 ;------------------------------------------------------------
                            552 ;Allocation info for local variables in function 'lcdinit'
                            553 ;------------------------------------------------------------
                            554 ;------------------------------------------------------------
                            555 ;	Drivers/driver_lcd.c:32: void lcdinit(void)
                            556 ;	-----------------------------------------
                            557 ;	 function lcdinit
                            558 ;	-----------------------------------------
   01E1                     559 _lcdinit:
                            560 ;	Drivers/driver_lcd.c:34: send_command(0x30);
                            561 ;	genCall
   01E1 75 82 30            562 	mov	dpl,#0x30
   01E4 12 01 C3            563 	lcall	_send_command
                            564 ;	Drivers/driver_lcd.c:35: Delay(16);                          // Delay longer than 15ms
                            565 ;	genCall
                            566 ;	Peephole 182.b	used 16 bit load of dptr
   01E7 90 00 10            567 	mov	dptr,#0x0010
   01EA 12 14 1D            568 	lcall	_Delay
                            569 ;	Drivers/driver_lcd.c:36: send_command(0x30);
                            570 ;	genCall
   01ED 75 82 30            571 	mov	dpl,#0x30
   01F0 12 01 C3            572 	lcall	_send_command
                            573 ;	Drivers/driver_lcd.c:37: Delay(6);			    			// Delay longer than 4.1ms
                            574 ;	genCall
                            575 ;	Peephole 182.b	used 16 bit load of dptr
   01F3 90 00 06            576 	mov	dptr,#0x0006
   01F6 12 14 1D            577 	lcall	_Delay
                            578 ;	Drivers/driver_lcd.c:38: send_command(0x30);
                            579 ;	genCall
   01F9 75 82 30            580 	mov	dpl,#0x30
   01FC 12 01 C3            581 	lcall	_send_command
                            582 ;	Drivers/driver_lcd.c:39: send_command(0x38);
                            583 ;	genCall
   01FF 75 82 38            584 	mov	dpl,#0x38
   0202 12 01 C3            585 	lcall	_send_command
                            586 ;	Drivers/driver_lcd.c:40: send_command(0x08);				    // Display Off
                            587 ;	genCall
   0205 75 82 08            588 	mov	dpl,#0x08
   0208 12 01 C3            589 	lcall	_send_command
                            590 ;	Drivers/driver_lcd.c:41: send_command(0x0C);				    // Display On, Cursor Off, Blink Off
                            591 ;	genCall
   020B 75 82 0C            592 	mov	dpl,#0x0C
   020E 12 01 C3            593 	lcall	_send_command
                            594 ;	Drivers/driver_lcd.c:42: send_command(0x06);  				// Entry Mode Set Command
                            595 ;	genCall
   0211 75 82 06            596 	mov	dpl,#0x06
   0214 12 01 C3            597 	lcall	_send_command
                            598 ;	Drivers/driver_lcd.c:43: LCD_CLEAR;				            // Clear screen and Reset cursor
                            599 ;	genCall
   0217 75 82 01            600 	mov	dpl,#0x01
                            601 ;	Peephole 253.b	replaced lcall/ret with ljmp
   021A 02 01 C3            602 	ljmp	_send_command
                            603 ;
                            604 ;------------------------------------------------------------
                            605 ;Allocation info for local variables in function 'lcdgotoaddr'
                            606 ;------------------------------------------------------------
                            607 ;addr                      Allocated to registers r2 
                            608 ;------------------------------------------------------------
                            609 ;	Drivers/driver_lcd.c:47: void lcdgotoaddr(unsigned char addr)
                            610 ;	-----------------------------------------
                            611 ;	 function lcdgotoaddr
                            612 ;	-----------------------------------------
   021D                     613 _lcdgotoaddr:
                            614 ;	genReceive
   021D AA 82               615 	mov	r2,dpl
                            616 ;	Drivers/driver_lcd.c:49: send_command(addr|0x80);                    // Send Address with a 1 on the MSB for Address Write
                            617 ;	genOr
   021F 74 80               618 	mov	a,#0x80
   0221 4A                  619 	orl	a,r2
   0222 F5 82               620 	mov	dpl,a
                            621 ;	genCall
                            622 ;	Peephole 253.b	replaced lcall/ret with ljmp
   0224 02 01 C3            623 	ljmp	_send_command
                            624 ;
                            625 ;------------------------------------------------------------
                            626 ;Allocation info for local variables in function 'lcdgotoxy'
                            627 ;------------------------------------------------------------
                            628 ;column                    Allocated to stack - offset -3
                            629 ;row                       Allocated to registers r2 
                            630 ;------------------------------------------------------------
                            631 ;	Drivers/driver_lcd.c:53: void lcdgotoxy(unsigned char row, unsigned char column)
                            632 ;	-----------------------------------------
                            633 ;	 function lcdgotoxy
                            634 ;	-----------------------------------------
   0227                     635 _lcdgotoxy:
   0227 C0 10               636 	push	_bp
   0229 85 81 10            637 	mov	_bp,sp
                            638 ;	genReceive
   022C AA 82               639 	mov	r2,dpl
                            640 ;	Drivers/driver_lcd.c:55: switch (row)                                // Switch through row and send corresponding address to LCD
                            641 ;	genCmpEq
                            642 ;	gencjneshort
   022E BA 00 02            643 	cjne	r2,#0x00,00111$
                            644 ;	Peephole 112.b	changed ljmp to sjmp
   0231 80 0A               645 	sjmp	00101$
   0233                     646 00111$:
                            647 ;	genCmpEq
                            648 ;	gencjneshort
   0233 BA 01 02            649 	cjne	r2,#0x01,00112$
                            650 ;	Peephole 112.b	changed ljmp to sjmp
   0236 80 14               651 	sjmp	00102$
   0238                     652 00112$:
                            653 ;	genCmpEq
                            654 ;	gencjneshort
                            655 ;	Peephole 112.b	changed ljmp to sjmp
                            656 ;	Drivers/driver_lcd.c:57: case 0:
                            657 ;	Peephole 112.b	changed ljmp to sjmp
                            658 ;	Peephole 198.b	optimized misc jump sequence
   0238 BA 02 2F            659 	cjne	r2,#0x02,00104$
   023B 80 1E               660 	sjmp	00103$
                            661 ;	Peephole 300	removed redundant label 00113$
   023D                     662 00101$:
                            663 ;	Drivers/driver_lcd.c:58: send_command(0x80 + column);            // 0x80 + column in second nibble for row 0
                            664 ;	genPlus
   023D A8 10               665 	mov	r0,_bp
   023F 18                  666 	dec	r0
   0240 18                  667 	dec	r0
   0241 18                  668 	dec	r0
                            669 ;     genPlusIncr
   0242 74 80               670 	mov	a,#0x80
   0244 26                  671 	add	a,@r0
   0245 F5 82               672 	mov	dpl,a
                            673 ;	genCall
   0247 12 01 C3            674 	lcall	_send_command
                            675 ;	Drivers/driver_lcd.c:59: break;
                            676 ;	Drivers/driver_lcd.c:60: case 1:
                            677 ;	Peephole 112.b	changed ljmp to sjmp
   024A 80 2B               678 	sjmp	00106$
   024C                     679 00102$:
                            680 ;	Drivers/driver_lcd.c:61: send_command(0xC0 + column);            // 0xC0 + column for row 1
                            681 ;	genPlus
   024C A8 10               682 	mov	r0,_bp
   024E 18                  683 	dec	r0
   024F 18                  684 	dec	r0
   0250 18                  685 	dec	r0
                            686 ;     genPlusIncr
   0251 74 C0               687 	mov	a,#0xC0
   0253 26                  688 	add	a,@r0
   0254 F5 82               689 	mov	dpl,a
                            690 ;	genCall
   0256 12 01 C3            691 	lcall	_send_command
                            692 ;	Drivers/driver_lcd.c:62: break;
                            693 ;	Drivers/driver_lcd.c:63: case 2:
                            694 ;	Peephole 112.b	changed ljmp to sjmp
   0259 80 1C               695 	sjmp	00106$
   025B                     696 00103$:
                            697 ;	Drivers/driver_lcd.c:64: send_command(0x90 + column);            // 0x90 + column for row 2
                            698 ;	genPlus
   025B A8 10               699 	mov	r0,_bp
   025D 18                  700 	dec	r0
   025E 18                  701 	dec	r0
   025F 18                  702 	dec	r0
                            703 ;     genPlusIncr
   0260 74 90               704 	mov	a,#0x90
   0262 26                  705 	add	a,@r0
   0263 F5 82               706 	mov	dpl,a
                            707 ;	genCall
   0265 12 01 C3            708 	lcall	_send_command
                            709 ;	Drivers/driver_lcd.c:65: break;
                            710 ;	Drivers/driver_lcd.c:66: default:
                            711 ;	Peephole 112.b	changed ljmp to sjmp
   0268 80 0D               712 	sjmp	00106$
   026A                     713 00104$:
                            714 ;	Drivers/driver_lcd.c:67: send_command(0xD0 + column);            // 0xD0 + column for row 3
                            715 ;	genPlus
   026A A8 10               716 	mov	r0,_bp
   026C 18                  717 	dec	r0
   026D 18                  718 	dec	r0
   026E 18                  719 	dec	r0
                            720 ;     genPlusIncr
   026F 74 D0               721 	mov	a,#0xD0
   0271 26                  722 	add	a,@r0
   0272 F5 82               723 	mov	dpl,a
                            724 ;	genCall
   0274 12 01 C3            725 	lcall	_send_command
                            726 ;	Drivers/driver_lcd.c:69: }
   0277                     727 00106$:
   0277 D0 10               728 	pop	_bp
   0279 22                  729 	ret
                            730 ;------------------------------------------------------------
                            731 ;Allocation info for local variables in function 'lcdputch'
                            732 ;------------------------------------------------------------
                            733 ;value                     Allocated to registers r2 
                            734 ;row                       Allocated to registers r3 
                            735 ;cursor_loc                Allocated to registers r2 
                            736 ;------------------------------------------------------------
                            737 ;	Drivers/driver_lcd.c:73: void lcdputch(char value)
                            738 ;	-----------------------------------------
                            739 ;	 function lcdputch
                            740 ;	-----------------------------------------
   027A                     741 _lcdputch:
                            742 ;	genReceive
   027A AA 82               743 	mov	r2,dpl
                            744 ;	Drivers/driver_lcd.c:77: switch (value)                              // Switch through character to be printed
                            745 ;	genCmpEq
                            746 ;	gencjneshort
   027C BA 0A 02            747 	cjne	r2,#0x0A,00143$
                            748 ;	Peephole 112.b	changed ljmp to sjmp
   027F 80 14               749 	sjmp	00102$
   0281                     750 00143$:
                            751 ;	genCmpEq
                            752 ;	gencjneshort
                            753 ;	Peephole 112.b	changed ljmp to sjmp
                            754 ;	Peephole 198.b	optimized misc jump sequence
   0281 BA 0D 3E            755 	cjne	r2,#0x0D,00114$
                            756 ;	Peephole 200.b	removed redundant sjmp
                            757 ;	Peephole 300	removed redundant label 00144$
                            758 ;	Peephole 300	removed redundant label 00145$
                            759 ;	Drivers/driver_lcd.c:80: value = 0x80|get_lcd_addr()&0xF0;
                            760 ;	genCall
   0284 12 03 97            761 	lcall	_get_lcd_addr
   0287 E5 82               762 	mov	a,dpl
                            763 ;	genAnd
   0289 54 F0               764 	anl	a,#0xF0
   028B FB                  765 	mov	r3,a
                            766 ;	genOr
   028C 74 80               767 	mov	a,#0x80
   028E 4B                  768 	orl	a,r3
                            769 ;	Drivers/driver_lcd.c:81: lcdgotoaddr(value);
                            770 ;	genCall
   028F FA                  771 	mov	r2,a
                            772 ;	Peephole 244.c	loading dpl from a instead of r2
   0290 F5 82               773 	mov	dpl,a
                            774 ;	Drivers/driver_lcd.c:82: break;
                            775 ;	Peephole 251.a	replaced ljmp to ret with ret
                            776 ;	Peephole 253.a	replaced lcall/ret with ljmp
   0292 02 02 1D            777 	ljmp	_lcdgotoaddr
                            778 ;	Drivers/driver_lcd.c:83: case '\n':                                  // If /n then goto next row
   0295                     779 00102$:
                            780 ;	Drivers/driver_lcd.c:84: value = get_lcd_addr();
                            781 ;	genCall
   0295 12 03 97            782 	lcall	_get_lcd_addr
   0298 AA 82               783 	mov	r2,dpl
                            784 ;	Drivers/driver_lcd.c:85: row = value & 0xF0;
                            785 ;	genAnd
   029A 74 F0               786 	mov	a,#0xF0
   029C 5A                  787 	anl	a,r2
                            788 ;	Drivers/driver_lcd.c:86: if (row == 0x00) row = 1;
                            789 ;	genIfx
   029D FB                  790 	mov	r3,a
                            791 ;	Peephole 105	removed redundant mov
                            792 ;	genIfxJump
                            793 ;	Peephole 108.b	removed ljmp by inverse jump logic
   029E 70 04               794 	jnz	00112$
                            795 ;	Peephole 300	removed redundant label 00146$
                            796 ;	genAssign
   02A0 7B 01               797 	mov	r3,#0x01
                            798 ;	Peephole 112.b	changed ljmp to sjmp
   02A2 80 13               799 	sjmp	00113$
   02A4                     800 00112$:
                            801 ;	Drivers/driver_lcd.c:87: else if (row == 0x40) row = 2;
                            802 ;	genCmpEq
                            803 ;	gencjneshort
                            804 ;	Peephole 112.b	changed ljmp to sjmp
                            805 ;	Peephole 198.b	optimized misc jump sequence
   02A4 BB 40 04            806 	cjne	r3,#0x40,00109$
                            807 ;	Peephole 200.b	removed redundant sjmp
                            808 ;	Peephole 300	removed redundant label 00147$
                            809 ;	Peephole 300	removed redundant label 00148$
                            810 ;	genAssign
   02A7 7B 02               811 	mov	r3,#0x02
                            812 ;	Peephole 112.b	changed ljmp to sjmp
   02A9 80 0C               813 	sjmp	00113$
   02AB                     814 00109$:
                            815 ;	Drivers/driver_lcd.c:88: else if (row == 0x10) row = 3;
                            816 ;	genCmpEq
                            817 ;	gencjneshort
                            818 ;	Peephole 112.b	changed ljmp to sjmp
                            819 ;	Peephole 198.b	optimized misc jump sequence
   02AB BB 10 04            820 	cjne	r3,#0x10,00106$
                            821 ;	Peephole 200.b	removed redundant sjmp
                            822 ;	Peephole 300	removed redundant label 00149$
                            823 ;	Peephole 300	removed redundant label 00150$
                            824 ;	genAssign
   02AE 7B 03               825 	mov	r3,#0x03
                            826 ;	Peephole 112.b	changed ljmp to sjmp
   02B0 80 05               827 	sjmp	00113$
   02B2                     828 00106$:
                            829 ;	Drivers/driver_lcd.c:89: else if (row == 0x50) row = 0;
                            830 ;	genCmpEq
                            831 ;	gencjneshort
                            832 ;	Peephole 112.b	changed ljmp to sjmp
                            833 ;	Peephole 198.b	optimized misc jump sequence
   02B2 BB 50 02            834 	cjne	r3,#0x50,00113$
                            835 ;	Peephole 200.b	removed redundant sjmp
                            836 ;	Peephole 300	removed redundant label 00151$
                            837 ;	Peephole 300	removed redundant label 00152$
                            838 ;	genAssign
   02B5 7B 00               839 	mov	r3,#0x00
   02B7                     840 00113$:
                            841 ;	Drivers/driver_lcd.c:90: lcdgotoxy(row,value&0x00);
                            842 ;	genIpush
                            843 ;	Peephole 181	changed mov to clr
   02B7 E4                  844 	clr	a
   02B8 C0 E0               845 	push	acc
                            846 ;	genCall
   02BA 8B 82               847 	mov	dpl,r3
   02BC 12 02 27            848 	lcall	_lcdgotoxy
   02BF 15 81               849 	dec	sp
                            850 ;	Drivers/driver_lcd.c:91: break;
                            851 ;	Peephole 251.a	replaced ljmp to ret with ret
   02C1 22                  852 	ret
                            853 ;	Drivers/driver_lcd.c:92: default:                                    // For all other characters print as it is
   02C2                     854 00114$:
                            855 ;	Drivers/driver_lcd.c:93: lcddatawrptr = value;                         // Send character to be printed
                            856 ;	genAssign
   02C2 90 F2 00            857 	mov	dptr,#_lcddatawrptr
   02C5 EA                  858 	mov	a,r2
   02C6 F0                  859 	movx	@dptr,a
                            860 ;	Drivers/driver_lcd.c:94: Delay(2);
                            861 ;	genCall
                            862 ;	Peephole 182.b	used 16 bit load of dptr
   02C7 90 00 02            863 	mov	dptr,#0x0002
   02CA 12 14 1D            864 	lcall	_Delay
                            865 ;	Drivers/driver_lcd.c:95: cursor_loc = get_lcd_addr();            // This code is for next row selection correction
                            866 ;	genCall
   02CD 12 03 97            867 	lcall	_get_lcd_addr
   02D0 AA 82               868 	mov	r2,dpl
                            869 ;	genAssign
                            870 ;	Drivers/driver_lcd.c:96: if (cursor_loc == 0x40)                 // -- The logic used is to check where the cursor lands
                            871 ;	genCmpEq
                            872 ;	gencjneshort
                            873 ;	Peephole 112.b	changed ljmp to sjmp
                            874 ;	Peephole 198.b	optimized misc jump sequence
   02D2 BA 40 0C            875 	cjne	r2,#0x40,00127$
                            876 ;	Peephole 200.b	removed redundant sjmp
                            877 ;	Peephole 300	removed redundant label 00153$
                            878 ;	Peephole 300	removed redundant label 00154$
                            879 ;	Drivers/driver_lcd.c:97: lcdgotoxy(3,0);                     // -- and set it at where it is supposed to land after
                            880 ;	genIpush
                            881 ;	Peephole 181	changed mov to clr
   02D5 E4                  882 	clr	a
   02D6 C0 E0               883 	push	acc
                            884 ;	genCall
   02D8 75 82 03            885 	mov	dpl,#0x03
   02DB 12 02 27            886 	lcall	_lcdgotoxy
   02DE 15 81               887 	dec	sp
                            888 ;	Peephole 112.b	changed ljmp to sjmp
                            889 ;	Peephole 251.b	replaced sjmp to ret with ret
   02E0 22                  890 	ret
   02E1                     891 00127$:
                            892 ;	Drivers/driver_lcd.c:98: else if (cursor_loc == 0x10)            // -- each character is printed
                            893 ;	genCmpEq
                            894 ;	gencjneshort
                            895 ;	Peephole 112.b	changed ljmp to sjmp
                            896 ;	Peephole 198.b	optimized misc jump sequence
   02E1 BA 10 0C            897 	cjne	r2,#0x10,00124$
                            898 ;	Peephole 200.b	removed redundant sjmp
                            899 ;	Peephole 300	removed redundant label 00155$
                            900 ;	Peephole 300	removed redundant label 00156$
                            901 ;	Drivers/driver_lcd.c:99: lcdgotoxy(1,0);
                            902 ;	genIpush
                            903 ;	Peephole 181	changed mov to clr
   02E4 E4                  904 	clr	a
   02E5 C0 E0               905 	push	acc
                            906 ;	genCall
   02E7 75 82 01            907 	mov	dpl,#0x01
   02EA 12 02 27            908 	lcall	_lcdgotoxy
   02ED 15 81               909 	dec	sp
                            910 ;	Peephole 112.b	changed ljmp to sjmp
                            911 ;	Peephole 251.b	replaced sjmp to ret with ret
   02EF 22                  912 	ret
   02F0                     913 00124$:
                            914 ;	Drivers/driver_lcd.c:100: else if (cursor_loc == 0x50)
                            915 ;	genCmpEq
                            916 ;	gencjneshort
                            917 ;	Peephole 112.b	changed ljmp to sjmp
                            918 ;	Peephole 198.b	optimized misc jump sequence
   02F0 BA 50 0C            919 	cjne	r2,#0x50,00121$
                            920 ;	Peephole 200.b	removed redundant sjmp
                            921 ;	Peephole 300	removed redundant label 00157$
                            922 ;	Peephole 300	removed redundant label 00158$
                            923 ;	Drivers/driver_lcd.c:101: lcdgotoxy(2,0);
                            924 ;	genIpush
                            925 ;	Peephole 181	changed mov to clr
   02F3 E4                  926 	clr	a
   02F4 C0 E0               927 	push	acc
                            928 ;	genCall
   02F6 75 82 02            929 	mov	dpl,#0x02
   02F9 12 02 27            930 	lcall	_lcdgotoxy
   02FC 15 81               931 	dec	sp
                            932 ;	Peephole 112.b	changed ljmp to sjmp
                            933 ;	Peephole 251.b	replaced sjmp to ret with ret
   02FE 22                  934 	ret
   02FF                     935 00121$:
                            936 ;	Drivers/driver_lcd.c:102: else if (cursor_loc == 0x20)
                            937 ;	genCmpEq
                            938 ;	gencjneshort
                            939 ;	Peephole 112.b	changed ljmp to sjmp
                            940 ;	Peephole 198.b	optimized misc jump sequence
   02FF BA 20 0C            941 	cjne	r2,#0x20,00118$
                            942 ;	Peephole 200.b	removed redundant sjmp
                            943 ;	Peephole 300	removed redundant label 00159$
                            944 ;	Peephole 300	removed redundant label 00160$
                            945 ;	Drivers/driver_lcd.c:103: lcdgotoxy(3,0);
                            946 ;	genIpush
                            947 ;	Peephole 181	changed mov to clr
   0302 E4                  948 	clr	a
   0303 C0 E0               949 	push	acc
                            950 ;	genCall
   0305 75 82 03            951 	mov	dpl,#0x03
   0308 12 02 27            952 	lcall	_lcdgotoxy
   030B 15 81               953 	dec	sp
                            954 ;	Peephole 112.b	changed ljmp to sjmp
                            955 ;	Peephole 251.b	replaced sjmp to ret with ret
   030D 22                  956 	ret
   030E                     957 00118$:
                            958 ;	Drivers/driver_lcd.c:104: else if (cursor_loc == 0x60)
                            959 ;	genCmpEq
                            960 ;	gencjneshort
                            961 ;	Peephole 112.b	changed ljmp to sjmp
                            962 ;	Peephole 198.b	optimized misc jump sequence
   030E BA 60 0B            963 	cjne	r2,#0x60,00130$
                            964 ;	Peephole 200.b	removed redundant sjmp
                            965 ;	Peephole 300	removed redundant label 00161$
                            966 ;	Peephole 300	removed redundant label 00162$
                            967 ;	Drivers/driver_lcd.c:105: lcdgotoxy(0,0);
                            968 ;	genIpush
                            969 ;	Peephole 181	changed mov to clr
   0311 E4                  970 	clr	a
   0312 C0 E0               971 	push	acc
                            972 ;	genCall
   0314 75 82 00            973 	mov	dpl,#0x00
   0317 12 02 27            974 	lcall	_lcdgotoxy
   031A 15 81               975 	dec	sp
                            976 ;	Drivers/driver_lcd.c:107: }
   031C                     977 00130$:
   031C 22                  978 	ret
                            979 ;------------------------------------------------------------
                            980 ;Allocation info for local variables in function 'lcdputstr_currloc'
                            981 ;------------------------------------------------------------
                            982 ;string                    Allocated to registers r2 r3 r4 
                            983 ;------------------------------------------------------------
                            984 ;	Drivers/driver_lcd.c:111: void lcdputstr_currloc(char *string)
                            985 ;	-----------------------------------------
                            986 ;	 function lcdputstr_currloc
                            987 ;	-----------------------------------------
   031D                     988 _lcdputstr_currloc:
                            989 ;	genReceive
   031D AA 82               990 	mov	r2,dpl
   031F AB 83               991 	mov	r3,dph
   0321 AC F0               992 	mov	r4,b
                            993 ;	Drivers/driver_lcd.c:113: while(*string!='\0')                        // Send to LCD till end of string
                            994 ;	genAssign
   0323                     995 00101$:
                            996 ;	genPointerGet
                            997 ;	genGenPointerGet
   0323 8A 82               998 	mov	dpl,r2
   0325 8B 83               999 	mov	dph,r3
   0327 8C F0              1000 	mov	b,r4
   0329 12 62 42           1001 	lcall	__gptrget
                           1002 ;	genCmpEq
                           1003 ;	gencjneshort
                           1004 ;	Peephole 112.b	changed ljmp to sjmp
   032C FD                 1005 	mov	r5,a
                           1006 ;	Peephole 115.b	jump optimization
   032D 60 18              1007 	jz	00104$
                           1008 ;	Peephole 300	removed redundant label 00109$
                           1009 ;	Drivers/driver_lcd.c:114: lcdputch(*string++);
                           1010 ;	genAssign
                           1011 ;	genPlus
                           1012 ;     genPlusIncr
   032F 0A                 1013 	inc	r2
   0330 BA 00 01           1014 	cjne	r2,#0x00,00110$
   0333 0B                 1015 	inc	r3
   0334                    1016 00110$:
                           1017 ;	genCall
   0334 8D 82              1018 	mov	dpl,r5
   0336 C0 02              1019 	push	ar2
   0338 C0 03              1020 	push	ar3
   033A C0 04              1021 	push	ar4
   033C 12 02 7A           1022 	lcall	_lcdputch
   033F D0 04              1023 	pop	ar4
   0341 D0 03              1024 	pop	ar3
   0343 D0 02              1025 	pop	ar2
                           1026 ;	Peephole 112.b	changed ljmp to sjmp
   0345 80 DC              1027 	sjmp	00101$
   0347                    1028 00104$:
   0347 22                 1029 	ret
                           1030 ;------------------------------------------------------------
                           1031 ;Allocation info for local variables in function 'lcdputstr'
                           1032 ;------------------------------------------------------------
                           1033 ;string                    Allocated to registers r2 r3 r4 
                           1034 ;------------------------------------------------------------
                           1035 ;	Drivers/driver_lcd.c:118: void lcdputstr(char *string)
                           1036 ;	-----------------------------------------
                           1037 ;	 function lcdputstr
                           1038 ;	-----------------------------------------
   0348                    1039 _lcdputstr:
                           1040 ;	genReceive
   0348 AA 82              1041 	mov	r2,dpl
   034A AB 83              1042 	mov	r3,dph
   034C AC F0              1043 	mov	r4,b
                           1044 ;	Drivers/driver_lcd.c:120: LCD_CLEAR;                                  // Clear Screen
                           1045 ;	genCall
   034E 75 82 01           1046 	mov	dpl,#0x01
   0351 C0 02              1047 	push	ar2
   0353 C0 03              1048 	push	ar3
   0355 C0 04              1049 	push	ar4
   0357 12 01 C3           1050 	lcall	_send_command
   035A D0 04              1051 	pop	ar4
   035C D0 03              1052 	pop	ar3
   035E D0 02              1053 	pop	ar2
                           1054 ;	Drivers/driver_lcd.c:121: Delay(2);
                           1055 ;	genCall
                           1056 ;	Peephole 182.b	used 16 bit load of dptr
   0360 90 00 02           1057 	mov	dptr,#0x0002
   0363 C0 02              1058 	push	ar2
   0365 C0 03              1059 	push	ar3
   0367 C0 04              1060 	push	ar4
   0369 12 14 1D           1061 	lcall	_Delay
   036C D0 04              1062 	pop	ar4
   036E D0 03              1063 	pop	ar3
   0370 D0 02              1064 	pop	ar2
                           1065 ;	Drivers/driver_lcd.c:122: while(*string!='\0')                        // Send to LCD till end of string
                           1066 ;	genAssign
   0372                    1067 00101$:
                           1068 ;	genPointerGet
                           1069 ;	genGenPointerGet
   0372 8A 82              1070 	mov	dpl,r2
   0374 8B 83              1071 	mov	dph,r3
   0376 8C F0              1072 	mov	b,r4
   0378 12 62 42           1073 	lcall	__gptrget
                           1074 ;	genCmpEq
                           1075 ;	gencjneshort
                           1076 ;	Peephole 112.b	changed ljmp to sjmp
   037B FD                 1077 	mov	r5,a
                           1078 ;	Peephole 115.b	jump optimization
   037C 60 18              1079 	jz	00104$
                           1080 ;	Peephole 300	removed redundant label 00109$
                           1081 ;	Drivers/driver_lcd.c:123: lcdputch(*string++);
                           1082 ;	genAssign
                           1083 ;	genPlus
                           1084 ;     genPlusIncr
   037E 0A                 1085 	inc	r2
   037F BA 00 01           1086 	cjne	r2,#0x00,00110$
   0382 0B                 1087 	inc	r3
   0383                    1088 00110$:
                           1089 ;	genCall
   0383 8D 82              1090 	mov	dpl,r5
   0385 C0 02              1091 	push	ar2
   0387 C0 03              1092 	push	ar3
   0389 C0 04              1093 	push	ar4
   038B 12 02 7A           1094 	lcall	_lcdputch
   038E D0 04              1095 	pop	ar4
   0390 D0 03              1096 	pop	ar3
   0392 D0 02              1097 	pop	ar2
                           1098 ;	Peephole 112.b	changed ljmp to sjmp
   0394 80 DC              1099 	sjmp	00101$
   0396                    1100 00104$:
   0396 22                 1101 	ret
                           1102 ;------------------------------------------------------------
                           1103 ;Allocation info for local variables in function 'get_lcd_addr'
                           1104 ;------------------------------------------------------------
                           1105 ;address                   Allocated to registers 
                           1106 ;------------------------------------------------------------
                           1107 ;	Drivers/driver_lcd.c:127: unsigned char get_lcd_addr(void)
                           1108 ;	-----------------------------------------
                           1109 ;	 function get_lcd_addr
                           1110 ;	-----------------------------------------
   0397                    1111 _get_lcd_addr:
                           1112 ;	Drivers/driver_lcd.c:130: lcdbusywait();
   0397                    1113 00101$:
                           1114 ;	genAssign
   0397 90 F1 00           1115 	mov	dptr,#_lcdinstrdptr
   039A E0                 1116 	movx	a,@dptr
   039B FA                 1117 	mov	r2,a
                           1118 ;	genAnd
   039C 53 02 80           1119 	anl	ar2,#0x80
                           1120 ;	genCmpEq
                           1121 ;	gencjneshort
                           1122 ;	Peephole 112.b	changed ljmp to sjmp
                           1123 ;	Peephole 198.b	optimized misc jump sequence
   039F BA 00 F5           1124 	cjne	r2,#0x00,00101$
                           1125 ;	Peephole 200.b	removed redundant sjmp
                           1126 ;	Peephole 300	removed redundant label 00108$
                           1127 ;	Peephole 300	removed redundant label 00109$
                           1128 ;	Drivers/driver_lcd.c:131: address = (lcdinstrdptr & 0x7F);			// Remove Busy Flag(MSB) to get address
                           1129 ;	genAssign
   03A2 90 F1 00           1130 	mov	dptr,#_lcdinstrdptr
   03A5 E0                 1131 	movx	a,@dptr
   03A6 FA                 1132 	mov	r2,a
                           1133 ;	genAnd
   03A7 74 7F              1134 	mov	a,#0x7F
   03A9 5A                 1135 	anl	a,r2
   03AA F5 82              1136 	mov	dpl,a
                           1137 ;	Drivers/driver_lcd.c:132: return (address);
                           1138 ;	genRet
                           1139 ;	Peephole 300	removed redundant label 00104$
   03AC 22                 1140 	ret
                           1141 	.area CSEG    (CODE)
                           1142 	.area CONST   (CODE)
                           1143 	.area XINIT   (CODE)
