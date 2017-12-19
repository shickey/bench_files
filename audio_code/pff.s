	.file	"pff.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__CCP__ = 0x34
__tmp_reg__ = 0
__zero_reg__ = 1
 ;  GNU C (GCC) version 4.8.1 (avr)
 ; 	compiled by GNU C version 4.2.1 Compatible Apple LLVM 5.0 (clang-500.2.78), GMP version 4.3.2, MPFR version 3.1.2, MPC version 1.0
 ;  GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
 ;  options passed:  -I ./ -imultilib avrxmega2 -D F_CPU=8000000 pff/pff.c
 ;  -mmcu=atxmega16e5 -Os -Wall -fverbose-asm
 ;  options enabled:  -faggressive-loop-optimizations -fauto-inc-dec
 ;  -fbranch-count-reg -fcaller-saves -fcombine-stack-adjustments -fcommon
 ;  -fcompare-elim -fcprop-registers -fcrossjumping -fcse-follow-jumps
 ;  -fdefer-pop -fdevirtualize -fdwarf2-cfi-asm -fearly-inlining
 ;  -feliminate-unused-debug-types -fexpensive-optimizations
 ;  -fforward-propagate -ffunction-cse -fgcse -fgcse-lm -fgnu-runtime
 ;  -fguess-branch-probability -fhoist-adjacent-loads -fident
 ;  -fif-conversion -fif-conversion2 -findirect-inlining -finline
 ;  -finline-atomics -finline-functions -finline-functions-called-once
 ;  -finline-small-functions -fipa-cp -fipa-profile -fipa-pure-const
 ;  -fipa-reference -fipa-sra -fira-hoist-pressure -fira-share-save-slots
 ;  -fira-share-spill-slots -fivopts -fkeep-static-consts
 ;  -fleading-underscore -fmath-errno -fmerge-constants
 ;  -fmerge-debug-strings -fmove-loop-invariants -fomit-frame-pointer
 ;  -foptimize-register-move -foptimize-sibling-calls -fpartial-inlining
 ;  -fpeephole -fpeephole2 -fprefetch-loop-arrays -freg-struct-return
 ;  -fregmove -freorder-blocks -freorder-functions -frerun-cse-after-loop
 ;  -fsched-critical-path-heuristic -fsched-dep-count-heuristic
 ;  -fsched-group-heuristic -fsched-interblock -fsched-last-insn-heuristic
 ;  -fsched-rank-heuristic -fsched-spec -fsched-spec-insn-heuristic
 ;  -fsched-stalled-insns-dep -fshow-column -fshrink-wrap -fsigned-zeros
 ;  -fsplit-ivs-in-unroller -fsplit-wide-types -fstrict-aliasing
 ;  -fstrict-overflow -fstrict-volatile-bitfields -fsync-libcalls
 ;  -fthread-jumps -ftoplevel-reorder -ftrapping-math -ftree-bit-ccp
 ;  -ftree-builtin-call-dce -ftree-ccp -ftree-ch -ftree-coalesce-vars
 ;  -ftree-copy-prop -ftree-copyrename -ftree-dce -ftree-dominator-opts
 ;  -ftree-dse -ftree-forwprop -ftree-fre -ftree-loop-if-convert
 ;  -ftree-loop-im -ftree-loop-ivcanon -ftree-loop-optimize
 ;  -ftree-parallelize-loops= -ftree-phiprop -ftree-pre -ftree-pta
 ;  -ftree-reassoc -ftree-scev-cprop -ftree-sink -ftree-slp-vectorize
 ;  -ftree-slsr -ftree-sra -ftree-switch-conversion -ftree-tail-merge
 ;  -ftree-ter -ftree-vect-loop-version -ftree-vrp -funit-at-a-time
 ;  -fverbose-asm -fzero-initialized-in-bss

	.text
	.type	clust2sect, @function
clust2sect:
	push r16	 ; 
	push r17	 ; 
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	lds r30,FatFs	 ;  fs, FatFs
	lds r31,FatFs+1	 ;  fs, FatFs
	movw r18,r24	 ;  clst, clst
	subi r18,2	 ;  clst,
	sbc r19,__zero_reg__	 ;  clst
	ldd r20,Z+6	 ;  D.2333, fs_3->n_fatent
	ldd r21,Z+7	 ;  D.2333, fs_3->n_fatent
	subi r20,2	 ;  D.2333,
	sbc r21,__zero_reg__	 ;  D.2333
	cp r18,r20	 ;  clst, D.2333
	cpc r19,r21	 ;  clst, D.2333
	brsh .L3	 ; ,
	ldd r26,Z+2	 ;  D.2335, fs_3->csize
	ldi r27,0	 ; 
	call __umulhisi3
	ldd r16,Z+16	 ;  fs_3->database, fs_3->database
	ldd r17,Z+17	 ;  fs_3->database, fs_3->database
	ldd r18,Z+18	 ;  fs_3->database, fs_3->database
	ldd r19,Z+19	 ;  fs_3->database, fs_3->database
	add r22,r16	 ;  D.2331, fs_3->database
	adc r23,r17	 ;  D.2331, fs_3->database
	adc r24,r18	 ;  D.2331, fs_3->database
	adc r25,r19	 ;  D.2331, fs_3->database
	rjmp .L2	 ; 
.L3:
	ldi r22,0	 ;  D.2331
	ldi r23,0	 ;  D.2331
	movw r24,r22	 ;  D.2331
.L2:
/* epilogue start */
	pop r17	 ; 
	pop r16	 ; 
	ret
	.size	clust2sect, .-clust2sect
	.type	dir_rewind, @function
dir_rewind:
	push r28	 ; 
	push r29	 ; 
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	movw r28,r24	 ;  dj, dj
	lds r30,FatFs	 ;  fs, FatFs
	lds r31,FatFs+1	 ;  fs, FatFs
	st Y,__zero_reg__	 ;  dj_6(D)->index,
	std Y+1,__zero_reg__	 ;  dj_6(D)->index,
	ldd r24,Y+4	 ;  clst, dj_6(D)->sclust
	ldd r25,Y+5	 ;  clst, dj_6(D)->sclust
	cpi r24,1	 ;  clst,
	cpc r25,__zero_reg__	 ;  clst
	breq .L10	 ; ,
	ldd r18,Z+6	 ;  fs_5->n_fatent, fs_5->n_fatent
	ldd r19,Z+7	 ;  fs_5->n_fatent, fs_5->n_fatent
	cp r24,r18	 ;  clst, fs_5->n_fatent
	cpc r25,r19	 ;  clst, fs_5->n_fatent
	brsh .L10	 ; ,
	std Y+6,r24	 ;  dj_6(D)->clust, clst
	std Y+7,r25	 ;  dj_6(D)->clust, clst
	sbiw r24,0	 ;  clst,
	breq .L7	 ; ,
	call clust2sect	 ; 
	rjmp .L8	 ; 
.L7:
	ldd r22,Z+12	 ;  iftmp.2, fs_5->dirbase
	ldd r23,Z+13	 ;  iftmp.2, fs_5->dirbase
	ldd r24,Z+14	 ;  iftmp.2, fs_5->dirbase
	ldd r25,Z+15	 ;  iftmp.2, fs_5->dirbase
.L8:
	std Y+8,r22	 ;  dj_6(D)->sect, iftmp.2
	std Y+9,r23	 ;  dj_6(D)->sect, iftmp.2
	std Y+10,r24	 ;  dj_6(D)->sect, iftmp.2
	std Y+11,r25	 ;  dj_6(D)->sect, iftmp.2
	ldi r24,0	 ;  D.2339
	ldi r25,0	 ;  D.2339
	rjmp .L6	 ; 
.L10:
	ldi r24,lo8(1)	 ;  D.2339,
	ldi r25,0	 ;  D.2339
.L6:
/* epilogue start */
	pop r29	 ; 
	pop r28	 ; 
	ret
	.size	dir_rewind, .-dir_rewind
	.type	get_fat, @function
get_fat:
	push r16	 ; 
	push r17	 ; 
	push r28	 ; 
	push r29	 ; 
	 ; SP -= 4	 ; 
	rcall .
	rcall .
	in r28,__SP_L__	 ; 
	in r29,__SP_H__	 ; 
/* prologue: function */
/* frame size = 4 */
/* stack size = 8 */
.L__stack_usage = 8
	lds r30,FatFs	 ;  fs, FatFs
	lds r31,FatFs+1	 ;  fs, FatFs
	cpi r24,2	 ;  clst,
	cpc r25,__zero_reg__	 ;  clst
	brlo .L17	 ; ,
	ldd r18,Z+6	 ;  fs_4->n_fatent, fs_4->n_fatent
	ldd r19,Z+7	 ;  fs_4->n_fatent, fs_4->n_fatent
	cp r24,r18	 ;  clst, fs_4->n_fatent
	cpc r25,r19	 ;  clst, fs_4->n_fatent
	brsh .L17	 ; ,
	ld r18,Z	 ;  D.2346, fs_4->fs_type
	cpi r18,lo8(2)	 ;  D.2346,
	brne .L17	 ; ,
	movw r18,r24	 ;  D.2347, clst
	clr r19	 ;  D.2347
	lsl r18	 ;  D.2347
	rol r19	 ;  D.2347
	mov r24,r25	 ;  D.2347, clst
	clr r25	 ;  D.2347
	ldd r20,Z+8	 ;  D.2348, fs_4->fatbase
	ldd r21,Z+9	 ;  D.2348, fs_4->fatbase
	ldd r22,Z+10	 ;  D.2348, fs_4->fatbase
	ldd r23,Z+11	 ;  D.2348, fs_4->fatbase
	add r20,r24	 ;  D.2348, D.2347
	adc r21,r25	 ;  D.2348, D.2347
	adc r22,__zero_reg__	 ;  D.2348
	adc r23,__zero_reg__	 ;  D.2348
	ldi r16,lo8(2)	 ; ,
	ldi r17,0	 ; 
	movw r24,r28	 ; ,
	adiw r24,1	 ; ,
	call disk_readp	 ; 
	or r24,r25	 ; 
	brne .L17	 ; ,
	ldd r24,Y+2	 ;  buf, buf
	ldi r25,0	 ;  D.2347
	mov r25,r24	 ;  D.2344, D.2347
	clr r24	 ;  D.2344
	ldd r18,Y+1	 ;  buf, buf
	or r24,r18	 ;  D.2344, buf
	rjmp .L13	 ; 
.L17:
	ldi r24,lo8(1)	 ;  D.2344,
	ldi r25,0	 ;  D.2344
.L13:
/* epilogue start */
	adiw r28,4	 ; ,
	out __SP_L__,r28	 ; ,
	out __SP_H__,r29	 ; ,
	pop r29	 ; 
	pop r28	 ; 
	pop r17	 ; 
	pop r16	 ; 
	ret
	.size	get_fat, .-get_fat
	.type	dir_next, @function
dir_next:
	push r14	 ; 
	push r15	 ; 
	push r16	 ; 
	push r17	 ; 
	push r28	 ; 
	push r29	 ; 
/* prologue: function */
/* frame size = 0 */
/* stack size = 6 */
.L__stack_usage = 6
	movw r28,r24	 ;  dj, dj
	lds r14,FatFs	 ;  fs, FatFs
	lds r15,FatFs+1	 ;  fs, FatFs
	ld r16,Y	 ;  i, dj_6(D)->index
	ldd r17,Y+1	 ;  i, dj_6(D)->index
	subi r16,-1	 ;  i,
	sbci r17,-1	 ;  i,
	cp r16,__zero_reg__	 ;  i
	cpc r17,__zero_reg__	 ;  i
	brne .L19	 ; ,
.L21:
	ldi r24,lo8(3)	 ;  D.2352,
	ldi r25,0	 ;  D.2352
	rjmp .L20	 ; 
.L19:
	ldd r20,Y+8	 ;  D.2354, dj_6(D)->sect
	ldd r21,Y+9	 ;  D.2354, dj_6(D)->sect
	ldd r22,Y+10	 ;  D.2354, dj_6(D)->sect
	ldd r23,Y+11	 ;  D.2354, dj_6(D)->sect
	cp r20,__zero_reg__	 ;  D.2354
	cpc r21,__zero_reg__	 ;  D.2354
	cpc r22,__zero_reg__	 ;  D.2354
	cpc r23,__zero_reg__	 ;  D.2354
	breq .L21	 ; ,
	movw r24,r16	 ;  D.2355, i
	andi r24,15	 ;  D.2355,
	clr r25	 ;  D.2355
	or r24,r25	 ;  D.2355
	brne .L23	 ; ,
	subi r20,-1	 ;  D.2354,
	sbci r21,-1	 ;  D.2354,
	sbci r22,-1	 ;  D.2354,
	sbci r23,-1	 ;  D.2354,
	std Y+8,r20	 ;  dj_6(D)->sect, D.2354
	std Y+9,r21	 ;  dj_6(D)->sect, D.2354
	std Y+10,r22	 ;  dj_6(D)->sect, D.2354
	std Y+11,r23	 ;  dj_6(D)->sect, D.2354
	ldd r24,Y+6	 ;  D.2353, dj_6(D)->clust
	ldd r25,Y+7	 ;  D.2353, dj_6(D)->clust
	movw r30,r14	 ; , fs
	sbiw r24,0	 ;  D.2353,
	brne .L24	 ; ,
	ldd r24,Z+4	 ;  fs_5->n_rootdir, fs_5->n_rootdir
	ldd r25,Z+5	 ;  fs_5->n_rootdir, fs_5->n_rootdir
	cp r16,r24	 ;  i, fs_5->n_rootdir
	cpc r17,r25	 ;  i, fs_5->n_rootdir
	brsh .L21	 ; ,
	rjmp .L23	 ; 
.L24:
	ldd r18,Z+2	 ;  fs_5->csize, fs_5->csize
	ldi r19,0	 ;  D.2355
	subi r18,1	 ;  D.2355,
	sbc r19,__zero_reg__	 ;  D.2355
	movw r20,r16	 ;  D.2355, i
	ldi r22,4	 ; ,
	1:
	lsr r21	 ;  D.2355
	ror r20	 ;  D.2355
	dec r22	 ; 
	brne 1b
	and r18,r20	 ;  D.2355, D.2355
	and r19,r21	 ;  D.2355, D.2355
	or r18,r19	 ;  D.2355
	brne .L23	 ; ,
	call get_fat	 ; 
	cpi r24,2	 ;  clst,
	cpc r25,__zero_reg__	 ;  clst
	brlo .L26	 ; ,
	movw r30,r14	 ; , fs
	ldd r18,Z+6	 ;  fs_5->n_fatent, fs_5->n_fatent
	ldd r19,Z+7	 ;  fs_5->n_fatent, fs_5->n_fatent
	cp r24,r18	 ;  clst, fs_5->n_fatent
	cpc r25,r19	 ;  clst, fs_5->n_fatent
	brsh .L21	 ; ,
	std Y+6,r24	 ;  dj_6(D)->clust, clst
	std Y+7,r25	 ;  dj_6(D)->clust, clst
	call clust2sect	 ; 
	std Y+8,r22	 ;  dj_6(D)->sect, D.2354
	std Y+9,r23	 ;  dj_6(D)->sect, D.2354
	std Y+10,r24	 ;  dj_6(D)->sect, D.2354
	std Y+11,r25	 ;  dj_6(D)->sect, D.2354
.L23:
	st Y,r16	 ;  dj_6(D)->index, i
	std Y+1,r17	 ;  dj_6(D)->index, i
	ldi r24,0	 ;  D.2352
	ldi r25,0	 ;  D.2352
	rjmp .L20	 ; 
.L26:
	ldi r24,lo8(1)	 ;  D.2352,
	ldi r25,0	 ;  D.2352
.L20:
/* epilogue start */
	pop r29	 ; 
	pop r28	 ; 
	pop r17	 ; 
	pop r16	 ; 
	pop r15	 ; 
	pop r14	 ; 
	ret
	.size	dir_next, .-dir_next
	.type	check_fs, @function
check_fs:
	push r12	 ; 
	push r13	 ; 
	push r14	 ; 
	push r15	 ; 
	push r16	 ; 
	push r17	 ; 
	push r28	 ; 
	push r29	 ; 
/* prologue: function */
/* frame size = 0 */
/* stack size = 8 */
.L__stack_usage = 8
	movw r28,r24	 ;  buf, buf
	movw r12,r20	 ;  sect, sect
	movw r14,r22	 ;  sect, sect
	ldi r16,lo8(2)	 ; ,
	ldi r17,0	 ; 
	ldi r18,lo8(-2)	 ; ,
	ldi r19,lo8(1)	 ; ,
	call disk_readp	 ; 
	or r24,r25	 ; 
	brne .L34	 ; ,
	ldd r24,Y+1	 ;  MEM[(BYTE *)buf_4(D) + 1B], MEM[(BYTE *)buf_4(D) + 1B]
	ldi r25,0	 ;  D.2367
	mov r25,r24	 ;  D.2367, D.2367
	clr r24	 ;  D.2367
	ld r18,Y	 ;  *buf_4(D), *buf_4(D)
	or r24,r18	 ;  D.2367, *buf_4(D)
	cpi r24,85	 ;  D.2367,
	sbci r25,-86	 ;  D.2367,
	brne .L35	 ; ,
	ldi r18,lo8(54)	 ; ,
	ldi r19,0	 ; 
	movw r22,r14	 ; , sect
	movw r20,r12	 ; , sect
	movw r24,r28	 ; , buf
	call disk_readp	 ; 
	or r24,r25	 ; 
	brne .L36	 ; ,
	ldd r18,Y+1	 ;  MEM[(BYTE *)buf_4(D) + 1B], MEM[(BYTE *)buf_4(D) + 1B]
	ldi r19,0	 ;  D.2367
	mov r19,r18	 ;  D.2367, D.2367
	clr r18	 ;  D.2367
	ld r24,Y	 ;  *buf_4(D), *buf_4(D)
	or r18,r24	 ;  D.2367, *buf_4(D)
	ldi r24,lo8(1)	 ;  D.2363,
	cpi r18,70	 ;  D.2367,
	sbci r19,65	 ;  D.2367,
	brne .L31	 ; ,
	ldi r24,0	 ;  D.2363
	rjmp .L31	 ; 
.L36:
	ldi r24,lo8(1)	 ;  D.2363,
	rjmp .L31	 ; 
.L34:
	ldi r24,lo8(3)	 ;  D.2363,
	rjmp .L31	 ; 
.L35:
	ldi r24,lo8(2)	 ;  D.2363,
.L31:
/* epilogue start */
	pop r29	 ; 
	pop r28	 ; 
	pop r17	 ; 
	pop r16	 ; 
	pop r15	 ; 
	pop r14	 ; 
	pop r13	 ; 
	pop r12	 ; 
	ret
	.size	check_fs, .-check_fs
	.type	follow_path, @function
follow_path:
	push r9	 ; 
	push r10	 ; 
	push r11	 ; 
	push r12	 ; 
	push r13	 ; 
	push r14	 ; 
	push r15	 ; 
	push r16	 ; 
	push r17	 ; 
	push r28	 ; 
	push r29	 ; 
/* prologue: function */
/* frame size = 0 */
/* stack size = 11 */
.L__stack_usage = 11
	movw r28,r24	 ;  dj, dj
	movw r14,r22	 ;  dir, dir
.L38:
	movw r10,r20	 ;  path, ivtmp.88
	movw r30,r20	 ; , path
	ld r24,Z	 ;  D.2432, MEM[base: path_101, offset: 0B]
	subi r20,-1	 ;  ivtmp.88,
	sbci r21,-1	 ;  ivtmp.88,
	cpi r24,lo8(32)	 ;  D.2432,
	breq .L38	 ; ,
	cpi r24,lo8(47)	 ;  D.2432,
	brne .L40	 ; ,
	movw r10,r20	 ;  path, ivtmp.88
.L40:
	std Y+4,__zero_reg__	 ;  dj_13(D)->sclust,
	std Y+5,__zero_reg__	 ;  dj_13(D)->sclust,
	movw r30,r10	 ; , path
	ld r24,Z	 ;  *path_12, *path_12
	cpi r24,lo8(32)	 ;  *path_12,
	brsh .L55	 ; ,
	movw r24,r28	 ; , dj
	call dir_rewind	 ; 
	movw r12,r24	 ;  res,
	movw r30,r14	 ; , dir
	st Z,__zero_reg__	 ;  *dir_20(D),
	rjmp .L62	 ; 
.L55:
	ldi r16,lo8(32)	 ; ,
	mov r9,r16	 ;  tmp140,
.L66:
	ldd r30,Y+2	 ;  dst, MEM[(struct DIR *)dj_13(D) + 2B]
	ldd r31,Y+3	 ;  dst, MEM[(struct DIR *)dj_13(D) + 2B]
	movw r26,r30	 ;  ivtmp.80, dst
	movw r24,r30	 ;  D.2443, dst
	adiw r24,11	 ;  D.2443,
.L43:
	cp r26,r24	 ;  ivtmp.80, D.2443
	cpc r27,r25	 ;  ivtmp.80, D.2443
	breq .L68	 ; ,
	st X+,r9	 ;  MEM[base: _83, offset: 0B], tmp140
	rjmp .L43	 ; 
.L68:
	ldi r24,0	 ;  i
	ldi r25,0	 ;  i
	ldi r18,lo8(8)	 ;  ni,
.L45:
	ldi r19,lo8(1)	 ;  i,
	add r19,r25	 ;  i, i
	movw r26,r10	 ;  tmp119, path
	add r26,r25	 ;  tmp119, i
	adc r27,__zero_reg__	 ;  tmp119
	ld r25,X	 ;  c, *_44
	cpi r25,lo8(33)	 ;  c,
	brlo .L46	 ; ,
	cpi r25,lo8(47)	 ;  c,
	breq .L46	 ; ,
	cpi r25,lo8(46)	 ;  c,
	brne .+2	 ; 
	rjmp .L47	 ; 
	cp r24,r18	 ;  i, ni
	brsh .L46	 ; ,
	movw r26,r30	 ;  tmp121, dst
	add r26,r24	 ;  tmp121, i
	adc r27,__zero_reg__	 ;  tmp121
	st X,r25	 ;  *_51, c
	subi r24,lo8(-(1))	 ;  i,
.L48:
	mov r25,r19	 ;  i, i
	rjmp .L45	 ; 
.L46:
	add r10,r19	 ;  path, i
	adc r11,__zero_reg__	 ;  path
	ldi r24,lo8(1)	 ;  D.2438,
	cpi r25,lo8(33)	 ;  c,
	brlo .L49	 ; ,
	ldi r24,0	 ;  D.2438
.L49:
	std Z+11,r24	 ;  MEM[(BYTE *)dst_22 + 11B], D.2438
	movw r24,r28	 ; , dj
	call dir_rewind	 ; 
	movw r12,r24	 ;  res,
	sbiw r24,0	 ;  res,
	breq .+2	 ; 
	rjmp .L62	 ; 
.L54:
	ld r18,Y	 ;  D.2434, dj_13(D)->index
	ldd r19,Y+1	 ;  D.2434, dj_13(D)->index
	andi r18,15	 ;  D.2434,
	clr r19	 ;  D.2434
	ldi r17,5	 ; ,
	1:
	lsl r18	 ;  D.2434
	rol r19	 ;  D.2434
	dec r17	 ; 
	brne 1b
	ldd r20,Y+8	 ;  dj_13(D)->sect, dj_13(D)->sect
	ldd r21,Y+9	 ;  dj_13(D)->sect, dj_13(D)->sect
	ldd r22,Y+10	 ;  dj_13(D)->sect, dj_13(D)->sect
	ldd r23,Y+11	 ;  dj_13(D)->sect, dj_13(D)->sect
	ldi r16,lo8(32)	 ; ,
	ldi r17,0	 ; 
	movw r24,r14	 ; , dir
	call disk_readp	 ; 
	or r24,r25	 ; 
	brne .L57	 ; ,
	movw r30,r14	 ; , dir
	ld r24,Z	 ;  *dir_20(D), *dir_20(D)
	tst r24	 ;  *dir_20(D)
	breq .L58	 ; ,
	ldd r20,Z+11	 ;  D.2433, MEM[(BYTE *)dir_20(D) + 11B]
	sbrc r20,3	 ;  D.2433,
	rjmp .L51	 ; 
	ldd r16,Y+2	 ;  src, dj_13(D)->fn
	ldd r17,Y+3	 ;  src, dj_13(D)->fn
	movw r24,r14	 ;  ivtmp.58, dir
	movw r26,r16	 ;  ivtmp.60, src
	movw r18,r16	 ;  D.2443, src
	subi r18,-11	 ;  D.2443,
	sbci r19,-1	 ;  D.2443,
.L53:
	cp r26,r18	 ;  ivtmp.60, D.2443
	cpc r27,r19	 ;  ivtmp.60, D.2443
	breq .L52	 ; ,
	movw r30,r24	 ; , ivtmp.58
	ld r22,Z+	 ;  D.2432, MEM[base: _78, offset: 0B]
	movw r24,r30	 ;  ivtmp.58,
	ld r21,X+	 ;  D.2432, MEM[base: _71, offset: 0B]
	cp r22,r21	 ;  D.2432, D.2432
	breq .L53	 ; ,
.L51:
	movw r24,r28	 ; , dj
	call dir_next	 ; 
	sbiw r24,0	 ;  res,
	breq .L54	 ; ,
	movw r12,r24	 ;  res, res
	rjmp .L62	 ; 
.L47:
	cpi r18,lo8(8)	 ;  ni,
	breq .+2	 ; 
	rjmp .L46	 ; 
	ldi r24,lo8(8)	 ;  i,
	ldi r18,lo8(11)	 ;  ni,
	rjmp .L48	 ; 
.L57:
	clr r12	 ;  res
	inc r12	 ;  res
	mov r13,__zero_reg__	 ;  res
	rjmp .L62	 ; 
.L58:
	ldi r31,lo8(3)	 ; ,
	mov r12,r31	 ;  res,
	mov r13,__zero_reg__	 ;  res
	rjmp .L62	 ; 
.L52:
	movw r30,r16	 ; , src
	ldd r24,Z+11	 ;  MEM[(BYTE *)src_112 + 11B], MEM[(BYTE *)src_112 + 11B]
	cpse r24,__zero_reg__	 ;  MEM[(BYTE *)src_112 + 11B],
	rjmp .L62	 ; 
	sbrs r20,4	 ;  D.2433,
	rjmp .L58	 ; 
	movw r30,r14	 ; , dir
	ldd r24,Z+27	 ;  MEM[(BYTE *)dir_20(D) + 27B], MEM[(BYTE *)dir_20(D) + 27B]
	ldi r25,0	 ;  D.2434
	mov r25,r24	 ;  D.2434, D.2434
	clr r24	 ;  D.2434
	ldd r18,Z+26	 ;  MEM[(BYTE *)dir_20(D) + 26B], MEM[(BYTE *)dir_20(D) + 26B]
	or r24,r18	 ;  D.2434, MEM[(BYTE *)dir_20(D) + 26B]
	std Y+4,r24	 ;  dj_13(D)->sclust, D.2434
	std Y+5,r25	 ;  dj_13(D)->sclust, D.2434
	rjmp .L66	 ; 
.L62:
	movw r24,r12	 ; , res
/* epilogue start */
	pop r29	 ; 
	pop r28	 ; 
	pop r17	 ; 
	pop r16	 ; 
	pop r15	 ; 
	pop r14	 ; 
	pop r13	 ; 
	pop r12	 ; 
	pop r11	 ; 
	pop r10	 ; 
	pop r9	 ; 
	ret
	.size	follow_path, .-follow_path
.global	pf_mount
	.type	pf_mount, @function
pf_mount:
	push r4	 ; 
	push r5	 ; 
	push r6	 ; 
	push r7	 ; 
	push r10	 ; 
	push r11	 ; 
	push r12	 ; 
	push r13	 ; 
	push r14	 ; 
	push r15	 ; 
	push r16	 ; 
	push r17	 ; 
	push r28	 ; 
	push r29	 ; 
	in r28,__SP_L__	 ; 
	in r29,__SP_H__	 ; 
	sbiw r28,40	 ; ,
	out __SP_L__,r28	 ; ,
	out __SP_H__,r29	 ; ,
/* prologue: function */
/* frame size = 40 */
/* stack size = 54 */
.L__stack_usage = 54
	movw r10,r24	 ;  fs, fs
	sts FatFs,__zero_reg__	 ;  FatFs,
	sts FatFs+1,__zero_reg__	 ;  FatFs,
	call disk_initialize	 ; 
	sbrc r24,0	 ; ,
	rjmp .L79	 ; 
	ldi r20,0	 ; 
	ldi r21,0	 ; 
	movw r22,r20	 ; 
	movw r24,r28	 ; ,
	adiw r24,1	 ; ,
	call check_fs	 ; 
	cpi r24,lo8(1)	 ;  fmt,
	brne .L80	 ; ,
	ldi r16,lo8(16)	 ; ,
	ldi r17,0	 ; 
	ldi r18,lo8(-66)	 ; ,
	ldi r19,lo8(1)	 ; ,
	ldi r20,0	 ; 
	ldi r21,0	 ; 
	movw r22,r20	 ; 
	movw r24,r28	 ; ,
	adiw r24,1	 ; ,
	call disk_readp	 ; 
	or r24,r25	 ; 
	breq .L72	 ; ,
.L74:
	ldi r24,lo8(1)	 ;  D.2446,
	ldi r25,0	 ;  D.2446
	rjmp .L84	 ; 
.L72:
	ldd r24,Y+5	 ;  buf, buf
	cpse r24,__zero_reg__	 ;  buf,
	rjmp .L73	 ; 
.L75:
	ldi r24,lo8(6)	 ;  D.2446,
	ldi r25,0	 ;  D.2446
	rjmp .L84	 ; 
.L73:
	ldd r24,Y+12	 ;  buf, buf
	ldd r4,Y+11	 ;  buf, buf
	mov r5,__zero_reg__	 ;  D.2449
	mov r6,__zero_reg__	 ;  D.2449
	mov r7,__zero_reg__	 ;  D.2449
	movw r6,r4	 ;  bsect, D.2449
	clr r5	 ;  bsect
	clr r4	 ;  bsect
	or r7,r24	 ;  bsect, buf
	ldd r24,Y+9	 ;  buf, buf
	or r4,r24	 ;  bsect, buf
	ldd r24,Y+10	 ;  buf, buf
	ldi r25,0	 ;  D.2450
	mov r25,r24	 ;  D.2450, D.2450
	clr r24	 ;  D.2450
	ldi r26,0	 ;  D.2449
	ldi r27,0	 ;  D.2449
	or r4,r24	 ;  bsect, D.2449
	or r5,r25	 ;  bsect, D.2449
	or r6,r26	 ;  bsect, D.2449
	or r7,r27	 ;  bsect, D.2449
	movw r22,r6	 ; , bsect
	movw r20,r4	 ; , bsect
	movw r24,r28	 ; ,
	adiw r24,1	 ; ,
	call check_fs	 ; 
	rjmp .L71	 ; 
.L80:
	mov r4,__zero_reg__	 ;  bsect
	mov r5,__zero_reg__	 ;  bsect
	movw r6,r4	 ;  bsect
.L71:
	cpi r24,lo8(3)	 ;  fmt,
	breq .L74	 ; ,
	cpse r24,__zero_reg__	 ;  fmt,
	rjmp .L75	 ; 
	ldi r16,lo8(36)	 ; ,
	ldi r17,0	 ; 
	ldi r18,lo8(13)	 ; ,
	ldi r19,0	 ; 
	movw r22,r6	 ; , bsect
	movw r20,r4	 ; , bsect
	movw r24,r28	 ; ,
	adiw r24,1	 ; ,
	call disk_readp	 ; 
	or r24,r25	 ; 
	brne .L74	 ; ,
	ldd r18,Y+11	 ;  buf, buf
	ldi r19,0	 ;  D.2450
	mov r19,r18	 ;  D.2450, D.2450
	clr r18	 ;  D.2450
	ldd r24,Y+10	 ;  buf, buf
	or r18,r24	 ;  D.2450, buf
	ldi r20,0	 ;  fsize
	ldi r21,0	 ;  fsize
	cp r18,__zero_reg__	 ;  fsize
	cpc r19,__zero_reg__	 ;  fsize
	cpc r20,__zero_reg__	 ;  fsize
	cpc r21,__zero_reg__	 ;  fsize
	brne .L76	 ; ,
	ldd r24,Y+27	 ;  buf, buf
	ldd r18,Y+26	 ;  buf, buf
	mov r20,r18	 ;  D.2449, buf
	ldi r21,0	 ;  D.2449
	ldi r22,0	 ;  D.2449
	ldi r23,0	 ;  D.2449
	clr r19	 ;  fsize
	clr r18	 ;  fsize
	or r21,r24	 ;  fsize, buf
	ldd r24,Y+24	 ;  buf, buf
	or r18,r24	 ;  fsize, buf
	ldd r24,Y+25	 ;  buf, buf
	ldi r25,0	 ;  D.2450
	mov r25,r24	 ;  D.2450, D.2450
	clr r24	 ;  D.2450
	ldi r26,0	 ;  D.2449
	ldi r27,0	 ;  D.2449
	or r18,r24	 ;  fsize, D.2449
	or r19,r25	 ;  fsize, D.2449
	or r20,r26	 ;  fsize, D.2449
	or r21,r27	 ;  fsize, D.2449
.L76:
	ldd r26,Y+4	 ;  buf, buf
	ldi r27,0	 ; 
	call __muluhisi3
	std Y+37,r22	 ;  %sfp,
	std Y+38,r23	 ;  %sfp,
	std Y+39,r24	 ;  %sfp,
	std Y+40,r25	 ;  %sfp,
	ldd r16,Y+3	 ;  buf, buf
	ldi r17,0	 ;  D.2450
	mov r17,r16	 ;  D.2450, D.2450
	clr r16	 ;  D.2450
	ldd r24,Y+2	 ;  buf, buf
	or r16,r24	 ;  D.2450, buf
	ldi r18,0	 ;  D.2449
	ldi r19,0	 ;  D.2449
	add r4,r16	 ;  D.2449, D.2449
	adc r5,r17	 ;  D.2449, D.2449
	adc r6,r18	 ;  D.2449, D.2449
	adc r7,r19	 ;  D.2449, D.2449
	movw r26,r10	 ; , fs
	adiw r26,8	 ;  fs_70(D)->fatbase
	st X+,r4	 ;  D.2449
	st X+,r5	 ;  D.2449
	st X+,r6	 ;  D.2449
	st X,r7	 ;  D.2449
	sbiw r26,8+3	 ;  fs_70(D)->fatbase
	ldd r30,Y+1	 ;  D.2447, buf
	adiw r26,2	 ;  fs_70(D)->csize
	st X,r30	 ;  D.2447
	sbiw r26,2	 ;  fs_70(D)->csize
	ldd r12,Y+6	 ;  buf, buf
	mov r13,__zero_reg__	 ;  D.2450
	mov r13,r12	 ;  D.2450, D.2450
	clr r12	 ;  D.2450
	ldd r24,Y+5	 ;  buf, buf
	or r12,r24	 ;  D.2450, buf
	adiw r26,4	 ;  fs_70(D)->n_rootdir
	st X+,r12	 ;  D.2450
	st X,r13	 ;  D.2450
	sbiw r26,4+1	 ;  fs_70(D)->n_rootdir
	ldd r24,Y+8	 ;  buf, buf
	ldi r25,0	 ;  D.2450
	mov r25,r24	 ;  D.2450, D.2450
	clr r24	 ;  D.2450
	ldd r20,Y+7	 ;  buf, buf
	or r24,r20	 ;  D.2450, buf
	ldi r26,0	 ;  tsect
	ldi r27,0	 ;  tsect
	sbiw r24,0	 ;  tsect,
	cpc r26,__zero_reg__	 ;  tsect
	cpc r27,__zero_reg__	 ;  tsect
	brne .L77	 ; ,
	ldd r20,Y+23	 ;  buf, buf
	ldd r24,Y+22	 ;  buf, buf
	ldi r25,0	 ;  D.2449
	ldi r26,0	 ;  D.2449
	ldi r27,0	 ;  D.2449
	movw r26,r24	 ;  tsect, D.2449
	clr r25	 ;  tsect
	clr r24	 ;  tsect
	or r27,r20	 ;  tsect, buf
	ldd r20,Y+20	 ;  buf, buf
	or r24,r20	 ;  tsect, buf
	ldd r20,Y+21	 ;  buf, buf
	ldi r21,0	 ;  D.2450
	mov r21,r20	 ;  D.2450, D.2450
	clr r20	 ;  D.2450
	ldi r22,0	 ;  D.2449
	ldi r23,0	 ;  D.2449
	or r24,r20	 ;  tsect, D.2449
	or r25,r21	 ;  tsect, D.2449
	or r26,r22	 ;  tsect, D.2449
	or r27,r23	 ;  tsect, D.2449
.L77:
	ldi r20,4	 ; ,
	1:
	lsr r13	 ;  D.2450
	ror r12	 ;  D.2450
	dec r20	 ; 
	brne 1b
	mov r14,__zero_reg__	 ;  D.2449
	mov r15,__zero_reg__	 ;  D.2449
	movw r22,r24	 ;  D.2449, tsect
	movw r24,r26	 ;  D.2449, tsect
	sub r22,r16	 ;  D.2449, D.2449
	sbc r23,r17	 ;  D.2449, D.2449
	sbc r24,r18	 ;  D.2449, D.2449
	sbc r25,r19	 ;  D.2449, D.2449
	ldd r18,Y+37	 ; , %sfp
	ldd r19,Y+38	 ; , %sfp
	ldd r20,Y+39	 ; , %sfp
	ldd r21,Y+40	 ; , %sfp
	sub r22,r18	 ;  D.2449,
	sbc r23,r19	 ;  D.2449,
	sbc r24,r20	 ;  D.2449,
	sbc r25,r21	 ;  D.2449,
	sub r22,r12	 ;  D.2449, D.2449
	sbc r23,r13	 ;  D.2449, D.2449
	sbc r24,r14	 ;  D.2449, D.2449
	sbc r25,r15	 ;  D.2449, D.2449
	mov r18,r30	 ;  D.2449, D.2447
	ldi r19,0	 ;  D.2449
	ldi r20,0	 ;  D.2449
	ldi r21,0	 ;  D.2449
	call __udivmodsi4
	movw r26,r20	 ;  mclst, tmp212
	movw r24,r18	 ;  mclst, tmp212
	adiw r24,2	 ;  mclst,
	adc r26,__zero_reg__	 ;  mclst
	adc r27,__zero_reg__	 ;  mclst
	movw r30,r10	 ; , fs
	std Z+6,r24	 ;  fs_70(D)->n_fatent, mclst
	std Z+7,r25	 ;  fs_70(D)->n_fatent, mclst
	movw r26,r20	 ;  D.2449, tmp212
	movw r24,r18	 ;  D.2449, tmp212
	subi r24,-10	 ;  D.2449,
	sbci r25,15	 ;  D.2449,
	sbc r26,__zero_reg__	 ;  D.2449
	sbc r27,__zero_reg__	 ;  D.2449
	cpi r24,-1	 ;  D.2449,
	sbci r25,-17	 ;  D.2449,
	cpc r26,__zero_reg__	 ;  D.2449
	cpc r27,__zero_reg__	 ;  D.2449
	brlo .+2	 ; 
	rjmp .L75	 ; 
	ldi r24,lo8(2)	 ;  tmp217,
	movw r26,r10	 ; , fs
	st X,r24	 ;  fs_70(D)->fs_type, tmp217
	ldd r18,Y+37	 ; , %sfp
	ldd r19,Y+38	 ; , %sfp
	ldd r20,Y+39	 ; , %sfp
	ldd r21,Y+40	 ; , %sfp
	add r4,r18	 ;  D.2449,
	adc r5,r19	 ;  D.2449,
	adc r6,r20	 ;  D.2449,
	adc r7,r21	 ;  D.2449,
	adiw r26,12	 ;  fs_70(D)->dirbase
	st X+,r4	 ;  D.2449
	st X+,r5	 ;  D.2449
	st X+,r6	 ;  D.2449
	st X,r7	 ;  D.2449
	sbiw r26,12+3	 ;  fs_70(D)->dirbase
	add r4,r12	 ;  D.2449, D.2449
	adc r5,r13	 ;  D.2449, D.2449
	adc r6,r14	 ;  D.2449, D.2449
	adc r7,r15	 ;  D.2449, D.2449
	movw r30,r10	 ; , fs
	std Z+16,r4	 ;  fs_70(D)->database, D.2449
	std Z+17,r5	 ;  fs_70(D)->database, D.2449
	std Z+18,r6	 ;  fs_70(D)->database, D.2449
	std Z+19,r7	 ;  fs_70(D)->database, D.2449
	std Z+1,__zero_reg__	 ;  fs_70(D)->flag,
	sts FatFs,r10	 ;  FatFs, fs
	sts FatFs+1,r11	 ;  FatFs, fs
	ldi r24,0	 ;  D.2446
	ldi r25,0	 ;  D.2446
	rjmp .L84	 ; 
.L79:
	ldi r24,lo8(2)	 ;  D.2446,
	ldi r25,0	 ;  D.2446
.L84:
/* epilogue start */
	adiw r28,40	 ; ,
	out __SP_L__,r28	 ; ,
	out __SP_H__,r29	 ; ,
	pop r29	 ; 
	pop r28	 ; 
	pop r17	 ; 
	pop r16	 ; 
	pop r15	 ; 
	pop r14	 ; 
	pop r13	 ; 
	pop r12	 ; 
	pop r11	 ; 
	pop r10	 ; 
	pop r7	 ; 
	pop r6	 ; 
	pop r5	 ; 
	pop r4	 ; 
	ret
	.size	pf_mount, .-pf_mount
.global	pf_open
	.type	pf_open, @function
pf_open:
	push r16	 ; 
	push r17	 ; 
	push r28	 ; 
	push r29	 ; 
	in r28,__SP_L__	 ; 
	in r29,__SP_H__	 ; 
	sbiw r28,56	 ; ,
	out __SP_L__,r28	 ; ,
	out __SP_H__,r29	 ; ,
/* prologue: function */
/* frame size = 56 */
/* stack size = 60 */
.L__stack_usage = 60
	lds r16,FatFs	 ;  fs, FatFs
	lds r17,FatFs+1	 ;  fs, FatFs
	cp r16,__zero_reg__	 ;  fs
	cpc r17,__zero_reg__	 ;  fs
	brne .+2	 ; 
	rjmp .L87	 ; 
	movw r30,r16	 ; , fs
	std Z+1,__zero_reg__	 ;  fs_4->flag,
	movw r18,r28	 ;  tmp71,
	subi r18,-33	 ;  tmp71,
	sbci r19,-1	 ; ,
	std Y+47,r18	 ;  dj.fn, tmp71
	std Y+48,r19	 ;  dj.fn, tmp71
	movw r20,r24	 ; , path
	movw r22,r28	 ; ,
	subi r22,-1	 ; ,
	sbci r23,-1	 ; ,
	movw r24,r28	 ; ,
	adiw r24,45	 ; ,
	call follow_path	 ; 
	sbiw r24,0	 ;  res,
	brne .L86	 ; ,
	ldd r24,Y+1	 ;  dir, dir
	tst r24	 ;  dir
	breq .L90	 ; ,
	ldd r24,Y+12	 ;  dir, dir
	sbrc r24,4	 ;  dir,
	rjmp .L90	 ; 
	ldd r24,Y+28	 ;  MEM[(BYTE *)&dir + 27B], MEM[(BYTE *)&dir + 27B]
	ldi r25,0	 ;  D.2459
	mov r25,r24	 ;  D.2459, D.2459
	clr r24	 ;  D.2459
	ldd r18,Y+27	 ;  MEM[(BYTE *)&dir + 26B], MEM[(BYTE *)&dir + 26B]
	or r24,r18	 ;  D.2459, MEM[(BYTE *)&dir + 26B]
	movw r30,r16	 ; , fs
	std Z+28,r24	 ;  fs_4->org_clust, D.2459
	std Z+29,r25	 ;  fs_4->org_clust, D.2459
	ldd r18,Y+32	 ;  dir, dir
	ldd r24,Y+31	 ;  dir, dir
	ldi r25,0	 ;  D.2458
	ldi r26,0	 ;  D.2458
	ldi r27,0	 ;  D.2458
	movw r26,r24	 ;  D.2458, D.2458
	clr r25	 ;  D.2458
	clr r24	 ;  D.2458
	or r27,r18	 ;  D.2458, dir
	ldd r18,Y+29	 ;  dir, dir
	or r24,r18	 ;  D.2458, dir
	ldd r20,Y+30	 ;  dir, dir
	ldi r21,0	 ;  D.2459
	mov r21,r20	 ;  D.2459, D.2459
	clr r20	 ;  D.2459
	ldi r22,0	 ;  D.2458
	ldi r23,0	 ;  D.2458
	or r24,r20	 ;  D.2458, D.2458
	or r25,r21	 ;  D.2458, D.2458
	or r26,r22	 ;  D.2458, D.2458
	or r27,r23	 ;  D.2458, D.2458
	std Z+24,r24	 ;  fs_4->fsize, D.2458
	std Z+25,r25	 ;  fs_4->fsize, D.2458
	std Z+26,r26	 ;  fs_4->fsize, D.2458
	std Z+27,r27	 ;  fs_4->fsize, D.2458
	std Z+20,__zero_reg__	 ;  fs_4->fptr,
	std Z+21,__zero_reg__	 ;  fs_4->fptr,
	std Z+22,__zero_reg__	 ;  fs_4->fptr,
	std Z+23,__zero_reg__	 ;  fs_4->fptr,
	ldi r24,lo8(1)	 ;  tmp97,
	std Z+1,r24	 ;  fs_4->flag, tmp97
	ldi r24,0	 ;  D.2456
	rjmp .L91	 ; 
.L87:
	ldi r24,lo8(5)	 ;  D.2456,
	rjmp .L91	 ; 
.L90:
	ldi r24,lo8(3)	 ;  D.2456,
.L91:
	ldi r25,0	 ;  D.2456
.L86:
/* epilogue start */
	adiw r28,56	 ; ,
	out __SP_L__,r28	 ; ,
	out __SP_H__,r29	 ; ,
	pop r29	 ; 
	pop r28	 ; 
	pop r17	 ; 
	pop r16	 ; 
	ret
	.size	pf_open, .-pf_open
.global	pf_read
	.type	pf_read, @function
pf_read:
	push r4	 ; 
	push r5	 ; 
	push r6	 ; 
	push r7	 ; 
	push r8	 ; 
	push r9	 ; 
	push r10	 ; 
	push r11	 ; 
	push r12	 ; 
	push r13	 ; 
	push r14	 ; 
	push r15	 ; 
	push r16	 ; 
	push r17	 ; 
	push r28	 ; 
	push r29	 ; 
/* prologue: function */
/* frame size = 0 */
/* stack size = 16 */
.L__stack_usage = 16
	movw r8,r24	 ;  buff, buff
	movw r14,r22	 ;  btr, btr
	movw r10,r20	 ;  br, br
	lds r28,FatFs	 ;  fs, FatFs
	lds r29,FatFs+1	 ;  fs, FatFs
	movw r30,r20	 ; , br
	st Z,__zero_reg__	 ;  *br_15(D),
	std Z+1,__zero_reg__	 ;  *br_15(D),
	sbiw r28,0	 ;  fs,
	brne .+2	 ; 
	rjmp .L106	 ; 
	ldd r24,Y+1	 ;  fs_14->flag, fs_14->flag
	sbrs r24,0	 ;  fs_14->flag,
	rjmp .L107	 ; 
	ldd r24,Y+24	 ;  remain, fs_14->fsize
	ldd r25,Y+25	 ;  remain, fs_14->fsize
	ldd r26,Y+26	 ;  remain, fs_14->fsize
	ldd r27,Y+27	 ;  remain, fs_14->fsize
	ldd r20,Y+20	 ;  fs_14->fptr, fs_14->fptr
	ldd r21,Y+21	 ;  fs_14->fptr, fs_14->fptr
	ldd r22,Y+22	 ;  fs_14->fptr, fs_14->fptr
	ldd r23,Y+23	 ;  fs_14->fptr, fs_14->fptr
	sub r24,r20	 ;  remain, fs_14->fptr
	sbc r25,r21	 ;  remain, fs_14->fptr
	sbc r26,r22	 ;  remain, fs_14->fptr
	sbc r27,r23	 ;  remain, fs_14->fptr
	movw r20,r14	 ;  D.2464, btr
	ldi r22,0	 ;  D.2464
	ldi r23,0	 ;  D.2464
	cp r24,r20	 ;  remain, D.2464
	cpc r25,r21	 ;  remain, D.2464
	cpc r26,r22	 ;  remain, D.2464
	cpc r27,r23	 ;  remain, D.2464
	brsh .L94	 ; ,
	movw r14,r24	 ;  btr, remain
.L94:
	movw r6,r8	 ;  buff, buff
	mov r4,__zero_reg__	 ;  tmp102
	ldi r31,lo8(2)	 ; ,
	mov r5,r31	 ; ,
.L95:
	cp r14,__zero_reg__	 ;  btr
	cpc r15,__zero_reg__	 ;  btr
	brne .+2	 ; 
	rjmp .L110	 ; 
	ldd r24,Y+20	 ;  D.2464, fs_14->fptr
	ldd r25,Y+21	 ;  D.2464, fs_14->fptr
	ldd r26,Y+22	 ;  D.2464, fs_14->fptr
	ldd r27,Y+23	 ;  D.2464, fs_14->fptr
	movw r20,r24	 ;  D.2464, D.2464
	movw r22,r26	 ;  D.2464, D.2464
	andi r21,1	 ;  D.2464,
	clr r22	 ;  D.2464
	clr r23	 ;  D.2464
	or r20,r21	 ;  D.2464
	or r20,r22	 ;  D.2464
	or r20,r23	 ;  D.2464
	brne .L96	 ; ,
	ldd r13,Y+2	 ;  cs, fs_14->csize
	dec r13	 ;  cs
	movw r20,r24	 ;  D.2464, D.2464
	movw r22,r26	 ;  D.2464, D.2464
	ldi r30,9	 ; ,
	1:
	lsr r23	 ;  D.2464
	ror r22	 ;  D.2464
	ror r21	 ;  D.2464
	ror r20	 ;  D.2464
	dec r30	 ; 
	brne 1b
	and r13,r20	 ;  cs, D.2464
	brne .L97	 ; ,
	or r24,r25	 ;  D.2464
	or r24,r26	 ;  D.2464
	or r24,r27	 ;  D.2464
	brne .L98	 ; ,
	ldd r24,Y+28	 ;  clst, fs_14->org_clust
	ldd r25,Y+29	 ;  clst, fs_14->org_clust
	rjmp .L99	 ; 
.L98:
	ldd r24,Y+30	 ; , fs_14->curr_clust
	ldd r25,Y+31	 ; , fs_14->curr_clust
	call get_fat	 ; 
.L99:
	cpi r24,2	 ;  clst,
	cpc r25,__zero_reg__	 ;  clst
	brlo .L109	 ; ,
	std Y+30,r24	 ;  fs_14->curr_clust, clst
	std Y+31,r25	 ;  fs_14->curr_clust, clst
.L97:
	ldd r24,Y+30	 ; , fs_14->curr_clust
	ldd r25,Y+31	 ; , fs_14->curr_clust
	call clust2sect	 ; 
	cp r22,__zero_reg__	 ;  sect
	cpc r23,__zero_reg__	 ;  sect
	cpc r24,__zero_reg__	 ;  sect
	cpc r25,__zero_reg__	 ;  sect
	breq .L109	 ; ,
	movw r26,r24	 ;  D.2464, sect
	movw r24,r22	 ;  D.2464, sect
	add r24,r13	 ;  D.2464, cs
	adc r25,__zero_reg__	 ;  D.2464
	adc r26,__zero_reg__	 ;  D.2464
	adc r27,__zero_reg__	 ;  D.2464
	std Y+32,r24	 ;  fs_14->dsect, D.2464
	std Y+33,r25	 ;  fs_14->dsect, D.2464
	std Y+34,r26	 ;  fs_14->dsect, D.2464
	std Y+35,r27	 ;  fs_14->dsect, D.2464
.L96:
	ldd r18,Y+20	 ;  D.2466, fs_14->fptr
	ldd r19,Y+21	 ;  D.2466, fs_14->fptr
	andi r19,1	 ;  D.2466,
	movw r24,r4	 ;  btr, tmp102
	sub r24,r18	 ;  btr, D.2466
	sbc r25,r19	 ;  btr, D.2466
	movw r12,r14	 ;  btr, btr
	cp r24,r14	 ;  btr, btr
	cpc r25,r15	 ;  btr, btr
	brsh .L102	 ; ,
	movw r12,r24	 ;  btr, btr
.L102:
	ldd r20,Y+32	 ;  D.2464, fs_14->dsect
	ldd r21,Y+33	 ;  D.2464, fs_14->dsect
	ldd r22,Y+34	 ;  D.2464, fs_14->dsect
	ldd r23,Y+35	 ;  D.2464, fs_14->dsect
	cp r8,__zero_reg__	 ;  buff
	cpc r9,__zero_reg__	 ;  buff
	brne .L108	 ; ,
	ldi r24,0	 ;  iftmp.10
	ldi r25,0	 ;  iftmp.10
	rjmp .L103	 ; 
.L108:
	movw r24,r6	 ; ,
.L103:
	movw r16,r12	 ; , btr
	call disk_readp	 ; 
	or r24,r25	 ; 
	breq .L104	 ; ,
.L109:
	std Y+1,__zero_reg__	 ;  fs_14->flag,
	ldi r24,lo8(1)	 ;  D.2462,
	ldi r25,0	 ;  D.2462
	rjmp .L93	 ; 
.L104:
	ldd r24,Y+20	 ;  D.2464, fs_14->fptr
	ldd r25,Y+21	 ;  D.2464, fs_14->fptr
	ldd r26,Y+22	 ;  D.2464, fs_14->fptr
	ldd r27,Y+23	 ;  D.2464, fs_14->fptr
	add r24,r12	 ;  D.2464, btr
	adc r25,r13	 ;  D.2464, btr
	adc r26,__zero_reg__	 ;  D.2464
	adc r27,__zero_reg__	 ;  D.2464
	std Y+20,r24	 ;  fs_14->fptr, D.2464
	std Y+21,r25	 ;  fs_14->fptr, D.2464
	std Y+22,r26	 ;  fs_14->fptr, D.2464
	std Y+23,r27	 ;  fs_14->fptr, D.2464
	add r6,r12	 ;  buff, btr
	adc r7,r13	 ;  buff, btr
	sub r14,r12	 ;  btr, btr
	sbc r15,r13	 ;  btr, btr
	movw r30,r10	 ; , br
	ld r24,Z	 ;  D.2466, *br_15(D)
	ldd r25,Z+1	 ;  D.2466, *br_15(D)
	add r24,r12	 ;  D.2466, btr
	adc r25,r13	 ;  D.2466, btr
	st Z,r24	 ;  *br_15(D), D.2466
	std Z+1,r25	 ;  *br_15(D), D.2466
	rjmp .L95	 ; 
.L110:
	ldi r24,0	 ;  D.2462
	ldi r25,0	 ;  D.2462
	rjmp .L93	 ; 
.L106:
	ldi r24,lo8(5)	 ;  D.2462,
	ldi r25,0	 ;  D.2462
	rjmp .L93	 ; 
.L107:
	ldi r24,lo8(4)	 ;  D.2462,
	ldi r25,0	 ;  D.2462
.L93:
/* epilogue start */
	pop r29	 ; 
	pop r28	 ; 
	pop r17	 ; 
	pop r16	 ; 
	pop r15	 ; 
	pop r14	 ; 
	pop r13	 ; 
	pop r12	 ; 
	pop r11	 ; 
	pop r10	 ; 
	pop r9	 ; 
	pop r8	 ; 
	pop r7	 ; 
	pop r6	 ; 
	pop r5	 ; 
	pop r4	 ; 
	ret
	.size	pf_read, .-pf_read
.global	pf_lseek
	.type	pf_lseek, @function
pf_lseek:
	push r4	 ; 
	push r5	 ; 
	push r6	 ; 
	push r7	 ; 
	push r8	 ; 
	push r9	 ; 
	push r10	 ; 
	push r11	 ; 
	push r12	 ; 
	push r13	 ; 
	push r14	 ; 
	push r15	 ; 
	push r16	 ; 
	push r17	 ; 
	push r28	 ; 
	push r29	 ; 
	 ; SP -= 4	 ; 
	rcall .
	rcall .
	in r28,__SP_L__	 ; 
	in r29,__SP_H__	 ; 
/* prologue: function */
/* frame size = 4 */
/* stack size = 20 */
.L__stack_usage = 20
	movw r18,r22	 ; ,
	lds r16,FatFs	 ;  fs, FatFs
	lds r17,FatFs+1	 ;  fs, FatFs
	cp r16,__zero_reg__	 ;  fs
	cpc r17,__zero_reg__	 ;  fs
	brne .+2	 ; 
	rjmp .L121	 ; 
	movw r26,r16	 ; , fs
	adiw r26,1	 ;  fs_9->flag
	ld r20,X	 ;  fs_9->flag
	sbiw r26,1	 ;  fs_9->flag
	sbrs r20,0	 ;  fs_9->flag,
	rjmp .L122	 ; 
	adiw r26,24	 ;  fs_9->fsize
	ld r20,X+	 ;  ofs
	ld r21,X+	 ;  ofs
	ld r22,X+	 ;  ofs
	ld r23,X	 ;  ofs
	sbiw r26,24+3	 ;  fs_9->fsize
	movw r12,r18	 ; ,
	movw r14,r24	 ; ,
	cp r20,r12	 ;  ofs, ofs
	cpc r21,r13	 ;  ofs, ofs
	cpc r22,r14	 ;  ofs, ofs
	cpc r23,r15	 ;  ofs, ofs
	brsh .L113	 ; ,
	movw r12,r20	 ;  ofs, ofs
	movw r14,r22	 ;  ofs, ofs
.L113:
	movw r30,r16	 ; , fs
	ldd r4,Z+20	 ;  ifptr, fs_9->fptr
	ldd r5,Z+21	 ;  ifptr, fs_9->fptr
	ldd r6,Z+22	 ;  ifptr, fs_9->fptr
	ldd r7,Z+23	 ;  ifptr, fs_9->fptr
	std Z+20,__zero_reg__	 ;  fs_9->fptr,
	std Z+21,__zero_reg__	 ;  fs_9->fptr,
	std Z+22,__zero_reg__	 ;  fs_9->fptr,
	std Z+23,__zero_reg__	 ;  fs_9->fptr,
	cp r12,__zero_reg__	 ;  ofs
	cpc r13,__zero_reg__	 ;  ofs
	cpc r14,__zero_reg__	 ;  ofs
	cpc r15,__zero_reg__	 ;  ofs
	brne .+2	 ; 
	rjmp .L123	 ; 
	ldd r8,Z+2	 ;  fs_9->csize, fs_9->csize
	mov r9,__zero_reg__	 ;  bcs
	mov r10,__zero_reg__	 ;  bcs
	mov r11,__zero_reg__	 ;  bcs
	ldi r27,9	 ; ,
	1:
	lsl r8	 ;  bcs
	rol r9	 ;  bcs
	rol r10	 ;  bcs
	rol r11	 ;  bcs
	dec r27	 ; 
	brne 1b
	cp r4,__zero_reg__	 ;  ifptr
	cpc r5,__zero_reg__	 ;  ifptr
	cpc r6,__zero_reg__	 ;  ifptr
	cpc r7,__zero_reg__	 ;  ifptr
	breq .L114	 ; ,
	ldi r27,1	 ; ,
	sub r4,r27	 ;  D.2480,
	sbc r5,__zero_reg__	 ;  D.2480
	sbc r6,__zero_reg__	 ;  D.2480
	sbc r7,__zero_reg__	 ;  D.2480
	movw r24,r14	 ;  D.2480, ofs
	movw r22,r12	 ;  D.2480, ofs
	subi r22,1	 ;  D.2480,
	sbc r23,__zero_reg__	 ;  D.2480
	sbc r24,__zero_reg__	 ;  D.2480
	sbc r25,__zero_reg__	 ;  D.2480
	movw r20,r10	 ; , bcs
	movw r18,r8	 ; , bcs
	call __udivmodsi4
	std Y+1,r18	 ;  %sfp,
	std Y+2,r19	 ;  %sfp,
	std Y+3,r20	 ;  %sfp,
	std Y+4,r21	 ;  %sfp,
	movw r24,r6	 ; , D.2480
	movw r22,r4	 ; , D.2480
	movw r20,r10	 ; , bcs
	movw r18,r8	 ; , bcs
	call __udivmodsi4
	ldd r24,Y+1	 ; , %sfp
	ldd r25,Y+2	 ; , %sfp
	ldd r26,Y+3	 ; , %sfp
	ldd r27,Y+4	 ; , %sfp
	cp r24,r18	 ; , D.2480
	cpc r25,r19	 ; , D.2480
	cpc r26,r20	 ; , D.2480
	cpc r27,r21	 ; , D.2480
	brlo .L114	 ; ,
	clr r24	 ;  D.2480
	clr r25	 ;  D.2480
	movw r26,r24	 ;  D.2480
	sub r24,r8	 ;  D.2480, bcs
	sbc r25,r9	 ;  D.2480, bcs
	sbc r26,r10	 ;  D.2480, bcs
	sbc r27,r11	 ;  D.2480, bcs
	and r24,r4	 ;  D.2480, D.2480
	and r25,r5	 ;  D.2480, D.2480
	and r26,r6	 ;  D.2480, D.2480
	and r27,r7	 ;  D.2480, D.2480
	movw r30,r16	 ; , fs
	std Z+20,r24	 ;  fs_9->fptr, D.2480
	std Z+21,r25	 ;  fs_9->fptr, D.2480
	std Z+22,r26	 ;  fs_9->fptr, D.2480
	std Z+23,r27	 ;  fs_9->fptr, D.2480
	sub r12,r24	 ;  ofs, D.2480
	sbc r13,r25	 ;  ofs, D.2480
	sbc r14,r26	 ;  ofs, D.2480
	sbc r15,r27	 ;  ofs, D.2480
	ldd r24,Z+30	 ;  clst, fs_9->curr_clust
	ldd r25,Z+31	 ;  clst, fs_9->curr_clust
	rjmp .L116	 ; 
.L114:
	movw r26,r16	 ; , fs
	adiw r26,28	 ;  fs_9->org_clust
	ld r24,X+	 ;  clst
	ld r25,X	 ;  clst
	sbiw r26,28+1	 ;  fs_9->org_clust
	adiw r26,30	 ;  fs_9->curr_clust
	st X+,r24	 ;  clst
	st X,r25	 ;  clst
	sbiw r26,30+1	 ;  fs_9->curr_clust
	rjmp .L116	 ; 
.L119:
	call get_fat	 ; 
	cpi r24,2	 ;  clst,
	cpc r25,__zero_reg__	 ;  clst
	brlo .L117	 ; ,
	movw r30,r16	 ; , fs
	ldd r18,Z+6	 ;  fs_9->n_fatent, fs_9->n_fatent
	ldd r19,Z+7	 ;  fs_9->n_fatent, fs_9->n_fatent
	cp r24,r18	 ;  clst, fs_9->n_fatent
	cpc r25,r19	 ;  clst, fs_9->n_fatent
	brsh .L117	 ; ,
	movw r30,r16	 ; , fs
	std Z+30,r24	 ;  fs_9->curr_clust, clst
	std Z+31,r25	 ;  fs_9->curr_clust, clst
	ldd r20,Z+20	 ;  D.2480, fs_9->fptr
	ldd r21,Z+21	 ;  D.2480, fs_9->fptr
	ldd r22,Z+22	 ;  D.2480, fs_9->fptr
	ldd r23,Z+23	 ;  D.2480, fs_9->fptr
	add r20,r8	 ;  D.2480, bcs
	adc r21,r9	 ;  D.2480, bcs
	adc r22,r10	 ;  D.2480, bcs
	adc r23,r11	 ;  D.2480, bcs
	std Z+20,r20	 ;  fs_9->fptr, D.2480
	std Z+21,r21	 ;  fs_9->fptr, D.2480
	std Z+22,r22	 ;  fs_9->fptr, D.2480
	std Z+23,r23	 ;  fs_9->fptr, D.2480
	sub r12,r8	 ;  ofs, bcs
	sbc r13,r9	 ;  ofs, bcs
	sbc r14,r10	 ;  ofs, bcs
	sbc r15,r11	 ;  ofs, bcs
.L116:
	cp r8,r12	 ;  bcs, ofs
	cpc r9,r13	 ;  bcs, ofs
	cpc r10,r14	 ;  bcs, ofs
	cpc r11,r15	 ;  bcs, ofs
	brlo .L119	 ; ,
	rjmp .L128	 ; 
.L117:
	movw r26,r16	 ; , fs
	adiw r26,1	 ;  fs_9->flag
	st X,__zero_reg__	 ; 
	rjmp .L127	 ; 
.L128:
	movw r30,r16	 ; , fs
	ldd r8,Z+20	 ;  D.2480, fs_9->fptr
	ldd r9,Z+21	 ;  D.2480, fs_9->fptr
	ldd r10,Z+22	 ;  D.2480, fs_9->fptr
	ldd r11,Z+23	 ;  D.2480, fs_9->fptr
	add r8,r12	 ;  D.2480, ofs
	adc r9,r13	 ;  D.2480, ofs
	adc r10,r14	 ;  D.2480, ofs
	adc r11,r15	 ;  D.2480, ofs
	std Z+20,r8	 ;  fs_9->fptr, D.2480
	std Z+21,r9	 ;  fs_9->fptr, D.2480
	std Z+22,r10	 ;  fs_9->fptr, D.2480
	std Z+23,r11	 ;  fs_9->fptr, D.2480
	call clust2sect	 ; 
	cp r22,__zero_reg__	 ;  sect
	cpc r23,__zero_reg__	 ;  sect
	cpc r24,__zero_reg__	 ;  sect
	cpc r25,__zero_reg__	 ;  sect
	brne .L120	 ; ,
	movw r30,r16	 ; , fs
	std Z+1,__zero_reg__	 ;  fs_9->flag,
.L127:
	ldi r24,lo8(1)	 ;  D.2478,
	ldi r25,0	 ;  D.2478
	rjmp .L112	 ; 
.L120:
	ldi r26,9	 ; ,
	1:
	lsr r11	 ;  D.2480
	ror r10	 ;  D.2480
	ror r9	 ;  D.2480
	ror r8	 ;  D.2480
	dec r26	 ; 
	brne 1b
	movw r26,r16	 ; , fs
	adiw r26,2	 ;  fs_9->csize
	ld r12,X	 ;  fs_9->csize
	mov r13,__zero_reg__	 ;  D.2482
	ldi r27,1	 ; ,
	sub r12,r27	 ;  D.2482,
	sbc r13,__zero_reg__	 ;  D.2482
	clr r14	 ;  D.2480
	sbrc r13,7	 ;  D.2480
	com r14	 ;  D.2480
	mov r15,r14	 ;  D.2480
	and r8,r12	 ;  D.2480, D.2480
	and r9,r13	 ;  D.2480, D.2480
	and r10,r14	 ;  D.2480, D.2480
	and r11,r15	 ;  D.2480, D.2480
	add r8,r22	 ;  D.2480, sect
	adc r9,r23	 ;  D.2480, sect
	adc r10,r24	 ;  D.2480, sect
	adc r11,r25	 ;  D.2480, sect
	movw r30,r16	 ; , fs
	std Z+32,r8	 ;  fs_9->dsect, D.2480
	std Z+33,r9	 ;  fs_9->dsect, D.2480
	std Z+34,r10	 ;  fs_9->dsect, D.2480
	std Z+35,r11	 ;  fs_9->dsect, D.2480
	rjmp .L123	 ; 
.L121:
	ldi r24,lo8(5)	 ;  D.2478,
	ldi r25,0	 ;  D.2478
	rjmp .L112	 ; 
.L122:
	ldi r24,lo8(4)	 ;  D.2478,
	ldi r25,0	 ;  D.2478
	rjmp .L112	 ; 
.L123:
	ldi r24,0	 ;  D.2478
	ldi r25,0	 ;  D.2478
.L112:
/* epilogue start */
	adiw r28,4	 ; ,
	out __SP_L__,r28	 ; ,
	out __SP_H__,r29	 ; ,
	pop r29	 ; 
	pop r28	 ; 
	pop r17	 ; 
	pop r16	 ; 
	pop r15	 ; 
	pop r14	 ; 
	pop r13	 ; 
	pop r12	 ; 
	pop r11	 ; 
	pop r10	 ; 
	pop r9	 ; 
	pop r8	 ; 
	pop r7	 ; 
	pop r6	 ; 
	pop r5	 ; 
	pop r4	 ; 
	ret
	.size	pf_lseek, .-pf_lseek
.global	pf_opendir
	.type	pf_opendir, @function
pf_opendir:
	push r16	 ; 
	push r17	 ; 
	push r28	 ; 
	push r29	 ; 
	in r28,__SP_L__	 ; 
	in r29,__SP_H__	 ; 
	sbiw r28,44	 ; ,
	out __SP_L__,r28	 ; ,
	out __SP_H__,r29	 ; ,
/* prologue: function */
/* frame size = 44 */
/* stack size = 48 */
.L__stack_usage = 48
	movw r16,r24	 ;  dj, dj
	movw r20,r22	 ;  path, path
	lds r24,FatFs	 ;  FatFs, FatFs
	lds r25,FatFs+1	 ;  FatFs, FatFs
	or r24,r25	 ;  FatFs
	breq .L132	 ; ,
	movw r24,r28	 ;  tmp57,
	adiw r24,33	 ;  tmp57,
	movw r30,r16	 ; , dj
	std Z+2,r24	 ;  dj_7(D)->fn, tmp57
	std Z+3,r25	 ;  dj_7(D)->fn, tmp57
	movw r22,r28	 ; ,
	subi r22,-1	 ; ,
	sbci r23,-1	 ; ,
	movw r24,r16	 ; , dj
	call follow_path	 ; 
	sbiw r24,0	 ;  res,
	brne .L135	 ; ,
	ldd r24,Y+1	 ;  dir, dir
	tst r24	 ;  dir
	breq .L131	 ; ,
	ldd r24,Y+12	 ;  dir, dir
	sbrs r24,4	 ;  dir,
	rjmp .L133	 ; 
	ldd r24,Y+28	 ;  MEM[(BYTE *)&dir + 27B], MEM[(BYTE *)&dir + 27B]
	ldi r25,0	 ;  D.2487
	mov r25,r24	 ;  D.2487, D.2487
	clr r24	 ;  D.2487
	ldd r18,Y+27	 ;  MEM[(BYTE *)&dir + 26B], MEM[(BYTE *)&dir + 26B]
	or r24,r18	 ;  D.2487, MEM[(BYTE *)&dir + 26B]
	movw r30,r16	 ; , dj
	std Z+4,r24	 ;  dj_7(D)->sclust, D.2487
	std Z+5,r25	 ;  dj_7(D)->sclust, D.2487
	rjmp .L131	 ; 
.L132:
	ldi r24,lo8(5)	 ;  res,
	ldi r25,0	 ;  res
	rjmp .L135	 ; 
.L133:
	ldi r24,lo8(3)	 ;  res,
	ldi r25,0	 ;  res
	rjmp .L135	 ; 
.L131:
	movw r24,r16	 ; , dj
	call dir_rewind	 ; 
.L135:
/* epilogue start */
	adiw r28,44	 ; ,
	out __SP_L__,r28	 ; ,
	out __SP_H__,r29	 ; ,
	pop r29	 ; 
	pop r28	 ; 
	pop r17	 ; 
	pop r16	 ; 
	ret
	.size	pf_opendir, .-pf_opendir
.global	pf_readdir
	.type	pf_readdir, @function
pf_readdir:
	push r12	 ; 
	push r13	 ; 
	push r14	 ; 
	push r15	 ; 
	push r16	 ; 
	push r17	 ; 
	push r28	 ; 
	push r29	 ; 
	in r28,__SP_L__	 ; 
	in r29,__SP_H__	 ; 
	sbiw r28,44	 ; ,
	out __SP_L__,r28	 ; ,
	out __SP_H__,r29	 ; ,
/* prologue: function */
/* frame size = 44 */
/* stack size = 52 */
.L__stack_usage = 52
	movw r14,r24	 ;  dj, dj
	movw r12,r22	 ;  fno, fno
	lds r24,FatFs	 ;  FatFs, FatFs
	lds r25,FatFs+1	 ;  FatFs, FatFs
	or r24,r25	 ;  FatFs
	brne .+2	 ; 
	rjmp .L156	 ; 
	movw r24,r28	 ;  tmp123,
	adiw r24,33	 ;  tmp123,
	movw r26,r14	 ; , dj
	adiw r26,2	 ;  dj_6(D)->fn
	st X+,r24	 ;  tmp123
	st X,r25	 ;  tmp123
	sbiw r26,2+1	 ;  dj_6(D)->fn
	cp r22,__zero_reg__	 ;  fno
	cpc r23,__zero_reg__	 ;  fno
	breq .L140	 ; ,
	ldi r24,lo8(3)	 ;  res,
	ldi r25,0	 ;  res
	rjmp .L141	 ; 
.L140:
	movw r24,r14	 ; , dj
	call dir_rewind	 ; 
	rjmp .L183	 ; 
.L145:
	movw r30,r14	 ; , dj
	ld r18,Z	 ;  D.2516, dj_6(D)->index
	ldd r19,Z+1	 ;  D.2516, dj_6(D)->index
	andi r18,15	 ;  D.2516,
	clr r19	 ;  D.2516
	ldi r24,5	 ; ,
	1:
	lsl r18	 ;  D.2516
	rol r19	 ;  D.2516
	dec r24	 ; 
	brne 1b
	ldi r16,lo8(32)	 ; ,
	ldi r17,0	 ; 
	movw r24,r28	 ; ,
	adiw r24,1	 ; ,
	call disk_readp	 ; 
	or r24,r25	 ; 
	breq .+2	 ; 
	rjmp .L157	 ; 
	ldd r24,Y+1	 ;  c, MEM[(BYTE *)&dir]
	tst r24	 ;  c
	brne .+2	 ; 
	rjmp .L158	 ; 
	ldd r25,Y+12	 ;  D.2519, MEM[(BYTE *)&dir + 11B]
	cpi r24,lo8(-27)	 ;  c,
	brne .L184	 ; ,
.L143:
	movw r24,r14	 ; , dj
	call dir_next	 ; 
	sbiw r24,0	 ;  res,
	brne .L155	 ; ,
.L141:
	movw r26,r14	 ; , dj
	adiw r26,8	 ;  dj_6(D)->sect
	ld r20,X+	 ;  D.2517
	ld r21,X+	 ;  D.2517
	ld r22,X+	 ;  D.2517
	ld r23,X	 ;  D.2517
	sbiw r26,8+3	 ;  dj_6(D)->sect
	cp r20,__zero_reg__	 ;  D.2517
	cpc r21,__zero_reg__	 ;  D.2517
	cpc r22,__zero_reg__	 ;  D.2517
	cpc r23,__zero_reg__	 ;  D.2517
	brne .L145	 ; ,
	rjmp .L185	 ; 
.L184:
	cpi r24,lo8(46)	 ;  c,
	breq .L143	 ; ,
	sbrc r25,3	 ;  D.2519,
	rjmp .L143	 ; 
	rjmp .L144	 ; 
.L185:
	sbiw r24,0	 ;  res,
	breq .L144	 ; ,
.L155:
	movw r30,r14	 ; , dj
	std Z+8,__zero_reg__	 ;  dj_6(D)->sect,
	std Z+9,__zero_reg__	 ;  dj_6(D)->sect,
	std Z+10,__zero_reg__	 ;  dj_6(D)->sect,
	std Z+11,__zero_reg__	 ;  dj_6(D)->sect,
	cpi r24,3	 ;  res,
	cpc r25,__zero_reg__	 ;  res
	brne .L146	 ; ,
.L144:
	movw r30,r12	 ;  p, fno
	adiw r30,9	 ;  p,
	movw r26,r14	 ; , dj
	adiw r26,8	 ;  dj_6(D)->sect
	ld r20,X+	 ;  dj_6(D)->sect
	ld r21,X+	 ;  dj_6(D)->sect
	ld r22,X+	 ;  dj_6(D)->sect
	ld r23,X	 ;  dj_6(D)->sect
	sbiw r26,8+3	 ;  dj_6(D)->sect
	or r20,r21	 ;  dj_6(D)->sect
	or r20,r22	 ;  dj_6(D)->sect
	or r20,r23	 ;  dj_6(D)->sect
	brne .+2	 ; 
	rjmp .L148	 ; 
	movw r24,r28	 ;  ivtmp.119,
	adiw r24,1	 ;  ivtmp.119,
	movw r26,r30	 ;  ivtmp.121, p
	movw r20,r28	 ;  D.2521,
	subi r20,-9	 ;  D.2521,
	sbci r21,-1	 ;  D.2521,
	rjmp .L151	 ; 
.L146:
	sbiw r24,0	 ;  res,
	breq .+2	 ; 
	rjmp .L183	 ; 
	rjmp .L144	 ; 
.L186:
	cpi r22,lo8(5)	 ;  c,
	brne .L150	 ; ,
	ldi r22,lo8(-27)	 ;  c,
.L150:
	movw r18,r26	 ;  D.2521, ivtmp.121
	subi r18,-1	 ;  D.2521,
	sbci r19,-1	 ;  D.2521,
	movw r30,r18	 ;  p, D.2521
	st X,r22	 ;  MEM[base: p_106, offset: 0B], c
	cp r24,r20	 ;  ivtmp.119, D.2521
	cpc r25,r21	 ;  ivtmp.119, D.2521
	breq .L149	 ; ,
	movw r26,r18	 ;  ivtmp.121, D.2521
.L151:
	movw r30,r24	 ; , ivtmp.119
	ld r22,Z+	 ;  c, MEM[base: _127, offset: 0B]
	movw r24,r30	 ;  ivtmp.119,
	cpi r22,lo8(32)	 ;  c,
	brne .L186	 ; ,
	movw r30,r26	 ;  p, ivtmp.121
.L149:
	ldd r18,Y+9	 ;  MEM[(BYTE *)&dir + 8B], MEM[(BYTE *)&dir + 8B]
	cpi r18,lo8(32)	 ;  MEM[(BYTE *)&dir + 8B],
	breq .L152	 ; ,
	ldi r24,lo8(46)	 ;  tmp130,
	st Z,r24	 ;  *p_94, tmp130
	movw r24,r30	 ;  p, p
	adiw r24,2	 ;  p,
	std Z+1,r18	 ;  MEM[(char *)p_94 + 1B], MEM[(BYTE *)&dir + 8B]
	ldd r18,Y+10	 ;  c, MEM[(BYTE *)&dir + 9B]
	cpi r18,lo8(32)	 ;  c,
	breq .L153	 ; ,
	adiw r24,1	 ;  p,
	std Z+2,r18	 ;  MEM[(char *)p_94 + 2B], c
	ldd r18,Y+11	 ;  c, MEM[(BYTE *)&dir + 10B]
	cpi r18,lo8(32)	 ;  c,
	brne .L154	 ; ,
.L153:
	movw r30,r24	 ;  p, p
	rjmp .L152	 ; 
.L154:
	std Z+3,r18	 ;  MEM[(char *)p_94 + 3B], c
	adiw r30,4	 ;  p,
.L152:
	ldd r24,Y+12	 ;  MEM[(BYTE *)&dir + 11B], MEM[(BYTE *)&dir + 11B]
	movw r26,r12	 ; , fno
	adiw r26,8	 ;  fno_8(D)->fattrib
	st X,r24	 ;  MEM[(BYTE *)&dir + 11B]
	ldd r24,Y+32	 ;  MEM[(BYTE *)&dir + 31B], MEM[(BYTE *)&dir + 31B]
	ldd r20,Y+31	 ;  MEM[(BYTE *)&dir + 30B], MEM[(BYTE *)&dir + 30B]
	ldi r21,0	 ;  D.2517
	ldi r22,0	 ;  D.2517
	ldi r23,0	 ;  D.2517
	movw r22,r20	 ;  D.2517, D.2517
	clr r21	 ;  D.2517
	clr r20	 ;  D.2517
	or r23,r24	 ;  D.2517, MEM[(BYTE *)&dir + 31B]
	ldd r24,Y+29	 ;  MEM[(BYTE *)&dir + 28B], MEM[(BYTE *)&dir + 28B]
	or r20,r24	 ;  D.2517, MEM[(BYTE *)&dir + 28B]
	ldd r24,Y+30	 ;  MEM[(BYTE *)&dir + 29B], MEM[(BYTE *)&dir + 29B]
	ldi r25,0	 ;  D.2516
	mov r25,r24	 ;  D.2516, D.2516
	clr r24	 ;  D.2516
	ldi r26,0	 ;  D.2517
	ldi r27,0	 ;  D.2517
	or r20,r24	 ;  D.2517, D.2517
	or r21,r25	 ;  D.2517, D.2517
	or r22,r26	 ;  D.2517, D.2517
	or r23,r27	 ;  D.2517, D.2517
	movw r26,r12	 ; , fno
	st X+,r20	 ;  fno_8(D)->fsize, D.2517
	st X+,r21	 ;  fno_8(D)->fsize, D.2517
	st X+,r22	 ;  fno_8(D)->fsize, D.2517
	st X,r23	 ;  fno_8(D)->fsize, D.2517
	sbiw r26,3
	ldd r24,Y+26	 ;  MEM[(BYTE *)&dir + 25B], MEM[(BYTE *)&dir + 25B]
	ldi r25,0	 ;  D.2516
	mov r25,r24	 ;  D.2516, D.2516
	clr r24	 ;  D.2516
	ldd r18,Y+25	 ;  MEM[(BYTE *)&dir + 24B], MEM[(BYTE *)&dir + 24B]
	or r24,r18	 ;  D.2516, MEM[(BYTE *)&dir + 24B]
	adiw r26,4	 ;  fno_8(D)->fdate
	st X+,r24	 ;  D.2516
	st X,r25	 ;  D.2516
	sbiw r26,4+1	 ;  fno_8(D)->fdate
	ldd r24,Y+24	 ;  MEM[(BYTE *)&dir + 23B], MEM[(BYTE *)&dir + 23B]
	ldi r25,0	 ;  D.2516
	mov r25,r24	 ;  D.2516, D.2516
	clr r24	 ;  D.2516
	ldd r18,Y+23	 ;  MEM[(BYTE *)&dir + 22B], MEM[(BYTE *)&dir + 22B]
	or r24,r18	 ;  D.2516, MEM[(BYTE *)&dir + 22B]
	adiw r26,6	 ;  fno_8(D)->ftime
	st X+,r24	 ;  D.2516
	st X,r25	 ;  D.2516
	sbiw r26,6+1	 ;  fno_8(D)->ftime
.L148:
	st Z,__zero_reg__	 ;  *p_80,
	movw r24,r14	 ; , dj
	call dir_next	 ; 
	cpi r24,3	 ;  res,
	cpc r25,__zero_reg__	 ;  res
	brne .L183	 ; ,
	ldi r24,0	 ;  res
	ldi r25,0	 ;  res
	rjmp .L183	 ; 
.L156:
	ldi r24,lo8(5)	 ;  res,
	ldi r25,0	 ;  res
	rjmp .L183	 ; 
.L157:
	ldi r24,lo8(1)	 ;  res,
	ldi r25,0	 ;  res
	rjmp .L155	 ; 
.L158:
	ldi r24,lo8(3)	 ;  res,
	ldi r25,0	 ;  res
	rjmp .L155	 ; 
.L183:
/* epilogue start */
	adiw r28,44	 ; ,
	out __SP_L__,r28	 ; ,
	out __SP_H__,r29	 ; ,
	pop r29	 ; 
	pop r28	 ; 
	pop r17	 ; 
	pop r16	 ; 
	pop r15	 ; 
	pop r14	 ; 
	pop r13	 ; 
	pop r12	 ; 
	ret
	.size	pf_readdir, .-pf_readdir
	.local	FatFs
	.comm	FatFs,2,1
	.ident	"GCC: (GNU) 4.8.1"
.global __do_clear_bss
