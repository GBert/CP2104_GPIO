	.file	"inhx32.c"
# GNU C (Ubuntu/Linaro 4.7.2-2ubuntu1) version 4.7.2 (x86_64-linux-gnu)
#	compiled by GNU C version 4.7.2, GMP version 5.0.2, MPFR version 3.1.0-p3, MPC version 0.9
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# angegebene Optionen:  -fpreprocessed inhx32.i -mtune=generic
# -march=x86-64 -auxbase-strip inhx32.o -Os -pedantic-errors -Wall
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
	.globl	inhx32_compare
	.type	inhx32_compare, @function
inhx32_compare:
.LFB42:
	.cfi_startproc
	movl	(%rsi), %eax	# MEM[(struct inhx32_data *)d2_4(D)].address,
	xorl	%edx, %edx	# tmp69
	cmpl	%eax, (%rdi)	#, MEM[(struct inhx32_data *)d1_2(D)].address
	movl	$-1, %eax	#, D.5981
	setne	%dl	#, tmp69
	cmovae	%edx, %eax	# tmp69,, D.5981
	ret
	.cfi_endproc
.LFE42:
	.size	inhx32_compare, .-inhx32_compare
	.globl	inhx32_order
	.type	inhx32_order, @function
inhx32_order:
.LFB43:
	.cfi_startproc
	andl	$-3, %esi	#, tmp70
	movq	(%rdi), %rdi	# MEM[(struct inhx32_data * *)entry_1(D)], data
	decl	%esi	# tmp70
	jne	.L4	#,
	movl	inhx32_index(%rip), %eax	# inhx32_index, inhx32_index.4
	movq	inhx32_pdata(%rip), %rdx	# inhx32_pdata, inhx32_pdata
	movl	%eax, %ecx	# inhx32_index.4, inhx32_index.4
	incl	%eax	# tmp73
	movq	%rdi, (%rdx,%rcx,8)	# data, *D.5976_11
	movl	%eax, inhx32_index(%rip)	# tmp73, inhx32_index
.L4:
	ret
	.cfi_endproc
.LFE43:
	.size	inhx32_order, .-inhx32_order
	.globl	inhx32_gethexn
	.type	inhx32_gethexn, @function
inhx32_gethexn:
.LFB40:
	.cfi_startproc
	leal	-48(%rdi), %eax	#, D.6006
	cmpb	$9, %al	#, D.6006
	jbe	.L7	#,
	leal	-97(%rdi), %eax	#, tmp66
	cmpb	$5, %al	#, tmp66
	ja	.L8	#,
	leal	-87(%rdi), %eax	#, D.6006
	ret
.L8:
	leal	-65(%rdi), %edx	#, tmp67
	xorl	%eax, %eax	# D.6006
	subl	$55, %edi	#, tmp69
	cmpb	$5, %dl	#, tmp67
	cmovbe	%edi, %eax	# tmp69,, D.6006
.L7:
	ret
	.cfi_endproc
.LFE40:
	.size	inhx32_gethexn, .-inhx32_gethexn
	.globl	inhx32_gethexb
	.type	inhx32_gethexb, @function
inhx32_gethexb:
.LFB41:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	xorl	%eax, %eax	# tmp79
	orq	$-1, %rcx	#, tmp78
	pushq	%rbx	#
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rdi, %rbx	# s, s
	repnz scasb
	notq	%rcx	# tmp76
	decq	%rcx	# D.5985
	cmpq	$1, %rcx	#, D.5985
	jbe	.L12	#,
	movsbl	(%rbx), %edi	# *s_2(D), *s_2(D)
	call	inhx32_gethexn	#
	movsbl	1(%rbx), %edi	# MEM[(char *)s_2(D) + 1B], MEM[(char *)s_2(D) + 1B]
	movb	%al, %bpl	#, D.5991
	call	inhx32_gethexn	#
	movb	%bpl, %dl	# D.5991, D.5988
	sall	$4, %edx	#, D.5988
	orl	%eax, %edx	# D.5998, D.5988
	jmp	.L11	#
.L12:
	xorl	%edx, %edx	# D.5988
.L11:
	popq	%rbx	#
	.cfi_def_cfa_offset 16
	movb	%dl, %al	# D.5988,
	popq	%rbp	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE41:
	.size	inhx32_gethexb, .-inhx32_gethexb
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"-"
.LC1:
	.string	"rb"
.LC2:
	.string	"%s: error: file open failed [%s] [%s]\n"
.LC3:
	.string	"%s: warning: ignoring malformed line [%s] invalid format\n"
.LC4:
	.string	"%s: warning: ignoring malformed line [%s] invalid checksum [%02X]\n"
.LC5:
	.string	"%s: warning: ignoring malformed line [%s] invalid length [%zu != %u] (BB=0x%02x)\n"
.LC6:
	.string	"%s: warning: ignoring empty line [%s]\n"
.LC7:
	.string	"%s: warning: ignoring line with incomplete word [%s]\n"
.LC8:
	.string	"%s: fatal error: calloc failed\n"
.LC9:
	.string	"%s: fatal error: duplicate address [%08X]\n"
.LC10:
	.string	"%s: fatal error: tsearch failed\n"
.LC11:
	.string	"%s: warning: ignoring invalid extended linear address [aaaa=%04X, bb=%d]\n"
.LC12:
	.string	"%s: warning: ignoring unhandled extended segment address\n"
.LC13:
	.string	"%s: warning: ignoring unhandled start linear address\n"
.LC14:
	.string	"%s: warning: ignoring unhandled start segment address\n"
.LC15:
	.string	"%s: warning: ignoring unknown record type [%d]\n"
.LC16:
	.string	"%s: warning: file contains no data records [%s]\n"
.LC17:
	.string	"%s: fatal error: tdelete failed\n"
.LC18:
	.string	"%s: fatal error: tree destroy failed\n"
	.text
	.globl	inhx32
	.type	inhx32, @function
inhx32:
.LFB44:
	.cfi_startproc
	pushq	%r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14	#
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13	#
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
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
	subq	$1112, %rsp	#,
	.cfi_def_cfa_offset 1168
	movl	$0, 3112(%rdi)	#, k_15(D)->count
	movq	$0, 3104(%rdi)	#, k_15(D)->pdata
	movq	%rsi, 24(%rsp)	# filename, %sfp
	movq	24(%rsp), %rdi	# %sfp,
	movl	$.LC0, %esi	#,
	movq	%fs:40, %rax	#,
	movq	%rax, 1096(%rsp)	#, D.6200
	xorl	%eax, %eax	#
	movq	stdin(%rip), %rax	# stdin,
	movl	%edx, 44(%rsp)	# alignment, %sfp
	movq	$0, 64(%rsp)	#, root
	movq	%rax, 32(%rsp)	#, %sfp
	call	strcmp	#
	testl	%eax, %eax	# D.5827
	jne	.L15	#,
.L17:
	leaq	72(%rsp), %rbp	#, tmp325
	movb	$0, 42(%rsp)	#, %sfp
	xorl	%r14d, %r14d	# extended_address
	leaq	1(%rbp), %rdx	#,
	leaq	3(%rbp), %rax	#,
	movq	%rdx, 48(%rsp)	#, %sfp
	movq	%rax, 56(%rsp)	#, %sfp
	jmp	.L70	#
.L15:
	movq	24(%rsp), %rdi	# %sfp,
	movl	$.LC1, %esi	#,
	call	fopen	#
	testq	%rax, %rax	#
	movq	%rax, 32(%rsp)	#, %sfp
	jne	.L17	#,
	call	__errno_location	#
	movl	(%rax), %edi	# *D.5832_19,
	xorl	%ebp, %ebp	# D.5835
	call	strerror	#
	movq	24(%rsp), %rcx	# %sfp,
	movq	%rax, %r8	#, D.5834
	movl	$__func__.5785, %edx	#,
	movl	$.LC2, %esi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	jmp	.L18	#
.L47:
	xorl	%eax, %eax	# tmp238
	movb	$0, 1095(%rsp)	#, line
	orq	$-1, %rcx	#, tmp237
	movq	%rbp, %rdi	# tmp325, tmp236
	repnz scasb
	xorl	%eax, %eax	# ivtmp.66
	notq	%rcx	# tmp235
	subl	$2, %ecx	#, D.5838
	jmp	.L19	#
.L21:
	movb	$0, 72(%rsp,%rsi)	#, line
.L19:
	movl	%ecx, %esi	# D.5838, D.6193
	subl	%eax, %esi	# ivtmp.66, D.6193
	js	.L20	#,
	movslq	%esi, %rsi	# D.6193, D.6193
	incl	%eax	# ivtmp.66
	movb	72(%rsp,%rsi), %dl	# line, D.5840
	cmpb	$13, %dl	#, D.5840
	je	.L21	#,
	cmpb	$10, %dl	#, D.5840
	je	.L21	#,
.L20:
	cmpb	$58, 72(%rsp)	#, line
	jne	.L22	#,
	xorl	%eax, %eax	# tmp250
	orq	$-1, %rcx	#, tmp249
	movq	%rbp, %rdi	# tmp325, tmp248
	repnz scasb
	notq	%rcx	# tmp247
	leaq	-1(%rcx), %r13	#, D.5848
	testb	$1, %r13b	#, D.5848
	je	.L22	#,
	cmpq	$10, %r13	#, D.5848
	jbe	.L22	#,
	movl	$1, %edx	#, tmp323
	movq	%rbp, %r15	# tmp325, ivtmp.63
	xorl	%r12d, %r12d	# cc
	subl	%ebp, %edx	# tmp325, tmp323
	jmp	.L23	#
.L22:
	cmpl	$9, 3096(%rbx)	#, k_15(D)->debug
	jbe	.L24	#,
	movq	%rbp, %rcx	# tmp325,
	movl	$__func__.5785, %edx	#,
	movl	$.LC3, %esi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	jmp	.L24	#
.L25:
	movslq	%edi, %rdi	# D.6174, D.6174
	movl	%edx, 16(%rsp)	#,
	addq	%rbp, %rdi	# tmp325, tmp255
	call	inhx32_gethexb	#
	movl	16(%rsp), %edx	#,
	addl	%eax, %r12d	# D.5856, cc
.L23:
	leal	(%rdx,%r15), %edi	#, D.6174
	addq	$2, %r15	#, ivtmp.63
	cmpb	$0, -1(%r15)	#, MEM[base: D.6168_78, offset: -1B]
	jne	.L25	#,
	testb	%r12b, %r12b	# cc
	je	.L26	#,
	cmpl	$9, 3096(%rbx)	#, k_15(D)->debug
	jbe	.L24	#,
	movzbl	%r12b, %r8d	# cc,
	movq	%rbp, %rcx	# tmp325,
	movl	$__func__.5785, %edx	#,
	movl	$.LC4, %esi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	jmp	.L24	#
.L26:
	movq	48(%rsp), %rdi	# %sfp,
	call	inhx32_gethexb	#
	movzbl	%al, %r12d	#, bb
	movb	%al, 43(%rsp)	#, %sfp
	leal	11(%r12,%r12), %r9d	#, D.5866
	movl	%r9d, %eax	# D.5866, D.5866
	cmpq	%rax, %r13	# D.5866, D.5848
	je	.L27	#,
	cmpl	$9, 3096(%rbx)	#, k_15(D)->debug
	jbe	.L24	#,
	movl	%r12d, (%rsp)	# bb,
	movq	%r13, %r8	# D.5848,
	movq	%rbp, %rcx	# tmp325,
	movl	$__func__.5785, %edx	#,
	movl	$.LC5, %esi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	jmp	.L24	#
.L27:
	movq	56(%rsp), %rdi	# %sfp,
	call	inhx32_gethexb	#
	leaq	5(%rbp), %rdi	#, tmp268
	movb	%al, %r15b	#, D.5873
	sall	$8, %r15d	#, aaaa
	call	inhx32_gethexb	#
	leaq	7(%rbp), %rdi	#, tmp273
	movzbl	%al, %eax	# D.5877, D.5877
	orl	%eax, %r15d	# D.5877, aaaa
	call	inhx32_gethexb	#
	cmpb	$5, %al	#,
	movb	%al, 42(%rsp)	#, %sfp
	ja	.L28	#,
	movzbl	%al, %eax	#, tt
	jmp	*.L35(,%rax,8)	#
	.section	.rodata
	.align 8
	.align 4
.L35:
	.quad	.L29
	.quad	.L30
	.quad	.L31
	.quad	.L32
	.quad	.L33
	.quad	.L34
	.text
.L29:
	testl	%r12d, %r12d	# bb
	jne	.L36	#,
	cmpl	$9, 3096(%rbx)	#, k_15(D)->debug
	jbe	.L70	#,
	movq	%rbp, %rcx	# tmp325,
	movl	$__func__.5785, %edx	#,
	movl	$.LC6, %esi	#,
	jmp	.L73	#
.L36:
	xorl	%edx, %edx	# tmp279
	movl	%r12d, %eax	# bb, tmp280
	divl	44(%rsp)	# %sfp
	testl	%edx, %edx	# tmp279
	je	.L38	#,
	cmpl	$9, 3096(%rbx)	#, k_15(D)->debug
	jbe	.L70	#,
	movq	%rbp, %rcx	# tmp325,
	movl	$__func__.5785, %edx	#,
	movl	$.LC7, %esi	#,
.L73:
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	jmp	.L70	#
.L38:
	movl	$520, %esi	#,
	movl	$1, %edi	#,
	call	calloc	#
	testq	%rax, %rax	# data
	movq	%rax, %r13	#, data
	jne	.L39	#,
	movl	$.LC8, %esi	#,
	movl	$1, %edi	#,
	movl	$__func__.5785, %edx	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	movl	$71, %esi	#,
	movq	%rbx, %rdi	# k,
	call	io_exit	#
.L39:
	movzbl	43(%rsp), %eax	# %sfp, D.5863
	movzwl	%r15w, %r15d	# aaaa, tmp284
	incl	3112(%rbx)	# k_15(D)->count
	orl	%r14d, %r15d	# extended_address, tmp284
	movl	%r15d, 0(%r13)	# tmp284, data_70->address
	xorl	%r15d, %r15d	# ivtmp.34
	movw	%ax, 516(%r13)	# D.5863, data_70->nbytes
	jmp	.L40	#
.L41:
	addq	%rbp, %rdi	# tmp325, tmp288
	call	inhx32_gethexb	#
	movzbl	%al, %eax	# D.5898, D.5898
	movw	%ax, 4(%r13,%r15,2)	# D.5898, MEM[base: data_70, index: ivtmp.34_111, step: 2, offset: 4B]
	incq	%r15	# ivtmp.34
.L40:
	cmpl	%r12d, %r15d	# bb, ivtmp.34
	leal	9(%r15,%r15), %edi	#,
	jb	.L41	#,
	leaq	64(%rsp), %rsi	#,
	movl	$inhx32_compare, %edx	#,
	movq	%r13, %rdi	# data,
	call	tfind	#
	testq	%rax, %rax	# D.5901
	je	.L42	#,
	movl	0(%r13), %ecx	# data_70->address,
	movl	$.LC9, %esi	#,
	movl	$1, %edi	#,
	movl	$__func__.5785, %edx	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	movl	$70, %esi	#,
	movq	%rbx, %rdi	# k,
	call	io_exit	#
.L42:
	leaq	64(%rsp), %rsi	#,
	movl	$inhx32_compare, %edx	#,
	movq	%r13, %rdi	# data,
	call	tsearch	#
	testq	%rax, %rax	# D.5905
	jne	.L70	#,
	movl	$__func__.5785, %edx	#,
	movl	$.LC10, %esi	#,
	movl	$1, %edi	#,
	call	__printf_chk	#
	movl	$71, %esi	#,
	movq	%rbx, %rdi	# k,
	call	io_exit	#
	jmp	.L70	#
.L33:
	testw	%r15w, %r15w	# aaaa
	jne	.L43	#,
	cmpl	$2, %r12d	#, bb
	jne	.L43	#,
	leaq	9(%rbp), %rdi	#, tmp298
	call	inhx32_gethexb	#
	leaq	11(%rbp), %rdi	#, tmp300
	movb	%al, %r12b	#, D.5913
	sall	$24, %r12d	#, tmp304
	call	inhx32_gethexb	#
	movzbl	%al, %r14d	# D.5916, extended_address
	sall	$16, %r14d	#, extended_address
	orl	%r12d, %r14d	# tmp304, extended_address
	jmp	.L70	#
.L43:
	movzwl	%r15w, %ecx	# aaaa, aaaa
	movl	%r12d, %r8d	# bb,
	movl	$__func__.5785, %edx	#,
	movl	$.LC11, %esi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	jmp	.L70	#
.L31:
	movl	$__func__.5785, %edx	#,
	movl	$.LC12, %esi	#,
	jmp	.L72	#
.L34:
	movl	$__func__.5785, %edx	#,
	movl	$.LC13, %esi	#,
	jmp	.L72	#
.L32:
	movl	$__func__.5785, %edx	#,
	movl	$.LC14, %esi	#,
.L72:
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	jmp	.L70	#
.L28:
	movzbl	42(%rsp), %ecx	# %sfp, tt
	movl	$__func__.5785, %edx	#,
	movl	$.LC15, %esi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
.L24:
	cmpb	$1, 42(%rsp)	#, %sfp
	jne	.L70	#,
.L30:
	movq	24(%rsp), %rdi	# %sfp,
	movl	$.LC0, %esi	#,
	call	strcmp	#
	testl	%eax, %eax	# D.5924
	je	.L46	#,
	jmp	.L45	#
.L70:
	movq	32(%rsp), %rdx	# %sfp,
	movl	$1024, %esi	#,
	movq	%rbp, %rdi	# tmp325,
	call	fgets	#
	testq	%rax, %rax	# D.6076
	jne	.L47	#,
	jmp	.L30	#
.L45:
	movq	32(%rsp), %rdi	# %sfp,
	call	fclose	#
.L46:
	movl	3112(%rbx), %edi	# k_15(D)->count,
	testl	%edi, %edi	# D.5892
	jne	.L48	#,
	xorl	%ebp, %ebp	# D.5835
	cmpl	$9, 3096(%rbx)	#, k_15(D)->debug
	jbe	.L18	#,
	movq	24(%rsp), %rcx	# %sfp,
	movl	$__func__.5785, %edx	#,
	movl	$.LC16, %esi	#,
	movb	$1, %dil	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	jmp	.L18	#
.L48:
	movl	$8, %esi	#,
	call	calloc	#
	testq	%rax, %rax	# tmp310
	movq	%rax, 3104(%rbx)	# tmp310, k_15(D)->pdata
	jne	.L49	#,
	movl	$.LC8, %esi	#,
	movl	$1, %edi	#,
	movl	$__func__.5785, %edx	#,
	call	__printf_chk	#
	movl	$71, %esi	#,
	movq	%rbx, %rdi	# k,
	call	io_exit	#
.L49:
	movq	3104(%rbx), %rax	# k_15(D)->pdata, k_15(D)->pdata
	movq	64(%rsp), %rdi	# root,
	movl	$inhx32_order, %esi	#,
	movl	$0, inhx32_index(%rip)	#, inhx32_index
	xorl	%ebp, %ebp	# i
	movq	%rax, inhx32_pdata(%rip)	# k_15(D)->pdata, inhx32_pdata
	call	twalk	#
	jmp	.L50	#
.L52:
	movq	3104(%rbx), %rax	# k_15(D)->pdata, k_15(D)->pdata
	movl	%ebp, %edx	# i, i
	leaq	64(%rsp), %rsi	#,
	movq	(%rax,%rdx,8), %rdi	# *D.5939_116, *D.5939_116
	movl	$inhx32_compare, %edx	#,
	call	tdelete	#
	testq	%rax, %rax	# D.5941
	jne	.L51	#,
	movl	$.LC17, %esi	#,
	movl	$1, %edi	#,
	movl	$__func__.5785, %edx	#,
	call	__printf_chk	#
	movl	$71, %esi	#,
	movq	%rbx, %rdi	# k,
	call	io_exit	#
.L51:
	incl	%ebp	# i
.L50:
	cmpl	3112(%rbx), %ebp	# k_15(D)->count, i
	jb	.L52	#,
	cmpq	$0, 64(%rsp)	#, root
	je	.L53	#,
	movl	$.LC18, %esi	#,
	movl	$1, %edi	#,
	movl	$__func__.5785, %edx	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	movl	$71, %esi	#,
	movq	%rbx, %rdi	# k,
	call	io_exit	#
.L53:
	movl	3112(%rbx), %ebp	# k_15(D)->count, D.5835
.L18:
	movq	1096(%rsp), %rdx	# D.6200,
	xorq	%fs:40, %rdx	#,
	movl	%ebp, %eax	# D.5835,
	je	.L54	#,
	call	__stack_chk_fail	#
.L54:
	addq	$1112, %rsp	#,
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
.LFE44:
	.size	inhx32, .-inhx32
	.globl	inhx32_free
	.type	inhx32_free, @function
inhx32_free:
.LFB45:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	xorl	%ebp, %ebp	# i
	pushq	%rbx	#
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rdi, %rbx	# k, k
	pushq	%rdx	#
	.cfi_def_cfa_offset 32
	cmpl	$0, 3112(%rdi)	#, k_2(D)->count
	jne	.L79	#,
	jmp	.L74	#
.L77:
	movl	%ebp, %eax	# i, i
	incl	%ebp	# i
	movq	(%rdi,%rax,8), %rdi	# *D.5825_9, *D.5825_9
	call	free	#
.L79:
	cmpl	3112(%rbx), %ebp	# k_2(D)->count, i
	movq	3104(%rbx), %rdi	# k_2(D)->pdata, k_2(D)->pdata
	jb	.L77	#,
	call	free	#
	movl	$0, 3112(%rbx)	#, k_2(D)->count
	movq	$0, 3104(%rbx)	#, k_2(D)->pdata
.L74:
	popq	%rax	#
	.cfi_def_cfa_offset 24
	popq	%rbx	#
	.cfi_def_cfa_offset 16
	popq	%rbp	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE45:
	.size	inhx32_free, .-inhx32_free
	.local	inhx32_pdata
	.comm	inhx32_pdata,8,8
	.local	inhx32_index
	.comm	inhx32_index,4,4
	.section	.rodata
	.type	__func__.5785, @object
	.size	__func__.5785, 7
__func__.5785:
	.string	"inhx32"
	.ident	"GCC: (Ubuntu/Linaro 4.7.2-2ubuntu1) 4.7.2"
	.section	.note.GNU-stack,"",@progbits
