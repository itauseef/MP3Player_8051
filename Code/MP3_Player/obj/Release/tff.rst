                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : FreeWare ANSI-C Compiler
                              3 ; Version 2.6.0 #4309 (Jul 28 2006)
                              4 ; This file generated Tue Apr 21 22:20:47 2015
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
                             16 	.globl _f_close
                             17 	.globl _f_lseek
                             18 	.globl _f_opendir
                             19 	.globl _f_readdir
                             20 ;--------------------------------------------------------
                             21 ; special function registers
                             22 ;--------------------------------------------------------
                             23 	.area RSEG    (DATA)
                             24 ;--------------------------------------------------------
                             25 ; special function bits
                             26 ;--------------------------------------------------------
                             27 	.area RSEG    (DATA)
                             28 ;--------------------------------------------------------
                             29 ; overlayable register banks
                             30 ;--------------------------------------------------------
                             31 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                      32 	.ds 8
                             33 ;--------------------------------------------------------
                             34 ; internal ram data
                             35 ;--------------------------------------------------------
                             36 	.area DSEG    (DATA)
                    0000     37 Ftff$FatFs$0$0==.
   000A                      38 _FatFs:
   000A                      39 	.ds 3
                    0003     40 Ftff$fsid$0$0==.
   000D                      41 _fsid:
   000D                      42 	.ds 2
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
                    0000     63 G$Stat$0$0==.
   0049                      64 _Stat::
   0049                      65 	.ds 1
                             66 ;--------------------------------------------------------
                             67 ; external initialized ram data
                             68 ;--------------------------------------------------------
                             69 	.area XISEG   (XDATA)
                             70 	.area HOME    (CODE)
                             71 	.area GSINIT0 (CODE)
                             72 	.area GSINIT1 (CODE)
                             73 	.area GSINIT2 (CODE)
                             74 	.area GSINIT3 (CODE)
                             75 	.area GSINIT4 (CODE)
                             76 	.area GSINIT5 (CODE)
                             77 	.area GSINIT  (CODE)
                             78 	.area GSFINAL (CODE)
                             79 	.area CSEG    (CODE)
                             80 ;--------------------------------------------------------
                             81 ; global & static initialisations
                             82 ;--------------------------------------------------------
                             83 	.area HOME    (CODE)
                             84 	.area GSINIT  (CODE)
                             85 	.area GSFINAL (CODE)
                             86 	.area GSINIT  (CODE)
                             87 ;--------------------------------------------------------
                             88 ; Home
                             89 ;--------------------------------------------------------
                             90 	.area HOME    (CODE)
                             91 	.area CSEG    (CODE)
                             92 ;--------------------------------------------------------
                             93 ; code
                             94 ;--------------------------------------------------------
                             95 	.area CSEG    (CODE)
                             96 ;------------------------------------------------------------
                             97 ;Allocation info for local variables in function 'move_window'
                             98 ;------------------------------------------------------------
                             99 ;sector                    Allocated to stack - offset 1
                            100 ;wsect                     Allocated to registers r6 r7 r2 r3 
                            101 ;fs                        Allocated to stack - offset 5
                            102 ;------------------------------------------------------------
                    0000    103 	Ftff$move_window$0$0 ==.
                    0000    104 	C$tff.c$60$0$0 ==.
                            105 ;	tff.c:60: BOOL move_window (		/* TRUE: successful, FALSE: failed */
                            106 ;	-----------------------------------------
                            107 ;	 function move_window
                            108 ;	-----------------------------------------
   0BE1                     109 _move_window:
                    0002    110 	ar2 = 0x02
                    0003    111 	ar3 = 0x03
                    0004    112 	ar4 = 0x04
                    0005    113 	ar5 = 0x05
                    0006    114 	ar6 = 0x06
                    0007    115 	ar7 = 0x07
                    0000    116 	ar0 = 0x00
                    0001    117 	ar1 = 0x01
   0BE1 C0 0F               118 	push	_bp
   0BE3 85 81 0F            119 	mov	_bp,sp
                            120 ;     genReceive
   0BE6 C0 82               121 	push	dpl
   0BE8 C0 83               122 	push	dph
   0BEA C0 F0               123 	push	b
   0BEC C0 E0               124 	push	acc
   0BEE 05 81               125 	inc	sp
   0BF0 05 81               126 	inc	sp
   0BF2 05 81               127 	inc	sp
                    0013    128 	C$tff.c$65$1$0 ==.
                            129 ;	tff.c:65: FATFS *fs = FatFs;
                            130 ;	genAssign
   0BF4 E5 0F               131 	mov	a,_bp
   0BF6 24 05               132 	add	a,#0x05
   0BF8 F8                  133 	mov	r0,a
   0BF9 A6 0A               134 	mov	@r0,_FatFs
   0BFB 08                  135 	inc	r0
   0BFC A6 0B               136 	mov	@r0,(_FatFs + 1)
   0BFE 08                  137 	inc	r0
   0BFF A6 0C               138 	mov	@r0,(_FatFs + 2)
                    0020    139 	C$tff.c$68$1$1 ==.
                            140 ;	tff.c:68: wsect = fs->winsect;
                            141 ;	genPlus
   0C01 E5 0F               142 	mov	a,_bp
   0C03 24 05               143 	add	a,#0x05
   0C05 F8                  144 	mov	r0,a
                            145 ;     genPlusIncr
   0C06 74 04               146 	mov	a,#0x04
   0C08 26                  147 	add	a,@r0
   0C09 FE                  148 	mov	r6,a
                            149 ;	Peephole 181	changed mov to clr
   0C0A E4                  150 	clr	a
   0C0B 08                  151 	inc	r0
   0C0C 36                  152 	addc	a,@r0
   0C0D FF                  153 	mov	r7,a
   0C0E 08                  154 	inc	r0
   0C0F 86 02               155 	mov	ar2,@r0
                            156 ;	genPointerGet
                            157 ;	genGenPointerGet
   0C11 8E 82               158 	mov	dpl,r6
   0C13 8F 83               159 	mov	dph,r7
   0C15 8A F0               160 	mov	b,r2
   0C17 12 47 8A            161 	lcall	__gptrget
   0C1A FE                  162 	mov	r6,a
   0C1B A3                  163 	inc	dptr
   0C1C 12 47 8A            164 	lcall	__gptrget
   0C1F FF                  165 	mov	r7,a
   0C20 A3                  166 	inc	dptr
   0C21 12 47 8A            167 	lcall	__gptrget
   0C24 FA                  168 	mov	r2,a
   0C25 A3                  169 	inc	dptr
   0C26 12 47 8A            170 	lcall	__gptrget
   0C29 FB                  171 	mov	r3,a
                            172 ;	genAssign
                    0049    173 	C$tff.c$69$1$1 ==.
                            174 ;	tff.c:69: if (wsect != sector) {	/* Changed current window */
                            175 ;	genCmpEq
   0C2A A8 0F               176 	mov	r0,_bp
   0C2C 08                  177 	inc	r0
                            178 ;	gencjneshort
   0C2D E6                  179 	mov	a,@r0
   0C2E B5 06 12            180 	cjne	a,ar6,00112$
   0C31 08                  181 	inc	r0
   0C32 E6                  182 	mov	a,@r0
   0C33 B5 07 0D            183 	cjne	a,ar7,00112$
   0C36 08                  184 	inc	r0
   0C37 E6                  185 	mov	a,@r0
   0C38 B5 02 08            186 	cjne	a,ar2,00112$
   0C3B 08                  187 	inc	r0
   0C3C E6                  188 	mov	a,@r0
   0C3D B5 03 03            189 	cjne	a,ar3,00112$
   0C40 02 0C C2            190 	ljmp	00106$
   0C43                     191 00112$:
                    0062    192 	C$tff.c$84$2$2 ==.
                            193 ;	tff.c:84: if (sector) {
                            194 ;	genIfx
   0C43 A8 0F               195 	mov	r0,_bp
   0C45 08                  196 	inc	r0
   0C46 E6                  197 	mov	a,@r0
   0C47 08                  198 	inc	r0
   0C48 46                  199 	orl	a,@r0
   0C49 08                  200 	inc	r0
   0C4A 46                  201 	orl	a,@r0
   0C4B 08                  202 	inc	r0
   0C4C 46                  203 	orl	a,@r0
                            204 ;	genIfxJump
                            205 ;	Peephole 108.c	removed ljmp by inverse jump logic
   0C4D 60 73               206 	jz	00106$
                            207 ;	Peephole 300	removed redundant label 00113$
                    006E    208 	C$tff.c$85$3$3 ==.
                            209 ;	tff.c:85: if (disk_read(0, fs->win, sector, 1) != RES_OK)
                            210 ;	genPlus
   0C4F E5 0F               211 	mov	a,_bp
   0C51 24 05               212 	add	a,#0x05
   0C53 F8                  213 	mov	r0,a
                            214 ;     genPlusIncr
   0C54 74 20               215 	mov	a,#0x20
   0C56 26                  216 	add	a,@r0
   0C57 FA                  217 	mov	r2,a
                            218 ;	Peephole 181	changed mov to clr
   0C58 E4                  219 	clr	a
   0C59 08                  220 	inc	r0
   0C5A 36                  221 	addc	a,@r0
   0C5B FB                  222 	mov	r3,a
   0C5C 08                  223 	inc	r0
   0C5D 86 04               224 	mov	ar4,@r0
                            225 ;	genIpush
   0C5F 74 01               226 	mov	a,#0x01
   0C61 C0 E0               227 	push	acc
                            228 ;	genIpush
   0C63 A8 0F               229 	mov	r0,_bp
   0C65 08                  230 	inc	r0
   0C66 E6                  231 	mov	a,@r0
   0C67 C0 E0               232 	push	acc
   0C69 08                  233 	inc	r0
   0C6A E6                  234 	mov	a,@r0
   0C6B C0 E0               235 	push	acc
   0C6D 08                  236 	inc	r0
   0C6E E6                  237 	mov	a,@r0
   0C6F C0 E0               238 	push	acc
   0C71 08                  239 	inc	r0
   0C72 E6                  240 	mov	a,@r0
   0C73 C0 E0               241 	push	acc
                            242 ;	genIpush
   0C75 C0 02               243 	push	ar2
   0C77 C0 03               244 	push	ar3
   0C79 C0 04               245 	push	ar4
                            246 ;	genCall
   0C7B 75 82 00            247 	mov	dpl,#0x00
   0C7E 12 00 92            248 	lcall	_disk_read
   0C81 AA 82               249 	mov	r2,dpl
   0C83 E5 81               250 	mov	a,sp
   0C85 24 F8               251 	add	a,#0xf8
   0C87 F5 81               252 	mov	sp,a
                            253 ;	genCmpEq
                            254 ;	gencjneshort
   0C89 BA 00 02            255 	cjne	r2,#0x00,00114$
                            256 ;	Peephole 112.b	changed ljmp to sjmp
   0C8C 80 05               257 	sjmp	00102$
   0C8E                     258 00114$:
                    00AD    259 	C$tff.c$86$3$3 ==.
                            260 ;	tff.c:86: return FALSE;
                            261 ;	genRet
   0C8E 75 82 00            262 	mov	dpl,#0x00
                            263 ;	Peephole 112.b	changed ljmp to sjmp
   0C91 80 32               264 	sjmp	00107$
   0C93                     265 00102$:
                    00B2    266 	C$tff.c$87$3$3 ==.
                            267 ;	tff.c:87: fs->winsect = sector;
                            268 ;	genPlus
   0C93 E5 0F               269 	mov	a,_bp
   0C95 24 05               270 	add	a,#0x05
   0C97 F8                  271 	mov	r0,a
                            272 ;     genPlusIncr
   0C98 74 04               273 	mov	a,#0x04
   0C9A 26                  274 	add	a,@r0
   0C9B FA                  275 	mov	r2,a
                            276 ;	Peephole 181	changed mov to clr
   0C9C E4                  277 	clr	a
   0C9D 08                  278 	inc	r0
   0C9E 36                  279 	addc	a,@r0
   0C9F FB                  280 	mov	r3,a
   0CA0 08                  281 	inc	r0
   0CA1 86 04               282 	mov	ar4,@r0
                            283 ;	genPointerSet
                            284 ;	genGenPointerSet
   0CA3 8A 82               285 	mov	dpl,r2
   0CA5 8B 83               286 	mov	dph,r3
   0CA7 8C F0               287 	mov	b,r4
   0CA9 A8 0F               288 	mov	r0,_bp
   0CAB 08                  289 	inc	r0
   0CAC E6                  290 	mov	a,@r0
   0CAD 12 42 DC            291 	lcall	__gptrput
   0CB0 A3                  292 	inc	dptr
   0CB1 08                  293 	inc	r0
   0CB2 E6                  294 	mov	a,@r0
   0CB3 12 42 DC            295 	lcall	__gptrput
   0CB6 A3                  296 	inc	dptr
   0CB7 08                  297 	inc	r0
   0CB8 E6                  298 	mov	a,@r0
   0CB9 12 42 DC            299 	lcall	__gptrput
   0CBC A3                  300 	inc	dptr
   0CBD 08                  301 	inc	r0
   0CBE E6                  302 	mov	a,@r0
   0CBF 12 42 DC            303 	lcall	__gptrput
   0CC2                     304 00106$:
                    00E1    305 	C$tff.c$90$1$1 ==.
                            306 ;	tff.c:90: return TRUE;
                            307 ;	genRet
   0CC2 75 82 01            308 	mov	dpl,#0x01
   0CC5                     309 00107$:
   0CC5 85 0F 81            310 	mov	sp,_bp
   0CC8 D0 0F               311 	pop	_bp
                    00E9    312 	C$tff.c$91$1$1 ==.
                    00E9    313 	XFtff$move_window$0$0 ==.
   0CCA 22                  314 	ret
                            315 ;------------------------------------------------------------
                            316 ;Allocation info for local variables in function 'get_cluster'
                            317 ;------------------------------------------------------------
                            318 ;clust                     Allocated to stack - offset 1
                            319 ;wc                        Allocated to stack - offset 5
                            320 ;bc                        Allocated to stack - offset 7
                            321 ;fatsect                   Allocated to stack - offset 9
                            322 ;fs                        Allocated to stack - offset 13
                            323 ;sloc0                     Allocated to stack - offset 16
                            324 ;sloc1                     Allocated to stack - offset 19
                            325 ;------------------------------------------------------------
                    00EA    326 	Ftff$get_cluster$0$0 ==.
                    00EA    327 	C$tff.c$137$1$1 ==.
                            328 ;	tff.c:137: CLUST get_cluster (		/* 0,>=2: successful, 1: failed */
                            329 ;	-----------------------------------------
                            330 ;	 function get_cluster
                            331 ;	-----------------------------------------
   0CCB                     332 _get_cluster:
   0CCB C0 0F               333 	push	_bp
   0CCD 85 81 0F            334 	mov	_bp,sp
                            335 ;     genReceive
   0CD0 C0 82               336 	push	dpl
   0CD2 C0 83               337 	push	dph
   0CD4 C0 F0               338 	push	b
   0CD6 C0 E0               339 	push	acc
   0CD8 E5 81               340 	mov	a,sp
   0CDA 24 16               341 	add	a,#0x16
   0CDC F5 81               342 	mov	sp,a
                    00FD    343 	C$tff.c$143$1$1 ==.
                            344 ;	tff.c:143: FATFS *fs = FatFs;
                            345 ;	genAssign
   0CDE E5 0F               346 	mov	a,_bp
   0CE0 24 0D               347 	add	a,#0x0d
   0CE2 F8                  348 	mov	r0,a
   0CE3 A6 0A               349 	mov	@r0,_FatFs
   0CE5 08                  350 	inc	r0
   0CE6 A6 0B               351 	mov	@r0,(_FatFs + 1)
   0CE8 08                  352 	inc	r0
   0CE9 A6 0C               353 	mov	@r0,(_FatFs + 2)
                    010A    354 	C$tff.c$146$1$1 ==.
                            355 ;	tff.c:146: if (clust >= 2 && clust < fs->max_clust) {		/* Valid cluster# */
                            356 ;	genCmpLt
   0CEB A8 0F               357 	mov	r0,_bp
   0CED 08                  358 	inc	r0
                            359 ;	genCmp
   0CEE C3                  360 	clr	c
   0CEF E6                  361 	mov	a,@r0
   0CF0 94 02               362 	subb	a,#0x02
   0CF2 08                  363 	inc	r0
   0CF3 E6                  364 	mov	a,@r0
   0CF4 94 00               365 	subb	a,#0x00
   0CF6 08                  366 	inc	r0
   0CF7 E6                  367 	mov	a,@r0
   0CF8 94 00               368 	subb	a,#0x00
   0CFA 08                  369 	inc	r0
   0CFB E6                  370 	mov	a,@r0
   0CFC 94 00               371 	subb	a,#0x00
                            372 ;	genIfxJump
   0CFE 50 03               373 	jnc	00130$
   0D00 02 10 D0            374 	ljmp	00114$
   0D03                     375 00130$:
                            376 ;	genPlus
   0D03 E5 0F               377 	mov	a,_bp
   0D05 24 0D               378 	add	a,#0x0d
   0D07 F8                  379 	mov	r0,a
                            380 ;     genPlusIncr
   0D08 74 18               381 	mov	a,#0x18
   0D0A 26                  382 	add	a,@r0
   0D0B FE                  383 	mov	r6,a
                            384 ;	Peephole 181	changed mov to clr
   0D0C E4                  385 	clr	a
   0D0D 08                  386 	inc	r0
   0D0E 36                  387 	addc	a,@r0
   0D0F FF                  388 	mov	r7,a
   0D10 08                  389 	inc	r0
   0D11 86 02               390 	mov	ar2,@r0
                            391 ;	genPointerGet
                            392 ;	genGenPointerGet
   0D13 8E 82               393 	mov	dpl,r6
   0D15 8F 83               394 	mov	dph,r7
   0D17 8A F0               395 	mov	b,r2
   0D19 12 47 8A            396 	lcall	__gptrget
   0D1C FE                  397 	mov	r6,a
   0D1D A3                  398 	inc	dptr
   0D1E 12 47 8A            399 	lcall	__gptrget
   0D21 FF                  400 	mov	r7,a
   0D22 A3                  401 	inc	dptr
   0D23 12 47 8A            402 	lcall	__gptrget
   0D26 FA                  403 	mov	r2,a
   0D27 A3                  404 	inc	dptr
   0D28 12 47 8A            405 	lcall	__gptrget
   0D2B FB                  406 	mov	r3,a
                            407 ;	genCmpLt
   0D2C A8 0F               408 	mov	r0,_bp
   0D2E 08                  409 	inc	r0
                            410 ;	genCmp
   0D2F C3                  411 	clr	c
   0D30 E6                  412 	mov	a,@r0
   0D31 9E                  413 	subb	a,r6
   0D32 08                  414 	inc	r0
   0D33 E6                  415 	mov	a,@r0
   0D34 9F                  416 	subb	a,r7
   0D35 08                  417 	inc	r0
   0D36 E6                  418 	mov	a,@r0
   0D37 9A                  419 	subb	a,r2
   0D38 08                  420 	inc	r0
   0D39 E6                  421 	mov	a,@r0
   0D3A 9B                  422 	subb	a,r3
                            423 ;	genIfxJump
   0D3B 40 03               424 	jc	00131$
   0D3D 02 10 D0            425 	ljmp	00114$
   0D40                     426 00131$:
                    015F    427 	C$tff.c$147$2$2 ==.
                            428 ;	tff.c:147: fatsect = fs->fatbase;
                            429 ;	genPlus
   0D40 E5 0F               430 	mov	a,_bp
   0D42 24 0D               431 	add	a,#0x0d
   0D44 F8                  432 	mov	r0,a
                            433 ;     genPlusIncr
   0D45 74 08               434 	mov	a,#0x08
   0D47 26                  435 	add	a,@r0
   0D48 FA                  436 	mov	r2,a
                            437 ;	Peephole 181	changed mov to clr
   0D49 E4                  438 	clr	a
   0D4A 08                  439 	inc	r0
   0D4B 36                  440 	addc	a,@r0
   0D4C FB                  441 	mov	r3,a
   0D4D 08                  442 	inc	r0
   0D4E 86 04               443 	mov	ar4,@r0
                            444 ;	genPointerGet
                            445 ;	genGenPointerGet
   0D50 8A 82               446 	mov	dpl,r2
   0D52 8B 83               447 	mov	dph,r3
   0D54 8C F0               448 	mov	b,r4
   0D56 12 47 8A            449 	lcall	__gptrget
   0D59 FA                  450 	mov	r2,a
   0D5A A3                  451 	inc	dptr
   0D5B 12 47 8A            452 	lcall	__gptrget
   0D5E FB                  453 	mov	r3,a
   0D5F A3                  454 	inc	dptr
   0D60 12 47 8A            455 	lcall	__gptrget
   0D63 FC                  456 	mov	r4,a
   0D64 A3                  457 	inc	dptr
   0D65 12 47 8A            458 	lcall	__gptrget
   0D68 FD                  459 	mov	r5,a
                            460 ;	genAssign
   0D69 E5 0F               461 	mov	a,_bp
   0D6B 24 09               462 	add	a,#0x09
   0D6D F8                  463 	mov	r0,a
   0D6E A6 02               464 	mov	@r0,ar2
   0D70 08                  465 	inc	r0
   0D71 A6 03               466 	mov	@r0,ar3
   0D73 08                  467 	inc	r0
   0D74 A6 04               468 	mov	@r0,ar4
   0D76 08                  469 	inc	r0
   0D77 A6 05               470 	mov	@r0,ar5
                    0198    471 	C$tff.c$148$2$2 ==.
                            472 ;	tff.c:148: switch (fs->fs_type) {
                            473 ;	genPlus
   0D79 E5 0F               474 	mov	a,_bp
   0D7B 24 0D               475 	add	a,#0x0d
   0D7D F8                  476 	mov	r0,a
                            477 ;     genPlusIncr
   0D7E 74 1C               478 	mov	a,#0x1C
   0D80 26                  479 	add	a,@r0
   0D81 FE                  480 	mov	r6,a
                            481 ;	Peephole 181	changed mov to clr
   0D82 E4                  482 	clr	a
   0D83 08                  483 	inc	r0
   0D84 36                  484 	addc	a,@r0
   0D85 FF                  485 	mov	r7,a
   0D86 08                  486 	inc	r0
   0D87 86 02               487 	mov	ar2,@r0
                            488 ;	genPointerGet
                            489 ;	genGenPointerGet
   0D89 8E 82               490 	mov	dpl,r6
   0D8B 8F 83               491 	mov	dph,r7
   0D8D 8A F0               492 	mov	b,r2
   0D8F 12 47 8A            493 	lcall	__gptrget
   0D92 FA                  494 	mov	r2,a
                            495 ;	genCmpEq
                            496 ;	gencjneshort
   0D93 BA 01 02            497 	cjne	r2,#0x01,00132$
                            498 ;	Peephole 112.b	changed ljmp to sjmp
   0D96 80 0F               499 	sjmp	00101$
   0D98                     500 00132$:
                            501 ;	genCmpEq
                            502 ;	gencjneshort
   0D98 BA 02 03            503 	cjne	r2,#0x02,00133$
   0D9B 02 0E EC            504 	ljmp	00106$
   0D9E                     505 00133$:
                            506 ;	genCmpEq
                            507 ;	gencjneshort
   0D9E BA 03 03            508 	cjne	r2,#0x03,00134$
   0DA1 02 0F 7C            509 	ljmp	00109$
   0DA4                     510 00134$:
   0DA4 02 10 D0            511 	ljmp	00114$
                    01C6    512 	C$tff.c$149$3$3 ==.
                            513 ;	tff.c:149: case FS_FAT12 :
   0DA7                     514 00101$:
                    01C6    515 	C$tff.c$150$3$3 ==.
                            516 ;	tff.c:150: bc = (WORD)clust * 3 / 2;
                            517 ;	genCast
   0DA7 A8 0F               518 	mov	r0,_bp
   0DA9 08                  519 	inc	r0
   0DAA 86 82               520 	mov	dpl,@r0
   0DAC 08                  521 	inc	r0
   0DAD 86 83               522 	mov	dph,@r0
                            523 ;	genIpush
   0DAF 74 03               524 	mov	a,#0x03
   0DB1 C0 E0               525 	push	acc
                            526 ;	Peephole 181	changed mov to clr
   0DB3 E4                  527 	clr	a
   0DB4 C0 E0               528 	push	acc
                            529 ;	genCall
   0DB6 12 42 F5            530 	lcall	__mulint
   0DB9 AA 82               531 	mov	r2,dpl
   0DBB AB 83               532 	mov	r3,dph
   0DBD 15 81               533 	dec	sp
   0DBF 15 81               534 	dec	sp
                            535 ;	genRightShift
                            536 ;	genRightShiftLiteral
   0DC1 E5 0F               537 	mov	a,_bp
   0DC3 24 07               538 	add	a,#0x07
   0DC5 F8                  539 	mov	r0,a
                            540 ;	genrshTwo
   0DC6 A6 02               541 	mov	@r0,ar2
   0DC8 EB                  542 	mov	a,r3
   0DC9 C3                  543 	clr	c
   0DCA 13                  544 	rrc	a
   0DCB C6                  545 	xch	a,@r0
   0DCC 13                  546 	rrc	a
   0DCD C6                  547 	xch	a,@r0
   0DCE 08                  548 	inc	r0
   0DCF F6                  549 	mov	@r0,a
                    01EF    550 	C$tff.c$151$3$3 ==.
                            551 ;	tff.c:151: if (!move_window(fatsect + bc / 512)) break;
                            552 ;	genRightShift
                            553 ;	genRightShiftLiteral
   0DD0 E5 0F               554 	mov	a,_bp
   0DD2 24 07               555 	add	a,#0x07
                            556 ;	genrshTwo
                            557 ;	Peephole 185	changed order of increment (acc incremented also!)
   0DD4 04                  558 	inc	a
   0DD5 F8                  559 	mov	r0,a
   0DD6 E6                  560 	mov	a,@r0
   0DD7 C3                  561 	clr	c
   0DD8 13                  562 	rrc	a
   0DD9 FC                  563 	mov	r4,a
                            564 ;	genCast
                            565 ;	genPlus
                            566 ;	Peephole 3.c	changed mov to clr
                            567 ;	Peephole 3.b	changed mov to clr
   0DDA E4                  568 	clr	a
   0DDB FD                  569 	mov	r5,a
   0DDC FE                  570 	mov	r6,a
   0DDD FF                  571 	mov	r7,a
   0DDE E5 0F               572 	mov	a,_bp
   0DE0 24 09               573 	add	a,#0x09
   0DE2 F8                  574 	mov	r0,a
                            575 ;	Peephole 236.g	used r4 instead of ar4
   0DE3 EC                  576 	mov	a,r4
   0DE4 26                  577 	add	a,@r0
   0DE5 FC                  578 	mov	r4,a
                            579 ;	Peephole 236.g	used r5 instead of ar5
   0DE6 ED                  580 	mov	a,r5
   0DE7 08                  581 	inc	r0
   0DE8 36                  582 	addc	a,@r0
   0DE9 FD                  583 	mov	r5,a
                            584 ;	Peephole 236.g	used r6 instead of ar6
   0DEA EE                  585 	mov	a,r6
   0DEB 08                  586 	inc	r0
   0DEC 36                  587 	addc	a,@r0
   0DED FE                  588 	mov	r6,a
                            589 ;	Peephole 236.g	used r7 instead of ar7
   0DEE EF                  590 	mov	a,r7
   0DEF 08                  591 	inc	r0
   0DF0 36                  592 	addc	a,@r0
                            593 ;	genCall
   0DF1 FF                  594 	mov	r7,a
   0DF2 8C 82               595 	mov	dpl,r4
   0DF4 8D 83               596 	mov	dph,r5
   0DF6 8E F0               597 	mov	b,r6
                            598 ;	Peephole 191	removed redundant mov
   0DF8 12 0B E1            599 	lcall	_move_window
   0DFB E5 82               600 	mov	a,dpl
                            601 ;	genIfx
                            602 ;	genIfxJump
   0DFD 70 03               603 	jnz	00135$
   0DFF 02 10 D0            604 	ljmp	00114$
   0E02                     605 00135$:
                    0221    606 	C$tff.c$152$3$3 ==.
                            607 ;	tff.c:152: wc = fs->win[bc % 512]; bc++;
                            608 ;	genPlus
   0E02 E5 0F               609 	mov	a,_bp
   0E04 24 0D               610 	add	a,#0x0d
   0E06 F8                  611 	mov	r0,a
                            612 ;     genPlusIncr
   0E07 74 20               613 	mov	a,#0x20
   0E09 26                  614 	add	a,@r0
   0E0A FC                  615 	mov	r4,a
                            616 ;	Peephole 181	changed mov to clr
   0E0B E4                  617 	clr	a
   0E0C 08                  618 	inc	r0
   0E0D 36                  619 	addc	a,@r0
   0E0E FD                  620 	mov	r5,a
   0E0F 08                  621 	inc	r0
   0E10 86 06               622 	mov	ar6,@r0
                            623 ;	genAnd
   0E12 E5 0F               624 	mov	a,_bp
   0E14 24 07               625 	add	a,#0x07
   0E16 F8                  626 	mov	r0,a
   0E17 86 07               627 	mov	ar7,@r0
   0E19 74 01               628 	mov	a,#0x01
   0E1B 08                  629 	inc	r0
   0E1C 56                  630 	anl	a,@r0
   0E1D FA                  631 	mov	r2,a
                            632 ;	genPlus
                            633 ;	Peephole 236.g	used r7 instead of ar7
   0E1E EF                  634 	mov	a,r7
                            635 ;	Peephole 236.a	used r4 instead of ar4
   0E1F 2C                  636 	add	a,r4
   0E20 FC                  637 	mov	r4,a
                            638 ;	Peephole 236.g	used r2 instead of ar2
   0E21 EA                  639 	mov	a,r2
                            640 ;	Peephole 236.b	used r5 instead of ar5
   0E22 3D                  641 	addc	a,r5
   0E23 FD                  642 	mov	r5,a
                            643 ;	genPointerGet
                            644 ;	genGenPointerGet
   0E24 8C 82               645 	mov	dpl,r4
   0E26 8D 83               646 	mov	dph,r5
   0E28 8E F0               647 	mov	b,r6
   0E2A 12 47 8A            648 	lcall	__gptrget
   0E2D FC                  649 	mov	r4,a
                            650 ;	genCast
   0E2E E5 0F               651 	mov	a,_bp
   0E30 24 05               652 	add	a,#0x05
   0E32 F8                  653 	mov	r0,a
   0E33 A6 04               654 	mov	@r0,ar4
   0E35 08                  655 	inc	r0
   0E36 76 00               656 	mov	@r0,#0x00
                            657 ;	genPlus
   0E38 E5 0F               658 	mov	a,_bp
   0E3A 24 07               659 	add	a,#0x07
   0E3C F8                  660 	mov	r0,a
                            661 ;     genPlusIncr
   0E3D 74 01               662 	mov	a,#0x01
   0E3F 26                  663 	add	a,@r0
   0E40 F6                  664 	mov	@r0,a
                            665 ;	Peephole 181	changed mov to clr
   0E41 E4                  666 	clr	a
   0E42 08                  667 	inc	r0
   0E43 36                  668 	addc	a,@r0
   0E44 F6                  669 	mov	@r0,a
                    0264    670 	C$tff.c$153$3$3 ==.
                            671 ;	tff.c:153: if (!move_window(fatsect + bc / 512)) break;
                            672 ;	genRightShift
                            673 ;	genRightShiftLiteral
   0E45 E5 0F               674 	mov	a,_bp
   0E47 24 07               675 	add	a,#0x07
                            676 ;	genrshTwo
                            677 ;	Peephole 185	changed order of increment (acc incremented also!)
   0E49 04                  678 	inc	a
   0E4A F8                  679 	mov	r0,a
   0E4B E6                  680 	mov	a,@r0
   0E4C C3                  681 	clr	c
   0E4D 13                  682 	rrc	a
   0E4E FB                  683 	mov	r3,a
                            684 ;	genCast
                            685 ;	genPlus
                            686 ;	Peephole 3.c	changed mov to clr
                            687 ;	Peephole 3.b	changed mov to clr
   0E4F E4                  688 	clr	a
   0E50 FD                  689 	mov	r5,a
   0E51 FE                  690 	mov	r6,a
   0E52 FF                  691 	mov	r7,a
   0E53 E5 0F               692 	mov	a,_bp
   0E55 24 09               693 	add	a,#0x09
   0E57 F8                  694 	mov	r0,a
                            695 ;	Peephole 236.g	used r3 instead of ar3
   0E58 EB                  696 	mov	a,r3
   0E59 26                  697 	add	a,@r0
   0E5A FB                  698 	mov	r3,a
                            699 ;	Peephole 236.g	used r5 instead of ar5
   0E5B ED                  700 	mov	a,r5
   0E5C 08                  701 	inc	r0
   0E5D 36                  702 	addc	a,@r0
   0E5E FD                  703 	mov	r5,a
                            704 ;	Peephole 236.g	used r6 instead of ar6
   0E5F EE                  705 	mov	a,r6
   0E60 08                  706 	inc	r0
   0E61 36                  707 	addc	a,@r0
   0E62 FE                  708 	mov	r6,a
                            709 ;	Peephole 236.g	used r7 instead of ar7
   0E63 EF                  710 	mov	a,r7
   0E64 08                  711 	inc	r0
   0E65 36                  712 	addc	a,@r0
                            713 ;	genCall
   0E66 FF                  714 	mov	r7,a
   0E67 8B 82               715 	mov	dpl,r3
   0E69 8D 83               716 	mov	dph,r5
   0E6B 8E F0               717 	mov	b,r6
                            718 ;	Peephole 191	removed redundant mov
   0E6D 12 0B E1            719 	lcall	_move_window
   0E70 E5 82               720 	mov	a,dpl
                            721 ;	genIfx
                            722 ;	genIfxJump
   0E72 70 03               723 	jnz	00136$
   0E74 02 10 D0            724 	ljmp	00114$
   0E77                     725 00136$:
                    0296    726 	C$tff.c$154$3$3 ==.
                            727 ;	tff.c:154: wc |= (WORD)fs->win[bc % 512] << 8;
                            728 ;	genPlus
   0E77 E5 0F               729 	mov	a,_bp
   0E79 24 0D               730 	add	a,#0x0d
   0E7B F8                  731 	mov	r0,a
                            732 ;     genPlusIncr
   0E7C 74 20               733 	mov	a,#0x20
   0E7E 26                  734 	add	a,@r0
   0E7F FB                  735 	mov	r3,a
                            736 ;	Peephole 181	changed mov to clr
   0E80 E4                  737 	clr	a
   0E81 08                  738 	inc	r0
   0E82 36                  739 	addc	a,@r0
   0E83 FD                  740 	mov	r5,a
   0E84 08                  741 	inc	r0
   0E85 86 06               742 	mov	ar6,@r0
                            743 ;	genAnd
   0E87 E5 0F               744 	mov	a,_bp
   0E89 24 07               745 	add	a,#0x07
   0E8B F8                  746 	mov	r0,a
   0E8C 86 07               747 	mov	ar7,@r0
   0E8E 74 01               748 	mov	a,#0x01
   0E90 08                  749 	inc	r0
   0E91 56                  750 	anl	a,@r0
   0E92 FA                  751 	mov	r2,a
                            752 ;	genPlus
                            753 ;	Peephole 236.g	used r7 instead of ar7
   0E93 EF                  754 	mov	a,r7
                            755 ;	Peephole 236.a	used r3 instead of ar3
   0E94 2B                  756 	add	a,r3
   0E95 FB                  757 	mov	r3,a
                            758 ;	Peephole 236.g	used r2 instead of ar2
   0E96 EA                  759 	mov	a,r2
                            760 ;	Peephole 236.b	used r5 instead of ar5
   0E97 3D                  761 	addc	a,r5
   0E98 FD                  762 	mov	r5,a
                            763 ;	genPointerGet
                            764 ;	genGenPointerGet
   0E99 8B 82               765 	mov	dpl,r3
   0E9B 8D 83               766 	mov	dph,r5
   0E9D 8E F0               767 	mov	b,r6
   0E9F 12 47 8A            768 	lcall	__gptrget
   0EA2 FB                  769 	mov	r3,a
                            770 ;	genCast
                            771 ;	genLeftShift
                            772 ;	genLeftShiftLiteral
                            773 ;	genlshTwo
                            774 ;	peephole 177.e	removed redundant move
   0EA3 8B 02               775 	mov	ar2,r3
   0EA5 7B 00               776 	mov	r3,#0x00
                            777 ;	genOr
   0EA7 E5 0F               778 	mov	a,_bp
   0EA9 24 05               779 	add	a,#0x05
   0EAB F8                  780 	mov	r0,a
   0EAC EB                  781 	mov	a,r3
   0EAD 46                  782 	orl	a,@r0
   0EAE F6                  783 	mov	@r0,a
   0EAF EA                  784 	mov	a,r2
   0EB0 08                  785 	inc	r0
   0EB1 46                  786 	orl	a,@r0
   0EB2 F6                  787 	mov	@r0,a
                    02D2    788 	C$tff.c$155$3$3 ==.
                            789 ;	tff.c:155: return (clust & 1) ? (wc >> 4) : (wc & 0xFFF);
                            790 ;	genAnd
   0EB3 A8 0F               791 	mov	r0,_bp
   0EB5 08                  792 	inc	r0
   0EB6 E6                  793 	mov	a,@r0
                            794 ;	genIfxJump
                            795 ;	Peephole 108.d	removed ljmp by inverse jump logic
   0EB7 30 E0 18            796 	jnb	acc.0,00118$
                            797 ;	Peephole 300	removed redundant label 00137$
                            798 ;	genRightShift
                            799 ;	genRightShiftLiteral
   0EBA E5 0F               800 	mov	a,_bp
   0EBC 24 05               801 	add	a,#0x05
   0EBE F8                  802 	mov	r0,a
                            803 ;	genrshTwo
   0EBF 86 02               804 	mov	ar2,@r0
   0EC1 08                  805 	inc	r0
   0EC2 E6                  806 	mov	a,@r0
   0EC3 C4                  807 	swap	a
   0EC4 CA                  808 	xch	a,r2
   0EC5 C4                  809 	swap	a
   0EC6 54 0F               810 	anl	a,#0x0f
   0EC8 6A                  811 	xrl	a,r2
   0EC9 CA                  812 	xch	a,r2
   0ECA 54 0F               813 	anl	a,#0x0f
   0ECC CA                  814 	xch	a,r2
   0ECD 6A                  815 	xrl	a,r2
   0ECE CA                  816 	xch	a,r2
   0ECF FB                  817 	mov	r3,a
                            818 ;	Peephole 112.b	changed ljmp to sjmp
   0ED0 80 0C               819 	sjmp	00119$
   0ED2                     820 00118$:
                            821 ;	genAnd
   0ED2 E5 0F               822 	mov	a,_bp
   0ED4 24 05               823 	add	a,#0x05
   0ED6 F8                  824 	mov	r0,a
   0ED7 86 02               825 	mov	ar2,@r0
   0ED9 74 0F               826 	mov	a,#0x0F
   0EDB 08                  827 	inc	r0
   0EDC 56                  828 	anl	a,@r0
   0EDD FB                  829 	mov	r3,a
   0EDE                     830 00119$:
                            831 ;	genCast
   0EDE 7C 00               832 	mov	r4,#0x00
   0EE0 7D 00               833 	mov	r5,#0x00
                            834 ;	genRet
   0EE2 8A 82               835 	mov	dpl,r2
   0EE4 8B 83               836 	mov	dph,r3
   0EE6 8C F0               837 	mov	b,r4
   0EE8 ED                  838 	mov	a,r5
   0EE9 02 10 D6            839 	ljmp	00116$
                    030B    840 	C$tff.c$157$3$3 ==.
                            841 ;	tff.c:157: case FS_FAT16 :
   0EEC                     842 00106$:
                    030B    843 	C$tff.c$158$3$3 ==.
                            844 ;	tff.c:158: if (!move_window(fatsect + clust / 256)) break;
                            845 ;	genRightShift
                            846 ;	genRightShiftLiteral
   0EEC A8 0F               847 	mov	r0,_bp
   0EEE 08                  848 	inc	r0
                            849 ;	genrshFour
   0EEF 08                  850 	inc	r0
   0EF0 86 02               851 	mov	ar2,@r0
   0EF2 08                  852 	inc	r0
   0EF3 86 03               853 	mov	ar3,@r0
   0EF5 08                  854 	inc	r0
   0EF6 86 04               855 	mov	ar4,@r0
   0EF8 7D 00               856 	mov	r5,#0x00
                            857 ;	genPlus
   0EFA E5 0F               858 	mov	a,_bp
   0EFC 24 09               859 	add	a,#0x09
   0EFE F8                  860 	mov	r0,a
                            861 ;	Peephole 236.g	used r2 instead of ar2
   0EFF EA                  862 	mov	a,r2
   0F00 26                  863 	add	a,@r0
   0F01 FA                  864 	mov	r2,a
                            865 ;	Peephole 236.g	used r3 instead of ar3
   0F02 EB                  866 	mov	a,r3
   0F03 08                  867 	inc	r0
   0F04 36                  868 	addc	a,@r0
   0F05 FB                  869 	mov	r3,a
                            870 ;	Peephole 236.g	used r4 instead of ar4
   0F06 EC                  871 	mov	a,r4
   0F07 08                  872 	inc	r0
   0F08 36                  873 	addc	a,@r0
   0F09 FC                  874 	mov	r4,a
                            875 ;	Peephole 236.g	used r5 instead of ar5
   0F0A ED                  876 	mov	a,r5
   0F0B 08                  877 	inc	r0
   0F0C 36                  878 	addc	a,@r0
                            879 ;	genCall
   0F0D FD                  880 	mov	r5,a
   0F0E 8A 82               881 	mov	dpl,r2
   0F10 8B 83               882 	mov	dph,r3
   0F12 8C F0               883 	mov	b,r4
                            884 ;	Peephole 191	removed redundant mov
   0F14 12 0B E1            885 	lcall	_move_window
   0F17 E5 82               886 	mov	a,dpl
                            887 ;	genIfx
                            888 ;	genIfxJump
   0F19 70 03               889 	jnz	00138$
   0F1B 02 10 D0            890 	ljmp	00114$
   0F1E                     891 00138$:
                    033D    892 	C$tff.c$159$3$3 ==.
                            893 ;	tff.c:159: return LD_WORD(&fs->win[((WORD)clust * 2) % 512]);
                            894 ;	genPlus
   0F1E E5 0F               895 	mov	a,_bp
   0F20 24 0D               896 	add	a,#0x0d
   0F22 F8                  897 	mov	r0,a
                            898 ;     genPlusIncr
   0F23 74 20               899 	mov	a,#0x20
   0F25 26                  900 	add	a,@r0
   0F26 FA                  901 	mov	r2,a
                            902 ;	Peephole 181	changed mov to clr
   0F27 E4                  903 	clr	a
   0F28 08                  904 	inc	r0
   0F29 36                  905 	addc	a,@r0
   0F2A FB                  906 	mov	r3,a
   0F2B 08                  907 	inc	r0
   0F2C 86 04               908 	mov	ar4,@r0
                            909 ;	genCast
   0F2E A8 0F               910 	mov	r0,_bp
   0F30 08                  911 	inc	r0
   0F31 86 05               912 	mov	ar5,@r0
   0F33 08                  913 	inc	r0
   0F34 86 06               914 	mov	ar6,@r0
                            915 ;	genLeftShift
                            916 ;	genLeftShiftLiteral
                            917 ;	genlshTwo
   0F36 EE                  918 	mov	a,r6
   0F37 CD                  919 	xch	a,r5
   0F38 25 E0               920 	add	a,acc
   0F3A CD                  921 	xch	a,r5
   0F3B 33                  922 	rlc	a
   0F3C FE                  923 	mov	r6,a
                            924 ;	genAnd
   0F3D 53 06 01            925 	anl	ar6,#0x01
                            926 ;	genPlus
                            927 ;	Peephole 236.g	used r5 instead of ar5
   0F40 ED                  928 	mov	a,r5
                            929 ;	Peephole 236.a	used r2 instead of ar2
   0F41 2A                  930 	add	a,r2
   0F42 FA                  931 	mov	r2,a
                            932 ;	Peephole 236.g	used r6 instead of ar6
   0F43 EE                  933 	mov	a,r6
                            934 ;	Peephole 236.b	used r3 instead of ar3
   0F44 3B                  935 	addc	a,r3
   0F45 FB                  936 	mov	r3,a
                            937 ;	genPlus
                            938 ;     genPlusIncr
   0F46 74 01               939 	mov	a,#0x01
                            940 ;	Peephole 236.a	used r2 instead of ar2
   0F48 2A                  941 	add	a,r2
   0F49 FD                  942 	mov	r5,a
                            943 ;	Peephole 181	changed mov to clr
   0F4A E4                  944 	clr	a
                            945 ;	Peephole 236.b	used r3 instead of ar3
   0F4B 3B                  946 	addc	a,r3
   0F4C FE                  947 	mov	r6,a
   0F4D 8C 07               948 	mov	ar7,r4
                            949 ;	genPointerGet
                            950 ;	genGenPointerGet
   0F4F 8D 82               951 	mov	dpl,r5
   0F51 8E 83               952 	mov	dph,r6
   0F53 8F F0               953 	mov	b,r7
   0F55 12 47 8A            954 	lcall	__gptrget
   0F58 FD                  955 	mov	r5,a
                            956 ;	genCast
                            957 ;	genLeftShift
                            958 ;	genLeftShiftLiteral
                            959 ;	genlshTwo
                            960 ;	peephole 177.e	removed redundant move
   0F59 8D 06               961 	mov	ar6,r5
   0F5B 7D 00               962 	mov	r5,#0x00
                            963 ;	genPointerGet
                            964 ;	genGenPointerGet
   0F5D 8A 82               965 	mov	dpl,r2
   0F5F 8B 83               966 	mov	dph,r3
   0F61 8C F0               967 	mov	b,r4
   0F63 12 47 8A            968 	lcall	__gptrget
                            969 ;	genCast
                            970 ;	genOr
   0F66 FA                  971 	mov	r2,a
   0F67 7B 00               972 	mov	r3,#0x00
                            973 ;	Peephole 177.d	removed redundant move
   0F69 42 05               974 	orl	ar5,a
   0F6B EB                  975 	mov	a,r3
   0F6C 42 06               976 	orl	ar6,a
                            977 ;	genCast
   0F6E 7A 00               978 	mov	r2,#0x00
   0F70 7B 00               979 	mov	r3,#0x00
                            980 ;	genRet
   0F72 8D 82               981 	mov	dpl,r5
   0F74 8E 83               982 	mov	dph,r6
   0F76 8A F0               983 	mov	b,r2
   0F78 EB                  984 	mov	a,r3
   0F79 02 10 D6            985 	ljmp	00116$
                    039B    986 	C$tff.c$161$3$3 ==.
                            987 ;	tff.c:161: case FS_FAT32 :
   0F7C                     988 00109$:
                    039B    989 	C$tff.c$162$3$3 ==.
                            990 ;	tff.c:162: if (!move_window(fatsect + clust / 128)) break;
                            991 ;	genRightShift
                            992 ;	genRightShiftLiteral
   0F7C A8 0F               993 	mov	r0,_bp
   0F7E 08                  994 	inc	r0
                            995 ;	genrshFour
   0F7F 86 02               996 	mov	ar2,@r0
   0F81 08                  997 	inc	r0
   0F82 E6                  998 	mov	a,@r0
   0F83 A2 E7               999 	mov	c,acc.7
   0F85 CA                 1000 	xch	a,r2
   0F86 33                 1001 	rlc	a
   0F87 CA                 1002 	xch	a,r2
   0F88 33                 1003 	rlc	a
   0F89 CA                 1004 	xch	a,r2
   0F8A 54 01              1005 	anl	a,#0x01
   0F8C FB                 1006 	mov	r3,a
   0F8D 08                 1007 	inc	r0
   0F8E E6                 1008 	mov	a,@r0
   0F8F 25 E0              1009 	add	a,acc
   0F91 4B                 1010 	orl	a,r3
   0F92 FB                 1011 	mov	r3,a
   0F93 86 04              1012 	mov	ar4,@r0
   0F95 08                 1013 	inc	r0
   0F96 E6                 1014 	mov	a,@r0
   0F97 A2 E7              1015 	mov	c,acc.7
   0F99 CC                 1016 	xch	a,r4
   0F9A 33                 1017 	rlc	a
   0F9B CC                 1018 	xch	a,r4
   0F9C 33                 1019 	rlc	a
   0F9D CC                 1020 	xch	a,r4
   0F9E 54 01              1021 	anl	a,#0x01
   0FA0 FD                 1022 	mov	r5,a
                           1023 ;	genPlus
   0FA1 E5 0F              1024 	mov	a,_bp
   0FA3 24 09              1025 	add	a,#0x09
   0FA5 F8                 1026 	mov	r0,a
                           1027 ;	Peephole 236.g	used r2 instead of ar2
   0FA6 EA                 1028 	mov	a,r2
   0FA7 26                 1029 	add	a,@r0
   0FA8 FA                 1030 	mov	r2,a
                           1031 ;	Peephole 236.g	used r3 instead of ar3
   0FA9 EB                 1032 	mov	a,r3
   0FAA 08                 1033 	inc	r0
   0FAB 36                 1034 	addc	a,@r0
   0FAC FB                 1035 	mov	r3,a
                           1036 ;	Peephole 236.g	used r4 instead of ar4
   0FAD EC                 1037 	mov	a,r4
   0FAE 08                 1038 	inc	r0
   0FAF 36                 1039 	addc	a,@r0
   0FB0 FC                 1040 	mov	r4,a
                           1041 ;	Peephole 236.g	used r5 instead of ar5
   0FB1 ED                 1042 	mov	a,r5
   0FB2 08                 1043 	inc	r0
   0FB3 36                 1044 	addc	a,@r0
                           1045 ;	genCall
   0FB4 FD                 1046 	mov	r5,a
   0FB5 8A 82              1047 	mov	dpl,r2
   0FB7 8B 83              1048 	mov	dph,r3
   0FB9 8C F0              1049 	mov	b,r4
                           1050 ;	Peephole 191	removed redundant mov
   0FBB 12 0B E1           1051 	lcall	_move_window
   0FBE E5 82              1052 	mov	a,dpl
                           1053 ;	genIfx
                           1054 ;	genIfxJump
   0FC0 70 03              1055 	jnz	00139$
   0FC2 02 10 D0           1056 	ljmp	00114$
   0FC5                    1057 00139$:
                    03E4   1058 	C$tff.c$163$3$3 ==.
                           1059 ;	tff.c:163: return LD_DWORD(&fs->win[((WORD)clust * 4) % 512]) & 0x0FFFFFFF;
                           1060 ;	genPlus
   0FC5 E5 0F              1061 	mov	a,_bp
   0FC7 24 0D              1062 	add	a,#0x0d
   0FC9 F8                 1063 	mov	r0,a
                           1064 ;     genPlusIncr
   0FCA 74 20              1065 	mov	a,#0x20
   0FCC 26                 1066 	add	a,@r0
   0FCD FA                 1067 	mov	r2,a
                           1068 ;	Peephole 181	changed mov to clr
   0FCE E4                 1069 	clr	a
   0FCF 08                 1070 	inc	r0
   0FD0 36                 1071 	addc	a,@r0
   0FD1 FB                 1072 	mov	r3,a
   0FD2 08                 1073 	inc	r0
   0FD3 86 04              1074 	mov	ar4,@r0
                           1075 ;	genCast
   0FD5 A8 0F              1076 	mov	r0,_bp
   0FD7 08                 1077 	inc	r0
   0FD8 86 05              1078 	mov	ar5,@r0
   0FDA 08                 1079 	inc	r0
   0FDB 86 06              1080 	mov	ar6,@r0
                           1081 ;	genLeftShift
                           1082 ;	genLeftShiftLiteral
                           1083 ;	genlshTwo
   0FDD EE                 1084 	mov	a,r6
   0FDE CD                 1085 	xch	a,r5
   0FDF 25 E0              1086 	add	a,acc
   0FE1 CD                 1087 	xch	a,r5
   0FE2 33                 1088 	rlc	a
   0FE3 CD                 1089 	xch	a,r5
   0FE4 25 E0              1090 	add	a,acc
   0FE6 CD                 1091 	xch	a,r5
   0FE7 33                 1092 	rlc	a
   0FE8 FE                 1093 	mov	r6,a
                           1094 ;	genAnd
   0FE9 53 06 01           1095 	anl	ar6,#0x01
                           1096 ;	genPlus
   0FEC E5 0F              1097 	mov	a,_bp
   0FEE 24 10              1098 	add	a,#0x10
   0FF0 F8                 1099 	mov	r0,a
                           1100 ;	Peephole 236.g	used r5 instead of ar5
   0FF1 ED                 1101 	mov	a,r5
                           1102 ;	Peephole 236.a	used r2 instead of ar2
   0FF2 2A                 1103 	add	a,r2
   0FF3 F6                 1104 	mov	@r0,a
                           1105 ;	Peephole 236.g	used r6 instead of ar6
   0FF4 EE                 1106 	mov	a,r6
                           1107 ;	Peephole 236.b	used r3 instead of ar3
   0FF5 3B                 1108 	addc	a,r3
   0FF6 08                 1109 	inc	r0
   0FF7 F6                 1110 	mov	@r0,a
   0FF8 08                 1111 	inc	r0
   0FF9 A6 04              1112 	mov	@r0,ar4
                           1113 ;	genPlus
   0FFB E5 0F              1114 	mov	a,_bp
   0FFD 24 10              1115 	add	a,#0x10
   0FFF F8                 1116 	mov	r0,a
                           1117 ;     genPlusIncr
   1000 74 03              1118 	mov	a,#0x03
   1002 26                 1119 	add	a,@r0
   1003 FD                 1120 	mov	r5,a
                           1121 ;	Peephole 181	changed mov to clr
   1004 E4                 1122 	clr	a
   1005 08                 1123 	inc	r0
   1006 36                 1124 	addc	a,@r0
   1007 FE                 1125 	mov	r6,a
   1008 08                 1126 	inc	r0
   1009 86 07              1127 	mov	ar7,@r0
                           1128 ;	genPointerGet
                           1129 ;	genGenPointerGet
   100B 8D 82              1130 	mov	dpl,r5
   100D 8E 83              1131 	mov	dph,r6
   100F 8F F0              1132 	mov	b,r7
   1011 12 47 8A           1133 	lcall	__gptrget
   1014 FD                 1134 	mov	r5,a
                           1135 ;	genCast
                           1136 ;	genLeftShift
                           1137 ;	genLeftShiftLiteral
                           1138 ;	Peephole 3.c	changed mov to clr
                           1139 ;	Peephole 3.b	changed mov to clr
   1015 E4                 1140 	clr	a
   1016 FE                 1141 	mov	r6,a
   1017 FF                 1142 	mov	r7,a
   1018 FA                 1143 	mov	r2,a
   1019 E5 0F              1144 	mov	a,_bp
   101B 24 13              1145 	add	a,#0x13
                           1146 ;	genlshFour
                           1147 ;	Peephole 185	changed order of increment (acc incremented also!)
   101D 04                 1148 	inc	a
                           1149 ;	Peephole 185	changed order of increment (acc incremented also!)
   101E 04                 1150 	inc	a
                           1151 ;	Peephole 185	changed order of increment (acc incremented also!)
   101F 04                 1152 	inc	a
   1020 F8                 1153 	mov	r0,a
   1021 A6 05              1154 	mov	@r0,ar5
   1023 18                 1155 	dec	r0
   1024 18                 1156 	dec	r0
   1025 18                 1157 	dec	r0
   1026 76 00              1158 	mov	@r0,#0x00
   1028 08                 1159 	inc	r0
   1029 76 00              1160 	mov	@r0,#0x00
   102B 08                 1161 	inc	r0
   102C 76 00              1162 	mov	@r0,#0x00
                           1163 ;	genPlus
   102E E5 0F              1164 	mov	a,_bp
   1030 24 10              1165 	add	a,#0x10
   1032 F8                 1166 	mov	r0,a
                           1167 ;     genPlusIncr
   1033 74 02              1168 	mov	a,#0x02
   1035 26                 1169 	add	a,@r0
   1036 FB                 1170 	mov	r3,a
                           1171 ;	Peephole 181	changed mov to clr
   1037 E4                 1172 	clr	a
   1038 08                 1173 	inc	r0
   1039 36                 1174 	addc	a,@r0
   103A FC                 1175 	mov	r4,a
   103B 08                 1176 	inc	r0
   103C 86 02              1177 	mov	ar2,@r0
                           1178 ;	genPointerGet
                           1179 ;	genGenPointerGet
   103E 8B 82              1180 	mov	dpl,r3
   1040 8C 83              1181 	mov	dph,r4
   1042 8A F0              1182 	mov	b,r2
   1044 12 47 8A           1183 	lcall	__gptrget
   1047 FB                 1184 	mov	r3,a
                           1185 ;	genCast
   1048 7A 00              1186 	mov	r2,#0x00
   104A 7C 00              1187 	mov	r4,#0x00
                           1188 ;	genLeftShift
                           1189 ;	genLeftShiftLiteral
                           1190 ;	genlshFour
                           1191 ;	peephole 177.e	removed redundant move
   104C 8A 05              1192 	mov	ar5,r2
   104E 8B 04              1193 	mov	ar4,r3
                           1194 ;	genOr
                           1195 ;	Peephole 3.c	changed mov to clr
   1050 E4                 1196 	clr	a
   1051 FA                 1197 	mov	r2,a
   1052 FB                 1198 	mov	r3,a
   1053 E5 0F              1199 	mov	a,_bp
   1055 24 13              1200 	add	a,#0x13
   1057 F8                 1201 	mov	r0,a
   1058 EB                 1202 	mov	a,r3
   1059 46                 1203 	orl	a,@r0
   105A F6                 1204 	mov	@r0,a
   105B EA                 1205 	mov	a,r2
   105C 08                 1206 	inc	r0
   105D 46                 1207 	orl	a,@r0
   105E F6                 1208 	mov	@r0,a
   105F EC                 1209 	mov	a,r4
   1060 08                 1210 	inc	r0
   1061 46                 1211 	orl	a,@r0
   1062 F6                 1212 	mov	@r0,a
   1063 ED                 1213 	mov	a,r5
   1064 08                 1214 	inc	r0
   1065 46                 1215 	orl	a,@r0
   1066 F6                 1216 	mov	@r0,a
                           1217 ;	genPlus
   1067 E5 0F              1218 	mov	a,_bp
   1069 24 10              1219 	add	a,#0x10
   106B F8                 1220 	mov	r0,a
                           1221 ;     genPlusIncr
   106C 74 01              1222 	mov	a,#0x01
   106E 26                 1223 	add	a,@r0
   106F FE                 1224 	mov	r6,a
                           1225 ;	Peephole 181	changed mov to clr
   1070 E4                 1226 	clr	a
   1071 08                 1227 	inc	r0
   1072 36                 1228 	addc	a,@r0
   1073 FF                 1229 	mov	r7,a
   1074 08                 1230 	inc	r0
   1075 86 02              1231 	mov	ar2,@r0
                           1232 ;	genPointerGet
                           1233 ;	genGenPointerGet
   1077 8E 82              1234 	mov	dpl,r6
   1079 8F 83              1235 	mov	dph,r7
   107B 8A F0              1236 	mov	b,r2
   107D 12 47 8A           1237 	lcall	__gptrget
   1080 FE                 1238 	mov	r6,a
                           1239 ;	genCast
                           1240 ;	genLeftShift
                           1241 ;	genLeftShiftLiteral
                           1242 ;	genlshTwo
                           1243 ;	peephole 177.e	removed redundant move
   1081 8E 02              1244 	mov	ar2,r6
                           1245 ;	genCast
                           1246 ;	genOr
                           1247 ;	Peephole 3.c	changed mov to clr
                           1248 ;	Peephole 3.b	changed mov to clr
   1083 E4                 1249 	clr	a
   1084 FE                 1250 	mov	r6,a
   1085 FB                 1251 	mov	r3,a
   1086 FC                 1252 	mov	r4,a
   1087 E5 0F              1253 	mov	a,_bp
   1089 24 13              1254 	add	a,#0x13
   108B F8                 1255 	mov	r0,a
   108C EE                 1256 	mov	a,r6
   108D 46                 1257 	orl	a,@r0
   108E F6                 1258 	mov	@r0,a
   108F EA                 1259 	mov	a,r2
   1090 08                 1260 	inc	r0
   1091 46                 1261 	orl	a,@r0
   1092 F6                 1262 	mov	@r0,a
   1093 EB                 1263 	mov	a,r3
   1094 08                 1264 	inc	r0
   1095 46                 1265 	orl	a,@r0
   1096 F6                 1266 	mov	@r0,a
   1097 EC                 1267 	mov	a,r4
   1098 08                 1268 	inc	r0
   1099 46                 1269 	orl	a,@r0
   109A F6                 1270 	mov	@r0,a
                           1271 ;	genPointerGet
                           1272 ;	genGenPointerGet
   109B E5 0F              1273 	mov	a,_bp
   109D 24 10              1274 	add	a,#0x10
   109F F8                 1275 	mov	r0,a
   10A0 86 82              1276 	mov	dpl,@r0
   10A2 08                 1277 	inc	r0
   10A3 86 83              1278 	mov	dph,@r0
   10A5 08                 1279 	inc	r0
   10A6 86 F0              1280 	mov	b,@r0
   10A8 12 47 8A           1281 	lcall	__gptrget
   10AB FD                 1282 	mov	r5,a
                           1283 ;	genCast
                           1284 ;	genOr
                           1285 ;	Peephole 3.c	changed mov to clr
                           1286 ;	Peephole 3.b	changed mov to clr
   10AC E4                 1287 	clr	a
   10AD FF                 1288 	mov	r7,a
   10AE FA                 1289 	mov	r2,a
   10AF FB                 1290 	mov	r3,a
   10B0 E5 0F              1291 	mov	a,_bp
   10B2 24 13              1292 	add	a,#0x13
   10B4 F8                 1293 	mov	r0,a
   10B5 E6                 1294 	mov	a,@r0
   10B6 42 05              1295 	orl	ar5,a
   10B8 08                 1296 	inc	r0
   10B9 E6                 1297 	mov	a,@r0
   10BA 42 07              1298 	orl	ar7,a
   10BC 08                 1299 	inc	r0
   10BD E6                 1300 	mov	a,@r0
   10BE 42 02              1301 	orl	ar2,a
   10C0 08                 1302 	inc	r0
   10C1 E6                 1303 	mov	a,@r0
   10C2 42 03              1304 	orl	ar3,a
                           1305 ;	genAnd
   10C4 53 03 0F           1306 	anl	ar3,#0x0F
                           1307 ;	genRet
   10C7 8D 82              1308 	mov	dpl,r5
   10C9 8F 83              1309 	mov	dph,r7
   10CB 8A F0              1310 	mov	b,r2
   10CD EB                 1311 	mov	a,r3
                    04ED   1312 	C$tff.c$165$1$1 ==.
                           1313 ;	tff.c:165: }
                           1314 ;	Peephole 112.b	changed ljmp to sjmp
   10CE 80 06              1315 	sjmp	00116$
   10D0                    1316 00114$:
                    04EF   1317 	C$tff.c$168$1$1 ==.
                           1318 ;	tff.c:168: return 1;	/* There is no cluster information, or an error occured */
                           1319 ;	genRet
                           1320 ;	Peephole 3.a	changed mov to clr
                           1321 ;	Peephole 3.b	changed mov to clr
                           1322 ;	Peephole 182.d	used 16 bit load of dptr
   10D0 90 00 01           1323 	mov	dptr,#(0x01&0x00ff)
   10D3 E4                 1324 	clr	a
   10D4 F5 F0              1325 	mov	b,a
   10D6                    1326 00116$:
   10D6 85 0F 81           1327 	mov	sp,_bp
   10D9 D0 0F              1328 	pop	_bp
                    04FA   1329 	C$tff.c$169$1$1 ==.
                    04FA   1330 	XFtff$get_cluster$0$0 ==.
   10DB 22                 1331 	ret
                           1332 ;------------------------------------------------------------
                           1333 ;Allocation info for local variables in function 'clust2sect'
                           1334 ;------------------------------------------------------------
                           1335 ;clust                     Allocated to stack - offset 1
                           1336 ;fs                        Allocated to stack - offset 5
                           1337 ;sloc0                     Allocated to stack - offset 8
                           1338 ;------------------------------------------------------------
                    04FB   1339 	Ftff$clust2sect$0$0 ==.
                    04FB   1340 	C$tff.c$321$1$1 ==.
                           1341 ;	tff.c:321: DWORD clust2sect (	/* !=0: sector number, 0: failed - invalid cluster# */
                           1342 ;	-----------------------------------------
                           1343 ;	 function clust2sect
                           1344 ;	-----------------------------------------
   10DC                    1345 _clust2sect:
   10DC C0 0F              1346 	push	_bp
   10DE 85 81 0F           1347 	mov	_bp,sp
                           1348 ;     genReceive
   10E1 C0 82              1349 	push	dpl
   10E3 C0 83              1350 	push	dph
   10E5 C0 F0              1351 	push	b
   10E7 C0 E0              1352 	push	acc
   10E9 E5 81              1353 	mov	a,sp
   10EB 24 0B              1354 	add	a,#0x0b
   10ED F5 81              1355 	mov	sp,a
                    050E   1356 	C$tff.c$325$1$1 ==.
                           1357 ;	tff.c:325: FATFS *fs = FatFs;
                           1358 ;	genAssign
   10EF E5 0F              1359 	mov	a,_bp
   10F1 24 05              1360 	add	a,#0x05
   10F3 F8                 1361 	mov	r0,a
   10F4 A6 0A              1362 	mov	@r0,_FatFs
   10F6 08                 1363 	inc	r0
   10F7 A6 0B              1364 	mov	@r0,(_FatFs + 1)
   10F9 08                 1365 	inc	r0
   10FA A6 0C              1366 	mov	@r0,(_FatFs + 2)
                    051B   1367 	C$tff.c$328$1$1 ==.
                           1368 ;	tff.c:328: clust -= 2;
                           1369 ;	genMinus
   10FC A8 0F              1370 	mov	r0,_bp
   10FE 08                 1371 	inc	r0
                           1372 ;	genMinusDec
   10FF E6                 1373 	mov	a,@r0
   1100 24 FE              1374 	add	a,#0xfe
   1102 F6                 1375 	mov	@r0,a
   1103 08                 1376 	inc	r0
   1104 E6                 1377 	mov	a,@r0
   1105 34 FF              1378 	addc	a,#0xff
   1107 F6                 1379 	mov	@r0,a
   1108 08                 1380 	inc	r0
   1109 E6                 1381 	mov	a,@r0
   110A 34 FF              1382 	addc	a,#0xff
   110C F6                 1383 	mov	@r0,a
   110D 08                 1384 	inc	r0
   110E E6                 1385 	mov	a,@r0
   110F 34 FF              1386 	addc	a,#0xff
   1111 F6                 1387 	mov	@r0,a
                    0531   1388 	C$tff.c$329$1$1 ==.
                           1389 ;	tff.c:329: if (clust >= (fs->max_clust - 2)) return 0;		/* Invalid cluster# */
                           1390 ;	genPlus
   1112 E5 0F              1391 	mov	a,_bp
   1114 24 05              1392 	add	a,#0x05
   1116 F8                 1393 	mov	r0,a
                           1394 ;     genPlusIncr
   1117 74 18              1395 	mov	a,#0x18
   1119 26                 1396 	add	a,@r0
   111A FB                 1397 	mov	r3,a
                           1398 ;	Peephole 181	changed mov to clr
   111B E4                 1399 	clr	a
   111C 08                 1400 	inc	r0
   111D 36                 1401 	addc	a,@r0
   111E FC                 1402 	mov	r4,a
   111F 08                 1403 	inc	r0
   1120 86 05              1404 	mov	ar5,@r0
                           1405 ;	genPointerGet
                           1406 ;	genGenPointerGet
   1122 8B 82              1407 	mov	dpl,r3
   1124 8C 83              1408 	mov	dph,r4
   1126 8D F0              1409 	mov	b,r5
   1128 12 47 8A           1410 	lcall	__gptrget
   112B FB                 1411 	mov	r3,a
   112C A3                 1412 	inc	dptr
   112D 12 47 8A           1413 	lcall	__gptrget
   1130 FC                 1414 	mov	r4,a
   1131 A3                 1415 	inc	dptr
   1132 12 47 8A           1416 	lcall	__gptrget
   1135 FD                 1417 	mov	r5,a
   1136 A3                 1418 	inc	dptr
   1137 12 47 8A           1419 	lcall	__gptrget
   113A FA                 1420 	mov	r2,a
                           1421 ;	genMinus
                           1422 ;	genMinusDec
   113B EB                 1423 	mov	a,r3
   113C 24 FE              1424 	add	a,#0xfe
   113E FB                 1425 	mov	r3,a
   113F EC                 1426 	mov	a,r4
   1140 34 FF              1427 	addc	a,#0xff
   1142 FC                 1428 	mov	r4,a
   1143 ED                 1429 	mov	a,r5
   1144 34 FF              1430 	addc	a,#0xff
   1146 FD                 1431 	mov	r5,a
   1147 EA                 1432 	mov	a,r2
   1148 34 FF              1433 	addc	a,#0xff
   114A FA                 1434 	mov	r2,a
                           1435 ;	genCmpLt
   114B A8 0F              1436 	mov	r0,_bp
   114D 08                 1437 	inc	r0
                           1438 ;	genCmp
   114E C3                 1439 	clr	c
   114F E6                 1440 	mov	a,@r0
   1150 9B                 1441 	subb	a,r3
   1151 08                 1442 	inc	r0
   1152 E6                 1443 	mov	a,@r0
   1153 9C                 1444 	subb	a,r4
   1154 08                 1445 	inc	r0
   1155 E6                 1446 	mov	a,@r0
   1156 9D                 1447 	subb	a,r5
   1157 08                 1448 	inc	r0
   1158 E6                 1449 	mov	a,@r0
   1159 9A                 1450 	subb	a,r2
                           1451 ;	genIfxJump
                           1452 ;	Peephole 112.b	changed ljmp to sjmp
                           1453 ;	Peephole 160.a	removed sjmp by inverse jump logic
   115A 40 09              1454 	jc	00102$
                           1455 ;	Peephole 300	removed redundant label 00106$
                           1456 ;	genRet
                           1457 ;	Peephole 3.a	changed mov to clr
                           1458 ;	Peephole 3.b	changed mov to clr
                           1459 ;	Peephole 182.d	used 16 bit load of dptr
   115C 90 00 00           1460 	mov	dptr,#(0x00&0x00ff)
   115F E4                 1461 	clr	a
   1160 F5 F0              1462 	mov	b,a
   1162 02 11 F9           1463 	ljmp	00103$
   1165                    1464 00102$:
                    0584   1465 	C$tff.c$330$1$1 ==.
                           1466 ;	tff.c:330: return (DWORD)clust * fs->sects_clust + fs->database;
                           1467 ;	genPlus
   1165 E5 0F              1468 	mov	a,_bp
   1167 24 05              1469 	add	a,#0x05
   1169 F8                 1470 	mov	r0,a
                           1471 ;     genPlusIncr
   116A 74 1D              1472 	mov	a,#0x1D
   116C 26                 1473 	add	a,@r0
   116D FA                 1474 	mov	r2,a
                           1475 ;	Peephole 181	changed mov to clr
   116E E4                 1476 	clr	a
   116F 08                 1477 	inc	r0
   1170 36                 1478 	addc	a,@r0
   1171 FB                 1479 	mov	r3,a
   1172 08                 1480 	inc	r0
   1173 86 04              1481 	mov	ar4,@r0
                           1482 ;	genPointerGet
                           1483 ;	genGenPointerGet
   1175 8A 82              1484 	mov	dpl,r2
   1177 8B 83              1485 	mov	dph,r3
   1179 8C F0              1486 	mov	b,r4
   117B 12 47 8A           1487 	lcall	__gptrget
   117E FA                 1488 	mov	r2,a
                           1489 ;	genCast
   117F 7B 00              1490 	mov	r3,#0x00
   1181 7C 00              1491 	mov	r4,#0x00
   1183 7D 00              1492 	mov	r5,#0x00
                           1493 ;	genIpush
   1185 C0 02              1494 	push	ar2
   1187 C0 03              1495 	push	ar3
   1189 C0 04              1496 	push	ar4
   118B C0 05              1497 	push	ar5
                           1498 ;	genCall
   118D A8 0F              1499 	mov	r0,_bp
   118F 08                 1500 	inc	r0
   1190 86 82              1501 	mov	dpl,@r0
   1192 08                 1502 	inc	r0
   1193 86 83              1503 	mov	dph,@r0
   1195 08                 1504 	inc	r0
   1196 86 F0              1505 	mov	b,@r0
   1198 08                 1506 	inc	r0
   1199 E6                 1507 	mov	a,@r0
   119A 12 47 A6           1508 	lcall	__mullong
   119D C0 E0              1509 	push	acc
   119F E5 0F              1510 	mov	a,_bp
   11A1 24 08              1511 	add	a,#0x08
   11A3 F8                 1512 	mov	r0,a
   11A4 D0 E0              1513 	pop	acc
   11A6 A6 82              1514 	mov	@r0,dpl
   11A8 08                 1515 	inc	r0
   11A9 A6 83              1516 	mov	@r0,dph
   11AB 08                 1517 	inc	r0
   11AC A6 F0              1518 	mov	@r0,b
   11AE 08                 1519 	inc	r0
   11AF F6                 1520 	mov	@r0,a
   11B0 E5 81              1521 	mov	a,sp
   11B2 24 FC              1522 	add	a,#0xfc
   11B4 F5 81              1523 	mov	sp,a
                           1524 ;	genPlus
   11B6 E5 0F              1525 	mov	a,_bp
   11B8 24 05              1526 	add	a,#0x05
   11BA F8                 1527 	mov	r0,a
                           1528 ;     genPlusIncr
   11BB 74 10              1529 	mov	a,#0x10
   11BD 26                 1530 	add	a,@r0
   11BE FE                 1531 	mov	r6,a
                           1532 ;	Peephole 181	changed mov to clr
   11BF E4                 1533 	clr	a
   11C0 08                 1534 	inc	r0
   11C1 36                 1535 	addc	a,@r0
   11C2 FF                 1536 	mov	r7,a
   11C3 08                 1537 	inc	r0
   11C4 86 02              1538 	mov	ar2,@r0
                           1539 ;	genPointerGet
                           1540 ;	genGenPointerGet
   11C6 8E 82              1541 	mov	dpl,r6
   11C8 8F 83              1542 	mov	dph,r7
   11CA 8A F0              1543 	mov	b,r2
   11CC 12 47 8A           1544 	lcall	__gptrget
   11CF FE                 1545 	mov	r6,a
   11D0 A3                 1546 	inc	dptr
   11D1 12 47 8A           1547 	lcall	__gptrget
   11D4 FF                 1548 	mov	r7,a
   11D5 A3                 1549 	inc	dptr
   11D6 12 47 8A           1550 	lcall	__gptrget
   11D9 FA                 1551 	mov	r2,a
   11DA A3                 1552 	inc	dptr
   11DB 12 47 8A           1553 	lcall	__gptrget
   11DE FB                 1554 	mov	r3,a
                           1555 ;	genPlus
   11DF E5 0F              1556 	mov	a,_bp
   11E1 24 08              1557 	add	a,#0x08
   11E3 F8                 1558 	mov	r0,a
                           1559 ;	Peephole 236.g	used r6 instead of ar6
   11E4 EE                 1560 	mov	a,r6
   11E5 26                 1561 	add	a,@r0
   11E6 FE                 1562 	mov	r6,a
                           1563 ;	Peephole 236.g	used r7 instead of ar7
   11E7 EF                 1564 	mov	a,r7
   11E8 08                 1565 	inc	r0
   11E9 36                 1566 	addc	a,@r0
   11EA FF                 1567 	mov	r7,a
                           1568 ;	Peephole 236.g	used r2 instead of ar2
   11EB EA                 1569 	mov	a,r2
   11EC 08                 1570 	inc	r0
   11ED 36                 1571 	addc	a,@r0
   11EE FA                 1572 	mov	r2,a
                           1573 ;	Peephole 236.g	used r3 instead of ar3
   11EF EB                 1574 	mov	a,r3
   11F0 08                 1575 	inc	r0
   11F1 36                 1576 	addc	a,@r0
                           1577 ;	genRet
   11F2 FB                 1578 	mov	r3,a
   11F3 8E 82              1579 	mov	dpl,r6
   11F5 8F 83              1580 	mov	dph,r7
   11F7 8A F0              1581 	mov	b,r2
                           1582 ;	Peephole 191	removed redundant mov
   11F9                    1583 00103$:
   11F9 85 0F 81           1584 	mov	sp,_bp
   11FC D0 0F              1585 	pop	_bp
                    061D   1586 	C$tff.c$331$1$1 ==.
                    061D   1587 	XFtff$clust2sect$0$0 ==.
   11FE 22                 1588 	ret
                           1589 ;------------------------------------------------------------
                           1590 ;Allocation info for local variables in function 'next_dir_entry'
                           1591 ;------------------------------------------------------------
                           1592 ;dirobj                    Allocated to stack - offset 1
                           1593 ;clust                     Allocated to stack - offset 4
                           1594 ;idx                       Allocated to stack - offset 8
                           1595 ;fs                        Allocated to stack - offset 10
                           1596 ;sloc0                     Allocated to stack - offset 13
                           1597 ;sloc1                     Allocated to stack - offset 16
                           1598 ;sloc2                     Allocated to stack - offset 19
                           1599 ;sloc3                     Allocated to stack - offset 23
                           1600 ;------------------------------------------------------------
                    061E   1601 	Ftff$next_dir_entry$0$0 ==.
                    061E   1602 	C$tff.c$341$1$1 ==.
                           1603 ;	tff.c:341: BOOL next_dir_entry (	/* TRUE: successful, FALSE: could not move next */
                           1604 ;	-----------------------------------------
                           1605 ;	 function next_dir_entry
                           1606 ;	-----------------------------------------
   11FF                    1607 _next_dir_entry:
   11FF C0 0F              1608 	push	_bp
   1201 85 81 0F           1609 	mov	_bp,sp
                           1610 ;     genReceive
   1204 C0 82              1611 	push	dpl
   1206 C0 83              1612 	push	dph
   1208 C0 F0              1613 	push	b
   120A E5 81              1614 	mov	a,sp
   120C 24 19              1615 	add	a,#0x19
   120E F5 81              1616 	mov	sp,a
                    062F   1617 	C$tff.c$347$1$1 ==.
                           1618 ;	tff.c:347: FATFS *fs = FatFs;
                           1619 ;	genAssign
   1210 E5 0F              1620 	mov	a,_bp
   1212 24 0A              1621 	add	a,#0x0a
   1214 F8                 1622 	mov	r0,a
   1215 A6 0A              1623 	mov	@r0,_FatFs
   1217 08                 1624 	inc	r0
   1218 A6 0B              1625 	mov	@r0,(_FatFs + 1)
   121A 08                 1626 	inc	r0
   121B A6 0C              1627 	mov	@r0,(_FatFs + 2)
                    063C   1628 	C$tff.c$350$1$1 ==.
                           1629 ;	tff.c:350: idx = dirobj->index + 1;
                           1630 ;	genPlus
   121D A8 0F              1631 	mov	r0,_bp
   121F 08                 1632 	inc	r0
   1220 E5 0F              1633 	mov	a,_bp
   1222 24 17              1634 	add	a,#0x17
   1224 F9                 1635 	mov	r1,a
                           1636 ;     genPlusIncr
   1225 74 02              1637 	mov	a,#0x02
   1227 26                 1638 	add	a,@r0
   1228 F7                 1639 	mov	@r1,a
                           1640 ;	Peephole 181	changed mov to clr
   1229 E4                 1641 	clr	a
   122A 08                 1642 	inc	r0
   122B 36                 1643 	addc	a,@r0
   122C 09                 1644 	inc	r1
   122D F7                 1645 	mov	@r1,a
   122E 08                 1646 	inc	r0
   122F 09                 1647 	inc	r1
   1230 E6                 1648 	mov	a,@r0
   1231 F7                 1649 	mov	@r1,a
                           1650 ;	genPointerGet
                           1651 ;	genGenPointerGet
   1232 E5 0F              1652 	mov	a,_bp
   1234 24 17              1653 	add	a,#0x17
   1236 F8                 1654 	mov	r0,a
   1237 86 82              1655 	mov	dpl,@r0
   1239 08                 1656 	inc	r0
   123A 86 83              1657 	mov	dph,@r0
   123C 08                 1658 	inc	r0
   123D 86 F0              1659 	mov	b,@r0
   123F 12 47 8A           1660 	lcall	__gptrget
   1242 FA                 1661 	mov	r2,a
   1243 A3                 1662 	inc	dptr
   1244 12 47 8A           1663 	lcall	__gptrget
   1247 FB                 1664 	mov	r3,a
                           1665 ;	genPlus
   1248 E5 0F              1666 	mov	a,_bp
   124A 24 08              1667 	add	a,#0x08
   124C F8                 1668 	mov	r0,a
                           1669 ;     genPlusIncr
   124D 74 01              1670 	mov	a,#0x01
                           1671 ;	Peephole 236.a	used r2 instead of ar2
   124F 2A                 1672 	add	a,r2
   1250 F6                 1673 	mov	@r0,a
                           1674 ;	Peephole 181	changed mov to clr
   1251 E4                 1675 	clr	a
                           1676 ;	Peephole 236.b	used r3 instead of ar3
   1252 3B                 1677 	addc	a,r3
   1253 08                 1678 	inc	r0
   1254 F6                 1679 	mov	@r0,a
                    0674   1680 	C$tff.c$351$1$1 ==.
                           1681 ;	tff.c:351: if ((idx & 15) == 0) {		/* Table sector changed? */
                           1682 ;	genAnd
   1255 E5 0F              1683 	mov	a,_bp
   1257 24 08              1684 	add	a,#0x08
   1259 F8                 1685 	mov	r0,a
   125A E6                 1686 	mov	a,@r0
   125B 54 0F              1687 	anl	a,#0x0F
                           1688 ;	Peephole 160.c	removed sjmp by inverse jump logic
   125D 60 03              1689 	jz	00121$
                           1690 ;	Peephole 300	removed redundant label 00120$
   125F 02 14 6B           1691 	ljmp	00112$
   1262                    1692 00121$:
                    0681   1693 	C$tff.c$352$1$1 ==.
                           1694 ;	tff.c:352: dirobj->sect++;			/* Next sector */
                           1695 ;	genIpush
                           1696 ;	genPlus
   1262 A8 0F              1697 	mov	r0,_bp
   1264 08                 1698 	inc	r0
   1265 E5 0F              1699 	mov	a,_bp
   1267 24 0D              1700 	add	a,#0x0d
   1269 F9                 1701 	mov	r1,a
                           1702 ;     genPlusIncr
   126A 74 0F              1703 	mov	a,#0x0F
   126C 26                 1704 	add	a,@r0
   126D F7                 1705 	mov	@r1,a
                           1706 ;	Peephole 181	changed mov to clr
   126E E4                 1707 	clr	a
   126F 08                 1708 	inc	r0
   1270 36                 1709 	addc	a,@r0
   1271 09                 1710 	inc	r1
   1272 F7                 1711 	mov	@r1,a
   1273 08                 1712 	inc	r0
   1274 09                 1713 	inc	r1
   1275 E6                 1714 	mov	a,@r0
   1276 F7                 1715 	mov	@r1,a
                           1716 ;	genPointerGet
                           1717 ;	genGenPointerGet
   1277 E5 0F              1718 	mov	a,_bp
   1279 24 0D              1719 	add	a,#0x0d
   127B F8                 1720 	mov	r0,a
   127C 86 82              1721 	mov	dpl,@r0
   127E 08                 1722 	inc	r0
   127F 86 83              1723 	mov	dph,@r0
   1281 08                 1724 	inc	r0
   1282 86 F0              1725 	mov	b,@r0
   1284 12 47 8A           1726 	lcall	__gptrget
   1287 FC                 1727 	mov	r4,a
   1288 A3                 1728 	inc	dptr
   1289 12 47 8A           1729 	lcall	__gptrget
   128C FD                 1730 	mov	r5,a
   128D A3                 1731 	inc	dptr
   128E 12 47 8A           1732 	lcall	__gptrget
   1291 FE                 1733 	mov	r6,a
   1292 A3                 1734 	inc	dptr
   1293 12 47 8A           1735 	lcall	__gptrget
   1296 FF                 1736 	mov	r7,a
                           1737 ;	genPlus
                           1738 ;     genPlusIncr
   1297 0C                 1739 	inc	r4
   1298 BC 00 09           1740 	cjne	r4,#0x00,00122$
   129B 0D                 1741 	inc	r5
   129C BD 00 05           1742 	cjne	r5,#0x00,00122$
   129F 0E                 1743 	inc	r6
   12A0 BE 00 01           1744 	cjne	r6,#0x00,00122$
   12A3 0F                 1745 	inc	r7
   12A4                    1746 00122$:
                           1747 ;	genPointerSet
                           1748 ;	genGenPointerSet
   12A4 E5 0F              1749 	mov	a,_bp
   12A6 24 0D              1750 	add	a,#0x0d
   12A8 F8                 1751 	mov	r0,a
   12A9 86 82              1752 	mov	dpl,@r0
   12AB 08                 1753 	inc	r0
   12AC 86 83              1754 	mov	dph,@r0
   12AE 08                 1755 	inc	r0
   12AF 86 F0              1756 	mov	b,@r0
   12B1 EC                 1757 	mov	a,r4
   12B2 12 42 DC           1758 	lcall	__gptrput
   12B5 A3                 1759 	inc	dptr
   12B6 ED                 1760 	mov	a,r5
   12B7 12 42 DC           1761 	lcall	__gptrput
   12BA A3                 1762 	inc	dptr
   12BB EE                 1763 	mov	a,r6
   12BC 12 42 DC           1764 	lcall	__gptrput
   12BF A3                 1765 	inc	dptr
   12C0 EF                 1766 	mov	a,r7
   12C1 12 42 DC           1767 	lcall	__gptrput
                    06E3   1768 	C$tff.c$353$2$2 ==.
                           1769 ;	tff.c:353: if (!dirobj->clust) {		/* In static table */
                           1770 ;	genPlus
   12C4 A8 0F              1771 	mov	r0,_bp
   12C6 08                 1772 	inc	r0
   12C7 E5 0F              1773 	mov	a,_bp
   12C9 24 10              1774 	add	a,#0x10
   12CB F9                 1775 	mov	r1,a
                           1776 ;     genPlusIncr
   12CC 74 0B              1777 	mov	a,#0x0B
   12CE 26                 1778 	add	a,@r0
   12CF F7                 1779 	mov	@r1,a
                           1780 ;	Peephole 181	changed mov to clr
   12D0 E4                 1781 	clr	a
   12D1 08                 1782 	inc	r0
   12D2 36                 1783 	addc	a,@r0
   12D3 09                 1784 	inc	r1
   12D4 F7                 1785 	mov	@r1,a
   12D5 08                 1786 	inc	r0
   12D6 09                 1787 	inc	r1
   12D7 E6                 1788 	mov	a,@r0
   12D8 F7                 1789 	mov	@r1,a
                           1790 ;	genPointerGet
                           1791 ;	genGenPointerGet
   12D9 E5 0F              1792 	mov	a,_bp
   12DB 24 10              1793 	add	a,#0x10
   12DD F8                 1794 	mov	r0,a
   12DE 86 82              1795 	mov	dpl,@r0
   12E0 08                 1796 	inc	r0
   12E1 86 83              1797 	mov	dph,@r0
   12E3 08                 1798 	inc	r0
   12E4 86 F0              1799 	mov	b,@r0
   12E6 E5 0F              1800 	mov	a,_bp
   12E8 24 13              1801 	add	a,#0x13
   12EA F9                 1802 	mov	r1,a
   12EB 12 47 8A           1803 	lcall	__gptrget
   12EE F7                 1804 	mov	@r1,a
   12EF A3                 1805 	inc	dptr
   12F0 12 47 8A           1806 	lcall	__gptrget
   12F3 09                 1807 	inc	r1
   12F4 F7                 1808 	mov	@r1,a
   12F5 A3                 1809 	inc	dptr
   12F6 12 47 8A           1810 	lcall	__gptrget
   12F9 09                 1811 	inc	r1
   12FA F7                 1812 	mov	@r1,a
   12FB A3                 1813 	inc	dptr
   12FC 12 47 8A           1814 	lcall	__gptrget
   12FF 09                 1815 	inc	r1
   1300 F7                 1816 	mov	@r1,a
                           1817 ;	genIpop
                           1818 ;	genIfx
   1301 E5 0F              1819 	mov	a,_bp
   1303 24 13              1820 	add	a,#0x13
   1305 F8                 1821 	mov	r0,a
   1306 E6                 1822 	mov	a,@r0
   1307 08                 1823 	inc	r0
   1308 46                 1824 	orl	a,@r0
   1309 08                 1825 	inc	r0
   130A 46                 1826 	orl	a,@r0
   130B 08                 1827 	inc	r0
   130C 46                 1828 	orl	a,@r0
                           1829 ;	genIfxJump
                           1830 ;	Peephole 108.b	removed ljmp by inverse jump logic
   130D 70 35              1831 	jnz	00109$
                           1832 ;	Peephole 300	removed redundant label 00123$
                    072E   1833 	C$tff.c$354$1$1 ==.
                           1834 ;	tff.c:354: if (idx >= fs->n_rootdir) return FALSE;	/* Reached to end of table */
                           1835 ;	genIpush
                           1836 ;	genPlus
   130F E5 0F              1837 	mov	a,_bp
   1311 24 0A              1838 	add	a,#0x0a
   1313 F8                 1839 	mov	r0,a
                           1840 ;     genPlusIncr
   1314 74 02              1841 	mov	a,#0x02
   1316 26                 1842 	add	a,@r0
   1317 FC                 1843 	mov	r4,a
                           1844 ;	Peephole 181	changed mov to clr
   1318 E4                 1845 	clr	a
   1319 08                 1846 	inc	r0
   131A 36                 1847 	addc	a,@r0
   131B FD                 1848 	mov	r5,a
   131C 08                 1849 	inc	r0
   131D 86 06              1850 	mov	ar6,@r0
                           1851 ;	genPointerGet
                           1852 ;	genGenPointerGet
   131F 8C 82              1853 	mov	dpl,r4
   1321 8D 83              1854 	mov	dph,r5
   1323 8E F0              1855 	mov	b,r6
   1325 12 47 8A           1856 	lcall	__gptrget
   1328 FC                 1857 	mov	r4,a
   1329 A3                 1858 	inc	dptr
   132A 12 47 8A           1859 	lcall	__gptrget
   132D FD                 1860 	mov	r5,a
                           1861 ;	genCmpLt
   132E E5 0F              1862 	mov	a,_bp
   1330 24 08              1863 	add	a,#0x08
   1332 F8                 1864 	mov	r0,a
                           1865 ;	genCmp
   1333 C3                 1866 	clr	c
   1334 E6                 1867 	mov	a,@r0
   1335 9C                 1868 	subb	a,r4
   1336 08                 1869 	inc	r0
   1337 E6                 1870 	mov	a,@r0
   1338 9D                 1871 	subb	a,r5
                           1872 ;	genIpop
                           1873 ;	genIfx
                           1874 ;	genIfxJump
                           1875 ;	Peephole 128	jump optimization
   1339 50 03              1876 	jnc	00124$
   133B 02 14 6B           1877 	ljmp	00112$
   133E                    1878 00124$:
                           1879 ;	genRet
   133E 75 82 00           1880 	mov	dpl,#0x00
   1341 02 14 8A           1881 	ljmp	00113$
   1344                    1882 00109$:
                    0763   1883 	C$tff.c$356$1$1 ==.
                           1884 ;	tff.c:356: if (((idx / 16) & (fs->sects_clust - 1)) == 0) {	/* Cluster changed? */
                           1885 ;	genIpush
                           1886 ;	genRightShift
                           1887 ;	genRightShiftLiteral
   1344 E5 0F              1888 	mov	a,_bp
   1346 24 08              1889 	add	a,#0x08
   1348 F8                 1890 	mov	r0,a
                           1891 ;	genrshTwo
   1349 86 04              1892 	mov	ar4,@r0
   134B 08                 1893 	inc	r0
   134C E6                 1894 	mov	a,@r0
   134D C4                 1895 	swap	a
   134E CC                 1896 	xch	a,r4
   134F C4                 1897 	swap	a
   1350 54 0F              1898 	anl	a,#0x0f
   1352 6C                 1899 	xrl	a,r4
   1353 CC                 1900 	xch	a,r4
   1354 54 0F              1901 	anl	a,#0x0f
   1356 CC                 1902 	xch	a,r4
   1357 6C                 1903 	xrl	a,r4
   1358 CC                 1904 	xch	a,r4
   1359 FD                 1905 	mov	r5,a
                           1906 ;	genPlus
   135A E5 0F              1907 	mov	a,_bp
   135C 24 0A              1908 	add	a,#0x0a
   135E F8                 1909 	mov	r0,a
                           1910 ;     genPlusIncr
   135F 74 1D              1911 	mov	a,#0x1D
   1361 26                 1912 	add	a,@r0
   1362 FE                 1913 	mov	r6,a
                           1914 ;	Peephole 181	changed mov to clr
   1363 E4                 1915 	clr	a
   1364 08                 1916 	inc	r0
   1365 36                 1917 	addc	a,@r0
   1366 FF                 1918 	mov	r7,a
   1367 08                 1919 	inc	r0
   1368 86 02              1920 	mov	ar2,@r0
                           1921 ;	genPointerGet
                           1922 ;	genGenPointerGet
   136A 8E 82              1923 	mov	dpl,r6
   136C 8F 83              1924 	mov	dph,r7
   136E 8A F0              1925 	mov	b,r2
   1370 12 47 8A           1926 	lcall	__gptrget
   1373 FE                 1927 	mov	r6,a
                           1928 ;	genCast
   1374 7A 00              1929 	mov	r2,#0x00
                           1930 ;	genMinus
                           1931 ;	genMinusDec
   1376 1E                 1932 	dec	r6
   1377 BE FF 01           1933 	cjne	r6,#0xff,00125$
   137A 1A                 1934 	dec	r2
   137B                    1935 00125$:
                           1936 ;	genAnd
   137B EE                 1937 	mov	a,r6
   137C 52 04              1938 	anl	ar4,a
   137E EA                 1939 	mov	a,r2
   137F 52 05              1940 	anl	ar5,a
                           1941 ;	genIfx
   1381 EC                 1942 	mov	a,r4
   1382 4D                 1943 	orl	a,r5
                           1944 ;	genIpop
                           1945 ;	genIfxJump
   1383 60 03              1946 	jz	00126$
   1385 02 14 6B           1947 	ljmp	00112$
   1388                    1948 00126$:
                    07A7   1949 	C$tff.c$357$4$5 ==.
                           1950 ;	tff.c:357: clust = get_cluster(dirobj->clust);			/* Get next cluster */
                           1951 ;	genCall
   1388 E5 0F              1952 	mov	a,_bp
   138A 24 13              1953 	add	a,#0x13
   138C F8                 1954 	mov	r0,a
   138D 86 82              1955 	mov	dpl,@r0
   138F 08                 1956 	inc	r0
   1390 86 83              1957 	mov	dph,@r0
   1392 08                 1958 	inc	r0
   1393 86 F0              1959 	mov	b,@r0
   1395 08                 1960 	inc	r0
   1396 E6                 1961 	mov	a,@r0
   1397 12 0C CB           1962 	lcall	_get_cluster
   139A AA 82              1963 	mov	r2,dpl
   139C AB 83              1964 	mov	r3,dph
   139E AC F0              1965 	mov	r4,b
   13A0 FD                 1966 	mov	r5,a
                           1967 ;	genAssign
   13A1 E5 0F              1968 	mov	a,_bp
   13A3 24 04              1969 	add	a,#0x04
   13A5 F8                 1970 	mov	r0,a
   13A6 A6 02              1971 	mov	@r0,ar2
   13A8 08                 1972 	inc	r0
   13A9 A6 03              1973 	mov	@r0,ar3
   13AB 08                 1974 	inc	r0
   13AC A6 04              1975 	mov	@r0,ar4
   13AE 08                 1976 	inc	r0
   13AF A6 05              1977 	mov	@r0,ar5
                    07D0   1978 	C$tff.c$358$4$5 ==.
                           1979 ;	tff.c:358: if (clust < 2 || clust >= fs->max_clust)	/* Reached to end of table */
                           1980 ;	genCmpLt
   13B1 E5 0F              1981 	mov	a,_bp
   13B3 24 04              1982 	add	a,#0x04
   13B5 F8                 1983 	mov	r0,a
                           1984 ;	genCmp
   13B6 C3                 1985 	clr	c
   13B7 E6                 1986 	mov	a,@r0
   13B8 94 02              1987 	subb	a,#0x02
   13BA 08                 1988 	inc	r0
   13BB E6                 1989 	mov	a,@r0
   13BC 94 00              1990 	subb	a,#0x00
   13BE 08                 1991 	inc	r0
   13BF E6                 1992 	mov	a,@r0
   13C0 94 00              1993 	subb	a,#0x00
   13C2 08                 1994 	inc	r0
   13C3 E6                 1995 	mov	a,@r0
   13C4 94 00              1996 	subb	a,#0x00
                           1997 ;	genIfxJump
                           1998 ;	Peephole 112.b	changed ljmp to sjmp
                           1999 ;	Peephole 160.a	removed sjmp by inverse jump logic
   13C6 40 3C              2000 	jc	00103$
                           2001 ;	Peephole 300	removed redundant label 00127$
                           2002 ;	genPlus
   13C8 E5 0F              2003 	mov	a,_bp
   13CA 24 0A              2004 	add	a,#0x0a
   13CC F8                 2005 	mov	r0,a
                           2006 ;     genPlusIncr
   13CD 74 18              2007 	mov	a,#0x18
   13CF 26                 2008 	add	a,@r0
   13D0 FE                 2009 	mov	r6,a
                           2010 ;	Peephole 181	changed mov to clr
   13D1 E4                 2011 	clr	a
   13D2 08                 2012 	inc	r0
   13D3 36                 2013 	addc	a,@r0
   13D4 FF                 2014 	mov	r7,a
   13D5 08                 2015 	inc	r0
   13D6 86 02              2016 	mov	ar2,@r0
                           2017 ;	genPointerGet
                           2018 ;	genGenPointerGet
   13D8 8E 82              2019 	mov	dpl,r6
   13DA 8F 83              2020 	mov	dph,r7
   13DC 8A F0              2021 	mov	b,r2
   13DE 12 47 8A           2022 	lcall	__gptrget
   13E1 FE                 2023 	mov	r6,a
   13E2 A3                 2024 	inc	dptr
   13E3 12 47 8A           2025 	lcall	__gptrget
   13E6 FF                 2026 	mov	r7,a
   13E7 A3                 2027 	inc	dptr
   13E8 12 47 8A           2028 	lcall	__gptrget
   13EB FA                 2029 	mov	r2,a
   13EC A3                 2030 	inc	dptr
   13ED 12 47 8A           2031 	lcall	__gptrget
   13F0 FB                 2032 	mov	r3,a
                           2033 ;	genCmpLt
   13F1 E5 0F              2034 	mov	a,_bp
   13F3 24 04              2035 	add	a,#0x04
   13F5 F8                 2036 	mov	r0,a
                           2037 ;	genCmp
   13F6 C3                 2038 	clr	c
   13F7 E6                 2039 	mov	a,@r0
   13F8 9E                 2040 	subb	a,r6
   13F9 08                 2041 	inc	r0
   13FA E6                 2042 	mov	a,@r0
   13FB 9F                 2043 	subb	a,r7
   13FC 08                 2044 	inc	r0
   13FD E6                 2045 	mov	a,@r0
   13FE 9A                 2046 	subb	a,r2
   13FF 08                 2047 	inc	r0
   1400 E6                 2048 	mov	a,@r0
   1401 9B                 2049 	subb	a,r3
                           2050 ;	genIfxJump
                           2051 ;	Peephole 112.b	changed ljmp to sjmp
                           2052 ;	Peephole 160.a	removed sjmp by inverse jump logic
   1402 40 06              2053 	jc	00104$
                           2054 ;	Peephole 300	removed redundant label 00128$
   1404                    2055 00103$:
                    0823   2056 	C$tff.c$359$4$5 ==.
                           2057 ;	tff.c:359: return FALSE;
                           2058 ;	genRet
   1404 75 82 00           2059 	mov	dpl,#0x00
   1407 02 14 8A           2060 	ljmp	00113$
   140A                    2061 00104$:
                    0829   2062 	C$tff.c$360$4$5 ==.
                           2063 ;	tff.c:360: dirobj->clust = clust;				/* Initialize for new cluster */
                           2064 ;	genPointerSet
                           2065 ;	genGenPointerSet
   140A E5 0F              2066 	mov	a,_bp
   140C 24 10              2067 	add	a,#0x10
   140E F8                 2068 	mov	r0,a
   140F 86 82              2069 	mov	dpl,@r0
   1411 08                 2070 	inc	r0
   1412 86 83              2071 	mov	dph,@r0
   1414 08                 2072 	inc	r0
   1415 86 F0              2073 	mov	b,@r0
   1417 E5 0F              2074 	mov	a,_bp
   1419 24 04              2075 	add	a,#0x04
   141B F9                 2076 	mov	r1,a
   141C E7                 2077 	mov	a,@r1
   141D 12 42 DC           2078 	lcall	__gptrput
   1420 A3                 2079 	inc	dptr
   1421 09                 2080 	inc	r1
   1422 E7                 2081 	mov	a,@r1
   1423 12 42 DC           2082 	lcall	__gptrput
   1426 A3                 2083 	inc	dptr
   1427 09                 2084 	inc	r1
   1428 E7                 2085 	mov	a,@r1
   1429 12 42 DC           2086 	lcall	__gptrput
   142C A3                 2087 	inc	dptr
   142D 09                 2088 	inc	r1
   142E E7                 2089 	mov	a,@r1
   142F 12 42 DC           2090 	lcall	__gptrput
                    0851   2091 	C$tff.c$361$4$5 ==.
                           2092 ;	tff.c:361: dirobj->sect = clust2sect(clust);
                           2093 ;	genCall
   1432 E5 0F              2094 	mov	a,_bp
   1434 24 04              2095 	add	a,#0x04
   1436 F8                 2096 	mov	r0,a
   1437 86 82              2097 	mov	dpl,@r0
   1439 08                 2098 	inc	r0
   143A 86 83              2099 	mov	dph,@r0
   143C 08                 2100 	inc	r0
   143D 86 F0              2101 	mov	b,@r0
   143F 08                 2102 	inc	r0
   1440 E6                 2103 	mov	a,@r0
   1441 12 10 DC           2104 	lcall	_clust2sect
   1444 AA 82              2105 	mov	r2,dpl
   1446 AB 83              2106 	mov	r3,dph
   1448 AC F0              2107 	mov	r4,b
   144A FD                 2108 	mov	r5,a
                           2109 ;	genPointerSet
                           2110 ;	genGenPointerSet
   144B E5 0F              2111 	mov	a,_bp
   144D 24 0D              2112 	add	a,#0x0d
   144F F8                 2113 	mov	r0,a
   1450 86 82              2114 	mov	dpl,@r0
   1452 08                 2115 	inc	r0
   1453 86 83              2116 	mov	dph,@r0
   1455 08                 2117 	inc	r0
   1456 86 F0              2118 	mov	b,@r0
   1458 EA                 2119 	mov	a,r2
   1459 12 42 DC           2120 	lcall	__gptrput
   145C A3                 2121 	inc	dptr
   145D EB                 2122 	mov	a,r3
   145E 12 42 DC           2123 	lcall	__gptrput
   1461 A3                 2124 	inc	dptr
   1462 EC                 2125 	mov	a,r4
   1463 12 42 DC           2126 	lcall	__gptrput
   1466 A3                 2127 	inc	dptr
   1467 ED                 2128 	mov	a,r5
   1468 12 42 DC           2129 	lcall	__gptrput
   146B                    2130 00112$:
                    088A   2131 	C$tff.c$365$1$1 ==.
                           2132 ;	tff.c:365: dirobj->index = idx;	/* Lower 4 bit of dirobj->index indicates offset in dirobj->sect */
                           2133 ;	genPointerSet
                           2134 ;	genGenPointerSet
   146B E5 0F              2135 	mov	a,_bp
   146D 24 17              2136 	add	a,#0x17
   146F F8                 2137 	mov	r0,a
   1470 86 82              2138 	mov	dpl,@r0
   1472 08                 2139 	inc	r0
   1473 86 83              2140 	mov	dph,@r0
   1475 08                 2141 	inc	r0
   1476 86 F0              2142 	mov	b,@r0
   1478 E5 0F              2143 	mov	a,_bp
   147A 24 08              2144 	add	a,#0x08
   147C F9                 2145 	mov	r1,a
   147D E7                 2146 	mov	a,@r1
   147E 12 42 DC           2147 	lcall	__gptrput
   1481 A3                 2148 	inc	dptr
   1482 09                 2149 	inc	r1
   1483 E7                 2150 	mov	a,@r1
   1484 12 42 DC           2151 	lcall	__gptrput
                    08A6   2152 	C$tff.c$366$1$1 ==.
                           2153 ;	tff.c:366: return TRUE;
                           2154 ;	genRet
   1487 75 82 01           2155 	mov	dpl,#0x01
   148A                    2156 00113$:
   148A 85 0F 81           2157 	mov	sp,_bp
   148D D0 0F              2158 	pop	_bp
                    08AE   2159 	C$tff.c$367$1$1 ==.
                    08AE   2160 	XFtff$next_dir_entry$0$0 ==.
   148F 22                 2161 	ret
                           2162 ;------------------------------------------------------------
                           2163 ;Allocation info for local variables in function 'get_fileinfo'
                           2164 ;------------------------------------------------------------
                           2165 ;dir                       Allocated to stack - offset -5
                           2166 ;finfo                     Allocated to stack - offset 1
                           2167 ;n                         Allocated to stack - offset 4
                           2168 ;c                         Allocated to stack - offset 5
                           2169 ;a                         Allocated to registers r5 
                           2170 ;p                         Allocated to stack - offset 6
                           2171 ;sloc0                     Allocated to stack - offset 9
                           2172 ;sloc1                     Allocated to stack - offset 12
                           2173 ;------------------------------------------------------------
                    08AF   2174 	Ftff$get_fileinfo$0$0 ==.
                    08AF   2175 	C$tff.c$378$1$1 ==.
                           2176 ;	tff.c:378: void get_fileinfo (		/* No return code */
                           2177 ;	-----------------------------------------
                           2178 ;	 function get_fileinfo
                           2179 ;	-----------------------------------------
   1490                    2180 _get_fileinfo:
   1490 C0 0F              2181 	push	_bp
   1492 85 81 0F           2182 	mov	_bp,sp
                           2183 ;     genReceive
   1495 C0 82              2184 	push	dpl
   1497 C0 83              2185 	push	dph
   1499 C0 F0              2186 	push	b
   149B E5 81              2187 	mov	a,sp
   149D 24 0F              2188 	add	a,#0x0f
   149F F5 81              2189 	mov	sp,a
                    08C0   2190 	C$tff.c$387$1$1 ==.
                           2191 ;	tff.c:387: p = &finfo->fname[0];
                           2192 ;	genPlus
   14A1 A8 0F              2193 	mov	r0,_bp
   14A3 08                 2194 	inc	r0
                           2195 ;     genPlusIncr
   14A4 74 09              2196 	mov	a,#0x09
   14A6 26                 2197 	add	a,@r0
   14A7 FD                 2198 	mov	r5,a
                           2199 ;	Peephole 181	changed mov to clr
   14A8 E4                 2200 	clr	a
   14A9 08                 2201 	inc	r0
   14AA 36                 2202 	addc	a,@r0
   14AB FE                 2203 	mov	r6,a
   14AC 08                 2204 	inc	r0
   14AD 86 07              2205 	mov	ar7,@r0
                           2206 ;	genCast
   14AF E5 0F              2207 	mov	a,_bp
   14B1 24 06              2208 	add	a,#0x06
   14B3 F8                 2209 	mov	r0,a
   14B4 A6 05              2210 	mov	@r0,ar5
   14B6 08                 2211 	inc	r0
   14B7 A6 06              2212 	mov	@r0,ar6
   14B9 08                 2213 	inc	r0
   14BA A6 07              2214 	mov	@r0,ar7
                    08DB   2215 	C$tff.c$388$1$1 ==.
                           2216 ;	tff.c:388: a = _USE_NTFLAG ? dir[DIR_NTres] : 0;	/* NT flag */
                           2217 ;	genPlus
   14BC E5 0F              2218 	mov	a,_bp
   14BE 24 FB              2219 	add	a,#0xfffffffb
   14C0 F8                 2220 	mov	r0,a
                           2221 ;     genPlusIncr
   14C1 74 0C              2222 	mov	a,#0x0C
   14C3 26                 2223 	add	a,@r0
   14C4 FD                 2224 	mov	r5,a
                           2225 ;	Peephole 181	changed mov to clr
   14C5 E4                 2226 	clr	a
   14C6 08                 2227 	inc	r0
   14C7 36                 2228 	addc	a,@r0
   14C8 FE                 2229 	mov	r6,a
   14C9 08                 2230 	inc	r0
   14CA 86 07              2231 	mov	ar7,@r0
                           2232 ;	genPointerGet
                           2233 ;	genGenPointerGet
   14CC 8D 82              2234 	mov	dpl,r5
   14CE 8E 83              2235 	mov	dph,r6
   14D0 8F F0              2236 	mov	b,r7
   14D2 12 47 8A           2237 	lcall	__gptrget
   14D5 FD                 2238 	mov	r5,a
                           2239 ;	genAssign
                    08F5   2240 	C$tff.c$389$2$2 ==.
                           2241 ;	tff.c:389: for (n = 0; n < 8; n++) {	/* Convert file name (body) */
                           2242 ;	genAnd
   14D6 74 08              2243 	mov	a,#0x08
   14D8 5D                 2244 	anl	a,r5
   14D9 FE                 2245 	mov	r6,a
                           2246 ;	genAssign
   14DA E5 0F              2247 	mov	a,_bp
   14DC 24 06              2248 	add	a,#0x06
   14DE F8                 2249 	mov	r0,a
   14DF E5 0F              2250 	mov	a,_bp
   14E1 24 09              2251 	add	a,#0x09
   14E3 F9                 2252 	mov	r1,a
   14E4 E6                 2253 	mov	a,@r0
   14E5 F7                 2254 	mov	@r1,a
   14E6 08                 2255 	inc	r0
   14E7 09                 2256 	inc	r1
   14E8 E6                 2257 	mov	a,@r0
   14E9 F7                 2258 	mov	@r1,a
   14EA 08                 2259 	inc	r0
   14EB 09                 2260 	inc	r1
   14EC E6                 2261 	mov	a,@r0
   14ED F7                 2262 	mov	@r1,a
                           2263 ;	genAssign
   14EE 7B 00              2264 	mov	r3,#0x00
   14F0                    2265 00109$:
                           2266 ;	genCmpLt
                           2267 ;	genCmp
   14F0 BB 08 00           2268 	cjne	r3,#0x08,00143$
   14F3                    2269 00143$:
                           2270 ;	genIfxJump
   14F3 40 03              2271 	jc	00144$
   14F5 02 15 79           2272 	ljmp	00141$
   14F8                    2273 00144$:
                    0917   2274 	C$tff.c$390$1$1 ==.
                           2275 ;	tff.c:390: c = dir[n];
                           2276 ;	genIpush
   14F8 C0 05              2277 	push	ar5
                           2278 ;	genPlus
   14FA E5 0F              2279 	mov	a,_bp
   14FC 24 FB              2280 	add	a,#0xfffffffb
   14FE F8                 2281 	mov	r0,a
                           2282 ;	Peephole 236.g	used r3 instead of ar3
   14FF EB                 2283 	mov	a,r3
   1500 26                 2284 	add	a,@r0
   1501 FD                 2285 	mov	r5,a
                           2286 ;	Peephole 181	changed mov to clr
   1502 E4                 2287 	clr	a
   1503 08                 2288 	inc	r0
   1504 36                 2289 	addc	a,@r0
   1505 FF                 2290 	mov	r7,a
   1506 08                 2291 	inc	r0
   1507 86 02              2292 	mov	ar2,@r0
                           2293 ;	genPointerGet
                           2294 ;	genGenPointerGet
   1509 8D 82              2295 	mov	dpl,r5
   150B 8F 83              2296 	mov	dph,r7
   150D 8A F0              2297 	mov	b,r2
   150F 12 47 8A           2298 	lcall	__gptrget
   1512 FD                 2299 	mov	r5,a
                           2300 ;	genAssign
   1513 E5 0F              2301 	mov	a,_bp
   1515 24 05              2302 	add	a,#0x05
   1517 F8                 2303 	mov	r0,a
   1518 A6 05              2304 	mov	@r0,ar5
                    0939   2305 	C$tff.c$391$2$2 ==.
                           2306 ;	tff.c:391: if (c == ' ') break;
                           2307 ;	genCmpEq
   151A E5 0F              2308 	mov	a,_bp
   151C 24 05              2309 	add	a,#0x05
   151E F8                 2310 	mov	r0,a
                           2311 ;	gencjne
                           2312 ;	gencjneshort
                           2313 ;	Peephole 241.h	optimized compare
   151F E4                 2314 	clr	a
   1520 B6 20 01           2315 	cjne	@r0,#0x20,00145$
   1523 04                 2316 	inc	a
   1524                    2317 00145$:
                           2318 ;	Peephole 300	removed redundant label 00146$
                           2319 ;	genIpop
   1524 D0 05              2320 	pop	ar5
                           2321 ;	genIfx
                           2322 ;	genIfxJump
                           2323 ;	Peephole 108.b	removed ljmp by inverse jump logic
   1526 70 51              2324 	jnz	00141$
                           2325 ;	Peephole 300	removed redundant label 00147$
                    0947   2326 	C$tff.c$392$2$2 ==.
                           2327 ;	tff.c:392: if (c == 0x05) c = 0xE5;
                           2328 ;	genCmpEq
   1528 E5 0F              2329 	mov	a,_bp
   152A 24 05              2330 	add	a,#0x05
   152C F8                 2331 	mov	r0,a
                           2332 ;	gencjneshort
                           2333 ;	Peephole 112.b	changed ljmp to sjmp
                           2334 ;	Peephole 198.b	optimized misc jump sequence
   152D B6 05 07           2335 	cjne	@r0,#0x05,00104$
                           2336 ;	Peephole 200.b	removed redundant sjmp
                           2337 ;	Peephole 300	removed redundant label 00148$
                           2338 ;	Peephole 300	removed redundant label 00149$
                           2339 ;	genAssign
   1530 E5 0F              2340 	mov	a,_bp
   1532 24 05              2341 	add	a,#0x05
   1534 F8                 2342 	mov	r0,a
   1535 76 E5              2343 	mov	@r0,#0xE5
   1537                    2344 00104$:
                    0956   2345 	C$tff.c$393$2$2 ==.
                           2346 ;	tff.c:393: if (a & 0x08 && c >= 'A' && c <= 'Z') c += 0x20;
                           2347 ;	genIfx
   1537 EE                 2348 	mov	a,r6
                           2349 ;	genIfxJump
                           2350 ;	Peephole 108.c	removed ljmp by inverse jump logic
   1538 60 1D              2351 	jz	00106$
                           2352 ;	Peephole 300	removed redundant label 00150$
                           2353 ;	genCmpLt
   153A E5 0F              2354 	mov	a,_bp
   153C 24 05              2355 	add	a,#0x05
   153E F8                 2356 	mov	r0,a
                           2357 ;	genCmp
   153F B6 41 00           2358 	cjne	@r0,#0x41,00151$
   1542                    2359 00151$:
                           2360 ;	genIfxJump
                           2361 ;	Peephole 112.b	changed ljmp to sjmp
                           2362 ;	Peephole 160.a	removed sjmp by inverse jump logic
   1542 40 13              2363 	jc	00106$
                           2364 ;	Peephole 300	removed redundant label 00152$
                           2365 ;	genCmpGt
   1544 E5 0F              2366 	mov	a,_bp
   1546 24 05              2367 	add	a,#0x05
   1548 F8                 2368 	mov	r0,a
                           2369 ;	genCmp
                           2370 ;	genIfxJump
                           2371 ;	Peephole 132.b	optimized genCmpGt by inverse logic (acc differs)
   1549 E6                 2372 	mov	a,@r0
   154A 24 A5              2373 	add	a,#0xff - 0x5A
                           2374 ;	Peephole 112.b	changed ljmp to sjmp
                           2375 ;	Peephole 160.a	removed sjmp by inverse jump logic
   154C 40 09              2376 	jc	00106$
                           2377 ;	Peephole 300	removed redundant label 00153$
                           2378 ;	genPlus
   154E E5 0F              2379 	mov	a,_bp
   1550 24 05              2380 	add	a,#0x05
   1552 F8                 2381 	mov	r0,a
                           2382 ;     genPlusIncr
   1553 74 20              2383 	mov	a,#0x20
   1555 26                 2384 	add	a,@r0
   1556 F6                 2385 	mov	@r0,a
   1557                    2386 00106$:
                    0976   2387 	C$tff.c$394$2$2 ==.
                           2388 ;	tff.c:394: *p++ = c;
                           2389 ;	genPointerSet
                           2390 ;	genGenPointerSet
   1557 E5 0F              2391 	mov	a,_bp
   1559 24 09              2392 	add	a,#0x09
   155B F8                 2393 	mov	r0,a
   155C 86 82              2394 	mov	dpl,@r0
   155E 08                 2395 	inc	r0
   155F 86 83              2396 	mov	dph,@r0
   1561 08                 2397 	inc	r0
   1562 86 F0              2398 	mov	b,@r0
   1564 E5 0F              2399 	mov	a,_bp
   1566 24 05              2400 	add	a,#0x05
   1568 F9                 2401 	mov	r1,a
   1569 E7                 2402 	mov	a,@r1
   156A 12 42 DC           2403 	lcall	__gptrput
   156D A3                 2404 	inc	dptr
   156E 18                 2405 	dec	r0
   156F 18                 2406 	dec	r0
   1570 A6 82              2407 	mov	@r0,dpl
   1572 08                 2408 	inc	r0
   1573 A6 83              2409 	mov	@r0,dph
                    0994   2410 	C$tff.c$389$1$1 ==.
                           2411 ;	tff.c:389: for (n = 0; n < 8; n++) {	/* Convert file name (body) */
                           2412 ;	genPlus
                           2413 ;     genPlusIncr
   1575 0B                 2414 	inc	r3
   1576 02 14 F0           2415 	ljmp	00109$
   1579                    2416 00141$:
                           2417 ;	genAssign
   1579 E5 0F              2418 	mov	a,_bp
   157B 24 09              2419 	add	a,#0x09
   157D F8                 2420 	mov	r0,a
   157E E5 0F              2421 	mov	a,_bp
   1580 24 06              2422 	add	a,#0x06
   1582 F9                 2423 	mov	r1,a
   1583 E6                 2424 	mov	a,@r0
   1584 F7                 2425 	mov	@r1,a
   1585 08                 2426 	inc	r0
   1586 09                 2427 	inc	r1
   1587 E6                 2428 	mov	a,@r0
   1588 F7                 2429 	mov	@r1,a
   1589 08                 2430 	inc	r0
   158A 09                 2431 	inc	r1
   158B E6                 2432 	mov	a,@r0
   158C F7                 2433 	mov	@r1,a
                    09AC   2434 	C$tff.c$396$1$1 ==.
                           2435 ;	tff.c:396: if (dir[8] != ' ') {		/* Convert file name (extension) */
                           2436 ;	genPlus
   158D E5 0F              2437 	mov	a,_bp
   158F 24 FB              2438 	add	a,#0xfffffffb
   1591 F8                 2439 	mov	r0,a
                           2440 ;     genPlusIncr
   1592 74 08              2441 	mov	a,#0x08
   1594 26                 2442 	add	a,@r0
   1595 FA                 2443 	mov	r2,a
                           2444 ;	Peephole 181	changed mov to clr
   1596 E4                 2445 	clr	a
   1597 08                 2446 	inc	r0
   1598 36                 2447 	addc	a,@r0
   1599 FB                 2448 	mov	r3,a
   159A 08                 2449 	inc	r0
   159B 86 04              2450 	mov	ar4,@r0
                           2451 ;	genPointerGet
                           2452 ;	genGenPointerGet
   159D 8A 82              2453 	mov	dpl,r2
   159F 8B 83              2454 	mov	dph,r3
   15A1 8C F0              2455 	mov	b,r4
   15A3 12 47 8A           2456 	lcall	__gptrget
   15A6 FA                 2457 	mov	r2,a
                           2458 ;	genCmpEq
                           2459 ;	gencjneshort
   15A7 BA 20 03           2460 	cjne	r2,#0x20,00154$
   15AA 02 16 76           2461 	ljmp	00124$
   15AD                    2462 00154$:
                    09CC   2463 	C$tff.c$397$2$3 ==.
                           2464 ;	tff.c:397: *p++ = '.';
                           2465 ;	genPointerSet
                           2466 ;	genGenPointerSet
   15AD E5 0F              2467 	mov	a,_bp
   15AF 24 09              2468 	add	a,#0x09
   15B1 F8                 2469 	mov	r0,a
   15B2 86 82              2470 	mov	dpl,@r0
   15B4 08                 2471 	inc	r0
   15B5 86 83              2472 	mov	dph,@r0
   15B7 08                 2473 	inc	r0
   15B8 86 F0              2474 	mov	b,@r0
   15BA 74 2E              2475 	mov	a,#0x2E
   15BC 12 42 DC           2476 	lcall	__gptrput
                           2477 ;	genPlus
   15BF E5 0F              2478 	mov	a,_bp
   15C1 24 09              2479 	add	a,#0x09
   15C3 F8                 2480 	mov	r0,a
   15C4 E5 0F              2481 	mov	a,_bp
   15C6 24 06              2482 	add	a,#0x06
   15C8 F9                 2483 	mov	r1,a
                           2484 ;     genPlusIncr
   15C9 74 01              2485 	mov	a,#0x01
   15CB 26                 2486 	add	a,@r0
   15CC F7                 2487 	mov	@r1,a
                           2488 ;	Peephole 181	changed mov to clr
   15CD E4                 2489 	clr	a
   15CE 08                 2490 	inc	r0
   15CF 36                 2491 	addc	a,@r0
   15D0 09                 2492 	inc	r1
   15D1 F7                 2493 	mov	@r1,a
   15D2 08                 2494 	inc	r0
   15D3 09                 2495 	inc	r1
   15D4 E6                 2496 	mov	a,@r0
   15D5 F7                 2497 	mov	@r1,a
                    09F5   2498 	C$tff.c$398$3$4 ==.
                           2499 ;	tff.c:398: for (n = 8; n < 11; n++) {
                           2500 ;	genAnd
   15D6 74 10              2501 	mov	a,#0x10
   15D8 5D                 2502 	anl	a,r5
   15D9 FA                 2503 	mov	r2,a
                           2504 ;	genAssign
   15DA E5 0F              2505 	mov	a,_bp
   15DC 24 06              2506 	add	a,#0x06
   15DE F8                 2507 	mov	r0,a
   15DF 86 03              2508 	mov	ar3,@r0
   15E1 08                 2509 	inc	r0
   15E2 86 04              2510 	mov	ar4,@r0
   15E4 08                 2511 	inc	r0
   15E5 86 05              2512 	mov	ar5,@r0
                           2513 ;	genAssign
   15E7 E5 0F              2514 	mov	a,_bp
   15E9 24 04              2515 	add	a,#0x04
   15EB F8                 2516 	mov	r0,a
   15EC 76 08              2517 	mov	@r0,#0x08
   15EE                    2518 00119$:
                           2519 ;	genCmpLt
   15EE E5 0F              2520 	mov	a,_bp
   15F0 24 04              2521 	add	a,#0x04
   15F2 F8                 2522 	mov	r0,a
                           2523 ;	genCmp
   15F3 B6 0B 00           2524 	cjne	@r0,#0x0B,00155$
   15F6                    2525 00155$:
                           2526 ;	genIfxJump
                           2527 ;	Peephole 108.a	removed ljmp by inverse jump logic
   15F6 50 71              2528 	jnc	00142$
                           2529 ;	Peephole 300	removed redundant label 00156$
                    0A17   2530 	C$tff.c$399$1$1 ==.
                           2531 ;	tff.c:399: c = dir[n];
                           2532 ;	genIpush
   15F8 C0 02              2533 	push	ar2
                           2534 ;	genPlus
   15FA E5 0F              2535 	mov	a,_bp
   15FC 24 FB              2536 	add	a,#0xfffffffb
   15FE F8                 2537 	mov	r0,a
   15FF E5 0F              2538 	mov	a,_bp
   1601 24 04              2539 	add	a,#0x04
   1603 F9                 2540 	mov	r1,a
   1604 E7                 2541 	mov	a,@r1
   1605 26                 2542 	add	a,@r0
   1606 FF                 2543 	mov	r7,a
                           2544 ;	Peephole 181	changed mov to clr
   1607 E4                 2545 	clr	a
   1608 08                 2546 	inc	r0
   1609 36                 2547 	addc	a,@r0
   160A FA                 2548 	mov	r2,a
   160B 08                 2549 	inc	r0
   160C 86 06              2550 	mov	ar6,@r0
                           2551 ;	genPointerGet
                           2552 ;	genGenPointerGet
   160E 8F 82              2553 	mov	dpl,r7
   1610 8A 83              2554 	mov	dph,r2
   1612 8E F0              2555 	mov	b,r6
   1614 12 47 8A           2556 	lcall	__gptrget
   1617 FF                 2557 	mov	r7,a
                           2558 ;	genAssign
   1618 E5 0F              2559 	mov	a,_bp
   161A 24 05              2560 	add	a,#0x05
   161C F8                 2561 	mov	r0,a
   161D A6 07              2562 	mov	@r0,ar7
                    0A3E   2563 	C$tff.c$400$3$4 ==.
                           2564 ;	tff.c:400: if (c == ' ') break;
                           2565 ;	genCmpEq
   161F E5 0F              2566 	mov	a,_bp
   1621 24 05              2567 	add	a,#0x05
   1623 F8                 2568 	mov	r0,a
                           2569 ;	gencjne
                           2570 ;	gencjneshort
                           2571 ;	Peephole 241.h	optimized compare
   1624 E4                 2572 	clr	a
   1625 B6 20 01           2573 	cjne	@r0,#0x20,00157$
   1628 04                 2574 	inc	a
   1629                    2575 00157$:
                           2576 ;	Peephole 300	removed redundant label 00158$
                           2577 ;	genIpop
   1629 D0 02              2578 	pop	ar2
                           2579 ;	genIfx
                           2580 ;	genIfxJump
                           2581 ;	Peephole 108.b	removed ljmp by inverse jump logic
   162B 70 3C              2582 	jnz	00142$
                           2583 ;	Peephole 300	removed redundant label 00159$
                    0A4C   2584 	C$tff.c$401$3$4 ==.
                           2585 ;	tff.c:401: if (a & 0x10 && c >= 'A' && c <= 'Z') c += 0x20;
                           2586 ;	genIfx
   162D EA                 2587 	mov	a,r2
                           2588 ;	genIfxJump
                           2589 ;	Peephole 108.c	removed ljmp by inverse jump logic
   162E 60 1D              2590 	jz	00116$
                           2591 ;	Peephole 300	removed redundant label 00160$
                           2592 ;	genCmpLt
   1630 E5 0F              2593 	mov	a,_bp
   1632 24 05              2594 	add	a,#0x05
   1634 F8                 2595 	mov	r0,a
                           2596 ;	genCmp
   1635 B6 41 00           2597 	cjne	@r0,#0x41,00161$
   1638                    2598 00161$:
                           2599 ;	genIfxJump
                           2600 ;	Peephole 112.b	changed ljmp to sjmp
                           2601 ;	Peephole 160.a	removed sjmp by inverse jump logic
   1638 40 13              2602 	jc	00116$
                           2603 ;	Peephole 300	removed redundant label 00162$
                           2604 ;	genCmpGt
   163A E5 0F              2605 	mov	a,_bp
   163C 24 05              2606 	add	a,#0x05
   163E F8                 2607 	mov	r0,a
                           2608 ;	genCmp
                           2609 ;	genIfxJump
                           2610 ;	Peephole 132.b	optimized genCmpGt by inverse logic (acc differs)
   163F E6                 2611 	mov	a,@r0
   1640 24 A5              2612 	add	a,#0xff - 0x5A
                           2613 ;	Peephole 112.b	changed ljmp to sjmp
                           2614 ;	Peephole 160.a	removed sjmp by inverse jump logic
   1642 40 09              2615 	jc	00116$
                           2616 ;	Peephole 300	removed redundant label 00163$
                           2617 ;	genPlus
   1644 E5 0F              2618 	mov	a,_bp
   1646 24 05              2619 	add	a,#0x05
   1648 F8                 2620 	mov	r0,a
                           2621 ;     genPlusIncr
   1649 74 20              2622 	mov	a,#0x20
   164B 26                 2623 	add	a,@r0
   164C F6                 2624 	mov	@r0,a
   164D                    2625 00116$:
                    0A6C   2626 	C$tff.c$402$3$4 ==.
                           2627 ;	tff.c:402: *p++ = c;
                           2628 ;	genPointerSet
                           2629 ;	genGenPointerSet
   164D 8B 82              2630 	mov	dpl,r3
   164F 8C 83              2631 	mov	dph,r4
   1651 8D F0              2632 	mov	b,r5
   1653 E5 0F              2633 	mov	a,_bp
   1655 24 05              2634 	add	a,#0x05
   1657 F8                 2635 	mov	r0,a
   1658 E6                 2636 	mov	a,@r0
   1659 12 42 DC           2637 	lcall	__gptrput
   165C A3                 2638 	inc	dptr
   165D AB 82              2639 	mov	r3,dpl
   165F AC 83              2640 	mov	r4,dph
                    0A80   2641 	C$tff.c$398$2$3 ==.
                           2642 ;	tff.c:398: for (n = 8; n < 11; n++) {
                           2643 ;	genPlus
   1661 E5 0F              2644 	mov	a,_bp
   1663 24 04              2645 	add	a,#0x04
   1665 F8                 2646 	mov	r0,a
                           2647 ;     genPlusIncr
   1666 06                 2648 	inc	@r0
                           2649 ;	Peephole 112.b	changed ljmp to sjmp
   1667 80 85              2650 	sjmp	00119$
   1669                    2651 00142$:
                           2652 ;	genAssign
   1669 E5 0F              2653 	mov	a,_bp
   166B 24 06              2654 	add	a,#0x06
   166D F8                 2655 	mov	r0,a
   166E A6 03              2656 	mov	@r0,ar3
   1670 08                 2657 	inc	r0
   1671 A6 04              2658 	mov	@r0,ar4
   1673 08                 2659 	inc	r0
   1674 A6 05              2660 	mov	@r0,ar5
   1676                    2661 00124$:
                    0A95   2662 	C$tff.c$405$1$1 ==.
                           2663 ;	tff.c:405: *p = '\0';
                           2664 ;	genPointerSet
                           2665 ;	genGenPointerSet
   1676 E5 0F              2666 	mov	a,_bp
   1678 24 06              2667 	add	a,#0x06
   167A F8                 2668 	mov	r0,a
   167B 86 82              2669 	mov	dpl,@r0
   167D 08                 2670 	inc	r0
   167E 86 83              2671 	mov	dph,@r0
   1680 08                 2672 	inc	r0
   1681 86 F0              2673 	mov	b,@r0
                           2674 ;	Peephole 181	changed mov to clr
   1683 E4                 2675 	clr	a
   1684 12 42 DC           2676 	lcall	__gptrput
                    0AA6   2677 	C$tff.c$407$1$1 ==.
                           2678 ;	tff.c:407: finfo->fattrib = dir[DIR_Attr];			/* Attribute */
                           2679 ;	genPlus
   1687 A8 0F              2680 	mov	r0,_bp
   1689 08                 2681 	inc	r0
                           2682 ;     genPlusIncr
   168A 74 08              2683 	mov	a,#0x08
   168C 26                 2684 	add	a,@r0
   168D FA                 2685 	mov	r2,a
                           2686 ;	Peephole 181	changed mov to clr
   168E E4                 2687 	clr	a
   168F 08                 2688 	inc	r0
   1690 36                 2689 	addc	a,@r0
   1691 FB                 2690 	mov	r3,a
   1692 08                 2691 	inc	r0
   1693 86 04              2692 	mov	ar4,@r0
                           2693 ;	genPlus
   1695 E5 0F              2694 	mov	a,_bp
   1697 24 FB              2695 	add	a,#0xfffffffb
   1699 F8                 2696 	mov	r0,a
                           2697 ;     genPlusIncr
   169A 74 0B              2698 	mov	a,#0x0B
   169C 26                 2699 	add	a,@r0
   169D FD                 2700 	mov	r5,a
                           2701 ;	Peephole 181	changed mov to clr
   169E E4                 2702 	clr	a
   169F 08                 2703 	inc	r0
   16A0 36                 2704 	addc	a,@r0
   16A1 FE                 2705 	mov	r6,a
   16A2 08                 2706 	inc	r0
   16A3 86 07              2707 	mov	ar7,@r0
                           2708 ;	genPointerGet
                           2709 ;	genGenPointerGet
   16A5 8D 82              2710 	mov	dpl,r5
   16A7 8E 83              2711 	mov	dph,r6
   16A9 8F F0              2712 	mov	b,r7
   16AB 12 47 8A           2713 	lcall	__gptrget
                           2714 ;	genPointerSet
                           2715 ;	genGenPointerSet
   16AE FD                 2716 	mov	r5,a
   16AF 8A 82              2717 	mov	dpl,r2
   16B1 8B 83              2718 	mov	dph,r3
   16B3 8C F0              2719 	mov	b,r4
                           2720 ;	Peephole 191	removed redundant mov
   16B5 12 42 DC           2721 	lcall	__gptrput
                    0AD7   2722 	C$tff.c$408$1$1 ==.
                           2723 ;	tff.c:408: finfo->fsize = LD_DWORD(&dir[DIR_FileSize]);	/* Size */
                           2724 ;	genPlus
   16B8 E5 0F              2725 	mov	a,_bp
   16BA 24 FB              2726 	add	a,#0xfffffffb
   16BC F8                 2727 	mov	r0,a
   16BD E5 0F              2728 	mov	a,_bp
   16BF 24 09              2729 	add	a,#0x09
   16C1 F9                 2730 	mov	r1,a
                           2731 ;     genPlusIncr
   16C2 74 1C              2732 	mov	a,#0x1C
   16C4 26                 2733 	add	a,@r0
   16C5 F7                 2734 	mov	@r1,a
                           2735 ;	Peephole 181	changed mov to clr
   16C6 E4                 2736 	clr	a
   16C7 08                 2737 	inc	r0
   16C8 36                 2738 	addc	a,@r0
   16C9 09                 2739 	inc	r1
   16CA F7                 2740 	mov	@r1,a
   16CB 08                 2741 	inc	r0
   16CC 09                 2742 	inc	r1
   16CD E6                 2743 	mov	a,@r0
   16CE F7                 2744 	mov	@r1,a
                           2745 ;	genPlus
   16CF E5 0F              2746 	mov	a,_bp
   16D1 24 09              2747 	add	a,#0x09
   16D3 F8                 2748 	mov	r0,a
                           2749 ;     genPlusIncr
   16D4 74 03              2750 	mov	a,#0x03
   16D6 26                 2751 	add	a,@r0
   16D7 FD                 2752 	mov	r5,a
                           2753 ;	Peephole 181	changed mov to clr
   16D8 E4                 2754 	clr	a
   16D9 08                 2755 	inc	r0
   16DA 36                 2756 	addc	a,@r0
   16DB FE                 2757 	mov	r6,a
   16DC 08                 2758 	inc	r0
   16DD 86 07              2759 	mov	ar7,@r0
                           2760 ;	genPointerGet
                           2761 ;	genGenPointerGet
   16DF 8D 82              2762 	mov	dpl,r5
   16E1 8E 83              2763 	mov	dph,r6
   16E3 8F F0              2764 	mov	b,r7
   16E5 12 47 8A           2765 	lcall	__gptrget
   16E8 FD                 2766 	mov	r5,a
                           2767 ;	genCast
                           2768 ;	genLeftShift
                           2769 ;	genLeftShiftLiteral
                           2770 ;	Peephole 3.c	changed mov to clr
                           2771 ;	Peephole 3.b	changed mov to clr
   16E9 E4                 2772 	clr	a
   16EA FE                 2773 	mov	r6,a
   16EB FF                 2774 	mov	r7,a
   16EC FA                 2775 	mov	r2,a
   16ED E5 0F              2776 	mov	a,_bp
   16EF 24 0C              2777 	add	a,#0x0c
                           2778 ;	genlshFour
                           2779 ;	Peephole 185	changed order of increment (acc incremented also!)
   16F1 04                 2780 	inc	a
                           2781 ;	Peephole 185	changed order of increment (acc incremented also!)
   16F2 04                 2782 	inc	a
                           2783 ;	Peephole 185	changed order of increment (acc incremented also!)
   16F3 04                 2784 	inc	a
   16F4 F8                 2785 	mov	r0,a
   16F5 A6 05              2786 	mov	@r0,ar5
   16F7 18                 2787 	dec	r0
   16F8 18                 2788 	dec	r0
   16F9 18                 2789 	dec	r0
   16FA 76 00              2790 	mov	@r0,#0x00
   16FC 08                 2791 	inc	r0
   16FD 76 00              2792 	mov	@r0,#0x00
   16FF 08                 2793 	inc	r0
   1700 76 00              2794 	mov	@r0,#0x00
                           2795 ;	genPlus
   1702 E5 0F              2796 	mov	a,_bp
   1704 24 09              2797 	add	a,#0x09
   1706 F8                 2798 	mov	r0,a
                           2799 ;     genPlusIncr
   1707 74 02              2800 	mov	a,#0x02
   1709 26                 2801 	add	a,@r0
   170A FB                 2802 	mov	r3,a
                           2803 ;	Peephole 181	changed mov to clr
   170B E4                 2804 	clr	a
   170C 08                 2805 	inc	r0
   170D 36                 2806 	addc	a,@r0
   170E FC                 2807 	mov	r4,a
   170F 08                 2808 	inc	r0
   1710 86 02              2809 	mov	ar2,@r0
                           2810 ;	genPointerGet
                           2811 ;	genGenPointerGet
   1712 8B 82              2812 	mov	dpl,r3
   1714 8C 83              2813 	mov	dph,r4
   1716 8A F0              2814 	mov	b,r2
   1718 12 47 8A           2815 	lcall	__gptrget
   171B FB                 2816 	mov	r3,a
                           2817 ;	genCast
   171C 7A 00              2818 	mov	r2,#0x00
   171E 7C 00              2819 	mov	r4,#0x00
                           2820 ;	genLeftShift
                           2821 ;	genLeftShiftLiteral
                           2822 ;	genlshFour
                           2823 ;	peephole 177.e	removed redundant move
   1720 8A 05              2824 	mov	ar5,r2
   1722 8B 04              2825 	mov	ar4,r3
                           2826 ;	genOr
                           2827 ;	Peephole 3.c	changed mov to clr
   1724 E4                 2828 	clr	a
   1725 FA                 2829 	mov	r2,a
   1726 FB                 2830 	mov	r3,a
   1727 E5 0F              2831 	mov	a,_bp
   1729 24 0C              2832 	add	a,#0x0c
   172B F8                 2833 	mov	r0,a
   172C EB                 2834 	mov	a,r3
   172D 46                 2835 	orl	a,@r0
   172E F6                 2836 	mov	@r0,a
   172F EA                 2837 	mov	a,r2
   1730 08                 2838 	inc	r0
   1731 46                 2839 	orl	a,@r0
   1732 F6                 2840 	mov	@r0,a
   1733 EC                 2841 	mov	a,r4
   1734 08                 2842 	inc	r0
   1735 46                 2843 	orl	a,@r0
   1736 F6                 2844 	mov	@r0,a
   1737 ED                 2845 	mov	a,r5
   1738 08                 2846 	inc	r0
   1739 46                 2847 	orl	a,@r0
   173A F6                 2848 	mov	@r0,a
                           2849 ;	genPlus
   173B E5 0F              2850 	mov	a,_bp
   173D 24 09              2851 	add	a,#0x09
   173F F8                 2852 	mov	r0,a
                           2853 ;     genPlusIncr
   1740 74 01              2854 	mov	a,#0x01
   1742 26                 2855 	add	a,@r0
   1743 FE                 2856 	mov	r6,a
                           2857 ;	Peephole 181	changed mov to clr
   1744 E4                 2858 	clr	a
   1745 08                 2859 	inc	r0
   1746 36                 2860 	addc	a,@r0
   1747 FF                 2861 	mov	r7,a
   1748 08                 2862 	inc	r0
   1749 86 02              2863 	mov	ar2,@r0
                           2864 ;	genPointerGet
                           2865 ;	genGenPointerGet
   174B 8E 82              2866 	mov	dpl,r6
   174D 8F 83              2867 	mov	dph,r7
   174F 8A F0              2868 	mov	b,r2
   1751 12 47 8A           2869 	lcall	__gptrget
   1754 FE                 2870 	mov	r6,a
                           2871 ;	genCast
                           2872 ;	genLeftShift
                           2873 ;	genLeftShiftLiteral
                           2874 ;	genlshTwo
                           2875 ;	peephole 177.e	removed redundant move
   1755 8E 02              2876 	mov	ar2,r6
                           2877 ;	genCast
                           2878 ;	genOr
                           2879 ;	Peephole 3.c	changed mov to clr
                           2880 ;	Peephole 3.b	changed mov to clr
   1757 E4                 2881 	clr	a
   1758 FE                 2882 	mov	r6,a
   1759 FB                 2883 	mov	r3,a
   175A FC                 2884 	mov	r4,a
   175B E5 0F              2885 	mov	a,_bp
   175D 24 0C              2886 	add	a,#0x0c
   175F F8                 2887 	mov	r0,a
   1760 EE                 2888 	mov	a,r6
   1761 46                 2889 	orl	a,@r0
   1762 F6                 2890 	mov	@r0,a
   1763 EA                 2891 	mov	a,r2
   1764 08                 2892 	inc	r0
   1765 46                 2893 	orl	a,@r0
   1766 F6                 2894 	mov	@r0,a
   1767 EB                 2895 	mov	a,r3
   1768 08                 2896 	inc	r0
   1769 46                 2897 	orl	a,@r0
   176A F6                 2898 	mov	@r0,a
   176B EC                 2899 	mov	a,r4
   176C 08                 2900 	inc	r0
   176D 46                 2901 	orl	a,@r0
   176E F6                 2902 	mov	@r0,a
                           2903 ;	genPointerGet
                           2904 ;	genGenPointerGet
   176F E5 0F              2905 	mov	a,_bp
   1771 24 09              2906 	add	a,#0x09
   1773 F8                 2907 	mov	r0,a
   1774 86 82              2908 	mov	dpl,@r0
   1776 08                 2909 	inc	r0
   1777 86 83              2910 	mov	dph,@r0
   1779 08                 2911 	inc	r0
   177A 86 F0              2912 	mov	b,@r0
   177C 12 47 8A           2913 	lcall	__gptrget
   177F FD                 2914 	mov	r5,a
                           2915 ;	genCast
                           2916 ;	genOr
                           2917 ;	Peephole 3.c	changed mov to clr
                           2918 ;	Peephole 3.b	changed mov to clr
   1780 E4                 2919 	clr	a
   1781 FF                 2920 	mov	r7,a
   1782 FA                 2921 	mov	r2,a
   1783 FB                 2922 	mov	r3,a
   1784 E5 0F              2923 	mov	a,_bp
   1786 24 0C              2924 	add	a,#0x0c
   1788 F8                 2925 	mov	r0,a
   1789 E6                 2926 	mov	a,@r0
   178A 42 05              2927 	orl	ar5,a
   178C 08                 2928 	inc	r0
   178D E6                 2929 	mov	a,@r0
   178E 42 07              2930 	orl	ar7,a
   1790 08                 2931 	inc	r0
   1791 E6                 2932 	mov	a,@r0
   1792 42 02              2933 	orl	ar2,a
   1794 08                 2934 	inc	r0
   1795 E6                 2935 	mov	a,@r0
   1796 42 03              2936 	orl	ar3,a
                           2937 ;	genPointerSet
                           2938 ;	genGenPointerSet
   1798 A8 0F              2939 	mov	r0,_bp
   179A 08                 2940 	inc	r0
   179B 86 82              2941 	mov	dpl,@r0
   179D 08                 2942 	inc	r0
   179E 86 83              2943 	mov	dph,@r0
   17A0 08                 2944 	inc	r0
   17A1 86 F0              2945 	mov	b,@r0
   17A3 ED                 2946 	mov	a,r5
   17A4 12 42 DC           2947 	lcall	__gptrput
   17A7 A3                 2948 	inc	dptr
   17A8 EF                 2949 	mov	a,r7
   17A9 12 42 DC           2950 	lcall	__gptrput
   17AC A3                 2951 	inc	dptr
   17AD EA                 2952 	mov	a,r2
   17AE 12 42 DC           2953 	lcall	__gptrput
   17B1 A3                 2954 	inc	dptr
   17B2 EB                 2955 	mov	a,r3
   17B3 12 42 DC           2956 	lcall	__gptrput
                    0BD5   2957 	C$tff.c$409$1$1 ==.
                           2958 ;	tff.c:409: finfo->fdate = LD_WORD(&dir[DIR_WrtDate]);	/* Date */
                           2959 ;	genPlus
   17B6 A8 0F              2960 	mov	r0,_bp
   17B8 08                 2961 	inc	r0
   17B9 E5 0F              2962 	mov	a,_bp
   17BB 24 0C              2963 	add	a,#0x0c
   17BD F9                 2964 	mov	r1,a
                           2965 ;     genPlusIncr
   17BE 74 04              2966 	mov	a,#0x04
   17C0 26                 2967 	add	a,@r0
   17C1 F7                 2968 	mov	@r1,a
                           2969 ;	Peephole 181	changed mov to clr
   17C2 E4                 2970 	clr	a
   17C3 08                 2971 	inc	r0
   17C4 36                 2972 	addc	a,@r0
   17C5 09                 2973 	inc	r1
   17C6 F7                 2974 	mov	@r1,a
   17C7 08                 2975 	inc	r0
   17C8 09                 2976 	inc	r1
   17C9 E6                 2977 	mov	a,@r0
   17CA F7                 2978 	mov	@r1,a
                           2979 ;	genPlus
   17CB E5 0F              2980 	mov	a,_bp
   17CD 24 FB              2981 	add	a,#0xfffffffb
   17CF F8                 2982 	mov	r0,a
                           2983 ;     genPlusIncr
   17D0 74 18              2984 	mov	a,#0x18
   17D2 26                 2985 	add	a,@r0
   17D3 FD                 2986 	mov	r5,a
                           2987 ;	Peephole 181	changed mov to clr
   17D4 E4                 2988 	clr	a
   17D5 08                 2989 	inc	r0
   17D6 36                 2990 	addc	a,@r0
   17D7 FE                 2991 	mov	r6,a
   17D8 08                 2992 	inc	r0
   17D9 86 07              2993 	mov	ar7,@r0
                           2994 ;	genPlus
                           2995 ;     genPlusIncr
   17DB 74 01              2996 	mov	a,#0x01
                           2997 ;	Peephole 236.a	used r5 instead of ar5
   17DD 2D                 2998 	add	a,r5
   17DE FA                 2999 	mov	r2,a
                           3000 ;	Peephole 181	changed mov to clr
   17DF E4                 3001 	clr	a
                           3002 ;	Peephole 236.b	used r6 instead of ar6
   17E0 3E                 3003 	addc	a,r6
   17E1 FB                 3004 	mov	r3,a
   17E2 8F 04              3005 	mov	ar4,r7
                           3006 ;	genPointerGet
                           3007 ;	genGenPointerGet
   17E4 8A 82              3008 	mov	dpl,r2
   17E6 8B 83              3009 	mov	dph,r3
   17E8 8C F0              3010 	mov	b,r4
   17EA 12 47 8A           3011 	lcall	__gptrget
   17ED FA                 3012 	mov	r2,a
                           3013 ;	genCast
                           3014 ;	genLeftShift
                           3015 ;	genLeftShiftLiteral
                           3016 ;	genlshTwo
                           3017 ;	peephole 177.e	removed redundant move
   17EE 8A 03              3018 	mov	ar3,r2
   17F0 7A 00              3019 	mov	r2,#0x00
                           3020 ;	genPointerGet
                           3021 ;	genGenPointerGet
   17F2 8D 82              3022 	mov	dpl,r5
   17F4 8E 83              3023 	mov	dph,r6
   17F6 8F F0              3024 	mov	b,r7
   17F8 12 47 8A           3025 	lcall	__gptrget
                           3026 ;	genCast
                           3027 ;	genOr
   17FB FD                 3028 	mov	r5,a
   17FC 7C 00              3029 	mov	r4,#0x00
                           3030 ;	Peephole 177.d	removed redundant move
   17FE 42 02              3031 	orl	ar2,a
   1800 EC                 3032 	mov	a,r4
   1801 42 03              3033 	orl	ar3,a
                           3034 ;	genPointerSet
                           3035 ;	genGenPointerSet
   1803 E5 0F              3036 	mov	a,_bp
   1805 24 0C              3037 	add	a,#0x0c
   1807 F8                 3038 	mov	r0,a
   1808 86 82              3039 	mov	dpl,@r0
   180A 08                 3040 	inc	r0
   180B 86 83              3041 	mov	dph,@r0
   180D 08                 3042 	inc	r0
   180E 86 F0              3043 	mov	b,@r0
   1810 EA                 3044 	mov	a,r2
   1811 12 42 DC           3045 	lcall	__gptrput
   1814 A3                 3046 	inc	dptr
   1815 EB                 3047 	mov	a,r3
   1816 12 42 DC           3048 	lcall	__gptrput
                    0C38   3049 	C$tff.c$410$1$1 ==.
                           3050 ;	tff.c:410: finfo->ftime = LD_WORD(&dir[DIR_WrtTime]);	/* Time */
                           3051 ;	genPlus
   1819 A8 0F              3052 	mov	r0,_bp
   181B 08                 3053 	inc	r0
   181C E5 0F              3054 	mov	a,_bp
   181E 24 0C              3055 	add	a,#0x0c
   1820 F9                 3056 	mov	r1,a
                           3057 ;     genPlusIncr
   1821 74 06              3058 	mov	a,#0x06
   1823 26                 3059 	add	a,@r0
   1824 F7                 3060 	mov	@r1,a
                           3061 ;	Peephole 181	changed mov to clr
   1825 E4                 3062 	clr	a
   1826 08                 3063 	inc	r0
   1827 36                 3064 	addc	a,@r0
   1828 09                 3065 	inc	r1
   1829 F7                 3066 	mov	@r1,a
   182A 08                 3067 	inc	r0
   182B 09                 3068 	inc	r1
   182C E6                 3069 	mov	a,@r0
   182D F7                 3070 	mov	@r1,a
                           3071 ;	genPlus
   182E E5 0F              3072 	mov	a,_bp
   1830 24 FB              3073 	add	a,#0xfffffffb
   1832 F8                 3074 	mov	r0,a
                           3075 ;     genPlusIncr
   1833 74 16              3076 	mov	a,#0x16
   1835 26                 3077 	add	a,@r0
   1836 FD                 3078 	mov	r5,a
                           3079 ;	Peephole 181	changed mov to clr
   1837 E4                 3080 	clr	a
   1838 08                 3081 	inc	r0
   1839 36                 3082 	addc	a,@r0
   183A FE                 3083 	mov	r6,a
   183B 08                 3084 	inc	r0
   183C 86 07              3085 	mov	ar7,@r0
                           3086 ;	genPlus
                           3087 ;     genPlusIncr
   183E 74 01              3088 	mov	a,#0x01
                           3089 ;	Peephole 236.a	used r5 instead of ar5
   1840 2D                 3090 	add	a,r5
   1841 FA                 3091 	mov	r2,a
                           3092 ;	Peephole 181	changed mov to clr
   1842 E4                 3093 	clr	a
                           3094 ;	Peephole 236.b	used r6 instead of ar6
   1843 3E                 3095 	addc	a,r6
   1844 FB                 3096 	mov	r3,a
   1845 8F 04              3097 	mov	ar4,r7
                           3098 ;	genPointerGet
                           3099 ;	genGenPointerGet
   1847 8A 82              3100 	mov	dpl,r2
   1849 8B 83              3101 	mov	dph,r3
   184B 8C F0              3102 	mov	b,r4
   184D 12 47 8A           3103 	lcall	__gptrget
   1850 FA                 3104 	mov	r2,a
                           3105 ;	genCast
                           3106 ;	genLeftShift
                           3107 ;	genLeftShiftLiteral
                           3108 ;	genlshTwo
                           3109 ;	peephole 177.e	removed redundant move
   1851 8A 03              3110 	mov	ar3,r2
   1853 7A 00              3111 	mov	r2,#0x00
                           3112 ;	genPointerGet
                           3113 ;	genGenPointerGet
   1855 8D 82              3114 	mov	dpl,r5
   1857 8E 83              3115 	mov	dph,r6
   1859 8F F0              3116 	mov	b,r7
   185B 12 47 8A           3117 	lcall	__gptrget
                           3118 ;	genCast
                           3119 ;	genOr
   185E FD                 3120 	mov	r5,a
   185F 7C 00              3121 	mov	r4,#0x00
                           3122 ;	Peephole 177.d	removed redundant move
   1861 42 02              3123 	orl	ar2,a
   1863 EC                 3124 	mov	a,r4
   1864 42 03              3125 	orl	ar3,a
                           3126 ;	genPointerSet
                           3127 ;	genGenPointerSet
   1866 E5 0F              3128 	mov	a,_bp
   1868 24 0C              3129 	add	a,#0x0c
   186A F8                 3130 	mov	r0,a
   186B 86 82              3131 	mov	dpl,@r0
   186D 08                 3132 	inc	r0
   186E 86 83              3133 	mov	dph,@r0
   1870 08                 3134 	inc	r0
   1871 86 F0              3135 	mov	b,@r0
   1873 EA                 3136 	mov	a,r2
   1874 12 42 DC           3137 	lcall	__gptrput
   1877 A3                 3138 	inc	dptr
   1878 EB                 3139 	mov	a,r3
   1879 12 42 DC           3140 	lcall	__gptrput
                           3141 ;	Peephole 300	removed redundant label 00125$
   187C 85 0F 81           3142 	mov	sp,_bp
   187F D0 0F              3143 	pop	_bp
                    0CA0   3144 	C$tff.c$411$1$1 ==.
                    0CA0   3145 	XFtff$get_fileinfo$0$0 ==.
   1881 22                 3146 	ret
                           3147 ;------------------------------------------------------------
                           3148 ;Allocation info for local variables in function 'make_dirfile'
                           3149 ;------------------------------------------------------------
                           3150 ;dirname                   Allocated to stack - offset -5
                           3151 ;path                      Allocated to stack - offset 1
                           3152 ;n                         Allocated to stack - offset 4
                           3153 ;t                         Allocated to registers r6 
                           3154 ;c                         Allocated to registers r7 
                           3155 ;a                         Allocated to stack - offset 5
                           3156 ;b                         Allocated to stack - offset 6
                           3157 ;------------------------------------------------------------
                    0CA1   3158 	Ftff$make_dirfile$0$0 ==.
                    0CA1   3159 	C$tff.c$422$1$1 ==.
                           3160 ;	tff.c:422: char make_dirfile (			/* 1: error - detected an invalid format, '\0'or'/': next character */
                           3161 ;	-----------------------------------------
                           3162 ;	 function make_dirfile
                           3163 ;	-----------------------------------------
   1882                    3164 _make_dirfile:
   1882 C0 0F              3165 	push	_bp
   1884 85 81 0F           3166 	mov	_bp,sp
                           3167 ;     genReceive
   1887 C0 82              3168 	push	dpl
   1889 C0 83              3169 	push	dph
   188B C0 F0              3170 	push	b
   188D 05 81              3171 	inc	sp
   188F 05 81              3172 	inc	sp
   1891 05 81              3173 	inc	sp
                    0CB2   3174 	C$tff.c$430$1$1 ==.
                           3175 ;	tff.c:430: memset(dirname, ' ', 8+3);	/* Fill buffer with spaces */
                           3176 ;	genAssign
   1893 E5 0F              3177 	mov	a,_bp
   1895 24 FB              3178 	add	a,#0xfffffffb
   1897 F8                 3179 	mov	r0,a
   1898 86 05              3180 	mov	ar5,@r0
   189A 08                 3181 	inc	r0
   189B 86 06              3182 	mov	ar6,@r0
   189D 08                 3183 	inc	r0
   189E 86 07              3184 	mov	ar7,@r0
                           3185 ;	genIpush
   18A0 74 0B              3186 	mov	a,#0x0B
   18A2 C0 E0              3187 	push	acc
                           3188 ;	Peephole 181	changed mov to clr
   18A4 E4                 3189 	clr	a
   18A5 C0 E0              3190 	push	acc
                           3191 ;	genIpush
   18A7 74 20              3192 	mov	a,#0x20
   18A9 C0 E0              3193 	push	acc
                           3194 ;	genCall
   18AB 8D 82              3195 	mov	dpl,r5
   18AD 8E 83              3196 	mov	dph,r6
   18AF 8F F0              3197 	mov	b,r7
   18B1 12 45 52           3198 	lcall	_memset
   18B4 15 81              3199 	dec	sp
   18B6 15 81              3200 	dec	sp
   18B8 15 81              3201 	dec	sp
                    0CD9   3202 	C$tff.c$431$1$1 ==.
                           3203 ;	tff.c:431: a = 0; b = 0x18;	/* NT flag */
                           3204 ;	genAssign
   18BA E5 0F              3205 	mov	a,_bp
   18BC 24 05              3206 	add	a,#0x05
   18BE F8                 3207 	mov	r0,a
   18BF 76 00              3208 	mov	@r0,#0x00
                           3209 ;	genAssign
   18C1 E5 0F              3210 	mov	a,_bp
   18C3 24 06              3211 	add	a,#0x06
   18C5 F8                 3212 	mov	r0,a
   18C6 76 18              3213 	mov	@r0,#0x18
                    0CE7   3214 	C$tff.c$432$1$1 ==.
                           3215 ;	tff.c:432: n = 0; t = 8;
                           3216 ;	genAssign
   18C8 E5 0F              3217 	mov	a,_bp
   18CA 24 04              3218 	add	a,#0x04
   18CC F8                 3219 	mov	r0,a
   18CD 76 00              3220 	mov	@r0,#0x00
                           3221 ;	genAssign
   18CF 7E 08              3222 	mov	r6,#0x08
   18D1                    3223 00155$:
                    0CF0   3224 	C$tff.c$434$1$1 ==.
                           3225 ;	tff.c:434: c = *(*path)++;
                           3226 ;	genIpush
   18D1 C0 06              3227 	push	ar6
                           3228 ;	genPointerGet
                           3229 ;	genGenPointerGet
   18D3 A8 0F              3230 	mov	r0,_bp
   18D5 08                 3231 	inc	r0
   18D6 86 82              3232 	mov	dpl,@r0
   18D8 08                 3233 	inc	r0
   18D9 86 83              3234 	mov	dph,@r0
   18DB 08                 3235 	inc	r0
   18DC 86 F0              3236 	mov	b,@r0
   18DE 12 47 8A           3237 	lcall	__gptrget
   18E1 FE                 3238 	mov	r6,a
   18E2 A3                 3239 	inc	dptr
   18E3 12 47 8A           3240 	lcall	__gptrget
   18E6 FF                 3241 	mov	r7,a
   18E7 A3                 3242 	inc	dptr
   18E8 12 47 8A           3243 	lcall	__gptrget
   18EB FD                 3244 	mov	r5,a
                           3245 ;	genPlus
                           3246 ;     genPlusIncr
   18EC 74 01              3247 	mov	a,#0x01
                           3248 ;	Peephole 236.a	used r6 instead of ar6
   18EE 2E                 3249 	add	a,r6
   18EF FA                 3250 	mov	r2,a
                           3251 ;	Peephole 181	changed mov to clr
   18F0 E4                 3252 	clr	a
                           3253 ;	Peephole 236.b	used r7 instead of ar7
   18F1 3F                 3254 	addc	a,r7
   18F2 FB                 3255 	mov	r3,a
   18F3 8D 04              3256 	mov	ar4,r5
                           3257 ;	genPointerSet
                           3258 ;	genGenPointerSet
   18F5 A8 0F              3259 	mov	r0,_bp
   18F7 08                 3260 	inc	r0
   18F8 86 82              3261 	mov	dpl,@r0
   18FA 08                 3262 	inc	r0
   18FB 86 83              3263 	mov	dph,@r0
   18FD 08                 3264 	inc	r0
   18FE 86 F0              3265 	mov	b,@r0
   1900 EA                 3266 	mov	a,r2
   1901 12 42 DC           3267 	lcall	__gptrput
   1904 A3                 3268 	inc	dptr
   1905 EB                 3269 	mov	a,r3
   1906 12 42 DC           3270 	lcall	__gptrput
   1909 A3                 3271 	inc	dptr
   190A EC                 3272 	mov	a,r4
   190B 12 42 DC           3273 	lcall	__gptrput
                           3274 ;	genPointerGet
                           3275 ;	genGenPointerGet
   190E 8E 82              3276 	mov	dpl,r6
   1910 8F 83              3277 	mov	dph,r7
   1912 8D F0              3278 	mov	b,r5
   1914 12 47 8A           3279 	lcall	__gptrget
   1917 FE                 3280 	mov	r6,a
                           3281 ;	genAssign
   1918 8E 07              3282 	mov	ar7,r6
                    0D39   3283 	C$tff.c$435$1$1 ==.
                           3284 ;	tff.c:435: if (c == '\0' || c == '/') {		/* Reached to end of str or directory separator */
                           3285 ;	genIpop
   191A D0 06              3286 	pop	ar6
                           3287 ;	genIfx
   191C EF                 3288 	mov	a,r7
                           3289 ;	genIfxJump
                           3290 ;	Peephole 108.c	removed ljmp by inverse jump logic
   191D 60 03              3291 	jz	00103$
                           3292 ;	Peephole 300	removed redundant label 00191$
                           3293 ;	genCmpEq
                           3294 ;	gencjneshort
                           3295 ;	Peephole 112.b	changed ljmp to sjmp
                           3296 ;	Peephole 198.b	optimized misc jump sequence
   191F BF 2F 36           3297 	cjne	r7,#0x2F,00104$
                           3298 ;	Peephole 200.b	removed redundant sjmp
                           3299 ;	Peephole 300	removed redundant label 00192$
                           3300 ;	Peephole 300	removed redundant label 00193$
   1922                    3301 00103$:
                    0D41   3302 	C$tff.c$436$3$3 ==.
                           3303 ;	tff.c:436: if (n == 0) break;
                           3304 ;	genIfx
   1922 E5 0F              3305 	mov	a,_bp
   1924 24 04              3306 	add	a,#0x04
   1926 F8                 3307 	mov	r0,a
   1927 E6                 3308 	mov	a,@r0
                           3309 ;	genIfxJump
   1928 70 03              3310 	jnz	00194$
   192A 02 1A 8C           3311 	ljmp	00156$
   192D                    3312 00194$:
                    0D4C   3313 	C$tff.c$437$3$3 ==.
                           3314 ;	tff.c:437: dirname[11] = _USE_NTFLAG ? (a & b) : 0;
                           3315 ;	genPlus
   192D E5 0F              3316 	mov	a,_bp
   192F 24 FB              3317 	add	a,#0xfffffffb
   1931 F8                 3318 	mov	r0,a
                           3319 ;     genPlusIncr
   1932 74 0B              3320 	mov	a,#0x0B
   1934 26                 3321 	add	a,@r0
   1935 FA                 3322 	mov	r2,a
                           3323 ;	Peephole 181	changed mov to clr
   1936 E4                 3324 	clr	a
   1937 08                 3325 	inc	r0
   1938 36                 3326 	addc	a,@r0
   1939 FB                 3327 	mov	r3,a
   193A 08                 3328 	inc	r0
   193B 86 04              3329 	mov	ar4,@r0
                           3330 ;	genAnd
   193D E5 0F              3331 	mov	a,_bp
   193F 24 05              3332 	add	a,#0x05
   1941 F8                 3333 	mov	r0,a
   1942 E5 0F              3334 	mov	a,_bp
   1944 24 06              3335 	add	a,#0x06
   1946 F9                 3336 	mov	r1,a
   1947 E7                 3337 	mov	a,@r1
   1948 56                 3338 	anl	a,@r0
                           3339 ;	genPointerSet
                           3340 ;	genGenPointerSet
   1949 FD                 3341 	mov	r5,a
   194A 8A 82              3342 	mov	dpl,r2
   194C 8B 83              3343 	mov	dph,r3
   194E 8C F0              3344 	mov	b,r4
                           3345 ;	Peephole 191	removed redundant mov
   1950 12 42 DC           3346 	lcall	__gptrput
                    0D72   3347 	C$tff.c$438$3$3 ==.
                           3348 ;	tff.c:438: return c;
                           3349 ;	genRet
   1953 8F 82              3350 	mov	dpl,r7
   1955 02 1A 8F           3351 	ljmp	00157$
   1958                    3352 00104$:
                    0D77   3353 	C$tff.c$440$2$2 ==.
                           3354 ;	tff.c:440: if (c <= ' ' || c == 0x7F) break;		/* Reject invisible chars */
                           3355 ;	genCmpGt
                           3356 ;	genCmp
                           3357 ;	genIfxJump
                           3358 ;	Peephole 132.c	optimized genCmpGt by inverse logic (acc differs)
   1958 EF                 3359 	mov	a,r7
   1959 24 DF              3360 	add	a,#0xff - 0x20
   195B 40 03              3361 	jc	00195$
   195D 02 1A 8C           3362 	ljmp	00156$
   1960                    3363 00195$:
                           3364 ;	genCmpEq
                           3365 ;	gencjneshort
   1960 BF 7F 03           3366 	cjne	r7,#0x7F,00196$
   1963 02 1A 8C           3367 	ljmp	00156$
   1966                    3368 00196$:
                    0D85   3369 	C$tff.c$441$2$2 ==.
                           3370 ;	tff.c:441: if (c == '.') {
                           3371 ;	genCmpEq
                           3372 ;	gencjneshort
                           3373 ;	Peephole 112.b	changed ljmp to sjmp
                           3374 ;	Peephole 198.b	optimized misc jump sequence
   1966 BF 2E 32           3375 	cjne	r7,#0x2E,00123$
                           3376 ;	Peephole 200.b	removed redundant sjmp
                           3377 ;	Peephole 300	removed redundant label 00197$
                           3378 ;	Peephole 300	removed redundant label 00198$
                    0D88   3379 	C$tff.c$442$3$4 ==.
                           3380 ;	tff.c:442: if (!(a & 1) && n >= 1 && n <= 8) {	/* Enter extension part */
                           3381 ;	genAnd
   1969 E5 0F              3382 	mov	a,_bp
   196B 24 05              3383 	add	a,#0x05
   196D F8                 3384 	mov	r0,a
   196E E6                 3385 	mov	a,@r0
                           3386 ;	genIfxJump
   196F 30 E0 03           3387 	jnb	acc.0,00199$
   1972 02 1A 8C           3388 	ljmp	00156$
   1975                    3389 00199$:
                           3390 ;	genCmpLt
   1975 E5 0F              3391 	mov	a,_bp
   1977 24 04              3392 	add	a,#0x04
   1979 F8                 3393 	mov	r0,a
                           3394 ;	genCmp
   197A B6 01 00           3395 	cjne	@r0,#0x01,00200$
   197D                    3396 00200$:
                           3397 ;	genIfxJump
   197D 50 03              3398 	jnc	00201$
   197F 02 1A 8C           3399 	ljmp	00156$
   1982                    3400 00201$:
                           3401 ;	genCmpGt
   1982 E5 0F              3402 	mov	a,_bp
   1984 24 04              3403 	add	a,#0x04
   1986 F8                 3404 	mov	r0,a
                           3405 ;	genCmp
                           3406 ;	genIfxJump
                           3407 ;	Peephole 132.b	optimized genCmpGt by inverse logic (acc differs)
   1987 E6                 3408 	mov	a,@r0
   1988 24 F7              3409 	add	a,#0xff - 0x08
   198A 50 03              3410 	jnc	00202$
   198C 02 1A 8C           3411 	ljmp	00156$
   198F                    3412 00202$:
                    0DAE   3413 	C$tff.c$443$4$5 ==.
                           3414 ;	tff.c:443: n = 8; t = 11; continue;
                           3415 ;	genAssign
   198F E5 0F              3416 	mov	a,_bp
   1991 24 04              3417 	add	a,#0x04
   1993 F8                 3418 	mov	r0,a
   1994 76 08              3419 	mov	@r0,#0x08
                           3420 ;	genAssign
   1996 7E 0B              3421 	mov	r6,#0x0B
   1998 02 18 D1           3422 	ljmp	00155$
                    0DBA   3423 	C$tff.c$447$2$2 ==.
                           3424 ;	tff.c:447: if (_USE_SJIS &&
   199B                    3425 00123$:
                    0DBA   3426 	C$tff.c$448$2$2 ==.
                           3427 ;	tff.c:448: ((c >= 0x81 && c <= 0x9F) ||		/* Accept S-JIS code */
                           3428 ;	genCmpLt
                           3429 ;	genCmp
   199B BF 81 00           3430 	cjne	r7,#0x81,00203$
   199E                    3431 00203$:
                           3432 ;	genIfxJump
                           3433 ;	Peephole 112.b	changed ljmp to sjmp
                           3434 ;	Peephole 160.a	removed sjmp by inverse jump logic
   199E 40 05              3435 	jc	00122$
                           3436 ;	Peephole 300	removed redundant label 00204$
                           3437 ;	genCmpGt
                           3438 ;	genCmp
                           3439 ;	genIfxJump
                           3440 ;	Peephole 108.a	removed ljmp by inverse jump logic
                           3441 ;	Peephole 132.b	optimized genCmpGt by inverse logic (acc differs)
   19A0 EF                 3442 	mov	a,r7
   19A1 24 60              3443 	add	a,#0xff - 0x9F
   19A3 50 0A              3444 	jnc	00118$
                           3445 ;	Peephole 300	removed redundant label 00205$
   19A5                    3446 00122$:
                    0DC4   3447 	C$tff.c$449$2$2 ==.
                           3448 ;	tff.c:449: (c >= 0xE0 && c <= 0xFC))) {
                           3449 ;	genCmpLt
                           3450 ;	genCmp
   19A5 BF E0 00           3451 	cjne	r7,#0xE0,00206$
   19A8                    3452 00206$:
                           3453 ;	genIfxJump
                           3454 ;	Peephole 112.b	changed ljmp to sjmp
                           3455 ;	Peephole 160.a	removed sjmp by inverse jump logic
   19A8 40 1E              3456 	jc	00119$
                           3457 ;	Peephole 300	removed redundant label 00207$
                           3458 ;	genCmpGt
                           3459 ;	genCmp
                           3460 ;	genIfxJump
                           3461 ;	Peephole 132.b	optimized genCmpGt by inverse logic (acc differs)
   19AA EF                 3462 	mov	a,r7
   19AB 24 03              3463 	add	a,#0xff - 0xFC
                           3464 ;	Peephole 112.b	changed ljmp to sjmp
                           3465 ;	Peephole 160.a	removed sjmp by inverse jump logic
   19AD 40 19              3466 	jc	00119$
                           3467 ;	Peephole 300	removed redundant label 00208$
   19AF                    3468 00118$:
                    0DCE   3469 	C$tff.c$450$3$6 ==.
                           3470 ;	tff.c:450: if (n == 0 && c == 0xE5)		/* Change heading \xE5 to \x05 */
                           3471 ;	genIfx
   19AF E5 0F              3472 	mov	a,_bp
   19B1 24 04              3473 	add	a,#0x04
   19B3 F8                 3474 	mov	r0,a
   19B4 E6                 3475 	mov	a,@r0
                           3476 ;	genIfxJump
                           3477 ;	Peephole 108.b	removed ljmp by inverse jump logic
   19B5 70 05              3478 	jnz	00116$
                           3479 ;	Peephole 300	removed redundant label 00209$
                           3480 ;	genCmpEq
                           3481 ;	gencjneshort
                           3482 ;	Peephole 112.b	changed ljmp to sjmp
                           3483 ;	Peephole 198.b	optimized misc jump sequence
   19B7 BF E5 02           3484 	cjne	r7,#0xE5,00116$
                           3485 ;	Peephole 200.b	removed redundant sjmp
                           3486 ;	Peephole 300	removed redundant label 00210$
                           3487 ;	Peephole 300	removed redundant label 00211$
                    0DD9   3488 	C$tff.c$451$3$6 ==.
                           3489 ;	tff.c:451: c = 0x05;
                           3490 ;	genAssign
   19BA 7F 05              3491 	mov	r7,#0x05
   19BC                    3492 00116$:
                    0DDB   3493 	C$tff.c$452$3$6 ==.
                           3494 ;	tff.c:452: a ^= 1; goto md_l2;
                           3495 ;	genXor
   19BC E5 0F              3496 	mov	a,_bp
   19BE 24 05              3497 	add	a,#0x05
   19C0 F8                 3498 	mov	r0,a
   19C1 E6                 3499 	mov	a,@r0
   19C2 64 01              3500 	xrl	a,#0x01
   19C4 F6                 3501 	mov	@r0,a
   19C5 02 1A 59           3502 	ljmp	00151$
   19C8                    3503 00119$:
                    0DE7   3504 	C$tff.c$454$2$2 ==.
                           3505 ;	tff.c:454: if (c == '"') break;				/* Reject " */
                           3506 ;	genCmpEq
                           3507 ;	gencjneshort
   19C8 BF 22 03           3508 	cjne	r7,#0x22,00212$
   19CB 02 1A 8C           3509 	ljmp	00156$
   19CE                    3510 00212$:
                    0DED   3511 	C$tff.c$455$2$2 ==.
                           3512 ;	tff.c:455: if (c <= ')') goto md_l1;			/* Accept ! # $ % & ' ( ) */
                           3513 ;	genCmpGt
                           3514 ;	genCmp
                           3515 ;	genIfxJump
                           3516 ;	Peephole 132.c	optimized genCmpGt by inverse logic (acc differs)
   19CE EF                 3517 	mov	a,r7
   19CF 24 D6              3518 	add	a,#0xff - 0x29
   19D1 40 03              3519 	jc	00213$
   19D3 02 1A 50           3520 	ljmp	00150$
   19D6                    3521 00213$:
                    0DF5   3522 	C$tff.c$456$2$2 ==.
                           3523 ;	tff.c:456: if (c <= ',') break;				/* Reject * + , */
                           3524 ;	genCmpGt
                           3525 ;	genCmp
                           3526 ;	genIfxJump
                           3527 ;	Peephole 132.c	optimized genCmpGt by inverse logic (acc differs)
   19D6 EF                 3528 	mov	a,r7
   19D7 24 D3              3529 	add	a,#0xff - 0x2C
   19D9 40 03              3530 	jc	00214$
   19DB 02 1A 8C           3531 	ljmp	00156$
   19DE                    3532 00214$:
                    0DFD   3533 	C$tff.c$457$2$2 ==.
                           3534 ;	tff.c:457: if (c <= '9') goto md_l1;			/* Accept - 0-9 */
                           3535 ;	genCmpGt
                           3536 ;	genCmp
                           3537 ;	genIfxJump
                           3538 ;	Peephole 132.c	optimized genCmpGt by inverse logic (acc differs)
   19DE EF                 3539 	mov	a,r7
   19DF 24 C6              3540 	add	a,#0xff - 0x39
   19E1 40 03              3541 	jc	00215$
   19E3 02 1A 50           3542 	ljmp	00150$
   19E6                    3543 00215$:
                    0E05   3544 	C$tff.c$458$2$2 ==.
                           3545 ;	tff.c:458: if (c <= '?') break;				/* Reject : ; < = > ? */
                           3546 ;	genCmpGt
                           3547 ;	genCmp
                           3548 ;	genIfxJump
                           3549 ;	Peephole 132.c	optimized genCmpGt by inverse logic (acc differs)
   19E6 EF                 3550 	mov	a,r7
   19E7 24 C0              3551 	add	a,#0xff - 0x3F
   19E9 40 03              3552 	jc	00216$
   19EB 02 1A 8C           3553 	ljmp	00156$
   19EE                    3554 00216$:
                    0E0D   3555 	C$tff.c$459$2$2 ==.
                           3556 ;	tff.c:459: if (!(a & 1)) {	/* These checks are not applied to S-JIS 2nd byte */
                           3557 ;	genAnd
   19EE E5 0F              3558 	mov	a,_bp
   19F0 24 05              3559 	add	a,#0x05
   19F2 F8                 3560 	mov	r0,a
   19F3 E6                 3561 	mov	a,@r0
                           3562 ;	genIfxJump
                           3563 ;	Peephole 108.e	removed ljmp by inverse jump logic
   19F4 20 E0 59           3564 	jb	acc.0,00150$
                           3565 ;	Peephole 300	removed redundant label 00217$
                    0E16   3566 	C$tff.c$460$3$7 ==.
                           3567 ;	tff.c:460: if (c == '|') break;			/* Reject | */
                           3568 ;	genCmpEq
                           3569 ;	gencjneshort
   19F7 BF 7C 03           3570 	cjne	r7,#0x7C,00218$
   19FA 02 1A 8C           3571 	ljmp	00156$
   19FD                    3572 00218$:
                    0E1C   3573 	C$tff.c$461$3$7 ==.
                           3574 ;	tff.c:461: if (c >= '[' && c <= ']') break;/* Reject [ \ ] */
                           3575 ;	genCmpLt
                           3576 ;	genCmp
   19FD BF 5B 00           3577 	cjne	r7,#0x5B,00219$
   1A00                    3578 00219$:
                           3579 ;	genIfxJump
                           3580 ;	Peephole 112.b	changed ljmp to sjmp
                           3581 ;	Peephole 160.a	removed sjmp by inverse jump logic
   1A00 40 08              3582 	jc	00141$
                           3583 ;	Peephole 300	removed redundant label 00220$
                           3584 ;	genCmpGt
                           3585 ;	genCmp
                           3586 ;	genIfxJump
                           3587 ;	Peephole 132.c	optimized genCmpGt by inverse logic (acc differs)
   1A02 EF                 3588 	mov	a,r7
   1A03 24 A2              3589 	add	a,#0xff - 0x5D
   1A05 40 03              3590 	jc	00221$
   1A07 02 1A 8C           3591 	ljmp	00156$
   1A0A                    3592 00221$:
                    0E29   3593 	C$tff.c$462$3$7 ==.
                           3594 ;	tff.c:462: if (_USE_NTFLAG && c >= 'A' && c <= 'Z')
   1A0A                    3595 00141$:
                           3596 ;	genCmpLt
                           3597 ;	genCmp
   1A0A BF 41 00           3598 	cjne	r7,#0x41,00222$
   1A0D                    3599 00222$:
                           3600 ;	genIfxJump
                           3601 ;	Peephole 112.b	changed ljmp to sjmp
                           3602 ;	Peephole 160.a	removed sjmp by inverse jump logic
   1A0D 40 1C              3603 	jc	00140$
                           3604 ;	Peephole 300	removed redundant label 00223$
                           3605 ;	genCmpGt
                           3606 ;	genCmp
                           3607 ;	genIfxJump
                           3608 ;	Peephole 132.b	optimized genCmpGt by inverse logic (acc differs)
   1A0F EF                 3609 	mov	a,r7
   1A10 24 A5              3610 	add	a,#0xff - 0x5A
                           3611 ;	Peephole 112.b	changed ljmp to sjmp
                           3612 ;	Peephole 160.a	removed sjmp by inverse jump logic
   1A12 40 17              3613 	jc	00140$
                           3614 ;	Peephole 300	removed redundant label 00224$
                    0E33   3615 	C$tff.c$463$3$7 ==.
                           3616 ;	tff.c:463: (t == 8) ? (b &= ~0x08) : (b &= ~0x10);
                           3617 ;	genCmpEq
                           3618 ;	gencjneshort
                           3619 ;	Peephole 112.b	changed ljmp to sjmp
                           3620 ;	Peephole 198.b	optimized misc jump sequence
   1A14 BE 08 0B           3621 	cjne	r6,#0x08,00159$
                           3622 ;	Peephole 200.b	removed redundant sjmp
                           3623 ;	Peephole 300	removed redundant label 00225$
                           3624 ;	Peephole 300	removed redundant label 00226$
                           3625 ;	genAnd
   1A17 E5 0F              3626 	mov	a,_bp
   1A19 24 06              3627 	add	a,#0x06
   1A1B F8                 3628 	mov	r0,a
   1A1C E6                 3629 	mov	a,@r0
   1A1D 54 F7              3630 	anl	a,#0xF7
   1A1F F6                 3631 	mov	@r0,a
                           3632 ;	Peephole 112.b	changed ljmp to sjmp
   1A20 80 09              3633 	sjmp	00140$
   1A22                    3634 00159$:
                           3635 ;	genAnd
   1A22 E5 0F              3636 	mov	a,_bp
   1A24 24 06              3637 	add	a,#0x06
   1A26 F8                 3638 	mov	r0,a
   1A27 E6                 3639 	mov	a,@r0
   1A28 54 EF              3640 	anl	a,#0xEF
   1A2A F6                 3641 	mov	@r0,a
   1A2B                    3642 00140$:
                    0E4A   3643 	C$tff.c$464$3$7 ==.
                           3644 ;	tff.c:464: if (c >= 'a' && c <= 'z') {		/* Convert to upper case */
                           3645 ;	genCmpLt
                           3646 ;	genCmp
   1A2B BF 61 00           3647 	cjne	r7,#0x61,00227$
   1A2E                    3648 00227$:
                           3649 ;	genIfxJump
                           3650 ;	Peephole 112.b	changed ljmp to sjmp
                           3651 ;	Peephole 160.a	removed sjmp by inverse jump logic
   1A2E 40 20              3652 	jc	00150$
                           3653 ;	Peephole 300	removed redundant label 00228$
                           3654 ;	genCmpGt
                           3655 ;	genCmp
                           3656 ;	genIfxJump
                           3657 ;	Peephole 132.b	optimized genCmpGt by inverse logic (acc differs)
   1A30 EF                 3658 	mov	a,r7
   1A31 24 85              3659 	add	a,#0xff - 0x7A
                           3660 ;	Peephole 112.b	changed ljmp to sjmp
                           3661 ;	Peephole 160.a	removed sjmp by inverse jump logic
   1A33 40 1B              3662 	jc	00150$
                           3663 ;	Peephole 300	removed redundant label 00229$
                    0E54   3664 	C$tff.c$465$4$8 ==.
                           3665 ;	tff.c:465: c -= 0x20;
                           3666 ;	genMinus
   1A35 EF                 3667 	mov	a,r7
   1A36 24 E0              3668 	add	a,#0xe0
   1A38 FF                 3669 	mov	r7,a
                    0E58   3670 	C$tff.c$466$4$8 ==.
                           3671 ;	tff.c:466: if (_USE_NTFLAG) (t == 8) ? (a |= 0x08) : (a |= 0x10);
                           3672 ;	genCmpEq
                           3673 ;	gencjneshort
                           3674 ;	Peephole 112.b	changed ljmp to sjmp
                           3675 ;	Peephole 198.b	optimized misc jump sequence
   1A39 BE 08 0B           3676 	cjne	r6,#0x08,00161$
                           3677 ;	Peephole 200.b	removed redundant sjmp
                           3678 ;	Peephole 300	removed redundant label 00230$
                           3679 ;	Peephole 300	removed redundant label 00231$
                           3680 ;	genOr
   1A3C E5 0F              3681 	mov	a,_bp
   1A3E 24 05              3682 	add	a,#0x05
   1A40 F8                 3683 	mov	r0,a
   1A41 E6                 3684 	mov	a,@r0
   1A42 44 08              3685 	orl	a,#0x08
   1A44 F6                 3686 	mov	@r0,a
                           3687 ;	Peephole 112.b	changed ljmp to sjmp
   1A45 80 09              3688 	sjmp	00150$
   1A47                    3689 00161$:
                           3690 ;	genOr
   1A47 E5 0F              3691 	mov	a,_bp
   1A49 24 05              3692 	add	a,#0x05
   1A4B F8                 3693 	mov	r0,a
   1A4C E6                 3694 	mov	a,@r0
   1A4D 44 10              3695 	orl	a,#0x10
   1A4F F6                 3696 	mov	@r0,a
                    0E6F   3697 	C$tff.c$469$2$2 ==.
                           3698 ;	tff.c:469: md_l1:
   1A50                    3699 00150$:
                    0E6F   3700 	C$tff.c$470$2$2 ==.
                           3701 ;	tff.c:470: a &= ~1;
                           3702 ;	genAnd
   1A50 E5 0F              3703 	mov	a,_bp
   1A52 24 05              3704 	add	a,#0x05
   1A54 F8                 3705 	mov	r0,a
   1A55 E6                 3706 	mov	a,@r0
   1A56 54 FE              3707 	anl	a,#0xFE
   1A58 F6                 3708 	mov	@r0,a
                    0E78   3709 	C$tff.c$471$2$2 ==.
                           3710 ;	tff.c:471: md_l2:
   1A59                    3711 00151$:
                    0E78   3712 	C$tff.c$472$2$2 ==.
                           3713 ;	tff.c:472: if (n >= t) break;
                           3714 ;	genCmpLt
   1A59 E5 0F              3715 	mov	a,_bp
   1A5B 24 04              3716 	add	a,#0x04
   1A5D F8                 3717 	mov	r0,a
                           3718 ;	genCmp
   1A5E C3                 3719 	clr	c
   1A5F E6                 3720 	mov	a,@r0
   1A60 9E                 3721 	subb	a,r6
                           3722 ;	genIfxJump
                           3723 ;	Peephole 108.a	removed ljmp by inverse jump logic
   1A61 50 29              3724 	jnc	00156$
                           3725 ;	Peephole 300	removed redundant label 00232$
                    0E82   3726 	C$tff.c$473$2$2 ==.
                           3727 ;	tff.c:473: dirname[n++] = c;
                           3728 ;	genAssign
   1A63 E5 0F              3729 	mov	a,_bp
   1A65 24 04              3730 	add	a,#0x04
   1A67 F8                 3731 	mov	r0,a
   1A68 86 02              3732 	mov	ar2,@r0
                           3733 ;	genPlus
   1A6A E5 0F              3734 	mov	a,_bp
   1A6C 24 04              3735 	add	a,#0x04
   1A6E F8                 3736 	mov	r0,a
                           3737 ;     genPlusIncr
   1A6F 06                 3738 	inc	@r0
                           3739 ;	genPlus
   1A70 E5 0F              3740 	mov	a,_bp
   1A72 24 FB              3741 	add	a,#0xfffffffb
   1A74 F8                 3742 	mov	r0,a
                           3743 ;	Peephole 236.g	used r2 instead of ar2
   1A75 EA                 3744 	mov	a,r2
   1A76 26                 3745 	add	a,@r0
   1A77 FA                 3746 	mov	r2,a
                           3747 ;	Peephole 181	changed mov to clr
   1A78 E4                 3748 	clr	a
   1A79 08                 3749 	inc	r0
   1A7A 36                 3750 	addc	a,@r0
   1A7B FB                 3751 	mov	r3,a
   1A7C 08                 3752 	inc	r0
   1A7D 86 04              3753 	mov	ar4,@r0
                           3754 ;	genPointerSet
                           3755 ;	genGenPointerSet
   1A7F 8A 82              3756 	mov	dpl,r2
   1A81 8B 83              3757 	mov	dph,r3
   1A83 8C F0              3758 	mov	b,r4
   1A85 EF                 3759 	mov	a,r7
   1A86 12 42 DC           3760 	lcall	__gptrput
   1A89 02 18 D1           3761 	ljmp	00155$
   1A8C                    3762 00156$:
                    0EAB   3763 	C$tff.c$475$1$1 ==.
                           3764 ;	tff.c:475: return 1;
                           3765 ;	genRet
   1A8C 75 82 01           3766 	mov	dpl,#0x01
   1A8F                    3767 00157$:
   1A8F 85 0F 81           3768 	mov	sp,_bp
   1A92 D0 0F              3769 	pop	_bp
                    0EB3   3770 	C$tff.c$476$1$1 ==.
                    0EB3   3771 	XFtff$make_dirfile$0$0 ==.
   1A94 22                 3772 	ret
                           3773 ;------------------------------------------------------------
                           3774 ;Allocation info for local variables in function 'trace_path'
                           3775 ;------------------------------------------------------------
                           3776 ;fn                        Allocated to stack - offset -5
                           3777 ;path                      Allocated to stack - offset -8
                           3778 ;dir                       Allocated to stack - offset -11
                           3779 ;dirobj                    Allocated to stack - offset 1
                           3780 ;clust                     Allocated to stack - offset 4
                           3781 ;ds                        Allocated to registers r2 
                           3782 ;dptr                      Allocated to stack - offset 8
                           3783 ;fs                        Allocated to stack - offset 11
                           3784 ;sloc0                     Allocated to stack - offset 14
                           3785 ;sloc1                     Allocated to stack - offset 17
                           3786 ;sloc2                     Allocated to stack - offset 20
                           3787 ;------------------------------------------------------------
                    0EB4   3788 	Ftff$trace_path$0$0 ==.
                    0EB4   3789 	C$tff.c$485$1$1 ==.
                           3790 ;	tff.c:485: FRESULT trace_path (	/* FR_OK(0): successful, !=0: error code */
                           3791 ;	-----------------------------------------
                           3792 ;	 function trace_path
                           3793 ;	-----------------------------------------
   1A95                    3794 _trace_path:
   1A95 C0 0F              3795 	push	_bp
   1A97 85 81 0F           3796 	mov	_bp,sp
                           3797 ;     genReceive
   1A9A C0 82              3798 	push	dpl
   1A9C C0 83              3799 	push	dph
   1A9E C0 F0              3800 	push	b
   1AA0 E5 81              3801 	mov	a,sp
   1AA2 24 17              3802 	add	a,#0x17
   1AA4 F5 81              3803 	mov	sp,a
                    0EC5   3804 	C$tff.c$495$1$1 ==.
                           3805 ;	tff.c:495: FATFS *fs = FatFs;
                           3806 ;	genAssign
   1AA6 E5 0F              3807 	mov	a,_bp
   1AA8 24 0B              3808 	add	a,#0x0b
   1AAA F8                 3809 	mov	r0,a
   1AAB A6 0A              3810 	mov	@r0,_FatFs
   1AAD 08                 3811 	inc	r0
   1AAE A6 0B              3812 	mov	@r0,(_FatFs + 1)
   1AB0 08                 3813 	inc	r0
   1AB1 A6 0C              3814 	mov	@r0,(_FatFs + 2)
                    0ED2   3815 	C$tff.c$498$1$1 ==.
                           3816 ;	tff.c:498: clust = fs->dirbase;
                           3817 ;	genPlus
   1AB3 E5 0F              3818 	mov	a,_bp
   1AB5 24 0B              3819 	add	a,#0x0b
   1AB7 F8                 3820 	mov	r0,a
                           3821 ;     genPlusIncr
   1AB8 74 0C              3822 	mov	a,#0x0C
   1ABA 26                 3823 	add	a,@r0
   1ABB FD                 3824 	mov	r5,a
                           3825 ;	Peephole 181	changed mov to clr
   1ABC E4                 3826 	clr	a
   1ABD 08                 3827 	inc	r0
   1ABE 36                 3828 	addc	a,@r0
   1ABF FE                 3829 	mov	r6,a
   1AC0 08                 3830 	inc	r0
   1AC1 86 07              3831 	mov	ar7,@r0
                           3832 ;	genPointerGet
                           3833 ;	genGenPointerGet
   1AC3 8D 82              3834 	mov	dpl,r5
   1AC5 8E 83              3835 	mov	dph,r6
   1AC7 8F F0              3836 	mov	b,r7
   1AC9 12 47 8A           3837 	lcall	__gptrget
   1ACC FA                 3838 	mov	r2,a
   1ACD A3                 3839 	inc	dptr
   1ACE 12 47 8A           3840 	lcall	__gptrget
   1AD1 FB                 3841 	mov	r3,a
   1AD2 A3                 3842 	inc	dptr
   1AD3 12 47 8A           3843 	lcall	__gptrget
   1AD6 FC                 3844 	mov	r4,a
   1AD7 A3                 3845 	inc	dptr
   1AD8 12 47 8A           3846 	lcall	__gptrget
   1ADB FD                 3847 	mov	r5,a
                           3848 ;	genAssign
   1ADC E5 0F              3849 	mov	a,_bp
   1ADE 24 04              3850 	add	a,#0x04
   1AE0 F8                 3851 	mov	r0,a
   1AE1 A6 02              3852 	mov	@r0,ar2
   1AE3 08                 3853 	inc	r0
   1AE4 A6 03              3854 	mov	@r0,ar3
   1AE6 08                 3855 	inc	r0
   1AE7 A6 04              3856 	mov	@r0,ar4
   1AE9 08                 3857 	inc	r0
   1AEA A6 05              3858 	mov	@r0,ar5
                    0F0B   3859 	C$tff.c$500$1$1 ==.
                           3860 ;	tff.c:500: if (fs->fs_type == FS_FAT32) {
                           3861 ;	genPlus
   1AEC E5 0F              3862 	mov	a,_bp
   1AEE 24 0B              3863 	add	a,#0x0b
   1AF0 F8                 3864 	mov	r0,a
                           3865 ;     genPlusIncr
   1AF1 74 1C              3866 	mov	a,#0x1C
   1AF3 26                 3867 	add	a,@r0
   1AF4 FD                 3868 	mov	r5,a
                           3869 ;	Peephole 181	changed mov to clr
   1AF5 E4                 3870 	clr	a
   1AF6 08                 3871 	inc	r0
   1AF7 36                 3872 	addc	a,@r0
   1AF8 FE                 3873 	mov	r6,a
   1AF9 08                 3874 	inc	r0
   1AFA 86 07              3875 	mov	ar7,@r0
                           3876 ;	genPointerGet
                           3877 ;	genGenPointerGet
   1AFC 8D 82              3878 	mov	dpl,r5
   1AFE 8E 83              3879 	mov	dph,r6
   1B00 8F F0              3880 	mov	b,r7
   1B02 12 47 8A           3881 	lcall	__gptrget
   1B05 FD                 3882 	mov	r5,a
                           3883 ;	genCmpEq
                           3884 ;	gencjneshort
   1B06 BD 03 02           3885 	cjne	r5,#0x03,00148$
   1B09 80 03              3886 	sjmp	00149$
   1B0B                    3887 00148$:
   1B0B 02 1B BD           3888 	ljmp	00102$
   1B0E                    3889 00149$:
                    0F2D   3890 	C$tff.c$501$2$2 ==.
                           3891 ;	tff.c:501: dirobj->clust = dirobj->sclust = clust;
                           3892 ;	genPlus
   1B0E A8 0F              3893 	mov	r0,_bp
   1B10 08                 3894 	inc	r0
                           3895 ;     genPlusIncr
   1B11 74 0B              3896 	mov	a,#0x0B
   1B13 26                 3897 	add	a,@r0
   1B14 FD                 3898 	mov	r5,a
                           3899 ;	Peephole 181	changed mov to clr
   1B15 E4                 3900 	clr	a
   1B16 08                 3901 	inc	r0
   1B17 36                 3902 	addc	a,@r0
   1B18 FE                 3903 	mov	r6,a
   1B19 08                 3904 	inc	r0
   1B1A 86 07              3905 	mov	ar7,@r0
                           3906 ;	genPlus
   1B1C A8 0F              3907 	mov	r0,_bp
   1B1E 08                 3908 	inc	r0
                           3909 ;     genPlusIncr
   1B1F 74 07              3910 	mov	a,#0x07
   1B21 26                 3911 	add	a,@r0
   1B22 FA                 3912 	mov	r2,a
                           3913 ;	Peephole 181	changed mov to clr
   1B23 E4                 3914 	clr	a
   1B24 08                 3915 	inc	r0
   1B25 36                 3916 	addc	a,@r0
   1B26 FB                 3917 	mov	r3,a
   1B27 08                 3918 	inc	r0
   1B28 86 04              3919 	mov	ar4,@r0
                           3920 ;	genPointerSet
                           3921 ;	genGenPointerSet
   1B2A 8A 82              3922 	mov	dpl,r2
   1B2C 8B 83              3923 	mov	dph,r3
   1B2E 8C F0              3924 	mov	b,r4
   1B30 E5 0F              3925 	mov	a,_bp
   1B32 24 04              3926 	add	a,#0x04
   1B34 F8                 3927 	mov	r0,a
   1B35 E6                 3928 	mov	a,@r0
   1B36 12 42 DC           3929 	lcall	__gptrput
   1B39 A3                 3930 	inc	dptr
   1B3A 08                 3931 	inc	r0
   1B3B E6                 3932 	mov	a,@r0
   1B3C 12 42 DC           3933 	lcall	__gptrput
   1B3F A3                 3934 	inc	dptr
   1B40 08                 3935 	inc	r0
   1B41 E6                 3936 	mov	a,@r0
   1B42 12 42 DC           3937 	lcall	__gptrput
   1B45 A3                 3938 	inc	dptr
   1B46 08                 3939 	inc	r0
   1B47 E6                 3940 	mov	a,@r0
   1B48 12 42 DC           3941 	lcall	__gptrput
                           3942 ;	genPointerSet
                           3943 ;	genGenPointerSet
   1B4B 8D 82              3944 	mov	dpl,r5
   1B4D 8E 83              3945 	mov	dph,r6
   1B4F 8F F0              3946 	mov	b,r7
   1B51 E5 0F              3947 	mov	a,_bp
   1B53 24 04              3948 	add	a,#0x04
   1B55 F8                 3949 	mov	r0,a
   1B56 E6                 3950 	mov	a,@r0
   1B57 12 42 DC           3951 	lcall	__gptrput
   1B5A A3                 3952 	inc	dptr
   1B5B 08                 3953 	inc	r0
   1B5C E6                 3954 	mov	a,@r0
   1B5D 12 42 DC           3955 	lcall	__gptrput
   1B60 A3                 3956 	inc	dptr
   1B61 08                 3957 	inc	r0
   1B62 E6                 3958 	mov	a,@r0
   1B63 12 42 DC           3959 	lcall	__gptrput
   1B66 A3                 3960 	inc	dptr
   1B67 08                 3961 	inc	r0
   1B68 E6                 3962 	mov	a,@r0
   1B69 12 42 DC           3963 	lcall	__gptrput
                    0F8B   3964 	C$tff.c$502$2$2 ==.
                           3965 ;	tff.c:502: dirobj->sect = clust2sect(clust);
                           3966 ;	genPlus
   1B6C A8 0F              3967 	mov	r0,_bp
   1B6E 08                 3968 	inc	r0
   1B6F E5 0F              3969 	mov	a,_bp
   1B71 24 0E              3970 	add	a,#0x0e
   1B73 F9                 3971 	mov	r1,a
                           3972 ;     genPlusIncr
   1B74 74 0F              3973 	mov	a,#0x0F
   1B76 26                 3974 	add	a,@r0
   1B77 F7                 3975 	mov	@r1,a
                           3976 ;	Peephole 181	changed mov to clr
   1B78 E4                 3977 	clr	a
   1B79 08                 3978 	inc	r0
   1B7A 36                 3979 	addc	a,@r0
   1B7B 09                 3980 	inc	r1
   1B7C F7                 3981 	mov	@r1,a
   1B7D 08                 3982 	inc	r0
   1B7E 09                 3983 	inc	r1
   1B7F E6                 3984 	mov	a,@r0
   1B80 F7                 3985 	mov	@r1,a
                           3986 ;	genCall
   1B81 E5 0F              3987 	mov	a,_bp
   1B83 24 04              3988 	add	a,#0x04
   1B85 F8                 3989 	mov	r0,a
   1B86 86 82              3990 	mov	dpl,@r0
   1B88 08                 3991 	inc	r0
   1B89 86 83              3992 	mov	dph,@r0
   1B8B 08                 3993 	inc	r0
   1B8C 86 F0              3994 	mov	b,@r0
   1B8E 08                 3995 	inc	r0
   1B8F E6                 3996 	mov	a,@r0
   1B90 12 10 DC           3997 	lcall	_clust2sect
   1B93 AD 82              3998 	mov	r5,dpl
   1B95 AE 83              3999 	mov	r6,dph
   1B97 AF F0              4000 	mov	r7,b
   1B99 FA                 4001 	mov	r2,a
                           4002 ;	genPointerSet
                           4003 ;	genGenPointerSet
   1B9A E5 0F              4004 	mov	a,_bp
   1B9C 24 0E              4005 	add	a,#0x0e
   1B9E F8                 4006 	mov	r0,a
   1B9F 86 82              4007 	mov	dpl,@r0
   1BA1 08                 4008 	inc	r0
   1BA2 86 83              4009 	mov	dph,@r0
   1BA4 08                 4010 	inc	r0
   1BA5 86 F0              4011 	mov	b,@r0
   1BA7 ED                 4012 	mov	a,r5
   1BA8 12 42 DC           4013 	lcall	__gptrput
   1BAB A3                 4014 	inc	dptr
   1BAC EE                 4015 	mov	a,r6
   1BAD 12 42 DC           4016 	lcall	__gptrput
   1BB0 A3                 4017 	inc	dptr
   1BB1 EF                 4018 	mov	a,r7
   1BB2 12 42 DC           4019 	lcall	__gptrput
   1BB5 A3                 4020 	inc	dptr
   1BB6 EA                 4021 	mov	a,r2
   1BB7 12 42 DC           4022 	lcall	__gptrput
   1BBA 02 1C 3A           4023 	ljmp	00103$
   1BBD                    4024 00102$:
                    0FDC   4025 	C$tff.c$506$2$3 ==.
                           4026 ;	tff.c:506: dirobj->clust = dirobj->sclust = 0;
                           4027 ;	genPlus
   1BBD A8 0F              4028 	mov	r0,_bp
   1BBF 08                 4029 	inc	r0
                           4030 ;     genPlusIncr
   1BC0 74 0B              4031 	mov	a,#0x0B
   1BC2 26                 4032 	add	a,@r0
   1BC3 FA                 4033 	mov	r2,a
                           4034 ;	Peephole 181	changed mov to clr
   1BC4 E4                 4035 	clr	a
   1BC5 08                 4036 	inc	r0
   1BC6 36                 4037 	addc	a,@r0
   1BC7 FB                 4038 	mov	r3,a
   1BC8 08                 4039 	inc	r0
   1BC9 86 04              4040 	mov	ar4,@r0
                           4041 ;	genPlus
   1BCB A8 0F              4042 	mov	r0,_bp
   1BCD 08                 4043 	inc	r0
                           4044 ;     genPlusIncr
   1BCE 74 07              4045 	mov	a,#0x07
   1BD0 26                 4046 	add	a,@r0
   1BD1 FD                 4047 	mov	r5,a
                           4048 ;	Peephole 181	changed mov to clr
   1BD2 E4                 4049 	clr	a
   1BD3 08                 4050 	inc	r0
   1BD4 36                 4051 	addc	a,@r0
   1BD5 FE                 4052 	mov	r6,a
   1BD6 08                 4053 	inc	r0
   1BD7 86 07              4054 	mov	ar7,@r0
                           4055 ;	genPointerSet
                           4056 ;	genGenPointerSet
   1BD9 8D 82              4057 	mov	dpl,r5
   1BDB 8E 83              4058 	mov	dph,r6
   1BDD 8F F0              4059 	mov	b,r7
                           4060 ;	Peephole 181	changed mov to clr
   1BDF E4                 4061 	clr	a
   1BE0 12 42 DC           4062 	lcall	__gptrput
   1BE3 A3                 4063 	inc	dptr
                           4064 ;	Peephole 181	changed mov to clr
   1BE4 E4                 4065 	clr	a
   1BE5 12 42 DC           4066 	lcall	__gptrput
   1BE8 A3                 4067 	inc	dptr
                           4068 ;	Peephole 181	changed mov to clr
   1BE9 E4                 4069 	clr	a
   1BEA 12 42 DC           4070 	lcall	__gptrput
   1BED A3                 4071 	inc	dptr
                           4072 ;	Peephole 181	changed mov to clr
   1BEE E4                 4073 	clr	a
   1BEF 12 42 DC           4074 	lcall	__gptrput
                           4075 ;	genPointerSet
                           4076 ;	genGenPointerSet
   1BF2 8A 82              4077 	mov	dpl,r2
   1BF4 8B 83              4078 	mov	dph,r3
   1BF6 8C F0              4079 	mov	b,r4
                           4080 ;	Peephole 181	changed mov to clr
   1BF8 E4                 4081 	clr	a
   1BF9 12 42 DC           4082 	lcall	__gptrput
   1BFC A3                 4083 	inc	dptr
                           4084 ;	Peephole 181	changed mov to clr
   1BFD E4                 4085 	clr	a
   1BFE 12 42 DC           4086 	lcall	__gptrput
   1C01 A3                 4087 	inc	dptr
                           4088 ;	Peephole 181	changed mov to clr
   1C02 E4                 4089 	clr	a
   1C03 12 42 DC           4090 	lcall	__gptrput
   1C06 A3                 4091 	inc	dptr
                           4092 ;	Peephole 181	changed mov to clr
   1C07 E4                 4093 	clr	a
   1C08 12 42 DC           4094 	lcall	__gptrput
                    102A   4095 	C$tff.c$507$2$3 ==.
                           4096 ;	tff.c:507: dirobj->sect = clust;
                           4097 ;	genPlus
   1C0B A8 0F              4098 	mov	r0,_bp
   1C0D 08                 4099 	inc	r0
                           4100 ;     genPlusIncr
   1C0E 74 0F              4101 	mov	a,#0x0F
   1C10 26                 4102 	add	a,@r0
   1C11 FA                 4103 	mov	r2,a
                           4104 ;	Peephole 181	changed mov to clr
   1C12 E4                 4105 	clr	a
   1C13 08                 4106 	inc	r0
   1C14 36                 4107 	addc	a,@r0
   1C15 FB                 4108 	mov	r3,a
   1C16 08                 4109 	inc	r0
   1C17 86 04              4110 	mov	ar4,@r0
                           4111 ;	genPointerSet
                           4112 ;	genGenPointerSet
   1C19 8A 82              4113 	mov	dpl,r2
   1C1B 8B 83              4114 	mov	dph,r3
   1C1D 8C F0              4115 	mov	b,r4
   1C1F E5 0F              4116 	mov	a,_bp
   1C21 24 04              4117 	add	a,#0x04
   1C23 F8                 4118 	mov	r0,a
   1C24 E6                 4119 	mov	a,@r0
   1C25 12 42 DC           4120 	lcall	__gptrput
   1C28 A3                 4121 	inc	dptr
   1C29 08                 4122 	inc	r0
   1C2A E6                 4123 	mov	a,@r0
   1C2B 12 42 DC           4124 	lcall	__gptrput
   1C2E A3                 4125 	inc	dptr
   1C2F 08                 4126 	inc	r0
   1C30 E6                 4127 	mov	a,@r0
   1C31 12 42 DC           4128 	lcall	__gptrput
   1C34 A3                 4129 	inc	dptr
   1C35 08                 4130 	inc	r0
   1C36 E6                 4131 	mov	a,@r0
   1C37 12 42 DC           4132 	lcall	__gptrput
   1C3A                    4133 00103$:
                    1059   4134 	C$tff.c$509$1$1 ==.
                           4135 ;	tff.c:509: dirobj->index = 0;
                           4136 ;	genPlus
   1C3A A8 0F              4137 	mov	r0,_bp
   1C3C 08                 4138 	inc	r0
                           4139 ;     genPlusIncr
   1C3D 74 02              4140 	mov	a,#0x02
   1C3F 26                 4141 	add	a,@r0
   1C40 FA                 4142 	mov	r2,a
                           4143 ;	Peephole 181	changed mov to clr
   1C41 E4                 4144 	clr	a
   1C42 08                 4145 	inc	r0
   1C43 36                 4146 	addc	a,@r0
   1C44 FB                 4147 	mov	r3,a
   1C45 08                 4148 	inc	r0
   1C46 86 04              4149 	mov	ar4,@r0
                           4150 ;	genPointerSet
                           4151 ;	genGenPointerSet
   1C48 8A 82              4152 	mov	dpl,r2
   1C4A 8B 83              4153 	mov	dph,r3
   1C4C 8C F0              4154 	mov	b,r4
                           4155 ;	Peephole 181	changed mov to clr
   1C4E E4                 4156 	clr	a
   1C4F 12 42 DC           4157 	lcall	__gptrput
   1C52 A3                 4158 	inc	dptr
                           4159 ;	Peephole 181	changed mov to clr
   1C53 E4                 4160 	clr	a
   1C54 12 42 DC           4161 	lcall	__gptrput
                    1076   4162 	C$tff.c$510$1$1 ==.
                           4163 ;	tff.c:510: dirobj->fs = fs;
                           4164 ;	genPlus
   1C57 A8 0F              4165 	mov	r0,_bp
   1C59 08                 4166 	inc	r0
                           4167 ;     genPlusIncr
   1C5A 74 04              4168 	mov	a,#0x04
   1C5C 26                 4169 	add	a,@r0
   1C5D FA                 4170 	mov	r2,a
                           4171 ;	Peephole 181	changed mov to clr
   1C5E E4                 4172 	clr	a
   1C5F 08                 4173 	inc	r0
   1C60 36                 4174 	addc	a,@r0
   1C61 FB                 4175 	mov	r3,a
   1C62 08                 4176 	inc	r0
   1C63 86 04              4177 	mov	ar4,@r0
                           4178 ;	genPointerSet
                           4179 ;	genGenPointerSet
   1C65 8A 82              4180 	mov	dpl,r2
   1C67 8B 83              4181 	mov	dph,r3
   1C69 8C F0              4182 	mov	b,r4
   1C6B E5 0F              4183 	mov	a,_bp
   1C6D 24 0B              4184 	add	a,#0x0b
   1C6F F8                 4185 	mov	r0,a
   1C70 E6                 4186 	mov	a,@r0
   1C71 12 42 DC           4187 	lcall	__gptrput
   1C74 A3                 4188 	inc	dptr
   1C75 08                 4189 	inc	r0
   1C76 E6                 4190 	mov	a,@r0
   1C77 12 42 DC           4191 	lcall	__gptrput
   1C7A A3                 4192 	inc	dptr
   1C7B 08                 4193 	inc	r0
   1C7C E6                 4194 	mov	a,@r0
   1C7D 12 42 DC           4195 	lcall	__gptrput
                    109F   4196 	C$tff.c$512$1$1 ==.
                           4197 ;	tff.c:512: if (*path == '\0') {							/* Null path means the root directory */
                           4198 ;	genAssign
   1C80 E5 0F              4199 	mov	a,_bp
   1C82 24 F8              4200 	add	a,#0xfffffff8
   1C84 F8                 4201 	mov	r0,a
   1C85 86 02              4202 	mov	ar2,@r0
   1C87 08                 4203 	inc	r0
   1C88 86 03              4204 	mov	ar3,@r0
   1C8A 08                 4205 	inc	r0
   1C8B 86 04              4206 	mov	ar4,@r0
                           4207 ;	genPointerGet
                           4208 ;	genGenPointerGet
   1C8D 8A 82              4209 	mov	dpl,r2
   1C8F 8B 83              4210 	mov	dph,r3
   1C91 8C F0              4211 	mov	b,r4
   1C93 12 47 8A           4212 	lcall	__gptrget
                           4213 ;	genIfxJump
                           4214 ;	Peephole 108.b	removed ljmp by inverse jump logic
   1C96 70 27              4215 	jnz	00126$
                           4216 ;	Peephole 300	removed redundant label 00150$
                    10B7   4217 	C$tff.c$513$2$4 ==.
                           4218 ;	tff.c:513: *dir = NULL; return FR_OK;
                           4219 ;	genAssign
   1C98 E5 0F              4220 	mov	a,_bp
   1C9A 24 F5              4221 	add	a,#0xfffffff5
   1C9C F8                 4222 	mov	r0,a
   1C9D 86 02              4223 	mov	ar2,@r0
   1C9F 08                 4224 	inc	r0
   1CA0 86 03              4225 	mov	ar3,@r0
   1CA2 08                 4226 	inc	r0
   1CA3 86 04              4227 	mov	ar4,@r0
                           4228 ;	genPointerSet
                           4229 ;	genGenPointerSet
   1CA5 8A 82              4230 	mov	dpl,r2
   1CA7 8B 83              4231 	mov	dph,r3
   1CA9 8C F0              4232 	mov	b,r4
                           4233 ;	Peephole 181	changed mov to clr
   1CAB E4                 4234 	clr	a
   1CAC 12 42 DC           4235 	lcall	__gptrput
   1CAF A3                 4236 	inc	dptr
                           4237 ;	Peephole 181	changed mov to clr
   1CB0 E4                 4238 	clr	a
   1CB1 12 42 DC           4239 	lcall	__gptrput
   1CB4 A3                 4240 	inc	dptr
                           4241 ;	Peephole 181	changed mov to clr
   1CB5 E4                 4242 	clr	a
   1CB6 12 42 DC           4243 	lcall	__gptrput
                           4244 ;	genRet
   1CB9 75 82 00           4245 	mov	dpl,#0x00
   1CBC 02 20 54           4246 	ljmp	00128$
   1CBF                    4247 00126$:
                    10DE   4248 	C$tff.c$517$2$5 ==.
                           4249 ;	tff.c:517: ds = make_dirfile(&path, fn);					/* Get a paragraph into fn[] */
                           4250 ;	genAddrOf
   1CBF E5 0F              4251 	mov	a,_bp
   1CC1 24 F8              4252 	add	a,#0xf8
   1CC3 FA                 4253 	mov	r2,a
                           4254 ;	genCast
   1CC4 7B 00              4255 	mov	r3,#0x00
   1CC6 7C 40              4256 	mov	r4,#0x40
                           4257 ;	genIpush
   1CC8 E5 0F              4258 	mov	a,_bp
   1CCA 24 FB              4259 	add	a,#0xfffffffb
   1CCC F8                 4260 	mov	r0,a
   1CCD E6                 4261 	mov	a,@r0
   1CCE C0 E0              4262 	push	acc
   1CD0 08                 4263 	inc	r0
   1CD1 E6                 4264 	mov	a,@r0
   1CD2 C0 E0              4265 	push	acc
   1CD4 08                 4266 	inc	r0
   1CD5 E6                 4267 	mov	a,@r0
   1CD6 C0 E0              4268 	push	acc
                           4269 ;	genCall
   1CD8 8A 82              4270 	mov	dpl,r2
   1CDA 8B 83              4271 	mov	dph,r3
   1CDC 8C F0              4272 	mov	b,r4
   1CDE 12 18 82           4273 	lcall	_make_dirfile
   1CE1 AA 82              4274 	mov	r2,dpl
   1CE3 15 81              4275 	dec	sp
   1CE5 15 81              4276 	dec	sp
   1CE7 15 81              4277 	dec	sp
                           4278 ;	genAssign
                    1108   4279 	C$tff.c$518$2$5 ==.
                           4280 ;	tff.c:518: if (ds == 1) return FR_INVALID_NAME;
                           4281 ;	genCmpEq
                           4282 ;	gencjneshort
                           4283 ;	Peephole 112.b	changed ljmp to sjmp
                           4284 ;	Peephole 198.b	optimized misc jump sequence
   1CE9 BA 01 06           4285 	cjne	r2,#0x01,00142$
                           4286 ;	Peephole 200.b	removed redundant sjmp
                           4287 ;	Peephole 300	removed redundant label 00151$
                           4288 ;	Peephole 300	removed redundant label 00152$
                           4289 ;	genRet
   1CEC 75 82 04           4290 	mov	dpl,#0x04
   1CEF 02 20 54           4291 	ljmp	00128$
   1CF2                    4292 00142$:
                           4293 ;	genPlus
   1CF2 E5 0F              4294 	mov	a,_bp
   1CF4 24 0B              4295 	add	a,#0x0b
   1CF6 F8                 4296 	mov	r0,a
                           4297 ;     genPlusIncr
   1CF7 74 20              4298 	mov	a,#0x20
   1CF9 26                 4299 	add	a,@r0
   1CFA FB                 4300 	mov	r3,a
                           4301 ;	Peephole 181	changed mov to clr
   1CFB E4                 4302 	clr	a
   1CFC 08                 4303 	inc	r0
   1CFD 36                 4304 	addc	a,@r0
   1CFE FC                 4305 	mov	r4,a
   1CFF 08                 4306 	inc	r0
   1D00 86 05              4307 	mov	ar5,@r0
                           4308 ;	genPlus
   1D02 A8 0F              4309 	mov	r0,_bp
   1D04 08                 4310 	inc	r0
   1D05 E5 0F              4311 	mov	a,_bp
   1D07 24 0E              4312 	add	a,#0x0e
   1D09 F9                 4313 	mov	r1,a
                           4314 ;     genPlusIncr
   1D0A 74 0F              4315 	mov	a,#0x0F
   1D0C 26                 4316 	add	a,@r0
   1D0D F7                 4317 	mov	@r1,a
                           4318 ;	Peephole 181	changed mov to clr
   1D0E E4                 4319 	clr	a
   1D0F 08                 4320 	inc	r0
   1D10 36                 4321 	addc	a,@r0
   1D11 09                 4322 	inc	r1
   1D12 F7                 4323 	mov	@r1,a
   1D13 08                 4324 	inc	r0
   1D14 09                 4325 	inc	r1
   1D15 E6                 4326 	mov	a,@r0
   1D16 F7                 4327 	mov	@r1,a
   1D17                    4328 00119$:
                    1136   4329 	C$tff.c$520$2$5 ==.
                           4330 ;	tff.c:520: if (!move_window(dirobj->sect)) return FR_RW_ERROR;
                           4331 ;	genIpush
   1D17 C0 03              4332 	push	ar3
   1D19 C0 04              4333 	push	ar4
   1D1B C0 05              4334 	push	ar5
                           4335 ;	genPointerGet
                           4336 ;	genGenPointerGet
   1D1D E5 0F              4337 	mov	a,_bp
   1D1F 24 0E              4338 	add	a,#0x0e
   1D21 F8                 4339 	mov	r0,a
   1D22 86 82              4340 	mov	dpl,@r0
   1D24 08                 4341 	inc	r0
   1D25 86 83              4342 	mov	dph,@r0
   1D27 08                 4343 	inc	r0
   1D28 86 F0              4344 	mov	b,@r0
   1D2A 12 47 8A           4345 	lcall	__gptrget
   1D2D FE                 4346 	mov	r6,a
   1D2E A3                 4347 	inc	dptr
   1D2F 12 47 8A           4348 	lcall	__gptrget
   1D32 FF                 4349 	mov	r7,a
   1D33 A3                 4350 	inc	dptr
   1D34 12 47 8A           4351 	lcall	__gptrget
   1D37 FB                 4352 	mov	r3,a
   1D38 A3                 4353 	inc	dptr
   1D39 12 47 8A           4354 	lcall	__gptrget
                           4355 ;	genCall
   1D3C FC                 4356 	mov	r4,a
   1D3D 8E 82              4357 	mov	dpl,r6
   1D3F 8F 83              4358 	mov	dph,r7
   1D41 8B F0              4359 	mov	b,r3
                           4360 ;	Peephole 191	removed redundant mov
   1D43 C0 02              4361 	push	ar2
   1D45 C0 03              4362 	push	ar3
   1D47 C0 04              4363 	push	ar4
   1D49 C0 05              4364 	push	ar5
   1D4B 12 0B E1           4365 	lcall	_move_window
   1D4E E5 82              4366 	mov	a,dpl
   1D50 D0 05              4367 	pop	ar5
   1D52 D0 04              4368 	pop	ar4
   1D54 D0 03              4369 	pop	ar3
   1D56 D0 02              4370 	pop	ar2
                           4371 ;	genIpop
   1D58 D0 05              4372 	pop	ar5
   1D5A D0 04              4373 	pop	ar4
   1D5C D0 03              4374 	pop	ar3
                           4375 ;	genIfx
                           4376 ;	genIfxJump
                           4377 ;	Peephole 108.b	removed ljmp by inverse jump logic
   1D5E 70 06              4378 	jnz	00109$
                           4379 ;	Peephole 300	removed redundant label 00153$
                           4380 ;	genRet
   1D60 75 82 08           4381 	mov	dpl,#0x08
   1D63 02 20 54           4382 	ljmp	00128$
   1D66                    4383 00109$:
                    1185   4384 	C$tff.c$521$2$5 ==.
                           4385 ;	tff.c:521: dptr = &fs->win[(dirobj->index & 15) * 32];		/* Pointer to the directory entry */
                           4386 ;	genIpush
   1D66 C0 02              4387 	push	ar2
                           4388 ;	genPlus
   1D68 A8 0F              4389 	mov	r0,_bp
   1D6A 08                 4390 	inc	r0
   1D6B E5 0F              4391 	mov	a,_bp
   1D6D 24 11              4392 	add	a,#0x11
   1D6F F9                 4393 	mov	r1,a
                           4394 ;     genPlusIncr
   1D70 74 02              4395 	mov	a,#0x02
   1D72 26                 4396 	add	a,@r0
   1D73 F7                 4397 	mov	@r1,a
                           4398 ;	Peephole 181	changed mov to clr
   1D74 E4                 4399 	clr	a
   1D75 08                 4400 	inc	r0
   1D76 36                 4401 	addc	a,@r0
   1D77 09                 4402 	inc	r1
   1D78 F7                 4403 	mov	@r1,a
   1D79 08                 4404 	inc	r0
   1D7A 09                 4405 	inc	r1
   1D7B E6                 4406 	mov	a,@r0
   1D7C F7                 4407 	mov	@r1,a
                           4408 ;	genPointerGet
                           4409 ;	genGenPointerGet
   1D7D E5 0F              4410 	mov	a,_bp
   1D7F 24 11              4411 	add	a,#0x11
   1D81 F8                 4412 	mov	r0,a
   1D82 86 82              4413 	mov	dpl,@r0
   1D84 08                 4414 	inc	r0
   1D85 86 83              4415 	mov	dph,@r0
   1D87 08                 4416 	inc	r0
   1D88 86 F0              4417 	mov	b,@r0
   1D8A 12 47 8A           4418 	lcall	__gptrget
   1D8D FE                 4419 	mov	r6,a
   1D8E A3                 4420 	inc	dptr
   1D8F 12 47 8A           4421 	lcall	__gptrget
   1D92 FF                 4422 	mov	r7,a
                           4423 ;	genAnd
   1D93 53 06 0F           4424 	anl	ar6,#0x0F
                           4425 ;	genLeftShift
                           4426 ;	genLeftShiftLiteral
                           4427 ;	genlshTwo
                           4428 ;	peephole 177.g	optimized mov sequence
                           4429 ;	Peephole 181	changed mov to clr
   1D96 E4                 4430 	clr	a
   1D97 FF                 4431 	mov	r7,a
   1D98 C4                 4432 	swap	a
   1D99 23                 4433 	rl	a
   1D9A 54 E0              4434 	anl	a,#0xe0
   1D9C CE                 4435 	xch	a,r6
   1D9D C4                 4436 	swap	a
   1D9E 23                 4437 	rl	a
   1D9F CE                 4438 	xch	a,r6
   1DA0 6E                 4439 	xrl	a,r6
   1DA1 CE                 4440 	xch	a,r6
   1DA2 54 E0              4441 	anl	a,#0xe0
   1DA4 CE                 4442 	xch	a,r6
   1DA5 6E                 4443 	xrl	a,r6
   1DA6 FF                 4444 	mov	r7,a
                           4445 ;	genPlus
                           4446 ;	Peephole 236.g	used r6 instead of ar6
   1DA7 EE                 4447 	mov	a,r6
                           4448 ;	Peephole 236.a	used r3 instead of ar3
   1DA8 2B                 4449 	add	a,r3
   1DA9 FE                 4450 	mov	r6,a
                           4451 ;	Peephole 236.g	used r7 instead of ar7
   1DAA EF                 4452 	mov	a,r7
                           4453 ;	Peephole 236.b	used r4 instead of ar4
   1DAB 3C                 4454 	addc	a,r4
   1DAC FF                 4455 	mov	r7,a
   1DAD 8D 02              4456 	mov	ar2,r5
                           4457 ;	genAssign
   1DAF E5 0F              4458 	mov	a,_bp
   1DB1 24 08              4459 	add	a,#0x08
   1DB3 F8                 4460 	mov	r0,a
   1DB4 A6 06              4461 	mov	@r0,ar6
   1DB6 08                 4462 	inc	r0
   1DB7 A6 07              4463 	mov	@r0,ar7
   1DB9 08                 4464 	inc	r0
   1DBA A6 02              4465 	mov	@r0,ar2
                    11DB   4466 	C$tff.c$522$3$6 ==.
                           4467 ;	tff.c:522: if (dptr[DIR_Name] == 0)						/* Has it reached to end of dir? */
                           4468 ;	genPointerGet
                           4469 ;	genGenPointerGet
   1DBC E5 0F              4470 	mov	a,_bp
   1DBE 24 08              4471 	add	a,#0x08
   1DC0 F8                 4472 	mov	r0,a
   1DC1 86 82              4473 	mov	dpl,@r0
   1DC3 08                 4474 	inc	r0
   1DC4 86 83              4475 	mov	dph,@r0
   1DC6 08                 4476 	inc	r0
   1DC7 86 F0              4477 	mov	b,@r0
   1DC9 12 47 8A           4478 	lcall	__gptrget
                           4479 ;	genIpop
   1DCC D0 02              4480 	pop	ar2
                           4481 ;	genIfx
                           4482 ;	genIfxJump
                           4483 ;	Peephole 108.b	removed ljmp by inverse jump logic
   1DCE 70 14              4484 	jnz	00111$
                           4485 ;	Peephole 300	removed redundant label 00154$
                    11EF   4486 	C$tff.c$523$3$6 ==.
                           4487 ;	tff.c:523: return !ds ? FR_NO_FILE : FR_NO_PATH;
                           4488 ;	genNot
   1DD0 EA                 4489 	mov	a,r2
   1DD1 B4 01 00           4490 	cjne	a,#0x01,00155$
   1DD4                    4491 00155$:
   1DD4 E4                 4492 	clr	a
   1DD5 33                 4493 	rlc	a
                           4494 ;	genIfx
   1DD6 FE                 4495 	mov	r6,a
                           4496 ;	Peephole 105	removed redundant mov
                           4497 ;	genIfxJump
                           4498 ;	Peephole 108.c	removed ljmp by inverse jump logic
   1DD7 60 04              4499 	jz	00130$
                           4500 ;	Peephole 300	removed redundant label 00156$
                           4501 ;	genAssign
   1DD9 7E 02              4502 	mov	r6,#0x02
                           4503 ;	Peephole 112.b	changed ljmp to sjmp
   1DDB 80 02              4504 	sjmp	00131$
   1DDD                    4505 00130$:
                           4506 ;	genAssign
   1DDD 7E 03              4507 	mov	r6,#0x03
   1DDF                    4508 00131$:
                           4509 ;	genRet
   1DDF 8E 82              4510 	mov	dpl,r6
   1DE1 02 20 54           4511 	ljmp	00128$
   1DE4                    4512 00111$:
                    1203   4513 	C$tff.c$524$3$6 ==.
                           4514 ;	tff.c:524: if (dptr[DIR_Name] != 0xE5						/* Matched? */
                           4515 ;	genPointerGet
                           4516 ;	genGenPointerGet
   1DE4 E5 0F              4517 	mov	a,_bp
   1DE6 24 08              4518 	add	a,#0x08
   1DE8 F8                 4519 	mov	r0,a
   1DE9 86 82              4520 	mov	dpl,@r0
   1DEB 08                 4521 	inc	r0
   1DEC 86 83              4522 	mov	dph,@r0
   1DEE 08                 4523 	inc	r0
   1DEF 86 F0              4524 	mov	b,@r0
   1DF1 12 47 8A           4525 	lcall	__gptrget
   1DF4 FE                 4526 	mov	r6,a
                           4527 ;	genCmpEq
                           4528 ;	gencjneshort
   1DF5 BE E5 02           4529 	cjne	r6,#0xE5,00157$
                           4530 ;	Peephole 112.b	changed ljmp to sjmp
   1DF8 80 6F              4531 	sjmp	00113$
   1DFA                    4532 00157$:
                    1219   4533 	C$tff.c$525$2$5 ==.
                           4534 ;	tff.c:525: && !(dptr[DIR_Attr] & AM_VOL)
                           4535 ;	genIpush
   1DFA C0 03              4536 	push	ar3
   1DFC C0 04              4537 	push	ar4
   1DFE C0 05              4538 	push	ar5
                           4539 ;	genPlus
   1E00 E5 0F              4540 	mov	a,_bp
   1E02 24 08              4541 	add	a,#0x08
   1E04 F8                 4542 	mov	r0,a
                           4543 ;     genPlusIncr
   1E05 74 0B              4544 	mov	a,#0x0B
   1E07 26                 4545 	add	a,@r0
   1E08 FE                 4546 	mov	r6,a
                           4547 ;	Peephole 181	changed mov to clr
   1E09 E4                 4548 	clr	a
   1E0A 08                 4549 	inc	r0
   1E0B 36                 4550 	addc	a,@r0
   1E0C FF                 4551 	mov	r7,a
   1E0D 08                 4552 	inc	r0
   1E0E 86 03              4553 	mov	ar3,@r0
                           4554 ;	genPointerGet
                           4555 ;	genGenPointerGet
   1E10 8E 82              4556 	mov	dpl,r6
   1E12 8F 83              4557 	mov	dph,r7
   1E14 8B F0              4558 	mov	b,r3
   1E16 12 47 8A           4559 	lcall	__gptrget
                           4560 ;	genAnd
   1E19 FE                 4561 	mov	r6,a
                           4562 ;	Peephole 105	removed redundant mov
   1E1A 54 08              4563 	anl	a,#0x08
                           4564 ;	genIpop
   1E1C D0 05              4565 	pop	ar5
   1E1E D0 04              4566 	pop	ar4
   1E20 D0 03              4567 	pop	ar3
                           4568 ;	genIfx
                           4569 ;	genIfxJump
                           4570 ;	Peephole 108.b	removed ljmp by inverse jump logic
   1E22 70 45              4571 	jnz	00113$
                           4572 ;	Peephole 300	removed redundant label 00158$
                    1243   4573 	C$tff.c$526$3$6 ==.
                           4574 ;	tff.c:526: && !memcmp(&dptr[DIR_Name], fn, 8+3) ) break;
                           4575 ;	genIpush
   1E24 C0 02              4576 	push	ar2
   1E26 C0 03              4577 	push	ar3
   1E28 C0 04              4578 	push	ar4
   1E2A C0 05              4579 	push	ar5
   1E2C 74 0B              4580 	mov	a,#0x0B
   1E2E C0 E0              4581 	push	acc
                           4582 ;	Peephole 181	changed mov to clr
   1E30 E4                 4583 	clr	a
   1E31 C0 E0              4584 	push	acc
                           4585 ;	genIpush
   1E33 E5 0F              4586 	mov	a,_bp
   1E35 24 FB              4587 	add	a,#0xfffffffb
   1E37 F8                 4588 	mov	r0,a
   1E38 E6                 4589 	mov	a,@r0
   1E39 C0 E0              4590 	push	acc
   1E3B 08                 4591 	inc	r0
   1E3C E6                 4592 	mov	a,@r0
   1E3D C0 E0              4593 	push	acc
   1E3F 08                 4594 	inc	r0
   1E40 E6                 4595 	mov	a,@r0
   1E41 C0 E0              4596 	push	acc
                           4597 ;	genCall
   1E43 E5 0F              4598 	mov	a,_bp
   1E45 24 08              4599 	add	a,#0x08
   1E47 F8                 4600 	mov	r0,a
   1E48 86 82              4601 	mov	dpl,@r0
   1E4A 08                 4602 	inc	r0
   1E4B 86 83              4603 	mov	dph,@r0
   1E4D 08                 4604 	inc	r0
   1E4E 86 F0              4605 	mov	b,@r0
   1E50 12 43 17           4606 	lcall	_memcmp
   1E53 AE 82              4607 	mov	r6,dpl
   1E55 AF 83              4608 	mov	r7,dph
   1E57 E5 81              4609 	mov	a,sp
   1E59 24 FB              4610 	add	a,#0xfb
   1E5B F5 81              4611 	mov	sp,a
   1E5D D0 05              4612 	pop	ar5
   1E5F D0 04              4613 	pop	ar4
   1E61 D0 03              4614 	pop	ar3
   1E63 D0 02              4615 	pop	ar2
                           4616 ;	genIfx
   1E65 EE                 4617 	mov	a,r6
   1E66 4F                 4618 	orl	a,r7
                           4619 ;	genIfxJump
                           4620 ;	Peephole 108.c	removed ljmp by inverse jump logic
   1E67 60 39              4621 	jz	00120$
                           4622 ;	Peephole 300	removed redundant label 00159$
   1E69                    4623 00113$:
                    1288   4624 	C$tff.c$527$3$6 ==.
                           4625 ;	tff.c:527: if (!next_dir_entry(dirobj))					/* Next directory pointer */
                           4626 ;	genCall
   1E69 A8 0F              4627 	mov	r0,_bp
   1E6B 08                 4628 	inc	r0
   1E6C 86 82              4629 	mov	dpl,@r0
   1E6E 08                 4630 	inc	r0
   1E6F 86 83              4631 	mov	dph,@r0
   1E71 08                 4632 	inc	r0
   1E72 86 F0              4633 	mov	b,@r0
   1E74 C0 02              4634 	push	ar2
   1E76 C0 03              4635 	push	ar3
   1E78 C0 04              4636 	push	ar4
   1E7A C0 05              4637 	push	ar5
   1E7C 12 11 FF           4638 	lcall	_next_dir_entry
   1E7F E5 82              4639 	mov	a,dpl
   1E81 D0 05              4640 	pop	ar5
   1E83 D0 04              4641 	pop	ar4
   1E85 D0 03              4642 	pop	ar3
   1E87 D0 02              4643 	pop	ar2
                           4644 ;	genIfx
                           4645 ;	genIfxJump
   1E89 60 03              4646 	jz	00160$
   1E8B 02 1D 17           4647 	ljmp	00119$
   1E8E                    4648 00160$:
                    12AD   4649 	C$tff.c$528$3$6 ==.
                           4650 ;	tff.c:528: return !ds ? FR_NO_FILE : FR_NO_PATH;
                           4651 ;	genNot
   1E8E EA                 4652 	mov	a,r2
   1E8F B4 01 00           4653 	cjne	a,#0x01,00161$
   1E92                    4654 00161$:
   1E92 E4                 4655 	clr	a
   1E93 33                 4656 	rlc	a
                           4657 ;	genIfx
   1E94 FB                 4658 	mov	r3,a
                           4659 ;	Peephole 105	removed redundant mov
                           4660 ;	genIfxJump
                           4661 ;	Peephole 108.c	removed ljmp by inverse jump logic
   1E95 60 04              4662 	jz	00132$
                           4663 ;	Peephole 300	removed redundant label 00162$
                           4664 ;	genAssign
   1E97 7B 02              4665 	mov	r3,#0x02
                           4666 ;	Peephole 112.b	changed ljmp to sjmp
   1E99 80 02              4667 	sjmp	00133$
   1E9B                    4668 00132$:
                           4669 ;	genAssign
   1E9B 7B 03              4670 	mov	r3,#0x03
   1E9D                    4671 00133$:
                           4672 ;	genRet
   1E9D 8B 82              4673 	mov	dpl,r3
   1E9F 02 20 54           4674 	ljmp	00128$
   1EA2                    4675 00120$:
                    12C1   4676 	C$tff.c$530$2$5 ==.
                           4677 ;	tff.c:530: if (!ds) { *dir = dptr; return FR_OK; }				/* Matched with end of path */
                           4678 ;	genIfx
   1EA2 EA                 4679 	mov	a,r2
                           4680 ;	genIfxJump
                           4681 ;	Peephole 108.b	removed ljmp by inverse jump logic
   1EA3 70 2E              4682 	jnz	00122$
                           4683 ;	Peephole 300	removed redundant label 00163$
                           4684 ;	genAssign
   1EA5 E5 0F              4685 	mov	a,_bp
   1EA7 24 F5              4686 	add	a,#0xfffffff5
   1EA9 F8                 4687 	mov	r0,a
   1EAA 86 02              4688 	mov	ar2,@r0
   1EAC 08                 4689 	inc	r0
   1EAD 86 03              4690 	mov	ar3,@r0
   1EAF 08                 4691 	inc	r0
   1EB0 86 04              4692 	mov	ar4,@r0
                           4693 ;	genPointerSet
                           4694 ;	genGenPointerSet
   1EB2 8A 82              4695 	mov	dpl,r2
   1EB4 8B 83              4696 	mov	dph,r3
   1EB6 8C F0              4697 	mov	b,r4
   1EB8 E5 0F              4698 	mov	a,_bp
   1EBA 24 08              4699 	add	a,#0x08
   1EBC F8                 4700 	mov	r0,a
   1EBD E6                 4701 	mov	a,@r0
   1EBE 12 42 DC           4702 	lcall	__gptrput
   1EC1 A3                 4703 	inc	dptr
   1EC2 08                 4704 	inc	r0
   1EC3 E6                 4705 	mov	a,@r0
   1EC4 12 42 DC           4706 	lcall	__gptrput
   1EC7 A3                 4707 	inc	dptr
   1EC8 08                 4708 	inc	r0
   1EC9 E6                 4709 	mov	a,@r0
   1ECA 12 42 DC           4710 	lcall	__gptrput
                           4711 ;	genRet
   1ECD 75 82 00           4712 	mov	dpl,#0x00
   1ED0 02 20 54           4713 	ljmp	00128$
   1ED3                    4714 00122$:
                    12F2   4715 	C$tff.c$531$2$5 ==.
                           4716 ;	tff.c:531: if (!(dptr[DIR_Attr] & AM_DIR)) return FR_NO_PATH;	/* Cannot trace because it is a file */
                           4717 ;	genPlus
   1ED3 E5 0F              4718 	mov	a,_bp
   1ED5 24 08              4719 	add	a,#0x08
   1ED7 F8                 4720 	mov	r0,a
                           4721 ;     genPlusIncr
   1ED8 74 0B              4722 	mov	a,#0x0B
   1EDA 26                 4723 	add	a,@r0
   1EDB FA                 4724 	mov	r2,a
                           4725 ;	Peephole 181	changed mov to clr
   1EDC E4                 4726 	clr	a
   1EDD 08                 4727 	inc	r0
   1EDE 36                 4728 	addc	a,@r0
   1EDF FB                 4729 	mov	r3,a
   1EE0 08                 4730 	inc	r0
   1EE1 86 04              4731 	mov	ar4,@r0
                           4732 ;	genPointerGet
                           4733 ;	genGenPointerGet
   1EE3 8A 82              4734 	mov	dpl,r2
   1EE5 8B 83              4735 	mov	dph,r3
   1EE7 8C F0              4736 	mov	b,r4
   1EE9 12 47 8A           4737 	lcall	__gptrget
                           4738 ;	genAnd
   1EEC FA                 4739 	mov	r2,a
                           4740 ;	Peephole 105	removed redundant mov
                           4741 ;	genIfxJump
                           4742 ;	Peephole 108.e	removed ljmp by inverse jump logic
   1EED 20 E4 06           4743 	jb	acc.4,00124$
                           4744 ;	Peephole 300	removed redundant label 00164$
                           4745 ;	genRet
   1EF0 75 82 03           4746 	mov	dpl,#0x03
   1EF3 02 20 54           4747 	ljmp	00128$
   1EF6                    4748 00124$:
                    1315   4749 	C$tff.c$534$2$5 ==.
                           4750 ;	tff.c:534: ((DWORD)LD_WORD(&dptr[DIR_FstClusHI]) << 16) |
                           4751 ;	genPlus
   1EF6 E5 0F              4752 	mov	a,_bp
   1EF8 24 08              4753 	add	a,#0x08
   1EFA F8                 4754 	mov	r0,a
                           4755 ;     genPlusIncr
   1EFB 74 14              4756 	mov	a,#0x14
   1EFD 26                 4757 	add	a,@r0
   1EFE FA                 4758 	mov	r2,a
                           4759 ;	Peephole 181	changed mov to clr
   1EFF E4                 4760 	clr	a
   1F00 08                 4761 	inc	r0
   1F01 36                 4762 	addc	a,@r0
   1F02 FB                 4763 	mov	r3,a
   1F03 08                 4764 	inc	r0
   1F04 86 04              4765 	mov	ar4,@r0
                           4766 ;	genPlus
                           4767 ;     genPlusIncr
   1F06 74 01              4768 	mov	a,#0x01
                           4769 ;	Peephole 236.a	used r2 instead of ar2
   1F08 2A                 4770 	add	a,r2
   1F09 FD                 4771 	mov	r5,a
                           4772 ;	Peephole 181	changed mov to clr
   1F0A E4                 4773 	clr	a
                           4774 ;	Peephole 236.b	used r3 instead of ar3
   1F0B 3B                 4775 	addc	a,r3
   1F0C FE                 4776 	mov	r6,a
   1F0D 8C 07              4777 	mov	ar7,r4
                           4778 ;	genPointerGet
                           4779 ;	genGenPointerGet
   1F0F 8D 82              4780 	mov	dpl,r5
   1F11 8E 83              4781 	mov	dph,r6
   1F13 8F F0              4782 	mov	b,r7
   1F15 12 47 8A           4783 	lcall	__gptrget
   1F18 FD                 4784 	mov	r5,a
                           4785 ;	genCast
                           4786 ;	genLeftShift
                           4787 ;	genLeftShiftLiteral
                           4788 ;	genlshTwo
                           4789 ;	peephole 177.e	removed redundant move
   1F19 8D 06              4790 	mov	ar6,r5
   1F1B 7D 00              4791 	mov	r5,#0x00
                           4792 ;	genPointerGet
                           4793 ;	genGenPointerGet
   1F1D 8A 82              4794 	mov	dpl,r2
   1F1F 8B 83              4795 	mov	dph,r3
   1F21 8C F0              4796 	mov	b,r4
   1F23 12 47 8A           4797 	lcall	__gptrget
                           4798 ;	genCast
                           4799 ;	genOr
   1F26 FA                 4800 	mov	r2,a
   1F27 7B 00              4801 	mov	r3,#0x00
                           4802 ;	Peephole 177.d	removed redundant move
   1F29 42 05              4803 	orl	ar5,a
   1F2B EB                 4804 	mov	a,r3
   1F2C 42 06              4805 	orl	ar6,a
                           4806 ;	genCast
                           4807 ;	genLeftShift
                           4808 ;	genLeftShiftLiteral
                           4809 ;	Peephole 3.c	changed mov to clr
   1F2E E4                 4810 	clr	a
   1F2F FA                 4811 	mov	r2,a
   1F30 FB                 4812 	mov	r3,a
   1F31 E5 0F              4813 	mov	a,_bp
   1F33 24 14              4814 	add	a,#0x14
                           4815 ;	genlshFour
                           4816 ;	Peephole 185	changed order of increment (acc incremented also!)
   1F35 04                 4817 	inc	a
                           4818 ;	Peephole 185	changed order of increment (acc incremented also!)
   1F36 04                 4819 	inc	a
                           4820 ;	Peephole 185	changed order of increment (acc incremented also!)
   1F37 04                 4821 	inc	a
   1F38 F8                 4822 	mov	r0,a
   1F39 A6 06              4823 	mov	@r0,ar6
   1F3B 18                 4824 	dec	r0
   1F3C A6 05              4825 	mov	@r0,ar5
   1F3E 18                 4826 	dec	r0
   1F3F 76 00              4827 	mov	@r0,#0x00
   1F41 18                 4828 	dec	r0
   1F42 76 00              4829 	mov	@r0,#0x00
                    1363   4830 	C$tff.c$536$2$5 ==.
                           4831 ;	tff.c:536: LD_WORD(&dptr[DIR_FstClusLO]);
                           4832 ;	genPlus
   1F44 E5 0F              4833 	mov	a,_bp
   1F46 24 08              4834 	add	a,#0x08
   1F48 F8                 4835 	mov	r0,a
                           4836 ;     genPlusIncr
   1F49 74 1A              4837 	mov	a,#0x1A
   1F4B 26                 4838 	add	a,@r0
   1F4C FC                 4839 	mov	r4,a
                           4840 ;	Peephole 181	changed mov to clr
   1F4D E4                 4841 	clr	a
   1F4E 08                 4842 	inc	r0
   1F4F 36                 4843 	addc	a,@r0
   1F50 FF                 4844 	mov	r7,a
   1F51 08                 4845 	inc	r0
   1F52 86 02              4846 	mov	ar2,@r0
                           4847 ;	genPlus
                           4848 ;     genPlusIncr
   1F54 74 01              4849 	mov	a,#0x01
                           4850 ;	Peephole 236.a	used r4 instead of ar4
   1F56 2C                 4851 	add	a,r4
   1F57 FB                 4852 	mov	r3,a
                           4853 ;	Peephole 181	changed mov to clr
   1F58 E4                 4854 	clr	a
                           4855 ;	Peephole 236.b	used r7 instead of ar7
   1F59 3F                 4856 	addc	a,r7
   1F5A FD                 4857 	mov	r5,a
   1F5B 8A 06              4858 	mov	ar6,r2
                           4859 ;	genPointerGet
                           4860 ;	genGenPointerGet
   1F5D 8B 82              4861 	mov	dpl,r3
   1F5F 8D 83              4862 	mov	dph,r5
   1F61 8E F0              4863 	mov	b,r6
   1F63 12 47 8A           4864 	lcall	__gptrget
   1F66 FB                 4865 	mov	r3,a
                           4866 ;	genCast
                           4867 ;	genLeftShift
                           4868 ;	genLeftShiftLiteral
                           4869 ;	genlshTwo
                           4870 ;	peephole 177.e	removed redundant move
   1F67 8B 05              4871 	mov	ar5,r3
   1F69 7B 00              4872 	mov	r3,#0x00
                           4873 ;	genPointerGet
                           4874 ;	genGenPointerGet
   1F6B 8C 82              4875 	mov	dpl,r4
   1F6D 8F 83              4876 	mov	dph,r7
   1F6F 8A F0              4877 	mov	b,r2
   1F71 12 47 8A           4878 	lcall	__gptrget
                           4879 ;	genCast
                           4880 ;	genOr
   1F74 FC                 4881 	mov	r4,a
   1F75 7A 00              4882 	mov	r2,#0x00
                           4883 ;	Peephole 177.d	removed redundant move
   1F77 42 03              4884 	orl	ar3,a
   1F79 EA                 4885 	mov	a,r2
   1F7A 42 05              4886 	orl	ar5,a
                           4887 ;	genCast
                           4888 ;	genOr
                           4889 ;	Peephole 3.c	changed mov to clr
   1F7C E4                 4890 	clr	a
   1F7D FA                 4891 	mov	r2,a
   1F7E FC                 4892 	mov	r4,a
   1F7F E5 0F              4893 	mov	a,_bp
   1F81 24 14              4894 	add	a,#0x14
   1F83 F8                 4895 	mov	r0,a
   1F84 E6                 4896 	mov	a,@r0
   1F85 42 03              4897 	orl	ar3,a
   1F87 08                 4898 	inc	r0
   1F88 E6                 4899 	mov	a,@r0
   1F89 42 05              4900 	orl	ar5,a
   1F8B 08                 4901 	inc	r0
   1F8C E6                 4902 	mov	a,@r0
   1F8D 42 02              4903 	orl	ar2,a
   1F8F 08                 4904 	inc	r0
   1F90 E6                 4905 	mov	a,@r0
   1F91 42 04              4906 	orl	ar4,a
                           4907 ;	genAssign
   1F93 E5 0F              4908 	mov	a,_bp
   1F95 24 04              4909 	add	a,#0x04
   1F97 F8                 4910 	mov	r0,a
   1F98 A6 03              4911 	mov	@r0,ar3
   1F9A 08                 4912 	inc	r0
   1F9B A6 05              4913 	mov	@r0,ar5
   1F9D 08                 4914 	inc	r0
   1F9E A6 02              4915 	mov	@r0,ar2
   1FA0 08                 4916 	inc	r0
   1FA1 A6 04              4917 	mov	@r0,ar4
                    13C2   4918 	C$tff.c$537$2$5 ==.
                           4919 ;	tff.c:537: dirobj->clust = dirobj->sclust = clust;				/* Restart scannig with the new directory */
                           4920 ;	genPlus
   1FA3 A8 0F              4921 	mov	r0,_bp
   1FA5 08                 4922 	inc	r0
                           4923 ;     genPlusIncr
   1FA6 74 0B              4924 	mov	a,#0x0B
   1FA8 26                 4925 	add	a,@r0
   1FA9 FA                 4926 	mov	r2,a
                           4927 ;	Peephole 181	changed mov to clr
   1FAA E4                 4928 	clr	a
   1FAB 08                 4929 	inc	r0
   1FAC 36                 4930 	addc	a,@r0
   1FAD FB                 4931 	mov	r3,a
   1FAE 08                 4932 	inc	r0
   1FAF 86 04              4933 	mov	ar4,@r0
                           4934 ;	genPlus
   1FB1 A8 0F              4935 	mov	r0,_bp
   1FB3 08                 4936 	inc	r0
                           4937 ;     genPlusIncr
   1FB4 74 07              4938 	mov	a,#0x07
   1FB6 26                 4939 	add	a,@r0
   1FB7 FD                 4940 	mov	r5,a
                           4941 ;	Peephole 181	changed mov to clr
   1FB8 E4                 4942 	clr	a
   1FB9 08                 4943 	inc	r0
   1FBA 36                 4944 	addc	a,@r0
   1FBB FE                 4945 	mov	r6,a
   1FBC 08                 4946 	inc	r0
   1FBD 86 07              4947 	mov	ar7,@r0
                           4948 ;	genPointerSet
                           4949 ;	genGenPointerSet
   1FBF 8D 82              4950 	mov	dpl,r5
   1FC1 8E 83              4951 	mov	dph,r6
   1FC3 8F F0              4952 	mov	b,r7
   1FC5 E5 0F              4953 	mov	a,_bp
   1FC7 24 04              4954 	add	a,#0x04
   1FC9 F8                 4955 	mov	r0,a
   1FCA E6                 4956 	mov	a,@r0
   1FCB 12 42 DC           4957 	lcall	__gptrput
   1FCE A3                 4958 	inc	dptr
   1FCF 08                 4959 	inc	r0
   1FD0 E6                 4960 	mov	a,@r0
   1FD1 12 42 DC           4961 	lcall	__gptrput
   1FD4 A3                 4962 	inc	dptr
   1FD5 08                 4963 	inc	r0
   1FD6 E6                 4964 	mov	a,@r0
   1FD7 12 42 DC           4965 	lcall	__gptrput
   1FDA A3                 4966 	inc	dptr
   1FDB 08                 4967 	inc	r0
   1FDC E6                 4968 	mov	a,@r0
   1FDD 12 42 DC           4969 	lcall	__gptrput
                           4970 ;	genPointerSet
                           4971 ;	genGenPointerSet
   1FE0 8A 82              4972 	mov	dpl,r2
   1FE2 8B 83              4973 	mov	dph,r3
   1FE4 8C F0              4974 	mov	b,r4
   1FE6 E5 0F              4975 	mov	a,_bp
   1FE8 24 04              4976 	add	a,#0x04
   1FEA F8                 4977 	mov	r0,a
   1FEB E6                 4978 	mov	a,@r0
   1FEC 12 42 DC           4979 	lcall	__gptrput
   1FEF A3                 4980 	inc	dptr
   1FF0 08                 4981 	inc	r0
   1FF1 E6                 4982 	mov	a,@r0
   1FF2 12 42 DC           4983 	lcall	__gptrput
   1FF5 A3                 4984 	inc	dptr
   1FF6 08                 4985 	inc	r0
   1FF7 E6                 4986 	mov	a,@r0
   1FF8 12 42 DC           4987 	lcall	__gptrput
   1FFB A3                 4988 	inc	dptr
   1FFC 08                 4989 	inc	r0
   1FFD E6                 4990 	mov	a,@r0
   1FFE 12 42 DC           4991 	lcall	__gptrput
                    1420   4992 	C$tff.c$538$2$5 ==.
                           4993 ;	tff.c:538: dirobj->sect = clust2sect(clust);
                           4994 ;	genCall
   2001 E5 0F              4995 	mov	a,_bp
   2003 24 04              4996 	add	a,#0x04
   2005 F8                 4997 	mov	r0,a
   2006 86 82              4998 	mov	dpl,@r0
   2008 08                 4999 	inc	r0
   2009 86 83              5000 	mov	dph,@r0
   200B 08                 5001 	inc	r0
   200C 86 F0              5002 	mov	b,@r0
   200E 08                 5003 	inc	r0
   200F E6                 5004 	mov	a,@r0
   2010 12 10 DC           5005 	lcall	_clust2sect
   2013 AA 82              5006 	mov	r2,dpl
   2015 AB 83              5007 	mov	r3,dph
   2017 AC F0              5008 	mov	r4,b
   2019 FD                 5009 	mov	r5,a
                           5010 ;	genPointerSet
                           5011 ;	genGenPointerSet
   201A E5 0F              5012 	mov	a,_bp
   201C 24 0E              5013 	add	a,#0x0e
   201E F8                 5014 	mov	r0,a
   201F 86 82              5015 	mov	dpl,@r0
   2021 08                 5016 	inc	r0
   2022 86 83              5017 	mov	dph,@r0
   2024 08                 5018 	inc	r0
   2025 86 F0              5019 	mov	b,@r0
   2027 EA                 5020 	mov	a,r2
   2028 12 42 DC           5021 	lcall	__gptrput
   202B A3                 5022 	inc	dptr
   202C EB                 5023 	mov	a,r3
   202D 12 42 DC           5024 	lcall	__gptrput
   2030 A3                 5025 	inc	dptr
   2031 EC                 5026 	mov	a,r4
   2032 12 42 DC           5027 	lcall	__gptrput
   2035 A3                 5028 	inc	dptr
   2036 ED                 5029 	mov	a,r5
   2037 12 42 DC           5030 	lcall	__gptrput
                    1459   5031 	C$tff.c$539$2$5 ==.
                           5032 ;	tff.c:539: dirobj->index = 2;
                           5033 ;	genPointerSet
                           5034 ;	genGenPointerSet
   203A E5 0F              5035 	mov	a,_bp
   203C 24 11              5036 	add	a,#0x11
   203E F8                 5037 	mov	r0,a
   203F 86 82              5038 	mov	dpl,@r0
   2041 08                 5039 	inc	r0
   2042 86 83              5040 	mov	dph,@r0
   2044 08                 5041 	inc	r0
   2045 86 F0              5042 	mov	b,@r0
   2047 74 02              5043 	mov	a,#0x02
   2049 12 42 DC           5044 	lcall	__gptrput
   204C A3                 5045 	inc	dptr
                           5046 ;	Peephole 181	changed mov to clr
   204D E4                 5047 	clr	a
   204E 12 42 DC           5048 	lcall	__gptrput
   2051 02 1C BF           5049 	ljmp	00126$
   2054                    5050 00128$:
   2054 85 0F 81           5051 	mov	sp,_bp
   2057 D0 0F              5052 	pop	_bp
                    1478   5053 	C$tff.c$541$2$5 ==.
                    1478   5054 	XFtff$trace_path$0$0 ==.
   2059 22                 5055 	ret
                           5056 ;------------------------------------------------------------
                           5057 ;Allocation info for local variables in function 'check_fs'
                           5058 ;------------------------------------------------------------
                           5059 ;sect                      Allocated to stack - offset 1
                           5060 ;fs                        Allocated to registers r6 r7 r2 
                           5061 ;------------------------------------------------------------
                    1479   5062 	Ftff$check_fs$0$0 ==.
                    1479   5063 	C$tff.c$607$2$5 ==.
                           5064 ;	tff.c:607: BYTE check_fs (		/* 0:The FAT boot record, 1:Valid boot record but not an FAT, 2:Not a boot record or error */
                           5065 ;	-----------------------------------------
                           5066 ;	 function check_fs
                           5067 ;	-----------------------------------------
   205A                    5068 _check_fs:
   205A C0 0F              5069 	push	_bp
   205C 85 81 0F           5070 	mov	_bp,sp
                           5071 ;     genReceive
   205F C0 82              5072 	push	dpl
   2061 C0 83              5073 	push	dph
   2063 C0 F0              5074 	push	b
   2065 C0 E0              5075 	push	acc
                    1486   5076 	C$tff.c$611$1$5 ==.
                           5077 ;	tff.c:611: FATFS *fs = FatFs;
                           5078 ;	genAssign
   2067 AE 0A              5079 	mov	r6,_FatFs
   2069 AF 0B              5080 	mov	r7,(_FatFs + 1)
   206B AA 0C              5081 	mov	r2,(_FatFs + 2)
                    148C   5082 	C$tff.c$613$1$1 ==.
                           5083 ;	tff.c:613: if (disk_read(0, fs->win, sect, 1) != RES_OK)	/* Load boot record */
                           5084 ;	genPlus
                           5085 ;     genPlusIncr
   206D 74 20              5086 	mov	a,#0x20
                           5087 ;	Peephole 236.a	used r6 instead of ar6
   206F 2E                 5088 	add	a,r6
   2070 FB                 5089 	mov	r3,a
                           5090 ;	Peephole 181	changed mov to clr
   2071 E4                 5091 	clr	a
                           5092 ;	Peephole 236.b	used r7 instead of ar7
   2072 3F                 5093 	addc	a,r7
   2073 FC                 5094 	mov	r4,a
   2074 8A 05              5095 	mov	ar5,r2
                           5096 ;	genIpush
   2076 C0 02              5097 	push	ar2
   2078 C0 06              5098 	push	ar6
   207A C0 07              5099 	push	ar7
   207C 74 01              5100 	mov	a,#0x01
   207E C0 E0              5101 	push	acc
                           5102 ;	genIpush
   2080 A8 0F              5103 	mov	r0,_bp
   2082 08                 5104 	inc	r0
   2083 E6                 5105 	mov	a,@r0
   2084 C0 E0              5106 	push	acc
   2086 08                 5107 	inc	r0
   2087 E6                 5108 	mov	a,@r0
   2088 C0 E0              5109 	push	acc
   208A 08                 5110 	inc	r0
   208B E6                 5111 	mov	a,@r0
   208C C0 E0              5112 	push	acc
   208E 08                 5113 	inc	r0
   208F E6                 5114 	mov	a,@r0
   2090 C0 E0              5115 	push	acc
                           5116 ;	genIpush
   2092 C0 03              5117 	push	ar3
   2094 C0 04              5118 	push	ar4
   2096 C0 05              5119 	push	ar5
                           5120 ;	genCall
   2098 75 82 00           5121 	mov	dpl,#0x00
   209B 12 00 92           5122 	lcall	_disk_read
   209E AB 82              5123 	mov	r3,dpl
   20A0 E5 81              5124 	mov	a,sp
   20A2 24 F8              5125 	add	a,#0xf8
   20A4 F5 81              5126 	mov	sp,a
   20A6 D0 07              5127 	pop	ar7
   20A8 D0 06              5128 	pop	ar6
   20AA D0 02              5129 	pop	ar2
                           5130 ;	genCmpEq
                           5131 ;	gencjneshort
   20AC BB 00 02           5132 	cjne	r3,#0x00,00117$
                           5133 ;	Peephole 112.b	changed ljmp to sjmp
   20AF 80 06              5134 	sjmp	00102$
   20B1                    5135 00117$:
                    14D0   5136 	C$tff.c$614$1$1 ==.
                           5137 ;	tff.c:614: return 2;
                           5138 ;	genRet
   20B1 75 82 02           5139 	mov	dpl,#0x02
   20B4 02 21 BF           5140 	ljmp	00110$
   20B7                    5141 00102$:
                    14D6   5142 	C$tff.c$615$1$1 ==.
                           5143 ;	tff.c:615: if (LD_WORD(&fs->win[BS_55AA]) != 0xAA55)		/* Check record signature */
                           5144 ;	genPlus
                           5145 ;     genPlusIncr
   20B7 74 20              5146 	mov	a,#0x20
                           5147 ;	Peephole 236.a	used r6 instead of ar6
   20B9 2E                 5148 	add	a,r6
   20BA FB                 5149 	mov	r3,a
                           5150 ;	Peephole 181	changed mov to clr
   20BB E4                 5151 	clr	a
                           5152 ;	Peephole 236.b	used r7 instead of ar7
   20BC 3F                 5153 	addc	a,r7
   20BD FC                 5154 	mov	r4,a
   20BE 8A 05              5155 	mov	ar5,r2
                           5156 ;	genPlus
                           5157 ;     genPlusIncr
   20C0 74 FE              5158 	mov	a,#0xFE
                           5159 ;	Peephole 236.a	used r3 instead of ar3
   20C2 2B                 5160 	add	a,r3
   20C3 FB                 5161 	mov	r3,a
   20C4 74 01              5162 	mov	a,#0x01
                           5163 ;	Peephole 236.b	used r4 instead of ar4
   20C6 3C                 5164 	addc	a,r4
   20C7 FC                 5165 	mov	r4,a
                           5166 ;	genIpush
   20C8 C0 06              5167 	push	ar6
   20CA C0 07              5168 	push	ar7
   20CC C0 02              5169 	push	ar2
                           5170 ;	genPlus
                           5171 ;     genPlusIncr
   20CE 74 01              5172 	mov	a,#0x01
                           5173 ;	Peephole 236.a	used r3 instead of ar3
   20D0 2B                 5174 	add	a,r3
   20D1 FA                 5175 	mov	r2,a
                           5176 ;	Peephole 181	changed mov to clr
   20D2 E4                 5177 	clr	a
                           5178 ;	Peephole 236.b	used r4 instead of ar4
   20D3 3C                 5179 	addc	a,r4
   20D4 FE                 5180 	mov	r6,a
   20D5 8D 07              5181 	mov	ar7,r5
                           5182 ;	genPointerGet
                           5183 ;	genGenPointerGet
   20D7 8A 82              5184 	mov	dpl,r2
   20D9 8E 83              5185 	mov	dph,r6
   20DB 8F F0              5186 	mov	b,r7
   20DD 12 47 8A           5187 	lcall	__gptrget
   20E0 FA                 5188 	mov	r2,a
                           5189 ;	genCast
                           5190 ;	genLeftShift
                           5191 ;	genLeftShiftLiteral
                           5192 ;	genlshTwo
                           5193 ;	peephole 177.e	removed redundant move
   20E1 8A 06              5194 	mov	ar6,r2
   20E3 7A 00              5195 	mov	r2,#0x00
                           5196 ;	genPointerGet
                           5197 ;	genGenPointerGet
   20E5 8B 82              5198 	mov	dpl,r3
   20E7 8C 83              5199 	mov	dph,r4
   20E9 8D F0              5200 	mov	b,r5
   20EB 12 47 8A           5201 	lcall	__gptrget
                           5202 ;	genCast
                           5203 ;	genOr
   20EE FB                 5204 	mov	r3,a
   20EF 7C 00              5205 	mov	r4,#0x00
                           5206 ;	Peephole 177.d	removed redundant move
   20F1 42 02              5207 	orl	ar2,a
   20F3 EC                 5208 	mov	a,r4
   20F4 42 06              5209 	orl	ar6,a
                           5210 ;	genCmpEq
                           5211 ;	gencjne
                           5212 ;	gencjneshort
                           5213 ;	Peephole 241.c	optimized compare
   20F6 E4                 5214 	clr	a
   20F7 BA 55 04           5215 	cjne	r2,#0x55,00118$
   20FA BE AA 01           5216 	cjne	r6,#0xAA,00118$
   20FD 04                 5217 	inc	a
   20FE                    5218 00118$:
                           5219 ;	Peephole 300	removed redundant label 00119$
                           5220 ;	genIpop
   20FE D0 02              5221 	pop	ar2
   2100 D0 07              5222 	pop	ar7
   2102 D0 06              5223 	pop	ar6
                           5224 ;	genIfx
                           5225 ;	genIfxJump
                           5226 ;	Peephole 108.b	removed ljmp by inverse jump logic
   2104 70 06              5227 	jnz	00104$
                           5228 ;	Peephole 300	removed redundant label 00120$
                    1525   5229 	C$tff.c$616$1$1 ==.
                           5230 ;	tff.c:616: return 2;
                           5231 ;	genRet
   2106 75 82 02           5232 	mov	dpl,#0x02
   2109 02 21 BF           5233 	ljmp	00110$
   210C                    5234 00104$:
                    152B   5235 	C$tff.c$618$1$1 ==.
                           5236 ;	tff.c:618: if (!memcmp(&fs->win[BS_FilSysType], "FAT", 3))	/* Check FAT signature */
                           5237 ;	genPlus
                           5238 ;     genPlusIncr
   210C 74 20              5239 	mov	a,#0x20
                           5240 ;	Peephole 236.a	used r6 instead of ar6
   210E 2E                 5241 	add	a,r6
   210F FB                 5242 	mov	r3,a
                           5243 ;	Peephole 181	changed mov to clr
   2110 E4                 5244 	clr	a
                           5245 ;	Peephole 236.b	used r7 instead of ar7
   2111 3F                 5246 	addc	a,r7
   2112 FC                 5247 	mov	r4,a
   2113 8A 05              5248 	mov	ar5,r2
                           5249 ;	genPlus
                           5250 ;     genPlusIncr
   2115 74 36              5251 	mov	a,#0x36
                           5252 ;	Peephole 236.a	used r3 instead of ar3
   2117 2B                 5253 	add	a,r3
   2118 FB                 5254 	mov	r3,a
                           5255 ;	Peephole 181	changed mov to clr
   2119 E4                 5256 	clr	a
                           5257 ;	Peephole 236.b	used r4 instead of ar4
   211A 3C                 5258 	addc	a,r4
   211B FC                 5259 	mov	r4,a
                           5260 ;	genIpush
   211C C0 02              5261 	push	ar2
   211E C0 06              5262 	push	ar6
   2120 C0 07              5263 	push	ar7
   2122 74 03              5264 	mov	a,#0x03
   2124 C0 E0              5265 	push	acc
                           5266 ;	Peephole 181	changed mov to clr
   2126 E4                 5267 	clr	a
   2127 C0 E0              5268 	push	acc
                           5269 ;	genIpush
   2129 74 7E              5270 	mov	a,#__str_0
   212B C0 E0              5271 	push	acc
   212D 74 59              5272 	mov	a,#(__str_0 >> 8)
   212F C0 E0              5273 	push	acc
   2131 74 80              5274 	mov	a,#0x80
   2133 C0 E0              5275 	push	acc
                           5276 ;	genCall
   2135 8B 82              5277 	mov	dpl,r3
   2137 8C 83              5278 	mov	dph,r4
   2139 8D F0              5279 	mov	b,r5
   213B 12 43 17           5280 	lcall	_memcmp
   213E AB 82              5281 	mov	r3,dpl
   2140 AC 83              5282 	mov	r4,dph
   2142 E5 81              5283 	mov	a,sp
   2144 24 FB              5284 	add	a,#0xfb
   2146 F5 81              5285 	mov	sp,a
   2148 D0 07              5286 	pop	ar7
   214A D0 06              5287 	pop	ar6
   214C D0 02              5288 	pop	ar2
                           5289 ;	genIfx
   214E EB                 5290 	mov	a,r3
   214F 4C                 5291 	orl	a,r4
                           5292 ;	genIfxJump
                           5293 ;	Peephole 108.b	removed ljmp by inverse jump logic
                    156F   5294 	C$tff.c$619$1$1 ==.
                           5295 ;	tff.c:619: return 0;
                           5296 ;	genRet
   2150 70 04              5297 	jnz	00106$
                           5298 ;	Peephole 300	removed redundant label 00121$
                           5299 ;	Peephole 256.c	loading dpl with zero from a
   2152 F5 82              5300 	mov	dpl,a
                           5301 ;	Peephole 112.b	changed ljmp to sjmp
   2154 80 69              5302 	sjmp	00110$
   2156                    5303 00106$:
                    1575   5304 	C$tff.c$621$1$1 ==.
                           5305 ;	tff.c:621: if (!memcmp(&fs->win[BS_FilSysType32], "FAT32", 5) && !(fs->win[BPB_ExtFlags] & 0x80))
                           5306 ;	genPlus
                           5307 ;     genPlusIncr
   2156 74 20              5308 	mov	a,#0x20
                           5309 ;	Peephole 236.a	used r6 instead of ar6
   2158 2E                 5310 	add	a,r6
   2159 FB                 5311 	mov	r3,a
                           5312 ;	Peephole 181	changed mov to clr
   215A E4                 5313 	clr	a
                           5314 ;	Peephole 236.b	used r7 instead of ar7
   215B 3F                 5315 	addc	a,r7
   215C FC                 5316 	mov	r4,a
   215D 8A 05              5317 	mov	ar5,r2
                           5318 ;	genPlus
                           5319 ;     genPlusIncr
   215F 74 52              5320 	mov	a,#0x52
                           5321 ;	Peephole 236.a	used r3 instead of ar3
   2161 2B                 5322 	add	a,r3
   2162 FB                 5323 	mov	r3,a
                           5324 ;	Peephole 181	changed mov to clr
   2163 E4                 5325 	clr	a
                           5326 ;	Peephole 236.b	used r4 instead of ar4
   2164 3C                 5327 	addc	a,r4
   2165 FC                 5328 	mov	r4,a
                           5329 ;	genIpush
   2166 C0 02              5330 	push	ar2
   2168 C0 06              5331 	push	ar6
   216A C0 07              5332 	push	ar7
   216C 74 05              5333 	mov	a,#0x05
   216E C0 E0              5334 	push	acc
                           5335 ;	Peephole 181	changed mov to clr
   2170 E4                 5336 	clr	a
   2171 C0 E0              5337 	push	acc
                           5338 ;	genIpush
   2173 74 82              5339 	mov	a,#__str_1
   2175 C0 E0              5340 	push	acc
   2177 74 59              5341 	mov	a,#(__str_1 >> 8)
   2179 C0 E0              5342 	push	acc
   217B 74 80              5343 	mov	a,#0x80
   217D C0 E0              5344 	push	acc
                           5345 ;	genCall
   217F 8B 82              5346 	mov	dpl,r3
   2181 8C 83              5347 	mov	dph,r4
   2183 8D F0              5348 	mov	b,r5
   2185 12 43 17           5349 	lcall	_memcmp
   2188 AB 82              5350 	mov	r3,dpl
   218A AC 83              5351 	mov	r4,dph
   218C E5 81              5352 	mov	a,sp
   218E 24 FB              5353 	add	a,#0xfb
   2190 F5 81              5354 	mov	sp,a
   2192 D0 07              5355 	pop	ar7
   2194 D0 06              5356 	pop	ar6
   2196 D0 02              5357 	pop	ar2
                           5358 ;	genIfx
   2198 EB                 5359 	mov	a,r3
   2199 4C                 5360 	orl	a,r4
                           5361 ;	genIfxJump
                           5362 ;	Peephole 108.b	removed ljmp by inverse jump logic
   219A 70 20              5363 	jnz	00108$
                           5364 ;	Peephole 300	removed redundant label 00122$
                           5365 ;	genPlus
                           5366 ;     genPlusIncr
   219C 74 20              5367 	mov	a,#0x20
                           5368 ;	Peephole 236.a	used r6 instead of ar6
   219E 2E                 5369 	add	a,r6
   219F FE                 5370 	mov	r6,a
                           5371 ;	Peephole 181	changed mov to clr
   21A0 E4                 5372 	clr	a
                           5373 ;	Peephole 236.b	used r7 instead of ar7
   21A1 3F                 5374 	addc	a,r7
   21A2 FF                 5375 	mov	r7,a
                           5376 ;	genPlus
                           5377 ;     genPlusIncr
   21A3 74 28              5378 	mov	a,#0x28
                           5379 ;	Peephole 236.a	used r6 instead of ar6
   21A5 2E                 5380 	add	a,r6
   21A6 FE                 5381 	mov	r6,a
                           5382 ;	Peephole 181	changed mov to clr
   21A7 E4                 5383 	clr	a
                           5384 ;	Peephole 236.b	used r7 instead of ar7
   21A8 3F                 5385 	addc	a,r7
   21A9 FF                 5386 	mov	r7,a
                           5387 ;	genPointerGet
                           5388 ;	genGenPointerGet
   21AA 8E 82              5389 	mov	dpl,r6
   21AC 8F 83              5390 	mov	dph,r7
   21AE 8A F0              5391 	mov	b,r2
   21B0 12 47 8A           5392 	lcall	__gptrget
                           5393 ;	genAnd
   21B3 FE                 5394 	mov	r6,a
                           5395 ;	Peephole 105	removed redundant mov
                           5396 ;	genIfxJump
                           5397 ;	Peephole 108.e	removed ljmp by inverse jump logic
   21B4 20 E7 05           5398 	jb	acc.7,00108$
                           5399 ;	Peephole 300	removed redundant label 00123$
                    15D6   5400 	C$tff.c$622$1$1 ==.
                           5401 ;	tff.c:622: return 0;
                           5402 ;	genRet
   21B7 75 82 00           5403 	mov	dpl,#0x00
                           5404 ;	Peephole 112.b	changed ljmp to sjmp
   21BA 80 03              5405 	sjmp	00110$
   21BC                    5406 00108$:
                    15DB   5407 	C$tff.c$624$1$1 ==.
                           5408 ;	tff.c:624: return 1;
                           5409 ;	genRet
   21BC 75 82 01           5410 	mov	dpl,#0x01
   21BF                    5411 00110$:
   21BF 85 0F 81           5412 	mov	sp,_bp
   21C2 D0 0F              5413 	pop	_bp
                    15E3   5414 	C$tff.c$625$1$1 ==.
                    15E3   5415 	XFtff$check_fs$0$0 ==.
   21C4 22                 5416 	ret
                           5417 ;------------------------------------------------------------
                           5418 ;Allocation info for local variables in function 'auto_mount'
                           5419 ;------------------------------------------------------------
                           5420 ;chk_wp                    Allocated to stack - offset -3
                           5421 ;path                      Allocated to stack - offset 1
                           5422 ;fmt                       Allocated to stack - offset 4
                           5423 ;stat                      Allocated to registers r2 
                           5424 ;bootsect                  Allocated to stack - offset 5
                           5425 ;fatsize                   Allocated to stack - offset 9
                           5426 ;totalsect                 Allocated to stack - offset 13
                           5427 ;maxclust                  Allocated to stack - offset 17
                           5428 ;p                         Allocated to registers r5 r6 r7 
                           5429 ;fs                        Allocated to stack - offset 21
                           5430 ;sloc0                     Allocated to stack - offset 24
                           5431 ;sloc1                     Allocated to stack - offset 25
                           5432 ;sloc2                     Allocated to stack - offset 28
                           5433 ;sloc3                     Allocated to stack - offset 32
                           5434 ;sloc4                     Allocated to stack - offset 36
                           5435 ;sloc5                     Allocated to stack - offset 44
                           5436 ;sloc6                     Allocated to stack - offset 40
                           5437 ;sloc7                     Allocated to stack - offset 43
                           5438 ;------------------------------------------------------------
                    15E4   5439 	Ftff$auto_mount$0$0 ==.
                    15E4   5440 	C$tff.c$635$1$1 ==.
                           5441 ;	tff.c:635: FRESULT auto_mount (		/* FR_OK(0): successful, !=0: any error occured */
                           5442 ;	-----------------------------------------
                           5443 ;	 function auto_mount
                           5444 ;	-----------------------------------------
   21C5                    5445 _auto_mount:
   21C5 C0 0F              5446 	push	_bp
   21C7 85 81 0F           5447 	mov	_bp,sp
                           5448 ;     genReceive
   21CA C0 82              5449 	push	dpl
   21CC C0 83              5450 	push	dph
   21CE C0 F0              5451 	push	b
   21D0 E5 81              5452 	mov	a,sp
   21D2 24 2E              5453 	add	a,#0x2e
   21D4 F5 81              5454 	mov	sp,a
                    15F5   5455 	C$tff.c$643$1$1 ==.
                           5456 ;	tff.c:643: const char *p = *path;
                           5457 ;	genPointerGet
                           5458 ;	genGenPointerGet
   21D6 A8 0F              5459 	mov	r0,_bp
   21D8 08                 5460 	inc	r0
   21D9 86 82              5461 	mov	dpl,@r0
   21DB 08                 5462 	inc	r0
   21DC 86 83              5463 	mov	dph,@r0
   21DE 08                 5464 	inc	r0
   21DF 86 F0              5465 	mov	b,@r0
   21E1 12 47 8A           5466 	lcall	__gptrget
   21E4 FD                 5467 	mov	r5,a
   21E5 A3                 5468 	inc	dptr
   21E6 12 47 8A           5469 	lcall	__gptrget
   21E9 FE                 5470 	mov	r6,a
   21EA A3                 5471 	inc	dptr
   21EB 12 47 8A           5472 	lcall	__gptrget
   21EE FF                 5473 	mov	r7,a
                           5474 ;	genAssign
                    160E   5475 	C$tff.c$644$1$1 ==.
                           5476 ;	tff.c:644: FATFS *fs = FatFs;
                           5477 ;	genAssign
   21EF E5 0F              5478 	mov	a,_bp
   21F1 24 15              5479 	add	a,#0x15
   21F3 F8                 5480 	mov	r0,a
   21F4 A6 0A              5481 	mov	@r0,_FatFs
   21F6 08                 5482 	inc	r0
   21F7 A6 0B              5483 	mov	@r0,(_FatFs + 1)
   21F9 08                 5484 	inc	r0
   21FA A6 0C              5485 	mov	@r0,(_FatFs + 2)
                    161B   5486 	C$tff.c$648$1$1 ==.
                           5487 ;	tff.c:648: while (*p == ' ') p++;	/* Strip leading spaces */
                           5488 ;	genAssign
   21FC 8D 02              5489 	mov	ar2,r5
   21FE 8E 03              5490 	mov	ar3,r6
   2200 8F 04              5491 	mov	ar4,r7
   2202                    5492 00101$:
                           5493 ;	genPointerGet
                           5494 ;	genGenPointerGet
   2202 8A 82              5495 	mov	dpl,r2
   2204 8B 83              5496 	mov	dph,r3
   2206 8C F0              5497 	mov	b,r4
   2208 E5 0F              5498 	mov	a,_bp
   220A 24 18              5499 	add	a,#0x18
   220C F8                 5500 	mov	r0,a
   220D 12 47 8A           5501 	lcall	__gptrget
   2210 F6                 5502 	mov	@r0,a
                           5503 ;	genCmpEq
   2211 E5 0F              5504 	mov	a,_bp
   2213 24 18              5505 	add	a,#0x18
   2215 F8                 5506 	mov	r0,a
                           5507 ;	gencjneshort
                           5508 ;	Peephole 112.b	changed ljmp to sjmp
                           5509 ;	Peephole 198.b	optimized misc jump sequence
   2216 B6 20 07           5510 	cjne	@r0,#0x20,00149$
                           5511 ;	Peephole 200.b	removed redundant sjmp
                           5512 ;	Peephole 300	removed redundant label 00150$
                           5513 ;	Peephole 300	removed redundant label 00151$
                           5514 ;	genPlus
                           5515 ;     genPlusIncr
                           5516 ;	tail increment optimized (range 4)
   2219 0A                 5517 	inc	r2
   221A BA 00 E5           5518 	cjne	r2,#0x00,00101$
   221D 0B                 5519 	inc	r3
                           5520 ;	Peephole 112.b	changed ljmp to sjmp
   221E 80 E2              5521 	sjmp	00101$
   2220                    5522 00149$:
                           5523 ;	genAssign
   2220 8A 05              5524 	mov	ar5,r2
   2222 8B 06              5525 	mov	ar6,r3
   2224 8C 07              5526 	mov	ar7,r4
                    1645   5527 	C$tff.c$649$1$1 ==.
                           5528 ;	tff.c:649: if (*p == '/') p++;		/* Strip heading slash */
                           5529 ;	genCmpEq
   2226 E5 0F              5530 	mov	a,_bp
   2228 24 18              5531 	add	a,#0x18
   222A F8                 5532 	mov	r0,a
                           5533 ;	gencjneshort
                           5534 ;	Peephole 112.b	changed ljmp to sjmp
                           5535 ;	Peephole 198.b	optimized misc jump sequence
   222B B6 2F 09           5536 	cjne	@r0,#0x2F,00105$
                           5537 ;	Peephole 200.b	removed redundant sjmp
                           5538 ;	Peephole 300	removed redundant label 00152$
                           5539 ;	Peephole 300	removed redundant label 00153$
                           5540 ;	genPlus
                           5541 ;     genPlusIncr
   222E 74 01              5542 	mov	a,#0x01
                           5543 ;	Peephole 236.a	used r2 instead of ar2
   2230 2A                 5544 	add	a,r2
   2231 FD                 5545 	mov	r5,a
                           5546 ;	Peephole 181	changed mov to clr
   2232 E4                 5547 	clr	a
                           5548 ;	Peephole 236.b	used r3 instead of ar3
   2233 3B                 5549 	addc	a,r3
   2234 FE                 5550 	mov	r6,a
   2235 8C 07              5551 	mov	ar7,r4
   2237                    5552 00105$:
                    1656   5553 	C$tff.c$650$1$1 ==.
                           5554 ;	tff.c:650: *path = p;				/* Return pointer to the path name */
                           5555 ;	genPointerSet
                           5556 ;	genGenPointerSet
   2237 A8 0F              5557 	mov	r0,_bp
   2239 08                 5558 	inc	r0
   223A 86 82              5559 	mov	dpl,@r0
   223C 08                 5560 	inc	r0
   223D 86 83              5561 	mov	dph,@r0
   223F 08                 5562 	inc	r0
   2240 86 F0              5563 	mov	b,@r0
   2242 ED                 5564 	mov	a,r5
   2243 12 42 DC           5565 	lcall	__gptrput
   2246 A3                 5566 	inc	dptr
   2247 EE                 5567 	mov	a,r6
   2248 12 42 DC           5568 	lcall	__gptrput
   224B A3                 5569 	inc	dptr
   224C EF                 5570 	mov	a,r7
   224D 12 42 DC           5571 	lcall	__gptrput
                    166F   5572 	C$tff.c$653$1$1 ==.
                           5573 ;	tff.c:653: if (!fs) return FR_NOT_ENABLED;
                           5574 ;	genIfx
   2250 E5 0F              5575 	mov	a,_bp
   2252 24 15              5576 	add	a,#0x15
   2254 F8                 5577 	mov	r0,a
   2255 E6                 5578 	mov	a,@r0
   2256 08                 5579 	inc	r0
   2257 46                 5580 	orl	a,@r0
   2258 08                 5581 	inc	r0
   2259 46                 5582 	orl	a,@r0
                           5583 ;	genIfxJump
                           5584 ;	Peephole 108.b	removed ljmp by inverse jump logic
   225A 70 06              5585 	jnz	00107$
                           5586 ;	Peephole 300	removed redundant label 00154$
                           5587 ;	genRet
   225C 75 82 0A           5588 	mov	dpl,#0x0A
   225F 02 2D 5A           5589 	ljmp	00132$
   2262                    5590 00107$:
                    1681   5591 	C$tff.c$656$1$1 ==.
                           5592 ;	tff.c:656: if (fs->fs_type) {
                           5593 ;	genPlus
   2262 E5 0F              5594 	mov	a,_bp
   2264 24 15              5595 	add	a,#0x15
   2266 F8                 5596 	mov	r0,a
                           5597 ;     genPlusIncr
   2267 74 1C              5598 	mov	a,#0x1C
   2269 26                 5599 	add	a,@r0
   226A FA                 5600 	mov	r2,a
                           5601 ;	Peephole 181	changed mov to clr
   226B E4                 5602 	clr	a
   226C 08                 5603 	inc	r0
   226D 36                 5604 	addc	a,@r0
   226E FB                 5605 	mov	r3,a
   226F 08                 5606 	inc	r0
   2270 86 04              5607 	mov	ar4,@r0
                           5608 ;	genPointerGet
                           5609 ;	genGenPointerGet
   2272 8A 82              5610 	mov	dpl,r2
   2274 8B 83              5611 	mov	dph,r3
   2276 8C F0              5612 	mov	b,r4
   2278 12 47 8A           5613 	lcall	__gptrget
                           5614 ;	genIfxJump
                           5615 ;	Peephole 108.c	removed ljmp by inverse jump logic
   227B 60 12              5616 	jz	00111$
                           5617 ;	Peephole 300	removed redundant label 00155$
                    169C   5618 	C$tff.c$657$2$2 ==.
                           5619 ;	tff.c:657: stat = disk_status(0);
                           5620 ;	genCall
   227D 75 82 00           5621 	mov	dpl,#0x00
   2280 12 00 80           5622 	lcall	_disk_status
                           5623 ;	genAssign
                    16A2   5624 	C$tff.c$658$2$2 ==.
                           5625 ;	tff.c:658: if (!(stat & STA_NOINIT)) {				/* If the physical drive is kept initialized */
                           5626 ;	genAnd
                           5627 ;	peephole 177.g	optimized mov sequence
   2283 E5 82              5628 	mov	a,dpl
   2285 FA                 5629 	mov	r2,a
                           5630 ;	genIfxJump
                           5631 ;	Peephole 108.e	removed ljmp by inverse jump logic
   2286 20 E0 06           5632 	jb	acc.0,00111$
                           5633 ;	Peephole 300	removed redundant label 00156$
                    16A8   5634 	C$tff.c$663$3$3 ==.
                           5635 ;	tff.c:663: return FR_OK;						/* The file system object is valid */
                           5636 ;	genRet
   2289 75 82 00           5637 	mov	dpl,#0x00
   228C 02 2D 5A           5638 	ljmp	00132$
   228F                    5639 00111$:
                    16AE   5640 	C$tff.c$669$1$1 ==.
                           5641 ;	tff.c:669: memset(fs, 0, sizeof(FATFS));		/* Clean-up the file system object */
                           5642 ;	genIpush
   228F 74 20              5643 	mov	a,#0x20
   2291 C0 E0              5644 	push	acc
   2293 74 02              5645 	mov	a,#0x02
   2295 C0 E0              5646 	push	acc
                           5647 ;	genIpush
                           5648 ;	Peephole 181	changed mov to clr
   2297 E4                 5649 	clr	a
   2298 C0 E0              5650 	push	acc
                           5651 ;	genCall
   229A E5 0F              5652 	mov	a,_bp
   229C 24 15              5653 	add	a,#0x15
   229E F8                 5654 	mov	r0,a
   229F 86 82              5655 	mov	dpl,@r0
   22A1 08                 5656 	inc	r0
   22A2 86 83              5657 	mov	dph,@r0
   22A4 08                 5658 	inc	r0
   22A5 86 F0              5659 	mov	b,@r0
   22A7 12 45 52           5660 	lcall	_memset
   22AA 15 81              5661 	dec	sp
   22AC 15 81              5662 	dec	sp
   22AE 15 81              5663 	dec	sp
                    16CF   5664 	C$tff.c$670$1$1 ==.
                           5665 ;	tff.c:670: stat = disk_initialize(0);			/* Initialize low level disk I/O layer */
                           5666 ;	genCall
   22B0 75 82 00           5667 	mov	dpl,#0x00
   22B3 12 00 5F           5668 	lcall	_disk_initialize
   22B6 AB 82              5669 	mov	r3,dpl
                           5670 ;	genAssign
   22B8 8B 02              5671 	mov	ar2,r3
                    16D9   5672 	C$tff.c$671$1$1 ==.
                           5673 ;	tff.c:671: if (stat & STA_NOINIT)				/* Check if the drive is ready */
                           5674 ;	genAnd
   22BA EA                 5675 	mov	a,r2
                           5676 ;	genIfxJump
                           5677 ;	Peephole 108.d	removed ljmp by inverse jump logic
   22BB 30 E0 06           5678 	jnb	acc.0,00113$
                           5679 ;	Peephole 300	removed redundant label 00157$
                    16DD   5680 	C$tff.c$672$1$1 ==.
                           5681 ;	tff.c:672: return FR_NOT_READY;
                           5682 ;	genRet
   22BE 75 82 01           5683 	mov	dpl,#0x01
   22C1 02 2D 5A           5684 	ljmp	00132$
   22C4                    5685 00113$:
                    16E3   5686 	C$tff.c$679$1$1 ==.
                           5687 ;	tff.c:679: fmt = check_fs(bootsect = 0);		/* Check sector 0 as an SFD format */
                           5688 ;	genAssign
   22C4 E5 0F              5689 	mov	a,_bp
   22C6 24 05              5690 	add	a,#0x05
   22C8 F8                 5691 	mov	r0,a
   22C9 E4                 5692 	clr	a
   22CA F6                 5693 	mov	@r0,a
   22CB 08                 5694 	inc	r0
   22CC F6                 5695 	mov	@r0,a
   22CD 08                 5696 	inc	r0
   22CE F6                 5697 	mov	@r0,a
   22CF 08                 5698 	inc	r0
   22D0 F6                 5699 	mov	@r0,a
                           5700 ;	genCall
   22D1 75 82 00           5701 	mov	dpl,#0x00
   22D4 12 20 5A           5702 	lcall	_check_fs
   22D7 AA 82              5703 	mov	r2,dpl
                           5704 ;	genAssign
   22D9 E5 0F              5705 	mov	a,_bp
   22DB 24 04              5706 	add	a,#0x04
   22DD F8                 5707 	mov	r0,a
   22DE A6 02              5708 	mov	@r0,ar2
                    16FF   5709 	C$tff.c$680$1$1 ==.
                           5710 ;	tff.c:680: if (fmt == 1) {						/* Not a FAT boot record, it may be patitioned */
                           5711 ;	genCmpEq
   22E0 E5 0F              5712 	mov	a,_bp
   22E2 24 04              5713 	add	a,#0x04
   22E4 F8                 5714 	mov	r0,a
                           5715 ;	gencjneshort
   22E5 B6 01 02           5716 	cjne	@r0,#0x01,00158$
   22E8 80 03              5717 	sjmp	00159$
   22EA                    5718 00158$:
   22EA 02 24 28           5719 	ljmp	00117$
   22ED                    5720 00159$:
                    170C   5721 	C$tff.c$682$1$1 ==.
                           5722 ;	tff.c:682: if (fs->win[MBR_Table+4]) {					/* Is the 1st partition existing? */
                           5723 ;	genIpush
                           5724 ;	genPlus
   22ED E5 0F              5725 	mov	a,_bp
   22EF 24 15              5726 	add	a,#0x15
   22F1 F8                 5727 	mov	r0,a
                           5728 ;     genPlusIncr
   22F2 74 20              5729 	mov	a,#0x20
   22F4 26                 5730 	add	a,@r0
   22F5 FB                 5731 	mov	r3,a
                           5732 ;	Peephole 181	changed mov to clr
   22F6 E4                 5733 	clr	a
   22F7 08                 5734 	inc	r0
   22F8 36                 5735 	addc	a,@r0
   22F9 FC                 5736 	mov	r4,a
   22FA 08                 5737 	inc	r0
   22FB 86 02              5738 	mov	ar2,@r0
                           5739 ;	genPlus
                           5740 ;     genPlusIncr
   22FD 74 C2              5741 	mov	a,#0xC2
                           5742 ;	Peephole 236.a	used r3 instead of ar3
   22FF 2B                 5743 	add	a,r3
   2300 FB                 5744 	mov	r3,a
   2301 74 01              5745 	mov	a,#0x01
                           5746 ;	Peephole 236.b	used r4 instead of ar4
   2303 3C                 5747 	addc	a,r4
   2304 FC                 5748 	mov	r4,a
                           5749 ;	genPointerGet
                           5750 ;	genGenPointerGet
   2305 8B 82              5751 	mov	dpl,r3
   2307 8C 83              5752 	mov	dph,r4
   2309 8A F0              5753 	mov	b,r2
   230B 12 47 8A           5754 	lcall	__gptrget
                           5755 ;	genIpop
                           5756 ;	genIfx
                           5757 ;	genIfxJump
   230E 70 03              5758 	jnz	00160$
   2310 02 24 28           5759 	ljmp	00117$
   2313                    5760 00160$:
                    1732   5761 	C$tff.c$683$3$5 ==.
                           5762 ;	tff.c:683: bootsect = LD_DWORD(&fs->win[MBR_Table+8]);	/* Partition offset in LBA */
                           5763 ;	genPlus
   2313 E5 0F              5764 	mov	a,_bp
   2315 24 15              5765 	add	a,#0x15
   2317 F8                 5766 	mov	r0,a
                           5767 ;     genPlusIncr
   2318 74 20              5768 	mov	a,#0x20
   231A 26                 5769 	add	a,@r0
   231B FB                 5770 	mov	r3,a
                           5771 ;	Peephole 181	changed mov to clr
   231C E4                 5772 	clr	a
   231D 08                 5773 	inc	r0
   231E 36                 5774 	addc	a,@r0
   231F FC                 5775 	mov	r4,a
   2320 08                 5776 	inc	r0
   2321 86 05              5777 	mov	ar5,@r0
                           5778 ;	genPlus
   2323 E5 0F              5779 	mov	a,_bp
   2325 24 19              5780 	add	a,#0x19
   2327 F8                 5781 	mov	r0,a
                           5782 ;     genPlusIncr
   2328 74 C6              5783 	mov	a,#0xC6
                           5784 ;	Peephole 236.a	used r3 instead of ar3
   232A 2B                 5785 	add	a,r3
   232B F6                 5786 	mov	@r0,a
   232C 74 01              5787 	mov	a,#0x01
                           5788 ;	Peephole 236.b	used r4 instead of ar4
   232E 3C                 5789 	addc	a,r4
   232F 08                 5790 	inc	r0
   2330 F6                 5791 	mov	@r0,a
   2331 08                 5792 	inc	r0
   2332 A6 05              5793 	mov	@r0,ar5
                           5794 ;	genPlus
   2334 E5 0F              5795 	mov	a,_bp
   2336 24 19              5796 	add	a,#0x19
   2338 F8                 5797 	mov	r0,a
                           5798 ;     genPlusIncr
   2339 74 03              5799 	mov	a,#0x03
   233B 26                 5800 	add	a,@r0
   233C FE                 5801 	mov	r6,a
                           5802 ;	Peephole 181	changed mov to clr
   233D E4                 5803 	clr	a
   233E 08                 5804 	inc	r0
   233F 36                 5805 	addc	a,@r0
   2340 FF                 5806 	mov	r7,a
   2341 08                 5807 	inc	r0
   2342 86 03              5808 	mov	ar3,@r0
                           5809 ;	genPointerGet
                           5810 ;	genGenPointerGet
   2344 8E 82              5811 	mov	dpl,r6
   2346 8F 83              5812 	mov	dph,r7
   2348 8B F0              5813 	mov	b,r3
   234A 12 47 8A           5814 	lcall	__gptrget
   234D FE                 5815 	mov	r6,a
                           5816 ;	genCast
                           5817 ;	genLeftShift
                           5818 ;	genLeftShiftLiteral
                           5819 ;	Peephole 3.c	changed mov to clr
                           5820 ;	Peephole 3.b	changed mov to clr
   234E E4                 5821 	clr	a
   234F FB                 5822 	mov	r3,a
   2350 FC                 5823 	mov	r4,a
   2351 FD                 5824 	mov	r5,a
   2352 E5 0F              5825 	mov	a,_bp
   2354 24 1C              5826 	add	a,#0x1c
                           5827 ;	genlshFour
                           5828 ;	Peephole 185	changed order of increment (acc incremented also!)
   2356 04                 5829 	inc	a
                           5830 ;	Peephole 185	changed order of increment (acc incremented also!)
   2357 04                 5831 	inc	a
                           5832 ;	Peephole 185	changed order of increment (acc incremented also!)
   2358 04                 5833 	inc	a
   2359 F8                 5834 	mov	r0,a
   235A A6 06              5835 	mov	@r0,ar6
   235C 18                 5836 	dec	r0
   235D 18                 5837 	dec	r0
   235E 18                 5838 	dec	r0
   235F 76 00              5839 	mov	@r0,#0x00
   2361 08                 5840 	inc	r0
   2362 76 00              5841 	mov	@r0,#0x00
   2364 08                 5842 	inc	r0
   2365 76 00              5843 	mov	@r0,#0x00
                           5844 ;	genPlus
   2367 E5 0F              5845 	mov	a,_bp
   2369 24 19              5846 	add	a,#0x19
   236B F8                 5847 	mov	r0,a
                           5848 ;     genPlusIncr
   236C 74 02              5849 	mov	a,#0x02
   236E 26                 5850 	add	a,@r0
   236F FF                 5851 	mov	r7,a
                           5852 ;	Peephole 181	changed mov to clr
   2370 E4                 5853 	clr	a
   2371 08                 5854 	inc	r0
   2372 36                 5855 	addc	a,@r0
   2373 FB                 5856 	mov	r3,a
   2374 08                 5857 	inc	r0
   2375 86 04              5858 	mov	ar4,@r0
                           5859 ;	genPointerGet
                           5860 ;	genGenPointerGet
   2377 8F 82              5861 	mov	dpl,r7
   2379 8B 83              5862 	mov	dph,r3
   237B 8C F0              5863 	mov	b,r4
   237D 12 47 8A           5864 	lcall	__gptrget
   2380 FF                 5865 	mov	r7,a
                           5866 ;	genCast
   2381 7B 00              5867 	mov	r3,#0x00
   2383 7C 00              5868 	mov	r4,#0x00
                           5869 ;	genLeftShift
                           5870 ;	genLeftShiftLiteral
                           5871 ;	genlshFour
                           5872 ;	peephole 177.e	removed redundant move
   2385 8B 05              5873 	mov	ar5,r3
   2387 8F 04              5874 	mov	ar4,r7
                           5875 ;	genOr
                           5876 ;	Peephole 3.c	changed mov to clr
   2389 E4                 5877 	clr	a
   238A FB                 5878 	mov	r3,a
   238B FF                 5879 	mov	r7,a
   238C E5 0F              5880 	mov	a,_bp
   238E 24 1C              5881 	add	a,#0x1c
   2390 F8                 5882 	mov	r0,a
   2391 EF                 5883 	mov	a,r7
   2392 46                 5884 	orl	a,@r0
   2393 F6                 5885 	mov	@r0,a
   2394 EB                 5886 	mov	a,r3
   2395 08                 5887 	inc	r0
   2396 46                 5888 	orl	a,@r0
   2397 F6                 5889 	mov	@r0,a
   2398 EC                 5890 	mov	a,r4
   2399 08                 5891 	inc	r0
   239A 46                 5892 	orl	a,@r0
   239B F6                 5893 	mov	@r0,a
   239C ED                 5894 	mov	a,r5
   239D 08                 5895 	inc	r0
   239E 46                 5896 	orl	a,@r0
   239F F6                 5897 	mov	@r0,a
                           5898 ;	genPlus
   23A0 E5 0F              5899 	mov	a,_bp
   23A2 24 19              5900 	add	a,#0x19
   23A4 F8                 5901 	mov	r0,a
                           5902 ;     genPlusIncr
   23A5 74 01              5903 	mov	a,#0x01
   23A7 26                 5904 	add	a,@r0
   23A8 FE                 5905 	mov	r6,a
                           5906 ;	Peephole 181	changed mov to clr
   23A9 E4                 5907 	clr	a
   23AA 08                 5908 	inc	r0
   23AB 36                 5909 	addc	a,@r0
   23AC FB                 5910 	mov	r3,a
   23AD 08                 5911 	inc	r0
   23AE 86 04              5912 	mov	ar4,@r0
                           5913 ;	genPointerGet
                           5914 ;	genGenPointerGet
   23B0 8E 82              5915 	mov	dpl,r6
   23B2 8B 83              5916 	mov	dph,r3
   23B4 8C F0              5917 	mov	b,r4
   23B6 12 47 8A           5918 	lcall	__gptrget
   23B9 FE                 5919 	mov	r6,a
                           5920 ;	genCast
                           5921 ;	genLeftShift
                           5922 ;	genLeftShiftLiteral
                           5923 ;	genlshTwo
                           5924 ;	peephole 177.e	removed redundant move
   23BA 8E 03              5925 	mov	ar3,r6
                           5926 ;	genCast
                           5927 ;	genOr
                           5928 ;	Peephole 3.c	changed mov to clr
                           5929 ;	Peephole 3.b	changed mov to clr
   23BC E4                 5930 	clr	a
   23BD FE                 5931 	mov	r6,a
   23BE FC                 5932 	mov	r4,a
   23BF FD                 5933 	mov	r5,a
   23C0 E5 0F              5934 	mov	a,_bp
   23C2 24 1C              5935 	add	a,#0x1c
   23C4 F8                 5936 	mov	r0,a
   23C5 EE                 5937 	mov	a,r6
   23C6 46                 5938 	orl	a,@r0
   23C7 F6                 5939 	mov	@r0,a
   23C8 EB                 5940 	mov	a,r3
   23C9 08                 5941 	inc	r0
   23CA 46                 5942 	orl	a,@r0
   23CB F6                 5943 	mov	@r0,a
   23CC EC                 5944 	mov	a,r4
   23CD 08                 5945 	inc	r0
   23CE 46                 5946 	orl	a,@r0
   23CF F6                 5947 	mov	@r0,a
   23D0 ED                 5948 	mov	a,r5
   23D1 08                 5949 	inc	r0
   23D2 46                 5950 	orl	a,@r0
   23D3 F6                 5951 	mov	@r0,a
                           5952 ;	genPointerGet
                           5953 ;	genGenPointerGet
   23D4 E5 0F              5954 	mov	a,_bp
   23D6 24 19              5955 	add	a,#0x19
   23D8 F8                 5956 	mov	r0,a
   23D9 86 82              5957 	mov	dpl,@r0
   23DB 08                 5958 	inc	r0
   23DC 86 83              5959 	mov	dph,@r0
   23DE 08                 5960 	inc	r0
   23DF 86 F0              5961 	mov	b,@r0
   23E1 12 47 8A           5962 	lcall	__gptrget
   23E4 FF                 5963 	mov	r7,a
                           5964 ;	genCast
                           5965 ;	genOr
                           5966 ;	Peephole 3.c	changed mov to clr
                           5967 ;	Peephole 3.b	changed mov to clr
   23E5 E4                 5968 	clr	a
   23E6 FB                 5969 	mov	r3,a
   23E7 FC                 5970 	mov	r4,a
   23E8 FD                 5971 	mov	r5,a
   23E9 E5 0F              5972 	mov	a,_bp
   23EB 24 1C              5973 	add	a,#0x1c
   23ED F8                 5974 	mov	r0,a
   23EE E6                 5975 	mov	a,@r0
   23EF 42 07              5976 	orl	ar7,a
   23F1 08                 5977 	inc	r0
   23F2 E6                 5978 	mov	a,@r0
   23F3 42 03              5979 	orl	ar3,a
   23F5 08                 5980 	inc	r0
   23F6 E6                 5981 	mov	a,@r0
   23F7 42 04              5982 	orl	ar4,a
   23F9 08                 5983 	inc	r0
   23FA E6                 5984 	mov	a,@r0
   23FB 42 05              5985 	orl	ar5,a
                           5986 ;	genAssign
   23FD E5 0F              5987 	mov	a,_bp
   23FF 24 05              5988 	add	a,#0x05
   2401 F8                 5989 	mov	r0,a
   2402 A6 07              5990 	mov	@r0,ar7
   2404 08                 5991 	inc	r0
   2405 A6 03              5992 	mov	@r0,ar3
   2407 08                 5993 	inc	r0
   2408 A6 04              5994 	mov	@r0,ar4
   240A 08                 5995 	inc	r0
   240B A6 05              5996 	mov	@r0,ar5
                    182C   5997 	C$tff.c$684$3$5 ==.
                           5998 ;	tff.c:684: fmt = check_fs(bootsect);				/* Check the partition */
                           5999 ;	genCall
   240D E5 0F              6000 	mov	a,_bp
   240F 24 05              6001 	add	a,#0x05
   2411 F8                 6002 	mov	r0,a
   2412 86 82              6003 	mov	dpl,@r0
   2414 08                 6004 	inc	r0
   2415 86 83              6005 	mov	dph,@r0
   2417 08                 6006 	inc	r0
   2418 86 F0              6007 	mov	b,@r0
   241A 08                 6008 	inc	r0
   241B E6                 6009 	mov	a,@r0
   241C 12 20 5A           6010 	lcall	_check_fs
   241F AB 82              6011 	mov	r3,dpl
                           6012 ;	genAssign
   2421 E5 0F              6013 	mov	a,_bp
   2423 24 04              6014 	add	a,#0x04
   2425 F8                 6015 	mov	r0,a
   2426 A6 03              6016 	mov	@r0,ar3
   2428                    6017 00117$:
                    1847   6018 	C$tff.c$687$1$1 ==.
                           6019 ;	tff.c:687: if (fmt || LD_WORD(&fs->win[BPB_BytsPerSec]) != 512)	/* No valid FAT patition is found */
                           6020 ;	genIfx
   2428 E5 0F              6021 	mov	a,_bp
   242A 24 04              6022 	add	a,#0x04
   242C F8                 6023 	mov	r0,a
   242D E6                 6024 	mov	a,@r0
                           6025 ;	genIfxJump
                           6026 ;	Peephole 108.b	removed ljmp by inverse jump logic
   242E 70 47              6027 	jnz	00118$
                           6028 ;	Peephole 300	removed redundant label 00161$
                           6029 ;	genPlus
   2430 E5 0F              6030 	mov	a,_bp
   2432 24 15              6031 	add	a,#0x15
   2434 F8                 6032 	mov	r0,a
                           6033 ;     genPlusIncr
   2435 74 20              6034 	mov	a,#0x20
   2437 26                 6035 	add	a,@r0
   2438 FB                 6036 	mov	r3,a
                           6037 ;	Peephole 181	changed mov to clr
   2439 E4                 6038 	clr	a
   243A 08                 6039 	inc	r0
   243B 36                 6040 	addc	a,@r0
   243C FC                 6041 	mov	r4,a
   243D 08                 6042 	inc	r0
   243E 86 05              6043 	mov	ar5,@r0
                           6044 ;	genPlus
                           6045 ;     genPlusIncr
   2440 74 0B              6046 	mov	a,#0x0B
                           6047 ;	Peephole 236.a	used r3 instead of ar3
   2442 2B                 6048 	add	a,r3
   2443 FA                 6049 	mov	r2,a
                           6050 ;	Peephole 181	changed mov to clr
   2444 E4                 6051 	clr	a
                           6052 ;	Peephole 236.b	used r4 instead of ar4
   2445 3C                 6053 	addc	a,r4
   2446 FC                 6054 	mov	r4,a
                           6055 ;	genPlus
                           6056 ;     genPlusIncr
   2447 74 01              6057 	mov	a,#0x01
                           6058 ;	Peephole 236.a	used r2 instead of ar2
   2449 2A                 6059 	add	a,r2
   244A FE                 6060 	mov	r6,a
                           6061 ;	Peephole 181	changed mov to clr
   244B E4                 6062 	clr	a
                           6063 ;	Peephole 236.b	used r4 instead of ar4
   244C 3C                 6064 	addc	a,r4
   244D FF                 6065 	mov	r7,a
   244E 8D 03              6066 	mov	ar3,r5
                           6067 ;	genPointerGet
                           6068 ;	genGenPointerGet
   2450 8E 82              6069 	mov	dpl,r6
   2452 8F 83              6070 	mov	dph,r7
   2454 8B F0              6071 	mov	b,r3
   2456 12 47 8A           6072 	lcall	__gptrget
   2459 FE                 6073 	mov	r6,a
                           6074 ;	genCast
                           6075 ;	genLeftShift
                           6076 ;	genLeftShiftLiteral
                           6077 ;	genlshTwo
                           6078 ;	peephole 177.e	removed redundant move
   245A 8E 03              6079 	mov	ar3,r6
   245C 7E 00              6080 	mov	r6,#0x00
                           6081 ;	genPointerGet
                           6082 ;	genGenPointerGet
   245E 8A 82              6083 	mov	dpl,r2
   2460 8C 83              6084 	mov	dph,r4
   2462 8D F0              6085 	mov	b,r5
   2464 12 47 8A           6086 	lcall	__gptrget
                           6087 ;	genCast
                           6088 ;	genOr
   2467 FC                 6089 	mov	r4,a
   2468 7D 00              6090 	mov	r5,#0x00
                           6091 ;	Peephole 177.d	removed redundant move
   246A 42 06              6092 	orl	ar6,a
   246C ED                 6093 	mov	a,r5
   246D 42 03              6094 	orl	ar3,a
                           6095 ;	genCmpEq
                           6096 ;	gencjneshort
   246F BE 00 05           6097 	cjne	r6,#0x00,00162$
   2472 BB 02 02           6098 	cjne	r3,#0x02,00162$
                           6099 ;	Peephole 112.b	changed ljmp to sjmp
   2475 80 06              6100 	sjmp	00119$
   2477                    6101 00162$:
   2477                    6102 00118$:
                    1896   6103 	C$tff.c$688$1$1 ==.
                           6104 ;	tff.c:688: return FR_NO_FILESYSTEM;
                           6105 ;	genRet
   2477 75 82 0B           6106 	mov	dpl,#0x0B
   247A 02 2D 5A           6107 	ljmp	00132$
   247D                    6108 00119$:
                    189C   6109 	C$tff.c$691$1$1 ==.
                           6110 ;	tff.c:691: fatsize = LD_WORD(&fs->win[BPB_FATSz16]);			/* Number of sectors per FAT */
                           6111 ;	genPlus
   247D E5 0F              6112 	mov	a,_bp
   247F 24 15              6113 	add	a,#0x15
   2481 F8                 6114 	mov	r0,a
                           6115 ;     genPlusIncr
   2482 74 20              6116 	mov	a,#0x20
   2484 26                 6117 	add	a,@r0
   2485 FB                 6118 	mov	r3,a
                           6119 ;	Peephole 181	changed mov to clr
   2486 E4                 6120 	clr	a
   2487 08                 6121 	inc	r0
   2488 36                 6122 	addc	a,@r0
   2489 FC                 6123 	mov	r4,a
   248A 08                 6124 	inc	r0
   248B 86 05              6125 	mov	ar5,@r0
                           6126 ;	genPlus
                           6127 ;     genPlusIncr
   248D 74 16              6128 	mov	a,#0x16
                           6129 ;	Peephole 236.a	used r3 instead of ar3
   248F 2B                 6130 	add	a,r3
   2490 FA                 6131 	mov	r2,a
                           6132 ;	Peephole 181	changed mov to clr
   2491 E4                 6133 	clr	a
                           6134 ;	Peephole 236.b	used r4 instead of ar4
   2492 3C                 6135 	addc	a,r4
   2493 FC                 6136 	mov	r4,a
                           6137 ;	genPlus
                           6138 ;     genPlusIncr
   2494 74 01              6139 	mov	a,#0x01
                           6140 ;	Peephole 236.a	used r2 instead of ar2
   2496 2A                 6141 	add	a,r2
   2497 FE                 6142 	mov	r6,a
                           6143 ;	Peephole 181	changed mov to clr
   2498 E4                 6144 	clr	a
                           6145 ;	Peephole 236.b	used r4 instead of ar4
   2499 3C                 6146 	addc	a,r4
   249A FF                 6147 	mov	r7,a
   249B 8D 03              6148 	mov	ar3,r5
                           6149 ;	genPointerGet
                           6150 ;	genGenPointerGet
   249D 8E 82              6151 	mov	dpl,r6
   249F 8F 83              6152 	mov	dph,r7
   24A1 8B F0              6153 	mov	b,r3
   24A3 12 47 8A           6154 	lcall	__gptrget
   24A6 FE                 6155 	mov	r6,a
                           6156 ;	genCast
                           6157 ;	genLeftShift
                           6158 ;	genLeftShiftLiteral
                           6159 ;	genlshTwo
                           6160 ;	peephole 177.e	removed redundant move
   24A7 8E 03              6161 	mov	ar3,r6
   24A9 7E 00              6162 	mov	r6,#0x00
                           6163 ;	genPointerGet
                           6164 ;	genGenPointerGet
   24AB 8A 82              6165 	mov	dpl,r2
   24AD 8C 83              6166 	mov	dph,r4
   24AF 8D F0              6167 	mov	b,r5
   24B1 12 47 8A           6168 	lcall	__gptrget
                           6169 ;	genCast
                           6170 ;	genOr
   24B4 FC                 6171 	mov	r4,a
   24B5 7D 00              6172 	mov	r5,#0x00
                           6173 ;	Peephole 177.d	removed redundant move
   24B7 42 06              6174 	orl	ar6,a
   24B9 ED                 6175 	mov	a,r5
   24BA 42 03              6176 	orl	ar3,a
                           6177 ;	genCast
   24BC E5 0F              6178 	mov	a,_bp
   24BE 24 09              6179 	add	a,#0x09
   24C0 F8                 6180 	mov	r0,a
   24C1 A6 06              6181 	mov	@r0,ar6
   24C3 08                 6182 	inc	r0
   24C4 A6 03              6183 	mov	@r0,ar3
   24C6 08                 6184 	inc	r0
   24C7 76 00              6185 	mov	@r0,#0x00
   24C9 08                 6186 	inc	r0
   24CA 76 00              6187 	mov	@r0,#0x00
                    18EB   6188 	C$tff.c$692$1$1 ==.
                           6189 ;	tff.c:692: if (!fatsize) fatsize = LD_DWORD(&fs->win[BPB_FATSz32]);
                           6190 ;	genIfx
   24CC E5 0F              6191 	mov	a,_bp
   24CE 24 09              6192 	add	a,#0x09
   24D0 F8                 6193 	mov	r0,a
   24D1 E6                 6194 	mov	a,@r0
   24D2 08                 6195 	inc	r0
   24D3 46                 6196 	orl	a,@r0
   24D4 08                 6197 	inc	r0
   24D5 46                 6198 	orl	a,@r0
   24D6 08                 6199 	inc	r0
   24D7 46                 6200 	orl	a,@r0
                           6201 ;	genIfxJump
   24D8 60 03              6202 	jz	00163$
   24DA 02 25 F7           6203 	ljmp	00122$
   24DD                    6204 00163$:
                           6205 ;	genPlus
   24DD E5 0F              6206 	mov	a,_bp
   24DF 24 15              6207 	add	a,#0x15
   24E1 F8                 6208 	mov	r0,a
                           6209 ;     genPlusIncr
   24E2 74 20              6210 	mov	a,#0x20
   24E4 26                 6211 	add	a,@r0
   24E5 FA                 6212 	mov	r2,a
                           6213 ;	Peephole 181	changed mov to clr
   24E6 E4                 6214 	clr	a
   24E7 08                 6215 	inc	r0
   24E8 36                 6216 	addc	a,@r0
   24E9 FB                 6217 	mov	r3,a
   24EA 08                 6218 	inc	r0
   24EB 86 04              6219 	mov	ar4,@r0
                           6220 ;	genPlus
                           6221 ;     genPlusIncr
   24ED 74 24              6222 	mov	a,#0x24
                           6223 ;	Peephole 236.a	used r2 instead of ar2
   24EF 2A                 6224 	add	a,r2
   24F0 FA                 6225 	mov	r2,a
                           6226 ;	Peephole 181	changed mov to clr
   24F1 E4                 6227 	clr	a
                           6228 ;	Peephole 236.b	used r3 instead of ar3
   24F2 3B                 6229 	addc	a,r3
   24F3 FB                 6230 	mov	r3,a
                           6231 ;	genPlus
                           6232 ;     genPlusIncr
   24F4 74 03              6233 	mov	a,#0x03
                           6234 ;	Peephole 236.a	used r2 instead of ar2
   24F6 2A                 6235 	add	a,r2
   24F7 FD                 6236 	mov	r5,a
                           6237 ;	Peephole 181	changed mov to clr
   24F8 E4                 6238 	clr	a
                           6239 ;	Peephole 236.b	used r3 instead of ar3
   24F9 3B                 6240 	addc	a,r3
   24FA FE                 6241 	mov	r6,a
   24FB 8C 07              6242 	mov	ar7,r4
                           6243 ;	genPointerGet
                           6244 ;	genGenPointerGet
   24FD 8D 82              6245 	mov	dpl,r5
   24FF 8E 83              6246 	mov	dph,r6
   2501 8F F0              6247 	mov	b,r7
   2503 12 47 8A           6248 	lcall	__gptrget
   2506 FF                 6249 	mov	r7,a
                           6250 ;	genCast
   2507 E5 0F              6251 	mov	a,_bp
   2509 24 20              6252 	add	a,#0x20
   250B F8                 6253 	mov	r0,a
   250C A6 07              6254 	mov	@r0,ar7
   250E 08                 6255 	inc	r0
   250F 76 00              6256 	mov	@r0,#0x00
   2511 08                 6257 	inc	r0
   2512 76 00              6258 	mov	@r0,#0x00
   2514 08                 6259 	inc	r0
   2515 76 00              6260 	mov	@r0,#0x00
                           6261 ;	genLeftShift
                           6262 ;	genLeftShiftLiteral
   2517 E5 0F              6263 	mov	a,_bp
   2519 24 20              6264 	add	a,#0x20
   251B F8                 6265 	mov	r0,a
                           6266 ;	genlshFour
   251C E6                 6267 	mov	a,@r0
   251D 08                 6268 	inc	r0
   251E 08                 6269 	inc	r0
   251F 08                 6270 	inc	r0
   2520 F6                 6271 	mov	@r0,a
   2521 18                 6272 	dec	r0
   2522 18                 6273 	dec	r0
   2523 18                 6274 	dec	r0
   2524 76 00              6275 	mov	@r0,#0x00
   2526 08                 6276 	inc	r0
   2527 76 00              6277 	mov	@r0,#0x00
   2529 08                 6278 	inc	r0
   252A 76 00              6279 	mov	@r0,#0x00
                           6280 ;	genPlus
                           6281 ;     genPlusIncr
   252C 74 02              6282 	mov	a,#0x02
                           6283 ;	Peephole 236.a	used r2 instead of ar2
   252E 2A                 6284 	add	a,r2
   252F FD                 6285 	mov	r5,a
                           6286 ;	Peephole 181	changed mov to clr
   2530 E4                 6287 	clr	a
                           6288 ;	Peephole 236.b	used r3 instead of ar3
   2531 3B                 6289 	addc	a,r3
   2532 FE                 6290 	mov	r6,a
   2533 8C 07              6291 	mov	ar7,r4
                           6292 ;	genPointerGet
                           6293 ;	genGenPointerGet
   2535 8D 82              6294 	mov	dpl,r5
   2537 8E 83              6295 	mov	dph,r6
   2539 8F F0              6296 	mov	b,r7
   253B 12 47 8A           6297 	lcall	__gptrget
   253E FF                 6298 	mov	r7,a
                           6299 ;	genCast
   253F E5 0F              6300 	mov	a,_bp
   2541 24 24              6301 	add	a,#0x24
   2543 F8                 6302 	mov	r0,a
   2544 A6 07              6303 	mov	@r0,ar7
   2546 08                 6304 	inc	r0
   2547 76 00              6305 	mov	@r0,#0x00
   2549 08                 6306 	inc	r0
   254A 76 00              6307 	mov	@r0,#0x00
   254C 08                 6308 	inc	r0
   254D 76 00              6309 	mov	@r0,#0x00
                           6310 ;	genLeftShift
                           6311 ;	genLeftShiftLiteral
   254F E5 0F              6312 	mov	a,_bp
   2551 24 24              6313 	add	a,#0x24
                           6314 ;	genlshFour
                           6315 ;	Peephole 185	changed order of increment (acc incremented also!)
   2553 04                 6316 	inc	a
   2554 F8                 6317 	mov	r0,a
   2555 E6                 6318 	mov	a,@r0
   2556 08                 6319 	inc	r0
   2557 08                 6320 	inc	r0
   2558 F6                 6321 	mov	@r0,a
   2559 18                 6322 	dec	r0
   255A 18                 6323 	dec	r0
   255B 18                 6324 	dec	r0
   255C E6                 6325 	mov	a,@r0
   255D 08                 6326 	inc	r0
   255E 08                 6327 	inc	r0
   255F F6                 6328 	mov	@r0,a
   2560 18                 6329 	dec	r0
   2561 76 00              6330 	mov	@r0,#0x00
   2563 18                 6331 	dec	r0
   2564 76 00              6332 	mov	@r0,#0x00
                           6333 ;	genOr
   2566 E5 0F              6334 	mov	a,_bp
   2568 24 20              6335 	add	a,#0x20
   256A F8                 6336 	mov	r0,a
   256B E5 0F              6337 	mov	a,_bp
   256D 24 24              6338 	add	a,#0x24
   256F F9                 6339 	mov	r1,a
   2570 E6                 6340 	mov	a,@r0
   2571 47                 6341 	orl	a,@r1
   2572 F7                 6342 	mov	@r1,a
   2573 08                 6343 	inc	r0
   2574 E6                 6344 	mov	a,@r0
   2575 09                 6345 	inc	r1
   2576 47                 6346 	orl	a,@r1
   2577 F7                 6347 	mov	@r1,a
   2578 08                 6348 	inc	r0
   2579 E6                 6349 	mov	a,@r0
   257A 09                 6350 	inc	r1
   257B 47                 6351 	orl	a,@r1
   257C F7                 6352 	mov	@r1,a
   257D 08                 6353 	inc	r0
   257E E6                 6354 	mov	a,@r0
   257F 09                 6355 	inc	r1
   2580 47                 6356 	orl	a,@r1
   2581 F7                 6357 	mov	@r1,a
                           6358 ;	genPlus
                           6359 ;     genPlusIncr
   2582 74 01              6360 	mov	a,#0x01
                           6361 ;	Peephole 236.a	used r2 instead of ar2
   2584 2A                 6362 	add	a,r2
   2585 FD                 6363 	mov	r5,a
                           6364 ;	Peephole 181	changed mov to clr
   2586 E4                 6365 	clr	a
                           6366 ;	Peephole 236.b	used r3 instead of ar3
   2587 3B                 6367 	addc	a,r3
   2588 FE                 6368 	mov	r6,a
   2589 8C 07              6369 	mov	ar7,r4
                           6370 ;	genPointerGet
                           6371 ;	genGenPointerGet
   258B 8D 82              6372 	mov	dpl,r5
   258D 8E 83              6373 	mov	dph,r6
   258F 8F F0              6374 	mov	b,r7
   2591 12 47 8A           6375 	lcall	__gptrget
   2594 FF                 6376 	mov	r7,a
                           6377 ;	genCast
                           6378 ;	genLeftShift
                           6379 ;	genLeftShiftLiteral
                           6380 ;	genlshTwo
                           6381 ;	peephole 177.e	removed redundant move
   2595 8F 05              6382 	mov	ar5,r7
   2597 7E 00              6383 	mov	r6,#0x00
                           6384 ;	genCast
   2599 E5 0F              6385 	mov	a,_bp
   259B 24 20              6386 	add	a,#0x20
   259D F8                 6387 	mov	r0,a
   259E A6 06              6388 	mov	@r0,ar6
   25A0 08                 6389 	inc	r0
   25A1 A6 05              6390 	mov	@r0,ar5
   25A3 08                 6391 	inc	r0
   25A4 76 00              6392 	mov	@r0,#0x00
   25A6 08                 6393 	inc	r0
   25A7 76 00              6394 	mov	@r0,#0x00
                           6395 ;	genOr
   25A9 E5 0F              6396 	mov	a,_bp
   25AB 24 24              6397 	add	a,#0x24
   25AD F8                 6398 	mov	r0,a
   25AE E5 0F              6399 	mov	a,_bp
   25B0 24 20              6400 	add	a,#0x20
   25B2 F9                 6401 	mov	r1,a
   25B3 E7                 6402 	mov	a,@r1
   25B4 46                 6403 	orl	a,@r0
   25B5 F6                 6404 	mov	@r0,a
   25B6 09                 6405 	inc	r1
   25B7 E7                 6406 	mov	a,@r1
   25B8 08                 6407 	inc	r0
   25B9 46                 6408 	orl	a,@r0
   25BA F6                 6409 	mov	@r0,a
   25BB 09                 6410 	inc	r1
   25BC E7                 6411 	mov	a,@r1
   25BD 08                 6412 	inc	r0
   25BE 46                 6413 	orl	a,@r0
   25BF F6                 6414 	mov	@r0,a
   25C0 09                 6415 	inc	r1
   25C1 E7                 6416 	mov	a,@r1
   25C2 08                 6417 	inc	r0
   25C3 46                 6418 	orl	a,@r0
   25C4 F6                 6419 	mov	@r0,a
                           6420 ;	genPointerGet
                           6421 ;	genGenPointerGet
   25C5 8A 82              6422 	mov	dpl,r2
   25C7 8B 83              6423 	mov	dph,r3
   25C9 8C F0              6424 	mov	b,r4
   25CB 12 47 8A           6425 	lcall	__gptrget
   25CE FF                 6426 	mov	r7,a
                           6427 ;	genCast
                           6428 ;	genOr
                           6429 ;	Peephole 3.c	changed mov to clr
                           6430 ;	Peephole 3.b	changed mov to clr
   25CF E4                 6431 	clr	a
   25D0 FA                 6432 	mov	r2,a
   25D1 FB                 6433 	mov	r3,a
   25D2 FC                 6434 	mov	r4,a
   25D3 E5 0F              6435 	mov	a,_bp
   25D5 24 24              6436 	add	a,#0x24
   25D7 F8                 6437 	mov	r0,a
   25D8 EF                 6438 	mov	a,r7
   25D9 46                 6439 	orl	a,@r0
   25DA FD                 6440 	mov	r5,a
   25DB EA                 6441 	mov	a,r2
   25DC 08                 6442 	inc	r0
   25DD 46                 6443 	orl	a,@r0
   25DE FA                 6444 	mov	r2,a
   25DF EB                 6445 	mov	a,r3
   25E0 08                 6446 	inc	r0
   25E1 46                 6447 	orl	a,@r0
   25E2 FB                 6448 	mov	r3,a
   25E3 EC                 6449 	mov	a,r4
   25E4 08                 6450 	inc	r0
   25E5 46                 6451 	orl	a,@r0
   25E6 FC                 6452 	mov	r4,a
                           6453 ;	genAssign
   25E7 E5 0F              6454 	mov	a,_bp
   25E9 24 09              6455 	add	a,#0x09
   25EB F8                 6456 	mov	r0,a
   25EC A6 05              6457 	mov	@r0,ar5
   25EE 08                 6458 	inc	r0
   25EF A6 02              6459 	mov	@r0,ar2
   25F1 08                 6460 	inc	r0
   25F2 A6 03              6461 	mov	@r0,ar3
   25F4 08                 6462 	inc	r0
   25F5 A6 04              6463 	mov	@r0,ar4
   25F7                    6464 00122$:
                    1A16   6465 	C$tff.c$693$1$1 ==.
                           6466 ;	tff.c:693: fs->sects_fat = (CLUST)fatsize;
                           6467 ;	genPlus
   25F7 E5 0F              6468 	mov	a,_bp
   25F9 24 15              6469 	add	a,#0x15
   25FB F8                 6470 	mov	r0,a
                           6471 ;     genPlusIncr
   25FC 74 14              6472 	mov	a,#0x14
   25FE 26                 6473 	add	a,@r0
   25FF FF                 6474 	mov	r7,a
                           6475 ;	Peephole 181	changed mov to clr
   2600 E4                 6476 	clr	a
   2601 08                 6477 	inc	r0
   2602 36                 6478 	addc	a,@r0
   2603 FB                 6479 	mov	r3,a
   2604 08                 6480 	inc	r0
   2605 86 04              6481 	mov	ar4,@r0
                           6482 ;	genPointerSet
                           6483 ;	genGenPointerSet
   2607 8F 82              6484 	mov	dpl,r7
   2609 8B 83              6485 	mov	dph,r3
   260B 8C F0              6486 	mov	b,r4
   260D E5 0F              6487 	mov	a,_bp
   260F 24 09              6488 	add	a,#0x09
   2611 F8                 6489 	mov	r0,a
   2612 E6                 6490 	mov	a,@r0
   2613 12 42 DC           6491 	lcall	__gptrput
   2616 A3                 6492 	inc	dptr
   2617 08                 6493 	inc	r0
   2618 E6                 6494 	mov	a,@r0
   2619 12 42 DC           6495 	lcall	__gptrput
   261C A3                 6496 	inc	dptr
   261D 08                 6497 	inc	r0
   261E E6                 6498 	mov	a,@r0
   261F 12 42 DC           6499 	lcall	__gptrput
   2622 A3                 6500 	inc	dptr
   2623 08                 6501 	inc	r0
   2624 E6                 6502 	mov	a,@r0
   2625 12 42 DC           6503 	lcall	__gptrput
                    1A47   6504 	C$tff.c$694$1$1 ==.
                           6505 ;	tff.c:694: fs->n_fats = fs->win[BPB_NumFATs];					/* Number of FAT copies */
                           6506 ;	genPlus
   2628 E5 0F              6507 	mov	a,_bp
   262A 24 15              6508 	add	a,#0x15
   262C F8                 6509 	mov	r0,a
                           6510 ;     genPlusIncr
   262D 74 1E              6511 	mov	a,#0x1E
   262F 26                 6512 	add	a,@r0
   2630 FA                 6513 	mov	r2,a
                           6514 ;	Peephole 181	changed mov to clr
   2631 E4                 6515 	clr	a
   2632 08                 6516 	inc	r0
   2633 36                 6517 	addc	a,@r0
   2634 FE                 6518 	mov	r6,a
   2635 08                 6519 	inc	r0
   2636 86 07              6520 	mov	ar7,@r0
                           6521 ;	genPlus
   2638 E5 0F              6522 	mov	a,_bp
   263A 24 15              6523 	add	a,#0x15
   263C F8                 6524 	mov	r0,a
   263D E5 0F              6525 	mov	a,_bp
   263F 24 20              6526 	add	a,#0x20
   2641 F9                 6527 	mov	r1,a
                           6528 ;     genPlusIncr
   2642 74 20              6529 	mov	a,#0x20
   2644 26                 6530 	add	a,@r0
   2645 F7                 6531 	mov	@r1,a
                           6532 ;	Peephole 181	changed mov to clr
   2646 E4                 6533 	clr	a
   2647 08                 6534 	inc	r0
   2648 36                 6535 	addc	a,@r0
   2649 09                 6536 	inc	r1
   264A F7                 6537 	mov	@r1,a
   264B 08                 6538 	inc	r0
   264C 09                 6539 	inc	r1
   264D E6                 6540 	mov	a,@r0
   264E F7                 6541 	mov	@r1,a
                           6542 ;	genPlus
   264F E5 0F              6543 	mov	a,_bp
   2651 24 20              6544 	add	a,#0x20
   2653 F8                 6545 	mov	r0,a
                           6546 ;     genPlusIncr
   2654 74 10              6547 	mov	a,#0x10
   2656 26                 6548 	add	a,@r0
   2657 FC                 6549 	mov	r4,a
                           6550 ;	Peephole 181	changed mov to clr
   2658 E4                 6551 	clr	a
   2659 08                 6552 	inc	r0
   265A 36                 6553 	addc	a,@r0
   265B FD                 6554 	mov	r5,a
   265C 08                 6555 	inc	r0
   265D 86 03              6556 	mov	ar3,@r0
                           6557 ;	genPointerGet
                           6558 ;	genGenPointerGet
   265F 8C 82              6559 	mov	dpl,r4
   2661 8D 83              6560 	mov	dph,r5
   2663 8B F0              6561 	mov	b,r3
   2665 12 47 8A           6562 	lcall	__gptrget
                           6563 ;	genPointerSet
                           6564 ;	genGenPointerSet
   2668 FC                 6565 	mov	r4,a
   2669 8A 82              6566 	mov	dpl,r2
   266B 8E 83              6567 	mov	dph,r6
   266D 8F F0              6568 	mov	b,r7
                           6569 ;	Peephole 191	removed redundant mov
   266F 12 42 DC           6570 	lcall	__gptrput
                    1A91   6571 	C$tff.c$695$1$1 ==.
                           6572 ;	tff.c:695: fatsize *= fs->n_fats;								/* (Number of sectors in FAT area) */
                           6573 ;	genCast
   2672 7B 00              6574 	mov	r3,#0x00
   2674 7D 00              6575 	mov	r5,#0x00
   2676 7E 00              6576 	mov	r6,#0x00
                           6577 ;	genIpush
   2678 C0 04              6578 	push	ar4
   267A C0 03              6579 	push	ar3
   267C C0 05              6580 	push	ar5
   267E C0 06              6581 	push	ar6
                           6582 ;	genCall
   2680 E5 0F              6583 	mov	a,_bp
   2682 24 09              6584 	add	a,#0x09
   2684 F8                 6585 	mov	r0,a
   2685 86 82              6586 	mov	dpl,@r0
   2687 08                 6587 	inc	r0
   2688 86 83              6588 	mov	dph,@r0
   268A 08                 6589 	inc	r0
   268B 86 F0              6590 	mov	b,@r0
   268D 08                 6591 	inc	r0
   268E E6                 6592 	mov	a,@r0
   268F 12 47 A6           6593 	lcall	__mullong
   2692 AB 82              6594 	mov	r3,dpl
   2694 AC 83              6595 	mov	r4,dph
   2696 AD F0              6596 	mov	r5,b
   2698 FE                 6597 	mov	r6,a
   2699 E5 81              6598 	mov	a,sp
   269B 24 FC              6599 	add	a,#0xfc
   269D F5 81              6600 	mov	sp,a
                           6601 ;	genAssign
   269F E5 0F              6602 	mov	a,_bp
   26A1 24 09              6603 	add	a,#0x09
   26A3 F8                 6604 	mov	r0,a
   26A4 A6 03              6605 	mov	@r0,ar3
   26A6 08                 6606 	inc	r0
   26A7 A6 04              6607 	mov	@r0,ar4
   26A9 08                 6608 	inc	r0
   26AA A6 05              6609 	mov	@r0,ar5
   26AC 08                 6610 	inc	r0
   26AD A6 06              6611 	mov	@r0,ar6
                    1ACE   6612 	C$tff.c$696$1$1 ==.
                           6613 ;	tff.c:696: fs->fatbase = bootsect + LD_WORD(&fs->win[BPB_RsvdSecCnt]);	/* FAT start sector (lba) */
                           6614 ;	genPlus
   26AF E5 0F              6615 	mov	a,_bp
   26B1 24 15              6616 	add	a,#0x15
   26B3 F8                 6617 	mov	r0,a
   26B4 E5 0F              6618 	mov	a,_bp
   26B6 24 24              6619 	add	a,#0x24
   26B8 F9                 6620 	mov	r1,a
                           6621 ;     genPlusIncr
   26B9 74 08              6622 	mov	a,#0x08
   26BB 26                 6623 	add	a,@r0
   26BC F7                 6624 	mov	@r1,a
                           6625 ;	Peephole 181	changed mov to clr
   26BD E4                 6626 	clr	a
   26BE 08                 6627 	inc	r0
   26BF 36                 6628 	addc	a,@r0
   26C0 09                 6629 	inc	r1
   26C1 F7                 6630 	mov	@r1,a
   26C2 08                 6631 	inc	r0
   26C3 09                 6632 	inc	r1
   26C4 E6                 6633 	mov	a,@r0
   26C5 F7                 6634 	mov	@r1,a
                           6635 ;	genPlus
   26C6 E5 0F              6636 	mov	a,_bp
   26C8 24 20              6637 	add	a,#0x20
   26CA F8                 6638 	mov	r0,a
                           6639 ;     genPlusIncr
   26CB 74 0E              6640 	mov	a,#0x0E
   26CD 26                 6641 	add	a,@r0
   26CE FA                 6642 	mov	r2,a
                           6643 ;	Peephole 181	changed mov to clr
   26CF E4                 6644 	clr	a
   26D0 08                 6645 	inc	r0
   26D1 36                 6646 	addc	a,@r0
   26D2 FE                 6647 	mov	r6,a
   26D3 08                 6648 	inc	r0
   26D4 86 07              6649 	mov	ar7,@r0
                           6650 ;	genPlus
                           6651 ;     genPlusIncr
   26D6 74 01              6652 	mov	a,#0x01
                           6653 ;	Peephole 236.a	used r2 instead of ar2
   26D8 2A                 6654 	add	a,r2
   26D9 FC                 6655 	mov	r4,a
                           6656 ;	Peephole 181	changed mov to clr
   26DA E4                 6657 	clr	a
                           6658 ;	Peephole 236.b	used r6 instead of ar6
   26DB 3E                 6659 	addc	a,r6
   26DC FD                 6660 	mov	r5,a
   26DD 8F 03              6661 	mov	ar3,r7
                           6662 ;	genPointerGet
                           6663 ;	genGenPointerGet
   26DF 8C 82              6664 	mov	dpl,r4
   26E1 8D 83              6665 	mov	dph,r5
   26E3 8B F0              6666 	mov	b,r3
   26E5 12 47 8A           6667 	lcall	__gptrget
   26E8 FC                 6668 	mov	r4,a
                           6669 ;	genCast
                           6670 ;	genLeftShift
                           6671 ;	genLeftShiftLiteral
                           6672 ;	genlshTwo
                           6673 ;	peephole 177.e	removed redundant move
   26E9 8C 03              6674 	mov	ar3,r4
   26EB 7C 00              6675 	mov	r4,#0x00
                           6676 ;	genPointerGet
                           6677 ;	genGenPointerGet
   26ED 8A 82              6678 	mov	dpl,r2
   26EF 8E 83              6679 	mov	dph,r6
   26F1 8F F0              6680 	mov	b,r7
   26F3 12 47 8A           6681 	lcall	__gptrget
                           6682 ;	genCast
                           6683 ;	genOr
   26F6 FD                 6684 	mov	r5,a
   26F7 7E 00              6685 	mov	r6,#0x00
                           6686 ;	Peephole 177.d	removed redundant move
   26F9 42 04              6687 	orl	ar4,a
   26FB EE                 6688 	mov	a,r6
   26FC 42 03              6689 	orl	ar3,a
                           6690 ;	genCast
                           6691 ;	genPlus
                           6692 ;	Peephole 3.c	changed mov to clr
   26FE E4                 6693 	clr	a
   26FF FD                 6694 	mov	r5,a
   2700 FE                 6695 	mov	r6,a
   2701 E5 0F              6696 	mov	a,_bp
   2703 24 05              6697 	add	a,#0x05
   2705 F8                 6698 	mov	r0,a
                           6699 ;	Peephole 236.g	used r4 instead of ar4
   2706 EC                 6700 	mov	a,r4
   2707 26                 6701 	add	a,@r0
   2708 FC                 6702 	mov	r4,a
                           6703 ;	Peephole 236.g	used r3 instead of ar3
   2709 EB                 6704 	mov	a,r3
   270A 08                 6705 	inc	r0
   270B 36                 6706 	addc	a,@r0
   270C FB                 6707 	mov	r3,a
                           6708 ;	Peephole 236.g	used r5 instead of ar5
   270D ED                 6709 	mov	a,r5
   270E 08                 6710 	inc	r0
   270F 36                 6711 	addc	a,@r0
   2710 FD                 6712 	mov	r5,a
                           6713 ;	Peephole 236.g	used r6 instead of ar6
   2711 EE                 6714 	mov	a,r6
   2712 08                 6715 	inc	r0
   2713 36                 6716 	addc	a,@r0
   2714 FE                 6717 	mov	r6,a
                           6718 ;	genPointerSet
                           6719 ;	genGenPointerSet
   2715 E5 0F              6720 	mov	a,_bp
   2717 24 24              6721 	add	a,#0x24
   2719 F8                 6722 	mov	r0,a
   271A 86 82              6723 	mov	dpl,@r0
   271C 08                 6724 	inc	r0
   271D 86 83              6725 	mov	dph,@r0
   271F 08                 6726 	inc	r0
   2720 86 F0              6727 	mov	b,@r0
   2722 EC                 6728 	mov	a,r4
   2723 12 42 DC           6729 	lcall	__gptrput
   2726 A3                 6730 	inc	dptr
   2727 EB                 6731 	mov	a,r3
   2728 12 42 DC           6732 	lcall	__gptrput
   272B A3                 6733 	inc	dptr
   272C ED                 6734 	mov	a,r5
   272D 12 42 DC           6735 	lcall	__gptrput
   2730 A3                 6736 	inc	dptr
   2731 EE                 6737 	mov	a,r6
   2732 12 42 DC           6738 	lcall	__gptrput
                    1B54   6739 	C$tff.c$697$1$1 ==.
                           6740 ;	tff.c:697: fs->sects_clust = fs->win[BPB_SecPerClus];			/* Number of sectors per cluster */
                           6741 ;	genPlus
   2735 E5 0F              6742 	mov	a,_bp
   2737 24 15              6743 	add	a,#0x15
   2739 F8                 6744 	mov	r0,a
   273A E5 0F              6745 	mov	a,_bp
   273C 24 1C              6746 	add	a,#0x1c
   273E F9                 6747 	mov	r1,a
                           6748 ;     genPlusIncr
   273F 74 1D              6749 	mov	a,#0x1D
   2741 26                 6750 	add	a,@r0
   2742 F7                 6751 	mov	@r1,a
                           6752 ;	Peephole 181	changed mov to clr
   2743 E4                 6753 	clr	a
   2744 08                 6754 	inc	r0
   2745 36                 6755 	addc	a,@r0
   2746 09                 6756 	inc	r1
   2747 F7                 6757 	mov	@r1,a
   2748 08                 6758 	inc	r0
   2749 09                 6759 	inc	r1
   274A E6                 6760 	mov	a,@r0
   274B F7                 6761 	mov	@r1,a
                           6762 ;	genPlus
   274C E5 0F              6763 	mov	a,_bp
   274E 24 20              6764 	add	a,#0x20
   2750 F8                 6765 	mov	r0,a
                           6766 ;     genPlusIncr
   2751 74 0D              6767 	mov	a,#0x0D
   2753 26                 6768 	add	a,@r0
   2754 FE                 6769 	mov	r6,a
                           6770 ;	Peephole 181	changed mov to clr
   2755 E4                 6771 	clr	a
   2756 08                 6772 	inc	r0
   2757 36                 6773 	addc	a,@r0
   2758 FF                 6774 	mov	r7,a
   2759 08                 6775 	inc	r0
   275A 86 03              6776 	mov	ar3,@r0
                           6777 ;	genPointerGet
                           6778 ;	genGenPointerGet
   275C 8E 82              6779 	mov	dpl,r6
   275E 8F 83              6780 	mov	dph,r7
   2760 8B F0              6781 	mov	b,r3
   2762 12 47 8A           6782 	lcall	__gptrget
   2765 FE                 6783 	mov	r6,a
                           6784 ;	genPointerSet
                           6785 ;	genGenPointerSet
   2766 E5 0F              6786 	mov	a,_bp
   2768 24 1C              6787 	add	a,#0x1c
   276A F8                 6788 	mov	r0,a
   276B 86 82              6789 	mov	dpl,@r0
   276D 08                 6790 	inc	r0
   276E 86 83              6791 	mov	dph,@r0
   2770 08                 6792 	inc	r0
   2771 86 F0              6793 	mov	b,@r0
   2773 EE                 6794 	mov	a,r6
   2774 12 42 DC           6795 	lcall	__gptrput
                    1B96   6796 	C$tff.c$698$1$1 ==.
                           6797 ;	tff.c:698: fs->n_rootdir = LD_WORD(&fs->win[BPB_RootEntCnt]);	/* Nmuber of root directory entries */
                           6798 ;	genPlus
   2777 E5 0F              6799 	mov	a,_bp
   2779 24 15              6800 	add	a,#0x15
   277B F8                 6801 	mov	r0,a
   277C E5 0F              6802 	mov	a,_bp
   277E 24 19              6803 	add	a,#0x19
   2780 F9                 6804 	mov	r1,a
                           6805 ;     genPlusIncr
   2781 74 02              6806 	mov	a,#0x02
   2783 26                 6807 	add	a,@r0
   2784 F7                 6808 	mov	@r1,a
                           6809 ;	Peephole 181	changed mov to clr
   2785 E4                 6810 	clr	a
   2786 08                 6811 	inc	r0
   2787 36                 6812 	addc	a,@r0
   2788 09                 6813 	inc	r1
   2789 F7                 6814 	mov	@r1,a
   278A 08                 6815 	inc	r0
   278B 09                 6816 	inc	r1
   278C E6                 6817 	mov	a,@r0
   278D F7                 6818 	mov	@r1,a
                           6819 ;	genPlus
   278E E5 0F              6820 	mov	a,_bp
   2790 24 20              6821 	add	a,#0x20
   2792 F8                 6822 	mov	r0,a
                           6823 ;     genPlusIncr
   2793 74 11              6824 	mov	a,#0x11
   2795 26                 6825 	add	a,@r0
   2796 FA                 6826 	mov	r2,a
                           6827 ;	Peephole 181	changed mov to clr
   2797 E4                 6828 	clr	a
   2798 08                 6829 	inc	r0
   2799 36                 6830 	addc	a,@r0
   279A FE                 6831 	mov	r6,a
   279B 08                 6832 	inc	r0
   279C 86 07              6833 	mov	ar7,@r0
                           6834 ;	genPlus
                           6835 ;     genPlusIncr
   279E 74 01              6836 	mov	a,#0x01
                           6837 ;	Peephole 236.a	used r2 instead of ar2
   27A0 2A                 6838 	add	a,r2
   27A1 FC                 6839 	mov	r4,a
                           6840 ;	Peephole 181	changed mov to clr
   27A2 E4                 6841 	clr	a
                           6842 ;	Peephole 236.b	used r6 instead of ar6
   27A3 3E                 6843 	addc	a,r6
   27A4 FD                 6844 	mov	r5,a
   27A5 8F 03              6845 	mov	ar3,r7
                           6846 ;	genPointerGet
                           6847 ;	genGenPointerGet
   27A7 8C 82              6848 	mov	dpl,r4
   27A9 8D 83              6849 	mov	dph,r5
   27AB 8B F0              6850 	mov	b,r3
   27AD 12 47 8A           6851 	lcall	__gptrget
   27B0 FC                 6852 	mov	r4,a
                           6853 ;	genCast
                           6854 ;	genLeftShift
                           6855 ;	genLeftShiftLiteral
                           6856 ;	genlshTwo
                           6857 ;	peephole 177.e	removed redundant move
   27B1 8C 03              6858 	mov	ar3,r4
   27B3 7C 00              6859 	mov	r4,#0x00
                           6860 ;	genPointerGet
                           6861 ;	genGenPointerGet
   27B5 8A 82              6862 	mov	dpl,r2
   27B7 8E 83              6863 	mov	dph,r6
   27B9 8F F0              6864 	mov	b,r7
   27BB 12 47 8A           6865 	lcall	__gptrget
                           6866 ;	genCast
                           6867 ;	genOr
   27BE FD                 6868 	mov	r5,a
   27BF 7E 00              6869 	mov	r6,#0x00
                           6870 ;	Peephole 177.d	removed redundant move
   27C1 42 04              6871 	orl	ar4,a
   27C3 EE                 6872 	mov	a,r6
   27C4 42 03              6873 	orl	ar3,a
                           6874 ;	genPointerSet
                           6875 ;	genGenPointerSet
   27C6 E5 0F              6876 	mov	a,_bp
   27C8 24 19              6877 	add	a,#0x19
   27CA F8                 6878 	mov	r0,a
   27CB 86 82              6879 	mov	dpl,@r0
   27CD 08                 6880 	inc	r0
   27CE 86 83              6881 	mov	dph,@r0
   27D0 08                 6882 	inc	r0
   27D1 86 F0              6883 	mov	b,@r0
   27D3 EC                 6884 	mov	a,r4
   27D4 12 42 DC           6885 	lcall	__gptrput
   27D7 A3                 6886 	inc	dptr
   27D8 EB                 6887 	mov	a,r3
   27D9 12 42 DC           6888 	lcall	__gptrput
                    1BFB   6889 	C$tff.c$699$1$1 ==.
                           6890 ;	tff.c:699: totalsect = LD_WORD(&fs->win[BPB_TotSec16]);		/* Number of sectors on the file system */
                           6891 ;	genPlus
   27DC E5 0F              6892 	mov	a,_bp
   27DE 24 20              6893 	add	a,#0x20
   27E0 F8                 6894 	mov	r0,a
                           6895 ;     genPlusIncr
   27E1 74 13              6896 	mov	a,#0x13
   27E3 26                 6897 	add	a,@r0
   27E4 FA                 6898 	mov	r2,a
                           6899 ;	Peephole 181	changed mov to clr
   27E5 E4                 6900 	clr	a
   27E6 08                 6901 	inc	r0
   27E7 36                 6902 	addc	a,@r0
   27E8 FC                 6903 	mov	r4,a
   27E9 08                 6904 	inc	r0
   27EA 86 05              6905 	mov	ar5,@r0
                           6906 ;	genPlus
                           6907 ;     genPlusIncr
   27EC 74 01              6908 	mov	a,#0x01
                           6909 ;	Peephole 236.a	used r2 instead of ar2
   27EE 2A                 6910 	add	a,r2
   27EF FE                 6911 	mov	r6,a
                           6912 ;	Peephole 181	changed mov to clr
   27F0 E4                 6913 	clr	a
                           6914 ;	Peephole 236.b	used r4 instead of ar4
   27F1 3C                 6915 	addc	a,r4
   27F2 FF                 6916 	mov	r7,a
   27F3 8D 03              6917 	mov	ar3,r5
                           6918 ;	genPointerGet
                           6919 ;	genGenPointerGet
   27F5 8E 82              6920 	mov	dpl,r6
   27F7 8F 83              6921 	mov	dph,r7
   27F9 8B F0              6922 	mov	b,r3
   27FB 12 47 8A           6923 	lcall	__gptrget
   27FE FE                 6924 	mov	r6,a
                           6925 ;	genCast
                           6926 ;	genLeftShift
                           6927 ;	genLeftShiftLiteral
                           6928 ;	genlshTwo
                           6929 ;	peephole 177.e	removed redundant move
   27FF 8E 03              6930 	mov	ar3,r6
   2801 7E 00              6931 	mov	r6,#0x00
                           6932 ;	genPointerGet
                           6933 ;	genGenPointerGet
   2803 8A 82              6934 	mov	dpl,r2
   2805 8C 83              6935 	mov	dph,r4
   2807 8D F0              6936 	mov	b,r5
   2809 12 47 8A           6937 	lcall	__gptrget
                           6938 ;	genCast
                           6939 ;	genOr
   280C FC                 6940 	mov	r4,a
   280D 7D 00              6941 	mov	r5,#0x00
                           6942 ;	Peephole 177.d	removed redundant move
   280F 42 06              6943 	orl	ar6,a
   2811 ED                 6944 	mov	a,r5
   2812 42 03              6945 	orl	ar3,a
                           6946 ;	genCast
   2814 E5 0F              6947 	mov	a,_bp
   2816 24 0D              6948 	add	a,#0x0d
   2818 F8                 6949 	mov	r0,a
   2819 A6 06              6950 	mov	@r0,ar6
   281B 08                 6951 	inc	r0
   281C A6 03              6952 	mov	@r0,ar3
   281E 08                 6953 	inc	r0
   281F 76 00              6954 	mov	@r0,#0x00
   2821 08                 6955 	inc	r0
   2822 76 00              6956 	mov	@r0,#0x00
                    1C43   6957 	C$tff.c$700$1$1 ==.
                           6958 ;	tff.c:700: if (!totalsect) totalsect = LD_DWORD(&fs->win[BPB_TotSec32]);
                           6959 ;	genIfx
   2824 E5 0F              6960 	mov	a,_bp
   2826 24 0D              6961 	add	a,#0x0d
   2828 F8                 6962 	mov	r0,a
   2829 E6                 6963 	mov	a,@r0
   282A 08                 6964 	inc	r0
   282B 46                 6965 	orl	a,@r0
   282C 08                 6966 	inc	r0
   282D 46                 6967 	orl	a,@r0
   282E 08                 6968 	inc	r0
   282F 46                 6969 	orl	a,@r0
                           6970 ;	genIfxJump
   2830 60 03              6971 	jz	00164$
   2832 02 29 4F           6972 	ljmp	00124$
   2835                    6973 00164$:
                           6974 ;	genPlus
   2835 E5 0F              6975 	mov	a,_bp
   2837 24 15              6976 	add	a,#0x15
   2839 F8                 6977 	mov	r0,a
                           6978 ;     genPlusIncr
   283A 74 20              6979 	mov	a,#0x20
   283C 26                 6980 	add	a,@r0
   283D FA                 6981 	mov	r2,a
                           6982 ;	Peephole 181	changed mov to clr
   283E E4                 6983 	clr	a
   283F 08                 6984 	inc	r0
   2840 36                 6985 	addc	a,@r0
   2841 FB                 6986 	mov	r3,a
   2842 08                 6987 	inc	r0
   2843 86 04              6988 	mov	ar4,@r0
                           6989 ;	genPlus
                           6990 ;     genPlusIncr
   2845 74 20              6991 	mov	a,#0x20
                           6992 ;	Peephole 236.a	used r2 instead of ar2
   2847 2A                 6993 	add	a,r2
   2848 FA                 6994 	mov	r2,a
                           6995 ;	Peephole 181	changed mov to clr
   2849 E4                 6996 	clr	a
                           6997 ;	Peephole 236.b	used r3 instead of ar3
   284A 3B                 6998 	addc	a,r3
   284B FB                 6999 	mov	r3,a
                           7000 ;	genPlus
                           7001 ;     genPlusIncr
   284C 74 03              7002 	mov	a,#0x03
                           7003 ;	Peephole 236.a	used r2 instead of ar2
   284E 2A                 7004 	add	a,r2
   284F FD                 7005 	mov	r5,a
                           7006 ;	Peephole 181	changed mov to clr
   2850 E4                 7007 	clr	a
                           7008 ;	Peephole 236.b	used r3 instead of ar3
   2851 3B                 7009 	addc	a,r3
   2852 FE                 7010 	mov	r6,a
   2853 8C 07              7011 	mov	ar7,r4
                           7012 ;	genPointerGet
                           7013 ;	genGenPointerGet
   2855 8D 82              7014 	mov	dpl,r5
   2857 8E 83              7015 	mov	dph,r6
   2859 8F F0              7016 	mov	b,r7
   285B 12 47 8A           7017 	lcall	__gptrget
   285E FF                 7018 	mov	r7,a
                           7019 ;	genCast
   285F E5 0F              7020 	mov	a,_bp
   2861 24 20              7021 	add	a,#0x20
   2863 F8                 7022 	mov	r0,a
   2864 A6 07              7023 	mov	@r0,ar7
   2866 08                 7024 	inc	r0
   2867 76 00              7025 	mov	@r0,#0x00
   2869 08                 7026 	inc	r0
   286A 76 00              7027 	mov	@r0,#0x00
   286C 08                 7028 	inc	r0
   286D 76 00              7029 	mov	@r0,#0x00
                           7030 ;	genLeftShift
                           7031 ;	genLeftShiftLiteral
   286F E5 0F              7032 	mov	a,_bp
   2871 24 20              7033 	add	a,#0x20
   2873 F8                 7034 	mov	r0,a
                           7035 ;	genlshFour
   2874 E6                 7036 	mov	a,@r0
   2875 08                 7037 	inc	r0
   2876 08                 7038 	inc	r0
   2877 08                 7039 	inc	r0
   2878 F6                 7040 	mov	@r0,a
   2879 18                 7041 	dec	r0
   287A 18                 7042 	dec	r0
   287B 18                 7043 	dec	r0
   287C 76 00              7044 	mov	@r0,#0x00
   287E 08                 7045 	inc	r0
   287F 76 00              7046 	mov	@r0,#0x00
   2881 08                 7047 	inc	r0
   2882 76 00              7048 	mov	@r0,#0x00
                           7049 ;	genPlus
                           7050 ;     genPlusIncr
   2884 74 02              7051 	mov	a,#0x02
                           7052 ;	Peephole 236.a	used r2 instead of ar2
   2886 2A                 7053 	add	a,r2
   2887 FD                 7054 	mov	r5,a
                           7055 ;	Peephole 181	changed mov to clr
   2888 E4                 7056 	clr	a
                           7057 ;	Peephole 236.b	used r3 instead of ar3
   2889 3B                 7058 	addc	a,r3
   288A FE                 7059 	mov	r6,a
   288B 8C 07              7060 	mov	ar7,r4
                           7061 ;	genPointerGet
                           7062 ;	genGenPointerGet
   288D 8D 82              7063 	mov	dpl,r5
   288F 8E 83              7064 	mov	dph,r6
   2891 8F F0              7065 	mov	b,r7
   2893 12 47 8A           7066 	lcall	__gptrget
   2896 FF                 7067 	mov	r7,a
                           7068 ;	genCast
   2897 E5 0F              7069 	mov	a,_bp
   2899 24 2B              7070 	add	a,#0x2b
   289B F8                 7071 	mov	r0,a
   289C A6 07              7072 	mov	@r0,ar7
   289E 08                 7073 	inc	r0
   289F 76 00              7074 	mov	@r0,#0x00
   28A1 08                 7075 	inc	r0
   28A2 76 00              7076 	mov	@r0,#0x00
   28A4 08                 7077 	inc	r0
   28A5 76 00              7078 	mov	@r0,#0x00
                           7079 ;	genLeftShift
                           7080 ;	genLeftShiftLiteral
   28A7 E5 0F              7081 	mov	a,_bp
   28A9 24 2B              7082 	add	a,#0x2b
                           7083 ;	genlshFour
                           7084 ;	Peephole 185	changed order of increment (acc incremented also!)
   28AB 04                 7085 	inc	a
   28AC F8                 7086 	mov	r0,a
   28AD E6                 7087 	mov	a,@r0
   28AE 08                 7088 	inc	r0
   28AF 08                 7089 	inc	r0
   28B0 F6                 7090 	mov	@r0,a
   28B1 18                 7091 	dec	r0
   28B2 18                 7092 	dec	r0
   28B3 18                 7093 	dec	r0
   28B4 E6                 7094 	mov	a,@r0
   28B5 08                 7095 	inc	r0
   28B6 08                 7096 	inc	r0
   28B7 F6                 7097 	mov	@r0,a
   28B8 18                 7098 	dec	r0
   28B9 76 00              7099 	mov	@r0,#0x00
   28BB 18                 7100 	dec	r0
   28BC 76 00              7101 	mov	@r0,#0x00
                           7102 ;	genOr
   28BE E5 0F              7103 	mov	a,_bp
   28C0 24 20              7104 	add	a,#0x20
   28C2 F8                 7105 	mov	r0,a
   28C3 E5 0F              7106 	mov	a,_bp
   28C5 24 2B              7107 	add	a,#0x2b
   28C7 F9                 7108 	mov	r1,a
   28C8 E6                 7109 	mov	a,@r0
   28C9 47                 7110 	orl	a,@r1
   28CA F7                 7111 	mov	@r1,a
   28CB 08                 7112 	inc	r0
   28CC E6                 7113 	mov	a,@r0
   28CD 09                 7114 	inc	r1
   28CE 47                 7115 	orl	a,@r1
   28CF F7                 7116 	mov	@r1,a
   28D0 08                 7117 	inc	r0
   28D1 E6                 7118 	mov	a,@r0
   28D2 09                 7119 	inc	r1
   28D3 47                 7120 	orl	a,@r1
   28D4 F7                 7121 	mov	@r1,a
   28D5 08                 7122 	inc	r0
   28D6 E6                 7123 	mov	a,@r0
   28D7 09                 7124 	inc	r1
   28D8 47                 7125 	orl	a,@r1
   28D9 F7                 7126 	mov	@r1,a
                           7127 ;	genPlus
                           7128 ;     genPlusIncr
   28DA 74 01              7129 	mov	a,#0x01
                           7130 ;	Peephole 236.a	used r2 instead of ar2
   28DC 2A                 7131 	add	a,r2
   28DD FD                 7132 	mov	r5,a
                           7133 ;	Peephole 181	changed mov to clr
   28DE E4                 7134 	clr	a
                           7135 ;	Peephole 236.b	used r3 instead of ar3
   28DF 3B                 7136 	addc	a,r3
   28E0 FE                 7137 	mov	r6,a
   28E1 8C 07              7138 	mov	ar7,r4
                           7139 ;	genPointerGet
                           7140 ;	genGenPointerGet
   28E3 8D 82              7141 	mov	dpl,r5
   28E5 8E 83              7142 	mov	dph,r6
   28E7 8F F0              7143 	mov	b,r7
   28E9 12 47 8A           7144 	lcall	__gptrget
   28EC FF                 7145 	mov	r7,a
                           7146 ;	genCast
                           7147 ;	genLeftShift
                           7148 ;	genLeftShiftLiteral
                           7149 ;	genlshTwo
                           7150 ;	peephole 177.e	removed redundant move
   28ED 8F 05              7151 	mov	ar5,r7
   28EF 7E 00              7152 	mov	r6,#0x00
                           7153 ;	genCast
   28F1 E5 0F              7154 	mov	a,_bp
   28F3 24 20              7155 	add	a,#0x20
   28F5 F8                 7156 	mov	r0,a
   28F6 A6 06              7157 	mov	@r0,ar6
   28F8 08                 7158 	inc	r0
   28F9 A6 05              7159 	mov	@r0,ar5
   28FB 08                 7160 	inc	r0
   28FC 76 00              7161 	mov	@r0,#0x00
   28FE 08                 7162 	inc	r0
   28FF 76 00              7163 	mov	@r0,#0x00
                           7164 ;	genOr
   2901 E5 0F              7165 	mov	a,_bp
   2903 24 2B              7166 	add	a,#0x2b
   2905 F8                 7167 	mov	r0,a
   2906 E5 0F              7168 	mov	a,_bp
   2908 24 20              7169 	add	a,#0x20
   290A F9                 7170 	mov	r1,a
   290B E7                 7171 	mov	a,@r1
   290C 46                 7172 	orl	a,@r0
   290D F6                 7173 	mov	@r0,a
   290E 09                 7174 	inc	r1
   290F E7                 7175 	mov	a,@r1
   2910 08                 7176 	inc	r0
   2911 46                 7177 	orl	a,@r0
   2912 F6                 7178 	mov	@r0,a
   2913 09                 7179 	inc	r1
   2914 E7                 7180 	mov	a,@r1
   2915 08                 7181 	inc	r0
   2916 46                 7182 	orl	a,@r0
   2917 F6                 7183 	mov	@r0,a
   2918 09                 7184 	inc	r1
   2919 E7                 7185 	mov	a,@r1
   291A 08                 7186 	inc	r0
   291B 46                 7187 	orl	a,@r0
   291C F6                 7188 	mov	@r0,a
                           7189 ;	genPointerGet
                           7190 ;	genGenPointerGet
   291D 8A 82              7191 	mov	dpl,r2
   291F 8B 83              7192 	mov	dph,r3
   2921 8C F0              7193 	mov	b,r4
   2923 12 47 8A           7194 	lcall	__gptrget
   2926 FF                 7195 	mov	r7,a
                           7196 ;	genCast
                           7197 ;	genOr
                           7198 ;	Peephole 3.c	changed mov to clr
                           7199 ;	Peephole 3.b	changed mov to clr
   2927 E4                 7200 	clr	a
   2928 FA                 7201 	mov	r2,a
   2929 FB                 7202 	mov	r3,a
   292A FC                 7203 	mov	r4,a
   292B E5 0F              7204 	mov	a,_bp
   292D 24 2B              7205 	add	a,#0x2b
   292F F8                 7206 	mov	r0,a
   2930 EF                 7207 	mov	a,r7
   2931 46                 7208 	orl	a,@r0
   2932 FD                 7209 	mov	r5,a
   2933 EA                 7210 	mov	a,r2
   2934 08                 7211 	inc	r0
   2935 46                 7212 	orl	a,@r0
   2936 FA                 7213 	mov	r2,a
   2937 EB                 7214 	mov	a,r3
   2938 08                 7215 	inc	r0
   2939 46                 7216 	orl	a,@r0
   293A FB                 7217 	mov	r3,a
   293B EC                 7218 	mov	a,r4
   293C 08                 7219 	inc	r0
   293D 46                 7220 	orl	a,@r0
   293E FC                 7221 	mov	r4,a
                           7222 ;	genAssign
   293F E5 0F              7223 	mov	a,_bp
   2941 24 0D              7224 	add	a,#0x0d
   2943 F8                 7225 	mov	r0,a
   2944 A6 05              7226 	mov	@r0,ar5
   2946 08                 7227 	inc	r0
   2947 A6 02              7228 	mov	@r0,ar2
   2949 08                 7229 	inc	r0
   294A A6 03              7230 	mov	@r0,ar3
   294C 08                 7231 	inc	r0
   294D A6 04              7232 	mov	@r0,ar4
   294F                    7233 00124$:
                    1D6E   7234 	C$tff.c$701$1$1 ==.
                           7235 ;	tff.c:701: fs->max_clust = maxclust = (totalsect				/* Last cluster# + 1 */
                           7236 ;	genPlus
   294F E5 0F              7237 	mov	a,_bp
   2951 24 15              7238 	add	a,#0x15
   2953 F8                 7239 	mov	r0,a
   2954 E5 0F              7240 	mov	a,_bp
   2956 24 2B              7241 	add	a,#0x2b
   2958 F9                 7242 	mov	r1,a
                           7243 ;     genPlusIncr
   2959 74 18              7244 	mov	a,#0x18
   295B 26                 7245 	add	a,@r0
   295C F7                 7246 	mov	@r1,a
                           7247 ;	Peephole 181	changed mov to clr
   295D E4                 7248 	clr	a
   295E 08                 7249 	inc	r0
   295F 36                 7250 	addc	a,@r0
   2960 09                 7251 	inc	r1
   2961 F7                 7252 	mov	@r1,a
   2962 08                 7253 	inc	r0
   2963 09                 7254 	inc	r1
   2964 E6                 7255 	mov	a,@r0
   2965 F7                 7256 	mov	@r1,a
                    1D85   7257 	C$tff.c$702$1$1 ==.
                           7258 ;	tff.c:702: - LD_WORD(&fs->win[BPB_RsvdSecCnt]) - fatsize - fs->n_rootdir / 16
                           7259 ;	genPlus
   2966 E5 0F              7260 	mov	a,_bp
   2968 24 15              7261 	add	a,#0x15
   296A F8                 7262 	mov	r0,a
                           7263 ;     genPlusIncr
   296B 74 20              7264 	mov	a,#0x20
   296D 26                 7265 	add	a,@r0
   296E FD                 7266 	mov	r5,a
                           7267 ;	Peephole 181	changed mov to clr
   296F E4                 7268 	clr	a
   2970 08                 7269 	inc	r0
   2971 36                 7270 	addc	a,@r0
   2972 FE                 7271 	mov	r6,a
   2973 08                 7272 	inc	r0
   2974 86 03              7273 	mov	ar3,@r0
                           7274 ;	genPlus
                           7275 ;     genPlusIncr
   2976 74 0E              7276 	mov	a,#0x0E
                           7277 ;	Peephole 236.a	used r5 instead of ar5
   2978 2D                 7278 	add	a,r5
   2979 FD                 7279 	mov	r5,a
                           7280 ;	Peephole 181	changed mov to clr
   297A E4                 7281 	clr	a
                           7282 ;	Peephole 236.b	used r6 instead of ar6
   297B 3E                 7283 	addc	a,r6
   297C FE                 7284 	mov	r6,a
   297D 8B 02              7285 	mov	ar2,r3
                           7286 ;	genPlus
                           7287 ;     genPlusIncr
   297F 74 01              7288 	mov	a,#0x01
                           7289 ;	Peephole 236.a	used r5 instead of ar5
   2981 2D                 7290 	add	a,r5
   2982 FC                 7291 	mov	r4,a
                           7292 ;	Peephole 181	changed mov to clr
   2983 E4                 7293 	clr	a
                           7294 ;	Peephole 236.b	used r6 instead of ar6
   2984 3E                 7295 	addc	a,r6
   2985 FF                 7296 	mov	r7,a
   2986 8A 03              7297 	mov	ar3,r2
                           7298 ;	genPointerGet
                           7299 ;	genGenPointerGet
   2988 8C 82              7300 	mov	dpl,r4
   298A 8F 83              7301 	mov	dph,r7
   298C 8B F0              7302 	mov	b,r3
   298E 12 47 8A           7303 	lcall	__gptrget
   2991 FC                 7304 	mov	r4,a
                           7305 ;	genCast
                           7306 ;	genLeftShift
                           7307 ;	genLeftShiftLiteral
                           7308 ;	genlshTwo
                           7309 ;	peephole 177.e	removed redundant move
   2992 8C 03              7310 	mov	ar3,r4
   2994 7C 00              7311 	mov	r4,#0x00
                           7312 ;	genPointerGet
                           7313 ;	genGenPointerGet
   2996 8D 82              7314 	mov	dpl,r5
   2998 8E 83              7315 	mov	dph,r6
   299A 8A F0              7316 	mov	b,r2
   299C 12 47 8A           7317 	lcall	__gptrget
                           7318 ;	genCast
                           7319 ;	genOr
   299F FD                 7320 	mov	r5,a
   29A0 7E 00              7321 	mov	r6,#0x00
                           7322 ;	Peephole 177.d	removed redundant move
   29A2 42 04              7323 	orl	ar4,a
   29A4 EE                 7324 	mov	a,r6
   29A5 42 03              7325 	orl	ar3,a
                           7326 ;	genCast
                           7327 ;	genMinus
                           7328 ;	Peephole 3.c	changed mov to clr
   29A7 E4                 7329 	clr	a
   29A8 FD                 7330 	mov	r5,a
   29A9 FE                 7331 	mov	r6,a
   29AA E5 0F              7332 	mov	a,_bp
   29AC 24 0D              7333 	add	a,#0x0d
   29AE F8                 7334 	mov	r0,a
   29AF E6                 7335 	mov	a,@r0
   29B0 C3                 7336 	clr	c
                           7337 ;	Peephole 236.l	used r4 instead of ar4
   29B1 9C                 7338 	subb	a,r4
   29B2 FC                 7339 	mov	r4,a
   29B3 08                 7340 	inc	r0
   29B4 E6                 7341 	mov	a,@r0
                           7342 ;	Peephole 236.l	used r3 instead of ar3
   29B5 9B                 7343 	subb	a,r3
   29B6 FB                 7344 	mov	r3,a
   29B7 08                 7345 	inc	r0
   29B8 E6                 7346 	mov	a,@r0
                           7347 ;	Peephole 236.l	used r5 instead of ar5
   29B9 9D                 7348 	subb	a,r5
   29BA FD                 7349 	mov	r5,a
   29BB 08                 7350 	inc	r0
   29BC E6                 7351 	mov	a,@r0
                           7352 ;	Peephole 236.l	used r6 instead of ar6
   29BD 9E                 7353 	subb	a,r6
   29BE FE                 7354 	mov	r6,a
                           7355 ;	genMinus
   29BF E5 0F              7356 	mov	a,_bp
   29C1 24 09              7357 	add	a,#0x09
   29C3 F8                 7358 	mov	r0,a
   29C4 E5 0F              7359 	mov	a,_bp
   29C6 24 20              7360 	add	a,#0x20
   29C8 F9                 7361 	mov	r1,a
   29C9 EC                 7362 	mov	a,r4
   29CA C3                 7363 	clr	c
   29CB 96                 7364 	subb	a,@r0
   29CC F7                 7365 	mov	@r1,a
   29CD EB                 7366 	mov	a,r3
   29CE 08                 7367 	inc	r0
   29CF 96                 7368 	subb	a,@r0
   29D0 09                 7369 	inc	r1
   29D1 F7                 7370 	mov	@r1,a
   29D2 ED                 7371 	mov	a,r5
   29D3 08                 7372 	inc	r0
   29D4 96                 7373 	subb	a,@r0
   29D5 09                 7374 	inc	r1
   29D6 F7                 7375 	mov	@r1,a
   29D7 EE                 7376 	mov	a,r6
   29D8 08                 7377 	inc	r0
   29D9 96                 7378 	subb	a,@r0
   29DA 09                 7379 	inc	r1
   29DB F7                 7380 	mov	@r1,a
                           7381 ;	genPointerGet
                           7382 ;	genGenPointerGet
   29DC E5 0F              7383 	mov	a,_bp
   29DE 24 19              7384 	add	a,#0x19
   29E0 F8                 7385 	mov	r0,a
   29E1 86 82              7386 	mov	dpl,@r0
   29E3 08                 7387 	inc	r0
   29E4 86 83              7388 	mov	dph,@r0
   29E6 08                 7389 	inc	r0
   29E7 86 F0              7390 	mov	b,@r0
   29E9 12 47 8A           7391 	lcall	__gptrget
   29EC FF                 7392 	mov	r7,a
   29ED A3                 7393 	inc	dptr
   29EE 12 47 8A           7394 	lcall	__gptrget
                           7395 ;	genRightShift
                           7396 ;	genRightShiftLiteral
                           7397 ;	genrshTwo
   29F1 FB                 7398 	mov	r3,a
                           7399 ;	Peephole 105	removed redundant mov
   29F2 C4                 7400 	swap	a
   29F3 CF                 7401 	xch	a,r7
   29F4 C4                 7402 	swap	a
   29F5 54 0F              7403 	anl	a,#0x0f
   29F7 6F                 7404 	xrl	a,r7
   29F8 CF                 7405 	xch	a,r7
   29F9 54 0F              7406 	anl	a,#0x0f
   29FB CF                 7407 	xch	a,r7
   29FC 6F                 7408 	xrl	a,r7
   29FD CF                 7409 	xch	a,r7
   29FE FB                 7410 	mov	r3,a
                           7411 ;	genCast
                           7412 ;	genMinus
                           7413 ;	Peephole 3.c	changed mov to clr
   29FF E4                 7414 	clr	a
   2A00 FC                 7415 	mov	r4,a
   2A01 FD                 7416 	mov	r5,a
   2A02 E5 0F              7417 	mov	a,_bp
   2A04 24 20              7418 	add	a,#0x20
   2A06 F8                 7419 	mov	r0,a
   2A07 E6                 7420 	mov	a,@r0
   2A08 C3                 7421 	clr	c
                           7422 ;	Peephole 236.l	used r7 instead of ar7
   2A09 9F                 7423 	subb	a,r7
   2A0A F6                 7424 	mov	@r0,a
   2A0B 08                 7425 	inc	r0
   2A0C E6                 7426 	mov	a,@r0
                           7427 ;	Peephole 236.l	used r3 instead of ar3
   2A0D 9B                 7428 	subb	a,r3
   2A0E F6                 7429 	mov	@r0,a
   2A0F 08                 7430 	inc	r0
   2A10 E6                 7431 	mov	a,@r0
                           7432 ;	Peephole 236.l	used r4 instead of ar4
   2A11 9C                 7433 	subb	a,r4
   2A12 F6                 7434 	mov	@r0,a
   2A13 08                 7435 	inc	r0
   2A14 E6                 7436 	mov	a,@r0
                           7437 ;	Peephole 236.l	used r5 instead of ar5
   2A15 9D                 7438 	subb	a,r5
   2A16 F6                 7439 	mov	@r0,a
                    1E36   7440 	C$tff.c$703$1$1 ==.
                           7441 ;	tff.c:703: ) / fs->sects_clust + 2;
                           7442 ;	genPointerGet
                           7443 ;	genGenPointerGet
   2A17 E5 0F              7444 	mov	a,_bp
   2A19 24 1C              7445 	add	a,#0x1c
   2A1B F8                 7446 	mov	r0,a
   2A1C 86 82              7447 	mov	dpl,@r0
   2A1E 08                 7448 	inc	r0
   2A1F 86 83              7449 	mov	dph,@r0
   2A21 08                 7450 	inc	r0
   2A22 86 F0              7451 	mov	b,@r0
   2A24 12 47 8A           7452 	lcall	__gptrget
   2A27 FE                 7453 	mov	r6,a
                           7454 ;	genCast
   2A28 7B 00              7455 	mov	r3,#0x00
   2A2A 7C 00              7456 	mov	r4,#0x00
   2A2C 7D 00              7457 	mov	r5,#0x00
                           7458 ;	genIpush
   2A2E C0 06              7459 	push	ar6
   2A30 C0 03              7460 	push	ar3
   2A32 C0 04              7461 	push	ar4
   2A34 C0 05              7462 	push	ar5
                           7463 ;	genCall
   2A36 E5 0F              7464 	mov	a,_bp
   2A38 24 20              7465 	add	a,#0x20
   2A3A F8                 7466 	mov	r0,a
   2A3B 86 82              7467 	mov	dpl,@r0
   2A3D 08                 7468 	inc	r0
   2A3E 86 83              7469 	mov	dph,@r0
   2A40 08                 7470 	inc	r0
   2A41 86 F0              7471 	mov	b,@r0
   2A43 08                 7472 	inc	r0
   2A44 E6                 7473 	mov	a,@r0
   2A45 12 44 E5           7474 	lcall	__divulong
   2A48 AB 82              7475 	mov	r3,dpl
   2A4A AC 83              7476 	mov	r4,dph
   2A4C AD F0              7477 	mov	r5,b
   2A4E FE                 7478 	mov	r6,a
   2A4F E5 81              7479 	mov	a,sp
   2A51 24 FC              7480 	add	a,#0xfc
   2A53 F5 81              7481 	mov	sp,a
                           7482 ;	genPlus
   2A55 E5 0F              7483 	mov	a,_bp
   2A57 24 11              7484 	add	a,#0x11
   2A59 F8                 7485 	mov	r0,a
                           7486 ;     genPlusIncr
   2A5A 74 02              7487 	mov	a,#0x02
                           7488 ;	Peephole 236.a	used r3 instead of ar3
   2A5C 2B                 7489 	add	a,r3
   2A5D F6                 7490 	mov	@r0,a
                           7491 ;	Peephole 181	changed mov to clr
   2A5E E4                 7492 	clr	a
                           7493 ;	Peephole 236.b	used r4 instead of ar4
   2A5F 3C                 7494 	addc	a,r4
   2A60 08                 7495 	inc	r0
   2A61 F6                 7496 	mov	@r0,a
                           7497 ;	Peephole 181	changed mov to clr
   2A62 E4                 7498 	clr	a
                           7499 ;	Peephole 236.b	used r5 instead of ar5
   2A63 3D                 7500 	addc	a,r5
   2A64 08                 7501 	inc	r0
   2A65 F6                 7502 	mov	@r0,a
                           7503 ;	Peephole 181	changed mov to clr
   2A66 E4                 7504 	clr	a
                           7505 ;	Peephole 236.b	used r6 instead of ar6
   2A67 3E                 7506 	addc	a,r6
   2A68 08                 7507 	inc	r0
   2A69 F6                 7508 	mov	@r0,a
                           7509 ;	genAssign
   2A6A E5 0F              7510 	mov	a,_bp
   2A6C 24 11              7511 	add	a,#0x11
   2A6E F8                 7512 	mov	r0,a
   2A6F 86 07              7513 	mov	ar7,@r0
   2A71 08                 7514 	inc	r0
   2A72 86 03              7515 	mov	ar3,@r0
   2A74 08                 7516 	inc	r0
   2A75 86 04              7517 	mov	ar4,@r0
   2A77 08                 7518 	inc	r0
   2A78 86 05              7519 	mov	ar5,@r0
                           7520 ;	genPointerSet
                           7521 ;	genGenPointerSet
   2A7A E5 0F              7522 	mov	a,_bp
   2A7C 24 2B              7523 	add	a,#0x2b
   2A7E F8                 7524 	mov	r0,a
   2A7F 86 82              7525 	mov	dpl,@r0
   2A81 08                 7526 	inc	r0
   2A82 86 83              7527 	mov	dph,@r0
   2A84 08                 7528 	inc	r0
   2A85 86 F0              7529 	mov	b,@r0
   2A87 E5 0F              7530 	mov	a,_bp
   2A89 24 11              7531 	add	a,#0x11
   2A8B F9                 7532 	mov	r1,a
   2A8C E7                 7533 	mov	a,@r1
   2A8D 12 42 DC           7534 	lcall	__gptrput
   2A90 A3                 7535 	inc	dptr
   2A91 09                 7536 	inc	r1
   2A92 E7                 7537 	mov	a,@r1
   2A93 12 42 DC           7538 	lcall	__gptrput
   2A96 A3                 7539 	inc	dptr
   2A97 09                 7540 	inc	r1
   2A98 E7                 7541 	mov	a,@r1
   2A99 12 42 DC           7542 	lcall	__gptrput
   2A9C A3                 7543 	inc	dptr
   2A9D 09                 7544 	inc	r1
   2A9E E7                 7545 	mov	a,@r1
   2A9F 12 42 DC           7546 	lcall	__gptrput
                    1EC1   7547 	C$tff.c$705$1$1 ==.
                           7548 ;	tff.c:705: fmt = FS_FAT12;										/* Determine the FAT sub type */
                           7549 ;	genAssign
   2AA2 E5 0F              7550 	mov	a,_bp
   2AA4 24 04              7551 	add	a,#0x04
   2AA6 F8                 7552 	mov	r0,a
   2AA7 76 01              7553 	mov	@r0,#0x01
                    1EC8   7554 	C$tff.c$706$1$1 ==.
                           7555 ;	tff.c:706: if (maxclust > 0xFF7) fmt = FS_FAT16;
                           7556 ;	genCmpGt
                           7557 ;	genCmp
   2AA9 C3                 7558 	clr	c
   2AAA 74 F7              7559 	mov	a,#0xF7
   2AAC 9F                 7560 	subb	a,r7
   2AAD 74 0F              7561 	mov	a,#0x0F
   2AAF 9B                 7562 	subb	a,r3
                           7563 ;	Peephole 181	changed mov to clr
   2AB0 E4                 7564 	clr	a
   2AB1 9C                 7565 	subb	a,r4
                           7566 ;	Peephole 181	changed mov to clr
   2AB2 E4                 7567 	clr	a
   2AB3 9D                 7568 	subb	a,r5
                           7569 ;	genIfxJump
                           7570 ;	Peephole 108.a	removed ljmp by inverse jump logic
   2AB4 50 07              7571 	jnc	00126$
                           7572 ;	Peephole 300	removed redundant label 00165$
                           7573 ;	genAssign
   2AB6 E5 0F              7574 	mov	a,_bp
   2AB8 24 04              7575 	add	a,#0x04
   2ABA F8                 7576 	mov	r0,a
   2ABB 76 02              7577 	mov	@r0,#0x02
   2ABD                    7578 00126$:
                    1EDC   7579 	C$tff.c$707$1$1 ==.
                           7580 ;	tff.c:707: if (maxclust > 0xFFF7)
                           7581 ;	genCmpGt
                           7582 ;	genCmp
   2ABD C3                 7583 	clr	c
   2ABE 74 F7              7584 	mov	a,#0xF7
   2AC0 9F                 7585 	subb	a,r7
   2AC1 74 FF              7586 	mov	a,#0xFF
   2AC3 9B                 7587 	subb	a,r3
                           7588 ;	Peephole 181	changed mov to clr
   2AC4 E4                 7589 	clr	a
   2AC5 9C                 7590 	subb	a,r4
                           7591 ;	Peephole 181	changed mov to clr
   2AC6 E4                 7592 	clr	a
   2AC7 9D                 7593 	subb	a,r5
                           7594 ;	genIfxJump
                           7595 ;	Peephole 108.a	removed ljmp by inverse jump logic
   2AC8 50 07              7596 	jnc	00128$
                           7597 ;	Peephole 300	removed redundant label 00166$
                    1EE9   7598 	C$tff.c$711$1$1 ==.
                           7599 ;	tff.c:711: fmt = FS_FAT32;
                           7600 ;	genAssign
   2ACA E5 0F              7601 	mov	a,_bp
   2ACC 24 04              7602 	add	a,#0x04
   2ACE F8                 7603 	mov	r0,a
   2ACF 76 03              7604 	mov	@r0,#0x03
   2AD1                    7605 00128$:
                    1EF0   7606 	C$tff.c$712$1$1 ==.
                           7607 ;	tff.c:712: if (fmt == FS_FAT32)
                           7608 ;	genCmpEq
   2AD1 E5 0F              7609 	mov	a,_bp
   2AD3 24 04              7610 	add	a,#0x04
   2AD5 F8                 7611 	mov	r0,a
                           7612 ;	gencjneshort
   2AD6 B6 03 02           7613 	cjne	@r0,#0x03,00167$
   2AD9 80 03              7614 	sjmp	00168$
   2ADB                    7615 00167$:
   2ADB 02 2C 00           7616 	ljmp	00130$
   2ADE                    7617 00168$:
                    1EFD   7618 	C$tff.c$713$1$1 ==.
                           7619 ;	tff.c:713: fs->dirbase = LD_DWORD(&fs->win[BPB_RootClus]);	/* Root directory start cluster */
                           7620 ;	genIpush
                           7621 ;	genPlus
   2ADE E5 0F              7622 	mov	a,_bp
   2AE0 24 15              7623 	add	a,#0x15
   2AE2 F8                 7624 	mov	r0,a
   2AE3 E5 0F              7625 	mov	a,_bp
   2AE5 24 2B              7626 	add	a,#0x2b
   2AE7 F9                 7627 	mov	r1,a
                           7628 ;     genPlusIncr
   2AE8 74 0C              7629 	mov	a,#0x0C
   2AEA 26                 7630 	add	a,@r0
   2AEB F7                 7631 	mov	@r1,a
                           7632 ;	Peephole 181	changed mov to clr
   2AEC E4                 7633 	clr	a
   2AED 08                 7634 	inc	r0
   2AEE 36                 7635 	addc	a,@r0
   2AEF 09                 7636 	inc	r1
   2AF0 F7                 7637 	mov	@r1,a
   2AF1 08                 7638 	inc	r0
   2AF2 09                 7639 	inc	r1
   2AF3 E6                 7640 	mov	a,@r0
   2AF4 F7                 7641 	mov	@r1,a
                           7642 ;	genPlus
   2AF5 E5 0F              7643 	mov	a,_bp
   2AF7 24 15              7644 	add	a,#0x15
   2AF9 F8                 7645 	mov	r0,a
                           7646 ;     genPlusIncr
   2AFA 74 20              7647 	mov	a,#0x20
   2AFC 26                 7648 	add	a,@r0
   2AFD FE                 7649 	mov	r6,a
                           7650 ;	Peephole 181	changed mov to clr
   2AFE E4                 7651 	clr	a
   2AFF 08                 7652 	inc	r0
   2B00 36                 7653 	addc	a,@r0
   2B01 FF                 7654 	mov	r7,a
   2B02 08                 7655 	inc	r0
   2B03 86 02              7656 	mov	ar2,@r0
                           7657 ;	genPlus
   2B05 E5 0F              7658 	mov	a,_bp
   2B07 24 28              7659 	add	a,#0x28
   2B09 F8                 7660 	mov	r0,a
                           7661 ;     genPlusIncr
   2B0A 74 2C              7662 	mov	a,#0x2C
                           7663 ;	Peephole 236.a	used r6 instead of ar6
   2B0C 2E                 7664 	add	a,r6
   2B0D F6                 7665 	mov	@r0,a
                           7666 ;	Peephole 181	changed mov to clr
   2B0E E4                 7667 	clr	a
                           7668 ;	Peephole 236.b	used r7 instead of ar7
   2B0F 3F                 7669 	addc	a,r7
   2B10 08                 7670 	inc	r0
   2B11 F6                 7671 	mov	@r0,a
   2B12 08                 7672 	inc	r0
   2B13 A6 02              7673 	mov	@r0,ar2
                           7674 ;	genPlus
   2B15 E5 0F              7675 	mov	a,_bp
   2B17 24 28              7676 	add	a,#0x28
   2B19 F8                 7677 	mov	r0,a
                           7678 ;     genPlusIncr
   2B1A 74 03              7679 	mov	a,#0x03
   2B1C 26                 7680 	add	a,@r0
   2B1D FB                 7681 	mov	r3,a
                           7682 ;	Peephole 181	changed mov to clr
   2B1E E4                 7683 	clr	a
   2B1F 08                 7684 	inc	r0
   2B20 36                 7685 	addc	a,@r0
   2B21 FC                 7686 	mov	r4,a
   2B22 08                 7687 	inc	r0
   2B23 86 05              7688 	mov	ar5,@r0
                           7689 ;	genPointerGet
                           7690 ;	genGenPointerGet
   2B25 8B 82              7691 	mov	dpl,r3
   2B27 8C 83              7692 	mov	dph,r4
   2B29 8D F0              7693 	mov	b,r5
   2B2B 12 47 8A           7694 	lcall	__gptrget
   2B2E FB                 7695 	mov	r3,a
                           7696 ;	genCast
                           7697 ;	genLeftShift
                           7698 ;	genLeftShiftLiteral
                           7699 ;	Peephole 3.c	changed mov to clr
                           7700 ;	Peephole 3.b	changed mov to clr
   2B2F E4                 7701 	clr	a
   2B30 FC                 7702 	mov	r4,a
   2B31 FD                 7703 	mov	r5,a
   2B32 FA                 7704 	mov	r2,a
   2B33 E5 0F              7705 	mov	a,_bp
   2B35 24 20              7706 	add	a,#0x20
                           7707 ;	genlshFour
                           7708 ;	Peephole 185	changed order of increment (acc incremented also!)
   2B37 04                 7709 	inc	a
                           7710 ;	Peephole 185	changed order of increment (acc incremented also!)
   2B38 04                 7711 	inc	a
                           7712 ;	Peephole 185	changed order of increment (acc incremented also!)
   2B39 04                 7713 	inc	a
   2B3A F8                 7714 	mov	r0,a
   2B3B A6 03              7715 	mov	@r0,ar3
   2B3D 18                 7716 	dec	r0
   2B3E 18                 7717 	dec	r0
   2B3F 18                 7718 	dec	r0
   2B40 76 00              7719 	mov	@r0,#0x00
   2B42 08                 7720 	inc	r0
   2B43 76 00              7721 	mov	@r0,#0x00
   2B45 08                 7722 	inc	r0
   2B46 76 00              7723 	mov	@r0,#0x00
                           7724 ;	genPlus
   2B48 E5 0F              7725 	mov	a,_bp
   2B4A 24 28              7726 	add	a,#0x28
   2B4C F8                 7727 	mov	r0,a
                           7728 ;     genPlusIncr
   2B4D 74 02              7729 	mov	a,#0x02
   2B4F 26                 7730 	add	a,@r0
   2B50 FE                 7731 	mov	r6,a
                           7732 ;	Peephole 181	changed mov to clr
   2B51 E4                 7733 	clr	a
   2B52 08                 7734 	inc	r0
   2B53 36                 7735 	addc	a,@r0
   2B54 FF                 7736 	mov	r7,a
   2B55 08                 7737 	inc	r0
   2B56 86 02              7738 	mov	ar2,@r0
                           7739 ;	genPointerGet
                           7740 ;	genGenPointerGet
   2B58 8E 82              7741 	mov	dpl,r6
   2B5A 8F 83              7742 	mov	dph,r7
   2B5C 8A F0              7743 	mov	b,r2
   2B5E 12 47 8A           7744 	lcall	__gptrget
   2B61 FE                 7745 	mov	r6,a
                           7746 ;	genCast
   2B62 7A 00              7747 	mov	r2,#0x00
   2B64 7B 00              7748 	mov	r3,#0x00
                           7749 ;	genLeftShift
                           7750 ;	genLeftShiftLiteral
                           7751 ;	genlshFour
                           7752 ;	peephole 177.e	removed redundant move
   2B66 8A 04              7753 	mov	ar4,r2
   2B68 8E 03              7754 	mov	ar3,r6
                           7755 ;	genOr
                           7756 ;	Peephole 3.c	changed mov to clr
   2B6A E4                 7757 	clr	a
   2B6B FA                 7758 	mov	r2,a
   2B6C FE                 7759 	mov	r6,a
   2B6D E5 0F              7760 	mov	a,_bp
   2B6F 24 20              7761 	add	a,#0x20
   2B71 F8                 7762 	mov	r0,a
   2B72 EE                 7763 	mov	a,r6
   2B73 46                 7764 	orl	a,@r0
   2B74 F6                 7765 	mov	@r0,a
   2B75 EA                 7766 	mov	a,r2
   2B76 08                 7767 	inc	r0
   2B77 46                 7768 	orl	a,@r0
   2B78 F6                 7769 	mov	@r0,a
   2B79 EB                 7770 	mov	a,r3
   2B7A 08                 7771 	inc	r0
   2B7B 46                 7772 	orl	a,@r0
   2B7C F6                 7773 	mov	@r0,a
   2B7D EC                 7774 	mov	a,r4
   2B7E 08                 7775 	inc	r0
   2B7F 46                 7776 	orl	a,@r0
   2B80 F6                 7777 	mov	@r0,a
                           7778 ;	genPlus
   2B81 E5 0F              7779 	mov	a,_bp
   2B83 24 28              7780 	add	a,#0x28
   2B85 F8                 7781 	mov	r0,a
                           7782 ;     genPlusIncr
   2B86 74 01              7783 	mov	a,#0x01
   2B88 26                 7784 	add	a,@r0
   2B89 FD                 7785 	mov	r5,a
                           7786 ;	Peephole 181	changed mov to clr
   2B8A E4                 7787 	clr	a
   2B8B 08                 7788 	inc	r0
   2B8C 36                 7789 	addc	a,@r0
   2B8D FF                 7790 	mov	r7,a
   2B8E 08                 7791 	inc	r0
   2B8F 86 02              7792 	mov	ar2,@r0
                           7793 ;	genPointerGet
                           7794 ;	genGenPointerGet
   2B91 8D 82              7795 	mov	dpl,r5
   2B93 8F 83              7796 	mov	dph,r7
   2B95 8A F0              7797 	mov	b,r2
   2B97 12 47 8A           7798 	lcall	__gptrget
   2B9A FD                 7799 	mov	r5,a
                           7800 ;	genCast
                           7801 ;	genLeftShift
                           7802 ;	genLeftShiftLiteral
                           7803 ;	genlshTwo
                           7804 ;	peephole 177.e	removed redundant move
   2B9B 8D 02              7805 	mov	ar2,r5
                           7806 ;	genCast
                           7807 ;	genOr
                           7808 ;	Peephole 3.c	changed mov to clr
                           7809 ;	Peephole 3.b	changed mov to clr
   2B9D E4                 7810 	clr	a
   2B9E FD                 7811 	mov	r5,a
   2B9F FB                 7812 	mov	r3,a
   2BA0 FC                 7813 	mov	r4,a
   2BA1 E5 0F              7814 	mov	a,_bp
   2BA3 24 20              7815 	add	a,#0x20
   2BA5 F8                 7816 	mov	r0,a
   2BA6 ED                 7817 	mov	a,r5
   2BA7 46                 7818 	orl	a,@r0
   2BA8 F6                 7819 	mov	@r0,a
   2BA9 EA                 7820 	mov	a,r2
   2BAA 08                 7821 	inc	r0
   2BAB 46                 7822 	orl	a,@r0
   2BAC F6                 7823 	mov	@r0,a
   2BAD EB                 7824 	mov	a,r3
   2BAE 08                 7825 	inc	r0
   2BAF 46                 7826 	orl	a,@r0
   2BB0 F6                 7827 	mov	@r0,a
   2BB1 EC                 7828 	mov	a,r4
   2BB2 08                 7829 	inc	r0
   2BB3 46                 7830 	orl	a,@r0
   2BB4 F6                 7831 	mov	@r0,a
                           7832 ;	genPointerGet
                           7833 ;	genGenPointerGet
   2BB5 E5 0F              7834 	mov	a,_bp
   2BB7 24 28              7835 	add	a,#0x28
   2BB9 F8                 7836 	mov	r0,a
   2BBA 86 82              7837 	mov	dpl,@r0
   2BBC 08                 7838 	inc	r0
   2BBD 86 83              7839 	mov	dph,@r0
   2BBF 08                 7840 	inc	r0
   2BC0 86 F0              7841 	mov	b,@r0
   2BC2 12 47 8A           7842 	lcall	__gptrget
   2BC5 FE                 7843 	mov	r6,a
                           7844 ;	genCast
                           7845 ;	genOr
                           7846 ;	Peephole 3.c	changed mov to clr
                           7847 ;	Peephole 3.b	changed mov to clr
   2BC6 E4                 7848 	clr	a
   2BC7 FF                 7849 	mov	r7,a
   2BC8 FA                 7850 	mov	r2,a
   2BC9 FB                 7851 	mov	r3,a
   2BCA E5 0F              7852 	mov	a,_bp
   2BCC 24 20              7853 	add	a,#0x20
   2BCE F8                 7854 	mov	r0,a
   2BCF E6                 7855 	mov	a,@r0
   2BD0 42 06              7856 	orl	ar6,a
   2BD2 08                 7857 	inc	r0
   2BD3 E6                 7858 	mov	a,@r0
   2BD4 42 07              7859 	orl	ar7,a
   2BD6 08                 7860 	inc	r0
   2BD7 E6                 7861 	mov	a,@r0
   2BD8 42 02              7862 	orl	ar2,a
   2BDA 08                 7863 	inc	r0
   2BDB E6                 7864 	mov	a,@r0
   2BDC 42 03              7865 	orl	ar3,a
                           7866 ;	genPointerSet
                           7867 ;	genGenPointerSet
   2BDE E5 0F              7868 	mov	a,_bp
   2BE0 24 2B              7869 	add	a,#0x2b
   2BE2 F8                 7870 	mov	r0,a
   2BE3 86 82              7871 	mov	dpl,@r0
   2BE5 08                 7872 	inc	r0
   2BE6 86 83              7873 	mov	dph,@r0
   2BE8 08                 7874 	inc	r0
   2BE9 86 F0              7875 	mov	b,@r0
   2BEB EE                 7876 	mov	a,r6
   2BEC 12 42 DC           7877 	lcall	__gptrput
   2BEF A3                 7878 	inc	dptr
   2BF0 EF                 7879 	mov	a,r7
   2BF1 12 42 DC           7880 	lcall	__gptrput
   2BF4 A3                 7881 	inc	dptr
   2BF5 EA                 7882 	mov	a,r2
   2BF6 12 42 DC           7883 	lcall	__gptrput
   2BF9 A3                 7884 	inc	dptr
   2BFA EB                 7885 	mov	a,r3
   2BFB 12 42 DC           7886 	lcall	__gptrput
                           7887 ;	genIpop
                           7888 ;	Peephole 112.b	changed ljmp to sjmp
   2BFE 80 6B              7889 	sjmp	00131$
   2C00                    7890 00130$:
                    201F   7891 	C$tff.c$716$1$1 ==.
                           7892 ;	tff.c:716: fs->dirbase = fs->fatbase + fatsize;			/* Root directory start sector (lba) */
                           7893 ;	genIpush
                           7894 ;	genPlus
   2C00 E5 0F              7895 	mov	a,_bp
   2C02 24 15              7896 	add	a,#0x15
   2C04 F8                 7897 	mov	r0,a
   2C05 E5 0F              7898 	mov	a,_bp
   2C07 24 2B              7899 	add	a,#0x2b
   2C09 F9                 7900 	mov	r1,a
                           7901 ;     genPlusIncr
   2C0A 74 0C              7902 	mov	a,#0x0C
   2C0C 26                 7903 	add	a,@r0
   2C0D F7                 7904 	mov	@r1,a
                           7905 ;	Peephole 181	changed mov to clr
   2C0E E4                 7906 	clr	a
   2C0F 08                 7907 	inc	r0
   2C10 36                 7908 	addc	a,@r0
   2C11 09                 7909 	inc	r1
   2C12 F7                 7910 	mov	@r1,a
   2C13 08                 7911 	inc	r0
   2C14 09                 7912 	inc	r1
   2C15 E6                 7913 	mov	a,@r0
   2C16 F7                 7914 	mov	@r1,a
                           7915 ;	genPointerGet
                           7916 ;	genGenPointerGet
   2C17 E5 0F              7917 	mov	a,_bp
   2C19 24 24              7918 	add	a,#0x24
   2C1B F8                 7919 	mov	r0,a
   2C1C 86 82              7920 	mov	dpl,@r0
   2C1E 08                 7921 	inc	r0
   2C1F 86 83              7922 	mov	dph,@r0
   2C21 08                 7923 	inc	r0
   2C22 86 F0              7924 	mov	b,@r0
   2C24 12 47 8A           7925 	lcall	__gptrget
   2C27 FE                 7926 	mov	r6,a
   2C28 A3                 7927 	inc	dptr
   2C29 12 47 8A           7928 	lcall	__gptrget
   2C2C FF                 7929 	mov	r7,a
   2C2D A3                 7930 	inc	dptr
   2C2E 12 47 8A           7931 	lcall	__gptrget
   2C31 FA                 7932 	mov	r2,a
   2C32 A3                 7933 	inc	dptr
   2C33 12 47 8A           7934 	lcall	__gptrget
   2C36 FB                 7935 	mov	r3,a
                           7936 ;	genPlus
   2C37 E5 0F              7937 	mov	a,_bp
   2C39 24 09              7938 	add	a,#0x09
   2C3B F8                 7939 	mov	r0,a
   2C3C E6                 7940 	mov	a,@r0
                           7941 ;	Peephole 236.a	used r6 instead of ar6
   2C3D 2E                 7942 	add	a,r6
   2C3E FE                 7943 	mov	r6,a
   2C3F 08                 7944 	inc	r0
   2C40 E6                 7945 	mov	a,@r0
                           7946 ;	Peephole 236.b	used r7 instead of ar7
   2C41 3F                 7947 	addc	a,r7
   2C42 FF                 7948 	mov	r7,a
   2C43 08                 7949 	inc	r0
   2C44 E6                 7950 	mov	a,@r0
                           7951 ;	Peephole 236.b	used r2 instead of ar2
   2C45 3A                 7952 	addc	a,r2
   2C46 FA                 7953 	mov	r2,a
   2C47 08                 7954 	inc	r0
   2C48 E6                 7955 	mov	a,@r0
                           7956 ;	Peephole 236.b	used r3 instead of ar3
   2C49 3B                 7957 	addc	a,r3
   2C4A FB                 7958 	mov	r3,a
                           7959 ;	genPointerSet
                           7960 ;	genGenPointerSet
   2C4B E5 0F              7961 	mov	a,_bp
   2C4D 24 2B              7962 	add	a,#0x2b
   2C4F F8                 7963 	mov	r0,a
   2C50 86 82              7964 	mov	dpl,@r0
   2C52 08                 7965 	inc	r0
   2C53 86 83              7966 	mov	dph,@r0
   2C55 08                 7967 	inc	r0
   2C56 86 F0              7968 	mov	b,@r0
   2C58 EE                 7969 	mov	a,r6
   2C59 12 42 DC           7970 	lcall	__gptrput
   2C5C A3                 7971 	inc	dptr
   2C5D EF                 7972 	mov	a,r7
   2C5E 12 42 DC           7973 	lcall	__gptrput
   2C61 A3                 7974 	inc	dptr
   2C62 EA                 7975 	mov	a,r2
   2C63 12 42 DC           7976 	lcall	__gptrput
   2C66 A3                 7977 	inc	dptr
   2C67 EB                 7978 	mov	a,r3
   2C68 12 42 DC           7979 	lcall	__gptrput
                    208A   7980 	C$tff.c$737$1$1 ==.
                           7981 ;	tff.c:737: return FR_OK;
                           7982 ;	genIpop
                    208A   7983 	C$tff.c$716$1$1 ==.
                           7984 ;	tff.c:716: fs->dirbase = fs->fatbase + fatsize;			/* Root directory start sector (lba) */
   2C6B                    7985 00131$:
                    208A   7986 	C$tff.c$717$1$1 ==.
                           7987 ;	tff.c:717: fs->database = fs->fatbase + fatsize + fs->n_rootdir / 16;	/* Data start sector (lba) */
                           7988 ;	genPlus
   2C6B E5 0F              7989 	mov	a,_bp
   2C6D 24 15              7990 	add	a,#0x15
   2C6F F8                 7991 	mov	r0,a
   2C70 E5 0F              7992 	mov	a,_bp
   2C72 24 2B              7993 	add	a,#0x2b
   2C74 F9                 7994 	mov	r1,a
                           7995 ;     genPlusIncr
   2C75 74 10              7996 	mov	a,#0x10
   2C77 26                 7997 	add	a,@r0
   2C78 F7                 7998 	mov	@r1,a
                           7999 ;	Peephole 181	changed mov to clr
   2C79 E4                 8000 	clr	a
   2C7A 08                 8001 	inc	r0
   2C7B 36                 8002 	addc	a,@r0
   2C7C 09                 8003 	inc	r1
   2C7D F7                 8004 	mov	@r1,a
   2C7E 08                 8005 	inc	r0
   2C7F 09                 8006 	inc	r1
   2C80 E6                 8007 	mov	a,@r0
   2C81 F7                 8008 	mov	@r1,a
                           8009 ;	genPointerGet
                           8010 ;	genGenPointerGet
   2C82 E5 0F              8011 	mov	a,_bp
   2C84 24 24              8012 	add	a,#0x24
   2C86 F8                 8013 	mov	r0,a
   2C87 86 82              8014 	mov	dpl,@r0
   2C89 08                 8015 	inc	r0
   2C8A 86 83              8016 	mov	dph,@r0
   2C8C 08                 8017 	inc	r0
   2C8D 86 F0              8018 	mov	b,@r0
   2C8F 12 47 8A           8019 	lcall	__gptrget
   2C92 FE                 8020 	mov	r6,a
   2C93 A3                 8021 	inc	dptr
   2C94 12 47 8A           8022 	lcall	__gptrget
   2C97 FF                 8023 	mov	r7,a
   2C98 A3                 8024 	inc	dptr
   2C99 12 47 8A           8025 	lcall	__gptrget
   2C9C FA                 8026 	mov	r2,a
   2C9D A3                 8027 	inc	dptr
   2C9E 12 47 8A           8028 	lcall	__gptrget
   2CA1 FB                 8029 	mov	r3,a
                           8030 ;	genPlus
   2CA2 E5 0F              8031 	mov	a,_bp
   2CA4 24 09              8032 	add	a,#0x09
   2CA6 F8                 8033 	mov	r0,a
   2CA7 E5 0F              8034 	mov	a,_bp
   2CA9 24 24              8035 	add	a,#0x24
   2CAB F9                 8036 	mov	r1,a
   2CAC E6                 8037 	mov	a,@r0
                           8038 ;	Peephole 236.a	used r6 instead of ar6
   2CAD 2E                 8039 	add	a,r6
   2CAE F7                 8040 	mov	@r1,a
   2CAF 08                 8041 	inc	r0
   2CB0 E6                 8042 	mov	a,@r0
                           8043 ;	Peephole 236.b	used r7 instead of ar7
   2CB1 3F                 8044 	addc	a,r7
   2CB2 09                 8045 	inc	r1
   2CB3 F7                 8046 	mov	@r1,a
   2CB4 08                 8047 	inc	r0
   2CB5 E6                 8048 	mov	a,@r0
                           8049 ;	Peephole 236.b	used r2 instead of ar2
   2CB6 3A                 8050 	addc	a,r2
   2CB7 09                 8051 	inc	r1
   2CB8 F7                 8052 	mov	@r1,a
   2CB9 08                 8053 	inc	r0
   2CBA E6                 8054 	mov	a,@r0
                           8055 ;	Peephole 236.b	used r3 instead of ar3
   2CBB 3B                 8056 	addc	a,r3
   2CBC 09                 8057 	inc	r1
   2CBD F7                 8058 	mov	@r1,a
                           8059 ;	genPointerGet
                           8060 ;	genGenPointerGet
   2CBE E5 0F              8061 	mov	a,_bp
   2CC0 24 19              8062 	add	a,#0x19
   2CC2 F8                 8063 	mov	r0,a
   2CC3 86 82              8064 	mov	dpl,@r0
   2CC5 08                 8065 	inc	r0
   2CC6 86 83              8066 	mov	dph,@r0
   2CC8 08                 8067 	inc	r0
   2CC9 86 F0              8068 	mov	b,@r0
   2CCB 12 47 8A           8069 	lcall	__gptrget
   2CCE FC                 8070 	mov	r4,a
   2CCF A3                 8071 	inc	dptr
   2CD0 12 47 8A           8072 	lcall	__gptrget
                           8073 ;	genRightShift
                           8074 ;	genRightShiftLiteral
                           8075 ;	genrshTwo
   2CD3 FD                 8076 	mov	r5,a
                           8077 ;	Peephole 105	removed redundant mov
   2CD4 C4                 8078 	swap	a
   2CD5 CC                 8079 	xch	a,r4
   2CD6 C4                 8080 	swap	a
   2CD7 54 0F              8081 	anl	a,#0x0f
   2CD9 6C                 8082 	xrl	a,r4
   2CDA CC                 8083 	xch	a,r4
   2CDB 54 0F              8084 	anl	a,#0x0f
   2CDD CC                 8085 	xch	a,r4
   2CDE 6C                 8086 	xrl	a,r4
   2CDF CC                 8087 	xch	a,r4
   2CE0 FD                 8088 	mov	r5,a
                           8089 ;	genCast
                           8090 ;	genPlus
                           8091 ;	Peephole 3.c	changed mov to clr
   2CE1 E4                 8092 	clr	a
   2CE2 FA                 8093 	mov	r2,a
   2CE3 FB                 8094 	mov	r3,a
   2CE4 E5 0F              8095 	mov	a,_bp
   2CE6 24 24              8096 	add	a,#0x24
   2CE8 F8                 8097 	mov	r0,a
                           8098 ;	Peephole 236.g	used r4 instead of ar4
   2CE9 EC                 8099 	mov	a,r4
   2CEA 26                 8100 	add	a,@r0
   2CEB FC                 8101 	mov	r4,a
                           8102 ;	Peephole 236.g	used r5 instead of ar5
   2CEC ED                 8103 	mov	a,r5
   2CED 08                 8104 	inc	r0
   2CEE 36                 8105 	addc	a,@r0
   2CEF FD                 8106 	mov	r5,a
                           8107 ;	Peephole 236.g	used r2 instead of ar2
   2CF0 EA                 8108 	mov	a,r2
   2CF1 08                 8109 	inc	r0
   2CF2 36                 8110 	addc	a,@r0
   2CF3 FA                 8111 	mov	r2,a
                           8112 ;	Peephole 236.g	used r3 instead of ar3
   2CF4 EB                 8113 	mov	a,r3
   2CF5 08                 8114 	inc	r0
   2CF6 36                 8115 	addc	a,@r0
   2CF7 FB                 8116 	mov	r3,a
                           8117 ;	genPointerSet
                           8118 ;	genGenPointerSet
   2CF8 E5 0F              8119 	mov	a,_bp
   2CFA 24 2B              8120 	add	a,#0x2b
   2CFC F8                 8121 	mov	r0,a
   2CFD 86 82              8122 	mov	dpl,@r0
   2CFF 08                 8123 	inc	r0
   2D00 86 83              8124 	mov	dph,@r0
   2D02 08                 8125 	inc	r0
   2D03 86 F0              8126 	mov	b,@r0
   2D05 EC                 8127 	mov	a,r4
   2D06 12 42 DC           8128 	lcall	__gptrput
   2D09 A3                 8129 	inc	dptr
   2D0A ED                 8130 	mov	a,r5
   2D0B 12 42 DC           8131 	lcall	__gptrput
   2D0E A3                 8132 	inc	dptr
   2D0F EA                 8133 	mov	a,r2
   2D10 12 42 DC           8134 	lcall	__gptrput
   2D13 A3                 8135 	inc	dptr
   2D14 EB                 8136 	mov	a,r3
   2D15 12 42 DC           8137 	lcall	__gptrput
                    2137   8138 	C$tff.c$718$1$1 ==.
                           8139 ;	tff.c:718: fs->fs_type = fmt;									/* FAT sub-type */
                           8140 ;	genPlus
   2D18 E5 0F              8141 	mov	a,_bp
   2D1A 24 15              8142 	add	a,#0x15
   2D1C F8                 8143 	mov	r0,a
                           8144 ;     genPlusIncr
   2D1D 74 1C              8145 	mov	a,#0x1C
   2D1F 26                 8146 	add	a,@r0
   2D20 FA                 8147 	mov	r2,a
                           8148 ;	Peephole 181	changed mov to clr
   2D21 E4                 8149 	clr	a
   2D22 08                 8150 	inc	r0
   2D23 36                 8151 	addc	a,@r0
   2D24 FB                 8152 	mov	r3,a
   2D25 08                 8153 	inc	r0
   2D26 86 04              8154 	mov	ar4,@r0
                           8155 ;	genPointerSet
                           8156 ;	genGenPointerSet
   2D28 8A 82              8157 	mov	dpl,r2
   2D2A 8B 83              8158 	mov	dph,r3
   2D2C 8C F0              8159 	mov	b,r4
   2D2E E5 0F              8160 	mov	a,_bp
   2D30 24 04              8161 	add	a,#0x04
   2D32 F8                 8162 	mov	r0,a
   2D33 E6                 8163 	mov	a,@r0
   2D34 12 42 DC           8164 	lcall	__gptrput
                    2156   8165 	C$tff.c$736$1$1 ==.
                           8166 ;	tff.c:736: fs->id = ++fsid;									/* File system mount ID */
                           8167 ;	genPlus
                           8168 ;     genPlusIncr
   2D37 05 0D              8169 	inc	_fsid
   2D39 E4                 8170 	clr	a
   2D3A B5 0D 02           8171 	cjne	a,_fsid,00169$
   2D3D 05 0E              8172 	inc	(_fsid + 1)
   2D3F                    8173 00169$:
                           8174 ;	genPointerSet
                           8175 ;	genGenPointerSet
   2D3F E5 0F              8176 	mov	a,_bp
   2D41 24 15              8177 	add	a,#0x15
   2D43 F8                 8178 	mov	r0,a
   2D44 86 82              8179 	mov	dpl,@r0
   2D46 08                 8180 	inc	r0
   2D47 86 83              8181 	mov	dph,@r0
   2D49 08                 8182 	inc	r0
   2D4A 86 F0              8183 	mov	b,@r0
   2D4C E5 0D              8184 	mov	a,_fsid
   2D4E 12 42 DC           8185 	lcall	__gptrput
   2D51 A3                 8186 	inc	dptr
   2D52 E5 0E              8187 	mov	a,(_fsid + 1)
   2D54 12 42 DC           8188 	lcall	__gptrput
                    2176   8189 	C$tff.c$737$1$1 ==.
                           8190 ;	tff.c:737: return FR_OK;
                           8191 ;	genRet
   2D57 75 82 00           8192 	mov	dpl,#0x00
   2D5A                    8193 00132$:
   2D5A 85 0F 81           8194 	mov	sp,_bp
   2D5D D0 0F              8195 	pop	_bp
                    217E   8196 	C$tff.c$738$1$1 ==.
                    217E   8197 	XFtff$auto_mount$0$0 ==.
   2D5F 22                 8198 	ret
                           8199 ;------------------------------------------------------------
                           8200 ;Allocation info for local variables in function 'validate'
                           8201 ;------------------------------------------------------------
                           8202 ;id                        Allocated to stack - offset -4
                           8203 ;fs                        Allocated to registers r2 r3 r4 
                           8204 ;------------------------------------------------------------
                    217F   8205 	Ftff$validate$0$0 ==.
                    217F   8206 	C$tff.c$748$1$1 ==.
                           8207 ;	tff.c:748: FRESULT validate (		/* FR_OK(0): The id is valid, !=0: Not valid */
                           8208 ;	-----------------------------------------
                           8209 ;	 function validate
                           8210 ;	-----------------------------------------
   2D60                    8211 _validate:
   2D60 C0 0F              8212 	push	_bp
   2D62 85 81 0F           8213 	mov	_bp,sp
                           8214 ;	genReceive
   2D65 AA 82              8215 	mov	r2,dpl
   2D67 AB 83              8216 	mov	r3,dph
   2D69 AC F0              8217 	mov	r4,b
                    218A   8218 	C$tff.c$753$1$1 ==.
                           8219 ;	tff.c:753: if (!fs || fs->id != id)
                           8220 ;	genIfx
   2D6B EA                 8221 	mov	a,r2
   2D6C 4B                 8222 	orl	a,r3
   2D6D 4C                 8223 	orl	a,r4
                           8224 ;	genIfxJump
                           8225 ;	Peephole 108.c	removed ljmp by inverse jump logic
   2D6E 60 1F              8226 	jz	00101$
                           8227 ;	Peephole 300	removed redundant label 00110$
                           8228 ;	genPointerGet
                           8229 ;	genGenPointerGet
   2D70 8A 82              8230 	mov	dpl,r2
   2D72 8B 83              8231 	mov	dph,r3
   2D74 8C F0              8232 	mov	b,r4
   2D76 12 47 8A           8233 	lcall	__gptrget
   2D79 FA                 8234 	mov	r2,a
   2D7A A3                 8235 	inc	dptr
   2D7B 12 47 8A           8236 	lcall	__gptrget
   2D7E FB                 8237 	mov	r3,a
                           8238 ;	genCmpEq
   2D7F E5 0F              8239 	mov	a,_bp
   2D81 24 FC              8240 	add	a,#0xfffffffc
   2D83 F8                 8241 	mov	r0,a
                           8242 ;	gencjneshort
   2D84 E6                 8243 	mov	a,@r0
   2D85 B5 02 07           8244 	cjne	a,ar2,00111$
   2D88 08                 8245 	inc	r0
   2D89 E6                 8246 	mov	a,@r0
   2D8A B5 03 02           8247 	cjne	a,ar3,00111$
                           8248 ;	Peephole 112.b	changed ljmp to sjmp
   2D8D 80 05              8249 	sjmp	00102$
   2D8F                    8250 00111$:
   2D8F                    8251 00101$:
                    21AE   8252 	C$tff.c$754$1$1 ==.
                           8253 ;	tff.c:754: return FR_INVALID_OBJECT;
                           8254 ;	genRet
   2D8F 75 82 0C           8255 	mov	dpl,#0x0C
                           8256 ;	Peephole 112.b	changed ljmp to sjmp
   2D92 80 13              8257 	sjmp	00106$
   2D94                    8258 00102$:
                    21B3   8259 	C$tff.c$755$1$1 ==.
                           8260 ;	tff.c:755: if (disk_status(0) & STA_NOINIT)
                           8261 ;	genCall
   2D94 75 82 00           8262 	mov	dpl,#0x00
   2D97 12 00 80           8263 	lcall	_disk_status
   2D9A E5 82              8264 	mov	a,dpl
                           8265 ;	genAnd
                           8266 ;	genIfxJump
                           8267 ;	Peephole 108.d	removed ljmp by inverse jump logic
   2D9C 30 E0 05           8268 	jnb	acc.0,00105$
                           8269 ;	Peephole 300	removed redundant label 00112$
                    21BE   8270 	C$tff.c$756$1$1 ==.
                           8271 ;	tff.c:756: return FR_NOT_READY;
                           8272 ;	genRet
   2D9F 75 82 01           8273 	mov	dpl,#0x01
                           8274 ;	Peephole 112.b	changed ljmp to sjmp
   2DA2 80 03              8275 	sjmp	00106$
   2DA4                    8276 00105$:
                    21C3   8277 	C$tff.c$758$1$1 ==.
                           8278 ;	tff.c:758: return FR_OK;
                           8279 ;	genRet
   2DA4 75 82 00           8280 	mov	dpl,#0x00
   2DA7                    8281 00106$:
   2DA7 D0 0F              8282 	pop	_bp
                    21C8   8283 	C$tff.c$759$1$1 ==.
                    21C8   8284 	XFtff$validate$0$0 ==.
   2DA9 22                 8285 	ret
                           8286 ;------------------------------------------------------------
                           8287 ;Allocation info for local variables in function 'f_mount'
                           8288 ;------------------------------------------------------------
                           8289 ;fs                        Allocated to stack - offset -5
                           8290 ;drv                       Allocated to registers r2 
                           8291 ;fsobj                     Allocated to registers r2 r3 r4 
                           8292 ;------------------------------------------------------------
                    21C9   8293 	G$f_mount$0$0 ==.
                    21C9   8294 	C$tff.c$773$1$1 ==.
                           8295 ;	tff.c:773: FRESULT f_mount (
                           8296 ;	-----------------------------------------
                           8297 ;	 function f_mount
                           8298 ;	-----------------------------------------
   2DAA                    8299 _f_mount:
   2DAA C0 0F              8300 	push	_bp
   2DAC 85 81 0F           8301 	mov	_bp,sp
                           8302 ;	genReceive
                    21CE   8303 	C$tff.c$781$1$1 ==.
                           8304 ;	tff.c:781: if (drv) return FR_INVALID_DRIVE;
                           8305 ;	genIfx
                           8306 ;	peephole 177.g	optimized mov sequence
   2DAF E5 82              8307 	mov	a,dpl
   2DB1 FA                 8308 	mov	r2,a
                           8309 ;	genIfxJump
                           8310 ;	Peephole 108.c	removed ljmp by inverse jump logic
   2DB2 60 05              8311 	jz	00102$
                           8312 ;	Peephole 300	removed redundant label 00112$
                           8313 ;	genRet
   2DB4 75 82 05           8314 	mov	dpl,#0x05
                           8315 ;	Peephole 112.b	changed ljmp to sjmp
   2DB7 80 66              8316 	sjmp	00107$
   2DB9                    8317 00102$:
                    21D8   8318 	C$tff.c$782$1$1 ==.
                           8319 ;	tff.c:782: fsobj = FatFs;
                           8320 ;	genAssign
   2DB9 AA 0A              8321 	mov	r2,_FatFs
   2DBB AB 0B              8322 	mov	r3,(_FatFs + 1)
   2DBD AC 0C              8323 	mov	r4,(_FatFs + 2)
                    21DE   8324 	C$tff.c$783$1$1 ==.
                           8325 ;	tff.c:783: FatFs = fs;
                           8326 ;	genAssign
   2DBF E5 0F              8327 	mov	a,_bp
   2DC1 24 FB              8328 	add	a,#0xfffffffb
   2DC3 F8                 8329 	mov	r0,a
   2DC4 86 05              8330 	mov	ar5,@r0
   2DC6 08                 8331 	inc	r0
   2DC7 86 06              8332 	mov	ar6,@r0
   2DC9 08                 8333 	inc	r0
   2DCA 86 07              8334 	mov	ar7,@r0
                           8335 ;	genAssign
   2DCC 8D 0A              8336 	mov	_FatFs,r5
   2DCE 8E 0B              8337 	mov	(_FatFs + 1),r6
   2DD0 8F 0C              8338 	mov	(_FatFs + 2),r7
                    21F1   8339 	C$tff.c$784$1$1 ==.
                           8340 ;	tff.c:784: if (fsobj) memset(fsobj, 0, sizeof(FATFS));
                           8341 ;	genIfx
   2DD2 EA                 8342 	mov	a,r2
   2DD3 4B                 8343 	orl	a,r3
   2DD4 4C                 8344 	orl	a,r4
                           8345 ;	genIfxJump
                           8346 ;	Peephole 108.c	removed ljmp by inverse jump logic
   2DD5 60 26              8347 	jz	00104$
                           8348 ;	Peephole 300	removed redundant label 00113$
                           8349 ;	genIpush
   2DD7 C0 05              8350 	push	ar5
   2DD9 C0 06              8351 	push	ar6
   2DDB C0 07              8352 	push	ar7
   2DDD 74 20              8353 	mov	a,#0x20
   2DDF C0 E0              8354 	push	acc
   2DE1 74 02              8355 	mov	a,#0x02
   2DE3 C0 E0              8356 	push	acc
                           8357 ;	genIpush
                           8358 ;	Peephole 181	changed mov to clr
   2DE5 E4                 8359 	clr	a
   2DE6 C0 E0              8360 	push	acc
                           8361 ;	genCall
   2DE8 8A 82              8362 	mov	dpl,r2
   2DEA 8B 83              8363 	mov	dph,r3
   2DEC 8C F0              8364 	mov	b,r4
   2DEE 12 45 52           8365 	lcall	_memset
   2DF1 15 81              8366 	dec	sp
   2DF3 15 81              8367 	dec	sp
   2DF5 15 81              8368 	dec	sp
   2DF7 D0 07              8369 	pop	ar7
   2DF9 D0 06              8370 	pop	ar6
   2DFB D0 05              8371 	pop	ar5
   2DFD                    8372 00104$:
                    221C   8373 	C$tff.c$785$1$1 ==.
                           8374 ;	tff.c:785: if (fs) memset(fs, 0, sizeof(FATFS));
                           8375 ;	genIfx
   2DFD ED                 8376 	mov	a,r5
   2DFE 4E                 8377 	orl	a,r6
   2DFF 4F                 8378 	orl	a,r7
                           8379 ;	genIfxJump
                           8380 ;	Peephole 108.c	removed ljmp by inverse jump logic
   2E00 60 1A              8381 	jz	00106$
                           8382 ;	Peephole 300	removed redundant label 00114$
                           8383 ;	genAssign
                           8384 ;	genIpush
   2E02 74 20              8385 	mov	a,#0x20
   2E04 C0 E0              8386 	push	acc
   2E06 74 02              8387 	mov	a,#0x02
   2E08 C0 E0              8388 	push	acc
                           8389 ;	genIpush
                           8390 ;	Peephole 181	changed mov to clr
   2E0A E4                 8391 	clr	a
   2E0B C0 E0              8392 	push	acc
                           8393 ;	genCall
   2E0D 8D 82              8394 	mov	dpl,r5
   2E0F 8E 83              8395 	mov	dph,r6
   2E11 8F F0              8396 	mov	b,r7
   2E13 12 45 52           8397 	lcall	_memset
   2E16 15 81              8398 	dec	sp
   2E18 15 81              8399 	dec	sp
   2E1A 15 81              8400 	dec	sp
   2E1C                    8401 00106$:
                    223B   8402 	C$tff.c$787$1$1 ==.
                           8403 ;	tff.c:787: return FR_OK;
                           8404 ;	genRet
   2E1C 75 82 00           8405 	mov	dpl,#0x00
   2E1F                    8406 00107$:
   2E1F D0 0F              8407 	pop	_bp
                    2240   8408 	C$tff.c$788$1$1 ==.
                    2240   8409 	XG$f_mount$0$0 ==.
   2E21 22                 8410 	ret
                           8411 ;------------------------------------------------------------
                           8412 ;Allocation info for local variables in function 'f_open'
                           8413 ;------------------------------------------------------------
                           8414 ;path                      Allocated to stack - offset -5
                           8415 ;mode                      Allocated to stack - offset -6
                           8416 ;fp                        Allocated to stack - offset 1
                           8417 ;res                       Allocated to registers r2 
                           8418 ;dir                       Allocated to stack - offset 4
                           8419 ;dirobj                    Allocated to stack - offset 7
                           8420 ;fn                        Allocated to stack - offset 26
                           8421 ;fs                        Allocated to stack - offset 38
                           8422 ;sloc0                     Allocated to stack - offset 41
                           8423 ;sloc1                     Allocated to stack - offset 44
                           8424 ;sloc2                     Allocated to stack - offset 47
                           8425 ;sloc3                     Allocated to stack - offset 49
                           8426 ;sloc4                     Allocated to stack - offset 52
                           8427 ;sloc5                     Allocated to stack - offset 56
                           8428 ;------------------------------------------------------------
                    2241   8429 	G$f_open$0$0 ==.
                    2241   8430 	C$tff.c$797$1$1 ==.
                           8431 ;	tff.c:797: FRESULT f_open (
                           8432 ;	-----------------------------------------
                           8433 ;	 function f_open
                           8434 ;	-----------------------------------------
   2E22                    8435 _f_open:
   2E22 C0 0F              8436 	push	_bp
   2E24 85 81 0F           8437 	mov	_bp,sp
                           8438 ;     genReceive
   2E27 C0 82              8439 	push	dpl
   2E29 C0 83              8440 	push	dph
   2E2B C0 F0              8441 	push	b
   2E2D E5 81              8442 	mov	a,sp
   2E2F 24 3B              8443 	add	a,#0x3b
   2E31 F5 81              8444 	mov	sp,a
                    2252   8445 	C$tff.c$807$1$1 ==.
                           8446 ;	tff.c:807: FATFS *fs = FatFs;
                           8447 ;	genAssign
   2E33 E5 0F              8448 	mov	a,_bp
   2E35 24 26              8449 	add	a,#0x26
   2E37 F8                 8450 	mov	r0,a
   2E38 A6 0A              8451 	mov	@r0,_FatFs
   2E3A 08                 8452 	inc	r0
   2E3B A6 0B              8453 	mov	@r0,(_FatFs + 1)
   2E3D 08                 8454 	inc	r0
   2E3E A6 0C              8455 	mov	@r0,(_FatFs + 2)
                    225F   8456 	C$tff.c$810$1$1 ==.
                           8457 ;	tff.c:810: fp->fs = NULL;
                           8458 ;	genPlus
   2E40 A8 0F              8459 	mov	r0,_bp
   2E42 08                 8460 	inc	r0
   2E43 E5 0F              8461 	mov	a,_bp
   2E45 24 31              8462 	add	a,#0x31
   2E47 F9                 8463 	mov	r1,a
                           8464 ;     genPlusIncr
   2E48 74 04              8465 	mov	a,#0x04
   2E4A 26                 8466 	add	a,@r0
   2E4B F7                 8467 	mov	@r1,a
                           8468 ;	Peephole 181	changed mov to clr
   2E4C E4                 8469 	clr	a
   2E4D 08                 8470 	inc	r0
   2E4E 36                 8471 	addc	a,@r0
   2E4F 09                 8472 	inc	r1
   2E50 F7                 8473 	mov	@r1,a
   2E51 08                 8474 	inc	r0
   2E52 09                 8475 	inc	r1
   2E53 E6                 8476 	mov	a,@r0
   2E54 F7                 8477 	mov	@r1,a
                           8478 ;	genPointerSet
                           8479 ;	genGenPointerSet
   2E55 E5 0F              8480 	mov	a,_bp
   2E57 24 31              8481 	add	a,#0x31
   2E59 F8                 8482 	mov	r0,a
   2E5A 86 82              8483 	mov	dpl,@r0
   2E5C 08                 8484 	inc	r0
   2E5D 86 83              8485 	mov	dph,@r0
   2E5F 08                 8486 	inc	r0
   2E60 86 F0              8487 	mov	b,@r0
                           8488 ;	Peephole 181	changed mov to clr
   2E62 E4                 8489 	clr	a
   2E63 12 42 DC           8490 	lcall	__gptrput
   2E66 A3                 8491 	inc	dptr
                           8492 ;	Peephole 181	changed mov to clr
   2E67 E4                 8493 	clr	a
   2E68 12 42 DC           8494 	lcall	__gptrput
   2E6B A3                 8495 	inc	dptr
                           8496 ;	Peephole 181	changed mov to clr
   2E6C E4                 8497 	clr	a
   2E6D 12 42 DC           8498 	lcall	__gptrput
                    228F   8499 	C$tff.c$815$1$1 ==.
                           8500 ;	tff.c:815: mode &= FA_READ;
                           8501 ;	genAnd
   2E70 E5 0F              8502 	mov	a,_bp
   2E72 24 FA              8503 	add	a,#0xfffffffa
   2E74 F8                 8504 	mov	r0,a
   2E75 E6                 8505 	mov	a,@r0
   2E76 54 01              8506 	anl	a,#0x01
   2E78 F6                 8507 	mov	@r0,a
                    2298   8508 	C$tff.c$816$1$1 ==.
                           8509 ;	tff.c:816: res = auto_mount(&path, 0);
                           8510 ;	genAddrOf
   2E79 E5 0F              8511 	mov	a,_bp
   2E7B 24 FB              8512 	add	a,#0xfb
   2E7D FA                 8513 	mov	r2,a
                           8514 ;	genCast
   2E7E 7B 00              8515 	mov	r3,#0x00
   2E80 7C 40              8516 	mov	r4,#0x40
                           8517 ;	genIpush
                           8518 ;	Peephole 181	changed mov to clr
   2E82 E4                 8519 	clr	a
   2E83 C0 E0              8520 	push	acc
                           8521 ;	genCall
   2E85 8A 82              8522 	mov	dpl,r2
   2E87 8B 83              8523 	mov	dph,r3
   2E89 8C F0              8524 	mov	b,r4
   2E8B 12 21 C5           8525 	lcall	_auto_mount
   2E8E AA 82              8526 	mov	r2,dpl
   2E90 15 81              8527 	dec	sp
                           8528 ;	genAssign
                    22B1   8529 	C$tff.c$818$1$1 ==.
                           8530 ;	tff.c:818: if (res != FR_OK) return res;
                           8531 ;	genCmpEq
                           8532 ;	gencjneshort
   2E92 BA 00 02           8533 	cjne	r2,#0x00,00113$
                           8534 ;	Peephole 112.b	changed ljmp to sjmp
   2E95 80 05              8535 	sjmp	00102$
   2E97                    8536 00113$:
                           8537 ;	genRet
   2E97 8A 82              8538 	mov	dpl,r2
   2E99 02 31 DE           8539 	ljmp	00108$
   2E9C                    8540 00102$:
                    22BB   8541 	C$tff.c$821$1$1 ==.
                           8542 ;	tff.c:821: res = trace_path(&dirobj, fn, path, &dir);	/* Trace the file path */
                           8543 ;	genIpush
                           8544 ;	genAddrOf
   2E9C E5 0F              8545 	mov	a,_bp
   2E9E 24 04              8546 	add	a,#0x04
   2EA0 FB                 8547 	mov	r3,a
                           8548 ;	genCast
   2EA1 E5 0F              8549 	mov	a,_bp
   2EA3 24 29              8550 	add	a,#0x29
   2EA5 F8                 8551 	mov	r0,a
   2EA6 A6 03              8552 	mov	@r0,ar3
   2EA8 08                 8553 	inc	r0
   2EA9 76 00              8554 	mov	@r0,#0x00
   2EAB 08                 8555 	inc	r0
   2EAC 76 40              8556 	mov	@r0,#0x40
                           8557 ;	genAddrOf
   2EAE E5 0F              8558 	mov	a,_bp
   2EB0 24 1A              8559 	add	a,#0x1a
   2EB2 FE                 8560 	mov	r6,a
                           8561 ;	genCast
   2EB3 7A 00              8562 	mov	r2,#0x00
   2EB5 7F 40              8563 	mov	r7,#0x40
                           8564 ;	genAddrOf
   2EB7 E5 0F              8565 	mov	a,_bp
   2EB9 24 07              8566 	add	a,#0x07
   2EBB FC                 8567 	mov	r4,a
                           8568 ;	genCast
   2EBC 7D 00              8569 	mov	r5,#0x00
   2EBE 7B 40              8570 	mov	r3,#0x40
                           8571 ;	genIpush
   2EC0 E5 0F              8572 	mov	a,_bp
   2EC2 24 29              8573 	add	a,#0x29
   2EC4 F8                 8574 	mov	r0,a
   2EC5 E6                 8575 	mov	a,@r0
   2EC6 C0 E0              8576 	push	acc
   2EC8 08                 8577 	inc	r0
   2EC9 E6                 8578 	mov	a,@r0
   2ECA C0 E0              8579 	push	acc
   2ECC 08                 8580 	inc	r0
   2ECD E6                 8581 	mov	a,@r0
   2ECE C0 E0              8582 	push	acc
                           8583 ;	genIpush
   2ED0 E5 0F              8584 	mov	a,_bp
   2ED2 24 FB              8585 	add	a,#0xfffffffb
   2ED4 F8                 8586 	mov	r0,a
   2ED5 E6                 8587 	mov	a,@r0
   2ED6 C0 E0              8588 	push	acc
   2ED8 08                 8589 	inc	r0
   2ED9 E6                 8590 	mov	a,@r0
   2EDA C0 E0              8591 	push	acc
   2EDC 08                 8592 	inc	r0
   2EDD E6                 8593 	mov	a,@r0
   2EDE C0 E0              8594 	push	acc
                           8595 ;	genIpush
   2EE0 C0 06              8596 	push	ar6
   2EE2 C0 02              8597 	push	ar2
   2EE4 C0 07              8598 	push	ar7
                           8599 ;	genCall
   2EE6 8C 82              8600 	mov	dpl,r4
   2EE8 8D 83              8601 	mov	dph,r5
   2EEA 8B F0              8602 	mov	b,r3
   2EEC 12 1A 95           8603 	lcall	_trace_path
   2EEF AB 82              8604 	mov	r3,dpl
   2EF1 E5 81              8605 	mov	a,sp
   2EF3 24 F7              8606 	add	a,#0xf7
   2EF5 F5 81              8607 	mov	sp,a
                           8608 ;	genAssign
   2EF7 8B 02              8609 	mov	ar2,r3
                    2318   8610 	C$tff.c$868$1$1 ==.
                           8611 ;	tff.c:868: if (res != FR_OK) return res;		/* Trace failed */
                           8612 ;	genCmpEq
                           8613 ;	gencjne
                           8614 ;	gencjneshort
                           8615 ;	Peephole 241.d	optimized compare
   2EF9 E4                 8616 	clr	a
   2EFA BA 00 01           8617 	cjne	r2,#0x00,00114$
   2EFD 04                 8618 	inc	a
   2EFE                    8619 00114$:
                           8620 ;	Peephole 300	removed redundant label 00115$
                           8621 ;	genIpop
                           8622 ;	genIfx
                           8623 ;	genIfxJump
                           8624 ;	Peephole 108.b	removed ljmp by inverse jump logic
   2EFE 70 05              8625 	jnz	00104$
                           8626 ;	Peephole 300	removed redundant label 00116$
                           8627 ;	genRet
   2F00 8A 82              8628 	mov	dpl,r2
   2F02 02 31 DE           8629 	ljmp	00108$
   2F05                    8630 00104$:
                    2324   8631 	C$tff.c$869$1$1 ==.
                           8632 ;	tff.c:869: if (dir == NULL || (dir[DIR_Attr] & AM_DIR))	/* It is a directory */
                           8633 ;	genAssign
                           8634 ;	genCmpEq
   2F05 E5 0F              8635 	mov	a,_bp
   2F07 24 04              8636 	add	a,#0x04
   2F09 F8                 8637 	mov	r0,a
                           8638 ;	gencjneshort
   2F0A B6 00 0A           8639 	cjne	@r0,#0x00,00117$
   2F0D 08                 8640 	inc	r0
   2F0E B6 00 06           8641 	cjne	@r0,#0x00,00117$
   2F11 08                 8642 	inc	r0
   2F12 B6 00 02           8643 	cjne	@r0,#0x00,00117$
                           8644 ;	Peephole 112.b	changed ljmp to sjmp
   2F15 80 1E              8645 	sjmp	00105$
   2F17                    8646 00117$:
                           8647 ;	genIpush
                           8648 ;	genPlus
   2F17 E5 0F              8649 	mov	a,_bp
   2F19 24 04              8650 	add	a,#0x04
   2F1B F8                 8651 	mov	r0,a
                           8652 ;     genPlusIncr
   2F1C 74 0B              8653 	mov	a,#0x0B
   2F1E 26                 8654 	add	a,@r0
   2F1F FD                 8655 	mov	r5,a
                           8656 ;	Peephole 181	changed mov to clr
   2F20 E4                 8657 	clr	a
   2F21 08                 8658 	inc	r0
   2F22 36                 8659 	addc	a,@r0
   2F23 FE                 8660 	mov	r6,a
   2F24 08                 8661 	inc	r0
   2F25 86 07              8662 	mov	ar7,@r0
                           8663 ;	genPointerGet
                           8664 ;	genGenPointerGet
   2F27 8D 82              8665 	mov	dpl,r5
   2F29 8E 83              8666 	mov	dph,r6
   2F2B 8F F0              8667 	mov	b,r7
   2F2D 12 47 8A           8668 	lcall	__gptrget
                           8669 ;	genAnd
   2F30 FD                 8670 	mov	r5,a
                           8671 ;	Peephole 105	removed redundant mov
   2F31 54 10              8672 	anl	a,#0x10
                           8673 ;	genIpop
                           8674 ;	genIfx
                           8675 ;	genIfxJump
                           8676 ;	Peephole 108.c	removed ljmp by inverse jump logic
   2F33 60 06              8677 	jz	00106$
                           8678 ;	Peephole 300	removed redundant label 00118$
   2F35                    8679 00105$:
                    2354   8680 	C$tff.c$870$1$1 ==.
                           8681 ;	tff.c:870: return FR_NO_FILE;
                           8682 ;	genRet
   2F35 75 82 02           8683 	mov	dpl,#0x02
   2F38 02 31 DE           8684 	ljmp	00108$
   2F3B                    8685 00106$:
                    235A   8686 	C$tff.c$879$1$1 ==.
                           8687 ;	tff.c:879: fp->flag = mode;							/* File access mode */
                           8688 ;	genPlus
   2F3B A8 0F              8689 	mov	r0,_bp
   2F3D 08                 8690 	inc	r0
                           8691 ;     genPlusIncr
   2F3E 74 02              8692 	mov	a,#0x02
   2F40 26                 8693 	add	a,@r0
   2F41 FA                 8694 	mov	r2,a
                           8695 ;	Peephole 181	changed mov to clr
   2F42 E4                 8696 	clr	a
   2F43 08                 8697 	inc	r0
   2F44 36                 8698 	addc	a,@r0
   2F45 FB                 8699 	mov	r3,a
   2F46 08                 8700 	inc	r0
   2F47 86 04              8701 	mov	ar4,@r0
                           8702 ;	genPointerSet
                           8703 ;	genGenPointerSet
   2F49 8A 82              8704 	mov	dpl,r2
   2F4B 8B 83              8705 	mov	dph,r3
   2F4D 8C F0              8706 	mov	b,r4
   2F4F E5 0F              8707 	mov	a,_bp
   2F51 24 FA              8708 	add	a,#0xfffffffa
   2F53 F8                 8709 	mov	r0,a
   2F54 E6                 8710 	mov	a,@r0
   2F55 12 42 DC           8711 	lcall	__gptrput
                    2377   8712 	C$tff.c$880$1$1 ==.
                           8713 ;	tff.c:880: fp->org_clust =								/* File start cluster */
                           8714 ;	genPlus
   2F58 A8 0F              8715 	mov	r0,_bp
   2F5A 08                 8716 	inc	r0
   2F5B E5 0F              8717 	mov	a,_bp
   2F5D 24 2C              8718 	add	a,#0x2c
   2F5F F9                 8719 	mov	r1,a
                           8720 ;     genPlusIncr
   2F60 74 0F              8721 	mov	a,#0x0F
   2F62 26                 8722 	add	a,@r0
   2F63 F7                 8723 	mov	@r1,a
                           8724 ;	Peephole 181	changed mov to clr
   2F64 E4                 8725 	clr	a
   2F65 08                 8726 	inc	r0
   2F66 36                 8727 	addc	a,@r0
   2F67 09                 8728 	inc	r1
   2F68 F7                 8729 	mov	@r1,a
   2F69 08                 8730 	inc	r0
   2F6A 09                 8731 	inc	r1
   2F6B E6                 8732 	mov	a,@r0
   2F6C F7                 8733 	mov	@r1,a
                    238C   8734 	C$tff.c$882$1$1 ==.
                           8735 ;	tff.c:882: ((DWORD)LD_WORD(&dir[DIR_FstClusHI]) << 16) |
                           8736 ;	genPlus
   2F6D E5 0F              8737 	mov	a,_bp
   2F6F 24 04              8738 	add	a,#0x04
   2F71 F8                 8739 	mov	r0,a
                           8740 ;     genPlusIncr
   2F72 74 14              8741 	mov	a,#0x14
   2F74 26                 8742 	add	a,@r0
   2F75 FD                 8743 	mov	r5,a
                           8744 ;	Peephole 181	changed mov to clr
   2F76 E4                 8745 	clr	a
   2F77 08                 8746 	inc	r0
   2F78 36                 8747 	addc	a,@r0
   2F79 FE                 8748 	mov	r6,a
   2F7A 08                 8749 	inc	r0
   2F7B 86 07              8750 	mov	ar7,@r0
                           8751 ;	genPlus
                           8752 ;     genPlusIncr
   2F7D 74 01              8753 	mov	a,#0x01
                           8754 ;	Peephole 236.a	used r5 instead of ar5
   2F7F 2D                 8755 	add	a,r5
   2F80 FA                 8756 	mov	r2,a
                           8757 ;	Peephole 181	changed mov to clr
   2F81 E4                 8758 	clr	a
                           8759 ;	Peephole 236.b	used r6 instead of ar6
   2F82 3E                 8760 	addc	a,r6
   2F83 FB                 8761 	mov	r3,a
   2F84 8F 04              8762 	mov	ar4,r7
                           8763 ;	genPointerGet
                           8764 ;	genGenPointerGet
   2F86 8A 82              8765 	mov	dpl,r2
   2F88 8B 83              8766 	mov	dph,r3
   2F8A 8C F0              8767 	mov	b,r4
   2F8C 12 47 8A           8768 	lcall	__gptrget
   2F8F FA                 8769 	mov	r2,a
                           8770 ;	genCast
   2F90 7B 00              8771 	mov	r3,#0x00
                           8772 ;	genLeftShift
                           8773 ;	genLeftShiftLiteral
   2F92 E5 0F              8774 	mov	a,_bp
   2F94 24 2F              8775 	add	a,#0x2f
                           8776 ;	genlshTwo
                           8777 ;	Peephole 185	changed order of increment (acc incremented also!)
   2F96 04                 8778 	inc	a
   2F97 F8                 8779 	mov	r0,a
   2F98 A6 02              8780 	mov	@r0,ar2
   2F9A 18                 8781 	dec	r0
   2F9B 76 00              8782 	mov	@r0,#0x00
                           8783 ;	genPointerGet
                           8784 ;	genGenPointerGet
   2F9D 8D 82              8785 	mov	dpl,r5
   2F9F 8E 83              8786 	mov	dph,r6
   2FA1 8F F0              8787 	mov	b,r7
   2FA3 12 47 8A           8788 	lcall	__gptrget
   2FA6 FC                 8789 	mov	r4,a
                           8790 ;	genCast
   2FA7 7A 00              8791 	mov	r2,#0x00
                           8792 ;	genOr
   2FA9 E5 0F              8793 	mov	a,_bp
   2FAB 24 2F              8794 	add	a,#0x2f
   2FAD F8                 8795 	mov	r0,a
   2FAE E6                 8796 	mov	a,@r0
   2FAF 42 04              8797 	orl	ar4,a
   2FB1 08                 8798 	inc	r0
   2FB2 E6                 8799 	mov	a,@r0
   2FB3 42 02              8800 	orl	ar2,a
                           8801 ;	genCast
                           8802 ;	genLeftShift
                           8803 ;	genLeftShiftLiteral
                           8804 ;	Peephole 3.c	changed mov to clr
   2FB5 E4                 8805 	clr	a
   2FB6 FB                 8806 	mov	r3,a
   2FB7 FD                 8807 	mov	r5,a
   2FB8 E5 0F              8808 	mov	a,_bp
   2FBA 24 34              8809 	add	a,#0x34
                           8810 ;	genlshFour
                           8811 ;	Peephole 185	changed order of increment (acc incremented also!)
   2FBC 04                 8812 	inc	a
                           8813 ;	Peephole 185	changed order of increment (acc incremented also!)
   2FBD 04                 8814 	inc	a
                           8815 ;	Peephole 185	changed order of increment (acc incremented also!)
   2FBE 04                 8816 	inc	a
   2FBF F8                 8817 	mov	r0,a
   2FC0 A6 02              8818 	mov	@r0,ar2
   2FC2 18                 8819 	dec	r0
   2FC3 A6 04              8820 	mov	@r0,ar4
   2FC5 18                 8821 	dec	r0
   2FC6 76 00              8822 	mov	@r0,#0x00
   2FC8 18                 8823 	dec	r0
   2FC9 76 00              8824 	mov	@r0,#0x00
                    23EA   8825 	C$tff.c$884$1$1 ==.
                           8826 ;	tff.c:884: LD_WORD(&dir[DIR_FstClusLO]);
                           8827 ;	genPlus
   2FCB E5 0F              8828 	mov	a,_bp
   2FCD 24 04              8829 	add	a,#0x04
   2FCF F8                 8830 	mov	r0,a
                           8831 ;     genPlusIncr
   2FD0 74 1A              8832 	mov	a,#0x1A
   2FD2 26                 8833 	add	a,@r0
   2FD3 FE                 8834 	mov	r6,a
                           8835 ;	Peephole 181	changed mov to clr
   2FD4 E4                 8836 	clr	a
   2FD5 08                 8837 	inc	r0
   2FD6 36                 8838 	addc	a,@r0
   2FD7 FF                 8839 	mov	r7,a
   2FD8 08                 8840 	inc	r0
   2FD9 86 02              8841 	mov	ar2,@r0
                           8842 ;	genPlus
                           8843 ;     genPlusIncr
   2FDB 74 01              8844 	mov	a,#0x01
                           8845 ;	Peephole 236.a	used r6 instead of ar6
   2FDD 2E                 8846 	add	a,r6
   2FDE FB                 8847 	mov	r3,a
                           8848 ;	Peephole 181	changed mov to clr
   2FDF E4                 8849 	clr	a
                           8850 ;	Peephole 236.b	used r7 instead of ar7
   2FE0 3F                 8851 	addc	a,r7
   2FE1 FC                 8852 	mov	r4,a
   2FE2 8A 05              8853 	mov	ar5,r2
                           8854 ;	genPointerGet
                           8855 ;	genGenPointerGet
   2FE4 8B 82              8856 	mov	dpl,r3
   2FE6 8C 83              8857 	mov	dph,r4
   2FE8 8D F0              8858 	mov	b,r5
   2FEA 12 47 8A           8859 	lcall	__gptrget
   2FED FB                 8860 	mov	r3,a
                           8861 ;	genCast
                           8862 ;	genLeftShift
                           8863 ;	genLeftShiftLiteral
                           8864 ;	genlshTwo
                           8865 ;	peephole 177.e	removed redundant move
   2FEE 8B 04              8866 	mov	ar4,r3
   2FF0 7B 00              8867 	mov	r3,#0x00
                           8868 ;	genPointerGet
                           8869 ;	genGenPointerGet
   2FF2 8E 82              8870 	mov	dpl,r6
   2FF4 8F 83              8871 	mov	dph,r7
   2FF6 8A F0              8872 	mov	b,r2
   2FF8 12 47 8A           8873 	lcall	__gptrget
                           8874 ;	genCast
                           8875 ;	genOr
   2FFB FE                 8876 	mov	r6,a
   2FFC 7A 00              8877 	mov	r2,#0x00
                           8878 ;	Peephole 177.d	removed redundant move
   2FFE 42 03              8879 	orl	ar3,a
   3000 EA                 8880 	mov	a,r2
   3001 42 04              8881 	orl	ar4,a
                           8882 ;	genCast
                           8883 ;	genOr
                           8884 ;	Peephole 3.c	changed mov to clr
   3003 E4                 8885 	clr	a
   3004 FA                 8886 	mov	r2,a
   3005 FD                 8887 	mov	r5,a
   3006 E5 0F              8888 	mov	a,_bp
   3008 24 34              8889 	add	a,#0x34
   300A F8                 8890 	mov	r0,a
   300B E6                 8891 	mov	a,@r0
   300C 42 03              8892 	orl	ar3,a
   300E 08                 8893 	inc	r0
   300F E6                 8894 	mov	a,@r0
   3010 42 04              8895 	orl	ar4,a
   3012 08                 8896 	inc	r0
   3013 E6                 8897 	mov	a,@r0
   3014 42 02              8898 	orl	ar2,a
   3016 08                 8899 	inc	r0
   3017 E6                 8900 	mov	a,@r0
   3018 42 05              8901 	orl	ar5,a
                           8902 ;	genPointerSet
                           8903 ;	genGenPointerSet
   301A E5 0F              8904 	mov	a,_bp
   301C 24 2C              8905 	add	a,#0x2c
   301E F8                 8906 	mov	r0,a
   301F 86 82              8907 	mov	dpl,@r0
   3021 08                 8908 	inc	r0
   3022 86 83              8909 	mov	dph,@r0
   3024 08                 8910 	inc	r0
   3025 86 F0              8911 	mov	b,@r0
   3027 EB                 8912 	mov	a,r3
   3028 12 42 DC           8913 	lcall	__gptrput
   302B A3                 8914 	inc	dptr
   302C EC                 8915 	mov	a,r4
   302D 12 42 DC           8916 	lcall	__gptrput
   3030 A3                 8917 	inc	dptr
   3031 EA                 8918 	mov	a,r2
   3032 12 42 DC           8919 	lcall	__gptrput
   3035 A3                 8920 	inc	dptr
   3036 ED                 8921 	mov	a,r5
   3037 12 42 DC           8922 	lcall	__gptrput
                    2459   8923 	C$tff.c$885$1$1 ==.
                           8924 ;	tff.c:885: fp->fsize = LD_DWORD(&dir[DIR_FileSize]);	/* File size */
                           8925 ;	genPlus
   303A A8 0F              8926 	mov	r0,_bp
   303C 08                 8927 	inc	r0
   303D E5 0F              8928 	mov	a,_bp
   303F 24 34              8929 	add	a,#0x34
   3041 F9                 8930 	mov	r1,a
                           8931 ;     genPlusIncr
   3042 74 0B              8932 	mov	a,#0x0B
   3044 26                 8933 	add	a,@r0
   3045 F7                 8934 	mov	@r1,a
                           8935 ;	Peephole 181	changed mov to clr
   3046 E4                 8936 	clr	a
   3047 08                 8937 	inc	r0
   3048 36                 8938 	addc	a,@r0
   3049 09                 8939 	inc	r1
   304A F7                 8940 	mov	@r1,a
   304B 08                 8941 	inc	r0
   304C 09                 8942 	inc	r1
   304D E6                 8943 	mov	a,@r0
   304E F7                 8944 	mov	@r1,a
                           8945 ;	genPlus
   304F E5 0F              8946 	mov	a,_bp
   3051 24 04              8947 	add	a,#0x04
   3053 F8                 8948 	mov	r0,a
   3054 E5 0F              8949 	mov	a,_bp
   3056 24 2C              8950 	add	a,#0x2c
   3058 F9                 8951 	mov	r1,a
                           8952 ;     genPlusIncr
   3059 74 1C              8953 	mov	a,#0x1C
   305B 26                 8954 	add	a,@r0
   305C F7                 8955 	mov	@r1,a
                           8956 ;	Peephole 181	changed mov to clr
   305D E4                 8957 	clr	a
   305E 08                 8958 	inc	r0
   305F 36                 8959 	addc	a,@r0
   3060 09                 8960 	inc	r1
   3061 F7                 8961 	mov	@r1,a
   3062 08                 8962 	inc	r0
   3063 09                 8963 	inc	r1
   3064 E6                 8964 	mov	a,@r0
   3065 F7                 8965 	mov	@r1,a
                           8966 ;	genPlus
   3066 E5 0F              8967 	mov	a,_bp
   3068 24 2C              8968 	add	a,#0x2c
   306A F8                 8969 	mov	r0,a
                           8970 ;     genPlusIncr
   306B 74 03              8971 	mov	a,#0x03
   306D 26                 8972 	add	a,@r0
   306E FA                 8973 	mov	r2,a
                           8974 ;	Peephole 181	changed mov to clr
   306F E4                 8975 	clr	a
   3070 08                 8976 	inc	r0
   3071 36                 8977 	addc	a,@r0
   3072 FB                 8978 	mov	r3,a
   3073 08                 8979 	inc	r0
   3074 86 04              8980 	mov	ar4,@r0
                           8981 ;	genPointerGet
                           8982 ;	genGenPointerGet
   3076 8A 82              8983 	mov	dpl,r2
   3078 8B 83              8984 	mov	dph,r3
   307A 8C F0              8985 	mov	b,r4
   307C 12 47 8A           8986 	lcall	__gptrget
   307F FA                 8987 	mov	r2,a
                           8988 ;	genCast
                           8989 ;	genLeftShift
                           8990 ;	genLeftShiftLiteral
                           8991 ;	Peephole 3.c	changed mov to clr
                           8992 ;	Peephole 3.b	changed mov to clr
   3080 E4                 8993 	clr	a
   3081 FB                 8994 	mov	r3,a
   3082 FC                 8995 	mov	r4,a
   3083 FD                 8996 	mov	r5,a
   3084 E5 0F              8997 	mov	a,_bp
   3086 24 38              8998 	add	a,#0x38
                           8999 ;	genlshFour
                           9000 ;	Peephole 185	changed order of increment (acc incremented also!)
   3088 04                 9001 	inc	a
                           9002 ;	Peephole 185	changed order of increment (acc incremented also!)
   3089 04                 9003 	inc	a
                           9004 ;	Peephole 185	changed order of increment (acc incremented also!)
   308A 04                 9005 	inc	a
   308B F8                 9006 	mov	r0,a
   308C A6 02              9007 	mov	@r0,ar2
   308E 18                 9008 	dec	r0
   308F 18                 9009 	dec	r0
   3090 18                 9010 	dec	r0
   3091 76 00              9011 	mov	@r0,#0x00
   3093 08                 9012 	inc	r0
   3094 76 00              9013 	mov	@r0,#0x00
   3096 08                 9014 	inc	r0
   3097 76 00              9015 	mov	@r0,#0x00
                           9016 ;	genPlus
   3099 E5 0F              9017 	mov	a,_bp
   309B 24 2C              9018 	add	a,#0x2c
   309D F8                 9019 	mov	r0,a
                           9020 ;     genPlusIncr
   309E 74 02              9021 	mov	a,#0x02
   30A0 26                 9022 	add	a,@r0
   30A1 FE                 9023 	mov	r6,a
                           9024 ;	Peephole 181	changed mov to clr
   30A2 E4                 9025 	clr	a
   30A3 08                 9026 	inc	r0
   30A4 36                 9027 	addc	a,@r0
   30A5 FF                 9028 	mov	r7,a
   30A6 08                 9029 	inc	r0
   30A7 86 02              9030 	mov	ar2,@r0
                           9031 ;	genPointerGet
                           9032 ;	genGenPointerGet
   30A9 8E 82              9033 	mov	dpl,r6
   30AB 8F 83              9034 	mov	dph,r7
   30AD 8A F0              9035 	mov	b,r2
   30AF 12 47 8A           9036 	lcall	__gptrget
   30B2 FE                 9037 	mov	r6,a
                           9038 ;	genCast
   30B3 7A 00              9039 	mov	r2,#0x00
   30B5 7B 00              9040 	mov	r3,#0x00
                           9041 ;	genLeftShift
                           9042 ;	genLeftShiftLiteral
                           9043 ;	genlshFour
                           9044 ;	peephole 177.e	removed redundant move
   30B7 8A 04              9045 	mov	ar4,r2
   30B9 8E 03              9046 	mov	ar3,r6
                           9047 ;	genOr
                           9048 ;	Peephole 3.c	changed mov to clr
   30BB E4                 9049 	clr	a
   30BC FA                 9050 	mov	r2,a
   30BD FE                 9051 	mov	r6,a
   30BE E5 0F              9052 	mov	a,_bp
   30C0 24 38              9053 	add	a,#0x38
   30C2 F8                 9054 	mov	r0,a
   30C3 EE                 9055 	mov	a,r6
   30C4 46                 9056 	orl	a,@r0
   30C5 F6                 9057 	mov	@r0,a
   30C6 EA                 9058 	mov	a,r2
   30C7 08                 9059 	inc	r0
   30C8 46                 9060 	orl	a,@r0
   30C9 F6                 9061 	mov	@r0,a
   30CA EB                 9062 	mov	a,r3
   30CB 08                 9063 	inc	r0
   30CC 46                 9064 	orl	a,@r0
   30CD F6                 9065 	mov	@r0,a
   30CE EC                 9066 	mov	a,r4
   30CF 08                 9067 	inc	r0
   30D0 46                 9068 	orl	a,@r0
   30D1 F6                 9069 	mov	@r0,a
                           9070 ;	genPlus
   30D2 E5 0F              9071 	mov	a,_bp
   30D4 24 2C              9072 	add	a,#0x2c
   30D6 F8                 9073 	mov	r0,a
                           9074 ;     genPlusIncr
   30D7 74 01              9075 	mov	a,#0x01
   30D9 26                 9076 	add	a,@r0
   30DA FD                 9077 	mov	r5,a
                           9078 ;	Peephole 181	changed mov to clr
   30DB E4                 9079 	clr	a
   30DC 08                 9080 	inc	r0
   30DD 36                 9081 	addc	a,@r0
   30DE FF                 9082 	mov	r7,a
   30DF 08                 9083 	inc	r0
   30E0 86 02              9084 	mov	ar2,@r0
                           9085 ;	genPointerGet
                           9086 ;	genGenPointerGet
   30E2 8D 82              9087 	mov	dpl,r5
   30E4 8F 83              9088 	mov	dph,r7
   30E6 8A F0              9089 	mov	b,r2
   30E8 12 47 8A           9090 	lcall	__gptrget
   30EB FD                 9091 	mov	r5,a
                           9092 ;	genCast
                           9093 ;	genLeftShift
                           9094 ;	genLeftShiftLiteral
                           9095 ;	genlshTwo
                           9096 ;	peephole 177.e	removed redundant move
   30EC 8D 02              9097 	mov	ar2,r5
                           9098 ;	genCast
                           9099 ;	genOr
                           9100 ;	Peephole 3.c	changed mov to clr
                           9101 ;	Peephole 3.b	changed mov to clr
   30EE E4                 9102 	clr	a
   30EF FD                 9103 	mov	r5,a
   30F0 FB                 9104 	mov	r3,a
   30F1 FC                 9105 	mov	r4,a
   30F2 E5 0F              9106 	mov	a,_bp
   30F4 24 38              9107 	add	a,#0x38
   30F6 F8                 9108 	mov	r0,a
   30F7 ED                 9109 	mov	a,r5
   30F8 46                 9110 	orl	a,@r0
   30F9 F6                 9111 	mov	@r0,a
   30FA EA                 9112 	mov	a,r2
   30FB 08                 9113 	inc	r0
   30FC 46                 9114 	orl	a,@r0
   30FD F6                 9115 	mov	@r0,a
   30FE EB                 9116 	mov	a,r3
   30FF 08                 9117 	inc	r0
   3100 46                 9118 	orl	a,@r0
   3101 F6                 9119 	mov	@r0,a
   3102 EC                 9120 	mov	a,r4
   3103 08                 9121 	inc	r0
   3104 46                 9122 	orl	a,@r0
   3105 F6                 9123 	mov	@r0,a
                           9124 ;	genPointerGet
                           9125 ;	genGenPointerGet
   3106 E5 0F              9126 	mov	a,_bp
   3108 24 2C              9127 	add	a,#0x2c
   310A F8                 9128 	mov	r0,a
   310B 86 82              9129 	mov	dpl,@r0
   310D 08                 9130 	inc	r0
   310E 86 83              9131 	mov	dph,@r0
   3110 08                 9132 	inc	r0
   3111 86 F0              9133 	mov	b,@r0
   3113 12 47 8A           9134 	lcall	__gptrget
   3116 FE                 9135 	mov	r6,a
                           9136 ;	genCast
                           9137 ;	genOr
                           9138 ;	Peephole 3.c	changed mov to clr
                           9139 ;	Peephole 3.b	changed mov to clr
   3117 E4                 9140 	clr	a
   3118 FF                 9141 	mov	r7,a
   3119 FA                 9142 	mov	r2,a
   311A FB                 9143 	mov	r3,a
   311B E5 0F              9144 	mov	a,_bp
   311D 24 38              9145 	add	a,#0x38
   311F F8                 9146 	mov	r0,a
   3120 E6                 9147 	mov	a,@r0
   3121 42 06              9148 	orl	ar6,a
   3123 08                 9149 	inc	r0
   3124 E6                 9150 	mov	a,@r0
   3125 42 07              9151 	orl	ar7,a
   3127 08                 9152 	inc	r0
   3128 E6                 9153 	mov	a,@r0
   3129 42 02              9154 	orl	ar2,a
   312B 08                 9155 	inc	r0
   312C E6                 9156 	mov	a,@r0
   312D 42 03              9157 	orl	ar3,a
                           9158 ;	genPointerSet
                           9159 ;	genGenPointerSet
   312F E5 0F              9160 	mov	a,_bp
   3131 24 34              9161 	add	a,#0x34
   3133 F8                 9162 	mov	r0,a
   3134 86 82              9163 	mov	dpl,@r0
   3136 08                 9164 	inc	r0
   3137 86 83              9165 	mov	dph,@r0
   3139 08                 9166 	inc	r0
   313A 86 F0              9167 	mov	b,@r0
   313C EE                 9168 	mov	a,r6
   313D 12 42 DC           9169 	lcall	__gptrput
   3140 A3                 9170 	inc	dptr
   3141 EF                 9171 	mov	a,r7
   3142 12 42 DC           9172 	lcall	__gptrput
   3145 A3                 9173 	inc	dptr
   3146 EA                 9174 	mov	a,r2
   3147 12 42 DC           9175 	lcall	__gptrput
   314A A3                 9176 	inc	dptr
   314B EB                 9177 	mov	a,r3
   314C 12 42 DC           9178 	lcall	__gptrput
                    256E   9179 	C$tff.c$886$1$1 ==.
                           9180 ;	tff.c:886: fp->fptr = 0;								/* File ptr */
                           9181 ;	genPlus
   314F A8 0F              9182 	mov	r0,_bp
   3151 08                 9183 	inc	r0
                           9184 ;     genPlusIncr
   3152 74 07              9185 	mov	a,#0x07
   3154 26                 9186 	add	a,@r0
   3155 FA                 9187 	mov	r2,a
                           9188 ;	Peephole 181	changed mov to clr
   3156 E4                 9189 	clr	a
   3157 08                 9190 	inc	r0
   3158 36                 9191 	addc	a,@r0
   3159 FB                 9192 	mov	r3,a
   315A 08                 9193 	inc	r0
   315B 86 04              9194 	mov	ar4,@r0
                           9195 ;	genPointerSet
                           9196 ;	genGenPointerSet
   315D 8A 82              9197 	mov	dpl,r2
   315F 8B 83              9198 	mov	dph,r3
   3161 8C F0              9199 	mov	b,r4
                           9200 ;	Peephole 181	changed mov to clr
   3163 E4                 9201 	clr	a
   3164 12 42 DC           9202 	lcall	__gptrput
   3167 A3                 9203 	inc	dptr
                           9204 ;	Peephole 181	changed mov to clr
   3168 E4                 9205 	clr	a
   3169 12 42 DC           9206 	lcall	__gptrput
   316C A3                 9207 	inc	dptr
                           9208 ;	Peephole 181	changed mov to clr
   316D E4                 9209 	clr	a
   316E 12 42 DC           9210 	lcall	__gptrput
   3171 A3                 9211 	inc	dptr
                           9212 ;	Peephole 181	changed mov to clr
   3172 E4                 9213 	clr	a
   3173 12 42 DC           9214 	lcall	__gptrput
                    2595   9215 	C$tff.c$887$1$1 ==.
                           9216 ;	tff.c:887: fp->sect_clust = 1;							/* Sector counter */
                           9217 ;	genPlus
   3176 A8 0F              9218 	mov	r0,_bp
   3178 08                 9219 	inc	r0
                           9220 ;     genPlusIncr
   3179 74 03              9221 	mov	a,#0x03
   317B 26                 9222 	add	a,@r0
   317C FA                 9223 	mov	r2,a
                           9224 ;	Peephole 181	changed mov to clr
   317D E4                 9225 	clr	a
   317E 08                 9226 	inc	r0
   317F 36                 9227 	addc	a,@r0
   3180 FB                 9228 	mov	r3,a
   3181 08                 9229 	inc	r0
   3182 86 04              9230 	mov	ar4,@r0
                           9231 ;	genPointerSet
                           9232 ;	genGenPointerSet
   3184 8A 82              9233 	mov	dpl,r2
   3186 8B 83              9234 	mov	dph,r3
   3188 8C F0              9235 	mov	b,r4
   318A 74 01              9236 	mov	a,#0x01
   318C 12 42 DC           9237 	lcall	__gptrput
                    25AE   9238 	C$tff.c$888$1$1 ==.
                           9239 ;	tff.c:888: fp->fs = fs; fp->id = fs->id;				/* Owner file system object of the file */
                           9240 ;	genPointerSet
                           9241 ;	genGenPointerSet
   318F E5 0F              9242 	mov	a,_bp
   3191 24 31              9243 	add	a,#0x31
   3193 F8                 9244 	mov	r0,a
   3194 86 82              9245 	mov	dpl,@r0
   3196 08                 9246 	inc	r0
   3197 86 83              9247 	mov	dph,@r0
   3199 08                 9248 	inc	r0
   319A 86 F0              9249 	mov	b,@r0
   319C E5 0F              9250 	mov	a,_bp
   319E 24 26              9251 	add	a,#0x26
   31A0 F9                 9252 	mov	r1,a
   31A1 E7                 9253 	mov	a,@r1
   31A2 12 42 DC           9254 	lcall	__gptrput
   31A5 A3                 9255 	inc	dptr
   31A6 09                 9256 	inc	r1
   31A7 E7                 9257 	mov	a,@r1
   31A8 12 42 DC           9258 	lcall	__gptrput
   31AB A3                 9259 	inc	dptr
   31AC 09                 9260 	inc	r1
   31AD E7                 9261 	mov	a,@r1
   31AE 12 42 DC           9262 	lcall	__gptrput
                           9263 ;	genPointerGet
                           9264 ;	genGenPointerGet
   31B1 E5 0F              9265 	mov	a,_bp
   31B3 24 26              9266 	add	a,#0x26
   31B5 F8                 9267 	mov	r0,a
   31B6 86 82              9268 	mov	dpl,@r0
   31B8 08                 9269 	inc	r0
   31B9 86 83              9270 	mov	dph,@r0
   31BB 08                 9271 	inc	r0
   31BC 86 F0              9272 	mov	b,@r0
   31BE 12 47 8A           9273 	lcall	__gptrget
   31C1 FA                 9274 	mov	r2,a
   31C2 A3                 9275 	inc	dptr
   31C3 12 47 8A           9276 	lcall	__gptrget
   31C6 FB                 9277 	mov	r3,a
                           9278 ;	genPointerSet
                           9279 ;	genGenPointerSet
   31C7 A8 0F              9280 	mov	r0,_bp
   31C9 08                 9281 	inc	r0
   31CA 86 82              9282 	mov	dpl,@r0
   31CC 08                 9283 	inc	r0
   31CD 86 83              9284 	mov	dph,@r0
   31CF 08                 9285 	inc	r0
   31D0 86 F0              9286 	mov	b,@r0
   31D2 EA                 9287 	mov	a,r2
   31D3 12 42 DC           9288 	lcall	__gptrput
   31D6 A3                 9289 	inc	dptr
   31D7 EB                 9290 	mov	a,r3
   31D8 12 42 DC           9291 	lcall	__gptrput
                    25FA   9292 	C$tff.c$890$1$1 ==.
                           9293 ;	tff.c:890: return FR_OK;
                           9294 ;	genRet
   31DB 75 82 00           9295 	mov	dpl,#0x00
   31DE                    9296 00108$:
   31DE 85 0F 81           9297 	mov	sp,_bp
   31E1 D0 0F              9298 	pop	_bp
                    2602   9299 	C$tff.c$891$1$1 ==.
                    2602   9300 	XG$f_open$0$0 ==.
   31E3 22                 9301 	ret
                           9302 ;------------------------------------------------------------
                           9303 ;Allocation info for local variables in function 'f_read'
                           9304 ;------------------------------------------------------------
                           9305 ;buff                      Allocated to stack - offset -5
                           9306 ;btr                       Allocated to stack - offset -7
                           9307 ;br                        Allocated to stack - offset -10
                           9308 ;fp                        Allocated to stack - offset 1
                           9309 ;sect                      Allocated to stack - offset 4
                           9310 ;remain                    Allocated to stack - offset 8
                           9311 ;rcnt                      Allocated to stack - offset 12
                           9312 ;cc                        Allocated to registers r6 r7 
                           9313 ;clust                     Allocated to stack - offset 14
                           9314 ;rbuff                     Allocated to stack - offset 18
                           9315 ;res                       Allocated to registers r2 
                           9316 ;fs                        Allocated to stack - offset 21
                           9317 ;sloc0                     Allocated to stack - offset 27
                           9318 ;sloc1                     Allocated to stack - offset 24
                           9319 ;sloc2                     Allocated to stack - offset 27
                           9320 ;sloc3                     Allocated to stack - offset 30
                           9321 ;sloc4                     Allocated to stack - offset 34
                           9322 ;sloc5                     Allocated to stack - offset 37
                           9323 ;sloc6                     Allocated to stack - offset 40
                           9324 ;sloc7                     Allocated to stack - offset 43
                           9325 ;sloc8                     Allocated to stack - offset 46
                           9326 ;sloc9                     Allocated to stack - offset 50
                           9327 ;sloc10                    Allocated to stack - offset 53
                           9328 ;sloc11                    Allocated to stack - offset 56
                           9329 ;------------------------------------------------------------
                    2603   9330 	G$f_read$0$0 ==.
                    2603   9331 	C$tff.c$900$1$1 ==.
                           9332 ;	tff.c:900: FRESULT f_read (
                           9333 ;	-----------------------------------------
                           9334 ;	 function f_read
                           9335 ;	-----------------------------------------
   31E4                    9336 _f_read:
   31E4 C0 0F              9337 	push	_bp
   31E6 85 81 0F           9338 	mov	_bp,sp
                           9339 ;     genReceive
   31E9 C0 82              9340 	push	dpl
   31EB C0 83              9341 	push	dph
   31ED C0 F0              9342 	push	b
   31EF E5 81              9343 	mov	a,sp
   31F1 24 3A              9344 	add	a,#0x3a
   31F3 F5 81              9345 	mov	sp,a
                    2614   9346 	C$tff.c$910$1$1 ==.
                           9347 ;	tff.c:910: BYTE *rbuff = buff;
                           9348 ;	genAssign
   31F5 E5 0F              9349 	mov	a,_bp
   31F7 24 FB              9350 	add	a,#0xfffffffb
   31F9 F8                 9351 	mov	r0,a
   31FA 86 05              9352 	mov	ar5,@r0
   31FC 08                 9353 	inc	r0
   31FD 86 06              9354 	mov	ar6,@r0
   31FF 08                 9355 	inc	r0
   3200 86 07              9356 	mov	ar7,@r0
                           9357 ;	genAssign
   3202 E5 0F              9358 	mov	a,_bp
   3204 24 12              9359 	add	a,#0x12
   3206 F8                 9360 	mov	r0,a
   3207 A6 05              9361 	mov	@r0,ar5
   3209 08                 9362 	inc	r0
   320A A6 06              9363 	mov	@r0,ar6
   320C 08                 9364 	inc	r0
   320D A6 07              9365 	mov	@r0,ar7
                    262E   9366 	C$tff.c$912$1$1 ==.
                           9367 ;	tff.c:912: FATFS *fs = fp->fs;
                           9368 ;	genPlus
   320F A8 0F              9369 	mov	r0,_bp
   3211 08                 9370 	inc	r0
                           9371 ;     genPlusIncr
   3212 74 04              9372 	mov	a,#0x04
   3214 26                 9373 	add	a,@r0
   3215 FD                 9374 	mov	r5,a
                           9375 ;	Peephole 181	changed mov to clr
   3216 E4                 9376 	clr	a
   3217 08                 9377 	inc	r0
   3218 36                 9378 	addc	a,@r0
   3219 FE                 9379 	mov	r6,a
   321A 08                 9380 	inc	r0
   321B 86 07              9381 	mov	ar7,@r0
                           9382 ;	genPointerGet
                           9383 ;	genGenPointerGet
   321D 8D 82              9384 	mov	dpl,r5
   321F 8E 83              9385 	mov	dph,r6
   3221 8F F0              9386 	mov	b,r7
   3223 12 47 8A           9387 	lcall	__gptrget
   3226 FD                 9388 	mov	r5,a
   3227 A3                 9389 	inc	dptr
   3228 12 47 8A           9390 	lcall	__gptrget
   322B FE                 9391 	mov	r6,a
   322C A3                 9392 	inc	dptr
   322D 12 47 8A           9393 	lcall	__gptrget
   3230 FF                 9394 	mov	r7,a
                           9395 ;	genAssign
   3231 E5 0F              9396 	mov	a,_bp
   3233 24 15              9397 	add	a,#0x15
   3235 F8                 9398 	mov	r0,a
   3236 A6 05              9399 	mov	@r0,ar5
   3238 08                 9400 	inc	r0
   3239 A6 06              9401 	mov	@r0,ar6
   323B 08                 9402 	inc	r0
   323C A6 07              9403 	mov	@r0,ar7
                    265D   9404 	C$tff.c$915$1$1 ==.
                           9405 ;	tff.c:915: *br = 0;
                           9406 ;	genAssign
   323E E5 0F              9407 	mov	a,_bp
   3240 24 F6              9408 	add	a,#0xfffffff6
   3242 F8                 9409 	mov	r0,a
   3243 E5 0F              9410 	mov	a,_bp
   3245 24 18              9411 	add	a,#0x18
   3247 F9                 9412 	mov	r1,a
   3248 E6                 9413 	mov	a,@r0
   3249 F7                 9414 	mov	@r1,a
   324A 08                 9415 	inc	r0
   324B 09                 9416 	inc	r1
   324C E6                 9417 	mov	a,@r0
   324D F7                 9418 	mov	@r1,a
   324E 08                 9419 	inc	r0
   324F 09                 9420 	inc	r1
   3250 E6                 9421 	mov	a,@r0
   3251 F7                 9422 	mov	@r1,a
                           9423 ;	genPointerSet
                           9424 ;	genGenPointerSet
   3252 E5 0F              9425 	mov	a,_bp
   3254 24 18              9426 	add	a,#0x18
   3256 F8                 9427 	mov	r0,a
   3257 86 82              9428 	mov	dpl,@r0
   3259 08                 9429 	inc	r0
   325A 86 83              9430 	mov	dph,@r0
   325C 08                 9431 	inc	r0
   325D 86 F0              9432 	mov	b,@r0
                           9433 ;	Peephole 181	changed mov to clr
   325F E4                 9434 	clr	a
   3260 12 42 DC           9435 	lcall	__gptrput
   3263 A3                 9436 	inc	dptr
                           9437 ;	Peephole 181	changed mov to clr
   3264 E4                 9438 	clr	a
   3265 12 42 DC           9439 	lcall	__gptrput
                    2687   9440 	C$tff.c$916$1$1 ==.
                           9441 ;	tff.c:916: res = validate(fs, fp->id);						/* Check validity of the object */
                           9442 ;	genPointerGet
                           9443 ;	genGenPointerGet
   3268 A8 0F              9444 	mov	r0,_bp
   326A 08                 9445 	inc	r0
   326B 86 82              9446 	mov	dpl,@r0
   326D 08                 9447 	inc	r0
   326E 86 83              9448 	mov	dph,@r0
   3270 08                 9449 	inc	r0
   3271 86 F0              9450 	mov	b,@r0
   3273 12 47 8A           9451 	lcall	__gptrget
   3276 FA                 9452 	mov	r2,a
   3277 A3                 9453 	inc	dptr
   3278 12 47 8A           9454 	lcall	__gptrget
   327B FB                 9455 	mov	r3,a
                           9456 ;	genIpush
   327C C0 02              9457 	push	ar2
   327E C0 03              9458 	push	ar3
                           9459 ;	genCall
   3280 E5 0F              9460 	mov	a,_bp
   3282 24 15              9461 	add	a,#0x15
   3284 F8                 9462 	mov	r0,a
   3285 86 82              9463 	mov	dpl,@r0
   3287 08                 9464 	inc	r0
   3288 86 83              9465 	mov	dph,@r0
   328A 08                 9466 	inc	r0
   328B 86 F0              9467 	mov	b,@r0
   328D 12 2D 60           9468 	lcall	_validate
   3290 AA 82              9469 	mov	r2,dpl
   3292 15 81              9470 	dec	sp
   3294 15 81              9471 	dec	sp
                           9472 ;	genAssign
                    26B5   9473 	C$tff.c$917$1$1 ==.
                           9474 ;	tff.c:917: if (res != FR_OK) return res;
                           9475 ;	genCmpEq
                           9476 ;	gencjneshort
   3296 BA 00 02           9477 	cjne	r2,#0x00,00152$
                           9478 ;	Peephole 112.b	changed ljmp to sjmp
   3299 80 05              9479 	sjmp	00102$
   329B                    9480 00152$:
                           9481 ;	genRet
   329B 8A 82              9482 	mov	dpl,r2
   329D 02 39 18           9483 	ljmp	00132$
   32A0                    9484 00102$:
                    26BF   9485 	C$tff.c$918$1$1 ==.
                           9486 ;	tff.c:918: if (fp->flag & FA__ERROR) return FR_RW_ERROR;	/* Check error flag */
                           9487 ;	genPlus
   32A0 A8 0F              9488 	mov	r0,_bp
   32A2 08                 9489 	inc	r0
   32A3 E5 0F              9490 	mov	a,_bp
   32A5 24 38              9491 	add	a,#0x38
   32A7 F9                 9492 	mov	r1,a
                           9493 ;     genPlusIncr
   32A8 74 02              9494 	mov	a,#0x02
   32AA 26                 9495 	add	a,@r0
   32AB F7                 9496 	mov	@r1,a
                           9497 ;	Peephole 181	changed mov to clr
   32AC E4                 9498 	clr	a
   32AD 08                 9499 	inc	r0
   32AE 36                 9500 	addc	a,@r0
   32AF 09                 9501 	inc	r1
   32B0 F7                 9502 	mov	@r1,a
   32B1 08                 9503 	inc	r0
   32B2 09                 9504 	inc	r1
   32B3 E6                 9505 	mov	a,@r0
   32B4 F7                 9506 	mov	@r1,a
                           9507 ;	genPointerGet
                           9508 ;	genGenPointerGet
   32B5 E5 0F              9509 	mov	a,_bp
   32B7 24 38              9510 	add	a,#0x38
   32B9 F8                 9511 	mov	r0,a
   32BA 86 82              9512 	mov	dpl,@r0
   32BC 08                 9513 	inc	r0
   32BD 86 83              9514 	mov	dph,@r0
   32BF 08                 9515 	inc	r0
   32C0 86 F0              9516 	mov	b,@r0
   32C2 12 47 8A           9517 	lcall	__gptrget
                           9518 ;	genAnd
   32C5 FA                 9519 	mov	r2,a
                           9520 ;	Peephole 105	removed redundant mov
                           9521 ;	genIfxJump
                           9522 ;	Peephole 108.d	removed ljmp by inverse jump logic
   32C6 30 E7 06           9523 	jnb	acc.7,00104$
                           9524 ;	Peephole 300	removed redundant label 00153$
                           9525 ;	genRet
   32C9 75 82 08           9526 	mov	dpl,#0x08
   32CC 02 39 18           9527 	ljmp	00132$
   32CF                    9528 00104$:
                    26EE   9529 	C$tff.c$919$1$1 ==.
                           9530 ;	tff.c:919: if (!(fp->flag & FA_READ)) return FR_DENIED;	/* Check access mode */
                           9531 ;	genAnd
   32CF EA                 9532 	mov	a,r2
                           9533 ;	genIfxJump
                           9534 ;	Peephole 108.e	removed ljmp by inverse jump logic
   32D0 20 E0 06           9535 	jb	acc.0,00106$
                           9536 ;	Peephole 300	removed redundant label 00154$
                           9537 ;	genRet
   32D3 75 82 06           9538 	mov	dpl,#0x06
   32D6 02 39 18           9539 	ljmp	00132$
   32D9                    9540 00106$:
                    26F8   9541 	C$tff.c$920$1$1 ==.
                           9542 ;	tff.c:920: remain = fp->fsize - fp->fptr;
                           9543 ;	genIpush
                           9544 ;	genPlus
   32D9 A8 0F              9545 	mov	r0,_bp
   32DB 08                 9546 	inc	r0
                           9547 ;     genPlusIncr
   32DC 74 0B              9548 	mov	a,#0x0B
   32DE 26                 9549 	add	a,@r0
   32DF FA                 9550 	mov	r2,a
                           9551 ;	Peephole 181	changed mov to clr
   32E0 E4                 9552 	clr	a
   32E1 08                 9553 	inc	r0
   32E2 36                 9554 	addc	a,@r0
   32E3 FB                 9555 	mov	r3,a
   32E4 08                 9556 	inc	r0
   32E5 86 04              9557 	mov	ar4,@r0
                           9558 ;	genPointerGet
                           9559 ;	genGenPointerGet
   32E7 8A 82              9560 	mov	dpl,r2
   32E9 8B 83              9561 	mov	dph,r3
   32EB 8C F0              9562 	mov	b,r4
   32ED E5 0F              9563 	mov	a,_bp
   32EF 24 1E              9564 	add	a,#0x1e
   32F1 F8                 9565 	mov	r0,a
   32F2 12 47 8A           9566 	lcall	__gptrget
   32F5 F6                 9567 	mov	@r0,a
   32F6 A3                 9568 	inc	dptr
   32F7 12 47 8A           9569 	lcall	__gptrget
   32FA 08                 9570 	inc	r0
   32FB F6                 9571 	mov	@r0,a
   32FC A3                 9572 	inc	dptr
   32FD 12 47 8A           9573 	lcall	__gptrget
   3300 08                 9574 	inc	r0
   3301 F6                 9575 	mov	@r0,a
   3302 A3                 9576 	inc	dptr
   3303 12 47 8A           9577 	lcall	__gptrget
   3306 08                 9578 	inc	r0
   3307 F6                 9579 	mov	@r0,a
                           9580 ;	genPlus
   3308 A8 0F              9581 	mov	r0,_bp
   330A 08                 9582 	inc	r0
   330B E5 0F              9583 	mov	a,_bp
   330D 24 1B              9584 	add	a,#0x1b
   330F F9                 9585 	mov	r1,a
                           9586 ;     genPlusIncr
   3310 74 07              9587 	mov	a,#0x07
   3312 26                 9588 	add	a,@r0
   3313 F7                 9589 	mov	@r1,a
                           9590 ;	Peephole 181	changed mov to clr
   3314 E4                 9591 	clr	a
   3315 08                 9592 	inc	r0
   3316 36                 9593 	addc	a,@r0
   3317 09                 9594 	inc	r1
   3318 F7                 9595 	mov	@r1,a
   3319 08                 9596 	inc	r0
   331A 09                 9597 	inc	r1
   331B E6                 9598 	mov	a,@r0
   331C F7                 9599 	mov	@r1,a
                           9600 ;	genPointerGet
                           9601 ;	genGenPointerGet
   331D E5 0F              9602 	mov	a,_bp
   331F 24 1B              9603 	add	a,#0x1b
   3321 F8                 9604 	mov	r0,a
   3322 86 82              9605 	mov	dpl,@r0
   3324 08                 9606 	inc	r0
   3325 86 83              9607 	mov	dph,@r0
   3327 08                 9608 	inc	r0
   3328 86 F0              9609 	mov	b,@r0
   332A 12 47 8A           9610 	lcall	__gptrget
   332D FE                 9611 	mov	r6,a
   332E A3                 9612 	inc	dptr
   332F 12 47 8A           9613 	lcall	__gptrget
   3332 FF                 9614 	mov	r7,a
   3333 A3                 9615 	inc	dptr
   3334 12 47 8A           9616 	lcall	__gptrget
   3337 FA                 9617 	mov	r2,a
   3338 A3                 9618 	inc	dptr
   3339 12 47 8A           9619 	lcall	__gptrget
   333C FB                 9620 	mov	r3,a
                           9621 ;	genMinus
   333D E5 0F              9622 	mov	a,_bp
   333F 24 1E              9623 	add	a,#0x1e
   3341 F8                 9624 	mov	r0,a
   3342 E6                 9625 	mov	a,@r0
   3343 C3                 9626 	clr	c
                           9627 ;	Peephole 236.l	used r6 instead of ar6
   3344 9E                 9628 	subb	a,r6
   3345 FE                 9629 	mov	r6,a
   3346 08                 9630 	inc	r0
   3347 E6                 9631 	mov	a,@r0
                           9632 ;	Peephole 236.l	used r7 instead of ar7
   3348 9F                 9633 	subb	a,r7
   3349 FF                 9634 	mov	r7,a
   334A 08                 9635 	inc	r0
   334B E6                 9636 	mov	a,@r0
                           9637 ;	Peephole 236.l	used r2 instead of ar2
   334C 9A                 9638 	subb	a,r2
   334D FA                 9639 	mov	r2,a
   334E 08                 9640 	inc	r0
   334F E6                 9641 	mov	a,@r0
                           9642 ;	Peephole 236.l	used r3 instead of ar3
   3350 9B                 9643 	subb	a,r3
   3351 FB                 9644 	mov	r3,a
                           9645 ;	genAssign
   3352 E5 0F              9646 	mov	a,_bp
   3354 24 08              9647 	add	a,#0x08
   3356 F8                 9648 	mov	r0,a
   3357 A6 06              9649 	mov	@r0,ar6
   3359 08                 9650 	inc	r0
   335A A6 07              9651 	mov	@r0,ar7
   335C 08                 9652 	inc	r0
   335D A6 02              9653 	mov	@r0,ar2
   335F 08                 9654 	inc	r0
   3360 A6 03              9655 	mov	@r0,ar3
                    2781   9656 	C$tff.c$921$1$1 ==.
                           9657 ;	tff.c:921: if (btr > remain) btr = (WORD)remain;			/* Truncate read count by number of bytes left */
                           9658 ;	genCast
   3362 E5 0F              9659 	mov	a,_bp
   3364 24 F9              9660 	add	a,#0xfffffff9
   3366 F8                 9661 	mov	r0,a
   3367 86 02              9662 	mov	ar2,@r0
   3369 08                 9663 	inc	r0
   336A 86 03              9664 	mov	ar3,@r0
                           9665 ;	genCmpGt
                           9666 ;	Peephole 3.c	changed mov to clr
   336C E4                 9667 	clr	a
   336D FC                 9668 	mov	r4,a
   336E FD                 9669 	mov	r5,a
   336F E5 0F              9670 	mov	a,_bp
   3371 24 08              9671 	add	a,#0x08
   3373 F8                 9672 	mov	r0,a
                           9673 ;	genCmp
   3374 C3                 9674 	clr	c
   3375 E6                 9675 	mov	a,@r0
   3376 9A                 9676 	subb	a,r2
   3377 08                 9677 	inc	r0
   3378 E6                 9678 	mov	a,@r0
   3379 9B                 9679 	subb	a,r3
   337A 08                 9680 	inc	r0
   337B E6                 9681 	mov	a,@r0
   337C 9C                 9682 	subb	a,r4
   337D 08                 9683 	inc	r0
   337E E6                 9684 	mov	a,@r0
   337F 9D                 9685 	subb	a,r5
                           9686 ;	genIpop
                           9687 ;	genIfx
                           9688 ;	genIfxJump
                           9689 ;	Peephole 108.c	removed ljmp by inverse jump logic
                           9690 ;	Peephole 128	jump optimization
   3380 50 10              9691 	jnc	00151$
                           9692 ;	Peephole 300	removed redundant label 00155$
                           9693 ;	genCast
   3382 E5 0F              9694 	mov	a,_bp
   3384 24 08              9695 	add	a,#0x08
   3386 F8                 9696 	mov	r0,a
   3387 E5 0F              9697 	mov	a,_bp
   3389 24 F9              9698 	add	a,#0xfffffff9
   338B F9                 9699 	mov	r1,a
   338C E6                 9700 	mov	a,@r0
   338D F7                 9701 	mov	@r1,a
   338E 08                 9702 	inc	r0
   338F 09                 9703 	inc	r1
   3390 E6                 9704 	mov	a,@r0
   3391 F7                 9705 	mov	@r1,a
   3392                    9706 00151$:
                           9707 ;	genPlus
   3392 A8 0F              9708 	mov	r0,_bp
   3394 08                 9709 	inc	r0
   3395 E5 0F              9710 	mov	a,_bp
   3397 24 35              9711 	add	a,#0x35
   3399 F9                 9712 	mov	r1,a
                           9713 ;     genPlusIncr
   339A 74 13              9714 	mov	a,#0x13
   339C 26                 9715 	add	a,@r0
   339D F7                 9716 	mov	@r1,a
                           9717 ;	Peephole 181	changed mov to clr
   339E E4                 9718 	clr	a
   339F 08                 9719 	inc	r0
   33A0 36                 9720 	addc	a,@r0
   33A1 09                 9721 	inc	r1
   33A2 F7                 9722 	mov	@r1,a
   33A3 08                 9723 	inc	r0
   33A4 09                 9724 	inc	r1
   33A5 E6                 9725 	mov	a,@r0
   33A6 F7                 9726 	mov	@r1,a
                           9727 ;	genPlus
   33A7 A8 0F              9728 	mov	r0,_bp
   33A9 08                 9729 	inc	r0
   33AA E5 0F              9730 	mov	a,_bp
   33AC 24 1E              9731 	add	a,#0x1e
   33AE F9                 9732 	mov	r1,a
                           9733 ;     genPlusIncr
   33AF 74 0F              9734 	mov	a,#0x0F
   33B1 26                 9735 	add	a,@r0
   33B2 F7                 9736 	mov	@r1,a
                           9737 ;	Peephole 181	changed mov to clr
   33B3 E4                 9738 	clr	a
   33B4 08                 9739 	inc	r0
   33B5 36                 9740 	addc	a,@r0
   33B6 09                 9741 	inc	r1
   33B7 F7                 9742 	mov	@r1,a
   33B8 08                 9743 	inc	r0
   33B9 09                 9744 	inc	r1
   33BA E6                 9745 	mov	a,@r0
   33BB F7                 9746 	mov	@r1,a
                           9747 ;	genPlus
   33BC E5 0F              9748 	mov	a,_bp
   33BE 24 15              9749 	add	a,#0x15
   33C0 F8                 9750 	mov	r0,a
   33C1 E5 0F              9751 	mov	a,_bp
   33C3 24 22              9752 	add	a,#0x22
   33C5 F9                 9753 	mov	r1,a
                           9754 ;     genPlusIncr
   33C6 74 18              9755 	mov	a,#0x18
   33C8 26                 9756 	add	a,@r0
   33C9 F7                 9757 	mov	@r1,a
                           9758 ;	Peephole 181	changed mov to clr
   33CA E4                 9759 	clr	a
   33CB 08                 9760 	inc	r0
   33CC 36                 9761 	addc	a,@r0
   33CD 09                 9762 	inc	r1
   33CE F7                 9763 	mov	@r1,a
   33CF 08                 9764 	inc	r0
   33D0 09                 9765 	inc	r1
   33D1 E6                 9766 	mov	a,@r0
   33D2 F7                 9767 	mov	@r1,a
                           9768 ;	genPlus
   33D3 E5 0F              9769 	mov	a,_bp
   33D5 24 15              9770 	add	a,#0x15
   33D7 F8                 9771 	mov	r0,a
   33D8 E5 0F              9772 	mov	a,_bp
   33DA 24 25              9773 	add	a,#0x25
   33DC F9                 9774 	mov	r1,a
                           9775 ;     genPlusIncr
   33DD 74 1D              9776 	mov	a,#0x1D
   33DF 26                 9777 	add	a,@r0
   33E0 F7                 9778 	mov	@r1,a
                           9779 ;	Peephole 181	changed mov to clr
   33E1 E4                 9780 	clr	a
   33E2 08                 9781 	inc	r0
   33E3 36                 9782 	addc	a,@r0
   33E4 09                 9783 	inc	r1
   33E5 F7                 9784 	mov	@r1,a
   33E6 08                 9785 	inc	r0
   33E7 09                 9786 	inc	r1
   33E8 E6                 9787 	mov	a,@r0
   33E9 F7                 9788 	mov	@r1,a
                           9789 ;	genPlus
   33EA A8 0F              9790 	mov	r0,_bp
   33EC 08                 9791 	inc	r0
   33ED E5 0F              9792 	mov	a,_bp
   33EF 24 28              9793 	add	a,#0x28
   33F1 F9                 9794 	mov	r1,a
                           9795 ;     genPlusIncr
   33F2 74 17              9796 	mov	a,#0x17
   33F4 26                 9797 	add	a,@r0
   33F5 F7                 9798 	mov	@r1,a
                           9799 ;	Peephole 181	changed mov to clr
   33F6 E4                 9800 	clr	a
   33F7 08                 9801 	inc	r0
   33F8 36                 9802 	addc	a,@r0
   33F9 09                 9803 	inc	r1
   33FA F7                 9804 	mov	@r1,a
   33FB 08                 9805 	inc	r0
   33FC 09                 9806 	inc	r1
   33FD E6                 9807 	mov	a,@r0
   33FE F7                 9808 	mov	@r1,a
                           9809 ;	genPlus
   33FF E5 0F              9810 	mov	a,_bp
   3401 24 15              9811 	add	a,#0x15
   3403 F8                 9812 	mov	r0,a
   3404 E5 0F              9813 	mov	a,_bp
   3406 24 2B              9814 	add	a,#0x2b
   3408 F9                 9815 	mov	r1,a
                           9816 ;     genPlusIncr
   3409 74 20              9817 	mov	a,#0x20
   340B 26                 9818 	add	a,@r0
   340C F7                 9819 	mov	@r1,a
                           9820 ;	Peephole 181	changed mov to clr
   340D E4                 9821 	clr	a
   340E 08                 9822 	inc	r0
   340F 36                 9823 	addc	a,@r0
   3410 09                 9824 	inc	r1
   3411 F7                 9825 	mov	@r1,a
   3412 08                 9826 	inc	r0
   3413 09                 9827 	inc	r1
   3414 E6                 9828 	mov	a,@r0
   3415 F7                 9829 	mov	@r1,a
   3416                    9830 00127$:
                    2835   9831 	C$tff.c$923$1$1 ==.
                           9832 ;	tff.c:923: for ( ;  btr;									/* Repeat until all data transferred */
                           9833 ;	genIfx
   3416 E5 0F              9834 	mov	a,_bp
   3418 24 F9              9835 	add	a,#0xfffffff9
   341A F8                 9836 	mov	r0,a
   341B E6                 9837 	mov	a,@r0
   341C 08                 9838 	inc	r0
   341D 46                 9839 	orl	a,@r0
                           9840 ;	genIfxJump
   341E 70 03              9841 	jnz	00156$
   3420 02 38 EB           9842 	ljmp	00130$
   3423                    9843 00156$:
                    2842   9844 	C$tff.c$925$2$2 ==.
                           9845 ;	tff.c:925: if ((fp->fptr % 512) == 0) {				/* On the sector boundary */
                           9846 ;	genPointerGet
                           9847 ;	genGenPointerGet
   3423 E5 0F              9848 	mov	a,_bp
   3425 24 1B              9849 	add	a,#0x1b
   3427 F8                 9850 	mov	r0,a
   3428 86 82              9851 	mov	dpl,@r0
   342A 08                 9852 	inc	r0
   342B 86 83              9853 	mov	dph,@r0
   342D 08                 9854 	inc	r0
   342E 86 F0              9855 	mov	b,@r0
   3430 12 47 8A           9856 	lcall	__gptrget
   3433 FB                 9857 	mov	r3,a
   3434 A3                 9858 	inc	dptr
   3435 12 47 8A           9859 	lcall	__gptrget
   3438 FC                 9860 	mov	r4,a
   3439 A3                 9861 	inc	dptr
   343A 12 47 8A           9862 	lcall	__gptrget
   343D FD                 9863 	mov	r5,a
   343E A3                 9864 	inc	dptr
   343F 12 47 8A           9865 	lcall	__gptrget
   3442 FE                 9866 	mov	r6,a
                           9867 ;	genAnd
   3443 EB                 9868 	mov	a,r3
   3444 70 04              9869 	jnz	00157$
   3446 EC                 9870 	mov	a,r4
                           9871 ;	Peephole 160.f	removed sjmp by inverse jump logic
   3447 30 E0 03           9872 	jnb	acc.0,00158$
   344A                    9873 00157$:
   344A 02 37 41           9874 	ljmp	00122$
   344D                    9875 00158$:
                    286C   9876 	C$tff.c$926$1$1 ==.
                           9877 ;	tff.c:926: if (--fp->sect_clust) {					/* Decrement left sector counter */
                           9878 ;	genIpush
                           9879 ;	genPlus
   344D A8 0F              9880 	mov	r0,_bp
   344F 08                 9881 	inc	r0
   3450 E5 0F              9882 	mov	a,_bp
   3452 24 32              9883 	add	a,#0x32
   3454 F9                 9884 	mov	r1,a
                           9885 ;     genPlusIncr
   3455 74 03              9886 	mov	a,#0x03
   3457 26                 9887 	add	a,@r0
   3458 F7                 9888 	mov	@r1,a
                           9889 ;	Peephole 181	changed mov to clr
   3459 E4                 9890 	clr	a
   345A 08                 9891 	inc	r0
   345B 36                 9892 	addc	a,@r0
   345C 09                 9893 	inc	r1
   345D F7                 9894 	mov	@r1,a
   345E 08                 9895 	inc	r0
   345F 09                 9896 	inc	r1
   3460 E6                 9897 	mov	a,@r0
   3461 F7                 9898 	mov	@r1,a
                           9899 ;	genPointerGet
                           9900 ;	genGenPointerGet
   3462 E5 0F              9901 	mov	a,_bp
   3464 24 32              9902 	add	a,#0x32
   3466 F8                 9903 	mov	r0,a
   3467 86 82              9904 	mov	dpl,@r0
   3469 08                 9905 	inc	r0
   346A 86 83              9906 	mov	dph,@r0
   346C 08                 9907 	inc	r0
   346D 86 F0              9908 	mov	b,@r0
   346F 12 47 8A           9909 	lcall	__gptrget
   3472 FA                 9910 	mov	r2,a
                           9911 ;	genMinus
                           9912 ;	genMinusDec
   3473 1A                 9913 	dec	r2
                           9914 ;	genPointerSet
                           9915 ;	genGenPointerSet
   3474 E5 0F              9916 	mov	a,_bp
   3476 24 32              9917 	add	a,#0x32
   3478 F8                 9918 	mov	r0,a
   3479 86 82              9919 	mov	dpl,@r0
   347B 08                 9920 	inc	r0
   347C 86 83              9921 	mov	dph,@r0
   347E 08                 9922 	inc	r0
   347F 86 F0              9923 	mov	b,@r0
                           9924 ;	genIfx
   3481 EA                 9925 	mov	a,r2
   3482 12 42 DC           9926 	lcall	__gptrput
                           9927 ;	Peephole 190	removed redundant mov
                           9928 ;	genIpop
                           9929 ;	genIfxJump
                           9930 ;	Peephole 108.c	removed ljmp by inverse jump logic
   3485 60 38              9931 	jz	00113$
                           9932 ;	Peephole 300	removed redundant label 00159$
                    28A6   9933 	C$tff.c$927$1$1 ==.
                           9934 ;	tff.c:927: sect = fp->curr_sect + 1;			/* Get current sector */
                           9935 ;	genIpush
                           9936 ;	genPointerGet
                           9937 ;	genGenPointerGet
   3487 E5 0F              9938 	mov	a,_bp
   3489 24 28              9939 	add	a,#0x28
   348B F8                 9940 	mov	r0,a
   348C 86 82              9941 	mov	dpl,@r0
   348E 08                 9942 	inc	r0
   348F 86 83              9943 	mov	dph,@r0
   3491 08                 9944 	inc	r0
   3492 86 F0              9945 	mov	b,@r0
   3494 12 47 8A           9946 	lcall	__gptrget
   3497 FA                 9947 	mov	r2,a
   3498 A3                 9948 	inc	dptr
   3499 12 47 8A           9949 	lcall	__gptrget
   349C FB                 9950 	mov	r3,a
   349D A3                 9951 	inc	dptr
   349E 12 47 8A           9952 	lcall	__gptrget
   34A1 FC                 9953 	mov	r4,a
   34A2 A3                 9954 	inc	dptr
   34A3 12 47 8A           9955 	lcall	__gptrget
   34A6 FD                 9956 	mov	r5,a
                           9957 ;	genPlus
   34A7 E5 0F              9958 	mov	a,_bp
   34A9 24 04              9959 	add	a,#0x04
   34AB F8                 9960 	mov	r0,a
                           9961 ;     genPlusIncr
   34AC 74 01              9962 	mov	a,#0x01
                           9963 ;	Peephole 236.a	used r2 instead of ar2
   34AE 2A                 9964 	add	a,r2
   34AF F6                 9965 	mov	@r0,a
                           9966 ;	Peephole 181	changed mov to clr
   34B0 E4                 9967 	clr	a
                           9968 ;	Peephole 236.b	used r3 instead of ar3
   34B1 3B                 9969 	addc	a,r3
   34B2 08                 9970 	inc	r0
   34B3 F6                 9971 	mov	@r0,a
                           9972 ;	Peephole 181	changed mov to clr
   34B4 E4                 9973 	clr	a
                           9974 ;	Peephole 236.b	used r4 instead of ar4
   34B5 3C                 9975 	addc	a,r4
   34B6 08                 9976 	inc	r0
   34B7 F6                 9977 	mov	@r0,a
                           9978 ;	Peephole 181	changed mov to clr
   34B8 E4                 9979 	clr	a
                           9980 ;	Peephole 236.b	used r5 instead of ar5
   34B9 3D                 9981 	addc	a,r5
   34BA 08                 9982 	inc	r0
   34BB F6                 9983 	mov	@r0,a
                           9984 ;	genIpop
   34BC 02 35 F0           9985 	ljmp	00114$
   34BF                    9986 00113$:
                    28DE   9987 	C$tff.c$929$4$5 ==.
                           9988 ;	tff.c:929: clust = (fp->fptr == 0) ?
                           9989 ;	genNot
   34BF EB                 9990 	mov	a,r3
   34C0 4C                 9991 	orl	a,r4
   34C1 4D                 9992 	orl	a,r5
   34C2 4E                 9993 	orl	a,r6
   34C3 B4 01 00           9994 	cjne	a,#0x01,00160$
   34C6                    9995 00160$:
   34C6 E4                 9996 	clr	a
   34C7 33                 9997 	rlc	a
                           9998 ;	genIfx
   34C8 FD                 9999 	mov	r5,a
                          10000 ;	Peephole 105	removed redundant mov
                          10001 ;	genIfxJump
                          10002 ;	Peephole 108.c	removed ljmp by inverse jump logic
   34C9 60 22             10003 	jz	00134$
                          10004 ;	Peephole 300	removed redundant label 00161$
                    28EA  10005 	C$tff.c$930$4$5 ==.
                          10006 ;	tff.c:930: fp->org_clust : get_cluster(fp->curr_clust);
                          10007 ;	genPointerGet
                          10008 ;	genGenPointerGet
   34CB E5 0F             10009 	mov	a,_bp
   34CD 24 1E             10010 	add	a,#0x1e
   34CF F8                10011 	mov	r0,a
   34D0 86 82             10012 	mov	dpl,@r0
   34D2 08                10013 	inc	r0
   34D3 86 83             10014 	mov	dph,@r0
   34D5 08                10015 	inc	r0
   34D6 86 F0             10016 	mov	b,@r0
   34D8 12 47 8A          10017 	lcall	__gptrget
   34DB FD                10018 	mov	r5,a
   34DC A3                10019 	inc	dptr
   34DD 12 47 8A          10020 	lcall	__gptrget
   34E0 FE                10021 	mov	r6,a
   34E1 A3                10022 	inc	dptr
   34E2 12 47 8A          10023 	lcall	__gptrget
   34E5 FF                10024 	mov	r7,a
   34E6 A3                10025 	inc	dptr
   34E7 12 47 8A          10026 	lcall	__gptrget
   34EA FA                10027 	mov	r2,a
                          10028 ;	Peephole 112.b	changed ljmp to sjmp
   34EB 80 30             10029 	sjmp	00135$
   34ED                   10030 00134$:
                          10031 ;	genPointerGet
                          10032 ;	genGenPointerGet
   34ED E5 0F             10033 	mov	a,_bp
   34EF 24 35             10034 	add	a,#0x35
   34F1 F8                10035 	mov	r0,a
   34F2 86 82             10036 	mov	dpl,@r0
   34F4 08                10037 	inc	r0
   34F5 86 83             10038 	mov	dph,@r0
   34F7 08                10039 	inc	r0
   34F8 86 F0             10040 	mov	b,@r0
   34FA 12 47 8A          10041 	lcall	__gptrget
   34FD FA                10042 	mov	r2,a
   34FE A3                10043 	inc	dptr
   34FF 12 47 8A          10044 	lcall	__gptrget
   3502 FB                10045 	mov	r3,a
   3503 A3                10046 	inc	dptr
   3504 12 47 8A          10047 	lcall	__gptrget
   3507 FC                10048 	mov	r4,a
   3508 A3                10049 	inc	dptr
   3509 12 47 8A          10050 	lcall	__gptrget
                          10051 ;	genCall
   350C FD                10052 	mov	r5,a
   350D 8A 82             10053 	mov	dpl,r2
   350F 8B 83             10054 	mov	dph,r3
   3511 8C F0             10055 	mov	b,r4
                          10056 ;	Peephole 191	removed redundant mov
   3513 12 0C CB          10057 	lcall	_get_cluster
   3516 AD 82             10058 	mov	r5,dpl
   3518 AE 83             10059 	mov	r6,dph
   351A AF F0             10060 	mov	r7,b
   351C FA                10061 	mov	r2,a
   351D                   10062 00135$:
                          10063 ;	genAssign
   351D E5 0F             10064 	mov	a,_bp
   351F 24 0E             10065 	add	a,#0x0e
   3521 F8                10066 	mov	r0,a
   3522 A6 05             10067 	mov	@r0,ar5
   3524 08                10068 	inc	r0
   3525 A6 06             10069 	mov	@r0,ar6
   3527 08                10070 	inc	r0
   3528 A6 07             10071 	mov	@r0,ar7
   352A 08                10072 	inc	r0
   352B A6 02             10073 	mov	@r0,ar2
                    294C  10074 	C$tff.c$931$4$5 ==.
                          10075 ;	tff.c:931: if (clust < 2 || clust >= fs->max_clust)
                          10076 ;	genCmpLt
   352D E5 0F             10077 	mov	a,_bp
   352F 24 0E             10078 	add	a,#0x0e
   3531 F8                10079 	mov	r0,a
                          10080 ;	genCmp
   3532 C3                10081 	clr	c
   3533 E6                10082 	mov	a,@r0
   3534 94 02             10083 	subb	a,#0x02
   3536 08                10084 	inc	r0
   3537 E6                10085 	mov	a,@r0
   3538 94 00             10086 	subb	a,#0x00
   353A 08                10087 	inc	r0
   353B E6                10088 	mov	a,@r0
   353C 94 00             10089 	subb	a,#0x00
   353E 08                10090 	inc	r0
   353F E6                10091 	mov	a,@r0
   3540 94 00             10092 	subb	a,#0x00
                          10093 ;	genIfxJump
   3542 50 03             10094 	jnc	00162$
   3544 02 38 F0          10095 	ljmp	00131$
   3547                   10096 00162$:
                          10097 ;	genPointerGet
                          10098 ;	genGenPointerGet
   3547 E5 0F             10099 	mov	a,_bp
   3549 24 22             10100 	add	a,#0x22
   354B F8                10101 	mov	r0,a
   354C 86 82             10102 	mov	dpl,@r0
   354E 08                10103 	inc	r0
   354F 86 83             10104 	mov	dph,@r0
   3551 08                10105 	inc	r0
   3552 86 F0             10106 	mov	b,@r0
   3554 12 47 8A          10107 	lcall	__gptrget
   3557 FE                10108 	mov	r6,a
   3558 A3                10109 	inc	dptr
   3559 12 47 8A          10110 	lcall	__gptrget
   355C FF                10111 	mov	r7,a
   355D A3                10112 	inc	dptr
   355E 12 47 8A          10113 	lcall	__gptrget
   3561 FA                10114 	mov	r2,a
   3562 A3                10115 	inc	dptr
   3563 12 47 8A          10116 	lcall	__gptrget
   3566 FB                10117 	mov	r3,a
                          10118 ;	genCmpLt
   3567 E5 0F             10119 	mov	a,_bp
   3569 24 0E             10120 	add	a,#0x0e
   356B F8                10121 	mov	r0,a
                          10122 ;	genCmp
   356C C3                10123 	clr	c
   356D E6                10124 	mov	a,@r0
   356E 9E                10125 	subb	a,r6
   356F 08                10126 	inc	r0
   3570 E6                10127 	mov	a,@r0
   3571 9F                10128 	subb	a,r7
   3572 08                10129 	inc	r0
   3573 E6                10130 	mov	a,@r0
   3574 9A                10131 	subb	a,r2
   3575 08                10132 	inc	r0
   3576 E6                10133 	mov	a,@r0
   3577 9B                10134 	subb	a,r3
                          10135 ;	genIfxJump
   3578 40 03             10136 	jc	00163$
   357A 02 38 F0          10137 	ljmp	00131$
   357D                   10138 00163$:
                    299C  10139 	C$tff.c$933$4$5 ==.
                          10140 ;	tff.c:933: fp->curr_clust = clust;				/* Current cluster */
                          10141 ;	genPointerSet
                          10142 ;	genGenPointerSet
   357D E5 0F             10143 	mov	a,_bp
   357F 24 35             10144 	add	a,#0x35
   3581 F8                10145 	mov	r0,a
   3582 86 82             10146 	mov	dpl,@r0
   3584 08                10147 	inc	r0
   3585 86 83             10148 	mov	dph,@r0
   3587 08                10149 	inc	r0
   3588 86 F0             10150 	mov	b,@r0
   358A E5 0F             10151 	mov	a,_bp
   358C 24 0E             10152 	add	a,#0x0e
   358E F9                10153 	mov	r1,a
   358F E7                10154 	mov	a,@r1
   3590 12 42 DC          10155 	lcall	__gptrput
   3593 A3                10156 	inc	dptr
   3594 09                10157 	inc	r1
   3595 E7                10158 	mov	a,@r1
   3596 12 42 DC          10159 	lcall	__gptrput
   3599 A3                10160 	inc	dptr
   359A 09                10161 	inc	r1
   359B E7                10162 	mov	a,@r1
   359C 12 42 DC          10163 	lcall	__gptrput
   359F A3                10164 	inc	dptr
   35A0 09                10165 	inc	r1
   35A1 E7                10166 	mov	a,@r1
   35A2 12 42 DC          10167 	lcall	__gptrput
                    29C4  10168 	C$tff.c$934$4$5 ==.
                          10169 ;	tff.c:934: sect = clust2sect(clust);			/* Get current sector */
                          10170 ;	genCall
   35A5 E5 0F             10171 	mov	a,_bp
   35A7 24 0E             10172 	add	a,#0x0e
   35A9 F8                10173 	mov	r0,a
   35AA 86 82             10174 	mov	dpl,@r0
   35AC 08                10175 	inc	r0
   35AD 86 83             10176 	mov	dph,@r0
   35AF 08                10177 	inc	r0
   35B0 86 F0             10178 	mov	b,@r0
   35B2 08                10179 	inc	r0
   35B3 E6                10180 	mov	a,@r0
   35B4 12 10 DC          10181 	lcall	_clust2sect
   35B7 AA 82             10182 	mov	r2,dpl
   35B9 AB 83             10183 	mov	r3,dph
   35BB AC F0             10184 	mov	r4,b
   35BD FD                10185 	mov	r5,a
                          10186 ;	genAssign
   35BE E5 0F             10187 	mov	a,_bp
   35C0 24 04             10188 	add	a,#0x04
   35C2 F8                10189 	mov	r0,a
   35C3 A6 02             10190 	mov	@r0,ar2
   35C5 08                10191 	inc	r0
   35C6 A6 03             10192 	mov	@r0,ar3
   35C8 08                10193 	inc	r0
   35C9 A6 04             10194 	mov	@r0,ar4
   35CB 08                10195 	inc	r0
   35CC A6 05             10196 	mov	@r0,ar5
                    29ED  10197 	C$tff.c$935$4$5 ==.
                          10198 ;	tff.c:935: fp->sect_clust = fs->sects_clust;	/* Re-initialize the left sector counter */
                          10199 ;	genPointerGet
                          10200 ;	genGenPointerGet
   35CE E5 0F             10201 	mov	a,_bp
   35D0 24 25             10202 	add	a,#0x25
   35D2 F8                10203 	mov	r0,a
   35D3 86 82             10204 	mov	dpl,@r0
   35D5 08                10205 	inc	r0
   35D6 86 83             10206 	mov	dph,@r0
   35D8 08                10207 	inc	r0
   35D9 86 F0             10208 	mov	b,@r0
   35DB 12 47 8A          10209 	lcall	__gptrget
   35DE FA                10210 	mov	r2,a
                          10211 ;	genPointerSet
                          10212 ;	genGenPointerSet
   35DF E5 0F             10213 	mov	a,_bp
   35E1 24 32             10214 	add	a,#0x32
   35E3 F8                10215 	mov	r0,a
   35E4 86 82             10216 	mov	dpl,@r0
   35E6 08                10217 	inc	r0
   35E7 86 83             10218 	mov	dph,@r0
   35E9 08                10219 	inc	r0
   35EA 86 F0             10220 	mov	b,@r0
   35EC EA                10221 	mov	a,r2
   35ED 12 42 DC          10222 	lcall	__gptrput
   35F0                   10223 00114$:
                    2A0F  10224 	C$tff.c$937$3$3 ==.
                          10225 ;	tff.c:937: fp->curr_sect = sect;					/* Update current sector */
                          10226 ;	genPointerSet
                          10227 ;	genGenPointerSet
   35F0 E5 0F             10228 	mov	a,_bp
   35F2 24 28             10229 	add	a,#0x28
   35F4 F8                10230 	mov	r0,a
   35F5 86 82             10231 	mov	dpl,@r0
   35F7 08                10232 	inc	r0
   35F8 86 83             10233 	mov	dph,@r0
   35FA 08                10234 	inc	r0
   35FB 86 F0             10235 	mov	b,@r0
   35FD E5 0F             10236 	mov	a,_bp
   35FF 24 04             10237 	add	a,#0x04
   3601 F9                10238 	mov	r1,a
   3602 E7                10239 	mov	a,@r1
   3603 12 42 DC          10240 	lcall	__gptrput
   3606 A3                10241 	inc	dptr
   3607 09                10242 	inc	r1
   3608 E7                10243 	mov	a,@r1
   3609 12 42 DC          10244 	lcall	__gptrput
   360C A3                10245 	inc	dptr
   360D 09                10246 	inc	r1
   360E E7                10247 	mov	a,@r1
   360F 12 42 DC          10248 	lcall	__gptrput
   3612 A3                10249 	inc	dptr
   3613 09                10250 	inc	r1
   3614 E7                10251 	mov	a,@r1
   3615 12 42 DC          10252 	lcall	__gptrput
                    2A37  10253 	C$tff.c$938$3$3 ==.
                          10254 ;	tff.c:938: cc = btr / 512;							/* When left bytes >= 512, */
                          10255 ;	genRightShift
                          10256 ;	genRightShiftLiteral
   3618 E5 0F             10257 	mov	a,_bp
   361A 24 F9             10258 	add	a,#0xfffffff9
                          10259 ;	genrshTwo
                          10260 ;	Peephole 185	changed order of increment (acc incremented also!)
   361C 04                10261 	inc	a
   361D F8                10262 	mov	r0,a
   361E E6                10263 	mov	a,@r0
   361F C3                10264 	clr	c
   3620 13                10265 	rrc	a
                    2A40  10266 	C$tff.c$939$3$3 ==.
                          10267 ;	tff.c:939: if (cc) {								/* Read maximum contiguous sectors directly */
                          10268 ;	genIfx
   3621 FE                10269 	mov	r6,a
   3622 7F 00             10270 	mov	r7,#0x00
                          10271 ;	Peephole 177.d	removed redundant move
   3624 4F                10272 	orl	a,r7
                          10273 ;	genIfxJump
   3625 70 03             10274 	jnz	00164$
   3627 02 37 41          10275 	ljmp	00122$
   362A                   10276 00164$:
                    2A49  10277 	C$tff.c$940$4$6 ==.
                          10278 ;	tff.c:940: if (cc > fp->sect_clust) cc = fp->sect_clust;
                          10279 ;	genPointerGet
                          10280 ;	genGenPointerGet
   362A E5 0F             10281 	mov	a,_bp
   362C 24 32             10282 	add	a,#0x32
   362E F8                10283 	mov	r0,a
   362F 86 82             10284 	mov	dpl,@r0
   3631 08                10285 	inc	r0
   3632 86 83             10286 	mov	dph,@r0
   3634 08                10287 	inc	r0
   3635 86 F0             10288 	mov	b,@r0
   3637 12 47 8A          10289 	lcall	__gptrget
   363A FC                10290 	mov	r4,a
                          10291 ;	genCast
   363B 7D 00             10292 	mov	r5,#0x00
                          10293 ;	genCmpGt
                          10294 ;	genCmp
   363D C3                10295 	clr	c
   363E EC                10296 	mov	a,r4
   363F 9E                10297 	subb	a,r6
   3640 ED                10298 	mov	a,r5
   3641 9F                10299 	subb	a,r7
                          10300 ;	genIfxJump
                          10301 ;	Peephole 108.a	removed ljmp by inverse jump logic
   3642 50 15             10302 	jnc	00116$
                          10303 ;	Peephole 300	removed redundant label 00165$
                          10304 ;	genPointerGet
                          10305 ;	genGenPointerGet
   3644 E5 0F             10306 	mov	a,_bp
   3646 24 32             10307 	add	a,#0x32
   3648 F8                10308 	mov	r0,a
   3649 86 82             10309 	mov	dpl,@r0
   364B 08                10310 	inc	r0
   364C 86 83             10311 	mov	dph,@r0
   364E 08                10312 	inc	r0
   364F 86 F0             10313 	mov	b,@r0
   3651 12 47 8A          10314 	lcall	__gptrget
   3654 FC                10315 	mov	r4,a
                          10316 ;	genCast
   3655 8C 06             10317 	mov	ar6,r4
   3657 7F 00             10318 	mov	r7,#0x00
   3659                   10319 00116$:
                    2A78  10320 	C$tff.c$941$4$6 ==.
                          10321 ;	tff.c:941: if (disk_read(0, rbuff, sect, (BYTE)cc) != RES_OK)
                          10322 ;	genCast
   3659 8E 04             10323 	mov	ar4,r6
                          10324 ;	genIpush
   365B C0 04             10325 	push	ar4
   365D C0 06             10326 	push	ar6
   365F C0 07             10327 	push	ar7
   3661 C0 04             10328 	push	ar4
                          10329 ;	genIpush
   3663 E5 0F             10330 	mov	a,_bp
   3665 24 04             10331 	add	a,#0x04
   3667 F8                10332 	mov	r0,a
   3668 E6                10333 	mov	a,@r0
   3669 C0 E0             10334 	push	acc
   366B 08                10335 	inc	r0
   366C E6                10336 	mov	a,@r0
   366D C0 E0             10337 	push	acc
   366F 08                10338 	inc	r0
   3670 E6                10339 	mov	a,@r0
   3671 C0 E0             10340 	push	acc
   3673 08                10341 	inc	r0
   3674 E6                10342 	mov	a,@r0
   3675 C0 E0             10343 	push	acc
                          10344 ;	genIpush
   3677 E5 0F             10345 	mov	a,_bp
   3679 24 12             10346 	add	a,#0x12
   367B F8                10347 	mov	r0,a
   367C E6                10348 	mov	a,@r0
   367D C0 E0             10349 	push	acc
   367F 08                10350 	inc	r0
   3680 E6                10351 	mov	a,@r0
   3681 C0 E0             10352 	push	acc
   3683 08                10353 	inc	r0
   3684 E6                10354 	mov	a,@r0
   3685 C0 E0             10355 	push	acc
                          10356 ;	genCall
   3687 75 82 00          10357 	mov	dpl,#0x00
   368A 12 00 92          10358 	lcall	_disk_read
   368D AD 82             10359 	mov	r5,dpl
   368F E5 81             10360 	mov	a,sp
   3691 24 F8             10361 	add	a,#0xf8
   3693 F5 81             10362 	mov	sp,a
   3695 D0 07             10363 	pop	ar7
   3697 D0 06             10364 	pop	ar6
   3699 D0 04             10365 	pop	ar4
                          10366 ;	genCmpEq
                          10367 ;	gencjneshort
   369B BD 00 02          10368 	cjne	r5,#0x00,00166$
   369E 80 03             10369 	sjmp	00167$
   36A0                   10370 00166$:
   36A0 02 38 F0          10371 	ljmp	00131$
   36A3                   10372 00167$:
                    2AC2  10373 	C$tff.c$943$4$6 ==.
                          10374 ;	tff.c:943: fp->sect_clust -= (BYTE)(cc - 1);
                          10375 ;	genPointerGet
                          10376 ;	genGenPointerGet
   36A3 E5 0F             10377 	mov	a,_bp
   36A5 24 32             10378 	add	a,#0x32
   36A7 F8                10379 	mov	r0,a
   36A8 86 82             10380 	mov	dpl,@r0
   36AA 08                10381 	inc	r0
   36AB 86 83             10382 	mov	dph,@r0
   36AD 08                10383 	inc	r0
   36AE 86 F0             10384 	mov	b,@r0
   36B0 12 47 8A          10385 	lcall	__gptrget
   36B3 FD                10386 	mov	r5,a
                          10387 ;	genMinus
                          10388 ;	genMinusDec
   36B4 EC                10389 	mov	a,r4
   36B5 14                10390 	dec	a
                          10391 ;	genMinus
   36B6 D3                10392 	setb	c
                          10393 ;	Peephole 236.l	used r5 instead of ar5
   36B7 9D                10394 	subb	a,r5
   36B8 F4                10395 	cpl	a
   36B9 FD                10396 	mov	r5,a
                          10397 ;	genPointerSet
                          10398 ;	genGenPointerSet
   36BA E5 0F             10399 	mov	a,_bp
   36BC 24 32             10400 	add	a,#0x32
   36BE F8                10401 	mov	r0,a
   36BF 86 82             10402 	mov	dpl,@r0
   36C1 08                10403 	inc	r0
   36C2 86 83             10404 	mov	dph,@r0
   36C4 08                10405 	inc	r0
   36C5 86 F0             10406 	mov	b,@r0
   36C7 ED                10407 	mov	a,r5
   36C8 12 42 DC          10408 	lcall	__gptrput
                    2AEA  10409 	C$tff.c$944$4$6 ==.
                          10410 ;	tff.c:944: fp->curr_sect += cc - 1;
                          10411 ;	genPointerGet
                          10412 ;	genGenPointerGet
   36CB E5 0F             10413 	mov	a,_bp
   36CD 24 28             10414 	add	a,#0x28
   36CF F8                10415 	mov	r0,a
   36D0 86 82             10416 	mov	dpl,@r0
   36D2 08                10417 	inc	r0
   36D3 86 83             10418 	mov	dph,@r0
   36D5 08                10419 	inc	r0
   36D6 86 F0             10420 	mov	b,@r0
   36D8 E5 0F             10421 	mov	a,_bp
   36DA 24 2E             10422 	add	a,#0x2e
   36DC F9                10423 	mov	r1,a
   36DD 12 47 8A          10424 	lcall	__gptrget
   36E0 F7                10425 	mov	@r1,a
   36E1 A3                10426 	inc	dptr
   36E2 12 47 8A          10427 	lcall	__gptrget
   36E5 09                10428 	inc	r1
   36E6 F7                10429 	mov	@r1,a
   36E7 A3                10430 	inc	dptr
   36E8 12 47 8A          10431 	lcall	__gptrget
   36EB 09                10432 	inc	r1
   36EC F7                10433 	mov	@r1,a
   36ED A3                10434 	inc	dptr
   36EE 12 47 8A          10435 	lcall	__gptrget
   36F1 09                10436 	inc	r1
   36F2 F7                10437 	mov	@r1,a
                          10438 ;	genMinus
                          10439 ;	genMinusDec
   36F3 EE                10440 	mov	a,r6
   36F4 24 FF             10441 	add	a,#0xff
   36F6 FA                10442 	mov	r2,a
   36F7 EF                10443 	mov	a,r7
   36F8 34 FF             10444 	addc	a,#0xff
   36FA FB                10445 	mov	r3,a
                          10446 ;	genCast
                          10447 ;	genPlus
                          10448 ;	Peephole 3.c	changed mov to clr
   36FB E4                10449 	clr	a
   36FC FC                10450 	mov	r4,a
   36FD FD                10451 	mov	r5,a
   36FE E5 0F             10452 	mov	a,_bp
   3700 24 2E             10453 	add	a,#0x2e
   3702 F8                10454 	mov	r0,a
                          10455 ;	Peephole 236.g	used r2 instead of ar2
   3703 EA                10456 	mov	a,r2
   3704 26                10457 	add	a,@r0
   3705 FA                10458 	mov	r2,a
                          10459 ;	Peephole 236.g	used r3 instead of ar3
   3706 EB                10460 	mov	a,r3
   3707 08                10461 	inc	r0
   3708 36                10462 	addc	a,@r0
   3709 FB                10463 	mov	r3,a
                          10464 ;	Peephole 236.g	used r4 instead of ar4
   370A EC                10465 	mov	a,r4
   370B 08                10466 	inc	r0
   370C 36                10467 	addc	a,@r0
   370D FC                10468 	mov	r4,a
                          10469 ;	Peephole 236.g	used r5 instead of ar5
   370E ED                10470 	mov	a,r5
   370F 08                10471 	inc	r0
   3710 36                10472 	addc	a,@r0
   3711 FD                10473 	mov	r5,a
                          10474 ;	genPointerSet
                          10475 ;	genGenPointerSet
   3712 E5 0F             10476 	mov	a,_bp
   3714 24 28             10477 	add	a,#0x28
   3716 F8                10478 	mov	r0,a
   3717 86 82             10479 	mov	dpl,@r0
   3719 08                10480 	inc	r0
   371A 86 83             10481 	mov	dph,@r0
   371C 08                10482 	inc	r0
   371D 86 F0             10483 	mov	b,@r0
   371F EA                10484 	mov	a,r2
   3720 12 42 DC          10485 	lcall	__gptrput
   3723 A3                10486 	inc	dptr
   3724 EB                10487 	mov	a,r3
   3725 12 42 DC          10488 	lcall	__gptrput
   3728 A3                10489 	inc	dptr
   3729 EC                10490 	mov	a,r4
   372A 12 42 DC          10491 	lcall	__gptrput
   372D A3                10492 	inc	dptr
   372E ED                10493 	mov	a,r5
   372F 12 42 DC          10494 	lcall	__gptrput
                    2B51  10495 	C$tff.c$945$4$6 ==.
                          10496 ;	tff.c:945: rcnt = cc * 512;
                          10497 ;	genLeftShift
                          10498 ;	genLeftShiftLiteral
   3732 E5 0F             10499 	mov	a,_bp
   3734 24 0C             10500 	add	a,#0x0c
   3736 F8                10501 	mov	r0,a
                          10502 ;	genlshTwo
   3737 EE                10503 	mov	a,r6
                          10504 ;	Peephole 254	optimized left shift
   3738 2E                10505 	add	a,r6
   3739 08                10506 	inc	r0
   373A F6                10507 	mov	@r0,a
   373B 18                10508 	dec	r0
   373C 76 00             10509 	mov	@r0,#0x00
                    2B5D  10510 	C$tff.c$946$4$6 ==.
                          10511 ;	tff.c:946: continue;
   373E 02 38 22          10512 	ljmp	00129$
   3741                   10513 00122$:
                    2B60  10514 	C$tff.c$949$2$2 ==.
                          10515 ;	tff.c:949: if (!move_window(fp->curr_sect)) goto fr_error;	/* Move sector window */
                          10516 ;	genPointerGet
                          10517 ;	genGenPointerGet
   3741 E5 0F             10518 	mov	a,_bp
   3743 24 28             10519 	add	a,#0x28
   3745 F8                10520 	mov	r0,a
   3746 86 82             10521 	mov	dpl,@r0
   3748 08                10522 	inc	r0
   3749 86 83             10523 	mov	dph,@r0
   374B 08                10524 	inc	r0
   374C 86 F0             10525 	mov	b,@r0
   374E 12 47 8A          10526 	lcall	__gptrget
   3751 FC                10527 	mov	r4,a
   3752 A3                10528 	inc	dptr
   3753 12 47 8A          10529 	lcall	__gptrget
   3756 FD                10530 	mov	r5,a
   3757 A3                10531 	inc	dptr
   3758 12 47 8A          10532 	lcall	__gptrget
   375B FE                10533 	mov	r6,a
   375C A3                10534 	inc	dptr
   375D 12 47 8A          10535 	lcall	__gptrget
                          10536 ;	genCall
   3760 FF                10537 	mov	r7,a
   3761 8C 82             10538 	mov	dpl,r4
   3763 8D 83             10539 	mov	dph,r5
   3765 8E F0             10540 	mov	b,r6
                          10541 ;	Peephole 191	removed redundant mov
   3767 12 0B E1          10542 	lcall	_move_window
   376A E5 82             10543 	mov	a,dpl
                          10544 ;	genIfx
                          10545 ;	genIfxJump
   376C 70 03             10546 	jnz	00168$
   376E 02 38 F0          10547 	ljmp	00131$
   3771                   10548 00168$:
                    2B90  10549 	C$tff.c$950$2$2 ==.
                          10550 ;	tff.c:950: rcnt = 512 - (WORD)(fp->fptr % 512);			/* Copy fractional bytes from sector window */
                          10551 ;	genPointerGet
                          10552 ;	genGenPointerGet
   3771 E5 0F             10553 	mov	a,_bp
   3773 24 1B             10554 	add	a,#0x1b
   3775 F8                10555 	mov	r0,a
   3776 86 82             10556 	mov	dpl,@r0
   3778 08                10557 	inc	r0
   3779 86 83             10558 	mov	dph,@r0
   377B 08                10559 	inc	r0
   377C 86 F0             10560 	mov	b,@r0
   377E 12 47 8A          10561 	lcall	__gptrget
   3781 FC                10562 	mov	r4,a
   3782 A3                10563 	inc	dptr
   3783 12 47 8A          10564 	lcall	__gptrget
   3786 FD                10565 	mov	r5,a
   3787 A3                10566 	inc	dptr
   3788 12 47 8A          10567 	lcall	__gptrget
   378B FE                10568 	mov	r6,a
   378C A3                10569 	inc	dptr
   378D 12 47 8A          10570 	lcall	__gptrget
   3790 FF                10571 	mov	r7,a
                          10572 ;	genAnd
   3791 53 05 01          10573 	anl	ar5,#0x01
                          10574 ;	genCast
                          10575 ;	genMinus
                          10576 ;	Peephole 3.c	changed mov to clr
   3794 E4                10577 	clr	a
   3795 FE                10578 	mov	r6,a
   3796 FF                10579 	mov	r7,a
   3797 E5 0F             10580 	mov	a,_bp
   3799 24 0C             10581 	add	a,#0x0c
   379B F8                10582 	mov	r0,a
                          10583 ;	Peephole 181	changed mov to clr
   379C E4                10584 	clr	a
   379D C3                10585 	clr	c
                          10586 ;	Peephole 236.l	used r4 instead of ar4
   379E 9C                10587 	subb	a,r4
   379F F6                10588 	mov	@r0,a
   37A0 74 02             10589 	mov	a,#0x02
                          10590 ;	Peephole 236.l	used r5 instead of ar5
   37A2 9D                10591 	subb	a,r5
   37A3 08                10592 	inc	r0
   37A4 F6                10593 	mov	@r0,a
                    2BC4  10594 	C$tff.c$951$2$2 ==.
                          10595 ;	tff.c:951: if (rcnt > btr) rcnt = btr;
                          10596 ;	genCmpGt
   37A5 E5 0F             10597 	mov	a,_bp
   37A7 24 0C             10598 	add	a,#0x0c
   37A9 F8                10599 	mov	r0,a
   37AA E5 0F             10600 	mov	a,_bp
   37AC 24 F9             10601 	add	a,#0xfffffff9
   37AE F9                10602 	mov	r1,a
                          10603 ;	genCmp
   37AF C3                10604 	clr	c
   37B0 E7                10605 	mov	a,@r1
   37B1 96                10606 	subb	a,@r0
   37B2 09                10607 	inc	r1
   37B3 E7                10608 	mov	a,@r1
   37B4 08                10609 	inc	r0
   37B5 96                10610 	subb	a,@r0
                          10611 ;	genIfxJump
                          10612 ;	Peephole 108.a	removed ljmp by inverse jump logic
   37B6 50 10             10613 	jnc	00126$
                          10614 ;	Peephole 300	removed redundant label 00169$
                          10615 ;	genAssign
   37B8 E5 0F             10616 	mov	a,_bp
   37BA 24 F9             10617 	add	a,#0xfffffff9
   37BC F8                10618 	mov	r0,a
   37BD E5 0F             10619 	mov	a,_bp
   37BF 24 0C             10620 	add	a,#0x0c
   37C1 F9                10621 	mov	r1,a
   37C2 E6                10622 	mov	a,@r0
   37C3 F7                10623 	mov	@r1,a
   37C4 08                10624 	inc	r0
   37C5 09                10625 	inc	r1
   37C6 E6                10626 	mov	a,@r0
   37C7 F7                10627 	mov	@r1,a
   37C8                   10628 00126$:
                    2BE7  10629 	C$tff.c$952$2$2 ==.
                          10630 ;	tff.c:952: memcpy(rbuff, &fs->win[(WORD)fp->fptr % 512], rcnt);
                          10631 ;	genPointerGet
                          10632 ;	genGenPointerGet
   37C8 E5 0F             10633 	mov	a,_bp
   37CA 24 1B             10634 	add	a,#0x1b
   37CC F8                10635 	mov	r0,a
   37CD 86 82             10636 	mov	dpl,@r0
   37CF 08                10637 	inc	r0
   37D0 86 83             10638 	mov	dph,@r0
   37D2 08                10639 	inc	r0
   37D3 86 F0             10640 	mov	b,@r0
   37D5 12 47 8A          10641 	lcall	__gptrget
   37D8 FC                10642 	mov	r4,a
   37D9 A3                10643 	inc	dptr
   37DA 12 47 8A          10644 	lcall	__gptrget
   37DD FD                10645 	mov	r5,a
   37DE A3                10646 	inc	dptr
   37DF 12 47 8A          10647 	lcall	__gptrget
   37E2 FE                10648 	mov	r6,a
   37E3 A3                10649 	inc	dptr
   37E4 12 47 8A          10650 	lcall	__gptrget
   37E7 FF                10651 	mov	r7,a
                          10652 ;	genCast
                          10653 ;	genAnd
   37E8 53 05 01          10654 	anl	ar5,#0x01
                          10655 ;	genPlus
   37EB E5 0F             10656 	mov	a,_bp
   37ED 24 2B             10657 	add	a,#0x2b
   37EF F8                10658 	mov	r0,a
                          10659 ;	Peephole 236.g	used r4 instead of ar4
   37F0 EC                10660 	mov	a,r4
   37F1 26                10661 	add	a,@r0
   37F2 FC                10662 	mov	r4,a
                          10663 ;	Peephole 236.g	used r5 instead of ar5
   37F3 ED                10664 	mov	a,r5
   37F4 08                10665 	inc	r0
   37F5 36                10666 	addc	a,@r0
   37F6 FD                10667 	mov	r5,a
   37F7 08                10668 	inc	r0
   37F8 86 06             10669 	mov	ar6,@r0
                          10670 ;	genIpush
   37FA E5 0F             10671 	mov	a,_bp
   37FC 24 0C             10672 	add	a,#0x0c
   37FE F8                10673 	mov	r0,a
   37FF E6                10674 	mov	a,@r0
   3800 C0 E0             10675 	push	acc
   3802 08                10676 	inc	r0
   3803 E6                10677 	mov	a,@r0
   3804 C0 E0             10678 	push	acc
                          10679 ;	genIpush
   3806 C0 04             10680 	push	ar4
   3808 C0 05             10681 	push	ar5
   380A C0 06             10682 	push	ar6
                          10683 ;	genCall
   380C E5 0F             10684 	mov	a,_bp
   380E 24 12             10685 	add	a,#0x12
   3810 F8                10686 	mov	r0,a
   3811 86 82             10687 	mov	dpl,@r0
   3813 08                10688 	inc	r0
   3814 86 83             10689 	mov	dph,@r0
   3816 08                10690 	inc	r0
   3817 86 F0             10691 	mov	b,@r0
   3819 12 45 BD          10692 	lcall	_memcpy
   381C E5 81             10693 	mov	a,sp
   381E 24 FB             10694 	add	a,#0xfb
   3820 F5 81             10695 	mov	sp,a
   3822                   10696 00129$:
                    2C41  10697 	C$tff.c$924$1$1 ==.
                          10698 ;	tff.c:924: rbuff += rcnt, fp->fptr += rcnt, *br += rcnt, btr -= rcnt) {
                          10699 ;	genPlus
   3822 E5 0F             10700 	mov	a,_bp
   3824 24 12             10701 	add	a,#0x12
   3826 F8                10702 	mov	r0,a
   3827 E5 0F             10703 	mov	a,_bp
   3829 24 0C             10704 	add	a,#0x0c
   382B F9                10705 	mov	r1,a
   382C E7                10706 	mov	a,@r1
   382D 26                10707 	add	a,@r0
   382E F6                10708 	mov	@r0,a
   382F 09                10709 	inc	r1
   3830 E7                10710 	mov	a,@r1
   3831 08                10711 	inc	r0
   3832 36                10712 	addc	a,@r0
   3833 F6                10713 	mov	@r0,a
                          10714 ;	genPointerGet
                          10715 ;	genGenPointerGet
   3834 E5 0F             10716 	mov	a,_bp
   3836 24 1B             10717 	add	a,#0x1b
   3838 F8                10718 	mov	r0,a
   3839 86 82             10719 	mov	dpl,@r0
   383B 08                10720 	inc	r0
   383C 86 83             10721 	mov	dph,@r0
   383E 08                10722 	inc	r0
   383F 86 F0             10723 	mov	b,@r0
   3841 E5 0F             10724 	mov	a,_bp
   3843 24 2E             10725 	add	a,#0x2e
   3845 F9                10726 	mov	r1,a
   3846 12 47 8A          10727 	lcall	__gptrget
   3849 F7                10728 	mov	@r1,a
   384A A3                10729 	inc	dptr
   384B 12 47 8A          10730 	lcall	__gptrget
   384E 09                10731 	inc	r1
   384F F7                10732 	mov	@r1,a
   3850 A3                10733 	inc	dptr
   3851 12 47 8A          10734 	lcall	__gptrget
   3854 09                10735 	inc	r1
   3855 F7                10736 	mov	@r1,a
   3856 A3                10737 	inc	dptr
   3857 12 47 8A          10738 	lcall	__gptrget
   385A 09                10739 	inc	r1
   385B F7                10740 	mov	@r1,a
                          10741 ;	genCast
   385C E5 0F             10742 	mov	a,_bp
   385E 24 0C             10743 	add	a,#0x0c
   3860 F8                10744 	mov	r0,a
   3861 86 02             10745 	mov	ar2,@r0
   3863 08                10746 	inc	r0
   3864 86 03             10747 	mov	ar3,@r0
                          10748 ;	genPlus
                          10749 ;	Peephole 3.c	changed mov to clr
   3866 E4                10750 	clr	a
   3867 FC                10751 	mov	r4,a
   3868 FD                10752 	mov	r5,a
   3869 E5 0F             10753 	mov	a,_bp
   386B 24 2E             10754 	add	a,#0x2e
   386D F8                10755 	mov	r0,a
                          10756 ;	Peephole 236.g	used r2 instead of ar2
   386E EA                10757 	mov	a,r2
   386F 26                10758 	add	a,@r0
   3870 FA                10759 	mov	r2,a
                          10760 ;	Peephole 236.g	used r3 instead of ar3
   3871 EB                10761 	mov	a,r3
   3872 08                10762 	inc	r0
   3873 36                10763 	addc	a,@r0
   3874 FB                10764 	mov	r3,a
                          10765 ;	Peephole 236.g	used r4 instead of ar4
   3875 EC                10766 	mov	a,r4
   3876 08                10767 	inc	r0
   3877 36                10768 	addc	a,@r0
   3878 FC                10769 	mov	r4,a
                          10770 ;	Peephole 236.g	used r5 instead of ar5
   3879 ED                10771 	mov	a,r5
   387A 08                10772 	inc	r0
   387B 36                10773 	addc	a,@r0
   387C FD                10774 	mov	r5,a
                          10775 ;	genPointerSet
                          10776 ;	genGenPointerSet
   387D E5 0F             10777 	mov	a,_bp
   387F 24 1B             10778 	add	a,#0x1b
   3881 F8                10779 	mov	r0,a
   3882 86 82             10780 	mov	dpl,@r0
   3884 08                10781 	inc	r0
   3885 86 83             10782 	mov	dph,@r0
   3887 08                10783 	inc	r0
   3888 86 F0             10784 	mov	b,@r0
   388A EA                10785 	mov	a,r2
   388B 12 42 DC          10786 	lcall	__gptrput
   388E A3                10787 	inc	dptr
   388F EB                10788 	mov	a,r3
   3890 12 42 DC          10789 	lcall	__gptrput
   3893 A3                10790 	inc	dptr
   3894 EC                10791 	mov	a,r4
   3895 12 42 DC          10792 	lcall	__gptrput
   3898 A3                10793 	inc	dptr
   3899 ED                10794 	mov	a,r5
   389A 12 42 DC          10795 	lcall	__gptrput
                          10796 ;	genPointerGet
                          10797 ;	genGenPointerGet
   389D E5 0F             10798 	mov	a,_bp
   389F 24 18             10799 	add	a,#0x18
   38A1 F8                10800 	mov	r0,a
   38A2 86 82             10801 	mov	dpl,@r0
   38A4 08                10802 	inc	r0
   38A5 86 83             10803 	mov	dph,@r0
   38A7 08                10804 	inc	r0
   38A8 86 F0             10805 	mov	b,@r0
   38AA 12 47 8A          10806 	lcall	__gptrget
   38AD FA                10807 	mov	r2,a
   38AE A3                10808 	inc	dptr
   38AF 12 47 8A          10809 	lcall	__gptrget
   38B2 FB                10810 	mov	r3,a
                          10811 ;	genPlus
   38B3 E5 0F             10812 	mov	a,_bp
   38B5 24 0C             10813 	add	a,#0x0c
   38B7 F8                10814 	mov	r0,a
   38B8 E6                10815 	mov	a,@r0
                          10816 ;	Peephole 236.a	used r2 instead of ar2
   38B9 2A                10817 	add	a,r2
   38BA FA                10818 	mov	r2,a
   38BB 08                10819 	inc	r0
   38BC E6                10820 	mov	a,@r0
                          10821 ;	Peephole 236.b	used r3 instead of ar3
   38BD 3B                10822 	addc	a,r3
   38BE FB                10823 	mov	r3,a
                          10824 ;	genPointerSet
                          10825 ;	genGenPointerSet
   38BF E5 0F             10826 	mov	a,_bp
   38C1 24 18             10827 	add	a,#0x18
   38C3 F8                10828 	mov	r0,a
   38C4 86 82             10829 	mov	dpl,@r0
   38C6 08                10830 	inc	r0
   38C7 86 83             10831 	mov	dph,@r0
   38C9 08                10832 	inc	r0
   38CA 86 F0             10833 	mov	b,@r0
   38CC EA                10834 	mov	a,r2
   38CD 12 42 DC          10835 	lcall	__gptrput
   38D0 A3                10836 	inc	dptr
   38D1 EB                10837 	mov	a,r3
   38D2 12 42 DC          10838 	lcall	__gptrput
                          10839 ;	genMinus
   38D5 E5 0F             10840 	mov	a,_bp
   38D7 24 F9             10841 	add	a,#0xfffffff9
   38D9 F8                10842 	mov	r0,a
   38DA E5 0F             10843 	mov	a,_bp
   38DC 24 0C             10844 	add	a,#0x0c
   38DE F9                10845 	mov	r1,a
   38DF E6                10846 	mov	a,@r0
   38E0 C3                10847 	clr	c
   38E1 97                10848 	subb	a,@r1
   38E2 F6                10849 	mov	@r0,a
   38E3 08                10850 	inc	r0
   38E4 E6                10851 	mov	a,@r0
   38E5 09                10852 	inc	r1
   38E6 97                10853 	subb	a,@r1
   38E7 F6                10854 	mov	@r0,a
   38E8 02 34 16          10855 	ljmp	00127$
   38EB                   10856 00130$:
                    2D0A  10857 	C$tff.c$955$1$1 ==.
                          10858 ;	tff.c:955: return FR_OK;
                          10859 ;	genRet
   38EB 75 82 00          10860 	mov	dpl,#0x00
                    2D0D  10861 	C$tff.c$957$1$1 ==.
                          10862 ;	tff.c:957: fr_error:	/* Abort this function due to an unrecoverable error */
                          10863 ;	Peephole 112.b	changed ljmp to sjmp
   38EE 80 28             10864 	sjmp	00132$
   38F0                   10865 00131$:
                    2D0F  10866 	C$tff.c$958$1$1 ==.
                          10867 ;	tff.c:958: fp->flag |= FA__ERROR;
                          10868 ;	genPointerGet
                          10869 ;	genGenPointerGet
   38F0 E5 0F             10870 	mov	a,_bp
   38F2 24 38             10871 	add	a,#0x38
   38F4 F8                10872 	mov	r0,a
   38F5 86 82             10873 	mov	dpl,@r0
   38F7 08                10874 	inc	r0
   38F8 86 83             10875 	mov	dph,@r0
   38FA 08                10876 	inc	r0
   38FB 86 F0             10877 	mov	b,@r0
   38FD 12 47 8A          10878 	lcall	__gptrget
   3900 FA                10879 	mov	r2,a
                          10880 ;	genOr
   3901 43 02 80          10881 	orl	ar2,#0x80
                          10882 ;	genPointerSet
                          10883 ;	genGenPointerSet
   3904 E5 0F             10884 	mov	a,_bp
   3906 24 38             10885 	add	a,#0x38
   3908 F8                10886 	mov	r0,a
   3909 86 82             10887 	mov	dpl,@r0
   390B 08                10888 	inc	r0
   390C 86 83             10889 	mov	dph,@r0
   390E 08                10890 	inc	r0
   390F 86 F0             10891 	mov	b,@r0
   3911 EA                10892 	mov	a,r2
   3912 12 42 DC          10893 	lcall	__gptrput
                    2D34  10894 	C$tff.c$959$1$1 ==.
                          10895 ;	tff.c:959: return FR_RW_ERROR;
                          10896 ;	genRet
   3915 75 82 08          10897 	mov	dpl,#0x08
   3918                   10898 00132$:
   3918 85 0F 81          10899 	mov	sp,_bp
   391B D0 0F             10900 	pop	_bp
                    2D3C  10901 	C$tff.c$960$1$1 ==.
                    2D3C  10902 	XG$f_read$0$0 ==.
   391D 22                10903 	ret
                          10904 ;------------------------------------------------------------
                          10905 ;Allocation info for local variables in function 'f_close'
                          10906 ;------------------------------------------------------------
                          10907 ;fp                        Allocated to registers r2 r3 r4 
                          10908 ;res                       Allocated to registers r5 
                          10909 ;sloc0                     Allocated to stack - offset 1
                          10910 ;------------------------------------------------------------
                    2D3D  10911 	G$f_close$0$0 ==.
                    2D3D  10912 	C$tff.c$1092$1$1 ==.
                          10913 ;	tff.c:1092: FRESULT f_close (
                          10914 ;	-----------------------------------------
                          10915 ;	 function f_close
                          10916 ;	-----------------------------------------
   391E                   10917 _f_close:
   391E C0 0F             10918 	push	_bp
   3920 85 81 0F          10919 	mov	_bp,sp
   3923 05 81             10920 	inc	sp
   3925 05 81             10921 	inc	sp
                          10922 ;	genReceive
                    2D46  10923 	C$tff.c$1102$1$1 ==.
                          10924 ;	tff.c:1102: res = validate(fp->fs, fp->id);
                          10925 ;	genPointerGet
                          10926 ;	genGenPointerGet
   3927 AA 82             10927 	mov	r2,dpl
   3929 AB 83             10928 	mov	r3,dph
   392B AC F0             10929 	mov	r4,b
                          10930 ;	Peephole 238.d	removed 3 redundant moves
   392D A8 0F             10931 	mov	r0,_bp
   392F 08                10932 	inc	r0
   3930 12 47 8A          10933 	lcall	__gptrget
   3933 F6                10934 	mov	@r0,a
   3934 A3                10935 	inc	dptr
   3935 12 47 8A          10936 	lcall	__gptrget
   3938 08                10937 	inc	r0
   3939 F6                10938 	mov	@r0,a
                          10939 ;	genPlus
                          10940 ;     genPlusIncr
   393A 74 04             10941 	mov	a,#0x04
                          10942 ;	Peephole 236.a	used r2 instead of ar2
   393C 2A                10943 	add	a,r2
   393D FA                10944 	mov	r2,a
                          10945 ;	Peephole 181	changed mov to clr
   393E E4                10946 	clr	a
                          10947 ;	Peephole 236.b	used r3 instead of ar3
   393F 3B                10948 	addc	a,r3
   3940 FB                10949 	mov	r3,a
                          10950 ;	genPointerGet
                          10951 ;	genGenPointerGet
   3941 8A 82             10952 	mov	dpl,r2
   3943 8B 83             10953 	mov	dph,r3
   3945 8C F0             10954 	mov	b,r4
   3947 12 47 8A          10955 	lcall	__gptrget
   394A FF                10956 	mov	r7,a
   394B A3                10957 	inc	dptr
   394C 12 47 8A          10958 	lcall	__gptrget
   394F FD                10959 	mov	r5,a
   3950 A3                10960 	inc	dptr
   3951 12 47 8A          10961 	lcall	__gptrget
   3954 FE                10962 	mov	r6,a
                          10963 ;	genIpush
   3955 C0 02             10964 	push	ar2
   3957 C0 03             10965 	push	ar3
   3959 C0 04             10966 	push	ar4
   395B A8 0F             10967 	mov	r0,_bp
   395D 08                10968 	inc	r0
   395E E6                10969 	mov	a,@r0
   395F C0 E0             10970 	push	acc
   3961 08                10971 	inc	r0
   3962 E6                10972 	mov	a,@r0
   3963 C0 E0             10973 	push	acc
                          10974 ;	genCall
   3965 8F 82             10975 	mov	dpl,r7
   3967 8D 83             10976 	mov	dph,r5
   3969 8E F0             10977 	mov	b,r6
   396B 12 2D 60          10978 	lcall	_validate
   396E AD 82             10979 	mov	r5,dpl
   3970 15 81             10980 	dec	sp
   3972 15 81             10981 	dec	sp
   3974 D0 04             10982 	pop	ar4
   3976 D0 03             10983 	pop	ar3
   3978 D0 02             10984 	pop	ar2
                          10985 ;	genAssign
                    2D99  10986 	C$tff.c$1104$1$1 ==.
                          10987 ;	tff.c:1104: if (res == FR_OK)
                          10988 ;	genIfx
   397A ED                10989 	mov	a,r5
                          10990 ;	genIfxJump
                          10991 ;	Peephole 108.b	removed ljmp by inverse jump logic
   397B 70 14             10992 	jnz	00102$
                          10993 ;	Peephole 300	removed redundant label 00106$
                    2D9C  10994 	C$tff.c$1105$1$1 ==.
                          10995 ;	tff.c:1105: fp->fs = NULL;
                          10996 ;	genPointerSet
                          10997 ;	genGenPointerSet
   397D 8A 82             10998 	mov	dpl,r2
   397F 8B 83             10999 	mov	dph,r3
   3981 8C F0             11000 	mov	b,r4
                          11001 ;	Peephole 181	changed mov to clr
   3983 E4                11002 	clr	a
   3984 12 42 DC          11003 	lcall	__gptrput
   3987 A3                11004 	inc	dptr
                          11005 ;	Peephole 181	changed mov to clr
   3988 E4                11006 	clr	a
   3989 12 42 DC          11007 	lcall	__gptrput
   398C A3                11008 	inc	dptr
                          11009 ;	Peephole 181	changed mov to clr
   398D E4                11010 	clr	a
   398E 12 42 DC          11011 	lcall	__gptrput
   3991                   11012 00102$:
                    2DB0  11013 	C$tff.c$1107$1$1 ==.
                          11014 ;	tff.c:1107: return res;
                          11015 ;	genRet
   3991 8D 82             11016 	mov	dpl,r5
                          11017 ;	Peephole 300	removed redundant label 00103$
   3993 85 0F 81          11018 	mov	sp,_bp
   3996 D0 0F             11019 	pop	_bp
                    2DB7  11020 	C$tff.c$1108$1$1 ==.
                    2DB7  11021 	XG$f_close$0$0 ==.
   3998 22                11022 	ret
                          11023 ;------------------------------------------------------------
                          11024 ;Allocation info for local variables in function 'f_lseek'
                          11025 ;------------------------------------------------------------
                          11026 ;ofs                       Allocated to stack - offset -6
                          11027 ;fp                        Allocated to stack - offset 1
                          11028 ;clust                     Allocated to stack - offset 4
                          11029 ;csize                     Allocated to stack - offset 8
                          11030 ;csect                     Allocated to registers r6 
                          11031 ;res                       Allocated to registers r5 
                          11032 ;fs                        Allocated to stack - offset 12
                          11033 ;sloc0                     Allocated to stack - offset 15
                          11034 ;sloc1                     Allocated to stack - offset 19
                          11035 ;sloc2                     Allocated to stack - offset 22
                          11036 ;sloc3                     Allocated to stack - offset 25
                          11037 ;sloc4                     Allocated to stack - offset 28
                          11038 ;sloc5                     Allocated to stack - offset 31
                          11039 ;------------------------------------------------------------
                    2DB8  11040 	G$f_lseek$0$0 ==.
                    2DB8  11041 	C$tff.c$1118$1$1 ==.
                          11042 ;	tff.c:1118: FRESULT f_lseek (
                          11043 ;	-----------------------------------------
                          11044 ;	 function f_lseek
                          11045 ;	-----------------------------------------
   3999                   11046 _f_lseek:
   3999 C0 0F             11047 	push	_bp
   399B 85 81 0F          11048 	mov	_bp,sp
                          11049 ;     genReceive
   399E C0 82             11050 	push	dpl
   39A0 C0 83             11051 	push	dph
   39A2 C0 F0             11052 	push	b
   39A4 E5 81             11053 	mov	a,sp
   39A6 24 22             11054 	add	a,#0x22
   39A8 F5 81             11055 	mov	sp,a
                    2DC9  11056 	C$tff.c$1127$1$1 ==.
                          11057 ;	tff.c:1127: FATFS *fs = fp->fs;
                          11058 ;	genPlus
   39AA A8 0F             11059 	mov	r0,_bp
   39AC 08                11060 	inc	r0
                          11061 ;     genPlusIncr
   39AD 74 04             11062 	mov	a,#0x04
   39AF 26                11063 	add	a,@r0
   39B0 FD                11064 	mov	r5,a
                          11065 ;	Peephole 181	changed mov to clr
   39B1 E4                11066 	clr	a
   39B2 08                11067 	inc	r0
   39B3 36                11068 	addc	a,@r0
   39B4 FE                11069 	mov	r6,a
   39B5 08                11070 	inc	r0
   39B6 86 07             11071 	mov	ar7,@r0
                          11072 ;	genPointerGet
                          11073 ;	genGenPointerGet
   39B8 8D 82             11074 	mov	dpl,r5
   39BA 8E 83             11075 	mov	dph,r6
   39BC 8F F0             11076 	mov	b,r7
   39BE 12 47 8A          11077 	lcall	__gptrget
   39C1 FD                11078 	mov	r5,a
   39C2 A3                11079 	inc	dptr
   39C3 12 47 8A          11080 	lcall	__gptrget
   39C6 FE                11081 	mov	r6,a
   39C7 A3                11082 	inc	dptr
   39C8 12 47 8A          11083 	lcall	__gptrget
   39CB FF                11084 	mov	r7,a
                          11085 ;	genAssign
   39CC E5 0F             11086 	mov	a,_bp
   39CE 24 0C             11087 	add	a,#0x0c
   39D0 F8                11088 	mov	r0,a
   39D1 A6 05             11089 	mov	@r0,ar5
   39D3 08                11090 	inc	r0
   39D4 A6 06             11091 	mov	@r0,ar6
   39D6 08                11092 	inc	r0
   39D7 A6 07             11093 	mov	@r0,ar7
                    2DF8  11094 	C$tff.c$1130$1$1 ==.
                          11095 ;	tff.c:1130: res = validate(fs, fp->id);			/* Check validity of the object */
                          11096 ;	genPointerGet
                          11097 ;	genGenPointerGet
   39D9 A8 0F             11098 	mov	r0,_bp
   39DB 08                11099 	inc	r0
   39DC 86 82             11100 	mov	dpl,@r0
   39DE 08                11101 	inc	r0
   39DF 86 83             11102 	mov	dph,@r0
   39E1 08                11103 	inc	r0
   39E2 86 F0             11104 	mov	b,@r0
   39E4 12 47 8A          11105 	lcall	__gptrget
   39E7 FD                11106 	mov	r5,a
   39E8 A3                11107 	inc	dptr
   39E9 12 47 8A          11108 	lcall	__gptrget
   39EC FE                11109 	mov	r6,a
                          11110 ;	genIpush
   39ED C0 05             11111 	push	ar5
   39EF C0 06             11112 	push	ar6
                          11113 ;	genCall
   39F1 E5 0F             11114 	mov	a,_bp
   39F3 24 0C             11115 	add	a,#0x0c
   39F5 F8                11116 	mov	r0,a
   39F6 86 82             11117 	mov	dpl,@r0
   39F8 08                11118 	inc	r0
   39F9 86 83             11119 	mov	dph,@r0
   39FB 08                11120 	inc	r0
   39FC 86 F0             11121 	mov	b,@r0
   39FE 12 2D 60          11122 	lcall	_validate
   3A01 AD 82             11123 	mov	r5,dpl
   3A03 15 81             11124 	dec	sp
   3A05 15 81             11125 	dec	sp
                          11126 ;	genAssign
                    2E26  11127 	C$tff.c$1131$1$1 ==.
                          11128 ;	tff.c:1131: if (res != FR_OK) return res;
                          11129 ;	genCmpEq
                          11130 ;	gencjneshort
   3A07 BD 00 02          11131 	cjne	r5,#0x00,00134$
                          11132 ;	Peephole 112.b	changed ljmp to sjmp
   3A0A 80 05             11133 	sjmp	00102$
   3A0C                   11134 00134$:
                          11135 ;	genRet
   3A0C 8D 82             11136 	mov	dpl,r5
   3A0E 02 3E 39          11137 	ljmp	00122$
   3A11                   11138 00102$:
                    2E30  11139 	C$tff.c$1133$1$1 ==.
                          11140 ;	tff.c:1133: if (fp->flag & FA__ERROR) return FR_RW_ERROR;
                          11141 ;	genPlus
   3A11 A8 0F             11142 	mov	r0,_bp
   3A13 08                11143 	inc	r0
   3A14 E5 0F             11144 	mov	a,_bp
   3A16 24 19             11145 	add	a,#0x19
   3A18 F9                11146 	mov	r1,a
                          11147 ;     genPlusIncr
   3A19 74 02             11148 	mov	a,#0x02
   3A1B 26                11149 	add	a,@r0
   3A1C F7                11150 	mov	@r1,a
                          11151 ;	Peephole 181	changed mov to clr
   3A1D E4                11152 	clr	a
   3A1E 08                11153 	inc	r0
   3A1F 36                11154 	addc	a,@r0
   3A20 09                11155 	inc	r1
   3A21 F7                11156 	mov	@r1,a
   3A22 08                11157 	inc	r0
   3A23 09                11158 	inc	r1
   3A24 E6                11159 	mov	a,@r0
   3A25 F7                11160 	mov	@r1,a
                          11161 ;	genIpush
                          11162 ;	genPointerGet
                          11163 ;	genGenPointerGet
   3A26 E5 0F             11164 	mov	a,_bp
   3A28 24 19             11165 	add	a,#0x19
   3A2A F8                11166 	mov	r0,a
   3A2B 86 82             11167 	mov	dpl,@r0
   3A2D 08                11168 	inc	r0
   3A2E 86 83             11169 	mov	dph,@r0
   3A30 08                11170 	inc	r0
   3A31 86 F0             11171 	mov	b,@r0
   3A33 12 47 8A          11172 	lcall	__gptrget
                          11173 ;	genAnd
   3A36 FA                11174 	mov	r2,a
                          11175 ;	Peephole 105	removed redundant mov
   3A37 54 80             11176 	anl	a,#0x80
                          11177 ;	genIpop
                          11178 ;	genIfx
                          11179 ;	genIfxJump
                          11180 ;	Peephole 108.c	removed ljmp by inverse jump logic
   3A39 60 06             11181 	jz	00104$
                          11182 ;	Peephole 300	removed redundant label 00135$
                          11183 ;	genRet
   3A3B 75 82 08          11184 	mov	dpl,#0x08
   3A3E 02 3E 39          11185 	ljmp	00122$
   3A41                   11186 00104$:
                    2E60  11187 	C$tff.c$1137$1$1 ==.
                          11188 ;	tff.c:1137: if (ofs > fp->fsize)
                          11189 ;	genIpush
                          11190 ;	genPlus
   3A41 A8 0F             11191 	mov	r0,_bp
   3A43 08                11192 	inc	r0
                          11193 ;     genPlusIncr
   3A44 74 0B             11194 	mov	a,#0x0B
   3A46 26                11195 	add	a,@r0
   3A47 FD                11196 	mov	r5,a
                          11197 ;	Peephole 181	changed mov to clr
   3A48 E4                11198 	clr	a
   3A49 08                11199 	inc	r0
   3A4A 36                11200 	addc	a,@r0
   3A4B FE                11201 	mov	r6,a
   3A4C 08                11202 	inc	r0
   3A4D 86 07             11203 	mov	ar7,@r0
                          11204 ;	genPointerGet
                          11205 ;	genGenPointerGet
   3A4F 8D 82             11206 	mov	dpl,r5
   3A51 8E 83             11207 	mov	dph,r6
   3A53 8F F0             11208 	mov	b,r7
   3A55 12 47 8A          11209 	lcall	__gptrget
   3A58 FA                11210 	mov	r2,a
   3A59 A3                11211 	inc	dptr
   3A5A 12 47 8A          11212 	lcall	__gptrget
   3A5D FB                11213 	mov	r3,a
   3A5E A3                11214 	inc	dptr
   3A5F 12 47 8A          11215 	lcall	__gptrget
   3A62 FC                11216 	mov	r4,a
   3A63 A3                11217 	inc	dptr
   3A64 12 47 8A          11218 	lcall	__gptrget
   3A67 FD                11219 	mov	r5,a
                          11220 ;	genCmpGt
   3A68 E5 0F             11221 	mov	a,_bp
   3A6A 24 FA             11222 	add	a,#0xfffffffa
   3A6C F8                11223 	mov	r0,a
                          11224 ;	genCmp
   3A6D C3                11225 	clr	c
   3A6E EA                11226 	mov	a,r2
   3A6F 96                11227 	subb	a,@r0
   3A70 EB                11228 	mov	a,r3
   3A71 08                11229 	inc	r0
   3A72 96                11230 	subb	a,@r0
   3A73 EC                11231 	mov	a,r4
   3A74 08                11232 	inc	r0
   3A75 96                11233 	subb	a,@r0
   3A76 ED                11234 	mov	a,r5
   3A77 08                11235 	inc	r0
   3A78 96                11236 	subb	a,@r0
                          11237 ;	genIpop
                          11238 ;	genIfx
                          11239 ;	genIfxJump
                          11240 ;	Peephole 108.c	removed ljmp by inverse jump logic
                          11241 ;	Peephole 128	jump optimization
   3A79 50 10             11242 	jnc	00106$
                          11243 ;	Peephole 300	removed redundant label 00136$
                    2E9A  11244 	C$tff.c$1139$1$1 ==.
                          11245 ;	tff.c:1139: ofs = fp->fsize;
                          11246 ;	genAssign
   3A7B E5 0F             11247 	mov	a,_bp
   3A7D 24 FA             11248 	add	a,#0xfffffffa
   3A7F F8                11249 	mov	r0,a
   3A80 A6 02             11250 	mov	@r0,ar2
   3A82 08                11251 	inc	r0
   3A83 A6 03             11252 	mov	@r0,ar3
   3A85 08                11253 	inc	r0
   3A86 A6 04             11254 	mov	@r0,ar4
   3A88 08                11255 	inc	r0
   3A89 A6 05             11256 	mov	@r0,ar5
   3A8B                   11257 00106$:
                    2EAA  11258 	C$tff.c$1140$1$1 ==.
                          11259 ;	tff.c:1140: fp->fptr = 0; fp->sect_clust = 1;		/* Set file R/W pointer to top of the file */
                          11260 ;	genPlus
   3A8B A8 0F             11261 	mov	r0,_bp
   3A8D 08                11262 	inc	r0
   3A8E E5 0F             11263 	mov	a,_bp
   3A90 24 0F             11264 	add	a,#0x0f
   3A92 F9                11265 	mov	r1,a
                          11266 ;     genPlusIncr
   3A93 74 07             11267 	mov	a,#0x07
   3A95 26                11268 	add	a,@r0
   3A96 F7                11269 	mov	@r1,a
                          11270 ;	Peephole 181	changed mov to clr
   3A97 E4                11271 	clr	a
   3A98 08                11272 	inc	r0
   3A99 36                11273 	addc	a,@r0
   3A9A 09                11274 	inc	r1
   3A9B F7                11275 	mov	@r1,a
   3A9C 08                11276 	inc	r0
   3A9D 09                11277 	inc	r1
   3A9E E6                11278 	mov	a,@r0
   3A9F F7                11279 	mov	@r1,a
                          11280 ;	genPointerSet
                          11281 ;	genGenPointerSet
   3AA0 E5 0F             11282 	mov	a,_bp
   3AA2 24 0F             11283 	add	a,#0x0f
   3AA4 F8                11284 	mov	r0,a
   3AA5 86 82             11285 	mov	dpl,@r0
   3AA7 08                11286 	inc	r0
   3AA8 86 83             11287 	mov	dph,@r0
   3AAA 08                11288 	inc	r0
   3AAB 86 F0             11289 	mov	b,@r0
                          11290 ;	Peephole 181	changed mov to clr
   3AAD E4                11291 	clr	a
   3AAE 12 42 DC          11292 	lcall	__gptrput
   3AB1 A3                11293 	inc	dptr
                          11294 ;	Peephole 181	changed mov to clr
   3AB2 E4                11295 	clr	a
   3AB3 12 42 DC          11296 	lcall	__gptrput
   3AB6 A3                11297 	inc	dptr
                          11298 ;	Peephole 181	changed mov to clr
   3AB7 E4                11299 	clr	a
   3AB8 12 42 DC          11300 	lcall	__gptrput
   3ABB A3                11301 	inc	dptr
                          11302 ;	Peephole 181	changed mov to clr
   3ABC E4                11303 	clr	a
   3ABD 12 42 DC          11304 	lcall	__gptrput
                          11305 ;	genPlus
   3AC0 A8 0F             11306 	mov	r0,_bp
   3AC2 08                11307 	inc	r0
   3AC3 E5 0F             11308 	mov	a,_bp
   3AC5 24 13             11309 	add	a,#0x13
   3AC7 F9                11310 	mov	r1,a
                          11311 ;     genPlusIncr
   3AC8 74 03             11312 	mov	a,#0x03
   3ACA 26                11313 	add	a,@r0
   3ACB F7                11314 	mov	@r1,a
                          11315 ;	Peephole 181	changed mov to clr
   3ACC E4                11316 	clr	a
   3ACD 08                11317 	inc	r0
   3ACE 36                11318 	addc	a,@r0
   3ACF 09                11319 	inc	r1
   3AD0 F7                11320 	mov	@r1,a
   3AD1 08                11321 	inc	r0
   3AD2 09                11322 	inc	r1
   3AD3 E6                11323 	mov	a,@r0
   3AD4 F7                11324 	mov	@r1,a
                          11325 ;	genPointerSet
                          11326 ;	genGenPointerSet
   3AD5 E5 0F             11327 	mov	a,_bp
   3AD7 24 13             11328 	add	a,#0x13
   3AD9 F8                11329 	mov	r0,a
   3ADA 86 82             11330 	mov	dpl,@r0
   3ADC 08                11331 	inc	r0
   3ADD 86 83             11332 	mov	dph,@r0
   3ADF 08                11333 	inc	r0
   3AE0 86 F0             11334 	mov	b,@r0
   3AE2 74 01             11335 	mov	a,#0x01
   3AE4 12 42 DC          11336 	lcall	__gptrput
                    2F06  11337 	C$tff.c$1143$1$1 ==.
                          11338 ;	tff.c:1143: if (ofs) {
                          11339 ;	genIfx
   3AE7 E5 0F             11340 	mov	a,_bp
   3AE9 24 FA             11341 	add	a,#0xfffffffa
   3AEB F8                11342 	mov	r0,a
   3AEC E6                11343 	mov	a,@r0
   3AED 08                11344 	inc	r0
   3AEE 46                11345 	orl	a,@r0
   3AEF 08                11346 	inc	r0
   3AF0 46                11347 	orl	a,@r0
   3AF1 08                11348 	inc	r0
   3AF2 46                11349 	orl	a,@r0
                          11350 ;	genIfxJump
   3AF3 70 03             11351 	jnz	00137$
   3AF5 02 3E 0C          11352 	ljmp	00120$
   3AF8                   11353 00137$:
                    2F17  11354 	C$tff.c$1144$1$1 ==.
                          11355 ;	tff.c:1144: clust = fp->org_clust;	/* Get start cluster */
                          11356 ;	genIpush
                          11357 ;	genPlus
   3AF8 A8 0F             11358 	mov	r0,_bp
   3AFA 08                11359 	inc	r0
                          11360 ;     genPlusIncr
   3AFB 74 0F             11361 	mov	a,#0x0F
   3AFD 26                11362 	add	a,@r0
   3AFE FD                11363 	mov	r5,a
                          11364 ;	Peephole 181	changed mov to clr
   3AFF E4                11365 	clr	a
   3B00 08                11366 	inc	r0
   3B01 36                11367 	addc	a,@r0
   3B02 FE                11368 	mov	r6,a
   3B03 08                11369 	inc	r0
   3B04 86 07             11370 	mov	ar7,@r0
                          11371 ;	genPointerGet
                          11372 ;	genGenPointerGet
   3B06 8D 82             11373 	mov	dpl,r5
   3B08 8E 83             11374 	mov	dph,r6
   3B0A 8F F0             11375 	mov	b,r7
   3B0C 12 47 8A          11376 	lcall	__gptrget
   3B0F FA                11377 	mov	r2,a
   3B10 A3                11378 	inc	dptr
   3B11 12 47 8A          11379 	lcall	__gptrget
   3B14 FB                11380 	mov	r3,a
   3B15 A3                11381 	inc	dptr
   3B16 12 47 8A          11382 	lcall	__gptrget
   3B19 FC                11383 	mov	r4,a
   3B1A A3                11384 	inc	dptr
   3B1B 12 47 8A          11385 	lcall	__gptrget
   3B1E FD                11386 	mov	r5,a
                          11387 ;	genAssign
   3B1F E5 0F             11388 	mov	a,_bp
   3B21 24 04             11389 	add	a,#0x04
   3B23 F8                11390 	mov	r0,a
   3B24 A6 02             11391 	mov	@r0,ar2
   3B26 08                11392 	inc	r0
   3B27 A6 03             11393 	mov	@r0,ar3
   3B29 08                11394 	inc	r0
   3B2A A6 04             11395 	mov	@r0,ar4
   3B2C 08                11396 	inc	r0
   3B2D A6 05             11397 	mov	@r0,ar5
                    2F4E  11398 	C$tff.c$1152$1$1 ==.
                          11399 ;	tff.c:1152: if (clust) {			/* If the file has a cluster chain, it can be followed */
                          11400 ;	genIpop
                          11401 ;	genIfx
   3B2F E5 0F             11402 	mov	a,_bp
   3B31 24 04             11403 	add	a,#0x04
   3B33 F8                11404 	mov	r0,a
   3B34 E6                11405 	mov	a,@r0
   3B35 08                11406 	inc	r0
   3B36 46                11407 	orl	a,@r0
   3B37 08                11408 	inc	r0
   3B38 46                11409 	orl	a,@r0
   3B39 08                11410 	inc	r0
   3B3A 46                11411 	orl	a,@r0
                          11412 ;	genIfxJump
   3B3B 70 03             11413 	jnz	00138$
   3B3D 02 3E 0C          11414 	ljmp	00120$
   3B40                   11415 00138$:
                    2F5F  11416 	C$tff.c$1153$1$1 ==.
                          11417 ;	tff.c:1153: csize = (DWORD)fs->sects_clust * 512;		/* Cluster size in unit of byte */
                          11418 ;	genIpush
                          11419 ;	genPlus
   3B40 E5 0F             11420 	mov	a,_bp
   3B42 24 0C             11421 	add	a,#0x0c
   3B44 F8                11422 	mov	r0,a
   3B45 E5 0F             11423 	mov	a,_bp
   3B47 24 16             11424 	add	a,#0x16
   3B49 F9                11425 	mov	r1,a
                          11426 ;     genPlusIncr
   3B4A 74 1D             11427 	mov	a,#0x1D
   3B4C 26                11428 	add	a,@r0
   3B4D F7                11429 	mov	@r1,a
                          11430 ;	Peephole 181	changed mov to clr
   3B4E E4                11431 	clr	a
   3B4F 08                11432 	inc	r0
   3B50 36                11433 	addc	a,@r0
   3B51 09                11434 	inc	r1
   3B52 F7                11435 	mov	@r1,a
   3B53 08                11436 	inc	r0
   3B54 09                11437 	inc	r1
   3B55 E6                11438 	mov	a,@r0
   3B56 F7                11439 	mov	@r1,a
                          11440 ;	genPointerGet
                          11441 ;	genGenPointerGet
   3B57 E5 0F             11442 	mov	a,_bp
   3B59 24 16             11443 	add	a,#0x16
   3B5B F8                11444 	mov	r0,a
   3B5C 86 82             11445 	mov	dpl,@r0
   3B5E 08                11446 	inc	r0
   3B5F 86 83             11447 	mov	dph,@r0
   3B61 08                11448 	inc	r0
   3B62 86 F0             11449 	mov	b,@r0
   3B64 12 47 8A          11450 	lcall	__gptrget
   3B67 FD                11451 	mov	r5,a
                          11452 ;	genCast
                          11453 ;	genLeftShift
                          11454 ;	genLeftShiftLiteral
                          11455 ;	Peephole 3.c	changed mov to clr
                          11456 ;	Peephole 3.b	changed mov to clr
   3B68 E4                11457 	clr	a
   3B69 FE                11458 	mov	r6,a
   3B6A FF                11459 	mov	r7,a
   3B6B FA                11460 	mov	r2,a
   3B6C E5 0F             11461 	mov	a,_bp
   3B6E 24 08             11462 	add	a,#0x08
   3B70 F8                11463 	mov	r0,a
                          11464 ;	genlshFour
   3B71 ED                11465 	mov	a,r5
                          11466 ;	Peephole 254	optimized left shift
   3B72 2D                11467 	add	a,r5
   3B73 08                11468 	inc	r0
   3B74 F6                11469 	mov	@r0,a
   3B75 EE                11470 	mov	a,r6
   3B76 33                11471 	rlc	a
   3B77 08                11472 	inc	r0
   3B78 F6                11473 	mov	@r0,a
   3B79 EF                11474 	mov	a,r7
   3B7A 33                11475 	rlc	a
   3B7B 08                11476 	inc	r0
   3B7C F6                11477 	mov	@r0,a
   3B7D 18                11478 	dec	r0
   3B7E 18                11479 	dec	r0
   3B7F 18                11480 	dec	r0
   3B80 76 00             11481 	mov	@r0,#0x00
                    2FA1  11482 	C$tff.c$1187$1$1 ==.
                          11483 ;	tff.c:1187: return FR_RW_ERROR;
                          11484 ;	genIpop
                    2FA1  11485 	C$tff.c$1153$4$4 ==.
                          11486 ;	tff.c:1153: csize = (DWORD)fs->sects_clust * 512;		/* Cluster size in unit of byte */
                          11487 ;	genPlus
   3B82 E5 0F             11488 	mov	a,_bp
   3B84 24 0C             11489 	add	a,#0x0c
   3B86 F8                11490 	mov	r0,a
   3B87 E5 0F             11491 	mov	a,_bp
   3B89 24 1C             11492 	add	a,#0x1c
   3B8B F9                11493 	mov	r1,a
                          11494 ;     genPlusIncr
   3B8C 74 18             11495 	mov	a,#0x18
   3B8E 26                11496 	add	a,@r0
   3B8F F7                11497 	mov	@r1,a
                          11498 ;	Peephole 181	changed mov to clr
   3B90 E4                11499 	clr	a
   3B91 08                11500 	inc	r0
   3B92 36                11501 	addc	a,@r0
   3B93 09                11502 	inc	r1
   3B94 F7                11503 	mov	@r1,a
   3B95 08                11504 	inc	r0
   3B96 09                11505 	inc	r1
   3B97 E6                11506 	mov	a,@r0
   3B98 F7                11507 	mov	@r1,a
   3B99                   11508 00115$:
                    2FB8  11509 	C$tff.c$1155$1$1 ==.
                          11510 ;	tff.c:1155: fp->curr_clust = clust;					/* Update current cluster */
                          11511 ;	genIpush
                          11512 ;	genPlus
   3B99 A8 0F             11513 	mov	r0,_bp
   3B9B 08                11514 	inc	r0
                          11515 ;     genPlusIncr
   3B9C 74 13             11516 	mov	a,#0x13
   3B9E 26                11517 	add	a,@r0
   3B9F FA                11518 	mov	r2,a
                          11519 ;	Peephole 181	changed mov to clr
   3BA0 E4                11520 	clr	a
   3BA1 08                11521 	inc	r0
   3BA2 36                11522 	addc	a,@r0
   3BA3 FB                11523 	mov	r3,a
   3BA4 08                11524 	inc	r0
   3BA5 86 04             11525 	mov	ar4,@r0
                          11526 ;	genPointerSet
                          11527 ;	genGenPointerSet
   3BA7 8A 82             11528 	mov	dpl,r2
   3BA9 8B 83             11529 	mov	dph,r3
   3BAB 8C F0             11530 	mov	b,r4
   3BAD E5 0F             11531 	mov	a,_bp
   3BAF 24 04             11532 	add	a,#0x04
   3BB1 F8                11533 	mov	r0,a
   3BB2 E6                11534 	mov	a,@r0
   3BB3 12 42 DC          11535 	lcall	__gptrput
   3BB6 A3                11536 	inc	dptr
   3BB7 08                11537 	inc	r0
   3BB8 E6                11538 	mov	a,@r0
   3BB9 12 42 DC          11539 	lcall	__gptrput
   3BBC A3                11540 	inc	dptr
   3BBD 08                11541 	inc	r0
   3BBE E6                11542 	mov	a,@r0
   3BBF 12 42 DC          11543 	lcall	__gptrput
   3BC2 A3                11544 	inc	dptr
   3BC3 08                11545 	inc	r0
   3BC4 E6                11546 	mov	a,@r0
   3BC5 12 42 DC          11547 	lcall	__gptrput
                    2FE7  11548 	C$tff.c$1156$4$4 ==.
                          11549 ;	tff.c:1156: if (ofs <= csize) break;
                          11550 ;	genCmpGt
   3BC8 E5 0F             11551 	mov	a,_bp
   3BCA 24 FA             11552 	add	a,#0xfffffffa
   3BCC F8                11553 	mov	r0,a
   3BCD E5 0F             11554 	mov	a,_bp
   3BCF 24 08             11555 	add	a,#0x08
   3BD1 F9                11556 	mov	r1,a
                          11557 ;	genCmp
   3BD2 C3                11558 	clr	c
   3BD3 E7                11559 	mov	a,@r1
   3BD4 96                11560 	subb	a,@r0
   3BD5 09                11561 	inc	r1
   3BD6 E7                11562 	mov	a,@r1
   3BD7 08                11563 	inc	r0
   3BD8 96                11564 	subb	a,@r0
   3BD9 09                11565 	inc	r1
   3BDA E7                11566 	mov	a,@r1
   3BDB 08                11567 	inc	r0
   3BDC 96                11568 	subb	a,@r0
   3BDD 09                11569 	inc	r1
   3BDE E7                11570 	mov	a,@r1
   3BDF 08                11571 	inc	r0
   3BE0 96                11572 	subb	a,@r0
                          11573 ;	genIpop
                          11574 ;	genIfx
                          11575 ;	genIfxJump
                          11576 ;	Peephole 129.a	jump optimization
   3BE1 40 03             11577 	jc	00139$
   3BE3 02 3C F9          11578 	ljmp	00116$
   3BE6                   11579 00139$:
                    3005  11580 	C$tff.c$1162$1$1 ==.
                          11581 ;	tff.c:1162: clust = get_cluster(clust);			/* Only follow cluster chain if not in write mode */
                          11582 ;	genIpush
                          11583 ;	genCall
   3BE6 E5 0F             11584 	mov	a,_bp
   3BE8 24 04             11585 	add	a,#0x04
   3BEA F8                11586 	mov	r0,a
   3BEB 86 82             11587 	mov	dpl,@r0
   3BED 08                11588 	inc	r0
   3BEE 86 83             11589 	mov	dph,@r0
   3BF0 08                11590 	inc	r0
   3BF1 86 F0             11591 	mov	b,@r0
   3BF3 08                11592 	inc	r0
   3BF4 E6                11593 	mov	a,@r0
   3BF5 12 0C CB          11594 	lcall	_get_cluster
   3BF8 AA 82             11595 	mov	r2,dpl
   3BFA AB 83             11596 	mov	r3,dph
   3BFC AC F0             11597 	mov	r4,b
   3BFE FD                11598 	mov	r5,a
                          11599 ;	genAssign
   3BFF E5 0F             11600 	mov	a,_bp
   3C01 24 04             11601 	add	a,#0x04
   3C03 F8                11602 	mov	r0,a
   3C04 A6 02             11603 	mov	@r0,ar2
   3C06 08                11604 	inc	r0
   3C07 A6 03             11605 	mov	@r0,ar3
   3C09 08                11606 	inc	r0
   3C0A A6 04             11607 	mov	@r0,ar4
   3C0C 08                11608 	inc	r0
   3C0D A6 05             11609 	mov	@r0,ar5
                    302E  11610 	C$tff.c$1163$1$1 ==.
                          11611 ;	tff.c:1163: if (clust == 0) {						/* Stop if could not follow the cluster chain */
                          11612 ;	genIpop
                          11613 ;	genIfx
   3C0F E5 0F             11614 	mov	a,_bp
   3C11 24 04             11615 	add	a,#0x04
   3C13 F8                11616 	mov	r0,a
   3C14 E6                11617 	mov	a,@r0
   3C15 08                11618 	inc	r0
   3C16 46                11619 	orl	a,@r0
   3C17 08                11620 	inc	r0
   3C18 46                11621 	orl	a,@r0
   3C19 08                11622 	inc	r0
   3C1A 46                11623 	orl	a,@r0
                          11624 ;	genIfxJump
                          11625 ;	Peephole 108.b	removed ljmp by inverse jump logic
   3C1B 70 1B             11626 	jnz	00110$
                          11627 ;	Peephole 300	removed redundant label 00140$
                    303C  11628 	C$tff.c$1164$5$5 ==.
                          11629 ;	tff.c:1164: ofs = csize; break;
                          11630 ;	genAssign
   3C1D E5 0F             11631 	mov	a,_bp
   3C1F 24 08             11632 	add	a,#0x08
   3C21 F8                11633 	mov	r0,a
   3C22 E5 0F             11634 	mov	a,_bp
   3C24 24 FA             11635 	add	a,#0xfffffffa
   3C26 F9                11636 	mov	r1,a
   3C27 E6                11637 	mov	a,@r0
   3C28 F7                11638 	mov	@r1,a
   3C29 08                11639 	inc	r0
   3C2A 09                11640 	inc	r1
   3C2B E6                11641 	mov	a,@r0
   3C2C F7                11642 	mov	@r1,a
   3C2D 08                11643 	inc	r0
   3C2E 09                11644 	inc	r1
   3C2F E6                11645 	mov	a,@r0
   3C30 F7                11646 	mov	@r1,a
   3C31 08                11647 	inc	r0
   3C32 09                11648 	inc	r1
   3C33 E6                11649 	mov	a,@r0
   3C34 F7                11650 	mov	@r1,a
   3C35 02 3C F9          11651 	ljmp	00116$
   3C38                   11652 00110$:
                    3057  11653 	C$tff.c$1166$4$4 ==.
                          11654 ;	tff.c:1166: if (clust == 1 || clust >= fs->max_clust) goto fk_error;
                          11655 ;	genCmpEq
   3C38 E5 0F             11656 	mov	a,_bp
   3C3A 24 04             11657 	add	a,#0x04
   3C3C F8                11658 	mov	r0,a
                          11659 ;	gencjneshort
   3C3D B6 01 0F          11660 	cjne	@r0,#0x01,00141$
   3C40 08                11661 	inc	r0
   3C41 B6 00 0B          11662 	cjne	@r0,#0x00,00141$
   3C44 08                11663 	inc	r0
   3C45 B6 00 07          11664 	cjne	@r0,#0x00,00141$
   3C48 08                11665 	inc	r0
   3C49 B6 00 03          11666 	cjne	@r0,#0x00,00141$
   3C4C 02 3E 11          11667 	ljmp	00121$
   3C4F                   11668 00141$:
                          11669 ;	genPointerGet
                          11670 ;	genGenPointerGet
   3C4F E5 0F             11671 	mov	a,_bp
   3C51 24 1C             11672 	add	a,#0x1c
   3C53 F8                11673 	mov	r0,a
   3C54 86 82             11674 	mov	dpl,@r0
   3C56 08                11675 	inc	r0
   3C57 86 83             11676 	mov	dph,@r0
   3C59 08                11677 	inc	r0
   3C5A 86 F0             11678 	mov	b,@r0
   3C5C 12 47 8A          11679 	lcall	__gptrget
   3C5F FD                11680 	mov	r5,a
   3C60 A3                11681 	inc	dptr
   3C61 12 47 8A          11682 	lcall	__gptrget
   3C64 FE                11683 	mov	r6,a
   3C65 A3                11684 	inc	dptr
   3C66 12 47 8A          11685 	lcall	__gptrget
   3C69 FF                11686 	mov	r7,a
   3C6A A3                11687 	inc	dptr
   3C6B 12 47 8A          11688 	lcall	__gptrget
   3C6E FA                11689 	mov	r2,a
                          11690 ;	genCmpLt
   3C6F E5 0F             11691 	mov	a,_bp
   3C71 24 04             11692 	add	a,#0x04
   3C73 F8                11693 	mov	r0,a
                          11694 ;	genCmp
   3C74 C3                11695 	clr	c
   3C75 E6                11696 	mov	a,@r0
   3C76 9D                11697 	subb	a,r5
   3C77 08                11698 	inc	r0
   3C78 E6                11699 	mov	a,@r0
   3C79 9E                11700 	subb	a,r6
   3C7A 08                11701 	inc	r0
   3C7B E6                11702 	mov	a,@r0
   3C7C 9F                11703 	subb	a,r7
   3C7D 08                11704 	inc	r0
   3C7E E6                11705 	mov	a,@r0
   3C7F 9A                11706 	subb	a,r2
                          11707 ;	genIfxJump
   3C80 40 03             11708 	jc	00142$
   3C82 02 3E 11          11709 	ljmp	00121$
   3C85                   11710 00142$:
                    30A4  11711 	C$tff.c$1167$4$4 ==.
                          11712 ;	tff.c:1167: fp->fptr += csize;						/* Update R/W pointer */
                          11713 ;	genPointerGet
                          11714 ;	genGenPointerGet
   3C85 E5 0F             11715 	mov	a,_bp
   3C87 24 0F             11716 	add	a,#0x0f
   3C89 F8                11717 	mov	r0,a
   3C8A 86 82             11718 	mov	dpl,@r0
   3C8C 08                11719 	inc	r0
   3C8D 86 83             11720 	mov	dph,@r0
   3C8F 08                11721 	inc	r0
   3C90 86 F0             11722 	mov	b,@r0
   3C92 12 47 8A          11723 	lcall	__gptrget
   3C95 FA                11724 	mov	r2,a
   3C96 A3                11725 	inc	dptr
   3C97 12 47 8A          11726 	lcall	__gptrget
   3C9A FB                11727 	mov	r3,a
   3C9B A3                11728 	inc	dptr
   3C9C 12 47 8A          11729 	lcall	__gptrget
   3C9F FC                11730 	mov	r4,a
   3CA0 A3                11731 	inc	dptr
   3CA1 12 47 8A          11732 	lcall	__gptrget
   3CA4 FD                11733 	mov	r5,a
                          11734 ;	genPlus
   3CA5 E5 0F             11735 	mov	a,_bp
   3CA7 24 08             11736 	add	a,#0x08
   3CA9 F8                11737 	mov	r0,a
   3CAA E6                11738 	mov	a,@r0
                          11739 ;	Peephole 236.a	used r2 instead of ar2
   3CAB 2A                11740 	add	a,r2
   3CAC FA                11741 	mov	r2,a
   3CAD 08                11742 	inc	r0
   3CAE E6                11743 	mov	a,@r0
                          11744 ;	Peephole 236.b	used r3 instead of ar3
   3CAF 3B                11745 	addc	a,r3
   3CB0 FB                11746 	mov	r3,a
   3CB1 08                11747 	inc	r0
   3CB2 E6                11748 	mov	a,@r0
                          11749 ;	Peephole 236.b	used r4 instead of ar4
   3CB3 3C                11750 	addc	a,r4
   3CB4 FC                11751 	mov	r4,a
   3CB5 08                11752 	inc	r0
   3CB6 E6                11753 	mov	a,@r0
                          11754 ;	Peephole 236.b	used r5 instead of ar5
   3CB7 3D                11755 	addc	a,r5
   3CB8 FD                11756 	mov	r5,a
                          11757 ;	genPointerSet
                          11758 ;	genGenPointerSet
   3CB9 E5 0F             11759 	mov	a,_bp
   3CBB 24 0F             11760 	add	a,#0x0f
   3CBD F8                11761 	mov	r0,a
   3CBE 86 82             11762 	mov	dpl,@r0
   3CC0 08                11763 	inc	r0
   3CC1 86 83             11764 	mov	dph,@r0
   3CC3 08                11765 	inc	r0
   3CC4 86 F0             11766 	mov	b,@r0
   3CC6 EA                11767 	mov	a,r2
   3CC7 12 42 DC          11768 	lcall	__gptrput
   3CCA A3                11769 	inc	dptr
   3CCB EB                11770 	mov	a,r3
   3CCC 12 42 DC          11771 	lcall	__gptrput
   3CCF A3                11772 	inc	dptr
   3CD0 EC                11773 	mov	a,r4
   3CD1 12 42 DC          11774 	lcall	__gptrput
   3CD4 A3                11775 	inc	dptr
   3CD5 ED                11776 	mov	a,r5
   3CD6 12 42 DC          11777 	lcall	__gptrput
                    30F8  11778 	C$tff.c$1168$4$4 ==.
                          11779 ;	tff.c:1168: ofs -= csize;
                          11780 ;	genMinus
   3CD9 E5 0F             11781 	mov	a,_bp
   3CDB 24 FA             11782 	add	a,#0xfffffffa
   3CDD F8                11783 	mov	r0,a
   3CDE E5 0F             11784 	mov	a,_bp
   3CE0 24 08             11785 	add	a,#0x08
   3CE2 F9                11786 	mov	r1,a
   3CE3 E6                11787 	mov	a,@r0
   3CE4 C3                11788 	clr	c
   3CE5 97                11789 	subb	a,@r1
   3CE6 F6                11790 	mov	@r0,a
   3CE7 08                11791 	inc	r0
   3CE8 E6                11792 	mov	a,@r0
   3CE9 09                11793 	inc	r1
   3CEA 97                11794 	subb	a,@r1
   3CEB F6                11795 	mov	@r0,a
   3CEC 08                11796 	inc	r0
   3CED E6                11797 	mov	a,@r0
   3CEE 09                11798 	inc	r1
   3CEF 97                11799 	subb	a,@r1
   3CF0 F6                11800 	mov	@r0,a
   3CF1 08                11801 	inc	r0
   3CF2 E6                11802 	mov	a,@r0
   3CF3 09                11803 	inc	r1
   3CF4 97                11804 	subb	a,@r1
   3CF5 F6                11805 	mov	@r0,a
   3CF6 02 3B 99          11806 	ljmp	00115$
   3CF9                   11807 00116$:
                    3118  11808 	C$tff.c$1170$3$3 ==.
                          11809 ;	tff.c:1170: csect = (BYTE)((ofs - 1) / 512);			/* Sector offset in the cluster */
                          11810 ;	genMinus
   3CF9 E5 0F             11811 	mov	a,_bp
   3CFB 24 FA             11812 	add	a,#0xfffffffa
   3CFD F8                11813 	mov	r0,a
                          11814 ;	genMinusDec
   3CFE E6                11815 	mov	a,@r0
   3CFF 24 FF             11816 	add	a,#0xff
   3D01 FA                11817 	mov	r2,a
   3D02 08                11818 	inc	r0
   3D03 E6                11819 	mov	a,@r0
   3D04 34 FF             11820 	addc	a,#0xff
   3D06 FB                11821 	mov	r3,a
   3D07 08                11822 	inc	r0
   3D08 E6                11823 	mov	a,@r0
   3D09 34 FF             11824 	addc	a,#0xff
   3D0B FC                11825 	mov	r4,a
   3D0C 08                11826 	inc	r0
   3D0D E6                11827 	mov	a,@r0
   3D0E 34 FF             11828 	addc	a,#0xff
                          11829 ;	genRightShift
                          11830 ;	genRightShiftLiteral
                          11831 ;	genrshFour
                          11832 ;	Peephole 105	removed redundant mov
                          11833 ;	Peephole 177.c	removed redundant move
   3D10 7D 00             11834 	mov	r5,#0x00
   3D12 C3                11835 	clr	c
   3D13 13                11836 	rrc	a
   3D14 CC                11837 	xch	a,r4
   3D15 13                11838 	rrc	a
   3D16 CB                11839 	xch	a,r3
   3D17 13                11840 	rrc	a
   3D18 FA                11841 	mov	r2,a
                          11842 ;	genCast
   3D19 8A 06             11843 	mov	ar6,r2
                    313A  11844 	C$tff.c$1171$3$3 ==.
                          11845 ;	tff.c:1171: fp->curr_sect = clust2sect(clust) + csect;	/* Current sector */
                          11846 ;	genPlus
   3D1B A8 0F             11847 	mov	r0,_bp
   3D1D 08                11848 	inc	r0
   3D1E E5 0F             11849 	mov	a,_bp
   3D20 24 1C             11850 	add	a,#0x1c
   3D22 F9                11851 	mov	r1,a
                          11852 ;     genPlusIncr
   3D23 74 17             11853 	mov	a,#0x17
   3D25 26                11854 	add	a,@r0
   3D26 F7                11855 	mov	@r1,a
                          11856 ;	Peephole 181	changed mov to clr
   3D27 E4                11857 	clr	a
   3D28 08                11858 	inc	r0
   3D29 36                11859 	addc	a,@r0
   3D2A 09                11860 	inc	r1
   3D2B F7                11861 	mov	@r1,a
   3D2C 08                11862 	inc	r0
   3D2D 09                11863 	inc	r1
   3D2E E6                11864 	mov	a,@r0
   3D2F F7                11865 	mov	@r1,a
                          11866 ;	genCall
   3D30 E5 0F             11867 	mov	a,_bp
   3D32 24 04             11868 	add	a,#0x04
   3D34 F8                11869 	mov	r0,a
   3D35 86 82             11870 	mov	dpl,@r0
   3D37 08                11871 	inc	r0
   3D38 86 83             11872 	mov	dph,@r0
   3D3A 08                11873 	inc	r0
   3D3B 86 F0             11874 	mov	b,@r0
   3D3D 08                11875 	inc	r0
   3D3E E6                11876 	mov	a,@r0
   3D3F C0 06             11877 	push	ar6
   3D41 12 10 DC          11878 	lcall	_clust2sect
   3D44 C0 E0             11879 	push	acc
   3D46 E5 0F             11880 	mov	a,_bp
   3D48 24 1F             11881 	add	a,#0x1f
   3D4A F8                11882 	mov	r0,a
   3D4B D0 E0             11883 	pop	acc
   3D4D A6 82             11884 	mov	@r0,dpl
   3D4F 08                11885 	inc	r0
   3D50 A6 83             11886 	mov	@r0,dph
   3D52 08                11887 	inc	r0
   3D53 A6 F0             11888 	mov	@r0,b
   3D55 08                11889 	inc	r0
   3D56 F6                11890 	mov	@r0,a
   3D57 D0 06             11891 	pop	ar6
                          11892 ;	genCast
   3D59 8E 04             11893 	mov	ar4,r6
                          11894 ;	genPlus
                          11895 ;	Peephole 3.c	changed mov to clr
                          11896 ;	Peephole 3.b	changed mov to clr
   3D5B E4                11897 	clr	a
   3D5C FD                11898 	mov	r5,a
   3D5D FA                11899 	mov	r2,a
   3D5E FB                11900 	mov	r3,a
   3D5F E5 0F             11901 	mov	a,_bp
   3D61 24 1F             11902 	add	a,#0x1f
   3D63 F8                11903 	mov	r0,a
                          11904 ;	Peephole 236.g	used r4 instead of ar4
   3D64 EC                11905 	mov	a,r4
   3D65 26                11906 	add	a,@r0
   3D66 FC                11907 	mov	r4,a
                          11908 ;	Peephole 236.g	used r5 instead of ar5
   3D67 ED                11909 	mov	a,r5
   3D68 08                11910 	inc	r0
   3D69 36                11911 	addc	a,@r0
   3D6A FD                11912 	mov	r5,a
                          11913 ;	Peephole 236.g	used r2 instead of ar2
   3D6B EA                11914 	mov	a,r2
   3D6C 08                11915 	inc	r0
   3D6D 36                11916 	addc	a,@r0
   3D6E FA                11917 	mov	r2,a
                          11918 ;	Peephole 236.g	used r3 instead of ar3
   3D6F EB                11919 	mov	a,r3
   3D70 08                11920 	inc	r0
   3D71 36                11921 	addc	a,@r0
   3D72 FB                11922 	mov	r3,a
                          11923 ;	genPointerSet
                          11924 ;	genGenPointerSet
   3D73 E5 0F             11925 	mov	a,_bp
   3D75 24 1C             11926 	add	a,#0x1c
   3D77 F8                11927 	mov	r0,a
   3D78 86 82             11928 	mov	dpl,@r0
   3D7A 08                11929 	inc	r0
   3D7B 86 83             11930 	mov	dph,@r0
   3D7D 08                11931 	inc	r0
   3D7E 86 F0             11932 	mov	b,@r0
   3D80 EC                11933 	mov	a,r4
   3D81 12 42 DC          11934 	lcall	__gptrput
   3D84 A3                11935 	inc	dptr
   3D85 ED                11936 	mov	a,r5
   3D86 12 42 DC          11937 	lcall	__gptrput
   3D89 A3                11938 	inc	dptr
   3D8A EA                11939 	mov	a,r2
   3D8B 12 42 DC          11940 	lcall	__gptrput
   3D8E A3                11941 	inc	dptr
   3D8F EB                11942 	mov	a,r3
   3D90 12 42 DC          11943 	lcall	__gptrput
                    31B2  11944 	C$tff.c$1172$3$3 ==.
                          11945 ;	tff.c:1172: fp->sect_clust = fs->sects_clust - csect;	/* Left sector counter in the cluster */
                          11946 ;	genPointerGet
                          11947 ;	genGenPointerGet
   3D93 E5 0F             11948 	mov	a,_bp
   3D95 24 16             11949 	add	a,#0x16
   3D97 F8                11950 	mov	r0,a
   3D98 86 82             11951 	mov	dpl,@r0
   3D9A 08                11952 	inc	r0
   3D9B 86 83             11953 	mov	dph,@r0
   3D9D 08                11954 	inc	r0
   3D9E 86 F0             11955 	mov	b,@r0
   3DA0 12 47 8A          11956 	lcall	__gptrget
                          11957 ;	genMinus
   3DA3 FA                11958 	mov	r2,a
                          11959 ;	Peephole 105	removed redundant mov
   3DA4 C3                11960 	clr	c
                          11961 ;	Peephole 236.l	used r6 instead of ar6
   3DA5 9E                11962 	subb	a,r6
   3DA6 FA                11963 	mov	r2,a
                          11964 ;	genPointerSet
                          11965 ;	genGenPointerSet
   3DA7 E5 0F             11966 	mov	a,_bp
   3DA9 24 13             11967 	add	a,#0x13
   3DAB F8                11968 	mov	r0,a
   3DAC 86 82             11969 	mov	dpl,@r0
   3DAE 08                11970 	inc	r0
   3DAF 86 83             11971 	mov	dph,@r0
   3DB1 08                11972 	inc	r0
   3DB2 86 F0             11973 	mov	b,@r0
   3DB4 EA                11974 	mov	a,r2
   3DB5 12 42 DC          11975 	lcall	__gptrput
                    31D7  11976 	C$tff.c$1173$3$3 ==.
                          11977 ;	tff.c:1173: fp->fptr += ofs;							/* Update file R/W pointer */
                          11978 ;	genPointerGet
                          11979 ;	genGenPointerGet
   3DB8 E5 0F             11980 	mov	a,_bp
   3DBA 24 0F             11981 	add	a,#0x0f
   3DBC F8                11982 	mov	r0,a
   3DBD 86 82             11983 	mov	dpl,@r0
   3DBF 08                11984 	inc	r0
   3DC0 86 83             11985 	mov	dph,@r0
   3DC2 08                11986 	inc	r0
   3DC3 86 F0             11987 	mov	b,@r0
   3DC5 12 47 8A          11988 	lcall	__gptrget
   3DC8 FA                11989 	mov	r2,a
   3DC9 A3                11990 	inc	dptr
   3DCA 12 47 8A          11991 	lcall	__gptrget
   3DCD FB                11992 	mov	r3,a
   3DCE A3                11993 	inc	dptr
   3DCF 12 47 8A          11994 	lcall	__gptrget
   3DD2 FC                11995 	mov	r4,a
   3DD3 A3                11996 	inc	dptr
   3DD4 12 47 8A          11997 	lcall	__gptrget
   3DD7 FD                11998 	mov	r5,a
                          11999 ;	genPlus
   3DD8 E5 0F             12000 	mov	a,_bp
   3DDA 24 FA             12001 	add	a,#0xfffffffa
   3DDC F8                12002 	mov	r0,a
   3DDD E6                12003 	mov	a,@r0
                          12004 ;	Peephole 236.a	used r2 instead of ar2
   3DDE 2A                12005 	add	a,r2
   3DDF FA                12006 	mov	r2,a
   3DE0 08                12007 	inc	r0
   3DE1 E6                12008 	mov	a,@r0
                          12009 ;	Peephole 236.b	used r3 instead of ar3
   3DE2 3B                12010 	addc	a,r3
   3DE3 FB                12011 	mov	r3,a
   3DE4 08                12012 	inc	r0
   3DE5 E6                12013 	mov	a,@r0
                          12014 ;	Peephole 236.b	used r4 instead of ar4
   3DE6 3C                12015 	addc	a,r4
   3DE7 FC                12016 	mov	r4,a
   3DE8 08                12017 	inc	r0
   3DE9 E6                12018 	mov	a,@r0
                          12019 ;	Peephole 236.b	used r5 instead of ar5
   3DEA 3D                12020 	addc	a,r5
   3DEB FD                12021 	mov	r5,a
                          12022 ;	genPointerSet
                          12023 ;	genGenPointerSet
   3DEC E5 0F             12024 	mov	a,_bp
   3DEE 24 0F             12025 	add	a,#0x0f
   3DF0 F8                12026 	mov	r0,a
   3DF1 86 82             12027 	mov	dpl,@r0
   3DF3 08                12028 	inc	r0
   3DF4 86 83             12029 	mov	dph,@r0
   3DF6 08                12030 	inc	r0
   3DF7 86 F0             12031 	mov	b,@r0
   3DF9 EA                12032 	mov	a,r2
   3DFA 12 42 DC          12033 	lcall	__gptrput
   3DFD A3                12034 	inc	dptr
   3DFE EB                12035 	mov	a,r3
   3DFF 12 42 DC          12036 	lcall	__gptrput
   3E02 A3                12037 	inc	dptr
   3E03 EC                12038 	mov	a,r4
   3E04 12 42 DC          12039 	lcall	__gptrput
   3E07 A3                12040 	inc	dptr
   3E08 ED                12041 	mov	a,r5
   3E09 12 42 DC          12042 	lcall	__gptrput
   3E0C                   12043 00120$:
                    322B  12044 	C$tff.c$1183$1$1 ==.
                          12045 ;	tff.c:1183: return FR_OK;
                          12046 ;	genRet
   3E0C 75 82 00          12047 	mov	dpl,#0x00
                    322E  12048 	C$tff.c$1185$1$1 ==.
                          12049 ;	tff.c:1185: fk_error:	/* Abort this function due to an unrecoverable error */
                          12050 ;	Peephole 112.b	changed ljmp to sjmp
   3E0F 80 28             12051 	sjmp	00122$
   3E11                   12052 00121$:
                    3230  12053 	C$tff.c$1186$1$1 ==.
                          12054 ;	tff.c:1186: fp->flag |= FA__ERROR;
                          12055 ;	genPointerGet
                          12056 ;	genGenPointerGet
   3E11 E5 0F             12057 	mov	a,_bp
   3E13 24 19             12058 	add	a,#0x19
   3E15 F8                12059 	mov	r0,a
   3E16 86 82             12060 	mov	dpl,@r0
   3E18 08                12061 	inc	r0
   3E19 86 83             12062 	mov	dph,@r0
   3E1B 08                12063 	inc	r0
   3E1C 86 F0             12064 	mov	b,@r0
   3E1E 12 47 8A          12065 	lcall	__gptrget
   3E21 FA                12066 	mov	r2,a
                          12067 ;	genOr
   3E22 43 02 80          12068 	orl	ar2,#0x80
                          12069 ;	genPointerSet
                          12070 ;	genGenPointerSet
   3E25 E5 0F             12071 	mov	a,_bp
   3E27 24 19             12072 	add	a,#0x19
   3E29 F8                12073 	mov	r0,a
   3E2A 86 82             12074 	mov	dpl,@r0
   3E2C 08                12075 	inc	r0
   3E2D 86 83             12076 	mov	dph,@r0
   3E2F 08                12077 	inc	r0
   3E30 86 F0             12078 	mov	b,@r0
   3E32 EA                12079 	mov	a,r2
   3E33 12 42 DC          12080 	lcall	__gptrput
                    3255  12081 	C$tff.c$1187$1$1 ==.
                          12082 ;	tff.c:1187: return FR_RW_ERROR;
                          12083 ;	genRet
   3E36 75 82 08          12084 	mov	dpl,#0x08
   3E39                   12085 00122$:
   3E39 85 0F 81          12086 	mov	sp,_bp
   3E3C D0 0F             12087 	pop	_bp
                    325D  12088 	C$tff.c$1188$1$1 ==.
                    325D  12089 	XG$f_lseek$0$0 ==.
   3E3E 22                12090 	ret
                          12091 ;------------------------------------------------------------
                          12092 ;Allocation info for local variables in function 'f_opendir'
                          12093 ;------------------------------------------------------------
                          12094 ;path                      Allocated to stack - offset -5
                          12095 ;dirobj                    Allocated to stack - offset 1
                          12096 ;dir                       Allocated to stack - offset 4
                          12097 ;fn                        Allocated to stack - offset 7
                          12098 ;res                       Allocated to registers r5 
                          12099 ;fs                        Allocated to stack - offset 19
                          12100 ;sloc0                     Allocated to stack - offset 22
                          12101 ;sloc1                     Allocated to stack - offset 25
                          12102 ;------------------------------------------------------------
                    325E  12103 	G$f_opendir$0$0 ==.
                    325E  12104 	C$tff.c$1198$1$1 ==.
                          12105 ;	tff.c:1198: FRESULT f_opendir (
                          12106 ;	-----------------------------------------
                          12107 ;	 function f_opendir
                          12108 ;	-----------------------------------------
   3E3F                   12109 _f_opendir:
   3E3F C0 0F             12110 	push	_bp
   3E41 85 81 0F          12111 	mov	_bp,sp
                          12112 ;     genReceive
   3E44 C0 82             12113 	push	dpl
   3E46 C0 83             12114 	push	dph
   3E48 C0 F0             12115 	push	b
   3E4A E5 81             12116 	mov	a,sp
   3E4C 24 1C             12117 	add	a,#0x1c
   3E4E F5 81             12118 	mov	sp,a
                    326F  12119 	C$tff.c$1206$1$1 ==.
                          12120 ;	tff.c:1206: FATFS *fs = FatFs;
                          12121 ;	genAssign
   3E50 E5 0F             12122 	mov	a,_bp
   3E52 24 13             12123 	add	a,#0x13
   3E54 F8                12124 	mov	r0,a
   3E55 A6 0A             12125 	mov	@r0,_FatFs
   3E57 08                12126 	inc	r0
   3E58 A6 0B             12127 	mov	@r0,(_FatFs + 1)
   3E5A 08                12128 	inc	r0
   3E5B A6 0C             12129 	mov	@r0,(_FatFs + 2)
                    327C  12130 	C$tff.c$1209$1$1 ==.
                          12131 ;	tff.c:1209: res = auto_mount(&path, 0);
                          12132 ;	genAddrOf
   3E5D E5 0F             12133 	mov	a,_bp
   3E5F 24 FB             12134 	add	a,#0xfb
   3E61 FD                12135 	mov	r5,a
                          12136 ;	genCast
   3E62 7E 00             12137 	mov	r6,#0x00
   3E64 7F 40             12138 	mov	r7,#0x40
                          12139 ;	genIpush
                          12140 ;	Peephole 181	changed mov to clr
   3E66 E4                12141 	clr	a
   3E67 C0 E0             12142 	push	acc
                          12143 ;	genCall
   3E69 8D 82             12144 	mov	dpl,r5
   3E6B 8E 83             12145 	mov	dph,r6
   3E6D 8F F0             12146 	mov	b,r7
   3E6F 12 21 C5          12147 	lcall	_auto_mount
   3E72 AD 82             12148 	mov	r5,dpl
   3E74 15 81             12149 	dec	sp
                          12150 ;	genAssign
                    3295  12151 	C$tff.c$1210$1$1 ==.
                          12152 ;	tff.c:1210: if (res != FR_OK) return res;
                          12153 ;	genCmpEq
                          12154 ;	gencjneshort
   3E76 BD 00 02          12155 	cjne	r5,#0x00,00116$
                          12156 ;	Peephole 112.b	changed ljmp to sjmp
   3E79 80 05             12157 	sjmp	00102$
   3E7B                   12158 00116$:
                          12159 ;	genRet
   3E7B 8D 82             12160 	mov	dpl,r5
   3E7D 02 40 6E          12161 	ljmp	00110$
   3E80                   12162 00102$:
                    329F  12163 	C$tff.c$1212$1$1 ==.
                          12164 ;	tff.c:1212: res = trace_path(dirobj, fn, path, &dir);	/* Trace the directory path */
                          12165 ;	genAddrOf
   3E80 E5 0F             12166 	mov	a,_bp
   3E82 24 04             12167 	add	a,#0x04
   3E84 FE                12168 	mov	r6,a
                          12169 ;	genCast
   3E85 7D 00             12170 	mov	r5,#0x00
   3E87 7F 40             12171 	mov	r7,#0x40
                          12172 ;	genAddrOf
   3E89 E5 0F             12173 	mov	a,_bp
   3E8B 24 07             12174 	add	a,#0x07
   3E8D FB                12175 	mov	r3,a
                          12176 ;	genCast
   3E8E 7C 00             12177 	mov	r4,#0x00
   3E90 7A 40             12178 	mov	r2,#0x40
                          12179 ;	genIpush
   3E92 C0 06             12180 	push	ar6
   3E94 C0 05             12181 	push	ar5
   3E96 C0 07             12182 	push	ar7
                          12183 ;	genIpush
   3E98 E5 0F             12184 	mov	a,_bp
   3E9A 24 FB             12185 	add	a,#0xfffffffb
   3E9C F8                12186 	mov	r0,a
   3E9D E6                12187 	mov	a,@r0
   3E9E C0 E0             12188 	push	acc
   3EA0 08                12189 	inc	r0
   3EA1 E6                12190 	mov	a,@r0
   3EA2 C0 E0             12191 	push	acc
   3EA4 08                12192 	inc	r0
   3EA5 E6                12193 	mov	a,@r0
   3EA6 C0 E0             12194 	push	acc
                          12195 ;	genIpush
   3EA8 C0 03             12196 	push	ar3
   3EAA C0 04             12197 	push	ar4
   3EAC C0 02             12198 	push	ar2
                          12199 ;	genCall
   3EAE A8 0F             12200 	mov	r0,_bp
   3EB0 08                12201 	inc	r0
   3EB1 86 82             12202 	mov	dpl,@r0
   3EB3 08                12203 	inc	r0
   3EB4 86 83             12204 	mov	dph,@r0
   3EB6 08                12205 	inc	r0
   3EB7 86 F0             12206 	mov	b,@r0
   3EB9 12 1A 95          12207 	lcall	_trace_path
   3EBC AA 82             12208 	mov	r2,dpl
   3EBE E5 81             12209 	mov	a,sp
   3EC0 24 F7             12210 	add	a,#0xf7
   3EC2 F5 81             12211 	mov	sp,a
                          12212 ;	genAssign
   3EC4 8A 05             12213 	mov	ar5,r2
                    32E5  12214 	C$tff.c$1213$1$1 ==.
                          12215 ;	tff.c:1213: if (res == FR_OK) {							/* Trace completed */
                          12216 ;	genIfx
   3EC6 ED                12217 	mov	a,r5
                          12218 ;	genIfxJump
   3EC7 60 03             12219 	jz	00117$
   3EC9 02 40 6C          12220 	ljmp	00109$
   3ECC                   12221 00117$:
                    32EB  12222 	C$tff.c$1214$2$2 ==.
                          12223 ;	tff.c:1214: if (dir != NULL) {						/* It is not the root dir */
                          12224 ;	genAssign
                          12225 ;	genCmpEq
   3ECC E5 0F             12226 	mov	a,_bp
   3ECE 24 04             12227 	add	a,#0x04
   3ED0 F8                12228 	mov	r0,a
                          12229 ;	gencjneshort
   3ED1 B6 00 0B          12230 	cjne	@r0,#0x00,00118$
   3ED4 08                12231 	inc	r0
   3ED5 B6 00 07          12232 	cjne	@r0,#0x00,00118$
   3ED8 08                12233 	inc	r0
   3ED9 B6 00 03          12234 	cjne	@r0,#0x00,00118$
   3EDC 02 40 42          12235 	ljmp	00107$
   3EDF                   12236 00118$:
                    32FE  12237 	C$tff.c$1215$1$1 ==.
                          12238 ;	tff.c:1215: if (dir[DIR_Attr] & AM_DIR) {		/* The entry is a directory */
                          12239 ;	genIpush
   3EDF C0 05             12240 	push	ar5
                          12241 ;	genPlus
   3EE1 E5 0F             12242 	mov	a,_bp
   3EE3 24 04             12243 	add	a,#0x04
   3EE5 F8                12244 	mov	r0,a
                          12245 ;     genPlusIncr
   3EE6 74 0B             12246 	mov	a,#0x0B
   3EE8 26                12247 	add	a,@r0
   3EE9 FE                12248 	mov	r6,a
                          12249 ;	Peephole 181	changed mov to clr
   3EEA E4                12250 	clr	a
   3EEB 08                12251 	inc	r0
   3EEC 36                12252 	addc	a,@r0
   3EED FF                12253 	mov	r7,a
   3EEE 08                12254 	inc	r0
   3EEF 86 05             12255 	mov	ar5,@r0
                          12256 ;	genPointerGet
                          12257 ;	genGenPointerGet
   3EF1 8E 82             12258 	mov	dpl,r6
   3EF3 8F 83             12259 	mov	dph,r7
   3EF5 8D F0             12260 	mov	b,r5
   3EF7 12 47 8A          12261 	lcall	__gptrget
                          12262 ;	genAnd
   3EFA FE                12263 	mov	r6,a
                          12264 ;	Peephole 105	removed redundant mov
   3EFB 54 10             12265 	anl	a,#0x10
                          12266 ;	genIpop
   3EFD D0 05             12267 	pop	ar5
                          12268 ;	genIfx
                          12269 ;	genIfxJump
   3EFF 70 03             12270 	jnz	00119$
   3F01 02 40 40          12271 	ljmp	00104$
   3F04                   12272 00119$:
                    3323  12273 	C$tff.c$1216$1$1 ==.
                          12274 ;	tff.c:1216: dirobj->clust =
                          12275 ;	genIpush
   3F04 C0 05             12276 	push	ar5
                          12277 ;	genPlus
   3F06 A8 0F             12278 	mov	r0,_bp
   3F08 08                12279 	inc	r0
   3F09 E5 0F             12280 	mov	a,_bp
   3F0B 24 16             12281 	add	a,#0x16
   3F0D F9                12282 	mov	r1,a
                          12283 ;     genPlusIncr
   3F0E 74 0B             12284 	mov	a,#0x0B
   3F10 26                12285 	add	a,@r0
   3F11 F7                12286 	mov	@r1,a
                          12287 ;	Peephole 181	changed mov to clr
   3F12 E4                12288 	clr	a
   3F13 08                12289 	inc	r0
   3F14 36                12290 	addc	a,@r0
   3F15 09                12291 	inc	r1
   3F16 F7                12292 	mov	@r1,a
   3F17 08                12293 	inc	r0
   3F18 09                12294 	inc	r1
   3F19 E6                12295 	mov	a,@r0
   3F1A F7                12296 	mov	@r1,a
                    333A  12297 	C$tff.c$1218$4$4 ==.
                          12298 ;	tff.c:1218: ((DWORD)LD_WORD(&dir[DIR_FstClusHI]) << 16) |
                          12299 ;	genPlus
   3F1B E5 0F             12300 	mov	a,_bp
   3F1D 24 04             12301 	add	a,#0x04
   3F1F F8                12302 	mov	r0,a
                          12303 ;     genPlusIncr
   3F20 74 14             12304 	mov	a,#0x14
   3F22 26                12305 	add	a,@r0
   3F23 FA                12306 	mov	r2,a
                          12307 ;	Peephole 181	changed mov to clr
   3F24 E4                12308 	clr	a
   3F25 08                12309 	inc	r0
   3F26 36                12310 	addc	a,@r0
   3F27 FB                12311 	mov	r3,a
   3F28 08                12312 	inc	r0
   3F29 86 04             12313 	mov	ar4,@r0
                          12314 ;	genPlus
                          12315 ;     genPlusIncr
   3F2B 74 01             12316 	mov	a,#0x01
                          12317 ;	Peephole 236.a	used r2 instead of ar2
   3F2D 2A                12318 	add	a,r2
   3F2E FD                12319 	mov	r5,a
                          12320 ;	Peephole 181	changed mov to clr
   3F2F E4                12321 	clr	a
                          12322 ;	Peephole 236.b	used r3 instead of ar3
   3F30 3B                12323 	addc	a,r3
   3F31 FE                12324 	mov	r6,a
   3F32 8C 07             12325 	mov	ar7,r4
                          12326 ;	genPointerGet
                          12327 ;	genGenPointerGet
   3F34 8D 82             12328 	mov	dpl,r5
   3F36 8E 83             12329 	mov	dph,r6
   3F38 8F F0             12330 	mov	b,r7
   3F3A 12 47 8A          12331 	lcall	__gptrget
   3F3D FD                12332 	mov	r5,a
                          12333 ;	genCast
                          12334 ;	genLeftShift
                          12335 ;	genLeftShiftLiteral
                          12336 ;	genlshTwo
                          12337 ;	peephole 177.e	removed redundant move
   3F3E 8D 06             12338 	mov	ar6,r5
   3F40 7D 00             12339 	mov	r5,#0x00
                          12340 ;	genPointerGet
                          12341 ;	genGenPointerGet
   3F42 8A 82             12342 	mov	dpl,r2
   3F44 8B 83             12343 	mov	dph,r3
   3F46 8C F0             12344 	mov	b,r4
   3F48 12 47 8A          12345 	lcall	__gptrget
                          12346 ;	genCast
                          12347 ;	genOr
   3F4B FA                12348 	mov	r2,a
   3F4C 7B 00             12349 	mov	r3,#0x00
                          12350 ;	Peephole 177.d	removed redundant move
   3F4E 42 05             12351 	orl	ar5,a
   3F50 EB                12352 	mov	a,r3
   3F51 42 06             12353 	orl	ar6,a
                          12354 ;	genCast
                          12355 ;	genLeftShift
                          12356 ;	genLeftShiftLiteral
                          12357 ;	Peephole 3.c	changed mov to clr
   3F53 E4                12358 	clr	a
   3F54 FA                12359 	mov	r2,a
   3F55 FB                12360 	mov	r3,a
   3F56 E5 0F             12361 	mov	a,_bp
   3F58 24 19             12362 	add	a,#0x19
                          12363 ;	genlshFour
                          12364 ;	Peephole 185	changed order of increment (acc incremented also!)
   3F5A 04                12365 	inc	a
                          12366 ;	Peephole 185	changed order of increment (acc incremented also!)
   3F5B 04                12367 	inc	a
                          12368 ;	Peephole 185	changed order of increment (acc incremented also!)
   3F5C 04                12369 	inc	a
   3F5D F8                12370 	mov	r0,a
   3F5E A6 06             12371 	mov	@r0,ar6
   3F60 18                12372 	dec	r0
   3F61 A6 05             12373 	mov	@r0,ar5
   3F63 18                12374 	dec	r0
   3F64 76 00             12375 	mov	@r0,#0x00
   3F66 18                12376 	dec	r0
   3F67 76 00             12377 	mov	@r0,#0x00
                    3388  12378 	C$tff.c$1220$4$4 ==.
                          12379 ;	tff.c:1220: LD_WORD(&dir[DIR_FstClusLO]);
                          12380 ;	genPlus
   3F69 E5 0F             12381 	mov	a,_bp
   3F6B 24 04             12382 	add	a,#0x04
   3F6D F8                12383 	mov	r0,a
                          12384 ;     genPlusIncr
   3F6E 74 1A             12385 	mov	a,#0x1A
   3F70 26                12386 	add	a,@r0
   3F71 FC                12387 	mov	r4,a
                          12388 ;	Peephole 181	changed mov to clr
   3F72 E4                12389 	clr	a
   3F73 08                12390 	inc	r0
   3F74 36                12391 	addc	a,@r0
   3F75 FF                12392 	mov	r7,a
   3F76 08                12393 	inc	r0
   3F77 86 02             12394 	mov	ar2,@r0
                          12395 ;	genPlus
                          12396 ;     genPlusIncr
   3F79 74 01             12397 	mov	a,#0x01
                          12398 ;	Peephole 236.a	used r4 instead of ar4
   3F7B 2C                12399 	add	a,r4
   3F7C FB                12400 	mov	r3,a
                          12401 ;	Peephole 181	changed mov to clr
   3F7D E4                12402 	clr	a
                          12403 ;	Peephole 236.b	used r7 instead of ar7
   3F7E 3F                12404 	addc	a,r7
   3F7F FD                12405 	mov	r5,a
   3F80 8A 06             12406 	mov	ar6,r2
                          12407 ;	genPointerGet
                          12408 ;	genGenPointerGet
   3F82 8B 82             12409 	mov	dpl,r3
   3F84 8D 83             12410 	mov	dph,r5
   3F86 8E F0             12411 	mov	b,r6
   3F88 12 47 8A          12412 	lcall	__gptrget
   3F8B FB                12413 	mov	r3,a
                          12414 ;	genCast
                          12415 ;	genLeftShift
                          12416 ;	genLeftShiftLiteral
                          12417 ;	genlshTwo
                          12418 ;	peephole 177.e	removed redundant move
   3F8C 8B 05             12419 	mov	ar5,r3
   3F8E 7B 00             12420 	mov	r3,#0x00
                          12421 ;	genPointerGet
                          12422 ;	genGenPointerGet
   3F90 8C 82             12423 	mov	dpl,r4
   3F92 8F 83             12424 	mov	dph,r7
   3F94 8A F0             12425 	mov	b,r2
   3F96 12 47 8A          12426 	lcall	__gptrget
                          12427 ;	genCast
                          12428 ;	genOr
   3F99 FC                12429 	mov	r4,a
   3F9A 7A 00             12430 	mov	r2,#0x00
                          12431 ;	Peephole 177.d	removed redundant move
   3F9C 42 03             12432 	orl	ar3,a
   3F9E EA                12433 	mov	a,r2
   3F9F 42 05             12434 	orl	ar5,a
                          12435 ;	genCast
                          12436 ;	genOr
                          12437 ;	Peephole 3.c	changed mov to clr
   3FA1 E4                12438 	clr	a
   3FA2 FA                12439 	mov	r2,a
   3FA3 FC                12440 	mov	r4,a
   3FA4 E5 0F             12441 	mov	a,_bp
   3FA6 24 19             12442 	add	a,#0x19
   3FA8 F8                12443 	mov	r0,a
   3FA9 EB                12444 	mov	a,r3
   3FAA 46                12445 	orl	a,@r0
   3FAB FB                12446 	mov	r3,a
   3FAC ED                12447 	mov	a,r5
   3FAD 08                12448 	inc	r0
   3FAE 46                12449 	orl	a,@r0
   3FAF FE                12450 	mov	r6,a
   3FB0 EA                12451 	mov	a,r2
   3FB1 08                12452 	inc	r0
   3FB2 46                12453 	orl	a,@r0
   3FB3 FA                12454 	mov	r2,a
   3FB4 EC                12455 	mov	a,r4
   3FB5 08                12456 	inc	r0
   3FB6 46                12457 	orl	a,@r0
   3FB7 FC                12458 	mov	r4,a
                          12459 ;	genPointerSet
                          12460 ;	genGenPointerSet
   3FB8 E5 0F             12461 	mov	a,_bp
   3FBA 24 16             12462 	add	a,#0x16
   3FBC F8                12463 	mov	r0,a
   3FBD 86 82             12464 	mov	dpl,@r0
   3FBF 08                12465 	inc	r0
   3FC0 86 83             12466 	mov	dph,@r0
   3FC2 08                12467 	inc	r0
   3FC3 86 F0             12468 	mov	b,@r0
   3FC5 EB                12469 	mov	a,r3
   3FC6 12 42 DC          12470 	lcall	__gptrput
   3FC9 A3                12471 	inc	dptr
   3FCA EE                12472 	mov	a,r6
   3FCB 12 42 DC          12473 	lcall	__gptrput
   3FCE A3                12474 	inc	dptr
   3FCF EA                12475 	mov	a,r2
   3FD0 12 42 DC          12476 	lcall	__gptrput
   3FD3 A3                12477 	inc	dptr
   3FD4 EC                12478 	mov	a,r4
   3FD5 12 42 DC          12479 	lcall	__gptrput
                    33F7  12480 	C$tff.c$1221$4$4 ==.
                          12481 ;	tff.c:1221: dirobj->sect = clust2sect(dirobj->clust);
                          12482 ;	genPlus
   3FD8 A8 0F             12483 	mov	r0,_bp
   3FDA 08                12484 	inc	r0
   3FDB E5 0F             12485 	mov	a,_bp
   3FDD 24 16             12486 	add	a,#0x16
   3FDF F9                12487 	mov	r1,a
                          12488 ;     genPlusIncr
   3FE0 74 0F             12489 	mov	a,#0x0F
   3FE2 26                12490 	add	a,@r0
   3FE3 F7                12491 	mov	@r1,a
                          12492 ;	Peephole 181	changed mov to clr
   3FE4 E4                12493 	clr	a
   3FE5 08                12494 	inc	r0
   3FE6 36                12495 	addc	a,@r0
   3FE7 09                12496 	inc	r1
   3FE8 F7                12497 	mov	@r1,a
   3FE9 08                12498 	inc	r0
   3FEA 09                12499 	inc	r1
   3FEB E6                12500 	mov	a,@r0
   3FEC F7                12501 	mov	@r1,a
                          12502 ;	genCall
   3FED 8B 82             12503 	mov	dpl,r3
   3FEF 8E 83             12504 	mov	dph,r6
   3FF1 8A F0             12505 	mov	b,r2
   3FF3 EC                12506 	mov	a,r4
   3FF4 12 10 DC          12507 	lcall	_clust2sect
   3FF7 AB 82             12508 	mov	r3,dpl
   3FF9 AC 83             12509 	mov	r4,dph
   3FFB AD F0             12510 	mov	r5,b
   3FFD FA                12511 	mov	r2,a
                          12512 ;	genPointerSet
                          12513 ;	genGenPointerSet
   3FFE E5 0F             12514 	mov	a,_bp
   4000 24 16             12515 	add	a,#0x16
   4002 F8                12516 	mov	r0,a
   4003 86 82             12517 	mov	dpl,@r0
   4005 08                12518 	inc	r0
   4006 86 83             12519 	mov	dph,@r0
   4008 08                12520 	inc	r0
   4009 86 F0             12521 	mov	b,@r0
   400B EB                12522 	mov	a,r3
   400C 12 42 DC          12523 	lcall	__gptrput
   400F A3                12524 	inc	dptr
   4010 EC                12525 	mov	a,r4
   4011 12 42 DC          12526 	lcall	__gptrput
   4014 A3                12527 	inc	dptr
   4015 ED                12528 	mov	a,r5
   4016 12 42 DC          12529 	lcall	__gptrput
   4019 A3                12530 	inc	dptr
   401A EA                12531 	mov	a,r2
   401B 12 42 DC          12532 	lcall	__gptrput
                    343D  12533 	C$tff.c$1222$4$4 ==.
                          12534 ;	tff.c:1222: dirobj->index = 2;
                          12535 ;	genPlus
   401E A8 0F             12536 	mov	r0,_bp
   4020 08                12537 	inc	r0
                          12538 ;     genPlusIncr
   4021 74 02             12539 	mov	a,#0x02
   4023 26                12540 	add	a,@r0
   4024 FA                12541 	mov	r2,a
                          12542 ;	Peephole 181	changed mov to clr
   4025 E4                12543 	clr	a
   4026 08                12544 	inc	r0
   4027 36                12545 	addc	a,@r0
   4028 FB                12546 	mov	r3,a
   4029 08                12547 	inc	r0
   402A 86 04             12548 	mov	ar4,@r0
                          12549 ;	genPointerSet
                          12550 ;	genGenPointerSet
   402C 8A 82             12551 	mov	dpl,r2
   402E 8B 83             12552 	mov	dph,r3
   4030 8C F0             12553 	mov	b,r4
   4032 74 02             12554 	mov	a,#0x02
   4034 12 42 DC          12555 	lcall	__gptrput
   4037 A3                12556 	inc	dptr
                          12557 ;	Peephole 181	changed mov to clr
   4038 E4                12558 	clr	a
   4039 12 42 DC          12559 	lcall	__gptrput
                          12560 ;	genIpop
   403C D0 05             12561 	pop	ar5
                          12562 ;	Peephole 112.b	changed ljmp to sjmp
   403E 80 02             12563 	sjmp	00107$
   4040                   12564 00104$:
                    345F  12565 	C$tff.c$1224$4$5 ==.
                          12566 ;	tff.c:1224: res = FR_NO_FILE;
                          12567 ;	genAssign
   4040 7D 02             12568 	mov	r5,#0x02
   4042                   12569 00107$:
                    3461  12570 	C$tff.c$1227$2$2 ==.
                          12571 ;	tff.c:1227: dirobj->id = fs->id;
                          12572 ;	genPointerGet
                          12573 ;	genGenPointerGet
   4042 E5 0F             12574 	mov	a,_bp
   4044 24 13             12575 	add	a,#0x13
   4046 F8                12576 	mov	r0,a
   4047 86 82             12577 	mov	dpl,@r0
   4049 08                12578 	inc	r0
   404A 86 83             12579 	mov	dph,@r0
   404C 08                12580 	inc	r0
   404D 86 F0             12581 	mov	b,@r0
   404F 12 47 8A          12582 	lcall	__gptrget
   4052 FA                12583 	mov	r2,a
   4053 A3                12584 	inc	dptr
   4054 12 47 8A          12585 	lcall	__gptrget
   4057 FB                12586 	mov	r3,a
                          12587 ;	genPointerSet
                          12588 ;	genGenPointerSet
   4058 A8 0F             12589 	mov	r0,_bp
   405A 08                12590 	inc	r0
   405B 86 82             12591 	mov	dpl,@r0
   405D 08                12592 	inc	r0
   405E 86 83             12593 	mov	dph,@r0
   4060 08                12594 	inc	r0
   4061 86 F0             12595 	mov	b,@r0
   4063 EA                12596 	mov	a,r2
   4064 12 42 DC          12597 	lcall	__gptrput
   4067 A3                12598 	inc	dptr
   4068 EB                12599 	mov	a,r3
   4069 12 42 DC          12600 	lcall	__gptrput
   406C                   12601 00109$:
                    348B  12602 	C$tff.c$1229$1$1 ==.
                          12603 ;	tff.c:1229: return res;
                          12604 ;	genRet
   406C 8D 82             12605 	mov	dpl,r5
   406E                   12606 00110$:
   406E 85 0F 81          12607 	mov	sp,_bp
   4071 D0 0F             12608 	pop	_bp
                    3492  12609 	C$tff.c$1230$1$1 ==.
                    3492  12610 	XG$f_opendir$0$0 ==.
   4073 22                12611 	ret
                          12612 ;------------------------------------------------------------
                          12613 ;Allocation info for local variables in function 'f_readdir'
                          12614 ;------------------------------------------------------------
                          12615 ;finfo                     Allocated to stack - offset -5
                          12616 ;dirobj                    Allocated to stack - offset 1
                          12617 ;dir                       Allocated to registers r2 r3 r4 
                          12618 ;c                         Allocated to stack - offset 4
                          12619 ;res                       Allocated to registers r5 
                          12620 ;fs                        Allocated to stack - offset 5
                          12621 ;sloc0                     Allocated to stack - offset 8
                          12622 ;sloc1                     Allocated to stack - offset 11
                          12623 ;sloc2                     Allocated to stack - offset 14
                          12624 ;sloc3                     Allocated to stack - offset 17
                          12625 ;sloc4                     Allocated to stack - offset 20
                          12626 ;------------------------------------------------------------
                    3493  12627 	G$f_readdir$0$0 ==.
                    3493  12628 	C$tff.c$1239$1$1 ==.
                          12629 ;	tff.c:1239: FRESULT f_readdir (
                          12630 ;	-----------------------------------------
                          12631 ;	 function f_readdir
                          12632 ;	-----------------------------------------
   4074                   12633 _f_readdir:
   4074 C0 0F             12634 	push	_bp
   4076 85 81 0F          12635 	mov	_bp,sp
                          12636 ;     genReceive
   4079 C0 82             12637 	push	dpl
   407B C0 83             12638 	push	dph
   407D C0 F0             12639 	push	b
   407F E5 81             12640 	mov	a,sp
   4081 24 17             12641 	add	a,#0x17
   4083 F5 81             12642 	mov	sp,a
                    34A4  12643 	C$tff.c$1246$1$1 ==.
                          12644 ;	tff.c:1246: FATFS *fs = dirobj->fs;
                          12645 ;	genPlus
   4085 A8 0F             12646 	mov	r0,_bp
   4087 08                12647 	inc	r0
                          12648 ;     genPlusIncr
   4088 74 04             12649 	mov	a,#0x04
   408A 26                12650 	add	a,@r0
   408B FD                12651 	mov	r5,a
                          12652 ;	Peephole 181	changed mov to clr
   408C E4                12653 	clr	a
   408D 08                12654 	inc	r0
   408E 36                12655 	addc	a,@r0
   408F FE                12656 	mov	r6,a
   4090 08                12657 	inc	r0
   4091 86 07             12658 	mov	ar7,@r0
                          12659 ;	genPointerGet
                          12660 ;	genGenPointerGet
   4093 8D 82             12661 	mov	dpl,r5
   4095 8E 83             12662 	mov	dph,r6
   4097 8F F0             12663 	mov	b,r7
   4099 12 47 8A          12664 	lcall	__gptrget
   409C FD                12665 	mov	r5,a
   409D A3                12666 	inc	dptr
   409E 12 47 8A          12667 	lcall	__gptrget
   40A1 FE                12668 	mov	r6,a
   40A2 A3                12669 	inc	dptr
   40A3 12 47 8A          12670 	lcall	__gptrget
   40A6 FF                12671 	mov	r7,a
                          12672 ;	genAssign
   40A7 E5 0F             12673 	mov	a,_bp
   40A9 24 05             12674 	add	a,#0x05
   40AB F8                12675 	mov	r0,a
   40AC A6 05             12676 	mov	@r0,ar5
   40AE 08                12677 	inc	r0
   40AF A6 06             12678 	mov	@r0,ar6
   40B1 08                12679 	inc	r0
   40B2 A6 07             12680 	mov	@r0,ar7
                    34D3  12681 	C$tff.c$1249$1$1 ==.
                          12682 ;	tff.c:1249: res = validate(fs, dirobj->id);			/* Check validity of the object */
                          12683 ;	genPointerGet
                          12684 ;	genGenPointerGet
   40B4 A8 0F             12685 	mov	r0,_bp
   40B6 08                12686 	inc	r0
   40B7 86 82             12687 	mov	dpl,@r0
   40B9 08                12688 	inc	r0
   40BA 86 83             12689 	mov	dph,@r0
   40BC 08                12690 	inc	r0
   40BD 86 F0             12691 	mov	b,@r0
   40BF 12 47 8A          12692 	lcall	__gptrget
   40C2 FD                12693 	mov	r5,a
   40C3 A3                12694 	inc	dptr
   40C4 12 47 8A          12695 	lcall	__gptrget
   40C7 FE                12696 	mov	r6,a
                          12697 ;	genIpush
   40C8 C0 05             12698 	push	ar5
   40CA C0 06             12699 	push	ar6
                          12700 ;	genCall
   40CC E5 0F             12701 	mov	a,_bp
   40CE 24 05             12702 	add	a,#0x05
   40D0 F8                12703 	mov	r0,a
   40D1 86 82             12704 	mov	dpl,@r0
   40D3 08                12705 	inc	r0
   40D4 86 83             12706 	mov	dph,@r0
   40D6 08                12707 	inc	r0
   40D7 86 F0             12708 	mov	b,@r0
   40D9 12 2D 60          12709 	lcall	_validate
   40DC AD 82             12710 	mov	r5,dpl
   40DE 15 81             12711 	dec	sp
   40E0 15 81             12712 	dec	sp
                          12713 ;	genAssign
                    3501  12714 	C$tff.c$1250$1$1 ==.
                          12715 ;	tff.c:1250: if (res != FR_OK) return res;
                          12716 ;	genCmpEq
                          12717 ;	gencjneshort
   40E2 BD 00 02          12718 	cjne	r5,#0x00,00127$
                          12719 ;	Peephole 112.b	changed ljmp to sjmp
   40E5 80 05             12720 	sjmp	00102$
   40E7                   12721 00127$:
                          12722 ;	genRet
   40E7 8D 82             12723 	mov	dpl,r5
   40E9 02 42 D6          12724 	ljmp	00117$
   40EC                   12725 00102$:
                    350B  12726 	C$tff.c$1252$1$1 ==.
                          12727 ;	tff.c:1252: finfo->fname[0] = 0;
                          12728 ;	genIpush
                          12729 ;	genAssign
   40EC E5 0F             12730 	mov	a,_bp
   40EE 24 FB             12731 	add	a,#0xfffffffb
   40F0 F8                12732 	mov	r0,a
   40F1 86 05             12733 	mov	ar5,@r0
   40F3 08                12734 	inc	r0
   40F4 86 06             12735 	mov	ar6,@r0
   40F6 08                12736 	inc	r0
   40F7 86 07             12737 	mov	ar7,@r0
                          12738 ;	genPlus
                          12739 ;     genPlusIncr
   40F9 74 09             12740 	mov	a,#0x09
                          12741 ;	Peephole 236.a	used r5 instead of ar5
   40FB 2D                12742 	add	a,r5
   40FC FA                12743 	mov	r2,a
                          12744 ;	Peephole 181	changed mov to clr
   40FD E4                12745 	clr	a
                          12746 ;	Peephole 236.b	used r6 instead of ar6
   40FE 3E                12747 	addc	a,r6
   40FF FB                12748 	mov	r3,a
   4100 8F 04             12749 	mov	ar4,r7
                          12750 ;	genCast
                          12751 ;	genPointerSet
                          12752 ;	genGenPointerSet
   4102 8A 82             12753 	mov	dpl,r2
   4104 8B 83             12754 	mov	dph,r3
   4106 8C F0             12755 	mov	b,r4
                          12756 ;	Peephole 181	changed mov to clr
   4108 E4                12757 	clr	a
   4109 12 42 DC          12758 	lcall	__gptrput
                    352B  12759 	C$tff.c$1265$1$1 ==.
                          12760 ;	tff.c:1265: return FR_OK;
                          12761 ;	genIpop
                    352B  12762 	C$tff.c$1253$2$2 ==.
                          12763 ;	tff.c:1253: while (dirobj->sect) {
                          12764 ;	genPlus
   410C E5 0F             12765 	mov	a,_bp
   410E 24 05             12766 	add	a,#0x05
   4110 F8                12767 	mov	r0,a
   4111 E5 0F             12768 	mov	a,_bp
   4113 24 08             12769 	add	a,#0x08
   4115 F9                12770 	mov	r1,a
                          12771 ;     genPlusIncr
   4116 74 20             12772 	mov	a,#0x20
   4118 26                12773 	add	a,@r0
   4119 F7                12774 	mov	@r1,a
                          12775 ;	Peephole 181	changed mov to clr
   411A E4                12776 	clr	a
   411B 08                12777 	inc	r0
   411C 36                12778 	addc	a,@r0
   411D 09                12779 	inc	r1
   411E F7                12780 	mov	@r1,a
   411F 08                12781 	inc	r0
   4120 09                12782 	inc	r1
   4121 E6                12783 	mov	a,@r0
   4122 F7                12784 	mov	@r1,a
                          12785 ;	genPlus
   4123 A8 0F             12786 	mov	r0,_bp
   4125 08                12787 	inc	r0
   4126 E5 0F             12788 	mov	a,_bp
   4128 24 0B             12789 	add	a,#0x0b
   412A F9                12790 	mov	r1,a
                          12791 ;     genPlusIncr
   412B 74 02             12792 	mov	a,#0x02
   412D 26                12793 	add	a,@r0
   412E F7                12794 	mov	@r1,a
                          12795 ;	Peephole 181	changed mov to clr
   412F E4                12796 	clr	a
   4130 08                12797 	inc	r0
   4131 36                12798 	addc	a,@r0
   4132 09                12799 	inc	r1
   4133 F7                12800 	mov	@r1,a
   4134 08                12801 	inc	r0
   4135 09                12802 	inc	r1
   4136 E6                12803 	mov	a,@r0
   4137 F7                12804 	mov	@r1,a
                          12805 ;	genPlus
   4138 E5 0F             12806 	mov	a,_bp
   413A 24 0E             12807 	add	a,#0x0e
   413C F8                12808 	mov	r0,a
                          12809 ;     genPlusIncr
   413D 74 09             12810 	mov	a,#0x09
                          12811 ;	Peephole 236.a	used r5 instead of ar5
   413F 2D                12812 	add	a,r5
   4140 F6                12813 	mov	@r0,a
                          12814 ;	Peephole 181	changed mov to clr
   4141 E4                12815 	clr	a
                          12816 ;	Peephole 236.b	used r6 instead of ar6
   4142 3E                12817 	addc	a,r6
   4143 08                12818 	inc	r0
   4144 F6                12819 	mov	@r0,a
   4145 08                12820 	inc	r0
   4146 A6 07             12821 	mov	@r0,ar7
                          12822 ;	genPlus
   4148 A8 0F             12823 	mov	r0,_bp
   414A 08                12824 	inc	r0
   414B E5 0F             12825 	mov	a,_bp
   414D 24 11             12826 	add	a,#0x11
   414F F9                12827 	mov	r1,a
                          12828 ;     genPlusIncr
   4150 74 0F             12829 	mov	a,#0x0F
   4152 26                12830 	add	a,@r0
   4153 F7                12831 	mov	@r1,a
                          12832 ;	Peephole 181	changed mov to clr
   4154 E4                12833 	clr	a
   4155 08                12834 	inc	r0
   4156 36                12835 	addc	a,@r0
   4157 09                12836 	inc	r1
   4158 F7                12837 	mov	@r1,a
   4159 08                12838 	inc	r0
   415A 09                12839 	inc	r1
   415B E6                12840 	mov	a,@r0
   415C F7                12841 	mov	@r1,a
   415D                   12842 00114$:
                          12843 ;	genPointerGet
                          12844 ;	genGenPointerGet
   415D E5 0F             12845 	mov	a,_bp
   415F 24 11             12846 	add	a,#0x11
   4161 F8                12847 	mov	r0,a
   4162 86 82             12848 	mov	dpl,@r0
   4164 08                12849 	inc	r0
   4165 86 83             12850 	mov	dph,@r0
   4167 08                12851 	inc	r0
   4168 86 F0             12852 	mov	b,@r0
   416A E5 0F             12853 	mov	a,_bp
   416C 24 14             12854 	add	a,#0x14
   416E F9                12855 	mov	r1,a
   416F 12 47 8A          12856 	lcall	__gptrget
   4172 F7                12857 	mov	@r1,a
   4173 A3                12858 	inc	dptr
   4174 12 47 8A          12859 	lcall	__gptrget
   4177 09                12860 	inc	r1
   4178 F7                12861 	mov	@r1,a
   4179 A3                12862 	inc	dptr
   417A 12 47 8A          12863 	lcall	__gptrget
   417D 09                12864 	inc	r1
   417E F7                12865 	mov	@r1,a
   417F A3                12866 	inc	dptr
   4180 12 47 8A          12867 	lcall	__gptrget
   4183 09                12868 	inc	r1
   4184 F7                12869 	mov	@r1,a
                          12870 ;	genIfx
   4185 E5 0F             12871 	mov	a,_bp
   4187 24 14             12872 	add	a,#0x14
   4189 F8                12873 	mov	r0,a
   418A E6                12874 	mov	a,@r0
   418B 08                12875 	inc	r0
   418C 46                12876 	orl	a,@r0
   418D 08                12877 	inc	r0
   418E 46                12878 	orl	a,@r0
   418F 08                12879 	inc	r0
   4190 46                12880 	orl	a,@r0
                          12881 ;	genIfxJump
   4191 70 03             12882 	jnz	00128$
   4193 02 42 D3          12883 	ljmp	00116$
   4196                   12884 00128$:
                    35B5  12885 	C$tff.c$1254$2$2 ==.
                          12886 ;	tff.c:1254: if (!move_window(dirobj->sect))
                          12887 ;	genCall
   4196 E5 0F             12888 	mov	a,_bp
   4198 24 14             12889 	add	a,#0x14
   419A F8                12890 	mov	r0,a
   419B 86 82             12891 	mov	dpl,@r0
   419D 08                12892 	inc	r0
   419E 86 83             12893 	mov	dph,@r0
   41A0 08                12894 	inc	r0
   41A1 86 F0             12895 	mov	b,@r0
   41A3 08                12896 	inc	r0
   41A4 E6                12897 	mov	a,@r0
   41A5 C0 05             12898 	push	ar5
   41A7 C0 06             12899 	push	ar6
   41A9 C0 07             12900 	push	ar7
   41AB 12 0B E1          12901 	lcall	_move_window
   41AE E5 82             12902 	mov	a,dpl
   41B0 D0 07             12903 	pop	ar7
   41B2 D0 06             12904 	pop	ar6
   41B4 D0 05             12905 	pop	ar5
                          12906 ;	genIfx
                          12907 ;	genIfxJump
                          12908 ;	Peephole 108.b	removed ljmp by inverse jump logic
   41B6 70 06             12909 	jnz	00104$
                          12910 ;	Peephole 300	removed redundant label 00129$
                    35D7  12911 	C$tff.c$1255$2$2 ==.
                          12912 ;	tff.c:1255: return FR_RW_ERROR;
                          12913 ;	genRet
   41B8 75 82 08          12914 	mov	dpl,#0x08
   41BB 02 42 D6          12915 	ljmp	00117$
   41BE                   12916 00104$:
                    35DD  12917 	C$tff.c$1256$1$1 ==.
                          12918 ;	tff.c:1256: dir = &fs->win[(dirobj->index & 15) * 32];		/* pointer to the directory entry */
                          12919 ;	genIpush
   41BE C0 05             12920 	push	ar5
   41C0 C0 06             12921 	push	ar6
   41C2 C0 07             12922 	push	ar7
                          12923 ;	genPointerGet
                          12924 ;	genGenPointerGet
   41C4 E5 0F             12925 	mov	a,_bp
   41C6 24 0B             12926 	add	a,#0x0b
   41C8 F8                12927 	mov	r0,a
   41C9 86 82             12928 	mov	dpl,@r0
   41CB 08                12929 	inc	r0
   41CC 86 83             12930 	mov	dph,@r0
   41CE 08                12931 	inc	r0
   41CF 86 F0             12932 	mov	b,@r0
   41D1 12 47 8A          12933 	lcall	__gptrget
   41D4 FD                12934 	mov	r5,a
   41D5 A3                12935 	inc	dptr
   41D6 12 47 8A          12936 	lcall	__gptrget
   41D9 FE                12937 	mov	r6,a
                          12938 ;	genAnd
   41DA 53 05 0F          12939 	anl	ar5,#0x0F
                          12940 ;	genLeftShift
                          12941 ;	genLeftShiftLiteral
                          12942 ;	genlshTwo
                          12943 ;	peephole 177.g	optimized mov sequence
                          12944 ;	Peephole 181	changed mov to clr
   41DD E4                12945 	clr	a
   41DE FE                12946 	mov	r6,a
   41DF C4                12947 	swap	a
   41E0 23                12948 	rl	a
   41E1 54 E0             12949 	anl	a,#0xe0
   41E3 CD                12950 	xch	a,r5
   41E4 C4                12951 	swap	a
   41E5 23                12952 	rl	a
   41E6 CD                12953 	xch	a,r5
   41E7 6D                12954 	xrl	a,r5
   41E8 CD                12955 	xch	a,r5
   41E9 54 E0             12956 	anl	a,#0xe0
   41EB CD                12957 	xch	a,r5
   41EC 6D                12958 	xrl	a,r5
   41ED FE                12959 	mov	r6,a
                          12960 ;	genPlus
   41EE E5 0F             12961 	mov	a,_bp
   41F0 24 08             12962 	add	a,#0x08
   41F2 F8                12963 	mov	r0,a
                          12964 ;	Peephole 236.g	used r5 instead of ar5
   41F3 ED                12965 	mov	a,r5
   41F4 26                12966 	add	a,@r0
   41F5 FD                12967 	mov	r5,a
                          12968 ;	Peephole 236.g	used r6 instead of ar6
   41F6 EE                12969 	mov	a,r6
   41F7 08                12970 	inc	r0
   41F8 36                12971 	addc	a,@r0
   41F9 FE                12972 	mov	r6,a
   41FA 08                12973 	inc	r0
   41FB 86 07             12974 	mov	ar7,@r0
                          12975 ;	genAssign
   41FD 8D 02             12976 	mov	ar2,r5
   41FF 8E 03             12977 	mov	ar3,r6
   4201 8F 04             12978 	mov	ar4,r7
                    3622  12979 	C$tff.c$1257$2$2 ==.
                          12980 ;	tff.c:1257: c = dir[DIR_Name];
                          12981 ;	genPointerGet
                          12982 ;	genGenPointerGet
   4203 8A 82             12983 	mov	dpl,r2
   4205 8B 83             12984 	mov	dph,r3
   4207 8C F0             12985 	mov	b,r4
   4209 12 47 8A          12986 	lcall	__gptrget
   420C FD                12987 	mov	r5,a
                          12988 ;	genAssign
   420D E5 0F             12989 	mov	a,_bp
   420F 24 04             12990 	add	a,#0x04
   4211 F8                12991 	mov	r0,a
   4212 A6 05             12992 	mov	@r0,ar5
                    3633  12993 	C$tff.c$1258$1$1 ==.
                          12994 ;	tff.c:1258: if (c == 0) break;								/* Has it reached to end of dir? */
                          12995 ;	genIpop
   4214 D0 07             12996 	pop	ar7
   4216 D0 06             12997 	pop	ar6
   4218 D0 05             12998 	pop	ar5
                          12999 ;	genIfx
   421A E5 0F             13000 	mov	a,_bp
   421C 24 04             13001 	add	a,#0x04
   421E F8                13002 	mov	r0,a
   421F E6                13003 	mov	a,@r0
                          13004 ;	genIfxJump
   4220 70 03             13005 	jnz	00130$
   4222 02 42 D3          13006 	ljmp	00116$
   4225                   13007 00130$:
                    3644  13008 	C$tff.c$1259$2$2 ==.
                          13009 ;	tff.c:1259: if (c != 0xE5 && !(dir[DIR_Attr] & AM_VOL))		/* Is it a valid entry? */
                          13010 ;	genCmpEq
   4225 E5 0F             13011 	mov	a,_bp
   4227 24 04             13012 	add	a,#0x04
   4229 F8                13013 	mov	r0,a
                          13014 ;	gencjneshort
   422A B6 E5 02          13015 	cjne	@r0,#0xE5,00131$
                          13016 ;	Peephole 112.b	changed ljmp to sjmp
   422D 80 44             13017 	sjmp	00108$
   422F                   13018 00131$:
                          13019 ;	genIpush
   422F C0 05             13020 	push	ar5
   4231 C0 06             13021 	push	ar6
   4233 C0 07             13022 	push	ar7
                          13023 ;	genPlus
                          13024 ;     genPlusIncr
   4235 74 0B             13025 	mov	a,#0x0B
                          13026 ;	Peephole 236.a	used r2 instead of ar2
   4237 2A                13027 	add	a,r2
   4238 FD                13028 	mov	r5,a
                          13029 ;	Peephole 181	changed mov to clr
   4239 E4                13030 	clr	a
                          13031 ;	Peephole 236.b	used r3 instead of ar3
   423A 3B                13032 	addc	a,r3
   423B FE                13033 	mov	r6,a
   423C 8C 07             13034 	mov	ar7,r4
                          13035 ;	genPointerGet
                          13036 ;	genGenPointerGet
   423E 8D 82             13037 	mov	dpl,r5
   4240 8E 83             13038 	mov	dph,r6
   4242 8F F0             13039 	mov	b,r7
   4244 12 47 8A          13040 	lcall	__gptrget
                          13041 ;	genAnd
   4247 FD                13042 	mov	r5,a
                          13043 ;	Peephole 105	removed redundant mov
   4248 54 08             13044 	anl	a,#0x08
                          13045 ;	genIpop
   424A D0 07             13046 	pop	ar7
   424C D0 06             13047 	pop	ar6
   424E D0 05             13048 	pop	ar5
                          13049 ;	genIfx
                          13050 ;	genIfxJump
                          13051 ;	Peephole 108.b	removed ljmp by inverse jump logic
   4250 70 21             13052 	jnz	00108$
                          13053 ;	Peephole 300	removed redundant label 00132$
                    3671  13054 	C$tff.c$1260$2$2 ==.
                          13055 ;	tff.c:1260: get_fileinfo(finfo, dir);
                          13056 ;	genIpush
   4252 C0 05             13057 	push	ar5
   4254 C0 06             13058 	push	ar6
   4256 C0 07             13059 	push	ar7
   4258 C0 02             13060 	push	ar2
   425A C0 03             13061 	push	ar3
   425C C0 04             13062 	push	ar4
                          13063 ;	genCall
   425E 8D 82             13064 	mov	dpl,r5
   4260 8E 83             13065 	mov	dph,r6
   4262 8F F0             13066 	mov	b,r7
   4264 12 14 90          13067 	lcall	_get_fileinfo
   4267 15 81             13068 	dec	sp
   4269 15 81             13069 	dec	sp
   426B 15 81             13070 	dec	sp
   426D D0 07             13071 	pop	ar7
   426F D0 06             13072 	pop	ar6
   4271 D0 05             13073 	pop	ar5
   4273                   13074 00108$:
                    3692  13075 	C$tff.c$1261$2$2 ==.
                          13076 ;	tff.c:1261: if (!next_dir_entry(dirobj)) dirobj->sect = 0;	/* Next entry */
                          13077 ;	genCall
   4273 A8 0F             13078 	mov	r0,_bp
   4275 08                13079 	inc	r0
   4276 86 82             13080 	mov	dpl,@r0
   4278 08                13081 	inc	r0
   4279 86 83             13082 	mov	dph,@r0
   427B 08                13083 	inc	r0
   427C 86 F0             13084 	mov	b,@r0
   427E C0 05             13085 	push	ar5
   4280 C0 06             13086 	push	ar6
   4282 C0 07             13087 	push	ar7
   4284 12 11 FF          13088 	lcall	_next_dir_entry
   4287 E5 82             13089 	mov	a,dpl
   4289 D0 07             13090 	pop	ar7
   428B D0 06             13091 	pop	ar6
   428D D0 05             13092 	pop	ar5
                          13093 ;	genIfx
                          13094 ;	genIfxJump
                          13095 ;	Peephole 108.b	removed ljmp by inverse jump logic
   428F 70 27             13096 	jnz	00111$
                          13097 ;	Peephole 300	removed redundant label 00133$
                          13098 ;	genPlus
   4291 A8 0F             13099 	mov	r0,_bp
   4293 08                13100 	inc	r0
                          13101 ;     genPlusIncr
   4294 74 0F             13102 	mov	a,#0x0F
   4296 26                13103 	add	a,@r0
   4297 FA                13104 	mov	r2,a
                          13105 ;	Peephole 181	changed mov to clr
   4298 E4                13106 	clr	a
   4299 08                13107 	inc	r0
   429A 36                13108 	addc	a,@r0
   429B FB                13109 	mov	r3,a
   429C 08                13110 	inc	r0
   429D 86 04             13111 	mov	ar4,@r0
                          13112 ;	genPointerSet
                          13113 ;	genGenPointerSet
   429F 8A 82             13114 	mov	dpl,r2
   42A1 8B 83             13115 	mov	dph,r3
   42A3 8C F0             13116 	mov	b,r4
                          13117 ;	Peephole 181	changed mov to clr
   42A5 E4                13118 	clr	a
   42A6 12 42 DC          13119 	lcall	__gptrput
   42A9 A3                13120 	inc	dptr
                          13121 ;	Peephole 181	changed mov to clr
   42AA E4                13122 	clr	a
   42AB 12 42 DC          13123 	lcall	__gptrput
   42AE A3                13124 	inc	dptr
                          13125 ;	Peephole 181	changed mov to clr
   42AF E4                13126 	clr	a
   42B0 12 42 DC          13127 	lcall	__gptrput
   42B3 A3                13128 	inc	dptr
                          13129 ;	Peephole 181	changed mov to clr
   42B4 E4                13130 	clr	a
   42B5 12 42 DC          13131 	lcall	__gptrput
   42B8                   13132 00111$:
                    36D7  13133 	C$tff.c$1262$2$2 ==.
                          13134 ;	tff.c:1262: if (finfo->fname[0]) break;						/* Found valid entry */
                          13135 ;	genCast
   42B8 E5 0F             13136 	mov	a,_bp
   42BA 24 0E             13137 	add	a,#0x0e
   42BC F8                13138 	mov	r0,a
   42BD 86 02             13139 	mov	ar2,@r0
   42BF 08                13140 	inc	r0
   42C0 86 03             13141 	mov	ar3,@r0
   42C2 08                13142 	inc	r0
   42C3 86 04             13143 	mov	ar4,@r0
                          13144 ;	genPointerGet
                          13145 ;	genGenPointerGet
   42C5 8A 82             13146 	mov	dpl,r2
   42C7 8B 83             13147 	mov	dph,r3
   42C9 8C F0             13148 	mov	b,r4
   42CB 12 47 8A          13149 	lcall	__gptrget
                          13150 ;	genIfxJump
   42CE 70 03             13151 	jnz	00134$
   42D0 02 41 5D          13152 	ljmp	00114$
   42D3                   13153 00134$:
   42D3                   13154 00116$:
                    36F2  13155 	C$tff.c$1265$1$1 ==.
                          13156 ;	tff.c:1265: return FR_OK;
                          13157 ;	genRet
   42D3 75 82 00          13158 	mov	dpl,#0x00
   42D6                   13159 00117$:
   42D6 85 0F 81          13160 	mov	sp,_bp
   42D9 D0 0F             13161 	pop	_bp
                    36FA  13162 	C$tff.c$1266$1$1 ==.
                    36FA  13163 	XG$f_readdir$0$0 ==.
   42DB 22                13164 	ret
                          13165 	.area CSEG    (CODE)
                          13166 	.area CONST   (CODE)
                    0000  13167 Ftff$_str_0$0$0 == .
   597E                   13168 __str_0:
   597E 46 41 54          13169 	.ascii "FAT"
   5981 00                13170 	.db 0x00
                    0004  13171 Ftff$_str_1$0$0 == .
   5982                   13172 __str_1:
   5982 46 41 54 33 32    13173 	.ascii "FAT32"
   5987 00                13174 	.db 0x00
                          13175 	.area XINIT   (CODE)
