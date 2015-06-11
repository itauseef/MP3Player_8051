                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : FreeWare ANSI-C Compiler
                              3 ; Version 2.6.0 #4309 (Jul 28 2006)
                              4 ; This file generated Sat May 02 15:12:59 2015
                              5 ;--------------------------------------------------------
                              6 	.module main
                              7 	.optsdcc -mmcs51 --model-small
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _main
                             13 	.globl _P5_7
                             14 	.globl _P5_6
                             15 	.globl _P5_5
                             16 	.globl _P5_4
                             17 	.globl _P5_3
                             18 	.globl _P5_2
                             19 	.globl _P5_1
                             20 	.globl _P5_0
                             21 	.globl _P4_7
                             22 	.globl _P4_6
                             23 	.globl _P4_5
                             24 	.globl _P4_4
                             25 	.globl _P4_3
                             26 	.globl _P4_2
                             27 	.globl _P4_1
                             28 	.globl _P4_0
                             29 	.globl _PX0L
                             30 	.globl _PT0L
                             31 	.globl _PX1L
                             32 	.globl _PT1L
                             33 	.globl _PLS
                             34 	.globl _PT2L
                             35 	.globl _PPCL
                             36 	.globl _EC
                             37 	.globl _CCF0
                             38 	.globl _CCF1
                             39 	.globl _CCF2
                             40 	.globl _CCF3
                             41 	.globl _CCF4
                             42 	.globl _CR
                             43 	.globl _CF
                             44 	.globl _TF2
                             45 	.globl _EXF2
                             46 	.globl _RCLK
                             47 	.globl _TCLK
                             48 	.globl _EXEN2
                             49 	.globl _TR2
                             50 	.globl _C_T2
                             51 	.globl _CP_RL2
                             52 	.globl _T2CON_7
                             53 	.globl _T2CON_6
                             54 	.globl _T2CON_5
                             55 	.globl _T2CON_4
                             56 	.globl _T2CON_3
                             57 	.globl _T2CON_2
                             58 	.globl _T2CON_1
                             59 	.globl _T2CON_0
                             60 	.globl _PT2
                             61 	.globl _ET2
                             62 	.globl _CY
                             63 	.globl _AC
                             64 	.globl _F0
                             65 	.globl _RS1
                             66 	.globl _RS0
                             67 	.globl _OV
                             68 	.globl _F1
                             69 	.globl _P
                             70 	.globl _PS
                             71 	.globl _PT1
                             72 	.globl _PX1
                             73 	.globl _PT0
                             74 	.globl _PX0
                             75 	.globl _RD
                             76 	.globl _WR
                             77 	.globl _T1
                             78 	.globl _T0
                             79 	.globl _INT1
                             80 	.globl _INT0
                             81 	.globl _TXD
                             82 	.globl _RXD
                             83 	.globl _P3_7
                             84 	.globl _P3_6
                             85 	.globl _P3_5
                             86 	.globl _P3_4
                             87 	.globl _P3_3
                             88 	.globl _P3_2
                             89 	.globl _P3_1
                             90 	.globl _P3_0
                             91 	.globl _EA
                             92 	.globl _ES
                             93 	.globl _ET1
                             94 	.globl _EX1
                             95 	.globl _ET0
                             96 	.globl _EX0
                             97 	.globl _P2_7
                             98 	.globl _P2_6
                             99 	.globl _P2_5
                            100 	.globl _P2_4
                            101 	.globl _P2_3
                            102 	.globl _P2_2
                            103 	.globl _P2_1
                            104 	.globl _P2_0
                            105 	.globl _SM0
                            106 	.globl _SM1
                            107 	.globl _SM2
                            108 	.globl _REN
                            109 	.globl _TB8
                            110 	.globl _RB8
                            111 	.globl _TI
                            112 	.globl _RI
                            113 	.globl _P1_7
                            114 	.globl _P1_6
                            115 	.globl _P1_5
                            116 	.globl _P1_4
                            117 	.globl _P1_3
                            118 	.globl _P1_2
                            119 	.globl _P1_1
                            120 	.globl _P1_0
                            121 	.globl _TF1
                            122 	.globl _TR1
                            123 	.globl _TF0
                            124 	.globl _TR0
                            125 	.globl _IE1
                            126 	.globl _IT1
                            127 	.globl _IE0
                            128 	.globl _IT0
                            129 	.globl _P0_7
                            130 	.globl _P0_6
                            131 	.globl _P0_5
                            132 	.globl _P0_4
                            133 	.globl _P0_3
                            134 	.globl _P0_2
                            135 	.globl _P0_1
                            136 	.globl _P0_0
                            137 	.globl _EECON
                            138 	.globl _KBF
                            139 	.globl _KBE
                            140 	.globl _KBLS
                            141 	.globl _BRL
                            142 	.globl _BDRCON
                            143 	.globl _T2MOD
                            144 	.globl _SPDAT
                            145 	.globl _SPSTA
                            146 	.globl _SPCON
                            147 	.globl _SADEN
                            148 	.globl _SADDR
                            149 	.globl _WDTPRG
                            150 	.globl _WDTRST
                            151 	.globl _P5
                            152 	.globl _P4
                            153 	.globl _IPH1
                            154 	.globl _IPL1
                            155 	.globl _IPH0
                            156 	.globl _IPL0
                            157 	.globl _IEN1
                            158 	.globl _IEN0
                            159 	.globl _CMOD
                            160 	.globl _CL
                            161 	.globl _CH
                            162 	.globl _CCON
                            163 	.globl _CCAPM4
                            164 	.globl _CCAPM3
                            165 	.globl _CCAPM2
                            166 	.globl _CCAPM1
                            167 	.globl _CCAPM0
                            168 	.globl _CCAP4L
                            169 	.globl _CCAP3L
                            170 	.globl _CCAP2L
                            171 	.globl _CCAP1L
                            172 	.globl _CCAP0L
                            173 	.globl _CCAP4H
                            174 	.globl _CCAP3H
                            175 	.globl _CCAP2H
                            176 	.globl _CCAP1H
                            177 	.globl _CCAP0H
                            178 	.globl _CKCKON1
                            179 	.globl _CKCKON0
                            180 	.globl _CKRL
                            181 	.globl _AUXR1
                            182 	.globl _AUXR
                            183 	.globl _TH2
                            184 	.globl _TL2
                            185 	.globl _RCAP2H
                            186 	.globl _RCAP2L
                            187 	.globl _T2CON
                            188 	.globl _B
                            189 	.globl _ACC
                            190 	.globl _PSW
                            191 	.globl _IP
                            192 	.globl _P3
                            193 	.globl _IE
                            194 	.globl _P2
                            195 	.globl _SBUF
                            196 	.globl _SCON
                            197 	.globl _P1
                            198 	.globl _TH1
                            199 	.globl _TH0
                            200 	.globl _TL1
                            201 	.globl _TL0
                            202 	.globl _TMOD
                            203 	.globl _TCON
                            204 	.globl _PCON
                            205 	.globl _DPH
                            206 	.globl _DPL
                            207 	.globl _SP
                            208 	.globl _P0
                            209 	.globl _xbuffer
                            210 	.globl _SDCard
                            211 	.globl _CardType
                            212 	.globl _Stat
                            213 	.globl _ChooseFile
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
   000E                     427 _ChooseFile_fs_1_1:
   000E                     428 	.ds 2
                            429 ;--------------------------------------------------------
                            430 ; overlayable items in internal ram 
                            431 ;--------------------------------------------------------
                            432 	.area OSEG    (OVR,DATA)
                            433 ;--------------------------------------------------------
                            434 ; Stack segment in internal ram 
                            435 ;--------------------------------------------------------
                            436 	.area	SSEG	(DATA)
   0021                     437 __start__stack:
   0021                     438 	.ds	1
                            439 
                            440 ;--------------------------------------------------------
                            441 ; indirectly addressable internal ram data
                            442 ;--------------------------------------------------------
                            443 	.area ISEG    (DATA)
                            444 ;--------------------------------------------------------
                            445 ; bit data
                            446 ;--------------------------------------------------------
                            447 	.area BSEG    (BIT)
                            448 ;--------------------------------------------------------
                            449 ; paged external ram data
                            450 ;--------------------------------------------------------
                            451 	.area PSEG    (PAG,XDATA)
                            452 ;--------------------------------------------------------
                            453 ; external ram data
                            454 ;--------------------------------------------------------
                            455 	.area XSEG    (XDATA)
                    F000    456 _lcdinstwrptr	=	0xf000
                    F100    457 _lcdinstrdptr	=	0xf100
                    F200    458 _lcddatawrptr	=	0xf200
                    F300    459 _lcddatardptr	=	0xf300
   000A                     460 _Stat::
   000A                     461 	.ds 1
                    1000    462 _CardType	=	0x1000
                    2000    463 _SDCard	=	0x2000
                    3000    464 _xbuffer	=	0x3000
   000B                     465 _ChooseFile_finfo_1_1:
   000B                     466 	.ds 22
   0021                     467 _ChooseFile_selectedfile_1_1:
   0021                     468 	.ds 27
   003C                     469 _ChooseFile_dirs_1_1:
   003C                     470 	.ds 19
   004F                     471 _ChooseFile_clust_1_1:
   004F                     472 	.ds 4
   0053                     473 _ChooseFile_res_1_1:
   0053                     474 	.ds 1
   0054                     475 _ChooseFile_t1_1_1:
   0054                     476 	.ds 1
   0055                     477 _ChooseFile_t2_1_1:
   0055                     478 	.ds 1
   0056                     479 _ChooseFile_t3_1_1:
   0056                     480 	.ds 1
   0057                     481 _ChooseFile_sectorn_1_1:
   0057                     482 	.ds 4
   005B                     483 _ChooseFile_findstring_1_1:
   005B                     484 	.ds 120
                            485 ;--------------------------------------------------------
                            486 ; external initialized ram data
                            487 ;--------------------------------------------------------
                            488 	.area XISEG   (XDATA)
                            489 	.area HOME    (CODE)
                            490 	.area GSINIT0 (CODE)
                            491 	.area GSINIT1 (CODE)
                            492 	.area GSINIT2 (CODE)
                            493 	.area GSINIT3 (CODE)
                            494 	.area GSINIT4 (CODE)
                            495 	.area GSINIT5 (CODE)
                            496 	.area GSINIT  (CODE)
                            497 	.area GSFINAL (CODE)
                            498 	.area CSEG    (CODE)
                            499 ;--------------------------------------------------------
                            500 ; interrupt vector 
                            501 ;--------------------------------------------------------
                            502 	.area HOME    (CODE)
   0000                     503 __interrupt_vect:
   0000 02 00 03            504 	ljmp	__sdcc_gsinit_startup
                            505 ;--------------------------------------------------------
                            506 ; global & static initialisations
                            507 ;--------------------------------------------------------
                            508 	.area HOME    (CODE)
                            509 	.area GSINIT  (CODE)
                            510 	.area GSFINAL (CODE)
                            511 	.area GSINIT  (CODE)
                            512 	.globl __sdcc_gsinit_startup
                            513 	.globl __sdcc_program_startup
                            514 	.globl __start__stack
                            515 	.globl __mcs51_genXINIT
                            516 	.globl __mcs51_genXRAMCLEAR
                            517 	.globl __mcs51_genRAMCLEAR
                            518 	.area GSFINAL (CODE)
   005C 02 55 E0            519 	ljmp	__sdcc_program_startup
                            520 ;--------------------------------------------------------
                            521 ; Home
                            522 ;--------------------------------------------------------
                            523 	.area HOME    (CODE)
                            524 	.area CSEG    (CODE)
   55E0                     525 __sdcc_program_startup:
   55E0 12 55 E5            526 	lcall	_main
                            527 ;	return from main will lock up
   55E3 80 FE               528 	sjmp .
                            529 ;--------------------------------------------------------
                            530 ; code
                            531 ;--------------------------------------------------------
                            532 	.area CSEG    (CODE)
                            533 ;------------------------------------------------------------
                            534 ;Allocation info for local variables in function 'main'
                            535 ;------------------------------------------------------------
                            536 ;i                         Allocated to registers r4 r5 
                            537 ;nvramptr                  Allocated to registers r2 r3 
                            538 ;------------------------------------------------------------
                            539 ;	main.c:38: void main()
                            540 ;	-----------------------------------------
                            541 ;	 function main
                            542 ;	-----------------------------------------
   55E5                     543 _main:
                    0002    544 	ar2 = 0x02
                    0003    545 	ar3 = 0x03
                    0004    546 	ar4 = 0x04
                    0005    547 	ar5 = 0x05
                    0006    548 	ar6 = 0x06
                    0007    549 	ar7 = 0x07
                    0000    550 	ar0 = 0x00
                    0001    551 	ar1 = 0x01
                            552 ;	main.c:44: _sdcc_external_startup();
                            553 ;	genCall
   55E5 12 55 C6            554 	lcall	__sdcc_external_startup
                            555 ;	main.c:48: for(i=0; i<0x8000; i++)
                            556 ;	genAssign
   55E8 7A 00               557 	mov	r2,#0x00
   55EA 7B 00               558 	mov	r3,#0x00
                            559 ;	genAssign
   55EC 7C 00               560 	mov	r4,#0x00
   55EE 7D 80               561 	mov	r5,#0x80
   55F0                     562 00121$:
                            563 ;	main.c:49: *nvramptr++=0;
                            564 ;	genPointerSet
                            565 ;     genFarPointerSet
   55F0 8A 82               566 	mov	dpl,r2
   55F2 8B 83               567 	mov	dph,r3
                            568 ;	Peephole 181	changed mov to clr
   55F4 E4                  569 	clr	a
   55F5 F0                  570 	movx	@dptr,a
   55F6 A3                  571 	inc	dptr
   55F7 AA 82               572 	mov	r2,dpl
   55F9 AB 83               573 	mov	r3,dph
                            574 ;	genMinus
                            575 ;	genMinusDec
   55FB 1C                  576 	dec	r4
   55FC BC FF 01            577 	cjne	r4,#0xff,00131$
   55FF 1D                  578 	dec	r5
   5600                     579 00131$:
                            580 ;	main.c:48: for(i=0; i<0x8000; i++)
                            581 ;	genIfx
   5600 EC                  582 	mov	a,r4
   5601 4D                  583 	orl	a,r5
                            584 ;	genIfxJump
                            585 ;	Peephole 108.b	removed ljmp by inverse jump logic
   5602 70 EC               586 	jnz	00121$
                            587 ;	Peephole 300	removed redundant label 00132$
                            588 ;	main.c:52: clrvtscreen();
                            589 ;	genCall
   5604 12 5E 2B            590 	lcall	_clrvtscreen
                            591 ;	main.c:57: lcdputstr("\MP3 Player/");
                            592 ;	genCall
                            593 ;	Peephole 182.a	used 16 bit load of DPTR
   5607 90 73 3F            594 	mov	dptr,#__str_0
   560A 75 F0 80            595 	mov	b,#0x80
   560D 12 03 48            596 	lcall	_lcdputstr
                            597 ;	main.c:60: if( f_mount( 0, &SDCard ) )
                            598 ;	genIpush
                            599 ;	Peephole 181	changed mov to clr
   5610 E4                  600 	clr	a
   5611 C0 E0               601 	push	acc
   5613 74 20               602 	mov	a,#0x20
   5615 C0 E0               603 	push	acc
                            604 ;	Peephole 181	changed mov to clr
   5617 E4                  605 	clr	a
   5618 C0 E0               606 	push	acc
                            607 ;	genCall
   561A 75 82 00            608 	mov	dpl,#0x00
   561D 12 33 47            609 	lcall	_f_mount
   5620 AA 82               610 	mov	r2,dpl
   5622 15 81               611 	dec	sp
   5624 15 81               612 	dec	sp
   5626 15 81               613 	dec	sp
                            614 ;	genIfx
   5628 EA                  615 	mov	a,r2
                            616 ;	genIfxJump
                            617 ;	Peephole 108.c	removed ljmp by inverse jump logic
   5629 60 02               618 	jz	00105$
                            619 ;	Peephole 300	removed redundant label 00133$
                            620 ;	main.c:65: while( 1 );
   562B                     621 00102$:
                            622 ;	Peephole 112.b	changed ljmp to sjmp
   562B 80 FE               623 	sjmp	00102$
   562D                     624 00105$:
                            625 ;	main.c:69: if(disk_initialize(0) & STA_NOINIT)
                            626 ;	genCall
   562D 75 82 00            627 	mov	dpl,#0x00
   5630 12 0D 0B            628 	lcall	_disk_initialize
   5633 E5 82               629 	mov	a,dpl
                            630 ;	genAnd
                            631 ;	genIfxJump
                            632 ;	Peephole 108.d	removed ljmp by inverse jump logic
   5635 30 E0 02            633 	jnb	acc.0,00110$
                            634 ;	Peephole 300	removed redundant label 00134$
                            635 ;	main.c:74: while(1);
   5638                     636 00107$:
                            637 ;	Peephole 112.b	changed ljmp to sjmp
   5638 80 FE               638 	sjmp	00107$
   563A                     639 00110$:
                            640 ;	main.c:77: if (!STA013Init())
                            641 ;	genCall
   563A 12 04 58            642 	lcall	_STA013Init
   563D E5 82               643 	mov	a,dpl
                            644 ;	genIfx
                            645 ;	genIfxJump
                            646 ;	Peephole 108.b	removed ljmp by inverse jump logic
   563F 70 02               647 	jnz	00117$
                            648 ;	Peephole 300	removed redundant label 00135$
                            649 ;	main.c:82: while(1);
   5641                     650 00112$:
                            651 ;	main.c:86: while(1)
                            652 ;	Peephole 112.b	changed ljmp to sjmp
   5641 80 FE               653 	sjmp	00112$
   5643                     654 00117$:
                            655 ;	main.c:88: starlines(1);
                            656 ;	genCall
   5643 75 82 01            657 	mov	dpl,#0x01
   5646 12 5E 86            658 	lcall	_starlines
                            659 ;	main.c:89: printf_tiny("\r\n\033[5;31;47m*************************ESD FINAL PROJECT****************************\033[0m");
                            660 ;	genIpush
   5649 74 4B               661 	mov	a,#__str_1
   564B C0 E0               662 	push	acc
   564D 74 73               663 	mov	a,#(__str_1 >> 8)
   564F C0 E0               664 	push	acc
                            665 ;	genCall
   5651 12 5E BD            666 	lcall	_printf_tiny
   5654 15 81               667 	dec	sp
   5656 15 81               668 	dec	sp
                            669 ;	main.c:90: starlines(1);
                            670 ;	genCall
   5658 75 82 01            671 	mov	dpl,#0x01
   565B 12 5E 86            672 	lcall	_starlines
                            673 ;	main.c:94: i2cReceive(Clock_Address,0x00));
                            674 ;	genIpush
                            675 ;	Peephole 181	changed mov to clr
   565E E4                  676 	clr	a
   565F C0 E0               677 	push	acc
                            678 ;	genCall
   5661 75 82 D0            679 	mov	dpl,#0xD0
   5664 12 01 09            680 	lcall	_i2cReceive
   5667 AA 82               681 	mov	r2,dpl
   5669 15 81               682 	dec	sp
                            683 ;	genCast
   566B 7B 00               684 	mov	r3,#0x00
                            685 ;	main.c:93: i2cReceive(Clock_Address,0x01),
                            686 ;	genIpush
   566D C0 02               687 	push	ar2
   566F C0 03               688 	push	ar3
   5671 74 01               689 	mov	a,#0x01
   5673 C0 E0               690 	push	acc
                            691 ;	genCall
   5675 75 82 D0            692 	mov	dpl,#0xD0
   5678 12 01 09            693 	lcall	_i2cReceive
   567B AC 82               694 	mov	r4,dpl
   567D 15 81               695 	dec	sp
   567F D0 03               696 	pop	ar3
   5681 D0 02               697 	pop	ar2
                            698 ;	genCast
   5683 7D 00               699 	mov	r5,#0x00
                            700 ;	main.c:92: i2cReceive(Clock_Address,0x02),
                            701 ;	genIpush
   5685 C0 02               702 	push	ar2
   5687 C0 03               703 	push	ar3
   5689 C0 04               704 	push	ar4
   568B C0 05               705 	push	ar5
   568D 74 02               706 	mov	a,#0x02
   568F C0 E0               707 	push	acc
                            708 ;	genCall
   5691 75 82 D0            709 	mov	dpl,#0xD0
   5694 12 01 09            710 	lcall	_i2cReceive
   5697 AE 82               711 	mov	r6,dpl
   5699 15 81               712 	dec	sp
   569B D0 05               713 	pop	ar5
   569D D0 04               714 	pop	ar4
   569F D0 03               715 	pop	ar3
   56A1 D0 02               716 	pop	ar2
                            717 ;	genCast
   56A3 7F 00               718 	mov	r7,#0x00
                            719 ;	main.c:91: printf_tiny("\r\nThe Time is : \0337%x:%x:%x\r\n",
                            720 ;	genIpush
   56A5 C0 02               721 	push	ar2
   56A7 C0 03               722 	push	ar3
                            723 ;	genIpush
   56A9 C0 04               724 	push	ar4
   56AB C0 05               725 	push	ar5
                            726 ;	genIpush
   56AD C0 06               727 	push	ar6
   56AF C0 07               728 	push	ar7
                            729 ;	genIpush
   56B1 74 A2               730 	mov	a,#__str_2
   56B3 C0 E0               731 	push	acc
   56B5 74 73               732 	mov	a,#(__str_2 >> 8)
   56B7 C0 E0               733 	push	acc
                            734 ;	genCall
   56B9 12 5E BD            735 	lcall	_printf_tiny
   56BC E5 81               736 	mov	a,sp
   56BE 24 F8               737 	add	a,#0xf8
   56C0 F5 81               738 	mov	sp,a
                            739 ;	main.c:96: ChooseFile("/");
                            740 ;	genCall
                            741 ;	Peephole 182.a	used 16 bit load of DPTR
   56C2 90 73 BF            742 	mov	dptr,#__str_3
   56C5 75 F0 80            743 	mov	b,#0x80
   56C8 12 56 CE            744 	lcall	_ChooseFile
   56CB 02 56 43            745 	ljmp	00117$
                            746 ;	Peephole 259.b	removed redundant label 00122$ and ret
                            747 ;
                            748 ;------------------------------------------------------------
                            749 ;Allocation info for local variables in function 'ChooseFile'
                            750 ;------------------------------------------------------------
                            751 ;path                      Allocated to stack - offset 1
                            752 ;i                         Allocated to registers r2 
                            753 ;j                         Allocated to registers 
                            754 ;sloc0                     Allocated to stack - offset 4
                            755 ;fs                        Allocated with name '_ChooseFile_fs_1_1'
                            756 ;finfo                     Allocated with name '_ChooseFile_finfo_1_1'
                            757 ;selectedfile              Allocated with name '_ChooseFile_selectedfile_1_1'
                            758 ;dirs                      Allocated with name '_ChooseFile_dirs_1_1'
                            759 ;clust                     Allocated with name '_ChooseFile_clust_1_1'
                            760 ;res                       Allocated with name '_ChooseFile_res_1_1'
                            761 ;t1                        Allocated with name '_ChooseFile_t1_1_1'
                            762 ;t2                        Allocated with name '_ChooseFile_t2_1_1'
                            763 ;t3                        Allocated with name '_ChooseFile_t3_1_1'
                            764 ;sectorn                   Allocated with name '_ChooseFile_sectorn_1_1'
                            765 ;findstring                Allocated with name '_ChooseFile_findstring_1_1'
                            766 ;------------------------------------------------------------
                            767 ;	main.c:100: unsigned char ChooseFile( char *path )
                            768 ;	-----------------------------------------
                            769 ;	 function ChooseFile
                            770 ;	-----------------------------------------
   56CE                     771 _ChooseFile:
   56CE C0 10               772 	push	_bp
   56D0 85 81 10            773 	mov	_bp,sp
                            774 ;     genReceive
   56D3 C0 82               775 	push	dpl
   56D5 C0 83               776 	push	dph
   56D7 C0 F0               777 	push	b
   56D9 E5 81               778 	mov	a,sp
   56DB 24 07               779 	add	a,#0x07
   56DD F5 81               780 	mov	sp,a
                            781 ;	main.c:117: if(disk_read(0, SDCard.win, SDCard.dirbase, 1) != RES_OK)
                            782 ;	genPointerGet
                            783 ;	genFarPointerGet
   56DF 90 20 0C            784 	mov	dptr,#(_SDCard + 0x000c)
   56E2 E0                  785 	movx	a,@dptr
   56E3 FD                  786 	mov	r5,a
   56E4 A3                  787 	inc	dptr
   56E5 E0                  788 	movx	a,@dptr
   56E6 FE                  789 	mov	r6,a
   56E7 A3                  790 	inc	dptr
   56E8 E0                  791 	movx	a,@dptr
   56E9 FF                  792 	mov	r7,a
   56EA A3                  793 	inc	dptr
   56EB E0                  794 	movx	a,@dptr
   56EC FA                  795 	mov	r2,a
                            796 ;	genIpush
   56ED 74 01               797 	mov	a,#0x01
   56EF C0 E0               798 	push	acc
                            799 ;	genIpush
   56F1 C0 05               800 	push	ar5
   56F3 C0 06               801 	push	ar6
   56F5 C0 07               802 	push	ar7
   56F7 C0 02               803 	push	ar2
                            804 ;	genIpush
   56F9 74 20               805 	mov	a,#(_SDCard + 0x0020)
   56FB C0 E0               806 	push	acc
   56FD 74 20               807 	mov	a,#((_SDCard + 0x0020) >> 8)
   56FF C0 E0               808 	push	acc
                            809 ;	Peephole 181	changed mov to clr
   5701 E4                  810 	clr	a
   5702 C0 E0               811 	push	acc
                            812 ;	genCall
   5704 75 82 00            813 	mov	dpl,#0x00
   5707 12 0D 3E            814 	lcall	_disk_read
   570A AA 82               815 	mov	r2,dpl
   570C E5 81               816 	mov	a,sp
   570E 24 F8               817 	add	a,#0xf8
   5710 F5 81               818 	mov	sp,a
                            819 ;	genCmpEq
                            820 ;	gencjneshort
   5712 BA 00 02            821 	cjne	r2,#0x00,00224$
                            822 ;	Peephole 112.b	changed ljmp to sjmp
   5715 80 06               823 	sjmp	00102$
   5717                     824 00224$:
                            825 ;	main.c:122: return 1;
                            826 ;	genRet
   5717 75 82 01            827 	mov	dpl,#0x01
   571A 02 5D D3            828 	ljmp	00164$
   571D                     829 00102$:
                            830 ;	main.c:126: if( f_opendir(&dirs, path) == FR_OK )
                            831 ;	genIpush
   571D A8 10               832 	mov	r0,_bp
   571F 08                  833 	inc	r0
   5720 E6                  834 	mov	a,@r0
   5721 C0 E0               835 	push	acc
   5723 08                  836 	inc	r0
   5724 E6                  837 	mov	a,@r0
   5725 C0 E0               838 	push	acc
   5727 08                  839 	inc	r0
   5728 E6                  840 	mov	a,@r0
   5729 C0 E0               841 	push	acc
                            842 ;	genCall
                            843 ;	Peephole 182.a	used 16 bit load of DPTR
   572B 90 00 3C            844 	mov	dptr,#_ChooseFile_dirs_1_1
   572E 75 F0 00            845 	mov	b,#0x00
   5731 12 51 57            846 	lcall	_f_opendir
   5734 AA 82               847 	mov	r2,dpl
   5736 15 81               848 	dec	sp
   5738 15 81               849 	dec	sp
   573A 15 81               850 	dec	sp
                            851 ;	genIfx
   573C EA                  852 	mov	a,r2
                            853 ;	genIfxJump
   573D 60 03               854 	jz	00225$
   573F 02 5D CB            855 	ljmp	00162$
   5742                     856 00225$:
                            857 ;	main.c:128: printf_tiny("\r\n Root Directory - SD Card %s\r\n\n", path );
                            858 ;	genIpush
   5742 A8 10               859 	mov	r0,_bp
   5744 08                  860 	inc	r0
   5745 E6                  861 	mov	a,@r0
   5746 C0 E0               862 	push	acc
   5748 08                  863 	inc	r0
   5749 E6                  864 	mov	a,@r0
   574A C0 E0               865 	push	acc
   574C 08                  866 	inc	r0
   574D E6                  867 	mov	a,@r0
   574E C0 E0               868 	push	acc
                            869 ;	genIpush
   5750 74 C1               870 	mov	a,#__str_4
   5752 C0 E0               871 	push	acc
   5754 74 73               872 	mov	a,#(__str_4 >> 8)
   5756 C0 E0               873 	push	acc
                            874 ;	genCall
   5758 12 5E BD            875 	lcall	_printf_tiny
   575B E5 81               876 	mov	a,sp
   575D 24 FB               877 	add	a,#0xfb
   575F F5 81               878 	mov	sp,a
                            879 ;	main.c:129: while( (f_readdir(&dirs, &finfo) == FR_OK) && finfo.fname[0] )
                            880 ;	genAssign
   5761 7A 01               881 	mov	r2,#0x01
   5763                     882 00104$:
                            883 ;	genIpush
   5763 C0 02               884 	push	ar2
   5765 74 0B               885 	mov	a,#_ChooseFile_finfo_1_1
   5767 C0 E0               886 	push	acc
   5769 74 00               887 	mov	a,#(_ChooseFile_finfo_1_1 >> 8)
   576B C0 E0               888 	push	acc
                            889 ;	Peephole 181	changed mov to clr
   576D E4                  890 	clr	a
   576E C0 E0               891 	push	acc
                            892 ;	genCall
                            893 ;	Peephole 182.a	used 16 bit load of DPTR
   5770 90 00 3C            894 	mov	dptr,#_ChooseFile_dirs_1_1
   5773 75 F0 00            895 	mov	b,#0x00
   5776 12 53 5E            896 	lcall	_f_readdir
   5779 AB 82               897 	mov	r3,dpl
   577B 15 81               898 	dec	sp
   577D 15 81               899 	dec	sp
   577F 15 81               900 	dec	sp
   5781 D0 02               901 	pop	ar2
                            902 ;	genIfx
   5783 EB                  903 	mov	a,r3
                            904 ;	genIfxJump
   5784 60 03               905 	jz	00226$
   5786 02 58 A3            906 	ljmp	00106$
   5789                     907 00226$:
                            908 ;	genPointerGet
                            909 ;	genFarPointerGet
   5789 90 00 14            910 	mov	dptr,#(_ChooseFile_finfo_1_1 + 0x0009)
   578C E0                  911 	movx	a,@dptr
                            912 ;	genIfxJump
   578D 70 03               913 	jnz	00227$
   578F 02 58 A3            914 	ljmp	00106$
   5792                     915 00227$:
                            916 ;	main.c:131: printf_tiny("%d )\t",i++);                          // Printing Index Number
                            917 ;	genAssign
   5792 8A 03               918 	mov	ar3,r2
                            919 ;	genPlus
                            920 ;     genPlusIncr
   5794 0A                  921 	inc	r2
                            922 ;	genCast
   5795 7C 00               923 	mov	r4,#0x00
                            924 ;	genIpush
   5797 C0 02               925 	push	ar2
   5799 C0 03               926 	push	ar3
   579B C0 04               927 	push	ar4
                            928 ;	genIpush
   579D 74 E3               929 	mov	a,#__str_5
   579F C0 E0               930 	push	acc
   57A1 74 73               931 	mov	a,#(__str_5 >> 8)
   57A3 C0 E0               932 	push	acc
                            933 ;	genCall
   57A5 12 5E BD            934 	lcall	_printf_tiny
   57A8 E5 81               935 	mov	a,sp
   57AA 24 FC               936 	add	a,#0xfc
   57AC F5 81               937 	mov	sp,a
   57AE D0 02               938 	pop	ar2
                            939 ;	main.c:132: putchar('[');                                       // Printing File/Folder Attributes
                            940 ;	genCall
   57B0 75 82 5B            941 	mov	dpl,#0x5B
   57B3 C0 02               942 	push	ar2
   57B5 12 08 BA            943 	lcall	_putchar
   57B8 D0 02               944 	pop	ar2
                            945 ;	main.c:133: putchar(( finfo.fattrib & AM_RDO ) ? 'r' : '.');
                            946 ;	genPointerGet
                            947 ;	genFarPointerGet
   57BA 90 00 13            948 	mov	dptr,#(_ChooseFile_finfo_1_1 + 0x0008)
   57BD E0                  949 	movx	a,@dptr
                            950 ;	genAnd
   57BE FB                  951 	mov	r3,a
                            952 ;	Peephole 105	removed redundant mov
                            953 ;	genIfxJump
                            954 ;	Peephole 108.d	removed ljmp by inverse jump logic
   57BF 30 E0 04            955 	jnb	acc.0,00166$
                            956 ;	Peephole 300	removed redundant label 00228$
                            957 ;	genAssign
   57C2 7B 72               958 	mov	r3,#0x72
                            959 ;	Peephole 112.b	changed ljmp to sjmp
   57C4 80 02               960 	sjmp	00167$
   57C6                     961 00166$:
                            962 ;	genAssign
   57C6 7B 2E               963 	mov	r3,#0x2E
   57C8                     964 00167$:
                            965 ;	genCall
   57C8 8B 82               966 	mov	dpl,r3
   57CA C0 02               967 	push	ar2
   57CC 12 08 BA            968 	lcall	_putchar
   57CF D0 02               969 	pop	ar2
                            970 ;	main.c:134: putchar(( finfo.fattrib & AM_HID ) ? 'h' : '.');
                            971 ;	genPointerGet
                            972 ;	genFarPointerGet
   57D1 90 00 13            973 	mov	dptr,#(_ChooseFile_finfo_1_1 + 0x0008)
   57D4 E0                  974 	movx	a,@dptr
                            975 ;	genAnd
   57D5 FB                  976 	mov	r3,a
                            977 ;	Peephole 105	removed redundant mov
                            978 ;	genIfxJump
                            979 ;	Peephole 108.d	removed ljmp by inverse jump logic
   57D6 30 E1 04            980 	jnb	acc.1,00168$
                            981 ;	Peephole 300	removed redundant label 00229$
                            982 ;	genAssign
   57D9 7B 68               983 	mov	r3,#0x68
                            984 ;	Peephole 112.b	changed ljmp to sjmp
   57DB 80 02               985 	sjmp	00169$
   57DD                     986 00168$:
                            987 ;	genAssign
   57DD 7B 2E               988 	mov	r3,#0x2E
   57DF                     989 00169$:
                            990 ;	genCall
   57DF 8B 82               991 	mov	dpl,r3
   57E1 C0 02               992 	push	ar2
   57E3 12 08 BA            993 	lcall	_putchar
   57E6 D0 02               994 	pop	ar2
                            995 ;	main.c:135: putchar(( finfo.fattrib & AM_SYS ) ? 's' : '.');
                            996 ;	genPointerGet
                            997 ;	genFarPointerGet
   57E8 90 00 13            998 	mov	dptr,#(_ChooseFile_finfo_1_1 + 0x0008)
   57EB E0                  999 	movx	a,@dptr
                           1000 ;	genAnd
   57EC FB                 1001 	mov	r3,a
                           1002 ;	Peephole 105	removed redundant mov
                           1003 ;	genIfxJump
                           1004 ;	Peephole 108.d	removed ljmp by inverse jump logic
   57ED 30 E2 04           1005 	jnb	acc.2,00170$
                           1006 ;	Peephole 300	removed redundant label 00230$
                           1007 ;	genAssign
   57F0 7B 73              1008 	mov	r3,#0x73
                           1009 ;	Peephole 112.b	changed ljmp to sjmp
   57F2 80 02              1010 	sjmp	00171$
   57F4                    1011 00170$:
                           1012 ;	genAssign
   57F4 7B 2E              1013 	mov	r3,#0x2E
   57F6                    1014 00171$:
                           1015 ;	genCall
   57F6 8B 82              1016 	mov	dpl,r3
   57F8 C0 02              1017 	push	ar2
   57FA 12 08 BA           1018 	lcall	_putchar
   57FD D0 02              1019 	pop	ar2
                           1020 ;	main.c:136: putchar(( finfo.fattrib & AM_VOL ) ? 'v' : '.');
                           1021 ;	genPointerGet
                           1022 ;	genFarPointerGet
   57FF 90 00 13           1023 	mov	dptr,#(_ChooseFile_finfo_1_1 + 0x0008)
   5802 E0                 1024 	movx	a,@dptr
                           1025 ;	genAnd
   5803 FB                 1026 	mov	r3,a
                           1027 ;	Peephole 105	removed redundant mov
                           1028 ;	genIfxJump
                           1029 ;	Peephole 108.d	removed ljmp by inverse jump logic
   5804 30 E3 04           1030 	jnb	acc.3,00172$
                           1031 ;	Peephole 300	removed redundant label 00231$
                           1032 ;	genAssign
   5807 7B 76              1033 	mov	r3,#0x76
                           1034 ;	Peephole 112.b	changed ljmp to sjmp
   5809 80 02              1035 	sjmp	00173$
   580B                    1036 00172$:
                           1037 ;	genAssign
   580B 7B 2E              1038 	mov	r3,#0x2E
   580D                    1039 00173$:
                           1040 ;	genCall
   580D 8B 82              1041 	mov	dpl,r3
   580F C0 02              1042 	push	ar2
   5811 12 08 BA           1043 	lcall	_putchar
   5814 D0 02              1044 	pop	ar2
                           1045 ;	main.c:137: putchar(( finfo.fattrib & AM_LFN ) ? 'l' : '.');
                           1046 ;	genPointerGet
                           1047 ;	genFarPointerGet
   5816 90 00 13           1048 	mov	dptr,#(_ChooseFile_finfo_1_1 + 0x0008)
   5819 E0                 1049 	movx	a,@dptr
                           1050 ;	genAnd
   581A FB                 1051 	mov	r3,a
                           1052 ;	Peephole 105	removed redundant mov
   581B 54 0F              1053 	anl	a,#0x0F
                           1054 ;	Peephole 108.c	removed ljmp by inverse jump logic
   581D 60 04              1055 	jz	00174$
                           1056 ;	Peephole 300	removed redundant label 00232$
                           1057 ;	genAssign
   581F 7B 6C              1058 	mov	r3,#0x6C
                           1059 ;	Peephole 112.b	changed ljmp to sjmp
   5821 80 02              1060 	sjmp	00175$
   5823                    1061 00174$:
                           1062 ;	genAssign
   5823 7B 2E              1063 	mov	r3,#0x2E
   5825                    1064 00175$:
                           1065 ;	genCall
   5825 8B 82              1066 	mov	dpl,r3
   5827 C0 02              1067 	push	ar2
   5829 12 08 BA           1068 	lcall	_putchar
   582C D0 02              1069 	pop	ar2
                           1070 ;	main.c:138: putchar(( finfo.fattrib & AM_DIR ) ? 'd' : '.');
                           1071 ;	genPointerGet
                           1072 ;	genFarPointerGet
   582E 90 00 13           1073 	mov	dptr,#(_ChooseFile_finfo_1_1 + 0x0008)
   5831 E0                 1074 	movx	a,@dptr
                           1075 ;	genAnd
   5832 FB                 1076 	mov	r3,a
                           1077 ;	Peephole 105	removed redundant mov
                           1078 ;	genIfxJump
                           1079 ;	Peephole 108.d	removed ljmp by inverse jump logic
   5833 30 E4 04           1080 	jnb	acc.4,00176$
                           1081 ;	Peephole 300	removed redundant label 00233$
                           1082 ;	genAssign
   5836 7B 64              1083 	mov	r3,#0x64
                           1084 ;	Peephole 112.b	changed ljmp to sjmp
   5838 80 02              1085 	sjmp	00177$
   583A                    1086 00176$:
                           1087 ;	genAssign
   583A 7B 2E              1088 	mov	r3,#0x2E
   583C                    1089 00177$:
                           1090 ;	genCall
   583C 8B 82              1091 	mov	dpl,r3
   583E C0 02              1092 	push	ar2
   5840 12 08 BA           1093 	lcall	_putchar
   5843 D0 02              1094 	pop	ar2
                           1095 ;	main.c:139: putchar(( finfo.fattrib & AM_ARC ) ? 'a' : '.');
                           1096 ;	genPointerGet
                           1097 ;	genFarPointerGet
   5845 90 00 13           1098 	mov	dptr,#(_ChooseFile_finfo_1_1 + 0x0008)
   5848 E0                 1099 	movx	a,@dptr
                           1100 ;	genAnd
   5849 FB                 1101 	mov	r3,a
                           1102 ;	Peephole 105	removed redundant mov
                           1103 ;	genIfxJump
                           1104 ;	Peephole 108.d	removed ljmp by inverse jump logic
   584A 30 E5 04           1105 	jnb	acc.5,00178$
                           1106 ;	Peephole 300	removed redundant label 00234$
                           1107 ;	genAssign
   584D 7B 61              1108 	mov	r3,#0x61
                           1109 ;	Peephole 112.b	changed ljmp to sjmp
   584F 80 02              1110 	sjmp	00179$
   5851                    1111 00178$:
                           1112 ;	genAssign
   5851 7B 2E              1113 	mov	r3,#0x2E
   5853                    1114 00179$:
                           1115 ;	genCall
   5853 8B 82              1116 	mov	dpl,r3
   5855 C0 02              1117 	push	ar2
   5857 12 08 BA           1118 	lcall	_putchar
   585A D0 02              1119 	pop	ar2
                           1120 ;	main.c:140: putchar(']');
                           1121 ;	genCall
   585C 75 82 5D           1122 	mov	dpl,#0x5D
   585F C0 02              1123 	push	ar2
   5861 12 08 BA           1124 	lcall	_putchar
   5864 D0 02              1125 	pop	ar2
                           1126 ;	main.c:141: printf_tiny("%s  %s\r\n", (finfo.fattrib & AM_DIR)?"<DIR>":"     ", finfo.fname );  // Printing File/Folder Name
                           1127 ;	genPointerGet
                           1128 ;	genFarPointerGet
   5866 90 00 13           1129 	mov	dptr,#(_ChooseFile_finfo_1_1 + 0x0008)
   5869 E0                 1130 	movx	a,@dptr
                           1131 ;	genAnd
   586A FB                 1132 	mov	r3,a
                           1133 ;	Peephole 105	removed redundant mov
                           1134 ;	genIfxJump
                           1135 ;	Peephole 108.d	removed ljmp by inverse jump logic
   586B 30 E4 06           1136 	jnb	acc.4,00180$
                           1137 ;	Peephole 300	removed redundant label 00235$
                           1138 ;	genAssign
   586E 7B F2              1139 	mov	r3,#__str_7
   5870 7C 73              1140 	mov	r4,#(__str_7 >> 8)
                           1141 ;	Peephole 112.b	changed ljmp to sjmp
   5872 80 04              1142 	sjmp	00181$
   5874                    1143 00180$:
                           1144 ;	genAssign
   5874 7B F8              1145 	mov	r3,#__str_8
   5876 7C 73              1146 	mov	r4,#(__str_8 >> 8)
   5878                    1147 00181$:
                           1148 ;	genCast
   5878 7D 80              1149 	mov	r5,#0x80
                           1150 ;	genIpush
   587A C0 02              1151 	push	ar2
   587C 74 14              1152 	mov	a,#(_ChooseFile_finfo_1_1 + 0x0009)
   587E C0 E0              1153 	push	acc
   5880 74 00              1154 	mov	a,#((_ChooseFile_finfo_1_1 + 0x0009) >> 8)
   5882 C0 E0              1155 	push	acc
                           1156 ;	Peephole 181	changed mov to clr
   5884 E4                 1157 	clr	a
   5885 C0 E0              1158 	push	acc
                           1159 ;	genIpush
   5887 C0 03              1160 	push	ar3
   5889 C0 04              1161 	push	ar4
   588B C0 05              1162 	push	ar5
                           1163 ;	genIpush
   588D 74 E9              1164 	mov	a,#__str_6
   588F C0 E0              1165 	push	acc
   5891 74 73              1166 	mov	a,#(__str_6 >> 8)
   5893 C0 E0              1167 	push	acc
                           1168 ;	genCall
   5895 12 5E BD           1169 	lcall	_printf_tiny
   5898 E5 81              1170 	mov	a,sp
   589A 24 F8              1171 	add	a,#0xf8
   589C F5 81              1172 	mov	sp,a
   589E D0 02              1173 	pop	ar2
   58A0 02 57 63           1174 	ljmp	00104$
   58A3                    1175 00106$:
                           1176 ;	main.c:143: starlines(1);
                           1177 ;	genCall
   58A3 75 82 01           1178 	mov	dpl,#0x01
   58A6 C0 02              1179 	push	ar2
   58A8 12 5E 86           1180 	lcall	_starlines
   58AB D0 02              1181 	pop	ar2
                           1182 ;	main.c:144: printf_tiny("\r\n\nSelect File:\0337");     // Get Index Number of file to processed from User.
                           1183 ;	genIpush
   58AD C0 02              1184 	push	ar2
   58AF 74 FE              1185 	mov	a,#__str_9
   58B1 C0 E0              1186 	push	acc
   58B3 74 73              1187 	mov	a,#(__str_9 >> 8)
   58B5 C0 E0              1188 	push	acc
                           1189 ;	genCall
   58B7 12 5E BD           1190 	lcall	_printf_tiny
   58BA 15 81              1191 	dec	sp
   58BC 15 81              1192 	dec	sp
   58BE D0 02              1193 	pop	ar2
                           1194 ;	main.c:145: i=getnumbetween(0,i,3);
                           1195 ;	genCast
   58C0 7B 00              1196 	mov	r3,#0x00
                           1197 ;	genIpush
   58C2 74 03              1198 	mov	a,#0x03
   58C4 C0 E0              1199 	push	acc
                           1200 ;	Peephole 181	changed mov to clr
   58C6 E4                 1201 	clr	a
   58C7 C0 E0              1202 	push	acc
                           1203 ;	genIpush
   58C9 C0 02              1204 	push	ar2
   58CB C0 03              1205 	push	ar3
                           1206 ;	genCall
                           1207 ;	Peephole 182.b	used 16 bit load of dptr
   58CD 90 00 00           1208 	mov	dptr,#0x0000
   58D0 12 0C 63           1209 	lcall	_getnumbetween
   58D3 AA 82              1210 	mov	r2,dpl
   58D5 AB 83              1211 	mov	r3,dph
   58D7 E5 81              1212 	mov	a,sp
   58D9 24 FC              1213 	add	a,#0xfc
   58DB F5 81              1214 	mov	sp,a
                           1215 ;	genCast
                           1216 ;	main.c:146: f_opendir(&dirs, path);
                           1217 ;	genIpush
   58DD C0 02              1218 	push	ar2
   58DF A8 10              1219 	mov	r0,_bp
   58E1 08                 1220 	inc	r0
   58E2 E6                 1221 	mov	a,@r0
   58E3 C0 E0              1222 	push	acc
   58E5 08                 1223 	inc	r0
   58E6 E6                 1224 	mov	a,@r0
   58E7 C0 E0              1225 	push	acc
   58E9 08                 1226 	inc	r0
   58EA E6                 1227 	mov	a,@r0
   58EB C0 E0              1228 	push	acc
                           1229 ;	genCall
                           1230 ;	Peephole 182.a	used 16 bit load of DPTR
   58ED 90 00 3C           1231 	mov	dptr,#_ChooseFile_dirs_1_1
   58F0 75 F0 00           1232 	mov	b,#0x00
   58F3 12 51 57           1233 	lcall	_f_opendir
   58F6 15 81              1234 	dec	sp
   58F8 15 81              1235 	dec	sp
   58FA 15 81              1236 	dec	sp
   58FC D0 02              1237 	pop	ar2
                           1238 ;	main.c:147: while(i--) f_readdir(&dirs, &finfo);        // Rewind index to selected file
                           1239 ;	genAssign
   58FE 8A 03              1240 	mov	ar3,r2
   5900                    1241 00107$:
                           1242 ;	genAssign
   5900 8B 04              1243 	mov	ar4,r3
                           1244 ;	genMinus
                           1245 ;	genMinusDec
   5902 1B                 1246 	dec	r3
                           1247 ;	genIfx
   5903 EC                 1248 	mov	a,r4
                           1249 ;	genIfxJump
                           1250 ;	Peephole 108.c	removed ljmp by inverse jump logic
   5904 60 20              1251 	jz	00109$
                           1252 ;	Peephole 300	removed redundant label 00236$
                           1253 ;	genIpush
   5906 C0 03              1254 	push	ar3
   5908 74 0B              1255 	mov	a,#_ChooseFile_finfo_1_1
   590A C0 E0              1256 	push	acc
   590C 74 00              1257 	mov	a,#(_ChooseFile_finfo_1_1 >> 8)
   590E C0 E0              1258 	push	acc
                           1259 ;	Peephole 181	changed mov to clr
   5910 E4                 1260 	clr	a
   5911 C0 E0              1261 	push	acc
                           1262 ;	genCall
                           1263 ;	Peephole 182.a	used 16 bit load of DPTR
   5913 90 00 3C           1264 	mov	dptr,#_ChooseFile_dirs_1_1
   5916 75 F0 00           1265 	mov	b,#0x00
   5919 12 53 5E           1266 	lcall	_f_readdir
   591C 15 81              1267 	dec	sp
   591E 15 81              1268 	dec	sp
   5920 15 81              1269 	dec	sp
   5922 D0 03              1270 	pop	ar3
                           1271 ;	Peephole 112.b	changed ljmp to sjmp
   5924 80 DA              1272 	sjmp	00107$
   5926                    1273 00109$:
                           1274 ;	main.c:148: clrvtscreen();
                           1275 ;	genCall
   5926 12 5E 2B           1276 	lcall	_clrvtscreen
                           1277 ;	main.c:149: starlines(1);
                           1278 ;	genCall
   5929 75 82 01           1279 	mov	dpl,#0x01
   592C 12 5E 86           1280 	lcall	_starlines
                           1281 ;	main.c:150: if(f_open(&selectedfile,finfo.fname,0))     // Open selected file
                           1282 ;	genIpush
                           1283 ;	Peephole 181	changed mov to clr
   592F E4                 1284 	clr	a
   5930 C0 E0              1285 	push	acc
                           1286 ;	genIpush
   5932 74 14              1287 	mov	a,#(_ChooseFile_finfo_1_1 + 0x0009)
   5934 C0 E0              1288 	push	acc
   5936 74 00              1289 	mov	a,#((_ChooseFile_finfo_1_1 + 0x0009) >> 8)
   5938 C0 E0              1290 	push	acc
                           1291 ;	Peephole 181	changed mov to clr
   593A E4                 1292 	clr	a
   593B C0 E0              1293 	push	acc
                           1294 ;	genCall
                           1295 ;	Peephole 182.a	used 16 bit load of DPTR
   593D 90 00 21           1296 	mov	dptr,#_ChooseFile_selectedfile_1_1
   5940 75 F0 00           1297 	mov	b,#0x00
   5943 12 33 BF           1298 	lcall	_f_open
   5946 AB 82              1299 	mov	r3,dpl
   5948 E5 81              1300 	mov	a,sp
   594A 24 FC              1301 	add	a,#0xfc
   594C F5 81              1302 	mov	sp,a
                           1303 ;	genIfx
   594E EB                 1304 	mov	a,r3
                           1305 ;	genIfxJump
                           1306 ;	Peephole 108.c	removed ljmp by inverse jump logic
   594F 60 1A              1307 	jz	00114$
                           1308 ;	Peephole 300	removed redundant label 00237$
                           1309 ;	main.c:152: printf_tiny("Cannot open file.");       // If Folder Selected or Unable to read file then Reset
                           1310 ;	genIpush
   5951 74 10              1311 	mov	a,#__str_10
   5953 C0 E0              1312 	push	acc
   5955 74 74              1313 	mov	a,#(__str_10 >> 8)
   5957 C0 E0              1314 	push	acc
                           1315 ;	genCall
   5959 12 5E BD           1316 	lcall	_printf_tiny
   595C 15 81              1317 	dec	sp
   595E 15 81              1318 	dec	sp
                           1319 ;	main.c:153: entercontinue();
                           1320 ;	genCall
   5960 12 5E 6E           1321 	lcall	_entercontinue
                           1322 ;	main.c:154: WDTRST=0X1E;
                           1323 ;	genAssign
   5963 75 A6 1E           1324 	mov	_WDTRST,#0x1E
                           1325 ;	main.c:155: WDTRST=0XE1;
                           1326 ;	genAssign
   5966 75 A6 E1           1327 	mov	_WDTRST,#0xE1
                           1328 ;	main.c:156: while(1);
   5969                    1329 00111$:
                           1330 ;	Peephole 112.b	changed ljmp to sjmp
   5969 80 FE              1331 	sjmp	00111$
   596B                    1332 00114$:
                           1333 ;	main.c:158: i=3;                                        // If File Opened then process Extension
                           1334 ;	genAssign
   596B 7A 03              1335 	mov	r2,#0x03
                           1336 ;	main.c:159: t1=finfo.fname[strlen(finfo.fname)-3];
                           1337 ;	genCall
                           1338 ;	Peephole 182.a	used 16 bit load of DPTR
   596D 90 00 14           1339 	mov	dptr,#(_ChooseFile_finfo_1_1 + 0x0009)
   5970 75 F0 00           1340 	mov	b,#0x00
   5973 C0 02              1341 	push	ar2
   5975 12 62 1A           1342 	lcall	_strlen
   5978 AB 82              1343 	mov	r3,dpl
   597A AC 83              1344 	mov	r4,dph
   597C D0 02              1345 	pop	ar2
                           1346 ;	genCast
                           1347 ;	genMinus
                           1348 ;	genMinusDec
   597E EB                 1349 	mov	a,r3
   597F 24 FD              1350 	add	a,#0xfd
                           1351 ;	genPlus
   5981 24 14              1352 	add	a,#(_ChooseFile_finfo_1_1 + 0x0009)
   5983 F5 82              1353 	mov	dpl,a
                           1354 ;	Peephole 240	use clr instead of addc a,#0
   5985 E4                 1355 	clr	a
   5986 34 00              1356 	addc	a,#((_ChooseFile_finfo_1_1 + 0x0009) >> 8)
   5988 F5 83              1357 	mov	dph,a
                           1358 ;	genPointerGet
                           1359 ;	genFarPointerGet
   598A E0                 1360 	movx	a,@dptr
                           1361 ;	genAssign
   598B FB                 1362 	mov	r3,a
   598C 90 00 54           1363 	mov	dptr,#_ChooseFile_t1_1_1
                           1364 ;	Peephole 100	removed redundant mov
   598F F0                 1365 	movx	@dptr,a
                           1366 ;	main.c:160: t2=finfo.fname[strlen(finfo.fname)-2];
                           1367 ;	genCall
                           1368 ;	Peephole 182.a	used 16 bit load of DPTR
   5990 90 00 14           1369 	mov	dptr,#(_ChooseFile_finfo_1_1 + 0x0009)
   5993 75 F0 00           1370 	mov	b,#0x00
   5996 C0 02              1371 	push	ar2
   5998 12 62 1A           1372 	lcall	_strlen
   599B AB 82              1373 	mov	r3,dpl
   599D AC 83              1374 	mov	r4,dph
   599F D0 02              1375 	pop	ar2
                           1376 ;	genCast
                           1377 ;	genMinus
                           1378 ;	genMinusDec
   59A1 EB                 1379 	mov	a,r3
   59A2 24 FE              1380 	add	a,#0xfe
                           1381 ;	genPlus
   59A4 24 14              1382 	add	a,#(_ChooseFile_finfo_1_1 + 0x0009)
   59A6 F5 82              1383 	mov	dpl,a
                           1384 ;	Peephole 240	use clr instead of addc a,#0
   59A8 E4                 1385 	clr	a
   59A9 34 00              1386 	addc	a,#((_ChooseFile_finfo_1_1 + 0x0009) >> 8)
   59AB F5 83              1387 	mov	dph,a
                           1388 ;	genPointerGet
                           1389 ;	genFarPointerGet
   59AD E0                 1390 	movx	a,@dptr
                           1391 ;	genAssign
   59AE FB                 1392 	mov	r3,a
   59AF 90 00 55           1393 	mov	dptr,#_ChooseFile_t2_1_1
                           1394 ;	Peephole 100	removed redundant mov
   59B2 F0                 1395 	movx	@dptr,a
                           1396 ;	main.c:161: t3=finfo.fname[strlen(finfo.fname)-1];
                           1397 ;	genCall
                           1398 ;	Peephole 182.a	used 16 bit load of DPTR
   59B3 90 00 14           1399 	mov	dptr,#(_ChooseFile_finfo_1_1 + 0x0009)
   59B6 75 F0 00           1400 	mov	b,#0x00
   59B9 C0 02              1401 	push	ar2
   59BB 12 62 1A           1402 	lcall	_strlen
   59BE AB 82              1403 	mov	r3,dpl
   59C0 AC 83              1404 	mov	r4,dph
   59C2 D0 02              1405 	pop	ar2
                           1406 ;	genCast
                           1407 ;	genMinus
                           1408 ;	genMinusDec
   59C4 EB                 1409 	mov	a,r3
   59C5 14                 1410 	dec	a
                           1411 ;	genPlus
   59C6 24 14              1412 	add	a,#(_ChooseFile_finfo_1_1 + 0x0009)
   59C8 F5 82              1413 	mov	dpl,a
                           1414 ;	Peephole 240	use clr instead of addc a,#0
   59CA E4                 1415 	clr	a
   59CB 34 00              1416 	addc	a,#((_ChooseFile_finfo_1_1 + 0x0009) >> 8)
   59CD F5 83              1417 	mov	dph,a
                           1418 ;	genPointerGet
                           1419 ;	genFarPointerGet
   59CF E0                 1420 	movx	a,@dptr
                           1421 ;	genAssign
   59D0 FB                 1422 	mov	r3,a
   59D1 90 00 56           1423 	mov	dptr,#_ChooseFile_t3_1_1
                           1424 ;	Peephole 100	removed redundant mov
   59D4 F0                 1425 	movx	@dptr,a
                           1426 ;	main.c:162: if((t1=='t'||t1=='T')&&(t2=='x'||t2=='X')&&(t3=='t'||t3=='T')) i=0;
                           1427 ;	genAssign
   59D5 90 00 54           1428 	mov	dptr,#_ChooseFile_t1_1_1
   59D8 E0                 1429 	movx	a,@dptr
   59D9 FC                 1430 	mov	r4,a
                           1431 ;	genCmpEq
                           1432 ;	gencjneshort
   59DA BC 74 02           1433 	cjne	r4,#0x74,00238$
                           1434 ;	Peephole 112.b	changed ljmp to sjmp
   59DD 80 03              1435 	sjmp	00119$
   59DF                    1436 00238$:
                           1437 ;	genCmpEq
                           1438 ;	gencjneshort
                           1439 ;	Peephole 112.b	changed ljmp to sjmp
                           1440 ;	Peephole 198.b	optimized misc jump sequence
   59DF BC 54 17           1441 	cjne	r4,#0x54,00116$
                           1442 ;	Peephole 200.b	removed redundant sjmp
                           1443 ;	Peephole 300	removed redundant label 00239$
                           1444 ;	Peephole 300	removed redundant label 00240$
   59E2                    1445 00119$:
                           1446 ;	genAssign
   59E2 90 00 55           1447 	mov	dptr,#_ChooseFile_t2_1_1
   59E5 E0                 1448 	movx	a,@dptr
   59E6 FC                 1449 	mov	r4,a
                           1450 ;	genCmpEq
                           1451 ;	gencjneshort
   59E7 BC 78 02           1452 	cjne	r4,#0x78,00241$
                           1453 ;	Peephole 112.b	changed ljmp to sjmp
   59EA 80 03              1454 	sjmp	00121$
   59EC                    1455 00241$:
                           1456 ;	genCmpEq
                           1457 ;	gencjneshort
                           1458 ;	Peephole 112.b	changed ljmp to sjmp
                           1459 ;	Peephole 198.b	optimized misc jump sequence
   59EC BC 58 0A           1460 	cjne	r4,#0x58,00116$
                           1461 ;	Peephole 200.b	removed redundant sjmp
                           1462 ;	Peephole 300	removed redundant label 00242$
                           1463 ;	Peephole 300	removed redundant label 00243$
   59EF                    1464 00121$:
                           1465 ;	genCmpEq
                           1466 ;	gencjneshort
   59EF BB 74 02           1467 	cjne	r3,#0x74,00244$
                           1468 ;	Peephole 112.b	changed ljmp to sjmp
   59F2 80 03              1469 	sjmp	00115$
   59F4                    1470 00244$:
                           1471 ;	genCmpEq
                           1472 ;	gencjneshort
                           1473 ;	Peephole 112.b	changed ljmp to sjmp
                           1474 ;	Peephole 198.b	optimized misc jump sequence
   59F4 BB 54 02           1475 	cjne	r3,#0x54,00116$
                           1476 ;	Peephole 200.b	removed redundant sjmp
                           1477 ;	Peephole 300	removed redundant label 00245$
                           1478 ;	Peephole 300	removed redundant label 00246$
   59F7                    1479 00115$:
                           1480 ;	genAssign
   59F7 7A 00              1481 	mov	r2,#0x00
   59F9                    1482 00116$:
                           1483 ;	main.c:163: if((t1=='m'||t1=='M')&&(t2=='p'||t2=='P')&&(t3=='3')) i=1;
                           1484 ;	genAssign
   59F9 90 00 54           1485 	mov	dptr,#_ChooseFile_t1_1_1
   59FC E0                 1486 	movx	a,@dptr
   59FD FC                 1487 	mov	r4,a
                           1488 ;	genCmpEq
                           1489 ;	gencjneshort
   59FE BC 6D 02           1490 	cjne	r4,#0x6D,00247$
                           1491 ;	Peephole 112.b	changed ljmp to sjmp
   5A01 80 03              1492 	sjmp	00126$
   5A03                    1493 00247$:
                           1494 ;	genCmpEq
                           1495 ;	gencjneshort
                           1496 ;	Peephole 112.b	changed ljmp to sjmp
                           1497 ;	Peephole 198.b	optimized misc jump sequence
   5A03 BC 4D 12           1498 	cjne	r4,#0x4D,00123$
                           1499 ;	Peephole 200.b	removed redundant sjmp
                           1500 ;	Peephole 300	removed redundant label 00248$
                           1501 ;	Peephole 300	removed redundant label 00249$
   5A06                    1502 00126$:
                           1503 ;	genAssign
   5A06 90 00 55           1504 	mov	dptr,#_ChooseFile_t2_1_1
   5A09 E0                 1505 	movx	a,@dptr
   5A0A FC                 1506 	mov	r4,a
                           1507 ;	genCmpEq
                           1508 ;	gencjneshort
   5A0B BC 70 02           1509 	cjne	r4,#0x70,00250$
                           1510 ;	Peephole 112.b	changed ljmp to sjmp
   5A0E 80 03              1511 	sjmp	00127$
   5A10                    1512 00250$:
                           1513 ;	genCmpEq
                           1514 ;	gencjneshort
                           1515 ;	Peephole 112.b	changed ljmp to sjmp
                           1516 ;	Peephole 198.b	optimized misc jump sequence
   5A10 BC 50 05           1517 	cjne	r4,#0x50,00123$
                           1518 ;	Peephole 200.b	removed redundant sjmp
                           1519 ;	Peephole 300	removed redundant label 00251$
                           1520 ;	Peephole 300	removed redundant label 00252$
   5A13                    1521 00127$:
                           1522 ;	genCmpEq
                           1523 ;	gencjneshort
                           1524 ;	Peephole 112.b	changed ljmp to sjmp
                           1525 ;	Peephole 198.b	optimized misc jump sequence
   5A13 BB 33 02           1526 	cjne	r3,#0x33,00123$
                           1527 ;	Peephole 200.b	removed redundant sjmp
                           1528 ;	Peephole 300	removed redundant label 00253$
                           1529 ;	Peephole 300	removed redundant label 00254$
                           1530 ;	genAssign
   5A16 7A 01              1531 	mov	r2,#0x01
   5A18                    1532 00123$:
                           1533 ;	main.c:167: if (i)                                      // Process MP3 File
                           1534 ;	genIfx
   5A18 EA                 1535 	mov	a,r2
                           1536 ;	genIfxJump
   5A19 70 03              1537 	jnz	00255$
   5A1B 02 5C 93           1538 	ljmp	00151$
   5A1E                    1539 00255$:
                           1540 ;	main.c:169: sectorn=(DWORD)(selectedfile.org_clust-2) * (&SDCard)->sects_clust + (&SDCard)->database;
                           1541 ;	genPointerGet
                           1542 ;	genFarPointerGet
   5A1E 90 00 30           1543 	mov	dptr,#(_ChooseFile_selectedfile_1_1 + 0x000f)
   5A21 E0                 1544 	movx	a,@dptr
   5A22 FB                 1545 	mov	r3,a
   5A23 A3                 1546 	inc	dptr
   5A24 E0                 1547 	movx	a,@dptr
   5A25 FC                 1548 	mov	r4,a
   5A26 A3                 1549 	inc	dptr
   5A27 E0                 1550 	movx	a,@dptr
   5A28 FD                 1551 	mov	r5,a
   5A29 A3                 1552 	inc	dptr
   5A2A E0                 1553 	movx	a,@dptr
   5A2B FE                 1554 	mov	r6,a
                           1555 ;	genMinus
   5A2C E5 10              1556 	mov	a,_bp
   5A2E 24 04              1557 	add	a,#0x04
   5A30 F8                 1558 	mov	r0,a
                           1559 ;	genMinusDec
   5A31 EB                 1560 	mov	a,r3
   5A32 24 FE              1561 	add	a,#0xfe
   5A34 F6                 1562 	mov	@r0,a
   5A35 EC                 1563 	mov	a,r4
   5A36 34 FF              1564 	addc	a,#0xff
   5A38 08                 1565 	inc	r0
   5A39 F6                 1566 	mov	@r0,a
   5A3A ED                 1567 	mov	a,r5
   5A3B 34 FF              1568 	addc	a,#0xff
   5A3D 08                 1569 	inc	r0
   5A3E F6                 1570 	mov	@r0,a
   5A3F EE                 1571 	mov	a,r6
   5A40 34 FF              1572 	addc	a,#0xff
   5A42 08                 1573 	inc	r0
   5A43 F6                 1574 	mov	@r0,a
                           1575 ;	genPointerGet
                           1576 ;	genFarPointerGet
   5A44 90 20 1D           1577 	mov	dptr,#(_SDCard + 0x001d)
   5A47 E0                 1578 	movx	a,@dptr
   5A48 FF                 1579 	mov	r7,a
                           1580 ;	genCast
   5A49 7B 00              1581 	mov	r3,#0x00
   5A4B 7C 00              1582 	mov	r4,#0x00
   5A4D 7D 00              1583 	mov	r5,#0x00
                           1584 ;	genIpush
   5A4F C0 07              1585 	push	ar7
   5A51 C0 03              1586 	push	ar3
   5A53 C0 04              1587 	push	ar4
   5A55 C0 05              1588 	push	ar5
                           1589 ;	genCall
   5A57 E5 10              1590 	mov	a,_bp
   5A59 24 04              1591 	add	a,#0x04
   5A5B F8                 1592 	mov	r0,a
   5A5C 86 82              1593 	mov	dpl,@r0
   5A5E 08                 1594 	inc	r0
   5A5F 86 83              1595 	mov	dph,@r0
   5A61 08                 1596 	inc	r0
   5A62 86 F0              1597 	mov	b,@r0
   5A64 08                 1598 	inc	r0
   5A65 E6                 1599 	mov	a,@r0
   5A66 12 62 5E           1600 	lcall	__mullong
   5A69 A8 10              1601 	mov	r0,_bp
   5A6B 08                 1602 	inc	r0
   5A6C 08                 1603 	inc	r0
   5A6D 08                 1604 	inc	r0
   5A6E 08                 1605 	inc	r0
   5A6F A6 82              1606 	mov	@r0,dpl
   5A71 08                 1607 	inc	r0
   5A72 A6 83              1608 	mov	@r0,dph
   5A74 08                 1609 	inc	r0
   5A75 A6 F0              1610 	mov	@r0,b
   5A77 08                 1611 	inc	r0
   5A78 F6                 1612 	mov	@r0,a
   5A79 E5 81              1613 	mov	a,sp
   5A7B 24 FC              1614 	add	a,#0xfc
   5A7D F5 81              1615 	mov	sp,a
                           1616 ;	genPointerGet
                           1617 ;	genFarPointerGet
   5A7F 90 20 10           1618 	mov	dptr,#(_SDCard + 0x0010)
   5A82 E0                 1619 	movx	a,@dptr
   5A83 FF                 1620 	mov	r7,a
   5A84 A3                 1621 	inc	dptr
   5A85 E0                 1622 	movx	a,@dptr
   5A86 FB                 1623 	mov	r3,a
   5A87 A3                 1624 	inc	dptr
   5A88 E0                 1625 	movx	a,@dptr
   5A89 FC                 1626 	mov	r4,a
   5A8A A3                 1627 	inc	dptr
   5A8B E0                 1628 	movx	a,@dptr
   5A8C FD                 1629 	mov	r5,a
                           1630 ;	genPlus
   5A8D E5 10              1631 	mov	a,_bp
   5A8F 24 04              1632 	add	a,#0x04
   5A91 F8                 1633 	mov	r0,a
                           1634 ;	Peephole 236.g	used r7 instead of ar7
   5A92 EF                 1635 	mov	a,r7
   5A93 26                 1636 	add	a,@r0
   5A94 FF                 1637 	mov	r7,a
                           1638 ;	Peephole 236.g	used r3 instead of ar3
   5A95 EB                 1639 	mov	a,r3
   5A96 08                 1640 	inc	r0
   5A97 36                 1641 	addc	a,@r0
   5A98 FB                 1642 	mov	r3,a
                           1643 ;	Peephole 236.g	used r4 instead of ar4
   5A99 EC                 1644 	mov	a,r4
   5A9A 08                 1645 	inc	r0
   5A9B 36                 1646 	addc	a,@r0
   5A9C FC                 1647 	mov	r4,a
                           1648 ;	Peephole 236.g	used r5 instead of ar5
   5A9D ED                 1649 	mov	a,r5
   5A9E 08                 1650 	inc	r0
   5A9F 36                 1651 	addc	a,@r0
   5AA0 FD                 1652 	mov	r5,a
                           1653 ;	genAssign
   5AA1 90 00 57           1654 	mov	dptr,#_ChooseFile_sectorn_1_1
   5AA4 EF                 1655 	mov	a,r7
   5AA5 F0                 1656 	movx	@dptr,a
   5AA6 A3                 1657 	inc	dptr
   5AA7 EB                 1658 	mov	a,r3
   5AA8 F0                 1659 	movx	@dptr,a
   5AA9 A3                 1660 	inc	dptr
   5AAA EC                 1661 	mov	a,r4
   5AAB F0                 1662 	movx	@dptr,a
   5AAC A3                 1663 	inc	dptr
   5AAD ED                 1664 	mov	a,r5
   5AAE F0                 1665 	movx	@dptr,a
                           1666 ;	main.c:170: SD_ReadSector(sectorn,SDCard.win);      // Process ID3 Tag to find song name and other details
                           1667 ;	genIpush
   5AAF 74 20              1668 	mov	a,#(_SDCard + 0x0020)
   5AB1 C0 E0              1669 	push	acc
   5AB3 74 20              1670 	mov	a,#((_SDCard + 0x0020) >> 8)
   5AB5 C0 E0              1671 	push	acc
                           1672 ;	Peephole 181	changed mov to clr
   5AB7 E4                 1673 	clr	a
   5AB8 C0 E0              1674 	push	acc
                           1675 ;	genCall
   5ABA 8F 82              1676 	mov	dpl,r7
   5ABC 8B 83              1677 	mov	dph,r3
   5ABE 8C F0              1678 	mov	b,r4
   5AC0 ED                 1679 	mov	a,r5
   5AC1 12 15 D7           1680 	lcall	_SD_ReadSector
   5AC4 15 81              1681 	dec	sp
   5AC6 15 81              1682 	dec	sp
   5AC8 15 81              1683 	dec	sp
                           1684 ;	main.c:173: if (SDCard.win[0]=='I'&&SDCard.win[1]=='D'&&SDCard.win[2]=='3')
                           1685 ;	genPointerGet
                           1686 ;	genFarPointerGet
   5ACA 90 20 20           1687 	mov	dptr,#(_SDCard + 0x0020)
   5ACD E0                 1688 	movx	a,@dptr
   5ACE FB                 1689 	mov	r3,a
                           1690 ;	genCmpEq
                           1691 ;	gencjneshort
   5ACF BB 49 02           1692 	cjne	r3,#0x49,00256$
   5AD2 80 03              1693 	sjmp	00257$
   5AD4                    1694 00256$:
   5AD4 02 5B AB           1695 	ljmp	00138$
   5AD7                    1696 00257$:
                           1697 ;	genPointerGet
                           1698 ;	genFarPointerGet
   5AD7 90 20 21           1699 	mov	dptr,#(_SDCard + 0x0021)
   5ADA E0                 1700 	movx	a,@dptr
   5ADB FB                 1701 	mov	r3,a
                           1702 ;	genCmpEq
                           1703 ;	gencjneshort
   5ADC BB 44 02           1704 	cjne	r3,#0x44,00258$
   5ADF 80 03              1705 	sjmp	00259$
   5AE1                    1706 00258$:
   5AE1 02 5B AB           1707 	ljmp	00138$
   5AE4                    1708 00259$:
                           1709 ;	genPointerGet
                           1710 ;	genFarPointerGet
   5AE4 90 20 22           1711 	mov	dptr,#(_SDCard + 0x0022)
   5AE7 E0                 1712 	movx	a,@dptr
   5AE8 FB                 1713 	mov	r3,a
                           1714 ;	genCmpEq
                           1715 ;	gencjneshort
   5AE9 BB 33 02           1716 	cjne	r3,#0x33,00260$
   5AEC 80 03              1717 	sjmp	00261$
   5AEE                    1718 00260$:
   5AEE 02 5B AB           1719 	ljmp	00138$
   5AF1                    1720 00261$:
                           1721 ;	main.c:175: printf_tiny("\r\nPlaying File: \033[5;31;47m");
                           1722 ;	genIpush
   5AF1 74 22              1723 	mov	a,#__str_11
   5AF3 C0 E0              1724 	push	acc
   5AF5 74 74              1725 	mov	a,#(__str_11 >> 8)
   5AF7 C0 E0              1726 	push	acc
                           1727 ;	genCall
   5AF9 12 5E BD           1728 	lcall	_printf_tiny
   5AFC 15 81              1729 	dec	sp
   5AFE 15 81              1730 	dec	sp
                           1731 ;	main.c:176: lcdputstr("\rPlaying File: \r\n");
                           1732 ;	genCall
                           1733 ;	Peephole 182.a	used 16 bit load of DPTR
   5B00 90 74 3D           1734 	mov	dptr,#__str_12
   5B03 75 F0 80           1735 	mov	b,#0x80
   5B06 12 03 48           1736 	lcall	_lcdputstr
                           1737 ;	main.c:177: for(i=21; i<60; i++)
                           1738 ;	genAssign
   5B09 7B 15              1739 	mov	r3,#0x15
   5B0B                    1740 00133$:
                           1741 ;	genCmpLt
                           1742 ;	genCmp
   5B0B BB 3C 00           1743 	cjne	r3,#0x3C,00262$
   5B0E                    1744 00262$:
                           1745 ;	genIfxJump
   5B0E 40 03              1746 	jc	00263$
   5B10 02 5B C7           1747 	ljmp	00139$
   5B13                    1748 00263$:
                           1749 ;	main.c:179: putchar(SDCard.win[i]);
                           1750 ;	genCast
   5B13 8B 04              1751 	mov	ar4,r3
   5B15 7D 00              1752 	mov	r5,#0x00
                           1753 ;	genPlus
                           1754 ;	Peephole 236.g	used r4 instead of ar4
   5B17 EC                 1755 	mov	a,r4
   5B18 24 20              1756 	add	a,#(_SDCard + 0x0020)
   5B1A F5 82              1757 	mov	dpl,a
                           1758 ;	Peephole 236.g	used r5 instead of ar5
   5B1C ED                 1759 	mov	a,r5
   5B1D 34 20              1760 	addc	a,#((_SDCard + 0x0020) >> 8)
   5B1F F5 83              1761 	mov	dph,a
                           1762 ;	genPointerGet
                           1763 ;	genFarPointerGet
   5B21 E0                 1764 	movx	a,@dptr
                           1765 ;	genCall
   5B22 FE                 1766 	mov	r6,a
                           1767 ;	Peephole 244.c	loading dpl from a instead of r6
   5B23 F5 82              1768 	mov	dpl,a
   5B25 C0 03              1769 	push	ar3
   5B27 C0 04              1770 	push	ar4
   5B29 C0 05              1771 	push	ar5
   5B2B 12 08 BA           1772 	lcall	_putchar
   5B2E D0 05              1773 	pop	ar5
   5B30 D0 04              1774 	pop	ar4
   5B32 D0 03              1775 	pop	ar3
                           1776 ;	main.c:180: lcdputch((SDCard.win[i]));
                           1777 ;	genPlus
                           1778 ;	Peephole 236.g	used r4 instead of ar4
   5B34 EC                 1779 	mov	a,r4
   5B35 24 20              1780 	add	a,#(_SDCard + 0x0020)
   5B37 F5 82              1781 	mov	dpl,a
                           1782 ;	Peephole 236.g	used r5 instead of ar5
   5B39 ED                 1783 	mov	a,r5
   5B3A 34 20              1784 	addc	a,#((_SDCard + 0x0020) >> 8)
   5B3C F5 83              1785 	mov	dph,a
                           1786 ;	genPointerGet
                           1787 ;	genFarPointerGet
   5B3E E0                 1788 	movx	a,@dptr
                           1789 ;	genCall
   5B3F FC                 1790 	mov	r4,a
                           1791 ;	Peephole 244.c	loading dpl from a instead of r4
   5B40 F5 82              1792 	mov	dpl,a
   5B42 C0 03              1793 	push	ar3
   5B44 12 02 7A           1794 	lcall	_lcdputch
   5B47 D0 03              1795 	pop	ar3
                           1796 ;	main.c:181: if((SDCard.win[i+1]=='T')&&(SDCard.win[i+2]=='P')&&(SDCard.win[i+3]=='E')&&(SDCard.win[i+4]=='1'))
                           1797 ;	genCast
   5B49 8B 04              1798 	mov	ar4,r3
   5B4B 7D 00              1799 	mov	r5,#0x00
                           1800 ;	genPlus
                           1801 ;     genPlusIncr
   5B4D 74 01              1802 	mov	a,#0x01
                           1803 ;	Peephole 236.a	used r4 instead of ar4
   5B4F 2C                 1804 	add	a,r4
   5B50 FE                 1805 	mov	r6,a
                           1806 ;	Peephole 181	changed mov to clr
   5B51 E4                 1807 	clr	a
                           1808 ;	Peephole 236.b	used r5 instead of ar5
   5B52 3D                 1809 	addc	a,r5
   5B53 FF                 1810 	mov	r7,a
                           1811 ;	genPlus
                           1812 ;	Peephole 236.g	used r6 instead of ar6
   5B54 EE                 1813 	mov	a,r6
   5B55 24 20              1814 	add	a,#(_SDCard + 0x0020)
   5B57 F5 82              1815 	mov	dpl,a
                           1816 ;	Peephole 236.g	used r7 instead of ar7
   5B59 EF                 1817 	mov	a,r7
   5B5A 34 20              1818 	addc	a,#((_SDCard + 0x0020) >> 8)
   5B5C F5 83              1819 	mov	dph,a
                           1820 ;	genPointerGet
                           1821 ;	genFarPointerGet
   5B5E E0                 1822 	movx	a,@dptr
   5B5F FE                 1823 	mov	r6,a
                           1824 ;	genCmpEq
                           1825 ;	gencjneshort
                           1826 ;	Peephole 112.b	changed ljmp to sjmp
                           1827 ;	Peephole 198.b	optimized misc jump sequence
   5B60 BE 54 44           1828 	cjne	r6,#0x54,00135$
                           1829 ;	Peephole 200.b	removed redundant sjmp
                           1830 ;	Peephole 300	removed redundant label 00264$
                           1831 ;	Peephole 300	removed redundant label 00265$
                           1832 ;	genPlus
                           1833 ;     genPlusIncr
   5B63 74 02              1834 	mov	a,#0x02
                           1835 ;	Peephole 236.a	used r4 instead of ar4
   5B65 2C                 1836 	add	a,r4
   5B66 FE                 1837 	mov	r6,a
                           1838 ;	Peephole 181	changed mov to clr
   5B67 E4                 1839 	clr	a
                           1840 ;	Peephole 236.b	used r5 instead of ar5
   5B68 3D                 1841 	addc	a,r5
   5B69 FF                 1842 	mov	r7,a
                           1843 ;	genPlus
                           1844 ;	Peephole 236.g	used r6 instead of ar6
   5B6A EE                 1845 	mov	a,r6
   5B6B 24 20              1846 	add	a,#(_SDCard + 0x0020)
   5B6D F5 82              1847 	mov	dpl,a
                           1848 ;	Peephole 236.g	used r7 instead of ar7
   5B6F EF                 1849 	mov	a,r7
   5B70 34 20              1850 	addc	a,#((_SDCard + 0x0020) >> 8)
   5B72 F5 83              1851 	mov	dph,a
                           1852 ;	genPointerGet
                           1853 ;	genFarPointerGet
   5B74 E0                 1854 	movx	a,@dptr
   5B75 FE                 1855 	mov	r6,a
                           1856 ;	genCmpEq
                           1857 ;	gencjneshort
                           1858 ;	Peephole 112.b	changed ljmp to sjmp
                           1859 ;	Peephole 198.b	optimized misc jump sequence
   5B76 BE 50 2E           1860 	cjne	r6,#0x50,00135$
                           1861 ;	Peephole 200.b	removed redundant sjmp
                           1862 ;	Peephole 300	removed redundant label 00266$
                           1863 ;	Peephole 300	removed redundant label 00267$
                           1864 ;	genPlus
                           1865 ;     genPlusIncr
   5B79 74 03              1866 	mov	a,#0x03
                           1867 ;	Peephole 236.a	used r4 instead of ar4
   5B7B 2C                 1868 	add	a,r4
   5B7C FE                 1869 	mov	r6,a
                           1870 ;	Peephole 181	changed mov to clr
   5B7D E4                 1871 	clr	a
                           1872 ;	Peephole 236.b	used r5 instead of ar5
   5B7E 3D                 1873 	addc	a,r5
   5B7F FF                 1874 	mov	r7,a
                           1875 ;	genPlus
                           1876 ;	Peephole 236.g	used r6 instead of ar6
   5B80 EE                 1877 	mov	a,r6
   5B81 24 20              1878 	add	a,#(_SDCard + 0x0020)
   5B83 F5 82              1879 	mov	dpl,a
                           1880 ;	Peephole 236.g	used r7 instead of ar7
   5B85 EF                 1881 	mov	a,r7
   5B86 34 20              1882 	addc	a,#((_SDCard + 0x0020) >> 8)
   5B88 F5 83              1883 	mov	dph,a
                           1884 ;	genPointerGet
                           1885 ;	genFarPointerGet
   5B8A E0                 1886 	movx	a,@dptr
   5B8B FE                 1887 	mov	r6,a
                           1888 ;	genCmpEq
                           1889 ;	gencjneshort
                           1890 ;	Peephole 112.b	changed ljmp to sjmp
                           1891 ;	Peephole 198.b	optimized misc jump sequence
   5B8C BE 45 18           1892 	cjne	r6,#0x45,00135$
                           1893 ;	Peephole 200.b	removed redundant sjmp
                           1894 ;	Peephole 300	removed redundant label 00268$
                           1895 ;	Peephole 300	removed redundant label 00269$
                           1896 ;	genPlus
                           1897 ;     genPlusIncr
   5B8F 74 04              1898 	mov	a,#0x04
                           1899 ;	Peephole 236.a	used r4 instead of ar4
   5B91 2C                 1900 	add	a,r4
   5B92 FC                 1901 	mov	r4,a
                           1902 ;	Peephole 181	changed mov to clr
   5B93 E4                 1903 	clr	a
                           1904 ;	Peephole 236.b	used r5 instead of ar5
   5B94 3D                 1905 	addc	a,r5
   5B95 FD                 1906 	mov	r5,a
                           1907 ;	genPlus
                           1908 ;	Peephole 236.g	used r4 instead of ar4
   5B96 EC                 1909 	mov	a,r4
   5B97 24 20              1910 	add	a,#(_SDCard + 0x0020)
   5B99 F5 82              1911 	mov	dpl,a
                           1912 ;	Peephole 236.g	used r5 instead of ar5
   5B9B ED                 1913 	mov	a,r5
   5B9C 34 20              1914 	addc	a,#((_SDCard + 0x0020) >> 8)
   5B9E F5 83              1915 	mov	dph,a
                           1916 ;	genPointerGet
                           1917 ;	genFarPointerGet
   5BA0 E0                 1918 	movx	a,@dptr
   5BA1 FC                 1919 	mov	r4,a
                           1920 ;	genCmpEq
                           1921 ;	gencjneshort
   5BA2 BC 31 02           1922 	cjne	r4,#0x31,00270$
                           1923 ;	Peephole 112.b	changed ljmp to sjmp
   5BA5 80 20              1924 	sjmp	00139$
   5BA7                    1925 00270$:
                           1926 ;	main.c:182: break;
   5BA7                    1927 00135$:
                           1928 ;	main.c:177: for(i=21; i<60; i++)
                           1929 ;	genPlus
                           1930 ;     genPlusIncr
   5BA7 0B                 1931 	inc	r3
   5BA8 02 5B 0B           1932 	ljmp	00133$
   5BAB                    1933 00138$:
                           1934 ;	main.c:187: printf_tiny("\r\nPlaying File: \033[5;31;47m%s",finfo.fname);
                           1935 ;	genIpush
   5BAB 74 14              1936 	mov	a,#(_ChooseFile_finfo_1_1 + 0x0009)
   5BAD C0 E0              1937 	push	acc
   5BAF 74 00              1938 	mov	a,#((_ChooseFile_finfo_1_1 + 0x0009) >> 8)
   5BB1 C0 E0              1939 	push	acc
                           1940 ;	Peephole 181	changed mov to clr
   5BB3 E4                 1941 	clr	a
   5BB4 C0 E0              1942 	push	acc
                           1943 ;	genIpush
   5BB6 74 4F              1944 	mov	a,#__str_13
   5BB8 C0 E0              1945 	push	acc
   5BBA 74 74              1946 	mov	a,#(__str_13 >> 8)
   5BBC C0 E0              1947 	push	acc
                           1948 ;	genCall
   5BBE 12 5E BD           1949 	lcall	_printf_tiny
   5BC1 E5 81              1950 	mov	a,sp
   5BC3 24 FB              1951 	add	a,#0xfb
   5BC5 F5 81              1952 	mov	sp,a
   5BC7                    1953 00139$:
                           1954 ;	main.c:189: printf_tiny("\033[0m");                 // Start an interface for user to choose options while playing
                           1955 ;	genIpush
   5BC7 74 6C              1956 	mov	a,#__str_14
   5BC9 C0 E0              1957 	push	acc
   5BCB 74 74              1958 	mov	a,#(__str_14 >> 8)
   5BCD C0 E0              1959 	push	acc
                           1960 ;	genCall
   5BCF 12 5E BD           1961 	lcall	_printf_tiny
   5BD2 15 81              1962 	dec	sp
   5BD4 15 81              1963 	dec	sp
                           1964 ;	main.c:190: starlines(1);
                           1965 ;	genCall
   5BD6 75 82 01           1966 	mov	dpl,#0x01
   5BD9 12 5E 86           1967 	lcall	_starlines
                           1968 ;	main.c:191: printf_tiny("\r\n 'q' to stop playing and reselect song");
                           1969 ;	genIpush
   5BDC 74 71              1970 	mov	a,#__str_15
   5BDE C0 E0              1971 	push	acc
   5BE0 74 74              1972 	mov	a,#(__str_15 >> 8)
   5BE2 C0 E0              1973 	push	acc
                           1974 ;	genCall
   5BE4 12 5E BD           1975 	lcall	_printf_tiny
   5BE7 15 81              1976 	dec	sp
   5BE9 15 81              1977 	dec	sp
                           1978 ;	main.c:192: printf_tiny("\r\n '+' to increase volume");
                           1979 ;	genIpush
   5BEB 74 9A              1980 	mov	a,#__str_16
   5BED C0 E0              1981 	push	acc
   5BEF 74 74              1982 	mov	a,#(__str_16 >> 8)
   5BF1 C0 E0              1983 	push	acc
                           1984 ;	genCall
   5BF3 12 5E BD           1985 	lcall	_printf_tiny
   5BF6 15 81              1986 	dec	sp
   5BF8 15 81              1987 	dec	sp
                           1988 ;	main.c:193: printf_tiny("\r\n '-' to decrease volume");
                           1989 ;	genIpush
   5BFA 74 B4              1990 	mov	a,#__str_17
   5BFC C0 E0              1991 	push	acc
   5BFE 74 74              1992 	mov	a,#(__str_17 >> 8)
   5C00 C0 E0              1993 	push	acc
                           1994 ;	genCall
   5C02 12 5E BD           1995 	lcall	_printf_tiny
   5C05 15 81              1996 	dec	sp
   5C07 15 81              1997 	dec	sp
                           1998 ;	main.c:194: printf_tiny("\r\n 'i' to query decoder bit-rate\t\t\0337");
                           1999 ;	genIpush
   5C09 74 CE              2000 	mov	a,#__str_18
   5C0B C0 E0              2001 	push	acc
   5C0D 74 74              2002 	mov	a,#(__str_18 >> 8)
   5C0F C0 E0              2003 	push	acc
                           2004 ;	genCall
   5C11 12 5E BD           2005 	lcall	_printf_tiny
   5C14 15 81              2006 	dec	sp
   5C16 15 81              2007 	dec	sp
                           2008 ;	main.c:195: printf_tiny("\r\n 'm' to mute");
                           2009 ;	genIpush
   5C18 74 F3              2010 	mov	a,#__str_19
   5C1A C0 E0              2011 	push	acc
   5C1C 74 74              2012 	mov	a,#(__str_19 >> 8)
   5C1E C0 E0              2013 	push	acc
                           2014 ;	genCall
   5C20 12 5E BD           2015 	lcall	_printf_tiny
   5C23 15 81              2016 	dec	sp
   5C25 15 81              2017 	dec	sp
                           2018 ;	main.c:196: printf_tiny("\r\n 'u' to unmute");
                           2019 ;	genIpush
   5C27 74 02              2020 	mov	a,#__str_20
   5C29 C0 E0              2021 	push	acc
   5C2B 74 75              2022 	mov	a,#(__str_20 >> 8)
   5C2D C0 E0              2023 	push	acc
                           2024 ;	genCall
   5C2F 12 5E BD           2025 	lcall	_printf_tiny
   5C32 15 81              2026 	dec	sp
   5C34 15 81              2027 	dec	sp
                           2028 ;	main.c:197: printf_tiny("\r\n 'p' to pause/unpause");
                           2029 ;	genIpush
   5C36 74 13              2030 	mov	a,#__str_21
   5C38 C0 E0              2031 	push	acc
   5C3A 74 75              2032 	mov	a,#(__str_21 >> 8)
   5C3C C0 E0              2033 	push	acc
                           2034 ;	genCall
   5C3E 12 5E BD           2035 	lcall	_printf_tiny
   5C41 15 81              2036 	dec	sp
   5C43 15 81              2037 	dec	sp
                           2038 ;	main.c:198: starlines(1);
                           2039 ;	genCall
   5C45 75 82 01           2040 	mov	dpl,#0x01
   5C48 12 5E 86           2041 	lcall	_starlines
                           2042 ;	main.c:199: STA013StartDecoder();
                           2043 ;	genCall
   5C4B 12 04 85           2044 	lcall	_STA013StartDecoder
                           2045 ;	main.c:206: f_mp3_read(&selectedfile,xbuffer,finfo.fsize,&selectedfile.fptr);
                           2046 ;	genPointerGet
                           2047 ;	genFarPointerGet
   5C4E 90 00 0B           2048 	mov	dptr,#_ChooseFile_finfo_1_1
   5C51 E0                 2049 	movx	a,@dptr
   5C52 FB                 2050 	mov	r3,a
   5C53 A3                 2051 	inc	dptr
   5C54 E0                 2052 	movx	a,@dptr
   5C55 FC                 2053 	mov	r4,a
   5C56 A3                 2054 	inc	dptr
   5C57 E0                 2055 	movx	a,@dptr
   5C58 FD                 2056 	mov	r5,a
   5C59 A3                 2057 	inc	dptr
   5C5A E0                 2058 	movx	a,@dptr
   5C5B FE                 2059 	mov	r6,a
                           2060 ;	genCast
                           2061 ;	genIpush
   5C5C 74 28              2062 	mov	a,#(_ChooseFile_selectedfile_1_1 + 0x0007)
   5C5E C0 E0              2063 	push	acc
   5C60 74 00              2064 	mov	a,#((_ChooseFile_selectedfile_1_1 + 0x0007) >> 8)
   5C62 C0 E0              2065 	push	acc
                           2066 ;	Peephole 181	changed mov to clr
   5C64 E4                 2067 	clr	a
   5C65 C0 E0              2068 	push	acc
                           2069 ;	genIpush
   5C67 C0 03              2070 	push	ar3
   5C69 C0 04              2071 	push	ar4
                           2072 ;	genIpush
   5C6B 74 00              2073 	mov	a,#_xbuffer
   5C6D C0 E0              2074 	push	acc
   5C6F 74 30              2075 	mov	a,#(_xbuffer >> 8)
   5C71 C0 E0              2076 	push	acc
                           2077 ;	Peephole 181	changed mov to clr
   5C73 E4                 2078 	clr	a
   5C74 C0 E0              2079 	push	acc
                           2080 ;	genCall
                           2081 ;	Peephole 182.a	used 16 bit load of DPTR
   5C76 90 00 21           2082 	mov	dptr,#_ChooseFile_selectedfile_1_1
   5C79 75 F0 00           2083 	mov	b,#0x00
   5C7C 12 3D C2           2084 	lcall	_f_mp3_read
   5C7F E5 81              2085 	mov	a,sp
   5C81 24 F8              2086 	add	a,#0xf8
   5C83 F5 81              2087 	mov	sp,a
                           2088 ;	main.c:208: STA013StopDecoder();
                           2089 ;	genCall
   5C85 12 05 A1           2090 	lcall	_STA013StopDecoder
                           2091 ;	main.c:209: entercontinue();
                           2092 ;	genCall
   5C88 12 5E 6E           2093 	lcall	_entercontinue
                           2094 ;	main.c:210: WDTRST=0X1E;
                           2095 ;	genAssign
   5C8B 75 A6 1E           2096 	mov	_WDTRST,#0x1E
                           2097 ;	main.c:211: WDTRST=0XE1;
                           2098 ;	genAssign
   5C8E 75 A6 E1           2099 	mov	_WDTRST,#0xE1
                           2100 ;	main.c:212: while(1);
   5C91                    2101 00143$:
                           2102 ;	Peephole 112.b	changed ljmp to sjmp
   5C91 80 FE              2103 	sjmp	00143$
   5C93                    2104 00151$:
                           2105 ;	main.c:214: else if(i==0)
                           2106 ;	genIfx
   5C93 EA                 2107 	mov	a,r2
                           2108 ;	genIfxJump
   5C94 60 03              2109 	jz	00271$
   5C96 02 5D 8A           2110 	ljmp	00152$
   5C99                    2111 00271$:
                           2112 ;	main.c:216: starlines(1);
                           2113 ;	genCall
   5C99 75 82 01           2114 	mov	dpl,#0x01
   5C9C 12 5E 86           2115 	lcall	_starlines
                           2116 ;	main.c:217: printf_tiny("\r\nSending \033[5;31;47m%s\033[0m via Zigbee.\r\n\n",finfo.fname);
                           2117 ;	genIpush
   5C9F 74 14              2118 	mov	a,#(_ChooseFile_finfo_1_1 + 0x0009)
   5CA1 C0 E0              2119 	push	acc
   5CA3 74 00              2120 	mov	a,#((_ChooseFile_finfo_1_1 + 0x0009) >> 8)
   5CA5 C0 E0              2121 	push	acc
                           2122 ;	Peephole 181	changed mov to clr
   5CA7 E4                 2123 	clr	a
   5CA8 C0 E0              2124 	push	acc
                           2125 ;	genIpush
   5CAA 74 2B              2126 	mov	a,#__str_22
   5CAC C0 E0              2127 	push	acc
   5CAE 74 75              2128 	mov	a,#(__str_22 >> 8)
   5CB0 C0 E0              2129 	push	acc
                           2130 ;	genCall
   5CB2 12 5E BD           2131 	lcall	_printf_tiny
   5CB5 E5 81              2132 	mov	a,sp
   5CB7 24 FB              2133 	add	a,#0xfb
   5CB9 F5 81              2134 	mov	sp,a
                           2135 ;	main.c:218: P3_4=1;
                           2136 ;	genAssign
   5CBB D2 B4              2137 	setb	_P3_4
                           2138 ;	main.c:219: entercontinue();
                           2139 ;	genCall
   5CBD 12 5E 6E           2140 	lcall	_entercontinue
                           2141 ;	main.c:220: CKCKON0=0x00;
                           2142 ;	genAssign
   5CC0 75 8F 00           2143 	mov	_CKCKON0,#0x00
                           2144 ;	main.c:221: BDRCON&=0xFD;
                           2145 ;	genAnd
   5CC3 53 9B FD           2146 	anl	_BDRCON,#0xFD
                           2147 ;	main.c:222: PCON&=0x5F;
                           2148 ;	genAnd
   5CC6 53 87 5F           2149 	anl	_PCON,#0x5F
                           2150 ;	main.c:223: Delay(90);
                           2151 ;	genCall
                           2152 ;	Peephole 182.b	used 16 bit load of dptr
   5CC9 90 00 5A           2153 	mov	dptr,#0x005A
   5CCC 12 14 1D           2154 	lcall	_Delay
                           2155 ;	main.c:230: f_txt_read(&selectedfile,xbuffer,finfo.fsize,&selectedfile.fptr);
                           2156 ;	genPointerGet
                           2157 ;	genFarPointerGet
   5CCF 90 00 0B           2158 	mov	dptr,#_ChooseFile_finfo_1_1
   5CD2 E0                 2159 	movx	a,@dptr
   5CD3 FB                 2160 	mov	r3,a
   5CD4 A3                 2161 	inc	dptr
   5CD5 E0                 2162 	movx	a,@dptr
   5CD6 FC                 2163 	mov	r4,a
   5CD7 A3                 2164 	inc	dptr
   5CD8 E0                 2165 	movx	a,@dptr
   5CD9 FD                 2166 	mov	r5,a
   5CDA A3                 2167 	inc	dptr
   5CDB E0                 2168 	movx	a,@dptr
   5CDC FE                 2169 	mov	r6,a
                           2170 ;	genCast
                           2171 ;	genIpush
   5CDD 74 28              2172 	mov	a,#(_ChooseFile_selectedfile_1_1 + 0x0007)
   5CDF C0 E0              2173 	push	acc
   5CE1 74 00              2174 	mov	a,#((_ChooseFile_selectedfile_1_1 + 0x0007) >> 8)
   5CE3 C0 E0              2175 	push	acc
                           2176 ;	Peephole 181	changed mov to clr
   5CE5 E4                 2177 	clr	a
   5CE6 C0 E0              2178 	push	acc
                           2179 ;	genIpush
   5CE8 C0 03              2180 	push	ar3
   5CEA C0 04              2181 	push	ar4
                           2182 ;	genIpush
   5CEC 74 00              2183 	mov	a,#_xbuffer
   5CEE C0 E0              2184 	push	acc
   5CF0 74 30              2185 	mov	a,#(_xbuffer >> 8)
   5CF2 C0 E0              2186 	push	acc
                           2187 ;	Peephole 181	changed mov to clr
   5CF4 E4                 2188 	clr	a
   5CF5 C0 E0              2189 	push	acc
                           2190 ;	genCall
                           2191 ;	Peephole 182.a	used 16 bit load of DPTR
   5CF7 90 00 21           2192 	mov	dptr,#_ChooseFile_selectedfile_1_1
   5CFA 75 F0 00           2193 	mov	b,#0x00
   5CFD 12 44 FC           2194 	lcall	_f_txt_read
   5D00 E5 81              2195 	mov	a,sp
   5D02 24 F8              2196 	add	a,#0xf8
   5D04 F5 81              2197 	mov	sp,a
                           2198 ;	main.c:232: putchar(0);
                           2199 ;	genCall
   5D06 75 82 00           2200 	mov	dpl,#0x00
   5D09 12 08 BA           2201 	lcall	_putchar
                           2202 ;	main.c:233: printf_tiny("TIMESTAMP:%x:%x:%x",i2cReceive(Clock_Address,0x02),i2cReceive(Clock_Address,0x01),i2cReceive(Clock_Address,0x00));
                           2203 ;	genIpush
                           2204 ;	Peephole 181	changed mov to clr
   5D0C E4                 2205 	clr	a
   5D0D C0 E0              2206 	push	acc
                           2207 ;	genCall
   5D0F 75 82 D0           2208 	mov	dpl,#0xD0
   5D12 12 01 09           2209 	lcall	_i2cReceive
   5D15 AB 82              2210 	mov	r3,dpl
   5D17 15 81              2211 	dec	sp
                           2212 ;	genCast
   5D19 7C 00              2213 	mov	r4,#0x00
                           2214 ;	genIpush
   5D1B C0 03              2215 	push	ar3
   5D1D C0 04              2216 	push	ar4
   5D1F 74 01              2217 	mov	a,#0x01
   5D21 C0 E0              2218 	push	acc
                           2219 ;	genCall
   5D23 75 82 D0           2220 	mov	dpl,#0xD0
   5D26 12 01 09           2221 	lcall	_i2cReceive
   5D29 AD 82              2222 	mov	r5,dpl
   5D2B 15 81              2223 	dec	sp
   5D2D D0 04              2224 	pop	ar4
   5D2F D0 03              2225 	pop	ar3
                           2226 ;	genCast
   5D31 8D 02              2227 	mov	ar2,r5
   5D33 7E 00              2228 	mov	r6,#0x00
                           2229 ;	genIpush
   5D35 C0 02              2230 	push	ar2
   5D37 C0 03              2231 	push	ar3
   5D39 C0 04              2232 	push	ar4
   5D3B C0 06              2233 	push	ar6
   5D3D 74 02              2234 	mov	a,#0x02
   5D3F C0 E0              2235 	push	acc
                           2236 ;	genCall
   5D41 75 82 D0           2237 	mov	dpl,#0xD0
   5D44 12 01 09           2238 	lcall	_i2cReceive
   5D47 AF 82              2239 	mov	r7,dpl
   5D49 15 81              2240 	dec	sp
   5D4B D0 06              2241 	pop	ar6
   5D4D D0 04              2242 	pop	ar4
   5D4F D0 03              2243 	pop	ar3
   5D51 D0 02              2244 	pop	ar2
                           2245 ;	genCast
   5D53 7D 00              2246 	mov	r5,#0x00
                           2247 ;	genIpush
   5D55 C0 03              2248 	push	ar3
   5D57 C0 04              2249 	push	ar4
                           2250 ;	genIpush
   5D59 C0 02              2251 	push	ar2
   5D5B C0 06              2252 	push	ar6
                           2253 ;	genIpush
   5D5D C0 07              2254 	push	ar7
   5D5F C0 05              2255 	push	ar5
                           2256 ;	genIpush
   5D61 74 55              2257 	mov	a,#__str_23
   5D63 C0 E0              2258 	push	acc
   5D65 74 75              2259 	mov	a,#(__str_23 >> 8)
   5D67 C0 E0              2260 	push	acc
                           2261 ;	genCall
   5D69 12 5E BD           2262 	lcall	_printf_tiny
   5D6C E5 81              2263 	mov	a,sp
   5D6E 24 F8              2264 	add	a,#0xf8
   5D70 F5 81              2265 	mov	sp,a
                           2266 ;	main.c:234: P3_4=0;
                           2267 ;	genAssign
   5D72 C2 B4              2268 	clr	_P3_4
                           2269 ;	main.c:235: P3_5=1;
                           2270 ;	genAssign
   5D74 D2 B5              2271 	setb	_P3_5
                           2272 ;	main.c:236: Delay(90);
                           2273 ;	genCall
                           2274 ;	Peephole 182.b	used 16 bit load of dptr
   5D76 90 00 5A           2275 	mov	dptr,#0x005A
   5D79 12 14 1D           2276 	lcall	_Delay
                           2277 ;	main.c:237: _sdcc_external_startup();
                           2278 ;	genCall
   5D7C 12 55 C6           2279 	lcall	__sdcc_external_startup
                           2280 ;	main.c:238: entercontinue();
                           2281 ;	genCall
   5D7F 12 5E 6E           2282 	lcall	_entercontinue
                           2283 ;	main.c:239: WDTRST=0X1E;
                           2284 ;	genAssign
   5D82 75 A6 1E           2285 	mov	_WDTRST,#0x1E
                           2286 ;	main.c:240: WDTRST=0XE1;
                           2287 ;	genAssign
   5D85 75 A6 E1           2288 	mov	_WDTRST,#0xE1
                           2289 ;	main.c:241: while(1);
   5D88                    2290 00146$:
                           2291 ;	Peephole 112.b	changed ljmp to sjmp
   5D88 80 FE              2292 	sjmp	00146$
   5D8A                    2293 00152$:
                           2294 ;	main.c:243: if (i==3)
                           2295 ;	genCmpEq
                           2296 ;	gencjneshort
                           2297 ;	Peephole 112.b	changed ljmp to sjmp
                           2298 ;	Peephole 198.b	optimized misc jump sequence
   5D8A BA 03 1D           2299 	cjne	r2,#0x03,00158$
                           2300 ;	Peephole 200.b	removed redundant sjmp
                           2301 ;	Peephole 300	removed redundant label 00272$
                           2302 ;	Peephole 300	removed redundant label 00273$
                           2303 ;	main.c:245: printf_tiny("\r\nCannot Use This File.");
                           2304 ;	genIpush
   5D8D 74 68              2305 	mov	a,#__str_24
   5D8F C0 E0              2306 	push	acc
   5D91 74 75              2307 	mov	a,#(__str_24 >> 8)
   5D93 C0 E0              2308 	push	acc
                           2309 ;	genCall
   5D95 12 5E BD           2310 	lcall	_printf_tiny
   5D98 15 81              2311 	dec	sp
   5D9A 15 81              2312 	dec	sp
                           2313 ;	main.c:246: entercontinue();
                           2314 ;	genCall
   5D9C 12 5E 6E           2315 	lcall	_entercontinue
                           2316 ;	main.c:247: WDTPRG |= 0x07;         // Watchdog Timer Set for 2 seconds
                           2317 ;	genOr
   5D9F 43 A7 07           2318 	orl	_WDTPRG,#0x07
                           2319 ;	main.c:248: WDTRST=0X1E;
                           2320 ;	genAssign
   5DA2 75 A6 1E           2321 	mov	_WDTRST,#0x1E
                           2322 ;	main.c:249: WDTRST=0XE1;
                           2323 ;	genAssign
   5DA5 75 A6 E1           2324 	mov	_WDTRST,#0xE1
                           2325 ;	main.c:250: while(1);
   5DA8                    2326 00154$:
                           2327 ;	main.c:252: while   (f_readdir(&dirs, &finfo) == FR_OK);
                           2328 ;	Peephole 112.b	changed ljmp to sjmp
   5DA8 80 FE              2329 	sjmp	00154$
   5DAA                    2330 00158$:
                           2331 ;	genIpush
   5DAA 74 0B              2332 	mov	a,#_ChooseFile_finfo_1_1
   5DAC C0 E0              2333 	push	acc
   5DAE 74 00              2334 	mov	a,#(_ChooseFile_finfo_1_1 >> 8)
   5DB0 C0 E0              2335 	push	acc
                           2336 ;	Peephole 181	changed mov to clr
   5DB2 E4                 2337 	clr	a
   5DB3 C0 E0              2338 	push	acc
                           2339 ;	genCall
                           2340 ;	Peephole 182.a	used 16 bit load of DPTR
   5DB5 90 00 3C           2341 	mov	dptr,#_ChooseFile_dirs_1_1
   5DB8 75 F0 00           2342 	mov	b,#0x00
   5DBB 12 53 5E           2343 	lcall	_f_readdir
   5DBE AA 82              2344 	mov	r2,dpl
   5DC0 15 81              2345 	dec	sp
   5DC2 15 81              2346 	dec	sp
   5DC4 15 81              2347 	dec	sp
                           2348 ;	genIfx
   5DC6 EA                 2349 	mov	a,r2
                           2350 ;	genIfxJump
                           2351 ;	Peephole 108.b	removed ljmp by inverse jump logic
   5DC7 70 07              2352 	jnz	00163$
                           2353 ;	Peephole 300	removed redundant label 00274$
                           2354 ;	Peephole 112.b	changed ljmp to sjmp
   5DC9 80 DF              2355 	sjmp	00158$
   5DCB                    2356 00162$:
                           2357 ;	main.c:259: return 1;
                           2358 ;	genRet
   5DCB 75 82 01           2359 	mov	dpl,#0x01
                           2360 ;	Peephole 112.b	changed ljmp to sjmp
   5DCE 80 03              2361 	sjmp	00164$
   5DD0                    2362 00163$:
                           2363 ;	main.c:261: return 1;
                           2364 ;	genRet
   5DD0 75 82 01           2365 	mov	dpl,#0x01
   5DD3                    2366 00164$:
   5DD3 85 10 81           2367 	mov	sp,_bp
   5DD6 D0 10              2368 	pop	_bp
   5DD8 22                 2369 	ret
                           2370 	.area CSEG    (CODE)
                           2371 	.area CONST   (CODE)
   733F                    2372 __str_0:
   733F 4D 50 33 20 50 6C  2373 	.ascii "MP3 Player/"
        61 79 65 72 2F
   734A 00                 2374 	.db 0x00
   734B                    2375 __str_1:
   734B 0D                 2376 	.db 0x0D
   734C 0A                 2377 	.db 0x0A
   734D 1B                 2378 	.db 0x1B
   734E 5B 35 3B 33 31 3B  2379 	.ascii "[5;31;47m*************************ESD FINAL PROJECT******"
        34 37 6D 2A 2A 2A
        2A 2A 2A 2A 2A 2A
        2A 2A 2A 2A 2A 2A
        2A 2A 2A 2A 2A 2A
        2A 2A 2A 2A 45 53
        44 20 46 49 4E 41
        4C 20 50 52 4F 4A
        45 43 54 2A 2A 2A
        2A 2A 2A
   7387 2A 2A 2A 2A 2A 2A  2380 	.ascii "**********************"
        2A 2A 2A 2A 2A 2A
        2A 2A 2A 2A 2A 2A
        2A 2A 2A 2A
   739D 1B                 2381 	.db 0x1B
   739E 5B 30 6D           2382 	.ascii "[0m"
   73A1 00                 2383 	.db 0x00
   73A2                    2384 __str_2:
   73A2 0D                 2385 	.db 0x0D
   73A3 0A                 2386 	.db 0x0A
   73A4 54 68 65 20 54 69  2387 	.ascii "The Time is : "
        6D 65 20 69 73 20
        3A 20
   73B2 1B                 2388 	.db 0x1B
   73B3 37 25 78 3A 25 78  2389 	.ascii "7%x:%x:%x"
        3A 25 78
   73BC 0D                 2390 	.db 0x0D
   73BD 0A                 2391 	.db 0x0A
   73BE 00                 2392 	.db 0x00
   73BF                    2393 __str_3:
   73BF 2F                 2394 	.ascii "/"
   73C0 00                 2395 	.db 0x00
   73C1                    2396 __str_4:
   73C1 0D                 2397 	.db 0x0D
   73C2 0A                 2398 	.db 0x0A
   73C3 20 52 6F 6F 74 20  2399 	.ascii " Root Directory - SD Card %s"
        44 69 72 65 63 74
        6F 72 79 20 2D 20
        53 44 20 43 61 72
        64 20 25 73
   73DF 0D                 2400 	.db 0x0D
   73E0 0A                 2401 	.db 0x0A
   73E1 0A                 2402 	.db 0x0A
   73E2 00                 2403 	.db 0x00
   73E3                    2404 __str_5:
   73E3 25 64 20 29        2405 	.ascii "%d )"
   73E7 09                 2406 	.db 0x09
   73E8 00                 2407 	.db 0x00
   73E9                    2408 __str_6:
   73E9 25 73 20 20 25 73  2409 	.ascii "%s  %s"
   73EF 0D                 2410 	.db 0x0D
   73F0 0A                 2411 	.db 0x0A
   73F1 00                 2412 	.db 0x00
   73F2                    2413 __str_7:
   73F2 3C 44 49 52 3E     2414 	.ascii "<DIR>"
   73F7 00                 2415 	.db 0x00
   73F8                    2416 __str_8:
   73F8 20 20 20 20 20     2417 	.ascii "     "
   73FD 00                 2418 	.db 0x00
   73FE                    2419 __str_9:
   73FE 0D                 2420 	.db 0x0D
   73FF 0A                 2421 	.db 0x0A
   7400 0A                 2422 	.db 0x0A
   7401 53 65 6C 65 63 74  2423 	.ascii "Select File:"
        20 46 69 6C 65 3A
   740D 1B                 2424 	.db 0x1B
   740E 37                 2425 	.ascii "7"
   740F 00                 2426 	.db 0x00
   7410                    2427 __str_10:
   7410 43 61 6E 6E 6F 74  2428 	.ascii "Cannot open file."
        20 6F 70 65 6E 20
        66 69 6C 65 2E
   7421 00                 2429 	.db 0x00
   7422                    2430 __str_11:
   7422 0D                 2431 	.db 0x0D
   7423 0A                 2432 	.db 0x0A
   7424 50 6C 61 79 69 6E  2433 	.ascii "Playing File: "
        67 20 46 69 6C 65
        3A 20
   7432 1B                 2434 	.db 0x1B
   7433 5B 35 3B 33 31 3B  2435 	.ascii "[5;31;47m"
        34 37 6D
   743C 00                 2436 	.db 0x00
   743D                    2437 __str_12:
   743D 0D                 2438 	.db 0x0D
   743E 50 6C 61 79 69 6E  2439 	.ascii "Playing File: "
        67 20 46 69 6C 65
        3A 20
   744C 0D                 2440 	.db 0x0D
   744D 0A                 2441 	.db 0x0A
   744E 00                 2442 	.db 0x00
   744F                    2443 __str_13:
   744F 0D                 2444 	.db 0x0D
   7450 0A                 2445 	.db 0x0A
   7451 50 6C 61 79 69 6E  2446 	.ascii "Playing File: "
        67 20 46 69 6C 65
        3A 20
   745F 1B                 2447 	.db 0x1B
   7460 5B 35 3B 33 31 3B  2448 	.ascii "[5;31;47m%s"
        34 37 6D 25 73
   746B 00                 2449 	.db 0x00
   746C                    2450 __str_14:
   746C 1B                 2451 	.db 0x1B
   746D 5B 30 6D           2452 	.ascii "[0m"
   7470 00                 2453 	.db 0x00
   7471                    2454 __str_15:
   7471 0D                 2455 	.db 0x0D
   7472 0A                 2456 	.db 0x0A
   7473 20 27 71 27 20 74  2457 	.ascii " 'q' to stop playing and reselect song"
        6F 20 73 74 6F 70
        20 70 6C 61 79 69
        6E 67 20 61 6E 64
        20 72 65 73 65 6C
        65 63 74 20 73 6F
        6E 67
   7499 00                 2458 	.db 0x00
   749A                    2459 __str_16:
   749A 0D                 2460 	.db 0x0D
   749B 0A                 2461 	.db 0x0A
   749C 20 27 2B 27 20 74  2462 	.ascii " '+' to increase volume"
        6F 20 69 6E 63 72
        65 61 73 65 20 76
        6F 6C 75 6D 65
   74B3 00                 2463 	.db 0x00
   74B4                    2464 __str_17:
   74B4 0D                 2465 	.db 0x0D
   74B5 0A                 2466 	.db 0x0A
   74B6 20 27 2D 27 20 74  2467 	.ascii " '-' to decrease volume"
        6F 20 64 65 63 72
        65 61 73 65 20 76
        6F 6C 75 6D 65
   74CD 00                 2468 	.db 0x00
   74CE                    2469 __str_18:
   74CE 0D                 2470 	.db 0x0D
   74CF 0A                 2471 	.db 0x0A
   74D0 20 27 69 27 20 74  2472 	.ascii " 'i' to query decoder bit-rate"
        6F 20 71 75 65 72
        79 20 64 65 63 6F
        64 65 72 20 62 69
        74 2D 72 61 74 65
   74EE 09                 2473 	.db 0x09
   74EF 09                 2474 	.db 0x09
   74F0 1B                 2475 	.db 0x1B
   74F1 37                 2476 	.ascii "7"
   74F2 00                 2477 	.db 0x00
   74F3                    2478 __str_19:
   74F3 0D                 2479 	.db 0x0D
   74F4 0A                 2480 	.db 0x0A
   74F5 20 27 6D 27 20 74  2481 	.ascii " 'm' to mute"
        6F 20 6D 75 74 65
   7501 00                 2482 	.db 0x00
   7502                    2483 __str_20:
   7502 0D                 2484 	.db 0x0D
   7503 0A                 2485 	.db 0x0A
   7504 20 27 75 27 20 74  2486 	.ascii " 'u' to unmute"
        6F 20 75 6E 6D 75
        74 65
   7512 00                 2487 	.db 0x00
   7513                    2488 __str_21:
   7513 0D                 2489 	.db 0x0D
   7514 0A                 2490 	.db 0x0A
   7515 20 27 70 27 20 74  2491 	.ascii " 'p' to pause/unpause"
        6F 20 70 61 75 73
        65 2F 75 6E 70 61
        75 73 65
   752A 00                 2492 	.db 0x00
   752B                    2493 __str_22:
   752B 0D                 2494 	.db 0x0D
   752C 0A                 2495 	.db 0x0A
   752D 53 65 6E 64 69 6E  2496 	.ascii "Sending "
        67 20
   7535 1B                 2497 	.db 0x1B
   7536 5B 35 3B 33 31 3B  2498 	.ascii "[5;31;47m%s"
        34 37 6D 25 73
   7541 1B                 2499 	.db 0x1B
   7542 5B 30 6D 20 76 69  2500 	.ascii "[0m via Zigbee."
        61 20 5A 69 67 62
        65 65 2E
   7551 0D                 2501 	.db 0x0D
   7552 0A                 2502 	.db 0x0A
   7553 0A                 2503 	.db 0x0A
   7554 00                 2504 	.db 0x00
   7555                    2505 __str_23:
   7555 54 49 4D 45 53 54  2506 	.ascii "TIMESTAMP:%x:%x:%x"
        41 4D 50 3A 25 78
        3A 25 78 3A 25 78
   7567 00                 2507 	.db 0x00
   7568                    2508 __str_24:
   7568 0D                 2509 	.db 0x0D
   7569 0A                 2510 	.db 0x0A
   756A 43 61 6E 6E 6F 74  2511 	.ascii "Cannot Use This File."
        20 55 73 65 20 54
        68 69 73 20 46 69
        6C 65 2E
   757F 00                 2512 	.db 0x00
                           2513 	.area XINIT   (CODE)
