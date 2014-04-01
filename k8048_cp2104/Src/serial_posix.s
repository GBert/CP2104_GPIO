	.file	"serial_posix.c"
# GNU C (Ubuntu/Linaro 4.7.2-2ubuntu1) version 4.7.2 (x86_64-linux-gnu)
#	compiled by GNU C version 4.7.2, GMP version 5.0.2, MPFR version 3.1.0-p3, MPC version 0.9
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# angegebene Optionen:  -fpreprocessed serial_posix.i -mtune=generic
# -march=x86-64 -auxbase-strip serial_posix.o -Os -pedantic-errors -Wall
# -std=gnu99 -fverbose-asm -fstack-protector
# angeschaltete Optionen:  -fasynchronous-unwind-tables -fauto-inc-dec
# -fbranch-count-reg -fcaller-saves -fcombine-stack-adjustments -fcommon
# -fcompare-elim -fcprop-registers -fcrossjumping -fcse-follow-jumps
# -fdebug-types-section -fdefer-pop -fdelete-null-pointer-checks
# -fdevirtualize -fdwarf2-cfi-asm -fearly-inlining
# -feliminate-unused-debug-types -fexpensive-optimizations
# -fforward-propagate -ffunction-cse -fgcse -fgcse-lm -fgnu-runtime
# -fguess-branch-probability -fident -fif-conversion -fif-conversion2
# -findirect-inlining -finline -finline-atomics -finline-functions
# -finline-functions-called-once -finline-small-functions -fipa-cp
# -fipa-profile -fipa-pure-const -fipa-reference -fipa-sra
# -fira-share-save-slots -fira-share-spill-slots -fivopts
# -fkeep-static-consts -fleading-underscore -fmath-errno -fmerge-constants
# -fmerge-debug-strings -fmove-loop-invariants -fomit-frame-pointer
# -foptimize-register-move -foptimize-sibling-calls -fpartial-inlining
# -fpeephole -fpeephole2 -fprefetch-loop-arrays -free -freg-struct-return
# -fregmove -freorder-blocks -freorder-functions -frerun-cse-after-loop
# -fsched-critical-path-heuristic -fsched-dep-count-heuristic
# -fsched-group-heuristic -fsched-interblock -fsched-last-insn-heuristic
# -fsched-rank-heuristic -fsched-spec -fsched-spec-insn-heuristic
# -fsched-stalled-insns-dep -fschedule-insns2 -fshow-column -fshrink-wrap
# -fsigned-zeros -fsplit-ivs-in-unroller -fsplit-wide-types
# -fstack-protector -fstrict-aliasing -fstrict-overflow
# -fstrict-volatile-bitfields -fthread-jumps -ftoplevel-reorder
# -ftrapping-math -ftree-bit-ccp -ftree-builtin-call-dce -ftree-ccp
# -ftree-ch -ftree-copy-prop -ftree-copyrename -ftree-cselim -ftree-dce
# -ftree-dominator-opts -ftree-dse -ftree-forwprop -ftree-fre
# -ftree-loop-if-convert -ftree-loop-im -ftree-loop-ivcanon
# -ftree-loop-optimize -ftree-parallelize-loops= -ftree-phiprop -ftree-pre
# -ftree-pta -ftree-reassoc -ftree-scev-cprop -ftree-sink
# -ftree-slp-vectorize -ftree-sra -ftree-switch-conversion
# -ftree-tail-merge -ftree-ter -ftree-vect-loop-version -ftree-vrp
# -funit-at-a-time -funwind-tables -fvect-cost-model -fverbose-asm
# -fzero-initialized-in-bss -m128bit-long-double -m64 -m80387
# -maccumulate-outgoing-args -malign-stringops -mfancy-math-387
# -mfp-ret-in-387 -mglibc -mieee-fp -mmmx -mno-sse4 -mpush-args -mred-zone
# -msse -msse2 -mtls-direct-seg-refs

	.text
	.globl	serial_open
	.type	serial_open, @function
serial_open:
.LFB40:
	.cfi_startproc
	pushq	%rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movl	$2306, %esi	#,
	subq	$80, %rsp	#,
	.cfi_def_cfa_offset 96
	movq	%fs:40, %rax	#,
	movq	%rax, 72(%rsp)	#, D.5861
	xorl	%eax, %eax	#
	call	open	#
	testl	%eax, %eax	# D.5837
	movl	%eax, serial_port(%rip)	# D.5837, serial_port
	jns	.L2	#,
	movl	$-1, serial_port(%rip)	#, serial_port
	orl	$-1, %ebx	#, D.5812
	jmp	.L3	#
.L2:
	movl	$2048, %edx	#,
	movl	%eax, %edi	# D.5837,
	movl	$4, %esi	#,
	xorl	%eax, %eax	#
	call	fcntl	#
	movl	serial_port(%rip), %ebx	# serial_port, D.5812
	leaq	12(%rsp), %rsi	#,
	movl	%ebx, %edi	# D.5812,
	call	tcgetattr	#
	leaq	12(%rsp), %rdx	#,
	xorl	%esi, %esi	#
	movl	%ebx, %edi	# D.5812,
	movl	$2229, 20(%rsp)	#, options.c_cflag
	movl	$0, 16(%rsp)	#, options.c_oflag
	movl	$0, 24(%rsp)	#, options.c_lflag
	call	tcsetattr	#
.L3:
	movq	72(%rsp), %rdx	# D.5861,
	xorq	%fs:40, %rdx	#,
	movl	%ebx, %eax	# D.5812,
	je	.L4	#,
	call	__stack_chk_fail	#
.L4:
	addq	$80, %rsp	#,
	.cfi_def_cfa_offset 16
	popq	%rbx	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE40:
	.size	serial_open, .-serial_open
	.globl	serial_close
	.type	serial_close, @function
serial_close:
.LFB41:
	.cfi_startproc
	pushq	%rax	#
	.cfi_def_cfa_offset 16
	movl	serial_port(%rip), %edi	# serial_port,
	call	close	#
	movl	$-1, serial_port(%rip)	#, serial_port
	popq	%rdx	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE41:
	.size	serial_close, .-serial_close
	.globl	get_cts
	.type	get_cts, @function
get_cts:
.LFB42:
	.cfi_startproc
	subq	$24, %rsp	#,
	.cfi_def_cfa_offset 32
	movl	serial_port(%rip), %edi	# serial_port,
	movl	$32768, %esi	#,
	leaq	12(%rsp), %rdx	#,
	xorl	%eax, %eax	#
	call	ioctl	#
	movl	12(%rsp), %eax	# gpio, tmp68
	addq	$24, %rsp	#,
	.cfi_def_cfa_offset 8
	shrl	$3, %eax	#, tmp68
	andl	$1, %eax	#, tmp68
	ret
	.cfi_endproc
.LFE42:
	.size	get_cts, .-get_cts
	.globl	reset_gpios
	.type	reset_gpios, @function
reset_gpios:
.LFB43:
	.cfi_startproc
	subq	$24, %rsp	#,
	.cfi_def_cfa_offset 32
	movl	serial_port(%rip), %edi	# serial_port,
	movl	$32769, %esi	#,
	leaq	12(%rsp), %rdx	#,
	xorl	%eax, %eax	#
	movl	$15, 12(%rsp)	#, gpio
	call	ioctl	#
	addq	$24, %rsp	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE43:
	.size	reset_gpios, .-reset_gpios
	.globl	set_dtr
	.type	set_dtr, @function
set_dtr:
.LFB44:
	.cfi_startproc
	subq	$24, %rsp	#,
	.cfi_def_cfa_offset 32
	testl	%edi, %edi	# dtr
	je	.L13	#,
	movl	$524296, 12(%rsp)	#, gpio
	jmp	.L16	#
.L13:
	movl	$8, 12(%rsp)	#, gpio
.L16:
	movl	serial_port(%rip), %edi	# serial_port,
	leaq	12(%rsp), %rdx	#,
	movl	$32769, %esi	#,
	xorl	%eax, %eax	#
	call	ioctl	#
	addq	$24, %rsp	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE44:
	.size	set_dtr, .-set_dtr
	.globl	set_rts
	.type	set_rts, @function
set_rts:
.LFB45:
	.cfi_startproc
	subq	$24, %rsp	#,
	.cfi_def_cfa_offset 32
	testl	%edi, %edi	# rts
	je	.L18	#,
	movl	$262148, 12(%rsp)	#, gpio
	jmp	.L21	#
.L18:
	movl	$4, 12(%rsp)	#, gpio
.L21:
	movl	serial_port(%rip), %edi	# serial_port,
	leaq	12(%rsp), %rdx	#,
	movl	$32769, %esi	#,
	xorl	%eax, %eax	#
	call	ioctl	#
	addq	$24, %rsp	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE45:
	.size	set_rts, .-set_rts
	.globl	set_tx
	.type	set_tx, @function
set_tx:
.LFB46:
	.cfi_startproc
	subq	$24, %rsp	#,
	.cfi_def_cfa_offset 32
	testl	%edi, %edi	# tx
	je	.L23	#,
	movl	$131074, 12(%rsp)	#, gpio
	jmp	.L26	#
.L23:
	movl	$2, 12(%rsp)	#, gpio
.L26:
	movl	serial_port(%rip), %edi	# serial_port,
	leaq	12(%rsp), %rdx	#,
	movl	$32769, %esi	#,
	xorl	%eax, %eax	#
	call	ioctl	#
	addq	$24, %rsp	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE46:
	.size	set_tx, .-set_tx
	.globl	set_gpio0
	.type	set_gpio0, @function
set_gpio0:
.LFB47:
	.cfi_startproc
	subq	$24, %rsp	#,
	.cfi_def_cfa_offset 32
	testl	%edi, %edi	# gpio0
	je	.L28	#,
	movl	$65537, 12(%rsp)	#, gpio
	jmp	.L31	#
.L28:
	movl	$1, 12(%rsp)	#, gpio
.L31:
	movl	serial_port(%rip), %edi	# serial_port,
	leaq	12(%rsp), %rdx	#,
	movl	$32769, %esi	#,
	xorl	%eax, %eax	#
	call	ioctl	#
	addq	$24, %rsp	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE47:
	.size	set_gpio0, .-set_gpio0
	.data
	.align 4
	.type	serial_port, @object
	.size	serial_port, 4
serial_port:
	.long	-1
	.ident	"GCC: (Ubuntu/Linaro 4.7.2-2ubuntu1) 4.7.2"
	.section	.note.GNU-stack,"",@progbits
