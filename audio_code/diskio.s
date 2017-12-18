	.file	"diskio.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__CCP__ = 0x34
__tmp_reg__ = 0
__zero_reg__ = 1
 ;  GNU C (GCC) version 4.8.1 (avr)
 ; 	compiled by GNU C version 4.2.1 Compatible Apple LLVM 5.0 (clang-500.2.78), GMP version 4.3.2, MPFR version 3.1.2, MPC version 1.0
 ;  GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
 ;  options passed:  -I ./ -imultilib avrxmega2 -D F_CPU=8000000
 ;  pff/diskio.c -mmcu=atxmega16e5 -Os -Wall -fverbose-asm
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
.global	init_spi
	.type	init_spi, @function
init_spi:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r30,lo8(64)	 ;  tmp44,
	ldi r31,lo8(6)	 ; ,
	ldi r24,lo8(-80)	 ;  tmp45,
	std Z+1,r24	 ;  MEM[(struct PORT_t *)1600B].DIRSET, tmp45
	ldi r24,lo8(24)	 ;  tmp47,
	std Z+22,r24	 ;  MEM[(struct PORT_t *)1600B].PIN6CTRL, tmp47
	ldi r30,lo8(-32)	 ;  tmp48,
	ldi r31,lo8(8)	 ; ,
	ldi r24,lo8(16)	 ;  tmp49,
	st Z,r24	 ;  MEM[(struct SPI_t *)2272B].CTRL, tmp49
	ldi r24,lo8(4)	 ;  tmp51,
	std Z+4,r24	 ;  MEM[(struct SPI_t *)2272B].CTRLB, tmp51
	ld r24,Z	 ;  D.3892, MEM[(struct SPI_t *)2272B].CTRL
	ori r24,lo8(64)	 ;  D.3892,
	st Z,r24	 ;  MEM[(struct SPI_t *)2272B].CTRL, D.3892
	ret
	.size	init_spi, .-init_spi
.global	spi
	.type	spi, @function
spi:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	sts 2275,r24	 ;  MEM[(struct SPI_t *)2272B].DATA, d
.L4:
	lds r24,2274	 ;  D.3895, MEM[(struct SPI_t *)2272B].STATUS
	sbrs r24,7	 ;  D.3895,
	rjmp .L4	 ; 
	lds r24,2275	 ;  D.3897, MEM[(struct SPI_t *)2272B].DATA
	ret
	.size	spi, .-spi
	.type	rcv_spi, @function
rcv_spi:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r24,lo8(-1)	 ; ,
	jmp spi	 ; 
	.size	rcv_spi, .-rcv_spi
	.type	send_cmd, @function
send_cmd:
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
	mov r28,r24	 ;  cmd, cmd
	mov r17,r20	 ;  arg, arg
	mov r16,r21	 ;  arg, arg
	mov r15,r22	 ;  arg, arg
	mov r14,r23	 ;  arg, arg
	sbrs r24,7	 ;  cmd,
	rjmp .L8	 ; 
	ldi r20,0	 ; 
	ldi r21,0	 ; 
	movw r22,r20	 ; 
	ldi r24,lo8(119)	 ; ,
	call send_cmd	 ; 
	cpi r24,lo8(2)	 ;  res,
	brsh .L9	 ; ,
	andi r28,lo8(127)	 ;  cmd,
.L8:
	ldi r29,lo8(16)	 ;  tmp62,
	sts 1605,r29	 ;  MEM[(struct PORT_t *)1600B].OUTSET, tmp62
	call rcv_spi	 ; 
	sts 1606,r29	 ;  MEM[(struct PORT_t *)1600B].OUTCLR, tmp62
	call rcv_spi	 ; 
	mov r24,r28	 ; , cmd
	call spi	 ; 
	mov r24,r14	 ; , arg
	call spi	 ; 
	mov r24,r15	 ; , arg
	call spi	 ; 
	mov r24,r16	 ; , arg
	call spi	 ; 
	mov r24,r17	 ; , arg
	call spi	 ; 
	cpi r28,lo8(64)	 ;  cmd,
	breq .L13	 ; ,
	cpi r28,lo8(72)	 ;  cmd,
	breq .L14	 ; ,
	ldi r24,lo8(1)	 ;  n,
	rjmp .L10	 ; 
.L13:
	ldi r24,lo8(-107)	 ;  n,
	rjmp .L10	 ; 
.L14:
	ldi r24,lo8(-121)	 ;  n,
.L10:
	call spi	 ; 
	ldi r28,lo8(10)	 ;  D.3908,
.L11:
	call rcv_spi	 ; 
	sbrs r24,7	 ;  res,
	rjmp .L9	 ; 
	subi r28,lo8(-(-1))	 ;  D.3908,
	brne .L11	 ; ,
.L9:
/* epilogue start */
	pop r29	 ; 
	pop r28	 ; 
	pop r17	 ; 
	pop r16	 ; 
	pop r15	 ; 
	pop r14	 ; 
	ret
	.size	send_cmd, .-send_cmd
.global	disk_initialize
	.type	disk_initialize, @function
disk_initialize:
	push r14	 ; 
	push r15	 ; 
	push r16	 ; 
	push r17	 ; 
	push r28	 ; 
	push r29	 ; 
	in r28,__SP_L__	 ; 
	in r29,__SP_H__	 ; 
	sbiw r28,5	 ; ,
	out __SP_L__,r28	 ; ,
	out __SP_H__,r29	 ; ,
/* prologue: function */
/* frame size = 5 */
/* stack size = 11 */
.L__stack_usage = 11
	call init_spi	 ; 
	ldi r24,lo8(16)	 ;  tmp116,
	sts 1605,r24	 ;  MEM[(struct PORT_t *)1600B].OUTSET, tmp116
	ldi r17,lo8(10)	 ;  D.3953,
.L19:
	call rcv_spi	 ; 
	subi r17,lo8(-(-1))	 ;  D.3953,
	brne .L19	 ; ,
	ldi r20,0	 ; 
	ldi r21,0	 ; 
	movw r22,r20	 ; 
	ldi r24,lo8(64)	 ; ,
	call send_cmd	 ; 
	cpi r24,lo8(1)	 ; ,
	breq .+2	 ; 
	rjmp .L38	 ; 
	ldi r20,lo8(-86)	 ; ,
	ldi r21,lo8(1)	 ; ,
	ldi r22,0	 ; 
	ldi r23,0	 ; 
	ldi r24,lo8(72)	 ; ,
	call send_cmd	 ; 
	cpi r24,lo8(1)	 ; ,
	brne .L22	 ; ,
	movw r14,r28	 ;  D.3949,
	ldi r24,5	 ; ,
	add r14,r24	 ;  D.3949,
	adc r15,__zero_reg__	 ;  D.3949
	movw r16,r28	 ;  ivtmp.54,
	subi r16,-1	 ;  ivtmp.54,
	sbci r17,-1	 ;  ivtmp.54,
.L24:
	call rcv_spi	 ; 
	movw r30,r16	 ; , ivtmp.54
	st Z+,r24	 ;  MEM[base: _90, offset: 0B],
	movw r16,r30	 ;  ivtmp.54,
	cp r30,r14	 ;  ivtmp.54, D.3949
	cpc r31,r15	 ;  ivtmp.54, D.3949
	brne .L24	 ; ,
	ldd r24,Y+3	 ;  ocr, ocr
	cpi r24,lo8(1)	 ;  ocr,
	breq .+2	 ; 
	rjmp .L38	 ; 
	ldd r24,Y+4	 ;  ocr, ocr
	cpi r24,lo8(-86)	 ;  ocr,
	breq .+2	 ; 
	rjmp .L38	 ; 
	ldi r16,lo8(16)	 ;  D.3947,
	ldi r17,lo8(39)	 ;  D.3947,
.L26:
	ldi r20,0	 ; 
	ldi r21,0	 ; 
	ldi r22,0	 ; 
	ldi r23,lo8(64)	 ; ,
	ldi r24,lo8(-23)	 ; ,
	call send_cmd	 ; 
	tst r24	 ; 
	brne .+2	 ; 
	rjmp .L51	 ; 
	ldi r24,lo8(199)	 ; ,
	ldi r25,hi8(199)	 ; ,
	1: sbiw r24,1	 ; 
	brne 1b
	rjmp .
	nop
	subi r16,1	 ;  D.3947,
	sbc r17,__zero_reg__	 ;  D.3947
	cp r16,__zero_reg__	 ;  D.3947
	cpc r17,__zero_reg__	 ;  D.3947
	brne .L26	 ; ,
	rjmp .L38	 ; 
.L22:
	ldi r20,0	 ; 
	ldi r21,0	 ; 
	movw r22,r20	 ; 
	ldi r24,lo8(-23)	 ; ,
	call send_cmd	 ; 
	cpi r24,lo8(2)	 ; ,
	brsh .L37	 ; ,
	ldi r25,lo8(2)	 ; ,
	mov r15,r25	 ;  ty,
	ldi r25,lo8(-23)	 ;  cmd,
	rjmp .L30	 ; 
.L37:
	clr r15	 ;  ty
	inc r15	 ;  ty
	ldi r25,lo8(65)	 ;  cmd,
.L30:
	ldi r16,lo8(16)	 ;  D.3947,
	ldi r17,lo8(39)	 ;  D.3947,
.L31:
	ldi r20,0	 ; 
	ldi r21,0	 ; 
	movw r22,r20	 ; 
	mov r24,r25	 ; , cmd
	std Y+5,r25	 ; ,
	call send_cmd	 ; 
	ldd r25,Y+5	 ; ,
	tst r24	 ; 
	breq .L52	 ; ,
	ldi r30,lo8(199)	 ; ,
	ldi r31,hi8(199)	 ; ,
	1: sbiw r30,1	 ; 
	brne 1b
	rjmp .
	nop
	subi r16,1	 ;  D.3947,
	sbc r17,__zero_reg__	 ;  D.3947
	cp r16,__zero_reg__	 ;  D.3947
	cpc r17,__zero_reg__	 ;  D.3947
	brne .L31	 ; ,
	rjmp .L38	 ; 
.L52:
	ldi r20,0	 ; 
	ldi r21,lo8(2)	 ; ,
	ldi r22,0	 ; 
	ldi r23,0	 ; 
	ldi r24,lo8(80)	 ; ,
	call send_cmd	 ; 
	cpse r24,__zero_reg__	 ; 
.L38:
	mov r15,__zero_reg__	 ;  ty
.L21:
	sts CardType,r15	 ;  CardType, ty
	ldi r24,lo8(16)	 ;  tmp122,
	sts 1605,r24	 ;  MEM[(struct PORT_t *)1600B].OUTSET, tmp122
	call rcv_spi	 ; 
	ldi r24,lo8(1)	 ;  D.3950,
	tst r15	 ;  ty
	breq .L42	 ; ,
	ldi r24,0	 ;  D.3950
	rjmp .L42	 ; 
.L51:
	ldi r20,0	 ; 
	ldi r21,0	 ; 
	movw r22,r20	 ; 
	ldi r24,lo8(122)	 ; ,
	call send_cmd	 ; 
	cpse r24,__zero_reg__	 ; ,
	rjmp .L38	 ; 
	movw r16,r28	 ;  ivtmp.39,
	subi r16,-1	 ;  ivtmp.39,
	sbci r17,-1	 ;  ivtmp.39,
.L35:
	call rcv_spi	 ; 
	movw r30,r16	 ; , ivtmp.39
	st Z+,r24	 ;  MEM[base: _79, offset: 0B],
	movw r16,r30	 ;  ivtmp.39,
	cp r30,r14	 ;  ivtmp.39, D.3949
	cpc r31,r15	 ;  ivtmp.39, D.3949
	brne .L35	 ; ,
	ldd r24,Y+1	 ;  ocr, ocr
	sbrs r24,6	 ;  ocr,
	rjmp .L36	 ; 
	ldi r18,lo8(12)	 ; ,
	mov r15,r18	 ;  ty,
	rjmp .L21	 ; 
.L36:
	ldi r24,lo8(4)	 ; ,
	mov r15,r24	 ;  ty,
	rjmp .L21	 ; 
.L42:
/* epilogue start */
	adiw r28,5	 ; ,
	out __SP_L__,r28	 ; ,
	out __SP_H__,r29	 ; ,
	pop r29	 ; 
	pop r28	 ; 
	pop r17	 ; 
	pop r16	 ; 
	pop r15	 ; 
	pop r14	 ; 
	ret
	.size	disk_initialize, .-disk_initialize
.global	disk_readp
	.type	disk_readp, @function
disk_readp:
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
	movw r28,r24	 ;  buff, buff
	movw r14,r18	 ;  offset, offset
	lds r24,CardType	 ;  CardType, CardType
	sbrc r24,3	 ;  CardType,
	rjmp .L54	 ; 
	ldi r30,9	 ; ,
	1:
	lsl r20	 ;  sector
	rol r21	 ;  sector
	rol r22	 ;  sector
	rol r23	 ;  sector
	dec r30	 ; 
	brne 1b
.L54:
	ldi r24,lo8(81)	 ; ,
	call send_cmd	 ; 
	tst r24	 ; 
	breq .L69	 ; ,
.L59:
	ldi r28,lo8(1)	 ;  res,
	ldi r29,0	 ;  res
	rjmp .L56	 ; 
.L69:
	call rcv_spi	 ; 
	cpi r24,lo8(-1)	 ;  rc,
	breq .L69	 ; ,
	cpi r24,lo8(-2)	 ;  rc,
	brne .L59	 ; ,
	ldi r19,lo8(2)	 ; ,
	mov r12,r19	 ;  bc,
	mov r13,r12	 ;  bc, bc
	sub r12,r16	 ;  bc, count
	sbc r13,r17	 ;  bc, count
	sub r12,r14	 ;  bc, offset
	sbc r13,r15	 ;  bc, offset
.L60:
	cp r14,__zero_reg__	 ;  ivtmp.83
	cpc r15,__zero_reg__	 ;  ivtmp.83
	breq .L72	 ; ,
	call rcv_spi	 ; 
	ldi r24,1	 ; ,
	sub r14,r24	 ;  ivtmp.83,
	sbc r15,__zero_reg__	 ;  ivtmp.83
	rjmp .L60	 ; 
.L72:
	sbiw r28,0	 ;  buff,
	breq .L63	 ; ,
.L65:
	call rcv_spi	 ; 
	st Y+,r24	 ;  MEM[base: _44, offset: 0B],
	subi r16,1	 ;  count,
	sbc r17,__zero_reg__	 ;  count
	cp r16,__zero_reg__	 ;  count
	cpc r17,__zero_reg__	 ;  count
	brne .L65	 ; ,
.L63:
	call rcv_spi	 ; 
	ldi r24,1	 ; ,
	sub r12,r24	 ;  bc,
	sbc r13,__zero_reg__	 ;  bc
	cp r12,__zero_reg__	 ;  bc
	cpc r13,__zero_reg__	 ;  bc
	brne .L63	 ; ,
	ldi r28,0	 ;  res
	ldi r29,0	 ;  res
.L56:
	ldi r24,lo8(16)	 ;  tmp63,
	sts 1605,r24	 ;  MEM[(struct PORT_t *)1600B].OUTSET, tmp63
	call rcv_spi	 ; 
	movw r24,r28	 ; , res
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
	.size	disk_readp, .-disk_readp
.global	CardType
	.section .bss
	.type	CardType, @object
	.size	CardType, 1
CardType:
	.zero	1
	.ident	"GCC: (GNU) 4.8.1"
.global __do_clear_bss
