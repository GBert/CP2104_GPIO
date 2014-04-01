	.file	"pic16.c"
# GNU C (Ubuntu/Linaro 4.7.2-2ubuntu1) version 4.7.2 (x86_64-linux-gnu)
#	compiled by GNU C version 4.7.2, GMP version 5.0.2, MPFR version 3.1.0-p3, MPC version 0.9
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# angegebene Optionen:  -fpreprocessed pic16.i -mtune=generic -march=x86-64
# -auxbase-strip pic16.o -Os -pedantic-errors -Wall -std=gnu99
# -fverbose-asm -fstack-protector
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
	.type	pic16_eecon1, @function
pic16_eecon1:
.LFB59:
	.cfi_startproc
	movl	pic16_index(%rip), %edx	# pic16_index, pic16_index
	movb	$127, %al	#, D.6652
	imulq	$1068, %rdx, %rdx	#, pic16_index, tmp65
	cmpl	$39972, pic16_map+1036(%rdx)	#, pic16_map[pic16_index.25_2].datasheet
	movb	$-90, %dl	#, tmp68
	cmovne	%edx, %eax	# tmp68,, D.6652
	ret
	.cfi_endproc
.LFE59:
	.size	pic16_eecon1, .-pic16_eecon1
	.globl	pic16_get_program_size
	.type	pic16_get_program_size, @function
pic16_get_program_size:
.LFB73:
	.cfi_startproc
	movl	$0, (%rdi)	#, *addr_1(D)
	movl	pic16_index(%rip), %eax	# pic16_index, pic16_index
	imulq	$1068, %rax, %rax	#, pic16_index, tmp66
	movl	pic16_map+1028(%rax), %eax	# pic16_map[pic16_index.29_2].flash, pic16_map[pic16_index.29_2].flash
	ret
	.cfi_endproc
.LFE73:
	.size	pic16_get_program_size, .-pic16_get_program_size
	.globl	pic16_get_data_size
	.type	pic16_get_data_size, @function
pic16_get_data_size:
.LFB74:
	.cfi_startproc
	movl	$15728640, (%rdi)	#, *addr_1(D)
	movl	pic16_index(%rip), %eax	# pic16_index, pic16_index
	imulq	$1068, %rax, %rax	#, pic16_index, tmp67
	movzwl	pic16_map+1032(%rax), %eax	# pic16_map[pic16_index.28_2].eeprom, pic16_map[pic16_index.28_2].eeprom
	ret
	.cfi_endproc
.LFE74:
	.size	pic16_get_data_size, .-pic16_get_data_size
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"[%06X] [CONFIG%d]     %04X\n"
	.text
	.globl	pic16_dumpconfig
	.type	pic16_dumpconfig, @function
pic16_dumpconfig:
.LFB94:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movl	$pic16_conf+11, %ebp	#, ivtmp.118
	pushq	%rbx	#
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rbp, %rbx	#, ivtmp.118
	pushq	%rdx	#
	.cfi_def_cfa_offset 32
	jmp	.L7	#
.L8:
	movzbl	(%rbx), %eax	# MEM[base: D.7292_36, offset: 0B], tmp120
	movzbl	-1(%rbx), %r8d	# MEM[base: D.7292_36, offset: -1B], MEM[base: D.7292_36, offset: -1B]
	movl	%edx, %ecx	# D.7291, tmp123
	addl	4(%rsi), %edx	# pic16_map[pic16_index.4_3].configaddr, tmp129
	shrl	%ecx	# tmp123
	movl	$.LC0, %esi	#,
	incl	%ecx	# tmp124
	movl	$1, %edi	#,
	addq	$2, %rbx	#, ivtmp.118
	sall	$8, %eax	#, tmp120
	orl	%eax, %r8d	# tmp120,
	xorl	%eax, %eax	#
	call	__printf_chk	#
.L7:
	movl	pic16_index(%rip), %esi	# pic16_index, pic16_index.4
	movl	%ebx, %edx	#, D.7291
	subl	%ebp, %edx	# ivtmp.118, D.7291
	imulq	$1068, %rsi, %rsi	#, pic16_index.4, tmp133
	addq	$pic16_map+1056, %rsi	#, tmp134
	movzbl	8(%rsi), %eax	# pic16_map[pic16_index.4_3].configsize, pic16_map[pic16_index.4_3].configsize
	cmpl	%eax, %edx	# pic16_map[pic16_index.4_3].configsize, D.7291
	jb	.L8	#,
	popq	%rax	#
	.cfi_def_cfa_offset 24
	popq	%rbx	#
	.cfi_def_cfa_offset 16
	popq	%rbp	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE94:
	.size	pic16_dumpconfig, .-pic16_dumpconfig
	.section	.rodata.str1.1
.LC1:
	.string	"[000000] [PROGRAM]     %04X WORDS (%04X ROWS OF %04X WORDS)\n"
.LC2:
	.string	"[000000] [PROGRAM]    %05X WORDS (%04X ROWS OF %04X WORDS)\n"
.LC3:
	.string	"[20000%d] [IDLOCATION%d] %02X %c\n"
.LC4:
	.string	"[3FFFFE] [DEVICEID]    %04X"
.LC5:
	.string	"[3FFFFE] [DEVICEID]    %04X DEV:%03X REV:%02X"
.LC6:
	.string	" %s\n"
.LC7:
	.string	"[%06X] [DATA]\t       %04X BYTES\n"
	.text
	.globl	pic16_dumpdeviceid
	.type	pic16_dumpdeviceid, @function
pic16_dumpdeviceid:
.LFB93:
	.cfi_startproc
	movl	pic16_index(%rip), %eax	# pic16_index, pic16_index.5
	pushq	%r12	#
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp	#
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movq	%rdi, %rbp	# k, k
	imulq	$1068, %rax, %rax	#, pic16_index.5, tmp137
	pushq	%rbx	#
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movl	pic16_map+1028(%rax), %esi	# pic16_map[pic16_index.5_5].flash, D.6371
	leaq	pic16_map+1056(%rax), %rax	#, tmp191
	movzwl	10(%rax), %edi	# pic16_map[pic16_index.5_5].erasesize, D.6374
	cmpl	$65535, %esi	#, D.6371
	movl	%edi, %r8d	#, tmp143
	ja	.L11	#,
	leal	(%rsi,%rsi), %eax	#, tmp145
	xorl	%edx, %edx	# tmp149
	shrw	%r8w	# tmp143
	andl	$32767, %r8d	#,
	divl	%edi	# D.6374
	movl	%esi, %edx	# D.6371,
	movl	$.LC1, %esi	#,
	movl	%eax, %ecx	# tmp145, tmp148
	jmp	.L28	#
.L11:
	leal	(%rsi,%rsi), %eax	#, tmp156
	xorl	%edx, %edx	# tmp160
	shrw	%r8w	# tmp154
	andl	$32767, %r8d	#,
	divl	%edi	# D.6374
	movl	%esi, %edx	# D.6371,
	movl	$.LC2, %esi	#,
	movl	%eax, %ecx	# tmp156, tmp159
.L28:
	xorl	%eax, %eax	#
	movl	$1, %edi	#,
	xorl	%ebx, %ebx	# ivtmp.132
	call	__printf_chk	#
	movl	pic16_index(%rip), %eax	# pic16_index, pic16_index
	movl	$46, %r12d	#, iftmp.6
	imulq	$1068, %rax, %rax	#, pic16_index, tmp163
	cmpl	$39687, pic16_map+1036(%rax)	#, pic16_map[pic16_index.5_33].datasheet
.L30:
	jne	.L24	#,
	xorl	%esi, %esi	#
	movq	%rbp, %rdi	# k,
	call	pic16_dumpconfig	#
	cmpb	$0, 2048(%rbp)	#, k_45(D)->devicename
	je	.L26	#,
	jmp	.L14	#
.L24:
	movzbl	pic16_conf+2(%rbx), %r8d	# MEM[symbol: pic16_conf, index: ivtmp.132_110, offset: 2B],
	leal	1(%rbx), %ecx	#, tmp168
	movl	%r12d, %r9d	# iftmp.6, iftmp.6
	movl	%ebx, %edx	# ivtmp.132,
	movl	$.LC3, %esi	#,
	movl	$1, %edi	#,
	leal	-32(%r8), %eax	#, tmp166
	cmpb	$94, %al	#, tmp166
	cmovbe	%r8d, %r9d	# D.6385,, iftmp.6
	xorl	%eax, %eax	#
	incq	%rbx	# ivtmp.132
	call	__printf_chk	#
	cmpq	$8, %rbx	#, ivtmp.132
	jmp	.L30	#
.L14:
	movzwl	pic16_conf(%rip), %edx	# pic16_conf.deviceid, pic16_conf.deviceid
	movl	$.LC4, %esi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	jmp	.L18	#
.L26:
	movl	pic16_index(%rip), %eax	# pic16_index, pic16_index
	movl	pic16_conf(%rip), %r8d	# pic16_conf.deviceid, D.6395
	movl	%r8d, %ecx	# D.6395, devshift
	imulq	$1068, %rax, %rax	#, pic16_index, tmp173
	cmpb	$0, pic16_map+1040(%rax)	#, pic16_map[pic16_index.5_49].devidrev4
	jne	.L19	#,
	shrw	$5, %cx	#, devshift
	andl	$31, %r8d	#, revision
	jmp	.L20	#
.L19:
	shrw	$4, %cx	#, devshift
	andl	$15, %r8d	#, revision
.L20:
	movzwl	pic16_conf(%rip), %edx	# pic16_conf.deviceid, pic16_conf.deviceid
	movzwl	%cx, %ecx	# devshift, devshift
	andl	$31, %r8d	#,
	movl	$.LC5, %esi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
.L18:
	movl	pic16_index(%rip), %edx	# pic16_index, pic16_index
	xorl	%eax, %eax	#
	movl	$.LC6, %esi	#,
	movl	$1, %edi	#,
	imulq	$1068, %rdx, %rdx	#, pic16_index, tmp184
	addq	$pic16_map, %rdx	#, tmp185
	call	__printf_chk	#
	movl	pic16_index(%rip), %eax	# pic16_index, pic16_index
	imulq	$1068, %rax, %rax	#, pic16_index, tmp188
	movzwl	pic16_map+1032(%rax), %ecx	# pic16_map[pic16_index.5_67].eeprom,
	testw	%cx, %cx	# D.6405
	je	.L10	#,
	popq	%rbx	#
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbp	#
	.cfi_def_cfa_offset 16
	popq	%r12	#
	.cfi_def_cfa_offset 8
	movl	$15728640, %edx	#,
	movl	$.LC7, %esi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	jmp	__printf_chk	#
.L10:
	.cfi_restore_state
	popq	%rbx	#
	.cfi_def_cfa_offset 24
	popq	%rbp	#
	.cfi_def_cfa_offset 16
	popq	%r12	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE93:
	.size	pic16_dumpdeviceid, .-pic16_dumpdeviceid
	.section	.rodata.str1.1
.LC8:
	.string	":%02X%02X%02X00"
.LC9:
	.string	"%02X"
.LC10:
	.string	"%02X\n"
	.text
	.globl	pic16_dumpinhxdata
	.type	pic16_dumpinhxdata, @function
pic16_dumpinhxdata:
.LFB98:
	.cfi_startproc
	pushq	%r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movl	$15728640, %edi	#,
	pushq	%r14	#
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13	#
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movq	%rcx, %r13	# data, data
	pushq	%r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movl	%esi, %r12d	# address, address
	movl	$1, %esi	#,
	leal	16(%r12), %r15d	#, tmp153
	pushq	%rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	xorl	%ebx, %ebx	# i
	subq	$24, %rsp	#,
	.cfi_def_cfa_offset 80
	movl	%edx, 12(%rsp)	# size, %sfp
	call	pic_dumpaddr	#
	jmp	.L32	#
.L35:
	movl	%ebx, %eax	# i, i
	movl	$16, %esi	#,
	movl	$255, %edi	#,
	leaq	0(%r13,%rax,2), %rdx	#, tmp141
	call	pic_mtdata	#
	testl	%eax, %eax	# D.6268
	jne	.L33	#,
	movl	%ebp, %r14d	# address, D.6271
	movzbl	%bpl, %r8d	# address,
	movl	$16, %edx	#,
	shrl	$8, %r14d	#, D.6271
	movl	$.LC8, %esi	#,
	movl	$1, %edi	#,
	movzbl	%r14b, %ecx	# D.6271, tmp143
	xorl	%ebp, %ebp	# ivtmp.154
	call	__printf_chk	#
	leal	(%r15,%rbx), %ecx	#, tmp145
	addl	%ecx, %r14d	# tmp145, cc
.L34:
	leal	(%rbx,%rbp), %eax	#, tmp147
	movl	$.LC9, %esi	#,
	movl	$1, %edi	#,
	incq	%rbp	# ivtmp.154
	movw	0(%r13,%rax,2), %r8w	# *D.6278_24, *D.6278_24
	xorl	%eax, %eax	#
	movzbl	%r8b, %edx	# *D.6278_24, lb
	movl	%r8d, (%rsp)	#,
	call	__printf_chk	#
	movl	(%rsp), %r8d	#,
	addl	%r8d, %r14d	# *D.6278_24, cc
	cmpq	$16, %rbp	#, ivtmp.154
	jne	.L34	#,
	movb	%r14b, %cl	# cc, tmp151
	movl	$.LC10, %esi	#,
	movl	$1, %edi	#,
	negl	%ecx	# tmp151
	xorl	%eax, %eax	#
	movzbl	%cl, %edx	# tmp151, tmp152
	call	__printf_chk	#
.L33:
	addl	$16, %ebx	#, i
.L32:
	cmpl	12(%rsp), %ebx	# %sfp, i
	leal	(%rbx,%r12), %ebp	#, address
	jb	.L35	#,
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
.LFE98:
	.size	pic16_dumpinhxdata, .-pic16_dumpinhxdata
	.section	.rodata.str1.1
.LC11:
	.string	"[%06X] "
.LC12:
	.string	"%02X "
.LC13:
	.string	"%s: information: data eeprom empty\n"
	.text
	.globl	pic16_dumphexdata
	.type	pic16_dumphexdata, @function
pic16_dumphexdata:
.LFB97:
	.cfi_startproc
	pushq	%r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movl	$46, %r15d	#, iftmp.1
	pushq	%r14	#
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movl	%esi, %r14d	# address, address
	pushq	%r13	#
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movq	%rcx, %r12	# data, data
	pushq	%rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	xorl	%ebp, %ebp	# nlines
	pushq	%rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	xorl	%ebx, %ebx	# i
	subq	$24, %rsp	#,
	.cfi_def_cfa_offset 80
	movl	%edx, 12(%rsp)	# size, %sfp
	jmp	.L39	#
.L44:
	movl	%ebx, %eax	# i, i
	movl	$16, %esi	#,
	movl	$255, %edi	#,
	leaq	(%r12,%rax,2), %rdx	#, tmp116
	call	pic_mtdata	#
	testl	%eax, %eax	# D.6289
	jne	.L40	#,
	movl	%r13d, %edx	# address,
	movl	$.LC11, %esi	#,
	movl	$1, %edi	#,
	xorl	%r13d, %r13d	# j
	call	__printf_chk	#
.L41:
	leal	0(%r13,%rbx), %eax	#, tmp118
	movl	$.LC12, %esi	#,
	movl	$1, %edi	#,
	incl	%r13d	# j
	movzwl	(%r12,%rax,2), %edx	# *D.6295_21, *D.6295_21
	xorl	%eax, %eax	#
	call	__printf_chk	#
	cmpl	$16, %r13d	#, j
	jne	.L41	#,
	xorb	%r13b, %r13b	#
.L43:
	leal	0(%r13,%rbx), %eax	#, tmp121
	movw	(%r12,%rax,2), %di	# *D.6295_29, *D.6295_29
	andw	$255, %di	#, D.6299
	leal	-32(%rdi), %eax	#, tmp123
	movzwl	%di, %edi	# D.6299, D.6299
	cmpw	$94, %ax	#, tmp123
	cmova	%r15d, %edi	# D.6299,, iftmp.1, iftmp.1
	incl	%r13d	# j
	call	putchar	#
	cmpl	$16, %r13d	#, j
	jne	.L43	#,
	movl	$10, %edi	#,
	incl	%ebp	# nlines
	call	putchar	#
.L40:
	addl	$16, %ebx	#, i
.L39:
	cmpl	12(%rsp), %ebx	# %sfp, i
	leal	(%rbx,%r14), %r13d	#, address
	jb	.L44	#,
	testl	%ebp, %ebp	# nlines
	jne	.L38	#,
	addq	$24, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movl	$__func__.6224, %edx	#,
	movl	$.LC13, %esi	#,
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
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	jmp	__printf_chk	#
.L38:
	.cfi_restore_state
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
.LFE97:
	.size	pic16_dumphexdata, .-pic16_dumphexdata
	.section	.rodata.str1.1
.LC14:
	.string	"%02X%02X"
	.text
	.globl	pic16_dumpinhxcode
	.type	pic16_dumpinhxcode, @function
pic16_dumpinhxcode:
.LFB96:
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
	movq	%rcx, %r13	# data, data
	pushq	%r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	xorl	%ebp, %ebp	# i
	pushq	%rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movl	%esi, %ebx	# address, address
	movl	$1, %esi	#,
	movl	%ebx, %edi	# address,
	subq	$24, %rsp	#,
	.cfi_def_cfa_offset 80
	movl	%edx, 12(%rsp)	# size, %sfp
	call	pic_dumpaddr	#
	jmp	.L51	#
.L54:
	movl	%ebp, %eax	# i, i
	movl	$8, %esi	#,
	movl	$65535, %edi	#,
	leaq	0(%r13,%rax,4), %rdx	#, tmp158
	call	pic_mtcode	#
	testl	%eax, %eax	# D.6309
	jne	.L52	#,
	movl	%ebx, %r12d	# address, D.6312
	xorl	%esi, %esi	#
	movl	%ebx, %edi	# address,
	shrl	$8, %r12d	#, D.6312
	call	pic_dumpaddr	#
	leal	16(%rbx,%r12), %r15d	#, cc
	movzbl	%r12b, %ecx	# D.6312, tmp160
	movzbl	%bl, %r8d	# address,
	movl	$16, %edx	#,
	movl	$.LC8, %esi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	xorl	%r12d, %r12d	# ivtmp.229
	call	__printf_chk	#
.L53:
	leal	0(%rbp,%r12), %eax	#, tmp163
	movl	$.LC14, %esi	#,
	movl	$1, %edi	#,
	incq	%r12	# ivtmp.229
	movl	0(%r13,%rax,4), %r14d	# *D.6319_24, D.6320
	movl	%r14d, %eax	# D.6320,
	movzbl	%r14b, %edx	# D.6320, tmp165
	shrl	$8, %eax	#,
	movzbl	%al, %ecx	#, tmp164
	movl	%eax, 8(%rsp)	#, %sfp
	xorl	%eax, %eax	#
	call	__printf_chk	#
	addl	8(%rsp), %r14d	# %sfp, tmp166
	addl	%r14d, %r15d	# tmp166, cc
	cmpq	$8, %r12	#, ivtmp.229
	jne	.L53	#,
	movb	%r15b, %al	# cc,
	movl	$.LC10, %esi	#,
	movl	$1, %edi	#,
	negl	%eax	#
	movzbl	%al, %edx	# tmp168, tmp169
	xorl	%eax, %eax	#
	call	__printf_chk	#
.L52:
	addl	$16, %ebx	#, address
	addl	$8, %ebp	#, i
.L51:
	cmpl	12(%rsp), %ebp	# %sfp, i
	jb	.L54	#,
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
.LFE96:
	.size	pic16_dumpinhxcode, .-pic16_dumpinhxcode
	.section	.rodata.str1.1
.LC15:
	.string	"%04X "
.LC16:
	.string	"%s: information: program flash empty\n"
	.text
	.globl	pic16_dumphexcode
	.type	pic16_dumphexcode, @function
pic16_dumphexcode:
.LFB95:
	.cfi_startproc
	pushq	%r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movl	%esi, %r15d	# address, address
	pushq	%r14	#
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13	#
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movl	$46, %r13d	#, tmp139
	pushq	%r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movq	%rcx, %r12	# data, data
	pushq	%rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	xorl	%ebp, %ebp	# nlines
	pushq	%rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	xorl	%ebx, %ebx	# i
	subq	$24, %rsp	#,
	.cfi_def_cfa_offset 80
	movl	%edx, 12(%rsp)	# size, %sfp
	jmp	.L58	#
.L64:
	movl	%ebx, %eax	# i, i
	movl	$8, %esi	#,
	movl	$65535, %edi	#,
	leaq	(%r12,%rax,4), %rdx	#, tmp122
	call	pic_mtcode	#
	testl	%eax, %eax	# D.6330
	jne	.L59	#,
	movl	%r14d, %edx	# D.7486,
	movl	$.LC11, %esi	#,
	movl	$1, %edi	#,
	xorl	%r14d, %r14d	# j
	call	__printf_chk	#
.L60:
	leal	(%r14,%rbx), %eax	#, tmp124
	movl	$.LC15, %esi	#,
	movl	$1, %edi	#,
	incl	%r14d	# j
	movl	(%r12,%rax,4), %edx	# *D.6336_22, *D.6336_22
	xorl	%eax, %eax	#
	andl	$65535, %edx	#, tmp125
	call	__printf_chk	#
	cmpl	$8, %r14d	#, j
	jne	.L60	#,
	xorb	%r14b, %r14b	#
.L63:
	leal	(%r14,%rbx), %eax	#, tmp128
	leaq	(%r12,%rax,4), %rdx	#, D.6336
	movzbl	(%rdx), %edi	# *D.6336_30, D.6340
	movq	%rdx, (%rsp)	#,
	leal	-32(%rdi), %eax	#, tmp131
	cmpl	$94, %eax	#, tmp131
	cmova	%r13d, %edi	# D.6340,, tmp139, iftmp.2
	call	putchar	#
	movq	(%rsp), %rdx	#,
	movl	(%rdx), %eax	# *D.6336_30, *D.6336_30
	movzbl	%ah, %edi	# *D.6336_30, D.6348
	leal	-32(%rdi), %eax	#, tmp134
	cmpl	$94, %eax	#, tmp134
	cmova	%r13d, %edi	# D.6348,, tmp139, iftmp.3
	incl	%r14d	# j
	call	putchar	#
	cmpl	$8, %r14d	#, j
	jne	.L63	#,
	movl	$10, %edi	#,
	incl	%ebp	# nlines
	call	putchar	#
.L59:
	addl	$8, %ebx	#, i
.L58:
	cmpl	12(%rsp), %ebx	# %sfp, i
	leal	(%r15,%rbx,2), %r14d	#, D.7486
	jb	.L64	#,
	testl	%ebp, %ebp	# nlines
	jne	.L57	#,
	addq	$24, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movl	$__func__.6186, %edx	#,
	movl	$.LC16, %esi	#,
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
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	jmp	__printf_chk	#
.L57:
	.cfi_restore_state
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
.LFE95:
	.size	pic16_dumphexcode, .-pic16_dumphexcode
	.type	pic16_table_write_start_programming, @function
pic16_table_write_start_programming:
.LFB56:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movl	%esi, %ebp	# word, word
	movl	$4, %edx	#,
	movl	$15, %esi	#,
	pushq	%rbx	#
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rdi, %rbx	# k, k
	pushq	%rcx	#
	.cfi_def_cfa_offset 32
	call	io_program_out	#
	popq	%r8	#
	.cfi_def_cfa_offset 24
	movq	%rbx, %rdi	# k,
	movzwl	%bp, %esi	# word, word
	movl	$16, %edx	#,
	popq	%rbx	#
	.cfi_def_cfa_offset 16
	popq	%rbp	#
	.cfi_def_cfa_offset 8
	jmp	io_program_out	#
	.cfi_endproc
.LFE56:
	.size	pic16_table_write_start_programming, .-pic16_table_write_start_programming
	.type	pic16_core_instruction, @function
pic16_core_instruction:
.LFB44:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movl	%esi, %ebp	# word, word
	movl	$4, %edx	#,
	xorl	%esi, %esi	#
	pushq	%rbx	#
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rdi, %rbx	# k, k
	pushq	%r9	#
	.cfi_def_cfa_offset 32
	call	io_program_out	#
	popq	%r10	#
	.cfi_def_cfa_offset 24
	movq	%rbx, %rdi	# k,
	movzwl	%bp, %esi	# word, word
	movl	$16, %edx	#,
	popq	%rbx	#
	.cfi_def_cfa_offset 16
	popq	%rbp	#
	.cfi_def_cfa_offset 8
	jmp	io_program_out	#
	.cfi_endproc
.LFE44:
	.size	pic16_core_instruction, .-pic16_core_instruction
	.type	pic16_table_write, @function
pic16_table_write:
.LFB52:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movl	%esi, %ebp	# word, word
	movl	$4, %edx	#,
	movl	$12, %esi	#,
	pushq	%rbx	#
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rdi, %rbx	# k, k
	pushq	%r11	#
	.cfi_def_cfa_offset 32
	call	io_program_out	#
	movq	%rbx, %rdi	# k,
	movzwl	%bp, %esi	# word, word
	movl	$16, %edx	#,
	popq	%rbx	#
	.cfi_def_cfa_offset 24
	popq	%rbx	#
	.cfi_def_cfa_offset 16
	popq	%rbp	#
	.cfi_def_cfa_offset 8
	jmp	io_program_out	#
	.cfi_endproc
.LFE52:
	.size	pic16_table_write, .-pic16_table_write
	.type	pic16_table_read_post_increment, @function
pic16_table_read_post_increment:
.LFB49:
	.cfi_startproc
	pushq	%rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movl	$4, %edx	#,
	movq	%rdi, %rbx	# k, k
	movl	$9, %esi	#,
	call	io_program_out	#
	movq	%rbx, %rdi	# k,
	movl	$16, %esi	#,
	call	io_program_in	#
	popq	%rbx	#
	.cfi_def_cfa_offset 8
	shrl	$8, %eax	#, tmp65
	ret
	.cfi_endproc
.LFE49:
	.size	pic16_table_read_post_increment, .-pic16_table_read_post_increment
	.type	pic16_core_instruction_nopp, @function
pic16_core_instruction_nopp:
.LFB45:
	.cfi_startproc
	pushq	%r12	#
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	movl	%esi, %r12d	# h, h
	xorl	%esi, %esi	#
	pushq	%rbp	#
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movl	%edx, %ebp	# l, l
	movl	$3, %edx	#,
	pushq	%rbx	#
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%rdi, %rbx	# k, k
	call	io_program_out	#
	movq	%rbx, %rdi	# k,
	movl	$1, %esi	#,
	call	io_set_pgc	#
	movl	%r12d, %esi	# h,
	movq	%rbx, %rdi	# k,
	call	io_usleep	#
	movq	%rbx, %rdi	# k,
	xorl	%esi, %esi	#
	call	io_set_pgc	#
	movl	%ebp, %esi	# l,
	movq	%rbx, %rdi	# k,
	call	io_usleep	#
	movq	%rbx, %rdi	# k,
	movl	$16, %edx	#,
	xorl	%esi, %esi	#
	popq	%rbx	#
	.cfi_def_cfa_offset 24
	popq	%rbp	#
	.cfi_def_cfa_offset 16
	popq	%r12	#
	.cfi_def_cfa_offset 8
	jmp	io_program_out	#
	.cfi_endproc
.LFE45:
	.size	pic16_core_instruction_nopp, .-pic16_core_instruction_nopp
	.type	pic16_core_instruction_nope, @function
pic16_core_instruction_nope:
.LFB46:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movl	$4, %edx	#,
	xorl	%esi, %esi	#
	pushq	%rbx	#
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rdi, %rbx	# k, k
	pushq	%rbp	#
	.cfi_def_cfa_offset 32
	movl	pic16_index(%rip), %eax	# pic16_index, pic16_index.33
	imulq	$1068, %rax, %rax	#, pic16_index.33, tmp66
	movl	pic16_map+1052(%rax), %ebp	# pic16_map[pic16_index.33_1].p10, l
	addl	pic16_map+1056(%rax), %ebp	# pic16_map[pic16_index.33_1].p11, l
	call	io_program_out	#
	movq	%rbx, %rdi	# k,
	movl	%ebp, %esi	# l,
	call	io_usleep	#
	popq	%rax	#
	.cfi_def_cfa_offset 24
	movq	%rbx, %rdi	# k,
	movl	$16, %edx	#,
	xorl	%esi, %esi	#
	popq	%rbx	#
	.cfi_def_cfa_offset 16
	popq	%rbp	#
	.cfi_def_cfa_offset 8
	jmp	io_program_out	#
	.cfi_endproc
.LFE46:
	.size	pic16_core_instruction_nope, .-pic16_core_instruction_nope
	.section	.rodata.str1.1
.LC17:
	.string	"%s\t"
.LC18:
	.string	"Total: %d\n"
	.text
	.globl	pic16_selector
	.type	pic16_selector, @function
pic16_selector:
.LFB41:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	xorl	%eax, %eax	# ivtmp.313
	pushq	%rbx	#
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$1416, %rsp	#,
	.cfi_def_cfa_offset 1440
	jmp	.L84	#
.L85:
	movslq	%eax, %rdx	# ivtmp.313, i
	imulq	$1068, %rdx, %rdx	#, i, tmp88
	addq	$pic16_map, %rdx	#, tmp89
	movq	%rdx, 8(%rsp,%rax,8)	# tmp89, MEM[symbol: dnames, index: ivtmp.313_12, step: 8, offset: 0B]
	incq	%rax	# ivtmp.313
.L84:
	cmpq	$175, %rax	#, ivtmp.313
	jne	.L85	#,
	leaq	8(%rsp), %rdi	#,
	movl	$pic_cmp, %ecx	#,
	movl	$8, %edx	#,
	movl	$175, %esi	#,
	xorl	%ebx, %ebx	# ivtmp.302
	movl	$5, %ebp	#, tmp101
	call	qsort	#
	jmp	.L86	#
.L89:
	cltd
	idivl	%ebp	# tmp101
	cmpl	$4, %edx	#, tmp92
	jne	.L87	#,
	movq	8(%rsp,%rbx,8), %rdi	# MEM[symbol: dnames, index: ivtmp.302_17, step: 8, offset: 0B], MEM[symbol: dnames, index: ivtmp.302_17, step: 8, offset: 0B]
	call	puts	#
	jmp	.L88	#
.L87:
	movq	8(%rsp,%rbx,8), %rdx	# MEM[symbol: dnames, index: ivtmp.302_17, step: 8, offset: 0B], MEM[symbol: dnames, index: ivtmp.302_17, step: 8, offset: 0B]
	movl	$.LC17, %esi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
.L88:
	incq	%rbx	# ivtmp.302
.L86:
	cmpq	$175, %rbx	#, ivtmp.302
	movl	%ebx, %eax	# ivtmp.302, i
	jne	.L89	#,
	movl	$175, %edx	#,
	movl	$.LC18, %esi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	addq	$1416, %rsp	#,
	.cfi_def_cfa_offset 24
	popq	%rbx	#
	.cfi_def_cfa_offset 16
	popq	%rbp	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE41:
	.size	pic16_selector, .-pic16_selector
	.globl	pic16_dumpdevice
	.type	pic16_dumpdevice, @function
pic16_dumpdevice:
.LFB99:
	.cfi_startproc
	movl	pic16_index(%rip), %eax	# pic16_index, pic16_index
	imulq	$1068, %rax, %rax	#, pic16_index, tmp109
	cmpl	$39687, pic16_map+1036(%rax)	#, pic16_map[pic16_index.0_3].datasheet
	je	.L100	#,
	pushq	%rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movl	$1, %esi	#,
	movl	$2097152, %edi	#,
	xorl	%ebx, %ebx	# ivtmp.346
	call	pic_dumpaddr	#
.L93:
	movzbl	pic16_conf+2(%rbx), %esi	# MEM[symbol: pic16_conf, index: ivtmp.346_31, offset: 2B], MEM[symbol: pic16_conf, index: ivtmp.346_31, offset: 2B]
	movl	%ebx, %edi	# ivtmp.346,
	incq	%rbx	# ivtmp.346
	call	pic_dumpbyte	#
	cmpq	$8, %rbx	#, ivtmp.346
	jne	.L93	#,
	movl	$1, %esi	#,
	movl	$3145728, %edi	#,
	xorb	%bl, %bl	#
	call	pic_dumpaddr	#
	jmp	.L94	#
.L95:
	movzbl	pic16_conf+10(%rbx), %esi	# MEM[symbol: pic16_conf, index: ivtmp.338_49, offset: 10B], MEM[symbol: pic16_conf, index: ivtmp.338_49, offset: 10B]
	movl	%ebx, %edi	# ivtmp.338,
	incq	%rbx	# ivtmp.338
	call	pic_dumpbyte	#
.L94:
	movl	pic16_index(%rip), %eax	# pic16_index, pic16_index
	imulq	$1068, %rax, %rax	#, pic16_index, tmp117
	movzbl	pic16_map+1064(%rax), %eax	# pic16_map[pic16_index.0_32].configsize, pic16_map[pic16_index.0_32].configsize
	cmpl	%eax, %ebx	# pic16_map[pic16_index.0_32].configsize, ivtmp.338
	jb	.L95	#,
	popq	%rbx	#
	.cfi_restore 3
	.cfi_def_cfa_offset 8
.L100:
	ret
	.cfi_endproc
.LFE99:
	.size	pic16_dumpdevice, .-pic16_dumpdevice
	.globl	pic16_arch
	.type	pic16_arch, @function
pic16_arch:
.LFB40:
	.cfi_startproc
	movq	$pic16_ops, 3128(%rdi)	#, k_1(D)->pic
	movl	pic16_ops(%rip), %eax	# pic16_ops.arch,
	ret
	.cfi_endproc
.LFE40:
	.size	pic16_arch, .-pic16_arch
	.globl	pic16_program_verify
	.type	pic16_program_verify, @function
pic16_program_verify:
.LFB42:
	.cfi_startproc
	pushq	%rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	xorl	%esi, %esi	#
	movq	%rdi, %rbx	# k, k
	call	io_configure	#
	xorl	%esi, %esi	#
	movq	%rbx, %rdi	# k,
	call	io_set_vpp	#
	movl	$1000, %esi	#,
	movq	%rbx, %rdi	# k,
	call	io_usleep	#
	xorl	%esi, %esi	#
	movq	%rbx, %rdi	# k,
	call	io_set_pgd	#
	xorl	%esi, %esi	#
	movq	%rbx, %rdi	# k,
	call	io_set_pgc	#
	xorl	%esi, %esi	#
	movq	%rbx, %rdi	# k,
	call	io_set_pgm	#
	movl	$1000, %esi	#,
	movq	%rbx, %rdi	# k,
	call	io_usleep	#
	movl	3076(%rbx), %eax	# k_1(D)->key, D.6866
	movl	$1, %esi	#,
	movq	%rbx, %rdi	# k,
	cmpl	$2, %eax	#, D.6866
	jne	.L103	#,
	call	io_set_vpp	#
	movl	$250, %esi	#,
	movq	%rbx, %rdi	# k,
	call	io_usleep	#
	xorl	%esi, %esi	#
	movq	%rbx, %rdi	# k,
	call	io_set_vpp	#
	movl	$4000, %esi	#,
	movq	%rbx, %rdi	# k,
	call	io_usleep	#
	movl	$32, %edx	#,
	movl	$169001650, %esi	#,
	movq	%rbx, %rdi	# k,
	call	io_program_out	#
	movl	$250, %esi	#,
	movq	%rbx, %rdi	# k,
	call	io_usleep	#
	movl	$1, %esi	#,
	movq	%rbx, %rdi	# k,
	call	io_set_vpp	#
	movl	$400, %esi	#,
	jmp	.L106	#
.L103:
	decl	%eax	# D.6866
	jne	.L104	#,
	call	io_set_vpp	#
	movq	%rbx, %rdi	# k,
	movl	$250, %esi	#,
	call	io_usleep	#
	movl	$32, %edx	#,
	movl	$169001650, %esi	#,
	movq	%rbx, %rdi	# k,
	call	io_program_out	#
	jmp	.L107	#
.L104:
	call	io_set_pgm	#
	movl	$10, %esi	#,
	movq	%rbx, %rdi	# k,
	call	io_usleep	#
	movl	$1, %esi	#,
	movq	%rbx, %rdi	# k,
	call	io_set_vpp	#
.L107:
	movl	$250, %esi	#,
.L106:
	movq	%rbx, %rdi	# k,
	popq	%rbx	#
	.cfi_def_cfa_offset 8
	jmp	io_usleep	#
	.cfi_endproc
.LFE42:
	.size	pic16_program_verify, .-pic16_program_verify
	.globl	pic16_standby
	.type	pic16_standby, @function
pic16_standby:
.LFB43:
	.cfi_startproc
	pushq	%rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	xorl	%esi, %esi	#
	movq	%rdi, %rbx	# k, k
	call	io_set_pgd	#
	movq	%rbx, %rdi	# k,
	xorl	%esi, %esi	#
	call	io_set_pgc	#
	movq	%rbx, %rdi	# k,
	xorl	%esi, %esi	#
	call	io_set_vpp	#
	movq	%rbx, %rdi	# k,
	xorl	%esi, %esi	#
	popq	%rbx	#
	.cfi_def_cfa_offset 8
	jmp	io_set_pgm	#
	.cfi_endproc
.LFE43:
	.size	pic16_standby, .-pic16_standby
	.globl	pic16_init_code_memory_access
	.type	pic16_init_code_memory_access, @function
pic16_init_code_memory_access:
.LFB60:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx	#
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rdi, %rbx	# k, k
	pushq	%rax	#
	.cfi_def_cfa_offset 32
	call	pic16_eecon1	#
	movzbl	%al, %ebp	# eecon1, D.6861
	movq	%rbx, %rdi	# k,
	movl	%ebp, %esi	# D.6861, tmp66
	orw	$-25600, %bp	#, tmp68
	orw	$-29184, %si	#, tmp66
	movzwl	%si, %esi	# tmp66, tmp67
	call	pic16_core_instruction	#
	popq	%rax	#
	.cfi_def_cfa_offset 24
	movq	%rbx, %rdi	# k,
	movzwl	%bp, %esi	# tmp68, tmp69
	popq	%rbx	#
	.cfi_def_cfa_offset 16
	popq	%rbp	#
	.cfi_def_cfa_offset 8
	jmp	pic16_core_instruction	#
	.cfi_endproc
.LFE60:
	.size	pic16_init_code_memory_access, .-pic16_init_code_memory_access
	.globl	pic16_init_config_memory_access
	.type	pic16_init_config_memory_access, @function
pic16_init_config_memory_access:
.LFB61:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx	#
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rdi, %rbx	# k, k
	pushq	%rax	#
	.cfi_def_cfa_offset 32
	call	pic16_eecon1	#
	movzbl	%al, %ebp	# eecon1, D.6856
	movq	%rbx, %rdi	# k,
	movl	%ebp, %esi	# D.6856, tmp66
	orw	$-29696, %bp	#, tmp68
	orw	$-29184, %si	#, tmp66
	movzwl	%si, %esi	# tmp66, tmp67
	call	pic16_core_instruction	#
	popq	%rax	#
	.cfi_def_cfa_offset 24
	movq	%rbx, %rdi	# k,
	movzwl	%bp, %esi	# tmp68, tmp69
	popq	%rbx	#
	.cfi_def_cfa_offset 16
	popq	%rbp	#
	.cfi_def_cfa_offset 8
	jmp	pic16_core_instruction	#
	.cfi_endproc
.LFE61:
	.size	pic16_init_config_memory_access, .-pic16_init_config_memory_access
	.globl	pic16_init_data_memory_access
	.type	pic16_init_data_memory_access, @function
pic16_init_data_memory_access:
.LFB62:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx	#
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rdi, %rbx	# k, k
	pushq	%rax	#
	.cfi_def_cfa_offset 32
	call	pic16_eecon1	#
	movzbl	%al, %ebp	# eecon1, D.6851
	movq	%rbx, %rdi	# k,
	movl	%ebp, %esi	# D.6851, tmp66
	orw	$-25600, %bp	#, tmp68
	orw	$-25088, %si	#, tmp66
	movzwl	%si, %esi	# tmp66, tmp67
	call	pic16_core_instruction	#
	popq	%rdx	#
	.cfi_def_cfa_offset 24
	movq	%rbx, %rdi	# k,
	movzwl	%bp, %esi	# tmp68, tmp69
	popq	%rbx	#
	.cfi_def_cfa_offset 16
	popq	%rbp	#
	.cfi_def_cfa_offset 8
	jmp	pic16_core_instruction	#
	.cfi_endproc
.LFE62:
	.size	pic16_init_data_memory_access, .-pic16_init_data_memory_access
	.globl	pic16_write_enable
	.type	pic16_write_enable, @function
pic16_write_enable:
.LFB63:
	.cfi_startproc
	subq	$24, %rsp	#,
	.cfi_def_cfa_offset 32
	movq	%rdi, 8(%rsp)	#,
	call	pic16_eecon1	#
	movq	8(%rsp), %rdi	#,
	movzbl	%al, %esi	# eecon1, tmp66
	addq	$24, %rsp	#,
	.cfi_def_cfa_offset 8
	orl	$33792, %esi	#, tmp66
	jmp	pic16_core_instruction	#
	.cfi_endproc
.LFE63:
	.size	pic16_write_enable, .-pic16_write_enable
	.globl	pic16_write_disable
	.type	pic16_write_disable, @function
pic16_write_disable:
.LFB64:
	.cfi_startproc
	subq	$24, %rsp	#,
	.cfi_def_cfa_offset 32
	movq	%rdi, 8(%rsp)	#,
	call	pic16_eecon1	#
	movq	8(%rsp), %rdi	#,
	movzbl	%al, %esi	# eecon1, tmp66
	addq	$24, %rsp	#,
	.cfi_def_cfa_offset 8
	orl	$37888, %esi	#, tmp66
	jmp	pic16_core_instruction	#
	.cfi_endproc
.LFE64:
	.size	pic16_write_disable, .-pic16_write_disable
	.globl	pic16_free
	.type	pic16_free, @function
pic16_free:
.LFB65:
	.cfi_startproc
	subq	$24, %rsp	#,
	.cfi_def_cfa_offset 32
	movq	%rdi, 8(%rsp)	#,
	call	pic16_eecon1	#
	movq	8(%rsp), %rdi	#,
	movzbl	%al, %esi	# eecon1, tmp66
	addq	$24, %rsp	#,
	.cfi_def_cfa_offset 8
	orl	$34816, %esi	#, tmp66
	jmp	pic16_core_instruction	#
	.cfi_endproc
.LFE65:
	.size	pic16_free, .-pic16_free
	.globl	pic16_write
	.type	pic16_write, @function
pic16_write:
.LFB66:
	.cfi_startproc
	subq	$24, %rsp	#,
	.cfi_def_cfa_offset 32
	movq	%rdi, 8(%rsp)	#,
	call	pic16_eecon1	#
	movq	8(%rsp), %rdi	#,
	movzbl	%al, %esi	# eecon1, tmp66
	addq	$24, %rsp	#,
	.cfi_def_cfa_offset 8
	orl	$33280, %esi	#, tmp66
	jmp	pic16_core_instruction	#
	.cfi_endproc
.LFE66:
	.size	pic16_write, .-pic16_write
	.globl	pic16_set_table_pointer
	.type	pic16_set_table_pointer, @function
pic16_set_table_pointer:
.LFB67:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movl	%esi, %ebp	# address, address
	andl	$4128768, %esi	#, tmp75
	shrl	$16, %esi	#, tmp75
	pushq	%rbx	#
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	orl	$3584, %esi	#, tmp75
	movq	%rdi, %rbx	# k, k
	pushq	%rcx	#
	.cfi_def_cfa_offset 32
	call	pic16_core_instruction	#
	movq	%rbx, %rdi	# k,
	movl	$28408, %esi	#,
	call	pic16_core_instruction	#
	movq	%rbp, %rax	#,
	movq	%rbx, %rdi	# k,
	movzbl	%ah, %esi	#, tmp78
	orl	$3584, %esi	#, tmp78
	call	pic16_core_instruction	#
	movq	%rbx, %rdi	# k,
	movl	$28407, %esi	#,
	call	pic16_core_instruction	#
	movzbl	%bpl, %esi	# address, tmp81
	movq	%rbx, %rdi	# k,
	orl	$3584, %esi	#, tmp81
	call	pic16_core_instruction	#
	popq	%r8	#
	.cfi_def_cfa_offset 24
	movq	%rbx, %rdi	# k,
	movl	$28406, %esi	#,
	popq	%rbx	#
	.cfi_def_cfa_offset 16
	popq	%rbp	#
	.cfi_def_cfa_offset 8
	jmp	pic16_core_instruction	#
	.cfi_endproc
.LFE67:
	.size	pic16_set_table_pointer, .-pic16_set_table_pointer
	.globl	pic16_read_program_memory_block
	.type	pic16_read_program_memory_block, @function
pic16_read_program_memory_block:
.LFB75:
	.cfi_startproc
	pushq	%r14	#
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%r13	#
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	movl	%ecx, %r13d	# size,
	pushq	%r12	#
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	movl	%edx, %r12d	# addr, addr
	pushq	%rbp	#
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	movq	%rsi, %rbp	# data, data
	leaq	4(%rbp,%r13,4), %r13	#, D.7616
	pushq	%rbx	#
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	movq	%rdi, %rbx	# k, k
	call	pic16_program_verify	#
	movq	%rbx, %rdi	# k,
	call	pic16_init_code_memory_access	#
	movl	%r12d, %esi	# addr,
	movq	%rbx, %rdi	# k,
	call	pic16_set_table_pointer	#
	jmp	.L127	#
.L128:
	call	pic16_table_read_post_increment	#
	movq	%rbx, %rdi	# k,
	movzbl	%al, %r14d	#,
	call	pic16_table_read_post_increment	#
	movl	%eax, %ecx	#, tmp99
	sall	$8, %ecx	#, tmp99
	orl	%r14d, %ecx	# D.6697, tmp99
	movzwl	%cx, %ecx	# tmp99, tmp100
	movl	%ecx, -4(%rbp)	# tmp100, MEM[base: D.7617_39, offset: -4B]
.L127:
	addq	$4, %rbp	#, ivtmp.383
	movq	%rbx, %rdi	# k,
	cmpq	%r13, %rbp	# D.7616, ivtmp.383
	jne	.L128	#,
	call	pic16_standby	#
	popq	%rbx	#
	.cfi_def_cfa_offset 40
	popq	%rbp	#
	.cfi_def_cfa_offset 32
	movl	%r12d, %eax	# addr,
	popq	%r12	#
	.cfi_def_cfa_offset 24
	popq	%r13	#
	.cfi_def_cfa_offset 16
	popq	%r14	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE75:
	.size	pic16_read_program_memory_block, .-pic16_read_program_memory_block
	.section	.rodata.str1.1
.LC19:
	.string	"%s: fatal error: %s.\n"
.LC20:
	.string	"%s: fatal error: device unknown: [%04X]\n"
.LC21:
	.string	"%s: fatal error: unknown device: [%s]\n"
	.text
	.globl	pic16_read_config_memory
	.type	pic16_read_config_memory, @function
pic16_read_config_memory:
.LFB72:
	.cfi_startproc
	pushq	%r14	#
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	movl	$pic16_conf, %edx	#, tmp139
	xorl	%eax, %eax	# tmp141
	movl	$26, %ecx	#, tmp142
	movl	$175, pic16_index(%rip)	#, pic16_index
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
	movq	%rdx, %rdi	# tmp139, tmp140
	rep stosb
	movq	%rbx, %rdi	# k,
	call	pic16_program_verify	#
	cmpb	$0, 2048(%rbx)	#, k_7(D)->devicename
	je	.L131	#,
	movl	$pic16_map+1024, %r12d	#, ivtmp.419
	xorl	%ebp, %ebp	#
	leaq	2048(%rbx), %r13	#, tmp175
	jmp	.L132	#
.L135:
	movl	%ebp, %edi	# dev, dev
	movq	%r13, %rsi	# tmp175,
	addq	$1068, %r12	#, ivtmp.419
	imulq	$1068, %rdi, %rdi	#, dev, tmp145
	addq	$pic16_map, %rdi	#, tmp146
	call	strcasecmp	#
	testl	%eax, %eax	# D.6722
	jne	.L133	#,
	movw	%r14w, pic16_conf(%rip)	# D.6725, pic16_conf.deviceid
	jmp	.L134	#
.L133:
	incl	%ebp	#
.L132:
	movw	(%r12), %r14w	# MEM[base: D.7656_49, offset: 0B], D.6725
	testw	%r14w, %r14w	# D.6725
	jne	.L135	#,
	jmp	.L151	#
.L131:
	movl	$4194302, %esi	#,
	movq	%rbx, %rdi	# k,
	call	pic16_set_table_pointer	#
	movq	%rbx, %rdi	# k,
	call	pic16_table_read_post_increment	#
	movq	%rbx, %rdi	# k,
	movzbl	%al, %ebp	# D.6729, D.6729
	movw	%bp, pic16_conf(%rip)	# D.6729, pic16_conf.deviceid
	call	pic16_table_read_post_increment	#
	movl	%eax, %ecx	#, D.6738
	movl	$pic16_map+1024, %eax	#, ivtmp.431
	sall	$8, %ecx	#, D.6738
	orl	%ebp, %ecx	# D.6729, D.6738
	xorl	%ebp, %ebp	#
	movl	%ecx, %esi	# D.6738, deviceid
	movl	%ecx, %edi	# D.6738, deviceid
	movw	%cx, pic16_conf(%rip)	# D.6738, pic16_conf.deviceid
	andl	$-16, %esi	#, deviceid
	andl	$-32, %edi	#, deviceid
	jmp	.L137	#
.L140:
	cmpb	$0, 16(%rax)	#, MEM[base: D.7671_106, offset: 16B]
	movl	%edi, %r8d	# deviceid, deviceid
	cmovne	%esi, %r8d	# deviceid,, deviceid
	addq	$1068, %rax	#, ivtmp.431
	cmpw	%r8w, %dx	# deviceid, D.6725
	je	.L134	#,
	incl	%ebp	#
.L137:
	movw	(%rax), %dx	# MEM[base: D.7671_106, offset: 0B], D.6725
	testw	%dx, %dx	# D.6725
	jne	.L140	#,
	jmp	.L152	#
.L148:
	movzwl	%cx, %esi	# D.6738, D.6738
	movq	%rbx, %rdi	# k,
	call	io_fault	#
	movl	$__func__.5932, %edx	#,
	movq	%rax, %rcx	# D.6750,
	movl	$.LC19, %esi	#,
	jmp	.L155	#
.L153:
	movzwl	%cx, %ecx	# D.6738, D.6738
	movl	$__func__.5932, %edx	#,
	movl	$.LC20, %esi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
.L142:
	movq	%rbx, %rdi	# k,
	call	pic16_standby	#
	movl	$70, %esi	#,
	movq	%rbx, %rdi	# k,
	call	io_exit	#
.L134:
	movl	%ebp, pic16_index(%rip)	# dev, pic16_index
	imulq	$1068, %rbp, %rbp	#, dev, tmp158
	cmpl	$39687, pic16_map+1036(%rbp)	#, pic16_map[dev_3].datasheet
	jne	.L143	#,
.L146:
	movl	pic16_index(%rip), %eax	# pic16_index, pic16_index
	movq	%rbx, %rdi	# k,
	xorl	%ebp, %ebp	# ivtmp.398
	imulq	$1068, %rax, %rax	#, pic16_index, tmp162
	movl	pic16_map+1060(%rax), %esi	# pic16_map[pic16_index.30_50].configaddr, pic16_map[pic16_index.30_50].configaddr
	call	pic16_set_table_pointer	#
	jmp	.L144	#
.L143:
	movl	$2097152, %esi	#,
	movq	%rbx, %rdi	# k,
	xorl	%ebp, %ebp	# ivtmp.406
	call	pic16_set_table_pointer	#
.L145:
	movq	%rbx, %rdi	# k,
	call	pic16_table_read_post_increment	#
	movb	%al, pic16_conf+2(%rbp)	# D.6756, MEM[symbol: pic16_conf, index: ivtmp.406_57, offset: 2B]
	incq	%rbp	# ivtmp.406
	cmpq	$8, %rbp	#, ivtmp.406
	jne	.L145	#,
	jmp	.L146	#
.L147:
	call	pic16_table_read_post_increment	#
	movb	%al, pic16_conf+10(%rbp)	# D.6758, MEM[symbol: pic16_conf, index: ivtmp.398_116, offset: 10B]
	incq	%rbp	# ivtmp.398
.L144:
	movl	pic16_index(%rip), %eax	# pic16_index, pic16_index
	movq	%rbx, %rdi	# k,
	imulq	$1068, %rax, %rax	#, pic16_index, tmp169
	movzbl	pic16_map+1064(%rax), %eax	# pic16_map[pic16_index.30_53].configsize, pic16_map[pic16_index.30_53].configsize
	cmpl	%ebp, %eax	# ivtmp.398, pic16_map[pic16_index.30_53].configsize
	ja	.L147	#,
	popq	%rbx	#
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbp	#
	.cfi_def_cfa_offset 32
	popq	%r12	#
	.cfi_def_cfa_offset 24
	popq	%r13	#
	.cfi_def_cfa_offset 16
	popq	%r14	#
	.cfi_def_cfa_offset 8
	jmp	pic16_standby	#
.L151:
	.cfi_restore_state
	movq	%r13, %rcx	# tmp175,
	movl	$__func__.5932, %edx	#,
	movl	$.LC21, %esi	#,
.L155:
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	jmp	.L142	#
.L152:
	leal	-1(%rcx), %eax	#, tmp173
	cmpw	$-3, %ax	#, tmp173
	ja	.L148	#,
	jmp	.L153	#
	.cfi_endproc
.LFE72:
	.size	pic16_read_config_memory, .-pic16_read_config_memory
	.globl	pic16_erase_block
	.type	pic16_erase_block, @function
pic16_erase_block:
.LFB68:
	.cfi_startproc
	pushq	%r13	#
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12	#
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	movl	%esi, %r12d	# block, block
	movq	%r12, %rax	#,
	pushq	%rbp	#
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	movzbl	%ah, %eax	#,
	movl	%esi, %ebp	# block, D.7073
	movl	$3932164, %esi	#,
	movl	%eax, %r13d	#, D.7072
	andl	$16711680, %ebp	#, D.7073
	pushq	%rbx	#
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	movq	%rdi, %rbx	# k, k
	shrl	$16, %ebp	#, D.7073
	pushq	%r9	#
	.cfi_def_cfa_offset 48
	call	pic16_set_table_pointer	#
	movl	%r12d, %esi	#, tmp93
	movzbl	%r12b, %r12d	# block, block
	movq	%rbx, %rdi	# k,
	sall	$8, %esi	#, tmp93
	orl	%r12d, %esi	# block, tmp93
	movzwl	%si, %esi	# tmp93, tmp94
	call	pic16_table_write	#
	movq	%rbx, %rdi	# k,
	movl	$3589, %esi	#,
	call	pic16_core_instruction	#
	movq	%rbx, %rdi	# k,
	movl	$28406, %esi	#,
	call	pic16_core_instruction	#
	movl	%r13d, %esi	# D.7072, tmp95
	movq	%rbx, %rdi	# k,
	sall	$8, %esi	#, tmp95
	orl	%esi, %r13d	# tmp95, tmp96
	movzwl	%r13w, %esi	# tmp96, tmp97
	call	pic16_table_write	#
	movq	%rbx, %rdi	# k,
	movl	$3590, %esi	#,
	call	pic16_core_instruction	#
	movq	%rbx, %rdi	# k,
	movl	$28406, %esi	#,
	call	pic16_core_instruction	#
	movl	%ebp, %esi	# D.7073, tmp98
	movq	%rbx, %rdi	# k,
	sall	$8, %esi	#, tmp98
	orl	%esi, %ebp	# tmp98, tmp99
	movzwl	%bp, %esi	# tmp99, tmp100
	call	pic16_table_write	#
	movq	%rbx, %rdi	# k,
	xorl	%esi, %esi	#
	call	pic16_core_instruction	#
	popq	%r10	#
	.cfi_def_cfa_offset 40
	movq	%rbx, %rdi	# k,
	popq	%rbx	#
	.cfi_def_cfa_offset 32
	popq	%rbp	#
	.cfi_def_cfa_offset 24
	popq	%r12	#
	.cfi_def_cfa_offset 16
	popq	%r13	#
	.cfi_def_cfa_offset 8
	jmp	pic16_core_instruction_nope	#
	.cfi_endproc
.LFE68:
	.size	pic16_erase_block, .-pic16_erase_block
	.globl	pic16_erase_row
	.type	pic16_erase_row, @function
pic16_erase_row:
.LFB69:
	.cfi_startproc
	movl	pic16_index(%rip), %eax	# pic16_index, pic16_index.34
	pushq	%r14	#
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%r13	#
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	imulq	$1068, %rax, %rax	#, pic16_index.34, tmp79
	pushq	%r12	#
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	movl	%esi, %r12d	# address, address
	pushq	%rbp	#
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	movl	%edx, %ebp	# nrows, nrows
	cmpl	$39687, pic16_map+1036(%rax)	#, pic16_map[pic16_index.34_5].datasheet
	pushq	%rbx	#
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	leaq	pic16_map+1040(%rax), %rax	#, tmp103
	movq	%rdi, %rbx	# k, k
	jne	.L159	#,
	movl	12(%rax), %r13d	# pic16_map[pic16_index.34_5].p10, h
	xorl	%r14d, %r14d	# l
	jmp	.L160	#
.L159:
	movl	4(%rax), %r13d	# pic16_map[pic16_index.34_5].p9, h
	movl	12(%rax), %r14d	# pic16_map[pic16_index.34_5].p10, l
.L160:
	movq	%rbx, %rdi	# k,
	call	pic16_init_code_memory_access	#
	movq	%rbx, %rdi	# k,
	call	pic16_write_enable	#
	jmp	.L161	#
.L165:
	movl	%r12d, %esi	# address,
	movq	%rbx, %rdi	# k,
	call	pic16_set_table_pointer	#
	movq	%rbx, %rdi	# k,
	call	pic16_free	#
	movq	%rbx, %rdi	# k,
	call	pic16_write	#
	movl	pic16_index(%rip), %eax	# pic16_index, pic16_index
	imulq	$1068, %rax, %rax	#, pic16_index, tmp95
	movl	pic16_map+1036(%rax), %eax	# pic16_map[pic16_index.34_22].datasheet, pic16_map[pic16_index.34_22].datasheet
	cmpl	$30500, %eax	#, pic16_map[pic16_index.34_22].datasheet
	je	.L163	#,
	ja	.L164	#,
	cmpl	$30480, %eax	#, pic16_map[pic16_index.34_22].datasheet
	jmp	.L180	#
.L164:
	cmpl	$39576, %eax	#, pic16_map[pic16_index.34_22].datasheet
	je	.L163	#,
	cmpl	$39592, %eax	#, pic16_map[pic16_index.34_22].datasheet
.L180:
	jne	.L162	#,
.L163:
	xorl	%esi, %esi	#
	movq	%rbx, %rdi	# k,
	call	pic16_table_write_start_programming	#
.L162:
	movl	%r14d, %edx	# l,
	movl	%r13d, %esi	# h,
	movq	%rbx, %rdi	# k,
	call	pic16_core_instruction_nopp	#
	movl	pic16_index(%rip), %eax	# pic16_index, pic16_index
	decl	%ebp	# nrows
	imulq	$1068, %rax, %rax	#, pic16_index, tmp100
	movzwl	pic16_map+1066(%rax), %eax	# pic16_map[pic16_index.34_26].erasesize, pic16_map[pic16_index.34_26].erasesize
	addl	%eax, %r12d	# pic16_map[pic16_index.34_26].erasesize, address
.L161:
	testl	%ebp, %ebp	# nrows
	jne	.L165	#,
	movq	%rbx, %rdi	# k,
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
	jmp	pic16_write_disable	#
	.cfi_endproc
.LFE69:
	.size	pic16_erase_row, .-pic16_erase_row
	.section	.rodata.str1.1
.LC22:
	.string	"%s: information: unimplemented\n"
	.text
	.globl	pic16_bulk_erase
	.type	pic16_bulk_erase, @function
pic16_bulk_erase:
.LFB70:
	.cfi_startproc
	pushq	%rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %rbx	# k, k
	call	pic16_program_verify	#
	movl	pic16_index(%rip), %eax	# pic16_index, pic16_index
	imulq	$1068, %rax, %rax	#, pic16_index, tmp68
	movl	pic16_map+1036(%rax), %eax	# pic16_map[pic16_index.32_2].datasheet, pic16_map[pic16_index.32_2].datasheet
	cmpl	$39752, %eax	#, pic16_map[pic16_index.32_2].datasheet
	je	.L186	#,
	ja	.L189	#,
	cmpl	$39576, %eax	#, pic16_map[pic16_index.32_2].datasheet
	je	.L183	#,
	ja	.L190	#,
	cmpl	$30480, %eax	#, pic16_map[pic16_index.32_2].datasheet
	je	.L183	#,
	cmpl	$30500, %eax	#, pic16_map[pic16_index.32_2].datasheet
	jmp	.L222	#
.L190:
	cmpl	$39622, %eax	#, pic16_map[pic16_index.32_2].datasheet
	je	.L184	#,
	cmpl	$39687, %eax	#, pic16_map[pic16_index.32_2].datasheet
	je	.L185	#,
	cmpl	$39592, %eax	#, pic16_map[pic16_index.32_2].datasheet
.L222:
	jne	.L182	#,
	jmp	.L183	#
.L189:
	cmpl	$41342, %eax	#, pic16_map[pic16_index.32_2].datasheet
	je	.L188	#,
	ja	.L191	#,
	cmpl	$39972, %eax	#, pic16_map[pic16_index.32_2].datasheet
	je	.L187	#,
	cmpl	$41297, %eax	#, pic16_map[pic16_index.32_2].datasheet
	jmp	.L224	#
.L191:
	cmpl	$41398, %eax	#, pic16_map[pic16_index.32_2].datasheet
	je	.L188	#,
	cmpl	$41630, %eax	#, pic16_map[pic16_index.32_2].datasheet
	je	.L188	#,
	cmpl	$41357, %eax	#, pic16_map[pic16_index.32_2].datasheet
.L224:
	jne	.L182	#,
	jmp	.L188	#
.L183:
	movl	$3932164, %esi	#,
	movq	%rbx, %rdi	# k,
	call	pic16_set_table_pointer	#
	movl	$128, %esi	#,
	jmp	.L225	#
.L184:
	movl	$3932165, %esi	#,
	movq	%rbx, %rdi	# k,
	call	pic16_set_table_pointer	#
	movl	$16191, %esi	#,
.L226:
	movq	%rbx, %rdi	# k,
	call	pic16_table_write	#
	movl	$3932164, %esi	#,
	movq	%rbx, %rdi	# k,
	call	pic16_set_table_pointer	#
	movl	$36751, %esi	#,
.L225:
	movq	%rbx, %rdi	# k,
	call	pic16_table_write	#
	movq	%rbx, %rdi	# k,
	xorl	%esi, %esi	#
	call	pic16_core_instruction	#
	movq	%rbx, %rdi	# k,
	call	pic16_core_instruction_nope	#
	jmp	.L192	#
.L186:
	movl	$3932165, %esi	#,
	movq	%rbx, %rdi	# k,
	call	pic16_set_table_pointer	#
	movl	$3855, %esi	#,
	movq	%rbx, %rdi	# k,
	call	pic16_table_write	#
	movl	$3932164, %esi	#,
	movq	%rbx, %rdi	# k,
	call	pic16_set_table_pointer	#
	movl	$34695, %esi	#,
	jmp	.L225	#
.L188:
	movl	$3932165, %esi	#,
	movq	%rbx, %rdi	# k,
	call	pic16_set_table_pointer	#
	movl	$3855, %esi	#,
	jmp	.L226	#
.L187:
	movq	%rbx, %rdi	# k,
	movl	$8388868, %esi	#,
	call	pic16_erase_block	#
	movq	%rbx, %rdi	# k,
	movl	$8389124, %esi	#,
	call	pic16_erase_block	#
	movq	%rbx, %rdi	# k,
	movl	$8389636, %esi	#,
	call	pic16_erase_block	#
	movq	%rbx, %rdi	# k,
	movl	$8390660, %esi	#,
	call	pic16_erase_block	#
	movq	%rbx, %rdi	# k,
	movl	$8388613, %esi	#,
	call	pic16_erase_block	#
	movq	%rbx, %rdi	# k,
	movl	$8388610, %esi	#,
	call	pic16_erase_block	#
	movl	$1, %edx	#,
	movl	$2097152, %esi	#,
	movq	%rbx, %rdi	# k,
	call	pic16_erase_row	#
	jmp	.L192	#
.L185:
	movl	$3932165, %esi	#,
	movq	%rbx, %rdi	# k,
	call	pic16_set_table_pointer	#
	movl	$257, %esi	#,
	movq	%rbx, %rdi	# k,
	call	pic16_table_write	#
	movl	$3932164, %esi	#,
	movq	%rbx, %rdi	# k,
	call	pic16_set_table_pointer	#
	movl	$32896, %esi	#,
	jmp	.L225	#
.L182:
	movl	$__func__.5909, %edx	#,
	movl	$.LC22, %esi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
.L192:
	movq	%rbx, %rdi	# k,
	popq	%rbx	#
	.cfi_def_cfa_offset 8
	jmp	pic16_standby	#
	.cfi_endproc
.LFE70:
	.size	pic16_bulk_erase, .-pic16_bulk_erase
	.globl	pic16_set_data_pointer
	.type	pic16_set_data_pointer, @function
pic16_set_data_pointer:
.LFB77:
	.cfi_startproc
	movl	pic16_index(%rip), %eax	# pic16_index, pic16_index
	pushq	%r12	#
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	movl	%esi, %r12d	#, D.6666
	shrw	$8, %r12w	#, D.6666
	movzbl	%sil, %esi	# address, tmp85
	pushq	%rbp	#
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movb	$116, %bpl	#, eeadrl
	imulq	$1068, %rax, %rax	#, pic16_index, tmp81
	pushq	%rbx	#
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%rdi, %rbx	# k, k
	cmpl	$39972, pic16_map+1036(%rax)	#, pic16_map[pic16_index.26_25].datasheet
	movb	$-87, %al	#, tmp96
	cmovne	%eax, %ebp	# tmp96,, eeadrl
	orl	$3584, %esi	#, tmp85
	orw	$3584, %r12w	#, tmp90
	call	pic16_core_instruction	#
	movl	$253, %esi	#, tmp88
	movq	%rbx, %rdi	# k,
	andl	%ebp, %esi	# eeadrl, tmp88
	incl	%ebp	# tmp92
	orl	$28160, %esi	#, tmp88
	call	pic16_core_instruction	#
	movzwl	%r12w, %esi	# tmp90, tmp91
	movq	%rbx, %rdi	# k,
	call	pic16_core_instruction	#
	movq	%rbx, %rdi	# k,
	movzbl	%bpl, %esi	# tmp92, tmp95
	popq	%rbx	#
	.cfi_def_cfa_offset 24
	popq	%rbp	#
	.cfi_def_cfa_offset 16
	popq	%r12	#
	.cfi_def_cfa_offset 8
	orl	$28160, %esi	#, tmp95
	jmp	pic16_core_instruction	#
	.cfi_endproc
.LFE77:
	.size	pic16_set_data_pointer, .-pic16_set_data_pointer
	.globl	pic16_read_data_memory
	.type	pic16_read_data_memory, @function
pic16_read_data_memory:
.LFB78:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movb	$115, %bpl	#, eedata
	pushq	%rbx	#
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rdi, %rbx	# k, k
	pushq	%r11	#
	.cfi_def_cfa_offset 32
	movl	pic16_index(%rip), %eax	# pic16_index, pic16_index
	imulq	$1068, %rax, %rax	#, pic16_index, tmp76
	cmpl	$39972, pic16_map+1036(%rax)	#, pic16_map[pic16_index.24_17].datasheet
	movb	$-88, %al	#, tmp86
	cmovne	%eax, %ebp	# tmp86,, eedata
	call	pic16_eecon1	#
	movzbl	%al, %esi	# eecon1, tmp80
	movq	%rbx, %rdi	# k,
	orl	$32768, %esi	#, tmp80
	call	pic16_core_instruction	#
	movl	$251, %esi	#, tmp83
	movq	%rbx, %rdi	# k,
	andl	%ebp, %esi	# eedata, tmp83
	orl	$20480, %esi	#, tmp83
	call	pic16_core_instruction	#
	movq	%rbx, %rdi	# k,
	movl	$28405, %esi	#,
	call	pic16_core_instruction	#
	movq	%rbx, %rdi	# k,
	xorl	%esi, %esi	#
	call	pic16_core_instruction	#
	movq	%rbx, %rdi	# k,
	movl	$4, %edx	#,
	movl	$2, %esi	#,
	call	io_program_out	#
	movq	%rbx, %rdi	# k,
	movl	$16, %esi	#,
	call	io_program_in	#
	popq	%rbx	#
	.cfi_def_cfa_offset 24
	popq	%rbx	#
	.cfi_def_cfa_offset 16
	shrl	$8, %eax	#, tmp85
	popq	%rbp	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE78:
	.size	pic16_read_data_memory, .-pic16_read_data_memory
	.globl	pic16_read_data_memory_block
	.type	pic16_read_data_memory_block, @function
pic16_read_data_memory_block:
.LFB76:
	.cfi_startproc
	pushq	%r14	#
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	movq	%rsi, %r14	# data, data
	pushq	%r13	#
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	movzwl	%cx, %r13d	# size,
	pushq	%r12	#
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	movl	%edx, %r12d	# addr, addr
	pushq	%rbp	#
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	xorl	%ebp, %ebp	# ivtmp.459
	pushq	%rbx	#
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	movq	%rdi, %rbx	# k, k
	call	pic16_program_verify	#
	movq	%rbx, %rdi	# k,
	call	pic16_init_data_memory_access	#
	jmp	.L236	#
.L237:
	leal	0(%rbp,%r12), %esi	#, tmp88
	movq	%rbx, %rdi	# k,
	movzwl	%si, %esi	# tmp88, tmp89
	call	pic16_set_data_pointer	#
	movq	%rbx, %rdi	# k,
	call	pic16_read_data_memory	#
	movzbl	%al, %eax	# D.6692, D.6692
	movw	%ax, (%r14,%rbp,2)	# D.6692, MEM[base: data_13(D), index: ivtmp.459_27, step: 2, offset: 0B]
	incq	%rbp	# ivtmp.459
.L236:
	cmpl	%ebp, %r13d	# ivtmp.459, size
	ja	.L237	#,
	movq	%rbx, %rdi	# k,
	call	pic16_standby	#
	popq	%rbx	#
	.cfi_def_cfa_offset 40
	popq	%rbp	#
	.cfi_def_cfa_offset 32
	movl	%r12d, %eax	# addr,
	popq	%r12	#
	.cfi_def_cfa_offset 24
	popq	%r13	#
	.cfi_def_cfa_offset 16
	popq	%r14	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE76:
	.size	pic16_read_data_memory_block, .-pic16_read_data_memory_block
	.section	.rodata.str1.1
.LC23:
	.string	"%s: information: data write timed out.\n"
	.text
	.globl	pic16_write_data_memory
	.type	pic16_write_data_memory, @function
pic16_write_data_memory:
.LFB79:
	.cfi_startproc
	pushq	%r13	#
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	movl	%esi, %r13d	# data, data
	pushq	%r12	#
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp	#
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	movb	$115, %bpl	#, eedata
	pushq	%rbx	#
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	movq	%rdi, %rbx	# k, k
	subq	$40, %rsp	#,
	.cfi_def_cfa_offset 80
	movl	pic16_index(%rip), %eax	# pic16_index, pic16_index
	imulq	$1068, %rax, %rax	#, pic16_index, tmp89
	cmpl	$39972, pic16_map+1036(%rax)	#, pic16_map[pic16_index.24_62].datasheet
	movb	$-88, %al	#, tmp115
	cmovne	%eax, %ebp	# tmp115,, eedata
	call	pic16_eecon1	#
	movzbl	%r13b, %esi	# data, tmp93
	movq	%rbx, %rdi	# k,
	movzbl	%al, %r12d	#,
	orl	$3584, %esi	#, tmp93
	call	pic16_core_instruction	#
	movl	$251, %esi	#, tmp96
	movq	%rbx, %rdi	# k,
	andl	%ebp, %esi	# eedata, tmp96
	orl	$28160, %esi	#, tmp96
	call	pic16_core_instruction	#
	movq	%rbx, %rdi	# k,
	call	pic16_write_enable	#
	movl	pic16_index(%rip), %eax	# pic16_index, pic16_index
	imulq	$1068, %rax, %rax	#, pic16_index, tmp99
	movl	pic16_map+1036(%rax), %edx	# pic16_map[pic16_index.23_11].datasheet, pic16_map[pic16_index.23_11].datasheet
	cmpl	$30500, %edx	#, pic16_map[pic16_index.23_11].datasheet
	je	.L242	#,
	ja	.L243	#,
	cmpl	$30480, %edx	#, pic16_map[pic16_index.23_11].datasheet
	jmp	.L266	#
.L243:
	cmpl	$39576, %edx	#, pic16_map[pic16_index.23_11].datasheet
	je	.L242	#,
	cmpl	$39592, %edx	#, pic16_map[pic16_index.23_11].datasheet
.L266:
	jne	.L241	#,
.L242:
	movl	$3669, %esi	#,
	movq	%rbx, %rdi	# k,
	call	pic16_core_instruction	#
	movl	$28327, %esi	#,
	movq	%rbx, %rdi	# k,
	call	pic16_core_instruction	#
	movl	$3754, %esi	#,
	movq	%rbx, %rdi	# k,
	call	pic16_core_instruction	#
	movl	$28327, %esi	#,
	movq	%rbx, %rdi	# k,
	call	pic16_core_instruction	#
.L241:
	movq	%rbx, %rdi	# k,
	orl	$20480, %r12d	#, tmp120
	call	pic16_write	#
	xorl	%esi, %esi	#
	movq	%rsp, %rdi	#,
	call	gettimeofday	#
.L248:
	movl	%r12d, %esi	# tmp120,
	movq	%rbx, %rdi	# k,
	call	pic16_core_instruction	#
	movl	$28405, %esi	#,
	movq	%rbx, %rdi	# k,
	call	pic16_core_instruction	#
	xorl	%esi, %esi	#
	movq	%rbx, %rdi	# k,
	call	pic16_core_instruction	#
	leaq	16(%rsp), %rdi	#,
	xorl	%esi, %esi	#
	call	gettimeofday	#
	movq	24(%rsp), %rdx	# tv2.tv_usec, tmp117
	subq	8(%rsp), %rdx	# tv1.tv_usec, tmp117
	movl	$2, %esi	#,
	movq	16(%rsp), %rbp	# tv2.tv_sec, tv3$tv_sec
	subq	(%rsp), %rbp	# tv1.tv_sec, tv3$tv_sec
	movq	%rbx, %rdi	# k,
	shrq	$63, %rdx	#, tmp117
	subq	%rdx, %rbp	# tmp117, tv3$tv_sec
	movl	$4, %edx	#,
	call	io_program_out	#
	movl	$16, %esi	#,
	movq	%rbx, %rdi	# k,
	call	io_program_in	#
	testb	$2, %ah	#, D.7740
	jne	.L245	#,
.L249:
	movq	%rbx, %rdi	# k,
	call	pic16_write_disable	#
	testq	%rbp, %rbp	# tv3$tv_sec
	jg	.L246	#,
	jmp	.L239	#
.L245:
	testq	%rbp, %rbp	# tv3$tv_sec
	jle	.L248	#,
	jmp	.L249	#
.L246:
	movl	$__func__.6002, %edx	#,
	movl	$.LC23, %esi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
.L239:
	addq	$40, %rsp	#,
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
.LFE79:
	.size	pic16_write_data_memory, .-pic16_write_data_memory
	.section	.rodata.str1.1
.LC24:
	.string	"%s: information: data EEPROM/flash is not supported on this device\n"
.LC25:
	.string	"%s: information: IDLOCATIONS are not supported on this device\n"
.LC26:
	.string	"%s: information: program flash row is out of range\n"
	.text
	.globl	pic16_row_erase
	.type	pic16_row_erase, @function
pic16_row_erase:
.LFB71:
	.cfi_startproc
	pushq	%r12	#
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	cmpl	$-3, %esi	#, row
	pushq	%rbp	#
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx	#
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%rdi, %rbx	# k, k
	jne	.L268	#,
	movl	pic16_index(%rip), %eax	# pic16_index, pic16_index
	imulq	$1068, %rax, %rax	#, pic16_index, tmp95
	cmpw	$0, pic16_map+1032(%rax)	#, pic16_map[pic16_index.31_5].eeprom
	jne	.L269	#,
	movl	$__func__.5915, %edx	#,
	movl	$.LC24, %esi	#,
	jmp	.L276	#
.L269:
	call	pic16_program_verify	#
	xorl	%ebp, %ebp	# i
	jmp	.L270	#
.L271:
	movzwl	%si, %esi	# D.7768, D.7768
	movq	%rbx, %rdi	# k,
	incl	%ebp	# i
	call	pic16_set_data_pointer	#
	movl	$255, %esi	#,
	movq	%rbx, %rdi	# k,
	call	pic16_write_data_memory	#
.L270:
	movl	pic16_index(%rip), %eax	# pic16_index, pic16_index
	leal	4(%rbp), %esi	#, D.7768
	imulq	$1068, %rax, %rax	#, pic16_index, tmp100
	movzwl	pic16_map+1032(%rax), %eax	# pic16_map[pic16_index.31_10].eeprom, pic16_map[pic16_index.31_10].eeprom
	cmpl	%eax, %ebp	# pic16_map[pic16_index.31_10].eeprom, i
	jl	.L271	#,
	jmp	.L278	#
.L268:
	cmpl	$-1, %esi	#, row
	jne	.L272	#,
	movl	pic16_index(%rip), %eax	# pic16_index, pic16_index
	imulq	$1068, %rax, %rax	#, pic16_index, tmp105
	cmpl	$39687, pic16_map+1036(%rax)	#, pic16_map[pic16_index.31_16].datasheet
	jne	.L273	#,
	movl	$__func__.5915, %edx	#,
	movl	$.LC25, %esi	#,
.L276:
	popq	%rbx	#
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbp	#
	.cfi_def_cfa_offset 16
	popq	%r12	#
	.cfi_def_cfa_offset 8
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	jmp	__printf_chk	#
.L273:
	.cfi_restore_state
	call	pic16_program_verify	#
	movl	$1, %edx	#,
	movl	$2097152, %esi	#,
	jmp	.L277	#
.L272:
	movl	pic16_index(%rip), %eax	# pic16_index, pic16_index.31
	movl	%edx, %edi	# nrows, nrows
	xorl	%edx, %edx	# tmp118
	imulq	$1068, %rax, %rax	#, pic16_index.31, tmp109
	movzwl	pic16_map+1066(%rax), %ecx	# pic16_map[pic16_index.31_18].erasesize, D.6777
	movl	pic16_map+1028(%rax), %eax	# pic16_map[pic16_index.31_18].flash, pic16_map[pic16_index.31_18].flash
	addl	%eax, %eax	# tmp115
	divl	%ecx	# D.6777
	cmpl	%eax, %esi	# tmp117, row
	jb	.L274	#,
	movl	$__func__.5915, %edx	#,
	movl	$.LC26, %esi	#,
	jmp	.L276	#
.L274:
	subl	%esi, %eax	# row, tmp119
	movl	%esi, %ebp	# row, address
	cmpl	%eax, %edi	# tmp119, nrows
	movl	%eax, %r12d	# tmp119, nrows
	cmovbe	%edi, %r12d	# nrows,, nrows
	movq	%rbx, %rdi	# k,
	imull	%ecx, %ebp	# D.6777, address
	call	pic16_program_verify	#
	movl	%r12d, %edx	# nrows,
	movl	%ebp, %esi	# address,
.L277:
	movq	%rbx, %rdi	# k,
	call	pic16_erase_row	#
.L278:
	movq	%rbx, %rdi	# k,
	popq	%rbx	#
	.cfi_def_cfa_offset 24
	popq	%rbp	#
	.cfi_def_cfa_offset 16
	popq	%r12	#
	.cfi_def_cfa_offset 8
	jmp	pic16_standby	#
	.cfi_endproc
.LFE71:
	.size	pic16_row_erase, .-pic16_row_erase
	.globl	pic16_write_buffer_init
	.type	pic16_write_buffer_init, @function
pic16_write_buffer_init:
.LFB80:
	.cfi_startproc
	movl	pic16_index(%rip), %eax	# pic16_index, pic16_index
	pushq	%rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %rbx	# k, k
	imulq	$1068, %rax, %rax	#, pic16_index, tmp64
	movl	pic16_map+1036(%rax), %eax	# pic16_map[pic16_index.22_1].datasheet, pic16_map[pic16_index.22_1].datasheet
	cmpl	$30500, %eax	#, pic16_map[pic16_index.22_1].datasheet
	je	.L281	#,
	ja	.L282	#,
	cmpl	$30480, %eax	#, pic16_map[pic16_index.22_1].datasheet
	jmp	.L297	#
.L282:
	cmpl	$39576, %eax	#, pic16_map[pic16_index.22_1].datasheet
	je	.L281	#,
	cmpl	$39592, %eax	#, pic16_map[pic16_index.22_1].datasheet
.L297:
	jne	.L280	#,
.L281:
	movq	%rbx, %rdi	# k,
	call	pic16_init_config_memory_access	#
	movl	$3932166, %esi	#,
	movq	%rbx, %rdi	# k,
	call	pic16_set_table_pointer	#
	xorl	%esi, %esi	#
	movq	%rbx, %rdi	# k,
	call	pic16_table_write	#
.L280:
	movq	%rbx, %rdi	# k,
	popq	%rbx	#
	.cfi_def_cfa_offset 8
	jmp	pic16_init_code_memory_access	#
	.cfi_endproc
.LFE80:
	.size	pic16_write_buffer_init, .-pic16_write_buffer_init
	.globl	pic16_write_buffer
	.type	pic16_write_buffer, @function
pic16_write_buffer:
.LFB81:
	.cfi_startproc
	pushq	%r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movl	%r8d, %r15d	# buffer_size, buffer_size
	pushq	%r14	#
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13	#
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movq	%rcx, %r12	# buffer, buffer
	pushq	%rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movq	%rdi, %rbp	# k, k
	pushq	%rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$24, %rsp	#,
	.cfi_def_cfa_offset 80
	movl	pic16_index(%rip), %eax	# pic16_index, pic16_index.21
	imulq	$1068, %rax, %rax	#, pic16_index.21, tmp132
	cmpl	$39687, pic16_map+1036(%rax)	#, pic16_map[pic16_index.21_4].datasheet
	leaq	pic16_map+1040(%rax), %rax	#, tmp163
	movl	4(%rax), %r13d	# pic16_map[pic16_index.21_4].p9, h
	jne	.L304	#,
	xorl	%r14d, %r14d	# l
	jmp	.L301	#
.L304:
	movl	12(%rax), %r14d	# pic16_map[pic16_index.21_4].p10, l
.L301:
	movl	%edx, %esi	# address,
	movq	%rbp, %rdi	# k,
	subl	$2, %r15d	#,
	call	pic16_set_table_pointer	#
	xorl	%ebx, %ebx	#
	movl	%r15d, 12(%rsp)	#, %sfp
	jmp	.L302	#
.L303:
	movzbl	(%r12,%rax), %edx	# *D.6597_21, tmp150
	movl	%ebx, %eax	# i, i
	movl	$13, %esi	#,
	movzbl	(%r12,%rax), %r15d	# *D.6603_27, word
	movq	%rbp, %rdi	# k,
	addl	$2, %ebx	#,
	sall	$8, %edx	#, tmp150
	orl	%edx, %r15d	# tmp150, word
	movl	$4, %edx	#,
	call	io_program_out	#
	movzwl	%r15w, %esi	# word, word
	movl	$16, %edx	#,
	movq	%rbp, %rdi	# k,
	call	io_program_out	#
.L302:
	cmpl	12(%rsp), %ebx	# %sfp, i
	leal	1(%rbx), %eax	#,
	jb	.L303	#,
	movzbl	(%r12,%rax), %eax	# *D.6597_36, tmp158
	movzbl	(%r12,%rbx), %esi	# *D.6603_42, tmp161
	movq	%rbp, %rdi	# k,
	sall	$8, %eax	#, tmp158
	orl	%eax, %esi	# tmp158, tmp161
	movzwl	%si, %esi	# tmp161, tmp162
	call	pic16_table_write_start_programming	#
	addq	$24, %rsp	#,
	.cfi_def_cfa_offset 56
	movq	%rbp, %rdi	# k,
	movl	%r13d, %esi	# h,
	popq	%rbx	#
	.cfi_def_cfa_offset 48
	popq	%rbp	#
	.cfi_def_cfa_offset 40
	popq	%r12	#
	.cfi_def_cfa_offset 32
	popq	%r13	#
	.cfi_def_cfa_offset 24
	movl	%r14d, %edx	# l,
	popq	%r14	#
	.cfi_def_cfa_offset 16
	popq	%r15	#
	.cfi_def_cfa_offset 8
	jmp	pic16_core_instruction_nopp	#
	.cfi_endproc
.LFE81:
	.size	pic16_write_buffer, .-pic16_write_buffer
	.section	.rodata.str1.1
.LC27:
	.string	"%s: fatal error: zero sized buffer\n"
.LC28:
	.string	"%s: fatal error: malloc failed\n"
	.text
	.globl	pic16_write_buffered
	.type	pic16_write_buffered, @function
pic16_write_buffered:
.LFB82:
	.cfi_startproc
	pushq	%r14	#
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	movl	%ecx, %eax	# mode, tmp103
	andl	$-3, %eax	#, tmp103
	pushq	%r13	#
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	decl	%eax	# tmp103
	movl	%edx, %r13d	# data2, data2
	pushq	%r12	#
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	movl	%esi, %r12d	# data1, data1
	pushq	%rbp	#
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	movl	%ecx, %ebp	# mode, mode
	pushq	%rbx	#
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	movq	%rdi, %rbx	# k, k
	jne	.L308	#,
	movq	buffer.6037(%rip), %rcx	# buffer, buffer.13
	testq	%rcx, %rcx	# buffer.13
	je	.L309	#,
	cmpl	$0, write_pending.6039(%rip)	#, write_pending
	je	.L310	#,
	movl	buffer_size.6038(%rip), %r8d	# buffer_size,
	movl	buffer_address.6036(%rip), %edx	# buffer_address,
	movl	buffer_region.6035(%rip), %esi	# buffer_region,
	movl	$0, write_pending.6039(%rip)	#, write_pending
	call	pic16_write_buffer	#
.L310:
	movq	buffer.6037(%rip), %rdi	# buffer,
	call	free	#
	movl	$0, buffer_region.6035(%rip)	#, buffer_region
	movl	$0, buffer_address.6036(%rip)	#, buffer_address
	movq	$0, buffer.6037(%rip)	#, buffer
	movl	$0, buffer_size.6038(%rip)	#, buffer_size
.L309:
	cmpl	$1, %ebp	#, mode
	jne	.L308	#,
	movl	%r12d, buffer_region.6035(%rip)	# data1, buffer_region
	movl	%r13d, buffer_size.6038(%rip)	# data2, buffer_size
.L308:
	leal	-1(%rbp), %eax	#, tmp104
	cmpl	$1, %eax	#, tmp104
	ja	.L306	#,
	cmpq	$0, buffer.6037(%rip)	#, buffer
	jne	.L314	#,
	cmpl	$0, buffer_size.6038(%rip)	#, buffer_size
	jne	.L315	#,
	movl	$.LC27, %esi	#,
	movl	$1, %edi	#,
	movl	$__func__.6040, %edx	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	movl	$70, %esi	#,
	movq	%rbx, %rdi	# k,
	call	io_exit	#
.L315:
	movl	buffer_size.6038(%rip), %edi	# buffer_size, buffer_size
	call	malloc	#
	testq	%rax, %rax	# tmp106
	movq	%rax, buffer.6037(%rip)	# tmp106, buffer
	jne	.L316	#,
	movl	$.LC28, %esi	#,
	movl	$1, %edi	#,
	movl	$__func__.6040, %edx	#,
	call	__printf_chk	#
	movl	$70, %esi	#,
	movq	%rbx, %rdi	# k,
	call	io_exit	#
.L316:
	movl	buffer_size.6038(%rip), %ecx	# buffer_size, buffer_size
	movq	buffer.6037(%rip), %rdi	# buffer, buffer
	movb	$-1, %al	#, tmp111
	rep stosb
.L314:
	cmpl	$2, %ebp	#, mode
	jne	.L306	#,
	movl	buffer_size.6038(%rip), %r8d	# buffer_size, buffer_size.15
	movl	buffer_address.6036(%rip), %edx	# buffer_address, buffer_address.16
	movl	%r8d, %ebp	# buffer_size.15, new_address
	leal	-1(%r8), %r14d	#, mask
	negl	%ebp	# new_address
	andl	%r12d, %ebp	# data1, new_address
	cmpl	%edx, %ebp	# buffer_address.16, new_address
	je	.L318	#,
	cmpl	$0, write_pending.6039(%rip)	#, write_pending
	je	.L319	#,
	movq	buffer.6037(%rip), %rcx	# buffer,
	movl	buffer_region.6035(%rip), %esi	# buffer_region,
	movq	%rbx, %rdi	# k,
	movl	$0, write_pending.6039(%rip)	#, write_pending
	call	pic16_write_buffer	#
	movl	buffer_size.6038(%rip), %ecx	# buffer_size, buffer_size
	movq	buffer.6037(%rip), %rdi	# buffer, buffer
	movb	$-1, %al	#, tmp118
	rep stosb
.L319:
	movl	%ebp, buffer_address.6036(%rip)	# new_address, buffer_address
.L318:
	movq	buffer.6037(%rip), %rax	# buffer, buffer
	incl	write_pending.6039(%rip)	# write_pending
	andl	%r14d, %r12d	# mask, tmp121
	movb	%r13b, (%rax,%r12)	# data2, *D.6578_44
.L306:
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
.LFE82:
	.size	pic16_write_buffered, .-pic16_write_buffered
	.globl	pic16_goto100000
	.type	pic16_goto100000, @function
pic16_goto100000:
.LFB83:
	.cfi_startproc
	pushq	%rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movl	$61184, %esi	#,
	movq	%rdi, %rbx	# k, k
	call	pic16_core_instruction	#
	movq	%rbx, %rdi	# k,
	movl	$63488, %esi	#,
	popq	%rbx	#
	.cfi_def_cfa_offset 8
	jmp	pic16_core_instruction	#
	.cfi_endproc
.LFE83:
	.size	pic16_goto100000, .-pic16_goto100000
	.globl	pic16_write_configreg
	.type	pic16_write_configreg, @function
pic16_write_configreg:
.LFB84:
	.cfi_startproc
	pushq	%r14	#
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	movl	%ecx, %r14d	# l, l
	pushq	%r13	#
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	movl	%edx, %r13d	# h, h
	pushq	%r12	#
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	pushq	%rbp	#
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	movzbl	%sil, %ebp	# index, D.6528
	leal	1(%rbp), %eax	#, tmp78
	movslq	%ebp, %rdx	# D.6528, D.6528
	leal	3145728(%rbp), %esi	#, address
	movzbl	pic16_conf+10(%rdx), %r12d	# pic16_conf.config, data
	pushq	%rbx	#
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	movq	%rdi, %rbx	# k, k
	cltq
	movzbl	pic16_conf+10(%rax), %eax	# pic16_conf.config, tmp82
	sall	$8, %eax	#, tmp82
	orl	%eax, %r12d	# tmp82, data
	movzwl	%r12w, %r12d	# data, D.6538
	call	pic16_set_table_pointer	#
	movl	%r12d, %esi	# D.6538,
	movq	%rbx, %rdi	# k,
	call	pic16_table_write_start_programming	#
	movl	%r14d, %edx	# l,
	movl	%r13d, %esi	# h,
	movq	%rbx, %rdi	# k,
	call	pic16_core_instruction_nopp	#
	leal	3145729(%rbp), %esi	#, tmp86
	movq	%rbx, %rdi	# k,
	call	pic16_set_table_pointer	#
	movl	%r12d, %esi	# D.6538,
	movq	%rbx, %rdi	# k,
	call	pic16_table_write_start_programming	#
	movq	%rbx, %rdi	# k,
	movl	%r13d, %esi	# h,
	movl	%r14d, %edx	# l,
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
	jmp	pic16_core_instruction_nopp	#
	.cfi_endproc
.LFE84:
	.size	pic16_write_configreg, .-pic16_write_configreg
	.globl	pic16_write_config
	.type	pic16_write_config, @function
pic16_write_config:
.LFB85:
	.cfi_startproc
	movl	pic16_index(%rip), %eax	# pic16_index,
	movl	%eax, %edx	# pic16_index.11, pic16_index.11
	imulq	$1068, %rdx, %rdx	#, pic16_index.11, tmp68
	cmpl	$39687, pic16_map+1036(%rdx)	#, pic16_map[pic16_index.11_3].datasheet
	je	.L331	#,
	pushq	%r12	#
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp	#
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movl	pic16_map+1048(%rdx), %ebp	# pic16_map[pic16_index.11_3].p9a, h
	addq	$pic16_map+1040, %rdx	#, tmp73
	pushq	%rbx	#
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%rdi, %rbx	# k, k
	testl	%ebp, %ebp	# h
	jne	.L330	#,
	movl	4(%rdx), %ebp	# pic16_map[pic16_index.11_3].p9, h
.L330:
	imulq	$1068, %rax, %rax	#, pic16_index.11, tmp80
	movq	%rbx, %rdi	# k,
	movl	pic16_map+1052(%rax), %r12d	# pic16_map[pic16_index.11_3].p10, l
	call	pic16_program_verify	#
	movq	%rbx, %rdi	# k,
	call	pic16_init_config_memory_access	#
	movq	%rbx, %rdi	# k,
	call	pic16_goto100000	#
	movl	%r12d, %ecx	# l,
	movl	%ebp, %edx	# h,
	xorl	%esi, %esi	#
	movq	%rbx, %rdi	# k,
	call	pic16_write_configreg	#
	movl	%r12d, %ecx	# l,
	movl	%ebp, %edx	# h,
	movl	$2, %esi	#,
	movq	%rbx, %rdi	# k,
	call	pic16_write_configreg	#
	movl	%r12d, %ecx	# l,
	movl	%ebp, %edx	# h,
	movl	$4, %esi	#,
	movq	%rbx, %rdi	# k,
	call	pic16_write_configreg	#
	movl	%r12d, %ecx	# l,
	movl	%ebp, %edx	# h,
	movl	$6, %esi	#,
	movq	%rbx, %rdi	# k,
	call	pic16_write_configreg	#
	movl	%r12d, %ecx	# l,
	movl	%ebp, %edx	# h,
	movl	$8, %esi	#,
	movq	%rbx, %rdi	# k,
	call	pic16_write_configreg	#
	movl	%r12d, %ecx	# l,
	movl	%ebp, %edx	# h,
	movl	$12, %esi	#,
	movq	%rbx, %rdi	# k,
	call	pic16_write_configreg	#
	movl	%r12d, %ecx	# l,
	movl	%ebp, %edx	# h,
	movl	$10, %esi	#,
	movq	%rbx, %rdi	# k,
	call	pic16_write_configreg	#
	movq	%rbx, %rdi	# k,
	call	pic16_standby	#
	movl	$14, %eax	#, D.6521
	jmp	.L329	#
.L331:
	.cfi_def_cfa_offset 8
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 12
	xorl	%eax, %eax	# D.6521
	ret
.L329:
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	.cfi_offset 6, -24
	.cfi_offset 12, -16
	popq	%rbx	#
	.cfi_restore 3
	.cfi_def_cfa_offset 24
	popq	%rbp	#
	.cfi_restore 6
	.cfi_def_cfa_offset 16
	popq	%r12	#
	.cfi_restore 12
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE85:
	.size	pic16_write_config, .-pic16_write_config
	.section	.rodata.str1.1
.LC29:
	.string	"%s: warning: address unsupported [%06X]\n"
	.text
	.globl	pic16_getregion
	.type	pic16_getregion, @function
pic16_getregion:
.LFB86:
	.cfi_startproc
	pushq	%rcx	#
	.cfi_def_cfa_offset 16
	movl	pic16_index(%rip), %edx	# pic16_index,
	movl	%edi, %ecx	# address, address
	movl	%edx, %esi	# pic16_index.10, pic16_index.10
	imulq	$1068, %rsi, %rsi	#, pic16_index.10, tmp78
	movl	pic16_map+1028(%rsi), %eax	# pic16_map[pic16_index.10_2].flash, pic16_map[pic16_index.10_2].flash
	addq	$pic16_map+1024, %rsi	#, tmp79
	leal	-1(%rax,%rax), %edi	#, tmp82
	movl	$1, %eax	#, D.6496
	cmpl	%edi, %ecx	# tmp82, address
	jbe	.L335	#,
	movzwl	8(%rsi), %eax	# pic16_map[pic16_index.10_2].eeprom,
	testw	%ax, %ax	# D.6497
	je	.L336	#,
	addl	$15728639, %eax	#, tmp88
	cmpl	%eax, %ecx	# tmp88, address
	ja	.L336	#,
	cmpl	$15728639, %ecx	#, address
	movl	$4, %eax	#, D.6496
	ja	.L335	#,
.L336:
	imulq	$1068, %rdx, %rdx	#, pic16_index.10, tmp95
	cmpl	$39687, pic16_map+1036(%rdx)	#, pic16_map[pic16_index.10_2].datasheet
	je	.L338	#,
	leal	-2097152(%rcx), %edx	#, tmp97
	movl	$2, %eax	#, D.6496
	cmpl	$7, %edx	#, tmp97
	jbe	.L335	#,
	leal	-3145728(%rcx), %edx	#, tmp98
	movb	$3, %al	#,
	cmpl	$13, %edx	#, tmp98
	jbe	.L335	#,
.L338:
	movl	$__func__.6066, %edx	#,
	movl	$.LC29, %esi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	xorl	%eax, %eax	# D.6496
.L335:
	popq	%rdx	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE86:
	.size	pic16_getregion, .-pic16_getregion
	.section	.rodata.str1.1
.LC30:
	.string	"%s: warning: region unsupported [%d]\n"
	.text
	.globl	pic16_init_writeregion
	.type	pic16_init_writeregion, @function
pic16_init_writeregion:
.LFB87:
	.cfi_startproc
	cmpl	$2, %esi	#, region
	pushq	%rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movl	%esi, %ebx	# region, region
	je	.L353	#,
	ja	.L356	#,
	cmpl	$1, %esi	#, region
	jne	.L351	#,
	jmp	.L352	#
.L356:
	cmpl	$3, %esi	#, region
	je	.L354	#,
	cmpl	$4, %esi	#, region
	jne	.L351	#,
	jmp	.L355	#
.L352:
	movl	pic16_index(%rip), %eax	# pic16_index, pic16_index
	movl	$1, %ecx	#,
	movl	$1, %esi	#,
	imulq	$1068, %rax, %rax	#, pic16_index, tmp67
	movzbl	pic16_map+1041(%rax), %edx	# pic16_map[pic16_index.9_3].panelsize, pic16_map[pic16_index.9_3].panelsize
	jmp	.L361	#
.L353:
	movl	$1, %ecx	#,
	movl	$8, %edx	#,
	movl	$2, %esi	#,
.L361:
	call	pic16_write_buffered	#
	jmp	.L354	#
.L355:
	call	pic16_init_data_memory_access	#
	jmp	.L354	#
.L351:
	movl	%ebx, %ecx	# region,
	movl	$__func__.6075, %edx	#,
	movl	$.LC30, %esi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	xorl	%ebx, %ebx	# region
	call	__printf_chk	#
.L354:
	movl	%ebx, %eax	# region,
	popq	%rbx	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE87:
	.size	pic16_init_writeregion, .-pic16_init_writeregion
	.globl	pic16_writeregion
	.type	pic16_writeregion, @function
pic16_writeregion:
.LFB88:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	cmpl	$3, %edx	#, region
	movl	%ecx, %ebp	# data, data
	pushq	%rbx	#
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	pushq	%r11	#
	.cfi_def_cfa_offset 32
	je	.L365	#,
	movq	%rdi, %rbx	# k, k
	ja	.L367	#,
	cmpl	$1, %edx	#, region
	jb	.L363	#,
	jmp	.L369	#
.L367:
	cmpl	$4, %edx	#, region
	jne	.L363	#,
	jmp	.L366	#
.L369:
	popq	%r10	#
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx	#
	.cfi_def_cfa_offset 16
	popq	%rbp	#
	.cfi_def_cfa_offset 8
	movzbl	%cl, %edx	# data, data
	movl	$2, %ecx	#,
	jmp	pic16_write_buffered	#
.L365:
	.cfi_restore_state
	andl	$15, %esi	#, tmp71
	movb	%cl, pic16_conf+10(%rsi)	# data, pic16_conf.config
	jmp	.L370	#
.L366:
	andl	$65535, %esi	#, tmp73
	call	pic16_set_data_pointer	#
	popq	%r9	#
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	movq	%rbx, %rdi	# k,
	movzbl	%bpl, %esi	# data, data
	popq	%rbx	#
	.cfi_def_cfa_offset 16
	popq	%rbp	#
	.cfi_def_cfa_offset 8
	jmp	pic16_write_data_memory	#
.L363:
	.cfi_restore_state
	popq	%r8	#
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx	#
	.cfi_def_cfa_offset 16
	popq	%rbp	#
	.cfi_def_cfa_offset 8
	movl	%edx, %ecx	# region,
	movl	$.LC30, %esi	#,
	movl	$__func__.6088, %edx	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	jmp	__printf_chk	#
.L370:
	.cfi_restore_state
	popq	%rsi	#
	.cfi_def_cfa_offset 24
	popq	%rbx	#
	.cfi_def_cfa_offset 16
	popq	%rbp	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE88:
	.size	pic16_writeregion, .-pic16_writeregion
	.section	.rodata.str1.1
.LC31:
	.string	"Total: %u\n"
	.text
	.globl	pic16_program
	.type	pic16_program, @function
pic16_program:
.LFB91:
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
	movl	%edx, %r13d	# blank, blank
	movl	$1, %edx	#,
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
	subq	$24, %rsp	#,
	.cfi_def_cfa_offset 80
	call	inhx32	#
	testl	%eax, %eax	# D.6436
	je	.L372	#,
	testl	%r13d, %r13d	# blank
	je	.L374	#,
	movl	$65535, %edx	#,
	movl	$65535, %esi	#,
	movq	%rbx, %rdi	# k,
	call	pic16_bulk_erase	#
.L374:
	movq	%rbx, %rdi	# k,
	xorl	%r12d, %r12d	# i
	xorl	%ebp, %ebp	# total
	call	pic16_program_verify	#
	movq	%rbx, %rdi	# k,
	xorl	%r15d, %r15d	# current_region
	call	pic16_write_buffer_init	#
	jmp	.L375	#
.L380:
	movl	%r12d, %eax	# i, i
	leaq	0(,%rax,8), %rdx	#,
	movq	%rdx, 8(%rsp)	#, %sfp
	movq	3104(%rbx), %rdx	# k_13(D)->pdata, k_13(D)->pdata
	movq	(%rdx,%rax,8), %rax	# *D.7869_78, *D.7869_78
	movl	(%rax), %r14d	# D.7870_79->address, PC_address
	movl	%r14d, %edi	# PC_address,
	call	pic16_getregion	#
	testl	%eax, %eax	# new_region
	je	.L376	#,
	cmpl	%r15d, %eax	# current_region, new_region
	je	.L377	#,
	movl	$3, %ecx	#,
	movl	$65535, %edx	#,
	movl	$65535, %esi	#,
	movq	%rbx, %rdi	# k,
	movl	%eax, (%rsp)	#,
	call	pic16_write_buffered	#
	movl	(%rsp), %eax	#,
	movq	%rbx, %rdi	# k,
	movl	%eax, %esi	# new_region,
	call	pic16_init_writeregion	#
	testl	%eax, %eax	# current_region
	movl	%eax, %r15d	#, current_region
	je	.L376	#,
.L377:
	xorl	%r8d, %r8d	# ivtmp.553
	jmp	.L378	#
.L379:
	movzbl	4(%rdx,%rax,2), %ecx	# D.7870_84->bytes, tmp113
	movq	%rbx, %rdi	# k,
	movl	%r15d, %edx	# current_region,
	movq	%r8, (%rsp)	#,
	call	pic16_writeregion	#
	movq	(%rsp), %r8	#,
.L378:
	movq	8(%rsp), %rdi	# %sfp,
	movq	3104(%rbx), %rdx	# k_13(D)->pdata, k_13(D)->pdata
	movl	%r8d, %eax	# ivtmp.553,
	leal	(%r14,%r8), %esi	#, D.7909
	leal	0(%rbp,%r8), %ecx	#, total
	incq	%r8	# ivtmp.553
	movq	(%rdx,%rdi), %rdx	# *D.7869_96, D.7870
	movzwl	516(%rdx), %edi	# D.7870_84->nbytes, D.7870_84->nbytes
	cmpl	%edi, %eax	# D.7870_84->nbytes, D.7908
	jb	.L379	#,
	movl	%ecx, %ebp	# total, total
.L376:
	incl	%r12d	# i
.L375:
	cmpl	3112(%rbx), %r12d	# k_13(D)->count, i
	jb	.L380	#,
	movl	$3, %ecx	#,
	movl	$65535, %edx	#,
	movl	$65535, %esi	#,
	movq	%rbx, %rdi	# k,
	call	pic16_write_buffered	#
	movq	%rbx, %rdi	# k,
	call	pic16_standby	#
	testl	%r13d, %r13d	# blank
	je	.L381	#,
	movq	%rbx, %rdi	# k,
	call	pic16_write_config	#
	addl	%eax, %ebp	# D.7877, total
.L381:
	movl	%ebp, %edx	# total,
	movl	$1, %edi	#,
	movl	$.LC31, %esi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	addq	$24, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movq	%rbx, %rdi	# k,
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
	jmp	inhx32_free	#
.L372:
	.cfi_restore_state
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
.LFE91:
	.size	pic16_program, .-pic16_program
	.globl	pic16_init_verifyregion
	.type	pic16_init_verifyregion, @function
pic16_init_verifyregion:
.LFB89:
	.cfi_startproc
	cmpl	$1, %esi	#, region
	pushq	%rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movl	%esi, %ebx	# region, region
	jb	.L396	#,
	cmpl	$3, %esi	#, region
	jbe	.L397	#,
	cmpl	$4, %esi	#, region
	jne	.L396	#,
	jmp	.L398	#
.L397:
	call	pic16_init_code_memory_access	#
	jmp	.L399	#
.L398:
	call	pic16_init_data_memory_access	#
	jmp	.L399	#
.L396:
	movl	%ebx, %ecx	# region,
	movl	$__func__.6097, %edx	#,
	movl	$.LC30, %esi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	xorl	%ebx, %ebx	# region
	call	__printf_chk	#
.L399:
	movl	%ebx, %eax	# region,
	popq	%rbx	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE89:
	.size	pic16_init_verifyregion, .-pic16_init_verifyregion
	.section	.rodata.str1.1
.LC32:
	.string	"%s: error: read [%02X] expected [%02X] at [%05X]\n"
	.text
	.globl	pic16_verifyregion
	.type	pic16_verifyregion, @function
pic16_verifyregion:
.LFB90:
	.cfi_startproc
	cmpl	$3, %edx	#, region
	je	.L409	#,
	pushq	%r12	#
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	movl	%r8d, %r12d	# data, data
	pushq	%rbp	#
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movl	%esi, %ebp	# address, address
	pushq	%rbx	#
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%rdi, %rbx	# k, k
	ja	.L406	#,
	cmpl	$1, %edx	#, region
	jb	.L402	#,
	jmp	.L411	#
.L406:
	cmpl	$4, %edx	#, region
	jne	.L402	#,
	jmp	.L405	#
.L411:
	testw	%cx, %cx	# index
	jne	.L407	#,
	call	pic16_set_table_pointer	#
.L407:
	movq	%rbx, %rdi	# k,
	call	pic16_table_read_post_increment	#
	jmp	.L408	#
.L405:
	andl	$65535, %esi	#, tmp73
	call	pic16_set_data_pointer	#
	movq	%rbx, %rdi	# k,
	call	pic16_read_data_memory	#
	jmp	.L408	#
.L402:
	movl	%edx, %ecx	# region,
	movl	$.LC30, %esi	#,
	movl	$__func__.6112, %edx	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	jmp	.L414	#
.L408:
	xorl	%edx, %edx	# D.6465
	cmpb	%r12b, %al	# data, vdata
	je	.L404	#,
	movzbl	%al, %ecx	# vdata, vdata
	movl	%ebp, %r9d	# address,
	movzbl	%r12b, %r8d	# data,
	movl	$__func__.6112, %edx	#,
	movl	$.LC32, %esi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
.L414:
	movl	$1, %edx	#, D.6465
	jmp	.L404	#
.L409:
	.cfi_def_cfa_offset 8
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 12
	xorl	%edx, %edx	# D.6465
	movl	%edx, %eax	# D.6465,
	ret
.L404:
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	.cfi_offset 6, -24
	.cfi_offset 12, -16
	popq	%rbx	#
	.cfi_restore 3
	.cfi_def_cfa_offset 24
	popq	%rbp	#
	.cfi_restore 6
	.cfi_def_cfa_offset 16
	movl	%edx, %eax	# D.6465,
	popq	%r12	#
	.cfi_restore 12
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE90:
	.size	pic16_verifyregion, .-pic16_verifyregion
	.section	.rodata.str1.1
.LC33:
	.string	"Total: %u Pass: %u Fail: %u\n"
	.text
	.globl	pic16_verify
	.type	pic16_verify, @function
pic16_verify:
.LFB92:
	.cfi_startproc
	pushq	%r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movl	$1, %edx	#,
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
	movl	$1, %ebp	#, fail
	pushq	%rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rdi, %rbx	# k, k
	subq	$24, %rsp	#,
	.cfi_def_cfa_offset 80
	call	inhx32	#
	testl	%eax, %eax	# D.6409
	je	.L416	#,
	movq	%rbx, %rdi	# k,
	xorl	%r13d, %r13d	# i
	xorl	%r12d, %r12d	# total
	call	pic16_program_verify	#
	xorb	%bpl, %bpl	#
	xorl	%r15d, %r15d	# current_region
	jmp	.L417	#
.L422:
	movl	%r13d, %eax	# i, i
	leaq	0(,%rax,8), %rdx	#,
	movq	%rdx, 8(%rsp)	#, %sfp
	movq	3104(%rbx), %rdx	# k_17(D)->pdata, k_17(D)->pdata
	movq	(%rdx,%rax,8), %rax	# *D.7937_79, *D.7937_79
	movl	(%rax), %r14d	# D.7938_80->address, PC_address
	movl	%r14d, %edi	# PC_address,
	call	pic16_getregion	#
	testl	%eax, %eax	# new_region
	je	.L418	#,
	cmpl	%r15d, %eax	# current_region, new_region
	je	.L419	#,
	movl	%eax, %esi	# new_region,
	movq	%rbx, %rdi	# k,
	call	pic16_init_verifyregion	#
	testl	%eax, %eax	# current_region
	movl	%eax, %r15d	#, current_region
	je	.L418	#,
.L419:
	xorl	%r9d, %r9d	# ivtmp.589
	jmp	.L420	#
.L421:
	movl	%r9d, %edx	# ivtmp.589, D.7979
	movl	%r9d, %ecx	# ivtmp.589,
	movq	%rbx, %rdi	# k,
	movzbl	4(%rax,%rdx,2), %r8d	# D.7938_85->bytes,
	movl	%r15d, %edx	# current_region,
	movq	%r9, (%rsp)	#,
	call	pic16_verifyregion	#
	movq	(%rsp), %r9	#,
	addl	%eax, %ebp	# D.7943, fail
	incq	%r9	# ivtmp.589
.L420:
	movq	8(%rsp), %rcx	# %sfp,
	movq	3104(%rbx), %rax	# k_17(D)->pdata, k_17(D)->pdata
	leal	(%r14,%r9), %esi	#, D.7980
	leal	(%r12,%r9), %edx	#, total
	movq	(%rax,%rcx), %rax	# *D.7937_102, D.7938
	movzwl	516(%rax), %ecx	# D.7938_85->nbytes, D.7938_85->nbytes
	cmpl	%ecx, %r9d	# D.7938_85->nbytes, ivtmp.589
	jb	.L421	#,
	movl	%edx, %r12d	# total, total
.L418:
	incl	%r13d	# i
.L417:
	cmpl	3112(%rbx), %r13d	# k_17(D)->count, i
	jb	.L422	#,
	movq	%rbx, %rdi	# k,
	call	pic16_standby	#
	movl	%r12d, %ecx	# total, tmp120
	movl	$1, %edi	#,
	movl	%ebp, %r8d	# fail,
	subl	%ebp, %ecx	# fail, tmp120
	movl	%r12d, %edx	# total,
	movl	$.LC33, %esi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	movq	%rbx, %rdi	# k,
	call	inhx32_free	#
.L416:
	addq	$24, %rsp	#,
	.cfi_def_cfa_offset 56
	movl	%ebp, %eax	# fail,
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
.LFE92:
	.size	pic16_verify, .-pic16_verify
	.globl	pic16_index
	.data
	.align 4
	.type	pic16_index, @object
	.size	pic16_index, 4
pic16_index:
	.long	175
	.globl	pic16_map
	.align 16
	.type	pic16_map, @object
	.size	pic16_map, 187968
pic16_map:
# devicename:
	.string	"PIC18F2331"
	.zero	1013
# deviceid:
	.value	2272
# flash:
	.zero	2
	.long	4096
# eeprom:
	.value	256
# datasheet:
	.zero	2
	.long	30500
# devidrev4:
	.byte	0
# panelsize:
	.byte	8
# p9:
	.zero	2
	.long	1000
# p9a:
	.long	0
# p10:
	.long	5
# p11:
	.long	5000
# configaddr:
	.long	3145728
# configsize:
	.byte	14
# erasesize:
	.zero	1
	.value	64
# devicename:
	.string	"PIC18F4331"
	.zero	1013
# deviceid:
	.value	2208
# flash:
	.zero	2
	.long	4096
# eeprom:
	.value	256
# datasheet:
	.zero	2
	.long	30500
# devidrev4:
	.byte	0
# panelsize:
	.byte	8
# p9:
	.zero	2
	.long	1000
# p9a:
	.long	0
# p10:
	.long	5
# p11:
	.long	5000
# configaddr:
	.long	3145728
# configsize:
	.byte	14
# erasesize:
	.zero	1
	.value	64
# devicename:
	.string	"PIC18F2431"
	.zero	1013
# deviceid:
	.value	2240
# flash:
	.zero	2
	.long	8192
# eeprom:
	.value	256
# datasheet:
	.zero	2
	.long	30500
# devidrev4:
	.byte	0
# panelsize:
	.byte	8
# p9:
	.zero	2
	.long	1000
# p9a:
	.long	0
# p10:
	.long	5
# p11:
	.long	5000
# configaddr:
	.long	3145728
# configsize:
	.byte	14
# erasesize:
	.zero	1
	.value	64
# devicename:
	.string	"PIC18F4431"
	.zero	1013
# deviceid:
	.value	2176
# flash:
	.zero	2
	.long	8192
# eeprom:
	.value	256
# datasheet:
	.zero	2
	.long	30500
# devidrev4:
	.byte	0
# panelsize:
	.byte	8
# p9:
	.zero	2
	.long	1000
# p9a:
	.long	0
# p10:
	.long	5
# p11:
	.long	5000
# configaddr:
	.long	3145728
# configsize:
	.byte	14
# erasesize:
	.zero	1
	.value	64
# devicename:
	.string	"PIC18F242"
	.zero	1014
# deviceid:
	.value	1152
# flash:
	.zero	2
	.long	8192
# eeprom:
	.value	256
# datasheet:
	.zero	2
	.long	39576
# devidrev4:
	.byte	0
# panelsize:
	.byte	8
# p9:
	.zero	2
	.long	1000
# p9a:
	.long	0
# p10:
	.long	5
# p11:
	.long	10000
# configaddr:
	.long	3145728
# configsize:
	.byte	14
# erasesize:
	.zero	1
	.value	64
# devicename:
	.string	"PIC18F248"
	.zero	1014
# deviceid:
	.value	2048
# flash:
	.zero	2
	.long	8192
# eeprom:
	.value	256
# datasheet:
	.zero	2
	.long	39576
# devidrev4:
	.byte	0
# panelsize:
	.byte	8
# p9:
	.zero	2
	.long	1000
# p9a:
	.long	0
# p10:
	.long	5
# p11:
	.long	10000
# configaddr:
	.long	3145728
# configsize:
	.byte	14
# erasesize:
	.zero	1
	.value	64
# devicename:
	.string	"PIC18F252"
	.zero	1014
# deviceid:
	.value	1024
# flash:
	.zero	2
	.long	16384
# eeprom:
	.value	256
# datasheet:
	.zero	2
	.long	39576
# devidrev4:
	.byte	0
# panelsize:
	.byte	8
# p9:
	.zero	2
	.long	1000
# p9a:
	.long	0
# p10:
	.long	5
# p11:
	.long	10000
# configaddr:
	.long	3145728
# configsize:
	.byte	14
# erasesize:
	.zero	1
	.value	64
# devicename:
	.string	"PIC18F258"
	.zero	1014
# deviceid:
	.value	2112
# flash:
	.zero	2
	.long	16384
# eeprom:
	.value	256
# datasheet:
	.zero	2
	.long	39576
# devidrev4:
	.byte	0
# panelsize:
	.byte	8
# p9:
	.zero	2
	.long	1000
# p9a:
	.long	0
# p10:
	.long	5
# p11:
	.long	10000
# configaddr:
	.long	3145728
# configsize:
	.byte	14
# erasesize:
	.zero	1
	.value	64
# devicename:
	.string	"PIC18F442"
	.zero	1014
# deviceid:
	.value	1184
# flash:
	.zero	2
	.long	8192
# eeprom:
	.value	256
# datasheet:
	.zero	2
	.long	39576
# devidrev4:
	.byte	0
# panelsize:
	.byte	8
# p9:
	.zero	2
	.long	1000
# p9a:
	.long	0
# p10:
	.long	5
# p11:
	.long	10000
# configaddr:
	.long	3145728
# configsize:
	.byte	14
# erasesize:
	.zero	1
	.value	64
# devicename:
	.string	"PIC18F448"
	.zero	1014
# deviceid:
	.value	2080
# flash:
	.zero	2
	.long	8192
# eeprom:
	.value	256
# datasheet:
	.zero	2
	.long	39576
# devidrev4:
	.byte	0
# panelsize:
	.byte	8
# p9:
	.zero	2
	.long	1000
# p9a:
	.long	0
# p10:
	.long	5
# p11:
	.long	10000
# configaddr:
	.long	3145728
# configsize:
	.byte	14
# erasesize:
	.zero	1
	.value	64
# devicename:
	.string	"PIC18F452"
	.zero	1014
# deviceid:
	.value	1056
# flash:
	.zero	2
	.long	16384
# eeprom:
	.value	256
# datasheet:
	.zero	2
	.long	39576
# devidrev4:
	.byte	0
# panelsize:
	.byte	8
# p9:
	.zero	2
	.long	1000
# p9a:
	.long	0
# p10:
	.long	5
# p11:
	.long	10000
# configaddr:
	.long	3145728
# configsize:
	.byte	14
# erasesize:
	.zero	1
	.value	64
# devicename:
	.string	"PIC18F458"
	.zero	1014
# deviceid:
	.value	2144
# flash:
	.zero	2
	.long	16384
# eeprom:
	.value	256
# datasheet:
	.zero	2
	.long	39576
# devidrev4:
	.byte	0
# panelsize:
	.byte	8
# p9:
	.zero	2
	.long	1000
# p9a:
	.long	0
# p10:
	.long	5
# p11:
	.long	10000
# configaddr:
	.long	3145728
# configsize:
	.byte	14
# erasesize:
	.zero	1
	.value	64
# devicename:
	.string	"PIC18F2439"
	.zero	1013
# deviceid:
	.value	1152
# flash:
	.zero	2
	.long	6144
# eeprom:
	.value	256
# datasheet:
	.zero	2
	.long	30480
# devidrev4:
	.byte	0
# panelsize:
	.byte	8
# p9:
	.zero	2
	.long	1000
# p9a:
	.long	0
# p10:
	.long	5
# p11:
	.long	10000
# configaddr:
	.long	3145728
# configsize:
	.byte	14
# erasesize:
	.zero	1
	.value	64
# devicename:
	.string	"PIC18F2539"
	.zero	1013
# deviceid:
	.value	1024
# flash:
	.zero	2
	.long	12288
# eeprom:
	.value	256
# datasheet:
	.zero	2
	.long	30480
# devidrev4:
	.byte	0
# panelsize:
	.byte	8
# p9:
	.zero	2
	.long	1000
# p9a:
	.long	0
# p10:
	.long	5
# p11:
	.long	10000
# configaddr:
	.long	3145728
# configsize:
	.byte	14
# erasesize:
	.zero	1
	.value	64
# devicename:
	.string	"PIC18F4439"
	.zero	1013
# deviceid:
	.value	1184
# flash:
	.zero	2
	.long	6144
# eeprom:
	.value	256
# datasheet:
	.zero	2
	.long	30480
# devidrev4:
	.byte	0
# panelsize:
	.byte	8
# p9:
	.zero	2
	.long	1000
# p9a:
	.long	0
# p10:
	.long	5
# p11:
	.long	10000
# configaddr:
	.long	3145728
# configsize:
	.byte	14
# erasesize:
	.zero	1
	.value	64
# devicename:
	.string	"PIC18F4539"
	.zero	1013
# deviceid:
	.value	1056
# flash:
	.zero	2
	.long	12288
# eeprom:
	.value	256
# datasheet:
	.zero	2
	.long	30480
# devidrev4:
	.byte	0
# panelsize:
	.byte	8
# p9:
	.zero	2
	.long	1000
# p9a:
	.long	0
# p10:
	.long	5
# p11:
	.long	10000
# configaddr:
	.long	3145728
# configsize:
	.byte	14
# erasesize:
	.zero	1
	.value	64
# devicename:
	.string	"PIC18LF2439"
	.zero	1012
# deviceid:
	.value	1152
# flash:
	.zero	2
	.long	6144
# eeprom:
	.value	256
# datasheet:
	.zero	2
	.long	30480
# devidrev4:
	.byte	0
# panelsize:
	.byte	8
# p9:
	.zero	2
	.long	1000
# p9a:
	.long	0
# p10:
	.long	5
# p11:
	.long	10000
# configaddr:
	.long	3145728
# configsize:
	.byte	14
# erasesize:
	.zero	1
	.value	64
# devicename:
	.string	"PIC18LF2539"
	.zero	1012
# deviceid:
	.value	1024
# flash:
	.zero	2
	.long	12288
# eeprom:
	.value	256
# datasheet:
	.zero	2
	.long	30480
# devidrev4:
	.byte	0
# panelsize:
	.byte	8
# p9:
	.zero	2
	.long	1000
# p9a:
	.long	0
# p10:
	.long	5
# p11:
	.long	10000
# configaddr:
	.long	3145728
# configsize:
	.byte	14
# erasesize:
	.zero	1
	.value	64
# devicename:
	.string	"PIC18LF4439"
	.zero	1012
# deviceid:
	.value	1184
# flash:
	.zero	2
	.long	6144
# eeprom:
	.value	256
# datasheet:
	.zero	2
	.long	30480
# devidrev4:
	.byte	0
# panelsize:
	.byte	8
# p9:
	.zero	2
	.long	1000
# p9a:
	.long	0
# p10:
	.long	5
# p11:
	.long	10000
# configaddr:
	.long	3145728
# configsize:
	.byte	14
# erasesize:
	.zero	1
	.value	64
# devicename:
	.string	"PIC18LF4539"
	.zero	1012
# deviceid:
	.value	1056
# flash:
	.zero	2
	.long	12288
# eeprom:
	.value	256
# datasheet:
	.zero	2
	.long	30480
# devidrev4:
	.byte	0
# panelsize:
	.byte	8
# p9:
	.zero	2
	.long	1000
# p9a:
	.long	0
# p10:
	.long	5
# p11:
	.long	10000
# configaddr:
	.long	3145728
# configsize:
	.byte	14
# erasesize:
	.zero	1
	.value	64
# devicename:
	.string	"PIC18F1220"
	.zero	1013
# deviceid:
	.value	2016
# flash:
	.zero	2
	.long	2048
# eeprom:
	.value	256
# datasheet:
	.zero	2
	.long	39592
# devidrev4:
	.byte	0
# panelsize:
	.byte	8
# p9:
	.zero	2
	.long	1000
# p9a:
	.long	0
# p10:
	.long	5
# p11:
	.long	10000
# configaddr:
	.long	3145728
# configsize:
	.byte	14
# erasesize:
	.zero	1
	.value	64
# devicename:
	.string	"PIC18F1320"
	.zero	1013
# deviceid:
	.value	1984
# flash:
	.zero	2
	.long	4096
# eeprom:
	.value	256
# datasheet:
	.zero	2
	.long	39592
# devidrev4:
	.byte	0
# panelsize:
	.byte	8
# p9:
	.zero	2
	.long	1000
# p9a:
	.long	0
# p10:
	.long	5
# p11:
	.long	10000
# configaddr:
	.long	3145728
# configsize:
	.byte	14
# erasesize:
	.zero	1
	.value	64
# devicename:
	.string	"PIC18F2220"
	.zero	1013
# deviceid:
	.value	1408
# flash:
	.zero	2
	.long	2048
# eeprom:
	.value	256
# datasheet:
	.zero	2
	.long	39592
# devidrev4:
	.byte	0
# panelsize:
	.byte	8
# p9:
	.zero	2
	.long	1000
# p9a:
	.long	0
# p10:
	.long	5
# p11:
	.long	10000
# configaddr:
	.long	3145728
# configsize:
	.byte	14
# erasesize:
	.zero	1
	.value	64
# devicename:
	.string	"PIC18F2320"
	.zero	1013
# deviceid:
	.value	1280
# flash:
	.zero	2
	.long	4096
# eeprom:
	.value	256
# datasheet:
	.zero	2
	.long	39592
# devidrev4:
	.byte	0
# panelsize:
	.byte	8
# p9:
	.zero	2
	.long	1000
# p9a:
	.long	0
# p10:
	.long	5
# p11:
	.long	10000
# configaddr:
	.long	3145728
# configsize:
	.byte	14
# erasesize:
	.zero	1
	.value	64
# devicename:
	.string	"PIC18F4220"
	.zero	1013
# deviceid:
	.value	1440
# flash:
	.zero	2
	.long	2048
# eeprom:
	.value	256
# datasheet:
	.zero	2
	.long	39592
# devidrev4:
	.byte	0
# panelsize:
	.byte	8
# p9:
	.zero	2
	.long	1000
# p9a:
	.long	0
# p10:
	.long	5
# p11:
	.long	10000
# configaddr:
	.long	3145728
# configsize:
	.byte	14
# erasesize:
	.zero	1
	.value	64
# devicename:
	.string	"PIC18F4320"
	.zero	1013
# deviceid:
	.value	1312
# flash:
	.zero	2
	.long	4096
# eeprom:
	.value	256
# datasheet:
	.zero	2
	.long	39592
# devidrev4:
	.byte	0
# panelsize:
	.byte	8
# p9:
	.zero	2
	.long	1000
# p9a:
	.long	0
# p10:
	.long	5
# p11:
	.long	10000
# configaddr:
	.long	3145728
# configsize:
	.byte	14
# erasesize:
	.zero	1
	.value	64
# devicename:
	.string	"PIC18F2221"
	.zero	1013
# deviceid:
	.value	8544
# flash:
	.zero	2
	.long	2048
# eeprom:
	.value	256
# datasheet:
	.zero	2
	.long	39622
# devidrev4:
	.byte	0
# panelsize:
	.byte	8
# p9:
	.zero	2
	.long	1000
# p9a:
	.long	0
# p10:
	.long	100
# p11:
	.long	5000
# configaddr:
	.long	3145728
# configsize:
	.byte	14
# erasesize:
	.zero	1
	.value	64
# devicename:
	.string	"PIC18F2321"
	.zero	1013
# deviceid:
	.value	8480
# flash:
	.zero	2
	.long	4096
# eeprom:
	.value	256
# datasheet:
	.zero	2
	.long	39622
# devidrev4:
	.byte	0
# panelsize:
	.byte	8
# p9:
	.zero	2
	.long	1000
# p9a:
	.long	0
# p10:
	.long	100
# p11:
	.long	5000
# configaddr:
	.long	3145728
# configsize:
	.byte	14
# erasesize:
	.zero	1
	.value	64
# devicename:
	.string	"PIC18F2410"
	.zero	1013
# deviceid:
	.value	4448
# flash:
	.zero	2
	.long	8192
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	39622
# devidrev4:
	.byte	0
# panelsize:
	.byte	32
# p9:
	.zero	2
	.long	1000
# p9a:
	.long	0
# p10:
	.long	100
# p11:
	.long	5000
# configaddr:
	.long	3145728
# configsize:
	.byte	14
# erasesize:
	.zero	1
	.value	64
# devicename:
	.string	"PIC18F2420"
	.zero	1013
# deviceid:
	.value	4416
# flash:
	.zero	2
	.long	8192
# eeprom:
	.value	256
# datasheet:
	.zero	2
	.long	39622
# devidrev4:
	.byte	1
# panelsize:
	.byte	32
# p9:
	.zero	2
	.long	1000
# p9a:
	.long	0
# p10:
	.long	100
# p11:
	.long	5000
# configaddr:
	.long	3145728
# configsize:
	.byte	14
# erasesize:
	.zero	1
	.value	64
# devicename:
	.string	"PIC18F2423"
	.zero	1013
# deviceid:
	.value	4432
# flash:
	.zero	2
	.long	8192
# eeprom:
	.value	256
# datasheet:
	.zero	2
	.long	39622
# devidrev4:
	.byte	1
# panelsize:
	.byte	32
# p9:
	.zero	2
	.long	1000
# p9a:
	.long	0
# p10:
	.long	100
# p11:
	.long	5000
# configaddr:
	.long	3145728
# configsize:
	.byte	14
# erasesize:
	.zero	1
	.value	64
# devicename:
	.string	"PIC18F2450"
	.zero	1013
# deviceid:
	.value	9248
# flash:
	.zero	2
	.long	8192
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	39622
# devidrev4:
	.byte	0
# panelsize:
	.byte	8
# p9:
	.zero	2
	.long	1000
# p9a:
	.long	0
# p10:
	.long	100
# p11:
	.long	5000
# configaddr:
	.long	3145728
# configsize:
	.byte	14
# erasesize:
	.zero	1
	.value	64
# devicename:
	.string	"PIC18F2455"
	.zero	1013
# deviceid:
	.value	4704
# flash:
	.zero	2
	.long	12288
# eeprom:
	.value	256
# datasheet:
	.zero	2
	.long	39622
# devidrev4:
	.byte	0
# panelsize:
	.byte	32
# p9:
	.zero	2
	.long	1000
# p9a:
	.long	0
# p10:
	.long	100
# p11:
	.long	5000
# configaddr:
	.long	3145728
# configsize:
	.byte	14
# erasesize:
	.zero	1
	.value	64
# devicename:
	.string	"PIC18F2458"
	.zero	1013
# deviceid:
	.value	10848
# flash:
	.zero	2
	.long	12288
# eeprom:
	.value	256
# datasheet:
	.zero	2
	.long	39622
# devidrev4:
	.byte	0
# panelsize:
	.byte	32
# p9:
	.zero	2
	.long	1000
# p9a:
	.long	0
# p10:
	.long	100
# p11:
	.long	5000
# configaddr:
	.long	3145728
# configsize:
	.byte	14
# erasesize:
	.zero	1
	.value	64
# devicename:
	.string	"PIC18F2480"
	.zero	1013
# deviceid:
	.value	6880
# flash:
	.zero	2
	.long	8192
# eeprom:
	.value	256
# datasheet:
	.zero	2
	.long	39622
# devidrev4:
	.byte	0
# panelsize:
	.byte	32
# p9:
	.zero	2
	.long	1000
# p9a:
	.long	0
# p10:
	.long	100
# p11:
	.long	5000
# configaddr:
	.long	3145728
# configsize:
	.byte	14
# erasesize:
	.zero	1
	.value	64
# devicename:
	.string	"PIC18F2510"
	.zero	1013
# deviceid:
	.value	4384
# flash:
	.zero	2
	.long	16384
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	39622
# devidrev4:
	.byte	0
# panelsize:
	.byte	32
# p9:
	.zero	2
	.long	1000
# p9a:
	.long	0
# p10:
	.long	100
# p11:
	.long	5000
# configaddr:
	.long	3145728
# configsize:
	.byte	14
# erasesize:
	.zero	1
	.value	64
# devicename:
	.string	"PIC18F2515"
	.zero	1013
# deviceid:
	.value	3296
# flash:
	.zero	2
	.long	24576
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	39622
# devidrev4:
	.byte	0
# panelsize:
	.byte	64
# p9:
	.zero	2
	.long	1000
# p9a:
	.long	0
# p10:
	.long	100
# p11:
	.long	5000
# configaddr:
	.long	3145728
# configsize:
	.byte	14
# erasesize:
	.zero	1
	.value	64
# devicename:
	.string	"PIC18F2520"
	.zero	1013
# deviceid:
	.value	4352
# flash:
	.zero	2
	.long	16384
# eeprom:
	.value	256
# datasheet:
	.zero	2
	.long	39622
# devidrev4:
	.byte	1
# panelsize:
	.byte	32
# p9:
	.zero	2
	.long	1000
# p9a:
	.long	0
# p10:
	.long	100
# p11:
	.long	5000
# configaddr:
	.long	3145728
# configsize:
	.byte	14
# erasesize:
	.zero	1
	.value	64
# devicename:
	.string	"PIC18F2523"
	.zero	1013
# deviceid:
	.value	4368
# flash:
	.zero	2
	.long	16384
# eeprom:
	.value	256
# datasheet:
	.zero	2
	.long	39622
# devidrev4:
	.byte	1
# panelsize:
	.byte	32
# p9:
	.zero	2
	.long	1000
# p9a:
	.long	0
# p10:
	.long	100
# p11:
	.long	5000
# configaddr:
	.long	3145728
# configsize:
	.byte	14
# erasesize:
	.zero	1
	.value	64
# devicename:
	.string	"PIC18F2525"
	.zero	1013
# deviceid:
	.value	3264
# flash:
	.zero	2
	.long	24576
# eeprom:
	.value	1024
# datasheet:
	.zero	2
	.long	39622
# devidrev4:
	.byte	0
# panelsize:
	.byte	64
# p9:
	.zero	2
	.long	1000
# p9a:
	.long	0
# p10:
	.long	100
# p11:
	.long	5000
# configaddr:
	.long	3145728
# configsize:
	.byte	14
# erasesize:
	.zero	1
	.value	64
# devicename:
	.string	"PIC18F2550"
	.zero	1013
# deviceid:
	.value	4672
# flash:
	.zero	2
	.long	16384
# eeprom:
	.value	256
# datasheet:
	.zero	2
	.long	39622
# devidrev4:
	.byte	0
# panelsize:
	.byte	32
# p9:
	.zero	2
	.long	1000
# p9a:
	.long	0
# p10:
	.long	100
# p11:
	.long	5000
# configaddr:
	.long	3145728
# configsize:
	.byte	14
# erasesize:
	.zero	1
	.value	64
# devicename:
	.string	"PIC18F2553"
	.zero	1013
# deviceid:
	.value	10816
# flash:
	.zero	2
	.long	16384
# eeprom:
	.value	256
# datasheet:
	.zero	2
	.long	39622
# devidrev4:
	.byte	0
# panelsize:
	.byte	32
# p9:
	.zero	2
	.long	1000
# p9a:
	.long	0
# p10:
	.long	100
# p11:
	.long	5000
# configaddr:
	.long	3145728
# configsize:
	.byte	14
# erasesize:
	.zero	1
	.value	64
# devicename:
	.string	"PIC18F2580"
	.zero	1013
# deviceid:
	.value	6848
# flash:
	.zero	2
	.long	16384
# eeprom:
	.value	256
# datasheet:
	.zero	2
	.long	39622
# devidrev4:
	.byte	0
# panelsize:
	.byte	32
# p9:
	.zero	2
	.long	1000
# p9a:
	.long	0
# p10:
	.long	100
# p11:
	.long	5000
# configaddr:
	.long	3145728
# configsize:
	.byte	14
# erasesize:
	.zero	1
	.value	64
# devicename:
	.string	"PIC18F2585"
	.zero	1013
# deviceid:
	.value	3808
# flash:
	.zero	2
	.long	24576
# eeprom:
	.value	1024
# datasheet:
	.zero	2
	.long	39622
# devidrev4:
	.byte	0
# panelsize:
	.byte	64
# p9:
	.zero	2
	.long	1000
# p9a:
	.long	0
# p10:
	.long	100
# p11:
	.long	5000
# configaddr:
	.long	3145728
# configsize:
	.byte	14
# erasesize:
	.zero	1
	.value	64
# devicename:
	.string	"PIC18F2610"
	.zero	1013
# deviceid:
	.value	3232
# flash:
	.zero	2
	.long	32768
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	39622
# devidrev4:
	.byte	0
# panelsize:
	.byte	64
# p9:
	.zero	2
	.long	1000
# p9a:
	.long	0
# p10:
	.long	100
# p11:
	.long	5000
# configaddr:
	.long	3145728
# configsize:
	.byte	14
# erasesize:
	.zero	1
	.value	64
# devicename:
	.string	"PIC18F2620"
	.zero	1013
# deviceid:
	.value	3200
# flash:
	.zero	2
	.long	32768
# eeprom:
	.value	1024
# datasheet:
	.zero	2
	.long	39622
# devidrev4:
	.byte	0
# panelsize:
	.byte	64
# p9:
	.zero	2
	.long	1000
# p9a:
	.long	0
# p10:
	.long	100
# p11:
	.long	5000
# configaddr:
	.long	3145728
# configsize:
	.byte	14
# erasesize:
	.zero	1
	.value	64
# devicename:
	.string	"PIC18F2680"
	.zero	1013
# deviceid:
	.value	3776
# flash:
	.zero	2
	.long	32768
# eeprom:
	.value	1024
# datasheet:
	.zero	2
	.long	39622
# devidrev4:
	.byte	0
# panelsize:
	.byte	64
# p9:
	.zero	2
	.long	1000
# p9a:
	.long	0
# p10:
	.long	100
# p11:
	.long	5000
# configaddr:
	.long	3145728
# configsize:
	.byte	14
# erasesize:
	.zero	1
	.value	64
# devicename:
	.string	"PIC18F2682"
	.zero	1013
# deviceid:
	.value	9984
# flash:
	.zero	2
	.long	40960
# eeprom:
	.value	1024
# datasheet:
	.zero	2
	.long	39622
# devidrev4:
	.byte	0
# panelsize:
	.byte	64
# p9:
	.zero	2
	.long	1000
# p9a:
	.long	0
# p10:
	.long	100
# p11:
	.long	5000
# configaddr:
	.long	3145728
# configsize:
	.byte	14
# erasesize:
	.zero	1
	.value	64
# devicename:
	.string	"PIC18F2685"
	.zero	1013
# deviceid:
	.value	10016
# flash:
	.zero	2
	.long	49152
# eeprom:
	.value	1024
# datasheet:
	.zero	2
	.long	39622
# devidrev4:
	.byte	0
# panelsize:
	.byte	64
# p9:
	.zero	2
	.long	1000
# p9a:
	.long	0
# p10:
	.long	100
# p11:
	.long	5000
# configaddr:
	.long	3145728
# configsize:
	.byte	14
# erasesize:
	.zero	1
	.value	64
# devicename:
	.string	"PIC18F4221"
	.zero	1013
# deviceid:
	.value	8512
# flash:
	.zero	2
	.long	2048
# eeprom:
	.value	256
# datasheet:
	.zero	2
	.long	39622
# devidrev4:
	.byte	0
# panelsize:
	.byte	8
# p9:
	.zero	2
	.long	1000
# p9a:
	.long	0
# p10:
	.long	100
# p11:
	.long	5000
# configaddr:
	.long	3145728
# configsize:
	.byte	14
# erasesize:
	.zero	1
	.value	64
# devicename:
	.string	"PIC18F4321"
	.zero	1013
# deviceid:
	.value	8448
# flash:
	.zero	2
	.long	4096
# eeprom:
	.value	256
# datasheet:
	.zero	2
	.long	39622
# devidrev4:
	.byte	0
# panelsize:
	.byte	8
# p9:
	.zero	2
	.long	1000
# p9a:
	.long	0
# p10:
	.long	100
# p11:
	.long	5000
# configaddr:
	.long	3145728
# configsize:
	.byte	14
# erasesize:
	.zero	1
	.value	64
# devicename:
	.string	"PIC18F4410"
	.zero	1013
# deviceid:
	.value	4320
# flash:
	.zero	2
	.long	8192
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	39622
# devidrev4:
	.byte	0
# panelsize:
	.byte	32
# p9:
	.zero	2
	.long	1000
# p9a:
	.long	0
# p10:
	.long	100
# p11:
	.long	5000
# configaddr:
	.long	3145728
# configsize:
	.byte	14
# erasesize:
	.zero	1
	.value	64
# devicename:
	.string	"PIC18F4420"
	.zero	1013
# deviceid:
	.value	4288
# flash:
	.zero	2
	.long	8192
# eeprom:
	.value	256
# datasheet:
	.zero	2
	.long	39622
# devidrev4:
	.byte	1
# panelsize:
	.byte	32
# p9:
	.zero	2
	.long	1000
# p9a:
	.long	0
# p10:
	.long	100
# p11:
	.long	5000
# configaddr:
	.long	3145728
# configsize:
	.byte	14
# erasesize:
	.zero	1
	.value	64
# devicename:
	.string	"PIC18F4423"
	.zero	1013
# deviceid:
	.value	4304
# flash:
	.zero	2
	.long	8192
# eeprom:
	.value	256
# datasheet:
	.zero	2
	.long	39622
# devidrev4:
	.byte	1
# panelsize:
	.byte	32
# p9:
	.zero	2
	.long	1000
# p9a:
	.long	0
# p10:
	.long	100
# p11:
	.long	5000
# configaddr:
	.long	3145728
# configsize:
	.byte	14
# erasesize:
	.zero	1
	.value	64
# devicename:
	.string	"PIC18F4450"
	.zero	1013
# deviceid:
	.value	9216
# flash:
	.zero	2
	.long	8192
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	39622
# devidrev4:
	.byte	0
# panelsize:
	.byte	8
# p9:
	.zero	2
	.long	1000
# p9a:
	.long	0
# p10:
	.long	100
# p11:
	.long	5000
# configaddr:
	.long	3145728
# configsize:
	.byte	14
# erasesize:
	.zero	1
	.value	64
# devicename:
	.string	"PIC18F4455"
	.zero	1013
# deviceid:
	.value	4640
# flash:
	.zero	2
	.long	12288
# eeprom:
	.value	256
# datasheet:
	.zero	2
	.long	39622
# devidrev4:
	.byte	0
# panelsize:
	.byte	32
# p9:
	.zero	2
	.long	1000
# p9a:
	.long	0
# p10:
	.long	100
# p11:
	.long	5000
# configaddr:
	.long	3145728
# configsize:
	.byte	14
# erasesize:
	.zero	1
	.value	64
# devicename:
	.string	"PIC18F4458"
	.zero	1013
# deviceid:
	.value	10784
# flash:
	.zero	2
	.long	12288
# eeprom:
	.value	256
# datasheet:
	.zero	2
	.long	39622
# devidrev4:
	.byte	0
# panelsize:
	.byte	32
# p9:
	.zero	2
	.long	1000
# p9a:
	.long	0
# p10:
	.long	100
# p11:
	.long	5000
# configaddr:
	.long	3145728
# configsize:
	.byte	14
# erasesize:
	.zero	1
	.value	64
# devicename:
	.string	"PIC18F4480"
	.zero	1013
# deviceid:
	.value	6816
# flash:
	.zero	2
	.long	8192
# eeprom:
	.value	256
# datasheet:
	.zero	2
	.long	39622
# devidrev4:
	.byte	0
# panelsize:
	.byte	32
# p9:
	.zero	2
	.long	1000
# p9a:
	.long	0
# p10:
	.long	100
# p11:
	.long	5000
# configaddr:
	.long	3145728
# configsize:
	.byte	14
# erasesize:
	.zero	1
	.value	64
# devicename:
	.string	"PIC18F4510"
	.zero	1013
# deviceid:
	.value	4256
# flash:
	.zero	2
	.long	16384
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	39622
# devidrev4:
	.byte	0
# panelsize:
	.byte	32
# p9:
	.zero	2
	.long	1000
# p9a:
	.long	0
# p10:
	.long	100
# p11:
	.long	5000
# configaddr:
	.long	3145728
# configsize:
	.byte	14
# erasesize:
	.zero	1
	.value	64
# devicename:
	.string	"PIC18F4515"
	.zero	1013
# deviceid:
	.value	3168
# flash:
	.zero	2
	.long	24576
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	39622
# devidrev4:
	.byte	0
# panelsize:
	.byte	64
# p9:
	.zero	2
	.long	1000
# p9a:
	.long	0
# p10:
	.long	100
# p11:
	.long	5000
# configaddr:
	.long	3145728
# configsize:
	.byte	14
# erasesize:
	.zero	1
	.value	64
# devicename:
	.string	"PIC18F4520"
	.zero	1013
# deviceid:
	.value	4224
# flash:
	.zero	2
	.long	16384
# eeprom:
	.value	256
# datasheet:
	.zero	2
	.long	39622
# devidrev4:
	.byte	1
# panelsize:
	.byte	32
# p9:
	.zero	2
	.long	1000
# p9a:
	.long	0
# p10:
	.long	100
# p11:
	.long	5000
# configaddr:
	.long	3145728
# configsize:
	.byte	14
# erasesize:
	.zero	1
	.value	64
# devicename:
	.string	"PIC18F4523"
	.zero	1013
# deviceid:
	.value	4240
# flash:
	.zero	2
	.long	16384
# eeprom:
	.value	256
# datasheet:
	.zero	2
	.long	39622
# devidrev4:
	.byte	1
# panelsize:
	.byte	32
# p9:
	.zero	2
	.long	1000
# p9a:
	.long	0
# p10:
	.long	100
# p11:
	.long	5000
# configaddr:
	.long	3145728
# configsize:
	.byte	14
# erasesize:
	.zero	1
	.value	64
# devicename:
	.string	"PIC18F4525"
	.zero	1013
# deviceid:
	.value	3136
# flash:
	.zero	2
	.long	24576
# eeprom:
	.value	1024
# datasheet:
	.zero	2
	.long	39622
# devidrev4:
	.byte	0
# panelsize:
	.byte	64
# p9:
	.zero	2
	.long	1000
# p9a:
	.long	0
# p10:
	.long	100
# p11:
	.long	5000
# configaddr:
	.long	3145728
# configsize:
	.byte	14
# erasesize:
	.zero	1
	.value	64
# devicename:
	.string	"PIC18F4550"
	.zero	1013
# deviceid:
	.value	4608
# flash:
	.zero	2
	.long	16384
# eeprom:
	.value	256
# datasheet:
	.zero	2
	.long	39622
# devidrev4:
	.byte	0
# panelsize:
	.byte	32
# p9:
	.zero	2
	.long	1000
# p9a:
	.long	0
# p10:
	.long	100
# p11:
	.long	5000
# configaddr:
	.long	3145728
# configsize:
	.byte	14
# erasesize:
	.zero	1
	.value	64
# devicename:
	.string	"PIC18F4553"
	.zero	1013
# deviceid:
	.value	10752
# flash:
	.zero	2
	.long	16384
# eeprom:
	.value	256
# datasheet:
	.zero	2
	.long	39622
# devidrev4:
	.byte	0
# panelsize:
	.byte	32
# p9:
	.zero	2
	.long	1000
# p9a:
	.long	0
# p10:
	.long	100
# p11:
	.long	5000
# configaddr:
	.long	3145728
# configsize:
	.byte	14
# erasesize:
	.zero	1
	.value	64
# devicename:
	.string	"PIC18F4580"
	.zero	1013
# deviceid:
	.value	6784
# flash:
	.zero	2
	.long	16384
# eeprom:
	.value	256
# datasheet:
	.zero	2
	.long	39622
# devidrev4:
	.byte	0
# panelsize:
	.byte	32
# p9:
	.zero	2
	.long	1000
# p9a:
	.long	0
# p10:
	.long	100
# p11:
	.long	5000
# configaddr:
	.long	3145728
# configsize:
	.byte	14
# erasesize:
	.zero	1
	.value	64
# devicename:
	.string	"PIC18F4585"
	.zero	1013
# deviceid:
	.value	3744
# flash:
	.zero	2
	.long	24576
# eeprom:
	.value	1024
# datasheet:
	.zero	2
	.long	39622
# devidrev4:
	.byte	0
# panelsize:
	.byte	64
# p9:
	.zero	2
	.long	1000
# p9a:
	.long	0
# p10:
	.long	100
# p11:
	.long	5000
# configaddr:
	.long	3145728
# configsize:
	.byte	14
# erasesize:
	.zero	1
	.value	64
# devicename:
	.string	"PIC18F4610"
	.zero	1013
# deviceid:
	.value	3104
# flash:
	.zero	2
	.long	32768
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	39622
# devidrev4:
	.byte	0
# panelsize:
	.byte	64
# p9:
	.zero	2
	.long	1000
# p9a:
	.long	0
# p10:
	.long	100
# p11:
	.long	5000
# configaddr:
	.long	3145728
# configsize:
	.byte	14
# erasesize:
	.zero	1
	.value	64
# devicename:
	.string	"PIC18F4620"
	.zero	1013
# deviceid:
	.value	3072
# flash:
	.zero	2
	.long	32768
# eeprom:
	.value	1024
# datasheet:
	.zero	2
	.long	39622
# devidrev4:
	.byte	0
# panelsize:
	.byte	64
# p9:
	.zero	2
	.long	1000
# p9a:
	.long	0
# p10:
	.long	100
# p11:
	.long	5000
# configaddr:
	.long	3145728
# configsize:
	.byte	14
# erasesize:
	.zero	1
	.value	64
# devicename:
	.string	"PIC18F4680"
	.zero	1013
# deviceid:
	.value	3712
# flash:
	.zero	2
	.long	32768
# eeprom:
	.value	1024
# datasheet:
	.zero	2
	.long	39622
# devidrev4:
	.byte	0
# panelsize:
	.byte	64
# p9:
	.zero	2
	.long	1000
# p9a:
	.long	0
# p10:
	.long	100
# p11:
	.long	5000
# configaddr:
	.long	3145728
# configsize:
	.byte	14
# erasesize:
	.zero	1
	.value	64
# devicename:
	.string	"PIC18F4682"
	.zero	1013
# deviceid:
	.value	10048
# flash:
	.zero	2
	.long	40960
# eeprom:
	.value	1024
# datasheet:
	.zero	2
	.long	39622
# devidrev4:
	.byte	0
# panelsize:
	.byte	64
# p9:
	.zero	2
	.long	1000
# p9a:
	.long	0
# p10:
	.long	100
# p11:
	.long	5000
# configaddr:
	.long	3145728
# configsize:
	.byte	14
# erasesize:
	.zero	1
	.value	64
# devicename:
	.string	"PIC18F4685"
	.zero	1013
# deviceid:
	.value	10080
# flash:
	.zero	2
	.long	49152
# eeprom:
	.value	1024
# datasheet:
	.zero	2
	.long	39622
# devidrev4:
	.byte	0
# panelsize:
	.byte	64
# p9:
	.zero	2
	.long	1000
# p9a:
	.long	0
# p10:
	.long	100
# p11:
	.long	5000
# configaddr:
	.long	3145728
# configsize:
	.byte	14
# erasesize:
	.zero	1
	.value	64
# devicename:
	.string	"PIC18F1230"
	.zero	1013
# deviceid:
	.value	7680
# flash:
	.zero	2
	.long	2048
# eeprom:
	.value	128
# datasheet:
	.zero	2
	.long	39752
# devidrev4:
	.byte	0
# panelsize:
	.byte	8
# p9:
	.zero	2
	.long	1000
# p9a:
	.long	0
# p10:
	.long	100
# p11:
	.long	5000
# configaddr:
	.long	3145728
# configsize:
	.byte	14
# erasesize:
	.zero	1
	.value	64
# devicename:
	.string	"PIC18F1330"
	.zero	1013
# deviceid:
	.value	7712
# flash:
	.zero	2
	.long	4096
# eeprom:
	.value	128
# datasheet:
	.zero	2
	.long	39752
# devidrev4:
	.byte	0
# panelsize:
	.byte	8
# p9:
	.zero	2
	.long	1000
# p9a:
	.long	0
# p10:
	.long	100
# p11:
	.long	5000
# configaddr:
	.long	3145728
# configsize:
	.byte	14
# erasesize:
	.zero	1
	.value	64
# devicename:
	.string	"PIC18F1330-ICD"
	.zero	1009
# deviceid:
	.value	8160
# flash:
	.zero	2
	.long	4096
# eeprom:
	.value	128
# datasheet:
	.zero	2
	.long	39752
# devidrev4:
	.byte	0
# panelsize:
	.byte	8
# p9:
	.zero	2
	.long	1000
# p9a:
	.long	0
# p10:
	.long	100
# p11:
	.long	5000
# configaddr:
	.long	3145728
# configsize:
	.byte	14
# erasesize:
	.zero	1
	.value	64
# devicename:
	.string	"PIC18F45K22"
	.zero	1012
# deviceid:
	.value	21760
# flash:
	.zero	2
	.long	16384
# eeprom:
	.value	256
# datasheet:
	.zero	2
	.long	41398
# devidrev4:
	.byte	0
# panelsize:
	.byte	64
# p9:
	.zero	2
	.long	1000
# p9a:
	.long	5000
# p10:
	.long	200
# p11:
	.long	15000
# configaddr:
	.long	3145728
# configsize:
	.byte	14
# erasesize:
	.zero	1
	.value	64
# devicename:
	.string	"PIC18F25K22"
	.zero	1012
# deviceid:
	.value	21824
# flash:
	.zero	2
	.long	16384
# eeprom:
	.value	256
# datasheet:
	.zero	2
	.long	41398
# devidrev4:
	.byte	0
# panelsize:
	.byte	64
# p9:
	.zero	2
	.long	1000
# p9a:
	.long	5000
# p10:
	.long	200
# p11:
	.long	15000
# configaddr:
	.long	3145728
# configsize:
	.byte	14
# erasesize:
	.zero	1
	.value	64
# devicename:
	.string	"PIC18F23K22"
	.zero	1012
# deviceid:
	.value	22336
# flash:
	.zero	2
	.long	4096
# eeprom:
	.value	256
# datasheet:
	.zero	2
	.long	41398
# devidrev4:
	.byte	0
# panelsize:
	.byte	64
# p9:
	.zero	2
	.long	1000
# p9a:
	.long	5000
# p10:
	.long	200
# p11:
	.long	15000
# configaddr:
	.long	3145728
# configsize:
	.byte	14
# erasesize:
	.zero	1
	.value	64
# devicename:
	.string	"PIC18F24K22"
	.zero	1012
# deviceid:
	.value	22080
# flash:
	.zero	2
	.long	8192
# eeprom:
	.value	256
# datasheet:
	.zero	2
	.long	41398
# devidrev4:
	.byte	0
# panelsize:
	.byte	64
# p9:
	.zero	2
	.long	1000
# p9a:
	.long	5000
# p10:
	.long	200
# p11:
	.long	15000
# configaddr:
	.long	3145728
# configsize:
	.byte	14
# erasesize:
	.zero	1
	.value	64
# devicename:
	.string	"PIC18F26K22"
	.zero	1012
# deviceid:
	.value	21568
# flash:
	.zero	2
	.long	32768
# eeprom:
	.value	1024
# datasheet:
	.zero	2
	.long	41398
# devidrev4:
	.byte	0
# panelsize:
	.byte	64
# p9:
	.zero	2
	.long	1000
# p9a:
	.long	5000
# p10:
	.long	200
# p11:
	.long	15000
# configaddr:
	.long	3145728
# configsize:
	.byte	14
# erasesize:
	.zero	1
	.value	64
# devicename:
	.string	"PIC18F43K22"
	.zero	1012
# deviceid:
	.value	22272
# flash:
	.zero	2
	.long	4096
# eeprom:
	.value	256
# datasheet:
	.zero	2
	.long	41398
# devidrev4:
	.byte	0
# panelsize:
	.byte	64
# p9:
	.zero	2
	.long	1000
# p9a:
	.long	5000
# p10:
	.long	200
# p11:
	.long	15000
# configaddr:
	.long	3145728
# configsize:
	.byte	14
# erasesize:
	.zero	1
	.value	64
# devicename:
	.string	"PIC18F46K22"
	.zero	1012
# deviceid:
	.value	21504
# flash:
	.zero	2
	.long	32768
# eeprom:
	.value	1024
# datasheet:
	.zero	2
	.long	41398
# devidrev4:
	.byte	0
# panelsize:
	.byte	64
# p9:
	.zero	2
	.long	1000
# p9a:
	.long	5000
# p10:
	.long	200
# p11:
	.long	15000
# configaddr:
	.long	3145728
# configsize:
	.byte	14
# erasesize:
	.zero	1
	.value	64
# devicename:
	.string	"PIC18LF45K22"
	.zero	1011
# deviceid:
	.value	21792
# flash:
	.zero	2
	.long	16384
# eeprom:
	.value	256
# datasheet:
	.zero	2
	.long	41398
# devidrev4:
	.byte	0
# panelsize:
	.byte	64
# p9:
	.zero	2
	.long	1000
# p9a:
	.long	5000
# p10:
	.long	200
# p11:
	.long	15000
# configaddr:
	.long	3145728
# configsize:
	.byte	14
# erasesize:
	.zero	1
	.value	64
# devicename:
	.string	"PIC18LF25K22"
	.zero	1011
# deviceid:
	.value	21856
# flash:
	.zero	2
	.long	16384
# eeprom:
	.value	256
# datasheet:
	.zero	2
	.long	41398
# devidrev4:
	.byte	0
# panelsize:
	.byte	64
# p9:
	.zero	2
	.long	1000
# p9a:
	.long	5000
# p10:
	.long	200
# p11:
	.long	15000
# configaddr:
	.long	3145728
# configsize:
	.byte	14
# erasesize:
	.zero	1
	.value	64
# devicename:
	.string	"PIC18LF23K22"
	.zero	1011
# deviceid:
	.value	22368
# flash:
	.zero	2
	.long	4096
# eeprom:
	.value	256
# datasheet:
	.zero	2
	.long	41398
# devidrev4:
	.byte	0
# panelsize:
	.byte	64
# p9:
	.zero	2
	.long	1000
# p9a:
	.long	5000
# p10:
	.long	200
# p11:
	.long	15000
# configaddr:
	.long	3145728
# configsize:
	.byte	14
# erasesize:
	.zero	1
	.value	64
# devicename:
	.string	"PIC18LF24K22"
	.zero	1011
# deviceid:
	.value	22112
# flash:
	.zero	2
	.long	8192
# eeprom:
	.value	256
# datasheet:
	.zero	2
	.long	41398
# devidrev4:
	.byte	0
# panelsize:
	.byte	64
# p9:
	.zero	2
	.long	1000
# p9a:
	.long	5000
# p10:
	.long	200
# p11:
	.long	15000
# configaddr:
	.long	3145728
# configsize:
	.byte	14
# erasesize:
	.zero	1
	.value	64
# devicename:
	.string	"PIC18LF26K22"
	.zero	1011
# deviceid:
	.value	21600
# flash:
	.zero	2
	.long	32768
# eeprom:
	.value	1024
# datasheet:
	.zero	2
	.long	41398
# devidrev4:
	.byte	0
# panelsize:
	.byte	64
# p9:
	.zero	2
	.long	1000
# p9a:
	.long	5000
# p10:
	.long	200
# p11:
	.long	15000
# configaddr:
	.long	3145728
# configsize:
	.byte	14
# erasesize:
	.zero	1
	.value	64
# devicename:
	.string	"PIC18LF43K22"
	.zero	1011
# deviceid:
	.value	22304
# flash:
	.zero	2
	.long	4096
# eeprom:
	.value	256
# datasheet:
	.zero	2
	.long	41398
# devidrev4:
	.byte	0
# panelsize:
	.byte	64
# p9:
	.zero	2
	.long	1000
# p9a:
	.long	5000
# p10:
	.long	200
# p11:
	.long	15000
# configaddr:
	.long	3145728
# configsize:
	.byte	14
# erasesize:
	.zero	1
	.value	64
# devicename:
	.string	"PIC18LF46K22"
	.zero	1011
# deviceid:
	.value	21536
# flash:
	.zero	2
	.long	32768
# eeprom:
	.value	1024
# datasheet:
	.zero	2
	.long	41398
# devidrev4:
	.byte	0
# panelsize:
	.byte	64
# p9:
	.zero	2
	.long	1000
# p9a:
	.long	5000
# p10:
	.long	200
# p11:
	.long	15000
# configaddr:
	.long	3145728
# configsize:
	.byte	14
# erasesize:
	.zero	1
	.value	64
# devicename:
	.string	"PIC18F65K80"
	.zero	1012
# deviceid:
	.value	24896
# flash:
	.zero	2
	.long	16384
# eeprom:
	.value	1024
# datasheet:
	.zero	2
	.long	39972
# devidrev4:
	.byte	0
# panelsize:
	.byte	64
# p9:
	.zero	2
	.long	1000
# p9a:
	.long	5000
# p10:
	.long	100
# p11:
	.long	5000
# configaddr:
	.long	3145728
# configsize:
	.byte	14
# erasesize:
	.zero	1
	.value	64
# devicename:
	.string	"PIC18F45K80"
	.zero	1012
# deviceid:
	.value	24928
# flash:
	.zero	2
	.long	16384
# eeprom:
	.value	1024
# datasheet:
	.zero	2
	.long	39972
# devidrev4:
	.byte	0
# panelsize:
	.byte	64
# p9:
	.zero	2
	.long	1000
# p9a:
	.long	5000
# p10:
	.long	100
# p11:
	.long	5000
# configaddr:
	.long	3145728
# configsize:
	.byte	14
# erasesize:
	.zero	1
	.value	64
# devicename:
	.string	"PIC18F25K80"
	.zero	1012
# deviceid:
	.value	24960
# flash:
	.zero	2
	.long	16384
# eeprom:
	.value	1024
# datasheet:
	.zero	2
	.long	39972
# devidrev4:
	.byte	0
# panelsize:
	.byte	64
# p9:
	.zero	2
	.long	1000
# p9a:
	.long	5000
# p10:
	.long	100
# p11:
	.long	5000
# configaddr:
	.long	3145728
# configsize:
	.byte	14
# erasesize:
	.zero	1
	.value	64
# devicename:
	.string	"PIC18F66K80"
	.zero	1012
# deviceid:
	.value	24800
# flash:
	.zero	2
	.long	32768
# eeprom:
	.value	1024
# datasheet:
	.zero	2
	.long	39972
# devidrev4:
	.byte	0
# panelsize:
	.byte	64
# p9:
	.zero	2
	.long	1000
# p9a:
	.long	5000
# p10:
	.long	100
# p11:
	.long	5000
# configaddr:
	.long	3145728
# configsize:
	.byte	14
# erasesize:
	.zero	1
	.value	64
# devicename:
	.string	"PIC18F46K80"
	.zero	1012
# deviceid:
	.value	24832
# flash:
	.zero	2
	.long	32768
# eeprom:
	.value	1024
# datasheet:
	.zero	2
	.long	39972
# devidrev4:
	.byte	0
# panelsize:
	.byte	64
# p9:
	.zero	2
	.long	1000
# p9a:
	.long	5000
# p10:
	.long	100
# p11:
	.long	5000
# configaddr:
	.long	3145728
# configsize:
	.byte	14
# erasesize:
	.zero	1
	.value	64
# devicename:
	.string	"PIC18F26K80"
	.zero	1012
# deviceid:
	.value	24864
# flash:
	.zero	2
	.long	32768
# eeprom:
	.value	1024
# datasheet:
	.zero	2
	.long	39972
# devidrev4:
	.byte	0
# panelsize:
	.byte	64
# p9:
	.zero	2
	.long	1000
# p9a:
	.long	5000
# p10:
	.long	100
# p11:
	.long	5000
# configaddr:
	.long	3145728
# configsize:
	.byte	14
# erasesize:
	.zero	1
	.value	64
# devicename:
	.string	"PIC18LF65K80"
	.zero	1011
# deviceid:
	.value	25120
# flash:
	.zero	2
	.long	16384
# eeprom:
	.value	1024
# datasheet:
	.zero	2
	.long	39972
# devidrev4:
	.byte	0
# panelsize:
	.byte	64
# p9:
	.zero	2
	.long	1000
# p9a:
	.long	5000
# p10:
	.long	100
# p11:
	.long	5000
# configaddr:
	.long	3145728
# configsize:
	.byte	14
# erasesize:
	.zero	1
	.value	64
# devicename:
	.string	"PIC18LF45K80"
	.zero	1011
# deviceid:
	.value	25152
# flash:
	.zero	2
	.long	16384
# eeprom:
	.value	1024
# datasheet:
	.zero	2
	.long	39972
# devidrev4:
	.byte	0
# panelsize:
	.byte	64
# p9:
	.zero	2
	.long	1000
# p9a:
	.long	5000
# p10:
	.long	100
# p11:
	.long	5000
# configaddr:
	.long	3145728
# configsize:
	.byte	14
# erasesize:
	.zero	1
	.value	64
# devicename:
	.string	"PIC18LF25K80"
	.zero	1011
# deviceid:
	.value	25184
# flash:
	.zero	2
	.long	16384
# eeprom:
	.value	1024
# datasheet:
	.zero	2
	.long	39972
# devidrev4:
	.byte	0
# panelsize:
	.byte	64
# p9:
	.zero	2
	.long	1000
# p9a:
	.long	5000
# p10:
	.long	100
# p11:
	.long	5000
# configaddr:
	.long	3145728
# configsize:
	.byte	14
# erasesize:
	.zero	1
	.value	64
# devicename:
	.string	"PIC18LF66K80"
	.zero	1011
# deviceid:
	.value	25024
# flash:
	.zero	2
	.long	32768
# eeprom:
	.value	1024
# datasheet:
	.zero	2
	.long	39972
# devidrev4:
	.byte	0
# panelsize:
	.byte	64
# p9:
	.zero	2
	.long	1000
# p9a:
	.long	5000
# p10:
	.long	100
# p11:
	.long	5000
# configaddr:
	.long	3145728
# configsize:
	.byte	14
# erasesize:
	.zero	1
	.value	64
# devicename:
	.string	"PIC18LF46K80"
	.zero	1011
# deviceid:
	.value	25056
# flash:
	.zero	2
	.long	32768
# eeprom:
	.value	1024
# datasheet:
	.zero	2
	.long	39972
# devidrev4:
	.byte	0
# panelsize:
	.byte	64
# p9:
	.zero	2
	.long	1000
# p9a:
	.long	5000
# p10:
	.long	100
# p11:
	.long	5000
# configaddr:
	.long	3145728
# configsize:
	.byte	14
# erasesize:
	.zero	1
	.value	64
# devicename:
	.string	"PIC18LF26K80"
	.zero	1011
# deviceid:
	.value	25088
# flash:
	.zero	2
	.long	32768
# eeprom:
	.value	1024
# datasheet:
	.zero	2
	.long	39972
# devidrev4:
	.byte	0
# panelsize:
	.byte	64
# p9:
	.zero	2
	.long	1000
# p9a:
	.long	5000
# p10:
	.long	100
# p11:
	.long	5000
# configaddr:
	.long	3145728
# configsize:
	.byte	14
# erasesize:
	.zero	1
	.value	64
# devicename:
	.string	"PIC18F24K50"
	.zero	1012
# deviceid:
	.value	23648
# flash:
	.zero	2
	.long	8192
# eeprom:
	.value	256
# datasheet:
	.zero	2
	.long	41630
# devidrev4:
	.byte	0
# panelsize:
	.byte	64
# p9:
	.zero	2
	.long	1000
# p9a:
	.long	5000
# p10:
	.long	200
# p11:
	.long	15000
# configaddr:
	.long	3145728
# configsize:
	.byte	14
# erasesize:
	.zero	1
	.value	64
# devicename:
	.string	"PIC18F25K50"
	.zero	1012
# deviceid:
	.value	23584
# flash:
	.zero	2
	.long	16384
# eeprom:
	.value	256
# datasheet:
	.zero	2
	.long	41630
# devidrev4:
	.byte	0
# panelsize:
	.byte	64
# p9:
	.zero	2
	.long	1000
# p9a:
	.long	5000
# p10:
	.long	200
# p11:
	.long	15000
# configaddr:
	.long	3145728
# configsize:
	.byte	14
# erasesize:
	.zero	1
	.value	64
# devicename:
	.string	"PIC18F45K50"
	.zero	1012
# deviceid:
	.value	23552
# flash:
	.zero	2
	.long	16384
# eeprom:
	.value	256
# datasheet:
	.zero	2
	.long	41630
# devidrev4:
	.byte	0
# panelsize:
	.byte	64
# p9:
	.zero	2
	.long	1000
# p9a:
	.long	5000
# p10:
	.long	200
# p11:
	.long	15000
# configaddr:
	.long	3145728
# configsize:
	.byte	14
# erasesize:
	.zero	1
	.value	64
# devicename:
	.string	"PIC18F26K50"
	.zero	1012
# deviceid:
	.value	23840
# flash:
	.zero	2
	.long	32768
# eeprom:
	.value	256
# datasheet:
	.zero	2
	.long	41630
# devidrev4:
	.byte	0
# panelsize:
	.byte	64
# p9:
	.zero	2
	.long	1000
# p9a:
	.long	5000
# p10:
	.long	200
# p11:
	.long	15000
# configaddr:
	.long	3145728
# configsize:
	.byte	14
# erasesize:
	.zero	1
	.value	64
# devicename:
	.string	"PIC18F46K50"
	.zero	1012
# deviceid:
	.value	23808
# flash:
	.zero	2
	.long	32768
# eeprom:
	.value	256
# datasheet:
	.zero	2
	.long	41630
# devidrev4:
	.byte	0
# panelsize:
	.byte	64
# p9:
	.zero	2
	.long	1000
# p9a:
	.long	5000
# p10:
	.long	200
# p11:
	.long	15000
# configaddr:
	.long	3145728
# configsize:
	.byte	14
# erasesize:
	.zero	1
	.value	64
# devicename:
	.string	"PIC18LF24K50"
	.zero	1011
# deviceid:
	.value	23776
# flash:
	.zero	2
	.long	8192
# eeprom:
	.value	256
# datasheet:
	.zero	2
	.long	41630
# devidrev4:
	.byte	0
# panelsize:
	.byte	64
# p9:
	.zero	2
	.long	1000
# p9a:
	.long	5000
# p10:
	.long	200
# p11:
	.long	15000
# configaddr:
	.long	3145728
# configsize:
	.byte	14
# erasesize:
	.zero	1
	.value	64
# devicename:
	.string	"PIC18LF25K50"
	.zero	1011
# deviceid:
	.value	23712
# flash:
	.zero	2
	.long	16384
# eeprom:
	.value	256
# datasheet:
	.zero	2
	.long	41630
# devidrev4:
	.byte	0
# panelsize:
	.byte	64
# p9:
	.zero	2
	.long	1000
# p9a:
	.long	5000
# p10:
	.long	200
# p11:
	.long	15000
# configaddr:
	.long	3145728
# configsize:
	.byte	14
# erasesize:
	.zero	1
	.value	64
# devicename:
	.string	"PIC18LF45K50"
	.zero	1011
# deviceid:
	.value	23680
# flash:
	.zero	2
	.long	16384
# eeprom:
	.value	256
# datasheet:
	.zero	2
	.long	41630
# devidrev4:
	.byte	0
# panelsize:
	.byte	64
# p9:
	.zero	2
	.long	1000
# p9a:
	.long	5000
# p10:
	.long	200
# p11:
	.long	15000
# configaddr:
	.long	3145728
# configsize:
	.byte	14
# erasesize:
	.zero	1
	.value	64
# devicename:
	.string	"PIC18LF26K50"
	.zero	1011
# deviceid:
	.value	23904
# flash:
	.zero	2
	.long	32768
# eeprom:
	.value	256
# datasheet:
	.zero	2
	.long	41630
# devidrev4:
	.byte	0
# panelsize:
	.byte	64
# p9:
	.zero	2
	.long	1000
# p9a:
	.long	5000
# p10:
	.long	200
# p11:
	.long	15000
# configaddr:
	.long	3145728
# configsize:
	.byte	14
# erasesize:
	.zero	1
	.value	64
# devicename:
	.string	"PIC18LF46K50"
	.zero	1011
# deviceid:
	.value	23872
# flash:
	.zero	2
	.long	32768
# eeprom:
	.value	256
# datasheet:
	.zero	2
	.long	41630
# devidrev4:
	.byte	0
# panelsize:
	.byte	64
# p9:
	.zero	2
	.long	1000
# p9a:
	.long	5000
# p10:
	.long	200
# p11:
	.long	15000
# configaddr:
	.long	3145728
# configsize:
	.byte	14
# erasesize:
	.zero	1
	.value	64
# devicename:
	.string	"PIC18F13K50"
	.zero	1012
# deviceid:
	.value	18240
# flash:
	.zero	2
	.long	4096
# eeprom:
	.value	256
# datasheet:
	.zero	2
	.long	41342
# devidrev4:
	.byte	0
# panelsize:
	.byte	8
# p9:
	.zero	2
	.long	1000
# p9a:
	.long	5000
# p10:
	.long	100
# p11:
	.long	5000
# configaddr:
	.long	3145728
# configsize:
	.byte	14
# erasesize:
	.zero	1
	.value	64
# devicename:
	.string	"PIC18F14K50"
	.zero	1012
# deviceid:
	.value	18272
# flash:
	.zero	2
	.long	8192
# eeprom:
	.value	256
# datasheet:
	.zero	2
	.long	41342
# devidrev4:
	.byte	0
# panelsize:
	.byte	16
# p9:
	.zero	2
	.long	1000
# p9a:
	.long	5000
# p10:
	.long	100
# p11:
	.long	5000
# configaddr:
	.long	3145728
# configsize:
	.byte	14
# erasesize:
	.zero	1
	.value	64
# devicename:
	.string	"PIC18LF13K50"
	.zero	1011
# deviceid:
	.value	18176
# flash:
	.zero	2
	.long	4096
# eeprom:
	.value	256
# datasheet:
	.zero	2
	.long	41342
# devidrev4:
	.byte	0
# panelsize:
	.byte	8
# p9:
	.zero	2
	.long	1000
# p9a:
	.long	5000
# p10:
	.long	100
# p11:
	.long	5000
# configaddr:
	.long	3145728
# configsize:
	.byte	14
# erasesize:
	.zero	1
	.value	64
# devicename:
	.string	"PIC18LF14K50"
	.zero	1011
# deviceid:
	.value	18208
# flash:
	.zero	2
	.long	8192
# eeprom:
	.value	256
# datasheet:
	.zero	2
	.long	41342
# devidrev4:
	.byte	0
# panelsize:
	.byte	16
# p9:
	.zero	2
	.long	1000
# p9a:
	.long	5000
# p10:
	.long	100
# p11:
	.long	5000
# configaddr:
	.long	3145728
# configsize:
	.byte	14
# erasesize:
	.zero	1
	.value	64
# devicename:
	.string	"PIC18F24J10"
	.zero	1012
# deviceid:
	.value	7424
# flash:
	.zero	2
	.long	8192
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	39687
# devidrev4:
	.byte	0
# panelsize:
	.byte	64
# p9:
	.zero	2
	.long	3400
# p9a:
	.long	0
# p10:
	.long	49000
# p11:
	.long	475000
# configaddr:
	.long	16376
# configsize:
	.byte	8
# erasesize:
	.zero	1
	.value	1024
# devicename:
	.string	"PIC18F44J10"
	.zero	1012
# deviceid:
	.value	7456
# flash:
	.zero	2
	.long	8192
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	39687
# devidrev4:
	.byte	0
# panelsize:
	.byte	64
# p9:
	.zero	2
	.long	3400
# p9a:
	.long	0
# p10:
	.long	49000
# p11:
	.long	475000
# configaddr:
	.long	16376
# configsize:
	.byte	8
# erasesize:
	.zero	1
	.value	1024
# devicename:
	.string	"PIC18F25J10"
	.zero	1012
# deviceid:
	.value	7168
# flash:
	.zero	2
	.long	16384
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	39687
# devidrev4:
	.byte	0
# panelsize:
	.byte	64
# p9:
	.zero	2
	.long	3400
# p9a:
	.long	0
# p10:
	.long	49000
# p11:
	.long	475000
# configaddr:
	.long	32760
# configsize:
	.byte	8
# erasesize:
	.zero	1
	.value	1024
# devicename:
	.string	"PIC18F45J10"
	.zero	1012
# deviceid:
	.value	7200
# flash:
	.zero	2
	.long	16384
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	39687
# devidrev4:
	.byte	0
# panelsize:
	.byte	64
# p9:
	.zero	2
	.long	3400
# p9a:
	.long	0
# p10:
	.long	49000
# p11:
	.long	475000
# configaddr:
	.long	32760
# configsize:
	.byte	8
# erasesize:
	.zero	1
	.value	1024
# devicename:
	.string	"PIC18F24J11"
	.zero	1012
# deviceid:
	.value	19840
# flash:
	.zero	2
	.long	8192
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	39687
# devidrev4:
	.byte	0
# panelsize:
	.byte	64
# p9:
	.zero	2
	.long	1200
# p9a:
	.long	0
# p10:
	.long	54000
# p11:
	.long	524000
# configaddr:
	.long	16376
# configsize:
	.byte	8
# erasesize:
	.zero	1
	.value	1024
# devicename:
	.string	"PIC18F44J11"
	.zero	1012
# deviceid:
	.value	19936
# flash:
	.zero	2
	.long	8192
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	39687
# devidrev4:
	.byte	0
# panelsize:
	.byte	64
# p9:
	.zero	2
	.long	1200
# p9a:
	.long	0
# p10:
	.long	54000
# p11:
	.long	524000
# configaddr:
	.long	16376
# configsize:
	.byte	8
# erasesize:
	.zero	1
	.value	1024
# devicename:
	.string	"PIC18F25J11"
	.zero	1012
# deviceid:
	.value	19872
# flash:
	.zero	2
	.long	16384
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	39687
# devidrev4:
	.byte	0
# panelsize:
	.byte	64
# p9:
	.zero	2
	.long	1200
# p9a:
	.long	0
# p10:
	.long	54000
# p11:
	.long	524000
# configaddr:
	.long	32760
# configsize:
	.byte	8
# erasesize:
	.zero	1
	.value	1024
# devicename:
	.string	"PIC18F45J11"
	.zero	1012
# deviceid:
	.value	19968
# flash:
	.zero	2
	.long	16384
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	39687
# devidrev4:
	.byte	0
# panelsize:
	.byte	64
# p9:
	.zero	2
	.long	1200
# p9a:
	.long	0
# p10:
	.long	54000
# p11:
	.long	524000
# configaddr:
	.long	32760
# configsize:
	.byte	8
# erasesize:
	.zero	1
	.value	1024
# devicename:
	.string	"PIC18F26J11"
	.zero	1012
# deviceid:
	.value	19904
# flash:
	.zero	2
	.long	32768
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	39687
# devidrev4:
	.byte	0
# panelsize:
	.byte	64
# p9:
	.zero	2
	.long	1200
# p9a:
	.long	0
# p10:
	.long	54000
# p11:
	.long	524000
# configaddr:
	.long	65528
# configsize:
	.byte	8
# erasesize:
	.zero	1
	.value	1024
# devicename:
	.string	"PIC18F46J11"
	.zero	1012
# deviceid:
	.value	20000
# flash:
	.zero	2
	.long	32768
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	39687
# devidrev4:
	.byte	0
# panelsize:
	.byte	64
# p9:
	.zero	2
	.long	1200
# p9a:
	.long	0
# p10:
	.long	54000
# p11:
	.long	524000
# configaddr:
	.long	65528
# configsize:
	.byte	8
# erasesize:
	.zero	1
	.value	1024
# devicename:
	.string	"PIC18F26J13"
	.zero	1012
# deviceid:
	.value	22816
# flash:
	.zero	2
	.long	32768
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	39687
# devidrev4:
	.byte	0
# panelsize:
	.byte	64
# p9:
	.zero	2
	.long	1200
# p9a:
	.long	0
# p10:
	.long	49000
# p11:
	.long	475000
# configaddr:
	.long	65528
# configsize:
	.byte	8
# erasesize:
	.zero	1
	.value	1024
# devicename:
	.string	"PIC18F46J13"
	.zero	1012
# deviceid:
	.value	22944
# flash:
	.zero	2
	.long	32768
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	39687
# devidrev4:
	.byte	0
# panelsize:
	.byte	64
# p9:
	.zero	2
	.long	1200
# p9a:
	.long	0
# p10:
	.long	49000
# p11:
	.long	475000
# configaddr:
	.long	65528
# configsize:
	.byte	8
# erasesize:
	.zero	1
	.value	1024
# devicename:
	.string	"PIC18F27J13"
	.zero	1012
# deviceid:
	.value	22880
# flash:
	.zero	2
	.long	65536
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	39687
# devidrev4:
	.byte	0
# panelsize:
	.byte	64
# p9:
	.zero	2
	.long	1200
# p9a:
	.long	0
# p10:
	.long	49000
# p11:
	.long	475000
# configaddr:
	.long	131064
# configsize:
	.byte	8
# erasesize:
	.zero	1
	.value	1024
# devicename:
	.string	"PIC18F47J13"
	.zero	1012
# deviceid:
	.value	23008
# flash:
	.zero	2
	.long	65536
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	39687
# devidrev4:
	.byte	0
# panelsize:
	.byte	64
# p9:
	.zero	2
	.long	1200
# p9a:
	.long	0
# p10:
	.long	49000
# p11:
	.long	475000
# configaddr:
	.long	131064
# configsize:
	.byte	8
# erasesize:
	.zero	1
	.value	1024
# devicename:
	.string	"PIC18F24J50"
	.zero	1012
# deviceid:
	.value	19456
# flash:
	.zero	2
	.long	8192
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	39687
# devidrev4:
	.byte	0
# panelsize:
	.byte	64
# p9:
	.zero	2
	.long	1200
# p9a:
	.long	0
# p10:
	.long	54000
# p11:
	.long	524000
# configaddr:
	.long	16376
# configsize:
	.byte	8
# erasesize:
	.zero	1
	.value	1024
# devicename:
	.string	"PIC18F44J50"
	.zero	1012
# deviceid:
	.value	19552
# flash:
	.zero	2
	.long	8192
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	39687
# devidrev4:
	.byte	0
# panelsize:
	.byte	64
# p9:
	.zero	2
	.long	1200
# p9a:
	.long	0
# p10:
	.long	54000
# p11:
	.long	524000
# configaddr:
	.long	16376
# configsize:
	.byte	8
# erasesize:
	.zero	1
	.value	1024
# devicename:
	.string	"PIC18F25J50"
	.zero	1012
# deviceid:
	.value	19488
# flash:
	.zero	2
	.long	16384
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	39687
# devidrev4:
	.byte	0
# panelsize:
	.byte	64
# p9:
	.zero	2
	.long	1200
# p9a:
	.long	0
# p10:
	.long	54000
# p11:
	.long	524000
# configaddr:
	.long	32760
# configsize:
	.byte	8
# erasesize:
	.zero	1
	.value	1024
# devicename:
	.string	"PIC18F45J50"
	.zero	1012
# deviceid:
	.value	19584
# flash:
	.zero	2
	.long	16384
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	39687
# devidrev4:
	.byte	0
# panelsize:
	.byte	64
# p9:
	.zero	2
	.long	1200
# p9a:
	.long	0
# p10:
	.long	54000
# p11:
	.long	524000
# configaddr:
	.long	32760
# configsize:
	.byte	8
# erasesize:
	.zero	1
	.value	1024
# devicename:
	.string	"PIC18F26J50"
	.zero	1012
# deviceid:
	.value	19520
# flash:
	.zero	2
	.long	32768
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	39687
# devidrev4:
	.byte	0
# panelsize:
	.byte	64
# p9:
	.zero	2
	.long	1200
# p9a:
	.long	0
# p10:
	.long	54000
# p11:
	.long	524000
# configaddr:
	.long	65528
# configsize:
	.byte	8
# erasesize:
	.zero	1
	.value	1024
# devicename:
	.string	"PIC18F46J50"
	.zero	1012
# deviceid:
	.value	19616
# flash:
	.zero	2
	.long	32768
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	39687
# devidrev4:
	.byte	0
# panelsize:
	.byte	64
# p9:
	.zero	2
	.long	1200
# p9a:
	.long	0
# p10:
	.long	54000
# p11:
	.long	524000
# configaddr:
	.long	65528
# configsize:
	.byte	8
# erasesize:
	.zero	1
	.value	1024
# devicename:
	.string	"PIC18F26J53"
	.zero	1012
# deviceid:
	.value	22560
# flash:
	.zero	2
	.long	32768
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	39687
# devidrev4:
	.byte	0
# panelsize:
	.byte	64
# p9:
	.zero	2
	.long	1200
# p9a:
	.long	0
# p10:
	.long	49000
# p11:
	.long	475000
# configaddr:
	.long	65528
# configsize:
	.byte	8
# erasesize:
	.zero	1
	.value	1024
# devicename:
	.string	"PIC18F46J53"
	.zero	1012
# deviceid:
	.value	22688
# flash:
	.zero	2
	.long	32768
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	39687
# devidrev4:
	.byte	0
# panelsize:
	.byte	64
# p9:
	.zero	2
	.long	1200
# p9a:
	.long	0
# p10:
	.long	49000
# p11:
	.long	475000
# configaddr:
	.long	65528
# configsize:
	.byte	8
# erasesize:
	.zero	1
	.value	1024
# devicename:
	.string	"PIC18F27J53"
	.zero	1012
# deviceid:
	.value	22624
# flash:
	.zero	2
	.long	65536
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	39687
# devidrev4:
	.byte	0
# panelsize:
	.byte	64
# p9:
	.zero	2
	.long	1200
# p9a:
	.long	0
# p10:
	.long	49000
# p11:
	.long	475000
# configaddr:
	.long	131064
# configsize:
	.byte	8
# erasesize:
	.zero	1
	.value	1024
# devicename:
	.string	"PIC18F47J53"
	.zero	1012
# deviceid:
	.value	22752
# flash:
	.zero	2
	.long	65536
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	39687
# devidrev4:
	.byte	0
# panelsize:
	.byte	64
# p9:
	.zero	2
	.long	1200
# p9a:
	.long	0
# p10:
	.long	49000
# p11:
	.long	475000
# configaddr:
	.long	131064
# configsize:
	.byte	8
# erasesize:
	.zero	1
	.value	1024
# devicename:
	.string	"PIC18LF24J10"
	.zero	1011
# deviceid:
	.value	7488
# flash:
	.zero	2
	.long	8192
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	39687
# devidrev4:
	.byte	0
# panelsize:
	.byte	64
# p9:
	.zero	2
	.long	3400
# p9a:
	.long	0
# p10:
	.long	49000
# p11:
	.long	475000
# configaddr:
	.long	16376
# configsize:
	.byte	8
# erasesize:
	.zero	1
	.value	1024
# devicename:
	.string	"PIC18LF44J10"
	.zero	1011
# deviceid:
	.value	7520
# flash:
	.zero	2
	.long	8192
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	39687
# devidrev4:
	.byte	0
# panelsize:
	.byte	64
# p9:
	.zero	2
	.long	3400
# p9a:
	.long	0
# p10:
	.long	49000
# p11:
	.long	475000
# configaddr:
	.long	16376
# configsize:
	.byte	8
# erasesize:
	.zero	1
	.value	1024
# devicename:
	.string	"PIC18LF25J10"
	.zero	1011
# deviceid:
	.value	7232
# flash:
	.zero	2
	.long	16384
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	39687
# devidrev4:
	.byte	0
# panelsize:
	.byte	64
# p9:
	.zero	2
	.long	3400
# p9a:
	.long	0
# p10:
	.long	49000
# p11:
	.long	475000
# configaddr:
	.long	32760
# configsize:
	.byte	8
# erasesize:
	.zero	1
	.value	1024
# devicename:
	.string	"PIC18LF45J10"
	.zero	1011
# deviceid:
	.value	7264
# flash:
	.zero	2
	.long	16384
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	39687
# devidrev4:
	.byte	0
# panelsize:
	.byte	64
# p9:
	.zero	2
	.long	3400
# p9a:
	.long	0
# p10:
	.long	49000
# p11:
	.long	475000
# configaddr:
	.long	32760
# configsize:
	.byte	8
# erasesize:
	.zero	1
	.value	1024
# devicename:
	.string	"PIC18LF24J11"
	.zero	1011
# deviceid:
	.value	20032
# flash:
	.zero	2
	.long	8192
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	39687
# devidrev4:
	.byte	0
# panelsize:
	.byte	64
# p9:
	.zero	2
	.long	1200
# p9a:
	.long	0
# p10:
	.long	54000
# p11:
	.long	524000
# configaddr:
	.long	16376
# configsize:
	.byte	8
# erasesize:
	.zero	1
	.value	1024
# devicename:
	.string	"PIC18LF44J11"
	.zero	1011
# deviceid:
	.value	20128
# flash:
	.zero	2
	.long	8192
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	39687
# devidrev4:
	.byte	0
# panelsize:
	.byte	64
# p9:
	.zero	2
	.long	1200
# p9a:
	.long	0
# p10:
	.long	54000
# p11:
	.long	524000
# configaddr:
	.long	16376
# configsize:
	.byte	8
# erasesize:
	.zero	1
	.value	1024
# devicename:
	.string	"PIC18LF25J11"
	.zero	1011
# deviceid:
	.value	20064
# flash:
	.zero	2
	.long	16384
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	39687
# devidrev4:
	.byte	0
# panelsize:
	.byte	64
# p9:
	.zero	2
	.long	1200
# p9a:
	.long	0
# p10:
	.long	54000
# p11:
	.long	524000
# configaddr:
	.long	32760
# configsize:
	.byte	8
# erasesize:
	.zero	1
	.value	1024
# devicename:
	.string	"PIC18LF45J11"
	.zero	1011
# deviceid:
	.value	20160
# flash:
	.zero	2
	.long	16384
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	39687
# devidrev4:
	.byte	0
# panelsize:
	.byte	64
# p9:
	.zero	2
	.long	1200
# p9a:
	.long	0
# p10:
	.long	54000
# p11:
	.long	524000
# configaddr:
	.long	32760
# configsize:
	.byte	8
# erasesize:
	.zero	1
	.value	1024
# devicename:
	.string	"PIC18LF26J11"
	.zero	1011
# deviceid:
	.value	20096
# flash:
	.zero	2
	.long	32768
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	39687
# devidrev4:
	.byte	0
# panelsize:
	.byte	64
# p9:
	.zero	2
	.long	1200
# p9a:
	.long	0
# p10:
	.long	54000
# p11:
	.long	524000
# configaddr:
	.long	65528
# configsize:
	.byte	8
# erasesize:
	.zero	1
	.value	1024
# devicename:
	.string	"PIC18LF46J11"
	.zero	1011
# deviceid:
	.value	20192
# flash:
	.zero	2
	.long	32768
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	39687
# devidrev4:
	.byte	0
# panelsize:
	.byte	64
# p9:
	.zero	2
	.long	1200
# p9a:
	.long	0
# p10:
	.long	54000
# p11:
	.long	524000
# configaddr:
	.long	65528
# configsize:
	.byte	8
# erasesize:
	.zero	1
	.value	1024
# devicename:
	.string	"PIC18LF26J13"
	.zero	1011
# deviceid:
	.value	23328
# flash:
	.zero	2
	.long	32768
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	39687
# devidrev4:
	.byte	0
# panelsize:
	.byte	64
# p9:
	.zero	2
	.long	1200
# p9a:
	.long	0
# p10:
	.long	49000
# p11:
	.long	475000
# configaddr:
	.long	65528
# configsize:
	.byte	8
# erasesize:
	.zero	1
	.value	1024
# devicename:
	.string	"PIC18LF46J13"
	.zero	1011
# deviceid:
	.value	23456
# flash:
	.zero	2
	.long	32768
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	39687
# devidrev4:
	.byte	0
# panelsize:
	.byte	64
# p9:
	.zero	2
	.long	1200
# p9a:
	.long	0
# p10:
	.long	49000
# p11:
	.long	475000
# configaddr:
	.long	65528
# configsize:
	.byte	8
# erasesize:
	.zero	1
	.value	1024
# devicename:
	.string	"PIC18LF27J13"
	.zero	1011
# deviceid:
	.value	23392
# flash:
	.zero	2
	.long	65536
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	39687
# devidrev4:
	.byte	0
# panelsize:
	.byte	64
# p9:
	.zero	2
	.long	1200
# p9a:
	.long	0
# p10:
	.long	49000
# p11:
	.long	475000
# configaddr:
	.long	131064
# configsize:
	.byte	8
# erasesize:
	.zero	1
	.value	1024
# devicename:
	.string	"PIC18LF47J13"
	.zero	1011
# deviceid:
	.value	23520
# flash:
	.zero	2
	.long	65536
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	39687
# devidrev4:
	.byte	0
# panelsize:
	.byte	64
# p9:
	.zero	2
	.long	1200
# p9a:
	.long	0
# p10:
	.long	49000
# p11:
	.long	475000
# configaddr:
	.long	131064
# configsize:
	.byte	8
# erasesize:
	.zero	1
	.value	1024
# devicename:
	.string	"PIC18LF24J50"
	.zero	1011
# deviceid:
	.value	19648
# flash:
	.zero	2
	.long	8192
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	39687
# devidrev4:
	.byte	0
# panelsize:
	.byte	64
# p9:
	.zero	2
	.long	1200
# p9a:
	.long	0
# p10:
	.long	54000
# p11:
	.long	524000
# configaddr:
	.long	16376
# configsize:
	.byte	8
# erasesize:
	.zero	1
	.value	1024
# devicename:
	.string	"PIC18LF44J50"
	.zero	1011
# deviceid:
	.value	19744
# flash:
	.zero	2
	.long	8192
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	39687
# devidrev4:
	.byte	0
# panelsize:
	.byte	64
# p9:
	.zero	2
	.long	1200
# p9a:
	.long	0
# p10:
	.long	54000
# p11:
	.long	524000
# configaddr:
	.long	16376
# configsize:
	.byte	8
# erasesize:
	.zero	1
	.value	1024
# devicename:
	.string	"PIC18LF25J50"
	.zero	1011
# deviceid:
	.value	19680
# flash:
	.zero	2
	.long	16384
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	39687
# devidrev4:
	.byte	0
# panelsize:
	.byte	64
# p9:
	.zero	2
	.long	1200
# p9a:
	.long	0
# p10:
	.long	54000
# p11:
	.long	524000
# configaddr:
	.long	32760
# configsize:
	.byte	8
# erasesize:
	.zero	1
	.value	1024
# devicename:
	.string	"PIC18LF45J50"
	.zero	1011
# deviceid:
	.value	19776
# flash:
	.zero	2
	.long	16384
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	39687
# devidrev4:
	.byte	0
# panelsize:
	.byte	64
# p9:
	.zero	2
	.long	1200
# p9a:
	.long	0
# p10:
	.long	54000
# p11:
	.long	524000
# configaddr:
	.long	32760
# configsize:
	.byte	8
# erasesize:
	.zero	1
	.value	1024
# devicename:
	.string	"PIC18LF26J50"
	.zero	1011
# deviceid:
	.value	19712
# flash:
	.zero	2
	.long	32768
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	39687
# devidrev4:
	.byte	0
# panelsize:
	.byte	64
# p9:
	.zero	2
	.long	1200
# p9a:
	.long	0
# p10:
	.long	54000
# p11:
	.long	524000
# configaddr:
	.long	65528
# configsize:
	.byte	8
# erasesize:
	.zero	1
	.value	1024
# devicename:
	.string	"PIC18LF46J50"
	.zero	1011
# deviceid:
	.value	19808
# flash:
	.zero	2
	.long	32768
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	39687
# devidrev4:
	.byte	0
# panelsize:
	.byte	64
# p9:
	.zero	2
	.long	1200
# p9a:
	.long	0
# p10:
	.long	54000
# p11:
	.long	524000
# configaddr:
	.long	65528
# configsize:
	.byte	8
# erasesize:
	.zero	1
	.value	1024
# devicename:
	.string	"PIC18LF26J53"
	.zero	1011
# deviceid:
	.value	23072
# flash:
	.zero	2
	.long	32768
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	39687
# devidrev4:
	.byte	0
# panelsize:
	.byte	64
# p9:
	.zero	2
	.long	1200
# p9a:
	.long	0
# p10:
	.long	49000
# p11:
	.long	475000
# configaddr:
	.long	65528
# configsize:
	.byte	8
# erasesize:
	.zero	1
	.value	1024
# devicename:
	.string	"PIC18LF46J53"
	.zero	1011
# deviceid:
	.value	23200
# flash:
	.zero	2
	.long	32768
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	39687
# devidrev4:
	.byte	0
# panelsize:
	.byte	64
# p9:
	.zero	2
	.long	1200
# p9a:
	.long	0
# p10:
	.long	49000
# p11:
	.long	475000
# configaddr:
	.long	65528
# configsize:
	.byte	8
# erasesize:
	.zero	1
	.value	1024
# devicename:
	.string	"PIC18LF27J53"
	.zero	1011
# deviceid:
	.value	23136
# flash:
	.zero	2
	.long	65536
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	39687
# devidrev4:
	.byte	0
# panelsize:
	.byte	64
# p9:
	.zero	2
	.long	1200
# p9a:
	.long	0
# p10:
	.long	49000
# p11:
	.long	475000
# configaddr:
	.long	131064
# configsize:
	.byte	8
# erasesize:
	.zero	1
	.value	1024
# devicename:
	.string	"PIC18LF47J53"
	.zero	1011
# deviceid:
	.value	23264
# flash:
	.zero	2
	.long	65536
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	39687
# devidrev4:
	.byte	0
# panelsize:
	.byte	64
# p9:
	.zero	2
	.long	1200
# p9a:
	.long	0
# p10:
	.long	49000
# p11:
	.long	475000
# configaddr:
	.long	131064
# configsize:
	.byte	8
# erasesize:
	.zero	1
	.value	1024
# devicename:
	.string	"PIC18F13K22"
	.zero	1012
# deviceid:
	.value	20288
# flash:
	.zero	2
	.long	4096
# eeprom:
	.value	256
# datasheet:
	.zero	2
	.long	41357
# devidrev4:
	.byte	0
# panelsize:
	.byte	8
# p9:
	.zero	2
	.long	1000
# p9a:
	.long	5000
# p10:
	.long	100
# p11:
	.long	5000
# configaddr:
	.long	3145728
# configsize:
	.byte	14
# erasesize:
	.zero	1
	.value	64
# devicename:
	.string	"PIC18F14K22"
	.zero	1012
# deviceid:
	.value	20256
# flash:
	.zero	2
	.long	8192
# eeprom:
	.value	256
# datasheet:
	.zero	2
	.long	41357
# devidrev4:
	.byte	0
# panelsize:
	.byte	16
# p9:
	.zero	2
	.long	1000
# p9a:
	.long	5000
# p10:
	.long	100
# p11:
	.long	5000
# configaddr:
	.long	3145728
# configsize:
	.byte	14
# erasesize:
	.zero	1
	.value	64
# devicename:
	.string	"PIC18LF13K22"
	.zero	1011
# deviceid:
	.value	20352
# flash:
	.zero	2
	.long	4096
# eeprom:
	.value	256
# datasheet:
	.zero	2
	.long	41357
# devidrev4:
	.byte	0
# panelsize:
	.byte	8
# p9:
	.zero	2
	.long	1000
# p9a:
	.long	5000
# p10:
	.long	100
# p11:
	.long	5000
# configaddr:
	.long	3145728
# configsize:
	.byte	14
# erasesize:
	.zero	1
	.value	64
# devicename:
	.string	"PIC18LF14K22"
	.zero	1011
# deviceid:
	.value	20320
# flash:
	.zero	2
	.long	8192
# eeprom:
	.value	256
# datasheet:
	.zero	2
	.long	41357
# devidrev4:
	.byte	0
# panelsize:
	.byte	16
# p9:
	.zero	2
	.long	1000
# p9a:
	.long	5000
# p10:
	.long	100
# p11:
	.long	5000
# configaddr:
	.long	3145728
# configsize:
	.byte	14
# erasesize:
	.zero	1
	.value	64
# devicename:
	.string	"PIC18F23K20"
	.zero	1012
# deviceid:
	.value	8416
# flash:
	.zero	2
	.long	4096
# eeprom:
	.value	256
# datasheet:
	.zero	2
	.long	41297
# devidrev4:
	.byte	0
# panelsize:
	.byte	16
# p9:
	.zero	2
	.long	1000
# p9a:
	.long	5000
# p10:
	.long	200
# p11:
	.long	5000
# configaddr:
	.long	3145728
# configsize:
	.byte	14
# erasesize:
	.zero	1
	.value	64
# devicename:
	.string	"PIC18F24K20"
	.zero	1012
# deviceid:
	.value	8352
# flash:
	.zero	2
	.long	8192
# eeprom:
	.value	256
# datasheet:
	.zero	2
	.long	41297
# devidrev4:
	.byte	0
# panelsize:
	.byte	32
# p9:
	.zero	2
	.long	1000
# p9a:
	.long	5000
# p10:
	.long	200
# p11:
	.long	5000
# configaddr:
	.long	3145728
# configsize:
	.byte	14
# erasesize:
	.zero	1
	.value	64
# devicename:
	.string	"PIC18F25K20"
	.zero	1012
# deviceid:
	.value	8288
# flash:
	.zero	2
	.long	16384
# eeprom:
	.value	256
# datasheet:
	.zero	2
	.long	41297
# devidrev4:
	.byte	0
# panelsize:
	.byte	32
# p9:
	.zero	2
	.long	1000
# p9a:
	.long	5000
# p10:
	.long	200
# p11:
	.long	5000
# configaddr:
	.long	3145728
# configsize:
	.byte	14
# erasesize:
	.zero	1
	.value	64
# devicename:
	.string	"PIC18F26K20"
	.zero	1012
# deviceid:
	.value	8224
# flash:
	.zero	2
	.long	32768
# eeprom:
	.value	1024
# datasheet:
	.zero	2
	.long	41297
# devidrev4:
	.byte	0
# panelsize:
	.byte	64
# p9:
	.zero	2
	.long	1000
# p9a:
	.long	5000
# p10:
	.long	200
# p11:
	.long	5000
# configaddr:
	.long	3145728
# configsize:
	.byte	14
# erasesize:
	.zero	1
	.value	64
# devicename:
	.string	"PIC18F43K20"
	.zero	1012
# deviceid:
	.value	8384
# flash:
	.zero	2
	.long	4096
# eeprom:
	.value	256
# datasheet:
	.zero	2
	.long	41297
# devidrev4:
	.byte	0
# panelsize:
	.byte	16
# p9:
	.zero	2
	.long	1000
# p9a:
	.long	5000
# p10:
	.long	200
# p11:
	.long	5000
# configaddr:
	.long	3145728
# configsize:
	.byte	14
# erasesize:
	.zero	1
	.value	64
# devicename:
	.string	"PIC18F44K20"
	.zero	1012
# deviceid:
	.value	8320
# flash:
	.zero	2
	.long	8192
# eeprom:
	.value	256
# datasheet:
	.zero	2
	.long	41297
# devidrev4:
	.byte	0
# panelsize:
	.byte	32
# p9:
	.zero	2
	.long	1000
# p9a:
	.long	5000
# p10:
	.long	200
# p11:
	.long	5000
# configaddr:
	.long	3145728
# configsize:
	.byte	14
# erasesize:
	.zero	1
	.value	64
# devicename:
	.string	"PIC18F45K20"
	.zero	1012
# deviceid:
	.value	8256
# flash:
	.zero	2
	.long	16384
# eeprom:
	.value	256
# datasheet:
	.zero	2
	.long	41297
# devidrev4:
	.byte	0
# panelsize:
	.byte	32
# p9:
	.zero	2
	.long	1000
# p9a:
	.long	5000
# p10:
	.long	200
# p11:
	.long	5000
# configaddr:
	.long	3145728
# configsize:
	.byte	14
# erasesize:
	.zero	1
	.value	64
# devicename:
	.string	"PIC18F46K20"
	.zero	1012
# deviceid:
	.value	8192
# flash:
	.zero	2
	.long	32768
# eeprom:
	.value	1024
# datasheet:
	.zero	2
	.long	41297
# devidrev4:
	.byte	0
# panelsize:
	.byte	64
# p9:
	.zero	2
	.long	1000
# p9a:
	.long	5000
# p10:
	.long	200
# p11:
	.long	5000
# configaddr:
	.long	3145728
# configsize:
	.byte	14
# erasesize:
	.zero	1
	.value	64
# devicename:
	.string	"(null)"
	.zero	1017
# deviceid:
	.value	0
# flash:
	.zero	2
	.long	0
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	0
# devidrev4:
	.byte	0
# panelsize:
	.byte	0
# p9:
	.zero	2
	.long	0
# p9a:
	.long	0
# p10:
	.long	0
# p11:
	.long	0
# configaddr:
	.long	0
# configsize:
	.byte	0
# erasesize:
	.zero	1
	.value	0
	.comm	pic16_conf,26,16
	.globl	pic16_ops
	.align 16
	.type	pic16_ops, @object
	.size	pic16_ops, 160
pic16_ops:
# arch:
	.long	65535
# selector:
	.zero	4
	.quad	pic16_selector
# read_config_memory:
	.quad	pic16_read_config_memory
# get_program_size:
	.quad	pic16_get_program_size
# get_data_size:
	.quad	pic16_get_data_size
# get_executive_size:
	.quad	0
# read_program_memory_block:
	.quad	pic16_read_program_memory_block
# read_data_memory_block:
	.quad	pic16_read_data_memory_block
# program:
	.quad	pic16_program
# verify:
	.quad	pic16_verify
# bulk_erase:
	.quad	pic16_bulk_erase
# row_erase:
	.quad	pic16_row_erase
# dumpdeviceid:
	.quad	pic16_dumpdeviceid
# dumpconfig:
	.quad	pic16_dumpconfig
# dumposccal:
	.quad	0
# dumpdevice:
	.quad	pic16_dumpdevice
# dumphexcode:
	.quad	pic16_dumphexcode
# dumpinhxcode:
	.quad	pic16_dumpinhxcode
# dumphexdata:
	.quad	pic16_dumphexdata
# dumpinhxdata:
	.quad	pic16_dumpinhxdata
	.section	.rodata
	.align 16
	.type	__func__.5909, @object
	.size	__func__.5909, 17
__func__.5909:
	.string	"pic16_bulk_erase"
	.align 16
	.type	__func__.5915, @object
	.size	__func__.5915, 16
__func__.5915:
	.string	"pic16_row_erase"
	.align 16
	.type	__func__.5932, @object
	.size	__func__.5932, 25
__func__.5932:
	.string	"pic16_read_config_memory"
	.align 16
	.type	__func__.6002, @object
	.size	__func__.6002, 24
__func__.6002:
	.string	"pic16_write_data_memory"
	.local	buffer.6037
	.comm	buffer.6037,8,8
	.local	write_pending.6039
	.comm	write_pending.6039,4,4
	.local	buffer_size.6038
	.comm	buffer_size.6038,4,4
	.local	buffer_address.6036
	.comm	buffer_address.6036,4,4
	.local	buffer_region.6035
	.comm	buffer_region.6035,4,4
	.align 16
	.type	__func__.6040, @object
	.size	__func__.6040, 21
__func__.6040:
	.string	"pic16_write_buffered"
	.align 16
	.type	__func__.6066, @object
	.size	__func__.6066, 16
__func__.6066:
	.string	"pic16_getregion"
	.align 16
	.type	__func__.6075, @object
	.size	__func__.6075, 23
__func__.6075:
	.string	"pic16_init_writeregion"
	.align 16
	.type	__func__.6088, @object
	.size	__func__.6088, 18
__func__.6088:
	.string	"pic16_writeregion"
	.align 16
	.type	__func__.6097, @object
	.size	__func__.6097, 24
__func__.6097:
	.string	"pic16_init_verifyregion"
	.align 16
	.type	__func__.6112, @object
	.size	__func__.6112, 19
__func__.6112:
	.string	"pic16_verifyregion"
	.align 16
	.type	__func__.6186, @object
	.size	__func__.6186, 18
__func__.6186:
	.string	"pic16_dumphexcode"
	.align 16
	.type	__func__.6224, @object
	.size	__func__.6224, 18
__func__.6224:
	.string	"pic16_dumphexdata"
	.ident	"GCC: (Ubuntu/Linaro 4.7.2-2ubuntu1) 4.7.2"
	.section	.note.GNU-stack,"",@progbits
