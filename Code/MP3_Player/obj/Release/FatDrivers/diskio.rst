                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : FreeWare ANSI-C Compiler
                              3 ; Version 2.6.0 #4309 (Jul 28 2006)
                              4 ; This file generated Sat May 02 15:12:58 2015
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
                            208 	.globl _xbuffer
                            209 	.globl _SDCard
                            210 	.globl _CardType
                            211 	.globl _Stat
                            212 	.globl _disk_initialize
                            213 	.globl _disk_status
                            214 	.globl _disk_read
                            215 	.globl _disk_mp3_read
                            216 	.globl _disk_txt_read
                            217 	.globl _disk_write
                            218 	.globl _disk_ioctl
                            219 ;--------------------------------------------------------
                            220 ; special function registers
                            221 ;--------------------------------------------------------
                            222 	.area RSEG    (DATA)
                    0080    223 _P0	=	0x0080
                    0081    224 _SP	=	0x0081
                    0082    225 _DPL	=	0x0082
                    0083    226 _DPH	=	0x0083
                    0087    227 _PCON	=	0x0087
                    0088    228 _TCON	=	0x0088
                    0089    229 _TMOD	=	0x0089
                    008A    230 _TL0	=	0x008a
                    008B    231 _TL1	=	0x008b
                    008C    232 _TH0	=	0x008c
                    008D    233 _TH1	=	0x008d
                    0090    234 _P1	=	0x0090
                    0098    235 _SCON	=	0x0098
                    0099    236 _SBUF	=	0x0099
                    00A0    237 _P2	=	0x00a0
                    00A8    238 _IE	=	0x00a8
                    00B0    239 _P3	=	0x00b0
                    00B8    240 _IP	=	0x00b8
                    00D0    241 _PSW	=	0x00d0
                    00E0    242 _ACC	=	0x00e0
                    00F0    243 _B	=	0x00f0
                    00C8    244 _T2CON	=	0x00c8
                    00CA    245 _RCAP2L	=	0x00ca
                    00CB    246 _RCAP2H	=	0x00cb
                    00CC    247 _TL2	=	0x00cc
                    00CD    248 _TH2	=	0x00cd
                    008E    249 _AUXR	=	0x008e
                    00A2    250 _AUXR1	=	0x00a2
                    0097    251 _CKRL	=	0x0097
                    008F    252 _CKCKON0	=	0x008f
                    00AF    253 _CKCKON1	=	0x00af
                    00FA    254 _CCAP0H	=	0x00fa
                    00FB    255 _CCAP1H	=	0x00fb
                    00FC    256 _CCAP2H	=	0x00fc
                    00FD    257 _CCAP3H	=	0x00fd
                    00FE    258 _CCAP4H	=	0x00fe
                    00EA    259 _CCAP0L	=	0x00ea
                    00EB    260 _CCAP1L	=	0x00eb
                    00EC    261 _CCAP2L	=	0x00ec
                    00ED    262 _CCAP3L	=	0x00ed
                    00EE    263 _CCAP4L	=	0x00ee
                    00DA    264 _CCAPM0	=	0x00da
                    00DB    265 _CCAPM1	=	0x00db
                    00DC    266 _CCAPM2	=	0x00dc
                    00DD    267 _CCAPM3	=	0x00dd
                    00DE    268 _CCAPM4	=	0x00de
                    00D8    269 _CCON	=	0x00d8
                    00F9    270 _CH	=	0x00f9
                    00E9    271 _CL	=	0x00e9
                    00D9    272 _CMOD	=	0x00d9
                    00A8    273 _IEN0	=	0x00a8
                    00B1    274 _IEN1	=	0x00b1
                    00B8    275 _IPL0	=	0x00b8
                    00B7    276 _IPH0	=	0x00b7
                    00B2    277 _IPL1	=	0x00b2
                    00B3    278 _IPH1	=	0x00b3
                    00C0    279 _P4	=	0x00c0
                    00D8    280 _P5	=	0x00d8
                    00A6    281 _WDTRST	=	0x00a6
                    00A7    282 _WDTPRG	=	0x00a7
                    00A9    283 _SADDR	=	0x00a9
                    00B9    284 _SADEN	=	0x00b9
                    00C3    285 _SPCON	=	0x00c3
                    00C4    286 _SPSTA	=	0x00c4
                    00C5    287 _SPDAT	=	0x00c5
                    00C9    288 _T2MOD	=	0x00c9
                    009B    289 _BDRCON	=	0x009b
                    009A    290 _BRL	=	0x009a
                    009C    291 _KBLS	=	0x009c
                    009D    292 _KBE	=	0x009d
                    009E    293 _KBF	=	0x009e
                    00D2    294 _EECON	=	0x00d2
                            295 ;--------------------------------------------------------
                            296 ; special function bits
                            297 ;--------------------------------------------------------
                            298 	.area RSEG    (DATA)
                    0080    299 _P0_0	=	0x0080
                    0081    300 _P0_1	=	0x0081
                    0082    301 _P0_2	=	0x0082
                    0083    302 _P0_3	=	0x0083
                    0084    303 _P0_4	=	0x0084
                    0085    304 _P0_5	=	0x0085
                    0086    305 _P0_6	=	0x0086
                    0087    306 _P0_7	=	0x0087
                    0088    307 _IT0	=	0x0088
                    0089    308 _IE0	=	0x0089
                    008A    309 _IT1	=	0x008a
                    008B    310 _IE1	=	0x008b
                    008C    311 _TR0	=	0x008c
                    008D    312 _TF0	=	0x008d
                    008E    313 _TR1	=	0x008e
                    008F    314 _TF1	=	0x008f
                    0090    315 _P1_0	=	0x0090
                    0091    316 _P1_1	=	0x0091
                    0092    317 _P1_2	=	0x0092
                    0093    318 _P1_3	=	0x0093
                    0094    319 _P1_4	=	0x0094
                    0095    320 _P1_5	=	0x0095
                    0096    321 _P1_6	=	0x0096
                    0097    322 _P1_7	=	0x0097
                    0098    323 _RI	=	0x0098
                    0099    324 _TI	=	0x0099
                    009A    325 _RB8	=	0x009a
                    009B    326 _TB8	=	0x009b
                    009C    327 _REN	=	0x009c
                    009D    328 _SM2	=	0x009d
                    009E    329 _SM1	=	0x009e
                    009F    330 _SM0	=	0x009f
                    00A0    331 _P2_0	=	0x00a0
                    00A1    332 _P2_1	=	0x00a1
                    00A2    333 _P2_2	=	0x00a2
                    00A3    334 _P2_3	=	0x00a3
                    00A4    335 _P2_4	=	0x00a4
                    00A5    336 _P2_5	=	0x00a5
                    00A6    337 _P2_6	=	0x00a6
                    00A7    338 _P2_7	=	0x00a7
                    00A8    339 _EX0	=	0x00a8
                    00A9    340 _ET0	=	0x00a9
                    00AA    341 _EX1	=	0x00aa
                    00AB    342 _ET1	=	0x00ab
                    00AC    343 _ES	=	0x00ac
                    00AF    344 _EA	=	0x00af
                    00B0    345 _P3_0	=	0x00b0
                    00B1    346 _P3_1	=	0x00b1
                    00B2    347 _P3_2	=	0x00b2
                    00B3    348 _P3_3	=	0x00b3
                    00B4    349 _P3_4	=	0x00b4
                    00B5    350 _P3_5	=	0x00b5
                    00B6    351 _P3_6	=	0x00b6
                    00B7    352 _P3_7	=	0x00b7
                    00B0    353 _RXD	=	0x00b0
                    00B1    354 _TXD	=	0x00b1
                    00B2    355 _INT0	=	0x00b2
                    00B3    356 _INT1	=	0x00b3
                    00B4    357 _T0	=	0x00b4
                    00B5    358 _T1	=	0x00b5
                    00B6    359 _WR	=	0x00b6
                    00B7    360 _RD	=	0x00b7
                    00B8    361 _PX0	=	0x00b8
                    00B9    362 _PT0	=	0x00b9
                    00BA    363 _PX1	=	0x00ba
                    00BB    364 _PT1	=	0x00bb
                    00BC    365 _PS	=	0x00bc
                    00D0    366 _P	=	0x00d0
                    00D1    367 _F1	=	0x00d1
                    00D2    368 _OV	=	0x00d2
                    00D3    369 _RS0	=	0x00d3
                    00D4    370 _RS1	=	0x00d4
                    00D5    371 _F0	=	0x00d5
                    00D6    372 _AC	=	0x00d6
                    00D7    373 _CY	=	0x00d7
                    00AD    374 _ET2	=	0x00ad
                    00BD    375 _PT2	=	0x00bd
                    00C8    376 _T2CON_0	=	0x00c8
                    00C9    377 _T2CON_1	=	0x00c9
                    00CA    378 _T2CON_2	=	0x00ca
                    00CB    379 _T2CON_3	=	0x00cb
                    00CC    380 _T2CON_4	=	0x00cc
                    00CD    381 _T2CON_5	=	0x00cd
                    00CE    382 _T2CON_6	=	0x00ce
                    00CF    383 _T2CON_7	=	0x00cf
                    00C8    384 _CP_RL2	=	0x00c8
                    00C9    385 _C_T2	=	0x00c9
                    00CA    386 _TR2	=	0x00ca
                    00CB    387 _EXEN2	=	0x00cb
                    00CC    388 _TCLK	=	0x00cc
                    00CD    389 _RCLK	=	0x00cd
                    00CE    390 _EXF2	=	0x00ce
                    00CF    391 _TF2	=	0x00cf
                    00DF    392 _CF	=	0x00df
                    00DE    393 _CR	=	0x00de
                    00DC    394 _CCF4	=	0x00dc
                    00DB    395 _CCF3	=	0x00db
                    00DA    396 _CCF2	=	0x00da
                    00D9    397 _CCF1	=	0x00d9
                    00D8    398 _CCF0	=	0x00d8
                    00AE    399 _EC	=	0x00ae
                    00BE    400 _PPCL	=	0x00be
                    00BD    401 _PT2L	=	0x00bd
                    00BC    402 _PLS	=	0x00bc
                    00BB    403 _PT1L	=	0x00bb
                    00BA    404 _PX1L	=	0x00ba
                    00B9    405 _PT0L	=	0x00b9
                    00B8    406 _PX0L	=	0x00b8
                    00C0    407 _P4_0	=	0x00c0
                    00C1    408 _P4_1	=	0x00c1
                    00C2    409 _P4_2	=	0x00c2
                    00C3    410 _P4_3	=	0x00c3
                    00C4    411 _P4_4	=	0x00c4
                    00C5    412 _P4_5	=	0x00c5
                    00C6    413 _P4_6	=	0x00c6
                    00C7    414 _P4_7	=	0x00c7
                    00D8    415 _P5_0	=	0x00d8
                    00D9    416 _P5_1	=	0x00d9
                    00DA    417 _P5_2	=	0x00da
                    00DB    418 _P5_3	=	0x00db
                    00DC    419 _P5_4	=	0x00dc
                    00DD    420 _P5_5	=	0x00dd
                    00DE    421 _P5_6	=	0x00de
                    00DF    422 _P5_7	=	0x00df
                            423 ;--------------------------------------------------------
                            424 ; overlayable register banks
                            425 ;--------------------------------------------------------
                            426 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     427 	.ds 8
                            428 ;--------------------------------------------------------
                            429 ; internal ram data
                            430 ;--------------------------------------------------------
                            431 	.area DSEG    (DATA)
                            432 ;--------------------------------------------------------
                            433 ; overlayable items in internal ram 
                            434 ;--------------------------------------------------------
                            435 	.area OSEG    (OVR,DATA)
                            436 ;--------------------------------------------------------
                            437 ; indirectly addressable internal ram data
                            438 ;--------------------------------------------------------
                            439 	.area ISEG    (DATA)
                            440 ;--------------------------------------------------------
                            441 ; bit data
                            442 ;--------------------------------------------------------
                            443 	.area BSEG    (BIT)
                            444 ;--------------------------------------------------------
                            445 ; paged external ram data
                            446 ;--------------------------------------------------------
                            447 	.area PSEG    (PAG,XDATA)
                            448 ;--------------------------------------------------------
                            449 ; external ram data
                            450 ;--------------------------------------------------------
                            451 	.area XSEG    (XDATA)
                    F000    452 _lcdinstwrptr	=	0xf000
                    F100    453 _lcdinstrdptr	=	0xf100
                    F200    454 _lcddatawrptr	=	0xf200
                    F300    455 _lcddatardptr	=	0xf300
   0006                     456 _Stat::
   0006                     457 	.ds 1
                    1000    458 _CardType	=	0x1000
                    2000    459 _SDCard	=	0x2000
                    3000    460 _xbuffer	=	0x3000
                            461 ;--------------------------------------------------------
                            462 ; external initialized ram data
                            463 ;--------------------------------------------------------
                            464 	.area XISEG   (XDATA)
                            465 	.area HOME    (CODE)
                            466 	.area GSINIT0 (CODE)
                            467 	.area GSINIT1 (CODE)
                            468 	.area GSINIT2 (CODE)
                            469 	.area GSINIT3 (CODE)
                            470 	.area GSINIT4 (CODE)
                            471 	.area GSINIT5 (CODE)
                            472 	.area GSINIT  (CODE)
                            473 	.area GSFINAL (CODE)
                            474 	.area CSEG    (CODE)
                            475 ;--------------------------------------------------------
                            476 ; global & static initialisations
                            477 ;--------------------------------------------------------
                            478 	.area HOME    (CODE)
                            479 	.area GSINIT  (CODE)
                            480 	.area GSFINAL (CODE)
                            481 	.area GSINIT  (CODE)
                            482 ;--------------------------------------------------------
                            483 ; Home
                            484 ;--------------------------------------------------------
                            485 	.area HOME    (CODE)
                            486 	.area CSEG    (CODE)
                            487 ;--------------------------------------------------------
                            488 ; code
                            489 ;--------------------------------------------------------
                            490 	.area CSEG    (CODE)
                            491 ;------------------------------------------------------------
                            492 ;Allocation info for local variables in function 'disk_initialize'
                            493 ;------------------------------------------------------------
                            494 ;drv                       Allocated to registers r2 
                            495 ;------------------------------------------------------------
                            496 ;	FatDrivers/diskio.c:49: DSTATUS disk_initialize( BYTE drv )
                            497 ;	-----------------------------------------
                            498 ;	 function disk_initialize
                            499 ;	-----------------------------------------
   0D0B                     500 _disk_initialize:
                    0002    501 	ar2 = 0x02
                    0003    502 	ar3 = 0x03
                    0004    503 	ar4 = 0x04
                    0005    504 	ar5 = 0x05
                    0006    505 	ar6 = 0x06
                    0007    506 	ar7 = 0x07
                    0000    507 	ar0 = 0x00
                    0001    508 	ar1 = 0x01
                            509 ;	genReceive
   0D0B AA 82               510 	mov	r2,dpl
                            511 ;	FatDrivers/diskio.c:52: if( drv != 0)
                            512 ;	genCmpEq
                            513 ;	gencjneshort
   0D0D BA 00 02            514 	cjne	r2,#0x00,00109$
                            515 ;	Peephole 112.b	changed ljmp to sjmp
   0D10 80 04               516 	sjmp	00102$
   0D12                     517 00109$:
                            518 ;	FatDrivers/diskio.c:53: return STA_NOINIT;
                            519 ;	genRet
   0D12 75 82 01            520 	mov	dpl,#0x01
                            521 ;	Peephole 112.b	changed ljmp to sjmp
                            522 ;	Peephole 251.b	replaced sjmp to ret with ret
   0D15 22                  523 	ret
   0D16                     524 00102$:
                            525 ;	FatDrivers/diskio.c:56: if( !SD_Init() )
                            526 ;	genCall
   0D16 12 14 41            527 	lcall	_SD_Init
   0D19 E5 82               528 	mov	a,dpl
                            529 ;	genIfx
                            530 ;	genIfxJump
                            531 ;	Peephole 108.b	removed ljmp by inverse jump logic
   0D1B 70 08               532 	jnz	00104$
                            533 ;	Peephole 300	removed redundant label 00110$
                            534 ;	FatDrivers/diskio.c:59: Stat &= ~STA_NOINIT;
                            535 ;	genAssign
                            536 ;	genAnd
   0D1D 90 00 06            537 	mov	dptr,#_Stat
   0D20 E0                  538 	movx	a,@dptr
   0D21 FA                  539 	mov	r2,a
                            540 ;	Peephole 248.b	optimized and to xdata
   0D22 54 FE               541 	anl	a,#0xFE
   0D24 F0                  542 	movx	@dptr,a
   0D25                     543 00104$:
                            544 ;	FatDrivers/diskio.c:63: return( Stat );
                            545 ;	genAssign
   0D25 90 00 06            546 	mov	dptr,#_Stat
   0D28 E0                  547 	movx	a,@dptr
                            548 ;	genRet
                            549 ;	Peephole 234.a	loading dpl directly from a(ccumulator), r2 not set
   0D29 F5 82               550 	mov	dpl,a
                            551 ;	Peephole 300	removed redundant label 00105$
   0D2B 22                  552 	ret
                            553 ;------------------------------------------------------------
                            554 ;Allocation info for local variables in function 'disk_status'
                            555 ;------------------------------------------------------------
                            556 ;drv                       Allocated to registers r2 
                            557 ;------------------------------------------------------------
                            558 ;	FatDrivers/diskio.c:69: DSTATUS disk_status( BYTE drv	)
                            559 ;	-----------------------------------------
                            560 ;	 function disk_status
                            561 ;	-----------------------------------------
   0D2C                     562 _disk_status:
                            563 ;	genReceive
   0D2C AA 82               564 	mov	r2,dpl
                            565 ;	FatDrivers/diskio.c:72: if( drv != 0)
                            566 ;	genCmpEq
                            567 ;	gencjneshort
   0D2E BA 00 02            568 	cjne	r2,#0x00,00106$
                            569 ;	Peephole 112.b	changed ljmp to sjmp
   0D31 80 04               570 	sjmp	00102$
   0D33                     571 00106$:
                            572 ;	FatDrivers/diskio.c:73: return STA_NOINIT;
                            573 ;	genRet
   0D33 75 82 01            574 	mov	dpl,#0x01
                            575 ;	Peephole 112.b	changed ljmp to sjmp
                            576 ;	Peephole 251.b	replaced sjmp to ret with ret
   0D36 22                  577 	ret
   0D37                     578 00102$:
                            579 ;	FatDrivers/diskio.c:76: return( Stat );
                            580 ;	genAssign
   0D37 90 00 06            581 	mov	dptr,#_Stat
   0D3A E0                  582 	movx	a,@dptr
                            583 ;	genRet
                            584 ;	Peephole 234.a	loading dpl directly from a(ccumulator), r2 not set
   0D3B F5 82               585 	mov	dpl,a
                            586 ;	Peephole 300	removed redundant label 00103$
   0D3D 22                  587 	ret
                            588 ;------------------------------------------------------------
                            589 ;Allocation info for local variables in function 'disk_read'
                            590 ;------------------------------------------------------------
                            591 ;buff                      Allocated to stack - offset -5
                            592 ;sector                    Allocated to stack - offset -9
                            593 ;count                     Allocated to stack - offset -10
                            594 ;drv                       Allocated to registers r2 
                            595 ;------------------------------------------------------------
                            596 ;	FatDrivers/diskio.c:84: DRESULT disk_read ( BYTE drv, BYTE *buff, DWORD sector, BYTE count )
                            597 ;	-----------------------------------------
                            598 ;	 function disk_read
                            599 ;	-----------------------------------------
   0D3E                     600 _disk_read:
   0D3E C0 10               601 	push	_bp
   0D40 85 81 10            602 	mov	_bp,sp
                            603 ;	genReceive
                            604 ;	FatDrivers/diskio.c:87: if( drv || !count || (count>
                            605 ;	genIfx
                            606 ;	peephole 177.g	optimized mov sequence
   0D43 E5 82               607 	mov	a,dpl
   0D45 FA                  608 	mov	r2,a
                            609 ;	genIfxJump
                            610 ;	Peephole 108.b	removed ljmp by inverse jump logic
   0D46 70 12               611 	jnz	00101$
                            612 ;	Peephole 300	removed redundant label 00115$
                            613 ;	genIfx
   0D48 E5 10               614 	mov	a,_bp
   0D4A 24 F6               615 	add	a,#0xfffffff6
   0D4C F8                  616 	mov	r0,a
   0D4D E6                  617 	mov	a,@r0
                            618 ;	genIfxJump
                            619 ;	Peephole 108.c	removed ljmp by inverse jump logic
   0D4E 60 0A               620 	jz	00101$
                            621 ;	Peephole 300	removed redundant label 00116$
                            622 ;	FatDrivers/diskio.c:88: 1) )
                            623 ;	genCmpGt
   0D50 E5 10               624 	mov	a,_bp
   0D52 24 F6               625 	add	a,#0xfffffff6
   0D54 F8                  626 	mov	r0,a
                            627 ;	genCmp
                            628 ;	genIfxJump
                            629 ;	Peephole 108.a	removed ljmp by inverse jump logic
                            630 ;	Peephole 132.b	optimized genCmpGt by inverse logic (acc differs)
   0D55 E6                  631 	mov	a,@r0
   0D56 24 FE               632 	add	a,#0xff - 0x01
   0D58 50 05               633 	jnc	00102$
                            634 ;	Peephole 300	removed redundant label 00117$
   0D5A                     635 00101$:
                            636 ;	FatDrivers/diskio.c:89: return( RES_PARERR );
                            637 ;	genRet
   0D5A 75 82 04            638 	mov	dpl,#0x04
                            639 ;	Peephole 112.b	changed ljmp to sjmp
   0D5D 80 42               640 	sjmp	00109$
   0D5F                     641 00102$:
                            642 ;	FatDrivers/diskio.c:92: if( Stat & STA_NOINIT )
                            643 ;	genAssign
   0D5F 90 00 06            644 	mov	dptr,#_Stat
   0D62 E0                  645 	movx	a,@dptr
                            646 ;	genAnd
   0D63 FA                  647 	mov	r2,a
                            648 ;	Peephole 105	removed redundant mov
                            649 ;	genIfxJump
                            650 ;	Peephole 108.d	removed ljmp by inverse jump logic
   0D64 30 E0 05            651 	jnb	acc.0,00106$
                            652 ;	Peephole 300	removed redundant label 00118$
                            653 ;	FatDrivers/diskio.c:93: return( RES_NOTRDY );
                            654 ;	genRet
   0D67 75 82 03            655 	mov	dpl,#0x03
                            656 ;	Peephole 112.b	changed ljmp to sjmp
   0D6A 80 35               657 	sjmp	00109$
   0D6C                     658 00106$:
                            659 ;	FatDrivers/diskio.c:96: if( SD_ReadSector( sector, buff ) )
                            660 ;	genIpush
   0D6C E5 10               661 	mov	a,_bp
   0D6E 24 FB               662 	add	a,#0xfffffffb
   0D70 F8                  663 	mov	r0,a
   0D71 E6                  664 	mov	a,@r0
   0D72 C0 E0               665 	push	acc
   0D74 08                  666 	inc	r0
   0D75 E6                  667 	mov	a,@r0
   0D76 C0 E0               668 	push	acc
   0D78 08                  669 	inc	r0
   0D79 E6                  670 	mov	a,@r0
   0D7A C0 E0               671 	push	acc
                            672 ;	genCall
   0D7C E5 10               673 	mov	a,_bp
   0D7E 24 F7               674 	add	a,#0xfffffff7
   0D80 F8                  675 	mov	r0,a
   0D81 86 82               676 	mov	dpl,@r0
   0D83 08                  677 	inc	r0
   0D84 86 83               678 	mov	dph,@r0
   0D86 08                  679 	inc	r0
   0D87 86 F0               680 	mov	b,@r0
   0D89 08                  681 	inc	r0
   0D8A E6                  682 	mov	a,@r0
   0D8B 12 15 D7            683 	lcall	_SD_ReadSector
   0D8E AA 82               684 	mov	r2,dpl
   0D90 15 81               685 	dec	sp
   0D92 15 81               686 	dec	sp
   0D94 15 81               687 	dec	sp
                            688 ;	genIfx
   0D96 EA                  689 	mov	a,r2
                            690 ;	genIfxJump
                            691 ;	Peephole 108.c	removed ljmp by inverse jump logic
   0D97 60 05               692 	jz	00108$
                            693 ;	Peephole 300	removed redundant label 00119$
                            694 ;	FatDrivers/diskio.c:97: return( RES_ERROR );
                            695 ;	genRet
   0D99 75 82 01            696 	mov	dpl,#0x01
                            697 ;	Peephole 112.b	changed ljmp to sjmp
   0D9C 80 03               698 	sjmp	00109$
   0D9E                     699 00108$:
                            700 ;	FatDrivers/diskio.c:100: return( RES_OK );
                            701 ;	genRet
   0D9E 75 82 00            702 	mov	dpl,#0x00
   0DA1                     703 00109$:
   0DA1 D0 10               704 	pop	_bp
   0DA3 22                  705 	ret
                            706 ;------------------------------------------------------------
                            707 ;Allocation info for local variables in function 'disk_mp3_read'
                            708 ;------------------------------------------------------------
                            709 ;buff                      Allocated to stack - offset -5
                            710 ;sector                    Allocated to stack - offset -9
                            711 ;count                     Allocated to stack - offset -10
                            712 ;drv                       Allocated to registers r2 
                            713 ;------------------------------------------------------------
                            714 ;	FatDrivers/diskio.c:103: DRESULT disk_mp3_read ( BYTE drv, BYTE *buff, DWORD sector, BYTE count )
                            715 ;	-----------------------------------------
                            716 ;	 function disk_mp3_read
                            717 ;	-----------------------------------------
   0DA4                     718 _disk_mp3_read:
   0DA4 C0 10               719 	push	_bp
   0DA6 85 81 10            720 	mov	_bp,sp
                            721 ;	genReceive
                            722 ;	FatDrivers/diskio.c:106: if( drv || !count || (count>
                            723 ;	genIfx
                            724 ;	peephole 177.g	optimized mov sequence
   0DA9 E5 82               725 	mov	a,dpl
   0DAB FA                  726 	mov	r2,a
                            727 ;	genIfxJump
                            728 ;	Peephole 108.b	removed ljmp by inverse jump logic
   0DAC 70 12               729 	jnz	00101$
                            730 ;	Peephole 300	removed redundant label 00115$
                            731 ;	genIfx
   0DAE E5 10               732 	mov	a,_bp
   0DB0 24 F6               733 	add	a,#0xfffffff6
   0DB2 F8                  734 	mov	r0,a
   0DB3 E6                  735 	mov	a,@r0
                            736 ;	genIfxJump
                            737 ;	Peephole 108.c	removed ljmp by inverse jump logic
   0DB4 60 0A               738 	jz	00101$
                            739 ;	Peephole 300	removed redundant label 00116$
                            740 ;	FatDrivers/diskio.c:107: 1) )
                            741 ;	genCmpGt
   0DB6 E5 10               742 	mov	a,_bp
   0DB8 24 F6               743 	add	a,#0xfffffff6
   0DBA F8                  744 	mov	r0,a
                            745 ;	genCmp
                            746 ;	genIfxJump
                            747 ;	Peephole 108.a	removed ljmp by inverse jump logic
                            748 ;	Peephole 132.b	optimized genCmpGt by inverse logic (acc differs)
   0DBB E6                  749 	mov	a,@r0
   0DBC 24 FE               750 	add	a,#0xff - 0x01
   0DBE 50 05               751 	jnc	00102$
                            752 ;	Peephole 300	removed redundant label 00117$
   0DC0                     753 00101$:
                            754 ;	FatDrivers/diskio.c:108: return( RES_PARERR );
                            755 ;	genRet
   0DC0 75 82 04            756 	mov	dpl,#0x04
                            757 ;	Peephole 112.b	changed ljmp to sjmp
   0DC3 80 4B               758 	sjmp	00109$
   0DC5                     759 00102$:
                            760 ;	FatDrivers/diskio.c:111: if( Stat & STA_NOINIT )
                            761 ;	genAssign
   0DC5 90 00 06            762 	mov	dptr,#_Stat
   0DC8 E0                  763 	movx	a,@dptr
                            764 ;	genAnd
   0DC9 FA                  765 	mov	r2,a
                            766 ;	Peephole 105	removed redundant mov
                            767 ;	genIfxJump
                            768 ;	Peephole 108.d	removed ljmp by inverse jump logic
   0DCA 30 E0 05            769 	jnb	acc.0,00106$
                            770 ;	Peephole 300	removed redundant label 00118$
                            771 ;	FatDrivers/diskio.c:112: return( RES_NOTRDY );
                            772 ;	genRet
   0DCD 75 82 03            773 	mov	dpl,#0x03
                            774 ;	Peephole 112.b	changed ljmp to sjmp
   0DD0 80 3E               775 	sjmp	00109$
   0DD2                     776 00106$:
                            777 ;	FatDrivers/diskio.c:114: *buff=*buff;        // Lazily used buff instead of getting rid of the variable
                            778 ;	genAssign
   0DD2 E5 10               779 	mov	a,_bp
   0DD4 24 FB               780 	add	a,#0xfffffffb
   0DD6 F8                  781 	mov	r0,a
   0DD7 86 02               782 	mov	ar2,@r0
   0DD9 08                  783 	inc	r0
   0DDA 86 03               784 	mov	ar3,@r0
   0DDC 08                  785 	inc	r0
   0DDD 86 04               786 	mov	ar4,@r0
                            787 ;	genPointerGet
                            788 ;	genGenPointerGet
   0DDF 8A 82               789 	mov	dpl,r2
   0DE1 8B 83               790 	mov	dph,r3
   0DE3 8C F0               791 	mov	b,r4
   0DE5 12 62 42            792 	lcall	__gptrget
                            793 ;	genPointerSet
                            794 ;	genGenPointerSet
   0DE8 FD                  795 	mov	r5,a
   0DE9 8A 82               796 	mov	dpl,r2
   0DEB 8B 83               797 	mov	dph,r3
   0DED 8C F0               798 	mov	b,r4
                            799 ;	Peephole 191	removed redundant mov
   0DEF 12 5E A4            800 	lcall	__gptrput
                            801 ;	FatDrivers/diskio.c:117: if( SD_ReadMP3( sector ) )
                            802 ;	genCall
   0DF2 E5 10               803 	mov	a,_bp
   0DF4 24 F7               804 	add	a,#0xfffffff7
   0DF6 F8                  805 	mov	r0,a
   0DF7 86 82               806 	mov	dpl,@r0
   0DF9 08                  807 	inc	r0
   0DFA 86 83               808 	mov	dph,@r0
   0DFC 08                  809 	inc	r0
   0DFD 86 F0               810 	mov	b,@r0
   0DFF 08                  811 	inc	r0
   0E00 E6                  812 	mov	a,@r0
   0E01 12 0F DB            813 	lcall	_SD_ReadMP3
   0E04 E5 82               814 	mov	a,dpl
                            815 ;	genIfx
                            816 ;	genIfxJump
                            817 ;	Peephole 108.c	removed ljmp by inverse jump logic
   0E06 60 05               818 	jz	00108$
                            819 ;	Peephole 300	removed redundant label 00119$
                            820 ;	FatDrivers/diskio.c:118: return( RES_ERROR );
                            821 ;	genRet
   0E08 75 82 01            822 	mov	dpl,#0x01
                            823 ;	Peephole 112.b	changed ljmp to sjmp
   0E0B 80 03               824 	sjmp	00109$
   0E0D                     825 00108$:
                            826 ;	FatDrivers/diskio.c:121: return( RES_OK );
                            827 ;	genRet
   0E0D 75 82 00            828 	mov	dpl,#0x00
   0E10                     829 00109$:
   0E10 D0 10               830 	pop	_bp
   0E12 22                  831 	ret
                            832 ;------------------------------------------------------------
                            833 ;Allocation info for local variables in function 'disk_txt_read'
                            834 ;------------------------------------------------------------
                            835 ;buff                      Allocated to stack - offset -5
                            836 ;sector                    Allocated to stack - offset -9
                            837 ;count                     Allocated to stack - offset -10
                            838 ;drv                       Allocated to registers r2 
                            839 ;------------------------------------------------------------
                            840 ;	FatDrivers/diskio.c:124: DRESULT disk_txt_read ( BYTE drv, BYTE *buff, DWORD sector, BYTE count )
                            841 ;	-----------------------------------------
                            842 ;	 function disk_txt_read
                            843 ;	-----------------------------------------
   0E13                     844 _disk_txt_read:
   0E13 C0 10               845 	push	_bp
   0E15 85 81 10            846 	mov	_bp,sp
                            847 ;	genReceive
                            848 ;	FatDrivers/diskio.c:127: if( drv || !count || (count>
                            849 ;	genIfx
                            850 ;	peephole 177.g	optimized mov sequence
   0E18 E5 82               851 	mov	a,dpl
   0E1A FA                  852 	mov	r2,a
                            853 ;	genIfxJump
                            854 ;	Peephole 108.b	removed ljmp by inverse jump logic
   0E1B 70 12               855 	jnz	00101$
                            856 ;	Peephole 300	removed redundant label 00115$
                            857 ;	genIfx
   0E1D E5 10               858 	mov	a,_bp
   0E1F 24 F6               859 	add	a,#0xfffffff6
   0E21 F8                  860 	mov	r0,a
   0E22 E6                  861 	mov	a,@r0
                            862 ;	genIfxJump
                            863 ;	Peephole 108.c	removed ljmp by inverse jump logic
   0E23 60 0A               864 	jz	00101$
                            865 ;	Peephole 300	removed redundant label 00116$
                            866 ;	FatDrivers/diskio.c:128: 1) )
                            867 ;	genCmpGt
   0E25 E5 10               868 	mov	a,_bp
   0E27 24 F6               869 	add	a,#0xfffffff6
   0E29 F8                  870 	mov	r0,a
                            871 ;	genCmp
                            872 ;	genIfxJump
                            873 ;	Peephole 108.a	removed ljmp by inverse jump logic
                            874 ;	Peephole 132.b	optimized genCmpGt by inverse logic (acc differs)
   0E2A E6                  875 	mov	a,@r0
   0E2B 24 FE               876 	add	a,#0xff - 0x01
   0E2D 50 05               877 	jnc	00102$
                            878 ;	Peephole 300	removed redundant label 00117$
   0E2F                     879 00101$:
                            880 ;	FatDrivers/diskio.c:129: return( RES_PARERR );
                            881 ;	genRet
   0E2F 75 82 04            882 	mov	dpl,#0x04
                            883 ;	Peephole 112.b	changed ljmp to sjmp
   0E32 80 4B               884 	sjmp	00109$
   0E34                     885 00102$:
                            886 ;	FatDrivers/diskio.c:132: if( Stat & STA_NOINIT )
                            887 ;	genAssign
   0E34 90 00 06            888 	mov	dptr,#_Stat
   0E37 E0                  889 	movx	a,@dptr
                            890 ;	genAnd
   0E38 FA                  891 	mov	r2,a
                            892 ;	Peephole 105	removed redundant mov
                            893 ;	genIfxJump
                            894 ;	Peephole 108.d	removed ljmp by inverse jump logic
   0E39 30 E0 05            895 	jnb	acc.0,00106$
                            896 ;	Peephole 300	removed redundant label 00118$
                            897 ;	FatDrivers/diskio.c:133: return( RES_NOTRDY );
                            898 ;	genRet
   0E3C 75 82 03            899 	mov	dpl,#0x03
                            900 ;	Peephole 112.b	changed ljmp to sjmp
   0E3F 80 3E               901 	sjmp	00109$
   0E41                     902 00106$:
                            903 ;	FatDrivers/diskio.c:135: *buff=*buff;        // Lazily used buff instead of getting rid of the variable
                            904 ;	genAssign
   0E41 E5 10               905 	mov	a,_bp
   0E43 24 FB               906 	add	a,#0xfffffffb
   0E45 F8                  907 	mov	r0,a
   0E46 86 02               908 	mov	ar2,@r0
   0E48 08                  909 	inc	r0
   0E49 86 03               910 	mov	ar3,@r0
   0E4B 08                  911 	inc	r0
   0E4C 86 04               912 	mov	ar4,@r0
                            913 ;	genPointerGet
                            914 ;	genGenPointerGet
   0E4E 8A 82               915 	mov	dpl,r2
   0E50 8B 83               916 	mov	dph,r3
   0E52 8C F0               917 	mov	b,r4
   0E54 12 62 42            918 	lcall	__gptrget
                            919 ;	genPointerSet
                            920 ;	genGenPointerSet
   0E57 FD                  921 	mov	r5,a
   0E58 8A 82               922 	mov	dpl,r2
   0E5A 8B 83               923 	mov	dph,r3
   0E5C 8C F0               924 	mov	b,r4
                            925 ;	Peephole 191	removed redundant mov
   0E5E 12 5E A4            926 	lcall	__gptrput
                            927 ;	FatDrivers/diskio.c:138: if( SD_PrintTXT( sector) )
                            928 ;	genCall
   0E61 E5 10               929 	mov	a,_bp
   0E63 24 F7               930 	add	a,#0xfffffff7
   0E65 F8                  931 	mov	r0,a
   0E66 86 82               932 	mov	dpl,@r0
   0E68 08                  933 	inc	r0
   0E69 86 83               934 	mov	dph,@r0
   0E6B 08                  935 	inc	r0
   0E6C 86 F0               936 	mov	b,@r0
   0E6E 08                  937 	inc	r0
   0E6F E6                  938 	mov	a,@r0
   0E70 12 0F 35            939 	lcall	_SD_PrintTXT
   0E73 E5 82               940 	mov	a,dpl
                            941 ;	genIfx
                            942 ;	genIfxJump
                            943 ;	Peephole 108.c	removed ljmp by inverse jump logic
   0E75 60 05               944 	jz	00108$
                            945 ;	Peephole 300	removed redundant label 00119$
                            946 ;	FatDrivers/diskio.c:139: return( RES_ERROR );
                            947 ;	genRet
   0E77 75 82 01            948 	mov	dpl,#0x01
                            949 ;	Peephole 112.b	changed ljmp to sjmp
   0E7A 80 03               950 	sjmp	00109$
   0E7C                     951 00108$:
                            952 ;	FatDrivers/diskio.c:142: return( RES_OK );
                            953 ;	genRet
   0E7C 75 82 00            954 	mov	dpl,#0x00
   0E7F                     955 00109$:
   0E7F D0 10               956 	pop	_bp
   0E81 22                  957 	ret
                            958 ;------------------------------------------------------------
                            959 ;Allocation info for local variables in function 'disk_write'
                            960 ;------------------------------------------------------------
                            961 ;buff                      Allocated to stack - offset -5
                            962 ;sector                    Allocated to stack - offset -9
                            963 ;count                     Allocated to stack - offset -10
                            964 ;drv                       Allocated to registers r2 
                            965 ;------------------------------------------------------------
                            966 ;	FatDrivers/diskio.c:149: DRESULT disk_write( BYTE drv, const BYTE *buff, DWORD sector, BYTE count )
                            967 ;	-----------------------------------------
                            968 ;	 function disk_write
                            969 ;	-----------------------------------------
   0E82                     970 _disk_write:
   0E82 C0 10               971 	push	_bp
   0E84 85 81 10            972 	mov	_bp,sp
                            973 ;	genReceive
                            974 ;	FatDrivers/diskio.c:152: if( drv || !count || (count>
                            975 ;	genIfx
                            976 ;	peephole 177.g	optimized mov sequence
   0E87 E5 82               977 	mov	a,dpl
   0E89 FA                  978 	mov	r2,a
                            979 ;	genIfxJump
                            980 ;	Peephole 108.b	removed ljmp by inverse jump logic
   0E8A 70 12               981 	jnz	00101$
                            982 ;	Peephole 300	removed redundant label 00115$
                            983 ;	genIfx
   0E8C E5 10               984 	mov	a,_bp
   0E8E 24 F6               985 	add	a,#0xfffffff6
   0E90 F8                  986 	mov	r0,a
   0E91 E6                  987 	mov	a,@r0
                            988 ;	genIfxJump
                            989 ;	Peephole 108.c	removed ljmp by inverse jump logic
   0E92 60 0A               990 	jz	00101$
                            991 ;	Peephole 300	removed redundant label 00116$
                            992 ;	FatDrivers/diskio.c:153: 1) )
                            993 ;	genCmpGt
   0E94 E5 10               994 	mov	a,_bp
   0E96 24 F6               995 	add	a,#0xfffffff6
   0E98 F8                  996 	mov	r0,a
                            997 ;	genCmp
                            998 ;	genIfxJump
                            999 ;	Peephole 108.a	removed ljmp by inverse jump logic
                           1000 ;	Peephole 132.b	optimized genCmpGt by inverse logic (acc differs)
   0E99 E6                 1001 	mov	a,@r0
   0E9A 24 FE              1002 	add	a,#0xff - 0x01
   0E9C 50 05              1003 	jnc	00102$
                           1004 ;	Peephole 300	removed redundant label 00117$
   0E9E                    1005 00101$:
                           1006 ;	FatDrivers/diskio.c:154: return( RES_PARERR );
                           1007 ;	genRet
   0E9E 75 82 04           1008 	mov	dpl,#0x04
                           1009 ;	Peephole 112.b	changed ljmp to sjmp
   0EA1 80 42              1010 	sjmp	00109$
   0EA3                    1011 00102$:
                           1012 ;	FatDrivers/diskio.c:157: if( Stat & STA_NOINIT )
                           1013 ;	genAssign
   0EA3 90 00 06           1014 	mov	dptr,#_Stat
   0EA6 E0                 1015 	movx	a,@dptr
                           1016 ;	genAnd
   0EA7 FA                 1017 	mov	r2,a
                           1018 ;	Peephole 105	removed redundant mov
                           1019 ;	genIfxJump
                           1020 ;	Peephole 108.d	removed ljmp by inverse jump logic
   0EA8 30 E0 05           1021 	jnb	acc.0,00106$
                           1022 ;	Peephole 300	removed redundant label 00118$
                           1023 ;	FatDrivers/diskio.c:158: return( RES_NOTRDY );
                           1024 ;	genRet
   0EAB 75 82 03           1025 	mov	dpl,#0x03
                           1026 ;	Peephole 112.b	changed ljmp to sjmp
   0EAE 80 35              1027 	sjmp	00109$
   0EB0                    1028 00106$:
                           1029 ;	FatDrivers/diskio.c:161: if( SD_WriteSector( sector, buff ) )
                           1030 ;	genIpush
   0EB0 E5 10              1031 	mov	a,_bp
   0EB2 24 FB              1032 	add	a,#0xfffffffb
   0EB4 F8                 1033 	mov	r0,a
   0EB5 E6                 1034 	mov	a,@r0
   0EB6 C0 E0              1035 	push	acc
   0EB8 08                 1036 	inc	r0
   0EB9 E6                 1037 	mov	a,@r0
   0EBA C0 E0              1038 	push	acc
   0EBC 08                 1039 	inc	r0
   0EBD E6                 1040 	mov	a,@r0
   0EBE C0 E0              1041 	push	acc
                           1042 ;	genCall
   0EC0 E5 10              1043 	mov	a,_bp
   0EC2 24 F7              1044 	add	a,#0xfffffff7
   0EC4 F8                 1045 	mov	r0,a
   0EC5 86 82              1046 	mov	dpl,@r0
   0EC7 08                 1047 	inc	r0
   0EC8 86 83              1048 	mov	dph,@r0
   0ECA 08                 1049 	inc	r0
   0ECB 86 F0              1050 	mov	b,@r0
   0ECD 08                 1051 	inc	r0
   0ECE E6                 1052 	mov	a,@r0
   0ECF 12 16 99           1053 	lcall	_SD_WriteSector
   0ED2 AA 82              1054 	mov	r2,dpl
   0ED4 15 81              1055 	dec	sp
   0ED6 15 81              1056 	dec	sp
   0ED8 15 81              1057 	dec	sp
                           1058 ;	genIfx
   0EDA EA                 1059 	mov	a,r2
                           1060 ;	genIfxJump
                           1061 ;	Peephole 108.c	removed ljmp by inverse jump logic
   0EDB 60 05              1062 	jz	00108$
                           1063 ;	Peephole 300	removed redundant label 00119$
                           1064 ;	FatDrivers/diskio.c:162: return( RES_ERROR );
                           1065 ;	genRet
   0EDD 75 82 01           1066 	mov	dpl,#0x01
                           1067 ;	Peephole 112.b	changed ljmp to sjmp
   0EE0 80 03              1068 	sjmp	00109$
   0EE2                    1069 00108$:
                           1070 ;	FatDrivers/diskio.c:165: return( RES_OK );
                           1071 ;	genRet
   0EE2 75 82 00           1072 	mov	dpl,#0x00
   0EE5                    1073 00109$:
   0EE5 D0 10              1074 	pop	_bp
   0EE7 22                 1075 	ret
                           1076 ;------------------------------------------------------------
                           1077 ;Allocation info for local variables in function 'disk_ioctl'
                           1078 ;------------------------------------------------------------
                           1079 ;ctrl                      Allocated to stack - offset -3
                           1080 ;buff                      Allocated to stack - offset -6
                           1081 ;drv                       Allocated to registers r2 
                           1082 ;res                       Allocated to registers r2 
                           1083 ;ptr                       Allocated to registers 
                           1084 ;------------------------------------------------------------
                           1085 ;	FatDrivers/diskio.c:174: DRESULT disk_ioctl ( BYTE drv, BYTE ctrl, void *buff )
                           1086 ;	-----------------------------------------
                           1087 ;	 function disk_ioctl
                           1088 ;	-----------------------------------------
   0EE8                    1089 _disk_ioctl:
   0EE8 C0 10              1090 	push	_bp
   0EEA 85 81 10           1091 	mov	_bp,sp
                           1092 ;	genReceive
   0EED AA 82              1093 	mov	r2,dpl
                           1094 ;	FatDrivers/diskio.c:180: if( drv != 0)
                           1095 ;	genCmpEq
                           1096 ;	gencjneshort
   0EEF BA 00 02           1097 	cjne	r2,#0x00,00116$
                           1098 ;	Peephole 112.b	changed ljmp to sjmp
   0EF2 80 05              1099 	sjmp	00102$
   0EF4                    1100 00116$:
                           1101 ;	FatDrivers/diskio.c:181: return RES_PARERR;
                           1102 ;	genRet
   0EF4 75 82 04           1103 	mov	dpl,#0x04
                           1104 ;	Peephole 112.b	changed ljmp to sjmp
   0EF7 80 39              1105 	sjmp	00110$
   0EF9                    1106 00102$:
                           1107 ;	FatDrivers/diskio.c:184: if( Stat & STA_NOINIT )
                           1108 ;	genAssign
   0EF9 90 00 06           1109 	mov	dptr,#_Stat
   0EFC E0                 1110 	movx	a,@dptr
                           1111 ;	genAnd
   0EFD FA                 1112 	mov	r2,a
                           1113 ;	Peephole 105	removed redundant mov
                           1114 ;	genIfxJump
                           1115 ;	Peephole 108.d	removed ljmp by inverse jump logic
   0EFE 30 E0 05           1116 	jnb	acc.0,00104$
                           1117 ;	Peephole 300	removed redundant label 00117$
                           1118 ;	FatDrivers/diskio.c:185: return RES_NOTRDY;
                           1119 ;	genRet
   0F01 75 82 03           1120 	mov	dpl,#0x03
                           1121 ;	Peephole 112.b	changed ljmp to sjmp
   0F04 80 2C              1122 	sjmp	00110$
   0F06                    1123 00104$:
                           1124 ;	FatDrivers/diskio.c:187: res = RES_ERROR;
                           1125 ;	genAssign
   0F06 7A 01              1126 	mov	r2,#0x01
                           1127 ;	FatDrivers/diskio.c:189: switch( ctrl )
                           1128 ;	genCmpEq
   0F08 A8 10              1129 	mov	r0,_bp
   0F0A 18                 1130 	dec	r0
   0F0B 18                 1131 	dec	r0
   0F0C 18                 1132 	dec	r0
                           1133 ;	gencjneshort
                           1134 ;	Peephole 112.b	changed ljmp to sjmp
                           1135 ;	Peephole 198.b	optimized misc jump sequence
   0F0D B6 00 12           1136 	cjne	@r0,#0x00,00108$
                           1137 ;	Peephole 200.b	removed redundant sjmp
                           1138 ;	Peephole 300	removed redundant label 00118$
                           1139 ;	Peephole 300	removed redundant label 00119$
                           1140 ;	FatDrivers/diskio.c:193: Enable_SD_Card();
                           1141 ;	genAssign
   0F10 C2 91              1142 	clr	_P1_1
                           1143 ;	FatDrivers/diskio.c:194: if( SD_WaitForReady() == 0xFF )
                           1144 ;	genCall
   0F12 C0 02              1145 	push	ar2
   0F14 12 17 3C           1146 	lcall	_SD_WaitForReady
   0F17 AB 82              1147 	mov	r3,dpl
   0F19 D0 02              1148 	pop	ar2
                           1149 ;	genCmpEq
                           1150 ;	gencjneshort
                           1151 ;	Peephole 112.b	changed ljmp to sjmp
                           1152 ;	Peephole 198.b	optimized misc jump sequence
   0F1B BB FF 06           1153 	cjne	r3,#0xFF,00109$
                           1154 ;	Peephole 200.b	removed redundant sjmp
                           1155 ;	Peephole 300	removed redundant label 00120$
                           1156 ;	Peephole 300	removed redundant label 00121$
                           1157 ;	FatDrivers/diskio.c:195: res = RES_OK;
                           1158 ;	genAssign
   0F1E 7A 00              1159 	mov	r2,#0x00
                           1160 ;	FatDrivers/diskio.c:196: break;
                           1161 ;	FatDrivers/diskio.c:198: default:
                           1162 ;	Peephole 112.b	changed ljmp to sjmp
   0F20 80 02              1163 	sjmp	00109$
   0F22                    1164 00108$:
                           1165 ;	FatDrivers/diskio.c:199: res = RES_PARERR;
                           1166 ;	genAssign
   0F22 7A 04              1167 	mov	r2,#0x04
                           1168 ;	FatDrivers/diskio.c:201: }
   0F24                    1169 00109$:
                           1170 ;	FatDrivers/diskio.c:203: Disable_SD_Card();
                           1171 ;	genAssign
   0F24 D2 91              1172 	setb	_P1_1
                           1173 ;	FatDrivers/diskio.c:204: SPI_Byte( 0xFF );
                           1174 ;	genCall
   0F26 75 82 FF           1175 	mov	dpl,#0xFF
   0F29 C0 02              1176 	push	ar2
   0F2B 12 03 AD           1177 	lcall	_SPI_Byte
   0F2E D0 02              1178 	pop	ar2
                           1179 ;	FatDrivers/diskio.c:205: return res;
                           1180 ;	genRet
   0F30 8A 82              1181 	mov	dpl,r2
   0F32                    1182 00110$:
   0F32 D0 10              1183 	pop	_bp
   0F34 22                 1184 	ret
                           1185 	.area CSEG    (CODE)
                           1186 	.area CONST   (CODE)
                           1187 	.area XINIT   (CODE)
