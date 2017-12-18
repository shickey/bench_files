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
	ldd r20,Z+6	 ;  D.2170, fs_3->n_fatent
	ldd r21,Z+7	 ;  D.2170, fs_3->n_fatent
	subi r20,2	 ;  D.2170,
	sbc r21,__zero_reg__	 ;  D.2170
	cp r18,r20	 ;  clst, D.2170
	cpc r19,r21	 ;  clst, D.2170
	brsh .L3	 ; ,
	ldd r26,Z+2	 ;  D.2172, fs_3->csize
	ldi r27,0	 ; 
	call __umulhisi3
	ldd r16,Z+16	 ;  fs_3->database, fs_3->database
	ldd r17,Z+17	 ;  fs_3->database, fs_3->database
	ldd r18,Z+18	 ;  fs_3->database, fs_3->database
	ldd r19,Z+19	 ;  fs_3->database, fs_3->database
	add r22,r16	 ;  D.2168, fs_3->database
	adc r23,r17	 ;  D.2168, fs_3->database
	adc r24,r18	 ;  D.2168, fs_3->database
	adc r25,r19	 ;  D.2168, fs_3->database
	rjmp .L2	 ; 
.L3:
	ldi r22,0	 ;  D.2168
	ldi r23,0	 ;  D.2168
	movw r24,r22	 ;  D.2168
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
	ldi r24,0	 ;  D.2176
	ldi r25,0	 ;  D.2176
	rjmp .L6	 ; 
.L10:
	ldi r24,lo8(1)	 ;  D.2176,
	ldi r25,0	 ;  D.2176
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
	ld r18,Z	 ;  D.2183, fs_4->fs_type
	cpi r18,lo8(2)	 ;  D.2183,
	brne .L17	 ; ,
	movw r18,r24	 ;  D.2184, clst
	clr r19	 ;  D.2184
	lsl r18	 ;  D.2184
	rol r19	 ;  D.2184
	mov r24,r25	 ;  D.2184, clst
	clr r25	 ;  D.2184
	ldd r20,Z+8	 ;  D.2185, fs_4->fatbase
	ldd r21,Z+9	 ;  D.2185, fs_4->fatbase
	ldd r22,Z+10	 ;  D.2185, fs_4->fatbase
	ldd r23,Z+11	 ;  D.2185, fs_4->fatbase
	add r20,r24	 ;  D.2185, D.2184
	adc r21,r25	 ;  D.2185, D.2184
	adc r22,__zero_reg__	 ;  D.2185
	adc r23,__zero_reg__	 ;  D.2185
	ldi r16,lo8(2)	 ; ,
	ldi r17,0	 ; 
	movw r24,r28	 ; ,
	adiw r24,1	 ; ,
	call disk_readp	 ; 
	or r24,r25	 ; 
	brne .L17	 ; ,
	ldd r24,Y+2	 ;  buf, buf
	ldi r25,0	 ;  D.2184
	mov r25,r24	 ;  D.2181, D.2184
	clr r24	 ;  D.2181
	ldd r18,Y+1	 ;  buf, buf
	or r24,r18	 ;  D.2181, buf
	rjmp .L13	 ; 
.L17:
	ldi r24,lo8(1)	 ;  D.2181,
	ldi r25,0	 ;  D.2181
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
	brne .L22	 ; ,
	ldd r24,Y+1	 ;  MEM[(BYTE *)buf_4(D) + 1B], MEM[(BYTE *)buf_4(D) + 1B]
	ldi r25,0	 ;  D.2196
	mov r25,r24	 ;  D.2196, D.2196
	clr r24	 ;  D.2196
	ld r18,Y	 ;  *buf_4(D), *buf_4(D)
	or r24,r18	 ;  D.2196, *buf_4(D)
	cpi r24,85	 ;  D.2196,
	sbci r25,-86	 ;  D.2196,
	brne .L23	 ; ,
	ldi r18,lo8(54)	 ; ,
	ldi r19,0	 ; 
	movw r22,r14	 ; , sect
	movw r20,r12	 ; , sect
	movw r24,r28	 ; , buf
	call disk_readp	 ; 
	or r24,r25	 ; 
	brne .L24	 ; ,
	ldd r18,Y+1	 ;  MEM[(BYTE *)buf_4(D) + 1B], MEM[(BYTE *)buf_4(D) + 1B]
	ldi r19,0	 ;  D.2196
	mov r19,r18	 ;  D.2196, D.2196
	clr r18	 ;  D.2196
	ld r24,Y	 ;  *buf_4(D), *buf_4(D)
	or r18,r24	 ;  D.2196, *buf_4(D)
	ldi r24,lo8(1)	 ;  D.2192,
	cpi r18,70	 ;  D.2196,
	sbci r19,65	 ;  D.2196,
	brne .L19	 ; ,
	ldi r24,0	 ;  D.2192
	rjmp .L19	 ; 
.L24:
	ldi r24,lo8(1)	 ;  D.2192,
	rjmp .L19	 ; 
.L22:
	ldi r24,lo8(3)	 ;  D.2192,
	rjmp .L19	 ; 
.L23:
	ldi r24,lo8(2)	 ;  D.2192,
.L19:
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
	rjmp .L35	 ; 
	ldi r20,0	 ; 
	ldi r21,0	 ; 
	movw r22,r20	 ; 
	movw r24,r28	 ; ,
	adiw r24,1	 ; ,
	call check_fs	 ; 
	cpi r24,lo8(1)	 ;  fmt,
	brne .L36	 ; ,
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
	breq .L28	 ; ,
.L30:
	ldi r24,lo8(1)	 ;  D.2199,
	ldi r25,0	 ;  D.2199
	rjmp .L40	 ; 
.L28:
	ldd r24,Y+5	 ;  buf, buf
	cpse r24,__zero_reg__	 ;  buf,
	rjmp .L29	 ; 
.L31:
	ldi r24,lo8(6)	 ;  D.2199,
	ldi r25,0	 ;  D.2199
	rjmp .L40	 ; 
.L29:
	ldd r24,Y+12	 ;  buf, buf
	ldd r4,Y+11	 ;  buf, buf
	mov r5,__zero_reg__	 ;  D.2202
	mov r6,__zero_reg__	 ;  D.2202
	mov r7,__zero_reg__	 ;  D.2202
	movw r6,r4	 ;  bsect, D.2202
	clr r5	 ;  bsect
	clr r4	 ;  bsect
	or r7,r24	 ;  bsect, buf
	ldd r24,Y+9	 ;  buf, buf
	or r4,r24	 ;  bsect, buf
	ldd r24,Y+10	 ;  buf, buf
	ldi r25,0	 ;  D.2203
	mov r25,r24	 ;  D.2203, D.2203
	clr r24	 ;  D.2203
	ldi r26,0	 ;  D.2202
	ldi r27,0	 ;  D.2202
	or r4,r24	 ;  bsect, D.2202
	or r5,r25	 ;  bsect, D.2202
	or r6,r26	 ;  bsect, D.2202
	or r7,r27	 ;  bsect, D.2202
	movw r22,r6	 ; , bsect
	movw r20,r4	 ; , bsect
	movw r24,r28	 ; ,
	adiw r24,1	 ; ,
	call check_fs	 ; 
	rjmp .L27	 ; 
.L36:
	mov r4,__zero_reg__	 ;  bsect
	mov r5,__zero_reg__	 ;  bsect
	movw r6,r4	 ;  bsect
.L27:
	cpi r24,lo8(3)	 ;  fmt,
	breq .L30	 ; ,
	cpse r24,__zero_reg__	 ;  fmt,
	rjmp .L31	 ; 
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
	brne .L30	 ; ,
	ldd r18,Y+11	 ;  buf, buf
	ldi r19,0	 ;  D.2203
	mov r19,r18	 ;  D.2203, D.2203
	clr r18	 ;  D.2203
	ldd r24,Y+10	 ;  buf, buf
	or r18,r24	 ;  D.2203, buf
	ldi r20,0	 ;  fsize
	ldi r21,0	 ;  fsize
	cp r18,__zero_reg__	 ;  fsize
	cpc r19,__zero_reg__	 ;  fsize
	cpc r20,__zero_reg__	 ;  fsize
	cpc r21,__zero_reg__	 ;  fsize
	brne .L32	 ; ,
	ldd r24,Y+27	 ;  buf, buf
	ldd r18,Y+26	 ;  buf, buf
	mov r20,r18	 ;  D.2202, buf
	ldi r21,0	 ;  D.2202
	ldi r22,0	 ;  D.2202
	ldi r23,0	 ;  D.2202
	clr r19	 ;  fsize
	clr r18	 ;  fsize
	or r21,r24	 ;  fsize, buf
	ldd r24,Y+24	 ;  buf, buf
	or r18,r24	 ;  fsize, buf
	ldd r24,Y+25	 ;  buf, buf
	ldi r25,0	 ;  D.2203
	mov r25,r24	 ;  D.2203, D.2203
	clr r24	 ;  D.2203
	ldi r26,0	 ;  D.2202
	ldi r27,0	 ;  D.2202
	or r18,r24	 ;  fsize, D.2202
	or r19,r25	 ;  fsize, D.2202
	or r20,r26	 ;  fsize, D.2202
	or r21,r27	 ;  fsize, D.2202
.L32:
	ldd r26,Y+4	 ;  buf, buf
	ldi r27,0	 ; 
	call __muluhisi3
	std Y+37,r22	 ;  %sfp,
	std Y+38,r23	 ;  %sfp,
	std Y+39,r24	 ;  %sfp,
	std Y+40,r25	 ;  %sfp,
	ldd r16,Y+3	 ;  buf, buf
	ldi r17,0	 ;  D.2203
	mov r17,r16	 ;  D.2203, D.2203
	clr r16	 ;  D.2203
	ldd r24,Y+2	 ;  buf, buf
	or r16,r24	 ;  D.2203, buf
	ldi r18,0	 ;  D.2202
	ldi r19,0	 ;  D.2202
	add r4,r16	 ;  D.2202, D.2202
	adc r5,r17	 ;  D.2202, D.2202
	adc r6,r18	 ;  D.2202, D.2202
	adc r7,r19	 ;  D.2202, D.2202
	movw r26,r10	 ; , fs
	adiw r26,8	 ;  fs_70(D)->fatbase
	st X+,r4	 ;  D.2202
	st X+,r5	 ;  D.2202
	st X+,r6	 ;  D.2202
	st X,r7	 ;  D.2202
	sbiw r26,8+3	 ;  fs_70(D)->fatbase
	ldd r30,Y+1	 ;  D.2200, buf
	adiw r26,2	 ;  fs_70(D)->csize
	st X,r30	 ;  D.2200
	sbiw r26,2	 ;  fs_70(D)->csize
	ldd r12,Y+6	 ;  buf, buf
	mov r13,__zero_reg__	 ;  D.2203
	mov r13,r12	 ;  D.2203, D.2203
	clr r12	 ;  D.2203
	ldd r24,Y+5	 ;  buf, buf
	or r12,r24	 ;  D.2203, buf
	adiw r26,4	 ;  fs_70(D)->n_rootdir
	st X+,r12	 ;  D.2203
	st X,r13	 ;  D.2203
	sbiw r26,4+1	 ;  fs_70(D)->n_rootdir
	ldd r24,Y+8	 ;  buf, buf
	ldi r25,0	 ;  D.2203
	mov r25,r24	 ;  D.2203, D.2203
	clr r24	 ;  D.2203
	ldd r20,Y+7	 ;  buf, buf
	or r24,r20	 ;  D.2203, buf
	ldi r26,0	 ;  tsect
	ldi r27,0	 ;  tsect
	sbiw r24,0	 ;  tsect,
	cpc r26,__zero_reg__	 ;  tsect
	cpc r27,__zero_reg__	 ;  tsect
	brne .L33	 ; ,
	ldd r20,Y+23	 ;  buf, buf
	ldd r24,Y+22	 ;  buf, buf
	ldi r25,0	 ;  D.2202
	ldi r26,0	 ;  D.2202
	ldi r27,0	 ;  D.2202
	movw r26,r24	 ;  tsect, D.2202
	clr r25	 ;  tsect
	clr r24	 ;  tsect
	or r27,r20	 ;  tsect, buf
	ldd r20,Y+20	 ;  buf, buf
	or r24,r20	 ;  tsect, buf
	ldd r20,Y+21	 ;  buf, buf
	ldi r21,0	 ;  D.2203
	mov r21,r20	 ;  D.2203, D.2203
	clr r20	 ;  D.2203
	ldi r22,0	 ;  D.2202
	ldi r23,0	 ;  D.2202
	or r24,r20	 ;  tsect, D.2202
	or r25,r21	 ;  tsect, D.2202
	or r26,r22	 ;  tsect, D.2202
	or r27,r23	 ;  tsect, D.2202
.L33:
	ldi r31,4	 ; ,
	1:
	lsr r13	 ;  D.2203
	ror r12	 ;  D.2203
	dec r31	 ; 
	brne 1b
	mov r14,__zero_reg__	 ;  D.2202
	mov r15,__zero_reg__	 ;  D.2202
	movw r22,r24	 ;  D.2202, tsect
	movw r24,r26	 ;  D.2202, tsect
	sub r22,r16	 ;  D.2202, D.2202
	sbc r23,r17	 ;  D.2202, D.2202
	sbc r24,r18	 ;  D.2202, D.2202
	sbc r25,r19	 ;  D.2202, D.2202
	ldd r18,Y+37	 ; , %sfp
	ldd r19,Y+38	 ; , %sfp
	ldd r20,Y+39	 ; , %sfp
	ldd r21,Y+40	 ; , %sfp
	sub r22,r18	 ;  D.2202,
	sbc r23,r19	 ;  D.2202,
	sbc r24,r20	 ;  D.2202,
	sbc r25,r21	 ;  D.2202,
	sub r22,r12	 ;  D.2202, D.2202
	sbc r23,r13	 ;  D.2202, D.2202
	sbc r24,r14	 ;  D.2202, D.2202
	sbc r25,r15	 ;  D.2202, D.2202
	mov r18,r30	 ;  D.2202, D.2200
	ldi r19,0	 ;  D.2202
	ldi r20,0	 ;  D.2202
	ldi r21,0	 ;  D.2202
	call __udivmodsi4
	movw r26,r20	 ;  mclst, tmp212
	movw r24,r18	 ;  mclst, tmp212
	adiw r24,2	 ;  mclst,
	adc r26,__zero_reg__	 ;  mclst
	adc r27,__zero_reg__	 ;  mclst
	movw r30,r10	 ; , fs
	std Z+6,r24	 ;  fs_70(D)->n_fatent, mclst
	std Z+7,r25	 ;  fs_70(D)->n_fatent, mclst
	movw r26,r20	 ;  D.2202, tmp212
	movw r24,r18	 ;  D.2202, tmp212
	subi r24,-10	 ;  D.2202,
	sbci r25,15	 ;  D.2202,
	sbc r26,__zero_reg__	 ;  D.2202
	sbc r27,__zero_reg__	 ;  D.2202
	cpi r24,-1	 ;  D.2202,
	sbci r25,-17	 ;  D.2202,
	cpc r26,__zero_reg__	 ;  D.2202
	cpc r27,__zero_reg__	 ;  D.2202
	brlo .+2	 ; 
	rjmp .L31	 ; 
	ldi r24,lo8(2)	 ;  tmp217,
	movw r26,r10	 ; , fs
	st X,r24	 ;  fs_70(D)->fs_type, tmp217
	ldd r18,Y+37	 ; , %sfp
	ldd r19,Y+38	 ; , %sfp
	ldd r20,Y+39	 ; , %sfp
	ldd r21,Y+40	 ; , %sfp
	add r4,r18	 ;  D.2202,
	adc r5,r19	 ;  D.2202,
	adc r6,r20	 ;  D.2202,
	adc r7,r21	 ;  D.2202,
	adiw r26,12	 ;  fs_70(D)->dirbase
	st X+,r4	 ;  D.2202
	st X+,r5	 ;  D.2202
	st X+,r6	 ;  D.2202
	st X,r7	 ;  D.2202
	sbiw r26,12+3	 ;  fs_70(D)->dirbase
	add r4,r12	 ;  D.2202, D.2202
	adc r5,r13	 ;  D.2202, D.2202
	adc r6,r14	 ;  D.2202, D.2202
	adc r7,r15	 ;  D.2202, D.2202
	movw r30,r10	 ; , fs
	std Z+16,r4	 ;  fs_70(D)->database, D.2202
	std Z+17,r5	 ;  fs_70(D)->database, D.2202
	std Z+18,r6	 ;  fs_70(D)->database, D.2202
	std Z+19,r7	 ;  fs_70(D)->database, D.2202
	std Z+1,__zero_reg__	 ;  fs_70(D)->flag,
	sts FatFs,r10	 ;  FatFs, fs
	sts FatFs+1,r11	 ;  FatFs, fs
	ldi r24,0	 ;  D.2199
	ldi r25,0	 ;  D.2199
	rjmp .L40	 ; 
.L35:
	ldi r24,lo8(2)	 ;  D.2199,
	ldi r25,0	 ;  D.2199
.L40:
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
	in r28,__SP_L__	 ; 
	in r29,__SP_H__	 ; 
	sbiw r28,56	 ; ,
	out __SP_L__,r28	 ; ,
	out __SP_H__,r29	 ; ,
/* prologue: function */
/* frame size = 56 */
/* stack size = 69 */
.L__stack_usage = 69
	lds r12,FatFs	 ;  fs, FatFs
	lds r13,FatFs+1	 ;  fs, FatFs
	cp r12,__zero_reg__	 ;  fs
	cpc r13,__zero_reg__	 ;  fs
	brne .+2	 ; 
	rjmp .L69	 ; 
	movw r26,r12	 ; , fs
	adiw r26,1	 ;  fs_4->flag
	st X,__zero_reg__	 ; 
	movw r18,r28	 ;  tmp157,
	subi r18,-33	 ;  tmp157,
	sbci r19,-1	 ; ,
	std Y+47,r18	 ;  dj.fn, tmp157
	std Y+48,r19	 ;  dj.fn, tmp157
	movw r18,r24	 ; ,
.L43:
	movw r14,r18	 ;  path, ivtmp.78
	movw r30,r18	 ; , path
	ld r24,Z	 ;  D.2287, MEM[base: path_155, offset: 0B]
	subi r18,-1	 ;  ivtmp.78,
	sbci r19,-1	 ;  ivtmp.78,
	cpi r24,lo8(32)	 ;  D.2287,
	breq .L43	 ; ,
	cpi r24,lo8(47)	 ;  D.2287,
	brne .L45	 ; ,
	movw r14,r18	 ;  path, ivtmp.78
.L45:
	std Y+49,__zero_reg__	 ;  dj.sclust,
	std Y+50,__zero_reg__	 ;  dj.sclust,
	movw r26,r14	 ; , path
	ld r24,X	 ;  *path_149, *path_149
	cpi r24,lo8(32)	 ;  *path_149,
	brsh .L67	 ; ,
	movw r24,r28	 ; ,
	adiw r24,45	 ; ,
	call dir_rewind	 ; 
	std Y+1,__zero_reg__	 ;  MEM[(BYTE *)&dir],
	sbiw r24,0	 ;  res,
	brne .+2	 ; 
	rjmp .L47	 ; 
	rjmp .L88	 ; 
.L67:
	ldi r26,lo8(32)	 ; ,
	mov r7,r26	 ;  tmp222,
	movw r8,r28	 ;  D.2295,
	ldi r27,12	 ; ,
	add r8,r27	 ;  D.2295,
	adc r9,__zero_reg__	 ;  D.2295
.L87:
	ldd r30,Y+47	 ;  dst, MEM[(struct DIR *)&dj + 2B]
	ldd r31,Y+48	 ;  dst, MEM[(struct DIR *)&dj + 2B]
	movw r26,r30	 ;  ivtmp.70, dst
	movw r24,r30	 ;  D.2295, dst
	adiw r24,11	 ;  D.2295,
.L48:
	cp r26,r24	 ;  ivtmp.70, D.2295
	cpc r27,r25	 ;  ivtmp.70, D.2295
	breq .L91	 ; ,
	st X+,r7	 ;  MEM[base: _107, offset: 0B], tmp222
	rjmp .L48	 ; 
.L91:
	ldi r24,0	 ;  i
	ldi r25,0	 ;  i
	ldi r18,lo8(8)	 ;  ni,
.L50:
	ldi r19,lo8(1)	 ;  i,
	add r19,r25	 ;  i, i
	movw r26,r14	 ;  tmp162, path
	add r26,r25	 ;  tmp162, i
	adc r27,__zero_reg__	 ;  tmp162
	ld r25,X	 ;  c, *_68
	cpi r25,lo8(33)	 ;  c,
	brlo .L51	 ; ,
	cpi r25,lo8(47)	 ;  c,
	breq .L51	 ; ,
	cpi r25,lo8(46)	 ;  c,
	brne .+2	 ; 
	rjmp .L52	 ; 
	cp r24,r18	 ;  i, ni
	brsh .L51	 ; ,
	movw r26,r30	 ;  tmp164, dst
	add r26,r24	 ;  tmp164, i
	adc r27,__zero_reg__	 ;  tmp164
	st X,r25	 ;  *_75, c
	subi r24,lo8(-(1))	 ;  i,
.L53:
	mov r25,r19	 ;  i, i
	rjmp .L50	 ; 
.L51:
	add r14,r19	 ;  path, i
	adc r15,__zero_reg__	 ;  path
	ldi r24,lo8(1)	 ;  D.2291,
	cpi r25,lo8(33)	 ;  c,
	brlo .L54	 ; ,
	ldi r24,0	 ;  D.2291
.L54:
	std Z+11,r24	 ;  MEM[(BYTE *)dst_49 + 11B], D.2291
	movw r24,r28	 ; ,
	adiw r24,45	 ; ,
	call dir_rewind	 ; 
	sbiw r24,0	 ;  res,
	breq .+2	 ; 
	rjmp .L88	 ; 
.L65:
	ldd r18,Y+45	 ;  D.2286, dj.index
	ldd r19,Y+46	 ;  D.2286, dj.index
	andi r18,15	 ;  D.2286,
	clr r19	 ;  D.2286
	ldi r31,5	 ; ,
	1:
	lsl r18	 ;  D.2286
	rol r19	 ;  D.2286
	dec r31	 ; 
	brne 1b
	ldd r20,Y+53	 ;  dj.sect, dj.sect
	ldd r21,Y+54	 ;  dj.sect, dj.sect
	ldd r22,Y+55	 ;  dj.sect, dj.sect
	ldd r23,Y+56	 ;  dj.sect, dj.sect
	ldi r16,lo8(32)	 ; ,
	ldi r17,0	 ; 
	movw r24,r28	 ; ,
	adiw r24,1	 ; ,
	call disk_readp	 ; 
	or r24,r25	 ; 
	breq .+2	 ; 
	rjmp .L71	 ; 
	ldd r24,Y+1	 ;  MEM[(BYTE *)&dir], MEM[(BYTE *)&dir]
	tst r24	 ;  MEM[(BYTE *)&dir]
	brne .+2	 ; 
	rjmp .L74	 ; 
	ldd r18,Y+12	 ;  D.2284, MEM[(BYTE *)&dir + 11B]
	sbrc r18,3	 ;  D.2284,
	rjmp .L56	 ; 
	ldd r22,Y+47	 ;  src, dj.fn
	ldd r23,Y+48	 ;  src, dj.fn
	movw r30,r28	 ;  ivtmp.48,
	adiw r30,1	 ;  ivtmp.48,
	movw r24,r22	 ;  ivtmp.50, src
.L58:
	cp r30,r8	 ;  ivtmp.48, D.2295
	cpc r31,r9	 ;  ivtmp.48, D.2295
	brne .+2	 ; 
	rjmp .L57	 ; 
	ld r20,Z+	 ;  D.2287, MEM[base: _95, offset: 0B]
	movw r26,r24	 ; , ivtmp.50
	ld r19,X+	 ;  D.2287, MEM[base: _94, offset: 0B]
	movw r24,r26	 ;  ivtmp.50,
	cp r20,r19	 ;  D.2287, D.2287
	breq .L58	 ; ,
.L56:
	lds r10,FatFs	 ;  fs, FatFs
	lds r11,FatFs+1	 ;  fs, FatFs
	ldd r16,Y+45	 ;  i, dj.index
	ldd r17,Y+46	 ;  i, dj.index
	subi r16,-1	 ;  i,
	sbci r17,-1	 ;  i,
	cp r16,__zero_reg__	 ;  i
	cpc r17,__zero_reg__	 ;  i
	brne .+2	 ; 
	rjmp .L74	 ; 
	ldd r24,Y+53	 ;  D.2285, dj.sect
	ldd r25,Y+54	 ;  D.2285, dj.sect
	ldd r26,Y+55	 ;  D.2285, dj.sect
	ldd r27,Y+56	 ;  D.2285, dj.sect
	sbiw r24,0	 ;  D.2285,
	cpc r26,__zero_reg__	 ;  D.2285
	cpc r27,__zero_reg__	 ;  D.2285
	brne .+2	 ; 
	rjmp .L74	 ; 
	movw r18,r16	 ;  D.2286, i
	andi r18,15	 ;  D.2286,
	clr r19	 ;  D.2286
	or r18,r19	 ;  D.2286
	brne .L61	 ; ,
	adiw r24,1	 ;  D.2285,
	adc r26,__zero_reg__	 ;  D.2285
	adc r27,__zero_reg__	 ;  D.2285
	std Y+53,r24	 ;  dj.sect, D.2285
	std Y+54,r25	 ;  dj.sect, D.2285
	std Y+55,r26	 ;  dj.sect, D.2285
	std Y+56,r27	 ;  dj.sect, D.2285
	ldd r24,Y+51	 ;  D.2292, dj.clust
	ldd r25,Y+52	 ;  D.2292, dj.clust
	sbiw r24,0	 ;  D.2292,
	brne .L62	 ; ,
	movw r30,r10	 ; , fs
	ldd r24,Z+4	 ;  fs_117->n_rootdir, fs_117->n_rootdir
	ldd r25,Z+5	 ;  fs_117->n_rootdir, fs_117->n_rootdir
	cp r16,r24	 ;  i, fs_117->n_rootdir
	cpc r17,r25	 ;  i, fs_117->n_rootdir
	brlo .+2	 ; 
	rjmp .L74	 ; 
	rjmp .L61	 ; 
.L62:
	movw r26,r10	 ; , fs
	adiw r26,2	 ;  fs_117->csize
	ld r18,X	 ;  fs_117->csize
	ldi r19,0	 ;  D.2286
	subi r18,1	 ;  D.2286,
	sbc r19,__zero_reg__	 ;  D.2286
	movw r20,r16	 ;  D.2286, i
	ldi r30,4	 ; ,
	1:
	lsr r21	 ;  D.2286
	ror r20	 ;  D.2286
	dec r30	 ; 
	brne 1b
	and r18,r20	 ;  D.2286, D.2286
	and r19,r21	 ;  D.2286, D.2286
	or r18,r19	 ;  D.2286
	brne .L61	 ; ,
	call get_fat	 ; 
	cpi r24,2	 ;  clst,
	cpc r25,__zero_reg__	 ;  clst
	brsh .+2	 ; 
	rjmp .L71	 ; 
	movw r30,r10	 ; , fs
	ldd r18,Z+6	 ;  fs_117->n_fatent, fs_117->n_fatent
	ldd r19,Z+7	 ;  fs_117->n_fatent, fs_117->n_fatent
	cp r24,r18	 ;  clst, fs_117->n_fatent
	cpc r25,r19	 ;  clst, fs_117->n_fatent
	brlo .+2	 ; 
	rjmp .L74	 ; 
	std Y+51,r24	 ;  dj.clust, clst
	std Y+52,r25	 ;  dj.clust, clst
	call clust2sect	 ; 
	std Y+53,r22	 ;  dj.sect, D.2285
	std Y+54,r23	 ;  dj.sect, D.2285
	std Y+55,r24	 ;  dj.sect, D.2285
	std Y+56,r25	 ;  dj.sect, D.2285
.L61:
	std Y+45,r16	 ;  dj.index, i
	std Y+46,r17	 ;  dj.index, i
	rjmp .L65	 ; 
.L57:
	movw r30,r22	 ; , src
	ldd r24,Z+11	 ;  MEM[(BYTE *)src_143 + 11B], MEM[(BYTE *)src_143 + 11B]
	tst r24	 ;  MEM[(BYTE *)src_143 + 11B]
	breq .L89	 ; ,
.L47:
	ldd r24,Y+1	 ;  dir, dir
	tst r24	 ;  dir
	breq .L76	 ; ,
	ldd r24,Y+12	 ;  dir, dir
	sbrc r24,4	 ;  dir,
	rjmp .L76	 ; 
	ldd r24,Y+28	 ;  MEM[(BYTE *)&dir + 27B], MEM[(BYTE *)&dir + 27B]
	ldi r25,0	 ;  D.2286
	mov r25,r24	 ;  D.2286, D.2286
	clr r24	 ;  D.2286
	ldd r18,Y+27	 ;  MEM[(BYTE *)&dir + 26B], MEM[(BYTE *)&dir + 26B]
	or r24,r18	 ;  D.2286, MEM[(BYTE *)&dir + 26B]
	movw r26,r12	 ; , fs
	adiw r26,28	 ;  fs_4->org_clust
	st X+,r24	 ;  D.2286
	st X,r25	 ;  D.2286
	sbiw r26,28+1	 ;  fs_4->org_clust
	ldd r18,Y+32	 ;  dir, dir
	ldd r24,Y+31	 ;  dir, dir
	ldi r25,0	 ;  D.2285
	ldi r26,0	 ;  D.2285
	ldi r27,0	 ;  D.2285
	movw r26,r24	 ;  D.2285, D.2285
	clr r25	 ;  D.2285
	clr r24	 ;  D.2285
	or r27,r18	 ;  D.2285, dir
	ldd r18,Y+29	 ;  dir, dir
	or r24,r18	 ;  D.2285, dir
	ldd r20,Y+30	 ;  dir, dir
	ldi r21,0	 ;  D.2286
	mov r21,r20	 ;  D.2286, D.2286
	clr r20	 ;  D.2286
	ldi r22,0	 ;  D.2285
	ldi r23,0	 ;  D.2285
	or r24,r20	 ;  D.2285, D.2285
	or r25,r21	 ;  D.2285, D.2285
	or r26,r22	 ;  D.2285, D.2285
	or r27,r23	 ;  D.2285, D.2285
	movw r30,r12	 ; , fs
	std Z+24,r24	 ;  fs_4->fsize, D.2285
	std Z+25,r25	 ;  fs_4->fsize, D.2285
	std Z+26,r26	 ;  fs_4->fsize, D.2285
	std Z+27,r27	 ;  fs_4->fsize, D.2285
	std Z+20,__zero_reg__	 ;  fs_4->fptr,
	std Z+21,__zero_reg__	 ;  fs_4->fptr,
	std Z+22,__zero_reg__	 ;  fs_4->fptr,
	std Z+23,__zero_reg__	 ;  fs_4->fptr,
	ldi r24,lo8(1)	 ;  tmp215,
	std Z+1,r24	 ;  fs_4->flag, tmp215
	ldi r24,0	 ;  D.2283
	rjmp .L90	 ; 
.L69:
	ldi r24,lo8(5)	 ;  D.2283,
.L90:
	ldi r25,0	 ;  D.2283
	rjmp .L88	 ; 
.L76:
	ldi r24,lo8(3)	 ;  D.2283,
	rjmp .L90	 ; 
.L52:
	cpi r18,lo8(8)	 ;  ni,
	breq .+2	 ; 
	rjmp .L51	 ; 
	ldi r24,lo8(8)	 ;  i,
	ldi r18,lo8(11)	 ;  ni,
	rjmp .L53	 ; 
.L89:
	sbrs r18,4	 ;  D.2284,
	rjmp .L74	 ; 
	ldd r24,Y+28	 ;  MEM[(BYTE *)&dir + 27B], MEM[(BYTE *)&dir + 27B]
	ldi r25,0	 ;  D.2286
	mov r25,r24	 ;  D.2286, D.2286
	clr r24	 ;  D.2286
	ldd r18,Y+27	 ;  MEM[(BYTE *)&dir + 26B], MEM[(BYTE *)&dir + 26B]
	or r24,r18	 ;  D.2286, MEM[(BYTE *)&dir + 26B]
	std Y+49,r24	 ;  dj.sclust, D.2286
	std Y+50,r25	 ;  dj.sclust, D.2286
	rjmp .L87	 ; 
.L71:
	ldi r24,lo8(1)	 ;  res,
	ldi r25,0	 ;  res
	rjmp .L88	 ; 
.L74:
	ldi r24,lo8(3)	 ;  res,
	ldi r25,0	 ;  res
.L88:
/* epilogue start */
	adiw r28,56	 ; ,
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
	movw r20,r14	 ;  D.2301, btr
	ldi r22,0	 ;  D.2301
	ldi r23,0	 ;  D.2301
	cp r24,r20	 ;  remain, D.2301
	cpc r25,r21	 ;  remain, D.2301
	cpc r26,r22	 ;  remain, D.2301
	cpc r27,r23	 ;  remain, D.2301
	brsh .L94	 ; ,
	movw r14,r24	 ;  btr, remain
.L94:
	movw r6,r8	 ;  buff, buff
	mov r4,__zero_reg__	 ;  tmp102
	ldi r16,lo8(2)	 ; ,
	mov r5,r16	 ; ,
.L95:
	cp r14,__zero_reg__	 ;  btr
	cpc r15,__zero_reg__	 ;  btr
	brne .+2	 ; 
	rjmp .L110	 ; 
	ldd r24,Y+20	 ;  D.2301, fs_14->fptr
	ldd r25,Y+21	 ;  D.2301, fs_14->fptr
	ldd r26,Y+22	 ;  D.2301, fs_14->fptr
	ldd r27,Y+23	 ;  D.2301, fs_14->fptr
	movw r20,r24	 ;  D.2301, D.2301
	movw r22,r26	 ;  D.2301, D.2301
	andi r21,1	 ;  D.2301,
	clr r22	 ;  D.2301
	clr r23	 ;  D.2301
	or r20,r21	 ;  D.2301
	or r20,r22	 ;  D.2301
	or r20,r23	 ;  D.2301
	brne .L96	 ; ,
	ldd r13,Y+2	 ;  cs, fs_14->csize
	dec r13	 ;  cs
	movw r20,r24	 ;  D.2301, D.2301
	movw r22,r26	 ;  D.2301, D.2301
	ldi r17,9	 ; ,
	1:
	lsr r23	 ;  D.2301
	ror r22	 ;  D.2301
	ror r21	 ;  D.2301
	ror r20	 ;  D.2301
	dec r17	 ; 
	brne 1b
	and r13,r20	 ;  cs, D.2301
	brne .L97	 ; ,
	or r24,r25	 ;  D.2301
	or r24,r26	 ;  D.2301
	or r24,r27	 ;  D.2301
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
	movw r26,r24	 ;  D.2301, sect
	movw r24,r22	 ;  D.2301, sect
	add r24,r13	 ;  D.2301, cs
	adc r25,__zero_reg__	 ;  D.2301
	adc r26,__zero_reg__	 ;  D.2301
	adc r27,__zero_reg__	 ;  D.2301
	std Y+32,r24	 ;  fs_14->dsect, D.2301
	std Y+33,r25	 ;  fs_14->dsect, D.2301
	std Y+34,r26	 ;  fs_14->dsect, D.2301
	std Y+35,r27	 ;  fs_14->dsect, D.2301
.L96:
	ldd r18,Y+20	 ;  D.2303, fs_14->fptr
	ldd r19,Y+21	 ;  D.2303, fs_14->fptr
	andi r19,1	 ;  D.2303,
	movw r24,r4	 ;  btr, tmp102
	sub r24,r18	 ;  btr, D.2303
	sbc r25,r19	 ;  btr, D.2303
	movw r12,r14	 ;  btr, btr
	cp r24,r14	 ;  btr, btr
	cpc r25,r15	 ;  btr, btr
	brsh .L102	 ; ,
	movw r12,r24	 ;  btr, btr
.L102:
	ldd r20,Y+32	 ;  D.2301, fs_14->dsect
	ldd r21,Y+33	 ;  D.2301, fs_14->dsect
	ldd r22,Y+34	 ;  D.2301, fs_14->dsect
	ldd r23,Y+35	 ;  D.2301, fs_14->dsect
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
	ldi r24,lo8(1)	 ;  D.2299,
	ldi r25,0	 ;  D.2299
	rjmp .L93	 ; 
.L104:
	ldd r24,Y+20	 ;  D.2301, fs_14->fptr
	ldd r25,Y+21	 ;  D.2301, fs_14->fptr
	ldd r26,Y+22	 ;  D.2301, fs_14->fptr
	ldd r27,Y+23	 ;  D.2301, fs_14->fptr
	add r24,r12	 ;  D.2301, btr
	adc r25,r13	 ;  D.2301, btr
	adc r26,__zero_reg__	 ;  D.2301
	adc r27,__zero_reg__	 ;  D.2301
	std Y+20,r24	 ;  fs_14->fptr, D.2301
	std Y+21,r25	 ;  fs_14->fptr, D.2301
	std Y+22,r26	 ;  fs_14->fptr, D.2301
	std Y+23,r27	 ;  fs_14->fptr, D.2301
	add r6,r12	 ;  buff, btr
	adc r7,r13	 ;  buff, btr
	sub r14,r12	 ;  btr, btr
	sbc r15,r13	 ;  btr, btr
	movw r30,r10	 ; , br
	ld r24,Z	 ;  D.2303, *br_15(D)
	ldd r25,Z+1	 ;  D.2303, *br_15(D)
	add r24,r12	 ;  D.2303, btr
	adc r25,r13	 ;  D.2303, btr
	st Z,r24	 ;  *br_15(D), D.2303
	std Z+1,r25	 ;  *br_15(D), D.2303
	rjmp .L95	 ; 
.L110:
	ldi r24,0	 ;  D.2299
	ldi r25,0	 ;  D.2299
	rjmp .L93	 ; 
.L106:
	ldi r24,lo8(5)	 ;  D.2299,
	ldi r25,0	 ;  D.2299
	rjmp .L93	 ; 
.L107:
	ldi r24,lo8(4)	 ;  D.2299,
	ldi r25,0	 ;  D.2299
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
	ldi r19,9	 ; ,
	1:
	lsl r8	 ;  bcs
	rol r9	 ;  bcs
	rol r10	 ;  bcs
	rol r11	 ;  bcs
	dec r19	 ; 
	brne 1b
	cp r4,__zero_reg__	 ;  ifptr
	cpc r5,__zero_reg__	 ;  ifptr
	cpc r6,__zero_reg__	 ;  ifptr
	cpc r7,__zero_reg__	 ;  ifptr
	breq .L114	 ; ,
	ldi r27,1	 ; ,
	sub r4,r27	 ;  D.2317,
	sbc r5,__zero_reg__	 ;  D.2317
	sbc r6,__zero_reg__	 ;  D.2317
	sbc r7,__zero_reg__	 ;  D.2317
	movw r24,r14	 ;  D.2317, ofs
	movw r22,r12	 ;  D.2317, ofs
	subi r22,1	 ;  D.2317,
	sbc r23,__zero_reg__	 ;  D.2317
	sbc r24,__zero_reg__	 ;  D.2317
	sbc r25,__zero_reg__	 ;  D.2317
	movw r20,r10	 ; , bcs
	movw r18,r8	 ; , bcs
	call __udivmodsi4
	std Y+1,r18	 ;  %sfp,
	std Y+2,r19	 ;  %sfp,
	std Y+3,r20	 ;  %sfp,
	std Y+4,r21	 ;  %sfp,
	movw r24,r6	 ; , D.2317
	movw r22,r4	 ; , D.2317
	movw r20,r10	 ; , bcs
	movw r18,r8	 ; , bcs
	call __udivmodsi4
	ldd r24,Y+1	 ; , %sfp
	ldd r25,Y+2	 ; , %sfp
	ldd r26,Y+3	 ; , %sfp
	ldd r27,Y+4	 ; , %sfp
	cp r24,r18	 ; , D.2317
	cpc r25,r19	 ; , D.2317
	cpc r26,r20	 ; , D.2317
	cpc r27,r21	 ; , D.2317
	brlo .L114	 ; ,
	clr r24	 ;  D.2317
	clr r25	 ;  D.2317
	movw r26,r24	 ;  D.2317
	sub r24,r8	 ;  D.2317, bcs
	sbc r25,r9	 ;  D.2317, bcs
	sbc r26,r10	 ;  D.2317, bcs
	sbc r27,r11	 ;  D.2317, bcs
	and r24,r4	 ;  D.2317, D.2317
	and r25,r5	 ;  D.2317, D.2317
	and r26,r6	 ;  D.2317, D.2317
	and r27,r7	 ;  D.2317, D.2317
	movw r30,r16	 ; , fs
	std Z+20,r24	 ;  fs_9->fptr, D.2317
	std Z+21,r25	 ;  fs_9->fptr, D.2317
	std Z+22,r26	 ;  fs_9->fptr, D.2317
	std Z+23,r27	 ;  fs_9->fptr, D.2317
	sub r12,r24	 ;  ofs, D.2317
	sbc r13,r25	 ;  ofs, D.2317
	sbc r14,r26	 ;  ofs, D.2317
	sbc r15,r27	 ;  ofs, D.2317
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
	ldd r20,Z+20	 ;  D.2317, fs_9->fptr
	ldd r21,Z+21	 ;  D.2317, fs_9->fptr
	ldd r22,Z+22	 ;  D.2317, fs_9->fptr
	ldd r23,Z+23	 ;  D.2317, fs_9->fptr
	add r20,r8	 ;  D.2317, bcs
	adc r21,r9	 ;  D.2317, bcs
	adc r22,r10	 ;  D.2317, bcs
	adc r23,r11	 ;  D.2317, bcs
	std Z+20,r20	 ;  fs_9->fptr, D.2317
	std Z+21,r21	 ;  fs_9->fptr, D.2317
	std Z+22,r22	 ;  fs_9->fptr, D.2317
	std Z+23,r23	 ;  fs_9->fptr, D.2317
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
	ldd r8,Z+20	 ;  D.2317, fs_9->fptr
	ldd r9,Z+21	 ;  D.2317, fs_9->fptr
	ldd r10,Z+22	 ;  D.2317, fs_9->fptr
	ldd r11,Z+23	 ;  D.2317, fs_9->fptr
	add r8,r12	 ;  D.2317, ofs
	adc r9,r13	 ;  D.2317, ofs
	adc r10,r14	 ;  D.2317, ofs
	adc r11,r15	 ;  D.2317, ofs
	std Z+20,r8	 ;  fs_9->fptr, D.2317
	std Z+21,r9	 ;  fs_9->fptr, D.2317
	std Z+22,r10	 ;  fs_9->fptr, D.2317
	std Z+23,r11	 ;  fs_9->fptr, D.2317
	call clust2sect	 ; 
	cp r22,__zero_reg__	 ;  sect
	cpc r23,__zero_reg__	 ;  sect
	cpc r24,__zero_reg__	 ;  sect
	cpc r25,__zero_reg__	 ;  sect
	brne .L120	 ; ,
	movw r30,r16	 ; , fs
	std Z+1,__zero_reg__	 ;  fs_9->flag,
.L127:
	ldi r24,lo8(1)	 ;  D.2315,
	ldi r25,0	 ;  D.2315
	rjmp .L112	 ; 
.L120:
	ldi r18,9	 ; ,
	1:
	lsr r11	 ;  D.2317
	ror r10	 ;  D.2317
	ror r9	 ;  D.2317
	ror r8	 ;  D.2317
	dec r18	 ; 
	brne 1b
	movw r26,r16	 ; , fs
	adiw r26,2	 ;  fs_9->csize
	ld r12,X	 ;  fs_9->csize
	mov r13,__zero_reg__	 ;  D.2319
	ldi r27,1	 ; ,
	sub r12,r27	 ;  D.2319,
	sbc r13,__zero_reg__	 ;  D.2319
	clr r14	 ;  D.2317
	sbrc r13,7	 ;  D.2317
	com r14	 ;  D.2317
	mov r15,r14	 ;  D.2317
	and r8,r12	 ;  D.2317, D.2317
	and r9,r13	 ;  D.2317, D.2317
	and r10,r14	 ;  D.2317, D.2317
	and r11,r15	 ;  D.2317, D.2317
	add r8,r22	 ;  D.2317, sect
	adc r9,r23	 ;  D.2317, sect
	adc r10,r24	 ;  D.2317, sect
	adc r11,r25	 ;  D.2317, sect
	movw r30,r16	 ; , fs
	std Z+32,r8	 ;  fs_9->dsect, D.2317
	std Z+33,r9	 ;  fs_9->dsect, D.2317
	std Z+34,r10	 ;  fs_9->dsect, D.2317
	std Z+35,r11	 ;  fs_9->dsect, D.2317
	rjmp .L123	 ; 
.L121:
	ldi r24,lo8(5)	 ;  D.2315,
	ldi r25,0	 ;  D.2315
	rjmp .L112	 ; 
.L122:
	ldi r24,lo8(4)	 ;  D.2315,
	ldi r25,0	 ;  D.2315
	rjmp .L112	 ; 
.L123:
	ldi r24,0	 ;  D.2315
	ldi r25,0	 ;  D.2315
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
	.local	FatFs
	.comm	FatFs,2,1
	.ident	"GCC: (GNU) 4.8.1"
.global __do_clear_bss
