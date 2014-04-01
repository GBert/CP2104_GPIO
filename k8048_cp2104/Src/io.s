	.file	"io.c"
# GNU C (Ubuntu/Linaro 4.7.2-2ubuntu1) version 4.7.2 (x86_64-linux-gnu)
#	compiled by GNU C version 4.7.2, GMP version 5.0.2, MPFR version 3.1.0-p3, MPC version 0.9
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# angegebene Optionen:  -fpreprocessed io.i -mtune=generic -march=x86-64
# -auxbase-strip io.o -Os -pedantic-errors -Wall -std=gnu99 -fverbose-asm
# -fstack-protector
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
	.globl	io_signal
	.type	io_signal, @function
io_signal:
.LFB40:
	.cfi_startproc
	movl	$1, io_stop(%rip)	#, io_stop
	ret
	.cfi_endproc
.LFE40:
	.size	io_signal, .-io_signal
	.globl	io_signal_on
	.type	io_signal_on, @function
io_signal_on:
.LFB41:
	.cfi_startproc
	movl	$io_signal, %esi	#,
	movl	$2, %edi	#,
	movl	$0, io_stop(%rip)	#, io_stop
	jmp	signal	#
	.cfi_endproc
.LFE41:
	.size	io_signal_on, .-io_signal_on
	.globl	io_signal_off
	.type	io_signal_off, @function
io_signal_off:
.LFB42:
	.cfi_startproc
	xorl	%esi, %esi	#
	movl	$2, %edi	#,
	jmp	signal	#
	.cfi_endproc
.LFE42:
	.size	io_signal_off, .-io_signal_off
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"/dev/ttyS0"
	.text
	.globl	io_config
	.type	io_config, @function
io_config:
.LFB43:
	.cfi_startproc
	movb	$0, 3116(%rdi)	#, k_1(D)->iot
	movl	$1024, %edx	#,
	addq	$1024, %rdi	#, tmp61
	movl	$.LC0, %esi	#,
	jmp	strncpy	#
	.cfi_endproc
.LFE43:
	.size	io_config, .-io_config
	.globl	io_release
	.type	io_release, @function
io_release:
.LFB45:
	.cfi_startproc
	ret
	.cfi_endproc
.LFE45:
	.size	io_release, .-io_release
	.globl	io_exit
	.type	io_exit, @function
io_exit:
.LFB47:
	.cfi_startproc
	pushq	%rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	cmpb	$0, 3116(%rdi)	#, k_1(D)->iot
	movl	%esi, %ebx	# err, err
	je	.L7	#,
	movl	3072(%rdi), %eax	# k_1(D)->bitrules, tmp65
	andw	$4096, %ax	#, tmp65
	movzwl	%ax, %esi	# tmp65, tmp67
	call	io_close	#
.L7:
	movl	%ebx, %edi	# err,
	call	exit	#
	.cfi_endproc
.LFE47:
	.size	io_exit, .-io_exit
	.section	.rodata.str1.1
.LC1:
	.string	"%s: fatal error: device not open.\n"
	.text
	.globl	io_close
	.type	io_close, @function
io_close:
.LFB46:
	.cfi_startproc
	pushq	%rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movb	3116(%rdi), %al	# k_1(D)->iot, D.6450
	movq	%rdi, %rbx	# k, k
	testb	%al, %al	# D.6450
	jne	.L10	#,
	movl	$.LC1, %esi	#,
	movl	$1, %edi	#,
	movl	$__func__.5773, %edx	#,
	call	__printf_chk	#
	movl	$70, %esi	#,
	movq	%rbx, %rdi	# k,
	call	io_exit	#
.L10:
	decb	%al	# D.6450
	jne	.L11	#,
	call	serial_close	#
.L11:
	movb	$0, 3116(%rbx)	#, k_1(D)->iot
	xorl	%eax, %eax	#
	popq	%rbx	#
	.cfi_def_cfa_offset 8
	jmp	io_signal_off	#
	.cfi_endproc
.LFE46:
	.size	io_close, .-io_close
	.section	.rodata.str1.1
.LC2:
	.string	"%s: fatal error: device already open.\n"
.LC3:
	.string	"/dev/cu"
.LC4:
	.string	"/dev/tty"
	.text
	.globl	io_open
	.type	io_open, @function
io_open:
.LFB44:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rdi, %rbp	# k, k
	pushq	%rbx	#
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	pushq	%rcx	#
	.cfi_def_cfa_offset 32
	cmpb	$0, 3116(%rdi)	#, k_2(D)->iot
	je	.L15	#,
	movl	$.LC2, %esi	#,
	movl	$1, %edi	#,
	movl	$__func__.5763, %edx	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	movl	$70, %esi	#,
	movq	%rbp, %rdi	# k,
	call	io_exit	#
.L15:
	leaq	1024(%rdi), %rbx	#, D.6462
	movl	$.LC3, %esi	#,
	movq	%rbx, %rdi	# D.6462,
	call	strstr	#
	cmpq	%rbx, %rax	# D.6462, D.6463
	je	.L16	#,
	movl	$.LC4, %esi	#,
	movq	%rbx, %rdi	# D.6462,
	call	strstr	#
	cmpq	%rbx, %rax	# D.6462, D.6465
	je	.L16	#,
.L18:
	orl	$-1, %eax	#, D.6469
	jmp	.L17	#
.L16:
	movq	%rbx, %rdi	# D.6462,
	call	serial_open	#
	testl	%eax, %eax	# D.6466
	js	.L18	#,
	xorl	%eax, %eax	#
	movb	$1, 3116(%rbp)	#, k_2(D)->iot
	call	io_signal_on	#
	xorl	%eax, %eax	# D.6469
.L17:
	popq	%rdx	#
	.cfi_def_cfa_offset 24
	popq	%rbx	#
	.cfi_def_cfa_offset 16
	popq	%rbp	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE44:
	.size	io_open, .-io_open
	.section	.rodata.str1.1
.LC5:
	.string	"Can't open serial I/O"
.LC6:
	.string	"Unsupported I/O"
	.text
	.globl	io_error
	.type	io_error, @function
io_error:
.LFB48:
	.cfi_startproc
	cmpb	$1, 3116(%rdi)	#, k_1(D)->iot
	movl	$.LC5, %edx	#, tmp67
	movl	$.LC6, %eax	#, tmp66
	cmove	%rdx, %rax	# tmp67,, tmp66
	movq	%rax, msg.5784(%rip)	# tmp66, msg
	ret
	.cfi_endproc
.LFE48:
	.size	io_error, .-io_error
	.section	.rodata.str1.1
.LC7:
	.string	"device not detected"
.LC8:
	.string	"device not compatible"
	.text
	.globl	io_fault
	.type	io_fault, @function
io_fault:
.LFB49:
	.cfi_startproc
	testl	%esi, %esi	# errorcode
	movl	$.LC8, %edx	#, tmp66
	movl	$.LC7, %eax	#, tmp65
	cmovne	%rdx, %rax	# tmp66,, tmp65
	movq	%rax, msg.5792(%rip)	# tmp65, msg
	ret
	.cfi_endproc
.LFE49:
	.size	io_fault, .-io_fault
	.globl	io_usleep
	.type	io_usleep, @function
io_usleep:
.LFB50:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx	#
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movl	%esi, %ebx	# n, n
	subq	$40, %rsp	#,
	.cfi_def_cfa_offset 64
	testl	%esi, %esi	# n
	je	.L27	#,
	cmpb	$1, 3116(%rdi)	#, k_4(D)->iot
	jne	.L30	#,
	cmpl	$9, %esi	#, n
	ja	.L30	#,
	xorl	%ebp, %ebp	# i
.L31:
	incl	%ebp	# i
	call	get_cts	#
	cmpl	%ebx, %ebp	# n, i
	jne	.L31	#,
	jmp	.L27	#
.L30:
	cmpl	$99, %ebx	#, n
	ja	.L33	#,
	xorl	%esi, %esi	#
	movq	%rsp, %rdi	#,
	call	gettimeofday	#
.L35:
	leaq	16(%rsp), %rdi	#,
	xorl	%esi, %esi	#
	call	gettimeofday	#
	movq	24(%rsp), %rax	# tv2.tv_usec, tv2.tv_usec
	subl	8(%rsp), %eax	# tv1.tv_usec, diff
	leal	1000000(%rax), %edx	#, tmp76
	testl	%eax, %eax	# diff
	cmovs	%edx, %eax	# tmp76,, diff
	cmpl	%ebx, %eax	# n, diff
	jb	.L35	#,
	jmp	.L27	#
.L33:
	movl	%ebx, %edi	# n,
	call	usleep	#
.L27:
	addq	$40, %rsp	#,
	.cfi_def_cfa_offset 24
	popq	%rbx	#
	.cfi_def_cfa_offset 16
	popq	%rbp	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE50:
	.size	io_usleep, .-io_usleep
	.section	.rodata.str1.1
.LC9:
	.string	"%s: fatal error: unsupported\n"
	.text
	.globl	io_set_pgm
	.type	io_set_pgm, @function
io_set_pgm:
.LFB51:
	.cfi_startproc
	pushq	%rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %rbx	# k, k
	movb	%sil, %dil	# pgm, pgm
	testb	$32, 3072(%rbx)	#, k_2(D)->bitrules
	je	.L40	#,
	movb	$1, %dil	#, pgm
	subl	%esi, %edi	# pgm, pgm
.L40:
	cmpb	$1, 3116(%rbx)	#, k_2(D)->iot
	jne	.L47	#,
	cmpb	$-1, 3121(%rbx)	#, k_2(D)->pgm
	je	.L39	#,
	popq	%rbx	#
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	movzbl	%dil, %edi	# pgm, pgm
	jmp	set_gpio0	#
.L47:
	.cfi_restore_state
	movl	$.LC9, %esi	#,
	movl	$1, %edi	#,
	movl	$__func__.5813, %edx	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	movl	$70, %esi	#,
	movq	%rbx, %rdi	# k,
	call	io_exit	#
.L39:
	popq	%rbx	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE51:
	.size	io_set_pgm, .-io_set_pgm
	.globl	io_set_vpp
	.type	io_set_vpp, @function
io_set_vpp:
.LFB52:
	.cfi_startproc
	pushq	%rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	testb	$4, 3072(%rdi)	#, k_2(D)->bitrules
	movq	%rdi, %rbx	# k, k
	movb	%sil, %al	# vpp, vpp
	je	.L50	#,
	movb	$1, %al	#, vpp
	subl	%esi, %eax	# vpp, vpp
.L50:
	cmpb	$1, 3116(%rbx)	#, k_2(D)->iot
	jne	.L56	#,
	popq	%rbx	#
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	movzbl	%al, %edi	# vpp, vpp
	jmp	set_tx	#
.L56:
	.cfi_restore_state
	movl	$.LC9, %esi	#,
	movl	$1, %edi	#,
	movl	$__func__.5821, %edx	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	movl	$70, %esi	#,
	movq	%rbx, %rdi	# k,
	call	io_exit	#
	.cfi_endproc
.LFE52:
	.size	io_set_vpp, .-io_set_vpp
	.globl	io_set_pgd
	.type	io_set_pgd, @function
io_set_pgd:
.LFB53:
	.cfi_startproc
	pushq	%rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	testb	$1, 3072(%rdi)	#, k_2(D)->bitrules
	movq	%rdi, %rbx	# k, k
	movb	%sil, %al	# pgd, pgd
	je	.L59	#,
	movb	$1, %al	#, pgd
	subl	%esi, %eax	# pgd, pgd
.L59:
	cmpb	$1, 3116(%rbx)	#, k_2(D)->iot
	jne	.L65	#,
	popq	%rbx	#
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	movzbl	%al, %edi	# pgd, pgd
	jmp	set_dtr	#
.L65:
	.cfi_restore_state
	movl	$.LC9, %esi	#,
	movl	$1, %edi	#,
	movl	$__func__.5829, %edx	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	movl	$70, %esi	#,
	movq	%rbx, %rdi	# k,
	call	io_exit	#
	.cfi_endproc
.LFE53:
	.size	io_set_pgd, .-io_set_pgd
	.globl	io_set_pgc
	.type	io_set_pgc, @function
io_set_pgc:
.LFB54:
	.cfi_startproc
	pushq	%rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	testb	$2, 3072(%rdi)	#, k_2(D)->bitrules
	movq	%rdi, %rbx	# k, k
	movb	%sil, %al	# pgc, pgc
	je	.L68	#,
	movb	$1, %al	#, pgc
	subl	%esi, %eax	# pgc, pgc
.L68:
	cmpb	$1, 3116(%rbx)	#, k_2(D)->iot
	jne	.L74	#,
	popq	%rbx	#
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	movzbl	%al, %edi	# pgc, pgc
	jmp	set_rts	#
.L74:
	.cfi_restore_state
	movl	$.LC9, %esi	#,
	movl	$1, %edi	#,
	movl	$__func__.5837, %edx	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	movl	$70, %esi	#,
	movq	%rbx, %rdi	# k,
	call	io_exit	#
	.cfi_endproc
.LFE54:
	.size	io_set_pgc, .-io_set_pgc
	.type	io_clock_bit, @function
io_clock_bit:
.LFB57:
	.cfi_startproc
	pushq	%r12	#
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	movl	%edx, %r12d	# hdly, hdly
	pushq	%rbp	#
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movl	%esi, %ebp	# ldly, ldly
	movl	$1, %esi	#,
	pushq	%rbx	#
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%rdi, %rbx	# k, k
	call	io_set_pgc	#
	movl	%r12d, %esi	# hdly,
	movq	%rbx, %rdi	# k,
	call	io_usleep	#
	movq	%rbx, %rdi	# k,
	xorl	%esi, %esi	#
	call	io_set_pgc	#
	movq	%rbx, %rdi	# k,
	movl	%ebp, %esi	# ldly,
	popq	%rbx	#
	.cfi_def_cfa_offset 24
	popq	%rbp	#
	.cfi_def_cfa_offset 16
	popq	%r12	#
	.cfi_def_cfa_offset 8
	jmp	io_usleep	#
	.cfi_endproc
.LFE57:
	.size	io_clock_bit, .-io_clock_bit
	.globl	io_get_pgd
	.type	io_get_pgd, @function
io_get_pgd:
.LFB55:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx	#
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rdi, %rbx	# k, k
	pushq	%r8	#
	.cfi_def_cfa_offset 32
	movb	3116(%rdi), %bpl	# k_3(D)->iot, k_3(D)->iot
	cmpb	$1, %bpl	#, k_3(D)->iot
	je	.L85	#,
	movl	$.LC9, %esi	#,
	movl	$1, %edi	#,
	movl	$__func__.5845, %edx	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	movl	$70, %esi	#,
	movq	%rbx, %rdi	# k,
	call	io_exit	#
.L85:
	call	get_cts	#
	movb	%bpl, %dl	# k_3(D)->iot, pgd
	subl	%eax, %edx	# D.6373, pgd
	testb	$8, 3072(%rbx)	#, k_3(D)->bitrules
	popq	%rsi	#
	.cfi_def_cfa_offset 24
	popq	%rbx	#
	.cfi_def_cfa_offset 16
	popq	%rbp	#
	.cfi_def_cfa_offset 8
	cmove	%eax, %edx	# D.6373,, pgd
	movb	%dl, %al	# pgd,
	ret
	.cfi_endproc
.LFE55:
	.size	io_get_pgd, .-io_get_pgd
	.globl	io_configure
	.type	io_configure, @function
io_configure:
.LFB56:
	.cfi_startproc
	movb	%sil, 3100(%rdi)	# clock_falling, k_1(D)->clock_falling
	ret
	.cfi_endproc
.LFE56:
	.size	io_configure, .-io_configure
	.globl	io_data_input
	.type	io_data_input, @function
io_data_input:
.LFB58:
	.cfi_startproc
	movl	3072(%rdi), %esi	# k_1(D)->bitrules, tmp64
	shrw	$4, %si	#, tmp64
	andl	$1, %esi	#, tmp67
	jmp	io_set_pgd	#
	.cfi_endproc
.LFE58:
	.size	io_data_input, .-io_data_input
	.globl	io_clock_in_bits
	.type	io_clock_in_bits, @function
io_clock_in_bits:
.LFB59:
	.cfi_startproc
	pushq	%r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movzbl	%cl, %r15d	# nbits,
	pushq	%r14	#
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movl	%edx, %r14d	# hdly, hdly
	pushq	%r13	#
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movl	%esi, %r13d	# ldly, ldly
	pushq	%r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	xorl	%r12d, %r12d	# bits
	pushq	%rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	xorl	%ebp, %ebp	# i
	pushq	%rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rdi, %rbx	# k, k
	pushq	%r10	#
	.cfi_def_cfa_offset 64
	call	io_data_input	#
	jmp	.L90	#
.L93:
	cmpb	$0, 3100(%rbx)	#, k_4(D)->clock_falling
	jne	.L91	#,
	movl	%r14d, %edx	# hdly,
	movl	%r13d, %esi	# ldly,
	movq	%rbx, %rdi	# k,
	call	io_clock_bit	#
.L91:
	movq	%rbx, %rdi	# k,
	call	io_get_pgd	#
	movb	%bpl, %cl	#,
	movzbl	%al, %eax	# D.6357, tmp75
	sall	%cl, %eax	#, tmp75
	orl	%eax, %r12d	# tmp75, bits
	cmpb	$0, 3100(%rbx)	#, k_4(D)->clock_falling
	je	.L92	#,
	movl	%r14d, %edx	# hdly,
	movl	%r13d, %esi	# ldly,
	movq	%rbx, %rdi	# k,
	call	io_clock_bit	#
.L92:
	incl	%ebp	# i
.L90:
	cmpl	%r15d, %ebp	# nbits, i
	jl	.L93	#,
	popq	%r9	#
	.cfi_def_cfa_offset 56
	popq	%rbx	#
	.cfi_def_cfa_offset 48
	popq	%rbp	#
	.cfi_def_cfa_offset 40
	movl	%r12d, %eax	# bits,
	popq	%r12	#
	.cfi_def_cfa_offset 32
	popq	%r13	#
	.cfi_def_cfa_offset 24
	popq	%r14	#
	.cfi_def_cfa_offset 16
	popq	%r15	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE59:
	.size	io_clock_in_bits, .-io_clock_in_bits
	.globl	io_clock_out_bits
	.type	io_clock_out_bits, @function
io_clock_out_bits:
.LFB60:
	.cfi_startproc
	pushq	%r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movl	%ecx, %r15d	# bits, bits
	pushq	%r14	#
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movl	%edx, %r14d	# hdly, hdly
	pushq	%r13	#
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movl	%esi, %r13d	# ldly, ldly
	pushq	%r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movzbl	%r8b, %r12d	# nbits, nbits
	pushq	%rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movq	%rdi, %rbp	# k, k
	pushq	%rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	pushq	%rbx	#
	.cfi_def_cfa_offset 64
	xorl	%ebx, %ebx	# i
	jmp	.L96	#
.L97:
	movb	%bl, %cl	#,
	movl	%r15d, %esi	# bits, tmp72
	movq	%rbp, %rdi	# k,
	shrl	%cl, %esi	#, tmp72
	incl	%ebx	# i
	andl	$1, %esi	#, tmp72
	call	io_set_pgd	#
	movl	%r14d, %edx	# hdly,
	movl	%r13d, %esi	# ldly,
	movq	%rbp, %rdi	# k,
	call	io_clock_bit	#
.L96:
	cmpl	%r12d, %ebx	# nbits, i
	jl	.L97	#,
	popq	%r11	#
	.cfi_def_cfa_offset 56
	popq	%rbx	#
	.cfi_def_cfa_offset 48
	popq	%rbp	#
	.cfi_def_cfa_offset 40
	popq	%r12	#
	.cfi_def_cfa_offset 32
	popq	%r13	#
	.cfi_def_cfa_offset 24
	popq	%r14	#
	.cfi_def_cfa_offset 16
	popq	%r15	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE60:
	.size	io_clock_out_bits, .-io_clock_out_bits
	.section	.rodata.str1.1
.LC10:
	.string	"%c[%c]\r"
	.text
	.globl	io_program_feedback
	.type	io_program_feedback, @function
io_program_feedback:
.LFB63:
	.cfi_startproc
	cmpb	%sil, c_last.5903(%rip)	# c, c_last
	pushq	%rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movl	%esi, %ebx	# c, c
	je	.L100	#,
.L102:
	movl	a_count.5901(%rip), %eax	# a_count, a_count.40
	movq	stderr(%rip), %rdi	# stderr,
	movsbl	%bl, %r8d	# c,
	movl	$1, %esi	#,
	movq	%rax, %rdx	#, tmp76
	incl	%eax	# tmp78
	andl	$3, %edx	#, tmp76
	movl	%eax, a_count.5901(%rip)	# tmp78, a_count
	xorl	%eax, %eax	#
	movsbl	arrow.5902(%rdx), %ecx	# arrow, D.6323
	movl	$.LC10, %edx	#,
	call	__fprintf_chk	#
	movb	%bl, c_last.5903(%rip)	# c, c_last
	movl	$0, c_count.5900(%rip)	#, c_count
	jmp	.L99	#
.L100:
	movl	c_count.5900(%rip), %eax	# c_count, c_count.37
	movl	3080(%rdi), %edx	# k_5(D)->busy, D.6315
	leal	1(%rax), %ecx	#, tmp80
	cmpl	%edx, %eax	# D.6315, c_count.37
	movl	%ecx, c_count.5900(%rip)	# tmp80, c_count
	ja	.L102	#,
.L99:
	popq	%rbx	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE63:
	.size	io_program_feedback, .-io_program_feedback
	.section	.rodata.str1.1
.LC11:
	.string	"%s: bits [0x%08X] nbits [%d]\n"
	.text
	.globl	io_program_out
	.type	io_program_out, @function
io_program_out:
.LFB62:
	.cfi_startproc
	pushq	%r12	#
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	movl	%edx, %r12d	# nbits, nbits
	pushq	%rbp	#
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movl	%esi, %ebp	# bits, bits
	pushq	%rbx	#
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	cmpl	$0, 3080(%rdi)	#, k_1(D)->busy
	movq	%rdi, %rbx	# k, k
	je	.L105	#,
	movl	$111, %esi	#,
	call	io_program_feedback	#
.L105:
	cmpl	$9, 3096(%rbx)	#, k_1(D)->debug
	jbe	.L106	#,
	movzbl	%r12b, %r8d	# nbits,
	movl	%ebp, %ecx	# bits,
	movl	$__func__.5893, %edx	#,
	movl	$.LC11, %esi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
.L106:
	movl	3088(%rbx), %edx	# k_1(D)->sleep_high, k_1(D)->sleep_high
	movl	3084(%rbx), %esi	# k_1(D)->sleep_low, k_1(D)->sleep_low
	movq	%rbx, %rdi	# k,
	popq	%rbx	#
	.cfi_def_cfa_offset 24
	movl	%ebp, %ecx	# bits,
	movzbl	%r12b, %r8d	# nbits,
	popq	%rbp	#
	.cfi_def_cfa_offset 16
	popq	%r12	#
	.cfi_def_cfa_offset 8
	jmp	io_clock_out_bits	#
	.cfi_endproc
.LFE62:
	.size	io_program_out, .-io_program_out
	.section	.rodata.str1.1
.LC12:
	.string	"%s:  bits [0x%08X] nbits [%d]\n"
	.text
	.globl	io_program_in
	.type	io_program_in, @function
io_program_in:
.LFB61:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movl	%esi, %ebp	# nbits, nbits
	pushq	%rbx	#
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rdi, %rbx	# k, k
	subq	$24, %rsp	#,
	.cfi_def_cfa_offset 48
	cmpl	$0, 3080(%rdi)	#, k_1(D)->busy
	je	.L109	#,
	movl	$105, %esi	#,
	call	io_program_feedback	#
.L109:
	movl	3088(%rbx), %edx	# k_1(D)->sleep_high, k_1(D)->sleep_high
	movl	3084(%rbx), %esi	# k_1(D)->sleep_low, k_1(D)->sleep_low
	movzbl	%bpl, %r8d	# nbits, D.6341
	movl	%r8d, %ecx	# D.6341,
	movq	%rbx, %rdi	# k,
	movl	%r8d, 8(%rsp)	#,
	call	io_clock_in_bits	#
	cmpl	$9, 3096(%rbx)	#, k_1(D)->debug
	movl	%eax, %ebp	#, bits
	movl	8(%rsp), %r8d	#,
	jbe	.L110	#,
	movl	%eax, %ecx	# bits,
	movl	$__func__.5887, %edx	#,
	movl	$.LC12, %esi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
.L110:
	addq	$24, %rsp	#,
	.cfi_def_cfa_offset 24
	movl	%ebp, %eax	# bits,
	popq	%rbx	#
	.cfi_def_cfa_offset 16
	popq	%rbp	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE61:
	.size	io_program_in, .-io_program_in
	.section	.rodata.str1.1
.LC13:
	.string	"\nTEST MODE VPP|PGD|PGC|PGM\n"
.LC14:
	.string	"VPP LOW  (ICSP 1) (D-SUB-9 TX 3) [3 seconds]"
.LC15:
	.string	"PGC LOW  (ICSP 5) (D-SUB-9 RTS 7) [3 seconds]"
.LC16:
	.string	"PGD LOW  (ICSP 4) (D-SUB-9 DTR 3) [3 seconds]"
.LC17:
	.string	"PGM LOW  [3 seconds]"
.LC18:
	.string	"VPP HIGH (ICSP 1) (D-SUB-9 TX 3) [%d seconds]\n"
.LC19:
	.string	"PGC HIGH (ICSP 5) (D-SUB-9 RTS 7) [%d seconds]\n"
.LC20:
	.string	"PGD HIGH (ICSP 4) (D-SUB-9 DTR 3) [%d seconds]\n"
.LC21:
	.string	"PGM HIGH [%d seconds]\n"
.LC22:
	.string	"\nTEST DONE\n"
	.text
	.globl	io_test0
	.type	io_test0, @function
io_test0:
.LFB64:
	.cfi_startproc
	pushq	%r12	#
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	movl	%edx, %r12d	# t, t
	pushq	%rbp	#
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movl	%esi, %ebp	# pin, pin
	pushq	%rbx	#
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%rdi, %rbx	# k, k
	movl	$.LC13, %edi	#,
	call	puts	#
	cmpl	$1, %ebp	#, pin
	je	.L115	#,
	jg	.L118	#,
	testl	%ebp, %ebp	# pin
	je	.L114	#,
	jmp	.L113	#
.L118:
	cmpl	$2, %ebp	#, pin
	je	.L116	#,
	cmpl	$3, %ebp	#, pin
	jne	.L113	#,
	jmp	.L117	#
.L114:
	movl	$.LC14, %edi	#,
	call	puts	#
	xorl	%esi, %esi	#
	movq	%rbx, %rdi	# k,
	call	io_set_vpp	#
	jmp	.L113	#
.L115:
	movl	$.LC15, %edi	#,
	call	puts	#
	xorl	%esi, %esi	#
	movq	%rbx, %rdi	# k,
	call	io_set_pgc	#
	jmp	.L113	#
.L116:
	movl	$.LC16, %edi	#,
	call	puts	#
	xorl	%esi, %esi	#
	movq	%rbx, %rdi	# k,
	call	io_set_pgd	#
	jmp	.L113	#
.L117:
	movl	$.LC17, %edi	#,
	call	puts	#
	xorl	%esi, %esi	#
	movq	%rbx, %rdi	# k,
	call	io_set_pgm	#
.L113:
	cmpl	$0, io_stop(%rip)	#, io_stop
	jne	.L119	#,
	movl	$3, %edi	#,
	call	sleep	#
.L119:
	cmpl	$1, %ebp	#, pin
	je	.L122	#,
	jg	.L125	#,
	testl	%ebp, %ebp	# pin
	je	.L121	#,
	jmp	.L120	#
.L125:
	cmpl	$2, %ebp	#, pin
	je	.L123	#,
	cmpl	$3, %ebp	#, pin
	jne	.L120	#,
	jmp	.L124	#
.L121:
	movl	%r12d, %edx	# t,
	movl	$.LC18, %esi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	movl	$1, %esi	#,
	movq	%rbx, %rdi	# k,
	call	io_set_vpp	#
	jmp	.L120	#
.L122:
	movl	%r12d, %edx	# t,
	movl	$.LC19, %esi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	movl	$1, %esi	#,
	movq	%rbx, %rdi	# k,
	call	io_set_pgc	#
	jmp	.L120	#
.L123:
	movl	%r12d, %edx	# t,
	movl	$.LC20, %esi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	movl	$1, %esi	#,
	movq	%rbx, %rdi	# k,
	call	io_set_pgd	#
	jmp	.L120	#
.L124:
	movl	$.LC21, %esi	#,
	movl	$1, %edi	#,
	movl	%r12d, %edx	# t,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	movl	$1, %esi	#,
	movq	%rbx, %rdi	# k,
	call	io_set_pgm	#
.L120:
	cmpl	$0, io_stop(%rip)	#, io_stop
	jne	.L126	#,
	movl	%r12d, %edi	# t,
	call	sleep	#
.L126:
	cmpl	$1, %ebp	#, pin
	je	.L129	#,
	jg	.L132	#,
	testl	%ebp, %ebp	# pin
	je	.L128	#,
	jmp	.L127	#
.L132:
	cmpl	$2, %ebp	#, pin
	je	.L130	#,
	cmpl	$3, %ebp	#, pin
	jne	.L127	#,
	jmp	.L131	#
.L128:
	movl	$.LC14, %edi	#,
	call	puts	#
	xorl	%esi, %esi	#
	movq	%rbx, %rdi	# k,
	call	io_set_vpp	#
	jmp	.L127	#
.L129:
	movl	$.LC15, %edi	#,
	call	puts	#
	xorl	%esi, %esi	#
	movq	%rbx, %rdi	# k,
	call	io_set_pgc	#
	jmp	.L127	#
.L130:
	movl	$.LC16, %edi	#,
	call	puts	#
	xorl	%esi, %esi	#
	movq	%rbx, %rdi	# k,
	call	io_set_pgd	#
	jmp	.L127	#
.L131:
	movl	$.LC17, %edi	#,
	call	puts	#
	xorl	%esi, %esi	#
	movq	%rbx, %rdi	# k,
	call	io_set_pgm	#
.L127:
	cmpl	$0, io_stop(%rip)	#, io_stop
	jne	.L133	#,
	movl	$3, %edi	#,
	call	sleep	#
.L133:
	popq	%rbx	#
	.cfi_def_cfa_offset 24
	popq	%rbp	#
	.cfi_def_cfa_offset 16
	popq	%r12	#
	.cfi_def_cfa_offset 8
	movl	$.LC22, %edi	#,
	jmp	puts	#
	.cfi_endproc
.LFE64:
	.size	io_test0, .-io_test0
	.section	.rodata.str1.1
.LC23:
	.string	"\nTEST MODE 1 [D-SUB-9]\n"
.LC24:
	.string	"Tx  SET  (+VE) (D-SUB-9 3) [%d seconds] "
.LC25:
	.string	"CTS IN: %d\n"
.LC26:
	.string	"Tx  CLR  (-VE) (D-SUB-9 3) [%d seconds] "
.LC27:
	.string	"CTS IN: %d\n\n"
.LC28:
	.string	"DTR SET  (+VE) (D-SUB-9 4) [%d seconds] "
.LC29:
	.string	"DTR CLR  (-VE) (D-SUB-9 4) [%d seconds] "
.LC30:
	.string	"RTS SET  (+VE) (D-SUB-9 7) [%d seconds] "
.LC31:
	.string	"RTS CLR  (-VE) (D-SUB-9 7) [%d seconds] "
.LC32:
	.string	"TEST DONE\n"
	.text
	.globl	io_test1
	.type	io_test1, @function
io_test1:
.LFB65:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movl	%esi, %ebp	# t, t
	pushq	%rbx	#
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rdi, %rbx	# k, k
	movl	$.LC23, %edi	#,
	pushq	%rax	#
	.cfi_def_cfa_offset 32
	call	puts	#
	movl	%ebp, %edx	# t,
	movl	$.LC24, %esi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	movw	$0, 3072(%rbx)	#, k_1(D)->bitrules
	call	__printf_chk	#
	movq	stdout(%rip), %rdi	# stdout,
	call	fflush	#
	movl	$1, %esi	#,
	movq	%rbx, %rdi	# k,
	call	io_set_vpp	#
	cmpl	$0, io_stop(%rip)	#, io_stop
	jne	.L136	#,
	movl	%ebp, %edi	# t,
	call	sleep	#
.L136:
	movq	%rbx, %rdi	# k,
	call	io_get_pgd	#
	movl	$.LC25, %esi	#,
	movzbl	%al, %edx	# D.6275, D.6275
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	movl	%ebp, %edx	# t,
	movl	$.LC26, %esi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	movq	stdout(%rip), %rdi	# stdout,
	call	fflush	#
	xorl	%esi, %esi	#
	movq	%rbx, %rdi	# k,
	call	io_set_vpp	#
	cmpl	$0, io_stop(%rip)	#, io_stop
	jne	.L137	#,
	movl	%ebp, %edi	# t,
	call	sleep	#
.L137:
	movq	%rbx, %rdi	# k,
	call	io_get_pgd	#
	movl	$.LC27, %esi	#,
	movzbl	%al, %edx	# D.6279, D.6279
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	movl	%ebp, %edx	# t,
	movl	$.LC28, %esi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	movq	stdout(%rip), %rdi	# stdout,
	call	fflush	#
	movl	$1, %esi	#,
	movq	%rbx, %rdi	# k,
	call	io_set_pgd	#
	cmpl	$0, io_stop(%rip)	#, io_stop
	jne	.L138	#,
	movl	%ebp, %edi	# t,
	call	sleep	#
.L138:
	movq	%rbx, %rdi	# k,
	call	io_get_pgd	#
	movl	$.LC25, %esi	#,
	movzbl	%al, %edx	# D.6283, D.6283
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	movl	%ebp, %edx	# t,
	movl	$.LC29, %esi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	movq	stdout(%rip), %rdi	# stdout,
	call	fflush	#
	xorl	%esi, %esi	#
	movq	%rbx, %rdi	# k,
	call	io_set_pgd	#
	cmpl	$0, io_stop(%rip)	#, io_stop
	jne	.L139	#,
	movl	%ebp, %edi	# t,
	call	sleep	#
.L139:
	movq	%rbx, %rdi	# k,
	call	io_get_pgd	#
	movl	$.LC27, %esi	#,
	movzbl	%al, %edx	# D.6287, D.6287
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	movl	%ebp, %edx	# t,
	movl	$.LC30, %esi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	movq	stdout(%rip), %rdi	# stdout,
	call	fflush	#
	movl	$1, %esi	#,
	movq	%rbx, %rdi	# k,
	call	io_set_pgc	#
	cmpl	$0, io_stop(%rip)	#, io_stop
	jne	.L140	#,
	movl	%ebp, %edi	# t,
	call	sleep	#
.L140:
	movq	%rbx, %rdi	# k,
	call	io_get_pgd	#
	movl	$.LC25, %esi	#,
	movzbl	%al, %edx	# D.6291, D.6291
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	movl	%ebp, %edx	# t,
	movl	$.LC31, %esi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	movq	stdout(%rip), %rdi	# stdout,
	call	fflush	#
	xorl	%esi, %esi	#
	movq	%rbx, %rdi	# k,
	call	io_set_pgc	#
	cmpl	$0, io_stop(%rip)	#, io_stop
	jne	.L141	#,
	movl	%ebp, %edi	# t,
	call	sleep	#
.L141:
	movq	%rbx, %rdi	# k,
	call	io_get_pgd	#
	movl	$1, %edi	#,
	movzbl	%al, %edx	# D.6295, D.6295
	movl	$.LC27, %esi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	popq	%rbp	#
	.cfi_def_cfa_offset 24
	popq	%rbx	#
	.cfi_def_cfa_offset 16
	popq	%rbp	#
	.cfi_def_cfa_offset 8
	movl	$.LC32, %edi	#,
	jmp	puts	#
	.cfi_endproc
.LFE65:
	.size	io_test1, .-io_test1
	.section	.rodata.str1.1
.LC33:
	.string	"\nTEST MODE 2 [ICSP]\n"
.LC34:
	.string	"VPP LOW  (0V)  (ICSP 1) [%d seconds] "
.LC35:
	.string	"PGD IN: %d\n"
.LC36:
	.string	"VPP HIGH (12V) (ICSP 1) [%d seconds] "
.LC37:
	.string	"PGD IN: %d\n\n"
.LC38:
	.string	"PGD LOW  (0V)  (ICSP 4) [%d seconds] "
.LC39:
	.string	"PGD HIGH (5V)  (ICSP 4) [%d seconds] "
.LC40:
	.string	"PGC LOW  (0V)  (ICSP 5) [%d seconds] "
.LC41:
	.string	"PGC HIGH (5V)  (ICSP 5) [%d seconds] "
	.text
	.globl	io_test2
	.type	io_test2, @function
io_test2:
.LFB66:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movl	%esi, %ebp	# t, t
	pushq	%rbx	#
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rdi, %rbx	# k, k
	movl	$.LC33, %edi	#,
	pushq	%rax	#
	.cfi_def_cfa_offset 32
	call	puts	#
	movl	%ebp, %edx	# t,
	movl	$.LC34, %esi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	movq	stdout(%rip), %rdi	# stdout,
	call	fflush	#
	xorl	%esi, %esi	#
	movq	%rbx, %rdi	# k,
	call	io_set_vpp	#
	cmpl	$0, io_stop(%rip)	#, io_stop
	jne	.L144	#,
	movl	%ebp, %edi	# t,
	call	sleep	#
.L144:
	movq	%rbx, %rdi	# k,
	call	io_get_pgd	#
	movl	$.LC35, %esi	#,
	movzbl	%al, %edx	# D.6248, D.6248
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	movl	%ebp, %edx	# t,
	movl	$.LC36, %esi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	movq	stdout(%rip), %rdi	# stdout,
	call	fflush	#
	movl	$1, %esi	#,
	movq	%rbx, %rdi	# k,
	call	io_set_vpp	#
	cmpl	$0, io_stop(%rip)	#, io_stop
	jne	.L145	#,
	movl	%ebp, %edi	# t,
	call	sleep	#
.L145:
	movq	%rbx, %rdi	# k,
	call	io_get_pgd	#
	movl	$.LC37, %esi	#,
	movzbl	%al, %edx	# D.6252, D.6252
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	movl	%ebp, %edx	# t,
	movl	$.LC38, %esi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	movq	stdout(%rip), %rdi	# stdout,
	call	fflush	#
	xorl	%esi, %esi	#
	movq	%rbx, %rdi	# k,
	call	io_set_pgd	#
	cmpl	$0, io_stop(%rip)	#, io_stop
	jne	.L146	#,
	movl	%ebp, %edi	# t,
	call	sleep	#
.L146:
	movq	%rbx, %rdi	# k,
	call	io_get_pgd	#
	movl	$.LC35, %esi	#,
	movzbl	%al, %edx	# D.6256, D.6256
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	movl	%ebp, %edx	# t,
	movl	$.LC39, %esi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	movq	stdout(%rip), %rdi	# stdout,
	call	fflush	#
	movl	$1, %esi	#,
	movq	%rbx, %rdi	# k,
	call	io_set_pgd	#
	cmpl	$0, io_stop(%rip)	#, io_stop
	jne	.L147	#,
	movl	%ebp, %edi	# t,
	call	sleep	#
.L147:
	movq	%rbx, %rdi	# k,
	call	io_get_pgd	#
	movl	$.LC37, %esi	#,
	movzbl	%al, %edx	# D.6260, D.6260
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	movl	%ebp, %edx	# t,
	movl	$.LC40, %esi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	movq	stdout(%rip), %rdi	# stdout,
	call	fflush	#
	xorl	%esi, %esi	#
	movq	%rbx, %rdi	# k,
	call	io_set_pgc	#
	cmpl	$0, io_stop(%rip)	#, io_stop
	jne	.L148	#,
	movl	%ebp, %edi	# t,
	call	sleep	#
.L148:
	movq	%rbx, %rdi	# k,
	call	io_get_pgd	#
	movl	$.LC35, %esi	#,
	movzbl	%al, %edx	# D.6264, D.6264
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	movl	%ebp, %edx	# t,
	movl	$.LC41, %esi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	movq	stdout(%rip), %rdi	# stdout,
	call	fflush	#
	movl	$1, %esi	#,
	movq	%rbx, %rdi	# k,
	call	io_set_pgc	#
	cmpl	$0, io_stop(%rip)	#, io_stop
	jne	.L149	#,
	movl	%ebp, %edi	# t,
	call	sleep	#
.L149:
	movq	%rbx, %rdi	# k,
	call	io_get_pgd	#
	movl	$1, %edi	#,
	movzbl	%al, %edx	# D.6268, D.6268
	movl	$.LC37, %esi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	popq	%rax	#
	.cfi_def_cfa_offset 24
	popq	%rbx	#
	.cfi_def_cfa_offset 16
	popq	%rbp	#
	.cfi_def_cfa_offset 8
	movl	$.LC32, %edi	#,
	jmp	puts	#
	.cfi_endproc
.LFE66:
	.size	io_test2, .-io_test2
	.section	.rodata.str1.1
.LC42:
	.string	"\nTEST MODE 3 [D-SUB-9 RTS 7 (PGC) DTR 4 (PGD)] CTRL-C TO STOP\n"
	.text
	.globl	io_test3
	.type	io_test3, @function
io_test3:
.LFB67:
	.cfi_startproc
	pushq	%r13	#
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	movl	$1, %r13d	#, tmp69
	pushq	%r12	#
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	movl	%esi, %r12d	# t, t
	pushq	%rbp	#
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	movl	$1, %ebp	#, clk
	pushq	%rbx	#
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	movq	%rdi, %rbx	# k, k
	movl	$.LC42, %edi	#,
	pushq	%rax	#
	.cfi_def_cfa_offset 48
	call	puts	#
	xorl	%esi, %esi	# data
	jmp	.L152	#
.L156:
	movq	%rbx, %rdi	# k,
	call	io_set_pgd	#
	movl	%ebp, %esi	# clk,
	movq	%rbx, %rdi	# k,
	call	io_set_pgc	#
	testl	%r12d, %r12d	# t
	je	.L154	#,
	cmpl	$1, %r12d	#, t
	movl	%r12d, %esi	# t,
	jne	.L162	#,
	movl	3084(%rbx), %esi	# k_8(D)->sleep_low, k_8(D)->sleep_low
	jmp	.L162	#
.L162:
	movq	%rbx, %rdi	# k,
	call	io_usleep	#
.L154:
	movl	%r13d, %eax	# tmp69,
	movl	%ebp, %esi	# clk, data
	subl	%ebp, %eax	# clk,
	movl	%eax, %ebp	#, clk
.L152:
	cmpl	$0, io_stop(%rip)	#, io_stop
	je	.L156	#,
	popq	%rax	#
	.cfi_def_cfa_offset 40
	popq	%rbx	#
	.cfi_def_cfa_offset 32
	popq	%rbp	#
	.cfi_def_cfa_offset 24
	popq	%r12	#
	.cfi_def_cfa_offset 16
	popq	%r13	#
	.cfi_def_cfa_offset 8
	movl	$.LC22, %edi	#,
	jmp	puts	#
	.cfi_endproc
.LFE67:
	.size	io_test3, .-io_test3
	.section	.rodata.str1.1
.LC43:
	.string	"\nTEST MODE 4 [16F627 debug.asm] CTRL-C TO STOP\n"
.LC44:
	.string	"%s: read byte: %02X %c\n"
.LC45:
	.string	"%s: read line: %s"
	.text
	.globl	io_test4
	.type	io_test4, @function
io_test4:
.LFB68:
	.cfi_startproc
	pushq	%r14	#
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	movl	%esi, %r14d	# t, t
	pushq	%r13	#
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	pushq	%r12	#
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	pushq	%rbp	#
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	pushq	%rbx	#
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	movq	%rdi, %rbx	# k, k
	movl	$.LC43, %edi	#,
	subq	$1040, %rsp	#,
	.cfi_def_cfa_offset 1088
	movq	%fs:40, %rax	#,
	movq	%rax, 1032(%rsp)	#, D.7091
	xorl	%eax, %eax	#
	call	puts	#
	movq	%rbx, %rdi	# k,
	call	io_data_input	#
	jmp	.L180	#
.L175:
	xorl	%esi, %esi	#
	movq	%rbx, %rdi	# k,
	call	io_set_pgc	#
	jmp	.L165	#
.L167:
	call	io_usleep	#
.L165:
	movq	%rbx, %rdi	# k,
	call	io_get_pgd	#
	decb	%al	# D.6210
	movl	$1, %esi	#,
	movq	%rbx, %rdi	# k,
	je	.L166	#,
	cmpl	$0, io_stop(%rip)	#, io_stop
	je	.L167	#,
.L166:
	call	io_set_pgc	#
	jmp	.L168	#
.L170:
	movl	$1, %esi	#,
	movq	%rbx, %rdi	# k,
	call	io_usleep	#
.L168:
	movq	%rbx, %rdi	# k,
	call	io_get_pgd	#
	testb	%al, %al	# D.6213
	je	.L177	#,
	cmpl	$0, io_stop(%rip)	#, io_stop
	je	.L170	#,
.L177:
	movl	$8, %r13d	#, ivtmp.154
	xorl	%ebp, %ebp	# c
.L186:
	xorl	%esi, %esi	#
	movq	%rbx, %rdi	# k,
	shrb	%bpl	# c
	call	io_set_pgc	#
	movl	%r14d, %esi	# t,
	movq	%rbx, %rdi	# k,
	call	io_usleep	#
	movq	%rbx, %rdi	# k,
	call	io_get_pgd	#
	movb	%bpl, %dl	# c, tmp83
	movl	$1, %esi	#,
	movq	%rbx, %rdi	# k,
	orl	$-128, %edx	#, tmp83
	testb	%al, %al	# D.6216
	cmovne	%edx, %ebp	# tmp83,, c
	call	io_set_pgc	#
	movl	%r14d, %esi	# t,
	movq	%rbx, %rdi	# k,
	call	io_usleep	#
	decl	%r13d	# ivtmp.154
	jne	.L186	#,
	leal	-32(%rbp), %eax	#, tmp77
	movzbl	%bpl, %ecx	# c, c
	movl	$46, %r8d	#, iftmp.25
	movl	$__func__.5962, %edx	#,
	movl	$.LC44, %esi	#,
	movl	$1, %edi	#,
	cmpb	$94, %al	#, tmp77
	cmovbe	%ecx, %r8d	# c,,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	cmpb	$3, %bpl	#, c
	jne	.L173	#,
	cmpl	$1, %r12d	#, j
	jle	.L180	#,
	cmpb	$2, 8(%rsp)	#, line
	jne	.L180	#,
	leaq	9(%rsp), %rcx	#, tmp81
	movslq	%r12d, %r12	# j, j
	movl	$__func__.5962, %edx	#,
	movl	$.LC45, %esi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	movb	$0, 8(%rsp,%r12)	#, line
	call	__printf_chk	#
	jmp	.L180	#
.L173:
	cmpl	$1022, %r12d	#, j
	jg	.L190	#,
	movslq	%r12d, %rax	# j, j
	incl	%r12d	# j
	movb	%bpl, 8(%rsp,%rax)	# c, line
	jmp	.L190	#
.L180:
	xorl	%r12d, %r12d	# j
.L190:
	cmpl	$0, io_stop(%rip)	#, io_stop
	je	.L175	#,
	movl	$.LC22, %edi	#,
	call	puts	#
	movq	1032(%rsp), %rax	# D.7091,
	xorq	%fs:40, %rax	#,
	je	.L176	#,
	call	__stack_chk_fail	#
.L176:
	addq	$1040, %rsp	#,
	.cfi_def_cfa_offset 48
	popq	%rbx	#
	.cfi_def_cfa_offset 40
	popq	%rbp	#
	.cfi_def_cfa_offset 32
	popq	%r12	#
	.cfi_def_cfa_offset 24
	popq	%r13	#
	.cfi_def_cfa_offset 16
	popq	%r14	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE68:
	.size	io_test4, .-io_test4
	.section	.rodata.str1.1
.LC46:
	.string	"%s(k, t1=%d, t2=%d, byte=0x%02X)\n"
	.text
	.globl	io_test_out
	.type	io_test_out, @function
io_test_out:
.LFB69:
	.cfi_startproc
	pushq	%r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14	#
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movzbl	%cl, %r14d	# byte,
	pushq	%r13	#
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movl	%edx, %r13d	# t2, t2
	pushq	%r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movq	%rdi, %rbp	# k, k
	pushq	%rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movl	%esi, %ebx	# t1, t1
	subq	$24, %rsp	#,
	.cfi_def_cfa_offset 80
	cmpl	$9, 3096(%rdi)	#, k_4(D)->debug
	jbe	.L193	#,
	movq	stderr(%rip), %rdi	# stderr,
	movzbl	%cl, %ecx	# byte, byte
	movl	%edx, %r9d	# t2,
	movl	%ecx, (%rsp)	# byte,
	movl	%esi, %r8d	# t1,
	movl	$__func__.5975, %ecx	#,
	movl	$.LC46, %edx	#,
	movl	$1, %esi	#,
	xorl	%eax, %eax	#
	call	__fprintf_chk	#
.L193:
	movl	$1, %r8d	#,
	xorl	%ecx, %ecx	#
	movl	%ebx, %edx	# t1,
	movl	%ebx, %esi	# t1,
	movq	%rbp, %rdi	# k,
	xorl	%r15d, %r15d	# parity
	call	io_clock_out_bits	#
	xorl	%r12d, %r12d	# i
	jmp	.L194	#
.L196:
	movb	%r12b, %cl	#,
	movl	%r14d, %eax	# byte, bit
	movl	$1, %r8d	#,
	sarl	%cl, %eax	#, bit
	movl	%ebx, %edx	# t1,
	movl	%ebx, %esi	# t1,
	andl	$1, %eax	#, bit
	movq	%rbp, %rdi	# k,
	incl	%r12d	# i
	movl	%eax, %ecx	# bit,
	xorl	%eax, %r15d	# bit, parity
	call	io_clock_out_bits	#
.L194:
	cmpl	$0, io_stop(%rip)	#, io_stop
	jne	.L197	#,
	cmpl	$8, %r12d	#, i
	jne	.L196	#,
.L197:
	movl	%r15d, %ecx	# parity,
	movl	%ebx, %edx	# t1,
	movl	%ebx, %esi	# t1,
	movq	%rbp, %rdi	# k,
	movl	$1, %r8d	#,
	call	io_clock_out_bits	#
	movl	%ebx, %edx	# t1,
	movl	%ebx, %esi	# t1,
	movq	%rbp, %rdi	# k,
	movl	$1, %r8d	#,
	movl	$1, %ecx	#,
	call	io_clock_out_bits	#
	movl	%r13d, %esi	# t2,
	movq	%rbp, %rdi	# k,
	call	io_usleep	#
	addq	$24, %rsp	#,
	.cfi_def_cfa_offset 56
	xorl	%eax, %eax	#
	popq	%rbx	#
	.cfi_def_cfa_offset 48
	popq	%rbp	#
	.cfi_def_cfa_offset 40
	popq	%r12	#
	.cfi_def_cfa_offset 32
	popq	%r13	#
	.cfi_def_cfa_offset 24
	popq	%r14	#
	.cfi_def_cfa_offset 16
	popq	%r15	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE69:
	.size	io_test_out, .-io_test_out
	.section	.rodata.str1.1
.LC47:
	.string	"%s(k, t1=%d, t2=%d, %p)\n"
.LC48:
	.string	"%s: INVALID START BIT (NOT LOW)\n"
.LC49:
	.string	"%s: INVALID PARITY BIT\n"
.LC50:
	.string	"%s: INVALID STOP BIT (NOT HIGH)\n"
.LC51:
	.string	"%s: OKAY [0x%02X]\n"
	.text
	.globl	io_test_in
	.type	io_test_in, @function
io_test_in:
.LFB70:
	.cfi_startproc
	pushq	%r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movl	%edx, %r15d	# t2, t2
	pushq	%r14	#
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13	#
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movq	%rcx, %r12	# byte, byte
	pushq	%rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movl	%esi, %ebp	# t1, t1
	pushq	%rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rdi, %rbx	# k, k
	subq	$24, %rsp	#,
	.cfi_def_cfa_offset 80
	movb	$0, (%rcx)	#, *byte_5(D)
	cmpl	$9, 3096(%rdi)	#, k_6(D)->debug
	jbe	.L201	#,
	movq	stderr(%rip), %rdi	# stderr,
	movq	%rcx, (%rsp)	# byte,
	movl	%edx, %r9d	# t2,
	movl	%esi, %r8d	# t1,
	movl	$__func__.5988, %ecx	#,
	movl	$.LC47, %edx	#,
	movl	$1, %esi	#,
	xorl	%eax, %eax	#
	call	__fprintf_chk	#
.L201:
	movl	$1, %ecx	#,
	movl	%ebp, %edx	# t1,
	movl	%ebp, %esi	# t1,
	movq	%rbx, %rdi	# k,
	call	io_clock_in_bits	#
	testl	%eax, %eax	# D.6166
	je	.L212	#,
	cmpl	$9, 3096(%rbx)	#, k_6(D)->debug
	ja	.L203	#,
	jmp	.L217	#
.L203:
	movl	$__func__.5988, %ecx	#,
	movl	$.LC48, %edx	#,
.L218:
	movq	stderr(%rip), %rdi	# stderr,
	movl	$1, %esi	#,
	xorl	%eax, %eax	#
	call	__fprintf_chk	#
.L217:
	movl	$2, %ebp	#, D.6171
	jmp	.L204	#
.L208:
	movl	$1, %ecx	#,
	movl	%ebp, %edx	# t1,
	movl	%ebp, %esi	# t1,
	movq	%rbx, %rdi	# k,
	call	io_clock_in_bits	#
	movb	%r13b, %cl	#,
	xorl	%eax, %r14d	# D.6172, parity
	incl	%r13d	# i
	sall	%cl, %eax	#, tmp98
	orb	%al, (%r12)	# tmp98, *byte_5(D)
	jmp	.L202	#
.L212:
	xorl	%r14d, %r14d	# parity
	xorl	%r13d, %r13d	# i
.L202:
	cmpl	$0, io_stop(%rip)	#, io_stop
	je	.L205	#,
.L209:
	movl	$1, %ecx	#,
	movl	%ebp, %edx	# t1,
	movl	%ebp, %esi	# t1,
	movq	%rbx, %rdi	# k,
	call	io_clock_in_bits	#
	cmpl	%r14d, %eax	# parity, D.6181
	jne	.L206	#,
	jmp	.L215	#
.L205:
	cmpl	$8, %r13d	#, i
	jne	.L208	#,
	jmp	.L209	#
.L206:
	cmpl	$9, 3096(%rbx)	#, k_6(D)->debug
	movl	$3, %ebp	#, D.6171
	jbe	.L204	#,
	movq	stderr(%rip), %rdi	# stderr,
	movl	$__func__.5988, %ecx	#,
	movl	$.LC49, %edx	#,
	movl	$1, %esi	#,
	xorl	%eax, %eax	#
	call	__fprintf_chk	#
	jmp	.L204	#
.L215:
	movl	$1, %ecx	#,
	movl	%ebp, %edx	# t1,
	movl	%ebp, %esi	# t1,
	movq	%rbx, %rdi	# k,
	call	io_clock_in_bits	#
	decl	%eax	# D.6186
	je	.L210	#,
	cmpl	$9, 3096(%rbx)	#, k_6(D)->debug
	jbe	.L217	#,
	movl	$__func__.5988, %ecx	#,
	movl	$.LC50, %edx	#,
	jmp	.L218	#
.L210:
	movl	%r15d, %esi	# t2,
	movq	%rbx, %rdi	# k,
	xorl	%ebp, %ebp	# D.6171
	call	io_usleep	#
	cmpl	$9, 3096(%rbx)	#, k_6(D)->debug
	jbe	.L204	#,
	movzbl	(%r12), %r8d	# *byte_5(D),
	movq	stderr(%rip), %rdi	# stderr,
	movl	$__func__.5988, %ecx	#,
	movl	$.LC51, %edx	#,
	movl	$1, %esi	#,
	xorl	%eax, %eax	#
	call	__fprintf_chk	#
.L204:
	addq	$24, %rsp	#,
	.cfi_def_cfa_offset 56
	movl	%ebp, %eax	# D.6171,
	popq	%rbx	#
	.cfi_def_cfa_offset 48
	popq	%rbp	#
	.cfi_def_cfa_offset 40
	popq	%r12	#
	.cfi_def_cfa_offset 32
	popq	%r13	#
	.cfi_def_cfa_offset 24
	popq	%r14	#
	.cfi_def_cfa_offset 16
	popq	%r15	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE70:
	.size	io_test_in, .-io_test_in
	.section	.rodata.str1.1
.LC52:
	.string	"%s(k, t1=%d, t2=%d, cmdarg[0]=%02X, cmdargc=%d, %p, %d)\n"
.LC53:
	.string	"%s: fatal error: invalid length: %d\n"
.LC54:
	.string	"%s: fatal error: invalid width: %d\n"
.LC55:
	.string	"%s: fatal error: invalid result pointer: (NULL)\n"
.LC56:
	.string	"%s: INVALID CHECKSUM 0x%02X != 0x%02X\n"
	.text
	.globl	io_test_command
	.type	io_test_command, @function
io_test_command:
.LFB71:
	.cfi_startproc
	pushq	%r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movq	%r9, %r15	# res, res
	pushq	%r14	#
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movq	%rcx, %r14	# cmdarg, cmdarg
	pushq	%r13	#
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movl	%r8d, %r13d	# cmdargc, cmdargc
	pushq	%r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rdi, %rbx	# k, k
	subq	$72, %rsp	#,
	.cfi_def_cfa_offset 128
	cmpl	$9, 3096(%rdi)	#, k_8(D)->debug
	movl	%esi, 40(%rsp)	# t1, %sfp
	movl	%edx, 44(%rsp)	# t2, %sfp
	jbe	.L220	#,
	movl	128(%rsp), %eax	# resw,
	movq	%r9, 16(%rsp)	# res,
	movl	%edx, %r9d	# t2,
	movl	%r8d, 8(%rsp)	# cmdargc,
	movq	stderr(%rip), %rdi	# stderr,
	movl	%esi, %r8d	# t1,
	movl	$.LC52, %edx	#,
	movl	$1, %esi	#,
	movl	%eax, 24(%rsp)	#,
	movzbl	(%rcx), %eax	# *cmdarg_10(D), *cmdarg_10(D)
	movl	$__func__.6004, %ecx	#,
	movl	%eax, (%rsp)	# *cmdarg_10(D),
	xorl	%eax, %eax	#
	call	__fprintf_chk	#
.L220:
	testl	%r13d, %r13d	# cmdargc
	jns	.L221	#,
	movl	%r13d, %ecx	# cmdargc,
	movl	$__func__.6004, %edx	#,
	movl	$.LC53, %esi	#,
	jmp	.L250	#
.L221:
	cmpl	$4, 128(%rsp)	#, resw
	jbe	.L222	#,
	movl	128(%rsp), %ecx	# resw,
	movl	$__func__.6004, %edx	#,
	movl	$.LC54, %esi	#,
.L250:
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
.L251:
	movl	$70, %esi	#,
	movq	%rbx, %rdi	# k,
	call	io_exit	#
.L222:
	cmpl	$0, 128(%rsp)	#, resw
	setg	%r12b	#, tmp130
	jle	.L223	#,
	testq	%r15, %r15	# res
	jne	.L223	#,
	movl	$__func__.6004, %edx	#,
	movl	$.LC55, %esi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	jmp	.L251	#
.L223:
	movzbl	(%r14), %ecx	# *cmdarg_10(D), *cmdarg_10(D)
	movl	44(%rsp), %edx	# %sfp,
	movq	%rbx, %rdi	# k,
	movl	40(%rsp), %esi	# %sfp,
	call	io_test_out	#
	movl	44(%rsp), %edx	# %sfp,
	movl	40(%rsp), %esi	# %sfp,
	leaq	63(%rsp), %rcx	#,
	movq	%rbx, %rdi	# k,
	call	io_test_in	#
	testl	%eax, %eax	# err
	movl	%eax, %ebp	#, err
	jne	.L224	#,
	cmpb	$6, 63(%rsp)	#, byte
	jne	.L233	#,
	testb	%r12b, %r12b	# tmp130
	jne	.L225	#,
	testl	%r13d, %r13d	# cmdargc
	jle	.L224	#,
.L225:
	movb	(%r14), %al	# *cmdarg_10(D),
	testl	%r13d, %r13d	# cmdargc
	leal	6(%rax), %r12d	#, checksum
	je	.L226	#,
	movq	%r14, %r8	# cmdarg, ivtmp.209
	jmp	.L227	#
.L228:
	movzbl	(%r8), %ecx	# MEM[base: D.7154_122, offset: 0B], MEM[base: D.7154_122, offset: 0B]
	movl	44(%rsp), %edx	# %sfp,
	movq	%rbx, %rdi	# k,
	movl	40(%rsp), %esi	# %sfp,
	movq	%r8, 32(%rsp)	#,
	call	io_test_out	#
	movq	32(%rsp), %r8	#,
	addb	(%r8), %r12b	# MEM[base: D.7154_122, offset: 0B], checksum
.L227:
	cmpl	$0, io_stop(%rip)	#, io_stop
	jne	.L226	#,
	incq	%r8	# ivtmp.209
	movl	%r8d, %eax	#, tmp140
	subl	%r14d, %eax	# cmdarg, tmp140
	cmpl	%r13d, %eax	# cmdargc, tmp140
	jle	.L228	#,
.L226:
	cmpl	$0, 128(%rsp)	#, resw
	je	.L229	#,
	movl	$0, (%r15)	#, *res_17(D)
	xorl	%r8d, %r8d	# i
	jmp	.L230	#
.L231:
	movl	44(%rsp), %edx	# %sfp,
	movl	40(%rsp), %esi	# %sfp,
	leaq	63(%rsp), %rcx	#,
	movq	%rbx, %rdi	# k,
	movl	%r8d, 32(%rsp)	#,
	call	io_test_in	#
	testl	%eax, %eax	# err
	movl	32(%rsp), %r8d	#,
	jne	.L235	#,
	movb	63(%rsp), %dl	# byte, byte.11
	movl	(%r15), %eax	# *res_17(D), tmp145
	incl	%r8d	# i
	sall	$8, %eax	#, tmp145
	movzbl	%dl, %ecx	# byte.11, byte.11
	addl	%edx, %r12d	# byte.11, checksum
	orl	%ecx, %eax	# byte.11, tmp145
	movl	%eax, (%r15)	# tmp145, *res_17(D)
.L230:
	cmpl	$0, io_stop(%rip)	#, io_stop
	jne	.L229	#,
	cmpl	128(%rsp), %r8d	# resw, i
	jne	.L231	#,
.L229:
	movl	44(%rsp), %edx	# %sfp,
	movl	40(%rsp), %esi	# %sfp,
	leaq	63(%rsp), %rcx	#,
	movq	%rbx, %rdi	# k,
	call	io_test_in	#
	testl	%eax, %eax	# err
	jne	.L235	#,
	movzbl	63(%rsp), %r8d	# byte,
	cmpb	%r12b, %r8b	# checksum, byte.11
	je	.L224	#,
	cmpl	$9, 3096(%rbx)	#, k_8(D)->debug
	movl	$5, %ebp	#, err
	jbe	.L224	#,
	movq	stderr(%rip), %rdi	# stderr,
	movzbl	%r12b, %r9d	# checksum,
	movl	$__func__.6004, %ecx	#,
	movl	$.LC56, %edx	#,
	movl	$1, %esi	#,
	call	__fprintf_chk	#
	jmp	.L224	#
.L233:
	movl	$4, %ebp	#, err
	jmp	.L224	#
.L235:
	movl	%eax, %ebp	# err, err
.L224:
	addq	$72, %rsp	#,
	.cfi_def_cfa_offset 56
	movl	%ebp, %eax	# err,
	popq	%rbx	#
	.cfi_def_cfa_offset 48
	popq	%rbp	#
	.cfi_def_cfa_offset 40
	popq	%r12	#
	.cfi_def_cfa_offset 32
	popq	%r13	#
	.cfi_def_cfa_offset 24
	popq	%r14	#
	.cfi_def_cfa_offset 16
	popq	%r15	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE71:
	.size	io_test_command, .-io_test_command
	.section	.rodata.str1.1
.LC57:
	.string	"ERRNONE"
.LC58:
	.string	"ERRTIMEOUT"
.LC59:
	.string	"ERRPROTOCOL"
.LC60:
	.string	"ERRPARITY"
.LC61:
	.string	"ERRNOTSUP"
.LC62:
	.string	"ERRINVALID"
.LC63:
	.string	"ERRUNKNOWN"
	.text
	.globl	io_test_err
	.type	io_test_err, @function
io_test_err:
.LFB72:
	.cfi_startproc
	cmpl	$5, %edi	#, err
	ja	.L253	#,
	movl	%edi, %edi	# err, err
	jmp	*.L260(,%rdi,8)	#
	.section	.rodata
	.align 8
	.align 4
.L260:
	.quad	.L254
	.quad	.L255
	.quad	.L256
	.quad	.L257
	.quad	.L258
	.quad	.L259
	.text
.L254:
	movq	$.LC57, errmsg.6015(%rip)	#, errmsg
	jmp	.L261	#
.L255:
	movq	$.LC58, errmsg.6015(%rip)	#, errmsg
	jmp	.L261	#
.L256:
	movq	$.LC59, errmsg.6015(%rip)	#, errmsg
	jmp	.L261	#
.L257:
	movq	$.LC60, errmsg.6015(%rip)	#, errmsg
	jmp	.L261	#
.L258:
	movq	$.LC61, errmsg.6015(%rip)	#, errmsg
	jmp	.L261	#
.L259:
	movq	$.LC62, errmsg.6015(%rip)	#, errmsg
	jmp	.L261	#
.L253:
	movq	$.LC63, errmsg.6015(%rip)	#, errmsg
.L261:
	movq	errmsg.6015(%rip), %rax	# errmsg,
	ret
	.cfi_endproc
.LFE72:
	.size	io_test_err, .-io_test_err
	.section	.rodata.str1.1
.LC64:
	.string	"%s: SW=0x%02X SW1=%d SW2=%d SW3=%d SW4=%d\n"
	.text
	.globl	io_test_switch
	.type	io_test_switch, @function
io_test_switch:
.LFB73:
	.cfi_startproc
	pushq	%rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	leal	(%rsi,%rsi), %edx	#, tmp77
	xorl	%r8d, %r8d	#
	subq	$32, %rsp	#,
	.cfi_def_cfa_offset 48
	leaq	28(%rsp), %r9	#,
	leaq	27(%rsp), %rcx	#,
	movl	$1, (%rsp)	#,
	movb	$2, 27(%rsp)	#, cmd
	call	io_test_command	#
	testl	%eax, %eax	# err
	movl	%eax, %ebx	#, err
	jne	.L263	#,
	cmpl	$0, io_stop(%rip)	#, io_stop
	jne	.L263	#,
	movl	28(%rsp), %ecx	# sw, sw.7
	cmpl	lastsw.6031(%rip), %ecx	# lastsw, sw.7
	je	.L263	#,
	movl	%ecx, %edx	# sw.7, tmp82
	movl	%ecx, %r9d	# sw.7, tmp78
	movl	%ecx, %r8d	# sw.7,
	andl	$8, %edx	#, tmp82
	andl	$2, %r9d	#, tmp78
	andl	$1, %r8d	#,
	shrl	$3, %edx	#, tmp82
	shrl	%r9d	#
	movl	$.LC64, %esi	#,
	movl	%edx, 8(%rsp)	# tmp82,
	movl	%ecx, %edx	# sw.7, tmp84
	movl	$1, %edi	#,
	andl	$4, %edx	#, tmp84
	xorl	%eax, %eax	#
	shrl	$2, %edx	#, tmp84
	movl	%edx, (%rsp)	# tmp84,
	movl	$__func__.6032, %edx	#,
	call	__printf_chk	#
	movl	28(%rsp), %eax	# sw, sw
	movl	%eax, lastsw.6031(%rip)	# sw, lastsw
.L263:
	addq	$32, %rsp	#,
	.cfi_def_cfa_offset 16
	movl	%ebx, %eax	# err,
	popq	%rbx	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE73:
	.size	io_test_switch, .-io_test_switch
	.section	.rodata.str1.1
.LC65:
	.string	"%s: last error: %s [0x%02X]\n"
	.text
	.globl	io_test_lasterror
	.type	io_test_lasterror, @function
io_test_lasterror:
.LFB74:
	.cfi_startproc
	pushq	%rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	leal	(%rsi,%rsi), %edx	#, tmp72
	xorl	%r8d, %r8d	#
	subq	$48, %rsp	#,
	.cfi_def_cfa_offset 64
	leaq	44(%rsp), %r9	#,
	leaq	43(%rsp), %rcx	#,
	movl	$1, (%rsp)	#,
	movb	$-1, 43(%rsp)	#, cmd
	call	io_test_command	#
	testl	%eax, %eax	# err
	movl	%eax, %ebx	#, err
	jne	.L266	#,
	cmpl	$0, io_stop(%rip)	#, io_stop
	jne	.L266	#,
	movl	44(%rsp), %r8d	# le, le.3
	cmpl	lastle.6040(%rip), %r8d	# lastle, le.3
	je	.L266	#,
	movl	%r8d, %edi	# le.3,
	movl	%r8d, 24(%rsp)	#,
	call	io_test_err	#
	movl	24(%rsp), %r8d	#,
	movq	%rax, %rcx	# D.6083,
	movl	$__func__.6041, %edx	#,
	movl	$.LC65, %esi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	movl	44(%rsp), %eax	# le, le
	movl	%eax, lastle.6040(%rip)	# le, lastle
.L266:
	addq	$48, %rsp	#,
	.cfi_def_cfa_offset 16
	movl	%ebx, %eax	# err,
	popq	%rbx	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE74:
	.size	io_test_lasterror, .-io_test_lasterror
	.section	.rodata.str1.1
.LC66:
	.string	"\nTEST MODE 5 [ICSPIO] CTRL-C TO STOP\n"
.LC67:
	.string	"%s: error: %s [0x%02X]\n"
	.text
	.globl	io_test5
	.type	io_test5, @function
io_test5:
.LFB75:
	.cfi_startproc
	pushq	%r13	#
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12	#
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	xorl	%r12d, %r12d	# ld
	pushq	%rbp	#
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	movl	%esi, %ebp	# t, t
	leal	(%rbp,%rbp), %r13d	#, D.6055
	pushq	%rbx	#
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	movq	%rdi, %rbx	# k, k
	movl	$.LC66, %edi	#,
	subq	$56, %rsp	#,
	.cfi_def_cfa_offset 96
	call	puts	#
	xorl	%esi, %esi	#
	movq	%rbx, %rdi	# k,
	call	io_set_vpp	#
	movl	$10000, %esi	#,
	movq	%rbx, %rdi	# k,
	call	io_usleep	#
	movl	$1, %esi	#,
	movq	%rbx, %rdi	# k,
	call	io_set_vpp	#
	movl	$10000, %esi	#,
	movq	%rbx, %rdi	# k,
	call	io_usleep	#
	jmp	.L269	#
.L273:
	leaq	46(%rsp), %rcx	#,
	xorl	%r9d, %r9d	#
	movl	$0, (%rsp)	#,
	movl	$1, %r8d	#,
	movl	%r13d, %edx	# D.6055,
	movl	%ebp, %esi	# t,
	movq	%rbx, %rdi	# k,
	movb	%r12b, 47(%rsp)	# ld, cmd
	movb	$1, 46(%rsp)	#, cmd
	incl	%r12d	# ld
	call	io_test_command	#
	testl	%eax, %eax	# err
	movl	%eax, %r9d	#, err
	je	.L270	#,
	jmp	.L280	#
.L270:
	movl	%ebp, %esi	# t,
	movq	%rbx, %rdi	# k,
	call	io_test_switch	#
	testl	%eax, %eax	# err
	movl	%eax, %r9d	#, err
	je	.L272	#,
	jmp	.L280	#
.L272:
	movl	%ebp, %esi	# t,
	movq	%rbx, %rdi	# k,
	call	io_test_lasterror	#
	testl	%eax, %eax	# err
	movl	%eax, %r9d	#, err
	je	.L269	#,
.L280:
	movl	%r9d, %edi	# err,
	movl	%r9d, 24(%rsp)	#,
	call	io_test_err	#
	movl	24(%rsp), %r9d	#,
	movq	stderr(%rip), %rdi	# stderr,
	movq	%rax, %r8	#, D.6065
	movl	$__func__.6049, %ecx	#,
	movl	$.LC67, %edx	#,
	movl	$1, %esi	#,
	xorl	%eax, %eax	#
	call	__fprintf_chk	#
	jmp	.L271	#
.L269:
	cmpl	$0, io_stop(%rip)	#, io_stop
	je	.L273	#,
.L271:
	movl	$.LC22, %edi	#,
	call	puts	#
	addq	$56, %rsp	#,
	.cfi_def_cfa_offset 40
	popq	%rbx	#
	.cfi_def_cfa_offset 32
	popq	%rbp	#
	.cfi_def_cfa_offset 24
	popq	%r12	#
	.cfi_def_cfa_offset 16
	popq	%r13	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE75:
	.size	io_test5, .-io_test5
	.globl	io_stop
	.bss
	.align 4
	.type	io_stop, @object
	.size	io_stop, 4
io_stop:
	.zero	4
	.section	.rodata
	.align 8
	.type	__func__.5763, @object
	.size	__func__.5763, 8
__func__.5763:
	.string	"io_open"
	.align 8
	.type	__func__.5773, @object
	.size	__func__.5773, 9
__func__.5773:
	.string	"io_close"
	.local	msg.5784
	.comm	msg.5784,8,8
	.local	msg.5792
	.comm	msg.5792,8,8
	.align 8
	.type	__func__.5813, @object
	.size	__func__.5813, 11
__func__.5813:
	.string	"io_set_pgm"
	.align 8
	.type	__func__.5821, @object
	.size	__func__.5821, 11
__func__.5821:
	.string	"io_set_vpp"
	.align 8
	.type	__func__.5829, @object
	.size	__func__.5829, 11
__func__.5829:
	.string	"io_set_pgd"
	.align 8
	.type	__func__.5837, @object
	.size	__func__.5837, 11
__func__.5837:
	.string	"io_set_pgc"
	.align 8
	.type	__func__.5845, @object
	.size	__func__.5845, 11
__func__.5845:
	.string	"io_get_pgd"
	.align 8
	.type	__func__.5887, @object
	.size	__func__.5887, 14
__func__.5887:
	.string	"io_program_in"
	.align 8
	.type	__func__.5893, @object
	.size	__func__.5893, 15
__func__.5893:
	.string	"io_program_out"
	.local	c_last.5903
	.comm	c_last.5903,1,1
	.local	c_count.5900
	.comm	c_count.5900,4,4
	.local	a_count.5901
	.comm	a_count.5901,4,4
	.type	arrow.5902, @object
	.size	arrow.5902, 5
arrow.5902:
	.string	"|/-\\"
	.align 8
	.type	__func__.5962, @object
	.size	__func__.5962, 9
__func__.5962:
	.string	"io_test4"
	.align 8
	.type	__func__.5975, @object
	.size	__func__.5975, 12
__func__.5975:
	.string	"io_test_out"
	.align 8
	.type	__func__.5988, @object
	.size	__func__.5988, 11
__func__.5988:
	.string	"io_test_in"
	.align 16
	.type	__func__.6004, @object
	.size	__func__.6004, 16
__func__.6004:
	.string	"io_test_command"
	.local	errmsg.6015
	.comm	errmsg.6015,8,8
	.data
	.align 4
	.type	lastsw.6031, @object
	.size	lastsw.6031, 4
lastsw.6031:
	.long	255
	.section	.rodata
	.align 8
	.type	__func__.6032, @object
	.size	__func__.6032, 15
__func__.6032:
	.string	"io_test_switch"
	.local	lastle.6040
	.comm	lastle.6040,4,4
	.align 16
	.type	__func__.6041, @object
	.size	__func__.6041, 18
__func__.6041:
	.string	"io_test_lasterror"
	.align 8
	.type	__func__.6049, @object
	.size	__func__.6049, 9
__func__.6049:
	.string	"io_test5"
	.ident	"GCC: (Ubuntu/Linaro 4.7.2-2ubuntu1) 4.7.2"
	.section	.note.GNU-stack,"",@progbits
