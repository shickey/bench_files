	.file	"audio_code.c"
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
 ;  audio_code.c -mmcu=atxmega16e5 -Os -Wall -fverbose-asm
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

	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"TIME.WAV"
	.text
.global	loadFile
	.type	loadFile, @function
loadFile:
	push r28	 ; 
	push r29	 ; 
	in r28,__SP_L__	 ; 
	in r29,__SP_H__	 ; 
	sbiw r28,46	 ; ,
	out __SP_L__,r28	 ; ,
	out __SP_H__,r29	 ; ,
/* prologue: function */
/* frame size = 46 */
/* stack size = 48 */
.L__stack_usage = 48
/* #APP */
 ;  116 "audio_code.c" 1
	cli
 ;  0 "" 2
/* #NOAPP */
	lds r24,audioState	 ;  D.3865, audioState.playerState
	lds r25,audioState+1	 ;  D.3865, audioState.playerState
	or r24,r25	 ;  D.3865
	breq .L2	 ; ,
	ldi r24,0	 ;  tmp54
	ldi r25,lo8(8)	 ; ,
	sts 792,r24	 ;  MEM[(struct DAC_t *)768B].D.2296.CH0DATA, tmp54
	sts 792+1,r25	 ;  MEM[(struct DAC_t *)768B].D.2296.CH0DATA, tmp54
	sts 794,r24	 ;  MEM[(struct DAC_t *)768B].D.2303.CH1DATA, tmp54
	sts 794+1,r25	 ;  MEM[(struct DAC_t *)768B].D.2303.CH1DATA, tmp54
	sts audioState,__zero_reg__	 ;  audioState.playerState,
	sts audioState+1,__zero_reg__	 ;  audioState.playerState,
.L2:
	ldi r24,lo8(.LC0)	 ; ,
	ldi r25,hi8(.LC0)	 ; ,
	call pf_open	 ; 
	std Y+45,__zero_reg__	 ;  bytes_read,
	std Y+46,__zero_reg__	 ;  bytes_read,
	movw r20,r28	 ; ,
	subi r20,-45	 ; ,
	sbci r21,-1	 ; ,
	ldi r22,lo8(44)	 ; ,
	ldi r23,0	 ; 
	movw r24,r28	 ; ,
	adiw r24,1	 ; ,
	call pf_read	 ; 
	ldi r24,0	 ;  tmp60
	ldi r25,0	 ; 
	ldi r26,lo8(-128)	 ; ,
	ldi r27,lo8(63)	 ; ,
	sts audioState+2,r24	 ;  audioState.fade, tmp60
	sts audioState+2+1,r25	 ;  audioState.fade, tmp60
	sts audioState+2+2,r26	 ;  audioState.fade, tmp60
	sts audioState+2+3,r27	 ;  audioState.fade, tmp60
	ldd r24,Y+41	 ;  D.3866, MEM[(struct WavHeader *)&buff].dataChunkSize
	ldd r25,Y+42	 ;  D.3866, MEM[(struct WavHeader *)&buff].dataChunkSize
	ldd r26,Y+43	 ;  D.3866, MEM[(struct WavHeader *)&buff].dataChunkSize
	ldd r27,Y+44	 ;  D.3866, MEM[(struct WavHeader *)&buff].dataChunkSize
	sts audioState+6,r24	 ;  audioState.totalBytes, D.3866
	sts audioState+6+1,r25	 ;  audioState.totalBytes, D.3866
	sts audioState+6+2,r26	 ;  audioState.totalBytes, D.3866
	sts audioState+6+3,r27	 ;  audioState.totalBytes, D.3866
	sts audioState+10,__zero_reg__	 ;  audioState.bytesRead,
	sts audioState+10+1,__zero_reg__	 ;  audioState.bytesRead,
	sts audioState+10+2,__zero_reg__	 ;  audioState.bytesRead,
	sts audioState+10+3,__zero_reg__	 ;  audioState.bytesRead,
	sts audioState+14,__zero_reg__	 ;  audioState.bytesPlayed,
	sts audioState+14+1,__zero_reg__	 ;  audioState.bytesPlayed,
	sts audioState+14+2,__zero_reg__	 ;  audioState.bytesPlayed,
	sts audioState+14+3,__zero_reg__	 ;  audioState.bytesPlayed,
	movw r20,r28	 ; ,
	subi r20,-45	 ; ,
	sbci r21,-1	 ; ,
	ldi r22,0	 ; 
	ldi r23,lo8(2)	 ; ,
	ldi r24,lo8(sampleBuffer0)	 ; ,
	ldi r25,hi8(sampleBuffer0)	 ; ,
	call pf_read	 ; 
	lds r24,audioState+10	 ;  D.3866, audioState.bytesRead
	lds r25,audioState+10+1	 ;  D.3866, audioState.bytesRead
	lds r26,audioState+10+2	 ;  D.3866, audioState.bytesRead
	lds r27,audioState+10+3	 ;  D.3866, audioState.bytesRead
	ldd r18,Y+45	 ;  bytes_read, bytes_read
	ldd r19,Y+46	 ;  bytes_read, bytes_read
	add r24,r18	 ;  D.3866, bytes_read
	adc r25,r19	 ;  D.3866, bytes_read
	adc r26,__zero_reg__	 ;  D.3866
	adc r27,__zero_reg__	 ;  D.3866
	sts audioState+10,r24	 ;  audioState.bytesRead, D.3866
	sts audioState+10+1,r25	 ;  audioState.bytesRead, D.3866
	sts audioState+10+2,r26	 ;  audioState.bytesRead, D.3866
	sts audioState+10+3,r27	 ;  audioState.bytesRead, D.3866
	movw r20,r28	 ; ,
	subi r20,-45	 ; ,
	sbci r21,-1	 ; ,
	ldi r22,0	 ; 
	ldi r23,lo8(2)	 ; ,
	ldi r24,lo8(sampleBuffer1)	 ; ,
	ldi r25,hi8(sampleBuffer1)	 ; ,
	call pf_read	 ; 
	lds r24,audioState+10	 ;  D.3866, audioState.bytesRead
	lds r25,audioState+10+1	 ;  D.3866, audioState.bytesRead
	lds r26,audioState+10+2	 ;  D.3866, audioState.bytesRead
	lds r27,audioState+10+3	 ;  D.3866, audioState.bytesRead
	ldd r18,Y+45	 ;  bytes_read, bytes_read
	ldd r19,Y+46	 ;  bytes_read, bytes_read
	add r24,r18	 ;  D.3866, bytes_read
	adc r25,r19	 ;  D.3866, bytes_read
	adc r26,__zero_reg__	 ;  D.3866
	adc r27,__zero_reg__	 ;  D.3866
	sts audioState+10,r24	 ;  audioState.bytesRead, D.3866
	sts audioState+10+1,r25	 ;  audioState.bytesRead, D.3866
	sts audioState+10+2,r26	 ;  audioState.bytesRead, D.3866
	sts audioState+10+3,r27	 ;  audioState.bytesRead, D.3866
	sts readingBuffer,__zero_reg__	 ;  readingBuffer,
	sts readingBuffer+1,__zero_reg__	 ;  readingBuffer,
/* #APP */
 ;  171 "audio_code.c" 1
	sei
 ;  0 "" 2
/* epilogue start */
/* #NOAPP */
	adiw r28,46	 ; ,
	out __SP_L__,r28	 ; ,
	out __SP_H__,r29	 ; ,
	pop r29	 ; 
	pop r28	 ; 
	ret
	.size	loadFile, .-loadFile
	.section	.rodata.str1.1
.LC1:
	.string	"/"
	.section	.text.startup,"ax",@progbits
.global	main
	.type	main, @function
main:
	push r28	 ; 
	push r29	 ; 
	in r28,__SP_L__	 ; 
	in r29,__SP_H__	 ; 
	sbiw r28,24	 ; ,
	out __SP_L__,r28	 ; ,
	out __SP_H__,r29	 ; ,
/* prologue: function */
/* frame size = 24 */
/* stack size = 26 */
.L__stack_usage = 26
	ldi r24,lo8(2)	 ;  tmp64,
	sts 80,r24	 ;  MEM[(struct OSC_t *)80B].CTRL, tmp64
.L9:
	lds r24,81	 ;  D.3875, MEM[(struct OSC_t *)80B].STATUS
	sbrs r24,1	 ;  D.3875,
	rjmp .L9	 ; 
	ldi r24,lo8(-40)	 ;  tmp68,
	out __CCP__,r24	 ;  MEM[(volatile uint8_t *)52B], tmp68
	ldi r18,lo8(1)	 ;  tmp70,
	sts 64,r18	 ;  MEM[(struct CLK_t *)64B].CTRL, tmp70
	ldi r24,lo8(13)	 ;  tmp72,
	sts 768,r24	 ;  MEM[(struct DAC_t *)768B].CTRLA, tmp72
	ldi r24,lo8(64)	 ;  tmp74,
	sts 769,r24	 ;  MEM[(struct DAC_t *)768B].CTRLB, tmp74
	ldi r24,lo8(8)	 ;  tmp76,
	sts 770,r24	 ;  MEM[(struct DAC_t *)768B].CTRLC, tmp76
	ldi r24,lo8(-42)	 ;  tmp78,
	ldi r25,lo8(2)	 ; ,
	sts 2086,r24	 ;  MEM[(struct TC4_t *)2048B].D.2766.PER, tmp78
	sts 2086+1,r25	 ;  MEM[(struct TC4_t *)2048B].D.2766.PER, tmp78
	sts 2054,r18	 ;  MEM[(struct TC4_t *)2048B].INTCTRLA, tmp70
	ldi r24,lo8(2)	 ;  tmp82,
	sts 2048,r24	 ;  MEM[(struct TC4_t *)2048B].CTRLA, tmp82
	lds r24,162	 ;  D.3875, MEM[(struct PMIC_t *)160B].CTRL
	ori r24,lo8(1)	 ;  D.3875,
	sts 162,r24	 ;  MEM[(struct PMIC_t *)160B].CTRL, D.3875
	ldi r24,lo8(fs)	 ; ,
	ldi r25,hi8(fs)	 ; ,
	call pf_mount	 ; 
	or r24,r25	 ; 
	breq .L10	 ; ,
/* #APP */
 ;  227 "audio_code.c" 1
	cli
 ;  0 "" 2
/* #NOAPP */
.L11:
	rjmp .L11	 ; 
.L10:
	ldi r22,lo8(.LC1)	 ; ,
	ldi r23,hi8(.LC1)	 ; ,
	ldi r24,lo8(dir)	 ; ,
	ldi r25,hi8(dir)	 ; ,
	call pf_opendir	 ; 
	or r24,r25	 ; 
	breq .L15	 ; ,
/* #APP */
 ;  233 "audio_code.c" 1
	cli
 ;  0 "" 2
/* #NOAPP */
.L13:
	rjmp .L13	 ; 
.L28:
	ldd r24,Y+10	 ;  fileInfo.fname, fileInfo.fname
	tst r24	 ;  fileInfo.fname
	breq .L14	 ; ,
	subi r18,-1	 ;  numWavFiles.2,
	sbci r19,-1	 ;  numWavFiles.2,
	sts numWavFiles,r18	 ;  numWavFiles, numWavFiles.2
	sts numWavFiles+1,r19	 ;  numWavFiles, numWavFiles.2
.L15:
	movw r22,r28	 ; ,
	subi r22,-1	 ; ,
	sbci r23,-1	 ; ,
	ldi r24,lo8(dir)	 ; ,
	ldi r25,hi8(dir)	 ; ,
	call pf_readdir	 ; 
	lds r18,numWavFiles	 ;  numWavFiles, numWavFiles
	lds r19,numWavFiles+1	 ;  numWavFiles, numWavFiles
	or r24,r25	 ; 
	breq .L28	 ; ,
.L14:
	or r18,r19	 ;  numWavFiles
	brne .L16	 ; ,
/* #APP */
 ;  245 "audio_code.c" 1
	cli
 ;  0 "" 2
/* #NOAPP */
.L17:
	rjmp .L17	 ; 
.L16:
	lds r24,1640	 ;  currentSitPinValue.3, MEM[(struct PORT_t *)1632B].IN
	andi r24,lo8(8)	 ;  currentSitPinValue.3,
	sts currentSitPinValue,r24	 ;  currentSitPinValue, currentSitPinValue.3
	sts audioState,__zero_reg__	 ;  audioState.playerState,
	sts audioState+1,__zero_reg__	 ;  audioState.playerState,
	ldi r24,0	 ;  tmp92
	ldi r25,0	 ; 
	ldi r26,lo8(-128)	 ; ,
	ldi r27,lo8(63)	 ; ,
	sts audioState+2,r24	 ;  audioState.fade, tmp92
	sts audioState+2+1,r25	 ;  audioState.fade, tmp92
	sts audioState+2+2,r26	 ;  audioState.fade, tmp92
	sts audioState+2+3,r27	 ;  audioState.fade, tmp92
	sts audioState+14,__zero_reg__	 ;  audioState.bytesPlayed,
	sts audioState+14+1,__zero_reg__	 ;  audioState.bytesPlayed,
	sts audioState+14+2,__zero_reg__	 ;  audioState.bytesPlayed,
	sts audioState+14+3,__zero_reg__	 ;  audioState.bytesPlayed,
	sts audioState+6,__zero_reg__	 ;  audioState.totalBytes,
	sts audioState+6+1,__zero_reg__	 ;  audioState.totalBytes,
	sts audioState+6+2,__zero_reg__	 ;  audioState.totalBytes,
	sts audioState+6+3,__zero_reg__	 ;  audioState.totalBytes,
/* #APP */
 ;  258 "audio_code.c" 1
	sei
 ;  0 "" 2
/* #NOAPP */
	call loadFile	 ; 
	ldi r24,lo8(1)	 ;  tmp96,
	ldi r25,0	 ; 
	sts audioState,r24	 ;  audioState.playerState, tmp96
	sts audioState+1,r25	 ;  audioState.playerState, tmp96
.L19:
	lds r24,shouldFillNextBuffer	 ;  shouldFillNextBuffer.4, shouldFillNextBuffer
	lds r25,shouldFillNextBuffer+1	 ;  shouldFillNextBuffer.4, shouldFillNextBuffer
	or r24,r25	 ;  shouldFillNextBuffer.4
	breq .L19	 ; ,
	lds r24,readingBuffer	 ;  readingBuffer.5, readingBuffer
	lds r25,readingBuffer+1	 ;  readingBuffer.5, readingBuffer
	or r24,r25	 ;  readingBuffer.5
	brne .L20	 ; ,
	movw r20,r28	 ; ,
	subi r20,-23	 ; ,
	sbci r21,-1	 ; ,
	ldi r22,0	 ; 
	ldi r23,lo8(2)	 ; ,
	ldi r24,lo8(sampleBuffer2)	 ; ,
	ldi r25,hi8(sampleBuffer2)	 ; ,
	rjmp .L27	 ; 
.L20:
	lds r24,readingBuffer	 ;  readingBuffer.6, readingBuffer
	lds r25,readingBuffer+1	 ;  readingBuffer.6, readingBuffer
	movw r20,r28	 ; ,
	subi r20,-23	 ; ,
	sbci r21,-1	 ; ,
	ldi r22,0	 ; 
	ldi r23,lo8(2)	 ; ,
	sbiw r24,1	 ;  readingBuffer.6,
	brne .L22	 ; ,
	ldi r24,lo8(sampleBuffer0)	 ; ,
	ldi r25,hi8(sampleBuffer0)	 ; ,
	rjmp .L27	 ; 
.L22:
	ldi r24,lo8(sampleBuffer1)	 ; ,
	ldi r25,hi8(sampleBuffer1)	 ; ,
.L27:
	call pf_read	 ; 
	lds r24,audioState+10	 ;  D.3878, audioState.bytesRead
	lds r25,audioState+10+1	 ;  D.3878, audioState.bytesRead
	lds r26,audioState+10+2	 ;  D.3878, audioState.bytesRead
	lds r27,audioState+10+3	 ;  D.3878, audioState.bytesRead
	ldd r18,Y+23	 ;  bytes_read, bytes_read
	ldd r19,Y+24	 ;  bytes_read, bytes_read
	add r24,r18	 ;  D.3878, bytes_read
	adc r25,r19	 ;  D.3878, bytes_read
	adc r26,__zero_reg__	 ;  D.3878
	adc r27,__zero_reg__	 ;  D.3878
	sts audioState+10,r24	 ;  audioState.bytesRead, D.3878
	sts audioState+10+1,r25	 ;  audioState.bytesRead, D.3878
	sts audioState+10+2,r26	 ;  audioState.bytesRead, D.3878
	sts audioState+10+3,r27	 ;  audioState.bytesRead, D.3878
	sts shouldFillNextBuffer,__zero_reg__	 ;  shouldFillNextBuffer,
	sts shouldFillNextBuffer+1,__zero_reg__	 ;  shouldFillNextBuffer,
	rjmp .L19	 ; 
	.size	main, .-main
	.text
.global	__vector_12
	.type	__vector_12, @function
__vector_12:
	push r1	 ; 
	push r0	 ; 
	in r0,__SREG__	 ; ,
	push r0	 ; 
	clr __zero_reg__	 ; 
	push r18	 ; 
	push r19	 ; 
	push r21	 ; 
	push r22	 ; 
	push r23	 ; 
	push r24	 ; 
	push r25	 ; 
	push r26	 ; 
	push r27	 ; 
	push r30	 ; 
	push r31	 ; 
/* prologue: Signal */
/* frame size = 0 */
/* stack size = 14 */
.L__stack_usage = 14
	ldi r24,lo8(1)	 ;  tmp69,
	sts 2060,r24	 ;  MEM[(struct TC4_t *)2048B].INTFLAGS, tmp69
	lds r24,readingBuffer	 ;  readingBuffer.8, readingBuffer
	lds r25,readingBuffer+1	 ;  readingBuffer.8, readingBuffer
	or r24,r25	 ;  readingBuffer.8
	breq .L32	 ; ,
	lds r24,readingBuffer	 ;  readingBuffer.9, readingBuffer
	lds r25,readingBuffer+1	 ;  readingBuffer.9, readingBuffer
	sbiw r24,1	 ;  readingBuffer.9,
	brne .L33	 ; ,
	ldi r24,lo8(sampleBuffer1)	 ;  samples,
	ldi r25,hi8(sampleBuffer1)	 ;  samples,
	rjmp .L30	 ; 
.L32:
	ldi r24,lo8(sampleBuffer0)	 ;  samples,
	ldi r25,hi8(sampleBuffer0)	 ;  samples,
	rjmp .L30	 ; 
.L33:
	ldi r24,lo8(sampleBuffer2)	 ;  samples,
	ldi r25,hi8(sampleBuffer2)	 ;  samples,
.L30:
	lds r26,samplesIdx	 ;  tmp75, samplesIdx
	lds r27,samplesIdx+1	 ;  tmp75, samplesIdx
	lds r30,samplesIdx	 ;  tmp72, samplesIdx
	lds r31,samplesIdx+1	 ;  tmp72, samplesIdx
	adiw r30,1	 ;  tmp72,
	lsl r30	 ;  tmp72
	rol r31	 ;  tmp72
	add r30,r24	 ;  tmp72, samples
	adc r31,r25	 ; , samples
	ld r18,Z	 ;  *_18, *_18
	ldd r19,Z+1	 ;  *_18, *_18
	subi r19,-128	 ;  D.3882,
	lsl r26	 ;  tmp75
	rol r27	 ;  tmp75
	add r26,r24	 ;  tmp75, samples
	adc r27,r25	 ; , samples
	ld r24,X+	 ;  *_10
	ld r25,X	 ;  *_10
	subi r25,-128	 ;  D.3882,
	ldi r22,4	 ; ,
	1:
	lsr r25	 ;  D.3882
	ror r24	 ;  D.3882
	dec r22	 ; 
	brne 1b
	sts 792,r24	 ;  MEM[(struct DAC_t *)768B].D.2296.CH0DATA, D.3882
	sts 792+1,r25	 ;  MEM[(struct DAC_t *)768B].D.2296.CH0DATA, D.3882
	ldi r23,4	 ; ,
	1:
	lsr r19	 ;  D.3882
	ror r18	 ;  D.3882
	dec r23	 ; 
	brne 1b
	sts 794,r18	 ;  MEM[(struct DAC_t *)768B].D.2303.CH1DATA, D.3882
	sts 794+1,r19	 ;  MEM[(struct DAC_t *)768B].D.2303.CH1DATA, D.3882
	lds r24,samplesIdx	 ;  samplesIdx.15, samplesIdx
	lds r25,samplesIdx+1	 ;  samplesIdx.15, samplesIdx
	adiw r24,2	 ;  samplesIdx.15,
	sts samplesIdx,r24	 ;  samplesIdx, samplesIdx.15
	sts samplesIdx+1,r25	 ;  samplesIdx, samplesIdx.15
	lds r24,samplesIdx	 ;  samplesIdx.16, samplesIdx
	lds r25,samplesIdx+1	 ;  samplesIdx.16, samplesIdx
	cpi r24,-1	 ;  samplesIdx.16,
	cpc r25,__zero_reg__	 ;  samplesIdx.16
	breq .L29	 ; 
	brlt .L29	 ; 
	sts samplesIdx,__zero_reg__	 ;  samplesIdx,
	sts samplesIdx+1,__zero_reg__	 ;  samplesIdx,
	lds r24,readingBuffer	 ;  D.3884, readingBuffer
	lds r25,readingBuffer+1	 ;  D.3884, readingBuffer
	adiw r24,1	 ;  D.3884,
	ldi r22,lo8(3)	 ; ,
	ldi r23,0	 ; 
	call __divmodhi4
	sts readingBuffer,r24	 ;  readingBuffer, tmp81
	sts readingBuffer+1,r25	 ;  readingBuffer, tmp81
	ldi r24,lo8(1)	 ;  tmp84,
	ldi r25,0	 ; 
	sts shouldFillNextBuffer,r24	 ;  shouldFillNextBuffer, tmp84
	sts shouldFillNextBuffer+1,r25	 ;  shouldFillNextBuffer, tmp84
.L29:
/* epilogue start */
	pop r31	 ; 
	pop r30	 ; 
	pop r27	 ; 
	pop r26	 ; 
	pop r25	 ; 
	pop r24	 ; 
	pop r23	 ; 
	pop r22	 ; 
	pop r21	 ; 
	pop r19	 ; 
	pop r18	 ; 
	pop r0	 ; 
	out __SREG__,r0	 ; ,
	pop r0	 ; 
	pop r1	 ; 
	reti
	.size	__vector_12, .-__vector_12
	.local	currentSitPinValue
	.comm	currentSitPinValue,1,1
	.local	previousSitPinValue
	.comm	previousSitPinValue,1,1
	.local	samplesIdx
	.comm	samplesIdx,2,1
	.data
	.type	shouldFillNextBuffer, @object
	.size	shouldFillNextBuffer, 2
shouldFillNextBuffer:
	.word	1
	.local	readingBuffer
	.comm	readingBuffer,2,1
	.local	sampleBuffer2
	.comm	sampleBuffer2,512,1
	.local	sampleBuffer1
	.comm	sampleBuffer1,512,1
	.local	sampleBuffer0
	.comm	sampleBuffer0,512,1
	.local	audioState
	.comm	audioState,18,1
	.local	numWavFiles
	.comm	numWavFiles,2,1
	.local	dir
	.comm	dir,12,1
	.local	fs
	.comm	fs,36,1
	.ident	"GCC: (GNU) 4.8.1"
.global __do_copy_data
.global __do_clear_bss
