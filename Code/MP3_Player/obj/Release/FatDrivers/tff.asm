;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.6.0 #4309 (Jul 28 2006)
; This file generated Sat May 02 15:12:59 2015
;--------------------------------------------------------
	.module tff
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _Stat
	.globl _f_mount
	.globl _f_open
	.globl _f_read
	.globl _f_mp3_read
	.globl _f_txt_read
	.globl _f_close
	.globl _f_lseek
	.globl _f_opendir
	.globl _f_readdir
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (DATA)
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (DATA)
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_FatFs:
	.ds 3
_fsid:
	.ds 2
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area OSEG    (OVR,DATA)
;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
_Stat::
	.ds 1
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'move_window'
;------------------------------------------------------------
;sector                    Allocated to stack - offset 1
;wsect                     Allocated to registers r6 r7 r2 r3 
;fs                        Allocated to stack - offset 5
;------------------------------------------------------------
;	FatDrivers/tff.c:79: BOOL move_window (		/* TRUE: successful, FALSE: failed */
;	-----------------------------------------
;	 function move_window
;	-----------------------------------------
_move_window:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
	push	_bp
	mov	_bp,sp
;     genReceive
	push	dpl
	push	dph
	push	b
	push	acc
	inc	sp
	inc	sp
	inc	sp
;	FatDrivers/tff.c:84: FATFS *fs = FatFs;
;	genAssign
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	@r0,_FatFs
	inc	r0
	mov	@r0,(_FatFs + 1)
	inc	r0
	mov	@r0,(_FatFs + 2)
;	FatDrivers/tff.c:87: wsect = fs->winsect;
;	genPlus
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
;     genPlusIncr
	mov	a,#0x04
	add	a,@r0
	mov	r6,a
;	Peephole 181	changed mov to clr
	clr	a
	inc	r0
	addc	a,@r0
	mov	r7,a
	inc	r0
	mov	ar2,@r0
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r6
	mov	dph,r7
	mov	b,r2
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	inc	dptr
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
;	genAssign
;	FatDrivers/tff.c:88: if (wsect != sector) {	/* Changed current window */
;	genCmpEq
	mov	r0,_bp
	inc	r0
;	gencjneshort
	mov	a,@r0
	cjne	a,ar6,00112$
	inc	r0
	mov	a,@r0
	cjne	a,ar7,00112$
	inc	r0
	mov	a,@r0
	cjne	a,ar2,00112$
	inc	r0
	mov	a,@r0
	cjne	a,ar3,00112$
	ljmp	00106$
00112$:
;	FatDrivers/tff.c:103: if (sector) {
;	genIfx
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	inc	r0
	orl	a,@r0
	inc	r0
	orl	a,@r0
	inc	r0
	orl	a,@r0
;	genIfxJump
;	Peephole 108.c	removed ljmp by inverse jump logic
	jz	00106$
;	Peephole 300	removed redundant label 00113$
;	FatDrivers/tff.c:104: if (disk_read(0, fs->win, sector, 1) != RES_OK)
;	genPlus
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
;     genPlusIncr
	mov	a,#0x20
	add	a,@r0
	mov	r2,a
;	Peephole 181	changed mov to clr
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
;	genIpush
	mov	a,#0x01
	push	acc
;	genIpush
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
;	genIpush
	push	ar2
	push	ar3
	push	ar4
;	genCall
	mov	dpl,#0x00
	lcall	_disk_read
	mov	r2,dpl
	mov	a,sp
	add	a,#0xf8
	mov	sp,a
;	genCmpEq
;	gencjneshort
	cjne	r2,#0x00,00114$
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00102$
00114$:
;	FatDrivers/tff.c:105: return FALSE;
;	genRet
	mov	dpl,#0x00
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00107$
00102$:
;	FatDrivers/tff.c:106: fs->winsect = sector;
;	genPlus
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
;     genPlusIncr
	mov	a,#0x04
	add	a,@r0
	mov	r2,a
;	Peephole 181	changed mov to clr
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
;	genPointerSet
;	genGenPointerSet
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
00106$:
;	FatDrivers/tff.c:109: return TRUE;
;	genRet
	mov	dpl,#0x01
00107$:
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'get_cluster'
;------------------------------------------------------------
;clust                     Allocated to stack - offset 1
;wc                        Allocated to stack - offset 5
;bc                        Allocated to stack - offset 7
;fatsect                   Allocated to stack - offset 9
;fs                        Allocated to stack - offset 13
;------------------------------------------------------------
;	FatDrivers/tff.c:156: CLUST get_cluster (		/* 0,>=2: successful, 1: failed */
;	-----------------------------------------
;	 function get_cluster
;	-----------------------------------------
_get_cluster:
	push	_bp
	mov	_bp,sp
;     genReceive
	push	dpl
	push	dph
	push	b
	push	acc
	mov	a,sp
	add	a,#0x0f
	mov	sp,a
;	FatDrivers/tff.c:162: FATFS *fs = FatFs;
;	genAssign
	mov	a,_bp
	add	a,#0x0d
	mov	r0,a
	mov	@r0,_FatFs
	inc	r0
	mov	@r0,(_FatFs + 1)
	inc	r0
	mov	@r0,(_FatFs + 2)
;	FatDrivers/tff.c:165: if (clust >= 2 && clust < fs->max_clust) {		/* Valid cluster# */
;	genCmpLt
	mov	r0,_bp
	inc	r0
;	genCmp
	clr	c
	mov	a,@r0
	subb	a,#0x02
	inc	r0
	mov	a,@r0
	subb	a,#0x00
	inc	r0
	mov	a,@r0
	subb	a,#0x00
	inc	r0
	mov	a,@r0
	subb	a,#0x00
;	genIfxJump
	jnc	00130$
	ljmp	00114$
00130$:
;	genPlus
	mov	a,_bp
	add	a,#0x0d
	mov	r0,a
;     genPlusIncr
	mov	a,#0x18
	add	a,@r0
	mov	r6,a
;	Peephole 181	changed mov to clr
	clr	a
	inc	r0
	addc	a,@r0
	mov	r7,a
	inc	r0
	mov	ar2,@r0
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r6
	mov	dph,r7
	mov	b,r2
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	inc	dptr
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
;	genCmpLt
	mov	r0,_bp
	inc	r0
;	genCmp
	clr	c
	mov	a,@r0
	subb	a,r6
	inc	r0
	mov	a,@r0
	subb	a,r7
	inc	r0
	mov	a,@r0
	subb	a,r2
	inc	r0
	mov	a,@r0
	subb	a,r3
;	genIfxJump
	jc	00131$
	ljmp	00114$
00131$:
;	FatDrivers/tff.c:166: fatsect = fs->fatbase;
;	genPlus
	mov	a,_bp
	add	a,#0x0d
	mov	r0,a
;     genPlusIncr
	mov	a,#0x08
	add	a,@r0
	mov	r2,a
;	Peephole 181	changed mov to clr
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
;	genAssign
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
;	FatDrivers/tff.c:167: switch (fs->fs_type) {
;	genPlus
	mov	a,_bp
	add	a,#0x0d
	mov	r0,a
;     genPlusIncr
	mov	a,#0x1C
	add	a,@r0
	mov	r6,a
;	Peephole 181	changed mov to clr
	clr	a
	inc	r0
	addc	a,@r0
	mov	r7,a
	inc	r0
	mov	ar2,@r0
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r6
	mov	dph,r7
	mov	b,r2
	lcall	__gptrget
	mov	r2,a
;	genCmpEq
;	gencjneshort
	cjne	r2,#0x01,00132$
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00101$
00132$:
;	genCmpEq
;	gencjneshort
	cjne	r2,#0x02,00133$
	ljmp	00106$
00133$:
;	genCmpEq
;	gencjneshort
	cjne	r2,#0x03,00134$
	ljmp	00109$
00134$:
	ljmp	00114$
;	FatDrivers/tff.c:168: case FS_FAT12 :
00101$:
;	FatDrivers/tff.c:169: bc = (WORD)clust * 3 / 2;
;	genCast
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
;	genIpush
	mov	a,#0x03
	push	acc
;	Peephole 181	changed mov to clr
	clr	a
	push	acc
;	genCall
	lcall	__mulint
	mov	r2,dpl
	mov	r3,dph
	dec	sp
	dec	sp
;	genRightShift
;	genRightShiftLiteral
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
;	genrshTwo
	mov	@r0,ar2
	mov	a,r3
	clr	c
	rrc	a
	xch	a,@r0
	rrc	a
	xch	a,@r0
	inc	r0
	mov	@r0,a
;	FatDrivers/tff.c:170: if (!move_window(fatsect + bc / 512)) break;
;	genRightShift
;	genRightShiftLiteral
	mov	a,_bp
	add	a,#0x07
;	genrshTwo
;	Peephole 185	changed order of increment (acc incremented also!)
	inc	a
	mov	r0,a
	mov	a,@r0
	clr	c
	rrc	a
	mov	r4,a
;	genCast
;	genPlus
;	Peephole 3.c	changed mov to clr
;	Peephole 3.b	changed mov to clr
	clr	a
	mov	r5,a
	mov	r6,a
	mov	r7,a
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
;	Peephole 236.g	used r4 instead of ar4
	mov	a,r4
	add	a,@r0
	mov	r4,a
;	Peephole 236.g	used r5 instead of ar5
	mov	a,r5
	inc	r0
	addc	a,@r0
	mov	r5,a
;	Peephole 236.g	used r6 instead of ar6
	mov	a,r6
	inc	r0
	addc	a,@r0
	mov	r6,a
;	Peephole 236.g	used r7 instead of ar7
	mov	a,r7
	inc	r0
	addc	a,@r0
;	genCall
	mov	r7,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
;	Peephole 191	removed redundant mov
	lcall	_move_window
	mov	a,dpl
;	genIfx
;	genIfxJump
	jnz	00135$
	ljmp	00114$
00135$:
;	FatDrivers/tff.c:171: wc = fs->win[bc % 512]; bc++;
;	genPlus
	mov	a,_bp
	add	a,#0x0d
	mov	r0,a
;     genPlusIncr
	mov	a,#0x20
	add	a,@r0
	mov	r4,a
;	Peephole 181	changed mov to clr
	clr	a
	inc	r0
	addc	a,@r0
	mov	r5,a
	inc	r0
	mov	ar6,@r0
;	genAnd
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	ar7,@r0
	mov	a,#0x01
	inc	r0
	anl	a,@r0
	mov	r2,a
;	genPlus
;	Peephole 236.g	used r7 instead of ar7
	mov	a,r7
;	Peephole 236.a	used r4 instead of ar4
	add	a,r4
	mov	r4,a
;	Peephole 236.g	used r2 instead of ar2
	mov	a,r2
;	Peephole 236.b	used r5 instead of ar5
	addc	a,r5
	mov	r5,a
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	r4,a
;	genCast
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	@r0,ar4
	inc	r0
	mov	@r0,#0x00
;	genPlus
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
;     genPlusIncr
	mov	a,#0x01
	add	a,@r0
	mov	@r0,a
;	Peephole 181	changed mov to clr
	clr	a
	inc	r0
	addc	a,@r0
	mov	@r0,a
;	FatDrivers/tff.c:172: if (!move_window(fatsect + bc / 512)) break;
;	genRightShift
;	genRightShiftLiteral
	mov	a,_bp
	add	a,#0x07
;	genrshTwo
;	Peephole 185	changed order of increment (acc incremented also!)
	inc	a
	mov	r0,a
	mov	a,@r0
	clr	c
	rrc	a
	mov	r3,a
;	genCast
;	genPlus
;	Peephole 3.c	changed mov to clr
;	Peephole 3.b	changed mov to clr
	clr	a
	mov	r5,a
	mov	r6,a
	mov	r7,a
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
;	Peephole 236.g	used r3 instead of ar3
	mov	a,r3
	add	a,@r0
	mov	r3,a
;	Peephole 236.g	used r5 instead of ar5
	mov	a,r5
	inc	r0
	addc	a,@r0
	mov	r5,a
;	Peephole 236.g	used r6 instead of ar6
	mov	a,r6
	inc	r0
	addc	a,@r0
	mov	r6,a
;	Peephole 236.g	used r7 instead of ar7
	mov	a,r7
	inc	r0
	addc	a,@r0
;	genCall
	mov	r7,a
	mov	dpl,r3
	mov	dph,r5
	mov	b,r6
;	Peephole 191	removed redundant mov
	lcall	_move_window
	mov	a,dpl
;	genIfx
;	genIfxJump
	jnz	00136$
	ljmp	00114$
00136$:
;	FatDrivers/tff.c:173: wc |= (WORD)fs->win[bc % 512] << 8;
;	genPlus
	mov	a,_bp
	add	a,#0x0d
	mov	r0,a
;     genPlusIncr
	mov	a,#0x20
	add	a,@r0
	mov	r3,a
;	Peephole 181	changed mov to clr
	clr	a
	inc	r0
	addc	a,@r0
	mov	r5,a
	inc	r0
	mov	ar6,@r0
;	genAnd
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	ar7,@r0
	mov	a,#0x01
	inc	r0
	anl	a,@r0
	mov	r2,a
;	genPlus
;	Peephole 236.g	used r7 instead of ar7
	mov	a,r7
;	Peephole 236.a	used r3 instead of ar3
	add	a,r3
	mov	r3,a
;	Peephole 236.g	used r2 instead of ar2
	mov	a,r2
;	Peephole 236.b	used r5 instead of ar5
	addc	a,r5
	mov	r5,a
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r3
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	r3,a
;	genCast
;	genLeftShift
;	genLeftShiftLiteral
;	genlshTwo
;	peephole 177.e	removed redundant move
	mov	ar2,r3
	mov	r3,#0x00
;	genOr
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	a,r3
	orl	a,@r0
	mov	@r0,a
	mov	a,r2
	inc	r0
	orl	a,@r0
	mov	@r0,a
;	FatDrivers/tff.c:174: return (clust & 1) ? (wc >> 4) : (wc & 0xFFF);
;	genAnd
	mov	r0,_bp
	inc	r0
	mov	a,@r0
;	genIfxJump
;	Peephole 108.d	removed ljmp by inverse jump logic
	jnb	acc.0,00118$
;	Peephole 300	removed redundant label 00137$
;	genRightShift
;	genRightShiftLiteral
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
;	genrshTwo
	mov	ar2,@r0
	inc	r0
	mov	a,@r0
	swap	a
	xch	a,r2
	swap	a
	anl	a,#0x0f
	xrl	a,r2
	xch	a,r2
	anl	a,#0x0f
	xch	a,r2
	xrl	a,r2
	xch	a,r2
	mov	r3,a
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00119$
00118$:
;	genAnd
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	ar2,@r0
	mov	a,#0x0F
	inc	r0
	anl	a,@r0
	mov	r3,a
00119$:
;	genCast
	mov	r4,#0x00
	mov	r5,#0x00
;	genRet
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	ljmp	00116$
;	FatDrivers/tff.c:176: case FS_FAT16 :
00106$:
;	FatDrivers/tff.c:177: if (!move_window(fatsect + clust / 256)) break;
;	genRightShift
;	genRightShiftLiteral
	mov	r0,_bp
	inc	r0
;	genrshFour
	inc	r0
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	mov	r5,#0x00
;	genPlus
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
;	Peephole 236.g	used r2 instead of ar2
	mov	a,r2
	add	a,@r0
	mov	r2,a
;	Peephole 236.g	used r3 instead of ar3
	mov	a,r3
	inc	r0
	addc	a,@r0
	mov	r3,a
;	Peephole 236.g	used r4 instead of ar4
	mov	a,r4
	inc	r0
	addc	a,@r0
	mov	r4,a
;	Peephole 236.g	used r5 instead of ar5
	mov	a,r5
	inc	r0
	addc	a,@r0
;	genCall
	mov	r5,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
;	Peephole 191	removed redundant mov
	lcall	_move_window
	mov	a,dpl
;	genIfx
;	genIfxJump
	jnz	00138$
	ljmp	00114$
00138$:
;	FatDrivers/tff.c:178: return LD_WORD(&fs->win[((WORD)clust * 2) % 512]);
;	genPlus
	mov	a,_bp
	add	a,#0x0d
	mov	r0,a
;     genPlusIncr
	mov	a,#0x20
	add	a,@r0
	mov	r2,a
;	Peephole 181	changed mov to clr
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
;	genCast
	mov	r0,_bp
	inc	r0
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
;	genLeftShift
;	genLeftShiftLiteral
;	genlshTwo
	mov	a,r6
	xch	a,r5
	add	a,acc
	xch	a,r5
	rlc	a
	mov	r6,a
;	genAnd
	anl	ar6,#0x01
;	genPlus
;	Peephole 236.g	used r5 instead of ar5
	mov	a,r5
;	Peephole 236.a	used r2 instead of ar2
	add	a,r2
	mov	r2,a
;	Peephole 236.g	used r6 instead of ar6
	mov	a,r6
;	Peephole 236.b	used r3 instead of ar3
	addc	a,r3
	mov	r3,a
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
;	genCast
	mov	r4,#0x00
	mov	r5,#0x00
;	genRet
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	ljmp	00116$
;	FatDrivers/tff.c:180: case FS_FAT32 :
00109$:
;	FatDrivers/tff.c:181: if (!move_window(fatsect + clust / 128)) break;
;	genRightShift
;	genRightShiftLiteral
	mov	r0,_bp
	inc	r0
;	genrshFour
	mov	ar2,@r0
	inc	r0
	mov	a,@r0
	mov	c,acc.7
	xch	a,r2
	rlc	a
	xch	a,r2
	rlc	a
	xch	a,r2
	anl	a,#0x01
	mov	r3,a
	inc	r0
	mov	a,@r0
	add	a,acc
	orl	a,r3
	mov	r3,a
	mov	ar4,@r0
	inc	r0
	mov	a,@r0
	mov	c,acc.7
	xch	a,r4
	rlc	a
	xch	a,r4
	rlc	a
	xch	a,r4
	anl	a,#0x01
	mov	r5,a
;	genPlus
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
;	Peephole 236.g	used r2 instead of ar2
	mov	a,r2
	add	a,@r0
	mov	r2,a
;	Peephole 236.g	used r3 instead of ar3
	mov	a,r3
	inc	r0
	addc	a,@r0
	mov	r3,a
;	Peephole 236.g	used r4 instead of ar4
	mov	a,r4
	inc	r0
	addc	a,@r0
	mov	r4,a
;	Peephole 236.g	used r5 instead of ar5
	mov	a,r5
	inc	r0
	addc	a,@r0
;	genCall
	mov	r5,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
;	Peephole 191	removed redundant mov
	lcall	_move_window
	mov	a,dpl
;	genIfx
;	genIfxJump
;	Peephole 108.c	removed ljmp by inverse jump logic
	jz	00114$
;	Peephole 300	removed redundant label 00139$
;	FatDrivers/tff.c:182: return LD_DWORD(&fs->win[((WORD)clust * 4) % 512]) & 0x0FFFFFFF;
;	genPlus
	mov	a,_bp
	add	a,#0x0d
	mov	r0,a
;     genPlusIncr
	mov	a,#0x20
	add	a,@r0
	mov	r2,a
;	Peephole 181	changed mov to clr
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
;	genCast
	mov	r0,_bp
	inc	r0
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
;	genLeftShift
;	genLeftShiftLiteral
;	genlshTwo
	mov	a,r6
	xch	a,r5
	add	a,acc
	xch	a,r5
	rlc	a
	xch	a,r5
	add	a,acc
	xch	a,r5
	rlc	a
	mov	r6,a
;	genAnd
	anl	ar6,#0x01
;	genPlus
;	Peephole 236.g	used r5 instead of ar5
	mov	a,r5
;	Peephole 236.a	used r2 instead of ar2
	add	a,r2
	mov	r2,a
;	Peephole 236.g	used r6 instead of ar6
	mov	a,r6
;	Peephole 236.b	used r3 instead of ar3
	addc	a,r3
	mov	r3,a
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
;	genAnd
	anl	ar5,#0x0F
;	genRet
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
;	FatDrivers/tff.c:184: }
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00116$
00114$:
;	FatDrivers/tff.c:187: return 1;	/* There is no cluster information, or an error occured */
;	genRet
;	Peephole 3.a	changed mov to clr
;	Peephole 3.b	changed mov to clr
;	Peephole 182.d	used 16 bit load of dptr
	mov	dptr,#(0x01&0x00ff)
	clr	a
	mov	b,a
00116$:
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'clust2sect'
;------------------------------------------------------------
;clust                     Allocated to stack - offset 1
;fs                        Allocated to stack - offset 5
;sloc0                     Allocated to stack - offset 8
;------------------------------------------------------------
;	FatDrivers/tff.c:340: DWORD clust2sect (	/* !=0: sector number, 0: failed - invalid cluster# */
;	-----------------------------------------
;	 function clust2sect
;	-----------------------------------------
_clust2sect:
	push	_bp
	mov	_bp,sp
;     genReceive
	push	dpl
	push	dph
	push	b
	push	acc
	mov	a,sp
	add	a,#0x0b
	mov	sp,a
;	FatDrivers/tff.c:344: FATFS *fs = FatFs;
;	genAssign
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	@r0,_FatFs
	inc	r0
	mov	@r0,(_FatFs + 1)
	inc	r0
	mov	@r0,(_FatFs + 2)
;	FatDrivers/tff.c:347: clust -= 2;
;	genMinus
	mov	r0,_bp
	inc	r0
;	genMinusDec
	mov	a,@r0
	add	a,#0xfe
	mov	@r0,a
	inc	r0
	mov	a,@r0
	addc	a,#0xff
	mov	@r0,a
	inc	r0
	mov	a,@r0
	addc	a,#0xff
	mov	@r0,a
	inc	r0
	mov	a,@r0
	addc	a,#0xff
	mov	@r0,a
;	FatDrivers/tff.c:348: if (clust >= (fs->max_clust - 2)) return 0;		/* Invalid cluster# */
;	genPlus
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
;     genPlusIncr
	mov	a,#0x18
	add	a,@r0
	mov	r3,a
;	Peephole 181	changed mov to clr
	clr	a
	inc	r0
	addc	a,@r0
	mov	r4,a
	inc	r0
	mov	ar5,@r0
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r2,a
;	genMinus
;	genMinusDec
	mov	a,r3
	add	a,#0xfe
	mov	r3,a
	mov	a,r4
	addc	a,#0xff
	mov	r4,a
	mov	a,r5
	addc	a,#0xff
	mov	r5,a
	mov	a,r2
	addc	a,#0xff
	mov	r2,a
;	genCmpLt
	mov	r0,_bp
	inc	r0
;	genCmp
	clr	c
	mov	a,@r0
	subb	a,r3
	inc	r0
	mov	a,@r0
	subb	a,r4
	inc	r0
	mov	a,@r0
	subb	a,r5
	inc	r0
	mov	a,@r0
	subb	a,r2
;	genIfxJump
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 160.a	removed sjmp by inverse jump logic
	jc	00102$
;	Peephole 300	removed redundant label 00106$
;	genRet
;	Peephole 3.a	changed mov to clr
;	Peephole 3.b	changed mov to clr
;	Peephole 182.d	used 16 bit load of dptr
	mov	dptr,#(0x00&0x00ff)
	clr	a
	mov	b,a
	ljmp	00103$
00102$:
;	FatDrivers/tff.c:349: return (DWORD)clust * fs->sects_clust + fs->database;
;	genPlus
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
;     genPlusIncr
	mov	a,#0x1D
	add	a,@r0
	mov	r2,a
;	Peephole 181	changed mov to clr
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
;	genCast
	mov	r3,#0x00
	mov	r4,#0x00
	mov	r5,#0x00
;	genIpush
	push	ar2
	push	ar3
	push	ar4
	push	ar5
;	genCall
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	r0
	mov	a,@r0
	lcall	__mullong
	push	acc
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	pop	acc
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
	inc	r0
	mov	@r0,b
	inc	r0
	mov	@r0,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	genPlus
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
;     genPlusIncr
	mov	a,#0x10
	add	a,@r0
	mov	r6,a
;	Peephole 181	changed mov to clr
	clr	a
	inc	r0
	addc	a,@r0
	mov	r7,a
	inc	r0
	mov	ar2,@r0
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r6
	mov	dph,r7
	mov	b,r2
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	inc	dptr
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
;	genPlus
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
;	Peephole 236.g	used r6 instead of ar6
	mov	a,r6
	add	a,@r0
	mov	r6,a
;	Peephole 236.g	used r7 instead of ar7
	mov	a,r7
	inc	r0
	addc	a,@r0
	mov	r7,a
;	Peephole 236.g	used r2 instead of ar2
	mov	a,r2
	inc	r0
	addc	a,@r0
	mov	r2,a
;	Peephole 236.g	used r3 instead of ar3
	mov	a,r3
	inc	r0
	addc	a,@r0
;	genRet
	mov	r3,a
	mov	dpl,r6
	mov	dph,r7
	mov	b,r2
;	Peephole 191	removed redundant mov
00103$:
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'next_dir_entry'
;------------------------------------------------------------
;dirobj                    Allocated to stack - offset 1
;clust                     Allocated to stack - offset 4
;idx                       Allocated to stack - offset 8
;fs                        Allocated to stack - offset 10
;sloc0                     Allocated to stack - offset 13
;sloc1                     Allocated to stack - offset 16
;sloc2                     Allocated to stack - offset 19
;sloc3                     Allocated to stack - offset 23
;------------------------------------------------------------
;	FatDrivers/tff.c:360: BOOL next_dir_entry (	/* TRUE: successful, FALSE: could not move next */
;	-----------------------------------------
;	 function next_dir_entry
;	-----------------------------------------
_next_dir_entry:
	push	_bp
	mov	_bp,sp
;     genReceive
	push	dpl
	push	dph
	push	b
	mov	a,sp
	add	a,#0x19
	mov	sp,a
;	FatDrivers/tff.c:366: FATFS *fs = FatFs;
;	genAssign
	mov	a,_bp
	add	a,#0x0a
	mov	r0,a
	mov	@r0,_FatFs
	inc	r0
	mov	@r0,(_FatFs + 1)
	inc	r0
	mov	@r0,(_FatFs + 2)
;	FatDrivers/tff.c:369: idx = dirobj->index + 1;
;	genPlus
	mov	r0,_bp
	inc	r0
	mov	a,_bp
	add	a,#0x17
	mov	r1,a
;     genPlusIncr
	mov	a,#0x02
	add	a,@r0
	mov	@r1,a
;	Peephole 181	changed mov to clr
	clr	a
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
;	genPointerGet
;	genGenPointerGet
	mov	a,_bp
	add	a,#0x17
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
;	genPlus
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
;     genPlusIncr
	mov	a,#0x01
;	Peephole 236.a	used r2 instead of ar2
	add	a,r2
	mov	@r0,a
;	Peephole 181	changed mov to clr
	clr	a
;	Peephole 236.b	used r3 instead of ar3
	addc	a,r3
	inc	r0
	mov	@r0,a
;	FatDrivers/tff.c:370: if ((idx & 15) == 0) {		/* Table sector changed? */
;	genAnd
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	a,@r0
	anl	a,#0x0F
;	Peephole 160.c	removed sjmp by inverse jump logic
	jz	00121$
;	Peephole 300	removed redundant label 00120$
	ljmp	00112$
00121$:
;	FatDrivers/tff.c:371: dirobj->sect++;			/* Next sector */
;	genIpush
;	genPlus
	mov	r0,_bp
	inc	r0
	mov	a,_bp
	add	a,#0x0d
	mov	r1,a
;     genPlusIncr
	mov	a,#0x0F
	add	a,@r0
	mov	@r1,a
;	Peephole 181	changed mov to clr
	clr	a
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
;	genPointerGet
;	genGenPointerGet
	mov	a,_bp
	add	a,#0x0d
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
;	genPlus
;     genPlusIncr
	inc	r4
	cjne	r4,#0x00,00122$
	inc	r5
	cjne	r5,#0x00,00122$
	inc	r6
	cjne	r6,#0x00,00122$
	inc	r7
00122$:
;	genPointerSet
;	genGenPointerSet
	mov	a,_bp
	add	a,#0x0d
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r4
	lcall	__gptrput
	inc	dptr
	mov	a,r5
	lcall	__gptrput
	inc	dptr
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
;	FatDrivers/tff.c:372: if (!dirobj->clust) {		/* In static table */
;	genPlus
	mov	r0,_bp
	inc	r0
	mov	a,_bp
	add	a,#0x10
	mov	r1,a
;     genPlusIncr
	mov	a,#0x0B
	add	a,@r0
	mov	@r1,a
;	Peephole 181	changed mov to clr
	clr	a
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
;	genPointerGet
;	genGenPointerGet
	mov	a,_bp
	add	a,#0x10
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,_bp
	add	a,#0x13
	mov	r1,a
	lcall	__gptrget
	mov	@r1,a
	inc	dptr
	lcall	__gptrget
	inc	r1
	mov	@r1,a
	inc	dptr
	lcall	__gptrget
	inc	r1
	mov	@r1,a
	inc	dptr
	lcall	__gptrget
	inc	r1
	mov	@r1,a
;	genIpop
;	genIfx
	mov	a,_bp
	add	a,#0x13
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	inc	r0
	orl	a,@r0
	inc	r0
	orl	a,@r0
;	genIfxJump
;	Peephole 108.b	removed ljmp by inverse jump logic
	jnz	00109$
;	Peephole 300	removed redundant label 00123$
;	FatDrivers/tff.c:373: if (idx >= fs->n_rootdir) return FALSE;	/* Reached to end of table */
;	genIpush
;	genPlus
	mov	a,_bp
	add	a,#0x0a
	mov	r0,a
;     genPlusIncr
	mov	a,#0x02
	add	a,@r0
	mov	r4,a
;	Peephole 181	changed mov to clr
	clr	a
	inc	r0
	addc	a,@r0
	mov	r5,a
	inc	r0
	mov	ar6,@r0
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
;	genCmpLt
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
;	genCmp
	clr	c
	mov	a,@r0
	subb	a,r4
	inc	r0
	mov	a,@r0
	subb	a,r5
;	genIpop
;	genIfx
;	genIfxJump
;	Peephole 128	jump optimization
	jnc	00124$
	ljmp	00112$
00124$:
;	genRet
	mov	dpl,#0x00
	ljmp	00113$
00109$:
;	FatDrivers/tff.c:375: if (((idx / 16) & (fs->sects_clust - 1)) == 0) {	/* Cluster changed? */
;	genIpush
;	genRightShift
;	genRightShiftLiteral
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
;	genrshTwo
	mov	ar4,@r0
	inc	r0
	mov	a,@r0
	swap	a
	xch	a,r4
	swap	a
	anl	a,#0x0f
	xrl	a,r4
	xch	a,r4
	anl	a,#0x0f
	xch	a,r4
	xrl	a,r4
	xch	a,r4
	mov	r5,a
;	genPlus
	mov	a,_bp
	add	a,#0x0a
	mov	r0,a
;     genPlusIncr
	mov	a,#0x1D
	add	a,@r0
	mov	r6,a
;	Peephole 181	changed mov to clr
	clr	a
	inc	r0
	addc	a,@r0
	mov	r7,a
	inc	r0
	mov	ar2,@r0
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r6
	mov	dph,r7
	mov	b,r2
	lcall	__gptrget
	mov	r6,a
;	genCast
	mov	r2,#0x00
;	genMinus
;	genMinusDec
	dec	r6
	cjne	r6,#0xff,00125$
	dec	r2
00125$:
;	genAnd
	mov	a,r6
	anl	ar4,a
	mov	a,r2
	anl	ar5,a
;	genIfx
	mov	a,r4
	orl	a,r5
;	genIpop
;	genIfxJump
	jz	00126$
	ljmp	00112$
00126$:
;	FatDrivers/tff.c:376: clust = get_cluster(dirobj->clust);			/* Get next cluster */
;	genCall
	mov	a,_bp
	add	a,#0x13
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	r0
	mov	a,@r0
	lcall	_get_cluster
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
;	genAssign
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
;	FatDrivers/tff.c:377: if (clust < 2 || clust >= fs->max_clust)	/* Reached to end of table */
;	genCmpLt
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
;	genCmp
	clr	c
	mov	a,@r0
	subb	a,#0x02
	inc	r0
	mov	a,@r0
	subb	a,#0x00
	inc	r0
	mov	a,@r0
	subb	a,#0x00
	inc	r0
	mov	a,@r0
	subb	a,#0x00
;	genIfxJump
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 160.a	removed sjmp by inverse jump logic
	jc	00103$
;	Peephole 300	removed redundant label 00127$
;	genPlus
	mov	a,_bp
	add	a,#0x0a
	mov	r0,a
;     genPlusIncr
	mov	a,#0x18
	add	a,@r0
	mov	r6,a
;	Peephole 181	changed mov to clr
	clr	a
	inc	r0
	addc	a,@r0
	mov	r7,a
	inc	r0
	mov	ar2,@r0
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r6
	mov	dph,r7
	mov	b,r2
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	inc	dptr
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
;	genCmpLt
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
;	genCmp
	clr	c
	mov	a,@r0
	subb	a,r6
	inc	r0
	mov	a,@r0
	subb	a,r7
	inc	r0
	mov	a,@r0
	subb	a,r2
	inc	r0
	mov	a,@r0
	subb	a,r3
;	genIfxJump
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 160.a	removed sjmp by inverse jump logic
	jc	00104$
;	Peephole 300	removed redundant label 00128$
00103$:
;	FatDrivers/tff.c:378: return FALSE;
;	genRet
	mov	dpl,#0x00
	ljmp	00113$
00104$:
;	FatDrivers/tff.c:379: dirobj->clust = clust;				/* Initialize for new cluster */
;	genPointerSet
;	genGenPointerSet
	mov	a,_bp
	add	a,#0x10
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,_bp
	add	a,#0x04
	mov	r1,a
	mov	a,@r1
	lcall	__gptrput
	inc	dptr
	inc	r1
	mov	a,@r1
	lcall	__gptrput
	inc	dptr
	inc	r1
	mov	a,@r1
	lcall	__gptrput
	inc	dptr
	inc	r1
	mov	a,@r1
	lcall	__gptrput
;	FatDrivers/tff.c:380: dirobj->sect = clust2sect(clust);
;	genCall
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	r0
	mov	a,@r0
	lcall	_clust2sect
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
;	genPointerSet
;	genGenPointerSet
	mov	a,_bp
	add	a,#0x0d
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
	inc	dptr
	mov	a,r5
	lcall	__gptrput
00112$:
;	FatDrivers/tff.c:384: dirobj->index = idx;	/* Lower 4 bit of dirobj->index indicates offset in dirobj->sect */
;	genPointerSet
;	genGenPointerSet
	mov	a,_bp
	add	a,#0x17
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,_bp
	add	a,#0x08
	mov	r1,a
	mov	a,@r1
	lcall	__gptrput
	inc	dptr
	inc	r1
	mov	a,@r1
	lcall	__gptrput
;	FatDrivers/tff.c:385: return TRUE;
;	genRet
	mov	dpl,#0x01
00113$:
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'get_fileinfo'
;------------------------------------------------------------
;dir                       Allocated to stack - offset -5
;finfo                     Allocated to stack - offset 1
;n                         Allocated to stack - offset 4
;c                         Allocated to stack - offset 5
;a                         Allocated to registers r5 
;p                         Allocated to stack - offset 6
;sloc0                     Allocated to stack - offset 9
;------------------------------------------------------------
;	FatDrivers/tff.c:397: void get_fileinfo (		/* No return code */
;	-----------------------------------------
;	 function get_fileinfo
;	-----------------------------------------
_get_fileinfo:
	push	_bp
	mov	_bp,sp
;     genReceive
	push	dpl
	push	dph
	push	b
	mov	a,sp
	add	a,#0x0b
	mov	sp,a
;	FatDrivers/tff.c:406: p = &finfo->fname[0];
;	genPlus
	mov	r0,_bp
	inc	r0
;     genPlusIncr
	mov	a,#0x09
	add	a,@r0
	mov	r5,a
;	Peephole 181	changed mov to clr
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
;	genCast
	mov	a,_bp
	add	a,#0x06
	mov	r0,a
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	FatDrivers/tff.c:407: a = _USE_NTFLAG ? dir[DIR_NTres] : 0;	/* NT flag */
;	genPlus
	mov	a,_bp
	add	a,#0xfffffffb
	mov	r0,a
;     genPlusIncr
	mov	a,#0x0C
	add	a,@r0
	mov	r5,a
;	Peephole 181	changed mov to clr
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
;	genAssign
;	FatDrivers/tff.c:408: for (n = 0; n < 8; n++) {	/* Convert file name (body) */
;	genAnd
	mov	a,#0x08
	anl	a,r5
	mov	r6,a
;	genAssign
	mov	a,_bp
	add	a,#0x06
	mov	r0,a
	mov	a,_bp
	add	a,#0x09
	mov	r1,a
	mov	a,@r0
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
;	genAssign
	mov	r3,#0x00
00109$:
;	genCmpLt
;	genCmp
	cjne	r3,#0x08,00143$
00143$:
;	genIfxJump
	jc	00144$
	ljmp	00141$
00144$:
;	FatDrivers/tff.c:409: c = dir[n];
;	genIpush
	push	ar5
;	genPlus
	mov	a,_bp
	add	a,#0xfffffffb
	mov	r0,a
;	Peephole 236.g	used r3 instead of ar3
	mov	a,r3
	add	a,@r0
	mov	r5,a
;	Peephole 181	changed mov to clr
	clr	a
	inc	r0
	addc	a,@r0
	mov	r7,a
	inc	r0
	mov	ar2,@r0
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r5
	mov	dph,r7
	mov	b,r2
	lcall	__gptrget
	mov	r5,a
;	genAssign
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	@r0,ar5
;	FatDrivers/tff.c:410: if (c == ' ') break;
;	genCmpEq
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
;	gencjne
;	gencjneshort
;	Peephole 241.h	optimized compare
	clr	a
	cjne	@r0,#0x20,00145$
	inc	a
00145$:
;	Peephole 300	removed redundant label 00146$
;	genIpop
	pop	ar5
;	genIfx
;	genIfxJump
;	Peephole 108.b	removed ljmp by inverse jump logic
	jnz	00141$
;	Peephole 300	removed redundant label 00147$
;	FatDrivers/tff.c:411: if (c == 0x05) c = 0xE5;
;	genCmpEq
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
;	gencjneshort
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 198.b	optimized misc jump sequence
	cjne	@r0,#0x05,00104$
;	Peephole 200.b	removed redundant sjmp
;	Peephole 300	removed redundant label 00148$
;	Peephole 300	removed redundant label 00149$
;	genAssign
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	@r0,#0xE5
00104$:
;	FatDrivers/tff.c:412: if (a & 0x08 && c >= 'A' && c <= 'Z') c += 0x20;
;	genIfx
	mov	a,r6
;	genIfxJump
;	Peephole 108.c	removed ljmp by inverse jump logic
	jz	00106$
;	Peephole 300	removed redundant label 00150$
;	genCmpLt
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
;	genCmp
	cjne	@r0,#0x41,00151$
00151$:
;	genIfxJump
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 160.a	removed sjmp by inverse jump logic
	jc	00106$
;	Peephole 300	removed redundant label 00152$
;	genCmpGt
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
;	genCmp
;	genIfxJump
;	Peephole 132.b	optimized genCmpGt by inverse logic (acc differs)
	mov	a,@r0
	add	a,#0xff - 0x5A
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 160.a	removed sjmp by inverse jump logic
	jc	00106$
;	Peephole 300	removed redundant label 00153$
;	genPlus
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
;     genPlusIncr
	mov	a,#0x20
	add	a,@r0
	mov	@r0,a
00106$:
;	FatDrivers/tff.c:413: *p++ = c;
;	genPointerSet
;	genGenPointerSet
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,_bp
	add	a,#0x05
	mov	r1,a
	mov	a,@r1
	lcall	__gptrput
	inc	dptr
	dec	r0
	dec	r0
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
;	FatDrivers/tff.c:408: for (n = 0; n < 8; n++) {	/* Convert file name (body) */
;	genPlus
;     genPlusIncr
	inc	r3
	ljmp	00109$
00141$:
;	genAssign
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	a,_bp
	add	a,#0x06
	mov	r1,a
	mov	a,@r0
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
;	FatDrivers/tff.c:415: if (dir[8] != ' ') {		/* Convert file name (extension) */
;	genPlus
	mov	a,_bp
	add	a,#0xfffffffb
	mov	r0,a
;     genPlusIncr
	mov	a,#0x08
	add	a,@r0
	mov	r2,a
;	Peephole 181	changed mov to clr
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
;	genCmpEq
;	gencjneshort
	cjne	r2,#0x20,00154$
	ljmp	00124$
00154$:
;	FatDrivers/tff.c:416: *p++ = '.';
;	genPointerSet
;	genGenPointerSet
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,#0x2E
	lcall	__gptrput
;	genPlus
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	a,_bp
	add	a,#0x06
	mov	r1,a
;     genPlusIncr
	mov	a,#0x01
	add	a,@r0
	mov	@r1,a
;	Peephole 181	changed mov to clr
	clr	a
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
;	FatDrivers/tff.c:417: for (n = 8; n < 11; n++) {
;	genAnd
	mov	a,#0x10
	anl	a,r5
	mov	r2,a
;	genAssign
	mov	a,_bp
	add	a,#0x06
	mov	r0,a
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
;	genAssign
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	@r0,#0x08
00119$:
;	genCmpLt
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
;	genCmp
	cjne	@r0,#0x0B,00155$
00155$:
;	genIfxJump
	jc	00156$
	ljmp	00142$
00156$:
;	FatDrivers/tff.c:418: c = dir[n];
;	genIpush
	push	ar2
;	genPlus
	mov	a,_bp
	add	a,#0xfffffffb
	mov	r0,a
	mov	a,_bp
	add	a,#0x04
	mov	r1,a
	mov	a,@r1
	add	a,@r0
	mov	r7,a
;	Peephole 181	changed mov to clr
	clr	a
	inc	r0
	addc	a,@r0
	mov	r2,a
	inc	r0
	mov	ar6,@r0
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r7
	mov	dph,r2
	mov	b,r6
	lcall	__gptrget
	mov	r7,a
;	genAssign
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	@r0,ar7
;	FatDrivers/tff.c:419: if (c == ' ') break;
;	genCmpEq
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
;	gencjne
;	gencjneshort
;	Peephole 241.h	optimized compare
	clr	a
	cjne	@r0,#0x20,00157$
	inc	a
00157$:
;	Peephole 300	removed redundant label 00158$
;	genIpop
	pop	ar2
;	genIfx
;	genIfxJump
;	Peephole 108.b	removed ljmp by inverse jump logic
	jnz	00142$
;	Peephole 300	removed redundant label 00159$
;	FatDrivers/tff.c:420: if (a & 0x10 && c >= 'A' && c <= 'Z') c += 0x20;
;	genIfx
	mov	a,r2
;	genIfxJump
;	Peephole 108.c	removed ljmp by inverse jump logic
	jz	00116$
;	Peephole 300	removed redundant label 00160$
;	genCmpLt
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
;	genCmp
	cjne	@r0,#0x41,00161$
00161$:
;	genIfxJump
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 160.a	removed sjmp by inverse jump logic
	jc	00116$
;	Peephole 300	removed redundant label 00162$
;	genCmpGt
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
;	genCmp
;	genIfxJump
;	Peephole 132.b	optimized genCmpGt by inverse logic (acc differs)
	mov	a,@r0
	add	a,#0xff - 0x5A
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 160.a	removed sjmp by inverse jump logic
	jc	00116$
;	Peephole 300	removed redundant label 00163$
;	genPlus
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
;     genPlusIncr
	mov	a,#0x20
	add	a,@r0
	mov	@r0,a
00116$:
;	FatDrivers/tff.c:421: *p++ = c;
;	genPointerSet
;	genGenPointerSet
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	mov	r3,dpl
	mov	r4,dph
;	FatDrivers/tff.c:417: for (n = 8; n < 11; n++) {
;	genPlus
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
;     genPlusIncr
	inc	@r0
	ljmp	00119$
00142$:
;	genAssign
	mov	a,_bp
	add	a,#0x06
	mov	r0,a
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
00124$:
;	FatDrivers/tff.c:424: *p = '\0';
;	genPointerSet
;	genGenPointerSet
	mov	a,_bp
	add	a,#0x06
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
;	Peephole 181	changed mov to clr
	clr	a
	lcall	__gptrput
;	FatDrivers/tff.c:426: finfo->fattrib = dir[DIR_Attr];			/* Attribute */
;	genPlus
	mov	r0,_bp
	inc	r0
;     genPlusIncr
	mov	a,#0x08
	add	a,@r0
	mov	r2,a
;	Peephole 181	changed mov to clr
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
;	genPlus
	mov	a,_bp
	add	a,#0xfffffffb
	mov	r0,a
;     genPlusIncr
	mov	a,#0x0B
	add	a,@r0
	mov	r5,a
;	Peephole 181	changed mov to clr
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
;	genPointerSet
;	genGenPointerSet
	mov	r5,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
;	Peephole 191	removed redundant mov
	lcall	__gptrput
;	FatDrivers/tff.c:427: finfo->fsize = LD_DWORD(&dir[DIR_FileSize]);	/* Size */
;	genPlus
	mov	a,_bp
	add	a,#0xfffffffb
	mov	r0,a
;     genPlusIncr
	mov	a,#0x1C
	add	a,@r0
	mov	r2,a
;	Peephole 181	changed mov to clr
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
;	genPointerSet
;	genGenPointerSet
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
	inc	dptr
	mov	a,r5
	lcall	__gptrput
;	FatDrivers/tff.c:428: finfo->fdate = LD_WORD(&dir[DIR_WrtDate]);	/* Date */
;	genPlus
	mov	r0,_bp
	inc	r0
;     genPlusIncr
	mov	a,#0x04
	add	a,@r0
	mov	r2,a
;	Peephole 181	changed mov to clr
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
;	genPlus
	mov	a,_bp
	add	a,#0xfffffffb
	mov	r0,a
;     genPlusIncr
	mov	a,#0x18
	add	a,@r0
	mov	r5,a
;	Peephole 181	changed mov to clr
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
;	genPointerSet
;	genGenPointerSet
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	__gptrput
	inc	dptr
	mov	a,r6
	lcall	__gptrput
;	FatDrivers/tff.c:429: finfo->ftime = LD_WORD(&dir[DIR_WrtTime]);	/* Time */
;	genPlus
	mov	r0,_bp
	inc	r0
;     genPlusIncr
	mov	a,#0x06
	add	a,@r0
	mov	r2,a
;	Peephole 181	changed mov to clr
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
;	genPlus
	mov	a,_bp
	add	a,#0xfffffffb
	mov	r0,a
;     genPlusIncr
	mov	a,#0x16
	add	a,@r0
	mov	r5,a
;	Peephole 181	changed mov to clr
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
;	genPointerSet
;	genGenPointerSet
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	__gptrput
	inc	dptr
	mov	a,r6
	lcall	__gptrput
;	Peephole 300	removed redundant label 00125$
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'make_dirfile'
;------------------------------------------------------------
;dirname                   Allocated to stack - offset -5
;path                      Allocated to stack - offset 1
;n                         Allocated to stack - offset 4
;t                         Allocated to registers r6 
;c                         Allocated to registers r7 
;a                         Allocated to stack - offset 5
;b                         Allocated to stack - offset 6
;------------------------------------------------------------
;	FatDrivers/tff.c:441: char make_dirfile (			/* 1: error - detected an invalid format, '\0'or'/': next character */
;	-----------------------------------------
;	 function make_dirfile
;	-----------------------------------------
_make_dirfile:
	push	_bp
	mov	_bp,sp
;     genReceive
	push	dpl
	push	dph
	push	b
	inc	sp
	inc	sp
	inc	sp
;	FatDrivers/tff.c:449: memset(dirname, ' ', 8+3);	/* Fill buffer with spaces */
;	genAssign
	mov	a,_bp
	add	a,#0xfffffffb
	mov	r0,a
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
;	genIpush
	mov	a,#0x0B
	push	acc
;	Peephole 181	changed mov to clr
	clr	a
	push	acc
;	genIpush
	mov	a,#0x20
	push	acc
;	genCall
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_memset
	dec	sp
	dec	sp
	dec	sp
;	FatDrivers/tff.c:450: a = 0; b = 0x18;	/* NT flag */
;	genAssign
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	@r0,#0x00
;	genAssign
	mov	a,_bp
	add	a,#0x06
	mov	r0,a
	mov	@r0,#0x18
;	FatDrivers/tff.c:451: n = 0; t = 8;
;	genAssign
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	@r0,#0x00
;	genAssign
	mov	r6,#0x08
00155$:
;	FatDrivers/tff.c:453: c = *(*path)++;
;	genIpush
	push	ar6
;	genPointerGet
;	genGenPointerGet
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
;	genPlus
;     genPlusIncr
	mov	a,#0x01
;	Peephole 236.a	used r6 instead of ar6
	add	a,r6
	mov	r2,a
;	Peephole 181	changed mov to clr
	clr	a
;	Peephole 236.b	used r7 instead of ar7
	addc	a,r7
	mov	r3,a
	mov	ar4,r5
;	genPointerSet
;	genGenPointerSet
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r6
	mov	dph,r7
	mov	b,r5
	lcall	__gptrget
	mov	r6,a
;	genAssign
	mov	ar7,r6
;	FatDrivers/tff.c:454: if (c == '\0' || c == '/') {		/* Reached to end of str or directory separator */
;	genIpop
	pop	ar6
;	genIfx
	mov	a,r7
;	genIfxJump
;	Peephole 108.c	removed ljmp by inverse jump logic
	jz	00103$
;	Peephole 300	removed redundant label 00191$
;	genCmpEq
;	gencjneshort
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 198.b	optimized misc jump sequence
	cjne	r7,#0x2F,00104$
;	Peephole 200.b	removed redundant sjmp
;	Peephole 300	removed redundant label 00192$
;	Peephole 300	removed redundant label 00193$
00103$:
;	FatDrivers/tff.c:455: if (n == 0) break;
;	genIfx
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,@r0
;	genIfxJump
	jnz	00194$
	ljmp	00156$
00194$:
;	FatDrivers/tff.c:456: dirname[11] = _USE_NTFLAG ? (a & b) : 0;
;	genPlus
	mov	a,_bp
	add	a,#0xfffffffb
	mov	r0,a
;     genPlusIncr
	mov	a,#0x0B
	add	a,@r0
	mov	r2,a
;	Peephole 181	changed mov to clr
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
;	genAnd
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	a,_bp
	add	a,#0x06
	mov	r1,a
	mov	a,@r1
	anl	a,@r0
;	genPointerSet
;	genGenPointerSet
	mov	r5,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
;	Peephole 191	removed redundant mov
	lcall	__gptrput
;	FatDrivers/tff.c:457: return c;
;	genRet
	mov	dpl,r7
	ljmp	00157$
00104$:
;	FatDrivers/tff.c:459: if (c <= ' ' || c == 0x7F) break;		/* Reject invisible chars */
;	genCmpGt
;	genCmp
;	genIfxJump
;	Peephole 132.c	optimized genCmpGt by inverse logic (acc differs)
	mov	a,r7
	add	a,#0xff - 0x20
	jc	00195$
	ljmp	00156$
00195$:
;	genCmpEq
;	gencjneshort
	cjne	r7,#0x7F,00196$
	ljmp	00156$
00196$:
;	FatDrivers/tff.c:460: if (c == '.') {
;	genCmpEq
;	gencjneshort
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 198.b	optimized misc jump sequence
	cjne	r7,#0x2E,00123$
;	Peephole 200.b	removed redundant sjmp
;	Peephole 300	removed redundant label 00197$
;	Peephole 300	removed redundant label 00198$
;	FatDrivers/tff.c:461: if (!(a & 1) && n >= 1 && n <= 8) {	/* Enter extension part */
;	genAnd
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	a,@r0
;	genIfxJump
	jnb	acc.0,00199$
	ljmp	00156$
00199$:
;	genCmpLt
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
;	genCmp
	cjne	@r0,#0x01,00200$
00200$:
;	genIfxJump
	jnc	00201$
	ljmp	00156$
00201$:
;	genCmpGt
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
;	genCmp
;	genIfxJump
;	Peephole 132.b	optimized genCmpGt by inverse logic (acc differs)
	mov	a,@r0
	add	a,#0xff - 0x08
	jnc	00202$
	ljmp	00156$
00202$:
;	FatDrivers/tff.c:462: n = 8; t = 11; continue;
;	genAssign
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	@r0,#0x08
;	genAssign
	mov	r6,#0x0B
	ljmp	00155$
;	FatDrivers/tff.c:466: if (_USE_SJIS &&
00123$:
;	FatDrivers/tff.c:467: ((c >= 0x81 && c <= 0x9F) ||		/* Accept S-JIS code */
;	genCmpLt
;	genCmp
	cjne	r7,#0x81,00203$
00203$:
;	genIfxJump
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 160.a	removed sjmp by inverse jump logic
	jc	00122$
;	Peephole 300	removed redundant label 00204$
;	genCmpGt
;	genCmp
;	genIfxJump
;	Peephole 108.a	removed ljmp by inverse jump logic
;	Peephole 132.b	optimized genCmpGt by inverse logic (acc differs)
	mov	a,r7
	add	a,#0xff - 0x9F
	jnc	00118$
;	Peephole 300	removed redundant label 00205$
00122$:
;	FatDrivers/tff.c:468: (c >= 0xE0 && c <= 0xFC))) {
;	genCmpLt
;	genCmp
	cjne	r7,#0xE0,00206$
00206$:
;	genIfxJump
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 160.a	removed sjmp by inverse jump logic
	jc	00119$
;	Peephole 300	removed redundant label 00207$
;	genCmpGt
;	genCmp
;	genIfxJump
;	Peephole 132.b	optimized genCmpGt by inverse logic (acc differs)
	mov	a,r7
	add	a,#0xff - 0xFC
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 160.a	removed sjmp by inverse jump logic
	jc	00119$
;	Peephole 300	removed redundant label 00208$
00118$:
;	FatDrivers/tff.c:469: if (n == 0 && c == 0xE5)		/* Change heading \xE5 to \x05 */
;	genIfx
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,@r0
;	genIfxJump
;	Peephole 108.b	removed ljmp by inverse jump logic
	jnz	00116$
;	Peephole 300	removed redundant label 00209$
;	genCmpEq
;	gencjneshort
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 198.b	optimized misc jump sequence
	cjne	r7,#0xE5,00116$
;	Peephole 200.b	removed redundant sjmp
;	Peephole 300	removed redundant label 00210$
;	Peephole 300	removed redundant label 00211$
;	FatDrivers/tff.c:470: c = 0x05;
;	genAssign
	mov	r7,#0x05
00116$:
;	FatDrivers/tff.c:471: a ^= 1; goto md_l2;
;	genXor
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	a,@r0
	xrl	a,#0x01
	mov	@r0,a
	ljmp	00151$
00119$:
;	FatDrivers/tff.c:473: if (c == '"') break;				/* Reject " */
;	genCmpEq
;	gencjneshort
	cjne	r7,#0x22,00212$
	ljmp	00156$
00212$:
;	FatDrivers/tff.c:474: if (c <= ')') goto md_l1;			/* Accept ! # $ % & ' ( ) */
;	genCmpGt
;	genCmp
;	genIfxJump
;	Peephole 132.c	optimized genCmpGt by inverse logic (acc differs)
	mov	a,r7
	add	a,#0xff - 0x29
	jc	00213$
	ljmp	00150$
00213$:
;	FatDrivers/tff.c:475: if (c <= ',') break;				/* Reject * + , */
;	genCmpGt
;	genCmp
;	genIfxJump
;	Peephole 132.c	optimized genCmpGt by inverse logic (acc differs)
	mov	a,r7
	add	a,#0xff - 0x2C
	jc	00214$
	ljmp	00156$
00214$:
;	FatDrivers/tff.c:476: if (c <= '9') goto md_l1;			/* Accept - 0-9 */
;	genCmpGt
;	genCmp
;	genIfxJump
;	Peephole 132.c	optimized genCmpGt by inverse logic (acc differs)
	mov	a,r7
	add	a,#0xff - 0x39
	jc	00215$
	ljmp	00150$
00215$:
;	FatDrivers/tff.c:477: if (c <= '?') break;				/* Reject : ; < = > ? */
;	genCmpGt
;	genCmp
;	genIfxJump
;	Peephole 132.c	optimized genCmpGt by inverse logic (acc differs)
	mov	a,r7
	add	a,#0xff - 0x3F
	jc	00216$
	ljmp	00156$
00216$:
;	FatDrivers/tff.c:478: if (!(a & 1)) {	/* These checks are not applied to S-JIS 2nd byte */
;	genAnd
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	a,@r0
;	genIfxJump
;	Peephole 108.e	removed ljmp by inverse jump logic
	jb	acc.0,00150$
;	Peephole 300	removed redundant label 00217$
;	FatDrivers/tff.c:479: if (c == '|') break;			/* Reject | */
;	genCmpEq
;	gencjneshort
	cjne	r7,#0x7C,00218$
	ljmp	00156$
00218$:
;	FatDrivers/tff.c:480: if (c >= '[' && c <= ']') break;/* Reject [ \ ] */
;	genCmpLt
;	genCmp
	cjne	r7,#0x5B,00219$
00219$:
;	genIfxJump
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 160.a	removed sjmp by inverse jump logic
	jc	00141$
;	Peephole 300	removed redundant label 00220$
;	genCmpGt
;	genCmp
;	genIfxJump
;	Peephole 132.c	optimized genCmpGt by inverse logic (acc differs)
	mov	a,r7
	add	a,#0xff - 0x5D
	jc	00221$
	ljmp	00156$
00221$:
;	FatDrivers/tff.c:481: if (_USE_NTFLAG && c >= 'A' && c <= 'Z')
00141$:
;	genCmpLt
;	genCmp
	cjne	r7,#0x41,00222$
00222$:
;	genIfxJump
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 160.a	removed sjmp by inverse jump logic
	jc	00140$
;	Peephole 300	removed redundant label 00223$
;	genCmpGt
;	genCmp
;	genIfxJump
;	Peephole 132.b	optimized genCmpGt by inverse logic (acc differs)
	mov	a,r7
	add	a,#0xff - 0x5A
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 160.a	removed sjmp by inverse jump logic
	jc	00140$
;	Peephole 300	removed redundant label 00224$
;	FatDrivers/tff.c:482: (t == 8) ? (b &= ~0x08) : (b &= ~0x10);
;	genCmpEq
;	gencjneshort
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 198.b	optimized misc jump sequence
	cjne	r6,#0x08,00159$
;	Peephole 200.b	removed redundant sjmp
;	Peephole 300	removed redundant label 00225$
;	Peephole 300	removed redundant label 00226$
;	genAnd
	mov	a,_bp
	add	a,#0x06
	mov	r0,a
	mov	a,@r0
	anl	a,#0xF7
	mov	@r0,a
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00140$
00159$:
;	genAnd
	mov	a,_bp
	add	a,#0x06
	mov	r0,a
	mov	a,@r0
	anl	a,#0xEF
	mov	@r0,a
00140$:
;	FatDrivers/tff.c:483: if (c >= 'a' && c <= 'z') {		/* Convert to upper case */
;	genCmpLt
;	genCmp
	cjne	r7,#0x61,00227$
00227$:
;	genIfxJump
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 160.a	removed sjmp by inverse jump logic
	jc	00150$
;	Peephole 300	removed redundant label 00228$
;	genCmpGt
;	genCmp
;	genIfxJump
;	Peephole 132.b	optimized genCmpGt by inverse logic (acc differs)
	mov	a,r7
	add	a,#0xff - 0x7A
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 160.a	removed sjmp by inverse jump logic
	jc	00150$
;	Peephole 300	removed redundant label 00229$
;	FatDrivers/tff.c:484: c -= 0x20;
;	genMinus
	mov	a,r7
	add	a,#0xe0
	mov	r7,a
;	FatDrivers/tff.c:485: if (_USE_NTFLAG) (t == 8) ? (a |= 0x08) : (a |= 0x10);
;	genCmpEq
;	gencjneshort
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 198.b	optimized misc jump sequence
	cjne	r6,#0x08,00161$
;	Peephole 200.b	removed redundant sjmp
;	Peephole 300	removed redundant label 00230$
;	Peephole 300	removed redundant label 00231$
;	genOr
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	a,@r0
	orl	a,#0x08
	mov	@r0,a
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00150$
00161$:
;	genOr
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	a,@r0
	orl	a,#0x10
	mov	@r0,a
;	FatDrivers/tff.c:488: md_l1:
00150$:
;	FatDrivers/tff.c:489: a &= ~1;
;	genAnd
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	a,@r0
	anl	a,#0xFE
	mov	@r0,a
;	FatDrivers/tff.c:490: md_l2:
00151$:
;	FatDrivers/tff.c:491: if (n >= t) break;
;	genCmpLt
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
;	genCmp
	clr	c
	mov	a,@r0
	subb	a,r6
;	genIfxJump
;	Peephole 108.a	removed ljmp by inverse jump logic
	jnc	00156$
;	Peephole 300	removed redundant label 00232$
;	FatDrivers/tff.c:492: dirname[n++] = c;
;	genAssign
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	ar2,@r0
;	genPlus
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
;     genPlusIncr
	inc	@r0
;	genPlus
	mov	a,_bp
	add	a,#0xfffffffb
	mov	r0,a
;	Peephole 236.g	used r2 instead of ar2
	mov	a,r2
	add	a,@r0
	mov	r2,a
;	Peephole 181	changed mov to clr
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
;	genPointerSet
;	genGenPointerSet
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r7
	lcall	__gptrput
	ljmp	00155$
00156$:
;	FatDrivers/tff.c:494: return 1;
;	genRet
	mov	dpl,#0x01
00157$:
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'trace_path'
;------------------------------------------------------------
;fn                        Allocated to stack - offset -5
;path                      Allocated to stack - offset -8
;dir                       Allocated to stack - offset -11
;dirobj                    Allocated to stack - offset 1
;clust                     Allocated to stack - offset 4
;ds                        Allocated to registers r2 
;dptr                      Allocated to stack - offset 8
;fs                        Allocated to stack - offset 11
;sloc0                     Allocated to stack - offset 14
;sloc1                     Allocated to stack - offset 17
;sloc2                     Allocated to stack - offset 20
;------------------------------------------------------------
;	FatDrivers/tff.c:504: FRESULT trace_path (	/* FR_OK(0): successful, !=0: error code */
;	-----------------------------------------
;	 function trace_path
;	-----------------------------------------
_trace_path:
	push	_bp
	mov	_bp,sp
;     genReceive
	push	dpl
	push	dph
	push	b
	mov	a,sp
	add	a,#0x17
	mov	sp,a
;	FatDrivers/tff.c:514: FATFS *fs = FatFs;
;	genAssign
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	mov	@r0,_FatFs
	inc	r0
	mov	@r0,(_FatFs + 1)
	inc	r0
	mov	@r0,(_FatFs + 2)
;	FatDrivers/tff.c:517: clust = fs->dirbase;
;	genPlus
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
;     genPlusIncr
	mov	a,#0x0C
	add	a,@r0
	mov	r5,a
;	Peephole 181	changed mov to clr
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
;	genAssign
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
;	FatDrivers/tff.c:519: if (fs->fs_type == FS_FAT32) {
;	genPlus
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
;     genPlusIncr
	mov	a,#0x1C
	add	a,@r0
	mov	r5,a
;	Peephole 181	changed mov to clr
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
;	genCmpEq
;	gencjneshort
	cjne	r5,#0x03,00148$
	sjmp	00149$
00148$:
	ljmp	00102$
00149$:
;	FatDrivers/tff.c:520: dirobj->clust = dirobj->sclust = clust;
;	genPlus
	mov	r0,_bp
	inc	r0
;     genPlusIncr
	mov	a,#0x0B
	add	a,@r0
	mov	r5,a
;	Peephole 181	changed mov to clr
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
;	genPlus
	mov	r0,_bp
	inc	r0
;     genPlusIncr
	mov	a,#0x07
	add	a,@r0
	mov	r2,a
;	Peephole 181	changed mov to clr
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
;	genPointerSet
;	genGenPointerSet
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
;	genPointerSet
;	genGenPointerSet
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
;	FatDrivers/tff.c:521: dirobj->sect = clust2sect(clust);
;	genPlus
	mov	r0,_bp
	inc	r0
	mov	a,_bp
	add	a,#0x0e
	mov	r1,a
;     genPlusIncr
	mov	a,#0x0F
	add	a,@r0
	mov	@r1,a
;	Peephole 181	changed mov to clr
	clr	a
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
;	genCall
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	r0
	mov	a,@r0
	lcall	_clust2sect
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	mov	r2,a
;	genPointerSet
;	genGenPointerSet
	mov	a,_bp
	add	a,#0x0e
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r5
	lcall	__gptrput
	inc	dptr
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
	inc	dptr
	mov	a,r2
	lcall	__gptrput
	ljmp	00103$
00102$:
;	FatDrivers/tff.c:525: dirobj->clust = dirobj->sclust = 0;
;	genPlus
	mov	r0,_bp
	inc	r0
;     genPlusIncr
	mov	a,#0x0B
	add	a,@r0
	mov	r2,a
;	Peephole 181	changed mov to clr
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
;	genPlus
	mov	r0,_bp
	inc	r0
;     genPlusIncr
	mov	a,#0x07
	add	a,@r0
	mov	r5,a
;	Peephole 181	changed mov to clr
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
;	genPointerSet
;	genGenPointerSet
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
;	Peephole 181	changed mov to clr
	clr	a
	lcall	__gptrput
	inc	dptr
;	Peephole 181	changed mov to clr
	clr	a
	lcall	__gptrput
	inc	dptr
;	Peephole 181	changed mov to clr
	clr	a
	lcall	__gptrput
	inc	dptr
;	Peephole 181	changed mov to clr
	clr	a
	lcall	__gptrput
;	genPointerSet
;	genGenPointerSet
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
;	Peephole 181	changed mov to clr
	clr	a
	lcall	__gptrput
	inc	dptr
;	Peephole 181	changed mov to clr
	clr	a
	lcall	__gptrput
	inc	dptr
;	Peephole 181	changed mov to clr
	clr	a
	lcall	__gptrput
	inc	dptr
;	Peephole 181	changed mov to clr
	clr	a
	lcall	__gptrput
;	FatDrivers/tff.c:526: dirobj->sect = clust;
;	genPlus
	mov	r0,_bp
	inc	r0
;     genPlusIncr
	mov	a,#0x0F
	add	a,@r0
	mov	r2,a
;	Peephole 181	changed mov to clr
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
;	genPointerSet
;	genGenPointerSet
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
00103$:
;	FatDrivers/tff.c:528: dirobj->index = 0;
;	genPlus
	mov	r0,_bp
	inc	r0
;     genPlusIncr
	mov	a,#0x02
	add	a,@r0
	mov	r2,a
;	Peephole 181	changed mov to clr
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
;	genPointerSet
;	genGenPointerSet
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
;	Peephole 181	changed mov to clr
	clr	a
	lcall	__gptrput
	inc	dptr
;	Peephole 181	changed mov to clr
	clr	a
	lcall	__gptrput
;	FatDrivers/tff.c:529: dirobj->fs = fs;
;	genPlus
	mov	r0,_bp
	inc	r0
;     genPlusIncr
	mov	a,#0x04
	add	a,@r0
	mov	r2,a
;	Peephole 181	changed mov to clr
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
;	genPointerSet
;	genGenPointerSet
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
;	FatDrivers/tff.c:531: if (*path == '\0') {							/* Null path means the root directory */
;	genAssign
	mov	a,_bp
	add	a,#0xfffffff8
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
;	genIfxJump
;	Peephole 108.b	removed ljmp by inverse jump logic
	jnz	00126$
;	Peephole 300	removed redundant label 00150$
;	FatDrivers/tff.c:532: *dir = NULL; return FR_OK;
;	genAssign
	mov	a,_bp
	add	a,#0xfffffff5
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
;	genPointerSet
;	genGenPointerSet
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
;	Peephole 181	changed mov to clr
	clr	a
	lcall	__gptrput
	inc	dptr
;	Peephole 181	changed mov to clr
	clr	a
	lcall	__gptrput
	inc	dptr
;	Peephole 181	changed mov to clr
	clr	a
	lcall	__gptrput
;	genRet
	mov	dpl,#0x00
	ljmp	00128$
00126$:
;	FatDrivers/tff.c:536: ds = make_dirfile(&path, fn);					/* Get a paragraph into fn[] */
;	genAddrOf
	mov	a,_bp
	add	a,#0xf8
	mov	r2,a
;	genCast
	mov	r3,#0x00
	mov	r4,#0x40
;	genIpush
	mov	a,_bp
	add	a,#0xfffffffb
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
;	genCall
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_make_dirfile
	mov	r2,dpl
	dec	sp
	dec	sp
	dec	sp
;	genAssign
;	FatDrivers/tff.c:537: if (ds == 1) return FR_INVALID_NAME;
;	genCmpEq
;	gencjneshort
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 198.b	optimized misc jump sequence
	cjne	r2,#0x01,00142$
;	Peephole 200.b	removed redundant sjmp
;	Peephole 300	removed redundant label 00151$
;	Peephole 300	removed redundant label 00152$
;	genRet
	mov	dpl,#0x04
	ljmp	00128$
00142$:
;	genPlus
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
;     genPlusIncr
	mov	a,#0x20
	add	a,@r0
	mov	r3,a
;	Peephole 181	changed mov to clr
	clr	a
	inc	r0
	addc	a,@r0
	mov	r4,a
	inc	r0
	mov	ar5,@r0
;	genPlus
	mov	r0,_bp
	inc	r0
	mov	a,_bp
	add	a,#0x0e
	mov	r1,a
;     genPlusIncr
	mov	a,#0x0F
	add	a,@r0
	mov	@r1,a
;	Peephole 181	changed mov to clr
	clr	a
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
00119$:
;	FatDrivers/tff.c:539: if (!move_window(dirobj->sect)) return FR_RW_ERROR;
;	genIpush
	push	ar3
	push	ar4
	push	ar5
;	genPointerGet
;	genGenPointerGet
	mov	a,_bp
	add	a,#0x0e
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
;	genCall
	mov	r4,a
	mov	dpl,r6
	mov	dph,r7
	mov	b,r3
;	Peephole 191	removed redundant mov
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	lcall	_move_window
	mov	a,dpl
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
;	genIpop
	pop	ar5
	pop	ar4
	pop	ar3
;	genIfx
;	genIfxJump
;	Peephole 108.b	removed ljmp by inverse jump logic
	jnz	00109$
;	Peephole 300	removed redundant label 00153$
;	genRet
	mov	dpl,#0x08
	ljmp	00128$
00109$:
;	FatDrivers/tff.c:540: dptr = &fs->win[(dirobj->index & 15) * 32];		/* Pointer to the directory entry */
;	genIpush
	push	ar2
;	genPlus
	mov	r0,_bp
	inc	r0
	mov	a,_bp
	add	a,#0x11
	mov	r1,a
;     genPlusIncr
	mov	a,#0x02
	add	a,@r0
	mov	@r1,a
;	Peephole 181	changed mov to clr
	clr	a
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
;	genPointerGet
;	genGenPointerGet
	mov	a,_bp
	add	a,#0x11
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
;	genAnd
	anl	ar6,#0x0F
;	genLeftShift
;	genLeftShiftLiteral
;	genlshTwo
;	peephole 177.g	optimized mov sequence
;	Peephole 181	changed mov to clr
	clr	a
	mov	r7,a
	swap	a
	rl	a
	anl	a,#0xe0
	xch	a,r6
	swap	a
	rl	a
	xch	a,r6
	xrl	a,r6
	xch	a,r6
	anl	a,#0xe0
	xch	a,r6
	xrl	a,r6
	mov	r7,a
;	genPlus
;	Peephole 236.g	used r6 instead of ar6
	mov	a,r6
;	Peephole 236.a	used r3 instead of ar3
	add	a,r3
	mov	r6,a
;	Peephole 236.g	used r7 instead of ar7
	mov	a,r7
;	Peephole 236.b	used r4 instead of ar4
	addc	a,r4
	mov	r7,a
	mov	ar2,r5
;	genAssign
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
	inc	r0
	mov	@r0,ar2
;	FatDrivers/tff.c:541: if (dptr[DIR_Name] == 0)						/* Has it reached to end of dir? */
;	genPointerGet
;	genGenPointerGet
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
;	genIpop
	pop	ar2
;	genIfx
;	genIfxJump
;	Peephole 108.b	removed ljmp by inverse jump logic
	jnz	00111$
;	Peephole 300	removed redundant label 00154$
;	FatDrivers/tff.c:542: return !ds ? FR_NO_FILE : FR_NO_PATH;
;	genNot
	mov	a,r2
	cjne	a,#0x01,00155$
00155$:
	clr	a
	rlc	a
;	genIfx
	mov	r6,a
;	Peephole 105	removed redundant mov
;	genIfxJump
;	Peephole 108.c	removed ljmp by inverse jump logic
	jz	00130$
;	Peephole 300	removed redundant label 00156$
;	genAssign
	mov	r6,#0x02
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00131$
00130$:
;	genAssign
	mov	r6,#0x03
00131$:
;	genRet
	mov	dpl,r6
	ljmp	00128$
00111$:
;	FatDrivers/tff.c:543: if (dptr[DIR_Name] != 0xE5						/* Matched? */
;	genPointerGet
;	genGenPointerGet
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r6,a
;	genCmpEq
;	gencjneshort
	cjne	r6,#0xE5,00157$
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00113$
00157$:
;	FatDrivers/tff.c:544: && !(dptr[DIR_Attr] & AM_VOL)
;	genIpush
	push	ar3
	push	ar4
	push	ar5
;	genPlus
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
;     genPlusIncr
	mov	a,#0x0B
	add	a,@r0
	mov	r6,a
;	Peephole 181	changed mov to clr
	clr	a
	inc	r0
	addc	a,@r0
	mov	r7,a
	inc	r0
	mov	ar3,@r0
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r6
	mov	dph,r7
	mov	b,r3
	lcall	__gptrget
;	genAnd
	mov	r6,a
;	Peephole 105	removed redundant mov
	anl	a,#0x08
;	genIpop
	pop	ar5
	pop	ar4
	pop	ar3
;	genIfx
;	genIfxJump
;	Peephole 108.b	removed ljmp by inverse jump logic
	jnz	00113$
;	Peephole 300	removed redundant label 00158$
;	FatDrivers/tff.c:545: && !memcmp(&dptr[DIR_Name], fn, 8+3) ) break;
;	genIpush
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	mov	a,#0x0B
	push	acc
;	Peephole 181	changed mov to clr
	clr	a
	push	acc
;	genIpush
	mov	a,_bp
	add	a,#0xfffffffb
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
;	genCall
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_memcmp
	mov	r6,dpl
	mov	r7,dph
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
;	genIfx
	mov	a,r6
	orl	a,r7
;	genIfxJump
;	Peephole 108.c	removed ljmp by inverse jump logic
	jz	00120$
;	Peephole 300	removed redundant label 00159$
00113$:
;	FatDrivers/tff.c:546: if (!next_dir_entry(dirobj))					/* Next directory pointer */
;	genCall
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	lcall	_next_dir_entry
	mov	a,dpl
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
;	genIfx
;	genIfxJump
	jz	00160$
	ljmp	00119$
00160$:
;	FatDrivers/tff.c:547: return !ds ? FR_NO_FILE : FR_NO_PATH;
;	genNot
	mov	a,r2
	cjne	a,#0x01,00161$
00161$:
	clr	a
	rlc	a
;	genIfx
	mov	r3,a
;	Peephole 105	removed redundant mov
;	genIfxJump
;	Peephole 108.c	removed ljmp by inverse jump logic
	jz	00132$
;	Peephole 300	removed redundant label 00162$
;	genAssign
	mov	r3,#0x02
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00133$
00132$:
;	genAssign
	mov	r3,#0x03
00133$:
;	genRet
	mov	dpl,r3
	ljmp	00128$
00120$:
;	FatDrivers/tff.c:549: if (!ds) { *dir = dptr; return FR_OK; }				/* Matched with end of path */
;	genIfx
	mov	a,r2
;	genIfxJump
;	Peephole 108.b	removed ljmp by inverse jump logic
	jnz	00122$
;	Peephole 300	removed redundant label 00163$
;	genAssign
	mov	a,_bp
	add	a,#0xfffffff5
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
;	genPointerSet
;	genGenPointerSet
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
;	genRet
	mov	dpl,#0x00
	ljmp	00128$
00122$:
;	FatDrivers/tff.c:550: if (!(dptr[DIR_Attr] & AM_DIR)) return FR_NO_PATH;	/* Cannot trace because it is a file */
;	genPlus
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
;     genPlusIncr
	mov	a,#0x0B
	add	a,@r0
	mov	r2,a
;	Peephole 181	changed mov to clr
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
;	genAnd
	mov	r2,a
;	Peephole 105	removed redundant mov
;	genIfxJump
;	Peephole 108.e	removed ljmp by inverse jump logic
	jb	acc.4,00124$
;	Peephole 300	removed redundant label 00164$
;	genRet
	mov	dpl,#0x03
	ljmp	00128$
00124$:
;	FatDrivers/tff.c:553: ((DWORD)LD_WORD(&dptr[DIR_FstClusHI]) << 16) |
;	genPlus
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
;     genPlusIncr
	mov	a,#0x14
	add	a,@r0
	mov	r2,a
;	Peephole 181	changed mov to clr
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
;	genCast
;	genLeftShift
;	genLeftShiftLiteral
;	Peephole 3.c	changed mov to clr
	clr	a
	mov	r4,a
	mov	r5,a
	mov	a,_bp
	add	a,#0x14
;	genlshFour
;	Peephole 185	changed order of increment (acc incremented also!)
	inc	a
;	Peephole 185	changed order of increment (acc incremented also!)
	inc	a
;	Peephole 185	changed order of increment (acc incremented also!)
	inc	a
	mov	r0,a
	mov	@r0,ar3
	dec	r0
	mov	@r0,ar2
	dec	r0
	mov	@r0,#0x00
	dec	r0
	mov	@r0,#0x00
;	FatDrivers/tff.c:555: LD_WORD(&dptr[DIR_FstClusLO]);
;	genPlus
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
;     genPlusIncr
	mov	a,#0x1A
	add	a,@r0
	mov	r6,a
;	Peephole 181	changed mov to clr
	clr	a
	inc	r0
	addc	a,@r0
	mov	r7,a
	inc	r0
	mov	ar2,@r0
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r6
	mov	dph,r7
	mov	b,r2
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
;	genCast
;	genOr
;	Peephole 3.c	changed mov to clr
	clr	a
	mov	r2,a
	mov	r3,a
	mov	a,_bp
	add	a,#0x14
	mov	r0,a
	mov	a,@r0
	orl	ar6,a
	inc	r0
	mov	a,@r0
	orl	ar7,a
	inc	r0
	mov	a,@r0
	orl	ar2,a
	inc	r0
	mov	a,@r0
	orl	ar3,a
;	genAssign
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
	inc	r0
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
;	FatDrivers/tff.c:556: dirobj->clust = dirobj->sclust = clust;				/* Restart scannig with the new directory */
;	genPlus
	mov	r0,_bp
	inc	r0
;     genPlusIncr
	mov	a,#0x0B
	add	a,@r0
	mov	r2,a
;	Peephole 181	changed mov to clr
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
;	genPlus
	mov	r0,_bp
	inc	r0
;     genPlusIncr
	mov	a,#0x07
	add	a,@r0
	mov	r5,a
;	Peephole 181	changed mov to clr
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
;	genPointerSet
;	genGenPointerSet
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
;	genPointerSet
;	genGenPointerSet
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
;	FatDrivers/tff.c:557: dirobj->sect = clust2sect(clust);
;	genCall
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	r0
	mov	a,@r0
	lcall	_clust2sect
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
;	genPointerSet
;	genGenPointerSet
	mov	a,_bp
	add	a,#0x0e
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
	inc	dptr
	mov	a,r5
	lcall	__gptrput
;	FatDrivers/tff.c:558: dirobj->index = 2;
;	genPointerSet
;	genGenPointerSet
	mov	a,_bp
	add	a,#0x11
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,#0x02
	lcall	__gptrput
	inc	dptr
;	Peephole 181	changed mov to clr
	clr	a
	lcall	__gptrput
	ljmp	00126$
00128$:
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'check_fs'
;------------------------------------------------------------
;sect                      Allocated to stack - offset 1
;fs                        Allocated to registers r6 r7 r2 
;------------------------------------------------------------
;	FatDrivers/tff.c:626: BYTE check_fs (		/* 0:The FAT boot record, 1:Valid boot record but not an FAT, 2:Not a boot record or error */
;	-----------------------------------------
;	 function check_fs
;	-----------------------------------------
_check_fs:
	push	_bp
	mov	_bp,sp
;     genReceive
	push	dpl
	push	dph
	push	b
	push	acc
;	FatDrivers/tff.c:630: FATFS *fs = FatFs;
;	genAssign
	mov	r6,_FatFs
	mov	r7,(_FatFs + 1)
	mov	r2,(_FatFs + 2)
;	FatDrivers/tff.c:632: if (disk_read(0, fs->win, sect, 1) != RES_OK)	/* Load boot record */
;	genPlus
;     genPlusIncr
	mov	a,#0x20
;	Peephole 236.a	used r6 instead of ar6
	add	a,r6
	mov	r3,a
;	Peephole 181	changed mov to clr
	clr	a
;	Peephole 236.b	used r7 instead of ar7
	addc	a,r7
	mov	r4,a
	mov	ar5,r2
;	genIpush
	push	ar2
	push	ar6
	push	ar7
	mov	a,#0x01
	push	acc
;	genIpush
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
;	genIpush
	push	ar3
	push	ar4
	push	ar5
;	genCall
	mov	dpl,#0x00
	lcall	_disk_read
	mov	r3,dpl
	mov	a,sp
	add	a,#0xf8
	mov	sp,a
	pop	ar7
	pop	ar6
	pop	ar2
;	genCmpEq
;	gencjneshort
	cjne	r3,#0x00,00117$
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00102$
00117$:
;	FatDrivers/tff.c:633: return 2;
;	genRet
	mov	dpl,#0x02
	ljmp	00110$
00102$:
;	FatDrivers/tff.c:634: if (LD_WORD(&fs->win[BS_55AA]) != 0xAA55)		/* Check record signature */
;	genPlus
;     genPlusIncr
	mov	a,#0x20
;	Peephole 236.a	used r6 instead of ar6
	add	a,r6
	mov	r3,a
;	Peephole 181	changed mov to clr
	clr	a
;	Peephole 236.b	used r7 instead of ar7
	addc	a,r7
	mov	r4,a
	mov	ar5,r2
;	genPlus
;     genPlusIncr
	mov	a,#0xFE
;	Peephole 236.a	used r3 instead of ar3
	add	a,r3
	mov	r3,a
	mov	a,#0x01
;	Peephole 236.b	used r4 instead of ar4
	addc	a,r4
	mov	r4,a
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
;	genCmpEq
;	gencjneshort
	cjne	r3,#0x55,00118$
	cjne	r4,#0xAA,00118$
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00104$
00118$:
;	FatDrivers/tff.c:635: return 2;
;	genRet
	mov	dpl,#0x02
	ljmp	00110$
00104$:
;	FatDrivers/tff.c:637: if (!memcmp(&fs->win[BS_FilSysType], "FAT", 3))	/* Check FAT signature */
;	genPlus
;     genPlusIncr
	mov	a,#0x20
;	Peephole 236.a	used r6 instead of ar6
	add	a,r6
	mov	r3,a
;	Peephole 181	changed mov to clr
	clr	a
;	Peephole 236.b	used r7 instead of ar7
	addc	a,r7
	mov	r4,a
	mov	ar5,r2
;	genPlus
;     genPlusIncr
	mov	a,#0x36
;	Peephole 236.a	used r3 instead of ar3
	add	a,r3
	mov	r3,a
;	Peephole 181	changed mov to clr
	clr	a
;	Peephole 236.b	used r4 instead of ar4
	addc	a,r4
	mov	r4,a
;	genIpush
	push	ar2
	push	ar6
	push	ar7
	mov	a,#0x03
	push	acc
;	Peephole 181	changed mov to clr
	clr	a
	push	acc
;	genIpush
	mov	a,#__str_0
	push	acc
	mov	a,#(__str_0 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
;	genCall
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	_memcmp
	mov	r3,dpl
	mov	r4,dph
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar7
	pop	ar6
	pop	ar2
;	genIfx
	mov	a,r3
	orl	a,r4
;	genIfxJump
;	Peephole 108.b	removed ljmp by inverse jump logic
;	FatDrivers/tff.c:638: return 0;
;	genRet
	jnz	00106$
;	Peephole 300	removed redundant label 00119$
;	Peephole 256.c	loading dpl with zero from a
	mov	dpl,a
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00110$
00106$:
;	FatDrivers/tff.c:640: if (!memcmp(&fs->win[BS_FilSysType32], "FAT32", 5) && !(fs->win[BPB_ExtFlags] & 0x80))
;	genPlus
;     genPlusIncr
	mov	a,#0x20
;	Peephole 236.a	used r6 instead of ar6
	add	a,r6
	mov	r3,a
;	Peephole 181	changed mov to clr
	clr	a
;	Peephole 236.b	used r7 instead of ar7
	addc	a,r7
	mov	r4,a
	mov	ar5,r2
;	genPlus
;     genPlusIncr
	mov	a,#0x52
;	Peephole 236.a	used r3 instead of ar3
	add	a,r3
	mov	r3,a
;	Peephole 181	changed mov to clr
	clr	a
;	Peephole 236.b	used r4 instead of ar4
	addc	a,r4
	mov	r4,a
;	genIpush
	push	ar2
	push	ar6
	push	ar7
	mov	a,#0x05
	push	acc
;	Peephole 181	changed mov to clr
	clr	a
	push	acc
;	genIpush
	mov	a,#__str_1
	push	acc
	mov	a,#(__str_1 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
;	genCall
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	_memcmp
	mov	r3,dpl
	mov	r4,dph
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar7
	pop	ar6
	pop	ar2
;	genIfx
	mov	a,r3
	orl	a,r4
;	genIfxJump
;	Peephole 108.b	removed ljmp by inverse jump logic
	jnz	00108$
;	Peephole 300	removed redundant label 00120$
;	genPlus
;     genPlusIncr
	mov	a,#0x20
;	Peephole 236.a	used r6 instead of ar6
	add	a,r6
	mov	r6,a
;	Peephole 181	changed mov to clr
	clr	a
;	Peephole 236.b	used r7 instead of ar7
	addc	a,r7
	mov	r7,a
;	genPlus
;     genPlusIncr
	mov	a,#0x28
;	Peephole 236.a	used r6 instead of ar6
	add	a,r6
	mov	r6,a
;	Peephole 181	changed mov to clr
	clr	a
;	Peephole 236.b	used r7 instead of ar7
	addc	a,r7
	mov	r7,a
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r6
	mov	dph,r7
	mov	b,r2
	lcall	__gptrget
;	genAnd
	mov	r6,a
;	Peephole 105	removed redundant mov
;	genIfxJump
;	Peephole 108.e	removed ljmp by inverse jump logic
	jb	acc.7,00108$
;	Peephole 300	removed redundant label 00121$
;	FatDrivers/tff.c:641: return 0;
;	genRet
	mov	dpl,#0x00
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00110$
00108$:
;	FatDrivers/tff.c:643: return 1;
;	genRet
	mov	dpl,#0x01
00110$:
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'auto_mount'
;------------------------------------------------------------
;chk_wp                    Allocated to stack - offset -3
;path                      Allocated to stack - offset 1
;fmt                       Allocated to stack - offset 4
;stat                      Allocated to registers r2 
;bootsect                  Allocated to stack - offset 5
;fatsize                   Allocated to stack - offset 9
;totalsect                 Allocated to stack - offset 13
;maxclust                  Allocated to stack - offset 17
;p                         Allocated to registers r5 r6 r7 
;fs                        Allocated to stack - offset 21
;sloc0                     Allocated to stack - offset 24
;sloc1                     Allocated to stack - offset 25
;sloc2                     Allocated to stack - offset 28
;sloc3                     Allocated to stack - offset 32
;sloc4                     Allocated to stack - offset 35
;sloc5                     Allocated to stack - offset 38
;sloc6                     Allocated to stack - offset 42
;------------------------------------------------------------
;	FatDrivers/tff.c:654: FRESULT auto_mount (		/* FR_OK(0): successful, !=0: any error occured */
;	-----------------------------------------
;	 function auto_mount
;	-----------------------------------------
_auto_mount:
	push	_bp
	mov	_bp,sp
;     genReceive
	push	dpl
	push	dph
	push	b
	mov	a,sp
	add	a,#0x2d
	mov	sp,a
;	FatDrivers/tff.c:662: const char *p = *path;
;	genPointerGet
;	genGenPointerGet
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
;	genAssign
;	FatDrivers/tff.c:663: FATFS *fs = FatFs;
;	genAssign
	mov	a,_bp
	add	a,#0x15
	mov	r0,a
	mov	@r0,_FatFs
	inc	r0
	mov	@r0,(_FatFs + 1)
	inc	r0
	mov	@r0,(_FatFs + 2)
;	FatDrivers/tff.c:667: while (*p == ' ') p++;	/* Strip leading spaces */
;	genAssign
	mov	ar2,r5
	mov	ar3,r6
	mov	ar4,r7
00101$:
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,_bp
	add	a,#0x18
	mov	r0,a
	lcall	__gptrget
	mov	@r0,a
;	genCmpEq
	mov	a,_bp
	add	a,#0x18
	mov	r0,a
;	gencjneshort
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 198.b	optimized misc jump sequence
	cjne	@r0,#0x20,00149$
;	Peephole 200.b	removed redundant sjmp
;	Peephole 300	removed redundant label 00150$
;	Peephole 300	removed redundant label 00151$
;	genPlus
;     genPlusIncr
;	tail increment optimized (range 4)
	inc	r2
	cjne	r2,#0x00,00101$
	inc	r3
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00101$
00149$:
;	genAssign
	mov	ar5,r2
	mov	ar6,r3
	mov	ar7,r4
;	FatDrivers/tff.c:668: if (*p == '/') p++;		/* Strip heading slash */
;	genCmpEq
	mov	a,_bp
	add	a,#0x18
	mov	r0,a
;	gencjneshort
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 198.b	optimized misc jump sequence
	cjne	@r0,#0x2F,00105$
;	Peephole 200.b	removed redundant sjmp
;	Peephole 300	removed redundant label 00152$
;	Peephole 300	removed redundant label 00153$
;	genPlus
;     genPlusIncr
	mov	a,#0x01
;	Peephole 236.a	used r2 instead of ar2
	add	a,r2
	mov	r5,a
;	Peephole 181	changed mov to clr
	clr	a
;	Peephole 236.b	used r3 instead of ar3
	addc	a,r3
	mov	r6,a
	mov	ar7,r4
00105$:
;	FatDrivers/tff.c:669: *path = p;				/* Return pointer to the path name */
;	genPointerSet
;	genGenPointerSet
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r5
	lcall	__gptrput
	inc	dptr
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
;	FatDrivers/tff.c:672: if (!fs) return FR_NOT_ENABLED;
;	genIfx
	mov	a,_bp
	add	a,#0x15
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	inc	r0
	orl	a,@r0
;	genIfxJump
;	Peephole 108.b	removed ljmp by inverse jump logic
	jnz	00107$
;	Peephole 300	removed redundant label 00154$
;	genRet
	mov	dpl,#0x0A
	ljmp	00132$
00107$:
;	FatDrivers/tff.c:675: if (fs->fs_type) {
;	genPlus
	mov	a,_bp
	add	a,#0x15
	mov	r0,a
;     genPlusIncr
	mov	a,#0x1C
	add	a,@r0
	mov	r2,a
;	Peephole 181	changed mov to clr
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
;	genIfxJump
;	Peephole 108.c	removed ljmp by inverse jump logic
	jz	00111$
;	Peephole 300	removed redundant label 00155$
;	FatDrivers/tff.c:676: stat = disk_status(0);
;	genCall
	mov	dpl,#0x00
	lcall	_disk_status
;	genAssign
;	FatDrivers/tff.c:677: if (!(stat & STA_NOINIT)) {				/* If the physical drive is kept initialized */
;	genAnd
;	peephole 177.g	optimized mov sequence
	mov	a,dpl
	mov	r2,a
;	genIfxJump
;	Peephole 108.e	removed ljmp by inverse jump logic
	jb	acc.0,00111$
;	Peephole 300	removed redundant label 00156$
;	FatDrivers/tff.c:682: return FR_OK;						/* The file system object is valid */
;	genRet
	mov	dpl,#0x00
	ljmp	00132$
00111$:
;	FatDrivers/tff.c:688: memset(fs, 0, sizeof(FATFS));		/* Clean-up the file system object */
;	genIpush
	mov	a,#0x20
	push	acc
	mov	a,#0x02
	push	acc
;	genIpush
;	Peephole 181	changed mov to clr
	clr	a
	push	acc
;	genCall
	mov	a,_bp
	add	a,#0x15
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_memset
	dec	sp
	dec	sp
	dec	sp
;	FatDrivers/tff.c:689: stat = disk_initialize(0);			/* Initialize low level disk I/O layer */
;	genCall
	mov	dpl,#0x00
	lcall	_disk_initialize
	mov	r3,dpl
;	genAssign
	mov	ar2,r3
;	FatDrivers/tff.c:690: if (stat & STA_NOINIT)				/* Check if the drive is ready */
;	genAnd
	mov	a,r2
;	genIfxJump
;	Peephole 108.d	removed ljmp by inverse jump logic
	jnb	acc.0,00113$
;	Peephole 300	removed redundant label 00157$
;	FatDrivers/tff.c:691: return FR_NOT_READY;
;	genRet
	mov	dpl,#0x01
	ljmp	00132$
00113$:
;	FatDrivers/tff.c:698: fmt = check_fs(bootsect = 0);		/* Check sector 0 as an SFD format */
;	genAssign
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,a
;	genCall
	mov	dpl,#0x00
	lcall	_check_fs
	mov	r2,dpl
;	genAssign
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	@r0,ar2
;	FatDrivers/tff.c:699: if (fmt == 1) {						/* Not a FAT boot record, it may be patitioned */
;	genCmpEq
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
;	gencjneshort
	cjne	@r0,#0x01,00158$
	sjmp	00159$
00158$:
	ljmp	00117$
00159$:
;	FatDrivers/tff.c:701: if (fs->win[MBR_Table+4]) {					/* Is the 1st partition existing? */
;	genIpush
;	genPlus
	mov	a,_bp
	add	a,#0x15
	mov	r0,a
;     genPlusIncr
	mov	a,#0x20
	add	a,@r0
	mov	r3,a
;	Peephole 181	changed mov to clr
	clr	a
	inc	r0
	addc	a,@r0
	mov	r4,a
	inc	r0
	mov	ar2,@r0
;	genPlus
;     genPlusIncr
	mov	a,#0xC2
;	Peephole 236.a	used r3 instead of ar3
	add	a,r3
	mov	r3,a
	mov	a,#0x01
;	Peephole 236.b	used r4 instead of ar4
	addc	a,r4
	mov	r4,a
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r3
	mov	dph,r4
	mov	b,r2
	lcall	__gptrget
;	genIpop
;	genIfx
;	genIfxJump
;	Peephole 108.c	removed ljmp by inverse jump logic
	jz	00117$
;	Peephole 300	removed redundant label 00160$
;	FatDrivers/tff.c:702: bootsect = LD_DWORD(&fs->win[MBR_Table+8]);	/* Partition offset in LBA */
;	genPlus
	mov	a,_bp
	add	a,#0x15
	mov	r0,a
;     genPlusIncr
	mov	a,#0x20
	add	a,@r0
	mov	r3,a
;	Peephole 181	changed mov to clr
	clr	a
	inc	r0
	addc	a,@r0
	mov	r4,a
	inc	r0
	mov	ar5,@r0
;	genPlus
;     genPlusIncr
	mov	a,#0xC6
;	Peephole 236.a	used r3 instead of ar3
	add	a,r3
	mov	r3,a
	mov	a,#0x01
;	Peephole 236.b	used r4 instead of ar4
	addc	a,r4
	mov	r4,a
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
;	genAssign
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
;	FatDrivers/tff.c:703: fmt = check_fs(bootsect);				/* Check the partition */
;	genCall
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	r0
	mov	a,@r0
	lcall	_check_fs
	mov	r3,dpl
;	genAssign
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	@r0,ar3
00117$:
;	FatDrivers/tff.c:706: if (fmt || LD_WORD(&fs->win[BPB_BytsPerSec]) != 512)	/* No valid FAT patition is found */
;	genIfx
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,@r0
;	genIfxJump
;	Peephole 108.b	removed ljmp by inverse jump logic
	jnz	00118$
;	Peephole 300	removed redundant label 00161$
;	genPlus
	mov	a,_bp
	add	a,#0x15
	mov	r0,a
;     genPlusIncr
	mov	a,#0x20
	add	a,@r0
	mov	r3,a
;	Peephole 181	changed mov to clr
	clr	a
	inc	r0
	addc	a,@r0
	mov	r4,a
	inc	r0
	mov	ar5,@r0
;	genPlus
;     genPlusIncr
	mov	a,#0x0B
;	Peephole 236.a	used r3 instead of ar3
	add	a,r3
	mov	r3,a
;	Peephole 181	changed mov to clr
	clr	a
;	Peephole 236.b	used r4 instead of ar4
	addc	a,r4
	mov	r4,a
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
;	genCmpEq
;	gencjneshort
	cjne	r3,#0x00,00162$
	cjne	r4,#0x02,00162$
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00119$
00162$:
00118$:
;	FatDrivers/tff.c:707: return FR_NO_FILESYSTEM;
;	genRet
	mov	dpl,#0x0B
	ljmp	00132$
00119$:
;	FatDrivers/tff.c:710: fatsize = LD_WORD(&fs->win[BPB_FATSz16]);			/* Number of sectors per FAT */
;	genPlus
	mov	a,_bp
	add	a,#0x15
	mov	r0,a
;     genPlusIncr
	mov	a,#0x20
	add	a,@r0
	mov	r3,a
;	Peephole 181	changed mov to clr
	clr	a
	inc	r0
	addc	a,@r0
	mov	r4,a
	inc	r0
	mov	ar5,@r0
;	genPlus
;     genPlusIncr
	mov	a,#0x16
;	Peephole 236.a	used r3 instead of ar3
	add	a,r3
	mov	r3,a
;	Peephole 181	changed mov to clr
	clr	a
;	Peephole 236.b	used r4 instead of ar4
	addc	a,r4
	mov	r4,a
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
;	genCast
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
	inc	r0
	mov	@r0,#0x00
	inc	r0
	mov	@r0,#0x00
;	FatDrivers/tff.c:711: if (!fatsize) fatsize = LD_DWORD(&fs->win[BPB_FATSz32]);
;	genIfx
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	inc	r0
	orl	a,@r0
	inc	r0
	orl	a,@r0
;	genIfxJump
;	Peephole 108.b	removed ljmp by inverse jump logic
	jnz	00122$
;	Peephole 300	removed redundant label 00163$
;	genPlus
	mov	a,_bp
	add	a,#0x15
	mov	r0,a
;     genPlusIncr
	mov	a,#0x20
	add	a,@r0
	mov	r2,a
;	Peephole 181	changed mov to clr
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
;	genPlus
;     genPlusIncr
	mov	a,#0x24
;	Peephole 236.a	used r2 instead of ar2
	add	a,r2
	mov	r2,a
;	Peephole 181	changed mov to clr
	clr	a
;	Peephole 236.b	used r3 instead of ar3
	addc	a,r3
	mov	r3,a
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
;	genAssign
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
00122$:
;	FatDrivers/tff.c:712: fs->sects_fat = (CLUST)fatsize;
;	genPlus
	mov	a,_bp
	add	a,#0x15
	mov	r0,a
;     genPlusIncr
	mov	a,#0x14
	add	a,@r0
	mov	r7,a
;	Peephole 181	changed mov to clr
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
;	genPointerSet
;	genGenPointerSet
	mov	dpl,r7
	mov	dph,r3
	mov	b,r4
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
;	FatDrivers/tff.c:713: fs->n_fats = fs->win[BPB_NumFATs];					/* Number of FAT copies */
;	genPlus
	mov	a,_bp
	add	a,#0x15
	mov	r0,a
;     genPlusIncr
	mov	a,#0x1E
	add	a,@r0
	mov	r2,a
;	Peephole 181	changed mov to clr
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
;	genPlus
	mov	a,_bp
	add	a,#0x15
	mov	r0,a
	mov	a,_bp
	add	a,#0x19
	mov	r1,a
;     genPlusIncr
	mov	a,#0x20
	add	a,@r0
	mov	@r1,a
;	Peephole 181	changed mov to clr
	clr	a
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
;	genPlus
	mov	a,_bp
	add	a,#0x19
	mov	r0,a
;     genPlusIncr
	mov	a,#0x10
	add	a,@r0
	mov	r4,a
;	Peephole 181	changed mov to clr
	clr	a
	inc	r0
	addc	a,@r0
	mov	r5,a
	inc	r0
	mov	ar3,@r0
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r4
	mov	dph,r5
	mov	b,r3
	lcall	__gptrget
;	genPointerSet
;	genGenPointerSet
	mov	r4,a
	mov	dpl,r2
	mov	dph,r6
	mov	b,r7
;	Peephole 191	removed redundant mov
	lcall	__gptrput
;	FatDrivers/tff.c:714: fatsize *= fs->n_fats;								/* (Number of sectors in FAT area) */
;	genCast
	mov	r3,#0x00
	mov	r5,#0x00
	mov	r6,#0x00
;	genIpush
	push	ar4
	push	ar3
	push	ar5
	push	ar6
;	genCall
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	r0
	mov	a,@r0
	lcall	__mullong
	mov	r3,dpl
	mov	r4,dph
	mov	r5,b
	mov	r6,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	genAssign
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
;	FatDrivers/tff.c:715: fs->fatbase = bootsect + LD_WORD(&fs->win[BPB_RsvdSecCnt]);	/* FAT start sector (lba) */
;	genPlus
	mov	a,_bp
	add	a,#0x15
	mov	r0,a
	mov	a,_bp
	add	a,#0x1c
	mov	r1,a
;     genPlusIncr
	mov	a,#0x08
	add	a,@r0
	mov	@r1,a
;	Peephole 181	changed mov to clr
	clr	a
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
;	genPlus
	mov	a,_bp
	add	a,#0x19
	mov	r0,a
;     genPlusIncr
	mov	a,#0x0E
	add	a,@r0
	mov	r6,a
;	Peephole 181	changed mov to clr
	clr	a
	inc	r0
	addc	a,@r0
	mov	r7,a
	inc	r0
	mov	ar3,@r0
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r6
	mov	dph,r7
	mov	b,r3
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
;	genCast
;	genPlus
;	Peephole 3.c	changed mov to clr
	clr	a
	mov	r3,a
	mov	r4,a
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
;	Peephole 236.g	used r6 instead of ar6
	mov	a,r6
	add	a,@r0
	mov	r6,a
;	Peephole 236.g	used r7 instead of ar7
	mov	a,r7
	inc	r0
	addc	a,@r0
	mov	r7,a
;	Peephole 236.g	used r3 instead of ar3
	mov	a,r3
	inc	r0
	addc	a,@r0
	mov	r3,a
;	Peephole 236.g	used r4 instead of ar4
	mov	a,r4
	inc	r0
	addc	a,@r0
	mov	r4,a
;	genPointerSet
;	genGenPointerSet
	mov	a,_bp
	add	a,#0x1c
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
;	FatDrivers/tff.c:716: fs->sects_clust = fs->win[BPB_SecPerClus];			/* Number of sectors per cluster */
;	genPlus
	mov	a,_bp
	add	a,#0x15
	mov	r0,a
	mov	a,_bp
	add	a,#0x20
	mov	r1,a
;     genPlusIncr
	mov	a,#0x1D
	add	a,@r0
	mov	@r1,a
;	Peephole 181	changed mov to clr
	clr	a
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
;	genPlus
	mov	a,_bp
	add	a,#0x19
	mov	r0,a
;     genPlusIncr
	mov	a,#0x0D
	add	a,@r0
	mov	r6,a
;	Peephole 181	changed mov to clr
	clr	a
	inc	r0
	addc	a,@r0
	mov	r7,a
	inc	r0
	mov	ar3,@r0
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r6
	mov	dph,r7
	mov	b,r3
	lcall	__gptrget
	mov	r6,a
;	genPointerSet
;	genGenPointerSet
	mov	a,_bp
	add	a,#0x20
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r6
	lcall	__gptrput
;	FatDrivers/tff.c:717: fs->n_rootdir = LD_WORD(&fs->win[BPB_RootEntCnt]);	/* Nmuber of root directory entries */
;	genPlus
	mov	a,_bp
	add	a,#0x15
	mov	r0,a
	mov	a,_bp
	add	a,#0x23
	mov	r1,a
;     genPlusIncr
	mov	a,#0x02
	add	a,@r0
	mov	@r1,a
;	Peephole 181	changed mov to clr
	clr	a
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
;	genPlus
	mov	a,_bp
	add	a,#0x19
	mov	r0,a
;     genPlusIncr
	mov	a,#0x11
	add	a,@r0
	mov	r6,a
;	Peephole 181	changed mov to clr
	clr	a
	inc	r0
	addc	a,@r0
	mov	r7,a
	inc	r0
	mov	ar3,@r0
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r6
	mov	dph,r7
	mov	b,r3
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
;	genPointerSet
;	genGenPointerSet
	mov	a,_bp
	add	a,#0x23
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
;	FatDrivers/tff.c:718: totalsect = LD_WORD(&fs->win[BPB_TotSec16]);		/* Number of sectors on the file system */
;	genPlus
	mov	a,_bp
	add	a,#0x19
	mov	r0,a
;     genPlusIncr
	mov	a,#0x13
	add	a,@r0
	mov	r3,a
;	Peephole 181	changed mov to clr
	clr	a
	inc	r0
	addc	a,@r0
	mov	r4,a
	inc	r0
	mov	ar5,@r0
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
;	genCast
	mov	a,_bp
	add	a,#0x0d
	mov	r0,a
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
	inc	r0
	mov	@r0,#0x00
	inc	r0
	mov	@r0,#0x00
;	FatDrivers/tff.c:719: if (!totalsect) totalsect = LD_DWORD(&fs->win[BPB_TotSec32]);
;	genIfx
	mov	a,_bp
	add	a,#0x0d
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	inc	r0
	orl	a,@r0
	inc	r0
	orl	a,@r0
;	genIfxJump
;	Peephole 108.b	removed ljmp by inverse jump logic
	jnz	00124$
;	Peephole 300	removed redundant label 00164$
;	genPlus
	mov	a,_bp
	add	a,#0x15
	mov	r0,a
;     genPlusIncr
	mov	a,#0x20
	add	a,@r0
	mov	r2,a
;	Peephole 181	changed mov to clr
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
;	genPlus
;     genPlusIncr
	mov	a,#0x20
;	Peephole 236.a	used r2 instead of ar2
	add	a,r2
	mov	r2,a
;	Peephole 181	changed mov to clr
	clr	a
;	Peephole 236.b	used r3 instead of ar3
	addc	a,r3
	mov	r3,a
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
;	genAssign
	mov	a,_bp
	add	a,#0x0d
	mov	r0,a
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
00124$:
;	FatDrivers/tff.c:720: fs->max_clust = maxclust = (totalsect				/* Last cluster# + 1 */
;	genPlus
	mov	a,_bp
	add	a,#0x15
	mov	r0,a
	mov	a,_bp
	add	a,#0x26
	mov	r1,a
;     genPlusIncr
	mov	a,#0x18
	add	a,@r0
	mov	@r1,a
;	Peephole 181	changed mov to clr
	clr	a
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
;	FatDrivers/tff.c:721: - LD_WORD(&fs->win[BPB_RsvdSecCnt]) - fatsize - fs->n_rootdir / 16
;	genPlus
	mov	a,_bp
	add	a,#0x15
	mov	r0,a
;     genPlusIncr
	mov	a,#0x20
	add	a,@r0
	mov	r5,a
;	Peephole 181	changed mov to clr
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar3,@r0
;	genPlus
;     genPlusIncr
	mov	a,#0x0E
;	Peephole 236.a	used r5 instead of ar5
	add	a,r5
	mov	r5,a
;	Peephole 181	changed mov to clr
	clr	a
;	Peephole 236.b	used r6 instead of ar6
	addc	a,r6
	mov	r6,a
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r5
	mov	dph,r6
	mov	b,r3
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
;	genCast
;	genMinus
;	Peephole 3.c	changed mov to clr
	clr	a
	mov	r3,a
	mov	r4,a
	mov	a,_bp
	add	a,#0x0d
	mov	r0,a
	mov	a,@r0
	clr	c
;	Peephole 236.l	used r5 instead of ar5
	subb	a,r5
	mov	r5,a
	inc	r0
	mov	a,@r0
;	Peephole 236.l	used r6 instead of ar6
	subb	a,r6
	mov	r6,a
	inc	r0
	mov	a,@r0
;	Peephole 236.l	used r3 instead of ar3
	subb	a,r3
	mov	r3,a
	inc	r0
	mov	a,@r0
;	Peephole 236.l	used r4 instead of ar4
	subb	a,r4
	mov	r4,a
;	genMinus
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	a,_bp
	add	a,#0x2a
	mov	r1,a
	mov	a,r5
	clr	c
	subb	a,@r0
	mov	@r1,a
	mov	a,r6
	inc	r0
	subb	a,@r0
	inc	r1
	mov	@r1,a
	mov	a,r3
	inc	r0
	subb	a,@r0
	inc	r1
	mov	@r1,a
	mov	a,r4
	inc	r0
	subb	a,@r0
	inc	r1
	mov	@r1,a
;	genPointerGet
;	genGenPointerGet
	mov	a,_bp
	add	a,#0x23
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r7,a
	inc	dptr
	lcall	__gptrget
;	genRightShift
;	genRightShiftLiteral
;	genrshTwo
	mov	r3,a
;	Peephole 105	removed redundant mov
	swap	a
	xch	a,r7
	swap	a
	anl	a,#0x0f
	xrl	a,r7
	xch	a,r7
	anl	a,#0x0f
	xch	a,r7
	xrl	a,r7
	xch	a,r7
	mov	r3,a
;	genCast
;	genMinus
;	Peephole 3.c	changed mov to clr
	clr	a
	mov	r4,a
	mov	r5,a
	mov	a,_bp
	add	a,#0x2a
	mov	r0,a
	mov	a,@r0
	clr	c
;	Peephole 236.l	used r7 instead of ar7
	subb	a,r7
	mov	@r0,a
	inc	r0
	mov	a,@r0
;	Peephole 236.l	used r3 instead of ar3
	subb	a,r3
	mov	@r0,a
	inc	r0
	mov	a,@r0
;	Peephole 236.l	used r4 instead of ar4
	subb	a,r4
	mov	@r0,a
	inc	r0
	mov	a,@r0
;	Peephole 236.l	used r5 instead of ar5
	subb	a,r5
	mov	@r0,a
;	FatDrivers/tff.c:722: ) / fs->sects_clust + 2;
;	genPointerGet
;	genGenPointerGet
	mov	a,_bp
	add	a,#0x20
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r6,a
;	genCast
	mov	r3,#0x00
	mov	r4,#0x00
	mov	r5,#0x00
;	genIpush
	push	ar6
	push	ar3
	push	ar4
	push	ar5
;	genCall
	mov	a,_bp
	add	a,#0x2a
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	r0
	mov	a,@r0
	lcall	__divulong
	mov	r3,dpl
	mov	r4,dph
	mov	r5,b
	mov	r6,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	genPlus
	mov	a,_bp
	add	a,#0x11
	mov	r0,a
;     genPlusIncr
	mov	a,#0x02
;	Peephole 236.a	used r3 instead of ar3
	add	a,r3
	mov	@r0,a
;	Peephole 181	changed mov to clr
	clr	a
;	Peephole 236.b	used r4 instead of ar4
	addc	a,r4
	inc	r0
	mov	@r0,a
;	Peephole 181	changed mov to clr
	clr	a
;	Peephole 236.b	used r5 instead of ar5
	addc	a,r5
	inc	r0
	mov	@r0,a
;	Peephole 181	changed mov to clr
	clr	a
;	Peephole 236.b	used r6 instead of ar6
	addc	a,r6
	inc	r0
	mov	@r0,a
;	genAssign
	mov	a,_bp
	add	a,#0x11
	mov	r0,a
	mov	ar7,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
;	genPointerSet
;	genGenPointerSet
	mov	a,_bp
	add	a,#0x26
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,_bp
	add	a,#0x11
	mov	r1,a
	mov	a,@r1
	lcall	__gptrput
	inc	dptr
	inc	r1
	mov	a,@r1
	lcall	__gptrput
	inc	dptr
	inc	r1
	mov	a,@r1
	lcall	__gptrput
	inc	dptr
	inc	r1
	mov	a,@r1
	lcall	__gptrput
;	FatDrivers/tff.c:724: fmt = FS_FAT12;										/* Determine the FAT sub type */
;	genAssign
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	@r0,#0x01
;	FatDrivers/tff.c:725: if (maxclust > 0xFF7) fmt = FS_FAT16;
;	genCmpGt
;	genCmp
	clr	c
	mov	a,#0xF7
	subb	a,r7
	mov	a,#0x0F
	subb	a,r3
;	Peephole 181	changed mov to clr
	clr	a
	subb	a,r4
;	Peephole 181	changed mov to clr
	clr	a
	subb	a,r5
;	genIfxJump
;	Peephole 108.a	removed ljmp by inverse jump logic
	jnc	00126$
;	Peephole 300	removed redundant label 00165$
;	genAssign
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	@r0,#0x02
00126$:
;	FatDrivers/tff.c:726: if (maxclust > 0xFFF7)
;	genCmpGt
;	genCmp
	clr	c
	mov	a,#0xF7
	subb	a,r7
	mov	a,#0xFF
	subb	a,r3
;	Peephole 181	changed mov to clr
	clr	a
	subb	a,r4
;	Peephole 181	changed mov to clr
	clr	a
	subb	a,r5
;	genIfxJump
;	Peephole 108.a	removed ljmp by inverse jump logic
	jnc	00128$
;	Peephole 300	removed redundant label 00166$
;	FatDrivers/tff.c:730: fmt = FS_FAT32;
;	genAssign
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	@r0,#0x03
00128$:
;	FatDrivers/tff.c:731: if (fmt == FS_FAT32)
;	genCmpEq
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
;	gencjneshort
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 198.b	optimized misc jump sequence
	cjne	@r0,#0x03,00130$
;	Peephole 200.b	removed redundant sjmp
;	Peephole 300	removed redundant label 00167$
;	Peephole 300	removed redundant label 00168$
;	FatDrivers/tff.c:732: fs->dirbase = LD_DWORD(&fs->win[BPB_RootClus]);	/* Root directory start cluster */
;	genIpush
;	genPlus
	mov	a,_bp
	add	a,#0x15
	mov	r0,a
	mov	a,_bp
	add	a,#0x2a
	mov	r1,a
;     genPlusIncr
	mov	a,#0x0C
	add	a,@r0
	mov	@r1,a
;	Peephole 181	changed mov to clr
	clr	a
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
;	genPlus
	mov	a,_bp
	add	a,#0x15
	mov	r0,a
;     genPlusIncr
	mov	a,#0x20
	add	a,@r0
	mov	r6,a
;	Peephole 181	changed mov to clr
	clr	a
	inc	r0
	addc	a,@r0
	mov	r7,a
	inc	r0
	mov	ar2,@r0
;	genPlus
;     genPlusIncr
	mov	a,#0x2C
;	Peephole 236.a	used r6 instead of ar6
	add	a,r6
	mov	r6,a
;	Peephole 181	changed mov to clr
	clr	a
;	Peephole 236.b	used r7 instead of ar7
	addc	a,r7
	mov	r7,a
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r6
	mov	dph,r7
	mov	b,r2
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
;	genPointerSet
;	genGenPointerSet
	mov	a,_bp
	add	a,#0x2a
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
;	genIpop
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00131$
00130$:
;	FatDrivers/tff.c:735: fs->dirbase = fs->fatbase + fatsize;			/* Root directory start sector (lba) */
;	genIpush
;	genPlus
	mov	a,_bp
	add	a,#0x15
	mov	r0,a
	mov	a,_bp
	add	a,#0x2a
	mov	r1,a
;     genPlusIncr
	mov	a,#0x0C
	add	a,@r0
	mov	@r1,a
;	Peephole 181	changed mov to clr
	clr	a
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
;	genPointerGet
;	genGenPointerGet
	mov	a,_bp
	add	a,#0x1c
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	inc	dptr
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
;	genPlus
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	a,@r0
;	Peephole 236.a	used r6 instead of ar6
	add	a,r6
	mov	r6,a
	inc	r0
	mov	a,@r0
;	Peephole 236.b	used r7 instead of ar7
	addc	a,r7
	mov	r7,a
	inc	r0
	mov	a,@r0
;	Peephole 236.b	used r2 instead of ar2
	addc	a,r2
	mov	r2,a
	inc	r0
	mov	a,@r0
;	Peephole 236.b	used r3 instead of ar3
	addc	a,r3
	mov	r3,a
;	genPointerSet
;	genGenPointerSet
	mov	a,_bp
	add	a,#0x2a
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
	inc	dptr
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
;	FatDrivers/tff.c:756: return FR_OK;
;	genIpop
;	FatDrivers/tff.c:735: fs->dirbase = fs->fatbase + fatsize;			/* Root directory start sector (lba) */
00131$:
;	FatDrivers/tff.c:736: fs->database = fs->fatbase + fatsize + fs->n_rootdir / 16;	/* Data start sector (lba) */
;	genPlus
	mov	a,_bp
	add	a,#0x15
	mov	r0,a
	mov	a,_bp
	add	a,#0x2a
	mov	r1,a
;     genPlusIncr
	mov	a,#0x10
	add	a,@r0
	mov	@r1,a
;	Peephole 181	changed mov to clr
	clr	a
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
;	genPointerGet
;	genGenPointerGet
	mov	a,_bp
	add	a,#0x1c
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	inc	dptr
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
;	genPlus
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	a,_bp
	add	a,#0x26
	mov	r1,a
	mov	a,@r0
;	Peephole 236.a	used r6 instead of ar6
	add	a,r6
	mov	@r1,a
	inc	r0
	mov	a,@r0
;	Peephole 236.b	used r7 instead of ar7
	addc	a,r7
	inc	r1
	mov	@r1,a
	inc	r0
	mov	a,@r0
;	Peephole 236.b	used r2 instead of ar2
	addc	a,r2
	inc	r1
	mov	@r1,a
	inc	r0
	mov	a,@r0
;	Peephole 236.b	used r3 instead of ar3
	addc	a,r3
	inc	r1
	mov	@r1,a
;	genPointerGet
;	genGenPointerGet
	mov	a,_bp
	add	a,#0x23
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
;	genRightShift
;	genRightShiftLiteral
;	genrshTwo
	mov	r5,a
;	Peephole 105	removed redundant mov
	swap	a
	xch	a,r4
	swap	a
	anl	a,#0x0f
	xrl	a,r4
	xch	a,r4
	anl	a,#0x0f
	xch	a,r4
	xrl	a,r4
	xch	a,r4
	mov	r5,a
;	genCast
;	genPlus
;	Peephole 3.c	changed mov to clr
	clr	a
	mov	r2,a
	mov	r3,a
	mov	a,_bp
	add	a,#0x26
	mov	r0,a
;	Peephole 236.g	used r4 instead of ar4
	mov	a,r4
	add	a,@r0
	mov	r4,a
;	Peephole 236.g	used r5 instead of ar5
	mov	a,r5
	inc	r0
	addc	a,@r0
	mov	r5,a
;	Peephole 236.g	used r2 instead of ar2
	mov	a,r2
	inc	r0
	addc	a,@r0
	mov	r2,a
;	Peephole 236.g	used r3 instead of ar3
	mov	a,r3
	inc	r0
	addc	a,@r0
	mov	r3,a
;	genPointerSet
;	genGenPointerSet
	mov	a,_bp
	add	a,#0x2a
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r4
	lcall	__gptrput
	inc	dptr
	mov	a,r5
	lcall	__gptrput
	inc	dptr
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
;	FatDrivers/tff.c:737: fs->fs_type = fmt;									/* FAT sub-type */
;	genPlus
	mov	a,_bp
	add	a,#0x15
	mov	r0,a
;     genPlusIncr
	mov	a,#0x1C
	add	a,@r0
	mov	r2,a
;	Peephole 181	changed mov to clr
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
;	genPointerSet
;	genGenPointerSet
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,@r0
	lcall	__gptrput
;	FatDrivers/tff.c:755: fs->id = ++fsid;									/* File system mount ID */
;	genPlus
;     genPlusIncr
	inc	_fsid
	clr	a
	cjne	a,_fsid,00169$
	inc	(_fsid + 1)
00169$:
;	genPointerSet
;	genGenPointerSet
	mov	a,_bp
	add	a,#0x15
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,_fsid
	lcall	__gptrput
	inc	dptr
	mov	a,(_fsid + 1)
	lcall	__gptrput
;	FatDrivers/tff.c:756: return FR_OK;
;	genRet
	mov	dpl,#0x00
00132$:
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'validate'
;------------------------------------------------------------
;id                        Allocated to stack - offset -4
;fs                        Allocated to registers r2 r3 r4 
;------------------------------------------------------------
;	FatDrivers/tff.c:767: FRESULT validate (		/* FR_OK(0): The id is valid, !=0: Not valid */
;	-----------------------------------------
;	 function validate
;	-----------------------------------------
_validate:
	push	_bp
	mov	_bp,sp
;	genReceive
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
;	FatDrivers/tff.c:772: if (!fs || fs->id != id)
;	genIfx
	mov	a,r2
	orl	a,r3
	orl	a,r4
;	genIfxJump
;	Peephole 108.c	removed ljmp by inverse jump logic
	jz	00101$
;	Peephole 300	removed redundant label 00110$
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
;	genCmpEq
	mov	a,_bp
	add	a,#0xfffffffc
	mov	r0,a
;	gencjneshort
	mov	a,@r0
	cjne	a,ar2,00111$
	inc	r0
	mov	a,@r0
	cjne	a,ar3,00111$
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00102$
00111$:
00101$:
;	FatDrivers/tff.c:773: return FR_INVALID_OBJECT;
;	genRet
	mov	dpl,#0x0C
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00106$
00102$:
;	FatDrivers/tff.c:774: if (disk_status(0) & STA_NOINIT)
;	genCall
	mov	dpl,#0x00
	lcall	_disk_status
	mov	a,dpl
;	genAnd
;	genIfxJump
;	Peephole 108.d	removed ljmp by inverse jump logic
	jnb	acc.0,00105$
;	Peephole 300	removed redundant label 00112$
;	FatDrivers/tff.c:775: return FR_NOT_READY;
;	genRet
	mov	dpl,#0x01
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00106$
00105$:
;	FatDrivers/tff.c:777: return FR_OK;
;	genRet
	mov	dpl,#0x00
00106$:
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'f_mount'
;------------------------------------------------------------
;fs                        Allocated to stack - offset -5
;drv                       Allocated to registers r2 
;fsobj                     Allocated to registers r2 r3 r4 
;------------------------------------------------------------
;	FatDrivers/tff.c:792: FRESULT f_mount (
;	-----------------------------------------
;	 function f_mount
;	-----------------------------------------
_f_mount:
	push	_bp
	mov	_bp,sp
;	genReceive
;	FatDrivers/tff.c:800: if (drv) return FR_INVALID_DRIVE;
;	genIfx
;	peephole 177.g	optimized mov sequence
	mov	a,dpl
	mov	r2,a
;	genIfxJump
;	Peephole 108.c	removed ljmp by inverse jump logic
	jz	00102$
;	Peephole 300	removed redundant label 00112$
;	genRet
	mov	dpl,#0x05
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00107$
00102$:
;	FatDrivers/tff.c:801: fsobj = FatFs;
;	genAssign
	mov	r2,_FatFs
	mov	r3,(_FatFs + 1)
	mov	r4,(_FatFs + 2)
;	FatDrivers/tff.c:802: FatFs = fs;
;	genAssign
	mov	a,_bp
	add	a,#0xfffffffb
	mov	r0,a
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
;	genAssign
	mov	_FatFs,r5
	mov	(_FatFs + 1),r6
	mov	(_FatFs + 2),r7
;	FatDrivers/tff.c:803: if (fsobj) memset(fsobj, 0, sizeof(FATFS));
;	genIfx
	mov	a,r2
	orl	a,r3
	orl	a,r4
;	genIfxJump
;	Peephole 108.c	removed ljmp by inverse jump logic
	jz	00104$
;	Peephole 300	removed redundant label 00113$
;	genIpush
	push	ar5
	push	ar6
	push	ar7
	mov	a,#0x20
	push	acc
	mov	a,#0x02
	push	acc
;	genIpush
;	Peephole 181	changed mov to clr
	clr	a
	push	acc
;	genCall
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_memset
	dec	sp
	dec	sp
	dec	sp
	pop	ar7
	pop	ar6
	pop	ar5
00104$:
;	FatDrivers/tff.c:804: if (fs) memset(fs, 0, sizeof(FATFS));
;	genIfx
	mov	a,r5
	orl	a,r6
	orl	a,r7
;	genIfxJump
;	Peephole 108.c	removed ljmp by inverse jump logic
	jz	00106$
;	Peephole 300	removed redundant label 00114$
;	genAssign
;	genIpush
	mov	a,#0x20
	push	acc
	mov	a,#0x02
	push	acc
;	genIpush
;	Peephole 181	changed mov to clr
	clr	a
	push	acc
;	genCall
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_memset
	dec	sp
	dec	sp
	dec	sp
00106$:
;	FatDrivers/tff.c:806: return FR_OK;
;	genRet
	mov	dpl,#0x00
00107$:
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'f_open'
;------------------------------------------------------------
;path                      Allocated to stack - offset -5
;mode                      Allocated to stack - offset -6
;fp                        Allocated to stack - offset 1
;res                       Allocated to registers r2 
;dir                       Allocated to stack - offset 4
;dirobj                    Allocated to stack - offset 7
;fn                        Allocated to stack - offset 26
;fs                        Allocated to stack - offset 38
;sloc0                     Allocated to stack - offset 41
;sloc1                     Allocated to stack - offset 44
;sloc2                     Allocated to stack - offset 47
;sloc3                     Allocated to stack - offset 50
;------------------------------------------------------------
;	FatDrivers/tff.c:813: FRESULT f_open (
;	-----------------------------------------
;	 function f_open
;	-----------------------------------------
_f_open:
	push	_bp
	mov	_bp,sp
;     genReceive
	push	dpl
	push	dph
	push	b
	mov	a,sp
	add	a,#0x35
	mov	sp,a
;	FatDrivers/tff.c:823: FATFS *fs = FatFs;
;	genAssign
	mov	a,_bp
	add	a,#0x26
	mov	r0,a
	mov	@r0,_FatFs
	inc	r0
	mov	@r0,(_FatFs + 1)
	inc	r0
	mov	@r0,(_FatFs + 2)
;	FatDrivers/tff.c:826: fp->fs = NULL;
;	genPlus
	mov	r0,_bp
	inc	r0
	mov	a,_bp
	add	a,#0x2f
	mov	r1,a
;     genPlusIncr
	mov	a,#0x04
	add	a,@r0
	mov	@r1,a
;	Peephole 181	changed mov to clr
	clr	a
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
;	genPointerSet
;	genGenPointerSet
	mov	a,_bp
	add	a,#0x2f
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
;	Peephole 181	changed mov to clr
	clr	a
	lcall	__gptrput
	inc	dptr
;	Peephole 181	changed mov to clr
	clr	a
	lcall	__gptrput
	inc	dptr
;	Peephole 181	changed mov to clr
	clr	a
	lcall	__gptrput
;	FatDrivers/tff.c:831: mode &= FA_READ;
;	genAnd
	mov	a,_bp
	add	a,#0xfffffffa
	mov	r0,a
	mov	a,@r0
	anl	a,#0x01
	mov	@r0,a
;	FatDrivers/tff.c:832: res = auto_mount(&path, 0);
;	genAddrOf
	mov	a,_bp
	add	a,#0xfb
	mov	r2,a
;	genCast
	mov	r3,#0x00
	mov	r4,#0x40
;	genIpush
;	Peephole 181	changed mov to clr
	clr	a
	push	acc
;	genCall
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_auto_mount
	mov	r2,dpl
	dec	sp
;	genAssign
;	FatDrivers/tff.c:834: if (res != FR_OK) return res;
;	genCmpEq
;	gencjneshort
	cjne	r2,#0x00,00113$
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00102$
00113$:
;	genRet
	mov	dpl,r2
	ljmp	00108$
00102$:
;	FatDrivers/tff.c:837: res = trace_path(&dirobj, fn, path, &dir);	/* Trace the file path */
;	genIpush
;	genAddrOf
	mov	a,_bp
	add	a,#0x04
	mov	r3,a
;	genCast
	mov	a,_bp
	add	a,#0x29
	mov	r0,a
	mov	@r0,ar3
	inc	r0
	mov	@r0,#0x00
	inc	r0
	mov	@r0,#0x40
;	genAddrOf
	mov	a,_bp
	add	a,#0x1a
	mov	r6,a
;	genCast
	mov	r2,#0x00
	mov	r7,#0x40
;	genAddrOf
	mov	a,_bp
	add	a,#0x07
	mov	r4,a
;	genCast
	mov	r5,#0x00
	mov	r3,#0x40
;	genIpush
	mov	a,_bp
	add	a,#0x29
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
;	genIpush
	mov	a,_bp
	add	a,#0xfffffffb
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
;	genIpush
	push	ar6
	push	ar2
	push	ar7
;	genCall
	mov	dpl,r4
	mov	dph,r5
	mov	b,r3
	lcall	_trace_path
	mov	r3,dpl
	mov	a,sp
	add	a,#0xf7
	mov	sp,a
;	genAssign
	mov	ar2,r3
;	FatDrivers/tff.c:884: if (res != FR_OK) return res;		/* Trace failed */
;	genCmpEq
;	gencjne
;	gencjneshort
;	Peephole 241.d	optimized compare
	clr	a
	cjne	r2,#0x00,00114$
	inc	a
00114$:
;	Peephole 300	removed redundant label 00115$
;	genIpop
;	genIfx
;	genIfxJump
;	Peephole 108.b	removed ljmp by inverse jump logic
	jnz	00104$
;	Peephole 300	removed redundant label 00116$
;	genRet
	mov	dpl,r2
	ljmp	00108$
00104$:
;	FatDrivers/tff.c:885: if (dir == NULL || (dir[DIR_Attr] & AM_DIR))	/* It is a directory */
;	genAssign
;	genCmpEq
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
;	gencjneshort
	cjne	@r0,#0x00,00117$
	inc	r0
	cjne	@r0,#0x00,00117$
	inc	r0
	cjne	@r0,#0x00,00117$
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00105$
00117$:
;	genIpush
;	genPlus
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
;     genPlusIncr
	mov	a,#0x0B
	add	a,@r0
	mov	r5,a
;	Peephole 181	changed mov to clr
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
;	genAnd
	mov	r5,a
;	Peephole 105	removed redundant mov
	anl	a,#0x10
;	genIpop
;	genIfx
;	genIfxJump
;	Peephole 108.c	removed ljmp by inverse jump logic
	jz	00106$
;	Peephole 300	removed redundant label 00118$
00105$:
;	FatDrivers/tff.c:886: return FR_NO_FILE;
;	genRet
	mov	dpl,#0x02
	ljmp	00108$
00106$:
;	FatDrivers/tff.c:895: fp->flag = mode;							/* File access mode */
;	genPlus
	mov	r0,_bp
	inc	r0
;     genPlusIncr
	mov	a,#0x02
	add	a,@r0
	mov	r2,a
;	Peephole 181	changed mov to clr
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
;	genPointerSet
;	genGenPointerSet
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,_bp
	add	a,#0xfffffffa
	mov	r0,a
	mov	a,@r0
	lcall	__gptrput
;	FatDrivers/tff.c:896: fp->org_clust =								/* File start cluster */
;	genPlus
	mov	r0,_bp
	inc	r0
	mov	a,_bp
	add	a,#0x2c
	mov	r1,a
;     genPlusIncr
	mov	a,#0x0F
	add	a,@r0
	mov	@r1,a
;	Peephole 181	changed mov to clr
	clr	a
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
;	FatDrivers/tff.c:898: ((DWORD)LD_WORD(&dir[DIR_FstClusHI]) << 16) |
;	genPlus
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
;     genPlusIncr
	mov	a,#0x14
	add	a,@r0
	mov	r2,a
;	Peephole 181	changed mov to clr
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
;	genCast
;	genLeftShift
;	genLeftShiftLiteral
;	Peephole 3.c	changed mov to clr
	clr	a
	mov	r4,a
	mov	r5,a
	mov	a,_bp
	add	a,#0x32
;	genlshFour
;	Peephole 185	changed order of increment (acc incremented also!)
	inc	a
;	Peephole 185	changed order of increment (acc incremented also!)
	inc	a
;	Peephole 185	changed order of increment (acc incremented also!)
	inc	a
	mov	r0,a
	mov	@r0,ar3
	dec	r0
	mov	@r0,ar2
	dec	r0
	mov	@r0,#0x00
	dec	r0
	mov	@r0,#0x00
;	FatDrivers/tff.c:900: LD_WORD(&dir[DIR_FstClusLO]);
;	genPlus
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
;     genPlusIncr
	mov	a,#0x1A
	add	a,@r0
	mov	r6,a
;	Peephole 181	changed mov to clr
	clr	a
	inc	r0
	addc	a,@r0
	mov	r7,a
	inc	r0
	mov	ar2,@r0
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r6
	mov	dph,r7
	mov	b,r2
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
;	genCast
;	genOr
;	Peephole 3.c	changed mov to clr
	clr	a
	mov	r2,a
	mov	r3,a
	mov	a,_bp
	add	a,#0x32
	mov	r0,a
	mov	a,@r0
	orl	ar6,a
	inc	r0
	mov	a,@r0
	orl	ar7,a
	inc	r0
	mov	a,@r0
	orl	ar2,a
	inc	r0
	mov	a,@r0
	orl	ar3,a
;	genPointerSet
;	genGenPointerSet
	mov	a,_bp
	add	a,#0x2c
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
	inc	dptr
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
;	FatDrivers/tff.c:901: fp->fsize = LD_DWORD(&dir[DIR_FileSize]);	/* File size */
;	genPlus
	mov	r0,_bp
	inc	r0
	mov	a,_bp
	add	a,#0x32
	mov	r1,a
;     genPlusIncr
	mov	a,#0x0B
	add	a,@r0
	mov	@r1,a
;	Peephole 181	changed mov to clr
	clr	a
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
;	genPlus
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
;     genPlusIncr
	mov	a,#0x1C
	add	a,@r0
	mov	r5,a
;	Peephole 181	changed mov to clr
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	inc	dptr
	lcall	__gptrget
	mov	r2,a
;	genPointerSet
;	genGenPointerSet
	mov	a,_bp
	add	a,#0x32
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r5
	lcall	__gptrput
	inc	dptr
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
	inc	dptr
	mov	a,r2
	lcall	__gptrput
;	FatDrivers/tff.c:902: fp->fptr = 0;								/* File ptr */
;	genPlus
	mov	r0,_bp
	inc	r0
;     genPlusIncr
	mov	a,#0x07
	add	a,@r0
	mov	r2,a
;	Peephole 181	changed mov to clr
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
;	genPointerSet
;	genGenPointerSet
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
;	Peephole 181	changed mov to clr
	clr	a
	lcall	__gptrput
	inc	dptr
;	Peephole 181	changed mov to clr
	clr	a
	lcall	__gptrput
	inc	dptr
;	Peephole 181	changed mov to clr
	clr	a
	lcall	__gptrput
	inc	dptr
;	Peephole 181	changed mov to clr
	clr	a
	lcall	__gptrput
;	FatDrivers/tff.c:903: fp->sect_clust = 1;							/* Sector counter */
;	genPlus
	mov	r0,_bp
	inc	r0
;     genPlusIncr
	mov	a,#0x03
	add	a,@r0
	mov	r2,a
;	Peephole 181	changed mov to clr
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
;	genPointerSet
;	genGenPointerSet
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,#0x01
	lcall	__gptrput
;	FatDrivers/tff.c:904: fp->fs = fs; fp->id = fs->id;				/* Owner file system object of the file */
;	genPointerSet
;	genGenPointerSet
	mov	a,_bp
	add	a,#0x2f
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,_bp
	add	a,#0x26
	mov	r1,a
	mov	a,@r1
	lcall	__gptrput
	inc	dptr
	inc	r1
	mov	a,@r1
	lcall	__gptrput
	inc	dptr
	inc	r1
	mov	a,@r1
	lcall	__gptrput
;	genPointerGet
;	genGenPointerGet
	mov	a,_bp
	add	a,#0x26
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
;	genPointerSet
;	genGenPointerSet
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
;	FatDrivers/tff.c:906: return FR_OK;
;	genRet
	mov	dpl,#0x00
00108$:
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'f_read'
;------------------------------------------------------------
;buff                      Allocated to stack - offset -5
;btr                       Allocated to stack - offset -7
;br                        Allocated to stack - offset -10
;fp                        Allocated to stack - offset 1
;sect                      Allocated to stack - offset 4
;remain                    Allocated to stack - offset 8
;rcnt                      Allocated to stack - offset 12
;cc                        Allocated to registers r6 r7 
;clust                     Allocated to stack - offset 14
;rbuff                     Allocated to stack - offset 18
;res                       Allocated to registers r2 
;fs                        Allocated to stack - offset 21
;sloc0                     Allocated to stack - offset 27
;sloc1                     Allocated to stack - offset 24
;sloc2                     Allocated to stack - offset 27
;sloc3                     Allocated to stack - offset 30
;sloc4                     Allocated to stack - offset 34
;sloc5                     Allocated to stack - offset 37
;sloc6                     Allocated to stack - offset 40
;sloc7                     Allocated to stack - offset 43
;sloc8                     Allocated to stack - offset 46
;sloc9                     Allocated to stack - offset 50
;sloc10                    Allocated to stack - offset 53
;sloc11                    Allocated to stack - offset 56
;------------------------------------------------------------
;	FatDrivers/tff.c:913: FRESULT f_read (
;	-----------------------------------------
;	 function f_read
;	-----------------------------------------
_f_read:
	push	_bp
	mov	_bp,sp
;     genReceive
	push	dpl
	push	dph
	push	b
	mov	a,sp
	add	a,#0x3a
	mov	sp,a
;	FatDrivers/tff.c:923: BYTE *rbuff = buff;
;	genAssign
	mov	a,_bp
	add	a,#0xfffffffb
	mov	r0,a
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
;	genAssign
	mov	a,_bp
	add	a,#0x12
	mov	r0,a
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	FatDrivers/tff.c:925: FATFS *fs = fp->fs;
;	genPlus
	mov	r0,_bp
	inc	r0
;     genPlusIncr
	mov	a,#0x04
	add	a,@r0
	mov	r5,a
;	Peephole 181	changed mov to clr
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
;	genAssign
	mov	a,_bp
	add	a,#0x15
	mov	r0,a
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	FatDrivers/tff.c:928: *br = 0;
;	genAssign
	mov	a,_bp
	add	a,#0xfffffff6
	mov	r0,a
	mov	a,_bp
	add	a,#0x18
	mov	r1,a
	mov	a,@r0
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
;	genPointerSet
;	genGenPointerSet
	mov	a,_bp
	add	a,#0x18
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
;	Peephole 181	changed mov to clr
	clr	a
	lcall	__gptrput
	inc	dptr
;	Peephole 181	changed mov to clr
	clr	a
	lcall	__gptrput
;	FatDrivers/tff.c:929: res = validate(fs, fp->id);						/* Check validity of the object */
;	genPointerGet
;	genGenPointerGet
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
;	genIpush
	push	ar2
	push	ar3
;	genCall
	mov	a,_bp
	add	a,#0x15
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_validate
	mov	r2,dpl
	dec	sp
	dec	sp
;	genAssign
;	FatDrivers/tff.c:930: if (res != FR_OK) return res;
;	genCmpEq
;	gencjneshort
	cjne	r2,#0x00,00152$
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00102$
00152$:
;	genRet
	mov	dpl,r2
	ljmp	00132$
00102$:
;	FatDrivers/tff.c:931: if (fp->flag & FA__ERROR) return FR_RW_ERROR;	/* Check error flag */
;	genPlus
	mov	r0,_bp
	inc	r0
	mov	a,_bp
	add	a,#0x38
	mov	r1,a
;     genPlusIncr
	mov	a,#0x02
	add	a,@r0
	mov	@r1,a
;	Peephole 181	changed mov to clr
	clr	a
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
;	genPointerGet
;	genGenPointerGet
	mov	a,_bp
	add	a,#0x38
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
;	genAnd
	mov	r2,a
;	Peephole 105	removed redundant mov
;	genIfxJump
;	Peephole 108.d	removed ljmp by inverse jump logic
	jnb	acc.7,00104$
;	Peephole 300	removed redundant label 00153$
;	genRet
	mov	dpl,#0x08
	ljmp	00132$
00104$:
;	FatDrivers/tff.c:932: if (!(fp->flag & FA_READ)) return FR_DENIED;	/* Check access mode */
;	genAnd
	mov	a,r2
;	genIfxJump
;	Peephole 108.e	removed ljmp by inverse jump logic
	jb	acc.0,00106$
;	Peephole 300	removed redundant label 00154$
;	genRet
	mov	dpl,#0x06
	ljmp	00132$
00106$:
;	FatDrivers/tff.c:933: remain = fp->fsize - fp->fptr;
;	genIpush
;	genPlus
	mov	r0,_bp
	inc	r0
;     genPlusIncr
	mov	a,#0x0B
	add	a,@r0
	mov	r2,a
;	Peephole 181	changed mov to clr
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,_bp
	add	a,#0x1e
	mov	r0,a
	lcall	__gptrget
	mov	@r0,a
	inc	dptr
	lcall	__gptrget
	inc	r0
	mov	@r0,a
	inc	dptr
	lcall	__gptrget
	inc	r0
	mov	@r0,a
	inc	dptr
	lcall	__gptrget
	inc	r0
	mov	@r0,a
;	genPlus
	mov	r0,_bp
	inc	r0
	mov	a,_bp
	add	a,#0x1b
	mov	r1,a
;     genPlusIncr
	mov	a,#0x07
	add	a,@r0
	mov	@r1,a
;	Peephole 181	changed mov to clr
	clr	a
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
;	genPointerGet
;	genGenPointerGet
	mov	a,_bp
	add	a,#0x1b
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	inc	dptr
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
;	genMinus
	mov	a,_bp
	add	a,#0x1e
	mov	r0,a
	mov	a,@r0
	clr	c
;	Peephole 236.l	used r6 instead of ar6
	subb	a,r6
	mov	r6,a
	inc	r0
	mov	a,@r0
;	Peephole 236.l	used r7 instead of ar7
	subb	a,r7
	mov	r7,a
	inc	r0
	mov	a,@r0
;	Peephole 236.l	used r2 instead of ar2
	subb	a,r2
	mov	r2,a
	inc	r0
	mov	a,@r0
;	Peephole 236.l	used r3 instead of ar3
	subb	a,r3
	mov	r3,a
;	genAssign
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
	inc	r0
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
;	FatDrivers/tff.c:934: if (btr > remain) btr = (WORD)remain;			/* Truncate read count by number of bytes left */
;	genCast
	mov	a,_bp
	add	a,#0xfffffff9
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
;	genCmpGt
;	Peephole 3.c	changed mov to clr
	clr	a
	mov	r4,a
	mov	r5,a
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
;	genCmp
	clr	c
	mov	a,@r0
	subb	a,r2
	inc	r0
	mov	a,@r0
	subb	a,r3
	inc	r0
	mov	a,@r0
	subb	a,r4
	inc	r0
	mov	a,@r0
	subb	a,r5
;	genIpop
;	genIfx
;	genIfxJump
;	Peephole 108.c	removed ljmp by inverse jump logic
;	Peephole 128	jump optimization
	jnc	00151$
;	Peephole 300	removed redundant label 00155$
;	genCast
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	a,_bp
	add	a,#0xfffffff9
	mov	r1,a
	mov	a,@r0
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
00151$:
;	genPlus
	mov	r0,_bp
	inc	r0
	mov	a,_bp
	add	a,#0x35
	mov	r1,a
;     genPlusIncr
	mov	a,#0x13
	add	a,@r0
	mov	@r1,a
;	Peephole 181	changed mov to clr
	clr	a
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
;	genPlus
	mov	r0,_bp
	inc	r0
	mov	a,_bp
	add	a,#0x1e
	mov	r1,a
;     genPlusIncr
	mov	a,#0x0F
	add	a,@r0
	mov	@r1,a
;	Peephole 181	changed mov to clr
	clr	a
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
;	genPlus
	mov	a,_bp
	add	a,#0x15
	mov	r0,a
	mov	a,_bp
	add	a,#0x22
	mov	r1,a
;     genPlusIncr
	mov	a,#0x18
	add	a,@r0
	mov	@r1,a
;	Peephole 181	changed mov to clr
	clr	a
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
;	genPlus
	mov	a,_bp
	add	a,#0x15
	mov	r0,a
	mov	a,_bp
	add	a,#0x25
	mov	r1,a
;     genPlusIncr
	mov	a,#0x1D
	add	a,@r0
	mov	@r1,a
;	Peephole 181	changed mov to clr
	clr	a
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
;	genPlus
	mov	r0,_bp
	inc	r0
	mov	a,_bp
	add	a,#0x28
	mov	r1,a
;     genPlusIncr
	mov	a,#0x17
	add	a,@r0
	mov	@r1,a
;	Peephole 181	changed mov to clr
	clr	a
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
;	genPlus
	mov	a,_bp
	add	a,#0x15
	mov	r0,a
	mov	a,_bp
	add	a,#0x2b
	mov	r1,a
;     genPlusIncr
	mov	a,#0x20
	add	a,@r0
	mov	@r1,a
;	Peephole 181	changed mov to clr
	clr	a
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
00127$:
;	FatDrivers/tff.c:936: for ( ;  btr;									/* Repeat until all data transferred */
;	genIfx
	mov	a,_bp
	add	a,#0xfffffff9
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
;	genIfxJump
	jnz	00156$
	ljmp	00130$
00156$:
;	FatDrivers/tff.c:938: if ((fp->fptr % 512) == 0) {				/* On the sector boundary */
;	genPointerGet
;	genGenPointerGet
	mov	a,_bp
	add	a,#0x1b
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
;	genAnd
	mov	a,r3
	jnz	00157$
	mov	a,r4
;	Peephole 160.f	removed sjmp by inverse jump logic
	jnb	acc.0,00158$
00157$:
	ljmp	00122$
00158$:
;	FatDrivers/tff.c:939: if (--fp->sect_clust) {					/* Decrement left sector counter */
;	genIpush
;	genPlus
	mov	r0,_bp
	inc	r0
	mov	a,_bp
	add	a,#0x32
	mov	r1,a
;     genPlusIncr
	mov	a,#0x03
	add	a,@r0
	mov	@r1,a
;	Peephole 181	changed mov to clr
	clr	a
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
;	genPointerGet
;	genGenPointerGet
	mov	a,_bp
	add	a,#0x32
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r2,a
;	genMinus
;	genMinusDec
	dec	r2
;	genPointerSet
;	genGenPointerSet
	mov	a,_bp
	add	a,#0x32
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
;	genIfx
	mov	a,r2
	lcall	__gptrput
;	Peephole 190	removed redundant mov
;	genIpop
;	genIfxJump
;	Peephole 108.c	removed ljmp by inverse jump logic
	jz	00113$
;	Peephole 300	removed redundant label 00159$
;	FatDrivers/tff.c:940: sect = fp->curr_sect + 1;			/* Get current sector */
;	genIpush
;	genPointerGet
;	genGenPointerGet
	mov	a,_bp
	add	a,#0x28
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
;	genPlus
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
;     genPlusIncr
	mov	a,#0x01
;	Peephole 236.a	used r2 instead of ar2
	add	a,r2
	mov	@r0,a
;	Peephole 181	changed mov to clr
	clr	a
;	Peephole 236.b	used r3 instead of ar3
	addc	a,r3
	inc	r0
	mov	@r0,a
;	Peephole 181	changed mov to clr
	clr	a
;	Peephole 236.b	used r4 instead of ar4
	addc	a,r4
	inc	r0
	mov	@r0,a
;	Peephole 181	changed mov to clr
	clr	a
;	Peephole 236.b	used r5 instead of ar5
	addc	a,r5
	inc	r0
	mov	@r0,a
;	genIpop
	ljmp	00114$
00113$:
;	FatDrivers/tff.c:942: clust = (fp->fptr == 0) ?
;	genNot
	mov	a,r3
	orl	a,r4
	orl	a,r5
	orl	a,r6
	cjne	a,#0x01,00160$
00160$:
	clr	a
	rlc	a
;	genIfx
	mov	r5,a
;	Peephole 105	removed redundant mov
;	genIfxJump
;	Peephole 108.c	removed ljmp by inverse jump logic
	jz	00134$
;	Peephole 300	removed redundant label 00161$
;	FatDrivers/tff.c:943: fp->org_clust : get_cluster(fp->curr_clust);
;	genPointerGet
;	genGenPointerGet
	mov	a,_bp
	add	a,#0x1e
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	inc	dptr
	lcall	__gptrget
	mov	r2,a
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00135$
00134$:
;	genPointerGet
;	genGenPointerGet
	mov	a,_bp
	add	a,#0x35
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
;	genCall
	mov	r5,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
;	Peephole 191	removed redundant mov
	lcall	_get_cluster
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	mov	r2,a
00135$:
;	genAssign
	mov	a,_bp
	add	a,#0x0e
	mov	r0,a
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
	inc	r0
	mov	@r0,ar2
;	FatDrivers/tff.c:944: if (clust < 2 || clust >= fs->max_clust)
;	genCmpLt
	mov	a,_bp
	add	a,#0x0e
	mov	r0,a
;	genCmp
	clr	c
	mov	a,@r0
	subb	a,#0x02
	inc	r0
	mov	a,@r0
	subb	a,#0x00
	inc	r0
	mov	a,@r0
	subb	a,#0x00
	inc	r0
	mov	a,@r0
	subb	a,#0x00
;	genIfxJump
	jnc	00162$
	ljmp	00131$
00162$:
;	genPointerGet
;	genGenPointerGet
	mov	a,_bp
	add	a,#0x22
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	inc	dptr
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
;	genCmpLt
	mov	a,_bp
	add	a,#0x0e
	mov	r0,a
;	genCmp
	clr	c
	mov	a,@r0
	subb	a,r6
	inc	r0
	mov	a,@r0
	subb	a,r7
	inc	r0
	mov	a,@r0
	subb	a,r2
	inc	r0
	mov	a,@r0
	subb	a,r3
;	genIfxJump
	jc	00163$
	ljmp	00131$
00163$:
;	FatDrivers/tff.c:946: fp->curr_clust = clust;				/* Current cluster */
;	genPointerSet
;	genGenPointerSet
	mov	a,_bp
	add	a,#0x35
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,_bp
	add	a,#0x0e
	mov	r1,a
	mov	a,@r1
	lcall	__gptrput
	inc	dptr
	inc	r1
	mov	a,@r1
	lcall	__gptrput
	inc	dptr
	inc	r1
	mov	a,@r1
	lcall	__gptrput
	inc	dptr
	inc	r1
	mov	a,@r1
	lcall	__gptrput
;	FatDrivers/tff.c:947: sect = clust2sect(clust);			/* Get current sector */
;	genCall
	mov	a,_bp
	add	a,#0x0e
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	r0
	mov	a,@r0
	lcall	_clust2sect
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
;	genAssign
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
;	FatDrivers/tff.c:948: fp->sect_clust = fs->sects_clust;	/* Re-initialize the left sector counter */
;	genPointerGet
;	genGenPointerGet
	mov	a,_bp
	add	a,#0x25
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r2,a
;	genPointerSet
;	genGenPointerSet
	mov	a,_bp
	add	a,#0x32
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r2
	lcall	__gptrput
00114$:
;	FatDrivers/tff.c:950: fp->curr_sect = sect;					/* Update current sector */
;	genPointerSet
;	genGenPointerSet
	mov	a,_bp
	add	a,#0x28
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,_bp
	add	a,#0x04
	mov	r1,a
	mov	a,@r1
	lcall	__gptrput
	inc	dptr
	inc	r1
	mov	a,@r1
	lcall	__gptrput
	inc	dptr
	inc	r1
	mov	a,@r1
	lcall	__gptrput
	inc	dptr
	inc	r1
	mov	a,@r1
	lcall	__gptrput
;	FatDrivers/tff.c:951: cc = btr / 512;							/* When left bytes >= 512, */
;	genRightShift
;	genRightShiftLiteral
	mov	a,_bp
	add	a,#0xfffffff9
;	genrshTwo
;	Peephole 185	changed order of increment (acc incremented also!)
	inc	a
	mov	r0,a
	mov	a,@r0
	clr	c
	rrc	a
;	FatDrivers/tff.c:952: if (cc) {								/* Read maximum contiguous sectors directly */
;	genIfx
	mov	r6,a
	mov	r7,#0x00
;	Peephole 177.d	removed redundant move
	orl	a,r7
;	genIfxJump
	jnz	00164$
	ljmp	00122$
00164$:
;	FatDrivers/tff.c:953: if (cc > fp->sect_clust) cc = fp->sect_clust;
;	genPointerGet
;	genGenPointerGet
	mov	a,_bp
	add	a,#0x32
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r4,a
;	genCast
	mov	r5,#0x00
;	genCmpGt
;	genCmp
	clr	c
	mov	a,r4
	subb	a,r6
	mov	a,r5
	subb	a,r7
;	genIfxJump
;	Peephole 108.a	removed ljmp by inverse jump logic
	jnc	00116$
;	Peephole 300	removed redundant label 00165$
;	genPointerGet
;	genGenPointerGet
	mov	a,_bp
	add	a,#0x32
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r4,a
;	genCast
	mov	ar6,r4
	mov	r7,#0x00
00116$:
;	FatDrivers/tff.c:954: if(disk_read(0, rbuff, sect, (BYTE)cc) != RES_OK)
;	genCast
	mov	ar4,r6
;	genIpush
	push	ar4
	push	ar6
	push	ar7
	push	ar4
;	genIpush
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
;	genIpush
	mov	a,_bp
	add	a,#0x12
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
;	genCall
	mov	dpl,#0x00
	lcall	_disk_read
	mov	r5,dpl
	mov	a,sp
	add	a,#0xf8
	mov	sp,a
	pop	ar7
	pop	ar6
	pop	ar4
;	genCmpEq
;	gencjneshort
	cjne	r5,#0x00,00166$
	sjmp	00167$
00166$:
	ljmp	00131$
00167$:
;	FatDrivers/tff.c:956: fp->sect_clust -= (BYTE)(cc - 1);
;	genPointerGet
;	genGenPointerGet
	mov	a,_bp
	add	a,#0x32
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r5,a
;	genMinus
;	genMinusDec
	mov	a,r4
	dec	a
;	genMinus
	setb	c
;	Peephole 236.l	used r5 instead of ar5
	subb	a,r5
	cpl	a
	mov	r5,a
;	genPointerSet
;	genGenPointerSet
	mov	a,_bp
	add	a,#0x32
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r5
	lcall	__gptrput
;	FatDrivers/tff.c:957: fp->curr_sect += cc - 1;
;	genPointerGet
;	genGenPointerGet
	mov	a,_bp
	add	a,#0x28
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,_bp
	add	a,#0x2e
	mov	r1,a
	lcall	__gptrget
	mov	@r1,a
	inc	dptr
	lcall	__gptrget
	inc	r1
	mov	@r1,a
	inc	dptr
	lcall	__gptrget
	inc	r1
	mov	@r1,a
	inc	dptr
	lcall	__gptrget
	inc	r1
	mov	@r1,a
;	genMinus
;	genMinusDec
	mov	a,r6
	add	a,#0xff
	mov	r2,a
	mov	a,r7
	addc	a,#0xff
	mov	r3,a
;	genCast
;	genPlus
;	Peephole 3.c	changed mov to clr
	clr	a
	mov	r4,a
	mov	r5,a
	mov	a,_bp
	add	a,#0x2e
	mov	r0,a
;	Peephole 236.g	used r2 instead of ar2
	mov	a,r2
	add	a,@r0
	mov	r2,a
;	Peephole 236.g	used r3 instead of ar3
	mov	a,r3
	inc	r0
	addc	a,@r0
	mov	r3,a
;	Peephole 236.g	used r4 instead of ar4
	mov	a,r4
	inc	r0
	addc	a,@r0
	mov	r4,a
;	Peephole 236.g	used r5 instead of ar5
	mov	a,r5
	inc	r0
	addc	a,@r0
	mov	r5,a
;	genPointerSet
;	genGenPointerSet
	mov	a,_bp
	add	a,#0x28
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
	inc	dptr
	mov	a,r5
	lcall	__gptrput
;	FatDrivers/tff.c:958: rcnt = cc * 512;
;	genLeftShift
;	genLeftShiftLiteral
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
;	genlshTwo
	mov	a,r6
;	Peephole 254	optimized left shift
	add	a,r6
	inc	r0
	mov	@r0,a
	dec	r0
	mov	@r0,#0x00
;	FatDrivers/tff.c:959: continue;
	ljmp	00129$
00122$:
;	FatDrivers/tff.c:962: if (!move_window(fp->curr_sect)) goto fr_error;	/* Move sector window */
;	genPointerGet
;	genGenPointerGet
	mov	a,_bp
	add	a,#0x28
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
;	genCall
	mov	r7,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
;	Peephole 191	removed redundant mov
	lcall	_move_window
	mov	a,dpl
;	genIfx
;	genIfxJump
	jnz	00168$
	ljmp	00131$
00168$:
;	FatDrivers/tff.c:963: rcnt = 512 - (WORD)(fp->fptr % 512);			/* Copy fractional bytes from sector window */
;	genPointerGet
;	genGenPointerGet
	mov	a,_bp
	add	a,#0x1b
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
;	genAnd
	anl	ar5,#0x01
;	genCast
;	genMinus
;	Peephole 3.c	changed mov to clr
	clr	a
	mov	r6,a
	mov	r7,a
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
;	Peephole 181	changed mov to clr
	clr	a
	clr	c
;	Peephole 236.l	used r4 instead of ar4
	subb	a,r4
	mov	@r0,a
	mov	a,#0x02
;	Peephole 236.l	used r5 instead of ar5
	subb	a,r5
	inc	r0
	mov	@r0,a
;	FatDrivers/tff.c:964: if (rcnt > btr) rcnt = btr;
;	genCmpGt
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	a,_bp
	add	a,#0xfffffff9
	mov	r1,a
;	genCmp
	clr	c
	mov	a,@r1
	subb	a,@r0
	inc	r1
	mov	a,@r1
	inc	r0
	subb	a,@r0
;	genIfxJump
;	Peephole 108.a	removed ljmp by inverse jump logic
	jnc	00126$
;	Peephole 300	removed redundant label 00169$
;	genAssign
	mov	a,_bp
	add	a,#0xfffffff9
	mov	r0,a
	mov	a,_bp
	add	a,#0x0c
	mov	r1,a
	mov	a,@r0
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
00126$:
;	FatDrivers/tff.c:965: memcpy(rbuff, &fs->win[(WORD)fp->fptr % 512], rcnt);
;	genPointerGet
;	genGenPointerGet
	mov	a,_bp
	add	a,#0x1b
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
;	genCast
;	genAnd
	anl	ar5,#0x01
;	genPlus
	mov	a,_bp
	add	a,#0x2b
	mov	r0,a
;	Peephole 236.g	used r4 instead of ar4
	mov	a,r4
	add	a,@r0
	mov	r4,a
;	Peephole 236.g	used r5 instead of ar5
	mov	a,r5
	inc	r0
	addc	a,@r0
	mov	r5,a
	inc	r0
	mov	ar6,@r0
;	genIpush
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
;	genIpush
	push	ar4
	push	ar5
	push	ar6
;	genCall
	mov	a,_bp
	add	a,#0x12
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_memcpy
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
00129$:
;	FatDrivers/tff.c:937: rbuff += rcnt, fp->fptr += rcnt, *br += rcnt, btr -= rcnt) {
;	genPlus
	mov	a,_bp
	add	a,#0x12
	mov	r0,a
	mov	a,_bp
	add	a,#0x0c
	mov	r1,a
	mov	a,@r1
	add	a,@r0
	mov	@r0,a
	inc	r1
	mov	a,@r1
	inc	r0
	addc	a,@r0
	mov	@r0,a
;	genPointerGet
;	genGenPointerGet
	mov	a,_bp
	add	a,#0x1b
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,_bp
	add	a,#0x2e
	mov	r1,a
	lcall	__gptrget
	mov	@r1,a
	inc	dptr
	lcall	__gptrget
	inc	r1
	mov	@r1,a
	inc	dptr
	lcall	__gptrget
	inc	r1
	mov	@r1,a
	inc	dptr
	lcall	__gptrget
	inc	r1
	mov	@r1,a
;	genCast
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
;	genPlus
;	Peephole 3.c	changed mov to clr
	clr	a
	mov	r4,a
	mov	r5,a
	mov	a,_bp
	add	a,#0x2e
	mov	r0,a
;	Peephole 236.g	used r2 instead of ar2
	mov	a,r2
	add	a,@r0
	mov	r2,a
;	Peephole 236.g	used r3 instead of ar3
	mov	a,r3
	inc	r0
	addc	a,@r0
	mov	r3,a
;	Peephole 236.g	used r4 instead of ar4
	mov	a,r4
	inc	r0
	addc	a,@r0
	mov	r4,a
;	Peephole 236.g	used r5 instead of ar5
	mov	a,r5
	inc	r0
	addc	a,@r0
	mov	r5,a
;	genPointerSet
;	genGenPointerSet
	mov	a,_bp
	add	a,#0x1b
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
	inc	dptr
	mov	a,r5
	lcall	__gptrput
;	genPointerGet
;	genGenPointerGet
	mov	a,_bp
	add	a,#0x18
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
;	genPlus
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	a,@r0
;	Peephole 236.a	used r2 instead of ar2
	add	a,r2
	mov	r2,a
	inc	r0
	mov	a,@r0
;	Peephole 236.b	used r3 instead of ar3
	addc	a,r3
	mov	r3,a
;	genPointerSet
;	genGenPointerSet
	mov	a,_bp
	add	a,#0x18
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
;	genMinus
	mov	a,_bp
	add	a,#0xfffffff9
	mov	r0,a
	mov	a,_bp
	add	a,#0x0c
	mov	r1,a
	mov	a,@r0
	clr	c
	subb	a,@r1
	mov	@r0,a
	inc	r0
	mov	a,@r0
	inc	r1
	subb	a,@r1
	mov	@r0,a
	ljmp	00127$
00130$:
;	FatDrivers/tff.c:968: return FR_OK;
;	genRet
	mov	dpl,#0x00
;	FatDrivers/tff.c:970: fr_error:	/* Abort this function due to an unrecoverable error */
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00132$
00131$:
;	FatDrivers/tff.c:971: fp->flag |= FA__ERROR;
;	genPointerGet
;	genGenPointerGet
	mov	a,_bp
	add	a,#0x38
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r2,a
;	genOr
	orl	ar2,#0x80
;	genPointerSet
;	genGenPointerSet
	mov	a,_bp
	add	a,#0x38
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r2
	lcall	__gptrput
;	FatDrivers/tff.c:972: return FR_RW_ERROR;
;	genRet
	mov	dpl,#0x08
00132$:
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'f_mp3_read'
;------------------------------------------------------------
;buff                      Allocated to stack - offset -5
;btr                       Allocated to stack - offset -7
;br                        Allocated to stack - offset -10
;fp                        Allocated to stack - offset 1
;sect                      Allocated to stack - offset 4
;remain                    Allocated to stack - offset 8
;rcnt                      Allocated to stack - offset 12
;cc                        Allocated to registers r6 r7 
;clust                     Allocated to stack - offset 14
;rbuff                     Allocated to stack - offset 18
;res                       Allocated to registers r2 
;fs                        Allocated to stack - offset 21
;sloc0                     Allocated to stack - offset 27
;sloc1                     Allocated to stack - offset 24
;sloc2                     Allocated to stack - offset 27
;sloc3                     Allocated to stack - offset 30
;sloc4                     Allocated to stack - offset 34
;sloc5                     Allocated to stack - offset 37
;sloc6                     Allocated to stack - offset 40
;sloc7                     Allocated to stack - offset 43
;sloc8                     Allocated to stack - offset 46
;sloc9                     Allocated to stack - offset 50
;sloc10                    Allocated to stack - offset 53
;sloc11                    Allocated to stack - offset 56
;------------------------------------------------------------
;	FatDrivers/tff.c:979: FRESULT f_mp3_read (
;	-----------------------------------------
;	 function f_mp3_read
;	-----------------------------------------
_f_mp3_read:
	push	_bp
	mov	_bp,sp
;     genReceive
	push	dpl
	push	dph
	push	b
	mov	a,sp
	add	a,#0x3a
	mov	sp,a
;	FatDrivers/tff.c:989: BYTE *rbuff = buff;
;	genAssign
	mov	a,_bp
	add	a,#0xfffffffb
	mov	r0,a
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
;	genAssign
	mov	a,_bp
	add	a,#0x12
	mov	r0,a
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	FatDrivers/tff.c:991: FATFS *fs = fp->fs;
;	genPlus
	mov	r0,_bp
	inc	r0
;     genPlusIncr
	mov	a,#0x04
	add	a,@r0
	mov	r5,a
;	Peephole 181	changed mov to clr
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
;	genAssign
	mov	a,_bp
	add	a,#0x15
	mov	r0,a
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	FatDrivers/tff.c:994: *br = 0;
;	genAssign
	mov	a,_bp
	add	a,#0xfffffff6
	mov	r0,a
	mov	a,_bp
	add	a,#0x18
	mov	r1,a
	mov	a,@r0
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
;	genPointerSet
;	genGenPointerSet
	mov	a,_bp
	add	a,#0x18
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
;	Peephole 181	changed mov to clr
	clr	a
	lcall	__gptrput
	inc	dptr
;	Peephole 181	changed mov to clr
	clr	a
	lcall	__gptrput
;	FatDrivers/tff.c:995: res = validate(fs, fp->id);						/* Check validity of the object */
;	genPointerGet
;	genGenPointerGet
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
;	genIpush
	push	ar2
	push	ar3
;	genCall
	mov	a,_bp
	add	a,#0x15
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_validate
	mov	r2,dpl
	dec	sp
	dec	sp
;	genAssign
;	FatDrivers/tff.c:996: if (res != FR_OK) return res;
;	genCmpEq
;	gencjneshort
	cjne	r2,#0x00,00152$
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00102$
00152$:
;	genRet
	mov	dpl,r2
	ljmp	00132$
00102$:
;	FatDrivers/tff.c:997: if (fp->flag & FA__ERROR) return FR_RW_ERROR;	/* Check error flag */
;	genPlus
	mov	r0,_bp
	inc	r0
	mov	a,_bp
	add	a,#0x38
	mov	r1,a
;     genPlusIncr
	mov	a,#0x02
	add	a,@r0
	mov	@r1,a
;	Peephole 181	changed mov to clr
	clr	a
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
;	genPointerGet
;	genGenPointerGet
	mov	a,_bp
	add	a,#0x38
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
;	genAnd
	mov	r2,a
;	Peephole 105	removed redundant mov
;	genIfxJump
;	Peephole 108.d	removed ljmp by inverse jump logic
	jnb	acc.7,00104$
;	Peephole 300	removed redundant label 00153$
;	genRet
	mov	dpl,#0x08
	ljmp	00132$
00104$:
;	FatDrivers/tff.c:998: if (!(fp->flag & FA_READ)) return FR_DENIED;	/* Check access mode */
;	genAnd
	mov	a,r2
;	genIfxJump
;	Peephole 108.e	removed ljmp by inverse jump logic
	jb	acc.0,00106$
;	Peephole 300	removed redundant label 00154$
;	genRet
	mov	dpl,#0x06
	ljmp	00132$
00106$:
;	FatDrivers/tff.c:999: remain = fp->fsize - fp->fptr;
;	genIpush
;	genPlus
	mov	r0,_bp
	inc	r0
;     genPlusIncr
	mov	a,#0x0B
	add	a,@r0
	mov	r2,a
;	Peephole 181	changed mov to clr
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,_bp
	add	a,#0x1e
	mov	r0,a
	lcall	__gptrget
	mov	@r0,a
	inc	dptr
	lcall	__gptrget
	inc	r0
	mov	@r0,a
	inc	dptr
	lcall	__gptrget
	inc	r0
	mov	@r0,a
	inc	dptr
	lcall	__gptrget
	inc	r0
	mov	@r0,a
;	genPlus
	mov	r0,_bp
	inc	r0
	mov	a,_bp
	add	a,#0x1b
	mov	r1,a
;     genPlusIncr
	mov	a,#0x07
	add	a,@r0
	mov	@r1,a
;	Peephole 181	changed mov to clr
	clr	a
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
;	genPointerGet
;	genGenPointerGet
	mov	a,_bp
	add	a,#0x1b
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	inc	dptr
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
;	genMinus
	mov	a,_bp
	add	a,#0x1e
	mov	r0,a
	mov	a,@r0
	clr	c
;	Peephole 236.l	used r6 instead of ar6
	subb	a,r6
	mov	r6,a
	inc	r0
	mov	a,@r0
;	Peephole 236.l	used r7 instead of ar7
	subb	a,r7
	mov	r7,a
	inc	r0
	mov	a,@r0
;	Peephole 236.l	used r2 instead of ar2
	subb	a,r2
	mov	r2,a
	inc	r0
	mov	a,@r0
;	Peephole 236.l	used r3 instead of ar3
	subb	a,r3
	mov	r3,a
;	genAssign
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
	inc	r0
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
;	FatDrivers/tff.c:1000: if (btr > remain) btr = (WORD)remain;			/* Truncate read count by number of bytes left */
;	genCast
	mov	a,_bp
	add	a,#0xfffffff9
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
;	genCmpGt
;	Peephole 3.c	changed mov to clr
	clr	a
	mov	r4,a
	mov	r5,a
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
;	genCmp
	clr	c
	mov	a,@r0
	subb	a,r2
	inc	r0
	mov	a,@r0
	subb	a,r3
	inc	r0
	mov	a,@r0
	subb	a,r4
	inc	r0
	mov	a,@r0
	subb	a,r5
;	genIpop
;	genIfx
;	genIfxJump
;	Peephole 108.c	removed ljmp by inverse jump logic
;	Peephole 128	jump optimization
	jnc	00151$
;	Peephole 300	removed redundant label 00155$
;	genCast
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	a,_bp
	add	a,#0xfffffff9
	mov	r1,a
	mov	a,@r0
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
00151$:
;	genPlus
	mov	r0,_bp
	inc	r0
	mov	a,_bp
	add	a,#0x35
	mov	r1,a
;     genPlusIncr
	mov	a,#0x13
	add	a,@r0
	mov	@r1,a
;	Peephole 181	changed mov to clr
	clr	a
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
;	genPlus
	mov	r0,_bp
	inc	r0
	mov	a,_bp
	add	a,#0x1e
	mov	r1,a
;     genPlusIncr
	mov	a,#0x0F
	add	a,@r0
	mov	@r1,a
;	Peephole 181	changed mov to clr
	clr	a
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
;	genPlus
	mov	a,_bp
	add	a,#0x15
	mov	r0,a
	mov	a,_bp
	add	a,#0x22
	mov	r1,a
;     genPlusIncr
	mov	a,#0x18
	add	a,@r0
	mov	@r1,a
;	Peephole 181	changed mov to clr
	clr	a
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
;	genPlus
	mov	a,_bp
	add	a,#0x15
	mov	r0,a
	mov	a,_bp
	add	a,#0x25
	mov	r1,a
;     genPlusIncr
	mov	a,#0x1D
	add	a,@r0
	mov	@r1,a
;	Peephole 181	changed mov to clr
	clr	a
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
;	genPlus
	mov	r0,_bp
	inc	r0
	mov	a,_bp
	add	a,#0x28
	mov	r1,a
;     genPlusIncr
	mov	a,#0x17
	add	a,@r0
	mov	@r1,a
;	Peephole 181	changed mov to clr
	clr	a
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
;	genPlus
	mov	a,_bp
	add	a,#0x15
	mov	r0,a
	mov	a,_bp
	add	a,#0x2b
	mov	r1,a
;     genPlusIncr
	mov	a,#0x20
	add	a,@r0
	mov	@r1,a
;	Peephole 181	changed mov to clr
	clr	a
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
00127$:
;	FatDrivers/tff.c:1002: for ( ;  btr;									/* Repeat until all data transferred */
;	genIfx
	mov	a,_bp
	add	a,#0xfffffff9
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
;	genIfxJump
	jnz	00156$
	ljmp	00130$
00156$:
;	FatDrivers/tff.c:1004: if ((fp->fptr % 512) == 0) {				/* On the sector boundary */
;	genPointerGet
;	genGenPointerGet
	mov	a,_bp
	add	a,#0x1b
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
;	genAnd
	mov	a,r3
	jnz	00157$
	mov	a,r4
;	Peephole 160.f	removed sjmp by inverse jump logic
	jnb	acc.0,00158$
00157$:
	ljmp	00122$
00158$:
;	FatDrivers/tff.c:1005: if (--fp->sect_clust) {					/* Decrement left sector counter */
;	genIpush
;	genPlus
	mov	r0,_bp
	inc	r0
	mov	a,_bp
	add	a,#0x32
	mov	r1,a
;     genPlusIncr
	mov	a,#0x03
	add	a,@r0
	mov	@r1,a
;	Peephole 181	changed mov to clr
	clr	a
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
;	genPointerGet
;	genGenPointerGet
	mov	a,_bp
	add	a,#0x32
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r2,a
;	genMinus
;	genMinusDec
	dec	r2
;	genPointerSet
;	genGenPointerSet
	mov	a,_bp
	add	a,#0x32
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
;	genIfx
	mov	a,r2
	lcall	__gptrput
;	Peephole 190	removed redundant mov
;	genIpop
;	genIfxJump
;	Peephole 108.c	removed ljmp by inverse jump logic
	jz	00113$
;	Peephole 300	removed redundant label 00159$
;	FatDrivers/tff.c:1006: sect = fp->curr_sect + 1;			/* Get current sector */
;	genIpush
;	genPointerGet
;	genGenPointerGet
	mov	a,_bp
	add	a,#0x28
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
;	genPlus
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
;     genPlusIncr
	mov	a,#0x01
;	Peephole 236.a	used r2 instead of ar2
	add	a,r2
	mov	@r0,a
;	Peephole 181	changed mov to clr
	clr	a
;	Peephole 236.b	used r3 instead of ar3
	addc	a,r3
	inc	r0
	mov	@r0,a
;	Peephole 181	changed mov to clr
	clr	a
;	Peephole 236.b	used r4 instead of ar4
	addc	a,r4
	inc	r0
	mov	@r0,a
;	Peephole 181	changed mov to clr
	clr	a
;	Peephole 236.b	used r5 instead of ar5
	addc	a,r5
	inc	r0
	mov	@r0,a
;	genIpop
	ljmp	00114$
00113$:
;	FatDrivers/tff.c:1008: clust = (fp->fptr == 0) ?
;	genNot
	mov	a,r3
	orl	a,r4
	orl	a,r5
	orl	a,r6
	cjne	a,#0x01,00160$
00160$:
	clr	a
	rlc	a
;	genIfx
	mov	r5,a
;	Peephole 105	removed redundant mov
;	genIfxJump
;	Peephole 108.c	removed ljmp by inverse jump logic
	jz	00134$
;	Peephole 300	removed redundant label 00161$
;	FatDrivers/tff.c:1009: fp->org_clust : get_cluster(fp->curr_clust);
;	genPointerGet
;	genGenPointerGet
	mov	a,_bp
	add	a,#0x1e
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	inc	dptr
	lcall	__gptrget
	mov	r2,a
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00135$
00134$:
;	genPointerGet
;	genGenPointerGet
	mov	a,_bp
	add	a,#0x35
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
;	genCall
	mov	r5,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
;	Peephole 191	removed redundant mov
	lcall	_get_cluster
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	mov	r2,a
00135$:
;	genAssign
	mov	a,_bp
	add	a,#0x0e
	mov	r0,a
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
	inc	r0
	mov	@r0,ar2
;	FatDrivers/tff.c:1010: if (clust < 2 || clust >= fs->max_clust)
;	genCmpLt
	mov	a,_bp
	add	a,#0x0e
	mov	r0,a
;	genCmp
	clr	c
	mov	a,@r0
	subb	a,#0x02
	inc	r0
	mov	a,@r0
	subb	a,#0x00
	inc	r0
	mov	a,@r0
	subb	a,#0x00
	inc	r0
	mov	a,@r0
	subb	a,#0x00
;	genIfxJump
	jnc	00162$
	ljmp	00131$
00162$:
;	genPointerGet
;	genGenPointerGet
	mov	a,_bp
	add	a,#0x22
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	inc	dptr
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
;	genCmpLt
	mov	a,_bp
	add	a,#0x0e
	mov	r0,a
;	genCmp
	clr	c
	mov	a,@r0
	subb	a,r6
	inc	r0
	mov	a,@r0
	subb	a,r7
	inc	r0
	mov	a,@r0
	subb	a,r2
	inc	r0
	mov	a,@r0
	subb	a,r3
;	genIfxJump
	jc	00163$
	ljmp	00131$
00163$:
;	FatDrivers/tff.c:1012: fp->curr_clust = clust;				/* Current cluster */
;	genPointerSet
;	genGenPointerSet
	mov	a,_bp
	add	a,#0x35
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,_bp
	add	a,#0x0e
	mov	r1,a
	mov	a,@r1
	lcall	__gptrput
	inc	dptr
	inc	r1
	mov	a,@r1
	lcall	__gptrput
	inc	dptr
	inc	r1
	mov	a,@r1
	lcall	__gptrput
	inc	dptr
	inc	r1
	mov	a,@r1
	lcall	__gptrput
;	FatDrivers/tff.c:1013: sect = clust2sect(clust);			/* Get current sector */
;	genCall
	mov	a,_bp
	add	a,#0x0e
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	r0
	mov	a,@r0
	lcall	_clust2sect
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
;	genAssign
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
;	FatDrivers/tff.c:1014: fp->sect_clust = fs->sects_clust;	/* Re-initialize the left sector counter */
;	genPointerGet
;	genGenPointerGet
	mov	a,_bp
	add	a,#0x25
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r2,a
;	genPointerSet
;	genGenPointerSet
	mov	a,_bp
	add	a,#0x32
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r2
	lcall	__gptrput
00114$:
;	FatDrivers/tff.c:1016: fp->curr_sect = sect;					/* Update current sector */
;	genPointerSet
;	genGenPointerSet
	mov	a,_bp
	add	a,#0x28
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,_bp
	add	a,#0x04
	mov	r1,a
	mov	a,@r1
	lcall	__gptrput
	inc	dptr
	inc	r1
	mov	a,@r1
	lcall	__gptrput
	inc	dptr
	inc	r1
	mov	a,@r1
	lcall	__gptrput
	inc	dptr
	inc	r1
	mov	a,@r1
	lcall	__gptrput
;	FatDrivers/tff.c:1017: cc = btr / 512;							/* When left bytes >= 512, */
;	genRightShift
;	genRightShiftLiteral
	mov	a,_bp
	add	a,#0xfffffff9
;	genrshTwo
;	Peephole 185	changed order of increment (acc incremented also!)
	inc	a
	mov	r0,a
	mov	a,@r0
	clr	c
	rrc	a
;	FatDrivers/tff.c:1018: if (cc) {								/* Read maximum contiguous sectors directly */
;	genIfx
	mov	r6,a
	mov	r7,#0x00
;	Peephole 177.d	removed redundant move
	orl	a,r7
;	genIfxJump
	jnz	00164$
	ljmp	00122$
00164$:
;	FatDrivers/tff.c:1019: if (cc > fp->sect_clust) cc = fp->sect_clust;
;	genPointerGet
;	genGenPointerGet
	mov	a,_bp
	add	a,#0x32
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r4,a
;	genCast
	mov	r5,#0x00
;	genCmpGt
;	genCmp
	clr	c
	mov	a,r4
	subb	a,r6
	mov	a,r5
	subb	a,r7
;	genIfxJump
;	Peephole 108.a	removed ljmp by inverse jump logic
	jnc	00116$
;	Peephole 300	removed redundant label 00165$
;	genPointerGet
;	genGenPointerGet
	mov	a,_bp
	add	a,#0x32
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r4,a
;	genCast
	mov	ar6,r4
	mov	r7,#0x00
00116$:
;	FatDrivers/tff.c:1020: if(disk_mp3_read(0, rbuff, sect, (BYTE)cc) != RES_OK)
;	genCast
	mov	ar4,r6
;	genIpush
	push	ar4
	push	ar6
	push	ar7
	push	ar4
;	genIpush
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
;	genIpush
	mov	a,_bp
	add	a,#0x12
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
;	genCall
	mov	dpl,#0x00
	lcall	_disk_mp3_read
	mov	r5,dpl
	mov	a,sp
	add	a,#0xf8
	mov	sp,a
	pop	ar7
	pop	ar6
	pop	ar4
;	genCmpEq
;	gencjneshort
	cjne	r5,#0x00,00166$
	sjmp	00167$
00166$:
	ljmp	00131$
00167$:
;	FatDrivers/tff.c:1022: fp->sect_clust -= (BYTE)(cc - 1);
;	genPointerGet
;	genGenPointerGet
	mov	a,_bp
	add	a,#0x32
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r5,a
;	genMinus
;	genMinusDec
	mov	a,r4
	dec	a
;	genMinus
	setb	c
;	Peephole 236.l	used r5 instead of ar5
	subb	a,r5
	cpl	a
	mov	r5,a
;	genPointerSet
;	genGenPointerSet
	mov	a,_bp
	add	a,#0x32
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r5
	lcall	__gptrput
;	FatDrivers/tff.c:1023: fp->curr_sect += cc - 1;
;	genPointerGet
;	genGenPointerGet
	mov	a,_bp
	add	a,#0x28
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,_bp
	add	a,#0x2e
	mov	r1,a
	lcall	__gptrget
	mov	@r1,a
	inc	dptr
	lcall	__gptrget
	inc	r1
	mov	@r1,a
	inc	dptr
	lcall	__gptrget
	inc	r1
	mov	@r1,a
	inc	dptr
	lcall	__gptrget
	inc	r1
	mov	@r1,a
;	genMinus
;	genMinusDec
	mov	a,r6
	add	a,#0xff
	mov	r2,a
	mov	a,r7
	addc	a,#0xff
	mov	r3,a
;	genCast
;	genPlus
;	Peephole 3.c	changed mov to clr
	clr	a
	mov	r4,a
	mov	r5,a
	mov	a,_bp
	add	a,#0x2e
	mov	r0,a
;	Peephole 236.g	used r2 instead of ar2
	mov	a,r2
	add	a,@r0
	mov	r2,a
;	Peephole 236.g	used r3 instead of ar3
	mov	a,r3
	inc	r0
	addc	a,@r0
	mov	r3,a
;	Peephole 236.g	used r4 instead of ar4
	mov	a,r4
	inc	r0
	addc	a,@r0
	mov	r4,a
;	Peephole 236.g	used r5 instead of ar5
	mov	a,r5
	inc	r0
	addc	a,@r0
	mov	r5,a
;	genPointerSet
;	genGenPointerSet
	mov	a,_bp
	add	a,#0x28
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
	inc	dptr
	mov	a,r5
	lcall	__gptrput
;	FatDrivers/tff.c:1024: rcnt = cc * 512;
;	genLeftShift
;	genLeftShiftLiteral
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
;	genlshTwo
	mov	a,r6
;	Peephole 254	optimized left shift
	add	a,r6
	inc	r0
	mov	@r0,a
	dec	r0
	mov	@r0,#0x00
;	FatDrivers/tff.c:1025: continue;
	ljmp	00129$
00122$:
;	FatDrivers/tff.c:1028: if (!move_window(fp->curr_sect)) goto fr_error;	/* Move sector window */
;	genPointerGet
;	genGenPointerGet
	mov	a,_bp
	add	a,#0x28
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
;	genCall
	mov	r7,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
;	Peephole 191	removed redundant mov
	lcall	_move_window
	mov	a,dpl
;	genIfx
;	genIfxJump
	jnz	00168$
	ljmp	00131$
00168$:
;	FatDrivers/tff.c:1029: rcnt = 512 - (WORD)(fp->fptr % 512);			/* Copy fractional bytes from sector window */
;	genPointerGet
;	genGenPointerGet
	mov	a,_bp
	add	a,#0x1b
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
;	genAnd
	anl	ar5,#0x01
;	genCast
;	genMinus
;	Peephole 3.c	changed mov to clr
	clr	a
	mov	r6,a
	mov	r7,a
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
;	Peephole 181	changed mov to clr
	clr	a
	clr	c
;	Peephole 236.l	used r4 instead of ar4
	subb	a,r4
	mov	@r0,a
	mov	a,#0x02
;	Peephole 236.l	used r5 instead of ar5
	subb	a,r5
	inc	r0
	mov	@r0,a
;	FatDrivers/tff.c:1030: if (rcnt > btr) rcnt = btr;
;	genCmpGt
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	a,_bp
	add	a,#0xfffffff9
	mov	r1,a
;	genCmp
	clr	c
	mov	a,@r1
	subb	a,@r0
	inc	r1
	mov	a,@r1
	inc	r0
	subb	a,@r0
;	genIfxJump
;	Peephole 108.a	removed ljmp by inverse jump logic
	jnc	00126$
;	Peephole 300	removed redundant label 00169$
;	genAssign
	mov	a,_bp
	add	a,#0xfffffff9
	mov	r0,a
	mov	a,_bp
	add	a,#0x0c
	mov	r1,a
	mov	a,@r0
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
00126$:
;	FatDrivers/tff.c:1031: memcpy(rbuff, &fs->win[(WORD)fp->fptr % 512], rcnt);
;	genPointerGet
;	genGenPointerGet
	mov	a,_bp
	add	a,#0x1b
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
;	genCast
;	genAnd
	anl	ar5,#0x01
;	genPlus
	mov	a,_bp
	add	a,#0x2b
	mov	r0,a
;	Peephole 236.g	used r4 instead of ar4
	mov	a,r4
	add	a,@r0
	mov	r4,a
;	Peephole 236.g	used r5 instead of ar5
	mov	a,r5
	inc	r0
	addc	a,@r0
	mov	r5,a
	inc	r0
	mov	ar6,@r0
;	genIpush
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
;	genIpush
	push	ar4
	push	ar5
	push	ar6
;	genCall
	mov	a,_bp
	add	a,#0x12
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_memcpy
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
00129$:
;	FatDrivers/tff.c:1003: rbuff += rcnt, fp->fptr += rcnt, *br += rcnt, btr -= rcnt) {
;	genPlus
	mov	a,_bp
	add	a,#0x12
	mov	r0,a
	mov	a,_bp
	add	a,#0x0c
	mov	r1,a
	mov	a,@r1
	add	a,@r0
	mov	@r0,a
	inc	r1
	mov	a,@r1
	inc	r0
	addc	a,@r0
	mov	@r0,a
;	genPointerGet
;	genGenPointerGet
	mov	a,_bp
	add	a,#0x1b
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,_bp
	add	a,#0x2e
	mov	r1,a
	lcall	__gptrget
	mov	@r1,a
	inc	dptr
	lcall	__gptrget
	inc	r1
	mov	@r1,a
	inc	dptr
	lcall	__gptrget
	inc	r1
	mov	@r1,a
	inc	dptr
	lcall	__gptrget
	inc	r1
	mov	@r1,a
;	genCast
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
;	genPlus
;	Peephole 3.c	changed mov to clr
	clr	a
	mov	r4,a
	mov	r5,a
	mov	a,_bp
	add	a,#0x2e
	mov	r0,a
;	Peephole 236.g	used r2 instead of ar2
	mov	a,r2
	add	a,@r0
	mov	r2,a
;	Peephole 236.g	used r3 instead of ar3
	mov	a,r3
	inc	r0
	addc	a,@r0
	mov	r3,a
;	Peephole 236.g	used r4 instead of ar4
	mov	a,r4
	inc	r0
	addc	a,@r0
	mov	r4,a
;	Peephole 236.g	used r5 instead of ar5
	mov	a,r5
	inc	r0
	addc	a,@r0
	mov	r5,a
;	genPointerSet
;	genGenPointerSet
	mov	a,_bp
	add	a,#0x1b
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
	inc	dptr
	mov	a,r5
	lcall	__gptrput
;	genPointerGet
;	genGenPointerGet
	mov	a,_bp
	add	a,#0x18
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
;	genPlus
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	a,@r0
;	Peephole 236.a	used r2 instead of ar2
	add	a,r2
	mov	r2,a
	inc	r0
	mov	a,@r0
;	Peephole 236.b	used r3 instead of ar3
	addc	a,r3
	mov	r3,a
;	genPointerSet
;	genGenPointerSet
	mov	a,_bp
	add	a,#0x18
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
;	genMinus
	mov	a,_bp
	add	a,#0xfffffff9
	mov	r0,a
	mov	a,_bp
	add	a,#0x0c
	mov	r1,a
	mov	a,@r0
	clr	c
	subb	a,@r1
	mov	@r0,a
	inc	r0
	mov	a,@r0
	inc	r1
	subb	a,@r1
	mov	@r0,a
	ljmp	00127$
00130$:
;	FatDrivers/tff.c:1034: return FR_OK;
;	genRet
	mov	dpl,#0x00
;	FatDrivers/tff.c:1036: fr_error:	/* Abort this function due to an unrecoverable error */
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00132$
00131$:
;	FatDrivers/tff.c:1037: fp->flag |= FA__ERROR;
;	genPointerGet
;	genGenPointerGet
	mov	a,_bp
	add	a,#0x38
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r2,a
;	genOr
	orl	ar2,#0x80
;	genPointerSet
;	genGenPointerSet
	mov	a,_bp
	add	a,#0x38
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r2
	lcall	__gptrput
;	FatDrivers/tff.c:1038: return FR_RW_ERROR;
;	genRet
	mov	dpl,#0x08
00132$:
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'f_txt_read'
;------------------------------------------------------------
;buff                      Allocated to stack - offset -5
;btr                       Allocated to stack - offset -7
;br                        Allocated to stack - offset -10
;fp                        Allocated to stack - offset 1
;sect                      Allocated to stack - offset 4
;remain                    Allocated to stack - offset 8
;rcnt                      Allocated to stack - offset 12
;cc                        Allocated to registers r6 r7 
;clust                     Allocated to stack - offset 14
;rbuff                     Allocated to stack - offset 18
;res                       Allocated to registers r2 
;fs                        Allocated to stack - offset 21
;sloc0                     Allocated to stack - offset 27
;sloc1                     Allocated to stack - offset 24
;sloc2                     Allocated to stack - offset 27
;sloc3                     Allocated to stack - offset 30
;sloc4                     Allocated to stack - offset 34
;sloc5                     Allocated to stack - offset 37
;sloc6                     Allocated to stack - offset 40
;sloc7                     Allocated to stack - offset 43
;sloc8                     Allocated to stack - offset 46
;sloc9                     Allocated to stack - offset 50
;sloc10                    Allocated to stack - offset 53
;sloc11                    Allocated to stack - offset 56
;------------------------------------------------------------
;	FatDrivers/tff.c:1045: FRESULT f_txt_read (
;	-----------------------------------------
;	 function f_txt_read
;	-----------------------------------------
_f_txt_read:
	push	_bp
	mov	_bp,sp
;     genReceive
	push	dpl
	push	dph
	push	b
	mov	a,sp
	add	a,#0x3a
	mov	sp,a
;	FatDrivers/tff.c:1055: BYTE *rbuff = buff;
;	genAssign
	mov	a,_bp
	add	a,#0xfffffffb
	mov	r0,a
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
;	genAssign
	mov	a,_bp
	add	a,#0x12
	mov	r0,a
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	FatDrivers/tff.c:1057: FATFS *fs = fp->fs;
;	genPlus
	mov	r0,_bp
	inc	r0
;     genPlusIncr
	mov	a,#0x04
	add	a,@r0
	mov	r5,a
;	Peephole 181	changed mov to clr
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
;	genAssign
	mov	a,_bp
	add	a,#0x15
	mov	r0,a
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	FatDrivers/tff.c:1060: *br = 0;
;	genAssign
	mov	a,_bp
	add	a,#0xfffffff6
	mov	r0,a
	mov	a,_bp
	add	a,#0x18
	mov	r1,a
	mov	a,@r0
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
;	genPointerSet
;	genGenPointerSet
	mov	a,_bp
	add	a,#0x18
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
;	Peephole 181	changed mov to clr
	clr	a
	lcall	__gptrput
	inc	dptr
;	Peephole 181	changed mov to clr
	clr	a
	lcall	__gptrput
;	FatDrivers/tff.c:1061: res = validate(fs, fp->id);						/* Check validity of the object */
;	genPointerGet
;	genGenPointerGet
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
;	genIpush
	push	ar2
	push	ar3
;	genCall
	mov	a,_bp
	add	a,#0x15
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_validate
	mov	r2,dpl
	dec	sp
	dec	sp
;	genAssign
;	FatDrivers/tff.c:1062: if (res != FR_OK) return res;
;	genCmpEq
;	gencjneshort
	cjne	r2,#0x00,00152$
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00102$
00152$:
;	genRet
	mov	dpl,r2
	ljmp	00132$
00102$:
;	FatDrivers/tff.c:1063: if (fp->flag & FA__ERROR) return FR_RW_ERROR;	/* Check error flag */
;	genPlus
	mov	r0,_bp
	inc	r0
	mov	a,_bp
	add	a,#0x38
	mov	r1,a
;     genPlusIncr
	mov	a,#0x02
	add	a,@r0
	mov	@r1,a
;	Peephole 181	changed mov to clr
	clr	a
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
;	genPointerGet
;	genGenPointerGet
	mov	a,_bp
	add	a,#0x38
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
;	genAnd
	mov	r2,a
;	Peephole 105	removed redundant mov
;	genIfxJump
;	Peephole 108.d	removed ljmp by inverse jump logic
	jnb	acc.7,00104$
;	Peephole 300	removed redundant label 00153$
;	genRet
	mov	dpl,#0x08
	ljmp	00132$
00104$:
;	FatDrivers/tff.c:1064: if (!(fp->flag & FA_READ)) return FR_DENIED;	/* Check access mode */
;	genAnd
	mov	a,r2
;	genIfxJump
;	Peephole 108.e	removed ljmp by inverse jump logic
	jb	acc.0,00106$
;	Peephole 300	removed redundant label 00154$
;	genRet
	mov	dpl,#0x06
	ljmp	00132$
00106$:
;	FatDrivers/tff.c:1065: remain = fp->fsize - fp->fptr;
;	genIpush
;	genPlus
	mov	r0,_bp
	inc	r0
;     genPlusIncr
	mov	a,#0x0B
	add	a,@r0
	mov	r2,a
;	Peephole 181	changed mov to clr
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,_bp
	add	a,#0x1e
	mov	r0,a
	lcall	__gptrget
	mov	@r0,a
	inc	dptr
	lcall	__gptrget
	inc	r0
	mov	@r0,a
	inc	dptr
	lcall	__gptrget
	inc	r0
	mov	@r0,a
	inc	dptr
	lcall	__gptrget
	inc	r0
	mov	@r0,a
;	genPlus
	mov	r0,_bp
	inc	r0
	mov	a,_bp
	add	a,#0x1b
	mov	r1,a
;     genPlusIncr
	mov	a,#0x07
	add	a,@r0
	mov	@r1,a
;	Peephole 181	changed mov to clr
	clr	a
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
;	genPointerGet
;	genGenPointerGet
	mov	a,_bp
	add	a,#0x1b
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	inc	dptr
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
;	genMinus
	mov	a,_bp
	add	a,#0x1e
	mov	r0,a
	mov	a,@r0
	clr	c
;	Peephole 236.l	used r6 instead of ar6
	subb	a,r6
	mov	r6,a
	inc	r0
	mov	a,@r0
;	Peephole 236.l	used r7 instead of ar7
	subb	a,r7
	mov	r7,a
	inc	r0
	mov	a,@r0
;	Peephole 236.l	used r2 instead of ar2
	subb	a,r2
	mov	r2,a
	inc	r0
	mov	a,@r0
;	Peephole 236.l	used r3 instead of ar3
	subb	a,r3
	mov	r3,a
;	genAssign
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
	inc	r0
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
;	FatDrivers/tff.c:1066: if (btr > remain) btr = (WORD)remain;			/* Truncate read count by number of bytes left */
;	genCast
	mov	a,_bp
	add	a,#0xfffffff9
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
;	genCmpGt
;	Peephole 3.c	changed mov to clr
	clr	a
	mov	r4,a
	mov	r5,a
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
;	genCmp
	clr	c
	mov	a,@r0
	subb	a,r2
	inc	r0
	mov	a,@r0
	subb	a,r3
	inc	r0
	mov	a,@r0
	subb	a,r4
	inc	r0
	mov	a,@r0
	subb	a,r5
;	genIpop
;	genIfx
;	genIfxJump
;	Peephole 108.c	removed ljmp by inverse jump logic
;	Peephole 128	jump optimization
	jnc	00151$
;	Peephole 300	removed redundant label 00155$
;	genCast
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	a,_bp
	add	a,#0xfffffff9
	mov	r1,a
	mov	a,@r0
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
00151$:
;	genPlus
	mov	r0,_bp
	inc	r0
	mov	a,_bp
	add	a,#0x35
	mov	r1,a
;     genPlusIncr
	mov	a,#0x13
	add	a,@r0
	mov	@r1,a
;	Peephole 181	changed mov to clr
	clr	a
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
;	genPlus
	mov	r0,_bp
	inc	r0
	mov	a,_bp
	add	a,#0x1e
	mov	r1,a
;     genPlusIncr
	mov	a,#0x0F
	add	a,@r0
	mov	@r1,a
;	Peephole 181	changed mov to clr
	clr	a
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
;	genPlus
	mov	a,_bp
	add	a,#0x15
	mov	r0,a
	mov	a,_bp
	add	a,#0x22
	mov	r1,a
;     genPlusIncr
	mov	a,#0x18
	add	a,@r0
	mov	@r1,a
;	Peephole 181	changed mov to clr
	clr	a
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
;	genPlus
	mov	a,_bp
	add	a,#0x15
	mov	r0,a
	mov	a,_bp
	add	a,#0x25
	mov	r1,a
;     genPlusIncr
	mov	a,#0x1D
	add	a,@r0
	mov	@r1,a
;	Peephole 181	changed mov to clr
	clr	a
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
;	genPlus
	mov	r0,_bp
	inc	r0
	mov	a,_bp
	add	a,#0x28
	mov	r1,a
;     genPlusIncr
	mov	a,#0x17
	add	a,@r0
	mov	@r1,a
;	Peephole 181	changed mov to clr
	clr	a
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
;	genPlus
	mov	a,_bp
	add	a,#0x15
	mov	r0,a
	mov	a,_bp
	add	a,#0x2b
	mov	r1,a
;     genPlusIncr
	mov	a,#0x20
	add	a,@r0
	mov	@r1,a
;	Peephole 181	changed mov to clr
	clr	a
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
00127$:
;	FatDrivers/tff.c:1068: for ( ;  btr;									/* Repeat until all data transferred */
;	genIfx
	mov	a,_bp
	add	a,#0xfffffff9
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
;	genIfxJump
	jnz	00156$
	ljmp	00130$
00156$:
;	FatDrivers/tff.c:1070: if ((fp->fptr % 512) == 0) {				/* On the sector boundary */
;	genPointerGet
;	genGenPointerGet
	mov	a,_bp
	add	a,#0x1b
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
;	genAnd
	mov	a,r3
	jnz	00157$
	mov	a,r4
;	Peephole 160.f	removed sjmp by inverse jump logic
	jnb	acc.0,00158$
00157$:
	ljmp	00122$
00158$:
;	FatDrivers/tff.c:1071: if (--fp->sect_clust) {					/* Decrement left sector counter */
;	genIpush
;	genPlus
	mov	r0,_bp
	inc	r0
	mov	a,_bp
	add	a,#0x32
	mov	r1,a
;     genPlusIncr
	mov	a,#0x03
	add	a,@r0
	mov	@r1,a
;	Peephole 181	changed mov to clr
	clr	a
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
;	genPointerGet
;	genGenPointerGet
	mov	a,_bp
	add	a,#0x32
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r2,a
;	genMinus
;	genMinusDec
	dec	r2
;	genPointerSet
;	genGenPointerSet
	mov	a,_bp
	add	a,#0x32
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
;	genIfx
	mov	a,r2
	lcall	__gptrput
;	Peephole 190	removed redundant mov
;	genIpop
;	genIfxJump
;	Peephole 108.c	removed ljmp by inverse jump logic
	jz	00113$
;	Peephole 300	removed redundant label 00159$
;	FatDrivers/tff.c:1072: sect = fp->curr_sect + 1;			/* Get current sector */
;	genIpush
;	genPointerGet
;	genGenPointerGet
	mov	a,_bp
	add	a,#0x28
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
;	genPlus
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
;     genPlusIncr
	mov	a,#0x01
;	Peephole 236.a	used r2 instead of ar2
	add	a,r2
	mov	@r0,a
;	Peephole 181	changed mov to clr
	clr	a
;	Peephole 236.b	used r3 instead of ar3
	addc	a,r3
	inc	r0
	mov	@r0,a
;	Peephole 181	changed mov to clr
	clr	a
;	Peephole 236.b	used r4 instead of ar4
	addc	a,r4
	inc	r0
	mov	@r0,a
;	Peephole 181	changed mov to clr
	clr	a
;	Peephole 236.b	used r5 instead of ar5
	addc	a,r5
	inc	r0
	mov	@r0,a
;	genIpop
	ljmp	00114$
00113$:
;	FatDrivers/tff.c:1074: clust = (fp->fptr == 0) ?
;	genNot
	mov	a,r3
	orl	a,r4
	orl	a,r5
	orl	a,r6
	cjne	a,#0x01,00160$
00160$:
	clr	a
	rlc	a
;	genIfx
	mov	r5,a
;	Peephole 105	removed redundant mov
;	genIfxJump
;	Peephole 108.c	removed ljmp by inverse jump logic
	jz	00134$
;	Peephole 300	removed redundant label 00161$
;	FatDrivers/tff.c:1075: fp->org_clust : get_cluster(fp->curr_clust);
;	genPointerGet
;	genGenPointerGet
	mov	a,_bp
	add	a,#0x1e
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	inc	dptr
	lcall	__gptrget
	mov	r2,a
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00135$
00134$:
;	genPointerGet
;	genGenPointerGet
	mov	a,_bp
	add	a,#0x35
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
;	genCall
	mov	r5,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
;	Peephole 191	removed redundant mov
	lcall	_get_cluster
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	mov	r2,a
00135$:
;	genAssign
	mov	a,_bp
	add	a,#0x0e
	mov	r0,a
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
	inc	r0
	mov	@r0,ar2
;	FatDrivers/tff.c:1076: if (clust < 2 || clust >= fs->max_clust)
;	genCmpLt
	mov	a,_bp
	add	a,#0x0e
	mov	r0,a
;	genCmp
	clr	c
	mov	a,@r0
	subb	a,#0x02
	inc	r0
	mov	a,@r0
	subb	a,#0x00
	inc	r0
	mov	a,@r0
	subb	a,#0x00
	inc	r0
	mov	a,@r0
	subb	a,#0x00
;	genIfxJump
	jnc	00162$
	ljmp	00131$
00162$:
;	genPointerGet
;	genGenPointerGet
	mov	a,_bp
	add	a,#0x22
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	inc	dptr
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
;	genCmpLt
	mov	a,_bp
	add	a,#0x0e
	mov	r0,a
;	genCmp
	clr	c
	mov	a,@r0
	subb	a,r6
	inc	r0
	mov	a,@r0
	subb	a,r7
	inc	r0
	mov	a,@r0
	subb	a,r2
	inc	r0
	mov	a,@r0
	subb	a,r3
;	genIfxJump
	jc	00163$
	ljmp	00131$
00163$:
;	FatDrivers/tff.c:1078: fp->curr_clust = clust;				/* Current cluster */
;	genPointerSet
;	genGenPointerSet
	mov	a,_bp
	add	a,#0x35
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,_bp
	add	a,#0x0e
	mov	r1,a
	mov	a,@r1
	lcall	__gptrput
	inc	dptr
	inc	r1
	mov	a,@r1
	lcall	__gptrput
	inc	dptr
	inc	r1
	mov	a,@r1
	lcall	__gptrput
	inc	dptr
	inc	r1
	mov	a,@r1
	lcall	__gptrput
;	FatDrivers/tff.c:1079: sect = clust2sect(clust);			/* Get current sector */
;	genCall
	mov	a,_bp
	add	a,#0x0e
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	r0
	mov	a,@r0
	lcall	_clust2sect
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
;	genAssign
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
;	FatDrivers/tff.c:1080: fp->sect_clust = fs->sects_clust;	/* Re-initialize the left sector counter */
;	genPointerGet
;	genGenPointerGet
	mov	a,_bp
	add	a,#0x25
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r2,a
;	genPointerSet
;	genGenPointerSet
	mov	a,_bp
	add	a,#0x32
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r2
	lcall	__gptrput
00114$:
;	FatDrivers/tff.c:1082: fp->curr_sect = sect;					/* Update current sector */
;	genPointerSet
;	genGenPointerSet
	mov	a,_bp
	add	a,#0x28
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,_bp
	add	a,#0x04
	mov	r1,a
	mov	a,@r1
	lcall	__gptrput
	inc	dptr
	inc	r1
	mov	a,@r1
	lcall	__gptrput
	inc	dptr
	inc	r1
	mov	a,@r1
	lcall	__gptrput
	inc	dptr
	inc	r1
	mov	a,@r1
	lcall	__gptrput
;	FatDrivers/tff.c:1083: cc = btr / 512;							/* When left bytes >= 512, */
;	genRightShift
;	genRightShiftLiteral
	mov	a,_bp
	add	a,#0xfffffff9
;	genrshTwo
;	Peephole 185	changed order of increment (acc incremented also!)
	inc	a
	mov	r0,a
	mov	a,@r0
	clr	c
	rrc	a
;	FatDrivers/tff.c:1084: if (cc) {								/* Read maximum contiguous sectors directly */
;	genIfx
	mov	r6,a
	mov	r7,#0x00
;	Peephole 177.d	removed redundant move
	orl	a,r7
;	genIfxJump
	jnz	00164$
	ljmp	00122$
00164$:
;	FatDrivers/tff.c:1085: if (cc > fp->sect_clust) cc = fp->sect_clust;
;	genPointerGet
;	genGenPointerGet
	mov	a,_bp
	add	a,#0x32
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r4,a
;	genCast
	mov	r5,#0x00
;	genCmpGt
;	genCmp
	clr	c
	mov	a,r4
	subb	a,r6
	mov	a,r5
	subb	a,r7
;	genIfxJump
;	Peephole 108.a	removed ljmp by inverse jump logic
	jnc	00116$
;	Peephole 300	removed redundant label 00165$
;	genPointerGet
;	genGenPointerGet
	mov	a,_bp
	add	a,#0x32
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r4,a
;	genCast
	mov	ar6,r4
	mov	r7,#0x00
00116$:
;	FatDrivers/tff.c:1086: if(disk_txt_read(0, rbuff, sect, (BYTE)cc) != RES_OK)
;	genCast
	mov	ar4,r6
;	genIpush
	push	ar4
	push	ar6
	push	ar7
	push	ar4
;	genIpush
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
;	genIpush
	mov	a,_bp
	add	a,#0x12
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
;	genCall
	mov	dpl,#0x00
	lcall	_disk_txt_read
	mov	r5,dpl
	mov	a,sp
	add	a,#0xf8
	mov	sp,a
	pop	ar7
	pop	ar6
	pop	ar4
;	genCmpEq
;	gencjneshort
	cjne	r5,#0x00,00166$
	sjmp	00167$
00166$:
	ljmp	00131$
00167$:
;	FatDrivers/tff.c:1088: fp->sect_clust -= (BYTE)(cc - 1);
;	genPointerGet
;	genGenPointerGet
	mov	a,_bp
	add	a,#0x32
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r5,a
;	genMinus
;	genMinusDec
	mov	a,r4
	dec	a
;	genMinus
	setb	c
;	Peephole 236.l	used r5 instead of ar5
	subb	a,r5
	cpl	a
	mov	r5,a
;	genPointerSet
;	genGenPointerSet
	mov	a,_bp
	add	a,#0x32
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r5
	lcall	__gptrput
;	FatDrivers/tff.c:1089: fp->curr_sect += cc - 1;
;	genPointerGet
;	genGenPointerGet
	mov	a,_bp
	add	a,#0x28
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,_bp
	add	a,#0x2e
	mov	r1,a
	lcall	__gptrget
	mov	@r1,a
	inc	dptr
	lcall	__gptrget
	inc	r1
	mov	@r1,a
	inc	dptr
	lcall	__gptrget
	inc	r1
	mov	@r1,a
	inc	dptr
	lcall	__gptrget
	inc	r1
	mov	@r1,a
;	genMinus
;	genMinusDec
	mov	a,r6
	add	a,#0xff
	mov	r2,a
	mov	a,r7
	addc	a,#0xff
	mov	r3,a
;	genCast
;	genPlus
;	Peephole 3.c	changed mov to clr
	clr	a
	mov	r4,a
	mov	r5,a
	mov	a,_bp
	add	a,#0x2e
	mov	r0,a
;	Peephole 236.g	used r2 instead of ar2
	mov	a,r2
	add	a,@r0
	mov	r2,a
;	Peephole 236.g	used r3 instead of ar3
	mov	a,r3
	inc	r0
	addc	a,@r0
	mov	r3,a
;	Peephole 236.g	used r4 instead of ar4
	mov	a,r4
	inc	r0
	addc	a,@r0
	mov	r4,a
;	Peephole 236.g	used r5 instead of ar5
	mov	a,r5
	inc	r0
	addc	a,@r0
	mov	r5,a
;	genPointerSet
;	genGenPointerSet
	mov	a,_bp
	add	a,#0x28
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
	inc	dptr
	mov	a,r5
	lcall	__gptrput
;	FatDrivers/tff.c:1090: rcnt = cc * 512;
;	genLeftShift
;	genLeftShiftLiteral
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
;	genlshTwo
	mov	a,r6
;	Peephole 254	optimized left shift
	add	a,r6
	inc	r0
	mov	@r0,a
	dec	r0
	mov	@r0,#0x00
;	FatDrivers/tff.c:1091: continue;
	ljmp	00129$
00122$:
;	FatDrivers/tff.c:1094: if (!move_window(fp->curr_sect)) goto fr_error;	/* Move sector window */
;	genPointerGet
;	genGenPointerGet
	mov	a,_bp
	add	a,#0x28
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
;	genCall
	mov	r7,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
;	Peephole 191	removed redundant mov
	lcall	_move_window
	mov	a,dpl
;	genIfx
;	genIfxJump
	jnz	00168$
	ljmp	00131$
00168$:
;	FatDrivers/tff.c:1095: rcnt = 512 - (WORD)(fp->fptr % 512);			/* Copy fractional bytes from sector window */
;	genPointerGet
;	genGenPointerGet
	mov	a,_bp
	add	a,#0x1b
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
;	genAnd
	anl	ar5,#0x01
;	genCast
;	genMinus
;	Peephole 3.c	changed mov to clr
	clr	a
	mov	r6,a
	mov	r7,a
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
;	Peephole 181	changed mov to clr
	clr	a
	clr	c
;	Peephole 236.l	used r4 instead of ar4
	subb	a,r4
	mov	@r0,a
	mov	a,#0x02
;	Peephole 236.l	used r5 instead of ar5
	subb	a,r5
	inc	r0
	mov	@r0,a
;	FatDrivers/tff.c:1096: if (rcnt > btr) rcnt = btr;
;	genCmpGt
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	a,_bp
	add	a,#0xfffffff9
	mov	r1,a
;	genCmp
	clr	c
	mov	a,@r1
	subb	a,@r0
	inc	r1
	mov	a,@r1
	inc	r0
	subb	a,@r0
;	genIfxJump
;	Peephole 108.a	removed ljmp by inverse jump logic
	jnc	00126$
;	Peephole 300	removed redundant label 00169$
;	genAssign
	mov	a,_bp
	add	a,#0xfffffff9
	mov	r0,a
	mov	a,_bp
	add	a,#0x0c
	mov	r1,a
	mov	a,@r0
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
00126$:
;	FatDrivers/tff.c:1097: memcpy(rbuff, &fs->win[(WORD)fp->fptr % 512], rcnt);
;	genPointerGet
;	genGenPointerGet
	mov	a,_bp
	add	a,#0x1b
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
;	genCast
;	genAnd
	anl	ar5,#0x01
;	genPlus
	mov	a,_bp
	add	a,#0x2b
	mov	r0,a
;	Peephole 236.g	used r4 instead of ar4
	mov	a,r4
	add	a,@r0
	mov	r4,a
;	Peephole 236.g	used r5 instead of ar5
	mov	a,r5
	inc	r0
	addc	a,@r0
	mov	r5,a
	inc	r0
	mov	ar6,@r0
;	genIpush
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
;	genIpush
	push	ar4
	push	ar5
	push	ar6
;	genCall
	mov	a,_bp
	add	a,#0x12
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_memcpy
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
00129$:
;	FatDrivers/tff.c:1069: rbuff += rcnt, fp->fptr += rcnt, *br += rcnt, btr -= rcnt) {
;	genPlus
	mov	a,_bp
	add	a,#0x12
	mov	r0,a
	mov	a,_bp
	add	a,#0x0c
	mov	r1,a
	mov	a,@r1
	add	a,@r0
	mov	@r0,a
	inc	r1
	mov	a,@r1
	inc	r0
	addc	a,@r0
	mov	@r0,a
;	genPointerGet
;	genGenPointerGet
	mov	a,_bp
	add	a,#0x1b
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,_bp
	add	a,#0x2e
	mov	r1,a
	lcall	__gptrget
	mov	@r1,a
	inc	dptr
	lcall	__gptrget
	inc	r1
	mov	@r1,a
	inc	dptr
	lcall	__gptrget
	inc	r1
	mov	@r1,a
	inc	dptr
	lcall	__gptrget
	inc	r1
	mov	@r1,a
;	genCast
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
;	genPlus
;	Peephole 3.c	changed mov to clr
	clr	a
	mov	r4,a
	mov	r5,a
	mov	a,_bp
	add	a,#0x2e
	mov	r0,a
;	Peephole 236.g	used r2 instead of ar2
	mov	a,r2
	add	a,@r0
	mov	r2,a
;	Peephole 236.g	used r3 instead of ar3
	mov	a,r3
	inc	r0
	addc	a,@r0
	mov	r3,a
;	Peephole 236.g	used r4 instead of ar4
	mov	a,r4
	inc	r0
	addc	a,@r0
	mov	r4,a
;	Peephole 236.g	used r5 instead of ar5
	mov	a,r5
	inc	r0
	addc	a,@r0
	mov	r5,a
;	genPointerSet
;	genGenPointerSet
	mov	a,_bp
	add	a,#0x1b
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
	inc	dptr
	mov	a,r5
	lcall	__gptrput
;	genPointerGet
;	genGenPointerGet
	mov	a,_bp
	add	a,#0x18
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
;	genPlus
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	a,@r0
;	Peephole 236.a	used r2 instead of ar2
	add	a,r2
	mov	r2,a
	inc	r0
	mov	a,@r0
;	Peephole 236.b	used r3 instead of ar3
	addc	a,r3
	mov	r3,a
;	genPointerSet
;	genGenPointerSet
	mov	a,_bp
	add	a,#0x18
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
;	genMinus
	mov	a,_bp
	add	a,#0xfffffff9
	mov	r0,a
	mov	a,_bp
	add	a,#0x0c
	mov	r1,a
	mov	a,@r0
	clr	c
	subb	a,@r1
	mov	@r0,a
	inc	r0
	mov	a,@r0
	inc	r1
	subb	a,@r1
	mov	@r0,a
	ljmp	00127$
00130$:
;	FatDrivers/tff.c:1100: return FR_OK;
;	genRet
	mov	dpl,#0x00
;	FatDrivers/tff.c:1102: fr_error:	/* Abort this function due to an unrecoverable error */
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00132$
00131$:
;	FatDrivers/tff.c:1103: fp->flag |= FA__ERROR;
;	genPointerGet
;	genGenPointerGet
	mov	a,_bp
	add	a,#0x38
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r2,a
;	genOr
	orl	ar2,#0x80
;	genPointerSet
;	genGenPointerSet
	mov	a,_bp
	add	a,#0x38
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r2
	lcall	__gptrput
;	FatDrivers/tff.c:1104: return FR_RW_ERROR;
;	genRet
	mov	dpl,#0x08
00132$:
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'f_close'
;------------------------------------------------------------
;fp                        Allocated to registers r2 r3 r4 
;res                       Allocated to registers r5 
;sloc0                     Allocated to stack - offset 1
;------------------------------------------------------------
;	FatDrivers/tff.c:1237: FRESULT f_close (
;	-----------------------------------------
;	 function f_close
;	-----------------------------------------
_f_close:
	push	_bp
	mov	_bp,sp
	inc	sp
	inc	sp
;	genReceive
;	FatDrivers/tff.c:1247: res = validate(fp->fs, fp->id);
;	genPointerGet
;	genGenPointerGet
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
;	Peephole 238.d	removed 3 redundant moves
	mov	r0,_bp
	inc	r0
	lcall	__gptrget
	mov	@r0,a
	inc	dptr
	lcall	__gptrget
	inc	r0
	mov	@r0,a
;	genPlus
;     genPlusIncr
	mov	a,#0x04
;	Peephole 236.a	used r2 instead of ar2
	add	a,r2
	mov	r2,a
;	Peephole 181	changed mov to clr
	clr	a
;	Peephole 236.b	used r3 instead of ar3
	addc	a,r3
	mov	r3,a
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r7,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
;	genIpush
	push	ar2
	push	ar3
	push	ar4
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
;	genCall
	mov	dpl,r7
	mov	dph,r5
	mov	b,r6
	lcall	_validate
	mov	r5,dpl
	dec	sp
	dec	sp
	pop	ar4
	pop	ar3
	pop	ar2
;	genAssign
;	FatDrivers/tff.c:1249: if (res == FR_OK)
;	genIfx
	mov	a,r5
;	genIfxJump
;	Peephole 108.b	removed ljmp by inverse jump logic
	jnz	00102$
;	Peephole 300	removed redundant label 00106$
;	FatDrivers/tff.c:1250: fp->fs = NULL;
;	genPointerSet
;	genGenPointerSet
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
;	Peephole 181	changed mov to clr
	clr	a
	lcall	__gptrput
	inc	dptr
;	Peephole 181	changed mov to clr
	clr	a
	lcall	__gptrput
	inc	dptr
;	Peephole 181	changed mov to clr
	clr	a
	lcall	__gptrput
00102$:
;	FatDrivers/tff.c:1252: return res;
;	genRet
	mov	dpl,r5
;	Peephole 300	removed redundant label 00103$
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'f_lseek'
;------------------------------------------------------------
;ofs                       Allocated to stack - offset -6
;fp                        Allocated to stack - offset 1
;clust                     Allocated to stack - offset 4
;csize                     Allocated to stack - offset 8
;csect                     Allocated to registers r6 
;res                       Allocated to registers r5 
;fs                        Allocated to stack - offset 12
;sloc0                     Allocated to stack - offset 15
;sloc1                     Allocated to stack - offset 19
;sloc2                     Allocated to stack - offset 22
;sloc3                     Allocated to stack - offset 25
;sloc4                     Allocated to stack - offset 28
;sloc5                     Allocated to stack - offset 31
;------------------------------------------------------------
;	FatDrivers/tff.c:1263: FRESULT f_lseek (
;	-----------------------------------------
;	 function f_lseek
;	-----------------------------------------
_f_lseek:
	push	_bp
	mov	_bp,sp
;     genReceive
	push	dpl
	push	dph
	push	b
	mov	a,sp
	add	a,#0x22
	mov	sp,a
;	FatDrivers/tff.c:1272: FATFS *fs = fp->fs;
;	genPlus
	mov	r0,_bp
	inc	r0
;     genPlusIncr
	mov	a,#0x04
	add	a,@r0
	mov	r5,a
;	Peephole 181	changed mov to clr
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
;	genAssign
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	FatDrivers/tff.c:1275: res = validate(fs, fp->id);			/* Check validity of the object */
;	genPointerGet
;	genGenPointerGet
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
;	genIpush
	push	ar5
	push	ar6
;	genCall
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_validate
	mov	r5,dpl
	dec	sp
	dec	sp
;	genAssign
;	FatDrivers/tff.c:1276: if (res != FR_OK) return res;
;	genCmpEq
;	gencjneshort
	cjne	r5,#0x00,00134$
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00102$
00134$:
;	genRet
	mov	dpl,r5
	ljmp	00122$
00102$:
;	FatDrivers/tff.c:1278: if (fp->flag & FA__ERROR) return FR_RW_ERROR;
;	genPlus
	mov	r0,_bp
	inc	r0
	mov	a,_bp
	add	a,#0x19
	mov	r1,a
;     genPlusIncr
	mov	a,#0x02
	add	a,@r0
	mov	@r1,a
;	Peephole 181	changed mov to clr
	clr	a
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
;	genIpush
;	genPointerGet
;	genGenPointerGet
	mov	a,_bp
	add	a,#0x19
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
;	genAnd
	mov	r2,a
;	Peephole 105	removed redundant mov
	anl	a,#0x80
;	genIpop
;	genIfx
;	genIfxJump
;	Peephole 108.c	removed ljmp by inverse jump logic
	jz	00104$
;	Peephole 300	removed redundant label 00135$
;	genRet
	mov	dpl,#0x08
	ljmp	00122$
00104$:
;	FatDrivers/tff.c:1282: if (ofs > fp->fsize)
;	genIpush
;	genPlus
	mov	r0,_bp
	inc	r0
;     genPlusIncr
	mov	a,#0x0B
	add	a,@r0
	mov	r5,a
;	Peephole 181	changed mov to clr
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
;	genCmpGt
	mov	a,_bp
	add	a,#0xfffffffa
	mov	r0,a
;	genCmp
	clr	c
	mov	a,r2
	subb	a,@r0
	mov	a,r3
	inc	r0
	subb	a,@r0
	mov	a,r4
	inc	r0
	subb	a,@r0
	mov	a,r5
	inc	r0
	subb	a,@r0
;	genIpop
;	genIfx
;	genIfxJump
;	Peephole 108.c	removed ljmp by inverse jump logic
;	Peephole 128	jump optimization
	jnc	00106$
;	Peephole 300	removed redundant label 00136$
;	FatDrivers/tff.c:1284: ofs = fp->fsize;
;	genAssign
	mov	a,_bp
	add	a,#0xfffffffa
	mov	r0,a
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
00106$:
;	FatDrivers/tff.c:1285: fp->fptr = 0; fp->sect_clust = 1;		/* Set file R/W pointer to top of the file */
;	genPlus
	mov	r0,_bp
	inc	r0
	mov	a,_bp
	add	a,#0x0f
	mov	r1,a
;     genPlusIncr
	mov	a,#0x07
	add	a,@r0
	mov	@r1,a
;	Peephole 181	changed mov to clr
	clr	a
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
;	genPointerSet
;	genGenPointerSet
	mov	a,_bp
	add	a,#0x0f
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
;	Peephole 181	changed mov to clr
	clr	a
	lcall	__gptrput
	inc	dptr
;	Peephole 181	changed mov to clr
	clr	a
	lcall	__gptrput
	inc	dptr
;	Peephole 181	changed mov to clr
	clr	a
	lcall	__gptrput
	inc	dptr
;	Peephole 181	changed mov to clr
	clr	a
	lcall	__gptrput
;	genPlus
	mov	r0,_bp
	inc	r0
	mov	a,_bp
	add	a,#0x13
	mov	r1,a
;     genPlusIncr
	mov	a,#0x03
	add	a,@r0
	mov	@r1,a
;	Peephole 181	changed mov to clr
	clr	a
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
;	genPointerSet
;	genGenPointerSet
	mov	a,_bp
	add	a,#0x13
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,#0x01
	lcall	__gptrput
;	FatDrivers/tff.c:1288: if (ofs) {
;	genIfx
	mov	a,_bp
	add	a,#0xfffffffa
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	inc	r0
	orl	a,@r0
	inc	r0
	orl	a,@r0
;	genIfxJump
	jnz	00137$
	ljmp	00120$
00137$:
;	FatDrivers/tff.c:1289: clust = fp->org_clust;	/* Get start cluster */
;	genIpush
;	genPlus
	mov	r0,_bp
	inc	r0
;     genPlusIncr
	mov	a,#0x0F
	add	a,@r0
	mov	r5,a
;	Peephole 181	changed mov to clr
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
;	genAssign
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
;	FatDrivers/tff.c:1297: if (clust) {			/* If the file has a cluster chain, it can be followed */
;	genIpop
;	genIfx
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	inc	r0
	orl	a,@r0
	inc	r0
	orl	a,@r0
;	genIfxJump
	jnz	00138$
	ljmp	00120$
00138$:
;	FatDrivers/tff.c:1298: csize = (DWORD)fs->sects_clust * 512;		/* Cluster size in unit of byte */
;	genIpush
;	genPlus
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	a,_bp
	add	a,#0x16
	mov	r1,a
;     genPlusIncr
	mov	a,#0x1D
	add	a,@r0
	mov	@r1,a
;	Peephole 181	changed mov to clr
	clr	a
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
;	genPointerGet
;	genGenPointerGet
	mov	a,_bp
	add	a,#0x16
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r5,a
;	genCast
;	genLeftShift
;	genLeftShiftLiteral
;	Peephole 3.c	changed mov to clr
;	Peephole 3.b	changed mov to clr
	clr	a
	mov	r6,a
	mov	r7,a
	mov	r2,a
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
;	genlshFour
	mov	a,r5
;	Peephole 254	optimized left shift
	add	a,r5
	inc	r0
	mov	@r0,a
	mov	a,r6
	rlc	a
	inc	r0
	mov	@r0,a
	mov	a,r7
	rlc	a
	inc	r0
	mov	@r0,a
	dec	r0
	dec	r0
	dec	r0
	mov	@r0,#0x00
;	FatDrivers/tff.c:1332: return FR_RW_ERROR;
;	genIpop
;	FatDrivers/tff.c:1298: csize = (DWORD)fs->sects_clust * 512;		/* Cluster size in unit of byte */
;	genPlus
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	a,_bp
	add	a,#0x1c
	mov	r1,a
;     genPlusIncr
	mov	a,#0x18
	add	a,@r0
	mov	@r1,a
;	Peephole 181	changed mov to clr
	clr	a
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
00115$:
;	FatDrivers/tff.c:1300: fp->curr_clust = clust;					/* Update current cluster */
;	genIpush
;	genPlus
	mov	r0,_bp
	inc	r0
;     genPlusIncr
	mov	a,#0x13
	add	a,@r0
	mov	r2,a
;	Peephole 181	changed mov to clr
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
;	genPointerSet
;	genGenPointerSet
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
;	FatDrivers/tff.c:1301: if (ofs <= csize) break;
;	genCmpGt
	mov	a,_bp
	add	a,#0xfffffffa
	mov	r0,a
	mov	a,_bp
	add	a,#0x08
	mov	r1,a
;	genCmp
	clr	c
	mov	a,@r1
	subb	a,@r0
	inc	r1
	mov	a,@r1
	inc	r0
	subb	a,@r0
	inc	r1
	mov	a,@r1
	inc	r0
	subb	a,@r0
	inc	r1
	mov	a,@r1
	inc	r0
	subb	a,@r0
;	genIpop
;	genIfx
;	genIfxJump
;	Peephole 129.a	jump optimization
	jc	00139$
	ljmp	00116$
00139$:
;	FatDrivers/tff.c:1307: clust = get_cluster(clust);			/* Only follow cluster chain if not in write mode */
;	genIpush
;	genCall
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	r0
	mov	a,@r0
	lcall	_get_cluster
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
;	genAssign
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
;	FatDrivers/tff.c:1308: if (clust == 0) {						/* Stop if could not follow the cluster chain */
;	genIpop
;	genIfx
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	inc	r0
	orl	a,@r0
	inc	r0
	orl	a,@r0
;	genIfxJump
;	Peephole 108.b	removed ljmp by inverse jump logic
	jnz	00110$
;	Peephole 300	removed redundant label 00140$
;	FatDrivers/tff.c:1309: ofs = csize; break;
;	genAssign
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	a,_bp
	add	a,#0xfffffffa
	mov	r1,a
	mov	a,@r0
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	ljmp	00116$
00110$:
;	FatDrivers/tff.c:1311: if (clust == 1 || clust >= fs->max_clust) goto fk_error;
;	genCmpEq
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
;	gencjneshort
	cjne	@r0,#0x01,00141$
	inc	r0
	cjne	@r0,#0x00,00141$
	inc	r0
	cjne	@r0,#0x00,00141$
	inc	r0
	cjne	@r0,#0x00,00141$
	ljmp	00121$
00141$:
;	genPointerGet
;	genGenPointerGet
	mov	a,_bp
	add	a,#0x1c
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	inc	dptr
	lcall	__gptrget
	mov	r2,a
;	genCmpLt
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
;	genCmp
	clr	c
	mov	a,@r0
	subb	a,r5
	inc	r0
	mov	a,@r0
	subb	a,r6
	inc	r0
	mov	a,@r0
	subb	a,r7
	inc	r0
	mov	a,@r0
	subb	a,r2
;	genIfxJump
	jc	00142$
	ljmp	00121$
00142$:
;	FatDrivers/tff.c:1312: fp->fptr += csize;						/* Update R/W pointer */
;	genPointerGet
;	genGenPointerGet
	mov	a,_bp
	add	a,#0x0f
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
;	genPlus
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	a,@r0
;	Peephole 236.a	used r2 instead of ar2
	add	a,r2
	mov	r2,a
	inc	r0
	mov	a,@r0
;	Peephole 236.b	used r3 instead of ar3
	addc	a,r3
	mov	r3,a
	inc	r0
	mov	a,@r0
;	Peephole 236.b	used r4 instead of ar4
	addc	a,r4
	mov	r4,a
	inc	r0
	mov	a,@r0
;	Peephole 236.b	used r5 instead of ar5
	addc	a,r5
	mov	r5,a
;	genPointerSet
;	genGenPointerSet
	mov	a,_bp
	add	a,#0x0f
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
	inc	dptr
	mov	a,r5
	lcall	__gptrput
;	FatDrivers/tff.c:1313: ofs -= csize;
;	genMinus
	mov	a,_bp
	add	a,#0xfffffffa
	mov	r0,a
	mov	a,_bp
	add	a,#0x08
	mov	r1,a
	mov	a,@r0
	clr	c
	subb	a,@r1
	mov	@r0,a
	inc	r0
	mov	a,@r0
	inc	r1
	subb	a,@r1
	mov	@r0,a
	inc	r0
	mov	a,@r0
	inc	r1
	subb	a,@r1
	mov	@r0,a
	inc	r0
	mov	a,@r0
	inc	r1
	subb	a,@r1
	mov	@r0,a
	ljmp	00115$
00116$:
;	FatDrivers/tff.c:1315: csect = (BYTE)((ofs - 1) / 512);			/* Sector offset in the cluster */
;	genMinus
	mov	a,_bp
	add	a,#0xfffffffa
	mov	r0,a
;	genMinusDec
	mov	a,@r0
	add	a,#0xff
	mov	r2,a
	inc	r0
	mov	a,@r0
	addc	a,#0xff
	mov	r3,a
	inc	r0
	mov	a,@r0
	addc	a,#0xff
	mov	r4,a
	inc	r0
	mov	a,@r0
	addc	a,#0xff
;	genRightShift
;	genRightShiftLiteral
;	genrshFour
;	Peephole 105	removed redundant mov
;	Peephole 177.c	removed redundant move
	mov	r5,#0x00
	clr	c
	rrc	a
	xch	a,r4
	rrc	a
	xch	a,r3
	rrc	a
	mov	r2,a
;	genCast
	mov	ar6,r2
;	FatDrivers/tff.c:1316: fp->curr_sect = clust2sect(clust) + csect;	/* Current sector */
;	genPlus
	mov	r0,_bp
	inc	r0
	mov	a,_bp
	add	a,#0x1c
	mov	r1,a
;     genPlusIncr
	mov	a,#0x17
	add	a,@r0
	mov	@r1,a
;	Peephole 181	changed mov to clr
	clr	a
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
;	genCall
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	r0
	mov	a,@r0
	push	ar6
	lcall	_clust2sect
	push	acc
	mov	a,_bp
	add	a,#0x1f
	mov	r0,a
	pop	acc
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
	inc	r0
	mov	@r0,b
	inc	r0
	mov	@r0,a
	pop	ar6
;	genCast
	mov	ar4,r6
;	genPlus
;	Peephole 3.c	changed mov to clr
;	Peephole 3.b	changed mov to clr
	clr	a
	mov	r5,a
	mov	r2,a
	mov	r3,a
	mov	a,_bp
	add	a,#0x1f
	mov	r0,a
;	Peephole 236.g	used r4 instead of ar4
	mov	a,r4
	add	a,@r0
	mov	r4,a
;	Peephole 236.g	used r5 instead of ar5
	mov	a,r5
	inc	r0
	addc	a,@r0
	mov	r5,a
;	Peephole 236.g	used r2 instead of ar2
	mov	a,r2
	inc	r0
	addc	a,@r0
	mov	r2,a
;	Peephole 236.g	used r3 instead of ar3
	mov	a,r3
	inc	r0
	addc	a,@r0
	mov	r3,a
;	genPointerSet
;	genGenPointerSet
	mov	a,_bp
	add	a,#0x1c
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r4
	lcall	__gptrput
	inc	dptr
	mov	a,r5
	lcall	__gptrput
	inc	dptr
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
;	FatDrivers/tff.c:1317: fp->sect_clust = fs->sects_clust - csect;	/* Left sector counter in the cluster */
;	genPointerGet
;	genGenPointerGet
	mov	a,_bp
	add	a,#0x16
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
;	genMinus
	mov	r2,a
;	Peephole 105	removed redundant mov
	clr	c
;	Peephole 236.l	used r6 instead of ar6
	subb	a,r6
	mov	r2,a
;	genPointerSet
;	genGenPointerSet
	mov	a,_bp
	add	a,#0x13
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r2
	lcall	__gptrput
;	FatDrivers/tff.c:1318: fp->fptr += ofs;							/* Update file R/W pointer */
;	genPointerGet
;	genGenPointerGet
	mov	a,_bp
	add	a,#0x0f
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
;	genPlus
	mov	a,_bp
	add	a,#0xfffffffa
	mov	r0,a
	mov	a,@r0
;	Peephole 236.a	used r2 instead of ar2
	add	a,r2
	mov	r2,a
	inc	r0
	mov	a,@r0
;	Peephole 236.b	used r3 instead of ar3
	addc	a,r3
	mov	r3,a
	inc	r0
	mov	a,@r0
;	Peephole 236.b	used r4 instead of ar4
	addc	a,r4
	mov	r4,a
	inc	r0
	mov	a,@r0
;	Peephole 236.b	used r5 instead of ar5
	addc	a,r5
	mov	r5,a
;	genPointerSet
;	genGenPointerSet
	mov	a,_bp
	add	a,#0x0f
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
	inc	dptr
	mov	a,r5
	lcall	__gptrput
00120$:
;	FatDrivers/tff.c:1328: return FR_OK;
;	genRet
	mov	dpl,#0x00
;	FatDrivers/tff.c:1330: fk_error:	/* Abort this function due to an unrecoverable error */
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00122$
00121$:
;	FatDrivers/tff.c:1331: fp->flag |= FA__ERROR;
;	genPointerGet
;	genGenPointerGet
	mov	a,_bp
	add	a,#0x19
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r2,a
;	genOr
	orl	ar2,#0x80
;	genPointerSet
;	genGenPointerSet
	mov	a,_bp
	add	a,#0x19
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r2
	lcall	__gptrput
;	FatDrivers/tff.c:1332: return FR_RW_ERROR;
;	genRet
	mov	dpl,#0x08
00122$:
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'f_opendir'
;------------------------------------------------------------
;path                      Allocated to stack - offset -5
;dirobj                    Allocated to stack - offset 1
;dir                       Allocated to stack - offset 4
;fn                        Allocated to stack - offset 7
;res                       Allocated to registers r5 
;fs                        Allocated to stack - offset 19
;sloc0                     Allocated to stack - offset 22
;sloc1                     Allocated to stack - offset 25
;------------------------------------------------------------
;	FatDrivers/tff.c:1343: FRESULT f_opendir (
;	-----------------------------------------
;	 function f_opendir
;	-----------------------------------------
_f_opendir:
	push	_bp
	mov	_bp,sp
;     genReceive
	push	dpl
	push	dph
	push	b
	mov	a,sp
	add	a,#0x1c
	mov	sp,a
;	FatDrivers/tff.c:1351: FATFS *fs = FatFs;
;	genAssign
	mov	a,_bp
	add	a,#0x13
	mov	r0,a
	mov	@r0,_FatFs
	inc	r0
	mov	@r0,(_FatFs + 1)
	inc	r0
	mov	@r0,(_FatFs + 2)
;	FatDrivers/tff.c:1354: res = auto_mount(&path, 0);
;	genAddrOf
	mov	a,_bp
	add	a,#0xfb
	mov	r5,a
;	genCast
	mov	r6,#0x00
	mov	r7,#0x40
;	genIpush
;	Peephole 181	changed mov to clr
	clr	a
	push	acc
;	genCall
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_auto_mount
	mov	r5,dpl
	dec	sp
;	genAssign
;	FatDrivers/tff.c:1355: if (res != FR_OK) return res;
;	genCmpEq
;	gencjneshort
	cjne	r5,#0x00,00116$
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00102$
00116$:
;	genRet
	mov	dpl,r5
	ljmp	00110$
00102$:
;	FatDrivers/tff.c:1357: res = trace_path(dirobj, fn, path, &dir);	/* Trace the directory path */
;	genAddrOf
	mov	a,_bp
	add	a,#0x04
	mov	r6,a
;	genCast
	mov	r5,#0x00
	mov	r7,#0x40
;	genAddrOf
	mov	a,_bp
	add	a,#0x07
	mov	r3,a
;	genCast
	mov	r4,#0x00
	mov	r2,#0x40
;	genIpush
	push	ar6
	push	ar5
	push	ar7
;	genIpush
	mov	a,_bp
	add	a,#0xfffffffb
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
;	genIpush
	push	ar3
	push	ar4
	push	ar2
;	genCall
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_trace_path
	mov	r2,dpl
	mov	a,sp
	add	a,#0xf7
	mov	sp,a
;	genAssign
	mov	ar5,r2
;	FatDrivers/tff.c:1358: if (res == FR_OK) {							/* Trace completed */
;	genIfx
	mov	a,r5
;	genIfxJump
	jz	00117$
	ljmp	00109$
00117$:
;	FatDrivers/tff.c:1359: if (dir != NULL) {						/* It is not the root dir */
;	genAssign
;	genCmpEq
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
;	gencjneshort
	cjne	@r0,#0x00,00118$
	inc	r0
	cjne	@r0,#0x00,00118$
	inc	r0
	cjne	@r0,#0x00,00118$
	ljmp	00107$
00118$:
;	FatDrivers/tff.c:1360: if (dir[DIR_Attr] & AM_DIR) {		/* The entry is a directory */
;	genIpush
	push	ar5
;	genPlus
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
;     genPlusIncr
	mov	a,#0x0B
	add	a,@r0
	mov	r6,a
;	Peephole 181	changed mov to clr
	clr	a
	inc	r0
	addc	a,@r0
	mov	r7,a
	inc	r0
	mov	ar5,@r0
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r6
	mov	dph,r7
	mov	b,r5
	lcall	__gptrget
;	genAnd
	mov	r6,a
;	Peephole 105	removed redundant mov
	anl	a,#0x10
;	genIpop
	pop	ar5
;	genIfx
;	genIfxJump
	jnz	00119$
	ljmp	00104$
00119$:
;	FatDrivers/tff.c:1361: dirobj->clust =
;	genIpush
	push	ar5
;	genPlus
	mov	r0,_bp
	inc	r0
	mov	a,_bp
	add	a,#0x16
	mov	r1,a
;     genPlusIncr
	mov	a,#0x0B
	add	a,@r0
	mov	@r1,a
;	Peephole 181	changed mov to clr
	clr	a
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
;	FatDrivers/tff.c:1363: ((DWORD)LD_WORD(&dir[DIR_FstClusHI]) << 16) |
;	genPlus
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
;     genPlusIncr
	mov	a,#0x14
	add	a,@r0
	mov	r2,a
;	Peephole 181	changed mov to clr
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
;	genCast
;	genLeftShift
;	genLeftShiftLiteral
;	Peephole 3.c	changed mov to clr
	clr	a
	mov	r4,a
	mov	r5,a
	mov	a,_bp
	add	a,#0x19
;	genlshFour
;	Peephole 185	changed order of increment (acc incremented also!)
	inc	a
;	Peephole 185	changed order of increment (acc incremented also!)
	inc	a
;	Peephole 185	changed order of increment (acc incremented also!)
	inc	a
	mov	r0,a
	mov	@r0,ar3
	dec	r0
	mov	@r0,ar2
	dec	r0
	mov	@r0,#0x00
	dec	r0
	mov	@r0,#0x00
;	FatDrivers/tff.c:1365: LD_WORD(&dir[DIR_FstClusLO]);
;	genPlus
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
;     genPlusIncr
	mov	a,#0x1A
	add	a,@r0
	mov	r6,a
;	Peephole 181	changed mov to clr
	clr	a
	inc	r0
	addc	a,@r0
	mov	r7,a
	inc	r0
	mov	ar2,@r0
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r6
	mov	dph,r7
	mov	b,r2
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
;	genCast
;	genOr
;	Peephole 3.c	changed mov to clr
	clr	a
	mov	r2,a
	mov	r3,a
	mov	a,_bp
	add	a,#0x19
	mov	r0,a
	mov	a,r6
	orl	a,@r0
	mov	r6,a
	mov	a,r7
	inc	r0
	orl	a,@r0
	mov	r4,a
	mov	a,r2
	inc	r0
	orl	a,@r0
	mov	r2,a
	mov	a,r3
	inc	r0
	orl	a,@r0
	mov	r3,a
;	genPointerSet
;	genGenPointerSet
	mov	a,_bp
	add	a,#0x16
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
	inc	dptr
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
;	FatDrivers/tff.c:1366: dirobj->sect = clust2sect(dirobj->clust);
;	genPlus
	mov	r0,_bp
	inc	r0
	mov	a,_bp
	add	a,#0x16
	mov	r1,a
;     genPlusIncr
	mov	a,#0x0F
	add	a,@r0
	mov	@r1,a
;	Peephole 181	changed mov to clr
	clr	a
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
;	genCall
	mov	dpl,r6
	mov	dph,r4
	mov	b,r2
	mov	a,r3
	push	ar5
	lcall	_clust2sect
	mov	r3,dpl
	mov	r6,dph
	mov	r7,b
	mov	r2,a
	pop	ar5
;	genPointerSet
;	genGenPointerSet
	mov	a,_bp
	add	a,#0x16
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
	inc	dptr
	mov	a,r2
	lcall	__gptrput
;	FatDrivers/tff.c:1367: dirobj->index = 2;
;	genPlus
	mov	r0,_bp
	inc	r0
;     genPlusIncr
	mov	a,#0x02
	add	a,@r0
	mov	r2,a
;	Peephole 181	changed mov to clr
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
;	genPointerSet
;	genGenPointerSet
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,#0x02
	lcall	__gptrput
	inc	dptr
;	Peephole 181	changed mov to clr
	clr	a
	lcall	__gptrput
;	genIpop
	pop	ar5
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00107$
00104$:
;	FatDrivers/tff.c:1369: res = FR_NO_FILE;
;	genAssign
	mov	r5,#0x02
00107$:
;	FatDrivers/tff.c:1372: dirobj->id = fs->id;
;	genPointerGet
;	genGenPointerGet
	mov	a,_bp
	add	a,#0x13
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
;	genPointerSet
;	genGenPointerSet
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
00109$:
;	FatDrivers/tff.c:1374: return res;
;	genRet
	mov	dpl,r5
00110$:
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'f_readdir'
;------------------------------------------------------------
;finfo                     Allocated to stack - offset -5
;dirobj                    Allocated to stack - offset 1
;dir                       Allocated to registers r2 r3 r4 
;c                         Allocated to stack - offset 4
;res                       Allocated to registers r5 
;fs                        Allocated to stack - offset 5
;sloc0                     Allocated to stack - offset 8
;sloc1                     Allocated to stack - offset 11
;sloc2                     Allocated to stack - offset 14
;sloc3                     Allocated to stack - offset 17
;sloc4                     Allocated to stack - offset 20
;------------------------------------------------------------
;	FatDrivers/tff.c:1384: FRESULT f_readdir (
;	-----------------------------------------
;	 function f_readdir
;	-----------------------------------------
_f_readdir:
	push	_bp
	mov	_bp,sp
;     genReceive
	push	dpl
	push	dph
	push	b
	mov	a,sp
	add	a,#0x17
	mov	sp,a
;	FatDrivers/tff.c:1391: FATFS *fs = dirobj->fs;
;	genPlus
	mov	r0,_bp
	inc	r0
;     genPlusIncr
	mov	a,#0x04
	add	a,@r0
	mov	r5,a
;	Peephole 181	changed mov to clr
	clr	a
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
;	genAssign
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
;	FatDrivers/tff.c:1394: res = validate(fs, dirobj->id);			/* Check validity of the object */
;	genPointerGet
;	genGenPointerGet
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
;	genIpush
	push	ar5
	push	ar6
;	genCall
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_validate
	mov	r5,dpl
	dec	sp
	dec	sp
;	genAssign
;	FatDrivers/tff.c:1395: if (res != FR_OK) return res;
;	genCmpEq
;	gencjneshort
	cjne	r5,#0x00,00127$
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00102$
00127$:
;	genRet
	mov	dpl,r5
	ljmp	00117$
00102$:
;	FatDrivers/tff.c:1397: finfo->fname[0] = 0;
;	genIpush
;	genAssign
	mov	a,_bp
	add	a,#0xfffffffb
	mov	r0,a
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
;	genPlus
;     genPlusIncr
	mov	a,#0x09
;	Peephole 236.a	used r5 instead of ar5
	add	a,r5
	mov	r2,a
;	Peephole 181	changed mov to clr
	clr	a
;	Peephole 236.b	used r6 instead of ar6
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
;	genCast
;	genPointerSet
;	genGenPointerSet
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
;	Peephole 181	changed mov to clr
	clr	a
	lcall	__gptrput
;	FatDrivers/tff.c:1410: return FR_OK;
;	genIpop
;	FatDrivers/tff.c:1398: while (dirobj->sect) {
;	genPlus
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	a,_bp
	add	a,#0x08
	mov	r1,a
;     genPlusIncr
	mov	a,#0x20
	add	a,@r0
	mov	@r1,a
;	Peephole 181	changed mov to clr
	clr	a
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
;	genPlus
	mov	r0,_bp
	inc	r0
	mov	a,_bp
	add	a,#0x0b
	mov	r1,a
;     genPlusIncr
	mov	a,#0x02
	add	a,@r0
	mov	@r1,a
;	Peephole 181	changed mov to clr
	clr	a
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
;	genPlus
	mov	a,_bp
	add	a,#0x0e
	mov	r0,a
;     genPlusIncr
	mov	a,#0x09
;	Peephole 236.a	used r5 instead of ar5
	add	a,r5
	mov	@r0,a
;	Peephole 181	changed mov to clr
	clr	a
;	Peephole 236.b	used r6 instead of ar6
	addc	a,r6
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar7
;	genPlus
	mov	r0,_bp
	inc	r0
	mov	a,_bp
	add	a,#0x11
	mov	r1,a
;     genPlusIncr
	mov	a,#0x0F
	add	a,@r0
	mov	@r1,a
;	Peephole 181	changed mov to clr
	clr	a
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
00114$:
;	genPointerGet
;	genGenPointerGet
	mov	a,_bp
	add	a,#0x11
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,_bp
	add	a,#0x14
	mov	r1,a
	lcall	__gptrget
	mov	@r1,a
	inc	dptr
	lcall	__gptrget
	inc	r1
	mov	@r1,a
	inc	dptr
	lcall	__gptrget
	inc	r1
	mov	@r1,a
	inc	dptr
	lcall	__gptrget
	inc	r1
	mov	@r1,a
;	genIfx
	mov	a,_bp
	add	a,#0x14
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	inc	r0
	orl	a,@r0
	inc	r0
	orl	a,@r0
;	genIfxJump
	jnz	00128$
	ljmp	00116$
00128$:
;	FatDrivers/tff.c:1399: if (!move_window(dirobj->sect))
;	genCall
	mov	a,_bp
	add	a,#0x14
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	r0
	mov	a,@r0
	push	ar5
	push	ar6
	push	ar7
	lcall	_move_window
	mov	a,dpl
	pop	ar7
	pop	ar6
	pop	ar5
;	genIfx
;	genIfxJump
;	Peephole 108.b	removed ljmp by inverse jump logic
	jnz	00104$
;	Peephole 300	removed redundant label 00129$
;	FatDrivers/tff.c:1400: return FR_RW_ERROR;
;	genRet
	mov	dpl,#0x08
	ljmp	00117$
00104$:
;	FatDrivers/tff.c:1401: dir = &fs->win[(dirobj->index & 15) * 32];		/* pointer to the directory entry */
;	genIpush
	push	ar5
	push	ar6
	push	ar7
;	genPointerGet
;	genGenPointerGet
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
;	genAnd
	anl	ar5,#0x0F
;	genLeftShift
;	genLeftShiftLiteral
;	genlshTwo
;	peephole 177.g	optimized mov sequence
;	Peephole 181	changed mov to clr
	clr	a
	mov	r6,a
	swap	a
	rl	a
	anl	a,#0xe0
	xch	a,r5
	swap	a
	rl	a
	xch	a,r5
	xrl	a,r5
	xch	a,r5
	anl	a,#0xe0
	xch	a,r5
	xrl	a,r5
	mov	r6,a
;	genPlus
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
;	Peephole 236.g	used r5 instead of ar5
	mov	a,r5
	add	a,@r0
	mov	r5,a
;	Peephole 236.g	used r6 instead of ar6
	mov	a,r6
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
;	genAssign
	mov	ar2,r5
	mov	ar3,r6
	mov	ar4,r7
;	FatDrivers/tff.c:1402: c = dir[DIR_Name];
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r5,a
;	genAssign
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	@r0,ar5
;	FatDrivers/tff.c:1403: if (c == 0) break;								/* Has it reached to end of dir? */
;	genIpop
	pop	ar7
	pop	ar6
	pop	ar5
;	genIfx
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,@r0
;	genIfxJump
	jnz	00130$
	ljmp	00116$
00130$:
;	FatDrivers/tff.c:1404: if (c != 0xE5 && !(dir[DIR_Attr] & AM_VOL))		/* Is it a valid entry? */
;	genCmpEq
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
;	gencjneshort
	cjne	@r0,#0xE5,00131$
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00108$
00131$:
;	genIpush
	push	ar5
	push	ar6
	push	ar7
;	genPlus
;     genPlusIncr
	mov	a,#0x0B
;	Peephole 236.a	used r2 instead of ar2
	add	a,r2
	mov	r5,a
;	Peephole 181	changed mov to clr
	clr	a
;	Peephole 236.b	used r3 instead of ar3
	addc	a,r3
	mov	r6,a
	mov	ar7,r4
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
;	genAnd
	mov	r5,a
;	Peephole 105	removed redundant mov
	anl	a,#0x08
;	genIpop
	pop	ar7
	pop	ar6
	pop	ar5
;	genIfx
;	genIfxJump
;	Peephole 108.b	removed ljmp by inverse jump logic
	jnz	00108$
;	Peephole 300	removed redundant label 00132$
;	FatDrivers/tff.c:1405: get_fileinfo(finfo, dir);
;	genIpush
	push	ar5
	push	ar6
	push	ar7
	push	ar2
	push	ar3
	push	ar4
;	genCall
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_get_fileinfo
	dec	sp
	dec	sp
	dec	sp
	pop	ar7
	pop	ar6
	pop	ar5
00108$:
;	FatDrivers/tff.c:1406: if (!next_dir_entry(dirobj)) dirobj->sect = 0;	/* Next entry */
;	genCall
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	push	ar5
	push	ar6
	push	ar7
	lcall	_next_dir_entry
	mov	a,dpl
	pop	ar7
	pop	ar6
	pop	ar5
;	genIfx
;	genIfxJump
;	Peephole 108.b	removed ljmp by inverse jump logic
	jnz	00111$
;	Peephole 300	removed redundant label 00133$
;	genPlus
	mov	r0,_bp
	inc	r0
;     genPlusIncr
	mov	a,#0x0F
	add	a,@r0
	mov	r2,a
;	Peephole 181	changed mov to clr
	clr	a
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
;	genPointerSet
;	genGenPointerSet
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
;	Peephole 181	changed mov to clr
	clr	a
	lcall	__gptrput
	inc	dptr
;	Peephole 181	changed mov to clr
	clr	a
	lcall	__gptrput
	inc	dptr
;	Peephole 181	changed mov to clr
	clr	a
	lcall	__gptrput
	inc	dptr
;	Peephole 181	changed mov to clr
	clr	a
	lcall	__gptrput
00111$:
;	FatDrivers/tff.c:1407: if (finfo->fname[0]) break;						/* Found valid entry */
;	genCast
	mov	a,_bp
	add	a,#0x0e
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
;	genIfxJump
	jnz	00134$
	ljmp	00114$
00134$:
00116$:
;	FatDrivers/tff.c:1410: return FR_OK;
;	genRet
	mov	dpl,#0x00
00117$:
	mov	sp,_bp
	pop	_bp
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
__str_0:
	.ascii "FAT"
	.db 0x00
__str_1:
	.ascii "FAT32"
	.db 0x00
	.area XINIT   (CODE)
