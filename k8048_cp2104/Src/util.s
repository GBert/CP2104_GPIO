	.file	"util.c"
# GNU C (Ubuntu/Linaro 4.7.2-2ubuntu1) version 4.7.2 (x86_64-linux-gnu)
#	compiled by GNU C version 4.7.2, GMP version 5.0.2, MPFR version 3.1.0-p3, MPC version 0.9
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# angegebene Optionen:  -fpreprocessed util.i -mtune=generic -march=x86-64
# -auxbase-strip util.o -Os -pedantic-errors -Wall -std=gnu99 -fverbose-asm
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

	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"%s: are you sure [y/N]? "
	.text
	.globl	areyousure
	.type	areyousure, @function
areyousure:
.LFB40:
	.cfi_startproc
	pushq	%rax	#
	.cfi_def_cfa_offset 16
	movq	%rdi, %rdx	# s, s
	movl	$.LC0, %esi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	movq	stdin(%rip), %rdi	# stdin,
	call	fgetc	#
	andl	$-33, %eax	#, tmp67
	cmpl	$89, %eax	#, tmp67
	sete	%al	#, tmp68
	movzbl	%al, %eax	# tmp68, tmp68
	popq	%rdx	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE40:
	.size	areyousure, .-areyousure
	.globl	mystrcasestr
	.type	mystrcasestr, @function
mystrcasestr:
.LFB41:
	.cfi_startproc
	pushq	%r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	xorl	%eax, %eax	# tmp123
	pushq	%r14	#
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	orq	$-1, %r14	#, tmp122
	movq	%r14, %rcx	# tmp122, tmp120
	pushq	%r13	#
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movq	%rsi, %r13	# needle, needle
	pushq	%r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movq	%rdi, %rbp	# haystack, haystack
	movq	%rsi, %rdi	# needle, needle
	pushq	%rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$24, %rsp	#,
	.cfi_def_cfa_offset 80
	repnz scasb
	movq	%rbp, %rdi	# haystack, haystack
	notq	%rcx	# tmp120
	leaq	(%rcx,%r14), %rdx	#, D.5775
	movq	%r14, %rcx	# tmp122, tmp126
	repnz scasb
	movl	%edx, %r12d	# D.5775, nlen
	notq	%rcx	# tmp126
	addq	%rcx, %r14	# tmp126, D.5776
	subl	%edx, %r14d	# D.5775,
	movl	%r14d, 12(%rsp)	#, %sfp
	movq	%rbp, %r14	# haystack, ivtmp.27
	jmp	.L4	#
.L7:
	movsbl	(%r14,%rbx), %edi	# MEM[base: D.5875_3, index: ivtmp.15_24, offset: 0B], __res
	call	tolower	#
	movsbl	0(%r13,%rbx), %edi	# MEM[base: needle_8(D), index: ivtmp.15_24, offset: 0B], __res
	movl	%eax, %r15d	#, __res
	incq	%rbx	# ivtmp.15
	call	tolower	#
	cmpl	%eax, %r15d	# __res, __res
	je	.L6	#,
	jmp	.L5	#
.L9:
	xorl	%ebx, %ebx	# ivtmp.15
.L6:
	cmpl	%r12d, %ebx	# nlen, ivtmp.15
	jl	.L7	#,
	cmpl	%r12d, %ebx	# nlen, j
	jne	.L5	#,
	movslq	8(%rsp), %r12	# %sfp, i
	leaq	0(%rbp,%r12), %rax	#, D.5832
	jmp	.L8	#
.L5:
	incq	%r14	# ivtmp.27
.L4:
	movl	%r14d, %eax	#,
	subl	%ebp, %eax	# haystack,
	movl	%eax, 8(%rsp)	#, %sfp
	movl	12(%rsp), %eax	# %sfp,
	cmpl	%eax, 8(%rsp)	#, %sfp
	jle	.L9	#,
	xorl	%eax, %eax	# D.5832
.L8:
	addq	$24, %rsp	#,
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
.LFE41:
	.size	mystrcasestr, .-mystrcasestr
	.ident	"GCC: (Ubuntu/Linaro 4.7.2-2ubuntu1) 4.7.2"
	.section	.note.GNU-stack,"",@progbits
