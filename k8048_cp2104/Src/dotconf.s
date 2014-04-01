	.file	"dotconf.c"
# GNU C (Ubuntu/Linaro 4.7.2-2ubuntu1) version 4.7.2 (x86_64-linux-gnu)
#	compiled by GNU C version 4.7.2, GMP version 5.0.2, MPFR version 3.1.0-p3, MPC version 0.9
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# angegebene Optionen:  -fpreprocessed dotconf.i -mtune=generic
# -march=x86-64 -auxbase-strip dotconf.o -Os -pedantic-errors -Wall
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

	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"K8048"
.LC1:
	.string	"%s"
.LC2:
	.string	"%s: fatal error: getcwd failed\n"
.LC3:
	.string	"%s/%s"
.LC4:
	.string	".k8048"
.LC5:
	.string	"HOME"
.LC6:
	.string	"USER"
.LC7:
	.string	"/home/%s/%s"
	.text
	.globl	getdotfile
	.type	getdotfile, @function
getdotfile:
.LFB40:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx	#
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rdi, %rbx	# k, k
	movl	$.LC0, %edi	#,
	subq	$1064, %rsp	#,
	.cfi_def_cfa_offset 1088
	movq	%fs:40, %rax	#,
	movq	%rax, 1048(%rsp)	#, D.5973
	xorl	%eax, %eax	#
	call	getenv	#
	testq	%rax, %rax	# filename
	movq	%rax, %rbp	#, filename
	je	.L2	#,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# filename,
	call	access	#
	testl	%eax, %eax	# D.5848
	jne	.L2	#,
	movq	%rbp, %rcx	# filename,
	movl	$.LC1, %edx	#,
	movl	$1024, %esi	#,
	movq	%rbx, %rdi	# k,
	call	snprintf	#
	jmp	.L1	#
.L2:
	leaq	24(%rsp), %rdi	#,
	movl	$1024, %esi	#,
	call	getcwd	#
	testq	%rax, %rax	# D.5914
	jne	.L4	#,
	movl	$.LC2, %esi	#,
	movl	$1, %edi	#,
	movl	$__func__.5757, %edx	#,
	call	__printf_chk	#
	movl	$71, %esi	#,
	movq	%rbx, %rdi	# k,
	call	io_exit	#
.L4:
	leaq	24(%rsp), %r9	#,
	movl	$.LC3, %r8d	#,
	movl	$1024, %ecx	#,
	movl	$1, %edx	#,
	movl	$1024, %esi	#,
	movq	%rbx, %rdi	# k,
	xorl	%eax, %eax	#
	movq	$.LC4, (%rsp)	#,
	call	__snprintf_chk	#
	movl	$4, %esi	#,
	movq	%rbx, %rdi	# k,
	call	access	#
	testl	%eax, %eax	# D.5855
	je	.L1	#,
	movl	$.LC5, %edi	#,
	call	getenv	#
	testq	%rax, %rax	# homedir
	movq	%rax, %r9	#, homedir
	jne	.L6	#,
.L9:
	movl	$.LC6, %edi	#,
	call	getenv	#
	testq	%rax, %rax	# username
	movq	%rax, %r9	#, username
	jne	.L7	#,
	jmp	.L8	#
.L6:
	movl	$.LC3, %r8d	#,
	movl	$1024, %ecx	#,
	movl	$1, %edx	#,
	movl	$1024, %esi	#,
	movq	%rbx, %rdi	# k,
	xorl	%eax, %eax	#
	movq	$.LC4, (%rsp)	#,
	call	__snprintf_chk	#
	movl	$4, %esi	#,
	movq	%rbx, %rdi	# k,
	call	access	#
	testl	%eax, %eax	# D.5860
	je	.L1	#,
	jmp	.L9	#
.L8:
	movb	$0, (%rbx)	#, k_3(D)->dotfile
	jmp	.L1	#
.L7:
	movl	$.LC7, %r8d	#,
	movl	$1024, %ecx	#,
	movl	$1, %edx	#,
	movl	$1024, %esi	#,
	movq	%rbx, %rdi	# k,
	xorl	%eax, %eax	#
	movq	$.LC4, (%rsp)	#,
	call	__snprintf_chk	#
	movl	$4, %esi	#,
	movq	%rbx, %rdi	# k,
	call	access	#
	testl	%eax, %eax	# D.5865
	jne	.L8	#,
.L1:
	movq	1048(%rsp), %rax	# D.5973,
	xorq	%fs:40, %rax	#,
	je	.L11	#,
	call	__stack_chk_fail	#
.L11:
	addq	$1064, %rsp	#,
	.cfi_def_cfa_offset 24
	popq	%rbx	#
	.cfi_def_cfa_offset 16
	popq	%rbp	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE40:
	.size	getdotfile, .-getdotfile
	.section	.rodata.str1.1
.LC8:
	.string	"rb"
.LC9:
	.string	"DEVICE="
.LC10:
	.string	"SLEEP="
.LC11:
	.string	"SLEEP_LOW="
.LC12:
	.string	"SLEEP_HIGH="
.LC13:
	.string	"BITRULES="
.LC14:
	.string	"BUSY="
.LC15:
	.string	"FWSLEEP="
.LC16:
	.string	"DEBUG="
.LC17:
	.string	"Using defaults (override in %s)"
	.text
	.globl	getconf
	.type	getconf, @function
getconf:
.LFB41:
	.cfi_startproc
	pushq	%r12	#
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	movl	$784, %ecx	#, tmp93
	pushq	%rbp	#
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movq	%rdi, %rbp	# k, k
	pushq	%rbx	#
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	subq	$1040, %rsp	#,
	.cfi_def_cfa_offset 1072
	movq	%fs:40, %rax	#,
	movq	%rax, 1032(%rsp)	#, D.5986
	xorl	%eax, %eax	#
	rep stosl
	movq	%rbp, %rdi	# k,
	movw	$31, 3072(%rbp)	#, k_1(D)->bitrules
	movl	$1, 3084(%rbp)	#, k_1(D)->sleep_low
	movl	$1, 3088(%rbp)	#, k_1(D)->sleep_high
	movl	$30, 3092(%rbp)	#, k_1(D)->fwsleep
	call	io_config	#
	movq	%rbp, %rdi	# k,
	call	getdotfile	#
	cmpb	$0, 0(%rbp)	#, k_1(D)->dotfile
	je	.L23	#,
	movl	$.LC8, %esi	#,
	movq	%rbp, %rdi	# k,
	leaq	8(%rsp), %rbx	#, tmp134
	call	fopen	#
	testq	%rax, %rax	# f1
	movq	%rax, %r12	#, f1
	jne	.L39	#,
	jmp	.L23	#
.L33:
	xorl	%eax, %eax	# tmp99
	orq	$-1, %rcx	#, tmp98
	movq	%rbx, %rdi	# tmp134, tmp97
	repnz scasb
	movl	$.LC9, %esi	#,
	movq	%rbx, %rdi	# tmp134,
	notq	%rcx	# tmp96
	movb	$0, 6(%rsp,%rcx)	#, line
	call	mystrcasestr	#
	cmpq	%rbx, %rax	# tmp134, D.5776
	jne	.L25	#,
	leaq	7(%rbx), %rsi	#, tmp103
	leaq	1024(%rbp), %rdi	#, tmp104
	movl	$1024, %edx	#,
	call	strncpy	#
	jmp	.L39	#
.L25:
	movl	$.LC10, %esi	#,
	movq	%rbx, %rdi	# tmp134,
	call	mystrcasestr	#
	cmpq	%rbx, %rax	# tmp134, D.5781
	jne	.L27	#,
	leaq	6(%rbx), %rdi	#, tmp108
	xorl	%edx, %edx	#
	xorl	%esi, %esi	#
	call	strtoul	#
	movl	%eax, 3084(%rbp)	# D.5784, k_1(D)->sleep_low
	jmp	.L41	#
.L27:
	movl	$.LC11, %esi	#,
	movq	%rbx, %rdi	# tmp134,
	call	mystrcasestr	#
	cmpq	%rbx, %rax	# tmp134, D.5788
	jne	.L28	#,
	leaq	10(%rbx), %rdi	#, tmp112
	xorl	%edx, %edx	#
	xorl	%esi, %esi	#
	call	strtoul	#
	movl	%eax, 3084(%rbp)	# D.5791, k_1(D)->sleep_low
	jmp	.L39	#
.L28:
	movl	$.LC12, %esi	#,
	movq	%rbx, %rdi	# tmp134,
	call	mystrcasestr	#
	cmpq	%rbx, %rax	# tmp134, D.5794
	jne	.L29	#,
	leaq	11(%rbx), %rdi	#, tmp116
	xorl	%edx, %edx	#
	xorl	%esi, %esi	#
	call	strtoul	#
.L41:
	movl	%eax, 3088(%rbp)	# D.5797, k_1(D)->sleep_high
	jmp	.L39	#
.L29:
	movl	$.LC13, %esi	#,
	movq	%rbx, %rdi	# tmp134,
	call	mystrcasestr	#
	cmpq	%rbx, %rax	# tmp134, D.5800
	jne	.L30	#,
	leaq	9(%rbx), %rdi	#, tmp120
	xorl	%edx, %edx	#
	xorl	%esi, %esi	#
	call	strtoul	#
	movw	%ax, 3072(%rbp)	# D.5803, k_1(D)->bitrules
	jmp	.L39	#
.L30:
	movl	$.LC14, %esi	#,
	movq	%rbx, %rdi	# tmp134,
	call	mystrcasestr	#
	cmpq	%rbx, %rax	# tmp134, D.5806
	jne	.L31	#,
	leaq	5(%rbx), %rdi	#, tmp124
	xorl	%edx, %edx	#
	xorl	%esi, %esi	#
	call	strtoul	#
	movl	%eax, 3080(%rbp)	# D.5809, k_1(D)->busy
	jmp	.L39	#
.L31:
	movl	$.LC15, %esi	#,
	movq	%rbx, %rdi	# tmp134,
	call	mystrcasestr	#
	cmpq	%rbx, %rax	# tmp134, D.5812
	jne	.L32	#,
	leaq	8(%rbx), %rdi	#, tmp128
	xorl	%edx, %edx	#
	xorl	%esi, %esi	#
	call	strtoul	#
	movl	%eax, 3092(%rbp)	# D.5815, k_1(D)->fwsleep
	jmp	.L39	#
.L32:
	movl	$.LC16, %esi	#,
	movq	%rbx, %rdi	# tmp134,
	call	mystrcasestr	#
	cmpq	%rbx, %rax	# tmp134, D.5818
	jne	.L39	#,
	leaq	6(%rbx), %rdi	#, tmp132
	xorl	%edx, %edx	#
	xorl	%esi, %esi	#
	call	strtoul	#
	movl	%eax, 3096(%rbp)	# D.5821, k_1(D)->debug
.L39:
	movq	%r12, %rdx	# f1,
	movl	$1024, %esi	#,
	movq	%rbx, %rdi	# tmp134,
	call	fgets	#
	testq	%rax, %rax	# D.5956
	jne	.L33	#,
	movq	%r12, %rdi	# f1,
	call	fclose	#
	jmp	.L22	#
.L23:
	movl	$.LC4, %r9d	#,
	movl	$.LC17, %r8d	#,
	movl	$1024, %ecx	#,
	movl	$1, %edx	#,
	movl	$1024, %esi	#,
	movq	%rbp, %rdi	# k,
	xorl	%eax, %eax	#
	call	__snprintf_chk	#
.L22:
	movq	1032(%rsp), %rax	# D.5986,
	xorq	%fs:40, %rax	#,
	je	.L35	#,
	call	__stack_chk_fail	#
.L35:
	addq	$1040, %rsp	#,
	.cfi_def_cfa_offset 32
	popq	%rbx	#
	.cfi_def_cfa_offset 24
	popq	%rbp	#
	.cfi_def_cfa_offset 16
	popq	%r12	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE41:
	.size	getconf, .-getconf
	.section	.rodata
	.align 8
	.type	__func__.5757, @object
	.size	__func__.5757, 11
__func__.5757:
	.string	"getdotfile"
	.ident	"GCC: (Ubuntu/Linaro 4.7.2-2ubuntu1) 4.7.2"
	.section	.note.GNU-stack,"",@progbits
