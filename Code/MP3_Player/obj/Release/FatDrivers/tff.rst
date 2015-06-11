                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : FreeWare ANSI-C Compiler
                              3 ; Version 2.6.0 #4309 (Jul 28 2006)
                              4 ; This file generated Sat May 02 15:12:59 2015
                              5 ;--------------------------------------------------------
                              6 	.module tff
                              7 	.optsdcc -mmcs51 --model-small
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _Stat
                             13 	.globl _f_mount
                             14 	.globl _f_open
                             15 	.globl _f_read
                             16 	.globl _f_mp3_read
                             17 	.globl _f_txt_read
                             18 	.globl _f_close
                             19 	.globl _f_lseek
                             20 	.globl _f_opendir
                             21 	.globl _f_readdir
                             22 ;--------------------------------------------------------
                             23 ; special function registers
                             24 ;--------------------------------------------------------
                             25 	.area RSEG    (DATA)
                             26 ;--------------------------------------------------------
                             27 ; special function bits
                             28 ;--------------------------------------------------------
                             29 	.area RSEG    (DATA)
                             30 ;--------------------------------------------------------
                             31 ; overlayable register banks
                             32 ;--------------------------------------------------------
                             33 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                      34 	.ds 8
                             35 ;--------------------------------------------------------
                             36 ; internal ram data
                             37 ;--------------------------------------------------------
                             38 	.area DSEG    (DATA)
   0009                      39 _FatFs:
   0009                      40 	.ds 3
   000C                      41 _fsid:
   000C                      42 	.ds 2
                             43 ;--------------------------------------------------------
                             44 ; overlayable items in internal ram 
                             45 ;--------------------------------------------------------
                             46 	.area OSEG    (OVR,DATA)
                             47 ;--------------------------------------------------------
                             48 ; indirectly addressable internal ram data
                             49 ;--------------------------------------------------------
                             50 	.area ISEG    (DATA)
                             51 ;--------------------------------------------------------
                             52 ; bit data
                             53 ;--------------------------------------------------------
                             54 	.area BSEG    (BIT)
                             55 ;--------------------------------------------------------
                             56 ; paged external ram data
                             57 ;--------------------------------------------------------
                             58 	.area PSEG    (PAG,XDATA)
                             59 ;--------------------------------------------------------
                             60 ; external ram data
                             61 ;--------------------------------------------------------
                             62 	.area XSEG    (XDATA)
   0008                      63 _Stat::
   0008                      64 	.ds 1
                             65 ;--------------------------------------------------------
                             66 ; external initialized ram data
                             67 ;--------------------------------------------------------
                             68 	.area XISEG   (XDATA)
                             69 	.area HOME    (CODE)
                             70 	.area GSINIT0 (CODE)
                             71 	.area GSINIT1 (CODE)
                             72 	.area GSINIT2 (CODE)
                             73 	.area GSINIT3 (CODE)
                             74 	.area GSINIT4 (CODE)
                             75 	.area GSINIT5 (CODE)
                             76 	.area GSINIT  (CODE)
                             77 	.area GSFINAL (CODE)
                             78 	.area CSEG    (CODE)
                             79 ;--------------------------------------------------------
                             80 ; global & static initialisations
                             81 ;--------------------------------------------------------
                             82 	.area HOME    (CODE)
                             83 	.area GSINIT  (CODE)
                             84 	.area GSFINAL (CODE)
                             85 	.area GSINIT  (CODE)
                             86 ;--------------------------------------------------------
                             87 ; Home
                             88 ;--------------------------------------------------------
                             89 	.area HOME    (CODE)
                             90 	.area CSEG    (CODE)
                             91 ;--------------------------------------------------------
                             92 ; code
                             93 ;--------------------------------------------------------
                             94 	.area CSEG    (CODE)
                             95 ;------------------------------------------------------------
                             96 ;Allocation info for local variables in function 'move_window'
                             97 ;------------------------------------------------------------
                             98 ;sector                    Allocated to stack - offset 1
                             99 ;wsect                     Allocated to registers r6 r7 r2 r3 
                            100 ;fs                        Allocated to stack - offset 5
                            101 ;------------------------------------------------------------
                            102 ;	FatDrivers/tff.c:79: BOOL move_window (		/* TRUE: successful, FALSE: failed */
                            103 ;	-----------------------------------------
                            104 ;	 function move_window
                            105 ;	-----------------------------------------
   1779                     106 _move_window:
                    0002    107 	ar2 = 0x02
                    0003    108 	ar3 = 0x03
                    0004    109 	ar4 = 0x04
                    0005    110 	ar5 = 0x05
                    0006    111 	ar6 = 0x06
                    0007    112 	ar7 = 0x07
                    0000    113 	ar0 = 0x00
                    0001    114 	ar1 = 0x01
   1779 C0 10               115 	push	_bp
   177B 85 81 10            116 	mov	_bp,sp
                            117 ;     genReceive
   177E C0 82               118 	push	dpl
   1780 C0 83               119 	push	dph
   1782 C0 F0               120 	push	b
   1784 C0 E0               121 	push	acc
   1786 05 81               122 	inc	sp
   1788 05 81               123 	inc	sp
   178A 05 81               124 	inc	sp
                            125 ;	FatDrivers/tff.c:84: FATFS *fs = FatFs;
                            126 ;	genAssign
   178C E5 10               127 	mov	a,_bp
   178E 24 05               128 	add	a,#0x05
   1790 F8                  129 	mov	r0,a
   1791 A6 09               130 	mov	@r0,_FatFs
   1793 08                  131 	inc	r0
   1794 A6 0A               132 	mov	@r0,(_FatFs + 1)
   1796 08                  133 	inc	r0
   1797 A6 0B               134 	mov	@r0,(_FatFs + 2)
                            135 ;	FatDrivers/tff.c:87: wsect = fs->winsect;
                            136 ;	genPlus
   1799 E5 10               137 	mov	a,_bp
   179B 24 05               138 	add	a,#0x05
   179D F8                  139 	mov	r0,a
                            140 ;     genPlusIncr
   179E 74 04               141 	mov	a,#0x04
   17A0 26                  142 	add	a,@r0
   17A1 FE                  143 	mov	r6,a
                            144 ;	Peephole 181	changed mov to clr
   17A2 E4                  145 	clr	a
   17A3 08                  146 	inc	r0
   17A4 36                  147 	addc	a,@r0
   17A5 FF                  148 	mov	r7,a
   17A6 08                  149 	inc	r0
   17A7 86 02               150 	mov	ar2,@r0
                            151 ;	genPointerGet
                            152 ;	genGenPointerGet
   17A9 8E 82               153 	mov	dpl,r6
   17AB 8F 83               154 	mov	dph,r7
   17AD 8A F0               155 	mov	b,r2
   17AF 12 62 42            156 	lcall	__gptrget
   17B2 FE                  157 	mov	r6,a
   17B3 A3                  158 	inc	dptr
   17B4 12 62 42            159 	lcall	__gptrget
   17B7 FF                  160 	mov	r7,a
   17B8 A3                  161 	inc	dptr
   17B9 12 62 42            162 	lcall	__gptrget
   17BC FA                  163 	mov	r2,a
   17BD A3                  164 	inc	dptr
   17BE 12 62 42            165 	lcall	__gptrget
   17C1 FB                  166 	mov	r3,a
                            167 ;	genAssign
                            168 ;	FatDrivers/tff.c:88: if (wsect != sector) {	/* Changed current window */
                            169 ;	genCmpEq
   17C2 A8 10               170 	mov	r0,_bp
   17C4 08                  171 	inc	r0
                            172 ;	gencjneshort
   17C5 E6                  173 	mov	a,@r0
   17C6 B5 06 12            174 	cjne	a,ar6,00112$
   17C9 08                  175 	inc	r0
   17CA E6                  176 	mov	a,@r0
   17CB B5 07 0D            177 	cjne	a,ar7,00112$
   17CE 08                  178 	inc	r0
   17CF E6                  179 	mov	a,@r0
   17D0 B5 02 08            180 	cjne	a,ar2,00112$
   17D3 08                  181 	inc	r0
   17D4 E6                  182 	mov	a,@r0
   17D5 B5 03 03            183 	cjne	a,ar3,00112$
   17D8 02 18 5A            184 	ljmp	00106$
   17DB                     185 00112$:
                            186 ;	FatDrivers/tff.c:103: if (sector) {
                            187 ;	genIfx
   17DB A8 10               188 	mov	r0,_bp
   17DD 08                  189 	inc	r0
   17DE E6                  190 	mov	a,@r0
   17DF 08                  191 	inc	r0
   17E0 46                  192 	orl	a,@r0
   17E1 08                  193 	inc	r0
   17E2 46                  194 	orl	a,@r0
   17E3 08                  195 	inc	r0
   17E4 46                  196 	orl	a,@r0
                            197 ;	genIfxJump
                            198 ;	Peephole 108.c	removed ljmp by inverse jump logic
   17E5 60 73               199 	jz	00106$
                            200 ;	Peephole 300	removed redundant label 00113$
                            201 ;	FatDrivers/tff.c:104: if (disk_read(0, fs->win, sector, 1) != RES_OK)
                            202 ;	genPlus
   17E7 E5 10               203 	mov	a,_bp
   17E9 24 05               204 	add	a,#0x05
   17EB F8                  205 	mov	r0,a
                            206 ;     genPlusIncr
   17EC 74 20               207 	mov	a,#0x20
   17EE 26                  208 	add	a,@r0
   17EF FA                  209 	mov	r2,a
                            210 ;	Peephole 181	changed mov to clr
   17F0 E4                  211 	clr	a
   17F1 08                  212 	inc	r0
   17F2 36                  213 	addc	a,@r0
   17F3 FB                  214 	mov	r3,a
   17F4 08                  215 	inc	r0
   17F5 86 04               216 	mov	ar4,@r0
                            217 ;	genIpush
   17F7 74 01               218 	mov	a,#0x01
   17F9 C0 E0               219 	push	acc
                            220 ;	genIpush
   17FB A8 10               221 	mov	r0,_bp
   17FD 08                  222 	inc	r0
   17FE E6                  223 	mov	a,@r0
   17FF C0 E0               224 	push	acc
   1801 08                  225 	inc	r0
   1802 E6                  226 	mov	a,@r0
   1803 C0 E0               227 	push	acc
   1805 08                  228 	inc	r0
   1806 E6                  229 	mov	a,@r0
   1807 C0 E0               230 	push	acc
   1809 08                  231 	inc	r0
   180A E6                  232 	mov	a,@r0
   180B C0 E0               233 	push	acc
                            234 ;	genIpush
   180D C0 02               235 	push	ar2
   180F C0 03               236 	push	ar3
   1811 C0 04               237 	push	ar4
                            238 ;	genCall
   1813 75 82 00            239 	mov	dpl,#0x00
   1816 12 0D 3E            240 	lcall	_disk_read
   1819 AA 82               241 	mov	r2,dpl
   181B E5 81               242 	mov	a,sp
   181D 24 F8               243 	add	a,#0xf8
   181F F5 81               244 	mov	sp,a
                            245 ;	genCmpEq
                            246 ;	gencjneshort
   1821 BA 00 02            247 	cjne	r2,#0x00,00114$
                            248 ;	Peephole 112.b	changed ljmp to sjmp
   1824 80 05               249 	sjmp	00102$
   1826                     250 00114$:
                            251 ;	FatDrivers/tff.c:105: return FALSE;
                            252 ;	genRet
   1826 75 82 00            253 	mov	dpl,#0x00
                            254 ;	Peephole 112.b	changed ljmp to sjmp
   1829 80 32               255 	sjmp	00107$
   182B                     256 00102$:
                            257 ;	FatDrivers/tff.c:106: fs->winsect = sector;
                            258 ;	genPlus
   182B E5 10               259 	mov	a,_bp
   182D 24 05               260 	add	a,#0x05
   182F F8                  261 	mov	r0,a
                            262 ;     genPlusIncr
   1830 74 04               263 	mov	a,#0x04
   1832 26                  264 	add	a,@r0
   1833 FA                  265 	mov	r2,a
                            266 ;	Peephole 181	changed mov to clr
   1834 E4                  267 	clr	a
   1835 08                  268 	inc	r0
   1836 36                  269 	addc	a,@r0
   1837 FB                  270 	mov	r3,a
   1838 08                  271 	inc	r0
   1839 86 04               272 	mov	ar4,@r0
                            273 ;	genPointerSet
                            274 ;	genGenPointerSet
   183B 8A 82               275 	mov	dpl,r2
   183D 8B 83               276 	mov	dph,r3
   183F 8C F0               277 	mov	b,r4
   1841 A8 10               278 	mov	r0,_bp
   1843 08                  279 	inc	r0
   1844 E6                  280 	mov	a,@r0
   1845 12 5E A4            281 	lcall	__gptrput
   1848 A3                  282 	inc	dptr
   1849 08                  283 	inc	r0
   184A E6                  284 	mov	a,@r0
   184B 12 5E A4            285 	lcall	__gptrput
   184E A3                  286 	inc	dptr
   184F 08                  287 	inc	r0
   1850 E6                  288 	mov	a,@r0
   1851 12 5E A4            289 	lcall	__gptrput
   1854 A3                  290 	inc	dptr
   1855 08                  291 	inc	r0
   1856 E6                  292 	mov	a,@r0
   1857 12 5E A4            293 	lcall	__gptrput
   185A                     294 00106$:
                            295 ;	FatDrivers/tff.c:109: return TRUE;
                            296 ;	genRet
   185A 75 82 01            297 	mov	dpl,#0x01
   185D                     298 00107$:
   185D 85 10 81            299 	mov	sp,_bp
   1860 D0 10               300 	pop	_bp
   1862 22                  301 	ret
                            302 ;------------------------------------------------------------
                            303 ;Allocation info for local variables in function 'get_cluster'
                            304 ;------------------------------------------------------------
                            305 ;clust                     Allocated to stack - offset 1
                            306 ;wc                        Allocated to stack - offset 5
                            307 ;bc                        Allocated to stack - offset 7
                            308 ;fatsect                   Allocated to stack - offset 9
                            309 ;fs                        Allocated to stack - offset 13
                            310 ;------------------------------------------------------------
                            311 ;	FatDrivers/tff.c:156: CLUST get_cluster (		/* 0,>=2: successful, 1: failed */
                            312 ;	-----------------------------------------
                            313 ;	 function get_cluster
                            314 ;	-----------------------------------------
   1863                     315 _get_cluster:
   1863 C0 10               316 	push	_bp
   1865 85 81 10            317 	mov	_bp,sp
                            318 ;     genReceive
   1868 C0 82               319 	push	dpl
   186A C0 83               320 	push	dph
   186C C0 F0               321 	push	b
   186E C0 E0               322 	push	acc
   1870 E5 81               323 	mov	a,sp
   1872 24 0F               324 	add	a,#0x0f
   1874 F5 81               325 	mov	sp,a
                            326 ;	FatDrivers/tff.c:162: FATFS *fs = FatFs;
                            327 ;	genAssign
   1876 E5 10               328 	mov	a,_bp
   1878 24 0D               329 	add	a,#0x0d
   187A F8                  330 	mov	r0,a
   187B A6 09               331 	mov	@r0,_FatFs
   187D 08                  332 	inc	r0
   187E A6 0A               333 	mov	@r0,(_FatFs + 1)
   1880 08                  334 	inc	r0
   1881 A6 0B               335 	mov	@r0,(_FatFs + 2)
                            336 ;	FatDrivers/tff.c:165: if (clust >= 2 && clust < fs->max_clust) {		/* Valid cluster# */
                            337 ;	genCmpLt
   1883 A8 10               338 	mov	r0,_bp
   1885 08                  339 	inc	r0
                            340 ;	genCmp
   1886 C3                  341 	clr	c
   1887 E6                  342 	mov	a,@r0
   1888 94 02               343 	subb	a,#0x02
   188A 08                  344 	inc	r0
   188B E6                  345 	mov	a,@r0
   188C 94 00               346 	subb	a,#0x00
   188E 08                  347 	inc	r0
   188F E6                  348 	mov	a,@r0
   1890 94 00               349 	subb	a,#0x00
   1892 08                  350 	inc	r0
   1893 E6                  351 	mov	a,@r0
   1894 94 00               352 	subb	a,#0x00
                            353 ;	genIfxJump
   1896 50 03               354 	jnc	00130$
   1898 02 1B 93            355 	ljmp	00114$
   189B                     356 00130$:
                            357 ;	genPlus
   189B E5 10               358 	mov	a,_bp
   189D 24 0D               359 	add	a,#0x0d
   189F F8                  360 	mov	r0,a
                            361 ;     genPlusIncr
   18A0 74 18               362 	mov	a,#0x18
   18A2 26                  363 	add	a,@r0
   18A3 FE                  364 	mov	r6,a
                            365 ;	Peephole 181	changed mov to clr
   18A4 E4                  366 	clr	a
   18A5 08                  367 	inc	r0
   18A6 36                  368 	addc	a,@r0
   18A7 FF                  369 	mov	r7,a
   18A8 08                  370 	inc	r0
   18A9 86 02               371 	mov	ar2,@r0
                            372 ;	genPointerGet
                            373 ;	genGenPointerGet
   18AB 8E 82               374 	mov	dpl,r6
   18AD 8F 83               375 	mov	dph,r7
   18AF 8A F0               376 	mov	b,r2
   18B1 12 62 42            377 	lcall	__gptrget
   18B4 FE                  378 	mov	r6,a
   18B5 A3                  379 	inc	dptr
   18B6 12 62 42            380 	lcall	__gptrget
   18B9 FF                  381 	mov	r7,a
   18BA A3                  382 	inc	dptr
   18BB 12 62 42            383 	lcall	__gptrget
   18BE FA                  384 	mov	r2,a
   18BF A3                  385 	inc	dptr
   18C0 12 62 42            386 	lcall	__gptrget
   18C3 FB                  387 	mov	r3,a
                            388 ;	genCmpLt
   18C4 A8 10               389 	mov	r0,_bp
   18C6 08                  390 	inc	r0
                            391 ;	genCmp
   18C7 C3                  392 	clr	c
   18C8 E6                  393 	mov	a,@r0
   18C9 9E                  394 	subb	a,r6
   18CA 08                  395 	inc	r0
   18CB E6                  396 	mov	a,@r0
   18CC 9F                  397 	subb	a,r7
   18CD 08                  398 	inc	r0
   18CE E6                  399 	mov	a,@r0
   18CF 9A                  400 	subb	a,r2
   18D0 08                  401 	inc	r0
   18D1 E6                  402 	mov	a,@r0
   18D2 9B                  403 	subb	a,r3
                            404 ;	genIfxJump
   18D3 40 03               405 	jc	00131$
   18D5 02 1B 93            406 	ljmp	00114$
   18D8                     407 00131$:
                            408 ;	FatDrivers/tff.c:166: fatsect = fs->fatbase;
                            409 ;	genPlus
   18D8 E5 10               410 	mov	a,_bp
   18DA 24 0D               411 	add	a,#0x0d
   18DC F8                  412 	mov	r0,a
                            413 ;     genPlusIncr
   18DD 74 08               414 	mov	a,#0x08
   18DF 26                  415 	add	a,@r0
   18E0 FA                  416 	mov	r2,a
                            417 ;	Peephole 181	changed mov to clr
   18E1 E4                  418 	clr	a
   18E2 08                  419 	inc	r0
   18E3 36                  420 	addc	a,@r0
   18E4 FB                  421 	mov	r3,a
   18E5 08                  422 	inc	r0
   18E6 86 04               423 	mov	ar4,@r0
                            424 ;	genPointerGet
                            425 ;	genGenPointerGet
   18E8 8A 82               426 	mov	dpl,r2
   18EA 8B 83               427 	mov	dph,r3
   18EC 8C F0               428 	mov	b,r4
   18EE 12 62 42            429 	lcall	__gptrget
   18F1 FA                  430 	mov	r2,a
   18F2 A3                  431 	inc	dptr
   18F3 12 62 42            432 	lcall	__gptrget
   18F6 FB                  433 	mov	r3,a
   18F7 A3                  434 	inc	dptr
   18F8 12 62 42            435 	lcall	__gptrget
   18FB FC                  436 	mov	r4,a
   18FC A3                  437 	inc	dptr
   18FD 12 62 42            438 	lcall	__gptrget
   1900 FD                  439 	mov	r5,a
                            440 ;	genAssign
   1901 E5 10               441 	mov	a,_bp
   1903 24 09               442 	add	a,#0x09
   1905 F8                  443 	mov	r0,a
   1906 A6 02               444 	mov	@r0,ar2
   1908 08                  445 	inc	r0
   1909 A6 03               446 	mov	@r0,ar3
   190B 08                  447 	inc	r0
   190C A6 04               448 	mov	@r0,ar4
   190E 08                  449 	inc	r0
   190F A6 05               450 	mov	@r0,ar5
                            451 ;	FatDrivers/tff.c:167: switch (fs->fs_type) {
                            452 ;	genPlus
   1911 E5 10               453 	mov	a,_bp
   1913 24 0D               454 	add	a,#0x0d
   1915 F8                  455 	mov	r0,a
                            456 ;     genPlusIncr
   1916 74 1C               457 	mov	a,#0x1C
   1918 26                  458 	add	a,@r0
   1919 FE                  459 	mov	r6,a
                            460 ;	Peephole 181	changed mov to clr
   191A E4                  461 	clr	a
   191B 08                  462 	inc	r0
   191C 36                  463 	addc	a,@r0
   191D FF                  464 	mov	r7,a
   191E 08                  465 	inc	r0
   191F 86 02               466 	mov	ar2,@r0
                            467 ;	genPointerGet
                            468 ;	genGenPointerGet
   1921 8E 82               469 	mov	dpl,r6
   1923 8F 83               470 	mov	dph,r7
   1925 8A F0               471 	mov	b,r2
   1927 12 62 42            472 	lcall	__gptrget
   192A FA                  473 	mov	r2,a
                            474 ;	genCmpEq
                            475 ;	gencjneshort
   192B BA 01 02            476 	cjne	r2,#0x01,00132$
                            477 ;	Peephole 112.b	changed ljmp to sjmp
   192E 80 0F               478 	sjmp	00101$
   1930                     479 00132$:
                            480 ;	genCmpEq
                            481 ;	gencjneshort
   1930 BA 02 03            482 	cjne	r2,#0x02,00133$
   1933 02 1A 84            483 	ljmp	00106$
   1936                     484 00133$:
                            485 ;	genCmpEq
                            486 ;	gencjneshort
   1936 BA 03 03            487 	cjne	r2,#0x03,00134$
   1939 02 1A FB            488 	ljmp	00109$
   193C                     489 00134$:
   193C 02 1B 93            490 	ljmp	00114$
                            491 ;	FatDrivers/tff.c:168: case FS_FAT12 :
   193F                     492 00101$:
                            493 ;	FatDrivers/tff.c:169: bc = (WORD)clust * 3 / 2;
                            494 ;	genCast
   193F A8 10               495 	mov	r0,_bp
   1941 08                  496 	inc	r0
   1942 86 82               497 	mov	dpl,@r0
   1944 08                  498 	inc	r0
   1945 86 83               499 	mov	dph,@r0
                            500 ;	genIpush
   1947 74 03               501 	mov	a,#0x03
   1949 C0 E0               502 	push	acc
                            503 ;	Peephole 181	changed mov to clr
   194B E4                  504 	clr	a
   194C C0 E0               505 	push	acc
                            506 ;	genCall
   194E 12 5F C5            507 	lcall	__mulint
   1951 AA 82               508 	mov	r2,dpl
   1953 AB 83               509 	mov	r3,dph
   1955 15 81               510 	dec	sp
   1957 15 81               511 	dec	sp
                            512 ;	genRightShift
                            513 ;	genRightShiftLiteral
   1959 E5 10               514 	mov	a,_bp
   195B 24 07               515 	add	a,#0x07
   195D F8                  516 	mov	r0,a
                            517 ;	genrshTwo
   195E A6 02               518 	mov	@r0,ar2
   1960 EB                  519 	mov	a,r3
   1961 C3                  520 	clr	c
   1962 13                  521 	rrc	a
   1963 C6                  522 	xch	a,@r0
   1964 13                  523 	rrc	a
   1965 C6                  524 	xch	a,@r0
   1966 08                  525 	inc	r0
   1967 F6                  526 	mov	@r0,a
                            527 ;	FatDrivers/tff.c:170: if (!move_window(fatsect + bc / 512)) break;
                            528 ;	genRightShift
                            529 ;	genRightShiftLiteral
   1968 E5 10               530 	mov	a,_bp
   196A 24 07               531 	add	a,#0x07
                            532 ;	genrshTwo
                            533 ;	Peephole 185	changed order of increment (acc incremented also!)
   196C 04                  534 	inc	a
   196D F8                  535 	mov	r0,a
   196E E6                  536 	mov	a,@r0
   196F C3                  537 	clr	c
   1970 13                  538 	rrc	a
   1971 FC                  539 	mov	r4,a
                            540 ;	genCast
                            541 ;	genPlus
                            542 ;	Peephole 3.c	changed mov to clr
                            543 ;	Peephole 3.b	changed mov to clr
   1972 E4                  544 	clr	a
   1973 FD                  545 	mov	r5,a
   1974 FE                  546 	mov	r6,a
   1975 FF                  547 	mov	r7,a
   1976 E5 10               548 	mov	a,_bp
   1978 24 09               549 	add	a,#0x09
   197A F8                  550 	mov	r0,a
                            551 ;	Peephole 236.g	used r4 instead of ar4
   197B EC                  552 	mov	a,r4
   197C 26                  553 	add	a,@r0
   197D FC                  554 	mov	r4,a
                            555 ;	Peephole 236.g	used r5 instead of ar5
   197E ED                  556 	mov	a,r5
   197F 08                  557 	inc	r0
   1980 36                  558 	addc	a,@r0
   1981 FD                  559 	mov	r5,a
                            560 ;	Peephole 236.g	used r6 instead of ar6
   1982 EE                  561 	mov	a,r6
   1983 08                  562 	inc	r0
   1984 36                  563 	addc	a,@r0
   1985 FE                  564 	mov	r6,a
                            565 ;	Peephole 236.g	used r7 instead of ar7
   1986 EF                  566 	mov	a,r7
   1987 08                  567 	inc	r0
   1988 36                  568 	addc	a,@r0
                            569 ;	genCall
   1989 FF                  570 	mov	r7,a
   198A 8C 82               571 	mov	dpl,r4
   198C 8D 83               572 	mov	dph,r5
   198E 8E F0               573 	mov	b,r6
                            574 ;	Peephole 191	removed redundant mov
   1990 12 17 79            575 	lcall	_move_window
   1993 E5 82               576 	mov	a,dpl
                            577 ;	genIfx
                            578 ;	genIfxJump
   1995 70 03               579 	jnz	00135$
   1997 02 1B 93            580 	ljmp	00114$
   199A                     581 00135$:
                            582 ;	FatDrivers/tff.c:171: wc = fs->win[bc % 512]; bc++;
                            583 ;	genPlus
   199A E5 10               584 	mov	a,_bp
   199C 24 0D               585 	add	a,#0x0d
   199E F8                  586 	mov	r0,a
                            587 ;     genPlusIncr
   199F 74 20               588 	mov	a,#0x20
   19A1 26                  589 	add	a,@r0
   19A2 FC                  590 	mov	r4,a
                            591 ;	Peephole 181	changed mov to clr
   19A3 E4                  592 	clr	a
   19A4 08                  593 	inc	r0
   19A5 36                  594 	addc	a,@r0
   19A6 FD                  595 	mov	r5,a
   19A7 08                  596 	inc	r0
   19A8 86 06               597 	mov	ar6,@r0
                            598 ;	genAnd
   19AA E5 10               599 	mov	a,_bp
   19AC 24 07               600 	add	a,#0x07
   19AE F8                  601 	mov	r0,a
   19AF 86 07               602 	mov	ar7,@r0
   19B1 74 01               603 	mov	a,#0x01
   19B3 08                  604 	inc	r0
   19B4 56                  605 	anl	a,@r0
   19B5 FA                  606 	mov	r2,a
                            607 ;	genPlus
                            608 ;	Peephole 236.g	used r7 instead of ar7
   19B6 EF                  609 	mov	a,r7
                            610 ;	Peephole 236.a	used r4 instead of ar4
   19B7 2C                  611 	add	a,r4
   19B8 FC                  612 	mov	r4,a
                            613 ;	Peephole 236.g	used r2 instead of ar2
   19B9 EA                  614 	mov	a,r2
                            615 ;	Peephole 236.b	used r5 instead of ar5
   19BA 3D                  616 	addc	a,r5
   19BB FD                  617 	mov	r5,a
                            618 ;	genPointerGet
                            619 ;	genGenPointerGet
   19BC 8C 82               620 	mov	dpl,r4
   19BE 8D 83               621 	mov	dph,r5
   19C0 8E F0               622 	mov	b,r6
   19C2 12 62 42            623 	lcall	__gptrget
   19C5 FC                  624 	mov	r4,a
                            625 ;	genCast
   19C6 E5 10               626 	mov	a,_bp
   19C8 24 05               627 	add	a,#0x05
   19CA F8                  628 	mov	r0,a
   19CB A6 04               629 	mov	@r0,ar4
   19CD 08                  630 	inc	r0
   19CE 76 00               631 	mov	@r0,#0x00
                            632 ;	genPlus
   19D0 E5 10               633 	mov	a,_bp
   19D2 24 07               634 	add	a,#0x07
   19D4 F8                  635 	mov	r0,a
                            636 ;     genPlusIncr
   19D5 74 01               637 	mov	a,#0x01
   19D7 26                  638 	add	a,@r0
   19D8 F6                  639 	mov	@r0,a
                            640 ;	Peephole 181	changed mov to clr
   19D9 E4                  641 	clr	a
   19DA 08                  642 	inc	r0
   19DB 36                  643 	addc	a,@r0
   19DC F6                  644 	mov	@r0,a
                            645 ;	FatDrivers/tff.c:172: if (!move_window(fatsect + bc / 512)) break;
                            646 ;	genRightShift
                            647 ;	genRightShiftLiteral
   19DD E5 10               648 	mov	a,_bp
   19DF 24 07               649 	add	a,#0x07
                            650 ;	genrshTwo
                            651 ;	Peephole 185	changed order of increment (acc incremented also!)
   19E1 04                  652 	inc	a
   19E2 F8                  653 	mov	r0,a
   19E3 E6                  654 	mov	a,@r0
   19E4 C3                  655 	clr	c
   19E5 13                  656 	rrc	a
   19E6 FB                  657 	mov	r3,a
                            658 ;	genCast
                            659 ;	genPlus
                            660 ;	Peephole 3.c	changed mov to clr
                            661 ;	Peephole 3.b	changed mov to clr
   19E7 E4                  662 	clr	a
   19E8 FD                  663 	mov	r5,a
   19E9 FE                  664 	mov	r6,a
   19EA FF                  665 	mov	r7,a
   19EB E5 10               666 	mov	a,_bp
   19ED 24 09               667 	add	a,#0x09
   19EF F8                  668 	mov	r0,a
                            669 ;	Peephole 236.g	used r3 instead of ar3
   19F0 EB                  670 	mov	a,r3
   19F1 26                  671 	add	a,@r0
   19F2 FB                  672 	mov	r3,a
                            673 ;	Peephole 236.g	used r5 instead of ar5
   19F3 ED                  674 	mov	a,r5
   19F4 08                  675 	inc	r0
   19F5 36                  676 	addc	a,@r0
   19F6 FD                  677 	mov	r5,a
                            678 ;	Peephole 236.g	used r6 instead of ar6
   19F7 EE                  679 	mov	a,r6
   19F8 08                  680 	inc	r0
   19F9 36                  681 	addc	a,@r0
   19FA FE                  682 	mov	r6,a
                            683 ;	Peephole 236.g	used r7 instead of ar7
   19FB EF                  684 	mov	a,r7
   19FC 08                  685 	inc	r0
   19FD 36                  686 	addc	a,@r0
                            687 ;	genCall
   19FE FF                  688 	mov	r7,a
   19FF 8B 82               689 	mov	dpl,r3
   1A01 8D 83               690 	mov	dph,r5
   1A03 8E F0               691 	mov	b,r6
                            692 ;	Peephole 191	removed redundant mov
   1A05 12 17 79            693 	lcall	_move_window
   1A08 E5 82               694 	mov	a,dpl
                            695 ;	genIfx
                            696 ;	genIfxJump
   1A0A 70 03               697 	jnz	00136$
   1A0C 02 1B 93            698 	ljmp	00114$
   1A0F                     699 00136$:
                            700 ;	FatDrivers/tff.c:173: wc |= (WORD)fs->win[bc % 512] << 8;
                            701 ;	genPlus
   1A0F E5 10               702 	mov	a,_bp
   1A11 24 0D               703 	add	a,#0x0d
   1A13 F8                  704 	mov	r0,a
                            705 ;     genPlusIncr
   1A14 74 20               706 	mov	a,#0x20
   1A16 26                  707 	add	a,@r0
   1A17 FB                  708 	mov	r3,a
                            709 ;	Peephole 181	changed mov to clr
   1A18 E4                  710 	clr	a
   1A19 08                  711 	inc	r0
   1A1A 36                  712 	addc	a,@r0
   1A1B FD                  713 	mov	r5,a
   1A1C 08                  714 	inc	r0
   1A1D 86 06               715 	mov	ar6,@r0
                            716 ;	genAnd
   1A1F E5 10               717 	mov	a,_bp
   1A21 24 07               718 	add	a,#0x07
   1A23 F8                  719 	mov	r0,a
   1A24 86 07               720 	mov	ar7,@r0
   1A26 74 01               721 	mov	a,#0x01
   1A28 08                  722 	inc	r0
   1A29 56                  723 	anl	a,@r0
   1A2A FA                  724 	mov	r2,a
                            725 ;	genPlus
                            726 ;	Peephole 236.g	used r7 instead of ar7
   1A2B EF                  727 	mov	a,r7
                            728 ;	Peephole 236.a	used r3 instead of ar3
   1A2C 2B                  729 	add	a,r3
   1A2D FB                  730 	mov	r3,a
                            731 ;	Peephole 236.g	used r2 instead of ar2
   1A2E EA                  732 	mov	a,r2
                            733 ;	Peephole 236.b	used r5 instead of ar5
   1A2F 3D                  734 	addc	a,r5
   1A30 FD                  735 	mov	r5,a
                            736 ;	genPointerGet
                            737 ;	genGenPointerGet
   1A31 8B 82               738 	mov	dpl,r3
   1A33 8D 83               739 	mov	dph,r5
   1A35 8E F0               740 	mov	b,r6
   1A37 12 62 42            741 	lcall	__gptrget
   1A3A FB                  742 	mov	r3,a
                            743 ;	genCast
                            744 ;	genLeftShift
                            745 ;	genLeftShiftLiteral
                            746 ;	genlshTwo
                            747 ;	peephole 177.e	removed redundant move
   1A3B 8B 02               748 	mov	ar2,r3
   1A3D 7B 00               749 	mov	r3,#0x00
                            750 ;	genOr
   1A3F E5 10               751 	mov	a,_bp
   1A41 24 05               752 	add	a,#0x05
   1A43 F8                  753 	mov	r0,a
   1A44 EB                  754 	mov	a,r3
   1A45 46                  755 	orl	a,@r0
   1A46 F6                  756 	mov	@r0,a
   1A47 EA                  757 	mov	a,r2
   1A48 08                  758 	inc	r0
   1A49 46                  759 	orl	a,@r0
   1A4A F6                  760 	mov	@r0,a
                            761 ;	FatDrivers/tff.c:174: return (clust & 1) ? (wc >> 4) : (wc & 0xFFF);
                            762 ;	genAnd
   1A4B A8 10               763 	mov	r0,_bp
   1A4D 08                  764 	inc	r0
   1A4E E6                  765 	mov	a,@r0
                            766 ;	genIfxJump
                            767 ;	Peephole 108.d	removed ljmp by inverse jump logic
   1A4F 30 E0 18            768 	jnb	acc.0,00118$
                            769 ;	Peephole 300	removed redundant label 00137$
                            770 ;	genRightShift
                            771 ;	genRightShiftLiteral
   1A52 E5 10               772 	mov	a,_bp
   1A54 24 05               773 	add	a,#0x05
   1A56 F8                  774 	mov	r0,a
                            775 ;	genrshTwo
   1A57 86 02               776 	mov	ar2,@r0
   1A59 08                  777 	inc	r0
   1A5A E6                  778 	mov	a,@r0
   1A5B C4                  779 	swap	a
   1A5C CA                  780 	xch	a,r2
   1A5D C4                  781 	swap	a
   1A5E 54 0F               782 	anl	a,#0x0f
   1A60 6A                  783 	xrl	a,r2
   1A61 CA                  784 	xch	a,r2
   1A62 54 0F               785 	anl	a,#0x0f
   1A64 CA                  786 	xch	a,r2
   1A65 6A                  787 	xrl	a,r2
   1A66 CA                  788 	xch	a,r2
   1A67 FB                  789 	mov	r3,a
                            790 ;	Peephole 112.b	changed ljmp to sjmp
   1A68 80 0C               791 	sjmp	00119$
   1A6A                     792 00118$:
                            793 ;	genAnd
   1A6A E5 10               794 	mov	a,_bp
   1A6C 24 05               795 	add	a,#0x05
   1A6E F8                  796 	mov	r0,a
   1A6F 86 02               797 	mov	ar2,@r0
   1A71 74 0F               798 	mov	a,#0x0F
   1A73 08                  799 	inc	r0
   1A74 56                  800 	anl	a,@r0
   1A75 FB                  801 	mov	r3,a
   1A76                     802 00119$:
                            803 ;	genCast
   1A76 7C 00               804 	mov	r4,#0x00
   1A78 7D 00               805 	mov	r5,#0x00
                            806 ;	genRet
   1A7A 8A 82               807 	mov	dpl,r2
   1A7C 8B 83               808 	mov	dph,r3
   1A7E 8C F0               809 	mov	b,r4
   1A80 ED                  810 	mov	a,r5
   1A81 02 1B 99            811 	ljmp	00116$
                            812 ;	FatDrivers/tff.c:176: case FS_FAT16 :
   1A84                     813 00106$:
                            814 ;	FatDrivers/tff.c:177: if (!move_window(fatsect + clust / 256)) break;
                            815 ;	genRightShift
                            816 ;	genRightShiftLiteral
   1A84 A8 10               817 	mov	r0,_bp
   1A86 08                  818 	inc	r0
                            819 ;	genrshFour
   1A87 08                  820 	inc	r0
   1A88 86 02               821 	mov	ar2,@r0
   1A8A 08                  822 	inc	r0
   1A8B 86 03               823 	mov	ar3,@r0
   1A8D 08                  824 	inc	r0
   1A8E 86 04               825 	mov	ar4,@r0
   1A90 7D 00               826 	mov	r5,#0x00
                            827 ;	genPlus
   1A92 E5 10               828 	mov	a,_bp
   1A94 24 09               829 	add	a,#0x09
   1A96 F8                  830 	mov	r0,a
                            831 ;	Peephole 236.g	used r2 instead of ar2
   1A97 EA                  832 	mov	a,r2
   1A98 26                  833 	add	a,@r0
   1A99 FA                  834 	mov	r2,a
                            835 ;	Peephole 236.g	used r3 instead of ar3
   1A9A EB                  836 	mov	a,r3
   1A9B 08                  837 	inc	r0
   1A9C 36                  838 	addc	a,@r0
   1A9D FB                  839 	mov	r3,a
                            840 ;	Peephole 236.g	used r4 instead of ar4
   1A9E EC                  841 	mov	a,r4
   1A9F 08                  842 	inc	r0
   1AA0 36                  843 	addc	a,@r0
   1AA1 FC                  844 	mov	r4,a
                            845 ;	Peephole 236.g	used r5 instead of ar5
   1AA2 ED                  846 	mov	a,r5
   1AA3 08                  847 	inc	r0
   1AA4 36                  848 	addc	a,@r0
                            849 ;	genCall
   1AA5 FD                  850 	mov	r5,a
   1AA6 8A 82               851 	mov	dpl,r2
   1AA8 8B 83               852 	mov	dph,r3
   1AAA 8C F0               853 	mov	b,r4
                            854 ;	Peephole 191	removed redundant mov
   1AAC 12 17 79            855 	lcall	_move_window
   1AAF E5 82               856 	mov	a,dpl
                            857 ;	genIfx
                            858 ;	genIfxJump
   1AB1 70 03               859 	jnz	00138$
   1AB3 02 1B 93            860 	ljmp	00114$
   1AB6                     861 00138$:
                            862 ;	FatDrivers/tff.c:178: return LD_WORD(&fs->win[((WORD)clust * 2) % 512]);
                            863 ;	genPlus
   1AB6 E5 10               864 	mov	a,_bp
   1AB8 24 0D               865 	add	a,#0x0d
   1ABA F8                  866 	mov	r0,a
                            867 ;     genPlusIncr
   1ABB 74 20               868 	mov	a,#0x20
   1ABD 26                  869 	add	a,@r0
   1ABE FA                  870 	mov	r2,a
                            871 ;	Peephole 181	changed mov to clr
   1ABF E4                  872 	clr	a
   1AC0 08                  873 	inc	r0
   1AC1 36                  874 	addc	a,@r0
   1AC2 FB                  875 	mov	r3,a
   1AC3 08                  876 	inc	r0
   1AC4 86 04               877 	mov	ar4,@r0
                            878 ;	genCast
   1AC6 A8 10               879 	mov	r0,_bp
   1AC8 08                  880 	inc	r0
   1AC9 86 05               881 	mov	ar5,@r0
   1ACB 08                  882 	inc	r0
   1ACC 86 06               883 	mov	ar6,@r0
                            884 ;	genLeftShift
                            885 ;	genLeftShiftLiteral
                            886 ;	genlshTwo
   1ACE EE                  887 	mov	a,r6
   1ACF CD                  888 	xch	a,r5
   1AD0 25 E0               889 	add	a,acc
   1AD2 CD                  890 	xch	a,r5
   1AD3 33                  891 	rlc	a
   1AD4 FE                  892 	mov	r6,a
                            893 ;	genAnd
   1AD5 53 06 01            894 	anl	ar6,#0x01
                            895 ;	genPlus
                            896 ;	Peephole 236.g	used r5 instead of ar5
   1AD8 ED                  897 	mov	a,r5
                            898 ;	Peephole 236.a	used r2 instead of ar2
   1AD9 2A                  899 	add	a,r2
   1ADA FA                  900 	mov	r2,a
                            901 ;	Peephole 236.g	used r6 instead of ar6
   1ADB EE                  902 	mov	a,r6
                            903 ;	Peephole 236.b	used r3 instead of ar3
   1ADC 3B                  904 	addc	a,r3
   1ADD FB                  905 	mov	r3,a
                            906 ;	genPointerGet
                            907 ;	genGenPointerGet
   1ADE 8A 82               908 	mov	dpl,r2
   1AE0 8B 83               909 	mov	dph,r3
   1AE2 8C F0               910 	mov	b,r4
   1AE4 12 62 42            911 	lcall	__gptrget
   1AE7 FA                  912 	mov	r2,a
   1AE8 A3                  913 	inc	dptr
   1AE9 12 62 42            914 	lcall	__gptrget
   1AEC FB                  915 	mov	r3,a
                            916 ;	genCast
   1AED 7C 00               917 	mov	r4,#0x00
   1AEF 7D 00               918 	mov	r5,#0x00
                            919 ;	genRet
   1AF1 8A 82               920 	mov	dpl,r2
   1AF3 8B 83               921 	mov	dph,r3
   1AF5 8C F0               922 	mov	b,r4
   1AF7 ED                  923 	mov	a,r5
   1AF8 02 1B 99            924 	ljmp	00116$
                            925 ;	FatDrivers/tff.c:180: case FS_FAT32 :
   1AFB                     926 00109$:
                            927 ;	FatDrivers/tff.c:181: if (!move_window(fatsect + clust / 128)) break;
                            928 ;	genRightShift
                            929 ;	genRightShiftLiteral
   1AFB A8 10               930 	mov	r0,_bp
   1AFD 08                  931 	inc	r0
                            932 ;	genrshFour
   1AFE 86 02               933 	mov	ar2,@r0
   1B00 08                  934 	inc	r0
   1B01 E6                  935 	mov	a,@r0
   1B02 A2 E7               936 	mov	c,acc.7
   1B04 CA                  937 	xch	a,r2
   1B05 33                  938 	rlc	a
   1B06 CA                  939 	xch	a,r2
   1B07 33                  940 	rlc	a
   1B08 CA                  941 	xch	a,r2
   1B09 54 01               942 	anl	a,#0x01
   1B0B FB                  943 	mov	r3,a
   1B0C 08                  944 	inc	r0
   1B0D E6                  945 	mov	a,@r0
   1B0E 25 E0               946 	add	a,acc
   1B10 4B                  947 	orl	a,r3
   1B11 FB                  948 	mov	r3,a
   1B12 86 04               949 	mov	ar4,@r0
   1B14 08                  950 	inc	r0
   1B15 E6                  951 	mov	a,@r0
   1B16 A2 E7               952 	mov	c,acc.7
   1B18 CC                  953 	xch	a,r4
   1B19 33                  954 	rlc	a
   1B1A CC                  955 	xch	a,r4
   1B1B 33                  956 	rlc	a
   1B1C CC                  957 	xch	a,r4
   1B1D 54 01               958 	anl	a,#0x01
   1B1F FD                  959 	mov	r5,a
                            960 ;	genPlus
   1B20 E5 10               961 	mov	a,_bp
   1B22 24 09               962 	add	a,#0x09
   1B24 F8                  963 	mov	r0,a
                            964 ;	Peephole 236.g	used r2 instead of ar2
   1B25 EA                  965 	mov	a,r2
   1B26 26                  966 	add	a,@r0
   1B27 FA                  967 	mov	r2,a
                            968 ;	Peephole 236.g	used r3 instead of ar3
   1B28 EB                  969 	mov	a,r3
   1B29 08                  970 	inc	r0
   1B2A 36                  971 	addc	a,@r0
   1B2B FB                  972 	mov	r3,a
                            973 ;	Peephole 236.g	used r4 instead of ar4
   1B2C EC                  974 	mov	a,r4
   1B2D 08                  975 	inc	r0
   1B2E 36                  976 	addc	a,@r0
   1B2F FC                  977 	mov	r4,a
                            978 ;	Peephole 236.g	used r5 instead of ar5
   1B30 ED                  979 	mov	a,r5
   1B31 08                  980 	inc	r0
   1B32 36                  981 	addc	a,@r0
                            982 ;	genCall
   1B33 FD                  983 	mov	r5,a
   1B34 8A 82               984 	mov	dpl,r2
   1B36 8B 83               985 	mov	dph,r3
   1B38 8C F0               986 	mov	b,r4
                            987 ;	Peephole 191	removed redundant mov
   1B3A 12 17 79            988 	lcall	_move_window
   1B3D E5 82               989 	mov	a,dpl
                            990 ;	genIfx
                            991 ;	genIfxJump
                            992 ;	Peephole 108.c	removed ljmp by inverse jump logic
   1B3F 60 52               993 	jz	00114$
                            994 ;	Peephole 300	removed redundant label 00139$
                            995 ;	FatDrivers/tff.c:182: return LD_DWORD(&fs->win[((WORD)clust * 4) % 512]) & 0x0FFFFFFF;
                            996 ;	genPlus
   1B41 E5 10               997 	mov	a,_bp
   1B43 24 0D               998 	add	a,#0x0d
   1B45 F8                  999 	mov	r0,a
                           1000 ;     genPlusIncr
   1B46 74 20              1001 	mov	a,#0x20
   1B48 26                 1002 	add	a,@r0
   1B49 FA                 1003 	mov	r2,a
                           1004 ;	Peephole 181	changed mov to clr
   1B4A E4                 1005 	clr	a
   1B4B 08                 1006 	inc	r0
   1B4C 36                 1007 	addc	a,@r0
   1B4D FB                 1008 	mov	r3,a
   1B4E 08                 1009 	inc	r0
   1B4F 86 04              1010 	mov	ar4,@r0
                           1011 ;	genCast
   1B51 A8 10              1012 	mov	r0,_bp
   1B53 08                 1013 	inc	r0
   1B54 86 05              1014 	mov	ar5,@r0
   1B56 08                 1015 	inc	r0
   1B57 86 06              1016 	mov	ar6,@r0
                           1017 ;	genLeftShift
                           1018 ;	genLeftShiftLiteral
                           1019 ;	genlshTwo
   1B59 EE                 1020 	mov	a,r6
   1B5A CD                 1021 	xch	a,r5
   1B5B 25 E0              1022 	add	a,acc
   1B5D CD                 1023 	xch	a,r5
   1B5E 33                 1024 	rlc	a
   1B5F CD                 1025 	xch	a,r5
   1B60 25 E0              1026 	add	a,acc
   1B62 CD                 1027 	xch	a,r5
   1B63 33                 1028 	rlc	a
   1B64 FE                 1029 	mov	r6,a
                           1030 ;	genAnd
   1B65 53 06 01           1031 	anl	ar6,#0x01
                           1032 ;	genPlus
                           1033 ;	Peephole 236.g	used r5 instead of ar5
   1B68 ED                 1034 	mov	a,r5
                           1035 ;	Peephole 236.a	used r2 instead of ar2
   1B69 2A                 1036 	add	a,r2
   1B6A FA                 1037 	mov	r2,a
                           1038 ;	Peephole 236.g	used r6 instead of ar6
   1B6B EE                 1039 	mov	a,r6
                           1040 ;	Peephole 236.b	used r3 instead of ar3
   1B6C 3B                 1041 	addc	a,r3
   1B6D FB                 1042 	mov	r3,a
                           1043 ;	genPointerGet
                           1044 ;	genGenPointerGet
   1B6E 8A 82              1045 	mov	dpl,r2
   1B70 8B 83              1046 	mov	dph,r3
   1B72 8C F0              1047 	mov	b,r4
   1B74 12 62 42           1048 	lcall	__gptrget
   1B77 FA                 1049 	mov	r2,a
   1B78 A3                 1050 	inc	dptr
   1B79 12 62 42           1051 	lcall	__gptrget
   1B7C FB                 1052 	mov	r3,a
   1B7D A3                 1053 	inc	dptr
   1B7E 12 62 42           1054 	lcall	__gptrget
   1B81 FC                 1055 	mov	r4,a
   1B82 A3                 1056 	inc	dptr
   1B83 12 62 42           1057 	lcall	__gptrget
   1B86 FD                 1058 	mov	r5,a
                           1059 ;	genAnd
   1B87 53 05 0F           1060 	anl	ar5,#0x0F
                           1061 ;	genRet
   1B8A 8A 82              1062 	mov	dpl,r2
   1B8C 8B 83              1063 	mov	dph,r3
   1B8E 8C F0              1064 	mov	b,r4
   1B90 ED                 1065 	mov	a,r5
                           1066 ;	FatDrivers/tff.c:184: }
                           1067 ;	Peephole 112.b	changed ljmp to sjmp
   1B91 80 06              1068 	sjmp	00116$
   1B93                    1069 00114$:
                           1070 ;	FatDrivers/tff.c:187: return 1;	/* There is no cluster information, or an error occured */
                           1071 ;	genRet
                           1072 ;	Peephole 3.a	changed mov to clr
                           1073 ;	Peephole 3.b	changed mov to clr
                           1074 ;	Peephole 182.d	used 16 bit load of dptr
   1B93 90 00 01           1075 	mov	dptr,#(0x01&0x00ff)
   1B96 E4                 1076 	clr	a
   1B97 F5 F0              1077 	mov	b,a
   1B99                    1078 00116$:
   1B99 85 10 81           1079 	mov	sp,_bp
   1B9C D0 10              1080 	pop	_bp
   1B9E 22                 1081 	ret
                           1082 ;------------------------------------------------------------
                           1083 ;Allocation info for local variables in function 'clust2sect'
                           1084 ;------------------------------------------------------------
                           1085 ;clust                     Allocated to stack - offset 1
                           1086 ;fs                        Allocated to stack - offset 5
                           1087 ;sloc0                     Allocated to stack - offset 8
                           1088 ;------------------------------------------------------------
                           1089 ;	FatDrivers/tff.c:340: DWORD clust2sect (	/* !=0: sector number, 0: failed - invalid cluster# */
                           1090 ;	-----------------------------------------
                           1091 ;	 function clust2sect
                           1092 ;	-----------------------------------------
   1B9F                    1093 _clust2sect:
   1B9F C0 10              1094 	push	_bp
   1BA1 85 81 10           1095 	mov	_bp,sp
                           1096 ;     genReceive
   1BA4 C0 82              1097 	push	dpl
   1BA6 C0 83              1098 	push	dph
   1BA8 C0 F0              1099 	push	b
   1BAA C0 E0              1100 	push	acc
   1BAC E5 81              1101 	mov	a,sp
   1BAE 24 0B              1102 	add	a,#0x0b
   1BB0 F5 81              1103 	mov	sp,a
                           1104 ;	FatDrivers/tff.c:344: FATFS *fs = FatFs;
                           1105 ;	genAssign
   1BB2 E5 10              1106 	mov	a,_bp
   1BB4 24 05              1107 	add	a,#0x05
   1BB6 F8                 1108 	mov	r0,a
   1BB7 A6 09              1109 	mov	@r0,_FatFs
   1BB9 08                 1110 	inc	r0
   1BBA A6 0A              1111 	mov	@r0,(_FatFs + 1)
   1BBC 08                 1112 	inc	r0
   1BBD A6 0B              1113 	mov	@r0,(_FatFs + 2)
                           1114 ;	FatDrivers/tff.c:347: clust -= 2;
                           1115 ;	genMinus
   1BBF A8 10              1116 	mov	r0,_bp
   1BC1 08                 1117 	inc	r0
                           1118 ;	genMinusDec
   1BC2 E6                 1119 	mov	a,@r0
   1BC3 24 FE              1120 	add	a,#0xfe
   1BC5 F6                 1121 	mov	@r0,a
   1BC6 08                 1122 	inc	r0
   1BC7 E6                 1123 	mov	a,@r0
   1BC8 34 FF              1124 	addc	a,#0xff
   1BCA F6                 1125 	mov	@r0,a
   1BCB 08                 1126 	inc	r0
   1BCC E6                 1127 	mov	a,@r0
   1BCD 34 FF              1128 	addc	a,#0xff
   1BCF F6                 1129 	mov	@r0,a
   1BD0 08                 1130 	inc	r0
   1BD1 E6                 1131 	mov	a,@r0
   1BD2 34 FF              1132 	addc	a,#0xff
   1BD4 F6                 1133 	mov	@r0,a
                           1134 ;	FatDrivers/tff.c:348: if (clust >= (fs->max_clust - 2)) return 0;		/* Invalid cluster# */
                           1135 ;	genPlus
   1BD5 E5 10              1136 	mov	a,_bp
   1BD7 24 05              1137 	add	a,#0x05
   1BD9 F8                 1138 	mov	r0,a
                           1139 ;     genPlusIncr
   1BDA 74 18              1140 	mov	a,#0x18
   1BDC 26                 1141 	add	a,@r0
   1BDD FB                 1142 	mov	r3,a
                           1143 ;	Peephole 181	changed mov to clr
   1BDE E4                 1144 	clr	a
   1BDF 08                 1145 	inc	r0
   1BE0 36                 1146 	addc	a,@r0
   1BE1 FC                 1147 	mov	r4,a
   1BE2 08                 1148 	inc	r0
   1BE3 86 05              1149 	mov	ar5,@r0
                           1150 ;	genPointerGet
                           1151 ;	genGenPointerGet
   1BE5 8B 82              1152 	mov	dpl,r3
   1BE7 8C 83              1153 	mov	dph,r4
   1BE9 8D F0              1154 	mov	b,r5
   1BEB 12 62 42           1155 	lcall	__gptrget
   1BEE FB                 1156 	mov	r3,a
   1BEF A3                 1157 	inc	dptr
   1BF0 12 62 42           1158 	lcall	__gptrget
   1BF3 FC                 1159 	mov	r4,a
   1BF4 A3                 1160 	inc	dptr
   1BF5 12 62 42           1161 	lcall	__gptrget
   1BF8 FD                 1162 	mov	r5,a
   1BF9 A3                 1163 	inc	dptr
   1BFA 12 62 42           1164 	lcall	__gptrget
   1BFD FA                 1165 	mov	r2,a
                           1166 ;	genMinus
                           1167 ;	genMinusDec
   1BFE EB                 1168 	mov	a,r3
   1BFF 24 FE              1169 	add	a,#0xfe
   1C01 FB                 1170 	mov	r3,a
   1C02 EC                 1171 	mov	a,r4
   1C03 34 FF              1172 	addc	a,#0xff
   1C05 FC                 1173 	mov	r4,a
   1C06 ED                 1174 	mov	a,r5
   1C07 34 FF              1175 	addc	a,#0xff
   1C09 FD                 1176 	mov	r5,a
   1C0A EA                 1177 	mov	a,r2
   1C0B 34 FF              1178 	addc	a,#0xff
   1C0D FA                 1179 	mov	r2,a
                           1180 ;	genCmpLt
   1C0E A8 10              1181 	mov	r0,_bp
   1C10 08                 1182 	inc	r0
                           1183 ;	genCmp
   1C11 C3                 1184 	clr	c
   1C12 E6                 1185 	mov	a,@r0
   1C13 9B                 1186 	subb	a,r3
   1C14 08                 1187 	inc	r0
   1C15 E6                 1188 	mov	a,@r0
   1C16 9C                 1189 	subb	a,r4
   1C17 08                 1190 	inc	r0
   1C18 E6                 1191 	mov	a,@r0
   1C19 9D                 1192 	subb	a,r5
   1C1A 08                 1193 	inc	r0
   1C1B E6                 1194 	mov	a,@r0
   1C1C 9A                 1195 	subb	a,r2
                           1196 ;	genIfxJump
                           1197 ;	Peephole 112.b	changed ljmp to sjmp
                           1198 ;	Peephole 160.a	removed sjmp by inverse jump logic
   1C1D 40 09              1199 	jc	00102$
                           1200 ;	Peephole 300	removed redundant label 00106$
                           1201 ;	genRet
                           1202 ;	Peephole 3.a	changed mov to clr
                           1203 ;	Peephole 3.b	changed mov to clr
                           1204 ;	Peephole 182.d	used 16 bit load of dptr
   1C1F 90 00 00           1205 	mov	dptr,#(0x00&0x00ff)
   1C22 E4                 1206 	clr	a
   1C23 F5 F0              1207 	mov	b,a
   1C25 02 1C BC           1208 	ljmp	00103$
   1C28                    1209 00102$:
                           1210 ;	FatDrivers/tff.c:349: return (DWORD)clust * fs->sects_clust + fs->database;
                           1211 ;	genPlus
   1C28 E5 10              1212 	mov	a,_bp
   1C2A 24 05              1213 	add	a,#0x05
   1C2C F8                 1214 	mov	r0,a
                           1215 ;     genPlusIncr
   1C2D 74 1D              1216 	mov	a,#0x1D
   1C2F 26                 1217 	add	a,@r0
   1C30 FA                 1218 	mov	r2,a
                           1219 ;	Peephole 181	changed mov to clr
   1C31 E4                 1220 	clr	a
   1C32 08                 1221 	inc	r0
   1C33 36                 1222 	addc	a,@r0
   1C34 FB                 1223 	mov	r3,a
   1C35 08                 1224 	inc	r0
   1C36 86 04              1225 	mov	ar4,@r0
                           1226 ;	genPointerGet
                           1227 ;	genGenPointerGet
   1C38 8A 82              1228 	mov	dpl,r2
   1C3A 8B 83              1229 	mov	dph,r3
   1C3C 8C F0              1230 	mov	b,r4
   1C3E 12 62 42           1231 	lcall	__gptrget
   1C41 FA                 1232 	mov	r2,a
                           1233 ;	genCast
   1C42 7B 00              1234 	mov	r3,#0x00
   1C44 7C 00              1235 	mov	r4,#0x00
   1C46 7D 00              1236 	mov	r5,#0x00
                           1237 ;	genIpush
   1C48 C0 02              1238 	push	ar2
   1C4A C0 03              1239 	push	ar3
   1C4C C0 04              1240 	push	ar4
   1C4E C0 05              1241 	push	ar5
                           1242 ;	genCall
   1C50 A8 10              1243 	mov	r0,_bp
   1C52 08                 1244 	inc	r0
   1C53 86 82              1245 	mov	dpl,@r0
   1C55 08                 1246 	inc	r0
   1C56 86 83              1247 	mov	dph,@r0
   1C58 08                 1248 	inc	r0
   1C59 86 F0              1249 	mov	b,@r0
   1C5B 08                 1250 	inc	r0
   1C5C E6                 1251 	mov	a,@r0
   1C5D 12 62 5E           1252 	lcall	__mullong
   1C60 C0 E0              1253 	push	acc
   1C62 E5 10              1254 	mov	a,_bp
   1C64 24 08              1255 	add	a,#0x08
   1C66 F8                 1256 	mov	r0,a
   1C67 D0 E0              1257 	pop	acc
   1C69 A6 82              1258 	mov	@r0,dpl
   1C6B 08                 1259 	inc	r0
   1C6C A6 83              1260 	mov	@r0,dph
   1C6E 08                 1261 	inc	r0
   1C6F A6 F0              1262 	mov	@r0,b
   1C71 08                 1263 	inc	r0
   1C72 F6                 1264 	mov	@r0,a
   1C73 E5 81              1265 	mov	a,sp
   1C75 24 FC              1266 	add	a,#0xfc
   1C77 F5 81              1267 	mov	sp,a
                           1268 ;	genPlus
   1C79 E5 10              1269 	mov	a,_bp
   1C7B 24 05              1270 	add	a,#0x05
   1C7D F8                 1271 	mov	r0,a
                           1272 ;     genPlusIncr
   1C7E 74 10              1273 	mov	a,#0x10
   1C80 26                 1274 	add	a,@r0
   1C81 FE                 1275 	mov	r6,a
                           1276 ;	Peephole 181	changed mov to clr
   1C82 E4                 1277 	clr	a
   1C83 08                 1278 	inc	r0
   1C84 36                 1279 	addc	a,@r0
   1C85 FF                 1280 	mov	r7,a
   1C86 08                 1281 	inc	r0
   1C87 86 02              1282 	mov	ar2,@r0
                           1283 ;	genPointerGet
                           1284 ;	genGenPointerGet
   1C89 8E 82              1285 	mov	dpl,r6
   1C8B 8F 83              1286 	mov	dph,r7
   1C8D 8A F0              1287 	mov	b,r2
   1C8F 12 62 42           1288 	lcall	__gptrget
   1C92 FE                 1289 	mov	r6,a
   1C93 A3                 1290 	inc	dptr
   1C94 12 62 42           1291 	lcall	__gptrget
   1C97 FF                 1292 	mov	r7,a
   1C98 A3                 1293 	inc	dptr
   1C99 12 62 42           1294 	lcall	__gptrget
   1C9C FA                 1295 	mov	r2,a
   1C9D A3                 1296 	inc	dptr
   1C9E 12 62 42           1297 	lcall	__gptrget
   1CA1 FB                 1298 	mov	r3,a
                           1299 ;	genPlus
   1CA2 E5 10              1300 	mov	a,_bp
   1CA4 24 08              1301 	add	a,#0x08
   1CA6 F8                 1302 	mov	r0,a
                           1303 ;	Peephole 236.g	used r6 instead of ar6
   1CA7 EE                 1304 	mov	a,r6
   1CA8 26                 1305 	add	a,@r0
   1CA9 FE                 1306 	mov	r6,a
                           1307 ;	Peephole 236.g	used r7 instead of ar7
   1CAA EF                 1308 	mov	a,r7
   1CAB 08                 1309 	inc	r0
   1CAC 36                 1310 	addc	a,@r0
   1CAD FF                 1311 	mov	r7,a
                           1312 ;	Peephole 236.g	used r2 instead of ar2
   1CAE EA                 1313 	mov	a,r2
   1CAF 08                 1314 	inc	r0
   1CB0 36                 1315 	addc	a,@r0
   1CB1 FA                 1316 	mov	r2,a
                           1317 ;	Peephole 236.g	used r3 instead of ar3
   1CB2 EB                 1318 	mov	a,r3
   1CB3 08                 1319 	inc	r0
   1CB4 36                 1320 	addc	a,@r0
                           1321 ;	genRet
   1CB5 FB                 1322 	mov	r3,a
   1CB6 8E 82              1323 	mov	dpl,r6
   1CB8 8F 83              1324 	mov	dph,r7
   1CBA 8A F0              1325 	mov	b,r2
                           1326 ;	Peephole 191	removed redundant mov
   1CBC                    1327 00103$:
   1CBC 85 10 81           1328 	mov	sp,_bp
   1CBF D0 10              1329 	pop	_bp
   1CC1 22                 1330 	ret
                           1331 ;------------------------------------------------------------
                           1332 ;Allocation info for local variables in function 'next_dir_entry'
                           1333 ;------------------------------------------------------------
                           1334 ;dirobj                    Allocated to stack - offset 1
                           1335 ;clust                     Allocated to stack - offset 4
                           1336 ;idx                       Allocated to stack - offset 8
                           1337 ;fs                        Allocated to stack - offset 10
                           1338 ;sloc0                     Allocated to stack - offset 13
                           1339 ;sloc1                     Allocated to stack - offset 16
                           1340 ;sloc2                     Allocated to stack - offset 19
                           1341 ;sloc3                     Allocated to stack - offset 23
                           1342 ;------------------------------------------------------------
                           1343 ;	FatDrivers/tff.c:360: BOOL next_dir_entry (	/* TRUE: successful, FALSE: could not move next */
                           1344 ;	-----------------------------------------
                           1345 ;	 function next_dir_entry
                           1346 ;	-----------------------------------------
   1CC2                    1347 _next_dir_entry:
   1CC2 C0 10              1348 	push	_bp
   1CC4 85 81 10           1349 	mov	_bp,sp
                           1350 ;     genReceive
   1CC7 C0 82              1351 	push	dpl
   1CC9 C0 83              1352 	push	dph
   1CCB C0 F0              1353 	push	b
   1CCD E5 81              1354 	mov	a,sp
   1CCF 24 19              1355 	add	a,#0x19
   1CD1 F5 81              1356 	mov	sp,a
                           1357 ;	FatDrivers/tff.c:366: FATFS *fs = FatFs;
                           1358 ;	genAssign
   1CD3 E5 10              1359 	mov	a,_bp
   1CD5 24 0A              1360 	add	a,#0x0a
   1CD7 F8                 1361 	mov	r0,a
   1CD8 A6 09              1362 	mov	@r0,_FatFs
   1CDA 08                 1363 	inc	r0
   1CDB A6 0A              1364 	mov	@r0,(_FatFs + 1)
   1CDD 08                 1365 	inc	r0
   1CDE A6 0B              1366 	mov	@r0,(_FatFs + 2)
                           1367 ;	FatDrivers/tff.c:369: idx = dirobj->index + 1;
                           1368 ;	genPlus
   1CE0 A8 10              1369 	mov	r0,_bp
   1CE2 08                 1370 	inc	r0
   1CE3 E5 10              1371 	mov	a,_bp
   1CE5 24 17              1372 	add	a,#0x17
   1CE7 F9                 1373 	mov	r1,a
                           1374 ;     genPlusIncr
   1CE8 74 02              1375 	mov	a,#0x02
   1CEA 26                 1376 	add	a,@r0
   1CEB F7                 1377 	mov	@r1,a
                           1378 ;	Peephole 181	changed mov to clr
   1CEC E4                 1379 	clr	a
   1CED 08                 1380 	inc	r0
   1CEE 36                 1381 	addc	a,@r0
   1CEF 09                 1382 	inc	r1
   1CF0 F7                 1383 	mov	@r1,a
   1CF1 08                 1384 	inc	r0
   1CF2 09                 1385 	inc	r1
   1CF3 E6                 1386 	mov	a,@r0
   1CF4 F7                 1387 	mov	@r1,a
                           1388 ;	genPointerGet
                           1389 ;	genGenPointerGet
   1CF5 E5 10              1390 	mov	a,_bp
   1CF7 24 17              1391 	add	a,#0x17
   1CF9 F8                 1392 	mov	r0,a
   1CFA 86 82              1393 	mov	dpl,@r0
   1CFC 08                 1394 	inc	r0
   1CFD 86 83              1395 	mov	dph,@r0
   1CFF 08                 1396 	inc	r0
   1D00 86 F0              1397 	mov	b,@r0
   1D02 12 62 42           1398 	lcall	__gptrget
   1D05 FA                 1399 	mov	r2,a
   1D06 A3                 1400 	inc	dptr
   1D07 12 62 42           1401 	lcall	__gptrget
   1D0A FB                 1402 	mov	r3,a
                           1403 ;	genPlus
   1D0B E5 10              1404 	mov	a,_bp
   1D0D 24 08              1405 	add	a,#0x08
   1D0F F8                 1406 	mov	r0,a
                           1407 ;     genPlusIncr
   1D10 74 01              1408 	mov	a,#0x01
                           1409 ;	Peephole 236.a	used r2 instead of ar2
   1D12 2A                 1410 	add	a,r2
   1D13 F6                 1411 	mov	@r0,a
                           1412 ;	Peephole 181	changed mov to clr
   1D14 E4                 1413 	clr	a
                           1414 ;	Peephole 236.b	used r3 instead of ar3
   1D15 3B                 1415 	addc	a,r3
   1D16 08                 1416 	inc	r0
   1D17 F6                 1417 	mov	@r0,a
                           1418 ;	FatDrivers/tff.c:370: if ((idx & 15) == 0) {		/* Table sector changed? */
                           1419 ;	genAnd
   1D18 E5 10              1420 	mov	a,_bp
   1D1A 24 08              1421 	add	a,#0x08
   1D1C F8                 1422 	mov	r0,a
   1D1D E6                 1423 	mov	a,@r0
   1D1E 54 0F              1424 	anl	a,#0x0F
                           1425 ;	Peephole 160.c	removed sjmp by inverse jump logic
   1D20 60 03              1426 	jz	00121$
                           1427 ;	Peephole 300	removed redundant label 00120$
   1D22 02 1F 2E           1428 	ljmp	00112$
   1D25                    1429 00121$:
                           1430 ;	FatDrivers/tff.c:371: dirobj->sect++;			/* Next sector */
                           1431 ;	genIpush
                           1432 ;	genPlus
   1D25 A8 10              1433 	mov	r0,_bp
   1D27 08                 1434 	inc	r0
   1D28 E5 10              1435 	mov	a,_bp
   1D2A 24 0D              1436 	add	a,#0x0d
   1D2C F9                 1437 	mov	r1,a
                           1438 ;     genPlusIncr
   1D2D 74 0F              1439 	mov	a,#0x0F
   1D2F 26                 1440 	add	a,@r0
   1D30 F7                 1441 	mov	@r1,a
                           1442 ;	Peephole 181	changed mov to clr
   1D31 E4                 1443 	clr	a
   1D32 08                 1444 	inc	r0
   1D33 36                 1445 	addc	a,@r0
   1D34 09                 1446 	inc	r1
   1D35 F7                 1447 	mov	@r1,a
   1D36 08                 1448 	inc	r0
   1D37 09                 1449 	inc	r1
   1D38 E6                 1450 	mov	a,@r0
   1D39 F7                 1451 	mov	@r1,a
                           1452 ;	genPointerGet
                           1453 ;	genGenPointerGet
   1D3A E5 10              1454 	mov	a,_bp
   1D3C 24 0D              1455 	add	a,#0x0d
   1D3E F8                 1456 	mov	r0,a
   1D3F 86 82              1457 	mov	dpl,@r0
   1D41 08                 1458 	inc	r0
   1D42 86 83              1459 	mov	dph,@r0
   1D44 08                 1460 	inc	r0
   1D45 86 F0              1461 	mov	b,@r0
   1D47 12 62 42           1462 	lcall	__gptrget
   1D4A FC                 1463 	mov	r4,a
   1D4B A3                 1464 	inc	dptr
   1D4C 12 62 42           1465 	lcall	__gptrget
   1D4F FD                 1466 	mov	r5,a
   1D50 A3                 1467 	inc	dptr
   1D51 12 62 42           1468 	lcall	__gptrget
   1D54 FE                 1469 	mov	r6,a
   1D55 A3                 1470 	inc	dptr
   1D56 12 62 42           1471 	lcall	__gptrget
   1D59 FF                 1472 	mov	r7,a
                           1473 ;	genPlus
                           1474 ;     genPlusIncr
   1D5A 0C                 1475 	inc	r4
   1D5B BC 00 09           1476 	cjne	r4,#0x00,00122$
   1D5E 0D                 1477 	inc	r5
   1D5F BD 00 05           1478 	cjne	r5,#0x00,00122$
   1D62 0E                 1479 	inc	r6
   1D63 BE 00 01           1480 	cjne	r6,#0x00,00122$
   1D66 0F                 1481 	inc	r7
   1D67                    1482 00122$:
                           1483 ;	genPointerSet
                           1484 ;	genGenPointerSet
   1D67 E5 10              1485 	mov	a,_bp
   1D69 24 0D              1486 	add	a,#0x0d
   1D6B F8                 1487 	mov	r0,a
   1D6C 86 82              1488 	mov	dpl,@r0
   1D6E 08                 1489 	inc	r0
   1D6F 86 83              1490 	mov	dph,@r0
   1D71 08                 1491 	inc	r0
   1D72 86 F0              1492 	mov	b,@r0
   1D74 EC                 1493 	mov	a,r4
   1D75 12 5E A4           1494 	lcall	__gptrput
   1D78 A3                 1495 	inc	dptr
   1D79 ED                 1496 	mov	a,r5
   1D7A 12 5E A4           1497 	lcall	__gptrput
   1D7D A3                 1498 	inc	dptr
   1D7E EE                 1499 	mov	a,r6
   1D7F 12 5E A4           1500 	lcall	__gptrput
   1D82 A3                 1501 	inc	dptr
   1D83 EF                 1502 	mov	a,r7
   1D84 12 5E A4           1503 	lcall	__gptrput
                           1504 ;	FatDrivers/tff.c:372: if (!dirobj->clust) {		/* In static table */
                           1505 ;	genPlus
   1D87 A8 10              1506 	mov	r0,_bp
   1D89 08                 1507 	inc	r0
   1D8A E5 10              1508 	mov	a,_bp
   1D8C 24 10              1509 	add	a,#0x10
   1D8E F9                 1510 	mov	r1,a
                           1511 ;     genPlusIncr
   1D8F 74 0B              1512 	mov	a,#0x0B
   1D91 26                 1513 	add	a,@r0
   1D92 F7                 1514 	mov	@r1,a
                           1515 ;	Peephole 181	changed mov to clr
   1D93 E4                 1516 	clr	a
   1D94 08                 1517 	inc	r0
   1D95 36                 1518 	addc	a,@r0
   1D96 09                 1519 	inc	r1
   1D97 F7                 1520 	mov	@r1,a
   1D98 08                 1521 	inc	r0
   1D99 09                 1522 	inc	r1
   1D9A E6                 1523 	mov	a,@r0
   1D9B F7                 1524 	mov	@r1,a
                           1525 ;	genPointerGet
                           1526 ;	genGenPointerGet
   1D9C E5 10              1527 	mov	a,_bp
   1D9E 24 10              1528 	add	a,#0x10
   1DA0 F8                 1529 	mov	r0,a
   1DA1 86 82              1530 	mov	dpl,@r0
   1DA3 08                 1531 	inc	r0
   1DA4 86 83              1532 	mov	dph,@r0
   1DA6 08                 1533 	inc	r0
   1DA7 86 F0              1534 	mov	b,@r0
   1DA9 E5 10              1535 	mov	a,_bp
   1DAB 24 13              1536 	add	a,#0x13
   1DAD F9                 1537 	mov	r1,a
   1DAE 12 62 42           1538 	lcall	__gptrget
   1DB1 F7                 1539 	mov	@r1,a
   1DB2 A3                 1540 	inc	dptr
   1DB3 12 62 42           1541 	lcall	__gptrget
   1DB6 09                 1542 	inc	r1
   1DB7 F7                 1543 	mov	@r1,a
   1DB8 A3                 1544 	inc	dptr
   1DB9 12 62 42           1545 	lcall	__gptrget
   1DBC 09                 1546 	inc	r1
   1DBD F7                 1547 	mov	@r1,a
   1DBE A3                 1548 	inc	dptr
   1DBF 12 62 42           1549 	lcall	__gptrget
   1DC2 09                 1550 	inc	r1
   1DC3 F7                 1551 	mov	@r1,a
                           1552 ;	genIpop
                           1553 ;	genIfx
   1DC4 E5 10              1554 	mov	a,_bp
   1DC6 24 13              1555 	add	a,#0x13
   1DC8 F8                 1556 	mov	r0,a
   1DC9 E6                 1557 	mov	a,@r0
   1DCA 08                 1558 	inc	r0
   1DCB 46                 1559 	orl	a,@r0
   1DCC 08                 1560 	inc	r0
   1DCD 46                 1561 	orl	a,@r0
   1DCE 08                 1562 	inc	r0
   1DCF 46                 1563 	orl	a,@r0
                           1564 ;	genIfxJump
                           1565 ;	Peephole 108.b	removed ljmp by inverse jump logic
   1DD0 70 35              1566 	jnz	00109$
                           1567 ;	Peephole 300	removed redundant label 00123$
                           1568 ;	FatDrivers/tff.c:373: if (idx >= fs->n_rootdir) return FALSE;	/* Reached to end of table */
                           1569 ;	genIpush
                           1570 ;	genPlus
   1DD2 E5 10              1571 	mov	a,_bp
   1DD4 24 0A              1572 	add	a,#0x0a
   1DD6 F8                 1573 	mov	r0,a
                           1574 ;     genPlusIncr
   1DD7 74 02              1575 	mov	a,#0x02
   1DD9 26                 1576 	add	a,@r0
   1DDA FC                 1577 	mov	r4,a
                           1578 ;	Peephole 181	changed mov to clr
   1DDB E4                 1579 	clr	a
   1DDC 08                 1580 	inc	r0
   1DDD 36                 1581 	addc	a,@r0
   1DDE FD                 1582 	mov	r5,a
   1DDF 08                 1583 	inc	r0
   1DE0 86 06              1584 	mov	ar6,@r0
                           1585 ;	genPointerGet
                           1586 ;	genGenPointerGet
   1DE2 8C 82              1587 	mov	dpl,r4
   1DE4 8D 83              1588 	mov	dph,r5
   1DE6 8E F0              1589 	mov	b,r6
   1DE8 12 62 42           1590 	lcall	__gptrget
   1DEB FC                 1591 	mov	r4,a
   1DEC A3                 1592 	inc	dptr
   1DED 12 62 42           1593 	lcall	__gptrget
   1DF0 FD                 1594 	mov	r5,a
                           1595 ;	genCmpLt
   1DF1 E5 10              1596 	mov	a,_bp
   1DF3 24 08              1597 	add	a,#0x08
   1DF5 F8                 1598 	mov	r0,a
                           1599 ;	genCmp
   1DF6 C3                 1600 	clr	c
   1DF7 E6                 1601 	mov	a,@r0
   1DF8 9C                 1602 	subb	a,r4
   1DF9 08                 1603 	inc	r0
   1DFA E6                 1604 	mov	a,@r0
   1DFB 9D                 1605 	subb	a,r5
                           1606 ;	genIpop
                           1607 ;	genIfx
                           1608 ;	genIfxJump
                           1609 ;	Peephole 128	jump optimization
   1DFC 50 03              1610 	jnc	00124$
   1DFE 02 1F 2E           1611 	ljmp	00112$
   1E01                    1612 00124$:
                           1613 ;	genRet
   1E01 75 82 00           1614 	mov	dpl,#0x00
   1E04 02 1F 4D           1615 	ljmp	00113$
   1E07                    1616 00109$:
                           1617 ;	FatDrivers/tff.c:375: if (((idx / 16) & (fs->sects_clust - 1)) == 0) {	/* Cluster changed? */
                           1618 ;	genIpush
                           1619 ;	genRightShift
                           1620 ;	genRightShiftLiteral
   1E07 E5 10              1621 	mov	a,_bp
   1E09 24 08              1622 	add	a,#0x08
   1E0B F8                 1623 	mov	r0,a
                           1624 ;	genrshTwo
   1E0C 86 04              1625 	mov	ar4,@r0
   1E0E 08                 1626 	inc	r0
   1E0F E6                 1627 	mov	a,@r0
   1E10 C4                 1628 	swap	a
   1E11 CC                 1629 	xch	a,r4
   1E12 C4                 1630 	swap	a
   1E13 54 0F              1631 	anl	a,#0x0f
   1E15 6C                 1632 	xrl	a,r4
   1E16 CC                 1633 	xch	a,r4
   1E17 54 0F              1634 	anl	a,#0x0f
   1E19 CC                 1635 	xch	a,r4
   1E1A 6C                 1636 	xrl	a,r4
   1E1B CC                 1637 	xch	a,r4
   1E1C FD                 1638 	mov	r5,a
                           1639 ;	genPlus
   1E1D E5 10              1640 	mov	a,_bp
   1E1F 24 0A              1641 	add	a,#0x0a
   1E21 F8                 1642 	mov	r0,a
                           1643 ;     genPlusIncr
   1E22 74 1D              1644 	mov	a,#0x1D
   1E24 26                 1645 	add	a,@r0
   1E25 FE                 1646 	mov	r6,a
                           1647 ;	Peephole 181	changed mov to clr
   1E26 E4                 1648 	clr	a
   1E27 08                 1649 	inc	r0
   1E28 36                 1650 	addc	a,@r0
   1E29 FF                 1651 	mov	r7,a
   1E2A 08                 1652 	inc	r0
   1E2B 86 02              1653 	mov	ar2,@r0
                           1654 ;	genPointerGet
                           1655 ;	genGenPointerGet
   1E2D 8E 82              1656 	mov	dpl,r6
   1E2F 8F 83              1657 	mov	dph,r7
   1E31 8A F0              1658 	mov	b,r2
   1E33 12 62 42           1659 	lcall	__gptrget
   1E36 FE                 1660 	mov	r6,a
                           1661 ;	genCast
   1E37 7A 00              1662 	mov	r2,#0x00
                           1663 ;	genMinus
                           1664 ;	genMinusDec
   1E39 1E                 1665 	dec	r6
   1E3A BE FF 01           1666 	cjne	r6,#0xff,00125$
   1E3D 1A                 1667 	dec	r2
   1E3E                    1668 00125$:
                           1669 ;	genAnd
   1E3E EE                 1670 	mov	a,r6
   1E3F 52 04              1671 	anl	ar4,a
   1E41 EA                 1672 	mov	a,r2
   1E42 52 05              1673 	anl	ar5,a
                           1674 ;	genIfx
   1E44 EC                 1675 	mov	a,r4
   1E45 4D                 1676 	orl	a,r5
                           1677 ;	genIpop
                           1678 ;	genIfxJump
   1E46 60 03              1679 	jz	00126$
   1E48 02 1F 2E           1680 	ljmp	00112$
   1E4B                    1681 00126$:
                           1682 ;	FatDrivers/tff.c:376: clust = get_cluster(dirobj->clust);			/* Get next cluster */
                           1683 ;	genCall
   1E4B E5 10              1684 	mov	a,_bp
   1E4D 24 13              1685 	add	a,#0x13
   1E4F F8                 1686 	mov	r0,a
   1E50 86 82              1687 	mov	dpl,@r0
   1E52 08                 1688 	inc	r0
   1E53 86 83              1689 	mov	dph,@r0
   1E55 08                 1690 	inc	r0
   1E56 86 F0              1691 	mov	b,@r0
   1E58 08                 1692 	inc	r0
   1E59 E6                 1693 	mov	a,@r0
   1E5A 12 18 63           1694 	lcall	_get_cluster
   1E5D AA 82              1695 	mov	r2,dpl
   1E5F AB 83              1696 	mov	r3,dph
   1E61 AC F0              1697 	mov	r4,b
   1E63 FD                 1698 	mov	r5,a
                           1699 ;	genAssign
   1E64 E5 10              1700 	mov	a,_bp
   1E66 24 04              1701 	add	a,#0x04
   1E68 F8                 1702 	mov	r0,a
   1E69 A6 02              1703 	mov	@r0,ar2
   1E6B 08                 1704 	inc	r0
   1E6C A6 03              1705 	mov	@r0,ar3
   1E6E 08                 1706 	inc	r0
   1E6F A6 04              1707 	mov	@r0,ar4
   1E71 08                 1708 	inc	r0
   1E72 A6 05              1709 	mov	@r0,ar5
                           1710 ;	FatDrivers/tff.c:377: if (clust < 2 || clust >= fs->max_clust)	/* Reached to end of table */
                           1711 ;	genCmpLt
   1E74 E5 10              1712 	mov	a,_bp
   1E76 24 04              1713 	add	a,#0x04
   1E78 F8                 1714 	mov	r0,a
                           1715 ;	genCmp
   1E79 C3                 1716 	clr	c
   1E7A E6                 1717 	mov	a,@r0
   1E7B 94 02              1718 	subb	a,#0x02
   1E7D 08                 1719 	inc	r0
   1E7E E6                 1720 	mov	a,@r0
   1E7F 94 00              1721 	subb	a,#0x00
   1E81 08                 1722 	inc	r0
   1E82 E6                 1723 	mov	a,@r0
   1E83 94 00              1724 	subb	a,#0x00
   1E85 08                 1725 	inc	r0
   1E86 E6                 1726 	mov	a,@r0
   1E87 94 00              1727 	subb	a,#0x00
                           1728 ;	genIfxJump
                           1729 ;	Peephole 112.b	changed ljmp to sjmp
                           1730 ;	Peephole 160.a	removed sjmp by inverse jump logic
   1E89 40 3C              1731 	jc	00103$
                           1732 ;	Peephole 300	removed redundant label 00127$
                           1733 ;	genPlus
   1E8B E5 10              1734 	mov	a,_bp
   1E8D 24 0A              1735 	add	a,#0x0a
   1E8F F8                 1736 	mov	r0,a
                           1737 ;     genPlusIncr
   1E90 74 18              1738 	mov	a,#0x18
   1E92 26                 1739 	add	a,@r0
   1E93 FE                 1740 	mov	r6,a
                           1741 ;	Peephole 181	changed mov to clr
   1E94 E4                 1742 	clr	a
   1E95 08                 1743 	inc	r0
   1E96 36                 1744 	addc	a,@r0
   1E97 FF                 1745 	mov	r7,a
   1E98 08                 1746 	inc	r0
   1E99 86 02              1747 	mov	ar2,@r0
                           1748 ;	genPointerGet
                           1749 ;	genGenPointerGet
   1E9B 8E 82              1750 	mov	dpl,r6
   1E9D 8F 83              1751 	mov	dph,r7
   1E9F 8A F0              1752 	mov	b,r2
   1EA1 12 62 42           1753 	lcall	__gptrget
   1EA4 FE                 1754 	mov	r6,a
   1EA5 A3                 1755 	inc	dptr
   1EA6 12 62 42           1756 	lcall	__gptrget
   1EA9 FF                 1757 	mov	r7,a
   1EAA A3                 1758 	inc	dptr
   1EAB 12 62 42           1759 	lcall	__gptrget
   1EAE FA                 1760 	mov	r2,a
   1EAF A3                 1761 	inc	dptr
   1EB0 12 62 42           1762 	lcall	__gptrget
   1EB3 FB                 1763 	mov	r3,a
                           1764 ;	genCmpLt
   1EB4 E5 10              1765 	mov	a,_bp
   1EB6 24 04              1766 	add	a,#0x04
   1EB8 F8                 1767 	mov	r0,a
                           1768 ;	genCmp
   1EB9 C3                 1769 	clr	c
   1EBA E6                 1770 	mov	a,@r0
   1EBB 9E                 1771 	subb	a,r6
   1EBC 08                 1772 	inc	r0
   1EBD E6                 1773 	mov	a,@r0
   1EBE 9F                 1774 	subb	a,r7
   1EBF 08                 1775 	inc	r0
   1EC0 E6                 1776 	mov	a,@r0
   1EC1 9A                 1777 	subb	a,r2
   1EC2 08                 1778 	inc	r0
   1EC3 E6                 1779 	mov	a,@r0
   1EC4 9B                 1780 	subb	a,r3
                           1781 ;	genIfxJump
                           1782 ;	Peephole 112.b	changed ljmp to sjmp
                           1783 ;	Peephole 160.a	removed sjmp by inverse jump logic
   1EC5 40 06              1784 	jc	00104$
                           1785 ;	Peephole 300	removed redundant label 00128$
   1EC7                    1786 00103$:
                           1787 ;	FatDrivers/tff.c:378: return FALSE;
                           1788 ;	genRet
   1EC7 75 82 00           1789 	mov	dpl,#0x00
   1ECA 02 1F 4D           1790 	ljmp	00113$
   1ECD                    1791 00104$:
                           1792 ;	FatDrivers/tff.c:379: dirobj->clust = clust;				/* Initialize for new cluster */
                           1793 ;	genPointerSet
                           1794 ;	genGenPointerSet
   1ECD E5 10              1795 	mov	a,_bp
   1ECF 24 10              1796 	add	a,#0x10
   1ED1 F8                 1797 	mov	r0,a
   1ED2 86 82              1798 	mov	dpl,@r0
   1ED4 08                 1799 	inc	r0
   1ED5 86 83              1800 	mov	dph,@r0
   1ED7 08                 1801 	inc	r0
   1ED8 86 F0              1802 	mov	b,@r0
   1EDA E5 10              1803 	mov	a,_bp
   1EDC 24 04              1804 	add	a,#0x04
   1EDE F9                 1805 	mov	r1,a
   1EDF E7                 1806 	mov	a,@r1
   1EE0 12 5E A4           1807 	lcall	__gptrput
   1EE3 A3                 1808 	inc	dptr
   1EE4 09                 1809 	inc	r1
   1EE5 E7                 1810 	mov	a,@r1
   1EE6 12 5E A4           1811 	lcall	__gptrput
   1EE9 A3                 1812 	inc	dptr
   1EEA 09                 1813 	inc	r1
   1EEB E7                 1814 	mov	a,@r1
   1EEC 12 5E A4           1815 	lcall	__gptrput
   1EEF A3                 1816 	inc	dptr
   1EF0 09                 1817 	inc	r1
   1EF1 E7                 1818 	mov	a,@r1
   1EF2 12 5E A4           1819 	lcall	__gptrput
                           1820 ;	FatDrivers/tff.c:380: dirobj->sect = clust2sect(clust);
                           1821 ;	genCall
   1EF5 E5 10              1822 	mov	a,_bp
   1EF7 24 04              1823 	add	a,#0x04
   1EF9 F8                 1824 	mov	r0,a
   1EFA 86 82              1825 	mov	dpl,@r0
   1EFC 08                 1826 	inc	r0
   1EFD 86 83              1827 	mov	dph,@r0
   1EFF 08                 1828 	inc	r0
   1F00 86 F0              1829 	mov	b,@r0
   1F02 08                 1830 	inc	r0
   1F03 E6                 1831 	mov	a,@r0
   1F04 12 1B 9F           1832 	lcall	_clust2sect
   1F07 AA 82              1833 	mov	r2,dpl
   1F09 AB 83              1834 	mov	r3,dph
   1F0B AC F0              1835 	mov	r4,b
   1F0D FD                 1836 	mov	r5,a
                           1837 ;	genPointerSet
                           1838 ;	genGenPointerSet
   1F0E E5 10              1839 	mov	a,_bp
   1F10 24 0D              1840 	add	a,#0x0d
   1F12 F8                 1841 	mov	r0,a
   1F13 86 82              1842 	mov	dpl,@r0
   1F15 08                 1843 	inc	r0
   1F16 86 83              1844 	mov	dph,@r0
   1F18 08                 1845 	inc	r0
   1F19 86 F0              1846 	mov	b,@r0
   1F1B EA                 1847 	mov	a,r2
   1F1C 12 5E A4           1848 	lcall	__gptrput
   1F1F A3                 1849 	inc	dptr
   1F20 EB                 1850 	mov	a,r3
   1F21 12 5E A4           1851 	lcall	__gptrput
   1F24 A3                 1852 	inc	dptr
   1F25 EC                 1853 	mov	a,r4
   1F26 12 5E A4           1854 	lcall	__gptrput
   1F29 A3                 1855 	inc	dptr
   1F2A ED                 1856 	mov	a,r5
   1F2B 12 5E A4           1857 	lcall	__gptrput
   1F2E                    1858 00112$:
                           1859 ;	FatDrivers/tff.c:384: dirobj->index = idx;	/* Lower 4 bit of dirobj->index indicates offset in dirobj->sect */
                           1860 ;	genPointerSet
                           1861 ;	genGenPointerSet
   1F2E E5 10              1862 	mov	a,_bp
   1F30 24 17              1863 	add	a,#0x17
   1F32 F8                 1864 	mov	r0,a
   1F33 86 82              1865 	mov	dpl,@r0
   1F35 08                 1866 	inc	r0
   1F36 86 83              1867 	mov	dph,@r0
   1F38 08                 1868 	inc	r0
   1F39 86 F0              1869 	mov	b,@r0
   1F3B E5 10              1870 	mov	a,_bp
   1F3D 24 08              1871 	add	a,#0x08
   1F3F F9                 1872 	mov	r1,a
   1F40 E7                 1873 	mov	a,@r1
   1F41 12 5E A4           1874 	lcall	__gptrput
   1F44 A3                 1875 	inc	dptr
   1F45 09                 1876 	inc	r1
   1F46 E7                 1877 	mov	a,@r1
   1F47 12 5E A4           1878 	lcall	__gptrput
                           1879 ;	FatDrivers/tff.c:385: return TRUE;
                           1880 ;	genRet
   1F4A 75 82 01           1881 	mov	dpl,#0x01
   1F4D                    1882 00113$:
   1F4D 85 10 81           1883 	mov	sp,_bp
   1F50 D0 10              1884 	pop	_bp
   1F52 22                 1885 	ret
                           1886 ;------------------------------------------------------------
                           1887 ;Allocation info for local variables in function 'get_fileinfo'
                           1888 ;------------------------------------------------------------
                           1889 ;dir                       Allocated to stack - offset -5
                           1890 ;finfo                     Allocated to stack - offset 1
                           1891 ;n                         Allocated to stack - offset 4
                           1892 ;c                         Allocated to stack - offset 5
                           1893 ;a                         Allocated to registers r5 
                           1894 ;p                         Allocated to stack - offset 6
                           1895 ;sloc0                     Allocated to stack - offset 9
                           1896 ;------------------------------------------------------------
                           1897 ;	FatDrivers/tff.c:397: void get_fileinfo (		/* No return code */
                           1898 ;	-----------------------------------------
                           1899 ;	 function get_fileinfo
                           1900 ;	-----------------------------------------
   1F53                    1901 _get_fileinfo:
   1F53 C0 10              1902 	push	_bp
   1F55 85 81 10           1903 	mov	_bp,sp
                           1904 ;     genReceive
   1F58 C0 82              1905 	push	dpl
   1F5A C0 83              1906 	push	dph
   1F5C C0 F0              1907 	push	b
   1F5E E5 81              1908 	mov	a,sp
   1F60 24 0B              1909 	add	a,#0x0b
   1F62 F5 81              1910 	mov	sp,a
                           1911 ;	FatDrivers/tff.c:406: p = &finfo->fname[0];
                           1912 ;	genPlus
   1F64 A8 10              1913 	mov	r0,_bp
   1F66 08                 1914 	inc	r0
                           1915 ;     genPlusIncr
   1F67 74 09              1916 	mov	a,#0x09
   1F69 26                 1917 	add	a,@r0
   1F6A FD                 1918 	mov	r5,a
                           1919 ;	Peephole 181	changed mov to clr
   1F6B E4                 1920 	clr	a
   1F6C 08                 1921 	inc	r0
   1F6D 36                 1922 	addc	a,@r0
   1F6E FE                 1923 	mov	r6,a
   1F6F 08                 1924 	inc	r0
   1F70 86 07              1925 	mov	ar7,@r0
                           1926 ;	genCast
   1F72 E5 10              1927 	mov	a,_bp
   1F74 24 06              1928 	add	a,#0x06
   1F76 F8                 1929 	mov	r0,a
   1F77 A6 05              1930 	mov	@r0,ar5
   1F79 08                 1931 	inc	r0
   1F7A A6 06              1932 	mov	@r0,ar6
   1F7C 08                 1933 	inc	r0
   1F7D A6 07              1934 	mov	@r0,ar7
                           1935 ;	FatDrivers/tff.c:407: a = _USE_NTFLAG ? dir[DIR_NTres] : 0;	/* NT flag */
                           1936 ;	genPlus
   1F7F E5 10              1937 	mov	a,_bp
   1F81 24 FB              1938 	add	a,#0xfffffffb
   1F83 F8                 1939 	mov	r0,a
                           1940 ;     genPlusIncr
   1F84 74 0C              1941 	mov	a,#0x0C
   1F86 26                 1942 	add	a,@r0
   1F87 FD                 1943 	mov	r5,a
                           1944 ;	Peephole 181	changed mov to clr
   1F88 E4                 1945 	clr	a
   1F89 08                 1946 	inc	r0
   1F8A 36                 1947 	addc	a,@r0
   1F8B FE                 1948 	mov	r6,a
   1F8C 08                 1949 	inc	r0
   1F8D 86 07              1950 	mov	ar7,@r0
                           1951 ;	genPointerGet
                           1952 ;	genGenPointerGet
   1F8F 8D 82              1953 	mov	dpl,r5
   1F91 8E 83              1954 	mov	dph,r6
   1F93 8F F0              1955 	mov	b,r7
   1F95 12 62 42           1956 	lcall	__gptrget
   1F98 FD                 1957 	mov	r5,a
                           1958 ;	genAssign
                           1959 ;	FatDrivers/tff.c:408: for (n = 0; n < 8; n++) {	/* Convert file name (body) */
                           1960 ;	genAnd
   1F99 74 08              1961 	mov	a,#0x08
   1F9B 5D                 1962 	anl	a,r5
   1F9C FE                 1963 	mov	r6,a
                           1964 ;	genAssign
   1F9D E5 10              1965 	mov	a,_bp
   1F9F 24 06              1966 	add	a,#0x06
   1FA1 F8                 1967 	mov	r0,a
   1FA2 E5 10              1968 	mov	a,_bp
   1FA4 24 09              1969 	add	a,#0x09
   1FA6 F9                 1970 	mov	r1,a
   1FA7 E6                 1971 	mov	a,@r0
   1FA8 F7                 1972 	mov	@r1,a
   1FA9 08                 1973 	inc	r0
   1FAA 09                 1974 	inc	r1
   1FAB E6                 1975 	mov	a,@r0
   1FAC F7                 1976 	mov	@r1,a
   1FAD 08                 1977 	inc	r0
   1FAE 09                 1978 	inc	r1
   1FAF E6                 1979 	mov	a,@r0
   1FB0 F7                 1980 	mov	@r1,a
                           1981 ;	genAssign
   1FB1 7B 00              1982 	mov	r3,#0x00
   1FB3                    1983 00109$:
                           1984 ;	genCmpLt
                           1985 ;	genCmp
   1FB3 BB 08 00           1986 	cjne	r3,#0x08,00143$
   1FB6                    1987 00143$:
                           1988 ;	genIfxJump
   1FB6 40 03              1989 	jc	00144$
   1FB8 02 20 3C           1990 	ljmp	00141$
   1FBB                    1991 00144$:
                           1992 ;	FatDrivers/tff.c:409: c = dir[n];
                           1993 ;	genIpush
   1FBB C0 05              1994 	push	ar5
                           1995 ;	genPlus
   1FBD E5 10              1996 	mov	a,_bp
   1FBF 24 FB              1997 	add	a,#0xfffffffb
   1FC1 F8                 1998 	mov	r0,a
                           1999 ;	Peephole 236.g	used r3 instead of ar3
   1FC2 EB                 2000 	mov	a,r3
   1FC3 26                 2001 	add	a,@r0
   1FC4 FD                 2002 	mov	r5,a
                           2003 ;	Peephole 181	changed mov to clr
   1FC5 E4                 2004 	clr	a
   1FC6 08                 2005 	inc	r0
   1FC7 36                 2006 	addc	a,@r0
   1FC8 FF                 2007 	mov	r7,a
   1FC9 08                 2008 	inc	r0
   1FCA 86 02              2009 	mov	ar2,@r0
                           2010 ;	genPointerGet
                           2011 ;	genGenPointerGet
   1FCC 8D 82              2012 	mov	dpl,r5
   1FCE 8F 83              2013 	mov	dph,r7
   1FD0 8A F0              2014 	mov	b,r2
   1FD2 12 62 42           2015 	lcall	__gptrget
   1FD5 FD                 2016 	mov	r5,a
                           2017 ;	genAssign
   1FD6 E5 10              2018 	mov	a,_bp
   1FD8 24 05              2019 	add	a,#0x05
   1FDA F8                 2020 	mov	r0,a
   1FDB A6 05              2021 	mov	@r0,ar5
                           2022 ;	FatDrivers/tff.c:410: if (c == ' ') break;
                           2023 ;	genCmpEq
   1FDD E5 10              2024 	mov	a,_bp
   1FDF 24 05              2025 	add	a,#0x05
   1FE1 F8                 2026 	mov	r0,a
                           2027 ;	gencjne
                           2028 ;	gencjneshort
                           2029 ;	Peephole 241.h	optimized compare
   1FE2 E4                 2030 	clr	a
   1FE3 B6 20 01           2031 	cjne	@r0,#0x20,00145$
   1FE6 04                 2032 	inc	a
   1FE7                    2033 00145$:
                           2034 ;	Peephole 300	removed redundant label 00146$
                           2035 ;	genIpop
   1FE7 D0 05              2036 	pop	ar5
                           2037 ;	genIfx
                           2038 ;	genIfxJump
                           2039 ;	Peephole 108.b	removed ljmp by inverse jump logic
   1FE9 70 51              2040 	jnz	00141$
                           2041 ;	Peephole 300	removed redundant label 00147$
                           2042 ;	FatDrivers/tff.c:411: if (c == 0x05) c = 0xE5;
                           2043 ;	genCmpEq
   1FEB E5 10              2044 	mov	a,_bp
   1FED 24 05              2045 	add	a,#0x05
   1FEF F8                 2046 	mov	r0,a
                           2047 ;	gencjneshort
                           2048 ;	Peephole 112.b	changed ljmp to sjmp
                           2049 ;	Peephole 198.b	optimized misc jump sequence
   1FF0 B6 05 07           2050 	cjne	@r0,#0x05,00104$
                           2051 ;	Peephole 200.b	removed redundant sjmp
                           2052 ;	Peephole 300	removed redundant label 00148$
                           2053 ;	Peephole 300	removed redundant label 00149$
                           2054 ;	genAssign
   1FF3 E5 10              2055 	mov	a,_bp
   1FF5 24 05              2056 	add	a,#0x05
   1FF7 F8                 2057 	mov	r0,a
   1FF8 76 E5              2058 	mov	@r0,#0xE5
   1FFA                    2059 00104$:
                           2060 ;	FatDrivers/tff.c:412: if (a & 0x08 && c >= 'A' && c <= 'Z') c += 0x20;
                           2061 ;	genIfx
   1FFA EE                 2062 	mov	a,r6
                           2063 ;	genIfxJump
                           2064 ;	Peephole 108.c	removed ljmp by inverse jump logic
   1FFB 60 1D              2065 	jz	00106$
                           2066 ;	Peephole 300	removed redundant label 00150$
                           2067 ;	genCmpLt
   1FFD E5 10              2068 	mov	a,_bp
   1FFF 24 05              2069 	add	a,#0x05
   2001 F8                 2070 	mov	r0,a
                           2071 ;	genCmp
   2002 B6 41 00           2072 	cjne	@r0,#0x41,00151$
   2005                    2073 00151$:
                           2074 ;	genIfxJump
                           2075 ;	Peephole 112.b	changed ljmp to sjmp
                           2076 ;	Peephole 160.a	removed sjmp by inverse jump logic
   2005 40 13              2077 	jc	00106$
                           2078 ;	Peephole 300	removed redundant label 00152$
                           2079 ;	genCmpGt
   2007 E5 10              2080 	mov	a,_bp
   2009 24 05              2081 	add	a,#0x05
   200B F8                 2082 	mov	r0,a
                           2083 ;	genCmp
                           2084 ;	genIfxJump
                           2085 ;	Peephole 132.b	optimized genCmpGt by inverse logic (acc differs)
   200C E6                 2086 	mov	a,@r0
   200D 24 A5              2087 	add	a,#0xff - 0x5A
                           2088 ;	Peephole 112.b	changed ljmp to sjmp
                           2089 ;	Peephole 160.a	removed sjmp by inverse jump logic
   200F 40 09              2090 	jc	00106$
                           2091 ;	Peephole 300	removed redundant label 00153$
                           2092 ;	genPlus
   2011 E5 10              2093 	mov	a,_bp
   2013 24 05              2094 	add	a,#0x05
   2015 F8                 2095 	mov	r0,a
                           2096 ;     genPlusIncr
   2016 74 20              2097 	mov	a,#0x20
   2018 26                 2098 	add	a,@r0
   2019 F6                 2099 	mov	@r0,a
   201A                    2100 00106$:
                           2101 ;	FatDrivers/tff.c:413: *p++ = c;
                           2102 ;	genPointerSet
                           2103 ;	genGenPointerSet
   201A E5 10              2104 	mov	a,_bp
   201C 24 09              2105 	add	a,#0x09
   201E F8                 2106 	mov	r0,a
   201F 86 82              2107 	mov	dpl,@r0
   2021 08                 2108 	inc	r0
   2022 86 83              2109 	mov	dph,@r0
   2024 08                 2110 	inc	r0
   2025 86 F0              2111 	mov	b,@r0
   2027 E5 10              2112 	mov	a,_bp
   2029 24 05              2113 	add	a,#0x05
   202B F9                 2114 	mov	r1,a
   202C E7                 2115 	mov	a,@r1
   202D 12 5E A4           2116 	lcall	__gptrput
   2030 A3                 2117 	inc	dptr
   2031 18                 2118 	dec	r0
   2032 18                 2119 	dec	r0
   2033 A6 82              2120 	mov	@r0,dpl
   2035 08                 2121 	inc	r0
   2036 A6 83              2122 	mov	@r0,dph
                           2123 ;	FatDrivers/tff.c:408: for (n = 0; n < 8; n++) {	/* Convert file name (body) */
                           2124 ;	genPlus
                           2125 ;     genPlusIncr
   2038 0B                 2126 	inc	r3
   2039 02 1F B3           2127 	ljmp	00109$
   203C                    2128 00141$:
                           2129 ;	genAssign
   203C E5 10              2130 	mov	a,_bp
   203E 24 09              2131 	add	a,#0x09
   2040 F8                 2132 	mov	r0,a
   2041 E5 10              2133 	mov	a,_bp
   2043 24 06              2134 	add	a,#0x06
   2045 F9                 2135 	mov	r1,a
   2046 E6                 2136 	mov	a,@r0
   2047 F7                 2137 	mov	@r1,a
   2048 08                 2138 	inc	r0
   2049 09                 2139 	inc	r1
   204A E6                 2140 	mov	a,@r0
   204B F7                 2141 	mov	@r1,a
   204C 08                 2142 	inc	r0
   204D 09                 2143 	inc	r1
   204E E6                 2144 	mov	a,@r0
   204F F7                 2145 	mov	@r1,a
                           2146 ;	FatDrivers/tff.c:415: if (dir[8] != ' ') {		/* Convert file name (extension) */
                           2147 ;	genPlus
   2050 E5 10              2148 	mov	a,_bp
   2052 24 FB              2149 	add	a,#0xfffffffb
   2054 F8                 2150 	mov	r0,a
                           2151 ;     genPlusIncr
   2055 74 08              2152 	mov	a,#0x08
   2057 26                 2153 	add	a,@r0
   2058 FA                 2154 	mov	r2,a
                           2155 ;	Peephole 181	changed mov to clr
   2059 E4                 2156 	clr	a
   205A 08                 2157 	inc	r0
   205B 36                 2158 	addc	a,@r0
   205C FB                 2159 	mov	r3,a
   205D 08                 2160 	inc	r0
   205E 86 04              2161 	mov	ar4,@r0
                           2162 ;	genPointerGet
                           2163 ;	genGenPointerGet
   2060 8A 82              2164 	mov	dpl,r2
   2062 8B 83              2165 	mov	dph,r3
   2064 8C F0              2166 	mov	b,r4
   2066 12 62 42           2167 	lcall	__gptrget
   2069 FA                 2168 	mov	r2,a
                           2169 ;	genCmpEq
                           2170 ;	gencjneshort
   206A BA 20 03           2171 	cjne	r2,#0x20,00154$
   206D 02 21 3D           2172 	ljmp	00124$
   2070                    2173 00154$:
                           2174 ;	FatDrivers/tff.c:416: *p++ = '.';
                           2175 ;	genPointerSet
                           2176 ;	genGenPointerSet
   2070 E5 10              2177 	mov	a,_bp
   2072 24 09              2178 	add	a,#0x09
   2074 F8                 2179 	mov	r0,a
   2075 86 82              2180 	mov	dpl,@r0
   2077 08                 2181 	inc	r0
   2078 86 83              2182 	mov	dph,@r0
   207A 08                 2183 	inc	r0
   207B 86 F0              2184 	mov	b,@r0
   207D 74 2E              2185 	mov	a,#0x2E
   207F 12 5E A4           2186 	lcall	__gptrput
                           2187 ;	genPlus
   2082 E5 10              2188 	mov	a,_bp
   2084 24 09              2189 	add	a,#0x09
   2086 F8                 2190 	mov	r0,a
   2087 E5 10              2191 	mov	a,_bp
   2089 24 06              2192 	add	a,#0x06
   208B F9                 2193 	mov	r1,a
                           2194 ;     genPlusIncr
   208C 74 01              2195 	mov	a,#0x01
   208E 26                 2196 	add	a,@r0
   208F F7                 2197 	mov	@r1,a
                           2198 ;	Peephole 181	changed mov to clr
   2090 E4                 2199 	clr	a
   2091 08                 2200 	inc	r0
   2092 36                 2201 	addc	a,@r0
   2093 09                 2202 	inc	r1
   2094 F7                 2203 	mov	@r1,a
   2095 08                 2204 	inc	r0
   2096 09                 2205 	inc	r1
   2097 E6                 2206 	mov	a,@r0
   2098 F7                 2207 	mov	@r1,a
                           2208 ;	FatDrivers/tff.c:417: for (n = 8; n < 11; n++) {
                           2209 ;	genAnd
   2099 74 10              2210 	mov	a,#0x10
   209B 5D                 2211 	anl	a,r5
   209C FA                 2212 	mov	r2,a
                           2213 ;	genAssign
   209D E5 10              2214 	mov	a,_bp
   209F 24 06              2215 	add	a,#0x06
   20A1 F8                 2216 	mov	r0,a
   20A2 86 03              2217 	mov	ar3,@r0
   20A4 08                 2218 	inc	r0
   20A5 86 04              2219 	mov	ar4,@r0
   20A7 08                 2220 	inc	r0
   20A8 86 05              2221 	mov	ar5,@r0
                           2222 ;	genAssign
   20AA E5 10              2223 	mov	a,_bp
   20AC 24 04              2224 	add	a,#0x04
   20AE F8                 2225 	mov	r0,a
   20AF 76 08              2226 	mov	@r0,#0x08
   20B1                    2227 00119$:
                           2228 ;	genCmpLt
   20B1 E5 10              2229 	mov	a,_bp
   20B3 24 04              2230 	add	a,#0x04
   20B5 F8                 2231 	mov	r0,a
                           2232 ;	genCmp
   20B6 B6 0B 00           2233 	cjne	@r0,#0x0B,00155$
   20B9                    2234 00155$:
                           2235 ;	genIfxJump
   20B9 40 03              2236 	jc	00156$
   20BB 02 21 30           2237 	ljmp	00142$
   20BE                    2238 00156$:
                           2239 ;	FatDrivers/tff.c:418: c = dir[n];
                           2240 ;	genIpush
   20BE C0 02              2241 	push	ar2
                           2242 ;	genPlus
   20C0 E5 10              2243 	mov	a,_bp
   20C2 24 FB              2244 	add	a,#0xfffffffb
   20C4 F8                 2245 	mov	r0,a
   20C5 E5 10              2246 	mov	a,_bp
   20C7 24 04              2247 	add	a,#0x04
   20C9 F9                 2248 	mov	r1,a
   20CA E7                 2249 	mov	a,@r1
   20CB 26                 2250 	add	a,@r0
   20CC FF                 2251 	mov	r7,a
                           2252 ;	Peephole 181	changed mov to clr
   20CD E4                 2253 	clr	a
   20CE 08                 2254 	inc	r0
   20CF 36                 2255 	addc	a,@r0
   20D0 FA                 2256 	mov	r2,a
   20D1 08                 2257 	inc	r0
   20D2 86 06              2258 	mov	ar6,@r0
                           2259 ;	genPointerGet
                           2260 ;	genGenPointerGet
   20D4 8F 82              2261 	mov	dpl,r7
   20D6 8A 83              2262 	mov	dph,r2
   20D8 8E F0              2263 	mov	b,r6
   20DA 12 62 42           2264 	lcall	__gptrget
   20DD FF                 2265 	mov	r7,a
                           2266 ;	genAssign
   20DE E5 10              2267 	mov	a,_bp
   20E0 24 05              2268 	add	a,#0x05
   20E2 F8                 2269 	mov	r0,a
   20E3 A6 07              2270 	mov	@r0,ar7
                           2271 ;	FatDrivers/tff.c:419: if (c == ' ') break;
                           2272 ;	genCmpEq
   20E5 E5 10              2273 	mov	a,_bp
   20E7 24 05              2274 	add	a,#0x05
   20E9 F8                 2275 	mov	r0,a
                           2276 ;	gencjne
                           2277 ;	gencjneshort
                           2278 ;	Peephole 241.h	optimized compare
   20EA E4                 2279 	clr	a
   20EB B6 20 01           2280 	cjne	@r0,#0x20,00157$
   20EE 04                 2281 	inc	a
   20EF                    2282 00157$:
                           2283 ;	Peephole 300	removed redundant label 00158$
                           2284 ;	genIpop
   20EF D0 02              2285 	pop	ar2
                           2286 ;	genIfx
                           2287 ;	genIfxJump
                           2288 ;	Peephole 108.b	removed ljmp by inverse jump logic
   20F1 70 3D              2289 	jnz	00142$
                           2290 ;	Peephole 300	removed redundant label 00159$
                           2291 ;	FatDrivers/tff.c:420: if (a & 0x10 && c >= 'A' && c <= 'Z') c += 0x20;
                           2292 ;	genIfx
   20F3 EA                 2293 	mov	a,r2
                           2294 ;	genIfxJump
                           2295 ;	Peephole 108.c	removed ljmp by inverse jump logic
   20F4 60 1D              2296 	jz	00116$
                           2297 ;	Peephole 300	removed redundant label 00160$
                           2298 ;	genCmpLt
   20F6 E5 10              2299 	mov	a,_bp
   20F8 24 05              2300 	add	a,#0x05
   20FA F8                 2301 	mov	r0,a
                           2302 ;	genCmp
   20FB B6 41 00           2303 	cjne	@r0,#0x41,00161$
   20FE                    2304 00161$:
                           2305 ;	genIfxJump
                           2306 ;	Peephole 112.b	changed ljmp to sjmp
                           2307 ;	Peephole 160.a	removed sjmp by inverse jump logic
   20FE 40 13              2308 	jc	00116$
                           2309 ;	Peephole 300	removed redundant label 00162$
                           2310 ;	genCmpGt
   2100 E5 10              2311 	mov	a,_bp
   2102 24 05              2312 	add	a,#0x05
   2104 F8                 2313 	mov	r0,a
                           2314 ;	genCmp
                           2315 ;	genIfxJump
                           2316 ;	Peephole 132.b	optimized genCmpGt by inverse logic (acc differs)
   2105 E6                 2317 	mov	a,@r0
   2106 24 A5              2318 	add	a,#0xff - 0x5A
                           2319 ;	Peephole 112.b	changed ljmp to sjmp
                           2320 ;	Peephole 160.a	removed sjmp by inverse jump logic
   2108 40 09              2321 	jc	00116$
                           2322 ;	Peephole 300	removed redundant label 00163$
                           2323 ;	genPlus
   210A E5 10              2324 	mov	a,_bp
   210C 24 05              2325 	add	a,#0x05
   210E F8                 2326 	mov	r0,a
                           2327 ;     genPlusIncr
   210F 74 20              2328 	mov	a,#0x20
   2111 26                 2329 	add	a,@r0
   2112 F6                 2330 	mov	@r0,a
   2113                    2331 00116$:
                           2332 ;	FatDrivers/tff.c:421: *p++ = c;
                           2333 ;	genPointerSet
                           2334 ;	genGenPointerSet
   2113 8B 82              2335 	mov	dpl,r3
   2115 8C 83              2336 	mov	dph,r4
   2117 8D F0              2337 	mov	b,r5
   2119 E5 10              2338 	mov	a,_bp
   211B 24 05              2339 	add	a,#0x05
   211D F8                 2340 	mov	r0,a
   211E E6                 2341 	mov	a,@r0
   211F 12 5E A4           2342 	lcall	__gptrput
   2122 A3                 2343 	inc	dptr
   2123 AB 82              2344 	mov	r3,dpl
   2125 AC 83              2345 	mov	r4,dph
                           2346 ;	FatDrivers/tff.c:417: for (n = 8; n < 11; n++) {
                           2347 ;	genPlus
   2127 E5 10              2348 	mov	a,_bp
   2129 24 04              2349 	add	a,#0x04
   212B F8                 2350 	mov	r0,a
                           2351 ;     genPlusIncr
   212C 06                 2352 	inc	@r0
   212D 02 20 B1           2353 	ljmp	00119$
   2130                    2354 00142$:
                           2355 ;	genAssign
   2130 E5 10              2356 	mov	a,_bp
   2132 24 06              2357 	add	a,#0x06
   2134 F8                 2358 	mov	r0,a
   2135 A6 03              2359 	mov	@r0,ar3
   2137 08                 2360 	inc	r0
   2138 A6 04              2361 	mov	@r0,ar4
   213A 08                 2362 	inc	r0
   213B A6 05              2363 	mov	@r0,ar5
   213D                    2364 00124$:
                           2365 ;	FatDrivers/tff.c:424: *p = '\0';
                           2366 ;	genPointerSet
                           2367 ;	genGenPointerSet
   213D E5 10              2368 	mov	a,_bp
   213F 24 06              2369 	add	a,#0x06
   2141 F8                 2370 	mov	r0,a
   2142 86 82              2371 	mov	dpl,@r0
   2144 08                 2372 	inc	r0
   2145 86 83              2373 	mov	dph,@r0
   2147 08                 2374 	inc	r0
   2148 86 F0              2375 	mov	b,@r0
                           2376 ;	Peephole 181	changed mov to clr
   214A E4                 2377 	clr	a
   214B 12 5E A4           2378 	lcall	__gptrput
                           2379 ;	FatDrivers/tff.c:426: finfo->fattrib = dir[DIR_Attr];			/* Attribute */
                           2380 ;	genPlus
   214E A8 10              2381 	mov	r0,_bp
   2150 08                 2382 	inc	r0
                           2383 ;     genPlusIncr
   2151 74 08              2384 	mov	a,#0x08
   2153 26                 2385 	add	a,@r0
   2154 FA                 2386 	mov	r2,a
                           2387 ;	Peephole 181	changed mov to clr
   2155 E4                 2388 	clr	a
   2156 08                 2389 	inc	r0
   2157 36                 2390 	addc	a,@r0
   2158 FB                 2391 	mov	r3,a
   2159 08                 2392 	inc	r0
   215A 86 04              2393 	mov	ar4,@r0
                           2394 ;	genPlus
   215C E5 10              2395 	mov	a,_bp
   215E 24 FB              2396 	add	a,#0xfffffffb
   2160 F8                 2397 	mov	r0,a
                           2398 ;     genPlusIncr
   2161 74 0B              2399 	mov	a,#0x0B
   2163 26                 2400 	add	a,@r0
   2164 FD                 2401 	mov	r5,a
                           2402 ;	Peephole 181	changed mov to clr
   2165 E4                 2403 	clr	a
   2166 08                 2404 	inc	r0
   2167 36                 2405 	addc	a,@r0
   2168 FE                 2406 	mov	r6,a
   2169 08                 2407 	inc	r0
   216A 86 07              2408 	mov	ar7,@r0
                           2409 ;	genPointerGet
                           2410 ;	genGenPointerGet
   216C 8D 82              2411 	mov	dpl,r5
   216E 8E 83              2412 	mov	dph,r6
   2170 8F F0              2413 	mov	b,r7
   2172 12 62 42           2414 	lcall	__gptrget
                           2415 ;	genPointerSet
                           2416 ;	genGenPointerSet
   2175 FD                 2417 	mov	r5,a
   2176 8A 82              2418 	mov	dpl,r2
   2178 8B 83              2419 	mov	dph,r3
   217A 8C F0              2420 	mov	b,r4
                           2421 ;	Peephole 191	removed redundant mov
   217C 12 5E A4           2422 	lcall	__gptrput
                           2423 ;	FatDrivers/tff.c:427: finfo->fsize = LD_DWORD(&dir[DIR_FileSize]);	/* Size */
                           2424 ;	genPlus
   217F E5 10              2425 	mov	a,_bp
   2181 24 FB              2426 	add	a,#0xfffffffb
   2183 F8                 2427 	mov	r0,a
                           2428 ;     genPlusIncr
   2184 74 1C              2429 	mov	a,#0x1C
   2186 26                 2430 	add	a,@r0
   2187 FA                 2431 	mov	r2,a
                           2432 ;	Peephole 181	changed mov to clr
   2188 E4                 2433 	clr	a
   2189 08                 2434 	inc	r0
   218A 36                 2435 	addc	a,@r0
   218B FB                 2436 	mov	r3,a
   218C 08                 2437 	inc	r0
   218D 86 04              2438 	mov	ar4,@r0
                           2439 ;	genPointerGet
                           2440 ;	genGenPointerGet
   218F 8A 82              2441 	mov	dpl,r2
   2191 8B 83              2442 	mov	dph,r3
   2193 8C F0              2443 	mov	b,r4
   2195 12 62 42           2444 	lcall	__gptrget
   2198 FA                 2445 	mov	r2,a
   2199 A3                 2446 	inc	dptr
   219A 12 62 42           2447 	lcall	__gptrget
   219D FB                 2448 	mov	r3,a
   219E A3                 2449 	inc	dptr
   219F 12 62 42           2450 	lcall	__gptrget
   21A2 FC                 2451 	mov	r4,a
   21A3 A3                 2452 	inc	dptr
   21A4 12 62 42           2453 	lcall	__gptrget
   21A7 FD                 2454 	mov	r5,a
                           2455 ;	genPointerSet
                           2456 ;	genGenPointerSet
   21A8 A8 10              2457 	mov	r0,_bp
   21AA 08                 2458 	inc	r0
   21AB 86 82              2459 	mov	dpl,@r0
   21AD 08                 2460 	inc	r0
   21AE 86 83              2461 	mov	dph,@r0
   21B0 08                 2462 	inc	r0
   21B1 86 F0              2463 	mov	b,@r0
   21B3 EA                 2464 	mov	a,r2
   21B4 12 5E A4           2465 	lcall	__gptrput
   21B7 A3                 2466 	inc	dptr
   21B8 EB                 2467 	mov	a,r3
   21B9 12 5E A4           2468 	lcall	__gptrput
   21BC A3                 2469 	inc	dptr
   21BD EC                 2470 	mov	a,r4
   21BE 12 5E A4           2471 	lcall	__gptrput
   21C1 A3                 2472 	inc	dptr
   21C2 ED                 2473 	mov	a,r5
   21C3 12 5E A4           2474 	lcall	__gptrput
                           2475 ;	FatDrivers/tff.c:428: finfo->fdate = LD_WORD(&dir[DIR_WrtDate]);	/* Date */
                           2476 ;	genPlus
   21C6 A8 10              2477 	mov	r0,_bp
   21C8 08                 2478 	inc	r0
                           2479 ;     genPlusIncr
   21C9 74 04              2480 	mov	a,#0x04
   21CB 26                 2481 	add	a,@r0
   21CC FA                 2482 	mov	r2,a
                           2483 ;	Peephole 181	changed mov to clr
   21CD E4                 2484 	clr	a
   21CE 08                 2485 	inc	r0
   21CF 36                 2486 	addc	a,@r0
   21D0 FB                 2487 	mov	r3,a
   21D1 08                 2488 	inc	r0
   21D2 86 04              2489 	mov	ar4,@r0
                           2490 ;	genPlus
   21D4 E5 10              2491 	mov	a,_bp
   21D6 24 FB              2492 	add	a,#0xfffffffb
   21D8 F8                 2493 	mov	r0,a
                           2494 ;     genPlusIncr
   21D9 74 18              2495 	mov	a,#0x18
   21DB 26                 2496 	add	a,@r0
   21DC FD                 2497 	mov	r5,a
                           2498 ;	Peephole 181	changed mov to clr
   21DD E4                 2499 	clr	a
   21DE 08                 2500 	inc	r0
   21DF 36                 2501 	addc	a,@r0
   21E0 FE                 2502 	mov	r6,a
   21E1 08                 2503 	inc	r0
   21E2 86 07              2504 	mov	ar7,@r0
                           2505 ;	genPointerGet
                           2506 ;	genGenPointerGet
   21E4 8D 82              2507 	mov	dpl,r5
   21E6 8E 83              2508 	mov	dph,r6
   21E8 8F F0              2509 	mov	b,r7
   21EA 12 62 42           2510 	lcall	__gptrget
   21ED FD                 2511 	mov	r5,a
   21EE A3                 2512 	inc	dptr
   21EF 12 62 42           2513 	lcall	__gptrget
   21F2 FE                 2514 	mov	r6,a
                           2515 ;	genPointerSet
                           2516 ;	genGenPointerSet
   21F3 8A 82              2517 	mov	dpl,r2
   21F5 8B 83              2518 	mov	dph,r3
   21F7 8C F0              2519 	mov	b,r4
   21F9 ED                 2520 	mov	a,r5
   21FA 12 5E A4           2521 	lcall	__gptrput
   21FD A3                 2522 	inc	dptr
   21FE EE                 2523 	mov	a,r6
   21FF 12 5E A4           2524 	lcall	__gptrput
                           2525 ;	FatDrivers/tff.c:429: finfo->ftime = LD_WORD(&dir[DIR_WrtTime]);	/* Time */
                           2526 ;	genPlus
   2202 A8 10              2527 	mov	r0,_bp
   2204 08                 2528 	inc	r0
                           2529 ;     genPlusIncr
   2205 74 06              2530 	mov	a,#0x06
   2207 26                 2531 	add	a,@r0
   2208 FA                 2532 	mov	r2,a
                           2533 ;	Peephole 181	changed mov to clr
   2209 E4                 2534 	clr	a
   220A 08                 2535 	inc	r0
   220B 36                 2536 	addc	a,@r0
   220C FB                 2537 	mov	r3,a
   220D 08                 2538 	inc	r0
   220E 86 04              2539 	mov	ar4,@r0
                           2540 ;	genPlus
   2210 E5 10              2541 	mov	a,_bp
   2212 24 FB              2542 	add	a,#0xfffffffb
   2214 F8                 2543 	mov	r0,a
                           2544 ;     genPlusIncr
   2215 74 16              2545 	mov	a,#0x16
   2217 26                 2546 	add	a,@r0
   2218 FD                 2547 	mov	r5,a
                           2548 ;	Peephole 181	changed mov to clr
   2219 E4                 2549 	clr	a
   221A 08                 2550 	inc	r0
   221B 36                 2551 	addc	a,@r0
   221C FE                 2552 	mov	r6,a
   221D 08                 2553 	inc	r0
   221E 86 07              2554 	mov	ar7,@r0
                           2555 ;	genPointerGet
                           2556 ;	genGenPointerGet
   2220 8D 82              2557 	mov	dpl,r5
   2222 8E 83              2558 	mov	dph,r6
   2224 8F F0              2559 	mov	b,r7
   2226 12 62 42           2560 	lcall	__gptrget
   2229 FD                 2561 	mov	r5,a
   222A A3                 2562 	inc	dptr
   222B 12 62 42           2563 	lcall	__gptrget
   222E FE                 2564 	mov	r6,a
                           2565 ;	genPointerSet
                           2566 ;	genGenPointerSet
   222F 8A 82              2567 	mov	dpl,r2
   2231 8B 83              2568 	mov	dph,r3
   2233 8C F0              2569 	mov	b,r4
   2235 ED                 2570 	mov	a,r5
   2236 12 5E A4           2571 	lcall	__gptrput
   2239 A3                 2572 	inc	dptr
   223A EE                 2573 	mov	a,r6
   223B 12 5E A4           2574 	lcall	__gptrput
                           2575 ;	Peephole 300	removed redundant label 00125$
   223E 85 10 81           2576 	mov	sp,_bp
   2241 D0 10              2577 	pop	_bp
   2243 22                 2578 	ret
                           2579 ;------------------------------------------------------------
                           2580 ;Allocation info for local variables in function 'make_dirfile'
                           2581 ;------------------------------------------------------------
                           2582 ;dirname                   Allocated to stack - offset -5
                           2583 ;path                      Allocated to stack - offset 1
                           2584 ;n                         Allocated to stack - offset 4
                           2585 ;t                         Allocated to registers r6 
                           2586 ;c                         Allocated to registers r7 
                           2587 ;a                         Allocated to stack - offset 5
                           2588 ;b                         Allocated to stack - offset 6
                           2589 ;------------------------------------------------------------
                           2590 ;	FatDrivers/tff.c:441: char make_dirfile (			/* 1: error - detected an invalid format, '\0'or'/': next character */
                           2591 ;	-----------------------------------------
                           2592 ;	 function make_dirfile
                           2593 ;	-----------------------------------------
   2244                    2594 _make_dirfile:
   2244 C0 10              2595 	push	_bp
   2246 85 81 10           2596 	mov	_bp,sp
                           2597 ;     genReceive
   2249 C0 82              2598 	push	dpl
   224B C0 83              2599 	push	dph
   224D C0 F0              2600 	push	b
   224F 05 81              2601 	inc	sp
   2251 05 81              2602 	inc	sp
   2253 05 81              2603 	inc	sp
                           2604 ;	FatDrivers/tff.c:449: memset(dirname, ' ', 8+3);	/* Fill buffer with spaces */
                           2605 ;	genAssign
   2255 E5 10              2606 	mov	a,_bp
   2257 24 FB              2607 	add	a,#0xfffffffb
   2259 F8                 2608 	mov	r0,a
   225A 86 05              2609 	mov	ar5,@r0
   225C 08                 2610 	inc	r0
   225D 86 06              2611 	mov	ar6,@r0
   225F 08                 2612 	inc	r0
   2260 86 07              2613 	mov	ar7,@r0
                           2614 ;	genIpush
   2262 74 0B              2615 	mov	a,#0x0B
   2264 C0 E0              2616 	push	acc
                           2617 ;	Peephole 181	changed mov to clr
   2266 E4                 2618 	clr	a
   2267 C0 E0              2619 	push	acc
                           2620 ;	genIpush
   2269 74 20              2621 	mov	a,#0x20
   226B C0 E0              2622 	push	acc
                           2623 ;	genCall
   226D 8D 82              2624 	mov	dpl,r5
   226F 8E 83              2625 	mov	dph,r6
   2271 8F F0              2626 	mov	b,r7
   2273 12 61 11           2627 	lcall	_memset
   2276 15 81              2628 	dec	sp
   2278 15 81              2629 	dec	sp
   227A 15 81              2630 	dec	sp
                           2631 ;	FatDrivers/tff.c:450: a = 0; b = 0x18;	/* NT flag */
                           2632 ;	genAssign
   227C E5 10              2633 	mov	a,_bp
   227E 24 05              2634 	add	a,#0x05
   2280 F8                 2635 	mov	r0,a
   2281 76 00              2636 	mov	@r0,#0x00
                           2637 ;	genAssign
   2283 E5 10              2638 	mov	a,_bp
   2285 24 06              2639 	add	a,#0x06
   2287 F8                 2640 	mov	r0,a
   2288 76 18              2641 	mov	@r0,#0x18
                           2642 ;	FatDrivers/tff.c:451: n = 0; t = 8;
                           2643 ;	genAssign
   228A E5 10              2644 	mov	a,_bp
   228C 24 04              2645 	add	a,#0x04
   228E F8                 2646 	mov	r0,a
   228F 76 00              2647 	mov	@r0,#0x00
                           2648 ;	genAssign
   2291 7E 08              2649 	mov	r6,#0x08
   2293                    2650 00155$:
                           2651 ;	FatDrivers/tff.c:453: c = *(*path)++;
                           2652 ;	genIpush
   2293 C0 06              2653 	push	ar6
                           2654 ;	genPointerGet
                           2655 ;	genGenPointerGet
   2295 A8 10              2656 	mov	r0,_bp
   2297 08                 2657 	inc	r0
   2298 86 82              2658 	mov	dpl,@r0
   229A 08                 2659 	inc	r0
   229B 86 83              2660 	mov	dph,@r0
   229D 08                 2661 	inc	r0
   229E 86 F0              2662 	mov	b,@r0
   22A0 12 62 42           2663 	lcall	__gptrget
   22A3 FE                 2664 	mov	r6,a
   22A4 A3                 2665 	inc	dptr
   22A5 12 62 42           2666 	lcall	__gptrget
   22A8 FF                 2667 	mov	r7,a
   22A9 A3                 2668 	inc	dptr
   22AA 12 62 42           2669 	lcall	__gptrget
   22AD FD                 2670 	mov	r5,a
                           2671 ;	genPlus
                           2672 ;     genPlusIncr
   22AE 74 01              2673 	mov	a,#0x01
                           2674 ;	Peephole 236.a	used r6 instead of ar6
   22B0 2E                 2675 	add	a,r6
   22B1 FA                 2676 	mov	r2,a
                           2677 ;	Peephole 181	changed mov to clr
   22B2 E4                 2678 	clr	a
                           2679 ;	Peephole 236.b	used r7 instead of ar7
   22B3 3F                 2680 	addc	a,r7
   22B4 FB                 2681 	mov	r3,a
   22B5 8D 04              2682 	mov	ar4,r5
                           2683 ;	genPointerSet
                           2684 ;	genGenPointerSet
   22B7 A8 10              2685 	mov	r0,_bp
   22B9 08                 2686 	inc	r0
   22BA 86 82              2687 	mov	dpl,@r0
   22BC 08                 2688 	inc	r0
   22BD 86 83              2689 	mov	dph,@r0
   22BF 08                 2690 	inc	r0
   22C0 86 F0              2691 	mov	b,@r0
   22C2 EA                 2692 	mov	a,r2
   22C3 12 5E A4           2693 	lcall	__gptrput
   22C6 A3                 2694 	inc	dptr
   22C7 EB                 2695 	mov	a,r3
   22C8 12 5E A4           2696 	lcall	__gptrput
   22CB A3                 2697 	inc	dptr
   22CC EC                 2698 	mov	a,r4
   22CD 12 5E A4           2699 	lcall	__gptrput
                           2700 ;	genPointerGet
                           2701 ;	genGenPointerGet
   22D0 8E 82              2702 	mov	dpl,r6
   22D2 8F 83              2703 	mov	dph,r7
   22D4 8D F0              2704 	mov	b,r5
   22D6 12 62 42           2705 	lcall	__gptrget
   22D9 FE                 2706 	mov	r6,a
                           2707 ;	genAssign
   22DA 8E 07              2708 	mov	ar7,r6
                           2709 ;	FatDrivers/tff.c:454: if (c == '\0' || c == '/') {		/* Reached to end of str or directory separator */
                           2710 ;	genIpop
   22DC D0 06              2711 	pop	ar6
                           2712 ;	genIfx
   22DE EF                 2713 	mov	a,r7
                           2714 ;	genIfxJump
                           2715 ;	Peephole 108.c	removed ljmp by inverse jump logic
   22DF 60 03              2716 	jz	00103$
                           2717 ;	Peephole 300	removed redundant label 00191$
                           2718 ;	genCmpEq
                           2719 ;	gencjneshort
                           2720 ;	Peephole 112.b	changed ljmp to sjmp
                           2721 ;	Peephole 198.b	optimized misc jump sequence
   22E1 BF 2F 36           2722 	cjne	r7,#0x2F,00104$
                           2723 ;	Peephole 200.b	removed redundant sjmp
                           2724 ;	Peephole 300	removed redundant label 00192$
                           2725 ;	Peephole 300	removed redundant label 00193$
   22E4                    2726 00103$:
                           2727 ;	FatDrivers/tff.c:455: if (n == 0) break;
                           2728 ;	genIfx
   22E4 E5 10              2729 	mov	a,_bp
   22E6 24 04              2730 	add	a,#0x04
   22E8 F8                 2731 	mov	r0,a
   22E9 E6                 2732 	mov	a,@r0
                           2733 ;	genIfxJump
   22EA 70 03              2734 	jnz	00194$
   22EC 02 24 4E           2735 	ljmp	00156$
   22EF                    2736 00194$:
                           2737 ;	FatDrivers/tff.c:456: dirname[11] = _USE_NTFLAG ? (a & b) : 0;
                           2738 ;	genPlus
   22EF E5 10              2739 	mov	a,_bp
   22F1 24 FB              2740 	add	a,#0xfffffffb
   22F3 F8                 2741 	mov	r0,a
                           2742 ;     genPlusIncr
   22F4 74 0B              2743 	mov	a,#0x0B
   22F6 26                 2744 	add	a,@r0
   22F7 FA                 2745 	mov	r2,a
                           2746 ;	Peephole 181	changed mov to clr
   22F8 E4                 2747 	clr	a
   22F9 08                 2748 	inc	r0
   22FA 36                 2749 	addc	a,@r0
   22FB FB                 2750 	mov	r3,a
   22FC 08                 2751 	inc	r0
   22FD 86 04              2752 	mov	ar4,@r0
                           2753 ;	genAnd
   22FF E5 10              2754 	mov	a,_bp
   2301 24 05              2755 	add	a,#0x05
   2303 F8                 2756 	mov	r0,a
   2304 E5 10              2757 	mov	a,_bp
   2306 24 06              2758 	add	a,#0x06
   2308 F9                 2759 	mov	r1,a
   2309 E7                 2760 	mov	a,@r1
   230A 56                 2761 	anl	a,@r0
                           2762 ;	genPointerSet
                           2763 ;	genGenPointerSet
   230B FD                 2764 	mov	r5,a
   230C 8A 82              2765 	mov	dpl,r2
   230E 8B 83              2766 	mov	dph,r3
   2310 8C F0              2767 	mov	b,r4
                           2768 ;	Peephole 191	removed redundant mov
   2312 12 5E A4           2769 	lcall	__gptrput
                           2770 ;	FatDrivers/tff.c:457: return c;
                           2771 ;	genRet
   2315 8F 82              2772 	mov	dpl,r7
   2317 02 24 51           2773 	ljmp	00157$
   231A                    2774 00104$:
                           2775 ;	FatDrivers/tff.c:459: if (c <= ' ' || c == 0x7F) break;		/* Reject invisible chars */
                           2776 ;	genCmpGt
                           2777 ;	genCmp
                           2778 ;	genIfxJump
                           2779 ;	Peephole 132.c	optimized genCmpGt by inverse logic (acc differs)
   231A EF                 2780 	mov	a,r7
   231B 24 DF              2781 	add	a,#0xff - 0x20
   231D 40 03              2782 	jc	00195$
   231F 02 24 4E           2783 	ljmp	00156$
   2322                    2784 00195$:
                           2785 ;	genCmpEq
                           2786 ;	gencjneshort
   2322 BF 7F 03           2787 	cjne	r7,#0x7F,00196$
   2325 02 24 4E           2788 	ljmp	00156$
   2328                    2789 00196$:
                           2790 ;	FatDrivers/tff.c:460: if (c == '.') {
                           2791 ;	genCmpEq
                           2792 ;	gencjneshort
                           2793 ;	Peephole 112.b	changed ljmp to sjmp
                           2794 ;	Peephole 198.b	optimized misc jump sequence
   2328 BF 2E 32           2795 	cjne	r7,#0x2E,00123$
                           2796 ;	Peephole 200.b	removed redundant sjmp
                           2797 ;	Peephole 300	removed redundant label 00197$
                           2798 ;	Peephole 300	removed redundant label 00198$
                           2799 ;	FatDrivers/tff.c:461: if (!(a & 1) && n >= 1 && n <= 8) {	/* Enter extension part */
                           2800 ;	genAnd
   232B E5 10              2801 	mov	a,_bp
   232D 24 05              2802 	add	a,#0x05
   232F F8                 2803 	mov	r0,a
   2330 E6                 2804 	mov	a,@r0
                           2805 ;	genIfxJump
   2331 30 E0 03           2806 	jnb	acc.0,00199$
   2334 02 24 4E           2807 	ljmp	00156$
   2337                    2808 00199$:
                           2809 ;	genCmpLt
   2337 E5 10              2810 	mov	a,_bp
   2339 24 04              2811 	add	a,#0x04
   233B F8                 2812 	mov	r0,a
                           2813 ;	genCmp
   233C B6 01 00           2814 	cjne	@r0,#0x01,00200$
   233F                    2815 00200$:
                           2816 ;	genIfxJump
   233F 50 03              2817 	jnc	00201$
   2341 02 24 4E           2818 	ljmp	00156$
   2344                    2819 00201$:
                           2820 ;	genCmpGt
   2344 E5 10              2821 	mov	a,_bp
   2346 24 04              2822 	add	a,#0x04
   2348 F8                 2823 	mov	r0,a
                           2824 ;	genCmp
                           2825 ;	genIfxJump
                           2826 ;	Peephole 132.b	optimized genCmpGt by inverse logic (acc differs)
   2349 E6                 2827 	mov	a,@r0
   234A 24 F7              2828 	add	a,#0xff - 0x08
   234C 50 03              2829 	jnc	00202$
   234E 02 24 4E           2830 	ljmp	00156$
   2351                    2831 00202$:
                           2832 ;	FatDrivers/tff.c:462: n = 8; t = 11; continue;
                           2833 ;	genAssign
   2351 E5 10              2834 	mov	a,_bp
   2353 24 04              2835 	add	a,#0x04
   2355 F8                 2836 	mov	r0,a
   2356 76 08              2837 	mov	@r0,#0x08
                           2838 ;	genAssign
   2358 7E 0B              2839 	mov	r6,#0x0B
   235A 02 22 93           2840 	ljmp	00155$
                           2841 ;	FatDrivers/tff.c:466: if (_USE_SJIS &&
   235D                    2842 00123$:
                           2843 ;	FatDrivers/tff.c:467: ((c >= 0x81 && c <= 0x9F) ||		/* Accept S-JIS code */
                           2844 ;	genCmpLt
                           2845 ;	genCmp
   235D BF 81 00           2846 	cjne	r7,#0x81,00203$
   2360                    2847 00203$:
                           2848 ;	genIfxJump
                           2849 ;	Peephole 112.b	changed ljmp to sjmp
                           2850 ;	Peephole 160.a	removed sjmp by inverse jump logic
   2360 40 05              2851 	jc	00122$
                           2852 ;	Peephole 300	removed redundant label 00204$
                           2853 ;	genCmpGt
                           2854 ;	genCmp
                           2855 ;	genIfxJump
                           2856 ;	Peephole 108.a	removed ljmp by inverse jump logic
                           2857 ;	Peephole 132.b	optimized genCmpGt by inverse logic (acc differs)
   2362 EF                 2858 	mov	a,r7
   2363 24 60              2859 	add	a,#0xff - 0x9F
   2365 50 0A              2860 	jnc	00118$
                           2861 ;	Peephole 300	removed redundant label 00205$
   2367                    2862 00122$:
                           2863 ;	FatDrivers/tff.c:468: (c >= 0xE0 && c <= 0xFC))) {
                           2864 ;	genCmpLt
                           2865 ;	genCmp
   2367 BF E0 00           2866 	cjne	r7,#0xE0,00206$
   236A                    2867 00206$:
                           2868 ;	genIfxJump
                           2869 ;	Peephole 112.b	changed ljmp to sjmp
                           2870 ;	Peephole 160.a	removed sjmp by inverse jump logic
   236A 40 1E              2871 	jc	00119$
                           2872 ;	Peephole 300	removed redundant label 00207$
                           2873 ;	genCmpGt
                           2874 ;	genCmp
                           2875 ;	genIfxJump
                           2876 ;	Peephole 132.b	optimized genCmpGt by inverse logic (acc differs)
   236C EF                 2877 	mov	a,r7
   236D 24 03              2878 	add	a,#0xff - 0xFC
                           2879 ;	Peephole 112.b	changed ljmp to sjmp
                           2880 ;	Peephole 160.a	removed sjmp by inverse jump logic
   236F 40 19              2881 	jc	00119$
                           2882 ;	Peephole 300	removed redundant label 00208$
   2371                    2883 00118$:
                           2884 ;	FatDrivers/tff.c:469: if (n == 0 && c == 0xE5)		/* Change heading \xE5 to \x05 */
                           2885 ;	genIfx
   2371 E5 10              2886 	mov	a,_bp
   2373 24 04              2887 	add	a,#0x04
   2375 F8                 2888 	mov	r0,a
   2376 E6                 2889 	mov	a,@r0
                           2890 ;	genIfxJump
                           2891 ;	Peephole 108.b	removed ljmp by inverse jump logic
   2377 70 05              2892 	jnz	00116$
                           2893 ;	Peephole 300	removed redundant label 00209$
                           2894 ;	genCmpEq
                           2895 ;	gencjneshort
                           2896 ;	Peephole 112.b	changed ljmp to sjmp
                           2897 ;	Peephole 198.b	optimized misc jump sequence
   2379 BF E5 02           2898 	cjne	r7,#0xE5,00116$
                           2899 ;	Peephole 200.b	removed redundant sjmp
                           2900 ;	Peephole 300	removed redundant label 00210$
                           2901 ;	Peephole 300	removed redundant label 00211$
                           2902 ;	FatDrivers/tff.c:470: c = 0x05;
                           2903 ;	genAssign
   237C 7F 05              2904 	mov	r7,#0x05
   237E                    2905 00116$:
                           2906 ;	FatDrivers/tff.c:471: a ^= 1; goto md_l2;
                           2907 ;	genXor
   237E E5 10              2908 	mov	a,_bp
   2380 24 05              2909 	add	a,#0x05
   2382 F8                 2910 	mov	r0,a
   2383 E6                 2911 	mov	a,@r0
   2384 64 01              2912 	xrl	a,#0x01
   2386 F6                 2913 	mov	@r0,a
   2387 02 24 1B           2914 	ljmp	00151$
   238A                    2915 00119$:
                           2916 ;	FatDrivers/tff.c:473: if (c == '"') break;				/* Reject " */
                           2917 ;	genCmpEq
                           2918 ;	gencjneshort
   238A BF 22 03           2919 	cjne	r7,#0x22,00212$
   238D 02 24 4E           2920 	ljmp	00156$
   2390                    2921 00212$:
                           2922 ;	FatDrivers/tff.c:474: if (c <= ')') goto md_l1;			/* Accept ! # $ % & ' ( ) */
                           2923 ;	genCmpGt
                           2924 ;	genCmp
                           2925 ;	genIfxJump
                           2926 ;	Peephole 132.c	optimized genCmpGt by inverse logic (acc differs)
   2390 EF                 2927 	mov	a,r7
   2391 24 D6              2928 	add	a,#0xff - 0x29
   2393 40 03              2929 	jc	00213$
   2395 02 24 12           2930 	ljmp	00150$
   2398                    2931 00213$:
                           2932 ;	FatDrivers/tff.c:475: if (c <= ',') break;				/* Reject * + , */
                           2933 ;	genCmpGt
                           2934 ;	genCmp
                           2935 ;	genIfxJump
                           2936 ;	Peephole 132.c	optimized genCmpGt by inverse logic (acc differs)
   2398 EF                 2937 	mov	a,r7
   2399 24 D3              2938 	add	a,#0xff - 0x2C
   239B 40 03              2939 	jc	00214$
   239D 02 24 4E           2940 	ljmp	00156$
   23A0                    2941 00214$:
                           2942 ;	FatDrivers/tff.c:476: if (c <= '9') goto md_l1;			/* Accept - 0-9 */
                           2943 ;	genCmpGt
                           2944 ;	genCmp
                           2945 ;	genIfxJump
                           2946 ;	Peephole 132.c	optimized genCmpGt by inverse logic (acc differs)
   23A0 EF                 2947 	mov	a,r7
   23A1 24 C6              2948 	add	a,#0xff - 0x39
   23A3 40 03              2949 	jc	00215$
   23A5 02 24 12           2950 	ljmp	00150$
   23A8                    2951 00215$:
                           2952 ;	FatDrivers/tff.c:477: if (c <= '?') break;				/* Reject : ; < = > ? */
                           2953 ;	genCmpGt
                           2954 ;	genCmp
                           2955 ;	genIfxJump
                           2956 ;	Peephole 132.c	optimized genCmpGt by inverse logic (acc differs)
   23A8 EF                 2957 	mov	a,r7
   23A9 24 C0              2958 	add	a,#0xff - 0x3F
   23AB 40 03              2959 	jc	00216$
   23AD 02 24 4E           2960 	ljmp	00156$
   23B0                    2961 00216$:
                           2962 ;	FatDrivers/tff.c:478: if (!(a & 1)) {	/* These checks are not applied to S-JIS 2nd byte */
                           2963 ;	genAnd
   23B0 E5 10              2964 	mov	a,_bp
   23B2 24 05              2965 	add	a,#0x05
   23B4 F8                 2966 	mov	r0,a
   23B5 E6                 2967 	mov	a,@r0
                           2968 ;	genIfxJump
                           2969 ;	Peephole 108.e	removed ljmp by inverse jump logic
   23B6 20 E0 59           2970 	jb	acc.0,00150$
                           2971 ;	Peephole 300	removed redundant label 00217$
                           2972 ;	FatDrivers/tff.c:479: if (c == '|') break;			/* Reject | */
                           2973 ;	genCmpEq
                           2974 ;	gencjneshort
   23B9 BF 7C 03           2975 	cjne	r7,#0x7C,00218$
   23BC 02 24 4E           2976 	ljmp	00156$
   23BF                    2977 00218$:
                           2978 ;	FatDrivers/tff.c:480: if (c >= '[' && c <= ']') break;/* Reject [ \ ] */
                           2979 ;	genCmpLt
                           2980 ;	genCmp
   23BF BF 5B 00           2981 	cjne	r7,#0x5B,00219$
   23C2                    2982 00219$:
                           2983 ;	genIfxJump
                           2984 ;	Peephole 112.b	changed ljmp to sjmp
                           2985 ;	Peephole 160.a	removed sjmp by inverse jump logic
   23C2 40 08              2986 	jc	00141$
                           2987 ;	Peephole 300	removed redundant label 00220$
                           2988 ;	genCmpGt
                           2989 ;	genCmp
                           2990 ;	genIfxJump
                           2991 ;	Peephole 132.c	optimized genCmpGt by inverse logic (acc differs)
   23C4 EF                 2992 	mov	a,r7
   23C5 24 A2              2993 	add	a,#0xff - 0x5D
   23C7 40 03              2994 	jc	00221$
   23C9 02 24 4E           2995 	ljmp	00156$
   23CC                    2996 00221$:
                           2997 ;	FatDrivers/tff.c:481: if (_USE_NTFLAG && c >= 'A' && c <= 'Z')
   23CC                    2998 00141$:
                           2999 ;	genCmpLt
                           3000 ;	genCmp
   23CC BF 41 00           3001 	cjne	r7,#0x41,00222$
   23CF                    3002 00222$:
                           3003 ;	genIfxJump
                           3004 ;	Peephole 112.b	changed ljmp to sjmp
                           3005 ;	Peephole 160.a	removed sjmp by inverse jump logic
   23CF 40 1C              3006 	jc	00140$
                           3007 ;	Peephole 300	removed redundant label 00223$
                           3008 ;	genCmpGt
                           3009 ;	genCmp
                           3010 ;	genIfxJump
                           3011 ;	Peephole 132.b	optimized genCmpGt by inverse logic (acc differs)
   23D1 EF                 3012 	mov	a,r7
   23D2 24 A5              3013 	add	a,#0xff - 0x5A
                           3014 ;	Peephole 112.b	changed ljmp to sjmp
                           3015 ;	Peephole 160.a	removed sjmp by inverse jump logic
   23D4 40 17              3016 	jc	00140$
                           3017 ;	Peephole 300	removed redundant label 00224$
                           3018 ;	FatDrivers/tff.c:482: (t == 8) ? (b &= ~0x08) : (b &= ~0x10);
                           3019 ;	genCmpEq
                           3020 ;	gencjneshort
                           3021 ;	Peephole 112.b	changed ljmp to sjmp
                           3022 ;	Peephole 198.b	optimized misc jump sequence
   23D6 BE 08 0B           3023 	cjne	r6,#0x08,00159$
                           3024 ;	Peephole 200.b	removed redundant sjmp
                           3025 ;	Peephole 300	removed redundant label 00225$
                           3026 ;	Peephole 300	removed redundant label 00226$
                           3027 ;	genAnd
   23D9 E5 10              3028 	mov	a,_bp
   23DB 24 06              3029 	add	a,#0x06
   23DD F8                 3030 	mov	r0,a
   23DE E6                 3031 	mov	a,@r0
   23DF 54 F7              3032 	anl	a,#0xF7
   23E1 F6                 3033 	mov	@r0,a
                           3034 ;	Peephole 112.b	changed ljmp to sjmp
   23E2 80 09              3035 	sjmp	00140$
   23E4                    3036 00159$:
                           3037 ;	genAnd
   23E4 E5 10              3038 	mov	a,_bp
   23E6 24 06              3039 	add	a,#0x06
   23E8 F8                 3040 	mov	r0,a
   23E9 E6                 3041 	mov	a,@r0
   23EA 54 EF              3042 	anl	a,#0xEF
   23EC F6                 3043 	mov	@r0,a
   23ED                    3044 00140$:
                           3045 ;	FatDrivers/tff.c:483: if (c >= 'a' && c <= 'z') {		/* Convert to upper case */
                           3046 ;	genCmpLt
                           3047 ;	genCmp
   23ED BF 61 00           3048 	cjne	r7,#0x61,00227$
   23F0                    3049 00227$:
                           3050 ;	genIfxJump
                           3051 ;	Peephole 112.b	changed ljmp to sjmp
                           3052 ;	Peephole 160.a	removed sjmp by inverse jump logic
   23F0 40 20              3053 	jc	00150$
                           3054 ;	Peephole 300	removed redundant label 00228$
                           3055 ;	genCmpGt
                           3056 ;	genCmp
                           3057 ;	genIfxJump
                           3058 ;	Peephole 132.b	optimized genCmpGt by inverse logic (acc differs)
   23F2 EF                 3059 	mov	a,r7
   23F3 24 85              3060 	add	a,#0xff - 0x7A
                           3061 ;	Peephole 112.b	changed ljmp to sjmp
                           3062 ;	Peephole 160.a	removed sjmp by inverse jump logic
   23F5 40 1B              3063 	jc	00150$
                           3064 ;	Peephole 300	removed redundant label 00229$
                           3065 ;	FatDrivers/tff.c:484: c -= 0x20;
                           3066 ;	genMinus
   23F7 EF                 3067 	mov	a,r7
   23F8 24 E0              3068 	add	a,#0xe0
   23FA FF                 3069 	mov	r7,a
                           3070 ;	FatDrivers/tff.c:485: if (_USE_NTFLAG) (t == 8) ? (a |= 0x08) : (a |= 0x10);
                           3071 ;	genCmpEq
                           3072 ;	gencjneshort
                           3073 ;	Peephole 112.b	changed ljmp to sjmp
                           3074 ;	Peephole 198.b	optimized misc jump sequence
   23FB BE 08 0B           3075 	cjne	r6,#0x08,00161$
                           3076 ;	Peephole 200.b	removed redundant sjmp
                           3077 ;	Peephole 300	removed redundant label 00230$
                           3078 ;	Peephole 300	removed redundant label 00231$
                           3079 ;	genOr
   23FE E5 10              3080 	mov	a,_bp
   2400 24 05              3081 	add	a,#0x05
   2402 F8                 3082 	mov	r0,a
   2403 E6                 3083 	mov	a,@r0
   2404 44 08              3084 	orl	a,#0x08
   2406 F6                 3085 	mov	@r0,a
                           3086 ;	Peephole 112.b	changed ljmp to sjmp
   2407 80 09              3087 	sjmp	00150$
   2409                    3088 00161$:
                           3089 ;	genOr
   2409 E5 10              3090 	mov	a,_bp
   240B 24 05              3091 	add	a,#0x05
   240D F8                 3092 	mov	r0,a
   240E E6                 3093 	mov	a,@r0
   240F 44 10              3094 	orl	a,#0x10
   2411 F6                 3095 	mov	@r0,a
                           3096 ;	FatDrivers/tff.c:488: md_l1:
   2412                    3097 00150$:
                           3098 ;	FatDrivers/tff.c:489: a &= ~1;
                           3099 ;	genAnd
   2412 E5 10              3100 	mov	a,_bp
   2414 24 05              3101 	add	a,#0x05
   2416 F8                 3102 	mov	r0,a
   2417 E6                 3103 	mov	a,@r0
   2418 54 FE              3104 	anl	a,#0xFE
   241A F6                 3105 	mov	@r0,a
                           3106 ;	FatDrivers/tff.c:490: md_l2:
   241B                    3107 00151$:
                           3108 ;	FatDrivers/tff.c:491: if (n >= t) break;
                           3109 ;	genCmpLt
   241B E5 10              3110 	mov	a,_bp
   241D 24 04              3111 	add	a,#0x04
   241F F8                 3112 	mov	r0,a
                           3113 ;	genCmp
   2420 C3                 3114 	clr	c
   2421 E6                 3115 	mov	a,@r0
   2422 9E                 3116 	subb	a,r6
                           3117 ;	genIfxJump
                           3118 ;	Peephole 108.a	removed ljmp by inverse jump logic
   2423 50 29              3119 	jnc	00156$
                           3120 ;	Peephole 300	removed redundant label 00232$
                           3121 ;	FatDrivers/tff.c:492: dirname[n++] = c;
                           3122 ;	genAssign
   2425 E5 10              3123 	mov	a,_bp
   2427 24 04              3124 	add	a,#0x04
   2429 F8                 3125 	mov	r0,a
   242A 86 02              3126 	mov	ar2,@r0
                           3127 ;	genPlus
   242C E5 10              3128 	mov	a,_bp
   242E 24 04              3129 	add	a,#0x04
   2430 F8                 3130 	mov	r0,a
                           3131 ;     genPlusIncr
   2431 06                 3132 	inc	@r0
                           3133 ;	genPlus
   2432 E5 10              3134 	mov	a,_bp
   2434 24 FB              3135 	add	a,#0xfffffffb
   2436 F8                 3136 	mov	r0,a
                           3137 ;	Peephole 236.g	used r2 instead of ar2
   2437 EA                 3138 	mov	a,r2
   2438 26                 3139 	add	a,@r0
   2439 FA                 3140 	mov	r2,a
                           3141 ;	Peephole 181	changed mov to clr
   243A E4                 3142 	clr	a
   243B 08                 3143 	inc	r0
   243C 36                 3144 	addc	a,@r0
   243D FB                 3145 	mov	r3,a
   243E 08                 3146 	inc	r0
   243F 86 04              3147 	mov	ar4,@r0
                           3148 ;	genPointerSet
                           3149 ;	genGenPointerSet
   2441 8A 82              3150 	mov	dpl,r2
   2443 8B 83              3151 	mov	dph,r3
   2445 8C F0              3152 	mov	b,r4
   2447 EF                 3153 	mov	a,r7
   2448 12 5E A4           3154 	lcall	__gptrput
   244B 02 22 93           3155 	ljmp	00155$
   244E                    3156 00156$:
                           3157 ;	FatDrivers/tff.c:494: return 1;
                           3158 ;	genRet
   244E 75 82 01           3159 	mov	dpl,#0x01
   2451                    3160 00157$:
   2451 85 10 81           3161 	mov	sp,_bp
   2454 D0 10              3162 	pop	_bp
   2456 22                 3163 	ret
                           3164 ;------------------------------------------------------------
                           3165 ;Allocation info for local variables in function 'trace_path'
                           3166 ;------------------------------------------------------------
                           3167 ;fn                        Allocated to stack - offset -5
                           3168 ;path                      Allocated to stack - offset -8
                           3169 ;dir                       Allocated to stack - offset -11
                           3170 ;dirobj                    Allocated to stack - offset 1
                           3171 ;clust                     Allocated to stack - offset 4
                           3172 ;ds                        Allocated to registers r2 
                           3173 ;dptr                      Allocated to stack - offset 8
                           3174 ;fs                        Allocated to stack - offset 11
                           3175 ;sloc0                     Allocated to stack - offset 14
                           3176 ;sloc1                     Allocated to stack - offset 17
                           3177 ;sloc2                     Allocated to stack - offset 20
                           3178 ;------------------------------------------------------------
                           3179 ;	FatDrivers/tff.c:504: FRESULT trace_path (	/* FR_OK(0): successful, !=0: error code */
                           3180 ;	-----------------------------------------
                           3181 ;	 function trace_path
                           3182 ;	-----------------------------------------
   2457                    3183 _trace_path:
   2457 C0 10              3184 	push	_bp
   2459 85 81 10           3185 	mov	_bp,sp
                           3186 ;     genReceive
   245C C0 82              3187 	push	dpl
   245E C0 83              3188 	push	dph
   2460 C0 F0              3189 	push	b
   2462 E5 81              3190 	mov	a,sp
   2464 24 17              3191 	add	a,#0x17
   2466 F5 81              3192 	mov	sp,a
                           3193 ;	FatDrivers/tff.c:514: FATFS *fs = FatFs;
                           3194 ;	genAssign
   2468 E5 10              3195 	mov	a,_bp
   246A 24 0B              3196 	add	a,#0x0b
   246C F8                 3197 	mov	r0,a
   246D A6 09              3198 	mov	@r0,_FatFs
   246F 08                 3199 	inc	r0
   2470 A6 0A              3200 	mov	@r0,(_FatFs + 1)
   2472 08                 3201 	inc	r0
   2473 A6 0B              3202 	mov	@r0,(_FatFs + 2)
                           3203 ;	FatDrivers/tff.c:517: clust = fs->dirbase;
                           3204 ;	genPlus
   2475 E5 10              3205 	mov	a,_bp
   2477 24 0B              3206 	add	a,#0x0b
   2479 F8                 3207 	mov	r0,a
                           3208 ;     genPlusIncr
   247A 74 0C              3209 	mov	a,#0x0C
   247C 26                 3210 	add	a,@r0
   247D FD                 3211 	mov	r5,a
                           3212 ;	Peephole 181	changed mov to clr
   247E E4                 3213 	clr	a
   247F 08                 3214 	inc	r0
   2480 36                 3215 	addc	a,@r0
   2481 FE                 3216 	mov	r6,a
   2482 08                 3217 	inc	r0
   2483 86 07              3218 	mov	ar7,@r0
                           3219 ;	genPointerGet
                           3220 ;	genGenPointerGet
   2485 8D 82              3221 	mov	dpl,r5
   2487 8E 83              3222 	mov	dph,r6
   2489 8F F0              3223 	mov	b,r7
   248B 12 62 42           3224 	lcall	__gptrget
   248E FA                 3225 	mov	r2,a
   248F A3                 3226 	inc	dptr
   2490 12 62 42           3227 	lcall	__gptrget
   2493 FB                 3228 	mov	r3,a
   2494 A3                 3229 	inc	dptr
   2495 12 62 42           3230 	lcall	__gptrget
   2498 FC                 3231 	mov	r4,a
   2499 A3                 3232 	inc	dptr
   249A 12 62 42           3233 	lcall	__gptrget
   249D FD                 3234 	mov	r5,a
                           3235 ;	genAssign
   249E E5 10              3236 	mov	a,_bp
   24A0 24 04              3237 	add	a,#0x04
   24A2 F8                 3238 	mov	r0,a
   24A3 A6 02              3239 	mov	@r0,ar2
   24A5 08                 3240 	inc	r0
   24A6 A6 03              3241 	mov	@r0,ar3
   24A8 08                 3242 	inc	r0
   24A9 A6 04              3243 	mov	@r0,ar4
   24AB 08                 3244 	inc	r0
   24AC A6 05              3245 	mov	@r0,ar5
                           3246 ;	FatDrivers/tff.c:519: if (fs->fs_type == FS_FAT32) {
                           3247 ;	genPlus
   24AE E5 10              3248 	mov	a,_bp
   24B0 24 0B              3249 	add	a,#0x0b
   24B2 F8                 3250 	mov	r0,a
                           3251 ;     genPlusIncr
   24B3 74 1C              3252 	mov	a,#0x1C
   24B5 26                 3253 	add	a,@r0
   24B6 FD                 3254 	mov	r5,a
                           3255 ;	Peephole 181	changed mov to clr
   24B7 E4                 3256 	clr	a
   24B8 08                 3257 	inc	r0
   24B9 36                 3258 	addc	a,@r0
   24BA FE                 3259 	mov	r6,a
   24BB 08                 3260 	inc	r0
   24BC 86 07              3261 	mov	ar7,@r0
                           3262 ;	genPointerGet
                           3263 ;	genGenPointerGet
   24BE 8D 82              3264 	mov	dpl,r5
   24C0 8E 83              3265 	mov	dph,r6
   24C2 8F F0              3266 	mov	b,r7
   24C4 12 62 42           3267 	lcall	__gptrget
   24C7 FD                 3268 	mov	r5,a
                           3269 ;	genCmpEq
                           3270 ;	gencjneshort
   24C8 BD 03 02           3271 	cjne	r5,#0x03,00148$
   24CB 80 03              3272 	sjmp	00149$
   24CD                    3273 00148$:
   24CD 02 25 7F           3274 	ljmp	00102$
   24D0                    3275 00149$:
                           3276 ;	FatDrivers/tff.c:520: dirobj->clust = dirobj->sclust = clust;
                           3277 ;	genPlus
   24D0 A8 10              3278 	mov	r0,_bp
   24D2 08                 3279 	inc	r0
                           3280 ;     genPlusIncr
   24D3 74 0B              3281 	mov	a,#0x0B
   24D5 26                 3282 	add	a,@r0
   24D6 FD                 3283 	mov	r5,a
                           3284 ;	Peephole 181	changed mov to clr
   24D7 E4                 3285 	clr	a
   24D8 08                 3286 	inc	r0
   24D9 36                 3287 	addc	a,@r0
   24DA FE                 3288 	mov	r6,a
   24DB 08                 3289 	inc	r0
   24DC 86 07              3290 	mov	ar7,@r0
                           3291 ;	genPlus
   24DE A8 10              3292 	mov	r0,_bp
   24E0 08                 3293 	inc	r0
                           3294 ;     genPlusIncr
   24E1 74 07              3295 	mov	a,#0x07
   24E3 26                 3296 	add	a,@r0
   24E4 FA                 3297 	mov	r2,a
                           3298 ;	Peephole 181	changed mov to clr
   24E5 E4                 3299 	clr	a
   24E6 08                 3300 	inc	r0
   24E7 36                 3301 	addc	a,@r0
   24E8 FB                 3302 	mov	r3,a
   24E9 08                 3303 	inc	r0
   24EA 86 04              3304 	mov	ar4,@r0
                           3305 ;	genPointerSet
                           3306 ;	genGenPointerSet
   24EC 8A 82              3307 	mov	dpl,r2
   24EE 8B 83              3308 	mov	dph,r3
   24F0 8C F0              3309 	mov	b,r4
   24F2 E5 10              3310 	mov	a,_bp
   24F4 24 04              3311 	add	a,#0x04
   24F6 F8                 3312 	mov	r0,a
   24F7 E6                 3313 	mov	a,@r0
   24F8 12 5E A4           3314 	lcall	__gptrput
   24FB A3                 3315 	inc	dptr
   24FC 08                 3316 	inc	r0
   24FD E6                 3317 	mov	a,@r0
   24FE 12 5E A4           3318 	lcall	__gptrput
   2501 A3                 3319 	inc	dptr
   2502 08                 3320 	inc	r0
   2503 E6                 3321 	mov	a,@r0
   2504 12 5E A4           3322 	lcall	__gptrput
   2507 A3                 3323 	inc	dptr
   2508 08                 3324 	inc	r0
   2509 E6                 3325 	mov	a,@r0
   250A 12 5E A4           3326 	lcall	__gptrput
                           3327 ;	genPointerSet
                           3328 ;	genGenPointerSet
   250D 8D 82              3329 	mov	dpl,r5
   250F 8E 83              3330 	mov	dph,r6
   2511 8F F0              3331 	mov	b,r7
   2513 E5 10              3332 	mov	a,_bp
   2515 24 04              3333 	add	a,#0x04
   2517 F8                 3334 	mov	r0,a
   2518 E6                 3335 	mov	a,@r0
   2519 12 5E A4           3336 	lcall	__gptrput
   251C A3                 3337 	inc	dptr
   251D 08                 3338 	inc	r0
   251E E6                 3339 	mov	a,@r0
   251F 12 5E A4           3340 	lcall	__gptrput
   2522 A3                 3341 	inc	dptr
   2523 08                 3342 	inc	r0
   2524 E6                 3343 	mov	a,@r0
   2525 12 5E A4           3344 	lcall	__gptrput
   2528 A3                 3345 	inc	dptr
   2529 08                 3346 	inc	r0
   252A E6                 3347 	mov	a,@r0
   252B 12 5E A4           3348 	lcall	__gptrput
                           3349 ;	FatDrivers/tff.c:521: dirobj->sect = clust2sect(clust);
                           3350 ;	genPlus
   252E A8 10              3351 	mov	r0,_bp
   2530 08                 3352 	inc	r0
   2531 E5 10              3353 	mov	a,_bp
   2533 24 0E              3354 	add	a,#0x0e
   2535 F9                 3355 	mov	r1,a
                           3356 ;     genPlusIncr
   2536 74 0F              3357 	mov	a,#0x0F
   2538 26                 3358 	add	a,@r0
   2539 F7                 3359 	mov	@r1,a
                           3360 ;	Peephole 181	changed mov to clr
   253A E4                 3361 	clr	a
   253B 08                 3362 	inc	r0
   253C 36                 3363 	addc	a,@r0
   253D 09                 3364 	inc	r1
   253E F7                 3365 	mov	@r1,a
   253F 08                 3366 	inc	r0
   2540 09                 3367 	inc	r1
   2541 E6                 3368 	mov	a,@r0
   2542 F7                 3369 	mov	@r1,a
                           3370 ;	genCall
   2543 E5 10              3371 	mov	a,_bp
   2545 24 04              3372 	add	a,#0x04
   2547 F8                 3373 	mov	r0,a
   2548 86 82              3374 	mov	dpl,@r0
   254A 08                 3375 	inc	r0
   254B 86 83              3376 	mov	dph,@r0
   254D 08                 3377 	inc	r0
   254E 86 F0              3378 	mov	b,@r0
   2550 08                 3379 	inc	r0
   2551 E6                 3380 	mov	a,@r0
   2552 12 1B 9F           3381 	lcall	_clust2sect
   2555 AD 82              3382 	mov	r5,dpl
   2557 AE 83              3383 	mov	r6,dph
   2559 AF F0              3384 	mov	r7,b
   255B FA                 3385 	mov	r2,a
                           3386 ;	genPointerSet
                           3387 ;	genGenPointerSet
   255C E5 10              3388 	mov	a,_bp
   255E 24 0E              3389 	add	a,#0x0e
   2560 F8                 3390 	mov	r0,a
   2561 86 82              3391 	mov	dpl,@r0
   2563 08                 3392 	inc	r0
   2564 86 83              3393 	mov	dph,@r0
   2566 08                 3394 	inc	r0
   2567 86 F0              3395 	mov	b,@r0
   2569 ED                 3396 	mov	a,r5
   256A 12 5E A4           3397 	lcall	__gptrput
   256D A3                 3398 	inc	dptr
   256E EE                 3399 	mov	a,r6
   256F 12 5E A4           3400 	lcall	__gptrput
   2572 A3                 3401 	inc	dptr
   2573 EF                 3402 	mov	a,r7
   2574 12 5E A4           3403 	lcall	__gptrput
   2577 A3                 3404 	inc	dptr
   2578 EA                 3405 	mov	a,r2
   2579 12 5E A4           3406 	lcall	__gptrput
   257C 02 25 FC           3407 	ljmp	00103$
   257F                    3408 00102$:
                           3409 ;	FatDrivers/tff.c:525: dirobj->clust = dirobj->sclust = 0;
                           3410 ;	genPlus
   257F A8 10              3411 	mov	r0,_bp
   2581 08                 3412 	inc	r0
                           3413 ;     genPlusIncr
   2582 74 0B              3414 	mov	a,#0x0B
   2584 26                 3415 	add	a,@r0
   2585 FA                 3416 	mov	r2,a
                           3417 ;	Peephole 181	changed mov to clr
   2586 E4                 3418 	clr	a
   2587 08                 3419 	inc	r0
   2588 36                 3420 	addc	a,@r0
   2589 FB                 3421 	mov	r3,a
   258A 08                 3422 	inc	r0
   258B 86 04              3423 	mov	ar4,@r0
                           3424 ;	genPlus
   258D A8 10              3425 	mov	r0,_bp
   258F 08                 3426 	inc	r0
                           3427 ;     genPlusIncr
   2590 74 07              3428 	mov	a,#0x07
   2592 26                 3429 	add	a,@r0
   2593 FD                 3430 	mov	r5,a
                           3431 ;	Peephole 181	changed mov to clr
   2594 E4                 3432 	clr	a
   2595 08                 3433 	inc	r0
   2596 36                 3434 	addc	a,@r0
   2597 FE                 3435 	mov	r6,a
   2598 08                 3436 	inc	r0
   2599 86 07              3437 	mov	ar7,@r0
                           3438 ;	genPointerSet
                           3439 ;	genGenPointerSet
   259B 8D 82              3440 	mov	dpl,r5
   259D 8E 83              3441 	mov	dph,r6
   259F 8F F0              3442 	mov	b,r7
                           3443 ;	Peephole 181	changed mov to clr
   25A1 E4                 3444 	clr	a
   25A2 12 5E A4           3445 	lcall	__gptrput
   25A5 A3                 3446 	inc	dptr
                           3447 ;	Peephole 181	changed mov to clr
   25A6 E4                 3448 	clr	a
   25A7 12 5E A4           3449 	lcall	__gptrput
   25AA A3                 3450 	inc	dptr
                           3451 ;	Peephole 181	changed mov to clr
   25AB E4                 3452 	clr	a
   25AC 12 5E A4           3453 	lcall	__gptrput
   25AF A3                 3454 	inc	dptr
                           3455 ;	Peephole 181	changed mov to clr
   25B0 E4                 3456 	clr	a
   25B1 12 5E A4           3457 	lcall	__gptrput
                           3458 ;	genPointerSet
                           3459 ;	genGenPointerSet
   25B4 8A 82              3460 	mov	dpl,r2
   25B6 8B 83              3461 	mov	dph,r3
   25B8 8C F0              3462 	mov	b,r4
                           3463 ;	Peephole 181	changed mov to clr
   25BA E4                 3464 	clr	a
   25BB 12 5E A4           3465 	lcall	__gptrput
   25BE A3                 3466 	inc	dptr
                           3467 ;	Peephole 181	changed mov to clr
   25BF E4                 3468 	clr	a
   25C0 12 5E A4           3469 	lcall	__gptrput
   25C3 A3                 3470 	inc	dptr
                           3471 ;	Peephole 181	changed mov to clr
   25C4 E4                 3472 	clr	a
   25C5 12 5E A4           3473 	lcall	__gptrput
   25C8 A3                 3474 	inc	dptr
                           3475 ;	Peephole 181	changed mov to clr
   25C9 E4                 3476 	clr	a
   25CA 12 5E A4           3477 	lcall	__gptrput
                           3478 ;	FatDrivers/tff.c:526: dirobj->sect = clust;
                           3479 ;	genPlus
   25CD A8 10              3480 	mov	r0,_bp
   25CF 08                 3481 	inc	r0
                           3482 ;     genPlusIncr
   25D0 74 0F              3483 	mov	a,#0x0F
   25D2 26                 3484 	add	a,@r0
   25D3 FA                 3485 	mov	r2,a
                           3486 ;	Peephole 181	changed mov to clr
   25D4 E4                 3487 	clr	a
   25D5 08                 3488 	inc	r0
   25D6 36                 3489 	addc	a,@r0
   25D7 FB                 3490 	mov	r3,a
   25D8 08                 3491 	inc	r0
   25D9 86 04              3492 	mov	ar4,@r0
                           3493 ;	genPointerSet
                           3494 ;	genGenPointerSet
   25DB 8A 82              3495 	mov	dpl,r2
   25DD 8B 83              3496 	mov	dph,r3
   25DF 8C F0              3497 	mov	b,r4
   25E1 E5 10              3498 	mov	a,_bp
   25E3 24 04              3499 	add	a,#0x04
   25E5 F8                 3500 	mov	r0,a
   25E6 E6                 3501 	mov	a,@r0
   25E7 12 5E A4           3502 	lcall	__gptrput
   25EA A3                 3503 	inc	dptr
   25EB 08                 3504 	inc	r0
   25EC E6                 3505 	mov	a,@r0
   25ED 12 5E A4           3506 	lcall	__gptrput
   25F0 A3                 3507 	inc	dptr
   25F1 08                 3508 	inc	r0
   25F2 E6                 3509 	mov	a,@r0
   25F3 12 5E A4           3510 	lcall	__gptrput
   25F6 A3                 3511 	inc	dptr
   25F7 08                 3512 	inc	r0
   25F8 E6                 3513 	mov	a,@r0
   25F9 12 5E A4           3514 	lcall	__gptrput
   25FC                    3515 00103$:
                           3516 ;	FatDrivers/tff.c:528: dirobj->index = 0;
                           3517 ;	genPlus
   25FC A8 10              3518 	mov	r0,_bp
   25FE 08                 3519 	inc	r0
                           3520 ;     genPlusIncr
   25FF 74 02              3521 	mov	a,#0x02
   2601 26                 3522 	add	a,@r0
   2602 FA                 3523 	mov	r2,a
                           3524 ;	Peephole 181	changed mov to clr
   2603 E4                 3525 	clr	a
   2604 08                 3526 	inc	r0
   2605 36                 3527 	addc	a,@r0
   2606 FB                 3528 	mov	r3,a
   2607 08                 3529 	inc	r0
   2608 86 04              3530 	mov	ar4,@r0
                           3531 ;	genPointerSet
                           3532 ;	genGenPointerSet
   260A 8A 82              3533 	mov	dpl,r2
   260C 8B 83              3534 	mov	dph,r3
   260E 8C F0              3535 	mov	b,r4
                           3536 ;	Peephole 181	changed mov to clr
   2610 E4                 3537 	clr	a
   2611 12 5E A4           3538 	lcall	__gptrput
   2614 A3                 3539 	inc	dptr
                           3540 ;	Peephole 181	changed mov to clr
   2615 E4                 3541 	clr	a
   2616 12 5E A4           3542 	lcall	__gptrput
                           3543 ;	FatDrivers/tff.c:529: dirobj->fs = fs;
                           3544 ;	genPlus
   2619 A8 10              3545 	mov	r0,_bp
   261B 08                 3546 	inc	r0
                           3547 ;     genPlusIncr
   261C 74 04              3548 	mov	a,#0x04
   261E 26                 3549 	add	a,@r0
   261F FA                 3550 	mov	r2,a
                           3551 ;	Peephole 181	changed mov to clr
   2620 E4                 3552 	clr	a
   2621 08                 3553 	inc	r0
   2622 36                 3554 	addc	a,@r0
   2623 FB                 3555 	mov	r3,a
   2624 08                 3556 	inc	r0
   2625 86 04              3557 	mov	ar4,@r0
                           3558 ;	genPointerSet
                           3559 ;	genGenPointerSet
   2627 8A 82              3560 	mov	dpl,r2
   2629 8B 83              3561 	mov	dph,r3
   262B 8C F0              3562 	mov	b,r4
   262D E5 10              3563 	mov	a,_bp
   262F 24 0B              3564 	add	a,#0x0b
   2631 F8                 3565 	mov	r0,a
   2632 E6                 3566 	mov	a,@r0
   2633 12 5E A4           3567 	lcall	__gptrput
   2636 A3                 3568 	inc	dptr
   2637 08                 3569 	inc	r0
   2638 E6                 3570 	mov	a,@r0
   2639 12 5E A4           3571 	lcall	__gptrput
   263C A3                 3572 	inc	dptr
   263D 08                 3573 	inc	r0
   263E E6                 3574 	mov	a,@r0
   263F 12 5E A4           3575 	lcall	__gptrput
                           3576 ;	FatDrivers/tff.c:531: if (*path == '\0') {							/* Null path means the root directory */
                           3577 ;	genAssign
   2642 E5 10              3578 	mov	a,_bp
   2644 24 F8              3579 	add	a,#0xfffffff8
   2646 F8                 3580 	mov	r0,a
   2647 86 02              3581 	mov	ar2,@r0
   2649 08                 3582 	inc	r0
   264A 86 03              3583 	mov	ar3,@r0
   264C 08                 3584 	inc	r0
   264D 86 04              3585 	mov	ar4,@r0
                           3586 ;	genPointerGet
                           3587 ;	genGenPointerGet
   264F 8A 82              3588 	mov	dpl,r2
   2651 8B 83              3589 	mov	dph,r3
   2653 8C F0              3590 	mov	b,r4
   2655 12 62 42           3591 	lcall	__gptrget
                           3592 ;	genIfxJump
                           3593 ;	Peephole 108.b	removed ljmp by inverse jump logic
   2658 70 27              3594 	jnz	00126$
                           3595 ;	Peephole 300	removed redundant label 00150$
                           3596 ;	FatDrivers/tff.c:532: *dir = NULL; return FR_OK;
                           3597 ;	genAssign
   265A E5 10              3598 	mov	a,_bp
   265C 24 F5              3599 	add	a,#0xfffffff5
   265E F8                 3600 	mov	r0,a
   265F 86 02              3601 	mov	ar2,@r0
   2661 08                 3602 	inc	r0
   2662 86 03              3603 	mov	ar3,@r0
   2664 08                 3604 	inc	r0
   2665 86 04              3605 	mov	ar4,@r0
                           3606 ;	genPointerSet
                           3607 ;	genGenPointerSet
   2667 8A 82              3608 	mov	dpl,r2
   2669 8B 83              3609 	mov	dph,r3
   266B 8C F0              3610 	mov	b,r4
                           3611 ;	Peephole 181	changed mov to clr
   266D E4                 3612 	clr	a
   266E 12 5E A4           3613 	lcall	__gptrput
   2671 A3                 3614 	inc	dptr
                           3615 ;	Peephole 181	changed mov to clr
   2672 E4                 3616 	clr	a
   2673 12 5E A4           3617 	lcall	__gptrput
   2676 A3                 3618 	inc	dptr
                           3619 ;	Peephole 181	changed mov to clr
   2677 E4                 3620 	clr	a
   2678 12 5E A4           3621 	lcall	__gptrput
                           3622 ;	genRet
   267B 75 82 00           3623 	mov	dpl,#0x00
   267E 02 29 E4           3624 	ljmp	00128$
   2681                    3625 00126$:
                           3626 ;	FatDrivers/tff.c:536: ds = make_dirfile(&path, fn);					/* Get a paragraph into fn[] */
                           3627 ;	genAddrOf
   2681 E5 10              3628 	mov	a,_bp
   2683 24 F8              3629 	add	a,#0xf8
   2685 FA                 3630 	mov	r2,a
                           3631 ;	genCast
   2686 7B 00              3632 	mov	r3,#0x00
   2688 7C 40              3633 	mov	r4,#0x40
                           3634 ;	genIpush
   268A E5 10              3635 	mov	a,_bp
   268C 24 FB              3636 	add	a,#0xfffffffb
   268E F8                 3637 	mov	r0,a
   268F E6                 3638 	mov	a,@r0
   2690 C0 E0              3639 	push	acc
   2692 08                 3640 	inc	r0
   2693 E6                 3641 	mov	a,@r0
   2694 C0 E0              3642 	push	acc
   2696 08                 3643 	inc	r0
   2697 E6                 3644 	mov	a,@r0
   2698 C0 E0              3645 	push	acc
                           3646 ;	genCall
   269A 8A 82              3647 	mov	dpl,r2
   269C 8B 83              3648 	mov	dph,r3
   269E 8C F0              3649 	mov	b,r4
   26A0 12 22 44           3650 	lcall	_make_dirfile
   26A3 AA 82              3651 	mov	r2,dpl
   26A5 15 81              3652 	dec	sp
   26A7 15 81              3653 	dec	sp
   26A9 15 81              3654 	dec	sp
                           3655 ;	genAssign
                           3656 ;	FatDrivers/tff.c:537: if (ds == 1) return FR_INVALID_NAME;
                           3657 ;	genCmpEq
                           3658 ;	gencjneshort
                           3659 ;	Peephole 112.b	changed ljmp to sjmp
                           3660 ;	Peephole 198.b	optimized misc jump sequence
   26AB BA 01 06           3661 	cjne	r2,#0x01,00142$
                           3662 ;	Peephole 200.b	removed redundant sjmp
                           3663 ;	Peephole 300	removed redundant label 00151$
                           3664 ;	Peephole 300	removed redundant label 00152$
                           3665 ;	genRet
   26AE 75 82 04           3666 	mov	dpl,#0x04
   26B1 02 29 E4           3667 	ljmp	00128$
   26B4                    3668 00142$:
                           3669 ;	genPlus
   26B4 E5 10              3670 	mov	a,_bp
   26B6 24 0B              3671 	add	a,#0x0b
   26B8 F8                 3672 	mov	r0,a
                           3673 ;     genPlusIncr
   26B9 74 20              3674 	mov	a,#0x20
   26BB 26                 3675 	add	a,@r0
   26BC FB                 3676 	mov	r3,a
                           3677 ;	Peephole 181	changed mov to clr
   26BD E4                 3678 	clr	a
   26BE 08                 3679 	inc	r0
   26BF 36                 3680 	addc	a,@r0
   26C0 FC                 3681 	mov	r4,a
   26C1 08                 3682 	inc	r0
   26C2 86 05              3683 	mov	ar5,@r0
                           3684 ;	genPlus
   26C4 A8 10              3685 	mov	r0,_bp
   26C6 08                 3686 	inc	r0
   26C7 E5 10              3687 	mov	a,_bp
   26C9 24 0E              3688 	add	a,#0x0e
   26CB F9                 3689 	mov	r1,a
                           3690 ;     genPlusIncr
   26CC 74 0F              3691 	mov	a,#0x0F
   26CE 26                 3692 	add	a,@r0
   26CF F7                 3693 	mov	@r1,a
                           3694 ;	Peephole 181	changed mov to clr
   26D0 E4                 3695 	clr	a
   26D1 08                 3696 	inc	r0
   26D2 36                 3697 	addc	a,@r0
   26D3 09                 3698 	inc	r1
   26D4 F7                 3699 	mov	@r1,a
   26D5 08                 3700 	inc	r0
   26D6 09                 3701 	inc	r1
   26D7 E6                 3702 	mov	a,@r0
   26D8 F7                 3703 	mov	@r1,a
   26D9                    3704 00119$:
                           3705 ;	FatDrivers/tff.c:539: if (!move_window(dirobj->sect)) return FR_RW_ERROR;
                           3706 ;	genIpush
   26D9 C0 03              3707 	push	ar3
   26DB C0 04              3708 	push	ar4
   26DD C0 05              3709 	push	ar5
                           3710 ;	genPointerGet
                           3711 ;	genGenPointerGet
   26DF E5 10              3712 	mov	a,_bp
   26E1 24 0E              3713 	add	a,#0x0e
   26E3 F8                 3714 	mov	r0,a
   26E4 86 82              3715 	mov	dpl,@r0
   26E6 08                 3716 	inc	r0
   26E7 86 83              3717 	mov	dph,@r0
   26E9 08                 3718 	inc	r0
   26EA 86 F0              3719 	mov	b,@r0
   26EC 12 62 42           3720 	lcall	__gptrget
   26EF FE                 3721 	mov	r6,a
   26F0 A3                 3722 	inc	dptr
   26F1 12 62 42           3723 	lcall	__gptrget
   26F4 FF                 3724 	mov	r7,a
   26F5 A3                 3725 	inc	dptr
   26F6 12 62 42           3726 	lcall	__gptrget
   26F9 FB                 3727 	mov	r3,a
   26FA A3                 3728 	inc	dptr
   26FB 12 62 42           3729 	lcall	__gptrget
                           3730 ;	genCall
   26FE FC                 3731 	mov	r4,a
   26FF 8E 82              3732 	mov	dpl,r6
   2701 8F 83              3733 	mov	dph,r7
   2703 8B F0              3734 	mov	b,r3
                           3735 ;	Peephole 191	removed redundant mov
   2705 C0 02              3736 	push	ar2
   2707 C0 03              3737 	push	ar3
   2709 C0 04              3738 	push	ar4
   270B C0 05              3739 	push	ar5
   270D 12 17 79           3740 	lcall	_move_window
   2710 E5 82              3741 	mov	a,dpl
   2712 D0 05              3742 	pop	ar5
   2714 D0 04              3743 	pop	ar4
   2716 D0 03              3744 	pop	ar3
   2718 D0 02              3745 	pop	ar2
                           3746 ;	genIpop
   271A D0 05              3747 	pop	ar5
   271C D0 04              3748 	pop	ar4
   271E D0 03              3749 	pop	ar3
                           3750 ;	genIfx
                           3751 ;	genIfxJump
                           3752 ;	Peephole 108.b	removed ljmp by inverse jump logic
   2720 70 06              3753 	jnz	00109$
                           3754 ;	Peephole 300	removed redundant label 00153$
                           3755 ;	genRet
   2722 75 82 08           3756 	mov	dpl,#0x08
   2725 02 29 E4           3757 	ljmp	00128$
   2728                    3758 00109$:
                           3759 ;	FatDrivers/tff.c:540: dptr = &fs->win[(dirobj->index & 15) * 32];		/* Pointer to the directory entry */
                           3760 ;	genIpush
   2728 C0 02              3761 	push	ar2
                           3762 ;	genPlus
   272A A8 10              3763 	mov	r0,_bp
   272C 08                 3764 	inc	r0
   272D E5 10              3765 	mov	a,_bp
   272F 24 11              3766 	add	a,#0x11
   2731 F9                 3767 	mov	r1,a
                           3768 ;     genPlusIncr
   2732 74 02              3769 	mov	a,#0x02
   2734 26                 3770 	add	a,@r0
   2735 F7                 3771 	mov	@r1,a
                           3772 ;	Peephole 181	changed mov to clr
   2736 E4                 3773 	clr	a
   2737 08                 3774 	inc	r0
   2738 36                 3775 	addc	a,@r0
   2739 09                 3776 	inc	r1
   273A F7                 3777 	mov	@r1,a
   273B 08                 3778 	inc	r0
   273C 09                 3779 	inc	r1
   273D E6                 3780 	mov	a,@r0
   273E F7                 3781 	mov	@r1,a
                           3782 ;	genPointerGet
                           3783 ;	genGenPointerGet
   273F E5 10              3784 	mov	a,_bp
   2741 24 11              3785 	add	a,#0x11
   2743 F8                 3786 	mov	r0,a
   2744 86 82              3787 	mov	dpl,@r0
   2746 08                 3788 	inc	r0
   2747 86 83              3789 	mov	dph,@r0
   2749 08                 3790 	inc	r0
   274A 86 F0              3791 	mov	b,@r0
   274C 12 62 42           3792 	lcall	__gptrget
   274F FE                 3793 	mov	r6,a
   2750 A3                 3794 	inc	dptr
   2751 12 62 42           3795 	lcall	__gptrget
   2754 FF                 3796 	mov	r7,a
                           3797 ;	genAnd
   2755 53 06 0F           3798 	anl	ar6,#0x0F
                           3799 ;	genLeftShift
                           3800 ;	genLeftShiftLiteral
                           3801 ;	genlshTwo
                           3802 ;	peephole 177.g	optimized mov sequence
                           3803 ;	Peephole 181	changed mov to clr
   2758 E4                 3804 	clr	a
   2759 FF                 3805 	mov	r7,a
   275A C4                 3806 	swap	a
   275B 23                 3807 	rl	a
   275C 54 E0              3808 	anl	a,#0xe0
   275E CE                 3809 	xch	a,r6
   275F C4                 3810 	swap	a
   2760 23                 3811 	rl	a
   2761 CE                 3812 	xch	a,r6
   2762 6E                 3813 	xrl	a,r6
   2763 CE                 3814 	xch	a,r6
   2764 54 E0              3815 	anl	a,#0xe0
   2766 CE                 3816 	xch	a,r6
   2767 6E                 3817 	xrl	a,r6
   2768 FF                 3818 	mov	r7,a
                           3819 ;	genPlus
                           3820 ;	Peephole 236.g	used r6 instead of ar6
   2769 EE                 3821 	mov	a,r6
                           3822 ;	Peephole 236.a	used r3 instead of ar3
   276A 2B                 3823 	add	a,r3
   276B FE                 3824 	mov	r6,a
                           3825 ;	Peephole 236.g	used r7 instead of ar7
   276C EF                 3826 	mov	a,r7
                           3827 ;	Peephole 236.b	used r4 instead of ar4
   276D 3C                 3828 	addc	a,r4
   276E FF                 3829 	mov	r7,a
   276F 8D 02              3830 	mov	ar2,r5
                           3831 ;	genAssign
   2771 E5 10              3832 	mov	a,_bp
   2773 24 08              3833 	add	a,#0x08
   2775 F8                 3834 	mov	r0,a
   2776 A6 06              3835 	mov	@r0,ar6
   2778 08                 3836 	inc	r0
   2779 A6 07              3837 	mov	@r0,ar7
   277B 08                 3838 	inc	r0
   277C A6 02              3839 	mov	@r0,ar2
                           3840 ;	FatDrivers/tff.c:541: if (dptr[DIR_Name] == 0)						/* Has it reached to end of dir? */
                           3841 ;	genPointerGet
                           3842 ;	genGenPointerGet
   277E E5 10              3843 	mov	a,_bp
   2780 24 08              3844 	add	a,#0x08
   2782 F8                 3845 	mov	r0,a
   2783 86 82              3846 	mov	dpl,@r0
   2785 08                 3847 	inc	r0
   2786 86 83              3848 	mov	dph,@r0
   2788 08                 3849 	inc	r0
   2789 86 F0              3850 	mov	b,@r0
   278B 12 62 42           3851 	lcall	__gptrget
                           3852 ;	genIpop
   278E D0 02              3853 	pop	ar2
                           3854 ;	genIfx
                           3855 ;	genIfxJump
                           3856 ;	Peephole 108.b	removed ljmp by inverse jump logic
   2790 70 14              3857 	jnz	00111$
                           3858 ;	Peephole 300	removed redundant label 00154$
                           3859 ;	FatDrivers/tff.c:542: return !ds ? FR_NO_FILE : FR_NO_PATH;
                           3860 ;	genNot
   2792 EA                 3861 	mov	a,r2
   2793 B4 01 00           3862 	cjne	a,#0x01,00155$
   2796                    3863 00155$:
   2796 E4                 3864 	clr	a
   2797 33                 3865 	rlc	a
                           3866 ;	genIfx
   2798 FE                 3867 	mov	r6,a
                           3868 ;	Peephole 105	removed redundant mov
                           3869 ;	genIfxJump
                           3870 ;	Peephole 108.c	removed ljmp by inverse jump logic
   2799 60 04              3871 	jz	00130$
                           3872 ;	Peephole 300	removed redundant label 00156$
                           3873 ;	genAssign
   279B 7E 02              3874 	mov	r6,#0x02
                           3875 ;	Peephole 112.b	changed ljmp to sjmp
   279D 80 02              3876 	sjmp	00131$
   279F                    3877 00130$:
                           3878 ;	genAssign
   279F 7E 03              3879 	mov	r6,#0x03
   27A1                    3880 00131$:
                           3881 ;	genRet
   27A1 8E 82              3882 	mov	dpl,r6
   27A3 02 29 E4           3883 	ljmp	00128$
   27A6                    3884 00111$:
                           3885 ;	FatDrivers/tff.c:543: if (dptr[DIR_Name] != 0xE5						/* Matched? */
                           3886 ;	genPointerGet
                           3887 ;	genGenPointerGet
   27A6 E5 10              3888 	mov	a,_bp
   27A8 24 08              3889 	add	a,#0x08
   27AA F8                 3890 	mov	r0,a
   27AB 86 82              3891 	mov	dpl,@r0
   27AD 08                 3892 	inc	r0
   27AE 86 83              3893 	mov	dph,@r0
   27B0 08                 3894 	inc	r0
   27B1 86 F0              3895 	mov	b,@r0
   27B3 12 62 42           3896 	lcall	__gptrget
   27B6 FE                 3897 	mov	r6,a
                           3898 ;	genCmpEq
                           3899 ;	gencjneshort
   27B7 BE E5 02           3900 	cjne	r6,#0xE5,00157$
                           3901 ;	Peephole 112.b	changed ljmp to sjmp
   27BA 80 6F              3902 	sjmp	00113$
   27BC                    3903 00157$:
                           3904 ;	FatDrivers/tff.c:544: && !(dptr[DIR_Attr] & AM_VOL)
                           3905 ;	genIpush
   27BC C0 03              3906 	push	ar3
   27BE C0 04              3907 	push	ar4
   27C0 C0 05              3908 	push	ar5
                           3909 ;	genPlus
   27C2 E5 10              3910 	mov	a,_bp
   27C4 24 08              3911 	add	a,#0x08
   27C6 F8                 3912 	mov	r0,a
                           3913 ;     genPlusIncr
   27C7 74 0B              3914 	mov	a,#0x0B
   27C9 26                 3915 	add	a,@r0
   27CA FE                 3916 	mov	r6,a
                           3917 ;	Peephole 181	changed mov to clr
   27CB E4                 3918 	clr	a
   27CC 08                 3919 	inc	r0
   27CD 36                 3920 	addc	a,@r0
   27CE FF                 3921 	mov	r7,a
   27CF 08                 3922 	inc	r0
   27D0 86 03              3923 	mov	ar3,@r0
                           3924 ;	genPointerGet
                           3925 ;	genGenPointerGet
   27D2 8E 82              3926 	mov	dpl,r6
   27D4 8F 83              3927 	mov	dph,r7
   27D6 8B F0              3928 	mov	b,r3
   27D8 12 62 42           3929 	lcall	__gptrget
                           3930 ;	genAnd
   27DB FE                 3931 	mov	r6,a
                           3932 ;	Peephole 105	removed redundant mov
   27DC 54 08              3933 	anl	a,#0x08
                           3934 ;	genIpop
   27DE D0 05              3935 	pop	ar5
   27E0 D0 04              3936 	pop	ar4
   27E2 D0 03              3937 	pop	ar3
                           3938 ;	genIfx
                           3939 ;	genIfxJump
                           3940 ;	Peephole 108.b	removed ljmp by inverse jump logic
   27E4 70 45              3941 	jnz	00113$
                           3942 ;	Peephole 300	removed redundant label 00158$
                           3943 ;	FatDrivers/tff.c:545: && !memcmp(&dptr[DIR_Name], fn, 8+3) ) break;
                           3944 ;	genIpush
   27E6 C0 02              3945 	push	ar2
   27E8 C0 03              3946 	push	ar3
   27EA C0 04              3947 	push	ar4
   27EC C0 05              3948 	push	ar5
   27EE 74 0B              3949 	mov	a,#0x0B
   27F0 C0 E0              3950 	push	acc
                           3951 ;	Peephole 181	changed mov to clr
   27F2 E4                 3952 	clr	a
   27F3 C0 E0              3953 	push	acc
                           3954 ;	genIpush
   27F5 E5 10              3955 	mov	a,_bp
   27F7 24 FB              3956 	add	a,#0xfffffffb
   27F9 F8                 3957 	mov	r0,a
   27FA E6                 3958 	mov	a,@r0
   27FB C0 E0              3959 	push	acc
   27FD 08                 3960 	inc	r0
   27FE E6                 3961 	mov	a,@r0
   27FF C0 E0              3962 	push	acc
   2801 08                 3963 	inc	r0
   2802 E6                 3964 	mov	a,@r0
   2803 C0 E0              3965 	push	acc
                           3966 ;	genCall
   2805 E5 10              3967 	mov	a,_bp
   2807 24 08              3968 	add	a,#0x08
   2809 F8                 3969 	mov	r0,a
   280A 86 82              3970 	mov	dpl,@r0
   280C 08                 3971 	inc	r0
   280D 86 83              3972 	mov	dph,@r0
   280F 08                 3973 	inc	r0
   2810 86 F0              3974 	mov	b,@r0
   2812 12 5F E7           3975 	lcall	_memcmp
   2815 AE 82              3976 	mov	r6,dpl
   2817 AF 83              3977 	mov	r7,dph
   2819 E5 81              3978 	mov	a,sp
   281B 24 FB              3979 	add	a,#0xfb
   281D F5 81              3980 	mov	sp,a
   281F D0 05              3981 	pop	ar5
   2821 D0 04              3982 	pop	ar4
   2823 D0 03              3983 	pop	ar3
   2825 D0 02              3984 	pop	ar2
                           3985 ;	genIfx
   2827 EE                 3986 	mov	a,r6
   2828 4F                 3987 	orl	a,r7
                           3988 ;	genIfxJump
                           3989 ;	Peephole 108.c	removed ljmp by inverse jump logic
   2829 60 39              3990 	jz	00120$
                           3991 ;	Peephole 300	removed redundant label 00159$
   282B                    3992 00113$:
                           3993 ;	FatDrivers/tff.c:546: if (!next_dir_entry(dirobj))					/* Next directory pointer */
                           3994 ;	genCall
   282B A8 10              3995 	mov	r0,_bp
   282D 08                 3996 	inc	r0
   282E 86 82              3997 	mov	dpl,@r0
   2830 08                 3998 	inc	r0
   2831 86 83              3999 	mov	dph,@r0
   2833 08                 4000 	inc	r0
   2834 86 F0              4001 	mov	b,@r0
   2836 C0 02              4002 	push	ar2
   2838 C0 03              4003 	push	ar3
   283A C0 04              4004 	push	ar4
   283C C0 05              4005 	push	ar5
   283E 12 1C C2           4006 	lcall	_next_dir_entry
   2841 E5 82              4007 	mov	a,dpl
   2843 D0 05              4008 	pop	ar5
   2845 D0 04              4009 	pop	ar4
   2847 D0 03              4010 	pop	ar3
   2849 D0 02              4011 	pop	ar2
                           4012 ;	genIfx
                           4013 ;	genIfxJump
   284B 60 03              4014 	jz	00160$
   284D 02 26 D9           4015 	ljmp	00119$
   2850                    4016 00160$:
                           4017 ;	FatDrivers/tff.c:547: return !ds ? FR_NO_FILE : FR_NO_PATH;
                           4018 ;	genNot
   2850 EA                 4019 	mov	a,r2
   2851 B4 01 00           4020 	cjne	a,#0x01,00161$
   2854                    4021 00161$:
   2854 E4                 4022 	clr	a
   2855 33                 4023 	rlc	a
                           4024 ;	genIfx
   2856 FB                 4025 	mov	r3,a
                           4026 ;	Peephole 105	removed redundant mov
                           4027 ;	genIfxJump
                           4028 ;	Peephole 108.c	removed ljmp by inverse jump logic
   2857 60 04              4029 	jz	00132$
                           4030 ;	Peephole 300	removed redundant label 00162$
                           4031 ;	genAssign
   2859 7B 02              4032 	mov	r3,#0x02
                           4033 ;	Peephole 112.b	changed ljmp to sjmp
   285B 80 02              4034 	sjmp	00133$
   285D                    4035 00132$:
                           4036 ;	genAssign
   285D 7B 03              4037 	mov	r3,#0x03
   285F                    4038 00133$:
                           4039 ;	genRet
   285F 8B 82              4040 	mov	dpl,r3
   2861 02 29 E4           4041 	ljmp	00128$
   2864                    4042 00120$:
                           4043 ;	FatDrivers/tff.c:549: if (!ds) { *dir = dptr; return FR_OK; }				/* Matched with end of path */
                           4044 ;	genIfx
   2864 EA                 4045 	mov	a,r2
                           4046 ;	genIfxJump
                           4047 ;	Peephole 108.b	removed ljmp by inverse jump logic
   2865 70 2E              4048 	jnz	00122$
                           4049 ;	Peephole 300	removed redundant label 00163$
                           4050 ;	genAssign
   2867 E5 10              4051 	mov	a,_bp
   2869 24 F5              4052 	add	a,#0xfffffff5
   286B F8                 4053 	mov	r0,a
   286C 86 02              4054 	mov	ar2,@r0
   286E 08                 4055 	inc	r0
   286F 86 03              4056 	mov	ar3,@r0
   2871 08                 4057 	inc	r0
   2872 86 04              4058 	mov	ar4,@r0
                           4059 ;	genPointerSet
                           4060 ;	genGenPointerSet
   2874 8A 82              4061 	mov	dpl,r2
   2876 8B 83              4062 	mov	dph,r3
   2878 8C F0              4063 	mov	b,r4
   287A E5 10              4064 	mov	a,_bp
   287C 24 08              4065 	add	a,#0x08
   287E F8                 4066 	mov	r0,a
   287F E6                 4067 	mov	a,@r0
   2880 12 5E A4           4068 	lcall	__gptrput
   2883 A3                 4069 	inc	dptr
   2884 08                 4070 	inc	r0
   2885 E6                 4071 	mov	a,@r0
   2886 12 5E A4           4072 	lcall	__gptrput
   2889 A3                 4073 	inc	dptr
   288A 08                 4074 	inc	r0
   288B E6                 4075 	mov	a,@r0
   288C 12 5E A4           4076 	lcall	__gptrput
                           4077 ;	genRet
   288F 75 82 00           4078 	mov	dpl,#0x00
   2892 02 29 E4           4079 	ljmp	00128$
   2895                    4080 00122$:
                           4081 ;	FatDrivers/tff.c:550: if (!(dptr[DIR_Attr] & AM_DIR)) return FR_NO_PATH;	/* Cannot trace because it is a file */
                           4082 ;	genPlus
   2895 E5 10              4083 	mov	a,_bp
   2897 24 08              4084 	add	a,#0x08
   2899 F8                 4085 	mov	r0,a
                           4086 ;     genPlusIncr
   289A 74 0B              4087 	mov	a,#0x0B
   289C 26                 4088 	add	a,@r0
   289D FA                 4089 	mov	r2,a
                           4090 ;	Peephole 181	changed mov to clr
   289E E4                 4091 	clr	a
   289F 08                 4092 	inc	r0
   28A0 36                 4093 	addc	a,@r0
   28A1 FB                 4094 	mov	r3,a
   28A2 08                 4095 	inc	r0
   28A3 86 04              4096 	mov	ar4,@r0
                           4097 ;	genPointerGet
                           4098 ;	genGenPointerGet
   28A5 8A 82              4099 	mov	dpl,r2
   28A7 8B 83              4100 	mov	dph,r3
   28A9 8C F0              4101 	mov	b,r4
   28AB 12 62 42           4102 	lcall	__gptrget
                           4103 ;	genAnd
   28AE FA                 4104 	mov	r2,a
                           4105 ;	Peephole 105	removed redundant mov
                           4106 ;	genIfxJump
                           4107 ;	Peephole 108.e	removed ljmp by inverse jump logic
   28AF 20 E4 06           4108 	jb	acc.4,00124$
                           4109 ;	Peephole 300	removed redundant label 00164$
                           4110 ;	genRet
   28B2 75 82 03           4111 	mov	dpl,#0x03
   28B5 02 29 E4           4112 	ljmp	00128$
   28B8                    4113 00124$:
                           4114 ;	FatDrivers/tff.c:553: ((DWORD)LD_WORD(&dptr[DIR_FstClusHI]) << 16) |
                           4115 ;	genPlus
   28B8 E5 10              4116 	mov	a,_bp
   28BA 24 08              4117 	add	a,#0x08
   28BC F8                 4118 	mov	r0,a
                           4119 ;     genPlusIncr
   28BD 74 14              4120 	mov	a,#0x14
   28BF 26                 4121 	add	a,@r0
   28C0 FA                 4122 	mov	r2,a
                           4123 ;	Peephole 181	changed mov to clr
   28C1 E4                 4124 	clr	a
   28C2 08                 4125 	inc	r0
   28C3 36                 4126 	addc	a,@r0
   28C4 FB                 4127 	mov	r3,a
   28C5 08                 4128 	inc	r0
   28C6 86 04              4129 	mov	ar4,@r0
                           4130 ;	genPointerGet
                           4131 ;	genGenPointerGet
   28C8 8A 82              4132 	mov	dpl,r2
   28CA 8B 83              4133 	mov	dph,r3
   28CC 8C F0              4134 	mov	b,r4
   28CE 12 62 42           4135 	lcall	__gptrget
   28D1 FA                 4136 	mov	r2,a
   28D2 A3                 4137 	inc	dptr
   28D3 12 62 42           4138 	lcall	__gptrget
   28D6 FB                 4139 	mov	r3,a
                           4140 ;	genCast
                           4141 ;	genLeftShift
                           4142 ;	genLeftShiftLiteral
                           4143 ;	Peephole 3.c	changed mov to clr
   28D7 E4                 4144 	clr	a
   28D8 FC                 4145 	mov	r4,a
   28D9 FD                 4146 	mov	r5,a
   28DA E5 10              4147 	mov	a,_bp
   28DC 24 14              4148 	add	a,#0x14
                           4149 ;	genlshFour
                           4150 ;	Peephole 185	changed order of increment (acc incremented also!)
   28DE 04                 4151 	inc	a
                           4152 ;	Peephole 185	changed order of increment (acc incremented also!)
   28DF 04                 4153 	inc	a
                           4154 ;	Peephole 185	changed order of increment (acc incremented also!)
   28E0 04                 4155 	inc	a
   28E1 F8                 4156 	mov	r0,a
   28E2 A6 03              4157 	mov	@r0,ar3
   28E4 18                 4158 	dec	r0
   28E5 A6 02              4159 	mov	@r0,ar2
   28E7 18                 4160 	dec	r0
   28E8 76 00              4161 	mov	@r0,#0x00
   28EA 18                 4162 	dec	r0
   28EB 76 00              4163 	mov	@r0,#0x00
                           4164 ;	FatDrivers/tff.c:555: LD_WORD(&dptr[DIR_FstClusLO]);
                           4165 ;	genPlus
   28ED E5 10              4166 	mov	a,_bp
   28EF 24 08              4167 	add	a,#0x08
   28F1 F8                 4168 	mov	r0,a
                           4169 ;     genPlusIncr
   28F2 74 1A              4170 	mov	a,#0x1A
   28F4 26                 4171 	add	a,@r0
   28F5 FE                 4172 	mov	r6,a
                           4173 ;	Peephole 181	changed mov to clr
   28F6 E4                 4174 	clr	a
   28F7 08                 4175 	inc	r0
   28F8 36                 4176 	addc	a,@r0
   28F9 FF                 4177 	mov	r7,a
   28FA 08                 4178 	inc	r0
   28FB 86 02              4179 	mov	ar2,@r0
                           4180 ;	genPointerGet
                           4181 ;	genGenPointerGet
   28FD 8E 82              4182 	mov	dpl,r6
   28FF 8F 83              4183 	mov	dph,r7
   2901 8A F0              4184 	mov	b,r2
   2903 12 62 42           4185 	lcall	__gptrget
   2906 FE                 4186 	mov	r6,a
   2907 A3                 4187 	inc	dptr
   2908 12 62 42           4188 	lcall	__gptrget
   290B FF                 4189 	mov	r7,a
                           4190 ;	genCast
                           4191 ;	genOr
                           4192 ;	Peephole 3.c	changed mov to clr
   290C E4                 4193 	clr	a
   290D FA                 4194 	mov	r2,a
   290E FB                 4195 	mov	r3,a
   290F E5 10              4196 	mov	a,_bp
   2911 24 14              4197 	add	a,#0x14
   2913 F8                 4198 	mov	r0,a
   2914 E6                 4199 	mov	a,@r0
   2915 42 06              4200 	orl	ar6,a
   2917 08                 4201 	inc	r0
   2918 E6                 4202 	mov	a,@r0
   2919 42 07              4203 	orl	ar7,a
   291B 08                 4204 	inc	r0
   291C E6                 4205 	mov	a,@r0
   291D 42 02              4206 	orl	ar2,a
   291F 08                 4207 	inc	r0
   2920 E6                 4208 	mov	a,@r0
   2921 42 03              4209 	orl	ar3,a
                           4210 ;	genAssign
   2923 E5 10              4211 	mov	a,_bp
   2925 24 04              4212 	add	a,#0x04
   2927 F8                 4213 	mov	r0,a
   2928 A6 06              4214 	mov	@r0,ar6
   292A 08                 4215 	inc	r0
   292B A6 07              4216 	mov	@r0,ar7
   292D 08                 4217 	inc	r0
   292E A6 02              4218 	mov	@r0,ar2
   2930 08                 4219 	inc	r0
   2931 A6 03              4220 	mov	@r0,ar3
                           4221 ;	FatDrivers/tff.c:556: dirobj->clust = dirobj->sclust = clust;				/* Restart scannig with the new directory */
                           4222 ;	genPlus
   2933 A8 10              4223 	mov	r0,_bp
   2935 08                 4224 	inc	r0
                           4225 ;     genPlusIncr
   2936 74 0B              4226 	mov	a,#0x0B
   2938 26                 4227 	add	a,@r0
   2939 FA                 4228 	mov	r2,a
                           4229 ;	Peephole 181	changed mov to clr
   293A E4                 4230 	clr	a
   293B 08                 4231 	inc	r0
   293C 36                 4232 	addc	a,@r0
   293D FB                 4233 	mov	r3,a
   293E 08                 4234 	inc	r0
   293F 86 04              4235 	mov	ar4,@r0
                           4236 ;	genPlus
   2941 A8 10              4237 	mov	r0,_bp
   2943 08                 4238 	inc	r0
                           4239 ;     genPlusIncr
   2944 74 07              4240 	mov	a,#0x07
   2946 26                 4241 	add	a,@r0
   2947 FD                 4242 	mov	r5,a
                           4243 ;	Peephole 181	changed mov to clr
   2948 E4                 4244 	clr	a
   2949 08                 4245 	inc	r0
   294A 36                 4246 	addc	a,@r0
   294B FE                 4247 	mov	r6,a
   294C 08                 4248 	inc	r0
   294D 86 07              4249 	mov	ar7,@r0
                           4250 ;	genPointerSet
                           4251 ;	genGenPointerSet
   294F 8D 82              4252 	mov	dpl,r5
   2951 8E 83              4253 	mov	dph,r6
   2953 8F F0              4254 	mov	b,r7
   2955 E5 10              4255 	mov	a,_bp
   2957 24 04              4256 	add	a,#0x04
   2959 F8                 4257 	mov	r0,a
   295A E6                 4258 	mov	a,@r0
   295B 12 5E A4           4259 	lcall	__gptrput
   295E A3                 4260 	inc	dptr
   295F 08                 4261 	inc	r0
   2960 E6                 4262 	mov	a,@r0
   2961 12 5E A4           4263 	lcall	__gptrput
   2964 A3                 4264 	inc	dptr
   2965 08                 4265 	inc	r0
   2966 E6                 4266 	mov	a,@r0
   2967 12 5E A4           4267 	lcall	__gptrput
   296A A3                 4268 	inc	dptr
   296B 08                 4269 	inc	r0
   296C E6                 4270 	mov	a,@r0
   296D 12 5E A4           4271 	lcall	__gptrput
                           4272 ;	genPointerSet
                           4273 ;	genGenPointerSet
   2970 8A 82              4274 	mov	dpl,r2
   2972 8B 83              4275 	mov	dph,r3
   2974 8C F0              4276 	mov	b,r4
   2976 E5 10              4277 	mov	a,_bp
   2978 24 04              4278 	add	a,#0x04
   297A F8                 4279 	mov	r0,a
   297B E6                 4280 	mov	a,@r0
   297C 12 5E A4           4281 	lcall	__gptrput
   297F A3                 4282 	inc	dptr
   2980 08                 4283 	inc	r0
   2981 E6                 4284 	mov	a,@r0
   2982 12 5E A4           4285 	lcall	__gptrput
   2985 A3                 4286 	inc	dptr
   2986 08                 4287 	inc	r0
   2987 E6                 4288 	mov	a,@r0
   2988 12 5E A4           4289 	lcall	__gptrput
   298B A3                 4290 	inc	dptr
   298C 08                 4291 	inc	r0
   298D E6                 4292 	mov	a,@r0
   298E 12 5E A4           4293 	lcall	__gptrput
                           4294 ;	FatDrivers/tff.c:557: dirobj->sect = clust2sect(clust);
                           4295 ;	genCall
   2991 E5 10              4296 	mov	a,_bp
   2993 24 04              4297 	add	a,#0x04
   2995 F8                 4298 	mov	r0,a
   2996 86 82              4299 	mov	dpl,@r0
   2998 08                 4300 	inc	r0
   2999 86 83              4301 	mov	dph,@r0
   299B 08                 4302 	inc	r0
   299C 86 F0              4303 	mov	b,@r0
   299E 08                 4304 	inc	r0
   299F E6                 4305 	mov	a,@r0
   29A0 12 1B 9F           4306 	lcall	_clust2sect
   29A3 AA 82              4307 	mov	r2,dpl
   29A5 AB 83              4308 	mov	r3,dph
   29A7 AC F0              4309 	mov	r4,b
   29A9 FD                 4310 	mov	r5,a
                           4311 ;	genPointerSet
                           4312 ;	genGenPointerSet
   29AA E5 10              4313 	mov	a,_bp
   29AC 24 0E              4314 	add	a,#0x0e
   29AE F8                 4315 	mov	r0,a
   29AF 86 82              4316 	mov	dpl,@r0
   29B1 08                 4317 	inc	r0
   29B2 86 83              4318 	mov	dph,@r0
   29B4 08                 4319 	inc	r0
   29B5 86 F0              4320 	mov	b,@r0
   29B7 EA                 4321 	mov	a,r2
   29B8 12 5E A4           4322 	lcall	__gptrput
   29BB A3                 4323 	inc	dptr
   29BC EB                 4324 	mov	a,r3
   29BD 12 5E A4           4325 	lcall	__gptrput
   29C0 A3                 4326 	inc	dptr
   29C1 EC                 4327 	mov	a,r4
   29C2 12 5E A4           4328 	lcall	__gptrput
   29C5 A3                 4329 	inc	dptr
   29C6 ED                 4330 	mov	a,r5
   29C7 12 5E A4           4331 	lcall	__gptrput
                           4332 ;	FatDrivers/tff.c:558: dirobj->index = 2;
                           4333 ;	genPointerSet
                           4334 ;	genGenPointerSet
   29CA E5 10              4335 	mov	a,_bp
   29CC 24 11              4336 	add	a,#0x11
   29CE F8                 4337 	mov	r0,a
   29CF 86 82              4338 	mov	dpl,@r0
   29D1 08                 4339 	inc	r0
   29D2 86 83              4340 	mov	dph,@r0
   29D4 08                 4341 	inc	r0
   29D5 86 F0              4342 	mov	b,@r0
   29D7 74 02              4343 	mov	a,#0x02
   29D9 12 5E A4           4344 	lcall	__gptrput
   29DC A3                 4345 	inc	dptr
                           4346 ;	Peephole 181	changed mov to clr
   29DD E4                 4347 	clr	a
   29DE 12 5E A4           4348 	lcall	__gptrput
   29E1 02 26 81           4349 	ljmp	00126$
   29E4                    4350 00128$:
   29E4 85 10 81           4351 	mov	sp,_bp
   29E7 D0 10              4352 	pop	_bp
   29E9 22                 4353 	ret
                           4354 ;------------------------------------------------------------
                           4355 ;Allocation info for local variables in function 'check_fs'
                           4356 ;------------------------------------------------------------
                           4357 ;sect                      Allocated to stack - offset 1
                           4358 ;fs                        Allocated to registers r6 r7 r2 
                           4359 ;------------------------------------------------------------
                           4360 ;	FatDrivers/tff.c:626: BYTE check_fs (		/* 0:The FAT boot record, 1:Valid boot record but not an FAT, 2:Not a boot record or error */
                           4361 ;	-----------------------------------------
                           4362 ;	 function check_fs
                           4363 ;	-----------------------------------------
   29EA                    4364 _check_fs:
   29EA C0 10              4365 	push	_bp
   29EC 85 81 10           4366 	mov	_bp,sp
                           4367 ;     genReceive
   29EF C0 82              4368 	push	dpl
   29F1 C0 83              4369 	push	dph
   29F3 C0 F0              4370 	push	b
   29F5 C0 E0              4371 	push	acc
                           4372 ;	FatDrivers/tff.c:630: FATFS *fs = FatFs;
                           4373 ;	genAssign
   29F7 AE 09              4374 	mov	r6,_FatFs
   29F9 AF 0A              4375 	mov	r7,(_FatFs + 1)
   29FB AA 0B              4376 	mov	r2,(_FatFs + 2)
                           4377 ;	FatDrivers/tff.c:632: if (disk_read(0, fs->win, sect, 1) != RES_OK)	/* Load boot record */
                           4378 ;	genPlus
                           4379 ;     genPlusIncr
   29FD 74 20              4380 	mov	a,#0x20
                           4381 ;	Peephole 236.a	used r6 instead of ar6
   29FF 2E                 4382 	add	a,r6
   2A00 FB                 4383 	mov	r3,a
                           4384 ;	Peephole 181	changed mov to clr
   2A01 E4                 4385 	clr	a
                           4386 ;	Peephole 236.b	used r7 instead of ar7
   2A02 3F                 4387 	addc	a,r7
   2A03 FC                 4388 	mov	r4,a
   2A04 8A 05              4389 	mov	ar5,r2
                           4390 ;	genIpush
   2A06 C0 02              4391 	push	ar2
   2A08 C0 06              4392 	push	ar6
   2A0A C0 07              4393 	push	ar7
   2A0C 74 01              4394 	mov	a,#0x01
   2A0E C0 E0              4395 	push	acc
                           4396 ;	genIpush
   2A10 A8 10              4397 	mov	r0,_bp
   2A12 08                 4398 	inc	r0
   2A13 E6                 4399 	mov	a,@r0
   2A14 C0 E0              4400 	push	acc
   2A16 08                 4401 	inc	r0
   2A17 E6                 4402 	mov	a,@r0
   2A18 C0 E0              4403 	push	acc
   2A1A 08                 4404 	inc	r0
   2A1B E6                 4405 	mov	a,@r0
   2A1C C0 E0              4406 	push	acc
   2A1E 08                 4407 	inc	r0
   2A1F E6                 4408 	mov	a,@r0
   2A20 C0 E0              4409 	push	acc
                           4410 ;	genIpush
   2A22 C0 03              4411 	push	ar3
   2A24 C0 04              4412 	push	ar4
   2A26 C0 05              4413 	push	ar5
                           4414 ;	genCall
   2A28 75 82 00           4415 	mov	dpl,#0x00
   2A2B 12 0D 3E           4416 	lcall	_disk_read
   2A2E AB 82              4417 	mov	r3,dpl
   2A30 E5 81              4418 	mov	a,sp
   2A32 24 F8              4419 	add	a,#0xf8
   2A34 F5 81              4420 	mov	sp,a
   2A36 D0 07              4421 	pop	ar7
   2A38 D0 06              4422 	pop	ar6
   2A3A D0 02              4423 	pop	ar2
                           4424 ;	genCmpEq
                           4425 ;	gencjneshort
   2A3C BB 00 02           4426 	cjne	r3,#0x00,00117$
                           4427 ;	Peephole 112.b	changed ljmp to sjmp
   2A3F 80 06              4428 	sjmp	00102$
   2A41                    4429 00117$:
                           4430 ;	FatDrivers/tff.c:633: return 2;
                           4431 ;	genRet
   2A41 75 82 02           4432 	mov	dpl,#0x02
   2A44 02 2B 28           4433 	ljmp	00110$
   2A47                    4434 00102$:
                           4435 ;	FatDrivers/tff.c:634: if (LD_WORD(&fs->win[BS_55AA]) != 0xAA55)		/* Check record signature */
                           4436 ;	genPlus
                           4437 ;     genPlusIncr
   2A47 74 20              4438 	mov	a,#0x20
                           4439 ;	Peephole 236.a	used r6 instead of ar6
   2A49 2E                 4440 	add	a,r6
   2A4A FB                 4441 	mov	r3,a
                           4442 ;	Peephole 181	changed mov to clr
   2A4B E4                 4443 	clr	a
                           4444 ;	Peephole 236.b	used r7 instead of ar7
   2A4C 3F                 4445 	addc	a,r7
   2A4D FC                 4446 	mov	r4,a
   2A4E 8A 05              4447 	mov	ar5,r2
                           4448 ;	genPlus
                           4449 ;     genPlusIncr
   2A50 74 FE              4450 	mov	a,#0xFE
                           4451 ;	Peephole 236.a	used r3 instead of ar3
   2A52 2B                 4452 	add	a,r3
   2A53 FB                 4453 	mov	r3,a
   2A54 74 01              4454 	mov	a,#0x01
                           4455 ;	Peephole 236.b	used r4 instead of ar4
   2A56 3C                 4456 	addc	a,r4
   2A57 FC                 4457 	mov	r4,a
                           4458 ;	genPointerGet
                           4459 ;	genGenPointerGet
   2A58 8B 82              4460 	mov	dpl,r3
   2A5A 8C 83              4461 	mov	dph,r4
   2A5C 8D F0              4462 	mov	b,r5
   2A5E 12 62 42           4463 	lcall	__gptrget
   2A61 FB                 4464 	mov	r3,a
   2A62 A3                 4465 	inc	dptr
   2A63 12 62 42           4466 	lcall	__gptrget
   2A66 FC                 4467 	mov	r4,a
                           4468 ;	genCmpEq
                           4469 ;	gencjneshort
   2A67 BB 55 05           4470 	cjne	r3,#0x55,00118$
   2A6A BC AA 02           4471 	cjne	r4,#0xAA,00118$
                           4472 ;	Peephole 112.b	changed ljmp to sjmp
   2A6D 80 06              4473 	sjmp	00104$
   2A6F                    4474 00118$:
                           4475 ;	FatDrivers/tff.c:635: return 2;
                           4476 ;	genRet
   2A6F 75 82 02           4477 	mov	dpl,#0x02
   2A72 02 2B 28           4478 	ljmp	00110$
   2A75                    4479 00104$:
                           4480 ;	FatDrivers/tff.c:637: if (!memcmp(&fs->win[BS_FilSysType], "FAT", 3))	/* Check FAT signature */
                           4481 ;	genPlus
                           4482 ;     genPlusIncr
   2A75 74 20              4483 	mov	a,#0x20
                           4484 ;	Peephole 236.a	used r6 instead of ar6
   2A77 2E                 4485 	add	a,r6
   2A78 FB                 4486 	mov	r3,a
                           4487 ;	Peephole 181	changed mov to clr
   2A79 E4                 4488 	clr	a
                           4489 ;	Peephole 236.b	used r7 instead of ar7
   2A7A 3F                 4490 	addc	a,r7
   2A7B FC                 4491 	mov	r4,a
   2A7C 8A 05              4492 	mov	ar5,r2
                           4493 ;	genPlus
                           4494 ;     genPlusIncr
   2A7E 74 36              4495 	mov	a,#0x36
                           4496 ;	Peephole 236.a	used r3 instead of ar3
   2A80 2B                 4497 	add	a,r3
   2A81 FB                 4498 	mov	r3,a
                           4499 ;	Peephole 181	changed mov to clr
   2A82 E4                 4500 	clr	a
                           4501 ;	Peephole 236.b	used r4 instead of ar4
   2A83 3C                 4502 	addc	a,r4
   2A84 FC                 4503 	mov	r4,a
                           4504 ;	genIpush
   2A85 C0 02              4505 	push	ar2
   2A87 C0 06              4506 	push	ar6
   2A89 C0 07              4507 	push	ar7
   2A8B 74 03              4508 	mov	a,#0x03
   2A8D C0 E0              4509 	push	acc
                           4510 ;	Peephole 181	changed mov to clr
   2A8F E4                 4511 	clr	a
   2A90 C0 E0              4512 	push	acc
                           4513 ;	genIpush
   2A92 74 35              4514 	mov	a,#__str_0
   2A94 C0 E0              4515 	push	acc
   2A96 74 73              4516 	mov	a,#(__str_0 >> 8)
   2A98 C0 E0              4517 	push	acc
   2A9A 74 80              4518 	mov	a,#0x80
   2A9C C0 E0              4519 	push	acc
                           4520 ;	genCall
   2A9E 8B 82              4521 	mov	dpl,r3
   2AA0 8C 83              4522 	mov	dph,r4
   2AA2 8D F0              4523 	mov	b,r5
   2AA4 12 5F E7           4524 	lcall	_memcmp
   2AA7 AB 82              4525 	mov	r3,dpl
   2AA9 AC 83              4526 	mov	r4,dph
   2AAB E5 81              4527 	mov	a,sp
   2AAD 24 FB              4528 	add	a,#0xfb
   2AAF F5 81              4529 	mov	sp,a
   2AB1 D0 07              4530 	pop	ar7
   2AB3 D0 06              4531 	pop	ar6
   2AB5 D0 02              4532 	pop	ar2
                           4533 ;	genIfx
   2AB7 EB                 4534 	mov	a,r3
   2AB8 4C                 4535 	orl	a,r4
                           4536 ;	genIfxJump
                           4537 ;	Peephole 108.b	removed ljmp by inverse jump logic
                           4538 ;	FatDrivers/tff.c:638: return 0;
                           4539 ;	genRet
   2AB9 70 04              4540 	jnz	00106$
                           4541 ;	Peephole 300	removed redundant label 00119$
                           4542 ;	Peephole 256.c	loading dpl with zero from a
   2ABB F5 82              4543 	mov	dpl,a
                           4544 ;	Peephole 112.b	changed ljmp to sjmp
   2ABD 80 69              4545 	sjmp	00110$
   2ABF                    4546 00106$:
                           4547 ;	FatDrivers/tff.c:640: if (!memcmp(&fs->win[BS_FilSysType32], "FAT32", 5) && !(fs->win[BPB_ExtFlags] & 0x80))
                           4548 ;	genPlus
                           4549 ;     genPlusIncr
   2ABF 74 20              4550 	mov	a,#0x20
                           4551 ;	Peephole 236.a	used r6 instead of ar6
   2AC1 2E                 4552 	add	a,r6
   2AC2 FB                 4553 	mov	r3,a
                           4554 ;	Peephole 181	changed mov to clr
   2AC3 E4                 4555 	clr	a
                           4556 ;	Peephole 236.b	used r7 instead of ar7
   2AC4 3F                 4557 	addc	a,r7
   2AC5 FC                 4558 	mov	r4,a
   2AC6 8A 05              4559 	mov	ar5,r2
                           4560 ;	genPlus
                           4561 ;     genPlusIncr
   2AC8 74 52              4562 	mov	a,#0x52
                           4563 ;	Peephole 236.a	used r3 instead of ar3
   2ACA 2B                 4564 	add	a,r3
   2ACB FB                 4565 	mov	r3,a
                           4566 ;	Peephole 181	changed mov to clr
   2ACC E4                 4567 	clr	a
                           4568 ;	Peephole 236.b	used r4 instead of ar4
   2ACD 3C                 4569 	addc	a,r4
   2ACE FC                 4570 	mov	r4,a
                           4571 ;	genIpush
   2ACF C0 02              4572 	push	ar2
   2AD1 C0 06              4573 	push	ar6
   2AD3 C0 07              4574 	push	ar7
   2AD5 74 05              4575 	mov	a,#0x05
   2AD7 C0 E0              4576 	push	acc
                           4577 ;	Peephole 181	changed mov to clr
   2AD9 E4                 4578 	clr	a
   2ADA C0 E0              4579 	push	acc
                           4580 ;	genIpush
   2ADC 74 39              4581 	mov	a,#__str_1
   2ADE C0 E0              4582 	push	acc
   2AE0 74 73              4583 	mov	a,#(__str_1 >> 8)
   2AE2 C0 E0              4584 	push	acc
   2AE4 74 80              4585 	mov	a,#0x80
   2AE6 C0 E0              4586 	push	acc
                           4587 ;	genCall
   2AE8 8B 82              4588 	mov	dpl,r3
   2AEA 8C 83              4589 	mov	dph,r4
   2AEC 8D F0              4590 	mov	b,r5
   2AEE 12 5F E7           4591 	lcall	_memcmp
   2AF1 AB 82              4592 	mov	r3,dpl
   2AF3 AC 83              4593 	mov	r4,dph
   2AF5 E5 81              4594 	mov	a,sp
   2AF7 24 FB              4595 	add	a,#0xfb
   2AF9 F5 81              4596 	mov	sp,a
   2AFB D0 07              4597 	pop	ar7
   2AFD D0 06              4598 	pop	ar6
   2AFF D0 02              4599 	pop	ar2
                           4600 ;	genIfx
   2B01 EB                 4601 	mov	a,r3
   2B02 4C                 4602 	orl	a,r4
                           4603 ;	genIfxJump
                           4604 ;	Peephole 108.b	removed ljmp by inverse jump logic
   2B03 70 20              4605 	jnz	00108$
                           4606 ;	Peephole 300	removed redundant label 00120$
                           4607 ;	genPlus
                           4608 ;     genPlusIncr
   2B05 74 20              4609 	mov	a,#0x20
                           4610 ;	Peephole 236.a	used r6 instead of ar6
   2B07 2E                 4611 	add	a,r6
   2B08 FE                 4612 	mov	r6,a
                           4613 ;	Peephole 181	changed mov to clr
   2B09 E4                 4614 	clr	a
                           4615 ;	Peephole 236.b	used r7 instead of ar7
   2B0A 3F                 4616 	addc	a,r7
   2B0B FF                 4617 	mov	r7,a
                           4618 ;	genPlus
                           4619 ;     genPlusIncr
   2B0C 74 28              4620 	mov	a,#0x28
                           4621 ;	Peephole 236.a	used r6 instead of ar6
   2B0E 2E                 4622 	add	a,r6
   2B0F FE                 4623 	mov	r6,a
                           4624 ;	Peephole 181	changed mov to clr
   2B10 E4                 4625 	clr	a
                           4626 ;	Peephole 236.b	used r7 instead of ar7
   2B11 3F                 4627 	addc	a,r7
   2B12 FF                 4628 	mov	r7,a
                           4629 ;	genPointerGet
                           4630 ;	genGenPointerGet
   2B13 8E 82              4631 	mov	dpl,r6
   2B15 8F 83              4632 	mov	dph,r7
   2B17 8A F0              4633 	mov	b,r2
   2B19 12 62 42           4634 	lcall	__gptrget
                           4635 ;	genAnd
   2B1C FE                 4636 	mov	r6,a
                           4637 ;	Peephole 105	removed redundant mov
                           4638 ;	genIfxJump
                           4639 ;	Peephole 108.e	removed ljmp by inverse jump logic
   2B1D 20 E7 05           4640 	jb	acc.7,00108$
                           4641 ;	Peephole 300	removed redundant label 00121$
                           4642 ;	FatDrivers/tff.c:641: return 0;
                           4643 ;	genRet
   2B20 75 82 00           4644 	mov	dpl,#0x00
                           4645 ;	Peephole 112.b	changed ljmp to sjmp
   2B23 80 03              4646 	sjmp	00110$
   2B25                    4647 00108$:
                           4648 ;	FatDrivers/tff.c:643: return 1;
                           4649 ;	genRet
   2B25 75 82 01           4650 	mov	dpl,#0x01
   2B28                    4651 00110$:
   2B28 85 10 81           4652 	mov	sp,_bp
   2B2B D0 10              4653 	pop	_bp
   2B2D 22                 4654 	ret
                           4655 ;------------------------------------------------------------
                           4656 ;Allocation info for local variables in function 'auto_mount'
                           4657 ;------------------------------------------------------------
                           4658 ;chk_wp                    Allocated to stack - offset -3
                           4659 ;path                      Allocated to stack - offset 1
                           4660 ;fmt                       Allocated to stack - offset 4
                           4661 ;stat                      Allocated to registers r2 
                           4662 ;bootsect                  Allocated to stack - offset 5
                           4663 ;fatsize                   Allocated to stack - offset 9
                           4664 ;totalsect                 Allocated to stack - offset 13
                           4665 ;maxclust                  Allocated to stack - offset 17
                           4666 ;p                         Allocated to registers r5 r6 r7 
                           4667 ;fs                        Allocated to stack - offset 21
                           4668 ;sloc0                     Allocated to stack - offset 24
                           4669 ;sloc1                     Allocated to stack - offset 25
                           4670 ;sloc2                     Allocated to stack - offset 28
                           4671 ;sloc3                     Allocated to stack - offset 32
                           4672 ;sloc4                     Allocated to stack - offset 35
                           4673 ;sloc5                     Allocated to stack - offset 38
                           4674 ;sloc6                     Allocated to stack - offset 42
                           4675 ;------------------------------------------------------------
                           4676 ;	FatDrivers/tff.c:654: FRESULT auto_mount (		/* FR_OK(0): successful, !=0: any error occured */
                           4677 ;	-----------------------------------------
                           4678 ;	 function auto_mount
                           4679 ;	-----------------------------------------
   2B2E                    4680 _auto_mount:
   2B2E C0 10              4681 	push	_bp
   2B30 85 81 10           4682 	mov	_bp,sp
                           4683 ;     genReceive
   2B33 C0 82              4684 	push	dpl
   2B35 C0 83              4685 	push	dph
   2B37 C0 F0              4686 	push	b
   2B39 E5 81              4687 	mov	a,sp
   2B3B 24 2D              4688 	add	a,#0x2d
   2B3D F5 81              4689 	mov	sp,a
                           4690 ;	FatDrivers/tff.c:662: const char *p = *path;
                           4691 ;	genPointerGet
                           4692 ;	genGenPointerGet
   2B3F A8 10              4693 	mov	r0,_bp
   2B41 08                 4694 	inc	r0
   2B42 86 82              4695 	mov	dpl,@r0
   2B44 08                 4696 	inc	r0
   2B45 86 83              4697 	mov	dph,@r0
   2B47 08                 4698 	inc	r0
   2B48 86 F0              4699 	mov	b,@r0
   2B4A 12 62 42           4700 	lcall	__gptrget
   2B4D FD                 4701 	mov	r5,a
   2B4E A3                 4702 	inc	dptr
   2B4F 12 62 42           4703 	lcall	__gptrget
   2B52 FE                 4704 	mov	r6,a
   2B53 A3                 4705 	inc	dptr
   2B54 12 62 42           4706 	lcall	__gptrget
   2B57 FF                 4707 	mov	r7,a
                           4708 ;	genAssign
                           4709 ;	FatDrivers/tff.c:663: FATFS *fs = FatFs;
                           4710 ;	genAssign
   2B58 E5 10              4711 	mov	a,_bp
   2B5A 24 15              4712 	add	a,#0x15
   2B5C F8                 4713 	mov	r0,a
   2B5D A6 09              4714 	mov	@r0,_FatFs
   2B5F 08                 4715 	inc	r0
   2B60 A6 0A              4716 	mov	@r0,(_FatFs + 1)
   2B62 08                 4717 	inc	r0
   2B63 A6 0B              4718 	mov	@r0,(_FatFs + 2)
                           4719 ;	FatDrivers/tff.c:667: while (*p == ' ') p++;	/* Strip leading spaces */
                           4720 ;	genAssign
   2B65 8D 02              4721 	mov	ar2,r5
   2B67 8E 03              4722 	mov	ar3,r6
   2B69 8F 04              4723 	mov	ar4,r7
   2B6B                    4724 00101$:
                           4725 ;	genPointerGet
                           4726 ;	genGenPointerGet
   2B6B 8A 82              4727 	mov	dpl,r2
   2B6D 8B 83              4728 	mov	dph,r3
   2B6F 8C F0              4729 	mov	b,r4
   2B71 E5 10              4730 	mov	a,_bp
   2B73 24 18              4731 	add	a,#0x18
   2B75 F8                 4732 	mov	r0,a
   2B76 12 62 42           4733 	lcall	__gptrget
   2B79 F6                 4734 	mov	@r0,a
                           4735 ;	genCmpEq
   2B7A E5 10              4736 	mov	a,_bp
   2B7C 24 18              4737 	add	a,#0x18
   2B7E F8                 4738 	mov	r0,a
                           4739 ;	gencjneshort
                           4740 ;	Peephole 112.b	changed ljmp to sjmp
                           4741 ;	Peephole 198.b	optimized misc jump sequence
   2B7F B6 20 07           4742 	cjne	@r0,#0x20,00149$
                           4743 ;	Peephole 200.b	removed redundant sjmp
                           4744 ;	Peephole 300	removed redundant label 00150$
                           4745 ;	Peephole 300	removed redundant label 00151$
                           4746 ;	genPlus
                           4747 ;     genPlusIncr
                           4748 ;	tail increment optimized (range 4)
   2B82 0A                 4749 	inc	r2
   2B83 BA 00 E5           4750 	cjne	r2,#0x00,00101$
   2B86 0B                 4751 	inc	r3
                           4752 ;	Peephole 112.b	changed ljmp to sjmp
   2B87 80 E2              4753 	sjmp	00101$
   2B89                    4754 00149$:
                           4755 ;	genAssign
   2B89 8A 05              4756 	mov	ar5,r2
   2B8B 8B 06              4757 	mov	ar6,r3
   2B8D 8C 07              4758 	mov	ar7,r4
                           4759 ;	FatDrivers/tff.c:668: if (*p == '/') p++;		/* Strip heading slash */
                           4760 ;	genCmpEq
   2B8F E5 10              4761 	mov	a,_bp
   2B91 24 18              4762 	add	a,#0x18
   2B93 F8                 4763 	mov	r0,a
                           4764 ;	gencjneshort
                           4765 ;	Peephole 112.b	changed ljmp to sjmp
                           4766 ;	Peephole 198.b	optimized misc jump sequence
   2B94 B6 2F 09           4767 	cjne	@r0,#0x2F,00105$
                           4768 ;	Peephole 200.b	removed redundant sjmp
                           4769 ;	Peephole 300	removed redundant label 00152$
                           4770 ;	Peephole 300	removed redundant label 00153$
                           4771 ;	genPlus
                           4772 ;     genPlusIncr
   2B97 74 01              4773 	mov	a,#0x01
                           4774 ;	Peephole 236.a	used r2 instead of ar2
   2B99 2A                 4775 	add	a,r2
   2B9A FD                 4776 	mov	r5,a
                           4777 ;	Peephole 181	changed mov to clr
   2B9B E4                 4778 	clr	a
                           4779 ;	Peephole 236.b	used r3 instead of ar3
   2B9C 3B                 4780 	addc	a,r3
   2B9D FE                 4781 	mov	r6,a
   2B9E 8C 07              4782 	mov	ar7,r4
   2BA0                    4783 00105$:
                           4784 ;	FatDrivers/tff.c:669: *path = p;				/* Return pointer to the path name */
                           4785 ;	genPointerSet
                           4786 ;	genGenPointerSet
   2BA0 A8 10              4787 	mov	r0,_bp
   2BA2 08                 4788 	inc	r0
   2BA3 86 82              4789 	mov	dpl,@r0
   2BA5 08                 4790 	inc	r0
   2BA6 86 83              4791 	mov	dph,@r0
   2BA8 08                 4792 	inc	r0
   2BA9 86 F0              4793 	mov	b,@r0
   2BAB ED                 4794 	mov	a,r5
   2BAC 12 5E A4           4795 	lcall	__gptrput
   2BAF A3                 4796 	inc	dptr
   2BB0 EE                 4797 	mov	a,r6
   2BB1 12 5E A4           4798 	lcall	__gptrput
   2BB4 A3                 4799 	inc	dptr
   2BB5 EF                 4800 	mov	a,r7
   2BB6 12 5E A4           4801 	lcall	__gptrput
                           4802 ;	FatDrivers/tff.c:672: if (!fs) return FR_NOT_ENABLED;
                           4803 ;	genIfx
   2BB9 E5 10              4804 	mov	a,_bp
   2BBB 24 15              4805 	add	a,#0x15
   2BBD F8                 4806 	mov	r0,a
   2BBE E6                 4807 	mov	a,@r0
   2BBF 08                 4808 	inc	r0
   2BC0 46                 4809 	orl	a,@r0
   2BC1 08                 4810 	inc	r0
   2BC2 46                 4811 	orl	a,@r0
                           4812 ;	genIfxJump
                           4813 ;	Peephole 108.b	removed ljmp by inverse jump logic
   2BC3 70 06              4814 	jnz	00107$
                           4815 ;	Peephole 300	removed redundant label 00154$
                           4816 ;	genRet
   2BC5 75 82 0A           4817 	mov	dpl,#0x0A
   2BC8 02 32 F7           4818 	ljmp	00132$
   2BCB                    4819 00107$:
                           4820 ;	FatDrivers/tff.c:675: if (fs->fs_type) {
                           4821 ;	genPlus
   2BCB E5 10              4822 	mov	a,_bp
   2BCD 24 15              4823 	add	a,#0x15
   2BCF F8                 4824 	mov	r0,a
                           4825 ;     genPlusIncr
   2BD0 74 1C              4826 	mov	a,#0x1C
   2BD2 26                 4827 	add	a,@r0
   2BD3 FA                 4828 	mov	r2,a
                           4829 ;	Peephole 181	changed mov to clr
   2BD4 E4                 4830 	clr	a
   2BD5 08                 4831 	inc	r0
   2BD6 36                 4832 	addc	a,@r0
   2BD7 FB                 4833 	mov	r3,a
   2BD8 08                 4834 	inc	r0
   2BD9 86 04              4835 	mov	ar4,@r0
                           4836 ;	genPointerGet
                           4837 ;	genGenPointerGet
   2BDB 8A 82              4838 	mov	dpl,r2
   2BDD 8B 83              4839 	mov	dph,r3
   2BDF 8C F0              4840 	mov	b,r4
   2BE1 12 62 42           4841 	lcall	__gptrget
                           4842 ;	genIfxJump
                           4843 ;	Peephole 108.c	removed ljmp by inverse jump logic
   2BE4 60 12              4844 	jz	00111$
                           4845 ;	Peephole 300	removed redundant label 00155$
                           4846 ;	FatDrivers/tff.c:676: stat = disk_status(0);
                           4847 ;	genCall
   2BE6 75 82 00           4848 	mov	dpl,#0x00
   2BE9 12 0D 2C           4849 	lcall	_disk_status
                           4850 ;	genAssign
                           4851 ;	FatDrivers/tff.c:677: if (!(stat & STA_NOINIT)) {				/* If the physical drive is kept initialized */
                           4852 ;	genAnd
                           4853 ;	peephole 177.g	optimized mov sequence
   2BEC E5 82              4854 	mov	a,dpl
   2BEE FA                 4855 	mov	r2,a
                           4856 ;	genIfxJump
                           4857 ;	Peephole 108.e	removed ljmp by inverse jump logic
   2BEF 20 E0 06           4858 	jb	acc.0,00111$
                           4859 ;	Peephole 300	removed redundant label 00156$
                           4860 ;	FatDrivers/tff.c:682: return FR_OK;						/* The file system object is valid */
                           4861 ;	genRet
   2BF2 75 82 00           4862 	mov	dpl,#0x00
   2BF5 02 32 F7           4863 	ljmp	00132$
   2BF8                    4864 00111$:
                           4865 ;	FatDrivers/tff.c:688: memset(fs, 0, sizeof(FATFS));		/* Clean-up the file system object */
                           4866 ;	genIpush
   2BF8 74 20              4867 	mov	a,#0x20
   2BFA C0 E0              4868 	push	acc
   2BFC 74 02              4869 	mov	a,#0x02
   2BFE C0 E0              4870 	push	acc
                           4871 ;	genIpush
                           4872 ;	Peephole 181	changed mov to clr
   2C00 E4                 4873 	clr	a
   2C01 C0 E0              4874 	push	acc
                           4875 ;	genCall
   2C03 E5 10              4876 	mov	a,_bp
   2C05 24 15              4877 	add	a,#0x15
   2C07 F8                 4878 	mov	r0,a
   2C08 86 82              4879 	mov	dpl,@r0
   2C0A 08                 4880 	inc	r0
   2C0B 86 83              4881 	mov	dph,@r0
   2C0D 08                 4882 	inc	r0
   2C0E 86 F0              4883 	mov	b,@r0
   2C10 12 61 11           4884 	lcall	_memset
   2C13 15 81              4885 	dec	sp
   2C15 15 81              4886 	dec	sp
   2C17 15 81              4887 	dec	sp
                           4888 ;	FatDrivers/tff.c:689: stat = disk_initialize(0);			/* Initialize low level disk I/O layer */
                           4889 ;	genCall
   2C19 75 82 00           4890 	mov	dpl,#0x00
   2C1C 12 0D 0B           4891 	lcall	_disk_initialize
   2C1F AB 82              4892 	mov	r3,dpl
                           4893 ;	genAssign
   2C21 8B 02              4894 	mov	ar2,r3
                           4895 ;	FatDrivers/tff.c:690: if (stat & STA_NOINIT)				/* Check if the drive is ready */
                           4896 ;	genAnd
   2C23 EA                 4897 	mov	a,r2
                           4898 ;	genIfxJump
                           4899 ;	Peephole 108.d	removed ljmp by inverse jump logic
   2C24 30 E0 06           4900 	jnb	acc.0,00113$
                           4901 ;	Peephole 300	removed redundant label 00157$
                           4902 ;	FatDrivers/tff.c:691: return FR_NOT_READY;
                           4903 ;	genRet
   2C27 75 82 01           4904 	mov	dpl,#0x01
   2C2A 02 32 F7           4905 	ljmp	00132$
   2C2D                    4906 00113$:
                           4907 ;	FatDrivers/tff.c:698: fmt = check_fs(bootsect = 0);		/* Check sector 0 as an SFD format */
                           4908 ;	genAssign
   2C2D E5 10              4909 	mov	a,_bp
   2C2F 24 05              4910 	add	a,#0x05
   2C31 F8                 4911 	mov	r0,a
   2C32 E4                 4912 	clr	a
   2C33 F6                 4913 	mov	@r0,a
   2C34 08                 4914 	inc	r0
   2C35 F6                 4915 	mov	@r0,a
   2C36 08                 4916 	inc	r0
   2C37 F6                 4917 	mov	@r0,a
   2C38 08                 4918 	inc	r0
   2C39 F6                 4919 	mov	@r0,a
                           4920 ;	genCall
   2C3A 75 82 00           4921 	mov	dpl,#0x00
   2C3D 12 29 EA           4922 	lcall	_check_fs
   2C40 AA 82              4923 	mov	r2,dpl
                           4924 ;	genAssign
   2C42 E5 10              4925 	mov	a,_bp
   2C44 24 04              4926 	add	a,#0x04
   2C46 F8                 4927 	mov	r0,a
   2C47 A6 02              4928 	mov	@r0,ar2
                           4929 ;	FatDrivers/tff.c:699: if (fmt == 1) {						/* Not a FAT boot record, it may be patitioned */
                           4930 ;	genCmpEq
   2C49 E5 10              4931 	mov	a,_bp
   2C4B 24 04              4932 	add	a,#0x04
   2C4D F8                 4933 	mov	r0,a
                           4934 ;	gencjneshort
   2C4E B6 01 02           4935 	cjne	@r0,#0x01,00158$
   2C51 80 03              4936 	sjmp	00159$
   2C53                    4937 00158$:
   2C53 02 2C D5           4938 	ljmp	00117$
   2C56                    4939 00159$:
                           4940 ;	FatDrivers/tff.c:701: if (fs->win[MBR_Table+4]) {					/* Is the 1st partition existing? */
                           4941 ;	genIpush
                           4942 ;	genPlus
   2C56 E5 10              4943 	mov	a,_bp
   2C58 24 15              4944 	add	a,#0x15
   2C5A F8                 4945 	mov	r0,a
                           4946 ;     genPlusIncr
   2C5B 74 20              4947 	mov	a,#0x20
   2C5D 26                 4948 	add	a,@r0
   2C5E FB                 4949 	mov	r3,a
                           4950 ;	Peephole 181	changed mov to clr
   2C5F E4                 4951 	clr	a
   2C60 08                 4952 	inc	r0
   2C61 36                 4953 	addc	a,@r0
   2C62 FC                 4954 	mov	r4,a
   2C63 08                 4955 	inc	r0
   2C64 86 02              4956 	mov	ar2,@r0
                           4957 ;	genPlus
                           4958 ;     genPlusIncr
   2C66 74 C2              4959 	mov	a,#0xC2
                           4960 ;	Peephole 236.a	used r3 instead of ar3
   2C68 2B                 4961 	add	a,r3
   2C69 FB                 4962 	mov	r3,a
   2C6A 74 01              4963 	mov	a,#0x01
                           4964 ;	Peephole 236.b	used r4 instead of ar4
   2C6C 3C                 4965 	addc	a,r4
   2C6D FC                 4966 	mov	r4,a
                           4967 ;	genPointerGet
                           4968 ;	genGenPointerGet
   2C6E 8B 82              4969 	mov	dpl,r3
   2C70 8C 83              4970 	mov	dph,r4
   2C72 8A F0              4971 	mov	b,r2
   2C74 12 62 42           4972 	lcall	__gptrget
                           4973 ;	genIpop
                           4974 ;	genIfx
                           4975 ;	genIfxJump
                           4976 ;	Peephole 108.c	removed ljmp by inverse jump logic
   2C77 60 5C              4977 	jz	00117$
                           4978 ;	Peephole 300	removed redundant label 00160$
                           4979 ;	FatDrivers/tff.c:702: bootsect = LD_DWORD(&fs->win[MBR_Table+8]);	/* Partition offset in LBA */
                           4980 ;	genPlus
   2C79 E5 10              4981 	mov	a,_bp
   2C7B 24 15              4982 	add	a,#0x15
   2C7D F8                 4983 	mov	r0,a
                           4984 ;     genPlusIncr
   2C7E 74 20              4985 	mov	a,#0x20
   2C80 26                 4986 	add	a,@r0
   2C81 FB                 4987 	mov	r3,a
                           4988 ;	Peephole 181	changed mov to clr
   2C82 E4                 4989 	clr	a
   2C83 08                 4990 	inc	r0
   2C84 36                 4991 	addc	a,@r0
   2C85 FC                 4992 	mov	r4,a
   2C86 08                 4993 	inc	r0
   2C87 86 05              4994 	mov	ar5,@r0
                           4995 ;	genPlus
                           4996 ;     genPlusIncr
   2C89 74 C6              4997 	mov	a,#0xC6
                           4998 ;	Peephole 236.a	used r3 instead of ar3
   2C8B 2B                 4999 	add	a,r3
   2C8C FB                 5000 	mov	r3,a
   2C8D 74 01              5001 	mov	a,#0x01
                           5002 ;	Peephole 236.b	used r4 instead of ar4
   2C8F 3C                 5003 	addc	a,r4
   2C90 FC                 5004 	mov	r4,a
                           5005 ;	genPointerGet
                           5006 ;	genGenPointerGet
   2C91 8B 82              5007 	mov	dpl,r3
   2C93 8C 83              5008 	mov	dph,r4
   2C95 8D F0              5009 	mov	b,r5
   2C97 12 62 42           5010 	lcall	__gptrget
   2C9A FB                 5011 	mov	r3,a
   2C9B A3                 5012 	inc	dptr
   2C9C 12 62 42           5013 	lcall	__gptrget
   2C9F FC                 5014 	mov	r4,a
   2CA0 A3                 5015 	inc	dptr
   2CA1 12 62 42           5016 	lcall	__gptrget
   2CA4 FD                 5017 	mov	r5,a
   2CA5 A3                 5018 	inc	dptr
   2CA6 12 62 42           5019 	lcall	__gptrget
   2CA9 FE                 5020 	mov	r6,a
                           5021 ;	genAssign
   2CAA E5 10              5022 	mov	a,_bp
   2CAC 24 05              5023 	add	a,#0x05
   2CAE F8                 5024 	mov	r0,a
   2CAF A6 03              5025 	mov	@r0,ar3
   2CB1 08                 5026 	inc	r0
   2CB2 A6 04              5027 	mov	@r0,ar4
   2CB4 08                 5028 	inc	r0
   2CB5 A6 05              5029 	mov	@r0,ar5
   2CB7 08                 5030 	inc	r0
   2CB8 A6 06              5031 	mov	@r0,ar6
                           5032 ;	FatDrivers/tff.c:703: fmt = check_fs(bootsect);				/* Check the partition */
                           5033 ;	genCall
   2CBA E5 10              5034 	mov	a,_bp
   2CBC 24 05              5035 	add	a,#0x05
   2CBE F8                 5036 	mov	r0,a
   2CBF 86 82              5037 	mov	dpl,@r0
   2CC1 08                 5038 	inc	r0
   2CC2 86 83              5039 	mov	dph,@r0
   2CC4 08                 5040 	inc	r0
   2CC5 86 F0              5041 	mov	b,@r0
   2CC7 08                 5042 	inc	r0
   2CC8 E6                 5043 	mov	a,@r0
   2CC9 12 29 EA           5044 	lcall	_check_fs
   2CCC AB 82              5045 	mov	r3,dpl
                           5046 ;	genAssign
   2CCE E5 10              5047 	mov	a,_bp
   2CD0 24 04              5048 	add	a,#0x04
   2CD2 F8                 5049 	mov	r0,a
   2CD3 A6 03              5050 	mov	@r0,ar3
   2CD5                    5051 00117$:
                           5052 ;	FatDrivers/tff.c:706: if (fmt || LD_WORD(&fs->win[BPB_BytsPerSec]) != 512)	/* No valid FAT patition is found */
                           5053 ;	genIfx
   2CD5 E5 10              5054 	mov	a,_bp
   2CD7 24 04              5055 	add	a,#0x04
   2CD9 F8                 5056 	mov	r0,a
   2CDA E6                 5057 	mov	a,@r0
                           5058 ;	genIfxJump
                           5059 ;	Peephole 108.b	removed ljmp by inverse jump logic
   2CDB 70 2E              5060 	jnz	00118$
                           5061 ;	Peephole 300	removed redundant label 00161$
                           5062 ;	genPlus
   2CDD E5 10              5063 	mov	a,_bp
   2CDF 24 15              5064 	add	a,#0x15
   2CE1 F8                 5065 	mov	r0,a
                           5066 ;     genPlusIncr
   2CE2 74 20              5067 	mov	a,#0x20
   2CE4 26                 5068 	add	a,@r0
   2CE5 FB                 5069 	mov	r3,a
                           5070 ;	Peephole 181	changed mov to clr
   2CE6 E4                 5071 	clr	a
   2CE7 08                 5072 	inc	r0
   2CE8 36                 5073 	addc	a,@r0
   2CE9 FC                 5074 	mov	r4,a
   2CEA 08                 5075 	inc	r0
   2CEB 86 05              5076 	mov	ar5,@r0
                           5077 ;	genPlus
                           5078 ;     genPlusIncr
   2CED 74 0B              5079 	mov	a,#0x0B
                           5080 ;	Peephole 236.a	used r3 instead of ar3
   2CEF 2B                 5081 	add	a,r3
   2CF0 FB                 5082 	mov	r3,a
                           5083 ;	Peephole 181	changed mov to clr
   2CF1 E4                 5084 	clr	a
                           5085 ;	Peephole 236.b	used r4 instead of ar4
   2CF2 3C                 5086 	addc	a,r4
   2CF3 FC                 5087 	mov	r4,a
                           5088 ;	genPointerGet
                           5089 ;	genGenPointerGet
   2CF4 8B 82              5090 	mov	dpl,r3
   2CF6 8C 83              5091 	mov	dph,r4
   2CF8 8D F0              5092 	mov	b,r5
   2CFA 12 62 42           5093 	lcall	__gptrget
   2CFD FB                 5094 	mov	r3,a
   2CFE A3                 5095 	inc	dptr
   2CFF 12 62 42           5096 	lcall	__gptrget
   2D02 FC                 5097 	mov	r4,a
                           5098 ;	genCmpEq
                           5099 ;	gencjneshort
   2D03 BB 00 05           5100 	cjne	r3,#0x00,00162$
   2D06 BC 02 02           5101 	cjne	r4,#0x02,00162$
                           5102 ;	Peephole 112.b	changed ljmp to sjmp
   2D09 80 06              5103 	sjmp	00119$
   2D0B                    5104 00162$:
   2D0B                    5105 00118$:
                           5106 ;	FatDrivers/tff.c:707: return FR_NO_FILESYSTEM;
                           5107 ;	genRet
   2D0B 75 82 0B           5108 	mov	dpl,#0x0B
   2D0E 02 32 F7           5109 	ljmp	00132$
   2D11                    5110 00119$:
                           5111 ;	FatDrivers/tff.c:710: fatsize = LD_WORD(&fs->win[BPB_FATSz16]);			/* Number of sectors per FAT */
                           5112 ;	genPlus
   2D11 E5 10              5113 	mov	a,_bp
   2D13 24 15              5114 	add	a,#0x15
   2D15 F8                 5115 	mov	r0,a
                           5116 ;     genPlusIncr
   2D16 74 20              5117 	mov	a,#0x20
   2D18 26                 5118 	add	a,@r0
   2D19 FB                 5119 	mov	r3,a
                           5120 ;	Peephole 181	changed mov to clr
   2D1A E4                 5121 	clr	a
   2D1B 08                 5122 	inc	r0
   2D1C 36                 5123 	addc	a,@r0
   2D1D FC                 5124 	mov	r4,a
   2D1E 08                 5125 	inc	r0
   2D1F 86 05              5126 	mov	ar5,@r0
                           5127 ;	genPlus
                           5128 ;     genPlusIncr
   2D21 74 16              5129 	mov	a,#0x16
                           5130 ;	Peephole 236.a	used r3 instead of ar3
   2D23 2B                 5131 	add	a,r3
   2D24 FB                 5132 	mov	r3,a
                           5133 ;	Peephole 181	changed mov to clr
   2D25 E4                 5134 	clr	a
                           5135 ;	Peephole 236.b	used r4 instead of ar4
   2D26 3C                 5136 	addc	a,r4
   2D27 FC                 5137 	mov	r4,a
                           5138 ;	genPointerGet
                           5139 ;	genGenPointerGet
   2D28 8B 82              5140 	mov	dpl,r3
   2D2A 8C 83              5141 	mov	dph,r4
   2D2C 8D F0              5142 	mov	b,r5
   2D2E 12 62 42           5143 	lcall	__gptrget
   2D31 FB                 5144 	mov	r3,a
   2D32 A3                 5145 	inc	dptr
   2D33 12 62 42           5146 	lcall	__gptrget
   2D36 FC                 5147 	mov	r4,a
                           5148 ;	genCast
   2D37 E5 10              5149 	mov	a,_bp
   2D39 24 09              5150 	add	a,#0x09
   2D3B F8                 5151 	mov	r0,a
   2D3C A6 03              5152 	mov	@r0,ar3
   2D3E 08                 5153 	inc	r0
   2D3F A6 04              5154 	mov	@r0,ar4
   2D41 08                 5155 	inc	r0
   2D42 76 00              5156 	mov	@r0,#0x00
   2D44 08                 5157 	inc	r0
   2D45 76 00              5158 	mov	@r0,#0x00
                           5159 ;	FatDrivers/tff.c:711: if (!fatsize) fatsize = LD_DWORD(&fs->win[BPB_FATSz32]);
                           5160 ;	genIfx
   2D47 E5 10              5161 	mov	a,_bp
   2D49 24 09              5162 	add	a,#0x09
   2D4B F8                 5163 	mov	r0,a
   2D4C E6                 5164 	mov	a,@r0
   2D4D 08                 5165 	inc	r0
   2D4E 46                 5166 	orl	a,@r0
   2D4F 08                 5167 	inc	r0
   2D50 46                 5168 	orl	a,@r0
   2D51 08                 5169 	inc	r0
   2D52 46                 5170 	orl	a,@r0
                           5171 ;	genIfxJump
                           5172 ;	Peephole 108.b	removed ljmp by inverse jump logic
   2D53 70 40              5173 	jnz	00122$
                           5174 ;	Peephole 300	removed redundant label 00163$
                           5175 ;	genPlus
   2D55 E5 10              5176 	mov	a,_bp
   2D57 24 15              5177 	add	a,#0x15
   2D59 F8                 5178 	mov	r0,a
                           5179 ;     genPlusIncr
   2D5A 74 20              5180 	mov	a,#0x20
   2D5C 26                 5181 	add	a,@r0
   2D5D FA                 5182 	mov	r2,a
                           5183 ;	Peephole 181	changed mov to clr
   2D5E E4                 5184 	clr	a
   2D5F 08                 5185 	inc	r0
   2D60 36                 5186 	addc	a,@r0
   2D61 FB                 5187 	mov	r3,a
   2D62 08                 5188 	inc	r0
   2D63 86 04              5189 	mov	ar4,@r0
                           5190 ;	genPlus
                           5191 ;     genPlusIncr
   2D65 74 24              5192 	mov	a,#0x24
                           5193 ;	Peephole 236.a	used r2 instead of ar2
   2D67 2A                 5194 	add	a,r2
   2D68 FA                 5195 	mov	r2,a
                           5196 ;	Peephole 181	changed mov to clr
   2D69 E4                 5197 	clr	a
                           5198 ;	Peephole 236.b	used r3 instead of ar3
   2D6A 3B                 5199 	addc	a,r3
   2D6B FB                 5200 	mov	r3,a
                           5201 ;	genPointerGet
                           5202 ;	genGenPointerGet
   2D6C 8A 82              5203 	mov	dpl,r2
   2D6E 8B 83              5204 	mov	dph,r3
   2D70 8C F0              5205 	mov	b,r4
   2D72 12 62 42           5206 	lcall	__gptrget
   2D75 FA                 5207 	mov	r2,a
   2D76 A3                 5208 	inc	dptr
   2D77 12 62 42           5209 	lcall	__gptrget
   2D7A FB                 5210 	mov	r3,a
   2D7B A3                 5211 	inc	dptr
   2D7C 12 62 42           5212 	lcall	__gptrget
   2D7F FC                 5213 	mov	r4,a
   2D80 A3                 5214 	inc	dptr
   2D81 12 62 42           5215 	lcall	__gptrget
   2D84 FD                 5216 	mov	r5,a
                           5217 ;	genAssign
   2D85 E5 10              5218 	mov	a,_bp
   2D87 24 09              5219 	add	a,#0x09
   2D89 F8                 5220 	mov	r0,a
   2D8A A6 02              5221 	mov	@r0,ar2
   2D8C 08                 5222 	inc	r0
   2D8D A6 03              5223 	mov	@r0,ar3
   2D8F 08                 5224 	inc	r0
   2D90 A6 04              5225 	mov	@r0,ar4
   2D92 08                 5226 	inc	r0
   2D93 A6 05              5227 	mov	@r0,ar5
   2D95                    5228 00122$:
                           5229 ;	FatDrivers/tff.c:712: fs->sects_fat = (CLUST)fatsize;
                           5230 ;	genPlus
   2D95 E5 10              5231 	mov	a,_bp
   2D97 24 15              5232 	add	a,#0x15
   2D99 F8                 5233 	mov	r0,a
                           5234 ;     genPlusIncr
   2D9A 74 14              5235 	mov	a,#0x14
   2D9C 26                 5236 	add	a,@r0
   2D9D FF                 5237 	mov	r7,a
                           5238 ;	Peephole 181	changed mov to clr
   2D9E E4                 5239 	clr	a
   2D9F 08                 5240 	inc	r0
   2DA0 36                 5241 	addc	a,@r0
   2DA1 FB                 5242 	mov	r3,a
   2DA2 08                 5243 	inc	r0
   2DA3 86 04              5244 	mov	ar4,@r0
                           5245 ;	genPointerSet
                           5246 ;	genGenPointerSet
   2DA5 8F 82              5247 	mov	dpl,r7
   2DA7 8B 83              5248 	mov	dph,r3
   2DA9 8C F0              5249 	mov	b,r4
   2DAB E5 10              5250 	mov	a,_bp
   2DAD 24 09              5251 	add	a,#0x09
   2DAF F8                 5252 	mov	r0,a
   2DB0 E6                 5253 	mov	a,@r0
   2DB1 12 5E A4           5254 	lcall	__gptrput
   2DB4 A3                 5255 	inc	dptr
   2DB5 08                 5256 	inc	r0
   2DB6 E6                 5257 	mov	a,@r0
   2DB7 12 5E A4           5258 	lcall	__gptrput
   2DBA A3                 5259 	inc	dptr
   2DBB 08                 5260 	inc	r0
   2DBC E6                 5261 	mov	a,@r0
   2DBD 12 5E A4           5262 	lcall	__gptrput
   2DC0 A3                 5263 	inc	dptr
   2DC1 08                 5264 	inc	r0
   2DC2 E6                 5265 	mov	a,@r0
   2DC3 12 5E A4           5266 	lcall	__gptrput
                           5267 ;	FatDrivers/tff.c:713: fs->n_fats = fs->win[BPB_NumFATs];					/* Number of FAT copies */
                           5268 ;	genPlus
   2DC6 E5 10              5269 	mov	a,_bp
   2DC8 24 15              5270 	add	a,#0x15
   2DCA F8                 5271 	mov	r0,a
                           5272 ;     genPlusIncr
   2DCB 74 1E              5273 	mov	a,#0x1E
   2DCD 26                 5274 	add	a,@r0
   2DCE FA                 5275 	mov	r2,a
                           5276 ;	Peephole 181	changed mov to clr
   2DCF E4                 5277 	clr	a
   2DD0 08                 5278 	inc	r0
   2DD1 36                 5279 	addc	a,@r0
   2DD2 FE                 5280 	mov	r6,a
   2DD3 08                 5281 	inc	r0
   2DD4 86 07              5282 	mov	ar7,@r0
                           5283 ;	genPlus
   2DD6 E5 10              5284 	mov	a,_bp
   2DD8 24 15              5285 	add	a,#0x15
   2DDA F8                 5286 	mov	r0,a
   2DDB E5 10              5287 	mov	a,_bp
   2DDD 24 19              5288 	add	a,#0x19
   2DDF F9                 5289 	mov	r1,a
                           5290 ;     genPlusIncr
   2DE0 74 20              5291 	mov	a,#0x20
   2DE2 26                 5292 	add	a,@r0
   2DE3 F7                 5293 	mov	@r1,a
                           5294 ;	Peephole 181	changed mov to clr
   2DE4 E4                 5295 	clr	a
   2DE5 08                 5296 	inc	r0
   2DE6 36                 5297 	addc	a,@r0
   2DE7 09                 5298 	inc	r1
   2DE8 F7                 5299 	mov	@r1,a
   2DE9 08                 5300 	inc	r0
   2DEA 09                 5301 	inc	r1
   2DEB E6                 5302 	mov	a,@r0
   2DEC F7                 5303 	mov	@r1,a
                           5304 ;	genPlus
   2DED E5 10              5305 	mov	a,_bp
   2DEF 24 19              5306 	add	a,#0x19
   2DF1 F8                 5307 	mov	r0,a
                           5308 ;     genPlusIncr
   2DF2 74 10              5309 	mov	a,#0x10
   2DF4 26                 5310 	add	a,@r0
   2DF5 FC                 5311 	mov	r4,a
                           5312 ;	Peephole 181	changed mov to clr
   2DF6 E4                 5313 	clr	a
   2DF7 08                 5314 	inc	r0
   2DF8 36                 5315 	addc	a,@r0
   2DF9 FD                 5316 	mov	r5,a
   2DFA 08                 5317 	inc	r0
   2DFB 86 03              5318 	mov	ar3,@r0
                           5319 ;	genPointerGet
                           5320 ;	genGenPointerGet
   2DFD 8C 82              5321 	mov	dpl,r4
   2DFF 8D 83              5322 	mov	dph,r5
   2E01 8B F0              5323 	mov	b,r3
   2E03 12 62 42           5324 	lcall	__gptrget
                           5325 ;	genPointerSet
                           5326 ;	genGenPointerSet
   2E06 FC                 5327 	mov	r4,a
   2E07 8A 82              5328 	mov	dpl,r2
   2E09 8E 83              5329 	mov	dph,r6
   2E0B 8F F0              5330 	mov	b,r7
                           5331 ;	Peephole 191	removed redundant mov
   2E0D 12 5E A4           5332 	lcall	__gptrput
                           5333 ;	FatDrivers/tff.c:714: fatsize *= fs->n_fats;								/* (Number of sectors in FAT area) */
                           5334 ;	genCast
   2E10 7B 00              5335 	mov	r3,#0x00
   2E12 7D 00              5336 	mov	r5,#0x00
   2E14 7E 00              5337 	mov	r6,#0x00
                           5338 ;	genIpush
   2E16 C0 04              5339 	push	ar4
   2E18 C0 03              5340 	push	ar3
   2E1A C0 05              5341 	push	ar5
   2E1C C0 06              5342 	push	ar6
                           5343 ;	genCall
   2E1E E5 10              5344 	mov	a,_bp
   2E20 24 09              5345 	add	a,#0x09
   2E22 F8                 5346 	mov	r0,a
   2E23 86 82              5347 	mov	dpl,@r0
   2E25 08                 5348 	inc	r0
   2E26 86 83              5349 	mov	dph,@r0
   2E28 08                 5350 	inc	r0
   2E29 86 F0              5351 	mov	b,@r0
   2E2B 08                 5352 	inc	r0
   2E2C E6                 5353 	mov	a,@r0
   2E2D 12 62 5E           5354 	lcall	__mullong
   2E30 AB 82              5355 	mov	r3,dpl
   2E32 AC 83              5356 	mov	r4,dph
   2E34 AD F0              5357 	mov	r5,b
   2E36 FE                 5358 	mov	r6,a
   2E37 E5 81              5359 	mov	a,sp
   2E39 24 FC              5360 	add	a,#0xfc
   2E3B F5 81              5361 	mov	sp,a
                           5362 ;	genAssign
   2E3D E5 10              5363 	mov	a,_bp
   2E3F 24 09              5364 	add	a,#0x09
   2E41 F8                 5365 	mov	r0,a
   2E42 A6 03              5366 	mov	@r0,ar3
   2E44 08                 5367 	inc	r0
   2E45 A6 04              5368 	mov	@r0,ar4
   2E47 08                 5369 	inc	r0
   2E48 A6 05              5370 	mov	@r0,ar5
   2E4A 08                 5371 	inc	r0
   2E4B A6 06              5372 	mov	@r0,ar6
                           5373 ;	FatDrivers/tff.c:715: fs->fatbase = bootsect + LD_WORD(&fs->win[BPB_RsvdSecCnt]);	/* FAT start sector (lba) */
                           5374 ;	genPlus
   2E4D E5 10              5375 	mov	a,_bp
   2E4F 24 15              5376 	add	a,#0x15
   2E51 F8                 5377 	mov	r0,a
   2E52 E5 10              5378 	mov	a,_bp
   2E54 24 1C              5379 	add	a,#0x1c
   2E56 F9                 5380 	mov	r1,a
                           5381 ;     genPlusIncr
   2E57 74 08              5382 	mov	a,#0x08
   2E59 26                 5383 	add	a,@r0
   2E5A F7                 5384 	mov	@r1,a
                           5385 ;	Peephole 181	changed mov to clr
   2E5B E4                 5386 	clr	a
   2E5C 08                 5387 	inc	r0
   2E5D 36                 5388 	addc	a,@r0
   2E5E 09                 5389 	inc	r1
   2E5F F7                 5390 	mov	@r1,a
   2E60 08                 5391 	inc	r0
   2E61 09                 5392 	inc	r1
   2E62 E6                 5393 	mov	a,@r0
   2E63 F7                 5394 	mov	@r1,a
                           5395 ;	genPlus
   2E64 E5 10              5396 	mov	a,_bp
   2E66 24 19              5397 	add	a,#0x19
   2E68 F8                 5398 	mov	r0,a
                           5399 ;     genPlusIncr
   2E69 74 0E              5400 	mov	a,#0x0E
   2E6B 26                 5401 	add	a,@r0
   2E6C FE                 5402 	mov	r6,a
                           5403 ;	Peephole 181	changed mov to clr
   2E6D E4                 5404 	clr	a
   2E6E 08                 5405 	inc	r0
   2E6F 36                 5406 	addc	a,@r0
   2E70 FF                 5407 	mov	r7,a
   2E71 08                 5408 	inc	r0
   2E72 86 03              5409 	mov	ar3,@r0
                           5410 ;	genPointerGet
                           5411 ;	genGenPointerGet
   2E74 8E 82              5412 	mov	dpl,r6
   2E76 8F 83              5413 	mov	dph,r7
   2E78 8B F0              5414 	mov	b,r3
   2E7A 12 62 42           5415 	lcall	__gptrget
   2E7D FE                 5416 	mov	r6,a
   2E7E A3                 5417 	inc	dptr
   2E7F 12 62 42           5418 	lcall	__gptrget
   2E82 FF                 5419 	mov	r7,a
                           5420 ;	genCast
                           5421 ;	genPlus
                           5422 ;	Peephole 3.c	changed mov to clr
   2E83 E4                 5423 	clr	a
   2E84 FB                 5424 	mov	r3,a
   2E85 FC                 5425 	mov	r4,a
   2E86 E5 10              5426 	mov	a,_bp
   2E88 24 05              5427 	add	a,#0x05
   2E8A F8                 5428 	mov	r0,a
                           5429 ;	Peephole 236.g	used r6 instead of ar6
   2E8B EE                 5430 	mov	a,r6
   2E8C 26                 5431 	add	a,@r0
   2E8D FE                 5432 	mov	r6,a
                           5433 ;	Peephole 236.g	used r7 instead of ar7
   2E8E EF                 5434 	mov	a,r7
   2E8F 08                 5435 	inc	r0
   2E90 36                 5436 	addc	a,@r0
   2E91 FF                 5437 	mov	r7,a
                           5438 ;	Peephole 236.g	used r3 instead of ar3
   2E92 EB                 5439 	mov	a,r3
   2E93 08                 5440 	inc	r0
   2E94 36                 5441 	addc	a,@r0
   2E95 FB                 5442 	mov	r3,a
                           5443 ;	Peephole 236.g	used r4 instead of ar4
   2E96 EC                 5444 	mov	a,r4
   2E97 08                 5445 	inc	r0
   2E98 36                 5446 	addc	a,@r0
   2E99 FC                 5447 	mov	r4,a
                           5448 ;	genPointerSet
                           5449 ;	genGenPointerSet
   2E9A E5 10              5450 	mov	a,_bp
   2E9C 24 1C              5451 	add	a,#0x1c
   2E9E F8                 5452 	mov	r0,a
   2E9F 86 82              5453 	mov	dpl,@r0
   2EA1 08                 5454 	inc	r0
   2EA2 86 83              5455 	mov	dph,@r0
   2EA4 08                 5456 	inc	r0
   2EA5 86 F0              5457 	mov	b,@r0
   2EA7 EE                 5458 	mov	a,r6
   2EA8 12 5E A4           5459 	lcall	__gptrput
   2EAB A3                 5460 	inc	dptr
   2EAC EF                 5461 	mov	a,r7
   2EAD 12 5E A4           5462 	lcall	__gptrput
   2EB0 A3                 5463 	inc	dptr
   2EB1 EB                 5464 	mov	a,r3
   2EB2 12 5E A4           5465 	lcall	__gptrput
   2EB5 A3                 5466 	inc	dptr
   2EB6 EC                 5467 	mov	a,r4
   2EB7 12 5E A4           5468 	lcall	__gptrput
                           5469 ;	FatDrivers/tff.c:716: fs->sects_clust = fs->win[BPB_SecPerClus];			/* Number of sectors per cluster */
                           5470 ;	genPlus
   2EBA E5 10              5471 	mov	a,_bp
   2EBC 24 15              5472 	add	a,#0x15
   2EBE F8                 5473 	mov	r0,a
   2EBF E5 10              5474 	mov	a,_bp
   2EC1 24 20              5475 	add	a,#0x20
   2EC3 F9                 5476 	mov	r1,a
                           5477 ;     genPlusIncr
   2EC4 74 1D              5478 	mov	a,#0x1D
   2EC6 26                 5479 	add	a,@r0
   2EC7 F7                 5480 	mov	@r1,a
                           5481 ;	Peephole 181	changed mov to clr
   2EC8 E4                 5482 	clr	a
   2EC9 08                 5483 	inc	r0
   2ECA 36                 5484 	addc	a,@r0
   2ECB 09                 5485 	inc	r1
   2ECC F7                 5486 	mov	@r1,a
   2ECD 08                 5487 	inc	r0
   2ECE 09                 5488 	inc	r1
   2ECF E6                 5489 	mov	a,@r0
   2ED0 F7                 5490 	mov	@r1,a
                           5491 ;	genPlus
   2ED1 E5 10              5492 	mov	a,_bp
   2ED3 24 19              5493 	add	a,#0x19
   2ED5 F8                 5494 	mov	r0,a
                           5495 ;     genPlusIncr
   2ED6 74 0D              5496 	mov	a,#0x0D
   2ED8 26                 5497 	add	a,@r0
   2ED9 FE                 5498 	mov	r6,a
                           5499 ;	Peephole 181	changed mov to clr
   2EDA E4                 5500 	clr	a
   2EDB 08                 5501 	inc	r0
   2EDC 36                 5502 	addc	a,@r0
   2EDD FF                 5503 	mov	r7,a
   2EDE 08                 5504 	inc	r0
   2EDF 86 03              5505 	mov	ar3,@r0
                           5506 ;	genPointerGet
                           5507 ;	genGenPointerGet
   2EE1 8E 82              5508 	mov	dpl,r6
   2EE3 8F 83              5509 	mov	dph,r7
   2EE5 8B F0              5510 	mov	b,r3
   2EE7 12 62 42           5511 	lcall	__gptrget
   2EEA FE                 5512 	mov	r6,a
                           5513 ;	genPointerSet
                           5514 ;	genGenPointerSet
   2EEB E5 10              5515 	mov	a,_bp
   2EED 24 20              5516 	add	a,#0x20
   2EEF F8                 5517 	mov	r0,a
   2EF0 86 82              5518 	mov	dpl,@r0
   2EF2 08                 5519 	inc	r0
   2EF3 86 83              5520 	mov	dph,@r0
   2EF5 08                 5521 	inc	r0
   2EF6 86 F0              5522 	mov	b,@r0
   2EF8 EE                 5523 	mov	a,r6
   2EF9 12 5E A4           5524 	lcall	__gptrput
                           5525 ;	FatDrivers/tff.c:717: fs->n_rootdir = LD_WORD(&fs->win[BPB_RootEntCnt]);	/* Nmuber of root directory entries */
                           5526 ;	genPlus
   2EFC E5 10              5527 	mov	a,_bp
   2EFE 24 15              5528 	add	a,#0x15
   2F00 F8                 5529 	mov	r0,a
   2F01 E5 10              5530 	mov	a,_bp
   2F03 24 23              5531 	add	a,#0x23
   2F05 F9                 5532 	mov	r1,a
                           5533 ;     genPlusIncr
   2F06 74 02              5534 	mov	a,#0x02
   2F08 26                 5535 	add	a,@r0
   2F09 F7                 5536 	mov	@r1,a
                           5537 ;	Peephole 181	changed mov to clr
   2F0A E4                 5538 	clr	a
   2F0B 08                 5539 	inc	r0
   2F0C 36                 5540 	addc	a,@r0
   2F0D 09                 5541 	inc	r1
   2F0E F7                 5542 	mov	@r1,a
   2F0F 08                 5543 	inc	r0
   2F10 09                 5544 	inc	r1
   2F11 E6                 5545 	mov	a,@r0
   2F12 F7                 5546 	mov	@r1,a
                           5547 ;	genPlus
   2F13 E5 10              5548 	mov	a,_bp
   2F15 24 19              5549 	add	a,#0x19
   2F17 F8                 5550 	mov	r0,a
                           5551 ;     genPlusIncr
   2F18 74 11              5552 	mov	a,#0x11
   2F1A 26                 5553 	add	a,@r0
   2F1B FE                 5554 	mov	r6,a
                           5555 ;	Peephole 181	changed mov to clr
   2F1C E4                 5556 	clr	a
   2F1D 08                 5557 	inc	r0
   2F1E 36                 5558 	addc	a,@r0
   2F1F FF                 5559 	mov	r7,a
   2F20 08                 5560 	inc	r0
   2F21 86 03              5561 	mov	ar3,@r0
                           5562 ;	genPointerGet
                           5563 ;	genGenPointerGet
   2F23 8E 82              5564 	mov	dpl,r6
   2F25 8F 83              5565 	mov	dph,r7
   2F27 8B F0              5566 	mov	b,r3
   2F29 12 62 42           5567 	lcall	__gptrget
   2F2C FE                 5568 	mov	r6,a
   2F2D A3                 5569 	inc	dptr
   2F2E 12 62 42           5570 	lcall	__gptrget
   2F31 FF                 5571 	mov	r7,a
                           5572 ;	genPointerSet
                           5573 ;	genGenPointerSet
   2F32 E5 10              5574 	mov	a,_bp
   2F34 24 23              5575 	add	a,#0x23
   2F36 F8                 5576 	mov	r0,a
   2F37 86 82              5577 	mov	dpl,@r0
   2F39 08                 5578 	inc	r0
   2F3A 86 83              5579 	mov	dph,@r0
   2F3C 08                 5580 	inc	r0
   2F3D 86 F0              5581 	mov	b,@r0
   2F3F EE                 5582 	mov	a,r6
   2F40 12 5E A4           5583 	lcall	__gptrput
   2F43 A3                 5584 	inc	dptr
   2F44 EF                 5585 	mov	a,r7
   2F45 12 5E A4           5586 	lcall	__gptrput
                           5587 ;	FatDrivers/tff.c:718: totalsect = LD_WORD(&fs->win[BPB_TotSec16]);		/* Number of sectors on the file system */
                           5588 ;	genPlus
   2F48 E5 10              5589 	mov	a,_bp
   2F4A 24 19              5590 	add	a,#0x19
   2F4C F8                 5591 	mov	r0,a
                           5592 ;     genPlusIncr
   2F4D 74 13              5593 	mov	a,#0x13
   2F4F 26                 5594 	add	a,@r0
   2F50 FB                 5595 	mov	r3,a
                           5596 ;	Peephole 181	changed mov to clr
   2F51 E4                 5597 	clr	a
   2F52 08                 5598 	inc	r0
   2F53 36                 5599 	addc	a,@r0
   2F54 FC                 5600 	mov	r4,a
   2F55 08                 5601 	inc	r0
   2F56 86 05              5602 	mov	ar5,@r0
                           5603 ;	genPointerGet
                           5604 ;	genGenPointerGet
   2F58 8B 82              5605 	mov	dpl,r3
   2F5A 8C 83              5606 	mov	dph,r4
   2F5C 8D F0              5607 	mov	b,r5
   2F5E 12 62 42           5608 	lcall	__gptrget
   2F61 FB                 5609 	mov	r3,a
   2F62 A3                 5610 	inc	dptr
   2F63 12 62 42           5611 	lcall	__gptrget
   2F66 FC                 5612 	mov	r4,a
                           5613 ;	genCast
   2F67 E5 10              5614 	mov	a,_bp
   2F69 24 0D              5615 	add	a,#0x0d
   2F6B F8                 5616 	mov	r0,a
   2F6C A6 03              5617 	mov	@r0,ar3
   2F6E 08                 5618 	inc	r0
   2F6F A6 04              5619 	mov	@r0,ar4
   2F71 08                 5620 	inc	r0
   2F72 76 00              5621 	mov	@r0,#0x00
   2F74 08                 5622 	inc	r0
   2F75 76 00              5623 	mov	@r0,#0x00
                           5624 ;	FatDrivers/tff.c:719: if (!totalsect) totalsect = LD_DWORD(&fs->win[BPB_TotSec32]);
                           5625 ;	genIfx
   2F77 E5 10              5626 	mov	a,_bp
   2F79 24 0D              5627 	add	a,#0x0d
   2F7B F8                 5628 	mov	r0,a
   2F7C E6                 5629 	mov	a,@r0
   2F7D 08                 5630 	inc	r0
   2F7E 46                 5631 	orl	a,@r0
   2F7F 08                 5632 	inc	r0
   2F80 46                 5633 	orl	a,@r0
   2F81 08                 5634 	inc	r0
   2F82 46                 5635 	orl	a,@r0
                           5636 ;	genIfxJump
                           5637 ;	Peephole 108.b	removed ljmp by inverse jump logic
   2F83 70 40              5638 	jnz	00124$
                           5639 ;	Peephole 300	removed redundant label 00164$
                           5640 ;	genPlus
   2F85 E5 10              5641 	mov	a,_bp
   2F87 24 15              5642 	add	a,#0x15
   2F89 F8                 5643 	mov	r0,a
                           5644 ;     genPlusIncr
   2F8A 74 20              5645 	mov	a,#0x20
   2F8C 26                 5646 	add	a,@r0
   2F8D FA                 5647 	mov	r2,a
                           5648 ;	Peephole 181	changed mov to clr
   2F8E E4                 5649 	clr	a
   2F8F 08                 5650 	inc	r0
   2F90 36                 5651 	addc	a,@r0
   2F91 FB                 5652 	mov	r3,a
   2F92 08                 5653 	inc	r0
   2F93 86 04              5654 	mov	ar4,@r0
                           5655 ;	genPlus
                           5656 ;     genPlusIncr
   2F95 74 20              5657 	mov	a,#0x20
                           5658 ;	Peephole 236.a	used r2 instead of ar2
   2F97 2A                 5659 	add	a,r2
   2F98 FA                 5660 	mov	r2,a
                           5661 ;	Peephole 181	changed mov to clr
   2F99 E4                 5662 	clr	a
                           5663 ;	Peephole 236.b	used r3 instead of ar3
   2F9A 3B                 5664 	addc	a,r3
   2F9B FB                 5665 	mov	r3,a
                           5666 ;	genPointerGet
                           5667 ;	genGenPointerGet
   2F9C 8A 82              5668 	mov	dpl,r2
   2F9E 8B 83              5669 	mov	dph,r3
   2FA0 8C F0              5670 	mov	b,r4
   2FA2 12 62 42           5671 	lcall	__gptrget
   2FA5 FA                 5672 	mov	r2,a
   2FA6 A3                 5673 	inc	dptr
   2FA7 12 62 42           5674 	lcall	__gptrget
   2FAA FB                 5675 	mov	r3,a
   2FAB A3                 5676 	inc	dptr
   2FAC 12 62 42           5677 	lcall	__gptrget
   2FAF FC                 5678 	mov	r4,a
   2FB0 A3                 5679 	inc	dptr
   2FB1 12 62 42           5680 	lcall	__gptrget
   2FB4 FD                 5681 	mov	r5,a
                           5682 ;	genAssign
   2FB5 E5 10              5683 	mov	a,_bp
   2FB7 24 0D              5684 	add	a,#0x0d
   2FB9 F8                 5685 	mov	r0,a
   2FBA A6 02              5686 	mov	@r0,ar2
   2FBC 08                 5687 	inc	r0
   2FBD A6 03              5688 	mov	@r0,ar3
   2FBF 08                 5689 	inc	r0
   2FC0 A6 04              5690 	mov	@r0,ar4
   2FC2 08                 5691 	inc	r0
   2FC3 A6 05              5692 	mov	@r0,ar5
   2FC5                    5693 00124$:
                           5694 ;	FatDrivers/tff.c:720: fs->max_clust = maxclust = (totalsect				/* Last cluster# + 1 */
                           5695 ;	genPlus
   2FC5 E5 10              5696 	mov	a,_bp
   2FC7 24 15              5697 	add	a,#0x15
   2FC9 F8                 5698 	mov	r0,a
   2FCA E5 10              5699 	mov	a,_bp
   2FCC 24 26              5700 	add	a,#0x26
   2FCE F9                 5701 	mov	r1,a
                           5702 ;     genPlusIncr
   2FCF 74 18              5703 	mov	a,#0x18
   2FD1 26                 5704 	add	a,@r0
   2FD2 F7                 5705 	mov	@r1,a
                           5706 ;	Peephole 181	changed mov to clr
   2FD3 E4                 5707 	clr	a
   2FD4 08                 5708 	inc	r0
   2FD5 36                 5709 	addc	a,@r0
   2FD6 09                 5710 	inc	r1
   2FD7 F7                 5711 	mov	@r1,a
   2FD8 08                 5712 	inc	r0
   2FD9 09                 5713 	inc	r1
   2FDA E6                 5714 	mov	a,@r0
   2FDB F7                 5715 	mov	@r1,a
                           5716 ;	FatDrivers/tff.c:721: - LD_WORD(&fs->win[BPB_RsvdSecCnt]) - fatsize - fs->n_rootdir / 16
                           5717 ;	genPlus
   2FDC E5 10              5718 	mov	a,_bp
   2FDE 24 15              5719 	add	a,#0x15
   2FE0 F8                 5720 	mov	r0,a
                           5721 ;     genPlusIncr
   2FE1 74 20              5722 	mov	a,#0x20
   2FE3 26                 5723 	add	a,@r0
   2FE4 FD                 5724 	mov	r5,a
                           5725 ;	Peephole 181	changed mov to clr
   2FE5 E4                 5726 	clr	a
   2FE6 08                 5727 	inc	r0
   2FE7 36                 5728 	addc	a,@r0
   2FE8 FE                 5729 	mov	r6,a
   2FE9 08                 5730 	inc	r0
   2FEA 86 03              5731 	mov	ar3,@r0
                           5732 ;	genPlus
                           5733 ;     genPlusIncr
   2FEC 74 0E              5734 	mov	a,#0x0E
                           5735 ;	Peephole 236.a	used r5 instead of ar5
   2FEE 2D                 5736 	add	a,r5
   2FEF FD                 5737 	mov	r5,a
                           5738 ;	Peephole 181	changed mov to clr
   2FF0 E4                 5739 	clr	a
                           5740 ;	Peephole 236.b	used r6 instead of ar6
   2FF1 3E                 5741 	addc	a,r6
   2FF2 FE                 5742 	mov	r6,a
                           5743 ;	genPointerGet
                           5744 ;	genGenPointerGet
   2FF3 8D 82              5745 	mov	dpl,r5
   2FF5 8E 83              5746 	mov	dph,r6
   2FF7 8B F0              5747 	mov	b,r3
   2FF9 12 62 42           5748 	lcall	__gptrget
   2FFC FD                 5749 	mov	r5,a
   2FFD A3                 5750 	inc	dptr
   2FFE 12 62 42           5751 	lcall	__gptrget
   3001 FE                 5752 	mov	r6,a
                           5753 ;	genCast
                           5754 ;	genMinus
                           5755 ;	Peephole 3.c	changed mov to clr
   3002 E4                 5756 	clr	a
   3003 FB                 5757 	mov	r3,a
   3004 FC                 5758 	mov	r4,a
   3005 E5 10              5759 	mov	a,_bp
   3007 24 0D              5760 	add	a,#0x0d
   3009 F8                 5761 	mov	r0,a
   300A E6                 5762 	mov	a,@r0
   300B C3                 5763 	clr	c
                           5764 ;	Peephole 236.l	used r5 instead of ar5
   300C 9D                 5765 	subb	a,r5
   300D FD                 5766 	mov	r5,a
   300E 08                 5767 	inc	r0
   300F E6                 5768 	mov	a,@r0
                           5769 ;	Peephole 236.l	used r6 instead of ar6
   3010 9E                 5770 	subb	a,r6
   3011 FE                 5771 	mov	r6,a
   3012 08                 5772 	inc	r0
   3013 E6                 5773 	mov	a,@r0
                           5774 ;	Peephole 236.l	used r3 instead of ar3
   3014 9B                 5775 	subb	a,r3
   3015 FB                 5776 	mov	r3,a
   3016 08                 5777 	inc	r0
   3017 E6                 5778 	mov	a,@r0
                           5779 ;	Peephole 236.l	used r4 instead of ar4
   3018 9C                 5780 	subb	a,r4
   3019 FC                 5781 	mov	r4,a
                           5782 ;	genMinus
   301A E5 10              5783 	mov	a,_bp
   301C 24 09              5784 	add	a,#0x09
   301E F8                 5785 	mov	r0,a
   301F E5 10              5786 	mov	a,_bp
   3021 24 2A              5787 	add	a,#0x2a
   3023 F9                 5788 	mov	r1,a
   3024 ED                 5789 	mov	a,r5
   3025 C3                 5790 	clr	c
   3026 96                 5791 	subb	a,@r0
   3027 F7                 5792 	mov	@r1,a
   3028 EE                 5793 	mov	a,r6
   3029 08                 5794 	inc	r0
   302A 96                 5795 	subb	a,@r0
   302B 09                 5796 	inc	r1
   302C F7                 5797 	mov	@r1,a
   302D EB                 5798 	mov	a,r3
   302E 08                 5799 	inc	r0
   302F 96                 5800 	subb	a,@r0
   3030 09                 5801 	inc	r1
   3031 F7                 5802 	mov	@r1,a
   3032 EC                 5803 	mov	a,r4
   3033 08                 5804 	inc	r0
   3034 96                 5805 	subb	a,@r0
   3035 09                 5806 	inc	r1
   3036 F7                 5807 	mov	@r1,a
                           5808 ;	genPointerGet
                           5809 ;	genGenPointerGet
   3037 E5 10              5810 	mov	a,_bp
   3039 24 23              5811 	add	a,#0x23
   303B F8                 5812 	mov	r0,a
   303C 86 82              5813 	mov	dpl,@r0
   303E 08                 5814 	inc	r0
   303F 86 83              5815 	mov	dph,@r0
   3041 08                 5816 	inc	r0
   3042 86 F0              5817 	mov	b,@r0
   3044 12 62 42           5818 	lcall	__gptrget
   3047 FF                 5819 	mov	r7,a
   3048 A3                 5820 	inc	dptr
   3049 12 62 42           5821 	lcall	__gptrget
                           5822 ;	genRightShift
                           5823 ;	genRightShiftLiteral
                           5824 ;	genrshTwo
   304C FB                 5825 	mov	r3,a
                           5826 ;	Peephole 105	removed redundant mov
   304D C4                 5827 	swap	a
   304E CF                 5828 	xch	a,r7
   304F C4                 5829 	swap	a
   3050 54 0F              5830 	anl	a,#0x0f
   3052 6F                 5831 	xrl	a,r7
   3053 CF                 5832 	xch	a,r7
   3054 54 0F              5833 	anl	a,#0x0f
   3056 CF                 5834 	xch	a,r7
   3057 6F                 5835 	xrl	a,r7
   3058 CF                 5836 	xch	a,r7
   3059 FB                 5837 	mov	r3,a
                           5838 ;	genCast
                           5839 ;	genMinus
                           5840 ;	Peephole 3.c	changed mov to clr
   305A E4                 5841 	clr	a
   305B FC                 5842 	mov	r4,a
   305C FD                 5843 	mov	r5,a
   305D E5 10              5844 	mov	a,_bp
   305F 24 2A              5845 	add	a,#0x2a
   3061 F8                 5846 	mov	r0,a
   3062 E6                 5847 	mov	a,@r0
   3063 C3                 5848 	clr	c
                           5849 ;	Peephole 236.l	used r7 instead of ar7
   3064 9F                 5850 	subb	a,r7
   3065 F6                 5851 	mov	@r0,a
   3066 08                 5852 	inc	r0
   3067 E6                 5853 	mov	a,@r0
                           5854 ;	Peephole 236.l	used r3 instead of ar3
   3068 9B                 5855 	subb	a,r3
   3069 F6                 5856 	mov	@r0,a
   306A 08                 5857 	inc	r0
   306B E6                 5858 	mov	a,@r0
                           5859 ;	Peephole 236.l	used r4 instead of ar4
   306C 9C                 5860 	subb	a,r4
   306D F6                 5861 	mov	@r0,a
   306E 08                 5862 	inc	r0
   306F E6                 5863 	mov	a,@r0
                           5864 ;	Peephole 236.l	used r5 instead of ar5
   3070 9D                 5865 	subb	a,r5
   3071 F6                 5866 	mov	@r0,a
                           5867 ;	FatDrivers/tff.c:722: ) / fs->sects_clust + 2;
                           5868 ;	genPointerGet
                           5869 ;	genGenPointerGet
   3072 E5 10              5870 	mov	a,_bp
   3074 24 20              5871 	add	a,#0x20
   3076 F8                 5872 	mov	r0,a
   3077 86 82              5873 	mov	dpl,@r0
   3079 08                 5874 	inc	r0
   307A 86 83              5875 	mov	dph,@r0
   307C 08                 5876 	inc	r0
   307D 86 F0              5877 	mov	b,@r0
   307F 12 62 42           5878 	lcall	__gptrget
   3082 FE                 5879 	mov	r6,a
                           5880 ;	genCast
   3083 7B 00              5881 	mov	r3,#0x00
   3085 7C 00              5882 	mov	r4,#0x00
   3087 7D 00              5883 	mov	r5,#0x00
                           5884 ;	genIpush
   3089 C0 06              5885 	push	ar6
   308B C0 03              5886 	push	ar3
   308D C0 04              5887 	push	ar4
   308F C0 05              5888 	push	ar5
                           5889 ;	genCall
   3091 E5 10              5890 	mov	a,_bp
   3093 24 2A              5891 	add	a,#0x2a
   3095 F8                 5892 	mov	r0,a
   3096 86 82              5893 	mov	dpl,@r0
   3098 08                 5894 	inc	r0
   3099 86 83              5895 	mov	dph,@r0
   309B 08                 5896 	inc	r0
   309C 86 F0              5897 	mov	b,@r0
   309E 08                 5898 	inc	r0
   309F E6                 5899 	mov	a,@r0
   30A0 12 60 A4           5900 	lcall	__divulong
   30A3 AB 82              5901 	mov	r3,dpl
   30A5 AC 83              5902 	mov	r4,dph
   30A7 AD F0              5903 	mov	r5,b
   30A9 FE                 5904 	mov	r6,a
   30AA E5 81              5905 	mov	a,sp
   30AC 24 FC              5906 	add	a,#0xfc
   30AE F5 81              5907 	mov	sp,a
                           5908 ;	genPlus
   30B0 E5 10              5909 	mov	a,_bp
   30B2 24 11              5910 	add	a,#0x11
   30B4 F8                 5911 	mov	r0,a
                           5912 ;     genPlusIncr
   30B5 74 02              5913 	mov	a,#0x02
                           5914 ;	Peephole 236.a	used r3 instead of ar3
   30B7 2B                 5915 	add	a,r3
   30B8 F6                 5916 	mov	@r0,a
                           5917 ;	Peephole 181	changed mov to clr
   30B9 E4                 5918 	clr	a
                           5919 ;	Peephole 236.b	used r4 instead of ar4
   30BA 3C                 5920 	addc	a,r4
   30BB 08                 5921 	inc	r0
   30BC F6                 5922 	mov	@r0,a
                           5923 ;	Peephole 181	changed mov to clr
   30BD E4                 5924 	clr	a
                           5925 ;	Peephole 236.b	used r5 instead of ar5
   30BE 3D                 5926 	addc	a,r5
   30BF 08                 5927 	inc	r0
   30C0 F6                 5928 	mov	@r0,a
                           5929 ;	Peephole 181	changed mov to clr
   30C1 E4                 5930 	clr	a
                           5931 ;	Peephole 236.b	used r6 instead of ar6
   30C2 3E                 5932 	addc	a,r6
   30C3 08                 5933 	inc	r0
   30C4 F6                 5934 	mov	@r0,a
                           5935 ;	genAssign
   30C5 E5 10              5936 	mov	a,_bp
   30C7 24 11              5937 	add	a,#0x11
   30C9 F8                 5938 	mov	r0,a
   30CA 86 07              5939 	mov	ar7,@r0
   30CC 08                 5940 	inc	r0
   30CD 86 03              5941 	mov	ar3,@r0
   30CF 08                 5942 	inc	r0
   30D0 86 04              5943 	mov	ar4,@r0
   30D2 08                 5944 	inc	r0
   30D3 86 05              5945 	mov	ar5,@r0
                           5946 ;	genPointerSet
                           5947 ;	genGenPointerSet
   30D5 E5 10              5948 	mov	a,_bp
   30D7 24 26              5949 	add	a,#0x26
   30D9 F8                 5950 	mov	r0,a
   30DA 86 82              5951 	mov	dpl,@r0
   30DC 08                 5952 	inc	r0
   30DD 86 83              5953 	mov	dph,@r0
   30DF 08                 5954 	inc	r0
   30E0 86 F0              5955 	mov	b,@r0
   30E2 E5 10              5956 	mov	a,_bp
   30E4 24 11              5957 	add	a,#0x11
   30E6 F9                 5958 	mov	r1,a
   30E7 E7                 5959 	mov	a,@r1
   30E8 12 5E A4           5960 	lcall	__gptrput
   30EB A3                 5961 	inc	dptr
   30EC 09                 5962 	inc	r1
   30ED E7                 5963 	mov	a,@r1
   30EE 12 5E A4           5964 	lcall	__gptrput
   30F1 A3                 5965 	inc	dptr
   30F2 09                 5966 	inc	r1
   30F3 E7                 5967 	mov	a,@r1
   30F4 12 5E A4           5968 	lcall	__gptrput
   30F7 A3                 5969 	inc	dptr
   30F8 09                 5970 	inc	r1
   30F9 E7                 5971 	mov	a,@r1
   30FA 12 5E A4           5972 	lcall	__gptrput
                           5973 ;	FatDrivers/tff.c:724: fmt = FS_FAT12;										/* Determine the FAT sub type */
                           5974 ;	genAssign
   30FD E5 10              5975 	mov	a,_bp
   30FF 24 04              5976 	add	a,#0x04
   3101 F8                 5977 	mov	r0,a
   3102 76 01              5978 	mov	@r0,#0x01
                           5979 ;	FatDrivers/tff.c:725: if (maxclust > 0xFF7) fmt = FS_FAT16;
                           5980 ;	genCmpGt
                           5981 ;	genCmp
   3104 C3                 5982 	clr	c
   3105 74 F7              5983 	mov	a,#0xF7
   3107 9F                 5984 	subb	a,r7
   3108 74 0F              5985 	mov	a,#0x0F
   310A 9B                 5986 	subb	a,r3
                           5987 ;	Peephole 181	changed mov to clr
   310B E4                 5988 	clr	a
   310C 9C                 5989 	subb	a,r4
                           5990 ;	Peephole 181	changed mov to clr
   310D E4                 5991 	clr	a
   310E 9D                 5992 	subb	a,r5
                           5993 ;	genIfxJump
                           5994 ;	Peephole 108.a	removed ljmp by inverse jump logic
   310F 50 07              5995 	jnc	00126$
                           5996 ;	Peephole 300	removed redundant label 00165$
                           5997 ;	genAssign
   3111 E5 10              5998 	mov	a,_bp
   3113 24 04              5999 	add	a,#0x04
   3115 F8                 6000 	mov	r0,a
   3116 76 02              6001 	mov	@r0,#0x02
   3118                    6002 00126$:
                           6003 ;	FatDrivers/tff.c:726: if (maxclust > 0xFFF7)
                           6004 ;	genCmpGt
                           6005 ;	genCmp
   3118 C3                 6006 	clr	c
   3119 74 F7              6007 	mov	a,#0xF7
   311B 9F                 6008 	subb	a,r7
   311C 74 FF              6009 	mov	a,#0xFF
   311E 9B                 6010 	subb	a,r3
                           6011 ;	Peephole 181	changed mov to clr
   311F E4                 6012 	clr	a
   3120 9C                 6013 	subb	a,r4
                           6014 ;	Peephole 181	changed mov to clr
   3121 E4                 6015 	clr	a
   3122 9D                 6016 	subb	a,r5
                           6017 ;	genIfxJump
                           6018 ;	Peephole 108.a	removed ljmp by inverse jump logic
   3123 50 07              6019 	jnc	00128$
                           6020 ;	Peephole 300	removed redundant label 00166$
                           6021 ;	FatDrivers/tff.c:730: fmt = FS_FAT32;
                           6022 ;	genAssign
   3125 E5 10              6023 	mov	a,_bp
   3127 24 04              6024 	add	a,#0x04
   3129 F8                 6025 	mov	r0,a
   312A 76 03              6026 	mov	@r0,#0x03
   312C                    6027 00128$:
                           6028 ;	FatDrivers/tff.c:731: if (fmt == FS_FAT32)
                           6029 ;	genCmpEq
   312C E5 10              6030 	mov	a,_bp
   312E 24 04              6031 	add	a,#0x04
   3130 F8                 6032 	mov	r0,a
                           6033 ;	gencjneshort
                           6034 ;	Peephole 112.b	changed ljmp to sjmp
                           6035 ;	Peephole 198.b	optimized misc jump sequence
   3131 B6 03 69           6036 	cjne	@r0,#0x03,00130$
                           6037 ;	Peephole 200.b	removed redundant sjmp
                           6038 ;	Peephole 300	removed redundant label 00167$
                           6039 ;	Peephole 300	removed redundant label 00168$
                           6040 ;	FatDrivers/tff.c:732: fs->dirbase = LD_DWORD(&fs->win[BPB_RootClus]);	/* Root directory start cluster */
                           6041 ;	genIpush
                           6042 ;	genPlus
   3134 E5 10              6043 	mov	a,_bp
   3136 24 15              6044 	add	a,#0x15
   3138 F8                 6045 	mov	r0,a
   3139 E5 10              6046 	mov	a,_bp
   313B 24 2A              6047 	add	a,#0x2a
   313D F9                 6048 	mov	r1,a
                           6049 ;     genPlusIncr
   313E 74 0C              6050 	mov	a,#0x0C
   3140 26                 6051 	add	a,@r0
   3141 F7                 6052 	mov	@r1,a
                           6053 ;	Peephole 181	changed mov to clr
   3142 E4                 6054 	clr	a
   3143 08                 6055 	inc	r0
   3144 36                 6056 	addc	a,@r0
   3145 09                 6057 	inc	r1
   3146 F7                 6058 	mov	@r1,a
   3147 08                 6059 	inc	r0
   3148 09                 6060 	inc	r1
   3149 E6                 6061 	mov	a,@r0
   314A F7                 6062 	mov	@r1,a
                           6063 ;	genPlus
   314B E5 10              6064 	mov	a,_bp
   314D 24 15              6065 	add	a,#0x15
   314F F8                 6066 	mov	r0,a
                           6067 ;     genPlusIncr
   3150 74 20              6068 	mov	a,#0x20
   3152 26                 6069 	add	a,@r0
   3153 FE                 6070 	mov	r6,a
                           6071 ;	Peephole 181	changed mov to clr
   3154 E4                 6072 	clr	a
   3155 08                 6073 	inc	r0
   3156 36                 6074 	addc	a,@r0
   3157 FF                 6075 	mov	r7,a
   3158 08                 6076 	inc	r0
   3159 86 02              6077 	mov	ar2,@r0
                           6078 ;	genPlus
                           6079 ;     genPlusIncr
   315B 74 2C              6080 	mov	a,#0x2C
                           6081 ;	Peephole 236.a	used r6 instead of ar6
   315D 2E                 6082 	add	a,r6
   315E FE                 6083 	mov	r6,a
                           6084 ;	Peephole 181	changed mov to clr
   315F E4                 6085 	clr	a
                           6086 ;	Peephole 236.b	used r7 instead of ar7
   3160 3F                 6087 	addc	a,r7
   3161 FF                 6088 	mov	r7,a
                           6089 ;	genPointerGet
                           6090 ;	genGenPointerGet
   3162 8E 82              6091 	mov	dpl,r6
   3164 8F 83              6092 	mov	dph,r7
   3166 8A F0              6093 	mov	b,r2
   3168 12 62 42           6094 	lcall	__gptrget
   316B FA                 6095 	mov	r2,a
   316C A3                 6096 	inc	dptr
   316D 12 62 42           6097 	lcall	__gptrget
   3170 FE                 6098 	mov	r6,a
   3171 A3                 6099 	inc	dptr
   3172 12 62 42           6100 	lcall	__gptrget
   3175 FF                 6101 	mov	r7,a
   3176 A3                 6102 	inc	dptr
   3177 12 62 42           6103 	lcall	__gptrget
   317A FB                 6104 	mov	r3,a
                           6105 ;	genPointerSet
                           6106 ;	genGenPointerSet
   317B E5 10              6107 	mov	a,_bp
   317D 24 2A              6108 	add	a,#0x2a
   317F F8                 6109 	mov	r0,a
   3180 86 82              6110 	mov	dpl,@r0
   3182 08                 6111 	inc	r0
   3183 86 83              6112 	mov	dph,@r0
   3185 08                 6113 	inc	r0
   3186 86 F0              6114 	mov	b,@r0
   3188 EA                 6115 	mov	a,r2
   3189 12 5E A4           6116 	lcall	__gptrput
   318C A3                 6117 	inc	dptr
   318D EE                 6118 	mov	a,r6
   318E 12 5E A4           6119 	lcall	__gptrput
   3191 A3                 6120 	inc	dptr
   3192 EF                 6121 	mov	a,r7
   3193 12 5E A4           6122 	lcall	__gptrput
   3196 A3                 6123 	inc	dptr
   3197 EB                 6124 	mov	a,r3
   3198 12 5E A4           6125 	lcall	__gptrput
                           6126 ;	genIpop
                           6127 ;	Peephole 112.b	changed ljmp to sjmp
   319B 80 6B              6128 	sjmp	00131$
   319D                    6129 00130$:
                           6130 ;	FatDrivers/tff.c:735: fs->dirbase = fs->fatbase + fatsize;			/* Root directory start sector (lba) */
                           6131 ;	genIpush
                           6132 ;	genPlus
   319D E5 10              6133 	mov	a,_bp
   319F 24 15              6134 	add	a,#0x15
   31A1 F8                 6135 	mov	r0,a
   31A2 E5 10              6136 	mov	a,_bp
   31A4 24 2A              6137 	add	a,#0x2a
   31A6 F9                 6138 	mov	r1,a
                           6139 ;     genPlusIncr
   31A7 74 0C              6140 	mov	a,#0x0C
   31A9 26                 6141 	add	a,@r0
   31AA F7                 6142 	mov	@r1,a
                           6143 ;	Peephole 181	changed mov to clr
   31AB E4                 6144 	clr	a
   31AC 08                 6145 	inc	r0
   31AD 36                 6146 	addc	a,@r0
   31AE 09                 6147 	inc	r1
   31AF F7                 6148 	mov	@r1,a
   31B0 08                 6149 	inc	r0
   31B1 09                 6150 	inc	r1
   31B2 E6                 6151 	mov	a,@r0
   31B3 F7                 6152 	mov	@r1,a
                           6153 ;	genPointerGet
                           6154 ;	genGenPointerGet
   31B4 E5 10              6155 	mov	a,_bp
   31B6 24 1C              6156 	add	a,#0x1c
   31B8 F8                 6157 	mov	r0,a
   31B9 86 82              6158 	mov	dpl,@r0
   31BB 08                 6159 	inc	r0
   31BC 86 83              6160 	mov	dph,@r0
   31BE 08                 6161 	inc	r0
   31BF 86 F0              6162 	mov	b,@r0
   31C1 12 62 42           6163 	lcall	__gptrget
   31C4 FE                 6164 	mov	r6,a
   31C5 A3                 6165 	inc	dptr
   31C6 12 62 42           6166 	lcall	__gptrget
   31C9 FF                 6167 	mov	r7,a
   31CA A3                 6168 	inc	dptr
   31CB 12 62 42           6169 	lcall	__gptrget
   31CE FA                 6170 	mov	r2,a
   31CF A3                 6171 	inc	dptr
   31D0 12 62 42           6172 	lcall	__gptrget
   31D3 FB                 6173 	mov	r3,a
                           6174 ;	genPlus
   31D4 E5 10              6175 	mov	a,_bp
   31D6 24 09              6176 	add	a,#0x09
   31D8 F8                 6177 	mov	r0,a
   31D9 E6                 6178 	mov	a,@r0
                           6179 ;	Peephole 236.a	used r6 instead of ar6
   31DA 2E                 6180 	add	a,r6
   31DB FE                 6181 	mov	r6,a
   31DC 08                 6182 	inc	r0
   31DD E6                 6183 	mov	a,@r0
                           6184 ;	Peephole 236.b	used r7 instead of ar7
   31DE 3F                 6185 	addc	a,r7
   31DF FF                 6186 	mov	r7,a
   31E0 08                 6187 	inc	r0
   31E1 E6                 6188 	mov	a,@r0
                           6189 ;	Peephole 236.b	used r2 instead of ar2
   31E2 3A                 6190 	addc	a,r2
   31E3 FA                 6191 	mov	r2,a
   31E4 08                 6192 	inc	r0
   31E5 E6                 6193 	mov	a,@r0
                           6194 ;	Peephole 236.b	used r3 instead of ar3
   31E6 3B                 6195 	addc	a,r3
   31E7 FB                 6196 	mov	r3,a
                           6197 ;	genPointerSet
                           6198 ;	genGenPointerSet
   31E8 E5 10              6199 	mov	a,_bp
   31EA 24 2A              6200 	add	a,#0x2a
   31EC F8                 6201 	mov	r0,a
   31ED 86 82              6202 	mov	dpl,@r0
   31EF 08                 6203 	inc	r0
   31F0 86 83              6204 	mov	dph,@r0
   31F2 08                 6205 	inc	r0
   31F3 86 F0              6206 	mov	b,@r0
   31F5 EE                 6207 	mov	a,r6
   31F6 12 5E A4           6208 	lcall	__gptrput
   31F9 A3                 6209 	inc	dptr
   31FA EF                 6210 	mov	a,r7
   31FB 12 5E A4           6211 	lcall	__gptrput
   31FE A3                 6212 	inc	dptr
   31FF EA                 6213 	mov	a,r2
   3200 12 5E A4           6214 	lcall	__gptrput
   3203 A3                 6215 	inc	dptr
   3204 EB                 6216 	mov	a,r3
   3205 12 5E A4           6217 	lcall	__gptrput
                           6218 ;	FatDrivers/tff.c:756: return FR_OK;
                           6219 ;	genIpop
                           6220 ;	FatDrivers/tff.c:735: fs->dirbase = fs->fatbase + fatsize;			/* Root directory start sector (lba) */
   3208                    6221 00131$:
                           6222 ;	FatDrivers/tff.c:736: fs->database = fs->fatbase + fatsize + fs->n_rootdir / 16;	/* Data start sector (lba) */
                           6223 ;	genPlus
   3208 E5 10              6224 	mov	a,_bp
   320A 24 15              6225 	add	a,#0x15
   320C F8                 6226 	mov	r0,a
   320D E5 10              6227 	mov	a,_bp
   320F 24 2A              6228 	add	a,#0x2a
   3211 F9                 6229 	mov	r1,a
                           6230 ;     genPlusIncr
   3212 74 10              6231 	mov	a,#0x10
   3214 26                 6232 	add	a,@r0
   3215 F7                 6233 	mov	@r1,a
                           6234 ;	Peephole 181	changed mov to clr
   3216 E4                 6235 	clr	a
   3217 08                 6236 	inc	r0
   3218 36                 6237 	addc	a,@r0
   3219 09                 6238 	inc	r1
   321A F7                 6239 	mov	@r1,a
   321B 08                 6240 	inc	r0
   321C 09                 6241 	inc	r1
   321D E6                 6242 	mov	a,@r0
   321E F7                 6243 	mov	@r1,a
                           6244 ;	genPointerGet
                           6245 ;	genGenPointerGet
   321F E5 10              6246 	mov	a,_bp
   3221 24 1C              6247 	add	a,#0x1c
   3223 F8                 6248 	mov	r0,a
   3224 86 82              6249 	mov	dpl,@r0
   3226 08                 6250 	inc	r0
   3227 86 83              6251 	mov	dph,@r0
   3229 08                 6252 	inc	r0
   322A 86 F0              6253 	mov	b,@r0
   322C 12 62 42           6254 	lcall	__gptrget
   322F FE                 6255 	mov	r6,a
   3230 A3                 6256 	inc	dptr
   3231 12 62 42           6257 	lcall	__gptrget
   3234 FF                 6258 	mov	r7,a
   3235 A3                 6259 	inc	dptr
   3236 12 62 42           6260 	lcall	__gptrget
   3239 FA                 6261 	mov	r2,a
   323A A3                 6262 	inc	dptr
   323B 12 62 42           6263 	lcall	__gptrget
   323E FB                 6264 	mov	r3,a
                           6265 ;	genPlus
   323F E5 10              6266 	mov	a,_bp
   3241 24 09              6267 	add	a,#0x09
   3243 F8                 6268 	mov	r0,a
   3244 E5 10              6269 	mov	a,_bp
   3246 24 26              6270 	add	a,#0x26
   3248 F9                 6271 	mov	r1,a
   3249 E6                 6272 	mov	a,@r0
                           6273 ;	Peephole 236.a	used r6 instead of ar6
   324A 2E                 6274 	add	a,r6
   324B F7                 6275 	mov	@r1,a
   324C 08                 6276 	inc	r0
   324D E6                 6277 	mov	a,@r0
                           6278 ;	Peephole 236.b	used r7 instead of ar7
   324E 3F                 6279 	addc	a,r7
   324F 09                 6280 	inc	r1
   3250 F7                 6281 	mov	@r1,a
   3251 08                 6282 	inc	r0
   3252 E6                 6283 	mov	a,@r0
                           6284 ;	Peephole 236.b	used r2 instead of ar2
   3253 3A                 6285 	addc	a,r2
   3254 09                 6286 	inc	r1
   3255 F7                 6287 	mov	@r1,a
   3256 08                 6288 	inc	r0
   3257 E6                 6289 	mov	a,@r0
                           6290 ;	Peephole 236.b	used r3 instead of ar3
   3258 3B                 6291 	addc	a,r3
   3259 09                 6292 	inc	r1
   325A F7                 6293 	mov	@r1,a
                           6294 ;	genPointerGet
                           6295 ;	genGenPointerGet
   325B E5 10              6296 	mov	a,_bp
   325D 24 23              6297 	add	a,#0x23
   325F F8                 6298 	mov	r0,a
   3260 86 82              6299 	mov	dpl,@r0
   3262 08                 6300 	inc	r0
   3263 86 83              6301 	mov	dph,@r0
   3265 08                 6302 	inc	r0
   3266 86 F0              6303 	mov	b,@r0
   3268 12 62 42           6304 	lcall	__gptrget
   326B FC                 6305 	mov	r4,a
   326C A3                 6306 	inc	dptr
   326D 12 62 42           6307 	lcall	__gptrget
                           6308 ;	genRightShift
                           6309 ;	genRightShiftLiteral
                           6310 ;	genrshTwo
   3270 FD                 6311 	mov	r5,a
                           6312 ;	Peephole 105	removed redundant mov
   3271 C4                 6313 	swap	a
   3272 CC                 6314 	xch	a,r4
   3273 C4                 6315 	swap	a
   3274 54 0F              6316 	anl	a,#0x0f
   3276 6C                 6317 	xrl	a,r4
   3277 CC                 6318 	xch	a,r4
   3278 54 0F              6319 	anl	a,#0x0f
   327A CC                 6320 	xch	a,r4
   327B 6C                 6321 	xrl	a,r4
   327C CC                 6322 	xch	a,r4
   327D FD                 6323 	mov	r5,a
                           6324 ;	genCast
                           6325 ;	genPlus
                           6326 ;	Peephole 3.c	changed mov to clr
   327E E4                 6327 	clr	a
   327F FA                 6328 	mov	r2,a
   3280 FB                 6329 	mov	r3,a
   3281 E5 10              6330 	mov	a,_bp
   3283 24 26              6331 	add	a,#0x26
   3285 F8                 6332 	mov	r0,a
                           6333 ;	Peephole 236.g	used r4 instead of ar4
   3286 EC                 6334 	mov	a,r4
   3287 26                 6335 	add	a,@r0
   3288 FC                 6336 	mov	r4,a
                           6337 ;	Peephole 236.g	used r5 instead of ar5
   3289 ED                 6338 	mov	a,r5
   328A 08                 6339 	inc	r0
   328B 36                 6340 	addc	a,@r0
   328C FD                 6341 	mov	r5,a
                           6342 ;	Peephole 236.g	used r2 instead of ar2
   328D EA                 6343 	mov	a,r2
   328E 08                 6344 	inc	r0
   328F 36                 6345 	addc	a,@r0
   3290 FA                 6346 	mov	r2,a
                           6347 ;	Peephole 236.g	used r3 instead of ar3
   3291 EB                 6348 	mov	a,r3
   3292 08                 6349 	inc	r0
   3293 36                 6350 	addc	a,@r0
   3294 FB                 6351 	mov	r3,a
                           6352 ;	genPointerSet
                           6353 ;	genGenPointerSet
   3295 E5 10              6354 	mov	a,_bp
   3297 24 2A              6355 	add	a,#0x2a
   3299 F8                 6356 	mov	r0,a
   329A 86 82              6357 	mov	dpl,@r0
   329C 08                 6358 	inc	r0
   329D 86 83              6359 	mov	dph,@r0
   329F 08                 6360 	inc	r0
   32A0 86 F0              6361 	mov	b,@r0
   32A2 EC                 6362 	mov	a,r4
   32A3 12 5E A4           6363 	lcall	__gptrput
   32A6 A3                 6364 	inc	dptr
   32A7 ED                 6365 	mov	a,r5
   32A8 12 5E A4           6366 	lcall	__gptrput
   32AB A3                 6367 	inc	dptr
   32AC EA                 6368 	mov	a,r2
   32AD 12 5E A4           6369 	lcall	__gptrput
   32B0 A3                 6370 	inc	dptr
   32B1 EB                 6371 	mov	a,r3
   32B2 12 5E A4           6372 	lcall	__gptrput
                           6373 ;	FatDrivers/tff.c:737: fs->fs_type = fmt;									/* FAT sub-type */
                           6374 ;	genPlus
   32B5 E5 10              6375 	mov	a,_bp
   32B7 24 15              6376 	add	a,#0x15
   32B9 F8                 6377 	mov	r0,a
                           6378 ;     genPlusIncr
   32BA 74 1C              6379 	mov	a,#0x1C
   32BC 26                 6380 	add	a,@r0
   32BD FA                 6381 	mov	r2,a
                           6382 ;	Peephole 181	changed mov to clr
   32BE E4                 6383 	clr	a
   32BF 08                 6384 	inc	r0
   32C0 36                 6385 	addc	a,@r0
   32C1 FB                 6386 	mov	r3,a
   32C2 08                 6387 	inc	r0
   32C3 86 04              6388 	mov	ar4,@r0
                           6389 ;	genPointerSet
                           6390 ;	genGenPointerSet
   32C5 8A 82              6391 	mov	dpl,r2
   32C7 8B 83              6392 	mov	dph,r3
   32C9 8C F0              6393 	mov	b,r4
   32CB E5 10              6394 	mov	a,_bp
   32CD 24 04              6395 	add	a,#0x04
   32CF F8                 6396 	mov	r0,a
   32D0 E6                 6397 	mov	a,@r0
   32D1 12 5E A4           6398 	lcall	__gptrput
                           6399 ;	FatDrivers/tff.c:755: fs->id = ++fsid;									/* File system mount ID */
                           6400 ;	genPlus
                           6401 ;     genPlusIncr
   32D4 05 0C              6402 	inc	_fsid
   32D6 E4                 6403 	clr	a
   32D7 B5 0C 02           6404 	cjne	a,_fsid,00169$
   32DA 05 0D              6405 	inc	(_fsid + 1)
   32DC                    6406 00169$:
                           6407 ;	genPointerSet
                           6408 ;	genGenPointerSet
   32DC E5 10              6409 	mov	a,_bp
   32DE 24 15              6410 	add	a,#0x15
   32E0 F8                 6411 	mov	r0,a
   32E1 86 82              6412 	mov	dpl,@r0
   32E3 08                 6413 	inc	r0
   32E4 86 83              6414 	mov	dph,@r0
   32E6 08                 6415 	inc	r0
   32E7 86 F0              6416 	mov	b,@r0
   32E9 E5 0C              6417 	mov	a,_fsid
   32EB 12 5E A4           6418 	lcall	__gptrput
   32EE A3                 6419 	inc	dptr
   32EF E5 0D              6420 	mov	a,(_fsid + 1)
   32F1 12 5E A4           6421 	lcall	__gptrput
                           6422 ;	FatDrivers/tff.c:756: return FR_OK;
                           6423 ;	genRet
   32F4 75 82 00           6424 	mov	dpl,#0x00
   32F7                    6425 00132$:
   32F7 85 10 81           6426 	mov	sp,_bp
   32FA D0 10              6427 	pop	_bp
   32FC 22                 6428 	ret
                           6429 ;------------------------------------------------------------
                           6430 ;Allocation info for local variables in function 'validate'
                           6431 ;------------------------------------------------------------
                           6432 ;id                        Allocated to stack - offset -4
                           6433 ;fs                        Allocated to registers r2 r3 r4 
                           6434 ;------------------------------------------------------------
                           6435 ;	FatDrivers/tff.c:767: FRESULT validate (		/* FR_OK(0): The id is valid, !=0: Not valid */
                           6436 ;	-----------------------------------------
                           6437 ;	 function validate
                           6438 ;	-----------------------------------------
   32FD                    6439 _validate:
   32FD C0 10              6440 	push	_bp
   32FF 85 81 10           6441 	mov	_bp,sp
                           6442 ;	genReceive
   3302 AA 82              6443 	mov	r2,dpl
   3304 AB 83              6444 	mov	r3,dph
   3306 AC F0              6445 	mov	r4,b
                           6446 ;	FatDrivers/tff.c:772: if (!fs || fs->id != id)
                           6447 ;	genIfx
   3308 EA                 6448 	mov	a,r2
   3309 4B                 6449 	orl	a,r3
   330A 4C                 6450 	orl	a,r4
                           6451 ;	genIfxJump
                           6452 ;	Peephole 108.c	removed ljmp by inverse jump logic
   330B 60 1F              6453 	jz	00101$
                           6454 ;	Peephole 300	removed redundant label 00110$
                           6455 ;	genPointerGet
                           6456 ;	genGenPointerGet
   330D 8A 82              6457 	mov	dpl,r2
   330F 8B 83              6458 	mov	dph,r3
   3311 8C F0              6459 	mov	b,r4
   3313 12 62 42           6460 	lcall	__gptrget
   3316 FA                 6461 	mov	r2,a
   3317 A3                 6462 	inc	dptr
   3318 12 62 42           6463 	lcall	__gptrget
   331B FB                 6464 	mov	r3,a
                           6465 ;	genCmpEq
   331C E5 10              6466 	mov	a,_bp
   331E 24 FC              6467 	add	a,#0xfffffffc
   3320 F8                 6468 	mov	r0,a
                           6469 ;	gencjneshort
   3321 E6                 6470 	mov	a,@r0
   3322 B5 02 07           6471 	cjne	a,ar2,00111$
   3325 08                 6472 	inc	r0
   3326 E6                 6473 	mov	a,@r0
   3327 B5 03 02           6474 	cjne	a,ar3,00111$
                           6475 ;	Peephole 112.b	changed ljmp to sjmp
   332A 80 05              6476 	sjmp	00102$
   332C                    6477 00111$:
   332C                    6478 00101$:
                           6479 ;	FatDrivers/tff.c:773: return FR_INVALID_OBJECT;
                           6480 ;	genRet
   332C 75 82 0C           6481 	mov	dpl,#0x0C
                           6482 ;	Peephole 112.b	changed ljmp to sjmp
   332F 80 13              6483 	sjmp	00106$
   3331                    6484 00102$:
                           6485 ;	FatDrivers/tff.c:774: if (disk_status(0) & STA_NOINIT)
                           6486 ;	genCall
   3331 75 82 00           6487 	mov	dpl,#0x00
   3334 12 0D 2C           6488 	lcall	_disk_status
   3337 E5 82              6489 	mov	a,dpl
                           6490 ;	genAnd
                           6491 ;	genIfxJump
                           6492 ;	Peephole 108.d	removed ljmp by inverse jump logic
   3339 30 E0 05           6493 	jnb	acc.0,00105$
                           6494 ;	Peephole 300	removed redundant label 00112$
                           6495 ;	FatDrivers/tff.c:775: return FR_NOT_READY;
                           6496 ;	genRet
   333C 75 82 01           6497 	mov	dpl,#0x01
                           6498 ;	Peephole 112.b	changed ljmp to sjmp
   333F 80 03              6499 	sjmp	00106$
   3341                    6500 00105$:
                           6501 ;	FatDrivers/tff.c:777: return FR_OK;
                           6502 ;	genRet
   3341 75 82 00           6503 	mov	dpl,#0x00
   3344                    6504 00106$:
   3344 D0 10              6505 	pop	_bp
   3346 22                 6506 	ret
                           6507 ;------------------------------------------------------------
                           6508 ;Allocation info for local variables in function 'f_mount'
                           6509 ;------------------------------------------------------------
                           6510 ;fs                        Allocated to stack - offset -5
                           6511 ;drv                       Allocated to registers r2 
                           6512 ;fsobj                     Allocated to registers r2 r3 r4 
                           6513 ;------------------------------------------------------------
                           6514 ;	FatDrivers/tff.c:792: FRESULT f_mount (
                           6515 ;	-----------------------------------------
                           6516 ;	 function f_mount
                           6517 ;	-----------------------------------------
   3347                    6518 _f_mount:
   3347 C0 10              6519 	push	_bp
   3349 85 81 10           6520 	mov	_bp,sp
                           6521 ;	genReceive
                           6522 ;	FatDrivers/tff.c:800: if (drv) return FR_INVALID_DRIVE;
                           6523 ;	genIfx
                           6524 ;	peephole 177.g	optimized mov sequence
   334C E5 82              6525 	mov	a,dpl
   334E FA                 6526 	mov	r2,a
                           6527 ;	genIfxJump
                           6528 ;	Peephole 108.c	removed ljmp by inverse jump logic
   334F 60 05              6529 	jz	00102$
                           6530 ;	Peephole 300	removed redundant label 00112$
                           6531 ;	genRet
   3351 75 82 05           6532 	mov	dpl,#0x05
                           6533 ;	Peephole 112.b	changed ljmp to sjmp
   3354 80 66              6534 	sjmp	00107$
   3356                    6535 00102$:
                           6536 ;	FatDrivers/tff.c:801: fsobj = FatFs;
                           6537 ;	genAssign
   3356 AA 09              6538 	mov	r2,_FatFs
   3358 AB 0A              6539 	mov	r3,(_FatFs + 1)
   335A AC 0B              6540 	mov	r4,(_FatFs + 2)
                           6541 ;	FatDrivers/tff.c:802: FatFs = fs;
                           6542 ;	genAssign
   335C E5 10              6543 	mov	a,_bp
   335E 24 FB              6544 	add	a,#0xfffffffb
   3360 F8                 6545 	mov	r0,a
   3361 86 05              6546 	mov	ar5,@r0
   3363 08                 6547 	inc	r0
   3364 86 06              6548 	mov	ar6,@r0
   3366 08                 6549 	inc	r0
   3367 86 07              6550 	mov	ar7,@r0
                           6551 ;	genAssign
   3369 8D 09              6552 	mov	_FatFs,r5
   336B 8E 0A              6553 	mov	(_FatFs + 1),r6
   336D 8F 0B              6554 	mov	(_FatFs + 2),r7
                           6555 ;	FatDrivers/tff.c:803: if (fsobj) memset(fsobj, 0, sizeof(FATFS));
                           6556 ;	genIfx
   336F EA                 6557 	mov	a,r2
   3370 4B                 6558 	orl	a,r3
   3371 4C                 6559 	orl	a,r4
                           6560 ;	genIfxJump
                           6561 ;	Peephole 108.c	removed ljmp by inverse jump logic
   3372 60 26              6562 	jz	00104$
                           6563 ;	Peephole 300	removed redundant label 00113$
                           6564 ;	genIpush
   3374 C0 05              6565 	push	ar5
   3376 C0 06              6566 	push	ar6
   3378 C0 07              6567 	push	ar7
   337A 74 20              6568 	mov	a,#0x20
   337C C0 E0              6569 	push	acc
   337E 74 02              6570 	mov	a,#0x02
   3380 C0 E0              6571 	push	acc
                           6572 ;	genIpush
                           6573 ;	Peephole 181	changed mov to clr
   3382 E4                 6574 	clr	a
   3383 C0 E0              6575 	push	acc
                           6576 ;	genCall
   3385 8A 82              6577 	mov	dpl,r2
   3387 8B 83              6578 	mov	dph,r3
   3389 8C F0              6579 	mov	b,r4
   338B 12 61 11           6580 	lcall	_memset
   338E 15 81              6581 	dec	sp
   3390 15 81              6582 	dec	sp
   3392 15 81              6583 	dec	sp
   3394 D0 07              6584 	pop	ar7
   3396 D0 06              6585 	pop	ar6
   3398 D0 05              6586 	pop	ar5
   339A                    6587 00104$:
                           6588 ;	FatDrivers/tff.c:804: if (fs) memset(fs, 0, sizeof(FATFS));
                           6589 ;	genIfx
   339A ED                 6590 	mov	a,r5
   339B 4E                 6591 	orl	a,r6
   339C 4F                 6592 	orl	a,r7
                           6593 ;	genIfxJump
                           6594 ;	Peephole 108.c	removed ljmp by inverse jump logic
   339D 60 1A              6595 	jz	00106$
                           6596 ;	Peephole 300	removed redundant label 00114$
                           6597 ;	genAssign
                           6598 ;	genIpush
   339F 74 20              6599 	mov	a,#0x20
   33A1 C0 E0              6600 	push	acc
   33A3 74 02              6601 	mov	a,#0x02
   33A5 C0 E0              6602 	push	acc
                           6603 ;	genIpush
                           6604 ;	Peephole 181	changed mov to clr
   33A7 E4                 6605 	clr	a
   33A8 C0 E0              6606 	push	acc
                           6607 ;	genCall
   33AA 8D 82              6608 	mov	dpl,r5
   33AC 8E 83              6609 	mov	dph,r6
   33AE 8F F0              6610 	mov	b,r7
   33B0 12 61 11           6611 	lcall	_memset
   33B3 15 81              6612 	dec	sp
   33B5 15 81              6613 	dec	sp
   33B7 15 81              6614 	dec	sp
   33B9                    6615 00106$:
                           6616 ;	FatDrivers/tff.c:806: return FR_OK;
                           6617 ;	genRet
   33B9 75 82 00           6618 	mov	dpl,#0x00
   33BC                    6619 00107$:
   33BC D0 10              6620 	pop	_bp
   33BE 22                 6621 	ret
                           6622 ;------------------------------------------------------------
                           6623 ;Allocation info for local variables in function 'f_open'
                           6624 ;------------------------------------------------------------
                           6625 ;path                      Allocated to stack - offset -5
                           6626 ;mode                      Allocated to stack - offset -6
                           6627 ;fp                        Allocated to stack - offset 1
                           6628 ;res                       Allocated to registers r2 
                           6629 ;dir                       Allocated to stack - offset 4
                           6630 ;dirobj                    Allocated to stack - offset 7
                           6631 ;fn                        Allocated to stack - offset 26
                           6632 ;fs                        Allocated to stack - offset 38
                           6633 ;sloc0                     Allocated to stack - offset 41
                           6634 ;sloc1                     Allocated to stack - offset 44
                           6635 ;sloc2                     Allocated to stack - offset 47
                           6636 ;sloc3                     Allocated to stack - offset 50
                           6637 ;------------------------------------------------------------
                           6638 ;	FatDrivers/tff.c:813: FRESULT f_open (
                           6639 ;	-----------------------------------------
                           6640 ;	 function f_open
                           6641 ;	-----------------------------------------
   33BF                    6642 _f_open:
   33BF C0 10              6643 	push	_bp
   33C1 85 81 10           6644 	mov	_bp,sp
                           6645 ;     genReceive
   33C4 C0 82              6646 	push	dpl
   33C6 C0 83              6647 	push	dph
   33C8 C0 F0              6648 	push	b
   33CA E5 81              6649 	mov	a,sp
   33CC 24 35              6650 	add	a,#0x35
   33CE F5 81              6651 	mov	sp,a
                           6652 ;	FatDrivers/tff.c:823: FATFS *fs = FatFs;
                           6653 ;	genAssign
   33D0 E5 10              6654 	mov	a,_bp
   33D2 24 26              6655 	add	a,#0x26
   33D4 F8                 6656 	mov	r0,a
   33D5 A6 09              6657 	mov	@r0,_FatFs
   33D7 08                 6658 	inc	r0
   33D8 A6 0A              6659 	mov	@r0,(_FatFs + 1)
   33DA 08                 6660 	inc	r0
   33DB A6 0B              6661 	mov	@r0,(_FatFs + 2)
                           6662 ;	FatDrivers/tff.c:826: fp->fs = NULL;
                           6663 ;	genPlus
   33DD A8 10              6664 	mov	r0,_bp
   33DF 08                 6665 	inc	r0
   33E0 E5 10              6666 	mov	a,_bp
   33E2 24 2F              6667 	add	a,#0x2f
   33E4 F9                 6668 	mov	r1,a
                           6669 ;     genPlusIncr
   33E5 74 04              6670 	mov	a,#0x04
   33E7 26                 6671 	add	a,@r0
   33E8 F7                 6672 	mov	@r1,a
                           6673 ;	Peephole 181	changed mov to clr
   33E9 E4                 6674 	clr	a
   33EA 08                 6675 	inc	r0
   33EB 36                 6676 	addc	a,@r0
   33EC 09                 6677 	inc	r1
   33ED F7                 6678 	mov	@r1,a
   33EE 08                 6679 	inc	r0
   33EF 09                 6680 	inc	r1
   33F0 E6                 6681 	mov	a,@r0
   33F1 F7                 6682 	mov	@r1,a
                           6683 ;	genPointerSet
                           6684 ;	genGenPointerSet
   33F2 E5 10              6685 	mov	a,_bp
   33F4 24 2F              6686 	add	a,#0x2f
   33F6 F8                 6687 	mov	r0,a
   33F7 86 82              6688 	mov	dpl,@r0
   33F9 08                 6689 	inc	r0
   33FA 86 83              6690 	mov	dph,@r0
   33FC 08                 6691 	inc	r0
   33FD 86 F0              6692 	mov	b,@r0
                           6693 ;	Peephole 181	changed mov to clr
   33FF E4                 6694 	clr	a
   3400 12 5E A4           6695 	lcall	__gptrput
   3403 A3                 6696 	inc	dptr
                           6697 ;	Peephole 181	changed mov to clr
   3404 E4                 6698 	clr	a
   3405 12 5E A4           6699 	lcall	__gptrput
   3408 A3                 6700 	inc	dptr
                           6701 ;	Peephole 181	changed mov to clr
   3409 E4                 6702 	clr	a
   340A 12 5E A4           6703 	lcall	__gptrput
                           6704 ;	FatDrivers/tff.c:831: mode &= FA_READ;
                           6705 ;	genAnd
   340D E5 10              6706 	mov	a,_bp
   340F 24 FA              6707 	add	a,#0xfffffffa
   3411 F8                 6708 	mov	r0,a
   3412 E6                 6709 	mov	a,@r0
   3413 54 01              6710 	anl	a,#0x01
   3415 F6                 6711 	mov	@r0,a
                           6712 ;	FatDrivers/tff.c:832: res = auto_mount(&path, 0);
                           6713 ;	genAddrOf
   3416 E5 10              6714 	mov	a,_bp
   3418 24 FB              6715 	add	a,#0xfb
   341A FA                 6716 	mov	r2,a
                           6717 ;	genCast
   341B 7B 00              6718 	mov	r3,#0x00
   341D 7C 40              6719 	mov	r4,#0x40
                           6720 ;	genIpush
                           6721 ;	Peephole 181	changed mov to clr
   341F E4                 6722 	clr	a
   3420 C0 E0              6723 	push	acc
                           6724 ;	genCall
   3422 8A 82              6725 	mov	dpl,r2
   3424 8B 83              6726 	mov	dph,r3
   3426 8C F0              6727 	mov	b,r4
   3428 12 2B 2E           6728 	lcall	_auto_mount
   342B AA 82              6729 	mov	r2,dpl
   342D 15 81              6730 	dec	sp
                           6731 ;	genAssign
                           6732 ;	FatDrivers/tff.c:834: if (res != FR_OK) return res;
                           6733 ;	genCmpEq
                           6734 ;	gencjneshort
   342F BA 00 02           6735 	cjne	r2,#0x00,00113$
                           6736 ;	Peephole 112.b	changed ljmp to sjmp
   3432 80 05              6737 	sjmp	00102$
   3434                    6738 00113$:
                           6739 ;	genRet
   3434 8A 82              6740 	mov	dpl,r2
   3436 02 36 82           6741 	ljmp	00108$
   3439                    6742 00102$:
                           6743 ;	FatDrivers/tff.c:837: res = trace_path(&dirobj, fn, path, &dir);	/* Trace the file path */
                           6744 ;	genIpush
                           6745 ;	genAddrOf
   3439 E5 10              6746 	mov	a,_bp
   343B 24 04              6747 	add	a,#0x04
   343D FB                 6748 	mov	r3,a
                           6749 ;	genCast
   343E E5 10              6750 	mov	a,_bp
   3440 24 29              6751 	add	a,#0x29
   3442 F8                 6752 	mov	r0,a
   3443 A6 03              6753 	mov	@r0,ar3
   3445 08                 6754 	inc	r0
   3446 76 00              6755 	mov	@r0,#0x00
   3448 08                 6756 	inc	r0
   3449 76 40              6757 	mov	@r0,#0x40
                           6758 ;	genAddrOf
   344B E5 10              6759 	mov	a,_bp
   344D 24 1A              6760 	add	a,#0x1a
   344F FE                 6761 	mov	r6,a
                           6762 ;	genCast
   3450 7A 00              6763 	mov	r2,#0x00
   3452 7F 40              6764 	mov	r7,#0x40
                           6765 ;	genAddrOf
   3454 E5 10              6766 	mov	a,_bp
   3456 24 07              6767 	add	a,#0x07
   3458 FC                 6768 	mov	r4,a
                           6769 ;	genCast
   3459 7D 00              6770 	mov	r5,#0x00
   345B 7B 40              6771 	mov	r3,#0x40
                           6772 ;	genIpush
   345D E5 10              6773 	mov	a,_bp
   345F 24 29              6774 	add	a,#0x29
   3461 F8                 6775 	mov	r0,a
   3462 E6                 6776 	mov	a,@r0
   3463 C0 E0              6777 	push	acc
   3465 08                 6778 	inc	r0
   3466 E6                 6779 	mov	a,@r0
   3467 C0 E0              6780 	push	acc
   3469 08                 6781 	inc	r0
   346A E6                 6782 	mov	a,@r0
   346B C0 E0              6783 	push	acc
                           6784 ;	genIpush
   346D E5 10              6785 	mov	a,_bp
   346F 24 FB              6786 	add	a,#0xfffffffb
   3471 F8                 6787 	mov	r0,a
   3472 E6                 6788 	mov	a,@r0
   3473 C0 E0              6789 	push	acc
   3475 08                 6790 	inc	r0
   3476 E6                 6791 	mov	a,@r0
   3477 C0 E0              6792 	push	acc
   3479 08                 6793 	inc	r0
   347A E6                 6794 	mov	a,@r0
   347B C0 E0              6795 	push	acc
                           6796 ;	genIpush
   347D C0 06              6797 	push	ar6
   347F C0 02              6798 	push	ar2
   3481 C0 07              6799 	push	ar7
                           6800 ;	genCall
   3483 8C 82              6801 	mov	dpl,r4
   3485 8D 83              6802 	mov	dph,r5
   3487 8B F0              6803 	mov	b,r3
   3489 12 24 57           6804 	lcall	_trace_path
   348C AB 82              6805 	mov	r3,dpl
   348E E5 81              6806 	mov	a,sp
   3490 24 F7              6807 	add	a,#0xf7
   3492 F5 81              6808 	mov	sp,a
                           6809 ;	genAssign
   3494 8B 02              6810 	mov	ar2,r3
                           6811 ;	FatDrivers/tff.c:884: if (res != FR_OK) return res;		/* Trace failed */
                           6812 ;	genCmpEq
                           6813 ;	gencjne
                           6814 ;	gencjneshort
                           6815 ;	Peephole 241.d	optimized compare
   3496 E4                 6816 	clr	a
   3497 BA 00 01           6817 	cjne	r2,#0x00,00114$
   349A 04                 6818 	inc	a
   349B                    6819 00114$:
                           6820 ;	Peephole 300	removed redundant label 00115$
                           6821 ;	genIpop
                           6822 ;	genIfx
                           6823 ;	genIfxJump
                           6824 ;	Peephole 108.b	removed ljmp by inverse jump logic
   349B 70 05              6825 	jnz	00104$
                           6826 ;	Peephole 300	removed redundant label 00116$
                           6827 ;	genRet
   349D 8A 82              6828 	mov	dpl,r2
   349F 02 36 82           6829 	ljmp	00108$
   34A2                    6830 00104$:
                           6831 ;	FatDrivers/tff.c:885: if (dir == NULL || (dir[DIR_Attr] & AM_DIR))	/* It is a directory */
                           6832 ;	genAssign
                           6833 ;	genCmpEq
   34A2 E5 10              6834 	mov	a,_bp
   34A4 24 04              6835 	add	a,#0x04
   34A6 F8                 6836 	mov	r0,a
                           6837 ;	gencjneshort
   34A7 B6 00 0A           6838 	cjne	@r0,#0x00,00117$
   34AA 08                 6839 	inc	r0
   34AB B6 00 06           6840 	cjne	@r0,#0x00,00117$
   34AE 08                 6841 	inc	r0
   34AF B6 00 02           6842 	cjne	@r0,#0x00,00117$
                           6843 ;	Peephole 112.b	changed ljmp to sjmp
   34B2 80 1E              6844 	sjmp	00105$
   34B4                    6845 00117$:
                           6846 ;	genIpush
                           6847 ;	genPlus
   34B4 E5 10              6848 	mov	a,_bp
   34B6 24 04              6849 	add	a,#0x04
   34B8 F8                 6850 	mov	r0,a
                           6851 ;     genPlusIncr
   34B9 74 0B              6852 	mov	a,#0x0B
   34BB 26                 6853 	add	a,@r0
   34BC FD                 6854 	mov	r5,a
                           6855 ;	Peephole 181	changed mov to clr
   34BD E4                 6856 	clr	a
   34BE 08                 6857 	inc	r0
   34BF 36                 6858 	addc	a,@r0
   34C0 FE                 6859 	mov	r6,a
   34C1 08                 6860 	inc	r0
   34C2 86 07              6861 	mov	ar7,@r0
                           6862 ;	genPointerGet
                           6863 ;	genGenPointerGet
   34C4 8D 82              6864 	mov	dpl,r5
   34C6 8E 83              6865 	mov	dph,r6
   34C8 8F F0              6866 	mov	b,r7
   34CA 12 62 42           6867 	lcall	__gptrget
                           6868 ;	genAnd
   34CD FD                 6869 	mov	r5,a
                           6870 ;	Peephole 105	removed redundant mov
   34CE 54 10              6871 	anl	a,#0x10
                           6872 ;	genIpop
                           6873 ;	genIfx
                           6874 ;	genIfxJump
                           6875 ;	Peephole 108.c	removed ljmp by inverse jump logic
   34D0 60 06              6876 	jz	00106$
                           6877 ;	Peephole 300	removed redundant label 00118$
   34D2                    6878 00105$:
                           6879 ;	FatDrivers/tff.c:886: return FR_NO_FILE;
                           6880 ;	genRet
   34D2 75 82 02           6881 	mov	dpl,#0x02
   34D5 02 36 82           6882 	ljmp	00108$
   34D8                    6883 00106$:
                           6884 ;	FatDrivers/tff.c:895: fp->flag = mode;							/* File access mode */
                           6885 ;	genPlus
   34D8 A8 10              6886 	mov	r0,_bp
   34DA 08                 6887 	inc	r0
                           6888 ;     genPlusIncr
   34DB 74 02              6889 	mov	a,#0x02
   34DD 26                 6890 	add	a,@r0
   34DE FA                 6891 	mov	r2,a
                           6892 ;	Peephole 181	changed mov to clr
   34DF E4                 6893 	clr	a
   34E0 08                 6894 	inc	r0
   34E1 36                 6895 	addc	a,@r0
   34E2 FB                 6896 	mov	r3,a
   34E3 08                 6897 	inc	r0
   34E4 86 04              6898 	mov	ar4,@r0
                           6899 ;	genPointerSet
                           6900 ;	genGenPointerSet
   34E6 8A 82              6901 	mov	dpl,r2
   34E8 8B 83              6902 	mov	dph,r3
   34EA 8C F0              6903 	mov	b,r4
   34EC E5 10              6904 	mov	a,_bp
   34EE 24 FA              6905 	add	a,#0xfffffffa
   34F0 F8                 6906 	mov	r0,a
   34F1 E6                 6907 	mov	a,@r0
   34F2 12 5E A4           6908 	lcall	__gptrput
                           6909 ;	FatDrivers/tff.c:896: fp->org_clust =								/* File start cluster */
                           6910 ;	genPlus
   34F5 A8 10              6911 	mov	r0,_bp
   34F7 08                 6912 	inc	r0
   34F8 E5 10              6913 	mov	a,_bp
   34FA 24 2C              6914 	add	a,#0x2c
   34FC F9                 6915 	mov	r1,a
                           6916 ;     genPlusIncr
   34FD 74 0F              6917 	mov	a,#0x0F
   34FF 26                 6918 	add	a,@r0
   3500 F7                 6919 	mov	@r1,a
                           6920 ;	Peephole 181	changed mov to clr
   3501 E4                 6921 	clr	a
   3502 08                 6922 	inc	r0
   3503 36                 6923 	addc	a,@r0
   3504 09                 6924 	inc	r1
   3505 F7                 6925 	mov	@r1,a
   3506 08                 6926 	inc	r0
   3507 09                 6927 	inc	r1
   3508 E6                 6928 	mov	a,@r0
   3509 F7                 6929 	mov	@r1,a
                           6930 ;	FatDrivers/tff.c:898: ((DWORD)LD_WORD(&dir[DIR_FstClusHI]) << 16) |
                           6931 ;	genPlus
   350A E5 10              6932 	mov	a,_bp
   350C 24 04              6933 	add	a,#0x04
   350E F8                 6934 	mov	r0,a
                           6935 ;     genPlusIncr
   350F 74 14              6936 	mov	a,#0x14
   3511 26                 6937 	add	a,@r0
   3512 FA                 6938 	mov	r2,a
                           6939 ;	Peephole 181	changed mov to clr
   3513 E4                 6940 	clr	a
   3514 08                 6941 	inc	r0
   3515 36                 6942 	addc	a,@r0
   3516 FB                 6943 	mov	r3,a
   3517 08                 6944 	inc	r0
   3518 86 04              6945 	mov	ar4,@r0
                           6946 ;	genPointerGet
                           6947 ;	genGenPointerGet
   351A 8A 82              6948 	mov	dpl,r2
   351C 8B 83              6949 	mov	dph,r3
   351E 8C F0              6950 	mov	b,r4
   3520 12 62 42           6951 	lcall	__gptrget
   3523 FA                 6952 	mov	r2,a
   3524 A3                 6953 	inc	dptr
   3525 12 62 42           6954 	lcall	__gptrget
   3528 FB                 6955 	mov	r3,a
                           6956 ;	genCast
                           6957 ;	genLeftShift
                           6958 ;	genLeftShiftLiteral
                           6959 ;	Peephole 3.c	changed mov to clr
   3529 E4                 6960 	clr	a
   352A FC                 6961 	mov	r4,a
   352B FD                 6962 	mov	r5,a
   352C E5 10              6963 	mov	a,_bp
   352E 24 32              6964 	add	a,#0x32
                           6965 ;	genlshFour
                           6966 ;	Peephole 185	changed order of increment (acc incremented also!)
   3530 04                 6967 	inc	a
                           6968 ;	Peephole 185	changed order of increment (acc incremented also!)
   3531 04                 6969 	inc	a
                           6970 ;	Peephole 185	changed order of increment (acc incremented also!)
   3532 04                 6971 	inc	a
   3533 F8                 6972 	mov	r0,a
   3534 A6 03              6973 	mov	@r0,ar3
   3536 18                 6974 	dec	r0
   3537 A6 02              6975 	mov	@r0,ar2
   3539 18                 6976 	dec	r0
   353A 76 00              6977 	mov	@r0,#0x00
   353C 18                 6978 	dec	r0
   353D 76 00              6979 	mov	@r0,#0x00
                           6980 ;	FatDrivers/tff.c:900: LD_WORD(&dir[DIR_FstClusLO]);
                           6981 ;	genPlus
   353F E5 10              6982 	mov	a,_bp
   3541 24 04              6983 	add	a,#0x04
   3543 F8                 6984 	mov	r0,a
                           6985 ;     genPlusIncr
   3544 74 1A              6986 	mov	a,#0x1A
   3546 26                 6987 	add	a,@r0
   3547 FE                 6988 	mov	r6,a
                           6989 ;	Peephole 181	changed mov to clr
   3548 E4                 6990 	clr	a
   3549 08                 6991 	inc	r0
   354A 36                 6992 	addc	a,@r0
   354B FF                 6993 	mov	r7,a
   354C 08                 6994 	inc	r0
   354D 86 02              6995 	mov	ar2,@r0
                           6996 ;	genPointerGet
                           6997 ;	genGenPointerGet
   354F 8E 82              6998 	mov	dpl,r6
   3551 8F 83              6999 	mov	dph,r7
   3553 8A F0              7000 	mov	b,r2
   3555 12 62 42           7001 	lcall	__gptrget
   3558 FE                 7002 	mov	r6,a
   3559 A3                 7003 	inc	dptr
   355A 12 62 42           7004 	lcall	__gptrget
   355D FF                 7005 	mov	r7,a
                           7006 ;	genCast
                           7007 ;	genOr
                           7008 ;	Peephole 3.c	changed mov to clr
   355E E4                 7009 	clr	a
   355F FA                 7010 	mov	r2,a
   3560 FB                 7011 	mov	r3,a
   3561 E5 10              7012 	mov	a,_bp
   3563 24 32              7013 	add	a,#0x32
   3565 F8                 7014 	mov	r0,a
   3566 E6                 7015 	mov	a,@r0
   3567 42 06              7016 	orl	ar6,a
   3569 08                 7017 	inc	r0
   356A E6                 7018 	mov	a,@r0
   356B 42 07              7019 	orl	ar7,a
   356D 08                 7020 	inc	r0
   356E E6                 7021 	mov	a,@r0
   356F 42 02              7022 	orl	ar2,a
   3571 08                 7023 	inc	r0
   3572 E6                 7024 	mov	a,@r0
   3573 42 03              7025 	orl	ar3,a
                           7026 ;	genPointerSet
                           7027 ;	genGenPointerSet
   3575 E5 10              7028 	mov	a,_bp
   3577 24 2C              7029 	add	a,#0x2c
   3579 F8                 7030 	mov	r0,a
   357A 86 82              7031 	mov	dpl,@r0
   357C 08                 7032 	inc	r0
   357D 86 83              7033 	mov	dph,@r0
   357F 08                 7034 	inc	r0
   3580 86 F0              7035 	mov	b,@r0
   3582 EE                 7036 	mov	a,r6
   3583 12 5E A4           7037 	lcall	__gptrput
   3586 A3                 7038 	inc	dptr
   3587 EF                 7039 	mov	a,r7
   3588 12 5E A4           7040 	lcall	__gptrput
   358B A3                 7041 	inc	dptr
   358C EA                 7042 	mov	a,r2
   358D 12 5E A4           7043 	lcall	__gptrput
   3590 A3                 7044 	inc	dptr
   3591 EB                 7045 	mov	a,r3
   3592 12 5E A4           7046 	lcall	__gptrput
                           7047 ;	FatDrivers/tff.c:901: fp->fsize = LD_DWORD(&dir[DIR_FileSize]);	/* File size */
                           7048 ;	genPlus
   3595 A8 10              7049 	mov	r0,_bp
   3597 08                 7050 	inc	r0
   3598 E5 10              7051 	mov	a,_bp
   359A 24 32              7052 	add	a,#0x32
   359C F9                 7053 	mov	r1,a
                           7054 ;     genPlusIncr
   359D 74 0B              7055 	mov	a,#0x0B
   359F 26                 7056 	add	a,@r0
   35A0 F7                 7057 	mov	@r1,a
                           7058 ;	Peephole 181	changed mov to clr
   35A1 E4                 7059 	clr	a
   35A2 08                 7060 	inc	r0
   35A3 36                 7061 	addc	a,@r0
   35A4 09                 7062 	inc	r1
   35A5 F7                 7063 	mov	@r1,a
   35A6 08                 7064 	inc	r0
   35A7 09                 7065 	inc	r1
   35A8 E6                 7066 	mov	a,@r0
   35A9 F7                 7067 	mov	@r1,a
                           7068 ;	genPlus
   35AA E5 10              7069 	mov	a,_bp
   35AC 24 04              7070 	add	a,#0x04
   35AE F8                 7071 	mov	r0,a
                           7072 ;     genPlusIncr
   35AF 74 1C              7073 	mov	a,#0x1C
   35B1 26                 7074 	add	a,@r0
   35B2 FD                 7075 	mov	r5,a
                           7076 ;	Peephole 181	changed mov to clr
   35B3 E4                 7077 	clr	a
   35B4 08                 7078 	inc	r0
   35B5 36                 7079 	addc	a,@r0
   35B6 FE                 7080 	mov	r6,a
   35B7 08                 7081 	inc	r0
   35B8 86 07              7082 	mov	ar7,@r0
                           7083 ;	genPointerGet
                           7084 ;	genGenPointerGet
   35BA 8D 82              7085 	mov	dpl,r5
   35BC 8E 83              7086 	mov	dph,r6
   35BE 8F F0              7087 	mov	b,r7
   35C0 12 62 42           7088 	lcall	__gptrget
   35C3 FD                 7089 	mov	r5,a
   35C4 A3                 7090 	inc	dptr
   35C5 12 62 42           7091 	lcall	__gptrget
   35C8 FE                 7092 	mov	r6,a
   35C9 A3                 7093 	inc	dptr
   35CA 12 62 42           7094 	lcall	__gptrget
   35CD FF                 7095 	mov	r7,a
   35CE A3                 7096 	inc	dptr
   35CF 12 62 42           7097 	lcall	__gptrget
   35D2 FA                 7098 	mov	r2,a
                           7099 ;	genPointerSet
                           7100 ;	genGenPointerSet
   35D3 E5 10              7101 	mov	a,_bp
   35D5 24 32              7102 	add	a,#0x32
   35D7 F8                 7103 	mov	r0,a
   35D8 86 82              7104 	mov	dpl,@r0
   35DA 08                 7105 	inc	r0
   35DB 86 83              7106 	mov	dph,@r0
   35DD 08                 7107 	inc	r0
   35DE 86 F0              7108 	mov	b,@r0
   35E0 ED                 7109 	mov	a,r5
   35E1 12 5E A4           7110 	lcall	__gptrput
   35E4 A3                 7111 	inc	dptr
   35E5 EE                 7112 	mov	a,r6
   35E6 12 5E A4           7113 	lcall	__gptrput
   35E9 A3                 7114 	inc	dptr
   35EA EF                 7115 	mov	a,r7
   35EB 12 5E A4           7116 	lcall	__gptrput
   35EE A3                 7117 	inc	dptr
   35EF EA                 7118 	mov	a,r2
   35F0 12 5E A4           7119 	lcall	__gptrput
                           7120 ;	FatDrivers/tff.c:902: fp->fptr = 0;								/* File ptr */
                           7121 ;	genPlus
   35F3 A8 10              7122 	mov	r0,_bp
   35F5 08                 7123 	inc	r0
                           7124 ;     genPlusIncr
   35F6 74 07              7125 	mov	a,#0x07
   35F8 26                 7126 	add	a,@r0
   35F9 FA                 7127 	mov	r2,a
                           7128 ;	Peephole 181	changed mov to clr
   35FA E4                 7129 	clr	a
   35FB 08                 7130 	inc	r0
   35FC 36                 7131 	addc	a,@r0
   35FD FB                 7132 	mov	r3,a
   35FE 08                 7133 	inc	r0
   35FF 86 04              7134 	mov	ar4,@r0
                           7135 ;	genPointerSet
                           7136 ;	genGenPointerSet
   3601 8A 82              7137 	mov	dpl,r2
   3603 8B 83              7138 	mov	dph,r3
   3605 8C F0              7139 	mov	b,r4
                           7140 ;	Peephole 181	changed mov to clr
   3607 E4                 7141 	clr	a
   3608 12 5E A4           7142 	lcall	__gptrput
   360B A3                 7143 	inc	dptr
                           7144 ;	Peephole 181	changed mov to clr
   360C E4                 7145 	clr	a
   360D 12 5E A4           7146 	lcall	__gptrput
   3610 A3                 7147 	inc	dptr
                           7148 ;	Peephole 181	changed mov to clr
   3611 E4                 7149 	clr	a
   3612 12 5E A4           7150 	lcall	__gptrput
   3615 A3                 7151 	inc	dptr
                           7152 ;	Peephole 181	changed mov to clr
   3616 E4                 7153 	clr	a
   3617 12 5E A4           7154 	lcall	__gptrput
                           7155 ;	FatDrivers/tff.c:903: fp->sect_clust = 1;							/* Sector counter */
                           7156 ;	genPlus
   361A A8 10              7157 	mov	r0,_bp
   361C 08                 7158 	inc	r0
                           7159 ;     genPlusIncr
   361D 74 03              7160 	mov	a,#0x03
   361F 26                 7161 	add	a,@r0
   3620 FA                 7162 	mov	r2,a
                           7163 ;	Peephole 181	changed mov to clr
   3621 E4                 7164 	clr	a
   3622 08                 7165 	inc	r0
   3623 36                 7166 	addc	a,@r0
   3624 FB                 7167 	mov	r3,a
   3625 08                 7168 	inc	r0
   3626 86 04              7169 	mov	ar4,@r0
                           7170 ;	genPointerSet
                           7171 ;	genGenPointerSet
   3628 8A 82              7172 	mov	dpl,r2
   362A 8B 83              7173 	mov	dph,r3
   362C 8C F0              7174 	mov	b,r4
   362E 74 01              7175 	mov	a,#0x01
   3630 12 5E A4           7176 	lcall	__gptrput
                           7177 ;	FatDrivers/tff.c:904: fp->fs = fs; fp->id = fs->id;				/* Owner file system object of the file */
                           7178 ;	genPointerSet
                           7179 ;	genGenPointerSet
   3633 E5 10              7180 	mov	a,_bp
   3635 24 2F              7181 	add	a,#0x2f
   3637 F8                 7182 	mov	r0,a
   3638 86 82              7183 	mov	dpl,@r0
   363A 08                 7184 	inc	r0
   363B 86 83              7185 	mov	dph,@r0
   363D 08                 7186 	inc	r0
   363E 86 F0              7187 	mov	b,@r0
   3640 E5 10              7188 	mov	a,_bp
   3642 24 26              7189 	add	a,#0x26
   3644 F9                 7190 	mov	r1,a
   3645 E7                 7191 	mov	a,@r1
   3646 12 5E A4           7192 	lcall	__gptrput
   3649 A3                 7193 	inc	dptr
   364A 09                 7194 	inc	r1
   364B E7                 7195 	mov	a,@r1
   364C 12 5E A4           7196 	lcall	__gptrput
   364F A3                 7197 	inc	dptr
   3650 09                 7198 	inc	r1
   3651 E7                 7199 	mov	a,@r1
   3652 12 5E A4           7200 	lcall	__gptrput
                           7201 ;	genPointerGet
                           7202 ;	genGenPointerGet
   3655 E5 10              7203 	mov	a,_bp
   3657 24 26              7204 	add	a,#0x26
   3659 F8                 7205 	mov	r0,a
   365A 86 82              7206 	mov	dpl,@r0
   365C 08                 7207 	inc	r0
   365D 86 83              7208 	mov	dph,@r0
   365F 08                 7209 	inc	r0
   3660 86 F0              7210 	mov	b,@r0
   3662 12 62 42           7211 	lcall	__gptrget
   3665 FA                 7212 	mov	r2,a
   3666 A3                 7213 	inc	dptr
   3667 12 62 42           7214 	lcall	__gptrget
   366A FB                 7215 	mov	r3,a
                           7216 ;	genPointerSet
                           7217 ;	genGenPointerSet
   366B A8 10              7218 	mov	r0,_bp
   366D 08                 7219 	inc	r0
   366E 86 82              7220 	mov	dpl,@r0
   3670 08                 7221 	inc	r0
   3671 86 83              7222 	mov	dph,@r0
   3673 08                 7223 	inc	r0
   3674 86 F0              7224 	mov	b,@r0
   3676 EA                 7225 	mov	a,r2
   3677 12 5E A4           7226 	lcall	__gptrput
   367A A3                 7227 	inc	dptr
   367B EB                 7228 	mov	a,r3
   367C 12 5E A4           7229 	lcall	__gptrput
                           7230 ;	FatDrivers/tff.c:906: return FR_OK;
                           7231 ;	genRet
   367F 75 82 00           7232 	mov	dpl,#0x00
   3682                    7233 00108$:
   3682 85 10 81           7234 	mov	sp,_bp
   3685 D0 10              7235 	pop	_bp
   3687 22                 7236 	ret
                           7237 ;------------------------------------------------------------
                           7238 ;Allocation info for local variables in function 'f_read'
                           7239 ;------------------------------------------------------------
                           7240 ;buff                      Allocated to stack - offset -5
                           7241 ;btr                       Allocated to stack - offset -7
                           7242 ;br                        Allocated to stack - offset -10
                           7243 ;fp                        Allocated to stack - offset 1
                           7244 ;sect                      Allocated to stack - offset 4
                           7245 ;remain                    Allocated to stack - offset 8
                           7246 ;rcnt                      Allocated to stack - offset 12
                           7247 ;cc                        Allocated to registers r6 r7 
                           7248 ;clust                     Allocated to stack - offset 14
                           7249 ;rbuff                     Allocated to stack - offset 18
                           7250 ;res                       Allocated to registers r2 
                           7251 ;fs                        Allocated to stack - offset 21
                           7252 ;sloc0                     Allocated to stack - offset 27
                           7253 ;sloc1                     Allocated to stack - offset 24
                           7254 ;sloc2                     Allocated to stack - offset 27
                           7255 ;sloc3                     Allocated to stack - offset 30
                           7256 ;sloc4                     Allocated to stack - offset 34
                           7257 ;sloc5                     Allocated to stack - offset 37
                           7258 ;sloc6                     Allocated to stack - offset 40
                           7259 ;sloc7                     Allocated to stack - offset 43
                           7260 ;sloc8                     Allocated to stack - offset 46
                           7261 ;sloc9                     Allocated to stack - offset 50
                           7262 ;sloc10                    Allocated to stack - offset 53
                           7263 ;sloc11                    Allocated to stack - offset 56
                           7264 ;------------------------------------------------------------
                           7265 ;	FatDrivers/tff.c:913: FRESULT f_read (
                           7266 ;	-----------------------------------------
                           7267 ;	 function f_read
                           7268 ;	-----------------------------------------
   3688                    7269 _f_read:
   3688 C0 10              7270 	push	_bp
   368A 85 81 10           7271 	mov	_bp,sp
                           7272 ;     genReceive
   368D C0 82              7273 	push	dpl
   368F C0 83              7274 	push	dph
   3691 C0 F0              7275 	push	b
   3693 E5 81              7276 	mov	a,sp
   3695 24 3A              7277 	add	a,#0x3a
   3697 F5 81              7278 	mov	sp,a
                           7279 ;	FatDrivers/tff.c:923: BYTE *rbuff = buff;
                           7280 ;	genAssign
   3699 E5 10              7281 	mov	a,_bp
   369B 24 FB              7282 	add	a,#0xfffffffb
   369D F8                 7283 	mov	r0,a
   369E 86 05              7284 	mov	ar5,@r0
   36A0 08                 7285 	inc	r0
   36A1 86 06              7286 	mov	ar6,@r0
   36A3 08                 7287 	inc	r0
   36A4 86 07              7288 	mov	ar7,@r0
                           7289 ;	genAssign
   36A6 E5 10              7290 	mov	a,_bp
   36A8 24 12              7291 	add	a,#0x12
   36AA F8                 7292 	mov	r0,a
   36AB A6 05              7293 	mov	@r0,ar5
   36AD 08                 7294 	inc	r0
   36AE A6 06              7295 	mov	@r0,ar6
   36B0 08                 7296 	inc	r0
   36B1 A6 07              7297 	mov	@r0,ar7
                           7298 ;	FatDrivers/tff.c:925: FATFS *fs = fp->fs;
                           7299 ;	genPlus
   36B3 A8 10              7300 	mov	r0,_bp
   36B5 08                 7301 	inc	r0
                           7302 ;     genPlusIncr
   36B6 74 04              7303 	mov	a,#0x04
   36B8 26                 7304 	add	a,@r0
   36B9 FD                 7305 	mov	r5,a
                           7306 ;	Peephole 181	changed mov to clr
   36BA E4                 7307 	clr	a
   36BB 08                 7308 	inc	r0
   36BC 36                 7309 	addc	a,@r0
   36BD FE                 7310 	mov	r6,a
   36BE 08                 7311 	inc	r0
   36BF 86 07              7312 	mov	ar7,@r0
                           7313 ;	genPointerGet
                           7314 ;	genGenPointerGet
   36C1 8D 82              7315 	mov	dpl,r5
   36C3 8E 83              7316 	mov	dph,r6
   36C5 8F F0              7317 	mov	b,r7
   36C7 12 62 42           7318 	lcall	__gptrget
   36CA FD                 7319 	mov	r5,a
   36CB A3                 7320 	inc	dptr
   36CC 12 62 42           7321 	lcall	__gptrget
   36CF FE                 7322 	mov	r6,a
   36D0 A3                 7323 	inc	dptr
   36D1 12 62 42           7324 	lcall	__gptrget
   36D4 FF                 7325 	mov	r7,a
                           7326 ;	genAssign
   36D5 E5 10              7327 	mov	a,_bp
   36D7 24 15              7328 	add	a,#0x15
   36D9 F8                 7329 	mov	r0,a
   36DA A6 05              7330 	mov	@r0,ar5
   36DC 08                 7331 	inc	r0
   36DD A6 06              7332 	mov	@r0,ar6
   36DF 08                 7333 	inc	r0
   36E0 A6 07              7334 	mov	@r0,ar7
                           7335 ;	FatDrivers/tff.c:928: *br = 0;
                           7336 ;	genAssign
   36E2 E5 10              7337 	mov	a,_bp
   36E4 24 F6              7338 	add	a,#0xfffffff6
   36E6 F8                 7339 	mov	r0,a
   36E7 E5 10              7340 	mov	a,_bp
   36E9 24 18              7341 	add	a,#0x18
   36EB F9                 7342 	mov	r1,a
   36EC E6                 7343 	mov	a,@r0
   36ED F7                 7344 	mov	@r1,a
   36EE 08                 7345 	inc	r0
   36EF 09                 7346 	inc	r1
   36F0 E6                 7347 	mov	a,@r0
   36F1 F7                 7348 	mov	@r1,a
   36F2 08                 7349 	inc	r0
   36F3 09                 7350 	inc	r1
   36F4 E6                 7351 	mov	a,@r0
   36F5 F7                 7352 	mov	@r1,a
                           7353 ;	genPointerSet
                           7354 ;	genGenPointerSet
   36F6 E5 10              7355 	mov	a,_bp
   36F8 24 18              7356 	add	a,#0x18
   36FA F8                 7357 	mov	r0,a
   36FB 86 82              7358 	mov	dpl,@r0
   36FD 08                 7359 	inc	r0
   36FE 86 83              7360 	mov	dph,@r0
   3700 08                 7361 	inc	r0
   3701 86 F0              7362 	mov	b,@r0
                           7363 ;	Peephole 181	changed mov to clr
   3703 E4                 7364 	clr	a
   3704 12 5E A4           7365 	lcall	__gptrput
   3707 A3                 7366 	inc	dptr
                           7367 ;	Peephole 181	changed mov to clr
   3708 E4                 7368 	clr	a
   3709 12 5E A4           7369 	lcall	__gptrput
                           7370 ;	FatDrivers/tff.c:929: res = validate(fs, fp->id);						/* Check validity of the object */
                           7371 ;	genPointerGet
                           7372 ;	genGenPointerGet
   370C A8 10              7373 	mov	r0,_bp
   370E 08                 7374 	inc	r0
   370F 86 82              7375 	mov	dpl,@r0
   3711 08                 7376 	inc	r0
   3712 86 83              7377 	mov	dph,@r0
   3714 08                 7378 	inc	r0
   3715 86 F0              7379 	mov	b,@r0
   3717 12 62 42           7380 	lcall	__gptrget
   371A FA                 7381 	mov	r2,a
   371B A3                 7382 	inc	dptr
   371C 12 62 42           7383 	lcall	__gptrget
   371F FB                 7384 	mov	r3,a
                           7385 ;	genIpush
   3720 C0 02              7386 	push	ar2
   3722 C0 03              7387 	push	ar3
                           7388 ;	genCall
   3724 E5 10              7389 	mov	a,_bp
   3726 24 15              7390 	add	a,#0x15
   3728 F8                 7391 	mov	r0,a
   3729 86 82              7392 	mov	dpl,@r0
   372B 08                 7393 	inc	r0
   372C 86 83              7394 	mov	dph,@r0
   372E 08                 7395 	inc	r0
   372F 86 F0              7396 	mov	b,@r0
   3731 12 32 FD           7397 	lcall	_validate
   3734 AA 82              7398 	mov	r2,dpl
   3736 15 81              7399 	dec	sp
   3738 15 81              7400 	dec	sp
                           7401 ;	genAssign
                           7402 ;	FatDrivers/tff.c:930: if (res != FR_OK) return res;
                           7403 ;	genCmpEq
                           7404 ;	gencjneshort
   373A BA 00 02           7405 	cjne	r2,#0x00,00152$
                           7406 ;	Peephole 112.b	changed ljmp to sjmp
   373D 80 05              7407 	sjmp	00102$
   373F                    7408 00152$:
                           7409 ;	genRet
   373F 8A 82              7410 	mov	dpl,r2
   3741 02 3D BC           7411 	ljmp	00132$
   3744                    7412 00102$:
                           7413 ;	FatDrivers/tff.c:931: if (fp->flag & FA__ERROR) return FR_RW_ERROR;	/* Check error flag */
                           7414 ;	genPlus
   3744 A8 10              7415 	mov	r0,_bp
   3746 08                 7416 	inc	r0
   3747 E5 10              7417 	mov	a,_bp
   3749 24 38              7418 	add	a,#0x38
   374B F9                 7419 	mov	r1,a
                           7420 ;     genPlusIncr
   374C 74 02              7421 	mov	a,#0x02
   374E 26                 7422 	add	a,@r0
   374F F7                 7423 	mov	@r1,a
                           7424 ;	Peephole 181	changed mov to clr
   3750 E4                 7425 	clr	a
   3751 08                 7426 	inc	r0
   3752 36                 7427 	addc	a,@r0
   3753 09                 7428 	inc	r1
   3754 F7                 7429 	mov	@r1,a
   3755 08                 7430 	inc	r0
   3756 09                 7431 	inc	r1
   3757 E6                 7432 	mov	a,@r0
   3758 F7                 7433 	mov	@r1,a
                           7434 ;	genPointerGet
                           7435 ;	genGenPointerGet
   3759 E5 10              7436 	mov	a,_bp
   375B 24 38              7437 	add	a,#0x38
   375D F8                 7438 	mov	r0,a
   375E 86 82              7439 	mov	dpl,@r0
   3760 08                 7440 	inc	r0
   3761 86 83              7441 	mov	dph,@r0
   3763 08                 7442 	inc	r0
   3764 86 F0              7443 	mov	b,@r0
   3766 12 62 42           7444 	lcall	__gptrget
                           7445 ;	genAnd
   3769 FA                 7446 	mov	r2,a
                           7447 ;	Peephole 105	removed redundant mov
                           7448 ;	genIfxJump
                           7449 ;	Peephole 108.d	removed ljmp by inverse jump logic
   376A 30 E7 06           7450 	jnb	acc.7,00104$
                           7451 ;	Peephole 300	removed redundant label 00153$
                           7452 ;	genRet
   376D 75 82 08           7453 	mov	dpl,#0x08
   3770 02 3D BC           7454 	ljmp	00132$
   3773                    7455 00104$:
                           7456 ;	FatDrivers/tff.c:932: if (!(fp->flag & FA_READ)) return FR_DENIED;	/* Check access mode */
                           7457 ;	genAnd
   3773 EA                 7458 	mov	a,r2
                           7459 ;	genIfxJump
                           7460 ;	Peephole 108.e	removed ljmp by inverse jump logic
   3774 20 E0 06           7461 	jb	acc.0,00106$
                           7462 ;	Peephole 300	removed redundant label 00154$
                           7463 ;	genRet
   3777 75 82 06           7464 	mov	dpl,#0x06
   377A 02 3D BC           7465 	ljmp	00132$
   377D                    7466 00106$:
                           7467 ;	FatDrivers/tff.c:933: remain = fp->fsize - fp->fptr;
                           7468 ;	genIpush
                           7469 ;	genPlus
   377D A8 10              7470 	mov	r0,_bp
   377F 08                 7471 	inc	r0
                           7472 ;     genPlusIncr
   3780 74 0B              7473 	mov	a,#0x0B
   3782 26                 7474 	add	a,@r0
   3783 FA                 7475 	mov	r2,a
                           7476 ;	Peephole 181	changed mov to clr
   3784 E4                 7477 	clr	a
   3785 08                 7478 	inc	r0
   3786 36                 7479 	addc	a,@r0
   3787 FB                 7480 	mov	r3,a
   3788 08                 7481 	inc	r0
   3789 86 04              7482 	mov	ar4,@r0
                           7483 ;	genPointerGet
                           7484 ;	genGenPointerGet
   378B 8A 82              7485 	mov	dpl,r2
   378D 8B 83              7486 	mov	dph,r3
   378F 8C F0              7487 	mov	b,r4
   3791 E5 10              7488 	mov	a,_bp
   3793 24 1E              7489 	add	a,#0x1e
   3795 F8                 7490 	mov	r0,a
   3796 12 62 42           7491 	lcall	__gptrget
   3799 F6                 7492 	mov	@r0,a
   379A A3                 7493 	inc	dptr
   379B 12 62 42           7494 	lcall	__gptrget
   379E 08                 7495 	inc	r0
   379F F6                 7496 	mov	@r0,a
   37A0 A3                 7497 	inc	dptr
   37A1 12 62 42           7498 	lcall	__gptrget
   37A4 08                 7499 	inc	r0
   37A5 F6                 7500 	mov	@r0,a
   37A6 A3                 7501 	inc	dptr
   37A7 12 62 42           7502 	lcall	__gptrget
   37AA 08                 7503 	inc	r0
   37AB F6                 7504 	mov	@r0,a
                           7505 ;	genPlus
   37AC A8 10              7506 	mov	r0,_bp
   37AE 08                 7507 	inc	r0
   37AF E5 10              7508 	mov	a,_bp
   37B1 24 1B              7509 	add	a,#0x1b
   37B3 F9                 7510 	mov	r1,a
                           7511 ;     genPlusIncr
   37B4 74 07              7512 	mov	a,#0x07
   37B6 26                 7513 	add	a,@r0
   37B7 F7                 7514 	mov	@r1,a
                           7515 ;	Peephole 181	changed mov to clr
   37B8 E4                 7516 	clr	a
   37B9 08                 7517 	inc	r0
   37BA 36                 7518 	addc	a,@r0
   37BB 09                 7519 	inc	r1
   37BC F7                 7520 	mov	@r1,a
   37BD 08                 7521 	inc	r0
   37BE 09                 7522 	inc	r1
   37BF E6                 7523 	mov	a,@r0
   37C0 F7                 7524 	mov	@r1,a
                           7525 ;	genPointerGet
                           7526 ;	genGenPointerGet
   37C1 E5 10              7527 	mov	a,_bp
   37C3 24 1B              7528 	add	a,#0x1b
   37C5 F8                 7529 	mov	r0,a
   37C6 86 82              7530 	mov	dpl,@r0
   37C8 08                 7531 	inc	r0
   37C9 86 83              7532 	mov	dph,@r0
   37CB 08                 7533 	inc	r0
   37CC 86 F0              7534 	mov	b,@r0
   37CE 12 62 42           7535 	lcall	__gptrget
   37D1 FE                 7536 	mov	r6,a
   37D2 A3                 7537 	inc	dptr
   37D3 12 62 42           7538 	lcall	__gptrget
   37D6 FF                 7539 	mov	r7,a
   37D7 A3                 7540 	inc	dptr
   37D8 12 62 42           7541 	lcall	__gptrget
   37DB FA                 7542 	mov	r2,a
   37DC A3                 7543 	inc	dptr
   37DD 12 62 42           7544 	lcall	__gptrget
   37E0 FB                 7545 	mov	r3,a
                           7546 ;	genMinus
   37E1 E5 10              7547 	mov	a,_bp
   37E3 24 1E              7548 	add	a,#0x1e
   37E5 F8                 7549 	mov	r0,a
   37E6 E6                 7550 	mov	a,@r0
   37E7 C3                 7551 	clr	c
                           7552 ;	Peephole 236.l	used r6 instead of ar6
   37E8 9E                 7553 	subb	a,r6
   37E9 FE                 7554 	mov	r6,a
   37EA 08                 7555 	inc	r0
   37EB E6                 7556 	mov	a,@r0
                           7557 ;	Peephole 236.l	used r7 instead of ar7
   37EC 9F                 7558 	subb	a,r7
   37ED FF                 7559 	mov	r7,a
   37EE 08                 7560 	inc	r0
   37EF E6                 7561 	mov	a,@r0
                           7562 ;	Peephole 236.l	used r2 instead of ar2
   37F0 9A                 7563 	subb	a,r2
   37F1 FA                 7564 	mov	r2,a
   37F2 08                 7565 	inc	r0
   37F3 E6                 7566 	mov	a,@r0
                           7567 ;	Peephole 236.l	used r3 instead of ar3
   37F4 9B                 7568 	subb	a,r3
   37F5 FB                 7569 	mov	r3,a
                           7570 ;	genAssign
   37F6 E5 10              7571 	mov	a,_bp
   37F8 24 08              7572 	add	a,#0x08
   37FA F8                 7573 	mov	r0,a
   37FB A6 06              7574 	mov	@r0,ar6
   37FD 08                 7575 	inc	r0
   37FE A6 07              7576 	mov	@r0,ar7
   3800 08                 7577 	inc	r0
   3801 A6 02              7578 	mov	@r0,ar2
   3803 08                 7579 	inc	r0
   3804 A6 03              7580 	mov	@r0,ar3
                           7581 ;	FatDrivers/tff.c:934: if (btr > remain) btr = (WORD)remain;			/* Truncate read count by number of bytes left */
                           7582 ;	genCast
   3806 E5 10              7583 	mov	a,_bp
   3808 24 F9              7584 	add	a,#0xfffffff9
   380A F8                 7585 	mov	r0,a
   380B 86 02              7586 	mov	ar2,@r0
   380D 08                 7587 	inc	r0
   380E 86 03              7588 	mov	ar3,@r0
                           7589 ;	genCmpGt
                           7590 ;	Peephole 3.c	changed mov to clr
   3810 E4                 7591 	clr	a
   3811 FC                 7592 	mov	r4,a
   3812 FD                 7593 	mov	r5,a
   3813 E5 10              7594 	mov	a,_bp
   3815 24 08              7595 	add	a,#0x08
   3817 F8                 7596 	mov	r0,a
                           7597 ;	genCmp
   3818 C3                 7598 	clr	c
   3819 E6                 7599 	mov	a,@r0
   381A 9A                 7600 	subb	a,r2
   381B 08                 7601 	inc	r0
   381C E6                 7602 	mov	a,@r0
   381D 9B                 7603 	subb	a,r3
   381E 08                 7604 	inc	r0
   381F E6                 7605 	mov	a,@r0
   3820 9C                 7606 	subb	a,r4
   3821 08                 7607 	inc	r0
   3822 E6                 7608 	mov	a,@r0
   3823 9D                 7609 	subb	a,r5
                           7610 ;	genIpop
                           7611 ;	genIfx
                           7612 ;	genIfxJump
                           7613 ;	Peephole 108.c	removed ljmp by inverse jump logic
                           7614 ;	Peephole 128	jump optimization
   3824 50 10              7615 	jnc	00151$
                           7616 ;	Peephole 300	removed redundant label 00155$
                           7617 ;	genCast
   3826 E5 10              7618 	mov	a,_bp
   3828 24 08              7619 	add	a,#0x08
   382A F8                 7620 	mov	r0,a
   382B E5 10              7621 	mov	a,_bp
   382D 24 F9              7622 	add	a,#0xfffffff9
   382F F9                 7623 	mov	r1,a
   3830 E6                 7624 	mov	a,@r0
   3831 F7                 7625 	mov	@r1,a
   3832 08                 7626 	inc	r0
   3833 09                 7627 	inc	r1
   3834 E6                 7628 	mov	a,@r0
   3835 F7                 7629 	mov	@r1,a
   3836                    7630 00151$:
                           7631 ;	genPlus
   3836 A8 10              7632 	mov	r0,_bp
   3838 08                 7633 	inc	r0
   3839 E5 10              7634 	mov	a,_bp
   383B 24 35              7635 	add	a,#0x35
   383D F9                 7636 	mov	r1,a
                           7637 ;     genPlusIncr
   383E 74 13              7638 	mov	a,#0x13
   3840 26                 7639 	add	a,@r0
   3841 F7                 7640 	mov	@r1,a
                           7641 ;	Peephole 181	changed mov to clr
   3842 E4                 7642 	clr	a
   3843 08                 7643 	inc	r0
   3844 36                 7644 	addc	a,@r0
   3845 09                 7645 	inc	r1
   3846 F7                 7646 	mov	@r1,a
   3847 08                 7647 	inc	r0
   3848 09                 7648 	inc	r1
   3849 E6                 7649 	mov	a,@r0
   384A F7                 7650 	mov	@r1,a
                           7651 ;	genPlus
   384B A8 10              7652 	mov	r0,_bp
   384D 08                 7653 	inc	r0
   384E E5 10              7654 	mov	a,_bp
   3850 24 1E              7655 	add	a,#0x1e
   3852 F9                 7656 	mov	r1,a
                           7657 ;     genPlusIncr
   3853 74 0F              7658 	mov	a,#0x0F
   3855 26                 7659 	add	a,@r0
   3856 F7                 7660 	mov	@r1,a
                           7661 ;	Peephole 181	changed mov to clr
   3857 E4                 7662 	clr	a
   3858 08                 7663 	inc	r0
   3859 36                 7664 	addc	a,@r0
   385A 09                 7665 	inc	r1
   385B F7                 7666 	mov	@r1,a
   385C 08                 7667 	inc	r0
   385D 09                 7668 	inc	r1
   385E E6                 7669 	mov	a,@r0
   385F F7                 7670 	mov	@r1,a
                           7671 ;	genPlus
   3860 E5 10              7672 	mov	a,_bp
   3862 24 15              7673 	add	a,#0x15
   3864 F8                 7674 	mov	r0,a
   3865 E5 10              7675 	mov	a,_bp
   3867 24 22              7676 	add	a,#0x22
   3869 F9                 7677 	mov	r1,a
                           7678 ;     genPlusIncr
   386A 74 18              7679 	mov	a,#0x18
   386C 26                 7680 	add	a,@r0
   386D F7                 7681 	mov	@r1,a
                           7682 ;	Peephole 181	changed mov to clr
   386E E4                 7683 	clr	a
   386F 08                 7684 	inc	r0
   3870 36                 7685 	addc	a,@r0
   3871 09                 7686 	inc	r1
   3872 F7                 7687 	mov	@r1,a
   3873 08                 7688 	inc	r0
   3874 09                 7689 	inc	r1
   3875 E6                 7690 	mov	a,@r0
   3876 F7                 7691 	mov	@r1,a
                           7692 ;	genPlus
   3877 E5 10              7693 	mov	a,_bp
   3879 24 15              7694 	add	a,#0x15
   387B F8                 7695 	mov	r0,a
   387C E5 10              7696 	mov	a,_bp
   387E 24 25              7697 	add	a,#0x25
   3880 F9                 7698 	mov	r1,a
                           7699 ;     genPlusIncr
   3881 74 1D              7700 	mov	a,#0x1D
   3883 26                 7701 	add	a,@r0
   3884 F7                 7702 	mov	@r1,a
                           7703 ;	Peephole 181	changed mov to clr
   3885 E4                 7704 	clr	a
   3886 08                 7705 	inc	r0
   3887 36                 7706 	addc	a,@r0
   3888 09                 7707 	inc	r1
   3889 F7                 7708 	mov	@r1,a
   388A 08                 7709 	inc	r0
   388B 09                 7710 	inc	r1
   388C E6                 7711 	mov	a,@r0
   388D F7                 7712 	mov	@r1,a
                           7713 ;	genPlus
   388E A8 10              7714 	mov	r0,_bp
   3890 08                 7715 	inc	r0
   3891 E5 10              7716 	mov	a,_bp
   3893 24 28              7717 	add	a,#0x28
   3895 F9                 7718 	mov	r1,a
                           7719 ;     genPlusIncr
   3896 74 17              7720 	mov	a,#0x17
   3898 26                 7721 	add	a,@r0
   3899 F7                 7722 	mov	@r1,a
                           7723 ;	Peephole 181	changed mov to clr
   389A E4                 7724 	clr	a
   389B 08                 7725 	inc	r0
   389C 36                 7726 	addc	a,@r0
   389D 09                 7727 	inc	r1
   389E F7                 7728 	mov	@r1,a
   389F 08                 7729 	inc	r0
   38A0 09                 7730 	inc	r1
   38A1 E6                 7731 	mov	a,@r0
   38A2 F7                 7732 	mov	@r1,a
                           7733 ;	genPlus
   38A3 E5 10              7734 	mov	a,_bp
   38A5 24 15              7735 	add	a,#0x15
   38A7 F8                 7736 	mov	r0,a
   38A8 E5 10              7737 	mov	a,_bp
   38AA 24 2B              7738 	add	a,#0x2b
   38AC F9                 7739 	mov	r1,a
                           7740 ;     genPlusIncr
   38AD 74 20              7741 	mov	a,#0x20
   38AF 26                 7742 	add	a,@r0
   38B0 F7                 7743 	mov	@r1,a
                           7744 ;	Peephole 181	changed mov to clr
   38B1 E4                 7745 	clr	a
   38B2 08                 7746 	inc	r0
   38B3 36                 7747 	addc	a,@r0
   38B4 09                 7748 	inc	r1
   38B5 F7                 7749 	mov	@r1,a
   38B6 08                 7750 	inc	r0
   38B7 09                 7751 	inc	r1
   38B8 E6                 7752 	mov	a,@r0
   38B9 F7                 7753 	mov	@r1,a
   38BA                    7754 00127$:
                           7755 ;	FatDrivers/tff.c:936: for ( ;  btr;									/* Repeat until all data transferred */
                           7756 ;	genIfx
   38BA E5 10              7757 	mov	a,_bp
   38BC 24 F9              7758 	add	a,#0xfffffff9
   38BE F8                 7759 	mov	r0,a
   38BF E6                 7760 	mov	a,@r0
   38C0 08                 7761 	inc	r0
   38C1 46                 7762 	orl	a,@r0
                           7763 ;	genIfxJump
   38C2 70 03              7764 	jnz	00156$
   38C4 02 3D 8F           7765 	ljmp	00130$
   38C7                    7766 00156$:
                           7767 ;	FatDrivers/tff.c:938: if ((fp->fptr % 512) == 0) {				/* On the sector boundary */
                           7768 ;	genPointerGet
                           7769 ;	genGenPointerGet
   38C7 E5 10              7770 	mov	a,_bp
   38C9 24 1B              7771 	add	a,#0x1b
   38CB F8                 7772 	mov	r0,a
   38CC 86 82              7773 	mov	dpl,@r0
   38CE 08                 7774 	inc	r0
   38CF 86 83              7775 	mov	dph,@r0
   38D1 08                 7776 	inc	r0
   38D2 86 F0              7777 	mov	b,@r0
   38D4 12 62 42           7778 	lcall	__gptrget
   38D7 FB                 7779 	mov	r3,a
   38D8 A3                 7780 	inc	dptr
   38D9 12 62 42           7781 	lcall	__gptrget
   38DC FC                 7782 	mov	r4,a
   38DD A3                 7783 	inc	dptr
   38DE 12 62 42           7784 	lcall	__gptrget
   38E1 FD                 7785 	mov	r5,a
   38E2 A3                 7786 	inc	dptr
   38E3 12 62 42           7787 	lcall	__gptrget
   38E6 FE                 7788 	mov	r6,a
                           7789 ;	genAnd
   38E7 EB                 7790 	mov	a,r3
   38E8 70 04              7791 	jnz	00157$
   38EA EC                 7792 	mov	a,r4
                           7793 ;	Peephole 160.f	removed sjmp by inverse jump logic
   38EB 30 E0 03           7794 	jnb	acc.0,00158$
   38EE                    7795 00157$:
   38EE 02 3B E5           7796 	ljmp	00122$
   38F1                    7797 00158$:
                           7798 ;	FatDrivers/tff.c:939: if (--fp->sect_clust) {					/* Decrement left sector counter */
                           7799 ;	genIpush
                           7800 ;	genPlus
   38F1 A8 10              7801 	mov	r0,_bp
   38F3 08                 7802 	inc	r0
   38F4 E5 10              7803 	mov	a,_bp
   38F6 24 32              7804 	add	a,#0x32
   38F8 F9                 7805 	mov	r1,a
                           7806 ;     genPlusIncr
   38F9 74 03              7807 	mov	a,#0x03
   38FB 26                 7808 	add	a,@r0
   38FC F7                 7809 	mov	@r1,a
                           7810 ;	Peephole 181	changed mov to clr
   38FD E4                 7811 	clr	a
   38FE 08                 7812 	inc	r0
   38FF 36                 7813 	addc	a,@r0
   3900 09                 7814 	inc	r1
   3901 F7                 7815 	mov	@r1,a
   3902 08                 7816 	inc	r0
   3903 09                 7817 	inc	r1
   3904 E6                 7818 	mov	a,@r0
   3905 F7                 7819 	mov	@r1,a
                           7820 ;	genPointerGet
                           7821 ;	genGenPointerGet
   3906 E5 10              7822 	mov	a,_bp
   3908 24 32              7823 	add	a,#0x32
   390A F8                 7824 	mov	r0,a
   390B 86 82              7825 	mov	dpl,@r0
   390D 08                 7826 	inc	r0
   390E 86 83              7827 	mov	dph,@r0
   3910 08                 7828 	inc	r0
   3911 86 F0              7829 	mov	b,@r0
   3913 12 62 42           7830 	lcall	__gptrget
   3916 FA                 7831 	mov	r2,a
                           7832 ;	genMinus
                           7833 ;	genMinusDec
   3917 1A                 7834 	dec	r2
                           7835 ;	genPointerSet
                           7836 ;	genGenPointerSet
   3918 E5 10              7837 	mov	a,_bp
   391A 24 32              7838 	add	a,#0x32
   391C F8                 7839 	mov	r0,a
   391D 86 82              7840 	mov	dpl,@r0
   391F 08                 7841 	inc	r0
   3920 86 83              7842 	mov	dph,@r0
   3922 08                 7843 	inc	r0
   3923 86 F0              7844 	mov	b,@r0
                           7845 ;	genIfx
   3925 EA                 7846 	mov	a,r2
   3926 12 5E A4           7847 	lcall	__gptrput
                           7848 ;	Peephole 190	removed redundant mov
                           7849 ;	genIpop
                           7850 ;	genIfxJump
                           7851 ;	Peephole 108.c	removed ljmp by inverse jump logic
   3929 60 38              7852 	jz	00113$
                           7853 ;	Peephole 300	removed redundant label 00159$
                           7854 ;	FatDrivers/tff.c:940: sect = fp->curr_sect + 1;			/* Get current sector */
                           7855 ;	genIpush
                           7856 ;	genPointerGet
                           7857 ;	genGenPointerGet
   392B E5 10              7858 	mov	a,_bp
   392D 24 28              7859 	add	a,#0x28
   392F F8                 7860 	mov	r0,a
   3930 86 82              7861 	mov	dpl,@r0
   3932 08                 7862 	inc	r0
   3933 86 83              7863 	mov	dph,@r0
   3935 08                 7864 	inc	r0
   3936 86 F0              7865 	mov	b,@r0
   3938 12 62 42           7866 	lcall	__gptrget
   393B FA                 7867 	mov	r2,a
   393C A3                 7868 	inc	dptr
   393D 12 62 42           7869 	lcall	__gptrget
   3940 FB                 7870 	mov	r3,a
   3941 A3                 7871 	inc	dptr
   3942 12 62 42           7872 	lcall	__gptrget
   3945 FC                 7873 	mov	r4,a
   3946 A3                 7874 	inc	dptr
   3947 12 62 42           7875 	lcall	__gptrget
   394A FD                 7876 	mov	r5,a
                           7877 ;	genPlus
   394B E5 10              7878 	mov	a,_bp
   394D 24 04              7879 	add	a,#0x04
   394F F8                 7880 	mov	r0,a
                           7881 ;     genPlusIncr
   3950 74 01              7882 	mov	a,#0x01
                           7883 ;	Peephole 236.a	used r2 instead of ar2
   3952 2A                 7884 	add	a,r2
   3953 F6                 7885 	mov	@r0,a
                           7886 ;	Peephole 181	changed mov to clr
   3954 E4                 7887 	clr	a
                           7888 ;	Peephole 236.b	used r3 instead of ar3
   3955 3B                 7889 	addc	a,r3
   3956 08                 7890 	inc	r0
   3957 F6                 7891 	mov	@r0,a
                           7892 ;	Peephole 181	changed mov to clr
   3958 E4                 7893 	clr	a
                           7894 ;	Peephole 236.b	used r4 instead of ar4
   3959 3C                 7895 	addc	a,r4
   395A 08                 7896 	inc	r0
   395B F6                 7897 	mov	@r0,a
                           7898 ;	Peephole 181	changed mov to clr
   395C E4                 7899 	clr	a
                           7900 ;	Peephole 236.b	used r5 instead of ar5
   395D 3D                 7901 	addc	a,r5
   395E 08                 7902 	inc	r0
   395F F6                 7903 	mov	@r0,a
                           7904 ;	genIpop
   3960 02 3A 94           7905 	ljmp	00114$
   3963                    7906 00113$:
                           7907 ;	FatDrivers/tff.c:942: clust = (fp->fptr == 0) ?
                           7908 ;	genNot
   3963 EB                 7909 	mov	a,r3
   3964 4C                 7910 	orl	a,r4
   3965 4D                 7911 	orl	a,r5
   3966 4E                 7912 	orl	a,r6
   3967 B4 01 00           7913 	cjne	a,#0x01,00160$
   396A                    7914 00160$:
   396A E4                 7915 	clr	a
   396B 33                 7916 	rlc	a
                           7917 ;	genIfx
   396C FD                 7918 	mov	r5,a
                           7919 ;	Peephole 105	removed redundant mov
                           7920 ;	genIfxJump
                           7921 ;	Peephole 108.c	removed ljmp by inverse jump logic
   396D 60 22              7922 	jz	00134$
                           7923 ;	Peephole 300	removed redundant label 00161$
                           7924 ;	FatDrivers/tff.c:943: fp->org_clust : get_cluster(fp->curr_clust);
                           7925 ;	genPointerGet
                           7926 ;	genGenPointerGet
   396F E5 10              7927 	mov	a,_bp
   3971 24 1E              7928 	add	a,#0x1e
   3973 F8                 7929 	mov	r0,a
   3974 86 82              7930 	mov	dpl,@r0
   3976 08                 7931 	inc	r0
   3977 86 83              7932 	mov	dph,@r0
   3979 08                 7933 	inc	r0
   397A 86 F0              7934 	mov	b,@r0
   397C 12 62 42           7935 	lcall	__gptrget
   397F FD                 7936 	mov	r5,a
   3980 A3                 7937 	inc	dptr
   3981 12 62 42           7938 	lcall	__gptrget
   3984 FE                 7939 	mov	r6,a
   3985 A3                 7940 	inc	dptr
   3986 12 62 42           7941 	lcall	__gptrget
   3989 FF                 7942 	mov	r7,a
   398A A3                 7943 	inc	dptr
   398B 12 62 42           7944 	lcall	__gptrget
   398E FA                 7945 	mov	r2,a
                           7946 ;	Peephole 112.b	changed ljmp to sjmp
   398F 80 30              7947 	sjmp	00135$
   3991                    7948 00134$:
                           7949 ;	genPointerGet
                           7950 ;	genGenPointerGet
   3991 E5 10              7951 	mov	a,_bp
   3993 24 35              7952 	add	a,#0x35
   3995 F8                 7953 	mov	r0,a
   3996 86 82              7954 	mov	dpl,@r0
   3998 08                 7955 	inc	r0
   3999 86 83              7956 	mov	dph,@r0
   399B 08                 7957 	inc	r0
   399C 86 F0              7958 	mov	b,@r0
   399E 12 62 42           7959 	lcall	__gptrget
   39A1 FA                 7960 	mov	r2,a
   39A2 A3                 7961 	inc	dptr
   39A3 12 62 42           7962 	lcall	__gptrget
   39A6 FB                 7963 	mov	r3,a
   39A7 A3                 7964 	inc	dptr
   39A8 12 62 42           7965 	lcall	__gptrget
   39AB FC                 7966 	mov	r4,a
   39AC A3                 7967 	inc	dptr
   39AD 12 62 42           7968 	lcall	__gptrget
                           7969 ;	genCall
   39B0 FD                 7970 	mov	r5,a
   39B1 8A 82              7971 	mov	dpl,r2
   39B3 8B 83              7972 	mov	dph,r3
   39B5 8C F0              7973 	mov	b,r4
                           7974 ;	Peephole 191	removed redundant mov
   39B7 12 18 63           7975 	lcall	_get_cluster
   39BA AD 82              7976 	mov	r5,dpl
   39BC AE 83              7977 	mov	r6,dph
   39BE AF F0              7978 	mov	r7,b
   39C0 FA                 7979 	mov	r2,a
   39C1                    7980 00135$:
                           7981 ;	genAssign
   39C1 E5 10              7982 	mov	a,_bp
   39C3 24 0E              7983 	add	a,#0x0e
   39C5 F8                 7984 	mov	r0,a
   39C6 A6 05              7985 	mov	@r0,ar5
   39C8 08                 7986 	inc	r0
   39C9 A6 06              7987 	mov	@r0,ar6
   39CB 08                 7988 	inc	r0
   39CC A6 07              7989 	mov	@r0,ar7
   39CE 08                 7990 	inc	r0
   39CF A6 02              7991 	mov	@r0,ar2
                           7992 ;	FatDrivers/tff.c:944: if (clust < 2 || clust >= fs->max_clust)
                           7993 ;	genCmpLt
   39D1 E5 10              7994 	mov	a,_bp
   39D3 24 0E              7995 	add	a,#0x0e
   39D5 F8                 7996 	mov	r0,a
                           7997 ;	genCmp
   39D6 C3                 7998 	clr	c
   39D7 E6                 7999 	mov	a,@r0
   39D8 94 02              8000 	subb	a,#0x02
   39DA 08                 8001 	inc	r0
   39DB E6                 8002 	mov	a,@r0
   39DC 94 00              8003 	subb	a,#0x00
   39DE 08                 8004 	inc	r0
   39DF E6                 8005 	mov	a,@r0
   39E0 94 00              8006 	subb	a,#0x00
   39E2 08                 8007 	inc	r0
   39E3 E6                 8008 	mov	a,@r0
   39E4 94 00              8009 	subb	a,#0x00
                           8010 ;	genIfxJump
   39E6 50 03              8011 	jnc	00162$
   39E8 02 3D 94           8012 	ljmp	00131$
   39EB                    8013 00162$:
                           8014 ;	genPointerGet
                           8015 ;	genGenPointerGet
   39EB E5 10              8016 	mov	a,_bp
   39ED 24 22              8017 	add	a,#0x22
   39EF F8                 8018 	mov	r0,a
   39F0 86 82              8019 	mov	dpl,@r0
   39F2 08                 8020 	inc	r0
   39F3 86 83              8021 	mov	dph,@r0
   39F5 08                 8022 	inc	r0
   39F6 86 F0              8023 	mov	b,@r0
   39F8 12 62 42           8024 	lcall	__gptrget
   39FB FE                 8025 	mov	r6,a
   39FC A3                 8026 	inc	dptr
   39FD 12 62 42           8027 	lcall	__gptrget
   3A00 FF                 8028 	mov	r7,a
   3A01 A3                 8029 	inc	dptr
   3A02 12 62 42           8030 	lcall	__gptrget
   3A05 FA                 8031 	mov	r2,a
   3A06 A3                 8032 	inc	dptr
   3A07 12 62 42           8033 	lcall	__gptrget
   3A0A FB                 8034 	mov	r3,a
                           8035 ;	genCmpLt
   3A0B E5 10              8036 	mov	a,_bp
   3A0D 24 0E              8037 	add	a,#0x0e
   3A0F F8                 8038 	mov	r0,a
                           8039 ;	genCmp
   3A10 C3                 8040 	clr	c
   3A11 E6                 8041 	mov	a,@r0
   3A12 9E                 8042 	subb	a,r6
   3A13 08                 8043 	inc	r0
   3A14 E6                 8044 	mov	a,@r0
   3A15 9F                 8045 	subb	a,r7
   3A16 08                 8046 	inc	r0
   3A17 E6                 8047 	mov	a,@r0
   3A18 9A                 8048 	subb	a,r2
   3A19 08                 8049 	inc	r0
   3A1A E6                 8050 	mov	a,@r0
   3A1B 9B                 8051 	subb	a,r3
                           8052 ;	genIfxJump
   3A1C 40 03              8053 	jc	00163$
   3A1E 02 3D 94           8054 	ljmp	00131$
   3A21                    8055 00163$:
                           8056 ;	FatDrivers/tff.c:946: fp->curr_clust = clust;				/* Current cluster */
                           8057 ;	genPointerSet
                           8058 ;	genGenPointerSet
   3A21 E5 10              8059 	mov	a,_bp
   3A23 24 35              8060 	add	a,#0x35
   3A25 F8                 8061 	mov	r0,a
   3A26 86 82              8062 	mov	dpl,@r0
   3A28 08                 8063 	inc	r0
   3A29 86 83              8064 	mov	dph,@r0
   3A2B 08                 8065 	inc	r0
   3A2C 86 F0              8066 	mov	b,@r0
   3A2E E5 10              8067 	mov	a,_bp
   3A30 24 0E              8068 	add	a,#0x0e
   3A32 F9                 8069 	mov	r1,a
   3A33 E7                 8070 	mov	a,@r1
   3A34 12 5E A4           8071 	lcall	__gptrput
   3A37 A3                 8072 	inc	dptr
   3A38 09                 8073 	inc	r1
   3A39 E7                 8074 	mov	a,@r1
   3A3A 12 5E A4           8075 	lcall	__gptrput
   3A3D A3                 8076 	inc	dptr
   3A3E 09                 8077 	inc	r1
   3A3F E7                 8078 	mov	a,@r1
   3A40 12 5E A4           8079 	lcall	__gptrput
   3A43 A3                 8080 	inc	dptr
   3A44 09                 8081 	inc	r1
   3A45 E7                 8082 	mov	a,@r1
   3A46 12 5E A4           8083 	lcall	__gptrput
                           8084 ;	FatDrivers/tff.c:947: sect = clust2sect(clust);			/* Get current sector */
                           8085 ;	genCall
   3A49 E5 10              8086 	mov	a,_bp
   3A4B 24 0E              8087 	add	a,#0x0e
   3A4D F8                 8088 	mov	r0,a
   3A4E 86 82              8089 	mov	dpl,@r0
   3A50 08                 8090 	inc	r0
   3A51 86 83              8091 	mov	dph,@r0
   3A53 08                 8092 	inc	r0
   3A54 86 F0              8093 	mov	b,@r0
   3A56 08                 8094 	inc	r0
   3A57 E6                 8095 	mov	a,@r0
   3A58 12 1B 9F           8096 	lcall	_clust2sect
   3A5B AA 82              8097 	mov	r2,dpl
   3A5D AB 83              8098 	mov	r3,dph
   3A5F AC F0              8099 	mov	r4,b
   3A61 FD                 8100 	mov	r5,a
                           8101 ;	genAssign
   3A62 E5 10              8102 	mov	a,_bp
   3A64 24 04              8103 	add	a,#0x04
   3A66 F8                 8104 	mov	r0,a
   3A67 A6 02              8105 	mov	@r0,ar2
   3A69 08                 8106 	inc	r0
   3A6A A6 03              8107 	mov	@r0,ar3
   3A6C 08                 8108 	inc	r0
   3A6D A6 04              8109 	mov	@r0,ar4
   3A6F 08                 8110 	inc	r0
   3A70 A6 05              8111 	mov	@r0,ar5
                           8112 ;	FatDrivers/tff.c:948: fp->sect_clust = fs->sects_clust;	/* Re-initialize the left sector counter */
                           8113 ;	genPointerGet
                           8114 ;	genGenPointerGet
   3A72 E5 10              8115 	mov	a,_bp
   3A74 24 25              8116 	add	a,#0x25
   3A76 F8                 8117 	mov	r0,a
   3A77 86 82              8118 	mov	dpl,@r0
   3A79 08                 8119 	inc	r0
   3A7A 86 83              8120 	mov	dph,@r0
   3A7C 08                 8121 	inc	r0
   3A7D 86 F0              8122 	mov	b,@r0
   3A7F 12 62 42           8123 	lcall	__gptrget
   3A82 FA                 8124 	mov	r2,a
                           8125 ;	genPointerSet
                           8126 ;	genGenPointerSet
   3A83 E5 10              8127 	mov	a,_bp
   3A85 24 32              8128 	add	a,#0x32
   3A87 F8                 8129 	mov	r0,a
   3A88 86 82              8130 	mov	dpl,@r0
   3A8A 08                 8131 	inc	r0
   3A8B 86 83              8132 	mov	dph,@r0
   3A8D 08                 8133 	inc	r0
   3A8E 86 F0              8134 	mov	b,@r0
   3A90 EA                 8135 	mov	a,r2
   3A91 12 5E A4           8136 	lcall	__gptrput
   3A94                    8137 00114$:
                           8138 ;	FatDrivers/tff.c:950: fp->curr_sect = sect;					/* Update current sector */
                           8139 ;	genPointerSet
                           8140 ;	genGenPointerSet
   3A94 E5 10              8141 	mov	a,_bp
   3A96 24 28              8142 	add	a,#0x28
   3A98 F8                 8143 	mov	r0,a
   3A99 86 82              8144 	mov	dpl,@r0
   3A9B 08                 8145 	inc	r0
   3A9C 86 83              8146 	mov	dph,@r0
   3A9E 08                 8147 	inc	r0
   3A9F 86 F0              8148 	mov	b,@r0
   3AA1 E5 10              8149 	mov	a,_bp
   3AA3 24 04              8150 	add	a,#0x04
   3AA5 F9                 8151 	mov	r1,a
   3AA6 E7                 8152 	mov	a,@r1
   3AA7 12 5E A4           8153 	lcall	__gptrput
   3AAA A3                 8154 	inc	dptr
   3AAB 09                 8155 	inc	r1
   3AAC E7                 8156 	mov	a,@r1
   3AAD 12 5E A4           8157 	lcall	__gptrput
   3AB0 A3                 8158 	inc	dptr
   3AB1 09                 8159 	inc	r1
   3AB2 E7                 8160 	mov	a,@r1
   3AB3 12 5E A4           8161 	lcall	__gptrput
   3AB6 A3                 8162 	inc	dptr
   3AB7 09                 8163 	inc	r1
   3AB8 E7                 8164 	mov	a,@r1
   3AB9 12 5E A4           8165 	lcall	__gptrput
                           8166 ;	FatDrivers/tff.c:951: cc = btr / 512;							/* When left bytes >= 512, */
                           8167 ;	genRightShift
                           8168 ;	genRightShiftLiteral
   3ABC E5 10              8169 	mov	a,_bp
   3ABE 24 F9              8170 	add	a,#0xfffffff9
                           8171 ;	genrshTwo
                           8172 ;	Peephole 185	changed order of increment (acc incremented also!)
   3AC0 04                 8173 	inc	a
   3AC1 F8                 8174 	mov	r0,a
   3AC2 E6                 8175 	mov	a,@r0
   3AC3 C3                 8176 	clr	c
   3AC4 13                 8177 	rrc	a
                           8178 ;	FatDrivers/tff.c:952: if (cc) {								/* Read maximum contiguous sectors directly */
                           8179 ;	genIfx
   3AC5 FE                 8180 	mov	r6,a
   3AC6 7F 00              8181 	mov	r7,#0x00
                           8182 ;	Peephole 177.d	removed redundant move
   3AC8 4F                 8183 	orl	a,r7
                           8184 ;	genIfxJump
   3AC9 70 03              8185 	jnz	00164$
   3ACB 02 3B E5           8186 	ljmp	00122$
   3ACE                    8187 00164$:
                           8188 ;	FatDrivers/tff.c:953: if (cc > fp->sect_clust) cc = fp->sect_clust;
                           8189 ;	genPointerGet
                           8190 ;	genGenPointerGet
   3ACE E5 10              8191 	mov	a,_bp
   3AD0 24 32              8192 	add	a,#0x32
   3AD2 F8                 8193 	mov	r0,a
   3AD3 86 82              8194 	mov	dpl,@r0
   3AD5 08                 8195 	inc	r0
   3AD6 86 83              8196 	mov	dph,@r0
   3AD8 08                 8197 	inc	r0
   3AD9 86 F0              8198 	mov	b,@r0
   3ADB 12 62 42           8199 	lcall	__gptrget
   3ADE FC                 8200 	mov	r4,a
                           8201 ;	genCast
   3ADF 7D 00              8202 	mov	r5,#0x00
                           8203 ;	genCmpGt
                           8204 ;	genCmp
   3AE1 C3                 8205 	clr	c
   3AE2 EC                 8206 	mov	a,r4
   3AE3 9E                 8207 	subb	a,r6
   3AE4 ED                 8208 	mov	a,r5
   3AE5 9F                 8209 	subb	a,r7
                           8210 ;	genIfxJump
                           8211 ;	Peephole 108.a	removed ljmp by inverse jump logic
   3AE6 50 15              8212 	jnc	00116$
                           8213 ;	Peephole 300	removed redundant label 00165$
                           8214 ;	genPointerGet
                           8215 ;	genGenPointerGet
   3AE8 E5 10              8216 	mov	a,_bp
   3AEA 24 32              8217 	add	a,#0x32
   3AEC F8                 8218 	mov	r0,a
   3AED 86 82              8219 	mov	dpl,@r0
   3AEF 08                 8220 	inc	r0
   3AF0 86 83              8221 	mov	dph,@r0
   3AF2 08                 8222 	inc	r0
   3AF3 86 F0              8223 	mov	b,@r0
   3AF5 12 62 42           8224 	lcall	__gptrget
   3AF8 FC                 8225 	mov	r4,a
                           8226 ;	genCast
   3AF9 8C 06              8227 	mov	ar6,r4
   3AFB 7F 00              8228 	mov	r7,#0x00
   3AFD                    8229 00116$:
                           8230 ;	FatDrivers/tff.c:954: if(disk_read(0, rbuff, sect, (BYTE)cc) != RES_OK)
                           8231 ;	genCast
   3AFD 8E 04              8232 	mov	ar4,r6
                           8233 ;	genIpush
   3AFF C0 04              8234 	push	ar4
   3B01 C0 06              8235 	push	ar6
   3B03 C0 07              8236 	push	ar7
   3B05 C0 04              8237 	push	ar4
                           8238 ;	genIpush
   3B07 E5 10              8239 	mov	a,_bp
   3B09 24 04              8240 	add	a,#0x04
   3B0B F8                 8241 	mov	r0,a
   3B0C E6                 8242 	mov	a,@r0
   3B0D C0 E0              8243 	push	acc
   3B0F 08                 8244 	inc	r0
   3B10 E6                 8245 	mov	a,@r0
   3B11 C0 E0              8246 	push	acc
   3B13 08                 8247 	inc	r0
   3B14 E6                 8248 	mov	a,@r0
   3B15 C0 E0              8249 	push	acc
   3B17 08                 8250 	inc	r0
   3B18 E6                 8251 	mov	a,@r0
   3B19 C0 E0              8252 	push	acc
                           8253 ;	genIpush
   3B1B E5 10              8254 	mov	a,_bp
   3B1D 24 12              8255 	add	a,#0x12
   3B1F F8                 8256 	mov	r0,a
   3B20 E6                 8257 	mov	a,@r0
   3B21 C0 E0              8258 	push	acc
   3B23 08                 8259 	inc	r0
   3B24 E6                 8260 	mov	a,@r0
   3B25 C0 E0              8261 	push	acc
   3B27 08                 8262 	inc	r0
   3B28 E6                 8263 	mov	a,@r0
   3B29 C0 E0              8264 	push	acc
                           8265 ;	genCall
   3B2B 75 82 00           8266 	mov	dpl,#0x00
   3B2E 12 0D 3E           8267 	lcall	_disk_read
   3B31 AD 82              8268 	mov	r5,dpl
   3B33 E5 81              8269 	mov	a,sp
   3B35 24 F8              8270 	add	a,#0xf8
   3B37 F5 81              8271 	mov	sp,a
   3B39 D0 07              8272 	pop	ar7
   3B3B D0 06              8273 	pop	ar6
   3B3D D0 04              8274 	pop	ar4
                           8275 ;	genCmpEq
                           8276 ;	gencjneshort
   3B3F BD 00 02           8277 	cjne	r5,#0x00,00166$
   3B42 80 03              8278 	sjmp	00167$
   3B44                    8279 00166$:
   3B44 02 3D 94           8280 	ljmp	00131$
   3B47                    8281 00167$:
                           8282 ;	FatDrivers/tff.c:956: fp->sect_clust -= (BYTE)(cc - 1);
                           8283 ;	genPointerGet
                           8284 ;	genGenPointerGet
   3B47 E5 10              8285 	mov	a,_bp
   3B49 24 32              8286 	add	a,#0x32
   3B4B F8                 8287 	mov	r0,a
   3B4C 86 82              8288 	mov	dpl,@r0
   3B4E 08                 8289 	inc	r0
   3B4F 86 83              8290 	mov	dph,@r0
   3B51 08                 8291 	inc	r0
   3B52 86 F0              8292 	mov	b,@r0
   3B54 12 62 42           8293 	lcall	__gptrget
   3B57 FD                 8294 	mov	r5,a
                           8295 ;	genMinus
                           8296 ;	genMinusDec
   3B58 EC                 8297 	mov	a,r4
   3B59 14                 8298 	dec	a
                           8299 ;	genMinus
   3B5A D3                 8300 	setb	c
                           8301 ;	Peephole 236.l	used r5 instead of ar5
   3B5B 9D                 8302 	subb	a,r5
   3B5C F4                 8303 	cpl	a
   3B5D FD                 8304 	mov	r5,a
                           8305 ;	genPointerSet
                           8306 ;	genGenPointerSet
   3B5E E5 10              8307 	mov	a,_bp
   3B60 24 32              8308 	add	a,#0x32
   3B62 F8                 8309 	mov	r0,a
   3B63 86 82              8310 	mov	dpl,@r0
   3B65 08                 8311 	inc	r0
   3B66 86 83              8312 	mov	dph,@r0
   3B68 08                 8313 	inc	r0
   3B69 86 F0              8314 	mov	b,@r0
   3B6B ED                 8315 	mov	a,r5
   3B6C 12 5E A4           8316 	lcall	__gptrput
                           8317 ;	FatDrivers/tff.c:957: fp->curr_sect += cc - 1;
                           8318 ;	genPointerGet
                           8319 ;	genGenPointerGet
   3B6F E5 10              8320 	mov	a,_bp
   3B71 24 28              8321 	add	a,#0x28
   3B73 F8                 8322 	mov	r0,a
   3B74 86 82              8323 	mov	dpl,@r0
   3B76 08                 8324 	inc	r0
   3B77 86 83              8325 	mov	dph,@r0
   3B79 08                 8326 	inc	r0
   3B7A 86 F0              8327 	mov	b,@r0
   3B7C E5 10              8328 	mov	a,_bp
   3B7E 24 2E              8329 	add	a,#0x2e
   3B80 F9                 8330 	mov	r1,a
   3B81 12 62 42           8331 	lcall	__gptrget
   3B84 F7                 8332 	mov	@r1,a
   3B85 A3                 8333 	inc	dptr
   3B86 12 62 42           8334 	lcall	__gptrget
   3B89 09                 8335 	inc	r1
   3B8A F7                 8336 	mov	@r1,a
   3B8B A3                 8337 	inc	dptr
   3B8C 12 62 42           8338 	lcall	__gptrget
   3B8F 09                 8339 	inc	r1
   3B90 F7                 8340 	mov	@r1,a
   3B91 A3                 8341 	inc	dptr
   3B92 12 62 42           8342 	lcall	__gptrget
   3B95 09                 8343 	inc	r1
   3B96 F7                 8344 	mov	@r1,a
                           8345 ;	genMinus
                           8346 ;	genMinusDec
   3B97 EE                 8347 	mov	a,r6
   3B98 24 FF              8348 	add	a,#0xff
   3B9A FA                 8349 	mov	r2,a
   3B9B EF                 8350 	mov	a,r7
   3B9C 34 FF              8351 	addc	a,#0xff
   3B9E FB                 8352 	mov	r3,a
                           8353 ;	genCast
                           8354 ;	genPlus
                           8355 ;	Peephole 3.c	changed mov to clr
   3B9F E4                 8356 	clr	a
   3BA0 FC                 8357 	mov	r4,a
   3BA1 FD                 8358 	mov	r5,a
   3BA2 E5 10              8359 	mov	a,_bp
   3BA4 24 2E              8360 	add	a,#0x2e
   3BA6 F8                 8361 	mov	r0,a
                           8362 ;	Peephole 236.g	used r2 instead of ar2
   3BA7 EA                 8363 	mov	a,r2
   3BA8 26                 8364 	add	a,@r0
   3BA9 FA                 8365 	mov	r2,a
                           8366 ;	Peephole 236.g	used r3 instead of ar3
   3BAA EB                 8367 	mov	a,r3
   3BAB 08                 8368 	inc	r0
   3BAC 36                 8369 	addc	a,@r0
   3BAD FB                 8370 	mov	r3,a
                           8371 ;	Peephole 236.g	used r4 instead of ar4
   3BAE EC                 8372 	mov	a,r4
   3BAF 08                 8373 	inc	r0
   3BB0 36                 8374 	addc	a,@r0
   3BB1 FC                 8375 	mov	r4,a
                           8376 ;	Peephole 236.g	used r5 instead of ar5
   3BB2 ED                 8377 	mov	a,r5
   3BB3 08                 8378 	inc	r0
   3BB4 36                 8379 	addc	a,@r0
   3BB5 FD                 8380 	mov	r5,a
                           8381 ;	genPointerSet
                           8382 ;	genGenPointerSet
   3BB6 E5 10              8383 	mov	a,_bp
   3BB8 24 28              8384 	add	a,#0x28
   3BBA F8                 8385 	mov	r0,a
   3BBB 86 82              8386 	mov	dpl,@r0
   3BBD 08                 8387 	inc	r0
   3BBE 86 83              8388 	mov	dph,@r0
   3BC0 08                 8389 	inc	r0
   3BC1 86 F0              8390 	mov	b,@r0
   3BC3 EA                 8391 	mov	a,r2
   3BC4 12 5E A4           8392 	lcall	__gptrput
   3BC7 A3                 8393 	inc	dptr
   3BC8 EB                 8394 	mov	a,r3
   3BC9 12 5E A4           8395 	lcall	__gptrput
   3BCC A3                 8396 	inc	dptr
   3BCD EC                 8397 	mov	a,r4
   3BCE 12 5E A4           8398 	lcall	__gptrput
   3BD1 A3                 8399 	inc	dptr
   3BD2 ED                 8400 	mov	a,r5
   3BD3 12 5E A4           8401 	lcall	__gptrput
                           8402 ;	FatDrivers/tff.c:958: rcnt = cc * 512;
                           8403 ;	genLeftShift
                           8404 ;	genLeftShiftLiteral
   3BD6 E5 10              8405 	mov	a,_bp
   3BD8 24 0C              8406 	add	a,#0x0c
   3BDA F8                 8407 	mov	r0,a
                           8408 ;	genlshTwo
   3BDB EE                 8409 	mov	a,r6
                           8410 ;	Peephole 254	optimized left shift
   3BDC 2E                 8411 	add	a,r6
   3BDD 08                 8412 	inc	r0
   3BDE F6                 8413 	mov	@r0,a
   3BDF 18                 8414 	dec	r0
   3BE0 76 00              8415 	mov	@r0,#0x00
                           8416 ;	FatDrivers/tff.c:959: continue;
   3BE2 02 3C C6           8417 	ljmp	00129$
   3BE5                    8418 00122$:
                           8419 ;	FatDrivers/tff.c:962: if (!move_window(fp->curr_sect)) goto fr_error;	/* Move sector window */
                           8420 ;	genPointerGet
                           8421 ;	genGenPointerGet
   3BE5 E5 10              8422 	mov	a,_bp
   3BE7 24 28              8423 	add	a,#0x28
   3BE9 F8                 8424 	mov	r0,a
   3BEA 86 82              8425 	mov	dpl,@r0
   3BEC 08                 8426 	inc	r0
   3BED 86 83              8427 	mov	dph,@r0
   3BEF 08                 8428 	inc	r0
   3BF0 86 F0              8429 	mov	b,@r0
   3BF2 12 62 42           8430 	lcall	__gptrget
   3BF5 FC                 8431 	mov	r4,a
   3BF6 A3                 8432 	inc	dptr
   3BF7 12 62 42           8433 	lcall	__gptrget
   3BFA FD                 8434 	mov	r5,a
   3BFB A3                 8435 	inc	dptr
   3BFC 12 62 42           8436 	lcall	__gptrget
   3BFF FE                 8437 	mov	r6,a
   3C00 A3                 8438 	inc	dptr
   3C01 12 62 42           8439 	lcall	__gptrget
                           8440 ;	genCall
   3C04 FF                 8441 	mov	r7,a
   3C05 8C 82              8442 	mov	dpl,r4
   3C07 8D 83              8443 	mov	dph,r5
   3C09 8E F0              8444 	mov	b,r6
                           8445 ;	Peephole 191	removed redundant mov
   3C0B 12 17 79           8446 	lcall	_move_window
   3C0E E5 82              8447 	mov	a,dpl
                           8448 ;	genIfx
                           8449 ;	genIfxJump
   3C10 70 03              8450 	jnz	00168$
   3C12 02 3D 94           8451 	ljmp	00131$
   3C15                    8452 00168$:
                           8453 ;	FatDrivers/tff.c:963: rcnt = 512 - (WORD)(fp->fptr % 512);			/* Copy fractional bytes from sector window */
                           8454 ;	genPointerGet
                           8455 ;	genGenPointerGet
   3C15 E5 10              8456 	mov	a,_bp
   3C17 24 1B              8457 	add	a,#0x1b
   3C19 F8                 8458 	mov	r0,a
   3C1A 86 82              8459 	mov	dpl,@r0
   3C1C 08                 8460 	inc	r0
   3C1D 86 83              8461 	mov	dph,@r0
   3C1F 08                 8462 	inc	r0
   3C20 86 F0              8463 	mov	b,@r0
   3C22 12 62 42           8464 	lcall	__gptrget
   3C25 FC                 8465 	mov	r4,a
   3C26 A3                 8466 	inc	dptr
   3C27 12 62 42           8467 	lcall	__gptrget
   3C2A FD                 8468 	mov	r5,a
   3C2B A3                 8469 	inc	dptr
   3C2C 12 62 42           8470 	lcall	__gptrget
   3C2F FE                 8471 	mov	r6,a
   3C30 A3                 8472 	inc	dptr
   3C31 12 62 42           8473 	lcall	__gptrget
   3C34 FF                 8474 	mov	r7,a
                           8475 ;	genAnd
   3C35 53 05 01           8476 	anl	ar5,#0x01
                           8477 ;	genCast
                           8478 ;	genMinus
                           8479 ;	Peephole 3.c	changed mov to clr
   3C38 E4                 8480 	clr	a
   3C39 FE                 8481 	mov	r6,a
   3C3A FF                 8482 	mov	r7,a
   3C3B E5 10              8483 	mov	a,_bp
   3C3D 24 0C              8484 	add	a,#0x0c
   3C3F F8                 8485 	mov	r0,a
                           8486 ;	Peephole 181	changed mov to clr
   3C40 E4                 8487 	clr	a
   3C41 C3                 8488 	clr	c
                           8489 ;	Peephole 236.l	used r4 instead of ar4
   3C42 9C                 8490 	subb	a,r4
   3C43 F6                 8491 	mov	@r0,a
   3C44 74 02              8492 	mov	a,#0x02
                           8493 ;	Peephole 236.l	used r5 instead of ar5
   3C46 9D                 8494 	subb	a,r5
   3C47 08                 8495 	inc	r0
   3C48 F6                 8496 	mov	@r0,a
                           8497 ;	FatDrivers/tff.c:964: if (rcnt > btr) rcnt = btr;
                           8498 ;	genCmpGt
   3C49 E5 10              8499 	mov	a,_bp
   3C4B 24 0C              8500 	add	a,#0x0c
   3C4D F8                 8501 	mov	r0,a
   3C4E E5 10              8502 	mov	a,_bp
   3C50 24 F9              8503 	add	a,#0xfffffff9
   3C52 F9                 8504 	mov	r1,a
                           8505 ;	genCmp
   3C53 C3                 8506 	clr	c
   3C54 E7                 8507 	mov	a,@r1
   3C55 96                 8508 	subb	a,@r0
   3C56 09                 8509 	inc	r1
   3C57 E7                 8510 	mov	a,@r1
   3C58 08                 8511 	inc	r0
   3C59 96                 8512 	subb	a,@r0
                           8513 ;	genIfxJump
                           8514 ;	Peephole 108.a	removed ljmp by inverse jump logic
   3C5A 50 10              8515 	jnc	00126$
                           8516 ;	Peephole 300	removed redundant label 00169$
                           8517 ;	genAssign
   3C5C E5 10              8518 	mov	a,_bp
   3C5E 24 F9              8519 	add	a,#0xfffffff9
   3C60 F8                 8520 	mov	r0,a
   3C61 E5 10              8521 	mov	a,_bp
   3C63 24 0C              8522 	add	a,#0x0c
   3C65 F9                 8523 	mov	r1,a
   3C66 E6                 8524 	mov	a,@r0
   3C67 F7                 8525 	mov	@r1,a
   3C68 08                 8526 	inc	r0
   3C69 09                 8527 	inc	r1
   3C6A E6                 8528 	mov	a,@r0
   3C6B F7                 8529 	mov	@r1,a
   3C6C                    8530 00126$:
                           8531 ;	FatDrivers/tff.c:965: memcpy(rbuff, &fs->win[(WORD)fp->fptr % 512], rcnt);
                           8532 ;	genPointerGet
                           8533 ;	genGenPointerGet
   3C6C E5 10              8534 	mov	a,_bp
   3C6E 24 1B              8535 	add	a,#0x1b
   3C70 F8                 8536 	mov	r0,a
   3C71 86 82              8537 	mov	dpl,@r0
   3C73 08                 8538 	inc	r0
   3C74 86 83              8539 	mov	dph,@r0
   3C76 08                 8540 	inc	r0
   3C77 86 F0              8541 	mov	b,@r0
   3C79 12 62 42           8542 	lcall	__gptrget
   3C7C FC                 8543 	mov	r4,a
   3C7D A3                 8544 	inc	dptr
   3C7E 12 62 42           8545 	lcall	__gptrget
   3C81 FD                 8546 	mov	r5,a
   3C82 A3                 8547 	inc	dptr
   3C83 12 62 42           8548 	lcall	__gptrget
   3C86 FE                 8549 	mov	r6,a
   3C87 A3                 8550 	inc	dptr
   3C88 12 62 42           8551 	lcall	__gptrget
   3C8B FF                 8552 	mov	r7,a
                           8553 ;	genCast
                           8554 ;	genAnd
   3C8C 53 05 01           8555 	anl	ar5,#0x01
                           8556 ;	genPlus
   3C8F E5 10              8557 	mov	a,_bp
   3C91 24 2B              8558 	add	a,#0x2b
   3C93 F8                 8559 	mov	r0,a
                           8560 ;	Peephole 236.g	used r4 instead of ar4
   3C94 EC                 8561 	mov	a,r4
   3C95 26                 8562 	add	a,@r0
   3C96 FC                 8563 	mov	r4,a
                           8564 ;	Peephole 236.g	used r5 instead of ar5
   3C97 ED                 8565 	mov	a,r5
   3C98 08                 8566 	inc	r0
   3C99 36                 8567 	addc	a,@r0
   3C9A FD                 8568 	mov	r5,a
   3C9B 08                 8569 	inc	r0
   3C9C 86 06              8570 	mov	ar6,@r0
                           8571 ;	genIpush
   3C9E E5 10              8572 	mov	a,_bp
   3CA0 24 0C              8573 	add	a,#0x0c
   3CA2 F8                 8574 	mov	r0,a
   3CA3 E6                 8575 	mov	a,@r0
   3CA4 C0 E0              8576 	push	acc
   3CA6 08                 8577 	inc	r0
   3CA7 E6                 8578 	mov	a,@r0
   3CA8 C0 E0              8579 	push	acc
                           8580 ;	genIpush
   3CAA C0 04              8581 	push	ar4
   3CAC C0 05              8582 	push	ar5
   3CAE C0 06              8583 	push	ar6
                           8584 ;	genCall
   3CB0 E5 10              8585 	mov	a,_bp
   3CB2 24 12              8586 	add	a,#0x12
   3CB4 F8                 8587 	mov	r0,a
   3CB5 86 82              8588 	mov	dpl,@r0
   3CB7 08                 8589 	inc	r0
   3CB8 86 83              8590 	mov	dph,@r0
   3CBA 08                 8591 	inc	r0
   3CBB 86 F0              8592 	mov	b,@r0
   3CBD 12 61 7C           8593 	lcall	_memcpy
   3CC0 E5 81              8594 	mov	a,sp
   3CC2 24 FB              8595 	add	a,#0xfb
   3CC4 F5 81              8596 	mov	sp,a
   3CC6                    8597 00129$:
                           8598 ;	FatDrivers/tff.c:937: rbuff += rcnt, fp->fptr += rcnt, *br += rcnt, btr -= rcnt) {
                           8599 ;	genPlus
   3CC6 E5 10              8600 	mov	a,_bp
   3CC8 24 12              8601 	add	a,#0x12
   3CCA F8                 8602 	mov	r0,a
   3CCB E5 10              8603 	mov	a,_bp
   3CCD 24 0C              8604 	add	a,#0x0c
   3CCF F9                 8605 	mov	r1,a
   3CD0 E7                 8606 	mov	a,@r1
   3CD1 26                 8607 	add	a,@r0
   3CD2 F6                 8608 	mov	@r0,a
   3CD3 09                 8609 	inc	r1
   3CD4 E7                 8610 	mov	a,@r1
   3CD5 08                 8611 	inc	r0
   3CD6 36                 8612 	addc	a,@r0
   3CD7 F6                 8613 	mov	@r0,a
                           8614 ;	genPointerGet
                           8615 ;	genGenPointerGet
   3CD8 E5 10              8616 	mov	a,_bp
   3CDA 24 1B              8617 	add	a,#0x1b
   3CDC F8                 8618 	mov	r0,a
   3CDD 86 82              8619 	mov	dpl,@r0
   3CDF 08                 8620 	inc	r0
   3CE0 86 83              8621 	mov	dph,@r0
   3CE2 08                 8622 	inc	r0
   3CE3 86 F0              8623 	mov	b,@r0
   3CE5 E5 10              8624 	mov	a,_bp
   3CE7 24 2E              8625 	add	a,#0x2e
   3CE9 F9                 8626 	mov	r1,a
   3CEA 12 62 42           8627 	lcall	__gptrget
   3CED F7                 8628 	mov	@r1,a
   3CEE A3                 8629 	inc	dptr
   3CEF 12 62 42           8630 	lcall	__gptrget
   3CF2 09                 8631 	inc	r1
   3CF3 F7                 8632 	mov	@r1,a
   3CF4 A3                 8633 	inc	dptr
   3CF5 12 62 42           8634 	lcall	__gptrget
   3CF8 09                 8635 	inc	r1
   3CF9 F7                 8636 	mov	@r1,a
   3CFA A3                 8637 	inc	dptr
   3CFB 12 62 42           8638 	lcall	__gptrget
   3CFE 09                 8639 	inc	r1
   3CFF F7                 8640 	mov	@r1,a
                           8641 ;	genCast
   3D00 E5 10              8642 	mov	a,_bp
   3D02 24 0C              8643 	add	a,#0x0c
   3D04 F8                 8644 	mov	r0,a
   3D05 86 02              8645 	mov	ar2,@r0
   3D07 08                 8646 	inc	r0
   3D08 86 03              8647 	mov	ar3,@r0
                           8648 ;	genPlus
                           8649 ;	Peephole 3.c	changed mov to clr
   3D0A E4                 8650 	clr	a
   3D0B FC                 8651 	mov	r4,a
   3D0C FD                 8652 	mov	r5,a
   3D0D E5 10              8653 	mov	a,_bp
   3D0F 24 2E              8654 	add	a,#0x2e
   3D11 F8                 8655 	mov	r0,a
                           8656 ;	Peephole 236.g	used r2 instead of ar2
   3D12 EA                 8657 	mov	a,r2
   3D13 26                 8658 	add	a,@r0
   3D14 FA                 8659 	mov	r2,a
                           8660 ;	Peephole 236.g	used r3 instead of ar3
   3D15 EB                 8661 	mov	a,r3
   3D16 08                 8662 	inc	r0
   3D17 36                 8663 	addc	a,@r0
   3D18 FB                 8664 	mov	r3,a
                           8665 ;	Peephole 236.g	used r4 instead of ar4
   3D19 EC                 8666 	mov	a,r4
   3D1A 08                 8667 	inc	r0
   3D1B 36                 8668 	addc	a,@r0
   3D1C FC                 8669 	mov	r4,a
                           8670 ;	Peephole 236.g	used r5 instead of ar5
   3D1D ED                 8671 	mov	a,r5
   3D1E 08                 8672 	inc	r0
   3D1F 36                 8673 	addc	a,@r0
   3D20 FD                 8674 	mov	r5,a
                           8675 ;	genPointerSet
                           8676 ;	genGenPointerSet
   3D21 E5 10              8677 	mov	a,_bp
   3D23 24 1B              8678 	add	a,#0x1b
   3D25 F8                 8679 	mov	r0,a
   3D26 86 82              8680 	mov	dpl,@r0
   3D28 08                 8681 	inc	r0
   3D29 86 83              8682 	mov	dph,@r0
   3D2B 08                 8683 	inc	r0
   3D2C 86 F0              8684 	mov	b,@r0
   3D2E EA                 8685 	mov	a,r2
   3D2F 12 5E A4           8686 	lcall	__gptrput
   3D32 A3                 8687 	inc	dptr
   3D33 EB                 8688 	mov	a,r3
   3D34 12 5E A4           8689 	lcall	__gptrput
   3D37 A3                 8690 	inc	dptr
   3D38 EC                 8691 	mov	a,r4
   3D39 12 5E A4           8692 	lcall	__gptrput
   3D3C A3                 8693 	inc	dptr
   3D3D ED                 8694 	mov	a,r5
   3D3E 12 5E A4           8695 	lcall	__gptrput
                           8696 ;	genPointerGet
                           8697 ;	genGenPointerGet
   3D41 E5 10              8698 	mov	a,_bp
   3D43 24 18              8699 	add	a,#0x18
   3D45 F8                 8700 	mov	r0,a
   3D46 86 82              8701 	mov	dpl,@r0
   3D48 08                 8702 	inc	r0
   3D49 86 83              8703 	mov	dph,@r0
   3D4B 08                 8704 	inc	r0
   3D4C 86 F0              8705 	mov	b,@r0
   3D4E 12 62 42           8706 	lcall	__gptrget
   3D51 FA                 8707 	mov	r2,a
   3D52 A3                 8708 	inc	dptr
   3D53 12 62 42           8709 	lcall	__gptrget
   3D56 FB                 8710 	mov	r3,a
                           8711 ;	genPlus
   3D57 E5 10              8712 	mov	a,_bp
   3D59 24 0C              8713 	add	a,#0x0c
   3D5B F8                 8714 	mov	r0,a
   3D5C E6                 8715 	mov	a,@r0
                           8716 ;	Peephole 236.a	used r2 instead of ar2
   3D5D 2A                 8717 	add	a,r2
   3D5E FA                 8718 	mov	r2,a
   3D5F 08                 8719 	inc	r0
   3D60 E6                 8720 	mov	a,@r0
                           8721 ;	Peephole 236.b	used r3 instead of ar3
   3D61 3B                 8722 	addc	a,r3
   3D62 FB                 8723 	mov	r3,a
                           8724 ;	genPointerSet
                           8725 ;	genGenPointerSet
   3D63 E5 10              8726 	mov	a,_bp
   3D65 24 18              8727 	add	a,#0x18
   3D67 F8                 8728 	mov	r0,a
   3D68 86 82              8729 	mov	dpl,@r0
   3D6A 08                 8730 	inc	r0
   3D6B 86 83              8731 	mov	dph,@r0
   3D6D 08                 8732 	inc	r0
   3D6E 86 F0              8733 	mov	b,@r0
   3D70 EA                 8734 	mov	a,r2
   3D71 12 5E A4           8735 	lcall	__gptrput
   3D74 A3                 8736 	inc	dptr
   3D75 EB                 8737 	mov	a,r3
   3D76 12 5E A4           8738 	lcall	__gptrput
                           8739 ;	genMinus
   3D79 E5 10              8740 	mov	a,_bp
   3D7B 24 F9              8741 	add	a,#0xfffffff9
   3D7D F8                 8742 	mov	r0,a
   3D7E E5 10              8743 	mov	a,_bp
   3D80 24 0C              8744 	add	a,#0x0c
   3D82 F9                 8745 	mov	r1,a
   3D83 E6                 8746 	mov	a,@r0
   3D84 C3                 8747 	clr	c
   3D85 97                 8748 	subb	a,@r1
   3D86 F6                 8749 	mov	@r0,a
   3D87 08                 8750 	inc	r0
   3D88 E6                 8751 	mov	a,@r0
   3D89 09                 8752 	inc	r1
   3D8A 97                 8753 	subb	a,@r1
   3D8B F6                 8754 	mov	@r0,a
   3D8C 02 38 BA           8755 	ljmp	00127$
   3D8F                    8756 00130$:
                           8757 ;	FatDrivers/tff.c:968: return FR_OK;
                           8758 ;	genRet
   3D8F 75 82 00           8759 	mov	dpl,#0x00
                           8760 ;	FatDrivers/tff.c:970: fr_error:	/* Abort this function due to an unrecoverable error */
                           8761 ;	Peephole 112.b	changed ljmp to sjmp
   3D92 80 28              8762 	sjmp	00132$
   3D94                    8763 00131$:
                           8764 ;	FatDrivers/tff.c:971: fp->flag |= FA__ERROR;
                           8765 ;	genPointerGet
                           8766 ;	genGenPointerGet
   3D94 E5 10              8767 	mov	a,_bp
   3D96 24 38              8768 	add	a,#0x38
   3D98 F8                 8769 	mov	r0,a
   3D99 86 82              8770 	mov	dpl,@r0
   3D9B 08                 8771 	inc	r0
   3D9C 86 83              8772 	mov	dph,@r0
   3D9E 08                 8773 	inc	r0
   3D9F 86 F0              8774 	mov	b,@r0
   3DA1 12 62 42           8775 	lcall	__gptrget
   3DA4 FA                 8776 	mov	r2,a
                           8777 ;	genOr
   3DA5 43 02 80           8778 	orl	ar2,#0x80
                           8779 ;	genPointerSet
                           8780 ;	genGenPointerSet
   3DA8 E5 10              8781 	mov	a,_bp
   3DAA 24 38              8782 	add	a,#0x38
   3DAC F8                 8783 	mov	r0,a
   3DAD 86 82              8784 	mov	dpl,@r0
   3DAF 08                 8785 	inc	r0
   3DB0 86 83              8786 	mov	dph,@r0
   3DB2 08                 8787 	inc	r0
   3DB3 86 F0              8788 	mov	b,@r0
   3DB5 EA                 8789 	mov	a,r2
   3DB6 12 5E A4           8790 	lcall	__gptrput
                           8791 ;	FatDrivers/tff.c:972: return FR_RW_ERROR;
                           8792 ;	genRet
   3DB9 75 82 08           8793 	mov	dpl,#0x08
   3DBC                    8794 00132$:
   3DBC 85 10 81           8795 	mov	sp,_bp
   3DBF D0 10              8796 	pop	_bp
   3DC1 22                 8797 	ret
                           8798 ;------------------------------------------------------------
                           8799 ;Allocation info for local variables in function 'f_mp3_read'
                           8800 ;------------------------------------------------------------
                           8801 ;buff                      Allocated to stack - offset -5
                           8802 ;btr                       Allocated to stack - offset -7
                           8803 ;br                        Allocated to stack - offset -10
                           8804 ;fp                        Allocated to stack - offset 1
                           8805 ;sect                      Allocated to stack - offset 4
                           8806 ;remain                    Allocated to stack - offset 8
                           8807 ;rcnt                      Allocated to stack - offset 12
                           8808 ;cc                        Allocated to registers r6 r7 
                           8809 ;clust                     Allocated to stack - offset 14
                           8810 ;rbuff                     Allocated to stack - offset 18
                           8811 ;res                       Allocated to registers r2 
                           8812 ;fs                        Allocated to stack - offset 21
                           8813 ;sloc0                     Allocated to stack - offset 27
                           8814 ;sloc1                     Allocated to stack - offset 24
                           8815 ;sloc2                     Allocated to stack - offset 27
                           8816 ;sloc3                     Allocated to stack - offset 30
                           8817 ;sloc4                     Allocated to stack - offset 34
                           8818 ;sloc5                     Allocated to stack - offset 37
                           8819 ;sloc6                     Allocated to stack - offset 40
                           8820 ;sloc7                     Allocated to stack - offset 43
                           8821 ;sloc8                     Allocated to stack - offset 46
                           8822 ;sloc9                     Allocated to stack - offset 50
                           8823 ;sloc10                    Allocated to stack - offset 53
                           8824 ;sloc11                    Allocated to stack - offset 56
                           8825 ;------------------------------------------------------------
                           8826 ;	FatDrivers/tff.c:979: FRESULT f_mp3_read (
                           8827 ;	-----------------------------------------
                           8828 ;	 function f_mp3_read
                           8829 ;	-----------------------------------------
   3DC2                    8830 _f_mp3_read:
   3DC2 C0 10              8831 	push	_bp
   3DC4 85 81 10           8832 	mov	_bp,sp
                           8833 ;     genReceive
   3DC7 C0 82              8834 	push	dpl
   3DC9 C0 83              8835 	push	dph
   3DCB C0 F0              8836 	push	b
   3DCD E5 81              8837 	mov	a,sp
   3DCF 24 3A              8838 	add	a,#0x3a
   3DD1 F5 81              8839 	mov	sp,a
                           8840 ;	FatDrivers/tff.c:989: BYTE *rbuff = buff;
                           8841 ;	genAssign
   3DD3 E5 10              8842 	mov	a,_bp
   3DD5 24 FB              8843 	add	a,#0xfffffffb
   3DD7 F8                 8844 	mov	r0,a
   3DD8 86 05              8845 	mov	ar5,@r0
   3DDA 08                 8846 	inc	r0
   3DDB 86 06              8847 	mov	ar6,@r0
   3DDD 08                 8848 	inc	r0
   3DDE 86 07              8849 	mov	ar7,@r0
                           8850 ;	genAssign
   3DE0 E5 10              8851 	mov	a,_bp
   3DE2 24 12              8852 	add	a,#0x12
   3DE4 F8                 8853 	mov	r0,a
   3DE5 A6 05              8854 	mov	@r0,ar5
   3DE7 08                 8855 	inc	r0
   3DE8 A6 06              8856 	mov	@r0,ar6
   3DEA 08                 8857 	inc	r0
   3DEB A6 07              8858 	mov	@r0,ar7
                           8859 ;	FatDrivers/tff.c:991: FATFS *fs = fp->fs;
                           8860 ;	genPlus
   3DED A8 10              8861 	mov	r0,_bp
   3DEF 08                 8862 	inc	r0
                           8863 ;     genPlusIncr
   3DF0 74 04              8864 	mov	a,#0x04
   3DF2 26                 8865 	add	a,@r0
   3DF3 FD                 8866 	mov	r5,a
                           8867 ;	Peephole 181	changed mov to clr
   3DF4 E4                 8868 	clr	a
   3DF5 08                 8869 	inc	r0
   3DF6 36                 8870 	addc	a,@r0
   3DF7 FE                 8871 	mov	r6,a
   3DF8 08                 8872 	inc	r0
   3DF9 86 07              8873 	mov	ar7,@r0
                           8874 ;	genPointerGet
                           8875 ;	genGenPointerGet
   3DFB 8D 82              8876 	mov	dpl,r5
   3DFD 8E 83              8877 	mov	dph,r6
   3DFF 8F F0              8878 	mov	b,r7
   3E01 12 62 42           8879 	lcall	__gptrget
   3E04 FD                 8880 	mov	r5,a
   3E05 A3                 8881 	inc	dptr
   3E06 12 62 42           8882 	lcall	__gptrget
   3E09 FE                 8883 	mov	r6,a
   3E0A A3                 8884 	inc	dptr
   3E0B 12 62 42           8885 	lcall	__gptrget
   3E0E FF                 8886 	mov	r7,a
                           8887 ;	genAssign
   3E0F E5 10              8888 	mov	a,_bp
   3E11 24 15              8889 	add	a,#0x15
   3E13 F8                 8890 	mov	r0,a
   3E14 A6 05              8891 	mov	@r0,ar5
   3E16 08                 8892 	inc	r0
   3E17 A6 06              8893 	mov	@r0,ar6
   3E19 08                 8894 	inc	r0
   3E1A A6 07              8895 	mov	@r0,ar7
                           8896 ;	FatDrivers/tff.c:994: *br = 0;
                           8897 ;	genAssign
   3E1C E5 10              8898 	mov	a,_bp
   3E1E 24 F6              8899 	add	a,#0xfffffff6
   3E20 F8                 8900 	mov	r0,a
   3E21 E5 10              8901 	mov	a,_bp
   3E23 24 18              8902 	add	a,#0x18
   3E25 F9                 8903 	mov	r1,a
   3E26 E6                 8904 	mov	a,@r0
   3E27 F7                 8905 	mov	@r1,a
   3E28 08                 8906 	inc	r0
   3E29 09                 8907 	inc	r1
   3E2A E6                 8908 	mov	a,@r0
   3E2B F7                 8909 	mov	@r1,a
   3E2C 08                 8910 	inc	r0
   3E2D 09                 8911 	inc	r1
   3E2E E6                 8912 	mov	a,@r0
   3E2F F7                 8913 	mov	@r1,a
                           8914 ;	genPointerSet
                           8915 ;	genGenPointerSet
   3E30 E5 10              8916 	mov	a,_bp
   3E32 24 18              8917 	add	a,#0x18
   3E34 F8                 8918 	mov	r0,a
   3E35 86 82              8919 	mov	dpl,@r0
   3E37 08                 8920 	inc	r0
   3E38 86 83              8921 	mov	dph,@r0
   3E3A 08                 8922 	inc	r0
   3E3B 86 F0              8923 	mov	b,@r0
                           8924 ;	Peephole 181	changed mov to clr
   3E3D E4                 8925 	clr	a
   3E3E 12 5E A4           8926 	lcall	__gptrput
   3E41 A3                 8927 	inc	dptr
                           8928 ;	Peephole 181	changed mov to clr
   3E42 E4                 8929 	clr	a
   3E43 12 5E A4           8930 	lcall	__gptrput
                           8931 ;	FatDrivers/tff.c:995: res = validate(fs, fp->id);						/* Check validity of the object */
                           8932 ;	genPointerGet
                           8933 ;	genGenPointerGet
   3E46 A8 10              8934 	mov	r0,_bp
   3E48 08                 8935 	inc	r0
   3E49 86 82              8936 	mov	dpl,@r0
   3E4B 08                 8937 	inc	r0
   3E4C 86 83              8938 	mov	dph,@r0
   3E4E 08                 8939 	inc	r0
   3E4F 86 F0              8940 	mov	b,@r0
   3E51 12 62 42           8941 	lcall	__gptrget
   3E54 FA                 8942 	mov	r2,a
   3E55 A3                 8943 	inc	dptr
   3E56 12 62 42           8944 	lcall	__gptrget
   3E59 FB                 8945 	mov	r3,a
                           8946 ;	genIpush
   3E5A C0 02              8947 	push	ar2
   3E5C C0 03              8948 	push	ar3
                           8949 ;	genCall
   3E5E E5 10              8950 	mov	a,_bp
   3E60 24 15              8951 	add	a,#0x15
   3E62 F8                 8952 	mov	r0,a
   3E63 86 82              8953 	mov	dpl,@r0
   3E65 08                 8954 	inc	r0
   3E66 86 83              8955 	mov	dph,@r0
   3E68 08                 8956 	inc	r0
   3E69 86 F0              8957 	mov	b,@r0
   3E6B 12 32 FD           8958 	lcall	_validate
   3E6E AA 82              8959 	mov	r2,dpl
   3E70 15 81              8960 	dec	sp
   3E72 15 81              8961 	dec	sp
                           8962 ;	genAssign
                           8963 ;	FatDrivers/tff.c:996: if (res != FR_OK) return res;
                           8964 ;	genCmpEq
                           8965 ;	gencjneshort
   3E74 BA 00 02           8966 	cjne	r2,#0x00,00152$
                           8967 ;	Peephole 112.b	changed ljmp to sjmp
   3E77 80 05              8968 	sjmp	00102$
   3E79                    8969 00152$:
                           8970 ;	genRet
   3E79 8A 82              8971 	mov	dpl,r2
   3E7B 02 44 F6           8972 	ljmp	00132$
   3E7E                    8973 00102$:
                           8974 ;	FatDrivers/tff.c:997: if (fp->flag & FA__ERROR) return FR_RW_ERROR;	/* Check error flag */
                           8975 ;	genPlus
   3E7E A8 10              8976 	mov	r0,_bp
   3E80 08                 8977 	inc	r0
   3E81 E5 10              8978 	mov	a,_bp
   3E83 24 38              8979 	add	a,#0x38
   3E85 F9                 8980 	mov	r1,a
                           8981 ;     genPlusIncr
   3E86 74 02              8982 	mov	a,#0x02
   3E88 26                 8983 	add	a,@r0
   3E89 F7                 8984 	mov	@r1,a
                           8985 ;	Peephole 181	changed mov to clr
   3E8A E4                 8986 	clr	a
   3E8B 08                 8987 	inc	r0
   3E8C 36                 8988 	addc	a,@r0
   3E8D 09                 8989 	inc	r1
   3E8E F7                 8990 	mov	@r1,a
   3E8F 08                 8991 	inc	r0
   3E90 09                 8992 	inc	r1
   3E91 E6                 8993 	mov	a,@r0
   3E92 F7                 8994 	mov	@r1,a
                           8995 ;	genPointerGet
                           8996 ;	genGenPointerGet
   3E93 E5 10              8997 	mov	a,_bp
   3E95 24 38              8998 	add	a,#0x38
   3E97 F8                 8999 	mov	r0,a
   3E98 86 82              9000 	mov	dpl,@r0
   3E9A 08                 9001 	inc	r0
   3E9B 86 83              9002 	mov	dph,@r0
   3E9D 08                 9003 	inc	r0
   3E9E 86 F0              9004 	mov	b,@r0
   3EA0 12 62 42           9005 	lcall	__gptrget
                           9006 ;	genAnd
   3EA3 FA                 9007 	mov	r2,a
                           9008 ;	Peephole 105	removed redundant mov
                           9009 ;	genIfxJump
                           9010 ;	Peephole 108.d	removed ljmp by inverse jump logic
   3EA4 30 E7 06           9011 	jnb	acc.7,00104$
                           9012 ;	Peephole 300	removed redundant label 00153$
                           9013 ;	genRet
   3EA7 75 82 08           9014 	mov	dpl,#0x08
   3EAA 02 44 F6           9015 	ljmp	00132$
   3EAD                    9016 00104$:
                           9017 ;	FatDrivers/tff.c:998: if (!(fp->flag & FA_READ)) return FR_DENIED;	/* Check access mode */
                           9018 ;	genAnd
   3EAD EA                 9019 	mov	a,r2
                           9020 ;	genIfxJump
                           9021 ;	Peephole 108.e	removed ljmp by inverse jump logic
   3EAE 20 E0 06           9022 	jb	acc.0,00106$
                           9023 ;	Peephole 300	removed redundant label 00154$
                           9024 ;	genRet
   3EB1 75 82 06           9025 	mov	dpl,#0x06
   3EB4 02 44 F6           9026 	ljmp	00132$
   3EB7                    9027 00106$:
                           9028 ;	FatDrivers/tff.c:999: remain = fp->fsize - fp->fptr;
                           9029 ;	genIpush
                           9030 ;	genPlus
   3EB7 A8 10              9031 	mov	r0,_bp
   3EB9 08                 9032 	inc	r0
                           9033 ;     genPlusIncr
   3EBA 74 0B              9034 	mov	a,#0x0B
   3EBC 26                 9035 	add	a,@r0
   3EBD FA                 9036 	mov	r2,a
                           9037 ;	Peephole 181	changed mov to clr
   3EBE E4                 9038 	clr	a
   3EBF 08                 9039 	inc	r0
   3EC0 36                 9040 	addc	a,@r0
   3EC1 FB                 9041 	mov	r3,a
   3EC2 08                 9042 	inc	r0
   3EC3 86 04              9043 	mov	ar4,@r0
                           9044 ;	genPointerGet
                           9045 ;	genGenPointerGet
   3EC5 8A 82              9046 	mov	dpl,r2
   3EC7 8B 83              9047 	mov	dph,r3
   3EC9 8C F0              9048 	mov	b,r4
   3ECB E5 10              9049 	mov	a,_bp
   3ECD 24 1E              9050 	add	a,#0x1e
   3ECF F8                 9051 	mov	r0,a
   3ED0 12 62 42           9052 	lcall	__gptrget
   3ED3 F6                 9053 	mov	@r0,a
   3ED4 A3                 9054 	inc	dptr
   3ED5 12 62 42           9055 	lcall	__gptrget
   3ED8 08                 9056 	inc	r0
   3ED9 F6                 9057 	mov	@r0,a
   3EDA A3                 9058 	inc	dptr
   3EDB 12 62 42           9059 	lcall	__gptrget
   3EDE 08                 9060 	inc	r0
   3EDF F6                 9061 	mov	@r0,a
   3EE0 A3                 9062 	inc	dptr
   3EE1 12 62 42           9063 	lcall	__gptrget
   3EE4 08                 9064 	inc	r0
   3EE5 F6                 9065 	mov	@r0,a
                           9066 ;	genPlus
   3EE6 A8 10              9067 	mov	r0,_bp
   3EE8 08                 9068 	inc	r0
   3EE9 E5 10              9069 	mov	a,_bp
   3EEB 24 1B              9070 	add	a,#0x1b
   3EED F9                 9071 	mov	r1,a
                           9072 ;     genPlusIncr
   3EEE 74 07              9073 	mov	a,#0x07
   3EF0 26                 9074 	add	a,@r0
   3EF1 F7                 9075 	mov	@r1,a
                           9076 ;	Peephole 181	changed mov to clr
   3EF2 E4                 9077 	clr	a
   3EF3 08                 9078 	inc	r0
   3EF4 36                 9079 	addc	a,@r0
   3EF5 09                 9080 	inc	r1
   3EF6 F7                 9081 	mov	@r1,a
   3EF7 08                 9082 	inc	r0
   3EF8 09                 9083 	inc	r1
   3EF9 E6                 9084 	mov	a,@r0
   3EFA F7                 9085 	mov	@r1,a
                           9086 ;	genPointerGet
                           9087 ;	genGenPointerGet
   3EFB E5 10              9088 	mov	a,_bp
   3EFD 24 1B              9089 	add	a,#0x1b
   3EFF F8                 9090 	mov	r0,a
   3F00 86 82              9091 	mov	dpl,@r0
   3F02 08                 9092 	inc	r0
   3F03 86 83              9093 	mov	dph,@r0
   3F05 08                 9094 	inc	r0
   3F06 86 F0              9095 	mov	b,@r0
   3F08 12 62 42           9096 	lcall	__gptrget
   3F0B FE                 9097 	mov	r6,a
   3F0C A3                 9098 	inc	dptr
   3F0D 12 62 42           9099 	lcall	__gptrget
   3F10 FF                 9100 	mov	r7,a
   3F11 A3                 9101 	inc	dptr
   3F12 12 62 42           9102 	lcall	__gptrget
   3F15 FA                 9103 	mov	r2,a
   3F16 A3                 9104 	inc	dptr
   3F17 12 62 42           9105 	lcall	__gptrget
   3F1A FB                 9106 	mov	r3,a
                           9107 ;	genMinus
   3F1B E5 10              9108 	mov	a,_bp
   3F1D 24 1E              9109 	add	a,#0x1e
   3F1F F8                 9110 	mov	r0,a
   3F20 E6                 9111 	mov	a,@r0
   3F21 C3                 9112 	clr	c
                           9113 ;	Peephole 236.l	used r6 instead of ar6
   3F22 9E                 9114 	subb	a,r6
   3F23 FE                 9115 	mov	r6,a
   3F24 08                 9116 	inc	r0
   3F25 E6                 9117 	mov	a,@r0
                           9118 ;	Peephole 236.l	used r7 instead of ar7
   3F26 9F                 9119 	subb	a,r7
   3F27 FF                 9120 	mov	r7,a
   3F28 08                 9121 	inc	r0
   3F29 E6                 9122 	mov	a,@r0
                           9123 ;	Peephole 236.l	used r2 instead of ar2
   3F2A 9A                 9124 	subb	a,r2
   3F2B FA                 9125 	mov	r2,a
   3F2C 08                 9126 	inc	r0
   3F2D E6                 9127 	mov	a,@r0
                           9128 ;	Peephole 236.l	used r3 instead of ar3
   3F2E 9B                 9129 	subb	a,r3
   3F2F FB                 9130 	mov	r3,a
                           9131 ;	genAssign
   3F30 E5 10              9132 	mov	a,_bp
   3F32 24 08              9133 	add	a,#0x08
   3F34 F8                 9134 	mov	r0,a
   3F35 A6 06              9135 	mov	@r0,ar6
   3F37 08                 9136 	inc	r0
   3F38 A6 07              9137 	mov	@r0,ar7
   3F3A 08                 9138 	inc	r0
   3F3B A6 02              9139 	mov	@r0,ar2
   3F3D 08                 9140 	inc	r0
   3F3E A6 03              9141 	mov	@r0,ar3
                           9142 ;	FatDrivers/tff.c:1000: if (btr > remain) btr = (WORD)remain;			/* Truncate read count by number of bytes left */
                           9143 ;	genCast
   3F40 E5 10              9144 	mov	a,_bp
   3F42 24 F9              9145 	add	a,#0xfffffff9
   3F44 F8                 9146 	mov	r0,a
   3F45 86 02              9147 	mov	ar2,@r0
   3F47 08                 9148 	inc	r0
   3F48 86 03              9149 	mov	ar3,@r0
                           9150 ;	genCmpGt
                           9151 ;	Peephole 3.c	changed mov to clr
   3F4A E4                 9152 	clr	a
   3F4B FC                 9153 	mov	r4,a
   3F4C FD                 9154 	mov	r5,a
   3F4D E5 10              9155 	mov	a,_bp
   3F4F 24 08              9156 	add	a,#0x08
   3F51 F8                 9157 	mov	r0,a
                           9158 ;	genCmp
   3F52 C3                 9159 	clr	c
   3F53 E6                 9160 	mov	a,@r0
   3F54 9A                 9161 	subb	a,r2
   3F55 08                 9162 	inc	r0
   3F56 E6                 9163 	mov	a,@r0
   3F57 9B                 9164 	subb	a,r3
   3F58 08                 9165 	inc	r0
   3F59 E6                 9166 	mov	a,@r0
   3F5A 9C                 9167 	subb	a,r4
   3F5B 08                 9168 	inc	r0
   3F5C E6                 9169 	mov	a,@r0
   3F5D 9D                 9170 	subb	a,r5
                           9171 ;	genIpop
                           9172 ;	genIfx
                           9173 ;	genIfxJump
                           9174 ;	Peephole 108.c	removed ljmp by inverse jump logic
                           9175 ;	Peephole 128	jump optimization
   3F5E 50 10              9176 	jnc	00151$
                           9177 ;	Peephole 300	removed redundant label 00155$
                           9178 ;	genCast
   3F60 E5 10              9179 	mov	a,_bp
   3F62 24 08              9180 	add	a,#0x08
   3F64 F8                 9181 	mov	r0,a
   3F65 E5 10              9182 	mov	a,_bp
   3F67 24 F9              9183 	add	a,#0xfffffff9
   3F69 F9                 9184 	mov	r1,a
   3F6A E6                 9185 	mov	a,@r0
   3F6B F7                 9186 	mov	@r1,a
   3F6C 08                 9187 	inc	r0
   3F6D 09                 9188 	inc	r1
   3F6E E6                 9189 	mov	a,@r0
   3F6F F7                 9190 	mov	@r1,a
   3F70                    9191 00151$:
                           9192 ;	genPlus
   3F70 A8 10              9193 	mov	r0,_bp
   3F72 08                 9194 	inc	r0
   3F73 E5 10              9195 	mov	a,_bp
   3F75 24 35              9196 	add	a,#0x35
   3F77 F9                 9197 	mov	r1,a
                           9198 ;     genPlusIncr
   3F78 74 13              9199 	mov	a,#0x13
   3F7A 26                 9200 	add	a,@r0
   3F7B F7                 9201 	mov	@r1,a
                           9202 ;	Peephole 181	changed mov to clr
   3F7C E4                 9203 	clr	a
   3F7D 08                 9204 	inc	r0
   3F7E 36                 9205 	addc	a,@r0
   3F7F 09                 9206 	inc	r1
   3F80 F7                 9207 	mov	@r1,a
   3F81 08                 9208 	inc	r0
   3F82 09                 9209 	inc	r1
   3F83 E6                 9210 	mov	a,@r0
   3F84 F7                 9211 	mov	@r1,a
                           9212 ;	genPlus
   3F85 A8 10              9213 	mov	r0,_bp
   3F87 08                 9214 	inc	r0
   3F88 E5 10              9215 	mov	a,_bp
   3F8A 24 1E              9216 	add	a,#0x1e
   3F8C F9                 9217 	mov	r1,a
                           9218 ;     genPlusIncr
   3F8D 74 0F              9219 	mov	a,#0x0F
   3F8F 26                 9220 	add	a,@r0
   3F90 F7                 9221 	mov	@r1,a
                           9222 ;	Peephole 181	changed mov to clr
   3F91 E4                 9223 	clr	a
   3F92 08                 9224 	inc	r0
   3F93 36                 9225 	addc	a,@r0
   3F94 09                 9226 	inc	r1
   3F95 F7                 9227 	mov	@r1,a
   3F96 08                 9228 	inc	r0
   3F97 09                 9229 	inc	r1
   3F98 E6                 9230 	mov	a,@r0
   3F99 F7                 9231 	mov	@r1,a
                           9232 ;	genPlus
   3F9A E5 10              9233 	mov	a,_bp
   3F9C 24 15              9234 	add	a,#0x15
   3F9E F8                 9235 	mov	r0,a
   3F9F E5 10              9236 	mov	a,_bp
   3FA1 24 22              9237 	add	a,#0x22
   3FA3 F9                 9238 	mov	r1,a
                           9239 ;     genPlusIncr
   3FA4 74 18              9240 	mov	a,#0x18
   3FA6 26                 9241 	add	a,@r0
   3FA7 F7                 9242 	mov	@r1,a
                           9243 ;	Peephole 181	changed mov to clr
   3FA8 E4                 9244 	clr	a
   3FA9 08                 9245 	inc	r0
   3FAA 36                 9246 	addc	a,@r0
   3FAB 09                 9247 	inc	r1
   3FAC F7                 9248 	mov	@r1,a
   3FAD 08                 9249 	inc	r0
   3FAE 09                 9250 	inc	r1
   3FAF E6                 9251 	mov	a,@r0
   3FB0 F7                 9252 	mov	@r1,a
                           9253 ;	genPlus
   3FB1 E5 10              9254 	mov	a,_bp
   3FB3 24 15              9255 	add	a,#0x15
   3FB5 F8                 9256 	mov	r0,a
   3FB6 E5 10              9257 	mov	a,_bp
   3FB8 24 25              9258 	add	a,#0x25
   3FBA F9                 9259 	mov	r1,a
                           9260 ;     genPlusIncr
   3FBB 74 1D              9261 	mov	a,#0x1D
   3FBD 26                 9262 	add	a,@r0
   3FBE F7                 9263 	mov	@r1,a
                           9264 ;	Peephole 181	changed mov to clr
   3FBF E4                 9265 	clr	a
   3FC0 08                 9266 	inc	r0
   3FC1 36                 9267 	addc	a,@r0
   3FC2 09                 9268 	inc	r1
   3FC3 F7                 9269 	mov	@r1,a
   3FC4 08                 9270 	inc	r0
   3FC5 09                 9271 	inc	r1
   3FC6 E6                 9272 	mov	a,@r0
   3FC7 F7                 9273 	mov	@r1,a
                           9274 ;	genPlus
   3FC8 A8 10              9275 	mov	r0,_bp
   3FCA 08                 9276 	inc	r0
   3FCB E5 10              9277 	mov	a,_bp
   3FCD 24 28              9278 	add	a,#0x28
   3FCF F9                 9279 	mov	r1,a
                           9280 ;     genPlusIncr
   3FD0 74 17              9281 	mov	a,#0x17
   3FD2 26                 9282 	add	a,@r0
   3FD3 F7                 9283 	mov	@r1,a
                           9284 ;	Peephole 181	changed mov to clr
   3FD4 E4                 9285 	clr	a
   3FD5 08                 9286 	inc	r0
   3FD6 36                 9287 	addc	a,@r0
   3FD7 09                 9288 	inc	r1
   3FD8 F7                 9289 	mov	@r1,a
   3FD9 08                 9290 	inc	r0
   3FDA 09                 9291 	inc	r1
   3FDB E6                 9292 	mov	a,@r0
   3FDC F7                 9293 	mov	@r1,a
                           9294 ;	genPlus
   3FDD E5 10              9295 	mov	a,_bp
   3FDF 24 15              9296 	add	a,#0x15
   3FE1 F8                 9297 	mov	r0,a
   3FE2 E5 10              9298 	mov	a,_bp
   3FE4 24 2B              9299 	add	a,#0x2b
   3FE6 F9                 9300 	mov	r1,a
                           9301 ;     genPlusIncr
   3FE7 74 20              9302 	mov	a,#0x20
   3FE9 26                 9303 	add	a,@r0
   3FEA F7                 9304 	mov	@r1,a
                           9305 ;	Peephole 181	changed mov to clr
   3FEB E4                 9306 	clr	a
   3FEC 08                 9307 	inc	r0
   3FED 36                 9308 	addc	a,@r0
   3FEE 09                 9309 	inc	r1
   3FEF F7                 9310 	mov	@r1,a
   3FF0 08                 9311 	inc	r0
   3FF1 09                 9312 	inc	r1
   3FF2 E6                 9313 	mov	a,@r0
   3FF3 F7                 9314 	mov	@r1,a
   3FF4                    9315 00127$:
                           9316 ;	FatDrivers/tff.c:1002: for ( ;  btr;									/* Repeat until all data transferred */
                           9317 ;	genIfx
   3FF4 E5 10              9318 	mov	a,_bp
   3FF6 24 F9              9319 	add	a,#0xfffffff9
   3FF8 F8                 9320 	mov	r0,a
   3FF9 E6                 9321 	mov	a,@r0
   3FFA 08                 9322 	inc	r0
   3FFB 46                 9323 	orl	a,@r0
                           9324 ;	genIfxJump
   3FFC 70 03              9325 	jnz	00156$
   3FFE 02 44 C9           9326 	ljmp	00130$
   4001                    9327 00156$:
                           9328 ;	FatDrivers/tff.c:1004: if ((fp->fptr % 512) == 0) {				/* On the sector boundary */
                           9329 ;	genPointerGet
                           9330 ;	genGenPointerGet
   4001 E5 10              9331 	mov	a,_bp
   4003 24 1B              9332 	add	a,#0x1b
   4005 F8                 9333 	mov	r0,a
   4006 86 82              9334 	mov	dpl,@r0
   4008 08                 9335 	inc	r0
   4009 86 83              9336 	mov	dph,@r0
   400B 08                 9337 	inc	r0
   400C 86 F0              9338 	mov	b,@r0
   400E 12 62 42           9339 	lcall	__gptrget
   4011 FB                 9340 	mov	r3,a
   4012 A3                 9341 	inc	dptr
   4013 12 62 42           9342 	lcall	__gptrget
   4016 FC                 9343 	mov	r4,a
   4017 A3                 9344 	inc	dptr
   4018 12 62 42           9345 	lcall	__gptrget
   401B FD                 9346 	mov	r5,a
   401C A3                 9347 	inc	dptr
   401D 12 62 42           9348 	lcall	__gptrget
   4020 FE                 9349 	mov	r6,a
                           9350 ;	genAnd
   4021 EB                 9351 	mov	a,r3
   4022 70 04              9352 	jnz	00157$
   4024 EC                 9353 	mov	a,r4
                           9354 ;	Peephole 160.f	removed sjmp by inverse jump logic
   4025 30 E0 03           9355 	jnb	acc.0,00158$
   4028                    9356 00157$:
   4028 02 43 1F           9357 	ljmp	00122$
   402B                    9358 00158$:
                           9359 ;	FatDrivers/tff.c:1005: if (--fp->sect_clust) {					/* Decrement left sector counter */
                           9360 ;	genIpush
                           9361 ;	genPlus
   402B A8 10              9362 	mov	r0,_bp
   402D 08                 9363 	inc	r0
   402E E5 10              9364 	mov	a,_bp
   4030 24 32              9365 	add	a,#0x32
   4032 F9                 9366 	mov	r1,a
                           9367 ;     genPlusIncr
   4033 74 03              9368 	mov	a,#0x03
   4035 26                 9369 	add	a,@r0
   4036 F7                 9370 	mov	@r1,a
                           9371 ;	Peephole 181	changed mov to clr
   4037 E4                 9372 	clr	a
   4038 08                 9373 	inc	r0
   4039 36                 9374 	addc	a,@r0
   403A 09                 9375 	inc	r1
   403B F7                 9376 	mov	@r1,a
   403C 08                 9377 	inc	r0
   403D 09                 9378 	inc	r1
   403E E6                 9379 	mov	a,@r0
   403F F7                 9380 	mov	@r1,a
                           9381 ;	genPointerGet
                           9382 ;	genGenPointerGet
   4040 E5 10              9383 	mov	a,_bp
   4042 24 32              9384 	add	a,#0x32
   4044 F8                 9385 	mov	r0,a
   4045 86 82              9386 	mov	dpl,@r0
   4047 08                 9387 	inc	r0
   4048 86 83              9388 	mov	dph,@r0
   404A 08                 9389 	inc	r0
   404B 86 F0              9390 	mov	b,@r0
   404D 12 62 42           9391 	lcall	__gptrget
   4050 FA                 9392 	mov	r2,a
                           9393 ;	genMinus
                           9394 ;	genMinusDec
   4051 1A                 9395 	dec	r2
                           9396 ;	genPointerSet
                           9397 ;	genGenPointerSet
   4052 E5 10              9398 	mov	a,_bp
   4054 24 32              9399 	add	a,#0x32
   4056 F8                 9400 	mov	r0,a
   4057 86 82              9401 	mov	dpl,@r0
   4059 08                 9402 	inc	r0
   405A 86 83              9403 	mov	dph,@r0
   405C 08                 9404 	inc	r0
   405D 86 F0              9405 	mov	b,@r0
                           9406 ;	genIfx
   405F EA                 9407 	mov	a,r2
   4060 12 5E A4           9408 	lcall	__gptrput
                           9409 ;	Peephole 190	removed redundant mov
                           9410 ;	genIpop
                           9411 ;	genIfxJump
                           9412 ;	Peephole 108.c	removed ljmp by inverse jump logic
   4063 60 38              9413 	jz	00113$
                           9414 ;	Peephole 300	removed redundant label 00159$
                           9415 ;	FatDrivers/tff.c:1006: sect = fp->curr_sect + 1;			/* Get current sector */
                           9416 ;	genIpush
                           9417 ;	genPointerGet
                           9418 ;	genGenPointerGet
   4065 E5 10              9419 	mov	a,_bp
   4067 24 28              9420 	add	a,#0x28
   4069 F8                 9421 	mov	r0,a
   406A 86 82              9422 	mov	dpl,@r0
   406C 08                 9423 	inc	r0
   406D 86 83              9424 	mov	dph,@r0
   406F 08                 9425 	inc	r0
   4070 86 F0              9426 	mov	b,@r0
   4072 12 62 42           9427 	lcall	__gptrget
   4075 FA                 9428 	mov	r2,a
   4076 A3                 9429 	inc	dptr
   4077 12 62 42           9430 	lcall	__gptrget
   407A FB                 9431 	mov	r3,a
   407B A3                 9432 	inc	dptr
   407C 12 62 42           9433 	lcall	__gptrget
   407F FC                 9434 	mov	r4,a
   4080 A3                 9435 	inc	dptr
   4081 12 62 42           9436 	lcall	__gptrget
   4084 FD                 9437 	mov	r5,a
                           9438 ;	genPlus
   4085 E5 10              9439 	mov	a,_bp
   4087 24 04              9440 	add	a,#0x04
   4089 F8                 9441 	mov	r0,a
                           9442 ;     genPlusIncr
   408A 74 01              9443 	mov	a,#0x01
                           9444 ;	Peephole 236.a	used r2 instead of ar2
   408C 2A                 9445 	add	a,r2
   408D F6                 9446 	mov	@r0,a
                           9447 ;	Peephole 181	changed mov to clr
   408E E4                 9448 	clr	a
                           9449 ;	Peephole 236.b	used r3 instead of ar3
   408F 3B                 9450 	addc	a,r3
   4090 08                 9451 	inc	r0
   4091 F6                 9452 	mov	@r0,a
                           9453 ;	Peephole 181	changed mov to clr
   4092 E4                 9454 	clr	a
                           9455 ;	Peephole 236.b	used r4 instead of ar4
   4093 3C                 9456 	addc	a,r4
   4094 08                 9457 	inc	r0
   4095 F6                 9458 	mov	@r0,a
                           9459 ;	Peephole 181	changed mov to clr
   4096 E4                 9460 	clr	a
                           9461 ;	Peephole 236.b	used r5 instead of ar5
   4097 3D                 9462 	addc	a,r5
   4098 08                 9463 	inc	r0
   4099 F6                 9464 	mov	@r0,a
                           9465 ;	genIpop
   409A 02 41 CE           9466 	ljmp	00114$
   409D                    9467 00113$:
                           9468 ;	FatDrivers/tff.c:1008: clust = (fp->fptr == 0) ?
                           9469 ;	genNot
   409D EB                 9470 	mov	a,r3
   409E 4C                 9471 	orl	a,r4
   409F 4D                 9472 	orl	a,r5
   40A0 4E                 9473 	orl	a,r6
   40A1 B4 01 00           9474 	cjne	a,#0x01,00160$
   40A4                    9475 00160$:
   40A4 E4                 9476 	clr	a
   40A5 33                 9477 	rlc	a
                           9478 ;	genIfx
   40A6 FD                 9479 	mov	r5,a
                           9480 ;	Peephole 105	removed redundant mov
                           9481 ;	genIfxJump
                           9482 ;	Peephole 108.c	removed ljmp by inverse jump logic
   40A7 60 22              9483 	jz	00134$
                           9484 ;	Peephole 300	removed redundant label 00161$
                           9485 ;	FatDrivers/tff.c:1009: fp->org_clust : get_cluster(fp->curr_clust);
                           9486 ;	genPointerGet
                           9487 ;	genGenPointerGet
   40A9 E5 10              9488 	mov	a,_bp
   40AB 24 1E              9489 	add	a,#0x1e
   40AD F8                 9490 	mov	r0,a
   40AE 86 82              9491 	mov	dpl,@r0
   40B0 08                 9492 	inc	r0
   40B1 86 83              9493 	mov	dph,@r0
   40B3 08                 9494 	inc	r0
   40B4 86 F0              9495 	mov	b,@r0
   40B6 12 62 42           9496 	lcall	__gptrget
   40B9 FD                 9497 	mov	r5,a
   40BA A3                 9498 	inc	dptr
   40BB 12 62 42           9499 	lcall	__gptrget
   40BE FE                 9500 	mov	r6,a
   40BF A3                 9501 	inc	dptr
   40C0 12 62 42           9502 	lcall	__gptrget
   40C3 FF                 9503 	mov	r7,a
   40C4 A3                 9504 	inc	dptr
   40C5 12 62 42           9505 	lcall	__gptrget
   40C8 FA                 9506 	mov	r2,a
                           9507 ;	Peephole 112.b	changed ljmp to sjmp
   40C9 80 30              9508 	sjmp	00135$
   40CB                    9509 00134$:
                           9510 ;	genPointerGet
                           9511 ;	genGenPointerGet
   40CB E5 10              9512 	mov	a,_bp
   40CD 24 35              9513 	add	a,#0x35
   40CF F8                 9514 	mov	r0,a
   40D0 86 82              9515 	mov	dpl,@r0
   40D2 08                 9516 	inc	r0
   40D3 86 83              9517 	mov	dph,@r0
   40D5 08                 9518 	inc	r0
   40D6 86 F0              9519 	mov	b,@r0
   40D8 12 62 42           9520 	lcall	__gptrget
   40DB FA                 9521 	mov	r2,a
   40DC A3                 9522 	inc	dptr
   40DD 12 62 42           9523 	lcall	__gptrget
   40E0 FB                 9524 	mov	r3,a
   40E1 A3                 9525 	inc	dptr
   40E2 12 62 42           9526 	lcall	__gptrget
   40E5 FC                 9527 	mov	r4,a
   40E6 A3                 9528 	inc	dptr
   40E7 12 62 42           9529 	lcall	__gptrget
                           9530 ;	genCall
   40EA FD                 9531 	mov	r5,a
   40EB 8A 82              9532 	mov	dpl,r2
   40ED 8B 83              9533 	mov	dph,r3
   40EF 8C F0              9534 	mov	b,r4
                           9535 ;	Peephole 191	removed redundant mov
   40F1 12 18 63           9536 	lcall	_get_cluster
   40F4 AD 82              9537 	mov	r5,dpl
   40F6 AE 83              9538 	mov	r6,dph
   40F8 AF F0              9539 	mov	r7,b
   40FA FA                 9540 	mov	r2,a
   40FB                    9541 00135$:
                           9542 ;	genAssign
   40FB E5 10              9543 	mov	a,_bp
   40FD 24 0E              9544 	add	a,#0x0e
   40FF F8                 9545 	mov	r0,a
   4100 A6 05              9546 	mov	@r0,ar5
   4102 08                 9547 	inc	r0
   4103 A6 06              9548 	mov	@r0,ar6
   4105 08                 9549 	inc	r0
   4106 A6 07              9550 	mov	@r0,ar7
   4108 08                 9551 	inc	r0
   4109 A6 02              9552 	mov	@r0,ar2
                           9553 ;	FatDrivers/tff.c:1010: if (clust < 2 || clust >= fs->max_clust)
                           9554 ;	genCmpLt
   410B E5 10              9555 	mov	a,_bp
   410D 24 0E              9556 	add	a,#0x0e
   410F F8                 9557 	mov	r0,a
                           9558 ;	genCmp
   4110 C3                 9559 	clr	c
   4111 E6                 9560 	mov	a,@r0
   4112 94 02              9561 	subb	a,#0x02
   4114 08                 9562 	inc	r0
   4115 E6                 9563 	mov	a,@r0
   4116 94 00              9564 	subb	a,#0x00
   4118 08                 9565 	inc	r0
   4119 E6                 9566 	mov	a,@r0
   411A 94 00              9567 	subb	a,#0x00
   411C 08                 9568 	inc	r0
   411D E6                 9569 	mov	a,@r0
   411E 94 00              9570 	subb	a,#0x00
                           9571 ;	genIfxJump
   4120 50 03              9572 	jnc	00162$
   4122 02 44 CE           9573 	ljmp	00131$
   4125                    9574 00162$:
                           9575 ;	genPointerGet
                           9576 ;	genGenPointerGet
   4125 E5 10              9577 	mov	a,_bp
   4127 24 22              9578 	add	a,#0x22
   4129 F8                 9579 	mov	r0,a
   412A 86 82              9580 	mov	dpl,@r0
   412C 08                 9581 	inc	r0
   412D 86 83              9582 	mov	dph,@r0
   412F 08                 9583 	inc	r0
   4130 86 F0              9584 	mov	b,@r0
   4132 12 62 42           9585 	lcall	__gptrget
   4135 FE                 9586 	mov	r6,a
   4136 A3                 9587 	inc	dptr
   4137 12 62 42           9588 	lcall	__gptrget
   413A FF                 9589 	mov	r7,a
   413B A3                 9590 	inc	dptr
   413C 12 62 42           9591 	lcall	__gptrget
   413F FA                 9592 	mov	r2,a
   4140 A3                 9593 	inc	dptr
   4141 12 62 42           9594 	lcall	__gptrget
   4144 FB                 9595 	mov	r3,a
                           9596 ;	genCmpLt
   4145 E5 10              9597 	mov	a,_bp
   4147 24 0E              9598 	add	a,#0x0e
   4149 F8                 9599 	mov	r0,a
                           9600 ;	genCmp
   414A C3                 9601 	clr	c
   414B E6                 9602 	mov	a,@r0
   414C 9E                 9603 	subb	a,r6
   414D 08                 9604 	inc	r0
   414E E6                 9605 	mov	a,@r0
   414F 9F                 9606 	subb	a,r7
   4150 08                 9607 	inc	r0
   4151 E6                 9608 	mov	a,@r0
   4152 9A                 9609 	subb	a,r2
   4153 08                 9610 	inc	r0
   4154 E6                 9611 	mov	a,@r0
   4155 9B                 9612 	subb	a,r3
                           9613 ;	genIfxJump
   4156 40 03              9614 	jc	00163$
   4158 02 44 CE           9615 	ljmp	00131$
   415B                    9616 00163$:
                           9617 ;	FatDrivers/tff.c:1012: fp->curr_clust = clust;				/* Current cluster */
                           9618 ;	genPointerSet
                           9619 ;	genGenPointerSet
   415B E5 10              9620 	mov	a,_bp
   415D 24 35              9621 	add	a,#0x35
   415F F8                 9622 	mov	r0,a
   4160 86 82              9623 	mov	dpl,@r0
   4162 08                 9624 	inc	r0
   4163 86 83              9625 	mov	dph,@r0
   4165 08                 9626 	inc	r0
   4166 86 F0              9627 	mov	b,@r0
   4168 E5 10              9628 	mov	a,_bp
   416A 24 0E              9629 	add	a,#0x0e
   416C F9                 9630 	mov	r1,a
   416D E7                 9631 	mov	a,@r1
   416E 12 5E A4           9632 	lcall	__gptrput
   4171 A3                 9633 	inc	dptr
   4172 09                 9634 	inc	r1
   4173 E7                 9635 	mov	a,@r1
   4174 12 5E A4           9636 	lcall	__gptrput
   4177 A3                 9637 	inc	dptr
   4178 09                 9638 	inc	r1
   4179 E7                 9639 	mov	a,@r1
   417A 12 5E A4           9640 	lcall	__gptrput
   417D A3                 9641 	inc	dptr
   417E 09                 9642 	inc	r1
   417F E7                 9643 	mov	a,@r1
   4180 12 5E A4           9644 	lcall	__gptrput
                           9645 ;	FatDrivers/tff.c:1013: sect = clust2sect(clust);			/* Get current sector */
                           9646 ;	genCall
   4183 E5 10              9647 	mov	a,_bp
   4185 24 0E              9648 	add	a,#0x0e
   4187 F8                 9649 	mov	r0,a
   4188 86 82              9650 	mov	dpl,@r0
   418A 08                 9651 	inc	r0
   418B 86 83              9652 	mov	dph,@r0
   418D 08                 9653 	inc	r0
   418E 86 F0              9654 	mov	b,@r0
   4190 08                 9655 	inc	r0
   4191 E6                 9656 	mov	a,@r0
   4192 12 1B 9F           9657 	lcall	_clust2sect
   4195 AA 82              9658 	mov	r2,dpl
   4197 AB 83              9659 	mov	r3,dph
   4199 AC F0              9660 	mov	r4,b
   419B FD                 9661 	mov	r5,a
                           9662 ;	genAssign
   419C E5 10              9663 	mov	a,_bp
   419E 24 04              9664 	add	a,#0x04
   41A0 F8                 9665 	mov	r0,a
   41A1 A6 02              9666 	mov	@r0,ar2
   41A3 08                 9667 	inc	r0
   41A4 A6 03              9668 	mov	@r0,ar3
   41A6 08                 9669 	inc	r0
   41A7 A6 04              9670 	mov	@r0,ar4
   41A9 08                 9671 	inc	r0
   41AA A6 05              9672 	mov	@r0,ar5
                           9673 ;	FatDrivers/tff.c:1014: fp->sect_clust = fs->sects_clust;	/* Re-initialize the left sector counter */
                           9674 ;	genPointerGet
                           9675 ;	genGenPointerGet
   41AC E5 10              9676 	mov	a,_bp
   41AE 24 25              9677 	add	a,#0x25
   41B0 F8                 9678 	mov	r0,a
   41B1 86 82              9679 	mov	dpl,@r0
   41B3 08                 9680 	inc	r0
   41B4 86 83              9681 	mov	dph,@r0
   41B6 08                 9682 	inc	r0
   41B7 86 F0              9683 	mov	b,@r0
   41B9 12 62 42           9684 	lcall	__gptrget
   41BC FA                 9685 	mov	r2,a
                           9686 ;	genPointerSet
                           9687 ;	genGenPointerSet
   41BD E5 10              9688 	mov	a,_bp
   41BF 24 32              9689 	add	a,#0x32
   41C1 F8                 9690 	mov	r0,a
   41C2 86 82              9691 	mov	dpl,@r0
   41C4 08                 9692 	inc	r0
   41C5 86 83              9693 	mov	dph,@r0
   41C7 08                 9694 	inc	r0
   41C8 86 F0              9695 	mov	b,@r0
   41CA EA                 9696 	mov	a,r2
   41CB 12 5E A4           9697 	lcall	__gptrput
   41CE                    9698 00114$:
                           9699 ;	FatDrivers/tff.c:1016: fp->curr_sect = sect;					/* Update current sector */
                           9700 ;	genPointerSet
                           9701 ;	genGenPointerSet
   41CE E5 10              9702 	mov	a,_bp
   41D0 24 28              9703 	add	a,#0x28
   41D2 F8                 9704 	mov	r0,a
   41D3 86 82              9705 	mov	dpl,@r0
   41D5 08                 9706 	inc	r0
   41D6 86 83              9707 	mov	dph,@r0
   41D8 08                 9708 	inc	r0
   41D9 86 F0              9709 	mov	b,@r0
   41DB E5 10              9710 	mov	a,_bp
   41DD 24 04              9711 	add	a,#0x04
   41DF F9                 9712 	mov	r1,a
   41E0 E7                 9713 	mov	a,@r1
   41E1 12 5E A4           9714 	lcall	__gptrput
   41E4 A3                 9715 	inc	dptr
   41E5 09                 9716 	inc	r1
   41E6 E7                 9717 	mov	a,@r1
   41E7 12 5E A4           9718 	lcall	__gptrput
   41EA A3                 9719 	inc	dptr
   41EB 09                 9720 	inc	r1
   41EC E7                 9721 	mov	a,@r1
   41ED 12 5E A4           9722 	lcall	__gptrput
   41F0 A3                 9723 	inc	dptr
   41F1 09                 9724 	inc	r1
   41F2 E7                 9725 	mov	a,@r1
   41F3 12 5E A4           9726 	lcall	__gptrput
                           9727 ;	FatDrivers/tff.c:1017: cc = btr / 512;							/* When left bytes >= 512, */
                           9728 ;	genRightShift
                           9729 ;	genRightShiftLiteral
   41F6 E5 10              9730 	mov	a,_bp
   41F8 24 F9              9731 	add	a,#0xfffffff9
                           9732 ;	genrshTwo
                           9733 ;	Peephole 185	changed order of increment (acc incremented also!)
   41FA 04                 9734 	inc	a
   41FB F8                 9735 	mov	r0,a
   41FC E6                 9736 	mov	a,@r0
   41FD C3                 9737 	clr	c
   41FE 13                 9738 	rrc	a
                           9739 ;	FatDrivers/tff.c:1018: if (cc) {								/* Read maximum contiguous sectors directly */
                           9740 ;	genIfx
   41FF FE                 9741 	mov	r6,a
   4200 7F 00              9742 	mov	r7,#0x00
                           9743 ;	Peephole 177.d	removed redundant move
   4202 4F                 9744 	orl	a,r7
                           9745 ;	genIfxJump
   4203 70 03              9746 	jnz	00164$
   4205 02 43 1F           9747 	ljmp	00122$
   4208                    9748 00164$:
                           9749 ;	FatDrivers/tff.c:1019: if (cc > fp->sect_clust) cc = fp->sect_clust;
                           9750 ;	genPointerGet
                           9751 ;	genGenPointerGet
   4208 E5 10              9752 	mov	a,_bp
   420A 24 32              9753 	add	a,#0x32
   420C F8                 9754 	mov	r0,a
   420D 86 82              9755 	mov	dpl,@r0
   420F 08                 9756 	inc	r0
   4210 86 83              9757 	mov	dph,@r0
   4212 08                 9758 	inc	r0
   4213 86 F0              9759 	mov	b,@r0
   4215 12 62 42           9760 	lcall	__gptrget
   4218 FC                 9761 	mov	r4,a
                           9762 ;	genCast
   4219 7D 00              9763 	mov	r5,#0x00
                           9764 ;	genCmpGt
                           9765 ;	genCmp
   421B C3                 9766 	clr	c
   421C EC                 9767 	mov	a,r4
   421D 9E                 9768 	subb	a,r6
   421E ED                 9769 	mov	a,r5
   421F 9F                 9770 	subb	a,r7
                           9771 ;	genIfxJump
                           9772 ;	Peephole 108.a	removed ljmp by inverse jump logic
   4220 50 15              9773 	jnc	00116$
                           9774 ;	Peephole 300	removed redundant label 00165$
                           9775 ;	genPointerGet
                           9776 ;	genGenPointerGet
   4222 E5 10              9777 	mov	a,_bp
   4224 24 32              9778 	add	a,#0x32
   4226 F8                 9779 	mov	r0,a
   4227 86 82              9780 	mov	dpl,@r0
   4229 08                 9781 	inc	r0
   422A 86 83              9782 	mov	dph,@r0
   422C 08                 9783 	inc	r0
   422D 86 F0              9784 	mov	b,@r0
   422F 12 62 42           9785 	lcall	__gptrget
   4232 FC                 9786 	mov	r4,a
                           9787 ;	genCast
   4233 8C 06              9788 	mov	ar6,r4
   4235 7F 00              9789 	mov	r7,#0x00
   4237                    9790 00116$:
                           9791 ;	FatDrivers/tff.c:1020: if(disk_mp3_read(0, rbuff, sect, (BYTE)cc) != RES_OK)
                           9792 ;	genCast
   4237 8E 04              9793 	mov	ar4,r6
                           9794 ;	genIpush
   4239 C0 04              9795 	push	ar4
   423B C0 06              9796 	push	ar6
   423D C0 07              9797 	push	ar7
   423F C0 04              9798 	push	ar4
                           9799 ;	genIpush
   4241 E5 10              9800 	mov	a,_bp
   4243 24 04              9801 	add	a,#0x04
   4245 F8                 9802 	mov	r0,a
   4246 E6                 9803 	mov	a,@r0
   4247 C0 E0              9804 	push	acc
   4249 08                 9805 	inc	r0
   424A E6                 9806 	mov	a,@r0
   424B C0 E0              9807 	push	acc
   424D 08                 9808 	inc	r0
   424E E6                 9809 	mov	a,@r0
   424F C0 E0              9810 	push	acc
   4251 08                 9811 	inc	r0
   4252 E6                 9812 	mov	a,@r0
   4253 C0 E0              9813 	push	acc
                           9814 ;	genIpush
   4255 E5 10              9815 	mov	a,_bp
   4257 24 12              9816 	add	a,#0x12
   4259 F8                 9817 	mov	r0,a
   425A E6                 9818 	mov	a,@r0
   425B C0 E0              9819 	push	acc
   425D 08                 9820 	inc	r0
   425E E6                 9821 	mov	a,@r0
   425F C0 E0              9822 	push	acc
   4261 08                 9823 	inc	r0
   4262 E6                 9824 	mov	a,@r0
   4263 C0 E0              9825 	push	acc
                           9826 ;	genCall
   4265 75 82 00           9827 	mov	dpl,#0x00
   4268 12 0D A4           9828 	lcall	_disk_mp3_read
   426B AD 82              9829 	mov	r5,dpl
   426D E5 81              9830 	mov	a,sp
   426F 24 F8              9831 	add	a,#0xf8
   4271 F5 81              9832 	mov	sp,a
   4273 D0 07              9833 	pop	ar7
   4275 D0 06              9834 	pop	ar6
   4277 D0 04              9835 	pop	ar4
                           9836 ;	genCmpEq
                           9837 ;	gencjneshort
   4279 BD 00 02           9838 	cjne	r5,#0x00,00166$
   427C 80 03              9839 	sjmp	00167$
   427E                    9840 00166$:
   427E 02 44 CE           9841 	ljmp	00131$
   4281                    9842 00167$:
                           9843 ;	FatDrivers/tff.c:1022: fp->sect_clust -= (BYTE)(cc - 1);
                           9844 ;	genPointerGet
                           9845 ;	genGenPointerGet
   4281 E5 10              9846 	mov	a,_bp
   4283 24 32              9847 	add	a,#0x32
   4285 F8                 9848 	mov	r0,a
   4286 86 82              9849 	mov	dpl,@r0
   4288 08                 9850 	inc	r0
   4289 86 83              9851 	mov	dph,@r0
   428B 08                 9852 	inc	r0
   428C 86 F0              9853 	mov	b,@r0
   428E 12 62 42           9854 	lcall	__gptrget
   4291 FD                 9855 	mov	r5,a
                           9856 ;	genMinus
                           9857 ;	genMinusDec
   4292 EC                 9858 	mov	a,r4
   4293 14                 9859 	dec	a
                           9860 ;	genMinus
   4294 D3                 9861 	setb	c
                           9862 ;	Peephole 236.l	used r5 instead of ar5
   4295 9D                 9863 	subb	a,r5
   4296 F4                 9864 	cpl	a
   4297 FD                 9865 	mov	r5,a
                           9866 ;	genPointerSet
                           9867 ;	genGenPointerSet
   4298 E5 10              9868 	mov	a,_bp
   429A 24 32              9869 	add	a,#0x32
   429C F8                 9870 	mov	r0,a
   429D 86 82              9871 	mov	dpl,@r0
   429F 08                 9872 	inc	r0
   42A0 86 83              9873 	mov	dph,@r0
   42A2 08                 9874 	inc	r0
   42A3 86 F0              9875 	mov	b,@r0
   42A5 ED                 9876 	mov	a,r5
   42A6 12 5E A4           9877 	lcall	__gptrput
                           9878 ;	FatDrivers/tff.c:1023: fp->curr_sect += cc - 1;
                           9879 ;	genPointerGet
                           9880 ;	genGenPointerGet
   42A9 E5 10              9881 	mov	a,_bp
   42AB 24 28              9882 	add	a,#0x28
   42AD F8                 9883 	mov	r0,a
   42AE 86 82              9884 	mov	dpl,@r0
   42B0 08                 9885 	inc	r0
   42B1 86 83              9886 	mov	dph,@r0
   42B3 08                 9887 	inc	r0
   42B4 86 F0              9888 	mov	b,@r0
   42B6 E5 10              9889 	mov	a,_bp
   42B8 24 2E              9890 	add	a,#0x2e
   42BA F9                 9891 	mov	r1,a
   42BB 12 62 42           9892 	lcall	__gptrget
   42BE F7                 9893 	mov	@r1,a
   42BF A3                 9894 	inc	dptr
   42C0 12 62 42           9895 	lcall	__gptrget
   42C3 09                 9896 	inc	r1
   42C4 F7                 9897 	mov	@r1,a
   42C5 A3                 9898 	inc	dptr
   42C6 12 62 42           9899 	lcall	__gptrget
   42C9 09                 9900 	inc	r1
   42CA F7                 9901 	mov	@r1,a
   42CB A3                 9902 	inc	dptr
   42CC 12 62 42           9903 	lcall	__gptrget
   42CF 09                 9904 	inc	r1
   42D0 F7                 9905 	mov	@r1,a
                           9906 ;	genMinus
                           9907 ;	genMinusDec
   42D1 EE                 9908 	mov	a,r6
   42D2 24 FF              9909 	add	a,#0xff
   42D4 FA                 9910 	mov	r2,a
   42D5 EF                 9911 	mov	a,r7
   42D6 34 FF              9912 	addc	a,#0xff
   42D8 FB                 9913 	mov	r3,a
                           9914 ;	genCast
                           9915 ;	genPlus
                           9916 ;	Peephole 3.c	changed mov to clr
   42D9 E4                 9917 	clr	a
   42DA FC                 9918 	mov	r4,a
   42DB FD                 9919 	mov	r5,a
   42DC E5 10              9920 	mov	a,_bp
   42DE 24 2E              9921 	add	a,#0x2e
   42E0 F8                 9922 	mov	r0,a
                           9923 ;	Peephole 236.g	used r2 instead of ar2
   42E1 EA                 9924 	mov	a,r2
   42E2 26                 9925 	add	a,@r0
   42E3 FA                 9926 	mov	r2,a
                           9927 ;	Peephole 236.g	used r3 instead of ar3
   42E4 EB                 9928 	mov	a,r3
   42E5 08                 9929 	inc	r0
   42E6 36                 9930 	addc	a,@r0
   42E7 FB                 9931 	mov	r3,a
                           9932 ;	Peephole 236.g	used r4 instead of ar4
   42E8 EC                 9933 	mov	a,r4
   42E9 08                 9934 	inc	r0
   42EA 36                 9935 	addc	a,@r0
   42EB FC                 9936 	mov	r4,a
                           9937 ;	Peephole 236.g	used r5 instead of ar5
   42EC ED                 9938 	mov	a,r5
   42ED 08                 9939 	inc	r0
   42EE 36                 9940 	addc	a,@r0
   42EF FD                 9941 	mov	r5,a
                           9942 ;	genPointerSet
                           9943 ;	genGenPointerSet
   42F0 E5 10              9944 	mov	a,_bp
   42F2 24 28              9945 	add	a,#0x28
   42F4 F8                 9946 	mov	r0,a
   42F5 86 82              9947 	mov	dpl,@r0
   42F7 08                 9948 	inc	r0
   42F8 86 83              9949 	mov	dph,@r0
   42FA 08                 9950 	inc	r0
   42FB 86 F0              9951 	mov	b,@r0
   42FD EA                 9952 	mov	a,r2
   42FE 12 5E A4           9953 	lcall	__gptrput
   4301 A3                 9954 	inc	dptr
   4302 EB                 9955 	mov	a,r3
   4303 12 5E A4           9956 	lcall	__gptrput
   4306 A3                 9957 	inc	dptr
   4307 EC                 9958 	mov	a,r4
   4308 12 5E A4           9959 	lcall	__gptrput
   430B A3                 9960 	inc	dptr
   430C ED                 9961 	mov	a,r5
   430D 12 5E A4           9962 	lcall	__gptrput
                           9963 ;	FatDrivers/tff.c:1024: rcnt = cc * 512;
                           9964 ;	genLeftShift
                           9965 ;	genLeftShiftLiteral
   4310 E5 10              9966 	mov	a,_bp
   4312 24 0C              9967 	add	a,#0x0c
   4314 F8                 9968 	mov	r0,a
                           9969 ;	genlshTwo
   4315 EE                 9970 	mov	a,r6
                           9971 ;	Peephole 254	optimized left shift
   4316 2E                 9972 	add	a,r6
   4317 08                 9973 	inc	r0
   4318 F6                 9974 	mov	@r0,a
   4319 18                 9975 	dec	r0
   431A 76 00              9976 	mov	@r0,#0x00
                           9977 ;	FatDrivers/tff.c:1025: continue;
   431C 02 44 00           9978 	ljmp	00129$
   431F                    9979 00122$:
                           9980 ;	FatDrivers/tff.c:1028: if (!move_window(fp->curr_sect)) goto fr_error;	/* Move sector window */
                           9981 ;	genPointerGet
                           9982 ;	genGenPointerGet
   431F E5 10              9983 	mov	a,_bp
   4321 24 28              9984 	add	a,#0x28
   4323 F8                 9985 	mov	r0,a
   4324 86 82              9986 	mov	dpl,@r0
   4326 08                 9987 	inc	r0
   4327 86 83              9988 	mov	dph,@r0
   4329 08                 9989 	inc	r0
   432A 86 F0              9990 	mov	b,@r0
   432C 12 62 42           9991 	lcall	__gptrget
   432F FC                 9992 	mov	r4,a
   4330 A3                 9993 	inc	dptr
   4331 12 62 42           9994 	lcall	__gptrget
   4334 FD                 9995 	mov	r5,a
   4335 A3                 9996 	inc	dptr
   4336 12 62 42           9997 	lcall	__gptrget
   4339 FE                 9998 	mov	r6,a
   433A A3                 9999 	inc	dptr
   433B 12 62 42          10000 	lcall	__gptrget
                          10001 ;	genCall
   433E FF                10002 	mov	r7,a
   433F 8C 82             10003 	mov	dpl,r4
   4341 8D 83             10004 	mov	dph,r5
   4343 8E F0             10005 	mov	b,r6
                          10006 ;	Peephole 191	removed redundant mov
   4345 12 17 79          10007 	lcall	_move_window
   4348 E5 82             10008 	mov	a,dpl
                          10009 ;	genIfx
                          10010 ;	genIfxJump
   434A 70 03             10011 	jnz	00168$
   434C 02 44 CE          10012 	ljmp	00131$
   434F                   10013 00168$:
                          10014 ;	FatDrivers/tff.c:1029: rcnt = 512 - (WORD)(fp->fptr % 512);			/* Copy fractional bytes from sector window */
                          10015 ;	genPointerGet
                          10016 ;	genGenPointerGet
   434F E5 10             10017 	mov	a,_bp
   4351 24 1B             10018 	add	a,#0x1b
   4353 F8                10019 	mov	r0,a
   4354 86 82             10020 	mov	dpl,@r0
   4356 08                10021 	inc	r0
   4357 86 83             10022 	mov	dph,@r0
   4359 08                10023 	inc	r0
   435A 86 F0             10024 	mov	b,@r0
   435C 12 62 42          10025 	lcall	__gptrget
   435F FC                10026 	mov	r4,a
   4360 A3                10027 	inc	dptr
   4361 12 62 42          10028 	lcall	__gptrget
   4364 FD                10029 	mov	r5,a
   4365 A3                10030 	inc	dptr
   4366 12 62 42          10031 	lcall	__gptrget
   4369 FE                10032 	mov	r6,a
   436A A3                10033 	inc	dptr
   436B 12 62 42          10034 	lcall	__gptrget
   436E FF                10035 	mov	r7,a
                          10036 ;	genAnd
   436F 53 05 01          10037 	anl	ar5,#0x01
                          10038 ;	genCast
                          10039 ;	genMinus
                          10040 ;	Peephole 3.c	changed mov to clr
   4372 E4                10041 	clr	a
   4373 FE                10042 	mov	r6,a
   4374 FF                10043 	mov	r7,a
   4375 E5 10             10044 	mov	a,_bp
   4377 24 0C             10045 	add	a,#0x0c
   4379 F8                10046 	mov	r0,a
                          10047 ;	Peephole 181	changed mov to clr
   437A E4                10048 	clr	a
   437B C3                10049 	clr	c
                          10050 ;	Peephole 236.l	used r4 instead of ar4
   437C 9C                10051 	subb	a,r4
   437D F6                10052 	mov	@r0,a
   437E 74 02             10053 	mov	a,#0x02
                          10054 ;	Peephole 236.l	used r5 instead of ar5
   4380 9D                10055 	subb	a,r5
   4381 08                10056 	inc	r0
   4382 F6                10057 	mov	@r0,a
                          10058 ;	FatDrivers/tff.c:1030: if (rcnt > btr) rcnt = btr;
                          10059 ;	genCmpGt
   4383 E5 10             10060 	mov	a,_bp
   4385 24 0C             10061 	add	a,#0x0c
   4387 F8                10062 	mov	r0,a
   4388 E5 10             10063 	mov	a,_bp
   438A 24 F9             10064 	add	a,#0xfffffff9
   438C F9                10065 	mov	r1,a
                          10066 ;	genCmp
   438D C3                10067 	clr	c
   438E E7                10068 	mov	a,@r1
   438F 96                10069 	subb	a,@r0
   4390 09                10070 	inc	r1
   4391 E7                10071 	mov	a,@r1
   4392 08                10072 	inc	r0
   4393 96                10073 	subb	a,@r0
                          10074 ;	genIfxJump
                          10075 ;	Peephole 108.a	removed ljmp by inverse jump logic
   4394 50 10             10076 	jnc	00126$
                          10077 ;	Peephole 300	removed redundant label 00169$
                          10078 ;	genAssign
   4396 E5 10             10079 	mov	a,_bp
   4398 24 F9             10080 	add	a,#0xfffffff9
   439A F8                10081 	mov	r0,a
   439B E5 10             10082 	mov	a,_bp
   439D 24 0C             10083 	add	a,#0x0c
   439F F9                10084 	mov	r1,a
   43A0 E6                10085 	mov	a,@r0
   43A1 F7                10086 	mov	@r1,a
   43A2 08                10087 	inc	r0
   43A3 09                10088 	inc	r1
   43A4 E6                10089 	mov	a,@r0
   43A5 F7                10090 	mov	@r1,a
   43A6                   10091 00126$:
                          10092 ;	FatDrivers/tff.c:1031: memcpy(rbuff, &fs->win[(WORD)fp->fptr % 512], rcnt);
                          10093 ;	genPointerGet
                          10094 ;	genGenPointerGet
   43A6 E5 10             10095 	mov	a,_bp
   43A8 24 1B             10096 	add	a,#0x1b
   43AA F8                10097 	mov	r0,a
   43AB 86 82             10098 	mov	dpl,@r0
   43AD 08                10099 	inc	r0
   43AE 86 83             10100 	mov	dph,@r0
   43B0 08                10101 	inc	r0
   43B1 86 F0             10102 	mov	b,@r0
   43B3 12 62 42          10103 	lcall	__gptrget
   43B6 FC                10104 	mov	r4,a
   43B7 A3                10105 	inc	dptr
   43B8 12 62 42          10106 	lcall	__gptrget
   43BB FD                10107 	mov	r5,a
   43BC A3                10108 	inc	dptr
   43BD 12 62 42          10109 	lcall	__gptrget
   43C0 FE                10110 	mov	r6,a
   43C1 A3                10111 	inc	dptr
   43C2 12 62 42          10112 	lcall	__gptrget
   43C5 FF                10113 	mov	r7,a
                          10114 ;	genCast
                          10115 ;	genAnd
   43C6 53 05 01          10116 	anl	ar5,#0x01
                          10117 ;	genPlus
   43C9 E5 10             10118 	mov	a,_bp
   43CB 24 2B             10119 	add	a,#0x2b
   43CD F8                10120 	mov	r0,a
                          10121 ;	Peephole 236.g	used r4 instead of ar4
   43CE EC                10122 	mov	a,r4
   43CF 26                10123 	add	a,@r0
   43D0 FC                10124 	mov	r4,a
                          10125 ;	Peephole 236.g	used r5 instead of ar5
   43D1 ED                10126 	mov	a,r5
   43D2 08                10127 	inc	r0
   43D3 36                10128 	addc	a,@r0
   43D4 FD                10129 	mov	r5,a
   43D5 08                10130 	inc	r0
   43D6 86 06             10131 	mov	ar6,@r0
                          10132 ;	genIpush
   43D8 E5 10             10133 	mov	a,_bp
   43DA 24 0C             10134 	add	a,#0x0c
   43DC F8                10135 	mov	r0,a
   43DD E6                10136 	mov	a,@r0
   43DE C0 E0             10137 	push	acc
   43E0 08                10138 	inc	r0
   43E1 E6                10139 	mov	a,@r0
   43E2 C0 E0             10140 	push	acc
                          10141 ;	genIpush
   43E4 C0 04             10142 	push	ar4
   43E6 C0 05             10143 	push	ar5
   43E8 C0 06             10144 	push	ar6
                          10145 ;	genCall
   43EA E5 10             10146 	mov	a,_bp
   43EC 24 12             10147 	add	a,#0x12
   43EE F8                10148 	mov	r0,a
   43EF 86 82             10149 	mov	dpl,@r0
   43F1 08                10150 	inc	r0
   43F2 86 83             10151 	mov	dph,@r0
   43F4 08                10152 	inc	r0
   43F5 86 F0             10153 	mov	b,@r0
   43F7 12 61 7C          10154 	lcall	_memcpy
   43FA E5 81             10155 	mov	a,sp
   43FC 24 FB             10156 	add	a,#0xfb
   43FE F5 81             10157 	mov	sp,a
   4400                   10158 00129$:
                          10159 ;	FatDrivers/tff.c:1003: rbuff += rcnt, fp->fptr += rcnt, *br += rcnt, btr -= rcnt) {
                          10160 ;	genPlus
   4400 E5 10             10161 	mov	a,_bp
   4402 24 12             10162 	add	a,#0x12
   4404 F8                10163 	mov	r0,a
   4405 E5 10             10164 	mov	a,_bp
   4407 24 0C             10165 	add	a,#0x0c
   4409 F9                10166 	mov	r1,a
   440A E7                10167 	mov	a,@r1
   440B 26                10168 	add	a,@r0
   440C F6                10169 	mov	@r0,a
   440D 09                10170 	inc	r1
   440E E7                10171 	mov	a,@r1
   440F 08                10172 	inc	r0
   4410 36                10173 	addc	a,@r0
   4411 F6                10174 	mov	@r0,a
                          10175 ;	genPointerGet
                          10176 ;	genGenPointerGet
   4412 E5 10             10177 	mov	a,_bp
   4414 24 1B             10178 	add	a,#0x1b
   4416 F8                10179 	mov	r0,a
   4417 86 82             10180 	mov	dpl,@r0
   4419 08                10181 	inc	r0
   441A 86 83             10182 	mov	dph,@r0
   441C 08                10183 	inc	r0
   441D 86 F0             10184 	mov	b,@r0
   441F E5 10             10185 	mov	a,_bp
   4421 24 2E             10186 	add	a,#0x2e
   4423 F9                10187 	mov	r1,a
   4424 12 62 42          10188 	lcall	__gptrget
   4427 F7                10189 	mov	@r1,a
   4428 A3                10190 	inc	dptr
   4429 12 62 42          10191 	lcall	__gptrget
   442C 09                10192 	inc	r1
   442D F7                10193 	mov	@r1,a
   442E A3                10194 	inc	dptr
   442F 12 62 42          10195 	lcall	__gptrget
   4432 09                10196 	inc	r1
   4433 F7                10197 	mov	@r1,a
   4434 A3                10198 	inc	dptr
   4435 12 62 42          10199 	lcall	__gptrget
   4438 09                10200 	inc	r1
   4439 F7                10201 	mov	@r1,a
                          10202 ;	genCast
   443A E5 10             10203 	mov	a,_bp
   443C 24 0C             10204 	add	a,#0x0c
   443E F8                10205 	mov	r0,a
   443F 86 02             10206 	mov	ar2,@r0
   4441 08                10207 	inc	r0
   4442 86 03             10208 	mov	ar3,@r0
                          10209 ;	genPlus
                          10210 ;	Peephole 3.c	changed mov to clr
   4444 E4                10211 	clr	a
   4445 FC                10212 	mov	r4,a
   4446 FD                10213 	mov	r5,a
   4447 E5 10             10214 	mov	a,_bp
   4449 24 2E             10215 	add	a,#0x2e
   444B F8                10216 	mov	r0,a
                          10217 ;	Peephole 236.g	used r2 instead of ar2
   444C EA                10218 	mov	a,r2
   444D 26                10219 	add	a,@r0
   444E FA                10220 	mov	r2,a
                          10221 ;	Peephole 236.g	used r3 instead of ar3
   444F EB                10222 	mov	a,r3
   4450 08                10223 	inc	r0
   4451 36                10224 	addc	a,@r0
   4452 FB                10225 	mov	r3,a
                          10226 ;	Peephole 236.g	used r4 instead of ar4
   4453 EC                10227 	mov	a,r4
   4454 08                10228 	inc	r0
   4455 36                10229 	addc	a,@r0
   4456 FC                10230 	mov	r4,a
                          10231 ;	Peephole 236.g	used r5 instead of ar5
   4457 ED                10232 	mov	a,r5
   4458 08                10233 	inc	r0
   4459 36                10234 	addc	a,@r0
   445A FD                10235 	mov	r5,a
                          10236 ;	genPointerSet
                          10237 ;	genGenPointerSet
   445B E5 10             10238 	mov	a,_bp
   445D 24 1B             10239 	add	a,#0x1b
   445F F8                10240 	mov	r0,a
   4460 86 82             10241 	mov	dpl,@r0
   4462 08                10242 	inc	r0
   4463 86 83             10243 	mov	dph,@r0
   4465 08                10244 	inc	r0
   4466 86 F0             10245 	mov	b,@r0
   4468 EA                10246 	mov	a,r2
   4469 12 5E A4          10247 	lcall	__gptrput
   446C A3                10248 	inc	dptr
   446D EB                10249 	mov	a,r3
   446E 12 5E A4          10250 	lcall	__gptrput
   4471 A3                10251 	inc	dptr
   4472 EC                10252 	mov	a,r4
   4473 12 5E A4          10253 	lcall	__gptrput
   4476 A3                10254 	inc	dptr
   4477 ED                10255 	mov	a,r5
   4478 12 5E A4          10256 	lcall	__gptrput
                          10257 ;	genPointerGet
                          10258 ;	genGenPointerGet
   447B E5 10             10259 	mov	a,_bp
   447D 24 18             10260 	add	a,#0x18
   447F F8                10261 	mov	r0,a
   4480 86 82             10262 	mov	dpl,@r0
   4482 08                10263 	inc	r0
   4483 86 83             10264 	mov	dph,@r0
   4485 08                10265 	inc	r0
   4486 86 F0             10266 	mov	b,@r0
   4488 12 62 42          10267 	lcall	__gptrget
   448B FA                10268 	mov	r2,a
   448C A3                10269 	inc	dptr
   448D 12 62 42          10270 	lcall	__gptrget
   4490 FB                10271 	mov	r3,a
                          10272 ;	genPlus
   4491 E5 10             10273 	mov	a,_bp
   4493 24 0C             10274 	add	a,#0x0c
   4495 F8                10275 	mov	r0,a
   4496 E6                10276 	mov	a,@r0
                          10277 ;	Peephole 236.a	used r2 instead of ar2
   4497 2A                10278 	add	a,r2
   4498 FA                10279 	mov	r2,a
   4499 08                10280 	inc	r0
   449A E6                10281 	mov	a,@r0
                          10282 ;	Peephole 236.b	used r3 instead of ar3
   449B 3B                10283 	addc	a,r3
   449C FB                10284 	mov	r3,a
                          10285 ;	genPointerSet
                          10286 ;	genGenPointerSet
   449D E5 10             10287 	mov	a,_bp
   449F 24 18             10288 	add	a,#0x18
   44A1 F8                10289 	mov	r0,a
   44A2 86 82             10290 	mov	dpl,@r0
   44A4 08                10291 	inc	r0
   44A5 86 83             10292 	mov	dph,@r0
   44A7 08                10293 	inc	r0
   44A8 86 F0             10294 	mov	b,@r0
   44AA EA                10295 	mov	a,r2
   44AB 12 5E A4          10296 	lcall	__gptrput
   44AE A3                10297 	inc	dptr
   44AF EB                10298 	mov	a,r3
   44B0 12 5E A4          10299 	lcall	__gptrput
                          10300 ;	genMinus
   44B3 E5 10             10301 	mov	a,_bp
   44B5 24 F9             10302 	add	a,#0xfffffff9
   44B7 F8                10303 	mov	r0,a
   44B8 E5 10             10304 	mov	a,_bp
   44BA 24 0C             10305 	add	a,#0x0c
   44BC F9                10306 	mov	r1,a
   44BD E6                10307 	mov	a,@r0
   44BE C3                10308 	clr	c
   44BF 97                10309 	subb	a,@r1
   44C0 F6                10310 	mov	@r0,a
   44C1 08                10311 	inc	r0
   44C2 E6                10312 	mov	a,@r0
   44C3 09                10313 	inc	r1
   44C4 97                10314 	subb	a,@r1
   44C5 F6                10315 	mov	@r0,a
   44C6 02 3F F4          10316 	ljmp	00127$
   44C9                   10317 00130$:
                          10318 ;	FatDrivers/tff.c:1034: return FR_OK;
                          10319 ;	genRet
   44C9 75 82 00          10320 	mov	dpl,#0x00
                          10321 ;	FatDrivers/tff.c:1036: fr_error:	/* Abort this function due to an unrecoverable error */
                          10322 ;	Peephole 112.b	changed ljmp to sjmp
   44CC 80 28             10323 	sjmp	00132$
   44CE                   10324 00131$:
                          10325 ;	FatDrivers/tff.c:1037: fp->flag |= FA__ERROR;
                          10326 ;	genPointerGet
                          10327 ;	genGenPointerGet
   44CE E5 10             10328 	mov	a,_bp
   44D0 24 38             10329 	add	a,#0x38
   44D2 F8                10330 	mov	r0,a
   44D3 86 82             10331 	mov	dpl,@r0
   44D5 08                10332 	inc	r0
   44D6 86 83             10333 	mov	dph,@r0
   44D8 08                10334 	inc	r0
   44D9 86 F0             10335 	mov	b,@r0
   44DB 12 62 42          10336 	lcall	__gptrget
   44DE FA                10337 	mov	r2,a
                          10338 ;	genOr
   44DF 43 02 80          10339 	orl	ar2,#0x80
                          10340 ;	genPointerSet
                          10341 ;	genGenPointerSet
   44E2 E5 10             10342 	mov	a,_bp
   44E4 24 38             10343 	add	a,#0x38
   44E6 F8                10344 	mov	r0,a
   44E7 86 82             10345 	mov	dpl,@r0
   44E9 08                10346 	inc	r0
   44EA 86 83             10347 	mov	dph,@r0
   44EC 08                10348 	inc	r0
   44ED 86 F0             10349 	mov	b,@r0
   44EF EA                10350 	mov	a,r2
   44F0 12 5E A4          10351 	lcall	__gptrput
                          10352 ;	FatDrivers/tff.c:1038: return FR_RW_ERROR;
                          10353 ;	genRet
   44F3 75 82 08          10354 	mov	dpl,#0x08
   44F6                   10355 00132$:
   44F6 85 10 81          10356 	mov	sp,_bp
   44F9 D0 10             10357 	pop	_bp
   44FB 22                10358 	ret
                          10359 ;------------------------------------------------------------
                          10360 ;Allocation info for local variables in function 'f_txt_read'
                          10361 ;------------------------------------------------------------
                          10362 ;buff                      Allocated to stack - offset -5
                          10363 ;btr                       Allocated to stack - offset -7
                          10364 ;br                        Allocated to stack - offset -10
                          10365 ;fp                        Allocated to stack - offset 1
                          10366 ;sect                      Allocated to stack - offset 4
                          10367 ;remain                    Allocated to stack - offset 8
                          10368 ;rcnt                      Allocated to stack - offset 12
                          10369 ;cc                        Allocated to registers r6 r7 
                          10370 ;clust                     Allocated to stack - offset 14
                          10371 ;rbuff                     Allocated to stack - offset 18
                          10372 ;res                       Allocated to registers r2 
                          10373 ;fs                        Allocated to stack - offset 21
                          10374 ;sloc0                     Allocated to stack - offset 27
                          10375 ;sloc1                     Allocated to stack - offset 24
                          10376 ;sloc2                     Allocated to stack - offset 27
                          10377 ;sloc3                     Allocated to stack - offset 30
                          10378 ;sloc4                     Allocated to stack - offset 34
                          10379 ;sloc5                     Allocated to stack - offset 37
                          10380 ;sloc6                     Allocated to stack - offset 40
                          10381 ;sloc7                     Allocated to stack - offset 43
                          10382 ;sloc8                     Allocated to stack - offset 46
                          10383 ;sloc9                     Allocated to stack - offset 50
                          10384 ;sloc10                    Allocated to stack - offset 53
                          10385 ;sloc11                    Allocated to stack - offset 56
                          10386 ;------------------------------------------------------------
                          10387 ;	FatDrivers/tff.c:1045: FRESULT f_txt_read (
                          10388 ;	-----------------------------------------
                          10389 ;	 function f_txt_read
                          10390 ;	-----------------------------------------
   44FC                   10391 _f_txt_read:
   44FC C0 10             10392 	push	_bp
   44FE 85 81 10          10393 	mov	_bp,sp
                          10394 ;     genReceive
   4501 C0 82             10395 	push	dpl
   4503 C0 83             10396 	push	dph
   4505 C0 F0             10397 	push	b
   4507 E5 81             10398 	mov	a,sp
   4509 24 3A             10399 	add	a,#0x3a
   450B F5 81             10400 	mov	sp,a
                          10401 ;	FatDrivers/tff.c:1055: BYTE *rbuff = buff;
                          10402 ;	genAssign
   450D E5 10             10403 	mov	a,_bp
   450F 24 FB             10404 	add	a,#0xfffffffb
   4511 F8                10405 	mov	r0,a
   4512 86 05             10406 	mov	ar5,@r0
   4514 08                10407 	inc	r0
   4515 86 06             10408 	mov	ar6,@r0
   4517 08                10409 	inc	r0
   4518 86 07             10410 	mov	ar7,@r0
                          10411 ;	genAssign
   451A E5 10             10412 	mov	a,_bp
   451C 24 12             10413 	add	a,#0x12
   451E F8                10414 	mov	r0,a
   451F A6 05             10415 	mov	@r0,ar5
   4521 08                10416 	inc	r0
   4522 A6 06             10417 	mov	@r0,ar6
   4524 08                10418 	inc	r0
   4525 A6 07             10419 	mov	@r0,ar7
                          10420 ;	FatDrivers/tff.c:1057: FATFS *fs = fp->fs;
                          10421 ;	genPlus
   4527 A8 10             10422 	mov	r0,_bp
   4529 08                10423 	inc	r0
                          10424 ;     genPlusIncr
   452A 74 04             10425 	mov	a,#0x04
   452C 26                10426 	add	a,@r0
   452D FD                10427 	mov	r5,a
                          10428 ;	Peephole 181	changed mov to clr
   452E E4                10429 	clr	a
   452F 08                10430 	inc	r0
   4530 36                10431 	addc	a,@r0
   4531 FE                10432 	mov	r6,a
   4532 08                10433 	inc	r0
   4533 86 07             10434 	mov	ar7,@r0
                          10435 ;	genPointerGet
                          10436 ;	genGenPointerGet
   4535 8D 82             10437 	mov	dpl,r5
   4537 8E 83             10438 	mov	dph,r6
   4539 8F F0             10439 	mov	b,r7
   453B 12 62 42          10440 	lcall	__gptrget
   453E FD                10441 	mov	r5,a
   453F A3                10442 	inc	dptr
   4540 12 62 42          10443 	lcall	__gptrget
   4543 FE                10444 	mov	r6,a
   4544 A3                10445 	inc	dptr
   4545 12 62 42          10446 	lcall	__gptrget
   4548 FF                10447 	mov	r7,a
                          10448 ;	genAssign
   4549 E5 10             10449 	mov	a,_bp
   454B 24 15             10450 	add	a,#0x15
   454D F8                10451 	mov	r0,a
   454E A6 05             10452 	mov	@r0,ar5
   4550 08                10453 	inc	r0
   4551 A6 06             10454 	mov	@r0,ar6
   4553 08                10455 	inc	r0
   4554 A6 07             10456 	mov	@r0,ar7
                          10457 ;	FatDrivers/tff.c:1060: *br = 0;
                          10458 ;	genAssign
   4556 E5 10             10459 	mov	a,_bp
   4558 24 F6             10460 	add	a,#0xfffffff6
   455A F8                10461 	mov	r0,a
   455B E5 10             10462 	mov	a,_bp
   455D 24 18             10463 	add	a,#0x18
   455F F9                10464 	mov	r1,a
   4560 E6                10465 	mov	a,@r0
   4561 F7                10466 	mov	@r1,a
   4562 08                10467 	inc	r0
   4563 09                10468 	inc	r1
   4564 E6                10469 	mov	a,@r0
   4565 F7                10470 	mov	@r1,a
   4566 08                10471 	inc	r0
   4567 09                10472 	inc	r1
   4568 E6                10473 	mov	a,@r0
   4569 F7                10474 	mov	@r1,a
                          10475 ;	genPointerSet
                          10476 ;	genGenPointerSet
   456A E5 10             10477 	mov	a,_bp
   456C 24 18             10478 	add	a,#0x18
   456E F8                10479 	mov	r0,a
   456F 86 82             10480 	mov	dpl,@r0
   4571 08                10481 	inc	r0
   4572 86 83             10482 	mov	dph,@r0
   4574 08                10483 	inc	r0
   4575 86 F0             10484 	mov	b,@r0
                          10485 ;	Peephole 181	changed mov to clr
   4577 E4                10486 	clr	a
   4578 12 5E A4          10487 	lcall	__gptrput
   457B A3                10488 	inc	dptr
                          10489 ;	Peephole 181	changed mov to clr
   457C E4                10490 	clr	a
   457D 12 5E A4          10491 	lcall	__gptrput
                          10492 ;	FatDrivers/tff.c:1061: res = validate(fs, fp->id);						/* Check validity of the object */
                          10493 ;	genPointerGet
                          10494 ;	genGenPointerGet
   4580 A8 10             10495 	mov	r0,_bp
   4582 08                10496 	inc	r0
   4583 86 82             10497 	mov	dpl,@r0
   4585 08                10498 	inc	r0
   4586 86 83             10499 	mov	dph,@r0
   4588 08                10500 	inc	r0
   4589 86 F0             10501 	mov	b,@r0
   458B 12 62 42          10502 	lcall	__gptrget
   458E FA                10503 	mov	r2,a
   458F A3                10504 	inc	dptr
   4590 12 62 42          10505 	lcall	__gptrget
   4593 FB                10506 	mov	r3,a
                          10507 ;	genIpush
   4594 C0 02             10508 	push	ar2
   4596 C0 03             10509 	push	ar3
                          10510 ;	genCall
   4598 E5 10             10511 	mov	a,_bp
   459A 24 15             10512 	add	a,#0x15
   459C F8                10513 	mov	r0,a
   459D 86 82             10514 	mov	dpl,@r0
   459F 08                10515 	inc	r0
   45A0 86 83             10516 	mov	dph,@r0
   45A2 08                10517 	inc	r0
   45A3 86 F0             10518 	mov	b,@r0
   45A5 12 32 FD          10519 	lcall	_validate
   45A8 AA 82             10520 	mov	r2,dpl
   45AA 15 81             10521 	dec	sp
   45AC 15 81             10522 	dec	sp
                          10523 ;	genAssign
                          10524 ;	FatDrivers/tff.c:1062: if (res != FR_OK) return res;
                          10525 ;	genCmpEq
                          10526 ;	gencjneshort
   45AE BA 00 02          10527 	cjne	r2,#0x00,00152$
                          10528 ;	Peephole 112.b	changed ljmp to sjmp
   45B1 80 05             10529 	sjmp	00102$
   45B3                   10530 00152$:
                          10531 ;	genRet
   45B3 8A 82             10532 	mov	dpl,r2
   45B5 02 4C 30          10533 	ljmp	00132$
   45B8                   10534 00102$:
                          10535 ;	FatDrivers/tff.c:1063: if (fp->flag & FA__ERROR) return FR_RW_ERROR;	/* Check error flag */
                          10536 ;	genPlus
   45B8 A8 10             10537 	mov	r0,_bp
   45BA 08                10538 	inc	r0
   45BB E5 10             10539 	mov	a,_bp
   45BD 24 38             10540 	add	a,#0x38
   45BF F9                10541 	mov	r1,a
                          10542 ;     genPlusIncr
   45C0 74 02             10543 	mov	a,#0x02
   45C2 26                10544 	add	a,@r0
   45C3 F7                10545 	mov	@r1,a
                          10546 ;	Peephole 181	changed mov to clr
   45C4 E4                10547 	clr	a
   45C5 08                10548 	inc	r0
   45C6 36                10549 	addc	a,@r0
   45C7 09                10550 	inc	r1
   45C8 F7                10551 	mov	@r1,a
   45C9 08                10552 	inc	r0
   45CA 09                10553 	inc	r1
   45CB E6                10554 	mov	a,@r0
   45CC F7                10555 	mov	@r1,a
                          10556 ;	genPointerGet
                          10557 ;	genGenPointerGet
   45CD E5 10             10558 	mov	a,_bp
   45CF 24 38             10559 	add	a,#0x38
   45D1 F8                10560 	mov	r0,a
   45D2 86 82             10561 	mov	dpl,@r0
   45D4 08                10562 	inc	r0
   45D5 86 83             10563 	mov	dph,@r0
   45D7 08                10564 	inc	r0
   45D8 86 F0             10565 	mov	b,@r0
   45DA 12 62 42          10566 	lcall	__gptrget
                          10567 ;	genAnd
   45DD FA                10568 	mov	r2,a
                          10569 ;	Peephole 105	removed redundant mov
                          10570 ;	genIfxJump
                          10571 ;	Peephole 108.d	removed ljmp by inverse jump logic
   45DE 30 E7 06          10572 	jnb	acc.7,00104$
                          10573 ;	Peephole 300	removed redundant label 00153$
                          10574 ;	genRet
   45E1 75 82 08          10575 	mov	dpl,#0x08
   45E4 02 4C 30          10576 	ljmp	00132$
   45E7                   10577 00104$:
                          10578 ;	FatDrivers/tff.c:1064: if (!(fp->flag & FA_READ)) return FR_DENIED;	/* Check access mode */
                          10579 ;	genAnd
   45E7 EA                10580 	mov	a,r2
                          10581 ;	genIfxJump
                          10582 ;	Peephole 108.e	removed ljmp by inverse jump logic
   45E8 20 E0 06          10583 	jb	acc.0,00106$
                          10584 ;	Peephole 300	removed redundant label 00154$
                          10585 ;	genRet
   45EB 75 82 06          10586 	mov	dpl,#0x06
   45EE 02 4C 30          10587 	ljmp	00132$
   45F1                   10588 00106$:
                          10589 ;	FatDrivers/tff.c:1065: remain = fp->fsize - fp->fptr;
                          10590 ;	genIpush
                          10591 ;	genPlus
   45F1 A8 10             10592 	mov	r0,_bp
   45F3 08                10593 	inc	r0
                          10594 ;     genPlusIncr
   45F4 74 0B             10595 	mov	a,#0x0B
   45F6 26                10596 	add	a,@r0
   45F7 FA                10597 	mov	r2,a
                          10598 ;	Peephole 181	changed mov to clr
   45F8 E4                10599 	clr	a
   45F9 08                10600 	inc	r0
   45FA 36                10601 	addc	a,@r0
   45FB FB                10602 	mov	r3,a
   45FC 08                10603 	inc	r0
   45FD 86 04             10604 	mov	ar4,@r0
                          10605 ;	genPointerGet
                          10606 ;	genGenPointerGet
   45FF 8A 82             10607 	mov	dpl,r2
   4601 8B 83             10608 	mov	dph,r3
   4603 8C F0             10609 	mov	b,r4
   4605 E5 10             10610 	mov	a,_bp
   4607 24 1E             10611 	add	a,#0x1e
   4609 F8                10612 	mov	r0,a
   460A 12 62 42          10613 	lcall	__gptrget
   460D F6                10614 	mov	@r0,a
   460E A3                10615 	inc	dptr
   460F 12 62 42          10616 	lcall	__gptrget
   4612 08                10617 	inc	r0
   4613 F6                10618 	mov	@r0,a
   4614 A3                10619 	inc	dptr
   4615 12 62 42          10620 	lcall	__gptrget
   4618 08                10621 	inc	r0
   4619 F6                10622 	mov	@r0,a
   461A A3                10623 	inc	dptr
   461B 12 62 42          10624 	lcall	__gptrget
   461E 08                10625 	inc	r0
   461F F6                10626 	mov	@r0,a
                          10627 ;	genPlus
   4620 A8 10             10628 	mov	r0,_bp
   4622 08                10629 	inc	r0
   4623 E5 10             10630 	mov	a,_bp
   4625 24 1B             10631 	add	a,#0x1b
   4627 F9                10632 	mov	r1,a
                          10633 ;     genPlusIncr
   4628 74 07             10634 	mov	a,#0x07
   462A 26                10635 	add	a,@r0
   462B F7                10636 	mov	@r1,a
                          10637 ;	Peephole 181	changed mov to clr
   462C E4                10638 	clr	a
   462D 08                10639 	inc	r0
   462E 36                10640 	addc	a,@r0
   462F 09                10641 	inc	r1
   4630 F7                10642 	mov	@r1,a
   4631 08                10643 	inc	r0
   4632 09                10644 	inc	r1
   4633 E6                10645 	mov	a,@r0
   4634 F7                10646 	mov	@r1,a
                          10647 ;	genPointerGet
                          10648 ;	genGenPointerGet
   4635 E5 10             10649 	mov	a,_bp
   4637 24 1B             10650 	add	a,#0x1b
   4639 F8                10651 	mov	r0,a
   463A 86 82             10652 	mov	dpl,@r0
   463C 08                10653 	inc	r0
   463D 86 83             10654 	mov	dph,@r0
   463F 08                10655 	inc	r0
   4640 86 F0             10656 	mov	b,@r0
   4642 12 62 42          10657 	lcall	__gptrget
   4645 FE                10658 	mov	r6,a
   4646 A3                10659 	inc	dptr
   4647 12 62 42          10660 	lcall	__gptrget
   464A FF                10661 	mov	r7,a
   464B A3                10662 	inc	dptr
   464C 12 62 42          10663 	lcall	__gptrget
   464F FA                10664 	mov	r2,a
   4650 A3                10665 	inc	dptr
   4651 12 62 42          10666 	lcall	__gptrget
   4654 FB                10667 	mov	r3,a
                          10668 ;	genMinus
   4655 E5 10             10669 	mov	a,_bp
   4657 24 1E             10670 	add	a,#0x1e
   4659 F8                10671 	mov	r0,a
   465A E6                10672 	mov	a,@r0
   465B C3                10673 	clr	c
                          10674 ;	Peephole 236.l	used r6 instead of ar6
   465C 9E                10675 	subb	a,r6
   465D FE                10676 	mov	r6,a
   465E 08                10677 	inc	r0
   465F E6                10678 	mov	a,@r0
                          10679 ;	Peephole 236.l	used r7 instead of ar7
   4660 9F                10680 	subb	a,r7
   4661 FF                10681 	mov	r7,a
   4662 08                10682 	inc	r0
   4663 E6                10683 	mov	a,@r0
                          10684 ;	Peephole 236.l	used r2 instead of ar2
   4664 9A                10685 	subb	a,r2
   4665 FA                10686 	mov	r2,a
   4666 08                10687 	inc	r0
   4667 E6                10688 	mov	a,@r0
                          10689 ;	Peephole 236.l	used r3 instead of ar3
   4668 9B                10690 	subb	a,r3
   4669 FB                10691 	mov	r3,a
                          10692 ;	genAssign
   466A E5 10             10693 	mov	a,_bp
   466C 24 08             10694 	add	a,#0x08
   466E F8                10695 	mov	r0,a
   466F A6 06             10696 	mov	@r0,ar6
   4671 08                10697 	inc	r0
   4672 A6 07             10698 	mov	@r0,ar7
   4674 08                10699 	inc	r0
   4675 A6 02             10700 	mov	@r0,ar2
   4677 08                10701 	inc	r0
   4678 A6 03             10702 	mov	@r0,ar3
                          10703 ;	FatDrivers/tff.c:1066: if (btr > remain) btr = (WORD)remain;			/* Truncate read count by number of bytes left */
                          10704 ;	genCast
   467A E5 10             10705 	mov	a,_bp
   467C 24 F9             10706 	add	a,#0xfffffff9
   467E F8                10707 	mov	r0,a
   467F 86 02             10708 	mov	ar2,@r0
   4681 08                10709 	inc	r0
   4682 86 03             10710 	mov	ar3,@r0
                          10711 ;	genCmpGt
                          10712 ;	Peephole 3.c	changed mov to clr
   4684 E4                10713 	clr	a
   4685 FC                10714 	mov	r4,a
   4686 FD                10715 	mov	r5,a
   4687 E5 10             10716 	mov	a,_bp
   4689 24 08             10717 	add	a,#0x08
   468B F8                10718 	mov	r0,a
                          10719 ;	genCmp
   468C C3                10720 	clr	c
   468D E6                10721 	mov	a,@r0
   468E 9A                10722 	subb	a,r2
   468F 08                10723 	inc	r0
   4690 E6                10724 	mov	a,@r0
   4691 9B                10725 	subb	a,r3
   4692 08                10726 	inc	r0
   4693 E6                10727 	mov	a,@r0
   4694 9C                10728 	subb	a,r4
   4695 08                10729 	inc	r0
   4696 E6                10730 	mov	a,@r0
   4697 9D                10731 	subb	a,r5
                          10732 ;	genIpop
                          10733 ;	genIfx
                          10734 ;	genIfxJump
                          10735 ;	Peephole 108.c	removed ljmp by inverse jump logic
                          10736 ;	Peephole 128	jump optimization
   4698 50 10             10737 	jnc	00151$
                          10738 ;	Peephole 300	removed redundant label 00155$
                          10739 ;	genCast
   469A E5 10             10740 	mov	a,_bp
   469C 24 08             10741 	add	a,#0x08
   469E F8                10742 	mov	r0,a
   469F E5 10             10743 	mov	a,_bp
   46A1 24 F9             10744 	add	a,#0xfffffff9
   46A3 F9                10745 	mov	r1,a
   46A4 E6                10746 	mov	a,@r0
   46A5 F7                10747 	mov	@r1,a
   46A6 08                10748 	inc	r0
   46A7 09                10749 	inc	r1
   46A8 E6                10750 	mov	a,@r0
   46A9 F7                10751 	mov	@r1,a
   46AA                   10752 00151$:
                          10753 ;	genPlus
   46AA A8 10             10754 	mov	r0,_bp
   46AC 08                10755 	inc	r0
   46AD E5 10             10756 	mov	a,_bp
   46AF 24 35             10757 	add	a,#0x35
   46B1 F9                10758 	mov	r1,a
                          10759 ;     genPlusIncr
   46B2 74 13             10760 	mov	a,#0x13
   46B4 26                10761 	add	a,@r0
   46B5 F7                10762 	mov	@r1,a
                          10763 ;	Peephole 181	changed mov to clr
   46B6 E4                10764 	clr	a
   46B7 08                10765 	inc	r0
   46B8 36                10766 	addc	a,@r0
   46B9 09                10767 	inc	r1
   46BA F7                10768 	mov	@r1,a
   46BB 08                10769 	inc	r0
   46BC 09                10770 	inc	r1
   46BD E6                10771 	mov	a,@r0
   46BE F7                10772 	mov	@r1,a
                          10773 ;	genPlus
   46BF A8 10             10774 	mov	r0,_bp
   46C1 08                10775 	inc	r0
   46C2 E5 10             10776 	mov	a,_bp
   46C4 24 1E             10777 	add	a,#0x1e
   46C6 F9                10778 	mov	r1,a
                          10779 ;     genPlusIncr
   46C7 74 0F             10780 	mov	a,#0x0F
   46C9 26                10781 	add	a,@r0
   46CA F7                10782 	mov	@r1,a
                          10783 ;	Peephole 181	changed mov to clr
   46CB E4                10784 	clr	a
   46CC 08                10785 	inc	r0
   46CD 36                10786 	addc	a,@r0
   46CE 09                10787 	inc	r1
   46CF F7                10788 	mov	@r1,a
   46D0 08                10789 	inc	r0
   46D1 09                10790 	inc	r1
   46D2 E6                10791 	mov	a,@r0
   46D3 F7                10792 	mov	@r1,a
                          10793 ;	genPlus
   46D4 E5 10             10794 	mov	a,_bp
   46D6 24 15             10795 	add	a,#0x15
   46D8 F8                10796 	mov	r0,a
   46D9 E5 10             10797 	mov	a,_bp
   46DB 24 22             10798 	add	a,#0x22
   46DD F9                10799 	mov	r1,a
                          10800 ;     genPlusIncr
   46DE 74 18             10801 	mov	a,#0x18
   46E0 26                10802 	add	a,@r0
   46E1 F7                10803 	mov	@r1,a
                          10804 ;	Peephole 181	changed mov to clr
   46E2 E4                10805 	clr	a
   46E3 08                10806 	inc	r0
   46E4 36                10807 	addc	a,@r0
   46E5 09                10808 	inc	r1
   46E6 F7                10809 	mov	@r1,a
   46E7 08                10810 	inc	r0
   46E8 09                10811 	inc	r1
   46E9 E6                10812 	mov	a,@r0
   46EA F7                10813 	mov	@r1,a
                          10814 ;	genPlus
   46EB E5 10             10815 	mov	a,_bp
   46ED 24 15             10816 	add	a,#0x15
   46EF F8                10817 	mov	r0,a
   46F0 E5 10             10818 	mov	a,_bp
   46F2 24 25             10819 	add	a,#0x25
   46F4 F9                10820 	mov	r1,a
                          10821 ;     genPlusIncr
   46F5 74 1D             10822 	mov	a,#0x1D
   46F7 26                10823 	add	a,@r0
   46F8 F7                10824 	mov	@r1,a
                          10825 ;	Peephole 181	changed mov to clr
   46F9 E4                10826 	clr	a
   46FA 08                10827 	inc	r0
   46FB 36                10828 	addc	a,@r0
   46FC 09                10829 	inc	r1
   46FD F7                10830 	mov	@r1,a
   46FE 08                10831 	inc	r0
   46FF 09                10832 	inc	r1
   4700 E6                10833 	mov	a,@r0
   4701 F7                10834 	mov	@r1,a
                          10835 ;	genPlus
   4702 A8 10             10836 	mov	r0,_bp
   4704 08                10837 	inc	r0
   4705 E5 10             10838 	mov	a,_bp
   4707 24 28             10839 	add	a,#0x28
   4709 F9                10840 	mov	r1,a
                          10841 ;     genPlusIncr
   470A 74 17             10842 	mov	a,#0x17
   470C 26                10843 	add	a,@r0
   470D F7                10844 	mov	@r1,a
                          10845 ;	Peephole 181	changed mov to clr
   470E E4                10846 	clr	a
   470F 08                10847 	inc	r0
   4710 36                10848 	addc	a,@r0
   4711 09                10849 	inc	r1
   4712 F7                10850 	mov	@r1,a
   4713 08                10851 	inc	r0
   4714 09                10852 	inc	r1
   4715 E6                10853 	mov	a,@r0
   4716 F7                10854 	mov	@r1,a
                          10855 ;	genPlus
   4717 E5 10             10856 	mov	a,_bp
   4719 24 15             10857 	add	a,#0x15
   471B F8                10858 	mov	r0,a
   471C E5 10             10859 	mov	a,_bp
   471E 24 2B             10860 	add	a,#0x2b
   4720 F9                10861 	mov	r1,a
                          10862 ;     genPlusIncr
   4721 74 20             10863 	mov	a,#0x20
   4723 26                10864 	add	a,@r0
   4724 F7                10865 	mov	@r1,a
                          10866 ;	Peephole 181	changed mov to clr
   4725 E4                10867 	clr	a
   4726 08                10868 	inc	r0
   4727 36                10869 	addc	a,@r0
   4728 09                10870 	inc	r1
   4729 F7                10871 	mov	@r1,a
   472A 08                10872 	inc	r0
   472B 09                10873 	inc	r1
   472C E6                10874 	mov	a,@r0
   472D F7                10875 	mov	@r1,a
   472E                   10876 00127$:
                          10877 ;	FatDrivers/tff.c:1068: for ( ;  btr;									/* Repeat until all data transferred */
                          10878 ;	genIfx
   472E E5 10             10879 	mov	a,_bp
   4730 24 F9             10880 	add	a,#0xfffffff9
   4732 F8                10881 	mov	r0,a
   4733 E6                10882 	mov	a,@r0
   4734 08                10883 	inc	r0
   4735 46                10884 	orl	a,@r0
                          10885 ;	genIfxJump
   4736 70 03             10886 	jnz	00156$
   4738 02 4C 03          10887 	ljmp	00130$
   473B                   10888 00156$:
                          10889 ;	FatDrivers/tff.c:1070: if ((fp->fptr % 512) == 0) {				/* On the sector boundary */
                          10890 ;	genPointerGet
                          10891 ;	genGenPointerGet
   473B E5 10             10892 	mov	a,_bp
   473D 24 1B             10893 	add	a,#0x1b
   473F F8                10894 	mov	r0,a
   4740 86 82             10895 	mov	dpl,@r0
   4742 08                10896 	inc	r0
   4743 86 83             10897 	mov	dph,@r0
   4745 08                10898 	inc	r0
   4746 86 F0             10899 	mov	b,@r0
   4748 12 62 42          10900 	lcall	__gptrget
   474B FB                10901 	mov	r3,a
   474C A3                10902 	inc	dptr
   474D 12 62 42          10903 	lcall	__gptrget
   4750 FC                10904 	mov	r4,a
   4751 A3                10905 	inc	dptr
   4752 12 62 42          10906 	lcall	__gptrget
   4755 FD                10907 	mov	r5,a
   4756 A3                10908 	inc	dptr
   4757 12 62 42          10909 	lcall	__gptrget
   475A FE                10910 	mov	r6,a
                          10911 ;	genAnd
   475B EB                10912 	mov	a,r3
   475C 70 04             10913 	jnz	00157$
   475E EC                10914 	mov	a,r4
                          10915 ;	Peephole 160.f	removed sjmp by inverse jump logic
   475F 30 E0 03          10916 	jnb	acc.0,00158$
   4762                   10917 00157$:
   4762 02 4A 59          10918 	ljmp	00122$
   4765                   10919 00158$:
                          10920 ;	FatDrivers/tff.c:1071: if (--fp->sect_clust) {					/* Decrement left sector counter */
                          10921 ;	genIpush
                          10922 ;	genPlus
   4765 A8 10             10923 	mov	r0,_bp
   4767 08                10924 	inc	r0
   4768 E5 10             10925 	mov	a,_bp
   476A 24 32             10926 	add	a,#0x32
   476C F9                10927 	mov	r1,a
                          10928 ;     genPlusIncr
   476D 74 03             10929 	mov	a,#0x03
   476F 26                10930 	add	a,@r0
   4770 F7                10931 	mov	@r1,a
                          10932 ;	Peephole 181	changed mov to clr
   4771 E4                10933 	clr	a
   4772 08                10934 	inc	r0
   4773 36                10935 	addc	a,@r0
   4774 09                10936 	inc	r1
   4775 F7                10937 	mov	@r1,a
   4776 08                10938 	inc	r0
   4777 09                10939 	inc	r1
   4778 E6                10940 	mov	a,@r0
   4779 F7                10941 	mov	@r1,a
                          10942 ;	genPointerGet
                          10943 ;	genGenPointerGet
   477A E5 10             10944 	mov	a,_bp
   477C 24 32             10945 	add	a,#0x32
   477E F8                10946 	mov	r0,a
   477F 86 82             10947 	mov	dpl,@r0
   4781 08                10948 	inc	r0
   4782 86 83             10949 	mov	dph,@r0
   4784 08                10950 	inc	r0
   4785 86 F0             10951 	mov	b,@r0
   4787 12 62 42          10952 	lcall	__gptrget
   478A FA                10953 	mov	r2,a
                          10954 ;	genMinus
                          10955 ;	genMinusDec
   478B 1A                10956 	dec	r2
                          10957 ;	genPointerSet
                          10958 ;	genGenPointerSet
   478C E5 10             10959 	mov	a,_bp
   478E 24 32             10960 	add	a,#0x32
   4790 F8                10961 	mov	r0,a
   4791 86 82             10962 	mov	dpl,@r0
   4793 08                10963 	inc	r0
   4794 86 83             10964 	mov	dph,@r0
   4796 08                10965 	inc	r0
   4797 86 F0             10966 	mov	b,@r0
                          10967 ;	genIfx
   4799 EA                10968 	mov	a,r2
   479A 12 5E A4          10969 	lcall	__gptrput
                          10970 ;	Peephole 190	removed redundant mov
                          10971 ;	genIpop
                          10972 ;	genIfxJump
                          10973 ;	Peephole 108.c	removed ljmp by inverse jump logic
   479D 60 38             10974 	jz	00113$
                          10975 ;	Peephole 300	removed redundant label 00159$
                          10976 ;	FatDrivers/tff.c:1072: sect = fp->curr_sect + 1;			/* Get current sector */
                          10977 ;	genIpush
                          10978 ;	genPointerGet
                          10979 ;	genGenPointerGet
   479F E5 10             10980 	mov	a,_bp
   47A1 24 28             10981 	add	a,#0x28
   47A3 F8                10982 	mov	r0,a
   47A4 86 82             10983 	mov	dpl,@r0
   47A6 08                10984 	inc	r0
   47A7 86 83             10985 	mov	dph,@r0
   47A9 08                10986 	inc	r0
   47AA 86 F0             10987 	mov	b,@r0
   47AC 12 62 42          10988 	lcall	__gptrget
   47AF FA                10989 	mov	r2,a
   47B0 A3                10990 	inc	dptr
   47B1 12 62 42          10991 	lcall	__gptrget
   47B4 FB                10992 	mov	r3,a
   47B5 A3                10993 	inc	dptr
   47B6 12 62 42          10994 	lcall	__gptrget
   47B9 FC                10995 	mov	r4,a
   47BA A3                10996 	inc	dptr
   47BB 12 62 42          10997 	lcall	__gptrget
   47BE FD                10998 	mov	r5,a
                          10999 ;	genPlus
   47BF E5 10             11000 	mov	a,_bp
   47C1 24 04             11001 	add	a,#0x04
   47C3 F8                11002 	mov	r0,a
                          11003 ;     genPlusIncr
   47C4 74 01             11004 	mov	a,#0x01
                          11005 ;	Peephole 236.a	used r2 instead of ar2
   47C6 2A                11006 	add	a,r2
   47C7 F6                11007 	mov	@r0,a
                          11008 ;	Peephole 181	changed mov to clr
   47C8 E4                11009 	clr	a
                          11010 ;	Peephole 236.b	used r3 instead of ar3
   47C9 3B                11011 	addc	a,r3
   47CA 08                11012 	inc	r0
   47CB F6                11013 	mov	@r0,a
                          11014 ;	Peephole 181	changed mov to clr
   47CC E4                11015 	clr	a
                          11016 ;	Peephole 236.b	used r4 instead of ar4
   47CD 3C                11017 	addc	a,r4
   47CE 08                11018 	inc	r0
   47CF F6                11019 	mov	@r0,a
                          11020 ;	Peephole 181	changed mov to clr
   47D0 E4                11021 	clr	a
                          11022 ;	Peephole 236.b	used r5 instead of ar5
   47D1 3D                11023 	addc	a,r5
   47D2 08                11024 	inc	r0
   47D3 F6                11025 	mov	@r0,a
                          11026 ;	genIpop
   47D4 02 49 08          11027 	ljmp	00114$
   47D7                   11028 00113$:
                          11029 ;	FatDrivers/tff.c:1074: clust = (fp->fptr == 0) ?
                          11030 ;	genNot
   47D7 EB                11031 	mov	a,r3
   47D8 4C                11032 	orl	a,r4
   47D9 4D                11033 	orl	a,r5
   47DA 4E                11034 	orl	a,r6
   47DB B4 01 00          11035 	cjne	a,#0x01,00160$
   47DE                   11036 00160$:
   47DE E4                11037 	clr	a
   47DF 33                11038 	rlc	a
                          11039 ;	genIfx
   47E0 FD                11040 	mov	r5,a
                          11041 ;	Peephole 105	removed redundant mov
                          11042 ;	genIfxJump
                          11043 ;	Peephole 108.c	removed ljmp by inverse jump logic
   47E1 60 22             11044 	jz	00134$
                          11045 ;	Peephole 300	removed redundant label 00161$
                          11046 ;	FatDrivers/tff.c:1075: fp->org_clust : get_cluster(fp->curr_clust);
                          11047 ;	genPointerGet
                          11048 ;	genGenPointerGet
   47E3 E5 10             11049 	mov	a,_bp
   47E5 24 1E             11050 	add	a,#0x1e
   47E7 F8                11051 	mov	r0,a
   47E8 86 82             11052 	mov	dpl,@r0
   47EA 08                11053 	inc	r0
   47EB 86 83             11054 	mov	dph,@r0
   47ED 08                11055 	inc	r0
   47EE 86 F0             11056 	mov	b,@r0
   47F0 12 62 42          11057 	lcall	__gptrget
   47F3 FD                11058 	mov	r5,a
   47F4 A3                11059 	inc	dptr
   47F5 12 62 42          11060 	lcall	__gptrget
   47F8 FE                11061 	mov	r6,a
   47F9 A3                11062 	inc	dptr
   47FA 12 62 42          11063 	lcall	__gptrget
   47FD FF                11064 	mov	r7,a
   47FE A3                11065 	inc	dptr
   47FF 12 62 42          11066 	lcall	__gptrget
   4802 FA                11067 	mov	r2,a
                          11068 ;	Peephole 112.b	changed ljmp to sjmp
   4803 80 30             11069 	sjmp	00135$
   4805                   11070 00134$:
                          11071 ;	genPointerGet
                          11072 ;	genGenPointerGet
   4805 E5 10             11073 	mov	a,_bp
   4807 24 35             11074 	add	a,#0x35
   4809 F8                11075 	mov	r0,a
   480A 86 82             11076 	mov	dpl,@r0
   480C 08                11077 	inc	r0
   480D 86 83             11078 	mov	dph,@r0
   480F 08                11079 	inc	r0
   4810 86 F0             11080 	mov	b,@r0
   4812 12 62 42          11081 	lcall	__gptrget
   4815 FA                11082 	mov	r2,a
   4816 A3                11083 	inc	dptr
   4817 12 62 42          11084 	lcall	__gptrget
   481A FB                11085 	mov	r3,a
   481B A3                11086 	inc	dptr
   481C 12 62 42          11087 	lcall	__gptrget
   481F FC                11088 	mov	r4,a
   4820 A3                11089 	inc	dptr
   4821 12 62 42          11090 	lcall	__gptrget
                          11091 ;	genCall
   4824 FD                11092 	mov	r5,a
   4825 8A 82             11093 	mov	dpl,r2
   4827 8B 83             11094 	mov	dph,r3
   4829 8C F0             11095 	mov	b,r4
                          11096 ;	Peephole 191	removed redundant mov
   482B 12 18 63          11097 	lcall	_get_cluster
   482E AD 82             11098 	mov	r5,dpl
   4830 AE 83             11099 	mov	r6,dph
   4832 AF F0             11100 	mov	r7,b
   4834 FA                11101 	mov	r2,a
   4835                   11102 00135$:
                          11103 ;	genAssign
   4835 E5 10             11104 	mov	a,_bp
   4837 24 0E             11105 	add	a,#0x0e
   4839 F8                11106 	mov	r0,a
   483A A6 05             11107 	mov	@r0,ar5
   483C 08                11108 	inc	r0
   483D A6 06             11109 	mov	@r0,ar6
   483F 08                11110 	inc	r0
   4840 A6 07             11111 	mov	@r0,ar7
   4842 08                11112 	inc	r0
   4843 A6 02             11113 	mov	@r0,ar2
                          11114 ;	FatDrivers/tff.c:1076: if (clust < 2 || clust >= fs->max_clust)
                          11115 ;	genCmpLt
   4845 E5 10             11116 	mov	a,_bp
   4847 24 0E             11117 	add	a,#0x0e
   4849 F8                11118 	mov	r0,a
                          11119 ;	genCmp
   484A C3                11120 	clr	c
   484B E6                11121 	mov	a,@r0
   484C 94 02             11122 	subb	a,#0x02
   484E 08                11123 	inc	r0
   484F E6                11124 	mov	a,@r0
   4850 94 00             11125 	subb	a,#0x00
   4852 08                11126 	inc	r0
   4853 E6                11127 	mov	a,@r0
   4854 94 00             11128 	subb	a,#0x00
   4856 08                11129 	inc	r0
   4857 E6                11130 	mov	a,@r0
   4858 94 00             11131 	subb	a,#0x00
                          11132 ;	genIfxJump
   485A 50 03             11133 	jnc	00162$
   485C 02 4C 08          11134 	ljmp	00131$
   485F                   11135 00162$:
                          11136 ;	genPointerGet
                          11137 ;	genGenPointerGet
   485F E5 10             11138 	mov	a,_bp
   4861 24 22             11139 	add	a,#0x22
   4863 F8                11140 	mov	r0,a
   4864 86 82             11141 	mov	dpl,@r0
   4866 08                11142 	inc	r0
   4867 86 83             11143 	mov	dph,@r0
   4869 08                11144 	inc	r0
   486A 86 F0             11145 	mov	b,@r0
   486C 12 62 42          11146 	lcall	__gptrget
   486F FE                11147 	mov	r6,a
   4870 A3                11148 	inc	dptr
   4871 12 62 42          11149 	lcall	__gptrget
   4874 FF                11150 	mov	r7,a
   4875 A3                11151 	inc	dptr
   4876 12 62 42          11152 	lcall	__gptrget
   4879 FA                11153 	mov	r2,a
   487A A3                11154 	inc	dptr
   487B 12 62 42          11155 	lcall	__gptrget
   487E FB                11156 	mov	r3,a
                          11157 ;	genCmpLt
   487F E5 10             11158 	mov	a,_bp
   4881 24 0E             11159 	add	a,#0x0e
   4883 F8                11160 	mov	r0,a
                          11161 ;	genCmp
   4884 C3                11162 	clr	c
   4885 E6                11163 	mov	a,@r0
   4886 9E                11164 	subb	a,r6
   4887 08                11165 	inc	r0
   4888 E6                11166 	mov	a,@r0
   4889 9F                11167 	subb	a,r7
   488A 08                11168 	inc	r0
   488B E6                11169 	mov	a,@r0
   488C 9A                11170 	subb	a,r2
   488D 08                11171 	inc	r0
   488E E6                11172 	mov	a,@r0
   488F 9B                11173 	subb	a,r3
                          11174 ;	genIfxJump
   4890 40 03             11175 	jc	00163$
   4892 02 4C 08          11176 	ljmp	00131$
   4895                   11177 00163$:
                          11178 ;	FatDrivers/tff.c:1078: fp->curr_clust = clust;				/* Current cluster */
                          11179 ;	genPointerSet
                          11180 ;	genGenPointerSet
   4895 E5 10             11181 	mov	a,_bp
   4897 24 35             11182 	add	a,#0x35
   4899 F8                11183 	mov	r0,a
   489A 86 82             11184 	mov	dpl,@r0
   489C 08                11185 	inc	r0
   489D 86 83             11186 	mov	dph,@r0
   489F 08                11187 	inc	r0
   48A0 86 F0             11188 	mov	b,@r0
   48A2 E5 10             11189 	mov	a,_bp
   48A4 24 0E             11190 	add	a,#0x0e
   48A6 F9                11191 	mov	r1,a
   48A7 E7                11192 	mov	a,@r1
   48A8 12 5E A4          11193 	lcall	__gptrput
   48AB A3                11194 	inc	dptr
   48AC 09                11195 	inc	r1
   48AD E7                11196 	mov	a,@r1
   48AE 12 5E A4          11197 	lcall	__gptrput
   48B1 A3                11198 	inc	dptr
   48B2 09                11199 	inc	r1
   48B3 E7                11200 	mov	a,@r1
   48B4 12 5E A4          11201 	lcall	__gptrput
   48B7 A3                11202 	inc	dptr
   48B8 09                11203 	inc	r1
   48B9 E7                11204 	mov	a,@r1
   48BA 12 5E A4          11205 	lcall	__gptrput
                          11206 ;	FatDrivers/tff.c:1079: sect = clust2sect(clust);			/* Get current sector */
                          11207 ;	genCall
   48BD E5 10             11208 	mov	a,_bp
   48BF 24 0E             11209 	add	a,#0x0e
   48C1 F8                11210 	mov	r0,a
   48C2 86 82             11211 	mov	dpl,@r0
   48C4 08                11212 	inc	r0
   48C5 86 83             11213 	mov	dph,@r0
   48C7 08                11214 	inc	r0
   48C8 86 F0             11215 	mov	b,@r0
   48CA 08                11216 	inc	r0
   48CB E6                11217 	mov	a,@r0
   48CC 12 1B 9F          11218 	lcall	_clust2sect
   48CF AA 82             11219 	mov	r2,dpl
   48D1 AB 83             11220 	mov	r3,dph
   48D3 AC F0             11221 	mov	r4,b
   48D5 FD                11222 	mov	r5,a
                          11223 ;	genAssign
   48D6 E5 10             11224 	mov	a,_bp
   48D8 24 04             11225 	add	a,#0x04
   48DA F8                11226 	mov	r0,a
   48DB A6 02             11227 	mov	@r0,ar2
   48DD 08                11228 	inc	r0
   48DE A6 03             11229 	mov	@r0,ar3
   48E0 08                11230 	inc	r0
   48E1 A6 04             11231 	mov	@r0,ar4
   48E3 08                11232 	inc	r0
   48E4 A6 05             11233 	mov	@r0,ar5
                          11234 ;	FatDrivers/tff.c:1080: fp->sect_clust = fs->sects_clust;	/* Re-initialize the left sector counter */
                          11235 ;	genPointerGet
                          11236 ;	genGenPointerGet
   48E6 E5 10             11237 	mov	a,_bp
   48E8 24 25             11238 	add	a,#0x25
   48EA F8                11239 	mov	r0,a
   48EB 86 82             11240 	mov	dpl,@r0
   48ED 08                11241 	inc	r0
   48EE 86 83             11242 	mov	dph,@r0
   48F0 08                11243 	inc	r0
   48F1 86 F0             11244 	mov	b,@r0
   48F3 12 62 42          11245 	lcall	__gptrget
   48F6 FA                11246 	mov	r2,a
                          11247 ;	genPointerSet
                          11248 ;	genGenPointerSet
   48F7 E5 10             11249 	mov	a,_bp
   48F9 24 32             11250 	add	a,#0x32
   48FB F8                11251 	mov	r0,a
   48FC 86 82             11252 	mov	dpl,@r0
   48FE 08                11253 	inc	r0
   48FF 86 83             11254 	mov	dph,@r0
   4901 08                11255 	inc	r0
   4902 86 F0             11256 	mov	b,@r0
   4904 EA                11257 	mov	a,r2
   4905 12 5E A4          11258 	lcall	__gptrput
   4908                   11259 00114$:
                          11260 ;	FatDrivers/tff.c:1082: fp->curr_sect = sect;					/* Update current sector */
                          11261 ;	genPointerSet
                          11262 ;	genGenPointerSet
   4908 E5 10             11263 	mov	a,_bp
   490A 24 28             11264 	add	a,#0x28
   490C F8                11265 	mov	r0,a
   490D 86 82             11266 	mov	dpl,@r0
   490F 08                11267 	inc	r0
   4910 86 83             11268 	mov	dph,@r0
   4912 08                11269 	inc	r0
   4913 86 F0             11270 	mov	b,@r0
   4915 E5 10             11271 	mov	a,_bp
   4917 24 04             11272 	add	a,#0x04
   4919 F9                11273 	mov	r1,a
   491A E7                11274 	mov	a,@r1
   491B 12 5E A4          11275 	lcall	__gptrput
   491E A3                11276 	inc	dptr
   491F 09                11277 	inc	r1
   4920 E7                11278 	mov	a,@r1
   4921 12 5E A4          11279 	lcall	__gptrput
   4924 A3                11280 	inc	dptr
   4925 09                11281 	inc	r1
   4926 E7                11282 	mov	a,@r1
   4927 12 5E A4          11283 	lcall	__gptrput
   492A A3                11284 	inc	dptr
   492B 09                11285 	inc	r1
   492C E7                11286 	mov	a,@r1
   492D 12 5E A4          11287 	lcall	__gptrput
                          11288 ;	FatDrivers/tff.c:1083: cc = btr / 512;							/* When left bytes >= 512, */
                          11289 ;	genRightShift
                          11290 ;	genRightShiftLiteral
   4930 E5 10             11291 	mov	a,_bp
   4932 24 F9             11292 	add	a,#0xfffffff9
                          11293 ;	genrshTwo
                          11294 ;	Peephole 185	changed order of increment (acc incremented also!)
   4934 04                11295 	inc	a
   4935 F8                11296 	mov	r0,a
   4936 E6                11297 	mov	a,@r0
   4937 C3                11298 	clr	c
   4938 13                11299 	rrc	a
                          11300 ;	FatDrivers/tff.c:1084: if (cc) {								/* Read maximum contiguous sectors directly */
                          11301 ;	genIfx
   4939 FE                11302 	mov	r6,a
   493A 7F 00             11303 	mov	r7,#0x00
                          11304 ;	Peephole 177.d	removed redundant move
   493C 4F                11305 	orl	a,r7
                          11306 ;	genIfxJump
   493D 70 03             11307 	jnz	00164$
   493F 02 4A 59          11308 	ljmp	00122$
   4942                   11309 00164$:
                          11310 ;	FatDrivers/tff.c:1085: if (cc > fp->sect_clust) cc = fp->sect_clust;
                          11311 ;	genPointerGet
                          11312 ;	genGenPointerGet
   4942 E5 10             11313 	mov	a,_bp
   4944 24 32             11314 	add	a,#0x32
   4946 F8                11315 	mov	r0,a
   4947 86 82             11316 	mov	dpl,@r0
   4949 08                11317 	inc	r0
   494A 86 83             11318 	mov	dph,@r0
   494C 08                11319 	inc	r0
   494D 86 F0             11320 	mov	b,@r0
   494F 12 62 42          11321 	lcall	__gptrget
   4952 FC                11322 	mov	r4,a
                          11323 ;	genCast
   4953 7D 00             11324 	mov	r5,#0x00
                          11325 ;	genCmpGt
                          11326 ;	genCmp
   4955 C3                11327 	clr	c
   4956 EC                11328 	mov	a,r4
   4957 9E                11329 	subb	a,r6
   4958 ED                11330 	mov	a,r5
   4959 9F                11331 	subb	a,r7
                          11332 ;	genIfxJump
                          11333 ;	Peephole 108.a	removed ljmp by inverse jump logic
   495A 50 15             11334 	jnc	00116$
                          11335 ;	Peephole 300	removed redundant label 00165$
                          11336 ;	genPointerGet
                          11337 ;	genGenPointerGet
   495C E5 10             11338 	mov	a,_bp
   495E 24 32             11339 	add	a,#0x32
   4960 F8                11340 	mov	r0,a
   4961 86 82             11341 	mov	dpl,@r0
   4963 08                11342 	inc	r0
   4964 86 83             11343 	mov	dph,@r0
   4966 08                11344 	inc	r0
   4967 86 F0             11345 	mov	b,@r0
   4969 12 62 42          11346 	lcall	__gptrget
   496C FC                11347 	mov	r4,a
                          11348 ;	genCast
   496D 8C 06             11349 	mov	ar6,r4
   496F 7F 00             11350 	mov	r7,#0x00
   4971                   11351 00116$:
                          11352 ;	FatDrivers/tff.c:1086: if(disk_txt_read(0, rbuff, sect, (BYTE)cc) != RES_OK)
                          11353 ;	genCast
   4971 8E 04             11354 	mov	ar4,r6
                          11355 ;	genIpush
   4973 C0 04             11356 	push	ar4
   4975 C0 06             11357 	push	ar6
   4977 C0 07             11358 	push	ar7
   4979 C0 04             11359 	push	ar4
                          11360 ;	genIpush
   497B E5 10             11361 	mov	a,_bp
   497D 24 04             11362 	add	a,#0x04
   497F F8                11363 	mov	r0,a
   4980 E6                11364 	mov	a,@r0
   4981 C0 E0             11365 	push	acc
   4983 08                11366 	inc	r0
   4984 E6                11367 	mov	a,@r0
   4985 C0 E0             11368 	push	acc
   4987 08                11369 	inc	r0
   4988 E6                11370 	mov	a,@r0
   4989 C0 E0             11371 	push	acc
   498B 08                11372 	inc	r0
   498C E6                11373 	mov	a,@r0
   498D C0 E0             11374 	push	acc
                          11375 ;	genIpush
   498F E5 10             11376 	mov	a,_bp
   4991 24 12             11377 	add	a,#0x12
   4993 F8                11378 	mov	r0,a
   4994 E6                11379 	mov	a,@r0
   4995 C0 E0             11380 	push	acc
   4997 08                11381 	inc	r0
   4998 E6                11382 	mov	a,@r0
   4999 C0 E0             11383 	push	acc
   499B 08                11384 	inc	r0
   499C E6                11385 	mov	a,@r0
   499D C0 E0             11386 	push	acc
                          11387 ;	genCall
   499F 75 82 00          11388 	mov	dpl,#0x00
   49A2 12 0E 13          11389 	lcall	_disk_txt_read
   49A5 AD 82             11390 	mov	r5,dpl
   49A7 E5 81             11391 	mov	a,sp
   49A9 24 F8             11392 	add	a,#0xf8
   49AB F5 81             11393 	mov	sp,a
   49AD D0 07             11394 	pop	ar7
   49AF D0 06             11395 	pop	ar6
   49B1 D0 04             11396 	pop	ar4
                          11397 ;	genCmpEq
                          11398 ;	gencjneshort
   49B3 BD 00 02          11399 	cjne	r5,#0x00,00166$
   49B6 80 03             11400 	sjmp	00167$
   49B8                   11401 00166$:
   49B8 02 4C 08          11402 	ljmp	00131$
   49BB                   11403 00167$:
                          11404 ;	FatDrivers/tff.c:1088: fp->sect_clust -= (BYTE)(cc - 1);
                          11405 ;	genPointerGet
                          11406 ;	genGenPointerGet
   49BB E5 10             11407 	mov	a,_bp
   49BD 24 32             11408 	add	a,#0x32
   49BF F8                11409 	mov	r0,a
   49C0 86 82             11410 	mov	dpl,@r0
   49C2 08                11411 	inc	r0
   49C3 86 83             11412 	mov	dph,@r0
   49C5 08                11413 	inc	r0
   49C6 86 F0             11414 	mov	b,@r0
   49C8 12 62 42          11415 	lcall	__gptrget
   49CB FD                11416 	mov	r5,a
                          11417 ;	genMinus
                          11418 ;	genMinusDec
   49CC EC                11419 	mov	a,r4
   49CD 14                11420 	dec	a
                          11421 ;	genMinus
   49CE D3                11422 	setb	c
                          11423 ;	Peephole 236.l	used r5 instead of ar5
   49CF 9D                11424 	subb	a,r5
   49D0 F4                11425 	cpl	a
   49D1 FD                11426 	mov	r5,a
                          11427 ;	genPointerSet
                          11428 ;	genGenPointerSet
   49D2 E5 10             11429 	mov	a,_bp
   49D4 24 32             11430 	add	a,#0x32
   49D6 F8                11431 	mov	r0,a
   49D7 86 82             11432 	mov	dpl,@r0
   49D9 08                11433 	inc	r0
   49DA 86 83             11434 	mov	dph,@r0
   49DC 08                11435 	inc	r0
   49DD 86 F0             11436 	mov	b,@r0
   49DF ED                11437 	mov	a,r5
   49E0 12 5E A4          11438 	lcall	__gptrput
                          11439 ;	FatDrivers/tff.c:1089: fp->curr_sect += cc - 1;
                          11440 ;	genPointerGet
                          11441 ;	genGenPointerGet
   49E3 E5 10             11442 	mov	a,_bp
   49E5 24 28             11443 	add	a,#0x28
   49E7 F8                11444 	mov	r0,a
   49E8 86 82             11445 	mov	dpl,@r0
   49EA 08                11446 	inc	r0
   49EB 86 83             11447 	mov	dph,@r0
   49ED 08                11448 	inc	r0
   49EE 86 F0             11449 	mov	b,@r0
   49F0 E5 10             11450 	mov	a,_bp
   49F2 24 2E             11451 	add	a,#0x2e
   49F4 F9                11452 	mov	r1,a
   49F5 12 62 42          11453 	lcall	__gptrget
   49F8 F7                11454 	mov	@r1,a
   49F9 A3                11455 	inc	dptr
   49FA 12 62 42          11456 	lcall	__gptrget
   49FD 09                11457 	inc	r1
   49FE F7                11458 	mov	@r1,a
   49FF A3                11459 	inc	dptr
   4A00 12 62 42          11460 	lcall	__gptrget
   4A03 09                11461 	inc	r1
   4A04 F7                11462 	mov	@r1,a
   4A05 A3                11463 	inc	dptr
   4A06 12 62 42          11464 	lcall	__gptrget
   4A09 09                11465 	inc	r1
   4A0A F7                11466 	mov	@r1,a
                          11467 ;	genMinus
                          11468 ;	genMinusDec
   4A0B EE                11469 	mov	a,r6
   4A0C 24 FF             11470 	add	a,#0xff
   4A0E FA                11471 	mov	r2,a
   4A0F EF                11472 	mov	a,r7
   4A10 34 FF             11473 	addc	a,#0xff
   4A12 FB                11474 	mov	r3,a
                          11475 ;	genCast
                          11476 ;	genPlus
                          11477 ;	Peephole 3.c	changed mov to clr
   4A13 E4                11478 	clr	a
   4A14 FC                11479 	mov	r4,a
   4A15 FD                11480 	mov	r5,a
   4A16 E5 10             11481 	mov	a,_bp
   4A18 24 2E             11482 	add	a,#0x2e
   4A1A F8                11483 	mov	r0,a
                          11484 ;	Peephole 236.g	used r2 instead of ar2
   4A1B EA                11485 	mov	a,r2
   4A1C 26                11486 	add	a,@r0
   4A1D FA                11487 	mov	r2,a
                          11488 ;	Peephole 236.g	used r3 instead of ar3
   4A1E EB                11489 	mov	a,r3
   4A1F 08                11490 	inc	r0
   4A20 36                11491 	addc	a,@r0
   4A21 FB                11492 	mov	r3,a
                          11493 ;	Peephole 236.g	used r4 instead of ar4
   4A22 EC                11494 	mov	a,r4
   4A23 08                11495 	inc	r0
   4A24 36                11496 	addc	a,@r0
   4A25 FC                11497 	mov	r4,a
                          11498 ;	Peephole 236.g	used r5 instead of ar5
   4A26 ED                11499 	mov	a,r5
   4A27 08                11500 	inc	r0
   4A28 36                11501 	addc	a,@r0
   4A29 FD                11502 	mov	r5,a
                          11503 ;	genPointerSet
                          11504 ;	genGenPointerSet
   4A2A E5 10             11505 	mov	a,_bp
   4A2C 24 28             11506 	add	a,#0x28
   4A2E F8                11507 	mov	r0,a
   4A2F 86 82             11508 	mov	dpl,@r0
   4A31 08                11509 	inc	r0
   4A32 86 83             11510 	mov	dph,@r0
   4A34 08                11511 	inc	r0
   4A35 86 F0             11512 	mov	b,@r0
   4A37 EA                11513 	mov	a,r2
   4A38 12 5E A4          11514 	lcall	__gptrput
   4A3B A3                11515 	inc	dptr
   4A3C EB                11516 	mov	a,r3
   4A3D 12 5E A4          11517 	lcall	__gptrput
   4A40 A3                11518 	inc	dptr
   4A41 EC                11519 	mov	a,r4
   4A42 12 5E A4          11520 	lcall	__gptrput
   4A45 A3                11521 	inc	dptr
   4A46 ED                11522 	mov	a,r5
   4A47 12 5E A4          11523 	lcall	__gptrput
                          11524 ;	FatDrivers/tff.c:1090: rcnt = cc * 512;
                          11525 ;	genLeftShift
                          11526 ;	genLeftShiftLiteral
   4A4A E5 10             11527 	mov	a,_bp
   4A4C 24 0C             11528 	add	a,#0x0c
   4A4E F8                11529 	mov	r0,a
                          11530 ;	genlshTwo
   4A4F EE                11531 	mov	a,r6
                          11532 ;	Peephole 254	optimized left shift
   4A50 2E                11533 	add	a,r6
   4A51 08                11534 	inc	r0
   4A52 F6                11535 	mov	@r0,a
   4A53 18                11536 	dec	r0
   4A54 76 00             11537 	mov	@r0,#0x00
                          11538 ;	FatDrivers/tff.c:1091: continue;
   4A56 02 4B 3A          11539 	ljmp	00129$
   4A59                   11540 00122$:
                          11541 ;	FatDrivers/tff.c:1094: if (!move_window(fp->curr_sect)) goto fr_error;	/* Move sector window */
                          11542 ;	genPointerGet
                          11543 ;	genGenPointerGet
   4A59 E5 10             11544 	mov	a,_bp
   4A5B 24 28             11545 	add	a,#0x28
   4A5D F8                11546 	mov	r0,a
   4A5E 86 82             11547 	mov	dpl,@r0
   4A60 08                11548 	inc	r0
   4A61 86 83             11549 	mov	dph,@r0
   4A63 08                11550 	inc	r0
   4A64 86 F0             11551 	mov	b,@r0
   4A66 12 62 42          11552 	lcall	__gptrget
   4A69 FC                11553 	mov	r4,a
   4A6A A3                11554 	inc	dptr
   4A6B 12 62 42          11555 	lcall	__gptrget
   4A6E FD                11556 	mov	r5,a
   4A6F A3                11557 	inc	dptr
   4A70 12 62 42          11558 	lcall	__gptrget
   4A73 FE                11559 	mov	r6,a
   4A74 A3                11560 	inc	dptr
   4A75 12 62 42          11561 	lcall	__gptrget
                          11562 ;	genCall
   4A78 FF                11563 	mov	r7,a
   4A79 8C 82             11564 	mov	dpl,r4
   4A7B 8D 83             11565 	mov	dph,r5
   4A7D 8E F0             11566 	mov	b,r6
                          11567 ;	Peephole 191	removed redundant mov
   4A7F 12 17 79          11568 	lcall	_move_window
   4A82 E5 82             11569 	mov	a,dpl
                          11570 ;	genIfx
                          11571 ;	genIfxJump
   4A84 70 03             11572 	jnz	00168$
   4A86 02 4C 08          11573 	ljmp	00131$
   4A89                   11574 00168$:
                          11575 ;	FatDrivers/tff.c:1095: rcnt = 512 - (WORD)(fp->fptr % 512);			/* Copy fractional bytes from sector window */
                          11576 ;	genPointerGet
                          11577 ;	genGenPointerGet
   4A89 E5 10             11578 	mov	a,_bp
   4A8B 24 1B             11579 	add	a,#0x1b
   4A8D F8                11580 	mov	r0,a
   4A8E 86 82             11581 	mov	dpl,@r0
   4A90 08                11582 	inc	r0
   4A91 86 83             11583 	mov	dph,@r0
   4A93 08                11584 	inc	r0
   4A94 86 F0             11585 	mov	b,@r0
   4A96 12 62 42          11586 	lcall	__gptrget
   4A99 FC                11587 	mov	r4,a
   4A9A A3                11588 	inc	dptr
   4A9B 12 62 42          11589 	lcall	__gptrget
   4A9E FD                11590 	mov	r5,a
   4A9F A3                11591 	inc	dptr
   4AA0 12 62 42          11592 	lcall	__gptrget
   4AA3 FE                11593 	mov	r6,a
   4AA4 A3                11594 	inc	dptr
   4AA5 12 62 42          11595 	lcall	__gptrget
   4AA8 FF                11596 	mov	r7,a
                          11597 ;	genAnd
   4AA9 53 05 01          11598 	anl	ar5,#0x01
                          11599 ;	genCast
                          11600 ;	genMinus
                          11601 ;	Peephole 3.c	changed mov to clr
   4AAC E4                11602 	clr	a
   4AAD FE                11603 	mov	r6,a
   4AAE FF                11604 	mov	r7,a
   4AAF E5 10             11605 	mov	a,_bp
   4AB1 24 0C             11606 	add	a,#0x0c
   4AB3 F8                11607 	mov	r0,a
                          11608 ;	Peephole 181	changed mov to clr
   4AB4 E4                11609 	clr	a
   4AB5 C3                11610 	clr	c
                          11611 ;	Peephole 236.l	used r4 instead of ar4
   4AB6 9C                11612 	subb	a,r4
   4AB7 F6                11613 	mov	@r0,a
   4AB8 74 02             11614 	mov	a,#0x02
                          11615 ;	Peephole 236.l	used r5 instead of ar5
   4ABA 9D                11616 	subb	a,r5
   4ABB 08                11617 	inc	r0
   4ABC F6                11618 	mov	@r0,a
                          11619 ;	FatDrivers/tff.c:1096: if (rcnt > btr) rcnt = btr;
                          11620 ;	genCmpGt
   4ABD E5 10             11621 	mov	a,_bp
   4ABF 24 0C             11622 	add	a,#0x0c
   4AC1 F8                11623 	mov	r0,a
   4AC2 E5 10             11624 	mov	a,_bp
   4AC4 24 F9             11625 	add	a,#0xfffffff9
   4AC6 F9                11626 	mov	r1,a
                          11627 ;	genCmp
   4AC7 C3                11628 	clr	c
   4AC8 E7                11629 	mov	a,@r1
   4AC9 96                11630 	subb	a,@r0
   4ACA 09                11631 	inc	r1
   4ACB E7                11632 	mov	a,@r1
   4ACC 08                11633 	inc	r0
   4ACD 96                11634 	subb	a,@r0
                          11635 ;	genIfxJump
                          11636 ;	Peephole 108.a	removed ljmp by inverse jump logic
   4ACE 50 10             11637 	jnc	00126$
                          11638 ;	Peephole 300	removed redundant label 00169$
                          11639 ;	genAssign
   4AD0 E5 10             11640 	mov	a,_bp
   4AD2 24 F9             11641 	add	a,#0xfffffff9
   4AD4 F8                11642 	mov	r0,a
   4AD5 E5 10             11643 	mov	a,_bp
   4AD7 24 0C             11644 	add	a,#0x0c
   4AD9 F9                11645 	mov	r1,a
   4ADA E6                11646 	mov	a,@r0
   4ADB F7                11647 	mov	@r1,a
   4ADC 08                11648 	inc	r0
   4ADD 09                11649 	inc	r1
   4ADE E6                11650 	mov	a,@r0
   4ADF F7                11651 	mov	@r1,a
   4AE0                   11652 00126$:
                          11653 ;	FatDrivers/tff.c:1097: memcpy(rbuff, &fs->win[(WORD)fp->fptr % 512], rcnt);
                          11654 ;	genPointerGet
                          11655 ;	genGenPointerGet
   4AE0 E5 10             11656 	mov	a,_bp
   4AE2 24 1B             11657 	add	a,#0x1b
   4AE4 F8                11658 	mov	r0,a
   4AE5 86 82             11659 	mov	dpl,@r0
   4AE7 08                11660 	inc	r0
   4AE8 86 83             11661 	mov	dph,@r0
   4AEA 08                11662 	inc	r0
   4AEB 86 F0             11663 	mov	b,@r0
   4AED 12 62 42          11664 	lcall	__gptrget
   4AF0 FC                11665 	mov	r4,a
   4AF1 A3                11666 	inc	dptr
   4AF2 12 62 42          11667 	lcall	__gptrget
   4AF5 FD                11668 	mov	r5,a
   4AF6 A3                11669 	inc	dptr
   4AF7 12 62 42          11670 	lcall	__gptrget
   4AFA FE                11671 	mov	r6,a
   4AFB A3                11672 	inc	dptr
   4AFC 12 62 42          11673 	lcall	__gptrget
   4AFF FF                11674 	mov	r7,a
                          11675 ;	genCast
                          11676 ;	genAnd
   4B00 53 05 01          11677 	anl	ar5,#0x01
                          11678 ;	genPlus
   4B03 E5 10             11679 	mov	a,_bp
   4B05 24 2B             11680 	add	a,#0x2b
   4B07 F8                11681 	mov	r0,a
                          11682 ;	Peephole 236.g	used r4 instead of ar4
   4B08 EC                11683 	mov	a,r4
   4B09 26                11684 	add	a,@r0
   4B0A FC                11685 	mov	r4,a
                          11686 ;	Peephole 236.g	used r5 instead of ar5
   4B0B ED                11687 	mov	a,r5
   4B0C 08                11688 	inc	r0
   4B0D 36                11689 	addc	a,@r0
   4B0E FD                11690 	mov	r5,a
   4B0F 08                11691 	inc	r0
   4B10 86 06             11692 	mov	ar6,@r0
                          11693 ;	genIpush
   4B12 E5 10             11694 	mov	a,_bp
   4B14 24 0C             11695 	add	a,#0x0c
   4B16 F8                11696 	mov	r0,a
   4B17 E6                11697 	mov	a,@r0
   4B18 C0 E0             11698 	push	acc
   4B1A 08                11699 	inc	r0
   4B1B E6                11700 	mov	a,@r0
   4B1C C0 E0             11701 	push	acc
                          11702 ;	genIpush
   4B1E C0 04             11703 	push	ar4
   4B20 C0 05             11704 	push	ar5
   4B22 C0 06             11705 	push	ar6
                          11706 ;	genCall
   4B24 E5 10             11707 	mov	a,_bp
   4B26 24 12             11708 	add	a,#0x12
   4B28 F8                11709 	mov	r0,a
   4B29 86 82             11710 	mov	dpl,@r0
   4B2B 08                11711 	inc	r0
   4B2C 86 83             11712 	mov	dph,@r0
   4B2E 08                11713 	inc	r0
   4B2F 86 F0             11714 	mov	b,@r0
   4B31 12 61 7C          11715 	lcall	_memcpy
   4B34 E5 81             11716 	mov	a,sp
   4B36 24 FB             11717 	add	a,#0xfb
   4B38 F5 81             11718 	mov	sp,a
   4B3A                   11719 00129$:
                          11720 ;	FatDrivers/tff.c:1069: rbuff += rcnt, fp->fptr += rcnt, *br += rcnt, btr -= rcnt) {
                          11721 ;	genPlus
   4B3A E5 10             11722 	mov	a,_bp
   4B3C 24 12             11723 	add	a,#0x12
   4B3E F8                11724 	mov	r0,a
   4B3F E5 10             11725 	mov	a,_bp
   4B41 24 0C             11726 	add	a,#0x0c
   4B43 F9                11727 	mov	r1,a
   4B44 E7                11728 	mov	a,@r1
   4B45 26                11729 	add	a,@r0
   4B46 F6                11730 	mov	@r0,a
   4B47 09                11731 	inc	r1
   4B48 E7                11732 	mov	a,@r1
   4B49 08                11733 	inc	r0
   4B4A 36                11734 	addc	a,@r0
   4B4B F6                11735 	mov	@r0,a
                          11736 ;	genPointerGet
                          11737 ;	genGenPointerGet
   4B4C E5 10             11738 	mov	a,_bp
   4B4E 24 1B             11739 	add	a,#0x1b
   4B50 F8                11740 	mov	r0,a
   4B51 86 82             11741 	mov	dpl,@r0
   4B53 08                11742 	inc	r0
   4B54 86 83             11743 	mov	dph,@r0
   4B56 08                11744 	inc	r0
   4B57 86 F0             11745 	mov	b,@r0
   4B59 E5 10             11746 	mov	a,_bp
   4B5B 24 2E             11747 	add	a,#0x2e
   4B5D F9                11748 	mov	r1,a
   4B5E 12 62 42          11749 	lcall	__gptrget
   4B61 F7                11750 	mov	@r1,a
   4B62 A3                11751 	inc	dptr
   4B63 12 62 42          11752 	lcall	__gptrget
   4B66 09                11753 	inc	r1
   4B67 F7                11754 	mov	@r1,a
   4B68 A3                11755 	inc	dptr
   4B69 12 62 42          11756 	lcall	__gptrget
   4B6C 09                11757 	inc	r1
   4B6D F7                11758 	mov	@r1,a
   4B6E A3                11759 	inc	dptr
   4B6F 12 62 42          11760 	lcall	__gptrget
   4B72 09                11761 	inc	r1
   4B73 F7                11762 	mov	@r1,a
                          11763 ;	genCast
   4B74 E5 10             11764 	mov	a,_bp
   4B76 24 0C             11765 	add	a,#0x0c
   4B78 F8                11766 	mov	r0,a
   4B79 86 02             11767 	mov	ar2,@r0
   4B7B 08                11768 	inc	r0
   4B7C 86 03             11769 	mov	ar3,@r0
                          11770 ;	genPlus
                          11771 ;	Peephole 3.c	changed mov to clr
   4B7E E4                11772 	clr	a
   4B7F FC                11773 	mov	r4,a
   4B80 FD                11774 	mov	r5,a
   4B81 E5 10             11775 	mov	a,_bp
   4B83 24 2E             11776 	add	a,#0x2e
   4B85 F8                11777 	mov	r0,a
                          11778 ;	Peephole 236.g	used r2 instead of ar2
   4B86 EA                11779 	mov	a,r2
   4B87 26                11780 	add	a,@r0
   4B88 FA                11781 	mov	r2,a
                          11782 ;	Peephole 236.g	used r3 instead of ar3
   4B89 EB                11783 	mov	a,r3
   4B8A 08                11784 	inc	r0
   4B8B 36                11785 	addc	a,@r0
   4B8C FB                11786 	mov	r3,a
                          11787 ;	Peephole 236.g	used r4 instead of ar4
   4B8D EC                11788 	mov	a,r4
   4B8E 08                11789 	inc	r0
   4B8F 36                11790 	addc	a,@r0
   4B90 FC                11791 	mov	r4,a
                          11792 ;	Peephole 236.g	used r5 instead of ar5
   4B91 ED                11793 	mov	a,r5
   4B92 08                11794 	inc	r0
   4B93 36                11795 	addc	a,@r0
   4B94 FD                11796 	mov	r5,a
                          11797 ;	genPointerSet
                          11798 ;	genGenPointerSet
   4B95 E5 10             11799 	mov	a,_bp
   4B97 24 1B             11800 	add	a,#0x1b
   4B99 F8                11801 	mov	r0,a
   4B9A 86 82             11802 	mov	dpl,@r0
   4B9C 08                11803 	inc	r0
   4B9D 86 83             11804 	mov	dph,@r0
   4B9F 08                11805 	inc	r0
   4BA0 86 F0             11806 	mov	b,@r0
   4BA2 EA                11807 	mov	a,r2
   4BA3 12 5E A4          11808 	lcall	__gptrput
   4BA6 A3                11809 	inc	dptr
   4BA7 EB                11810 	mov	a,r3
   4BA8 12 5E A4          11811 	lcall	__gptrput
   4BAB A3                11812 	inc	dptr
   4BAC EC                11813 	mov	a,r4
   4BAD 12 5E A4          11814 	lcall	__gptrput
   4BB0 A3                11815 	inc	dptr
   4BB1 ED                11816 	mov	a,r5
   4BB2 12 5E A4          11817 	lcall	__gptrput
                          11818 ;	genPointerGet
                          11819 ;	genGenPointerGet
   4BB5 E5 10             11820 	mov	a,_bp
   4BB7 24 18             11821 	add	a,#0x18
   4BB9 F8                11822 	mov	r0,a
   4BBA 86 82             11823 	mov	dpl,@r0
   4BBC 08                11824 	inc	r0
   4BBD 86 83             11825 	mov	dph,@r0
   4BBF 08                11826 	inc	r0
   4BC0 86 F0             11827 	mov	b,@r0
   4BC2 12 62 42          11828 	lcall	__gptrget
   4BC5 FA                11829 	mov	r2,a
   4BC6 A3                11830 	inc	dptr
   4BC7 12 62 42          11831 	lcall	__gptrget
   4BCA FB                11832 	mov	r3,a
                          11833 ;	genPlus
   4BCB E5 10             11834 	mov	a,_bp
   4BCD 24 0C             11835 	add	a,#0x0c
   4BCF F8                11836 	mov	r0,a
   4BD0 E6                11837 	mov	a,@r0
                          11838 ;	Peephole 236.a	used r2 instead of ar2
   4BD1 2A                11839 	add	a,r2
   4BD2 FA                11840 	mov	r2,a
   4BD3 08                11841 	inc	r0
   4BD4 E6                11842 	mov	a,@r0
                          11843 ;	Peephole 236.b	used r3 instead of ar3
   4BD5 3B                11844 	addc	a,r3
   4BD6 FB                11845 	mov	r3,a
                          11846 ;	genPointerSet
                          11847 ;	genGenPointerSet
   4BD7 E5 10             11848 	mov	a,_bp
   4BD9 24 18             11849 	add	a,#0x18
   4BDB F8                11850 	mov	r0,a
   4BDC 86 82             11851 	mov	dpl,@r0
   4BDE 08                11852 	inc	r0
   4BDF 86 83             11853 	mov	dph,@r0
   4BE1 08                11854 	inc	r0
   4BE2 86 F0             11855 	mov	b,@r0
   4BE4 EA                11856 	mov	a,r2
   4BE5 12 5E A4          11857 	lcall	__gptrput
   4BE8 A3                11858 	inc	dptr
   4BE9 EB                11859 	mov	a,r3
   4BEA 12 5E A4          11860 	lcall	__gptrput
                          11861 ;	genMinus
   4BED E5 10             11862 	mov	a,_bp
   4BEF 24 F9             11863 	add	a,#0xfffffff9
   4BF1 F8                11864 	mov	r0,a
   4BF2 E5 10             11865 	mov	a,_bp
   4BF4 24 0C             11866 	add	a,#0x0c
   4BF6 F9                11867 	mov	r1,a
   4BF7 E6                11868 	mov	a,@r0
   4BF8 C3                11869 	clr	c
   4BF9 97                11870 	subb	a,@r1
   4BFA F6                11871 	mov	@r0,a
   4BFB 08                11872 	inc	r0
   4BFC E6                11873 	mov	a,@r0
   4BFD 09                11874 	inc	r1
   4BFE 97                11875 	subb	a,@r1
   4BFF F6                11876 	mov	@r0,a
   4C00 02 47 2E          11877 	ljmp	00127$
   4C03                   11878 00130$:
                          11879 ;	FatDrivers/tff.c:1100: return FR_OK;
                          11880 ;	genRet
   4C03 75 82 00          11881 	mov	dpl,#0x00
                          11882 ;	FatDrivers/tff.c:1102: fr_error:	/* Abort this function due to an unrecoverable error */
                          11883 ;	Peephole 112.b	changed ljmp to sjmp
   4C06 80 28             11884 	sjmp	00132$
   4C08                   11885 00131$:
                          11886 ;	FatDrivers/tff.c:1103: fp->flag |= FA__ERROR;
                          11887 ;	genPointerGet
                          11888 ;	genGenPointerGet
   4C08 E5 10             11889 	mov	a,_bp
   4C0A 24 38             11890 	add	a,#0x38
   4C0C F8                11891 	mov	r0,a
   4C0D 86 82             11892 	mov	dpl,@r0
   4C0F 08                11893 	inc	r0
   4C10 86 83             11894 	mov	dph,@r0
   4C12 08                11895 	inc	r0
   4C13 86 F0             11896 	mov	b,@r0
   4C15 12 62 42          11897 	lcall	__gptrget
   4C18 FA                11898 	mov	r2,a
                          11899 ;	genOr
   4C19 43 02 80          11900 	orl	ar2,#0x80
                          11901 ;	genPointerSet
                          11902 ;	genGenPointerSet
   4C1C E5 10             11903 	mov	a,_bp
   4C1E 24 38             11904 	add	a,#0x38
   4C20 F8                11905 	mov	r0,a
   4C21 86 82             11906 	mov	dpl,@r0
   4C23 08                11907 	inc	r0
   4C24 86 83             11908 	mov	dph,@r0
   4C26 08                11909 	inc	r0
   4C27 86 F0             11910 	mov	b,@r0
   4C29 EA                11911 	mov	a,r2
   4C2A 12 5E A4          11912 	lcall	__gptrput
                          11913 ;	FatDrivers/tff.c:1104: return FR_RW_ERROR;
                          11914 ;	genRet
   4C2D 75 82 08          11915 	mov	dpl,#0x08
   4C30                   11916 00132$:
   4C30 85 10 81          11917 	mov	sp,_bp
   4C33 D0 10             11918 	pop	_bp
   4C35 22                11919 	ret
                          11920 ;------------------------------------------------------------
                          11921 ;Allocation info for local variables in function 'f_close'
                          11922 ;------------------------------------------------------------
                          11923 ;fp                        Allocated to registers r2 r3 r4 
                          11924 ;res                       Allocated to registers r5 
                          11925 ;sloc0                     Allocated to stack - offset 1
                          11926 ;------------------------------------------------------------
                          11927 ;	FatDrivers/tff.c:1237: FRESULT f_close (
                          11928 ;	-----------------------------------------
                          11929 ;	 function f_close
                          11930 ;	-----------------------------------------
   4C36                   11931 _f_close:
   4C36 C0 10             11932 	push	_bp
   4C38 85 81 10          11933 	mov	_bp,sp
   4C3B 05 81             11934 	inc	sp
   4C3D 05 81             11935 	inc	sp
                          11936 ;	genReceive
                          11937 ;	FatDrivers/tff.c:1247: res = validate(fp->fs, fp->id);
                          11938 ;	genPointerGet
                          11939 ;	genGenPointerGet
   4C3F AA 82             11940 	mov	r2,dpl
   4C41 AB 83             11941 	mov	r3,dph
   4C43 AC F0             11942 	mov	r4,b
                          11943 ;	Peephole 238.d	removed 3 redundant moves
   4C45 A8 10             11944 	mov	r0,_bp
   4C47 08                11945 	inc	r0
   4C48 12 62 42          11946 	lcall	__gptrget
   4C4B F6                11947 	mov	@r0,a
   4C4C A3                11948 	inc	dptr
   4C4D 12 62 42          11949 	lcall	__gptrget
   4C50 08                11950 	inc	r0
   4C51 F6                11951 	mov	@r0,a
                          11952 ;	genPlus
                          11953 ;     genPlusIncr
   4C52 74 04             11954 	mov	a,#0x04
                          11955 ;	Peephole 236.a	used r2 instead of ar2
   4C54 2A                11956 	add	a,r2
   4C55 FA                11957 	mov	r2,a
                          11958 ;	Peephole 181	changed mov to clr
   4C56 E4                11959 	clr	a
                          11960 ;	Peephole 236.b	used r3 instead of ar3
   4C57 3B                11961 	addc	a,r3
   4C58 FB                11962 	mov	r3,a
                          11963 ;	genPointerGet
                          11964 ;	genGenPointerGet
   4C59 8A 82             11965 	mov	dpl,r2
   4C5B 8B 83             11966 	mov	dph,r3
   4C5D 8C F0             11967 	mov	b,r4
   4C5F 12 62 42          11968 	lcall	__gptrget
   4C62 FF                11969 	mov	r7,a
   4C63 A3                11970 	inc	dptr
   4C64 12 62 42          11971 	lcall	__gptrget
   4C67 FD                11972 	mov	r5,a
   4C68 A3                11973 	inc	dptr
   4C69 12 62 42          11974 	lcall	__gptrget
   4C6C FE                11975 	mov	r6,a
                          11976 ;	genIpush
   4C6D C0 02             11977 	push	ar2
   4C6F C0 03             11978 	push	ar3
   4C71 C0 04             11979 	push	ar4
   4C73 A8 10             11980 	mov	r0,_bp
   4C75 08                11981 	inc	r0
   4C76 E6                11982 	mov	a,@r0
   4C77 C0 E0             11983 	push	acc
   4C79 08                11984 	inc	r0
   4C7A E6                11985 	mov	a,@r0
   4C7B C0 E0             11986 	push	acc
                          11987 ;	genCall
   4C7D 8F 82             11988 	mov	dpl,r7
   4C7F 8D 83             11989 	mov	dph,r5
   4C81 8E F0             11990 	mov	b,r6
   4C83 12 32 FD          11991 	lcall	_validate
   4C86 AD 82             11992 	mov	r5,dpl
   4C88 15 81             11993 	dec	sp
   4C8A 15 81             11994 	dec	sp
   4C8C D0 04             11995 	pop	ar4
   4C8E D0 03             11996 	pop	ar3
   4C90 D0 02             11997 	pop	ar2
                          11998 ;	genAssign
                          11999 ;	FatDrivers/tff.c:1249: if (res == FR_OK)
                          12000 ;	genIfx
   4C92 ED                12001 	mov	a,r5
                          12002 ;	genIfxJump
                          12003 ;	Peephole 108.b	removed ljmp by inverse jump logic
   4C93 70 14             12004 	jnz	00102$
                          12005 ;	Peephole 300	removed redundant label 00106$
                          12006 ;	FatDrivers/tff.c:1250: fp->fs = NULL;
                          12007 ;	genPointerSet
                          12008 ;	genGenPointerSet
   4C95 8A 82             12009 	mov	dpl,r2
   4C97 8B 83             12010 	mov	dph,r3
   4C99 8C F0             12011 	mov	b,r4
                          12012 ;	Peephole 181	changed mov to clr
   4C9B E4                12013 	clr	a
   4C9C 12 5E A4          12014 	lcall	__gptrput
   4C9F A3                12015 	inc	dptr
                          12016 ;	Peephole 181	changed mov to clr
   4CA0 E4                12017 	clr	a
   4CA1 12 5E A4          12018 	lcall	__gptrput
   4CA4 A3                12019 	inc	dptr
                          12020 ;	Peephole 181	changed mov to clr
   4CA5 E4                12021 	clr	a
   4CA6 12 5E A4          12022 	lcall	__gptrput
   4CA9                   12023 00102$:
                          12024 ;	FatDrivers/tff.c:1252: return res;
                          12025 ;	genRet
   4CA9 8D 82             12026 	mov	dpl,r5
                          12027 ;	Peephole 300	removed redundant label 00103$
   4CAB 85 10 81          12028 	mov	sp,_bp
   4CAE D0 10             12029 	pop	_bp
   4CB0 22                12030 	ret
                          12031 ;------------------------------------------------------------
                          12032 ;Allocation info for local variables in function 'f_lseek'
                          12033 ;------------------------------------------------------------
                          12034 ;ofs                       Allocated to stack - offset -6
                          12035 ;fp                        Allocated to stack - offset 1
                          12036 ;clust                     Allocated to stack - offset 4
                          12037 ;csize                     Allocated to stack - offset 8
                          12038 ;csect                     Allocated to registers r6 
                          12039 ;res                       Allocated to registers r5 
                          12040 ;fs                        Allocated to stack - offset 12
                          12041 ;sloc0                     Allocated to stack - offset 15
                          12042 ;sloc1                     Allocated to stack - offset 19
                          12043 ;sloc2                     Allocated to stack - offset 22
                          12044 ;sloc3                     Allocated to stack - offset 25
                          12045 ;sloc4                     Allocated to stack - offset 28
                          12046 ;sloc5                     Allocated to stack - offset 31
                          12047 ;------------------------------------------------------------
                          12048 ;	FatDrivers/tff.c:1263: FRESULT f_lseek (
                          12049 ;	-----------------------------------------
                          12050 ;	 function f_lseek
                          12051 ;	-----------------------------------------
   4CB1                   12052 _f_lseek:
   4CB1 C0 10             12053 	push	_bp
   4CB3 85 81 10          12054 	mov	_bp,sp
                          12055 ;     genReceive
   4CB6 C0 82             12056 	push	dpl
   4CB8 C0 83             12057 	push	dph
   4CBA C0 F0             12058 	push	b
   4CBC E5 81             12059 	mov	a,sp
   4CBE 24 22             12060 	add	a,#0x22
   4CC0 F5 81             12061 	mov	sp,a
                          12062 ;	FatDrivers/tff.c:1272: FATFS *fs = fp->fs;
                          12063 ;	genPlus
   4CC2 A8 10             12064 	mov	r0,_bp
   4CC4 08                12065 	inc	r0
                          12066 ;     genPlusIncr
   4CC5 74 04             12067 	mov	a,#0x04
   4CC7 26                12068 	add	a,@r0
   4CC8 FD                12069 	mov	r5,a
                          12070 ;	Peephole 181	changed mov to clr
   4CC9 E4                12071 	clr	a
   4CCA 08                12072 	inc	r0
   4CCB 36                12073 	addc	a,@r0
   4CCC FE                12074 	mov	r6,a
   4CCD 08                12075 	inc	r0
   4CCE 86 07             12076 	mov	ar7,@r0
                          12077 ;	genPointerGet
                          12078 ;	genGenPointerGet
   4CD0 8D 82             12079 	mov	dpl,r5
   4CD2 8E 83             12080 	mov	dph,r6
   4CD4 8F F0             12081 	mov	b,r7
   4CD6 12 62 42          12082 	lcall	__gptrget
   4CD9 FD                12083 	mov	r5,a
   4CDA A3                12084 	inc	dptr
   4CDB 12 62 42          12085 	lcall	__gptrget
   4CDE FE                12086 	mov	r6,a
   4CDF A3                12087 	inc	dptr
   4CE0 12 62 42          12088 	lcall	__gptrget
   4CE3 FF                12089 	mov	r7,a
                          12090 ;	genAssign
   4CE4 E5 10             12091 	mov	a,_bp
   4CE6 24 0C             12092 	add	a,#0x0c
   4CE8 F8                12093 	mov	r0,a
   4CE9 A6 05             12094 	mov	@r0,ar5
   4CEB 08                12095 	inc	r0
   4CEC A6 06             12096 	mov	@r0,ar6
   4CEE 08                12097 	inc	r0
   4CEF A6 07             12098 	mov	@r0,ar7
                          12099 ;	FatDrivers/tff.c:1275: res = validate(fs, fp->id);			/* Check validity of the object */
                          12100 ;	genPointerGet
                          12101 ;	genGenPointerGet
   4CF1 A8 10             12102 	mov	r0,_bp
   4CF3 08                12103 	inc	r0
   4CF4 86 82             12104 	mov	dpl,@r0
   4CF6 08                12105 	inc	r0
   4CF7 86 83             12106 	mov	dph,@r0
   4CF9 08                12107 	inc	r0
   4CFA 86 F0             12108 	mov	b,@r0
   4CFC 12 62 42          12109 	lcall	__gptrget
   4CFF FD                12110 	mov	r5,a
   4D00 A3                12111 	inc	dptr
   4D01 12 62 42          12112 	lcall	__gptrget
   4D04 FE                12113 	mov	r6,a
                          12114 ;	genIpush
   4D05 C0 05             12115 	push	ar5
   4D07 C0 06             12116 	push	ar6
                          12117 ;	genCall
   4D09 E5 10             12118 	mov	a,_bp
   4D0B 24 0C             12119 	add	a,#0x0c
   4D0D F8                12120 	mov	r0,a
   4D0E 86 82             12121 	mov	dpl,@r0
   4D10 08                12122 	inc	r0
   4D11 86 83             12123 	mov	dph,@r0
   4D13 08                12124 	inc	r0
   4D14 86 F0             12125 	mov	b,@r0
   4D16 12 32 FD          12126 	lcall	_validate
   4D19 AD 82             12127 	mov	r5,dpl
   4D1B 15 81             12128 	dec	sp
   4D1D 15 81             12129 	dec	sp
                          12130 ;	genAssign
                          12131 ;	FatDrivers/tff.c:1276: if (res != FR_OK) return res;
                          12132 ;	genCmpEq
                          12133 ;	gencjneshort
   4D1F BD 00 02          12134 	cjne	r5,#0x00,00134$
                          12135 ;	Peephole 112.b	changed ljmp to sjmp
   4D22 80 05             12136 	sjmp	00102$
   4D24                   12137 00134$:
                          12138 ;	genRet
   4D24 8D 82             12139 	mov	dpl,r5
   4D26 02 51 51          12140 	ljmp	00122$
   4D29                   12141 00102$:
                          12142 ;	FatDrivers/tff.c:1278: if (fp->flag & FA__ERROR) return FR_RW_ERROR;
                          12143 ;	genPlus
   4D29 A8 10             12144 	mov	r0,_bp
   4D2B 08                12145 	inc	r0
   4D2C E5 10             12146 	mov	a,_bp
   4D2E 24 19             12147 	add	a,#0x19
   4D30 F9                12148 	mov	r1,a
                          12149 ;     genPlusIncr
   4D31 74 02             12150 	mov	a,#0x02
   4D33 26                12151 	add	a,@r0
   4D34 F7                12152 	mov	@r1,a
                          12153 ;	Peephole 181	changed mov to clr
   4D35 E4                12154 	clr	a
   4D36 08                12155 	inc	r0
   4D37 36                12156 	addc	a,@r0
   4D38 09                12157 	inc	r1
   4D39 F7                12158 	mov	@r1,a
   4D3A 08                12159 	inc	r0
   4D3B 09                12160 	inc	r1
   4D3C E6                12161 	mov	a,@r0
   4D3D F7                12162 	mov	@r1,a
                          12163 ;	genIpush
                          12164 ;	genPointerGet
                          12165 ;	genGenPointerGet
   4D3E E5 10             12166 	mov	a,_bp
   4D40 24 19             12167 	add	a,#0x19
   4D42 F8                12168 	mov	r0,a
   4D43 86 82             12169 	mov	dpl,@r0
   4D45 08                12170 	inc	r0
   4D46 86 83             12171 	mov	dph,@r0
   4D48 08                12172 	inc	r0
   4D49 86 F0             12173 	mov	b,@r0
   4D4B 12 62 42          12174 	lcall	__gptrget
                          12175 ;	genAnd
   4D4E FA                12176 	mov	r2,a
                          12177 ;	Peephole 105	removed redundant mov
   4D4F 54 80             12178 	anl	a,#0x80
                          12179 ;	genIpop
                          12180 ;	genIfx
                          12181 ;	genIfxJump
                          12182 ;	Peephole 108.c	removed ljmp by inverse jump logic
   4D51 60 06             12183 	jz	00104$
                          12184 ;	Peephole 300	removed redundant label 00135$
                          12185 ;	genRet
   4D53 75 82 08          12186 	mov	dpl,#0x08
   4D56 02 51 51          12187 	ljmp	00122$
   4D59                   12188 00104$:
                          12189 ;	FatDrivers/tff.c:1282: if (ofs > fp->fsize)
                          12190 ;	genIpush
                          12191 ;	genPlus
   4D59 A8 10             12192 	mov	r0,_bp
   4D5B 08                12193 	inc	r0
                          12194 ;     genPlusIncr
   4D5C 74 0B             12195 	mov	a,#0x0B
   4D5E 26                12196 	add	a,@r0
   4D5F FD                12197 	mov	r5,a
                          12198 ;	Peephole 181	changed mov to clr
   4D60 E4                12199 	clr	a
   4D61 08                12200 	inc	r0
   4D62 36                12201 	addc	a,@r0
   4D63 FE                12202 	mov	r6,a
   4D64 08                12203 	inc	r0
   4D65 86 07             12204 	mov	ar7,@r0
                          12205 ;	genPointerGet
                          12206 ;	genGenPointerGet
   4D67 8D 82             12207 	mov	dpl,r5
   4D69 8E 83             12208 	mov	dph,r6
   4D6B 8F F0             12209 	mov	b,r7
   4D6D 12 62 42          12210 	lcall	__gptrget
   4D70 FA                12211 	mov	r2,a
   4D71 A3                12212 	inc	dptr
   4D72 12 62 42          12213 	lcall	__gptrget
   4D75 FB                12214 	mov	r3,a
   4D76 A3                12215 	inc	dptr
   4D77 12 62 42          12216 	lcall	__gptrget
   4D7A FC                12217 	mov	r4,a
   4D7B A3                12218 	inc	dptr
   4D7C 12 62 42          12219 	lcall	__gptrget
   4D7F FD                12220 	mov	r5,a
                          12221 ;	genCmpGt
   4D80 E5 10             12222 	mov	a,_bp
   4D82 24 FA             12223 	add	a,#0xfffffffa
   4D84 F8                12224 	mov	r0,a
                          12225 ;	genCmp
   4D85 C3                12226 	clr	c
   4D86 EA                12227 	mov	a,r2
   4D87 96                12228 	subb	a,@r0
   4D88 EB                12229 	mov	a,r3
   4D89 08                12230 	inc	r0
   4D8A 96                12231 	subb	a,@r0
   4D8B EC                12232 	mov	a,r4
   4D8C 08                12233 	inc	r0
   4D8D 96                12234 	subb	a,@r0
   4D8E ED                12235 	mov	a,r5
   4D8F 08                12236 	inc	r0
   4D90 96                12237 	subb	a,@r0
                          12238 ;	genIpop
                          12239 ;	genIfx
                          12240 ;	genIfxJump
                          12241 ;	Peephole 108.c	removed ljmp by inverse jump logic
                          12242 ;	Peephole 128	jump optimization
   4D91 50 10             12243 	jnc	00106$
                          12244 ;	Peephole 300	removed redundant label 00136$
                          12245 ;	FatDrivers/tff.c:1284: ofs = fp->fsize;
                          12246 ;	genAssign
   4D93 E5 10             12247 	mov	a,_bp
   4D95 24 FA             12248 	add	a,#0xfffffffa
   4D97 F8                12249 	mov	r0,a
   4D98 A6 02             12250 	mov	@r0,ar2
   4D9A 08                12251 	inc	r0
   4D9B A6 03             12252 	mov	@r0,ar3
   4D9D 08                12253 	inc	r0
   4D9E A6 04             12254 	mov	@r0,ar4
   4DA0 08                12255 	inc	r0
   4DA1 A6 05             12256 	mov	@r0,ar5
   4DA3                   12257 00106$:
                          12258 ;	FatDrivers/tff.c:1285: fp->fptr = 0; fp->sect_clust = 1;		/* Set file R/W pointer to top of the file */
                          12259 ;	genPlus
   4DA3 A8 10             12260 	mov	r0,_bp
   4DA5 08                12261 	inc	r0
   4DA6 E5 10             12262 	mov	a,_bp
   4DA8 24 0F             12263 	add	a,#0x0f
   4DAA F9                12264 	mov	r1,a
                          12265 ;     genPlusIncr
   4DAB 74 07             12266 	mov	a,#0x07
   4DAD 26                12267 	add	a,@r0
   4DAE F7                12268 	mov	@r1,a
                          12269 ;	Peephole 181	changed mov to clr
   4DAF E4                12270 	clr	a
   4DB0 08                12271 	inc	r0
   4DB1 36                12272 	addc	a,@r0
   4DB2 09                12273 	inc	r1
   4DB3 F7                12274 	mov	@r1,a
   4DB4 08                12275 	inc	r0
   4DB5 09                12276 	inc	r1
   4DB6 E6                12277 	mov	a,@r0
   4DB7 F7                12278 	mov	@r1,a
                          12279 ;	genPointerSet
                          12280 ;	genGenPointerSet
   4DB8 E5 10             12281 	mov	a,_bp
   4DBA 24 0F             12282 	add	a,#0x0f
   4DBC F8                12283 	mov	r0,a
   4DBD 86 82             12284 	mov	dpl,@r0
   4DBF 08                12285 	inc	r0
   4DC0 86 83             12286 	mov	dph,@r0
   4DC2 08                12287 	inc	r0
   4DC3 86 F0             12288 	mov	b,@r0
                          12289 ;	Peephole 181	changed mov to clr
   4DC5 E4                12290 	clr	a
   4DC6 12 5E A4          12291 	lcall	__gptrput
   4DC9 A3                12292 	inc	dptr
                          12293 ;	Peephole 181	changed mov to clr
   4DCA E4                12294 	clr	a
   4DCB 12 5E A4          12295 	lcall	__gptrput
   4DCE A3                12296 	inc	dptr
                          12297 ;	Peephole 181	changed mov to clr
   4DCF E4                12298 	clr	a
   4DD0 12 5E A4          12299 	lcall	__gptrput
   4DD3 A3                12300 	inc	dptr
                          12301 ;	Peephole 181	changed mov to clr
   4DD4 E4                12302 	clr	a
   4DD5 12 5E A4          12303 	lcall	__gptrput
                          12304 ;	genPlus
   4DD8 A8 10             12305 	mov	r0,_bp
   4DDA 08                12306 	inc	r0
   4DDB E5 10             12307 	mov	a,_bp
   4DDD 24 13             12308 	add	a,#0x13
   4DDF F9                12309 	mov	r1,a
                          12310 ;     genPlusIncr
   4DE0 74 03             12311 	mov	a,#0x03
   4DE2 26                12312 	add	a,@r0
   4DE3 F7                12313 	mov	@r1,a
                          12314 ;	Peephole 181	changed mov to clr
   4DE4 E4                12315 	clr	a
   4DE5 08                12316 	inc	r0
   4DE6 36                12317 	addc	a,@r0
   4DE7 09                12318 	inc	r1
   4DE8 F7                12319 	mov	@r1,a
   4DE9 08                12320 	inc	r0
   4DEA 09                12321 	inc	r1
   4DEB E6                12322 	mov	a,@r0
   4DEC F7                12323 	mov	@r1,a
                          12324 ;	genPointerSet
                          12325 ;	genGenPointerSet
   4DED E5 10             12326 	mov	a,_bp
   4DEF 24 13             12327 	add	a,#0x13
   4DF1 F8                12328 	mov	r0,a
   4DF2 86 82             12329 	mov	dpl,@r0
   4DF4 08                12330 	inc	r0
   4DF5 86 83             12331 	mov	dph,@r0
   4DF7 08                12332 	inc	r0
   4DF8 86 F0             12333 	mov	b,@r0
   4DFA 74 01             12334 	mov	a,#0x01
   4DFC 12 5E A4          12335 	lcall	__gptrput
                          12336 ;	FatDrivers/tff.c:1288: if (ofs) {
                          12337 ;	genIfx
   4DFF E5 10             12338 	mov	a,_bp
   4E01 24 FA             12339 	add	a,#0xfffffffa
   4E03 F8                12340 	mov	r0,a
   4E04 E6                12341 	mov	a,@r0
   4E05 08                12342 	inc	r0
   4E06 46                12343 	orl	a,@r0
   4E07 08                12344 	inc	r0
   4E08 46                12345 	orl	a,@r0
   4E09 08                12346 	inc	r0
   4E0A 46                12347 	orl	a,@r0
                          12348 ;	genIfxJump
   4E0B 70 03             12349 	jnz	00137$
   4E0D 02 51 24          12350 	ljmp	00120$
   4E10                   12351 00137$:
                          12352 ;	FatDrivers/tff.c:1289: clust = fp->org_clust;	/* Get start cluster */
                          12353 ;	genIpush
                          12354 ;	genPlus
   4E10 A8 10             12355 	mov	r0,_bp
   4E12 08                12356 	inc	r0
                          12357 ;     genPlusIncr
   4E13 74 0F             12358 	mov	a,#0x0F
   4E15 26                12359 	add	a,@r0
   4E16 FD                12360 	mov	r5,a
                          12361 ;	Peephole 181	changed mov to clr
   4E17 E4                12362 	clr	a
   4E18 08                12363 	inc	r0
   4E19 36                12364 	addc	a,@r0
   4E1A FE                12365 	mov	r6,a
   4E1B 08                12366 	inc	r0
   4E1C 86 07             12367 	mov	ar7,@r0
                          12368 ;	genPointerGet
                          12369 ;	genGenPointerGet
   4E1E 8D 82             12370 	mov	dpl,r5
   4E20 8E 83             12371 	mov	dph,r6
   4E22 8F F0             12372 	mov	b,r7
   4E24 12 62 42          12373 	lcall	__gptrget
   4E27 FA                12374 	mov	r2,a
   4E28 A3                12375 	inc	dptr
   4E29 12 62 42          12376 	lcall	__gptrget
   4E2C FB                12377 	mov	r3,a
   4E2D A3                12378 	inc	dptr
   4E2E 12 62 42          12379 	lcall	__gptrget
   4E31 FC                12380 	mov	r4,a
   4E32 A3                12381 	inc	dptr
   4E33 12 62 42          12382 	lcall	__gptrget
   4E36 FD                12383 	mov	r5,a
                          12384 ;	genAssign
   4E37 E5 10             12385 	mov	a,_bp
   4E39 24 04             12386 	add	a,#0x04
   4E3B F8                12387 	mov	r0,a
   4E3C A6 02             12388 	mov	@r0,ar2
   4E3E 08                12389 	inc	r0
   4E3F A6 03             12390 	mov	@r0,ar3
   4E41 08                12391 	inc	r0
   4E42 A6 04             12392 	mov	@r0,ar4
   4E44 08                12393 	inc	r0
   4E45 A6 05             12394 	mov	@r0,ar5
                          12395 ;	FatDrivers/tff.c:1297: if (clust) {			/* If the file has a cluster chain, it can be followed */
                          12396 ;	genIpop
                          12397 ;	genIfx
   4E47 E5 10             12398 	mov	a,_bp
   4E49 24 04             12399 	add	a,#0x04
   4E4B F8                12400 	mov	r0,a
   4E4C E6                12401 	mov	a,@r0
   4E4D 08                12402 	inc	r0
   4E4E 46                12403 	orl	a,@r0
   4E4F 08                12404 	inc	r0
   4E50 46                12405 	orl	a,@r0
   4E51 08                12406 	inc	r0
   4E52 46                12407 	orl	a,@r0
                          12408 ;	genIfxJump
   4E53 70 03             12409 	jnz	00138$
   4E55 02 51 24          12410 	ljmp	00120$
   4E58                   12411 00138$:
                          12412 ;	FatDrivers/tff.c:1298: csize = (DWORD)fs->sects_clust * 512;		/* Cluster size in unit of byte */
                          12413 ;	genIpush
                          12414 ;	genPlus
   4E58 E5 10             12415 	mov	a,_bp
   4E5A 24 0C             12416 	add	a,#0x0c
   4E5C F8                12417 	mov	r0,a
   4E5D E5 10             12418 	mov	a,_bp
   4E5F 24 16             12419 	add	a,#0x16
   4E61 F9                12420 	mov	r1,a
                          12421 ;     genPlusIncr
   4E62 74 1D             12422 	mov	a,#0x1D
   4E64 26                12423 	add	a,@r0
   4E65 F7                12424 	mov	@r1,a
                          12425 ;	Peephole 181	changed mov to clr
   4E66 E4                12426 	clr	a
   4E67 08                12427 	inc	r0
   4E68 36                12428 	addc	a,@r0
   4E69 09                12429 	inc	r1
   4E6A F7                12430 	mov	@r1,a
   4E6B 08                12431 	inc	r0
   4E6C 09                12432 	inc	r1
   4E6D E6                12433 	mov	a,@r0
   4E6E F7                12434 	mov	@r1,a
                          12435 ;	genPointerGet
                          12436 ;	genGenPointerGet
   4E6F E5 10             12437 	mov	a,_bp
   4E71 24 16             12438 	add	a,#0x16
   4E73 F8                12439 	mov	r0,a
   4E74 86 82             12440 	mov	dpl,@r0
   4E76 08                12441 	inc	r0
   4E77 86 83             12442 	mov	dph,@r0
   4E79 08                12443 	inc	r0
   4E7A 86 F0             12444 	mov	b,@r0
   4E7C 12 62 42          12445 	lcall	__gptrget
   4E7F FD                12446 	mov	r5,a
                          12447 ;	genCast
                          12448 ;	genLeftShift
                          12449 ;	genLeftShiftLiteral
                          12450 ;	Peephole 3.c	changed mov to clr
                          12451 ;	Peephole 3.b	changed mov to clr
   4E80 E4                12452 	clr	a
   4E81 FE                12453 	mov	r6,a
   4E82 FF                12454 	mov	r7,a
   4E83 FA                12455 	mov	r2,a
   4E84 E5 10             12456 	mov	a,_bp
   4E86 24 08             12457 	add	a,#0x08
   4E88 F8                12458 	mov	r0,a
                          12459 ;	genlshFour
   4E89 ED                12460 	mov	a,r5
                          12461 ;	Peephole 254	optimized left shift
   4E8A 2D                12462 	add	a,r5
   4E8B 08                12463 	inc	r0
   4E8C F6                12464 	mov	@r0,a
   4E8D EE                12465 	mov	a,r6
   4E8E 33                12466 	rlc	a
   4E8F 08                12467 	inc	r0
   4E90 F6                12468 	mov	@r0,a
   4E91 EF                12469 	mov	a,r7
   4E92 33                12470 	rlc	a
   4E93 08                12471 	inc	r0
   4E94 F6                12472 	mov	@r0,a
   4E95 18                12473 	dec	r0
   4E96 18                12474 	dec	r0
   4E97 18                12475 	dec	r0
   4E98 76 00             12476 	mov	@r0,#0x00
                          12477 ;	FatDrivers/tff.c:1332: return FR_RW_ERROR;
                          12478 ;	genIpop
                          12479 ;	FatDrivers/tff.c:1298: csize = (DWORD)fs->sects_clust * 512;		/* Cluster size in unit of byte */
                          12480 ;	genPlus
   4E9A E5 10             12481 	mov	a,_bp
   4E9C 24 0C             12482 	add	a,#0x0c
   4E9E F8                12483 	mov	r0,a
   4E9F E5 10             12484 	mov	a,_bp
   4EA1 24 1C             12485 	add	a,#0x1c
   4EA3 F9                12486 	mov	r1,a
                          12487 ;     genPlusIncr
   4EA4 74 18             12488 	mov	a,#0x18
   4EA6 26                12489 	add	a,@r0
   4EA7 F7                12490 	mov	@r1,a
                          12491 ;	Peephole 181	changed mov to clr
   4EA8 E4                12492 	clr	a
   4EA9 08                12493 	inc	r0
   4EAA 36                12494 	addc	a,@r0
   4EAB 09                12495 	inc	r1
   4EAC F7                12496 	mov	@r1,a
   4EAD 08                12497 	inc	r0
   4EAE 09                12498 	inc	r1
   4EAF E6                12499 	mov	a,@r0
   4EB0 F7                12500 	mov	@r1,a
   4EB1                   12501 00115$:
                          12502 ;	FatDrivers/tff.c:1300: fp->curr_clust = clust;					/* Update current cluster */
                          12503 ;	genIpush
                          12504 ;	genPlus
   4EB1 A8 10             12505 	mov	r0,_bp
   4EB3 08                12506 	inc	r0
                          12507 ;     genPlusIncr
   4EB4 74 13             12508 	mov	a,#0x13
   4EB6 26                12509 	add	a,@r0
   4EB7 FA                12510 	mov	r2,a
                          12511 ;	Peephole 181	changed mov to clr
   4EB8 E4                12512 	clr	a
   4EB9 08                12513 	inc	r0
   4EBA 36                12514 	addc	a,@r0
   4EBB FB                12515 	mov	r3,a
   4EBC 08                12516 	inc	r0
   4EBD 86 04             12517 	mov	ar4,@r0
                          12518 ;	genPointerSet
                          12519 ;	genGenPointerSet
   4EBF 8A 82             12520 	mov	dpl,r2
   4EC1 8B 83             12521 	mov	dph,r3
   4EC3 8C F0             12522 	mov	b,r4
   4EC5 E5 10             12523 	mov	a,_bp
   4EC7 24 04             12524 	add	a,#0x04
   4EC9 F8                12525 	mov	r0,a
   4ECA E6                12526 	mov	a,@r0
   4ECB 12 5E A4          12527 	lcall	__gptrput
   4ECE A3                12528 	inc	dptr
   4ECF 08                12529 	inc	r0
   4ED0 E6                12530 	mov	a,@r0
   4ED1 12 5E A4          12531 	lcall	__gptrput
   4ED4 A3                12532 	inc	dptr
   4ED5 08                12533 	inc	r0
   4ED6 E6                12534 	mov	a,@r0
   4ED7 12 5E A4          12535 	lcall	__gptrput
   4EDA A3                12536 	inc	dptr
   4EDB 08                12537 	inc	r0
   4EDC E6                12538 	mov	a,@r0
   4EDD 12 5E A4          12539 	lcall	__gptrput
                          12540 ;	FatDrivers/tff.c:1301: if (ofs <= csize) break;
                          12541 ;	genCmpGt
   4EE0 E5 10             12542 	mov	a,_bp
   4EE2 24 FA             12543 	add	a,#0xfffffffa
   4EE4 F8                12544 	mov	r0,a
   4EE5 E5 10             12545 	mov	a,_bp
   4EE7 24 08             12546 	add	a,#0x08
   4EE9 F9                12547 	mov	r1,a
                          12548 ;	genCmp
   4EEA C3                12549 	clr	c
   4EEB E7                12550 	mov	a,@r1
   4EEC 96                12551 	subb	a,@r0
   4EED 09                12552 	inc	r1
   4EEE E7                12553 	mov	a,@r1
   4EEF 08                12554 	inc	r0
   4EF0 96                12555 	subb	a,@r0
   4EF1 09                12556 	inc	r1
   4EF2 E7                12557 	mov	a,@r1
   4EF3 08                12558 	inc	r0
   4EF4 96                12559 	subb	a,@r0
   4EF5 09                12560 	inc	r1
   4EF6 E7                12561 	mov	a,@r1
   4EF7 08                12562 	inc	r0
   4EF8 96                12563 	subb	a,@r0
                          12564 ;	genIpop
                          12565 ;	genIfx
                          12566 ;	genIfxJump
                          12567 ;	Peephole 129.a	jump optimization
   4EF9 40 03             12568 	jc	00139$
   4EFB 02 50 11          12569 	ljmp	00116$
   4EFE                   12570 00139$:
                          12571 ;	FatDrivers/tff.c:1307: clust = get_cluster(clust);			/* Only follow cluster chain if not in write mode */
                          12572 ;	genIpush
                          12573 ;	genCall
   4EFE E5 10             12574 	mov	a,_bp
   4F00 24 04             12575 	add	a,#0x04
   4F02 F8                12576 	mov	r0,a
   4F03 86 82             12577 	mov	dpl,@r0
   4F05 08                12578 	inc	r0
   4F06 86 83             12579 	mov	dph,@r0
   4F08 08                12580 	inc	r0
   4F09 86 F0             12581 	mov	b,@r0
   4F0B 08                12582 	inc	r0
   4F0C E6                12583 	mov	a,@r0
   4F0D 12 18 63          12584 	lcall	_get_cluster
   4F10 AA 82             12585 	mov	r2,dpl
   4F12 AB 83             12586 	mov	r3,dph
   4F14 AC F0             12587 	mov	r4,b
   4F16 FD                12588 	mov	r5,a
                          12589 ;	genAssign
   4F17 E5 10             12590 	mov	a,_bp
   4F19 24 04             12591 	add	a,#0x04
   4F1B F8                12592 	mov	r0,a
   4F1C A6 02             12593 	mov	@r0,ar2
   4F1E 08                12594 	inc	r0
   4F1F A6 03             12595 	mov	@r0,ar3
   4F21 08                12596 	inc	r0
   4F22 A6 04             12597 	mov	@r0,ar4
   4F24 08                12598 	inc	r0
   4F25 A6 05             12599 	mov	@r0,ar5
                          12600 ;	FatDrivers/tff.c:1308: if (clust == 0) {						/* Stop if could not follow the cluster chain */
                          12601 ;	genIpop
                          12602 ;	genIfx
   4F27 E5 10             12603 	mov	a,_bp
   4F29 24 04             12604 	add	a,#0x04
   4F2B F8                12605 	mov	r0,a
   4F2C E6                12606 	mov	a,@r0
   4F2D 08                12607 	inc	r0
   4F2E 46                12608 	orl	a,@r0
   4F2F 08                12609 	inc	r0
   4F30 46                12610 	orl	a,@r0
   4F31 08                12611 	inc	r0
   4F32 46                12612 	orl	a,@r0
                          12613 ;	genIfxJump
                          12614 ;	Peephole 108.b	removed ljmp by inverse jump logic
   4F33 70 1B             12615 	jnz	00110$
                          12616 ;	Peephole 300	removed redundant label 00140$
                          12617 ;	FatDrivers/tff.c:1309: ofs = csize; break;
                          12618 ;	genAssign
   4F35 E5 10             12619 	mov	a,_bp
   4F37 24 08             12620 	add	a,#0x08
   4F39 F8                12621 	mov	r0,a
   4F3A E5 10             12622 	mov	a,_bp
   4F3C 24 FA             12623 	add	a,#0xfffffffa
   4F3E F9                12624 	mov	r1,a
   4F3F E6                12625 	mov	a,@r0
   4F40 F7                12626 	mov	@r1,a
   4F41 08                12627 	inc	r0
   4F42 09                12628 	inc	r1
   4F43 E6                12629 	mov	a,@r0
   4F44 F7                12630 	mov	@r1,a
   4F45 08                12631 	inc	r0
   4F46 09                12632 	inc	r1
   4F47 E6                12633 	mov	a,@r0
   4F48 F7                12634 	mov	@r1,a
   4F49 08                12635 	inc	r0
   4F4A 09                12636 	inc	r1
   4F4B E6                12637 	mov	a,@r0
   4F4C F7                12638 	mov	@r1,a
   4F4D 02 50 11          12639 	ljmp	00116$
   4F50                   12640 00110$:
                          12641 ;	FatDrivers/tff.c:1311: if (clust == 1 || clust >= fs->max_clust) goto fk_error;
                          12642 ;	genCmpEq
   4F50 E5 10             12643 	mov	a,_bp
   4F52 24 04             12644 	add	a,#0x04
   4F54 F8                12645 	mov	r0,a
                          12646 ;	gencjneshort
   4F55 B6 01 0F          12647 	cjne	@r0,#0x01,00141$
   4F58 08                12648 	inc	r0
   4F59 B6 00 0B          12649 	cjne	@r0,#0x00,00141$
   4F5C 08                12650 	inc	r0
   4F5D B6 00 07          12651 	cjne	@r0,#0x00,00141$
   4F60 08                12652 	inc	r0
   4F61 B6 00 03          12653 	cjne	@r0,#0x00,00141$
   4F64 02 51 29          12654 	ljmp	00121$
   4F67                   12655 00141$:
                          12656 ;	genPointerGet
                          12657 ;	genGenPointerGet
   4F67 E5 10             12658 	mov	a,_bp
   4F69 24 1C             12659 	add	a,#0x1c
   4F6B F8                12660 	mov	r0,a
   4F6C 86 82             12661 	mov	dpl,@r0
   4F6E 08                12662 	inc	r0
   4F6F 86 83             12663 	mov	dph,@r0
   4F71 08                12664 	inc	r0
   4F72 86 F0             12665 	mov	b,@r0
   4F74 12 62 42          12666 	lcall	__gptrget
   4F77 FD                12667 	mov	r5,a
   4F78 A3                12668 	inc	dptr
   4F79 12 62 42          12669 	lcall	__gptrget
   4F7C FE                12670 	mov	r6,a
   4F7D A3                12671 	inc	dptr
   4F7E 12 62 42          12672 	lcall	__gptrget
   4F81 FF                12673 	mov	r7,a
   4F82 A3                12674 	inc	dptr
   4F83 12 62 42          12675 	lcall	__gptrget
   4F86 FA                12676 	mov	r2,a
                          12677 ;	genCmpLt
   4F87 E5 10             12678 	mov	a,_bp
   4F89 24 04             12679 	add	a,#0x04
   4F8B F8                12680 	mov	r0,a
                          12681 ;	genCmp
   4F8C C3                12682 	clr	c
   4F8D E6                12683 	mov	a,@r0
   4F8E 9D                12684 	subb	a,r5
   4F8F 08                12685 	inc	r0
   4F90 E6                12686 	mov	a,@r0
   4F91 9E                12687 	subb	a,r6
   4F92 08                12688 	inc	r0
   4F93 E6                12689 	mov	a,@r0
   4F94 9F                12690 	subb	a,r7
   4F95 08                12691 	inc	r0
   4F96 E6                12692 	mov	a,@r0
   4F97 9A                12693 	subb	a,r2
                          12694 ;	genIfxJump
   4F98 40 03             12695 	jc	00142$
   4F9A 02 51 29          12696 	ljmp	00121$
   4F9D                   12697 00142$:
                          12698 ;	FatDrivers/tff.c:1312: fp->fptr += csize;						/* Update R/W pointer */
                          12699 ;	genPointerGet
                          12700 ;	genGenPointerGet
   4F9D E5 10             12701 	mov	a,_bp
   4F9F 24 0F             12702 	add	a,#0x0f
   4FA1 F8                12703 	mov	r0,a
   4FA2 86 82             12704 	mov	dpl,@r0
   4FA4 08                12705 	inc	r0
   4FA5 86 83             12706 	mov	dph,@r0
   4FA7 08                12707 	inc	r0
   4FA8 86 F0             12708 	mov	b,@r0
   4FAA 12 62 42          12709 	lcall	__gptrget
   4FAD FA                12710 	mov	r2,a
   4FAE A3                12711 	inc	dptr
   4FAF 12 62 42          12712 	lcall	__gptrget
   4FB2 FB                12713 	mov	r3,a
   4FB3 A3                12714 	inc	dptr
   4FB4 12 62 42          12715 	lcall	__gptrget
   4FB7 FC                12716 	mov	r4,a
   4FB8 A3                12717 	inc	dptr
   4FB9 12 62 42          12718 	lcall	__gptrget
   4FBC FD                12719 	mov	r5,a
                          12720 ;	genPlus
   4FBD E5 10             12721 	mov	a,_bp
   4FBF 24 08             12722 	add	a,#0x08
   4FC1 F8                12723 	mov	r0,a
   4FC2 E6                12724 	mov	a,@r0
                          12725 ;	Peephole 236.a	used r2 instead of ar2
   4FC3 2A                12726 	add	a,r2
   4FC4 FA                12727 	mov	r2,a
   4FC5 08                12728 	inc	r0
   4FC6 E6                12729 	mov	a,@r0
                          12730 ;	Peephole 236.b	used r3 instead of ar3
   4FC7 3B                12731 	addc	a,r3
   4FC8 FB                12732 	mov	r3,a
   4FC9 08                12733 	inc	r0
   4FCA E6                12734 	mov	a,@r0
                          12735 ;	Peephole 236.b	used r4 instead of ar4
   4FCB 3C                12736 	addc	a,r4
   4FCC FC                12737 	mov	r4,a
   4FCD 08                12738 	inc	r0
   4FCE E6                12739 	mov	a,@r0
                          12740 ;	Peephole 236.b	used r5 instead of ar5
   4FCF 3D                12741 	addc	a,r5
   4FD0 FD                12742 	mov	r5,a
                          12743 ;	genPointerSet
                          12744 ;	genGenPointerSet
   4FD1 E5 10             12745 	mov	a,_bp
   4FD3 24 0F             12746 	add	a,#0x0f
   4FD5 F8                12747 	mov	r0,a
   4FD6 86 82             12748 	mov	dpl,@r0
   4FD8 08                12749 	inc	r0
   4FD9 86 83             12750 	mov	dph,@r0
   4FDB 08                12751 	inc	r0
   4FDC 86 F0             12752 	mov	b,@r0
   4FDE EA                12753 	mov	a,r2
   4FDF 12 5E A4          12754 	lcall	__gptrput
   4FE2 A3                12755 	inc	dptr
   4FE3 EB                12756 	mov	a,r3
   4FE4 12 5E A4          12757 	lcall	__gptrput
   4FE7 A3                12758 	inc	dptr
   4FE8 EC                12759 	mov	a,r4
   4FE9 12 5E A4          12760 	lcall	__gptrput
   4FEC A3                12761 	inc	dptr
   4FED ED                12762 	mov	a,r5
   4FEE 12 5E A4          12763 	lcall	__gptrput
                          12764 ;	FatDrivers/tff.c:1313: ofs -= csize;
                          12765 ;	genMinus
   4FF1 E5 10             12766 	mov	a,_bp
   4FF3 24 FA             12767 	add	a,#0xfffffffa
   4FF5 F8                12768 	mov	r0,a
   4FF6 E5 10             12769 	mov	a,_bp
   4FF8 24 08             12770 	add	a,#0x08
   4FFA F9                12771 	mov	r1,a
   4FFB E6                12772 	mov	a,@r0
   4FFC C3                12773 	clr	c
   4FFD 97                12774 	subb	a,@r1
   4FFE F6                12775 	mov	@r0,a
   4FFF 08                12776 	inc	r0
   5000 E6                12777 	mov	a,@r0
   5001 09                12778 	inc	r1
   5002 97                12779 	subb	a,@r1
   5003 F6                12780 	mov	@r0,a
   5004 08                12781 	inc	r0
   5005 E6                12782 	mov	a,@r0
   5006 09                12783 	inc	r1
   5007 97                12784 	subb	a,@r1
   5008 F6                12785 	mov	@r0,a
   5009 08                12786 	inc	r0
   500A E6                12787 	mov	a,@r0
   500B 09                12788 	inc	r1
   500C 97                12789 	subb	a,@r1
   500D F6                12790 	mov	@r0,a
   500E 02 4E B1          12791 	ljmp	00115$
   5011                   12792 00116$:
                          12793 ;	FatDrivers/tff.c:1315: csect = (BYTE)((ofs - 1) / 512);			/* Sector offset in the cluster */
                          12794 ;	genMinus
   5011 E5 10             12795 	mov	a,_bp
   5013 24 FA             12796 	add	a,#0xfffffffa
   5015 F8                12797 	mov	r0,a
                          12798 ;	genMinusDec
   5016 E6                12799 	mov	a,@r0
   5017 24 FF             12800 	add	a,#0xff
   5019 FA                12801 	mov	r2,a
   501A 08                12802 	inc	r0
   501B E6                12803 	mov	a,@r0
   501C 34 FF             12804 	addc	a,#0xff
   501E FB                12805 	mov	r3,a
   501F 08                12806 	inc	r0
   5020 E6                12807 	mov	a,@r0
   5021 34 FF             12808 	addc	a,#0xff
   5023 FC                12809 	mov	r4,a
   5024 08                12810 	inc	r0
   5025 E6                12811 	mov	a,@r0
   5026 34 FF             12812 	addc	a,#0xff
                          12813 ;	genRightShift
                          12814 ;	genRightShiftLiteral
                          12815 ;	genrshFour
                          12816 ;	Peephole 105	removed redundant mov
                          12817 ;	Peephole 177.c	removed redundant move
   5028 7D 00             12818 	mov	r5,#0x00
   502A C3                12819 	clr	c
   502B 13                12820 	rrc	a
   502C CC                12821 	xch	a,r4
   502D 13                12822 	rrc	a
   502E CB                12823 	xch	a,r3
   502F 13                12824 	rrc	a
   5030 FA                12825 	mov	r2,a
                          12826 ;	genCast
   5031 8A 06             12827 	mov	ar6,r2
                          12828 ;	FatDrivers/tff.c:1316: fp->curr_sect = clust2sect(clust) + csect;	/* Current sector */
                          12829 ;	genPlus
   5033 A8 10             12830 	mov	r0,_bp
   5035 08                12831 	inc	r0
   5036 E5 10             12832 	mov	a,_bp
   5038 24 1C             12833 	add	a,#0x1c
   503A F9                12834 	mov	r1,a
                          12835 ;     genPlusIncr
   503B 74 17             12836 	mov	a,#0x17
   503D 26                12837 	add	a,@r0
   503E F7                12838 	mov	@r1,a
                          12839 ;	Peephole 181	changed mov to clr
   503F E4                12840 	clr	a
   5040 08                12841 	inc	r0
   5041 36                12842 	addc	a,@r0
   5042 09                12843 	inc	r1
   5043 F7                12844 	mov	@r1,a
   5044 08                12845 	inc	r0
   5045 09                12846 	inc	r1
   5046 E6                12847 	mov	a,@r0
   5047 F7                12848 	mov	@r1,a
                          12849 ;	genCall
   5048 E5 10             12850 	mov	a,_bp
   504A 24 04             12851 	add	a,#0x04
   504C F8                12852 	mov	r0,a
   504D 86 82             12853 	mov	dpl,@r0
   504F 08                12854 	inc	r0
   5050 86 83             12855 	mov	dph,@r0
   5052 08                12856 	inc	r0
   5053 86 F0             12857 	mov	b,@r0
   5055 08                12858 	inc	r0
   5056 E6                12859 	mov	a,@r0
   5057 C0 06             12860 	push	ar6
   5059 12 1B 9F          12861 	lcall	_clust2sect
   505C C0 E0             12862 	push	acc
   505E E5 10             12863 	mov	a,_bp
   5060 24 1F             12864 	add	a,#0x1f
   5062 F8                12865 	mov	r0,a
   5063 D0 E0             12866 	pop	acc
   5065 A6 82             12867 	mov	@r0,dpl
   5067 08                12868 	inc	r0
   5068 A6 83             12869 	mov	@r0,dph
   506A 08                12870 	inc	r0
   506B A6 F0             12871 	mov	@r0,b
   506D 08                12872 	inc	r0
   506E F6                12873 	mov	@r0,a
   506F D0 06             12874 	pop	ar6
                          12875 ;	genCast
   5071 8E 04             12876 	mov	ar4,r6
                          12877 ;	genPlus
                          12878 ;	Peephole 3.c	changed mov to clr
                          12879 ;	Peephole 3.b	changed mov to clr
   5073 E4                12880 	clr	a
   5074 FD                12881 	mov	r5,a
   5075 FA                12882 	mov	r2,a
   5076 FB                12883 	mov	r3,a
   5077 E5 10             12884 	mov	a,_bp
   5079 24 1F             12885 	add	a,#0x1f
   507B F8                12886 	mov	r0,a
                          12887 ;	Peephole 236.g	used r4 instead of ar4
   507C EC                12888 	mov	a,r4
   507D 26                12889 	add	a,@r0
   507E FC                12890 	mov	r4,a
                          12891 ;	Peephole 236.g	used r5 instead of ar5
   507F ED                12892 	mov	a,r5
   5080 08                12893 	inc	r0
   5081 36                12894 	addc	a,@r0
   5082 FD                12895 	mov	r5,a
                          12896 ;	Peephole 236.g	used r2 instead of ar2
   5083 EA                12897 	mov	a,r2
   5084 08                12898 	inc	r0
   5085 36                12899 	addc	a,@r0
   5086 FA                12900 	mov	r2,a
                          12901 ;	Peephole 236.g	used r3 instead of ar3
   5087 EB                12902 	mov	a,r3
   5088 08                12903 	inc	r0
   5089 36                12904 	addc	a,@r0
   508A FB                12905 	mov	r3,a
                          12906 ;	genPointerSet
                          12907 ;	genGenPointerSet
   508B E5 10             12908 	mov	a,_bp
   508D 24 1C             12909 	add	a,#0x1c
   508F F8                12910 	mov	r0,a
   5090 86 82             12911 	mov	dpl,@r0
   5092 08                12912 	inc	r0
   5093 86 83             12913 	mov	dph,@r0
   5095 08                12914 	inc	r0
   5096 86 F0             12915 	mov	b,@r0
   5098 EC                12916 	mov	a,r4
   5099 12 5E A4          12917 	lcall	__gptrput
   509C A3                12918 	inc	dptr
   509D ED                12919 	mov	a,r5
   509E 12 5E A4          12920 	lcall	__gptrput
   50A1 A3                12921 	inc	dptr
   50A2 EA                12922 	mov	a,r2
   50A3 12 5E A4          12923 	lcall	__gptrput
   50A6 A3                12924 	inc	dptr
   50A7 EB                12925 	mov	a,r3
   50A8 12 5E A4          12926 	lcall	__gptrput
                          12927 ;	FatDrivers/tff.c:1317: fp->sect_clust = fs->sects_clust - csect;	/* Left sector counter in the cluster */
                          12928 ;	genPointerGet
                          12929 ;	genGenPointerGet
   50AB E5 10             12930 	mov	a,_bp
   50AD 24 16             12931 	add	a,#0x16
   50AF F8                12932 	mov	r0,a
   50B0 86 82             12933 	mov	dpl,@r0
   50B2 08                12934 	inc	r0
   50B3 86 83             12935 	mov	dph,@r0
   50B5 08                12936 	inc	r0
   50B6 86 F0             12937 	mov	b,@r0
   50B8 12 62 42          12938 	lcall	__gptrget
                          12939 ;	genMinus
   50BB FA                12940 	mov	r2,a
                          12941 ;	Peephole 105	removed redundant mov
   50BC C3                12942 	clr	c
                          12943 ;	Peephole 236.l	used r6 instead of ar6
   50BD 9E                12944 	subb	a,r6
   50BE FA                12945 	mov	r2,a
                          12946 ;	genPointerSet
                          12947 ;	genGenPointerSet
   50BF E5 10             12948 	mov	a,_bp
   50C1 24 13             12949 	add	a,#0x13
   50C3 F8                12950 	mov	r0,a
   50C4 86 82             12951 	mov	dpl,@r0
   50C6 08                12952 	inc	r0
   50C7 86 83             12953 	mov	dph,@r0
   50C9 08                12954 	inc	r0
   50CA 86 F0             12955 	mov	b,@r0
   50CC EA                12956 	mov	a,r2
   50CD 12 5E A4          12957 	lcall	__gptrput
                          12958 ;	FatDrivers/tff.c:1318: fp->fptr += ofs;							/* Update file R/W pointer */
                          12959 ;	genPointerGet
                          12960 ;	genGenPointerGet
   50D0 E5 10             12961 	mov	a,_bp
   50D2 24 0F             12962 	add	a,#0x0f
   50D4 F8                12963 	mov	r0,a
   50D5 86 82             12964 	mov	dpl,@r0
   50D7 08                12965 	inc	r0
   50D8 86 83             12966 	mov	dph,@r0
   50DA 08                12967 	inc	r0
   50DB 86 F0             12968 	mov	b,@r0
   50DD 12 62 42          12969 	lcall	__gptrget
   50E0 FA                12970 	mov	r2,a
   50E1 A3                12971 	inc	dptr
   50E2 12 62 42          12972 	lcall	__gptrget
   50E5 FB                12973 	mov	r3,a
   50E6 A3                12974 	inc	dptr
   50E7 12 62 42          12975 	lcall	__gptrget
   50EA FC                12976 	mov	r4,a
   50EB A3                12977 	inc	dptr
   50EC 12 62 42          12978 	lcall	__gptrget
   50EF FD                12979 	mov	r5,a
                          12980 ;	genPlus
   50F0 E5 10             12981 	mov	a,_bp
   50F2 24 FA             12982 	add	a,#0xfffffffa
   50F4 F8                12983 	mov	r0,a
   50F5 E6                12984 	mov	a,@r0
                          12985 ;	Peephole 236.a	used r2 instead of ar2
   50F6 2A                12986 	add	a,r2
   50F7 FA                12987 	mov	r2,a
   50F8 08                12988 	inc	r0
   50F9 E6                12989 	mov	a,@r0
                          12990 ;	Peephole 236.b	used r3 instead of ar3
   50FA 3B                12991 	addc	a,r3
   50FB FB                12992 	mov	r3,a
   50FC 08                12993 	inc	r0
   50FD E6                12994 	mov	a,@r0
                          12995 ;	Peephole 236.b	used r4 instead of ar4
   50FE 3C                12996 	addc	a,r4
   50FF FC                12997 	mov	r4,a
   5100 08                12998 	inc	r0
   5101 E6                12999 	mov	a,@r0
                          13000 ;	Peephole 236.b	used r5 instead of ar5
   5102 3D                13001 	addc	a,r5
   5103 FD                13002 	mov	r5,a
                          13003 ;	genPointerSet
                          13004 ;	genGenPointerSet
   5104 E5 10             13005 	mov	a,_bp
   5106 24 0F             13006 	add	a,#0x0f
   5108 F8                13007 	mov	r0,a
   5109 86 82             13008 	mov	dpl,@r0
   510B 08                13009 	inc	r0
   510C 86 83             13010 	mov	dph,@r0
   510E 08                13011 	inc	r0
   510F 86 F0             13012 	mov	b,@r0
   5111 EA                13013 	mov	a,r2
   5112 12 5E A4          13014 	lcall	__gptrput
   5115 A3                13015 	inc	dptr
   5116 EB                13016 	mov	a,r3
   5117 12 5E A4          13017 	lcall	__gptrput
   511A A3                13018 	inc	dptr
   511B EC                13019 	mov	a,r4
   511C 12 5E A4          13020 	lcall	__gptrput
   511F A3                13021 	inc	dptr
   5120 ED                13022 	mov	a,r5
   5121 12 5E A4          13023 	lcall	__gptrput
   5124                   13024 00120$:
                          13025 ;	FatDrivers/tff.c:1328: return FR_OK;
                          13026 ;	genRet
   5124 75 82 00          13027 	mov	dpl,#0x00
                          13028 ;	FatDrivers/tff.c:1330: fk_error:	/* Abort this function due to an unrecoverable error */
                          13029 ;	Peephole 112.b	changed ljmp to sjmp
   5127 80 28             13030 	sjmp	00122$
   5129                   13031 00121$:
                          13032 ;	FatDrivers/tff.c:1331: fp->flag |= FA__ERROR;
                          13033 ;	genPointerGet
                          13034 ;	genGenPointerGet
   5129 E5 10             13035 	mov	a,_bp
   512B 24 19             13036 	add	a,#0x19
   512D F8                13037 	mov	r0,a
   512E 86 82             13038 	mov	dpl,@r0
   5130 08                13039 	inc	r0
   5131 86 83             13040 	mov	dph,@r0
   5133 08                13041 	inc	r0
   5134 86 F0             13042 	mov	b,@r0
   5136 12 62 42          13043 	lcall	__gptrget
   5139 FA                13044 	mov	r2,a
                          13045 ;	genOr
   513A 43 02 80          13046 	orl	ar2,#0x80
                          13047 ;	genPointerSet
                          13048 ;	genGenPointerSet
   513D E5 10             13049 	mov	a,_bp
   513F 24 19             13050 	add	a,#0x19
   5141 F8                13051 	mov	r0,a
   5142 86 82             13052 	mov	dpl,@r0
   5144 08                13053 	inc	r0
   5145 86 83             13054 	mov	dph,@r0
   5147 08                13055 	inc	r0
   5148 86 F0             13056 	mov	b,@r0
   514A EA                13057 	mov	a,r2
   514B 12 5E A4          13058 	lcall	__gptrput
                          13059 ;	FatDrivers/tff.c:1332: return FR_RW_ERROR;
                          13060 ;	genRet
   514E 75 82 08          13061 	mov	dpl,#0x08
   5151                   13062 00122$:
   5151 85 10 81          13063 	mov	sp,_bp
   5154 D0 10             13064 	pop	_bp
   5156 22                13065 	ret
                          13066 ;------------------------------------------------------------
                          13067 ;Allocation info for local variables in function 'f_opendir'
                          13068 ;------------------------------------------------------------
                          13069 ;path                      Allocated to stack - offset -5
                          13070 ;dirobj                    Allocated to stack - offset 1
                          13071 ;dir                       Allocated to stack - offset 4
                          13072 ;fn                        Allocated to stack - offset 7
                          13073 ;res                       Allocated to registers r5 
                          13074 ;fs                        Allocated to stack - offset 19
                          13075 ;sloc0                     Allocated to stack - offset 22
                          13076 ;sloc1                     Allocated to stack - offset 25
                          13077 ;------------------------------------------------------------
                          13078 ;	FatDrivers/tff.c:1343: FRESULT f_opendir (
                          13079 ;	-----------------------------------------
                          13080 ;	 function f_opendir
                          13081 ;	-----------------------------------------
   5157                   13082 _f_opendir:
   5157 C0 10             13083 	push	_bp
   5159 85 81 10          13084 	mov	_bp,sp
                          13085 ;     genReceive
   515C C0 82             13086 	push	dpl
   515E C0 83             13087 	push	dph
   5160 C0 F0             13088 	push	b
   5162 E5 81             13089 	mov	a,sp
   5164 24 1C             13090 	add	a,#0x1c
   5166 F5 81             13091 	mov	sp,a
                          13092 ;	FatDrivers/tff.c:1351: FATFS *fs = FatFs;
                          13093 ;	genAssign
   5168 E5 10             13094 	mov	a,_bp
   516A 24 13             13095 	add	a,#0x13
   516C F8                13096 	mov	r0,a
   516D A6 09             13097 	mov	@r0,_FatFs
   516F 08                13098 	inc	r0
   5170 A6 0A             13099 	mov	@r0,(_FatFs + 1)
   5172 08                13100 	inc	r0
   5173 A6 0B             13101 	mov	@r0,(_FatFs + 2)
                          13102 ;	FatDrivers/tff.c:1354: res = auto_mount(&path, 0);
                          13103 ;	genAddrOf
   5175 E5 10             13104 	mov	a,_bp
   5177 24 FB             13105 	add	a,#0xfb
   5179 FD                13106 	mov	r5,a
                          13107 ;	genCast
   517A 7E 00             13108 	mov	r6,#0x00
   517C 7F 40             13109 	mov	r7,#0x40
                          13110 ;	genIpush
                          13111 ;	Peephole 181	changed mov to clr
   517E E4                13112 	clr	a
   517F C0 E0             13113 	push	acc
                          13114 ;	genCall
   5181 8D 82             13115 	mov	dpl,r5
   5183 8E 83             13116 	mov	dph,r6
   5185 8F F0             13117 	mov	b,r7
   5187 12 2B 2E          13118 	lcall	_auto_mount
   518A AD 82             13119 	mov	r5,dpl
   518C 15 81             13120 	dec	sp
                          13121 ;	genAssign
                          13122 ;	FatDrivers/tff.c:1355: if (res != FR_OK) return res;
                          13123 ;	genCmpEq
                          13124 ;	gencjneshort
   518E BD 00 02          13125 	cjne	r5,#0x00,00116$
                          13126 ;	Peephole 112.b	changed ljmp to sjmp
   5191 80 05             13127 	sjmp	00102$
   5193                   13128 00116$:
                          13129 ;	genRet
   5193 8D 82             13130 	mov	dpl,r5
   5195 02 53 58          13131 	ljmp	00110$
   5198                   13132 00102$:
                          13133 ;	FatDrivers/tff.c:1357: res = trace_path(dirobj, fn, path, &dir);	/* Trace the directory path */
                          13134 ;	genAddrOf
   5198 E5 10             13135 	mov	a,_bp
   519A 24 04             13136 	add	a,#0x04
   519C FE                13137 	mov	r6,a
                          13138 ;	genCast
   519D 7D 00             13139 	mov	r5,#0x00
   519F 7F 40             13140 	mov	r7,#0x40
                          13141 ;	genAddrOf
   51A1 E5 10             13142 	mov	a,_bp
   51A3 24 07             13143 	add	a,#0x07
   51A5 FB                13144 	mov	r3,a
                          13145 ;	genCast
   51A6 7C 00             13146 	mov	r4,#0x00
   51A8 7A 40             13147 	mov	r2,#0x40
                          13148 ;	genIpush
   51AA C0 06             13149 	push	ar6
   51AC C0 05             13150 	push	ar5
   51AE C0 07             13151 	push	ar7
                          13152 ;	genIpush
   51B0 E5 10             13153 	mov	a,_bp
   51B2 24 FB             13154 	add	a,#0xfffffffb
   51B4 F8                13155 	mov	r0,a
   51B5 E6                13156 	mov	a,@r0
   51B6 C0 E0             13157 	push	acc
   51B8 08                13158 	inc	r0
   51B9 E6                13159 	mov	a,@r0
   51BA C0 E0             13160 	push	acc
   51BC 08                13161 	inc	r0
   51BD E6                13162 	mov	a,@r0
   51BE C0 E0             13163 	push	acc
                          13164 ;	genIpush
   51C0 C0 03             13165 	push	ar3
   51C2 C0 04             13166 	push	ar4
   51C4 C0 02             13167 	push	ar2
                          13168 ;	genCall
   51C6 A8 10             13169 	mov	r0,_bp
   51C8 08                13170 	inc	r0
   51C9 86 82             13171 	mov	dpl,@r0
   51CB 08                13172 	inc	r0
   51CC 86 83             13173 	mov	dph,@r0
   51CE 08                13174 	inc	r0
   51CF 86 F0             13175 	mov	b,@r0
   51D1 12 24 57          13176 	lcall	_trace_path
   51D4 AA 82             13177 	mov	r2,dpl
   51D6 E5 81             13178 	mov	a,sp
   51D8 24 F7             13179 	add	a,#0xf7
   51DA F5 81             13180 	mov	sp,a
                          13181 ;	genAssign
   51DC 8A 05             13182 	mov	ar5,r2
                          13183 ;	FatDrivers/tff.c:1358: if (res == FR_OK) {							/* Trace completed */
                          13184 ;	genIfx
   51DE ED                13185 	mov	a,r5
                          13186 ;	genIfxJump
   51DF 60 03             13187 	jz	00117$
   51E1 02 53 56          13188 	ljmp	00109$
   51E4                   13189 00117$:
                          13190 ;	FatDrivers/tff.c:1359: if (dir != NULL) {						/* It is not the root dir */
                          13191 ;	genAssign
                          13192 ;	genCmpEq
   51E4 E5 10             13193 	mov	a,_bp
   51E6 24 04             13194 	add	a,#0x04
   51E8 F8                13195 	mov	r0,a
                          13196 ;	gencjneshort
   51E9 B6 00 0B          13197 	cjne	@r0,#0x00,00118$
   51EC 08                13198 	inc	r0
   51ED B6 00 07          13199 	cjne	@r0,#0x00,00118$
   51F0 08                13200 	inc	r0
   51F1 B6 00 03          13201 	cjne	@r0,#0x00,00118$
   51F4 02 53 2C          13202 	ljmp	00107$
   51F7                   13203 00118$:
                          13204 ;	FatDrivers/tff.c:1360: if (dir[DIR_Attr] & AM_DIR) {		/* The entry is a directory */
                          13205 ;	genIpush
   51F7 C0 05             13206 	push	ar5
                          13207 ;	genPlus
   51F9 E5 10             13208 	mov	a,_bp
   51FB 24 04             13209 	add	a,#0x04
   51FD F8                13210 	mov	r0,a
                          13211 ;     genPlusIncr
   51FE 74 0B             13212 	mov	a,#0x0B
   5200 26                13213 	add	a,@r0
   5201 FE                13214 	mov	r6,a
                          13215 ;	Peephole 181	changed mov to clr
   5202 E4                13216 	clr	a
   5203 08                13217 	inc	r0
   5204 36                13218 	addc	a,@r0
   5205 FF                13219 	mov	r7,a
   5206 08                13220 	inc	r0
   5207 86 05             13221 	mov	ar5,@r0
                          13222 ;	genPointerGet
                          13223 ;	genGenPointerGet
   5209 8E 82             13224 	mov	dpl,r6
   520B 8F 83             13225 	mov	dph,r7
   520D 8D F0             13226 	mov	b,r5
   520F 12 62 42          13227 	lcall	__gptrget
                          13228 ;	genAnd
   5212 FE                13229 	mov	r6,a
                          13230 ;	Peephole 105	removed redundant mov
   5213 54 10             13231 	anl	a,#0x10
                          13232 ;	genIpop
   5215 D0 05             13233 	pop	ar5
                          13234 ;	genIfx
                          13235 ;	genIfxJump
   5217 70 03             13236 	jnz	00119$
   5219 02 53 2A          13237 	ljmp	00104$
   521C                   13238 00119$:
                          13239 ;	FatDrivers/tff.c:1361: dirobj->clust =
                          13240 ;	genIpush
   521C C0 05             13241 	push	ar5
                          13242 ;	genPlus
   521E A8 10             13243 	mov	r0,_bp
   5220 08                13244 	inc	r0
   5221 E5 10             13245 	mov	a,_bp
   5223 24 16             13246 	add	a,#0x16
   5225 F9                13247 	mov	r1,a
                          13248 ;     genPlusIncr
   5226 74 0B             13249 	mov	a,#0x0B
   5228 26                13250 	add	a,@r0
   5229 F7                13251 	mov	@r1,a
                          13252 ;	Peephole 181	changed mov to clr
   522A E4                13253 	clr	a
   522B 08                13254 	inc	r0
   522C 36                13255 	addc	a,@r0
   522D 09                13256 	inc	r1
   522E F7                13257 	mov	@r1,a
   522F 08                13258 	inc	r0
   5230 09                13259 	inc	r1
   5231 E6                13260 	mov	a,@r0
   5232 F7                13261 	mov	@r1,a
                          13262 ;	FatDrivers/tff.c:1363: ((DWORD)LD_WORD(&dir[DIR_FstClusHI]) << 16) |
                          13263 ;	genPlus
   5233 E5 10             13264 	mov	a,_bp
   5235 24 04             13265 	add	a,#0x04
   5237 F8                13266 	mov	r0,a
                          13267 ;     genPlusIncr
   5238 74 14             13268 	mov	a,#0x14
   523A 26                13269 	add	a,@r0
   523B FA                13270 	mov	r2,a
                          13271 ;	Peephole 181	changed mov to clr
   523C E4                13272 	clr	a
   523D 08                13273 	inc	r0
   523E 36                13274 	addc	a,@r0
   523F FB                13275 	mov	r3,a
   5240 08                13276 	inc	r0
   5241 86 04             13277 	mov	ar4,@r0
                          13278 ;	genPointerGet
                          13279 ;	genGenPointerGet
   5243 8A 82             13280 	mov	dpl,r2
   5245 8B 83             13281 	mov	dph,r3
   5247 8C F0             13282 	mov	b,r4
   5249 12 62 42          13283 	lcall	__gptrget
   524C FA                13284 	mov	r2,a
   524D A3                13285 	inc	dptr
   524E 12 62 42          13286 	lcall	__gptrget
   5251 FB                13287 	mov	r3,a
                          13288 ;	genCast
                          13289 ;	genLeftShift
                          13290 ;	genLeftShiftLiteral
                          13291 ;	Peephole 3.c	changed mov to clr
   5252 E4                13292 	clr	a
   5253 FC                13293 	mov	r4,a
   5254 FD                13294 	mov	r5,a
   5255 E5 10             13295 	mov	a,_bp
   5257 24 19             13296 	add	a,#0x19
                          13297 ;	genlshFour
                          13298 ;	Peephole 185	changed order of increment (acc incremented also!)
   5259 04                13299 	inc	a
                          13300 ;	Peephole 185	changed order of increment (acc incremented also!)
   525A 04                13301 	inc	a
                          13302 ;	Peephole 185	changed order of increment (acc incremented also!)
   525B 04                13303 	inc	a
   525C F8                13304 	mov	r0,a
   525D A6 03             13305 	mov	@r0,ar3
   525F 18                13306 	dec	r0
   5260 A6 02             13307 	mov	@r0,ar2
   5262 18                13308 	dec	r0
   5263 76 00             13309 	mov	@r0,#0x00
   5265 18                13310 	dec	r0
   5266 76 00             13311 	mov	@r0,#0x00
                          13312 ;	FatDrivers/tff.c:1365: LD_WORD(&dir[DIR_FstClusLO]);
                          13313 ;	genPlus
   5268 E5 10             13314 	mov	a,_bp
   526A 24 04             13315 	add	a,#0x04
   526C F8                13316 	mov	r0,a
                          13317 ;     genPlusIncr
   526D 74 1A             13318 	mov	a,#0x1A
   526F 26                13319 	add	a,@r0
   5270 FE                13320 	mov	r6,a
                          13321 ;	Peephole 181	changed mov to clr
   5271 E4                13322 	clr	a
   5272 08                13323 	inc	r0
   5273 36                13324 	addc	a,@r0
   5274 FF                13325 	mov	r7,a
   5275 08                13326 	inc	r0
   5276 86 02             13327 	mov	ar2,@r0
                          13328 ;	genPointerGet
                          13329 ;	genGenPointerGet
   5278 8E 82             13330 	mov	dpl,r6
   527A 8F 83             13331 	mov	dph,r7
   527C 8A F0             13332 	mov	b,r2
   527E 12 62 42          13333 	lcall	__gptrget
   5281 FE                13334 	mov	r6,a
   5282 A3                13335 	inc	dptr
   5283 12 62 42          13336 	lcall	__gptrget
   5286 FF                13337 	mov	r7,a
                          13338 ;	genCast
                          13339 ;	genOr
                          13340 ;	Peephole 3.c	changed mov to clr
   5287 E4                13341 	clr	a
   5288 FA                13342 	mov	r2,a
   5289 FB                13343 	mov	r3,a
   528A E5 10             13344 	mov	a,_bp
   528C 24 19             13345 	add	a,#0x19
   528E F8                13346 	mov	r0,a
   528F EE                13347 	mov	a,r6
   5290 46                13348 	orl	a,@r0
   5291 FE                13349 	mov	r6,a
   5292 EF                13350 	mov	a,r7
   5293 08                13351 	inc	r0
   5294 46                13352 	orl	a,@r0
   5295 FC                13353 	mov	r4,a
   5296 EA                13354 	mov	a,r2
   5297 08                13355 	inc	r0
   5298 46                13356 	orl	a,@r0
   5299 FA                13357 	mov	r2,a
   529A EB                13358 	mov	a,r3
   529B 08                13359 	inc	r0
   529C 46                13360 	orl	a,@r0
   529D FB                13361 	mov	r3,a
                          13362 ;	genPointerSet
                          13363 ;	genGenPointerSet
   529E E5 10             13364 	mov	a,_bp
   52A0 24 16             13365 	add	a,#0x16
   52A2 F8                13366 	mov	r0,a
   52A3 86 82             13367 	mov	dpl,@r0
   52A5 08                13368 	inc	r0
   52A6 86 83             13369 	mov	dph,@r0
   52A8 08                13370 	inc	r0
   52A9 86 F0             13371 	mov	b,@r0
   52AB EE                13372 	mov	a,r6
   52AC 12 5E A4          13373 	lcall	__gptrput
   52AF A3                13374 	inc	dptr
   52B0 EC                13375 	mov	a,r4
   52B1 12 5E A4          13376 	lcall	__gptrput
   52B4 A3                13377 	inc	dptr
   52B5 EA                13378 	mov	a,r2
   52B6 12 5E A4          13379 	lcall	__gptrput
   52B9 A3                13380 	inc	dptr
   52BA EB                13381 	mov	a,r3
   52BB 12 5E A4          13382 	lcall	__gptrput
                          13383 ;	FatDrivers/tff.c:1366: dirobj->sect = clust2sect(dirobj->clust);
                          13384 ;	genPlus
   52BE A8 10             13385 	mov	r0,_bp
   52C0 08                13386 	inc	r0
   52C1 E5 10             13387 	mov	a,_bp
   52C3 24 16             13388 	add	a,#0x16
   52C5 F9                13389 	mov	r1,a
                          13390 ;     genPlusIncr
   52C6 74 0F             13391 	mov	a,#0x0F
   52C8 26                13392 	add	a,@r0
   52C9 F7                13393 	mov	@r1,a
                          13394 ;	Peephole 181	changed mov to clr
   52CA E4                13395 	clr	a
   52CB 08                13396 	inc	r0
   52CC 36                13397 	addc	a,@r0
   52CD 09                13398 	inc	r1
   52CE F7                13399 	mov	@r1,a
   52CF 08                13400 	inc	r0
   52D0 09                13401 	inc	r1
   52D1 E6                13402 	mov	a,@r0
   52D2 F7                13403 	mov	@r1,a
                          13404 ;	genCall
   52D3 8E 82             13405 	mov	dpl,r6
   52D5 8C 83             13406 	mov	dph,r4
   52D7 8A F0             13407 	mov	b,r2
   52D9 EB                13408 	mov	a,r3
   52DA C0 05             13409 	push	ar5
   52DC 12 1B 9F          13410 	lcall	_clust2sect
   52DF AB 82             13411 	mov	r3,dpl
   52E1 AE 83             13412 	mov	r6,dph
   52E3 AF F0             13413 	mov	r7,b
   52E5 FA                13414 	mov	r2,a
   52E6 D0 05             13415 	pop	ar5
                          13416 ;	genPointerSet
                          13417 ;	genGenPointerSet
   52E8 E5 10             13418 	mov	a,_bp
   52EA 24 16             13419 	add	a,#0x16
   52EC F8                13420 	mov	r0,a
   52ED 86 82             13421 	mov	dpl,@r0
   52EF 08                13422 	inc	r0
   52F0 86 83             13423 	mov	dph,@r0
   52F2 08                13424 	inc	r0
   52F3 86 F0             13425 	mov	b,@r0
   52F5 EB                13426 	mov	a,r3
   52F6 12 5E A4          13427 	lcall	__gptrput
   52F9 A3                13428 	inc	dptr
   52FA EE                13429 	mov	a,r6
   52FB 12 5E A4          13430 	lcall	__gptrput
   52FE A3                13431 	inc	dptr
   52FF EF                13432 	mov	a,r7
   5300 12 5E A4          13433 	lcall	__gptrput
   5303 A3                13434 	inc	dptr
   5304 EA                13435 	mov	a,r2
   5305 12 5E A4          13436 	lcall	__gptrput
                          13437 ;	FatDrivers/tff.c:1367: dirobj->index = 2;
                          13438 ;	genPlus
   5308 A8 10             13439 	mov	r0,_bp
   530A 08                13440 	inc	r0
                          13441 ;     genPlusIncr
   530B 74 02             13442 	mov	a,#0x02
   530D 26                13443 	add	a,@r0
   530E FA                13444 	mov	r2,a
                          13445 ;	Peephole 181	changed mov to clr
   530F E4                13446 	clr	a
   5310 08                13447 	inc	r0
   5311 36                13448 	addc	a,@r0
   5312 FB                13449 	mov	r3,a
   5313 08                13450 	inc	r0
   5314 86 04             13451 	mov	ar4,@r0
                          13452 ;	genPointerSet
                          13453 ;	genGenPointerSet
   5316 8A 82             13454 	mov	dpl,r2
   5318 8B 83             13455 	mov	dph,r3
   531A 8C F0             13456 	mov	b,r4
   531C 74 02             13457 	mov	a,#0x02
   531E 12 5E A4          13458 	lcall	__gptrput
   5321 A3                13459 	inc	dptr
                          13460 ;	Peephole 181	changed mov to clr
   5322 E4                13461 	clr	a
   5323 12 5E A4          13462 	lcall	__gptrput
                          13463 ;	genIpop
   5326 D0 05             13464 	pop	ar5
                          13465 ;	Peephole 112.b	changed ljmp to sjmp
   5328 80 02             13466 	sjmp	00107$
   532A                   13467 00104$:
                          13468 ;	FatDrivers/tff.c:1369: res = FR_NO_FILE;
                          13469 ;	genAssign
   532A 7D 02             13470 	mov	r5,#0x02
   532C                   13471 00107$:
                          13472 ;	FatDrivers/tff.c:1372: dirobj->id = fs->id;
                          13473 ;	genPointerGet
                          13474 ;	genGenPointerGet
   532C E5 10             13475 	mov	a,_bp
   532E 24 13             13476 	add	a,#0x13
   5330 F8                13477 	mov	r0,a
   5331 86 82             13478 	mov	dpl,@r0
   5333 08                13479 	inc	r0
   5334 86 83             13480 	mov	dph,@r0
   5336 08                13481 	inc	r0
   5337 86 F0             13482 	mov	b,@r0
   5339 12 62 42          13483 	lcall	__gptrget
   533C FA                13484 	mov	r2,a
   533D A3                13485 	inc	dptr
   533E 12 62 42          13486 	lcall	__gptrget
   5341 FB                13487 	mov	r3,a
                          13488 ;	genPointerSet
                          13489 ;	genGenPointerSet
   5342 A8 10             13490 	mov	r0,_bp
   5344 08                13491 	inc	r0
   5345 86 82             13492 	mov	dpl,@r0
   5347 08                13493 	inc	r0
   5348 86 83             13494 	mov	dph,@r0
   534A 08                13495 	inc	r0
   534B 86 F0             13496 	mov	b,@r0
   534D EA                13497 	mov	a,r2
   534E 12 5E A4          13498 	lcall	__gptrput
   5351 A3                13499 	inc	dptr
   5352 EB                13500 	mov	a,r3
   5353 12 5E A4          13501 	lcall	__gptrput
   5356                   13502 00109$:
                          13503 ;	FatDrivers/tff.c:1374: return res;
                          13504 ;	genRet
   5356 8D 82             13505 	mov	dpl,r5
   5358                   13506 00110$:
   5358 85 10 81          13507 	mov	sp,_bp
   535B D0 10             13508 	pop	_bp
   535D 22                13509 	ret
                          13510 ;------------------------------------------------------------
                          13511 ;Allocation info for local variables in function 'f_readdir'
                          13512 ;------------------------------------------------------------
                          13513 ;finfo                     Allocated to stack - offset -5
                          13514 ;dirobj                    Allocated to stack - offset 1
                          13515 ;dir                       Allocated to registers r2 r3 r4 
                          13516 ;c                         Allocated to stack - offset 4
                          13517 ;res                       Allocated to registers r5 
                          13518 ;fs                        Allocated to stack - offset 5
                          13519 ;sloc0                     Allocated to stack - offset 8
                          13520 ;sloc1                     Allocated to stack - offset 11
                          13521 ;sloc2                     Allocated to stack - offset 14
                          13522 ;sloc3                     Allocated to stack - offset 17
                          13523 ;sloc4                     Allocated to stack - offset 20
                          13524 ;------------------------------------------------------------
                          13525 ;	FatDrivers/tff.c:1384: FRESULT f_readdir (
                          13526 ;	-----------------------------------------
                          13527 ;	 function f_readdir
                          13528 ;	-----------------------------------------
   535E                   13529 _f_readdir:
   535E C0 10             13530 	push	_bp
   5360 85 81 10          13531 	mov	_bp,sp
                          13532 ;     genReceive
   5363 C0 82             13533 	push	dpl
   5365 C0 83             13534 	push	dph
   5367 C0 F0             13535 	push	b
   5369 E5 81             13536 	mov	a,sp
   536B 24 17             13537 	add	a,#0x17
   536D F5 81             13538 	mov	sp,a
                          13539 ;	FatDrivers/tff.c:1391: FATFS *fs = dirobj->fs;
                          13540 ;	genPlus
   536F A8 10             13541 	mov	r0,_bp
   5371 08                13542 	inc	r0
                          13543 ;     genPlusIncr
   5372 74 04             13544 	mov	a,#0x04
   5374 26                13545 	add	a,@r0
   5375 FD                13546 	mov	r5,a
                          13547 ;	Peephole 181	changed mov to clr
   5376 E4                13548 	clr	a
   5377 08                13549 	inc	r0
   5378 36                13550 	addc	a,@r0
   5379 FE                13551 	mov	r6,a
   537A 08                13552 	inc	r0
   537B 86 07             13553 	mov	ar7,@r0
                          13554 ;	genPointerGet
                          13555 ;	genGenPointerGet
   537D 8D 82             13556 	mov	dpl,r5
   537F 8E 83             13557 	mov	dph,r6
   5381 8F F0             13558 	mov	b,r7
   5383 12 62 42          13559 	lcall	__gptrget
   5386 FD                13560 	mov	r5,a
   5387 A3                13561 	inc	dptr
   5388 12 62 42          13562 	lcall	__gptrget
   538B FE                13563 	mov	r6,a
   538C A3                13564 	inc	dptr
   538D 12 62 42          13565 	lcall	__gptrget
   5390 FF                13566 	mov	r7,a
                          13567 ;	genAssign
   5391 E5 10             13568 	mov	a,_bp
   5393 24 05             13569 	add	a,#0x05
   5395 F8                13570 	mov	r0,a
   5396 A6 05             13571 	mov	@r0,ar5
   5398 08                13572 	inc	r0
   5399 A6 06             13573 	mov	@r0,ar6
   539B 08                13574 	inc	r0
   539C A6 07             13575 	mov	@r0,ar7
                          13576 ;	FatDrivers/tff.c:1394: res = validate(fs, dirobj->id);			/* Check validity of the object */
                          13577 ;	genPointerGet
                          13578 ;	genGenPointerGet
   539E A8 10             13579 	mov	r0,_bp
   53A0 08                13580 	inc	r0
   53A1 86 82             13581 	mov	dpl,@r0
   53A3 08                13582 	inc	r0
   53A4 86 83             13583 	mov	dph,@r0
   53A6 08                13584 	inc	r0
   53A7 86 F0             13585 	mov	b,@r0
   53A9 12 62 42          13586 	lcall	__gptrget
   53AC FD                13587 	mov	r5,a
   53AD A3                13588 	inc	dptr
   53AE 12 62 42          13589 	lcall	__gptrget
   53B1 FE                13590 	mov	r6,a
                          13591 ;	genIpush
   53B2 C0 05             13592 	push	ar5
   53B4 C0 06             13593 	push	ar6
                          13594 ;	genCall
   53B6 E5 10             13595 	mov	a,_bp
   53B8 24 05             13596 	add	a,#0x05
   53BA F8                13597 	mov	r0,a
   53BB 86 82             13598 	mov	dpl,@r0
   53BD 08                13599 	inc	r0
   53BE 86 83             13600 	mov	dph,@r0
   53C0 08                13601 	inc	r0
   53C1 86 F0             13602 	mov	b,@r0
   53C3 12 32 FD          13603 	lcall	_validate
   53C6 AD 82             13604 	mov	r5,dpl
   53C8 15 81             13605 	dec	sp
   53CA 15 81             13606 	dec	sp
                          13607 ;	genAssign
                          13608 ;	FatDrivers/tff.c:1395: if (res != FR_OK) return res;
                          13609 ;	genCmpEq
                          13610 ;	gencjneshort
   53CC BD 00 02          13611 	cjne	r5,#0x00,00127$
                          13612 ;	Peephole 112.b	changed ljmp to sjmp
   53CF 80 05             13613 	sjmp	00102$
   53D1                   13614 00127$:
                          13615 ;	genRet
   53D1 8D 82             13616 	mov	dpl,r5
   53D3 02 55 C0          13617 	ljmp	00117$
   53D6                   13618 00102$:
                          13619 ;	FatDrivers/tff.c:1397: finfo->fname[0] = 0;
                          13620 ;	genIpush
                          13621 ;	genAssign
   53D6 E5 10             13622 	mov	a,_bp
   53D8 24 FB             13623 	add	a,#0xfffffffb
   53DA F8                13624 	mov	r0,a
   53DB 86 05             13625 	mov	ar5,@r0
   53DD 08                13626 	inc	r0
   53DE 86 06             13627 	mov	ar6,@r0
   53E0 08                13628 	inc	r0
   53E1 86 07             13629 	mov	ar7,@r0
                          13630 ;	genPlus
                          13631 ;     genPlusIncr
   53E3 74 09             13632 	mov	a,#0x09
                          13633 ;	Peephole 236.a	used r5 instead of ar5
   53E5 2D                13634 	add	a,r5
   53E6 FA                13635 	mov	r2,a
                          13636 ;	Peephole 181	changed mov to clr
   53E7 E4                13637 	clr	a
                          13638 ;	Peephole 236.b	used r6 instead of ar6
   53E8 3E                13639 	addc	a,r6
   53E9 FB                13640 	mov	r3,a
   53EA 8F 04             13641 	mov	ar4,r7
                          13642 ;	genCast
                          13643 ;	genPointerSet
                          13644 ;	genGenPointerSet
   53EC 8A 82             13645 	mov	dpl,r2
   53EE 8B 83             13646 	mov	dph,r3
   53F0 8C F0             13647 	mov	b,r4
                          13648 ;	Peephole 181	changed mov to clr
   53F2 E4                13649 	clr	a
   53F3 12 5E A4          13650 	lcall	__gptrput
                          13651 ;	FatDrivers/tff.c:1410: return FR_OK;
                          13652 ;	genIpop
                          13653 ;	FatDrivers/tff.c:1398: while (dirobj->sect) {
                          13654 ;	genPlus
   53F6 E5 10             13655 	mov	a,_bp
   53F8 24 05             13656 	add	a,#0x05
   53FA F8                13657 	mov	r0,a
   53FB E5 10             13658 	mov	a,_bp
   53FD 24 08             13659 	add	a,#0x08
   53FF F9                13660 	mov	r1,a
                          13661 ;     genPlusIncr
   5400 74 20             13662 	mov	a,#0x20
   5402 26                13663 	add	a,@r0
   5403 F7                13664 	mov	@r1,a
                          13665 ;	Peephole 181	changed mov to clr
   5404 E4                13666 	clr	a
   5405 08                13667 	inc	r0
   5406 36                13668 	addc	a,@r0
   5407 09                13669 	inc	r1
   5408 F7                13670 	mov	@r1,a
   5409 08                13671 	inc	r0
   540A 09                13672 	inc	r1
   540B E6                13673 	mov	a,@r0
   540C F7                13674 	mov	@r1,a
                          13675 ;	genPlus
   540D A8 10             13676 	mov	r0,_bp
   540F 08                13677 	inc	r0
   5410 E5 10             13678 	mov	a,_bp
   5412 24 0B             13679 	add	a,#0x0b
   5414 F9                13680 	mov	r1,a
                          13681 ;     genPlusIncr
   5415 74 02             13682 	mov	a,#0x02
   5417 26                13683 	add	a,@r0
   5418 F7                13684 	mov	@r1,a
                          13685 ;	Peephole 181	changed mov to clr
   5419 E4                13686 	clr	a
   541A 08                13687 	inc	r0
   541B 36                13688 	addc	a,@r0
   541C 09                13689 	inc	r1
   541D F7                13690 	mov	@r1,a
   541E 08                13691 	inc	r0
   541F 09                13692 	inc	r1
   5420 E6                13693 	mov	a,@r0
   5421 F7                13694 	mov	@r1,a
                          13695 ;	genPlus
   5422 E5 10             13696 	mov	a,_bp
   5424 24 0E             13697 	add	a,#0x0e
   5426 F8                13698 	mov	r0,a
                          13699 ;     genPlusIncr
   5427 74 09             13700 	mov	a,#0x09
                          13701 ;	Peephole 236.a	used r5 instead of ar5
   5429 2D                13702 	add	a,r5
   542A F6                13703 	mov	@r0,a
                          13704 ;	Peephole 181	changed mov to clr
   542B E4                13705 	clr	a
                          13706 ;	Peephole 236.b	used r6 instead of ar6
   542C 3E                13707 	addc	a,r6
   542D 08                13708 	inc	r0
   542E F6                13709 	mov	@r0,a
   542F 08                13710 	inc	r0
   5430 A6 07             13711 	mov	@r0,ar7
                          13712 ;	genPlus
   5432 A8 10             13713 	mov	r0,_bp
   5434 08                13714 	inc	r0
   5435 E5 10             13715 	mov	a,_bp
   5437 24 11             13716 	add	a,#0x11
   5439 F9                13717 	mov	r1,a
                          13718 ;     genPlusIncr
   543A 74 0F             13719 	mov	a,#0x0F
   543C 26                13720 	add	a,@r0
   543D F7                13721 	mov	@r1,a
                          13722 ;	Peephole 181	changed mov to clr
   543E E4                13723 	clr	a
   543F 08                13724 	inc	r0
   5440 36                13725 	addc	a,@r0
   5441 09                13726 	inc	r1
   5442 F7                13727 	mov	@r1,a
   5443 08                13728 	inc	r0
   5444 09                13729 	inc	r1
   5445 E6                13730 	mov	a,@r0
   5446 F7                13731 	mov	@r1,a
   5447                   13732 00114$:
                          13733 ;	genPointerGet
                          13734 ;	genGenPointerGet
   5447 E5 10             13735 	mov	a,_bp
   5449 24 11             13736 	add	a,#0x11
   544B F8                13737 	mov	r0,a
   544C 86 82             13738 	mov	dpl,@r0
   544E 08                13739 	inc	r0
   544F 86 83             13740 	mov	dph,@r0
   5451 08                13741 	inc	r0
   5452 86 F0             13742 	mov	b,@r0
   5454 E5 10             13743 	mov	a,_bp
   5456 24 14             13744 	add	a,#0x14
   5458 F9                13745 	mov	r1,a
   5459 12 62 42          13746 	lcall	__gptrget
   545C F7                13747 	mov	@r1,a
   545D A3                13748 	inc	dptr
   545E 12 62 42          13749 	lcall	__gptrget
   5461 09                13750 	inc	r1
   5462 F7                13751 	mov	@r1,a
   5463 A3                13752 	inc	dptr
   5464 12 62 42          13753 	lcall	__gptrget
   5467 09                13754 	inc	r1
   5468 F7                13755 	mov	@r1,a
   5469 A3                13756 	inc	dptr
   546A 12 62 42          13757 	lcall	__gptrget
   546D 09                13758 	inc	r1
   546E F7                13759 	mov	@r1,a
                          13760 ;	genIfx
   546F E5 10             13761 	mov	a,_bp
   5471 24 14             13762 	add	a,#0x14
   5473 F8                13763 	mov	r0,a
   5474 E6                13764 	mov	a,@r0
   5475 08                13765 	inc	r0
   5476 46                13766 	orl	a,@r0
   5477 08                13767 	inc	r0
   5478 46                13768 	orl	a,@r0
   5479 08                13769 	inc	r0
   547A 46                13770 	orl	a,@r0
                          13771 ;	genIfxJump
   547B 70 03             13772 	jnz	00128$
   547D 02 55 BD          13773 	ljmp	00116$
   5480                   13774 00128$:
                          13775 ;	FatDrivers/tff.c:1399: if (!move_window(dirobj->sect))
                          13776 ;	genCall
   5480 E5 10             13777 	mov	a,_bp
   5482 24 14             13778 	add	a,#0x14
   5484 F8                13779 	mov	r0,a
   5485 86 82             13780 	mov	dpl,@r0
   5487 08                13781 	inc	r0
   5488 86 83             13782 	mov	dph,@r0
   548A 08                13783 	inc	r0
   548B 86 F0             13784 	mov	b,@r0
   548D 08                13785 	inc	r0
   548E E6                13786 	mov	a,@r0
   548F C0 05             13787 	push	ar5
   5491 C0 06             13788 	push	ar6
   5493 C0 07             13789 	push	ar7
   5495 12 17 79          13790 	lcall	_move_window
   5498 E5 82             13791 	mov	a,dpl
   549A D0 07             13792 	pop	ar7
   549C D0 06             13793 	pop	ar6
   549E D0 05             13794 	pop	ar5
                          13795 ;	genIfx
                          13796 ;	genIfxJump
                          13797 ;	Peephole 108.b	removed ljmp by inverse jump logic
   54A0 70 06             13798 	jnz	00104$
                          13799 ;	Peephole 300	removed redundant label 00129$
                          13800 ;	FatDrivers/tff.c:1400: return FR_RW_ERROR;
                          13801 ;	genRet
   54A2 75 82 08          13802 	mov	dpl,#0x08
   54A5 02 55 C0          13803 	ljmp	00117$
   54A8                   13804 00104$:
                          13805 ;	FatDrivers/tff.c:1401: dir = &fs->win[(dirobj->index & 15) * 32];		/* pointer to the directory entry */
                          13806 ;	genIpush
   54A8 C0 05             13807 	push	ar5
   54AA C0 06             13808 	push	ar6
   54AC C0 07             13809 	push	ar7
                          13810 ;	genPointerGet
                          13811 ;	genGenPointerGet
   54AE E5 10             13812 	mov	a,_bp
   54B0 24 0B             13813 	add	a,#0x0b
   54B2 F8                13814 	mov	r0,a
   54B3 86 82             13815 	mov	dpl,@r0
   54B5 08                13816 	inc	r0
   54B6 86 83             13817 	mov	dph,@r0
   54B8 08                13818 	inc	r0
   54B9 86 F0             13819 	mov	b,@r0
   54BB 12 62 42          13820 	lcall	__gptrget
   54BE FD                13821 	mov	r5,a
   54BF A3                13822 	inc	dptr
   54C0 12 62 42          13823 	lcall	__gptrget
   54C3 FE                13824 	mov	r6,a
                          13825 ;	genAnd
   54C4 53 05 0F          13826 	anl	ar5,#0x0F
                          13827 ;	genLeftShift
                          13828 ;	genLeftShiftLiteral
                          13829 ;	genlshTwo
                          13830 ;	peephole 177.g	optimized mov sequence
                          13831 ;	Peephole 181	changed mov to clr
   54C7 E4                13832 	clr	a
   54C8 FE                13833 	mov	r6,a
   54C9 C4                13834 	swap	a
   54CA 23                13835 	rl	a
   54CB 54 E0             13836 	anl	a,#0xe0
   54CD CD                13837 	xch	a,r5
   54CE C4                13838 	swap	a
   54CF 23                13839 	rl	a
   54D0 CD                13840 	xch	a,r5
   54D1 6D                13841 	xrl	a,r5
   54D2 CD                13842 	xch	a,r5
   54D3 54 E0             13843 	anl	a,#0xe0
   54D5 CD                13844 	xch	a,r5
   54D6 6D                13845 	xrl	a,r5
   54D7 FE                13846 	mov	r6,a
                          13847 ;	genPlus
   54D8 E5 10             13848 	mov	a,_bp
   54DA 24 08             13849 	add	a,#0x08
   54DC F8                13850 	mov	r0,a
                          13851 ;	Peephole 236.g	used r5 instead of ar5
   54DD ED                13852 	mov	a,r5
   54DE 26                13853 	add	a,@r0
   54DF FD                13854 	mov	r5,a
                          13855 ;	Peephole 236.g	used r6 instead of ar6
   54E0 EE                13856 	mov	a,r6
   54E1 08                13857 	inc	r0
   54E2 36                13858 	addc	a,@r0
   54E3 FE                13859 	mov	r6,a
   54E4 08                13860 	inc	r0
   54E5 86 07             13861 	mov	ar7,@r0
                          13862 ;	genAssign
   54E7 8D 02             13863 	mov	ar2,r5
   54E9 8E 03             13864 	mov	ar3,r6
   54EB 8F 04             13865 	mov	ar4,r7
                          13866 ;	FatDrivers/tff.c:1402: c = dir[DIR_Name];
                          13867 ;	genPointerGet
                          13868 ;	genGenPointerGet
   54ED 8A 82             13869 	mov	dpl,r2
   54EF 8B 83             13870 	mov	dph,r3
   54F1 8C F0             13871 	mov	b,r4
   54F3 12 62 42          13872 	lcall	__gptrget
   54F6 FD                13873 	mov	r5,a
                          13874 ;	genAssign
   54F7 E5 10             13875 	mov	a,_bp
   54F9 24 04             13876 	add	a,#0x04
   54FB F8                13877 	mov	r0,a
   54FC A6 05             13878 	mov	@r0,ar5
                          13879 ;	FatDrivers/tff.c:1403: if (c == 0) break;								/* Has it reached to end of dir? */
                          13880 ;	genIpop
   54FE D0 07             13881 	pop	ar7
   5500 D0 06             13882 	pop	ar6
   5502 D0 05             13883 	pop	ar5
                          13884 ;	genIfx
   5504 E5 10             13885 	mov	a,_bp
   5506 24 04             13886 	add	a,#0x04
   5508 F8                13887 	mov	r0,a
   5509 E6                13888 	mov	a,@r0
                          13889 ;	genIfxJump
   550A 70 03             13890 	jnz	00130$
   550C 02 55 BD          13891 	ljmp	00116$
   550F                   13892 00130$:
                          13893 ;	FatDrivers/tff.c:1404: if (c != 0xE5 && !(dir[DIR_Attr] & AM_VOL))		/* Is it a valid entry? */
                          13894 ;	genCmpEq
   550F E5 10             13895 	mov	a,_bp
   5511 24 04             13896 	add	a,#0x04
   5513 F8                13897 	mov	r0,a
                          13898 ;	gencjneshort
   5514 B6 E5 02          13899 	cjne	@r0,#0xE5,00131$
                          13900 ;	Peephole 112.b	changed ljmp to sjmp
   5517 80 44             13901 	sjmp	00108$
   5519                   13902 00131$:
                          13903 ;	genIpush
   5519 C0 05             13904 	push	ar5
   551B C0 06             13905 	push	ar6
   551D C0 07             13906 	push	ar7
                          13907 ;	genPlus
                          13908 ;     genPlusIncr
   551F 74 0B             13909 	mov	a,#0x0B
                          13910 ;	Peephole 236.a	used r2 instead of ar2
   5521 2A                13911 	add	a,r2
   5522 FD                13912 	mov	r5,a
                          13913 ;	Peephole 181	changed mov to clr
   5523 E4                13914 	clr	a
                          13915 ;	Peephole 236.b	used r3 instead of ar3
   5524 3B                13916 	addc	a,r3
   5525 FE                13917 	mov	r6,a
   5526 8C 07             13918 	mov	ar7,r4
                          13919 ;	genPointerGet
                          13920 ;	genGenPointerGet
   5528 8D 82             13921 	mov	dpl,r5
   552A 8E 83             13922 	mov	dph,r6
   552C 8F F0             13923 	mov	b,r7
   552E 12 62 42          13924 	lcall	__gptrget
                          13925 ;	genAnd
   5531 FD                13926 	mov	r5,a
                          13927 ;	Peephole 105	removed redundant mov
   5532 54 08             13928 	anl	a,#0x08
                          13929 ;	genIpop
   5534 D0 07             13930 	pop	ar7
   5536 D0 06             13931 	pop	ar6
   5538 D0 05             13932 	pop	ar5
                          13933 ;	genIfx
                          13934 ;	genIfxJump
                          13935 ;	Peephole 108.b	removed ljmp by inverse jump logic
   553A 70 21             13936 	jnz	00108$
                          13937 ;	Peephole 300	removed redundant label 00132$
                          13938 ;	FatDrivers/tff.c:1405: get_fileinfo(finfo, dir);
                          13939 ;	genIpush
   553C C0 05             13940 	push	ar5
   553E C0 06             13941 	push	ar6
   5540 C0 07             13942 	push	ar7
   5542 C0 02             13943 	push	ar2
   5544 C0 03             13944 	push	ar3
   5546 C0 04             13945 	push	ar4
                          13946 ;	genCall
   5548 8D 82             13947 	mov	dpl,r5
   554A 8E 83             13948 	mov	dph,r6
   554C 8F F0             13949 	mov	b,r7
   554E 12 1F 53          13950 	lcall	_get_fileinfo
   5551 15 81             13951 	dec	sp
   5553 15 81             13952 	dec	sp
   5555 15 81             13953 	dec	sp
   5557 D0 07             13954 	pop	ar7
   5559 D0 06             13955 	pop	ar6
   555B D0 05             13956 	pop	ar5
   555D                   13957 00108$:
                          13958 ;	FatDrivers/tff.c:1406: if (!next_dir_entry(dirobj)) dirobj->sect = 0;	/* Next entry */
                          13959 ;	genCall
   555D A8 10             13960 	mov	r0,_bp
   555F 08                13961 	inc	r0
   5560 86 82             13962 	mov	dpl,@r0
   5562 08                13963 	inc	r0
   5563 86 83             13964 	mov	dph,@r0
   5565 08                13965 	inc	r0
   5566 86 F0             13966 	mov	b,@r0
   5568 C0 05             13967 	push	ar5
   556A C0 06             13968 	push	ar6
   556C C0 07             13969 	push	ar7
   556E 12 1C C2          13970 	lcall	_next_dir_entry
   5571 E5 82             13971 	mov	a,dpl
   5573 D0 07             13972 	pop	ar7
   5575 D0 06             13973 	pop	ar6
   5577 D0 05             13974 	pop	ar5
                          13975 ;	genIfx
                          13976 ;	genIfxJump
                          13977 ;	Peephole 108.b	removed ljmp by inverse jump logic
   5579 70 27             13978 	jnz	00111$
                          13979 ;	Peephole 300	removed redundant label 00133$
                          13980 ;	genPlus
   557B A8 10             13981 	mov	r0,_bp
   557D 08                13982 	inc	r0
                          13983 ;     genPlusIncr
   557E 74 0F             13984 	mov	a,#0x0F
   5580 26                13985 	add	a,@r0
   5581 FA                13986 	mov	r2,a
                          13987 ;	Peephole 181	changed mov to clr
   5582 E4                13988 	clr	a
   5583 08                13989 	inc	r0
   5584 36                13990 	addc	a,@r0
   5585 FB                13991 	mov	r3,a
   5586 08                13992 	inc	r0
   5587 86 04             13993 	mov	ar4,@r0
                          13994 ;	genPointerSet
                          13995 ;	genGenPointerSet
   5589 8A 82             13996 	mov	dpl,r2
   558B 8B 83             13997 	mov	dph,r3
   558D 8C F0             13998 	mov	b,r4
                          13999 ;	Peephole 181	changed mov to clr
   558F E4                14000 	clr	a
   5590 12 5E A4          14001 	lcall	__gptrput
   5593 A3                14002 	inc	dptr
                          14003 ;	Peephole 181	changed mov to clr
   5594 E4                14004 	clr	a
   5595 12 5E A4          14005 	lcall	__gptrput
   5598 A3                14006 	inc	dptr
                          14007 ;	Peephole 181	changed mov to clr
   5599 E4                14008 	clr	a
   559A 12 5E A4          14009 	lcall	__gptrput
   559D A3                14010 	inc	dptr
                          14011 ;	Peephole 181	changed mov to clr
   559E E4                14012 	clr	a
   559F 12 5E A4          14013 	lcall	__gptrput
   55A2                   14014 00111$:
                          14015 ;	FatDrivers/tff.c:1407: if (finfo->fname[0]) break;						/* Found valid entry */
                          14016 ;	genCast
   55A2 E5 10             14017 	mov	a,_bp
   55A4 24 0E             14018 	add	a,#0x0e
   55A6 F8                14019 	mov	r0,a
   55A7 86 02             14020 	mov	ar2,@r0
   55A9 08                14021 	inc	r0
   55AA 86 03             14022 	mov	ar3,@r0
   55AC 08                14023 	inc	r0
   55AD 86 04             14024 	mov	ar4,@r0
                          14025 ;	genPointerGet
                          14026 ;	genGenPointerGet
   55AF 8A 82             14027 	mov	dpl,r2
   55B1 8B 83             14028 	mov	dph,r3
   55B3 8C F0             14029 	mov	b,r4
   55B5 12 62 42          14030 	lcall	__gptrget
                          14031 ;	genIfxJump
   55B8 70 03             14032 	jnz	00134$
   55BA 02 54 47          14033 	ljmp	00114$
   55BD                   14034 00134$:
   55BD                   14035 00116$:
                          14036 ;	FatDrivers/tff.c:1410: return FR_OK;
                          14037 ;	genRet
   55BD 75 82 00          14038 	mov	dpl,#0x00
   55C0                   14039 00117$:
   55C0 85 10 81          14040 	mov	sp,_bp
   55C3 D0 10             14041 	pop	_bp
   55C5 22                14042 	ret
                          14043 	.area CSEG    (CODE)
                          14044 	.area CONST   (CODE)
   7335                   14045 __str_0:
   7335 46 41 54          14046 	.ascii "FAT"
   7338 00                14047 	.db 0x00
   7339                   14048 __str_1:
   7339 46 41 54 33 32    14049 	.ascii "FAT32"
   733E 00                14050 	.db 0x00
                          14051 	.area XINIT   (CODE)
