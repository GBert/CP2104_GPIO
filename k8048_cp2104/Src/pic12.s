	.file	"pic12.c"
# GNU C (Ubuntu/Linaro 4.7.2-2ubuntu1) version 4.7.2 (x86_64-linux-gnu)
#	compiled by GNU C version 4.7.2, GMP version 5.0.2, MPFR version 3.1.0-p3, MPC version 0.9
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# angegebene Optionen:  -fpreprocessed pic12.i -mtune=generic -march=x86-64
# -auxbase-strip pic12.o -Os -pedantic-errors -Wall -std=gnu99
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
	.globl	pic12_get_program_size
	.type	pic12_get_program_size, @function
pic12_get_program_size:
.LFB53:
	.cfi_startproc
	movl	$0, (%rdi)	#, *addr_1(D)
	movl	pic12_index(%rip), %eax	# pic12_index, pic12_index
	imulq	$1044, %rax, %rax	#, pic12_index, tmp67
	movzwl	pic12_map+1028(%rax), %eax	# pic12_map[pic12_index.17_2].flash, pic12_map[pic12_index.17_2].flash
	ret
	.cfi_endproc
.LFE53:
	.size	pic12_get_program_size, .-pic12_get_program_size
	.globl	pic12_get_data_size
	.type	pic12_get_data_size, @function
pic12_get_data_size:
.LFB54:
	.cfi_startproc
	movl	pic12_index(%rip), %eax	# pic12_index, pic12_index
	imulq	$1044, %rax, %rax	#, pic12_index, tmp69
	movzwl	pic12_map+1028(%rax), %eax	# pic12_map[pic12_index.16_1].flash, pic12_map[pic12_index.16_1].flash
	movl	%eax, (%rdi)	# pic12_map[pic12_index.16_1].flash, *addr_4(D)
	movl	pic12_index(%rip), %eax	# pic12_index, pic12_index
	imulq	$1044, %rax, %rax	#, pic12_index, tmp75
	movzwl	pic12_map+1030(%rax), %eax	# pic12_map[pic12_index.16_5].dataflash, pic12_map[pic12_index.16_5].dataflash
	ret
	.cfi_endproc
.LFE54:
	.size	pic12_get_data_size, .-pic12_get_data_size
	.globl	pic12_dumpdevice
	.type	pic12_dumpdevice, @function
pic12_dumpdevice:
.LFB74:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movl	$1, %esi	#,
	xorl	%edi, %edi	#
	pushq	%rbx	#
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	xorl	%ebx, %ebx	# ivtmp.66
	pushq	%rdx	#
	.cfi_def_cfa_offset 32
	call	pic_dumpaddr	#
	movl	pic12_index(%rip), %edx	# pic12_index, pic12_index.0
	imulq	$1044, %rdx, %rdx	#, pic12_index.0, tmp95
	movw	pic12_map+1030(%rdx), %ax	# pic12_map[pic12_index.0_2].dataflash, address
	addl	pic12_map+1028(%rdx), %eax	# pic12_map[pic12_index.0_2].flash, address
	movzwl	%ax, %ebp	# address, address
.L4:
	movzwl	pic12_conf(%rbx,%rbx), %esi	# MEM[symbol: pic12_conf, index: ivtmp.66_24, step: 2, offset: 0B], MEM[symbol: pic12_conf, index: ivtmp.66_24, step: 2, offset: 0B]
	leal	0(%rbp,%rbx), %edi	#, tmp106
	incq	%rbx	# ivtmp.66
	call	pic_dumpword16	#
	cmpq	$4, %rbx	#, ivtmp.66
	jne	.L4	#,
	movzwl	pic12_conf+12(%rip), %esi	# pic12_conf.config, pic12_conf.config
	movl	$4095, %edi	#,
	popq	%rax	#
	.cfi_def_cfa_offset 24
	popq	%rbx	#
	.cfi_def_cfa_offset 16
	popq	%rbp	#
	.cfi_def_cfa_offset 8
	jmp	pic_dumpword16	#
	.cfi_endproc
.LFE74:
	.size	pic12_dumpdevice, .-pic12_dumpdevice
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"[%04X] [CONFIG]   %04X\n"
	.text
	.globl	pic12_dumpconfig
	.type	pic12_dumpconfig, @function
pic12_dumpconfig:
.LFB69:
	.cfi_startproc
	movzwl	pic12_conf+12(%rip), %ecx	# pic12_conf.config, pic12_conf.config
	movl	$4095, %edx	#,
	movl	$.LC0, %esi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	jmp	__printf_chk	#
	.cfi_endproc
.LFE69:
	.size	pic12_dumpconfig, .-pic12_dumpconfig
	.section	.rodata.str1.1
.LC1:
	.string	"[0000] [PROGRAM]  %04X WORDS\n"
.LC2:
	.string	"[%04X] [OSCCAL]   %04X\n"
.LC3:
	.string	"[%04X] [DATA]     %04X BYTES\n"
.LC4:
	.string	"[%04X] [USERID%d]  %04X %c\n"
.LC5:
	.string	"[%04X] [BACKUP]   %04X\n"
.LC6:
	.string	"       [DEVICEID] %s\n"
	.text
	.globl	pic12_dumpdeviceid
	.type	pic12_dumpdeviceid, @function
pic12_dumpdeviceid:
.LFB67:
	.cfi_startproc
	movl	pic12_index(%rip), %eax	# pic12_index, pic12_index
	pushq	%r12	#
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	movl	$.LC1, %esi	#,
	pushq	%rbp	#
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movq	%rdi, %rbp	# k, k
	movl	$1, %edi	#,
	imulq	$1044, %rax, %rax	#, pic12_index, tmp136
	pushq	%rbx	#
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movzwl	pic12_map+1028(%rax), %edx	# pic12_map[pic12_index.4_3].flash, pic12_map[pic12_index.4_3].flash
	xorl	%eax, %eax	#
	call	__printf_chk	#
	movl	pic12_index(%rip), %eax	# pic12_index, pic12_index.4
	imulq	$1044, %rax, %rax	#, pic12_index.4, tmp141
	addq	$pic12_map+1024, %rax	#, tmp142
	cmpw	$0, 12(%rax)	#, pic12_map[pic12_index.4_6].backupaddr
	je	.L9	#,
	movzwl	4(%rax), %edx	# pic12_map[pic12_index.4_6].flash, pic12_map[pic12_index.4_6].flash
	movzwl	pic12_conf+10(%rip), %ecx	# pic12_conf.osccal_reset, pic12_conf.osccal_reset
	movl	$.LC2, %esi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	decl	%edx	# tmp150
	call	__printf_chk	#
.L9:
	movl	pic12_index(%rip), %eax	# pic12_index, pic12_index.4
	imulq	$1044, %rax, %rax	#, pic12_index.4, tmp153
	movzwl	pic12_map+1030(%rax), %ecx	# pic12_map[pic12_index.4_14].dataflash,
	addq	$pic12_map+1024, %rax	#, tmp154
	testw	%cx, %cx	# D.6195
	je	.L10	#,
	movzwl	4(%rax), %edx	# pic12_map[pic12_index.4_14].flash, pic12_map[pic12_index.4_14].flash
	movl	$.LC3, %esi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
.L10:
	xorl	%ebx, %ebx	# ivtmp.104
	movl	$46, %r12d	#, iftmp.5
.L12:
	movzwl	pic12_conf(%rbx,%rbx), %r8d	# MEM[symbol: pic12_conf, index: ivtmp.104_117, step: 2, offset: 0B],
	movl	%ebx, %ecx	# ivtmp.104,
	movl	$.LC4, %esi	#,
	movl	$1, %edi	#,
	movzbl	%r8b, %r9d	# D.6200, D.6201
	leal	-32(%r9), %eax	#, tmp162
	movzwl	%r9w, %r9d	# D.6201, D.6201
	cmpw	$94, %ax	#, tmp162
	movl	pic12_index(%rip), %eax	# pic12_index, pic12_index.4
	cmova	%r12d, %r9d	# D.6201,, iftmp.5, iftmp.5
	imulq	$1044, %rax, %rax	#, pic12_index.4, tmp166
	movzwl	pic12_map+1028(%rax), %edx	# pic12_map[pic12_index.4_32].flash, pic12_map[pic12_index.4_32].flash
	addq	$pic12_map+1024, %rax	#, tmp167
	movzwl	6(%rax), %eax	# pic12_map[pic12_index.4_32].dataflash, pic12_map[pic12_index.4_32].dataflash
	addl	%eax, %edx	# pic12_map[pic12_index.4_32].dataflash, tmp174
	xorl	%eax, %eax	#
	addl	%ebx, %edx	# ivtmp.104, tmp175
	incq	%rbx	# ivtmp.104
	call	__printf_chk	#
	cmpq	$4, %rbx	#, ivtmp.104
	jne	.L12	#,
	movl	pic12_index(%rip), %eax	# pic12_index, pic12_index
	imulq	$1044, %rax, %rax	#, pic12_index, tmp178
	movzwl	pic12_map+1036(%rax), %edx	# pic12_map[pic12_index.4_42].backupaddr,
	testw	%dx, %dx	# D.6189
	je	.L13	#,
	movzwl	pic12_conf+8(%rip), %ecx	# pic12_conf.osccal_backup, pic12_conf.osccal_backup
	movl	$.LC5, %esi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
.L13:
	movq	%rbp, %rdi	# k,
	xorl	%esi, %esi	#
	call	pic12_dumpconfig	#
	movl	pic12_index(%rip), %edx	# pic12_index, pic12_index
	movl	$.LC6, %esi	#,
	movl	$1, %edi	#,
	popq	%rbx	#
	.cfi_def_cfa_offset 24
	popq	%rbp	#
	.cfi_def_cfa_offset 16
	popq	%r12	#
	.cfi_def_cfa_offset 8
	imulq	$1044, %rdx, %rdx	#, pic12_index, tmp184
	xorl	%eax, %eax	#
	addq	$pic12_map, %rdx	#, tmp185
	jmp	__printf_chk	#
	.cfi_endproc
.LFE67:
	.size	pic12_dumpdeviceid, .-pic12_dumpdeviceid
	.section	.rodata.str1.1
.LC7:
	.string	":%02X%02X%02X00"
.LC8:
	.string	"%02X00"
.LC9:
	.string	"%02X\n"
	.text
	.globl	pic12_dumpinhxdata
	.type	pic12_dumpinhxdata, @function
pic12_dumpinhxdata:
.LFB73:
	.cfi_startproc
	pushq	%r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14	#
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movq	%rcx, %r14	# data, data
	pushq	%r13	#
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movl	%esi, %r13d	# address, address
	pushq	%r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
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
	jmp	.L24	#
.L27:
	movl	%ebx, %eax	# i, i
	movl	$8, %esi	#,
	movl	$4095, %edi	#,
	leaq	(%r14,%rax,2), %rdx	#, tmp133
	call	pic_mtdata	#
	testl	%eax, %eax	# D.6089
	jne	.L25	#,
	leal	(%rbx,%r13), %ebp	#, tmp134
	shrl	$7, %r12d	#, D.6092
	movl	$254, %r8d	#,
	movzbl	%r12b, %ecx	# D.6092, tmp136
	movl	$16, %edx	#,
	movl	$.LC7, %esi	#,
	addl	%ebp, %ebp	# lb
	movl	$1, %edi	#,
	andl	%ebp, %r8d	# lb,
	leal	16(%rbp,%r12), %r12d	#, cc
	xorl	%ebp, %ebp	# ivtmp.127
	call	__printf_chk	#
.L26:
	leal	(%rbx,%rbp), %eax	#, tmp139
	movl	$.LC8, %esi	#,
	movl	$1, %edi	#,
	incq	%rbp	# ivtmp.127
	movw	(%r14,%rax,2), %r15w	# *D.6100_25, *D.6100_25
	xorl	%eax, %eax	#
	movzbl	%r15b, %edx	# *D.6100_25, lb
	addl	%r15d, %r12d	# *D.6100_25, cc
	call	__printf_chk	#
	cmpq	$8, %rbp	#, ivtmp.127
	jne	.L26	#,
	negl	%r12d	# tmp143
	movl	$.LC9, %esi	#,
	movl	$1, %edi	#,
	movzbl	%r12b, %edx	# tmp143, tmp144
	xorl	%eax, %eax	#
	call	__printf_chk	#
.L25:
	addl	$8, %ebx	#, i
.L24:
	cmpl	12(%rsp), %ebx	# %sfp, i
	leal	(%rbx,%r13), %r12d	#, address
	jb	.L27	#,
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
.LFE73:
	.size	pic12_dumpinhxdata, .-pic12_dumpinhxdata
	.section	.rodata.str1.1
.LC10:
	.string	"[%04X] "
.LC11:
	.string	"%02X "
.LC12:
	.string	"%s: information: data flash empty\n"
	.text
	.globl	pic12_dumphexdata
	.type	pic12_dumphexdata, @function
pic12_dumphexdata:
.LFB72:
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
	jmp	.L31	#
.L36:
	movl	%ebx, %eax	# i, i
	movl	$16, %esi	#,
	movl	$4095, %edi	#,
	leaq	(%r12,%rax,2), %rdx	#, tmp117
	call	pic_mtdata	#
	testl	%eax, %eax	# D.6111
	jne	.L32	#,
	movl	%r13d, %edx	# address,
	movl	$.LC10, %esi	#,
	movl	$1, %edi	#,
	xorl	%r13d, %r13d	# j
	call	__printf_chk	#
.L33:
	leal	0(%r13,%rbx), %eax	#, tmp119
	movl	$.LC11, %esi	#,
	movl	$1, %edi	#,
	incl	%r13d	# j
	movzwl	(%r12,%rax,2), %edx	# *D.6117_21, *D.6117_21
	xorl	%eax, %eax	#
	call	__printf_chk	#
	cmpl	$16, %r13d	#, j
	jne	.L33	#,
	xorb	%r13b, %r13b	#
.L35:
	leal	0(%r13,%rbx), %eax	#, tmp122
	movw	(%r12,%rax,2), %di	# *D.6117_29, *D.6117_29
	andw	$255, %di	#, D.6121
	leal	-32(%rdi), %eax	#, tmp124
	movzwl	%di, %edi	# D.6121, D.6121
	cmpw	$94, %ax	#, tmp124
	cmova	%r15d, %edi	# D.6121,, iftmp.1, iftmp.1
	incl	%r13d	# j
	call	putchar	#
	cmpl	$16, %r13d	#, j
	jne	.L35	#,
	movl	$10, %edi	#,
	incl	%ebp	# nlines
	call	putchar	#
.L32:
	addl	$16, %ebx	#, i
.L31:
	cmpl	12(%rsp), %ebx	# %sfp, i
	leal	(%rbx,%r14), %r13d	#, address
	jb	.L36	#,
	testl	%ebp, %ebp	# nlines
	jne	.L30	#,
	addq	$24, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movl	$__func__.6049, %edx	#,
	movl	$.LC12, %esi	#,
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
.L30:
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
.LFE72:
	.size	pic12_dumphexdata, .-pic12_dumphexdata
	.section	.rodata.str1.1
.LC13:
	.string	"%02X%02X"
	.text
	.globl	pic12_dumpinhxcode
	.type	pic12_dumpinhxcode, @function
pic12_dumpinhxcode:
.LFB71:
	.cfi_startproc
	pushq	%r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	xorl	%edi, %edi	#
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
	jmp	.L43	#
.L46:
	movl	%ebx, %eax	# i, i
	movl	$8, %esi	#,
	movl	$4095, %edi	#,
	leaq	0(%r13,%rax,4), %rdx	#, tmp147
	call	pic_mtcode	#
	testl	%eax, %eax	# D.6131
	jne	.L44	#,
	leal	(%rbx,%r12), %r14d	#, tmp148
	shrl	$7, %ebp	#, D.6134
	movl	$254, %r8d	#,
	movzbl	%bpl, %ecx	# D.6134, tmp150
	movl	$16, %edx	#,
	movl	$.LC7, %esi	#,
	addl	%r14d, %r14d	# lb
	movl	$1, %edi	#,
	andl	%r14d, %r8d	# lb,
	leal	16(%r14,%rbp), %r15d	#, cc
	xorl	%ebp, %ebp	# ivtmp.201
	call	__printf_chk	#
.L45:
	leal	(%rbx,%rbp), %eax	#, tmp153
	movl	$.LC13, %esi	#,
	movl	$1, %edi	#,
	incq	%rbp	# ivtmp.201
	movl	0(%r13,%rax,4), %r14d	# *D.6142_25, D.6143
	movl	%r14d, %eax	# D.6143,
	movzbl	%r14b, %edx	# D.6143, tmp155
	shrl	$8, %eax	#,
	movzbl	%al, %ecx	#, tmp154
	movl	%eax, 8(%rsp)	#, %sfp
	xorl	%eax, %eax	#
	call	__printf_chk	#
	addl	8(%rsp), %r14d	# %sfp, tmp156
	addl	%r14d, %r15d	# tmp156, cc
	cmpq	$8, %rbp	#, ivtmp.201
	jne	.L45	#,
	movb	%r15b, %al	# cc,
	movl	$.LC9, %esi	#,
	movl	$1, %edi	#,
	negl	%eax	#
	movzbl	%al, %edx	# tmp158, tmp159
	xorl	%eax, %eax	#
	call	__printf_chk	#
.L44:
	addl	$8, %ebx	#, i
.L43:
	cmpl	12(%rsp), %ebx	# %sfp, i
	leal	(%rbx,%r12), %ebp	#, address
	jb	.L46	#,
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
.LFE71:
	.size	pic12_dumpinhxcode, .-pic12_dumpinhxcode
	.section	.rodata.str1.1
.LC14:
	.string	"%03X "
.LC15:
	.string	"%s: information: program flash empty\n"
	.text
	.globl	pic12_dumphexcode
	.type	pic12_dumphexcode, @function
pic12_dumphexcode:
.LFB70:
	.cfi_startproc
	pushq	%r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movl	$46, %r15d	#, tmp127
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
	jmp	.L50	#
.L55:
	movl	%ebx, %eax	# i, i
	movl	$8, %esi	#,
	movl	$4095, %edi	#,
	leaq	(%r12,%rax,4), %rdx	#, tmp116
	call	pic_mtcode	#
	testl	%eax, %eax	# D.6153
	jne	.L51	#,
	movl	%r13d, %edx	# address,
	movl	$.LC10, %esi	#,
	movl	$1, %edi	#,
	xorl	%r13d, %r13d	# j
	call	__printf_chk	#
.L52:
	leal	0(%r13,%rbx), %eax	#, tmp118
	movl	$.LC14, %esi	#,
	movl	$1, %edi	#,
	incl	%r13d	# j
	movl	(%r12,%rax,4), %edx	# *D.6159_21, tmp119
	xorl	%eax, %eax	#
	andl	$4095, %edx	#, tmp119
	call	__printf_chk	#
	cmpl	$8, %r13d	#, j
	jne	.L52	#,
	xorb	%r13b, %r13b	#
.L54:
	leal	0(%r13,%rbx), %eax	#, tmp122
	movl	(%r12,%rax,4), %edi	# *D.6159_29, *D.6159_29
	andl	$255, %edi	#, D.6163
	leal	-32(%rdi), %eax	#, tmp124
	cmpl	$94, %eax	#, tmp124
	cmova	%r15d, %edi	# D.6163,, tmp127, iftmp.2
	incl	%r13d	# j
	call	putchar	#
	cmpl	$8, %r13d	#, j
	jne	.L54	#,
	movl	$10, %edi	#,
	incl	%ebp	# nlines
	call	putchar	#
.L51:
	addl	$8, %ebx	#, i
.L50:
	cmpl	12(%rsp), %ebx	# %sfp, i
	leal	(%rbx,%r14), %r13d	#, address
	jb	.L55	#,
	testl	%ebp, %ebp	# nlines
	jne	.L49	#,
	addq	$24, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movl	$__func__.6011, %edx	#,
	movl	$.LC15, %esi	#,
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
.L49:
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
.LFE70:
	.size	pic12_dumphexcode, .-pic12_dumphexcode
	.type	pic12_increment_address, @function
pic12_increment_address:
.LFB46:
	.cfi_startproc
	movl	$6, %edx	#,
	movl	$6, %esi	#,
	jmp	io_program_out	#
	.cfi_endproc
.LFE46:
	.size	pic12_increment_address, .-pic12_increment_address
	.type	pic12_load_data_for_program_memory, @function
pic12_load_data_for_program_memory:
.LFB44:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movl	%esi, %ebp	# word, word
	movl	$6, %edx	#,
	movl	$2, %esi	#,
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
	leal	(%rbp,%rbp), %esi	#, tmp68
	movl	$16, %edx	#,
	popq	%rbx	#
	.cfi_def_cfa_offset 16
	popq	%rbp	#
	.cfi_def_cfa_offset 8
	andl	$65535, %esi	#, tmp70
	orl	$32769, %esi	#, tmp70
	jmp	io_program_out	#
	.cfi_endproc
.LFE44:
	.size	pic12_load_data_for_program_memory, .-pic12_load_data_for_program_memory
	.type	pic12_read_data_from_program_memory, @function
pic12_read_data_from_program_memory:
.LFB45:
	.cfi_startproc
	pushq	%rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movl	$6, %edx	#,
	movq	%rdi, %rbx	# k, k
	movl	$4, %esi	#,
	call	io_program_out	#
	movq	%rbx, %rdi	# k,
	movl	$16, %esi	#,
	call	io_program_in	#
	shrw	%ax	# tmp65
	andw	$4095, %ax	#, tmp65
	popq	%rbx	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE45:
	.size	pic12_read_data_from_program_memory, .-pic12_read_data_from_program_memory
	.type	pic12_begin_programming, @function
pic12_begin_programming:
.LFB47:
	.cfi_startproc
	pushq	%rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movl	$8, %esi	#,
	movq	%rdi, %rbx	# k, k
	movl	$6, %edx	#,
	call	io_program_out	#
	movq	%rbx, %rdi	# k,
	movl	$2000, %esi	#,
	popq	%rbx	#
	.cfi_def_cfa_offset 8
	jmp	io_usleep	#
	.cfi_endproc
.LFE47:
	.size	pic12_begin_programming, .-pic12_begin_programming
	.type	pic12_end_programming, @function
pic12_end_programming:
.LFB48:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movl	$14, %esi	#,
	movl	$6, %edx	#,
	movq	%rdi, %rbp	# k, k
	pushq	%rbx	#
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movl	$100, %ebx	#, tdis
	pushq	%r9	#
	.cfi_def_cfa_offset 32
	movl	pic12_index(%rip), %eax	# pic12_index, pic12_index
	imulq	$1044, %rax, %rax	#, pic12_index, tmp65
	cmpl	$41670, pic12_map+1032(%rax)	#, pic12_map[pic12_index.12_3].datasheet
	movl	$300, %eax	#, tmp67
	cmove	%eax, %ebx	# tmp67,, tdis
	call	io_program_out	#
	popq	%r10	#
	.cfi_def_cfa_offset 24
	movl	%ebx, %esi	# tdis,
	movq	%rbp, %rdi	# k,
	popq	%rbx	#
	.cfi_def_cfa_offset 16
	popq	%rbp	#
	.cfi_def_cfa_offset 8
	jmp	io_usleep	#
	.cfi_endproc
.LFE48:
	.size	pic12_end_programming, .-pic12_end_programming
	.type	pic12_bulk_erase_program_memory, @function
pic12_bulk_erase_program_memory:
.LFB49:
	.cfi_startproc
	pushq	%rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movl	$9, %esi	#,
	movq	%rdi, %rbx	# k, k
	movl	$6, %edx	#,
	call	io_program_out	#
	movq	%rbx, %rdi	# k,
	movl	$10000, %esi	#,
	popq	%rbx	#
	.cfi_def_cfa_offset 8
	jmp	io_usleep	#
	.cfi_endproc
.LFE49:
	.size	pic12_bulk_erase_program_memory, .-pic12_bulk_erase_program_memory
	.section	.rodata.str1.1
.LC16:
	.string	"%s\t"
.LC17:
	.string	"Total: %d\n"
	.text
	.globl	pic12_selector
	.type	pic12_selector, @function
pic12_selector:
.LFB41:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	xorl	%eax, %eax	# ivtmp.280
	pushq	%rbx	#
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$152, %rsp	#,
	.cfi_def_cfa_offset 176
.L75:
	movl	%eax, %edx	# ivtmp.280, ivtmp.280
	imulq	$1044, %rdx, %rdx	#, ivtmp.280, tmp86
	addq	$pic12_map, %rdx	#, tmp87
	movq	%rdx, (%rsp,%rax,8)	# tmp87, MEM[symbol: dnames, index: ivtmp.280_2, step: 8, offset: 0B]
	incq	%rax	# ivtmp.280
	cmpq	$18, %rax	#, ivtmp.280
	jne	.L75	#,
	movl	$pic_cmp, %ecx	#,
	movl	$8, %edx	#,
	movl	$18, %esi	#,
	movq	%rsp, %rdi	#,
	xorl	%ebx, %ebx	# ivtmp.271
	movl	$5, %ebp	#, tmp99
	call	qsort	#
.L78:
	xorl	%edx, %edx	# tmp91
	movl	%ebx, %eax	#, tmp92
	divl	%ebp	# tmp99
	cmpl	$4, %edx	#, tmp91
	jne	.L76	#,
	movq	(%rsp,%rbx,8), %rdi	# MEM[symbol: dnames, index: ivtmp.271_40, step: 8, offset: 0B], MEM[symbol: dnames, index: ivtmp.271_40, step: 8, offset: 0B]
	call	puts	#
	jmp	.L77	#
.L76:
	movq	(%rsp,%rbx,8), %rdx	# MEM[symbol: dnames, index: ivtmp.271_40, step: 8, offset: 0B], MEM[symbol: dnames, index: ivtmp.271_40, step: 8, offset: 0B]
	movl	$.LC16, %esi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
.L77:
	incq	%rbx	# ivtmp.271
	cmpq	$18, %rbx	#, ivtmp.271
	jne	.L78	#,
	movl	$10, %edi	#,
	call	putchar	#
	movl	$18, %edx	#,
	movl	$.LC17, %esi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	addq	$152, %rsp	#,
	.cfi_def_cfa_offset 24
	popq	%rbx	#
	.cfi_def_cfa_offset 16
	popq	%rbp	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE41:
	.size	pic12_selector, .-pic12_selector
	.section	.rodata.str1.1
.LC18:
	.string	"%s: error: OSCCAL is not supported on this device\n"
	.text
	.globl	pic12_dumposccal
	.type	pic12_dumposccal, @function
pic12_dumposccal:
.LFB68:
	.cfi_startproc
	movl	pic12_index(%rip), %eax	# pic12_index, pic12_index.3
	imulq	$1044, %rax, %rax	#, pic12_index.3, tmp74
	addq	$pic12_map+1024, %rax	#, tmp75
	cmpw	$0, 12(%rax)	#, pic12_map[pic12_index.3_1].backupaddr
	je	.L83	#,
	pushq	%r11	#
	.cfi_def_cfa_offset 16
	movzwl	4(%rax), %edx	# pic12_map[pic12_index.3_1].flash, pic12_map[pic12_index.3_1].flash
	movl	$.LC2, %esi	#,
	movzwl	pic12_conf+10(%rip), %ecx	# pic12_conf.osccal_reset, pic12_conf.osccal_reset
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	decl	%edx	# tmp83
	call	__printf_chk	#
	movl	pic12_index(%rip), %eax	# pic12_index, pic12_index
	movzwl	pic12_conf+8(%rip), %ecx	# pic12_conf.osccal_backup, pic12_conf.osccal_backup
	movl	$.LC5, %esi	#,
	movl	$1, %edi	#,
	imulq	$1044, %rax, %rax	#, pic12_index, tmp88
	movzwl	pic12_map+1036(%rax), %edx	# pic12_map[pic12_index.3_11].backupaddr, pic12_map[pic12_index.3_11].backupaddr
	xorl	%eax, %eax	#
	popq	%r8	#
	.cfi_def_cfa_offset 8
	jmp	__printf_chk	#
.L83:
	movl	$__func__.5987, %edx	#,
	movl	$.LC18, %esi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	jmp	__printf_chk	#
	.cfi_endproc
.LFE68:
	.size	pic12_dumposccal, .-pic12_dumposccal
	.type	pic12_programregion.part.3, @function
pic12_programregion.part.3:
.LFB78:
	.cfi_startproc
	movl	pic12_index(%rip), %eax	# pic12_index, pic12_index
	imulq	$1044, %rax, %rax	#, pic12_index, tmp70
	movzbl	pic12_map+1040(%rax), %eax	# pic12_map[pic12_index.10_1].nlatches, pic12_map[pic12_index.10_1].nlatches
	decl	%eax	# mask
	andl	%eax, %esi	# mask, tmp73
	cmpw	%ax, %si	# mask, tmp73
	jne	.L89	#,
	cmpl	$0, write_pending.5916(%rip)	#, write_pending
	je	.L89	#,
	pushq	%rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %rbx	# k, k
	call	pic12_begin_programming	#
	movq	%rbx, %rdi	# k,
	call	pic12_end_programming	#
	popq	%rbx	#
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	movl	$0, write_pending.5916(%rip)	#, write_pending
.L89:
	ret
	.cfi_endproc
.LFE78:
	.size	pic12_programregion.part.3, .-pic12_programregion.part.3
	.globl	pic12_arch
	.type	pic12_arch, @function
pic12_arch:
.LFB40:
	.cfi_startproc
	movq	$pic12_ops, 3128(%rdi)	#, k_1(D)->pic
	movl	pic12_ops(%rip), %eax	# pic12_ops.arch,
	ret
	.cfi_endproc
.LFE40:
	.size	pic12_arch, .-pic12_arch
	.globl	pic12_program_verify
	.type	pic12_program_verify, @function
pic12_program_verify:
.LFB42:
	.cfi_startproc
	pushq	%rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	xorl	%esi, %esi	#
	movq	%rdi, %rbx	# k, k
	call	io_configure	#
	movq	%rbx, %rdi	# k,
	xorl	%esi, %esi	#
	call	io_set_vpp	#
	movq	%rbx, %rdi	# k,
	movl	$1000, %esi	#,
	call	io_usleep	#
	movq	%rbx, %rdi	# k,
	xorl	%esi, %esi	#
	call	io_set_pgd	#
	movq	%rbx, %rdi	# k,
	xorl	%esi, %esi	#
	call	io_set_pgc	#
	movq	%rbx, %rdi	# k,
	xorl	%esi, %esi	#
	call	io_set_pgm	#
	movq	%rbx, %rdi	# k,
	movl	$1000, %esi	#,
	call	io_usleep	#
	movq	%rbx, %rdi	# k,
	movl	$1, %esi	#,
	call	io_set_vpp	#
	movq	%rbx, %rdi	# k,
	movl	$250, %esi	#,
	popq	%rbx	#
	.cfi_def_cfa_offset 8
	jmp	io_usleep	#
	.cfi_endproc
.LFE42:
	.size	pic12_program_verify, .-pic12_program_verify
	.globl	pic12_standby
	.type	pic12_standby, @function
pic12_standby:
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
	.size	pic12_standby, .-pic12_standby
	.globl	pic12_read_program_memory_increment
	.type	pic12_read_program_memory_increment, @function
pic12_read_program_memory_increment:
.LFB50:
	.cfi_startproc
	pushq	%rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %rbx	# k, k
	subq	$16, %rsp	#,
	.cfi_def_cfa_offset 32
	call	pic12_read_data_from_program_memory	#
	movq	%rbx, %rdi	# k,
	movl	%eax, 8(%rsp)	#,
	call	pic12_increment_address	#
	movl	8(%rsp), %eax	#,
	addq	$16, %rsp	#,
	.cfi_def_cfa_offset 16
	popq	%rbx	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE50:
	.size	pic12_read_program_memory_increment, .-pic12_read_program_memory_increment
	.globl	pic12_read_data_memory_block
	.type	pic12_read_data_memory_block, @function
pic12_read_data_memory_block:
.LFB56:
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
	xorl	%ebp, %ebp	# i
	pushq	%rbx	#
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	movq	%rdi, %rbx	# k, k
	call	pic12_program_verify	#
	movq	%rbx, %rdi	# k,
	call	pic12_increment_address	#
	jmp	.L98	#
.L99:
	movq	%rbx, %rdi	# k,
	incl	%ebp	# i
	call	pic12_increment_address	#
.L98:
	cmpl	%r12d, %ebp	# addr, i
	jne	.L99	#,
	xorl	%ebp, %ebp	# ivtmp.305
	jmp	.L100	#
.L101:
	call	pic12_read_program_memory_increment	#
	movw	%ax, (%r14,%rbp,2)	# D.6401, MEM[base: data_12(D), index: ivtmp.305_16, step: 2, offset: 0B]
	incq	%rbp	# ivtmp.305
.L100:
	cmpl	%ebp, %r13d	# ivtmp.305, size
	movq	%rbx, %rdi	# k,
	ja	.L101	#,
	call	pic12_standby	#
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
.LFE56:
	.size	pic12_read_data_memory_block, .-pic12_read_data_memory_block
	.globl	pic12_read_program_memory_block
	.type	pic12_read_program_memory_block, @function
pic12_read_program_memory_block:
.LFB55:
	.cfi_startproc
	pushq	%r14	#
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	movl	%ecx, %r14d	# size,
	pushq	%r13	#
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	movl	%edx, %r13d	# addr, addr
	pushq	%r12	#
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	xorl	%r12d, %r12d	# i
	pushq	%rbp	#
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	movq	%rsi, %rbp	# data, data
	pushq	%rbx	#
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	movq	%rdi, %rbx	# k, k
	call	pic12_program_verify	#
	movq	%rbx, %rdi	# k,
	call	pic12_increment_address	#
	jmp	.L104	#
.L105:
	movq	%rbx, %rdi	# k,
	incl	%r12d	# i
	call	pic12_increment_address	#
.L104:
	cmpl	%r13d, %r12d	# addr, i
	jne	.L105	#,
	leaq	4(%rbp,%r14,4), %r12	#, D.7115
	jmp	.L106	#
.L107:
	call	pic12_read_program_memory_increment	#
	movzwl	%ax, %eax	# D.6408, D.6408
	movl	%eax, -4(%rbp)	# D.6408, MEM[base: D.7116_33, offset: -4B]
.L106:
	addq	$4, %rbp	#, ivtmp.326
	movq	%rbx, %rdi	# k,
	cmpq	%r12, %rbp	# D.7115, ivtmp.326
	jne	.L107	#,
	call	pic12_standby	#
	popq	%rbx	#
	.cfi_def_cfa_offset 40
	popq	%rbp	#
	.cfi_def_cfa_offset 32
	popq	%r12	#
	.cfi_def_cfa_offset 24
	movl	%r13d, %eax	# addr,
	popq	%r13	#
	.cfi_def_cfa_offset 16
	popq	%r14	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE55:
	.size	pic12_read_program_memory_block, .-pic12_read_program_memory_block
	.section	.rodata.str1.1
.LC19:
	.string	"%s: fatal error: device must be selected on this architecture.\n"
.LC20:
	.string	"%s: fatal error: %s.\n"
.LC21:
	.string	"%s: fatal error: unknown device: [%s]\n"
	.text
	.globl	pic12_read_config_memory
	.type	pic12_read_config_memory, @function
pic12_read_config_memory:
.LFB52:
	.cfi_startproc
	pushq	%r14	#
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	movl	$pic12_conf, %edx	#, tmp104
	xorl	%eax, %eax	# tmp106
	movl	$14, %ecx	#, tmp107
	movl	$18, pic12_index(%rip)	#, pic12_index
	pushq	%r13	#
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	movl	%esi, %r13d	# flag, flag
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
	movq	%rdx, %rdi	# tmp104, tmp105
	rep stosb
	cmpb	$0, 2048(%rbx)	#, k_4(D)->devicename
	jne	.L110	#,
	movl	$.LC19, %esi	#,
	movl	$1, %edi	#,
	movl	$__func__.5820, %edx	#,
	call	__printf_chk	#
	movl	$70, %esi	#,
	movq	%rbx, %rdi	# k,
	call	io_exit	#
.L110:
	movl	$pic12_map+1024, %r12d	#, ivtmp.365
	xorl	%ebp, %ebp	# dev
	leaq	2048(%rbx), %r14	#, tmp137
	jmp	.L111	#
.L113:
	movl	%ebp, %edi	# dev, dev
	movq	%r14, %rsi	# tmp137,
	addq	$1044, %r12	#, ivtmp.365
	imulq	$1044, %rdi, %rdi	#, dev, tmp110
	addq	$pic12_map, %rdi	#, tmp111
	call	strcasecmp	#
	testl	%eax, %eax	# D.6427
	je	.L112	#,
	incl	%ebp	# dev
.L111:
	cmpl	$0, (%r12)	#, MEM[base: D.7158_107, offset: 0B]
	jne	.L113	#,
	jmp	.L130	#
.L112:
	movq	%rbx, %rdi	# k,
	call	pic12_program_verify	#
	movq	%rbx, %rdi	# k,
	call	pic12_read_program_memory_increment	#
	cmpw	$16383, %ax	#, D.6432
	movw	%ax, pic12_conf+12(%rip)	# D.6432, pic12_conf.config
	je	.L123	#,
	testw	%ax, %ax	# D.6432
	jne	.L115	#,
.L123:
	movzwl	%ax, %esi	# D.6432, D.6432
	movq	%rbx, %rdi	# k,
	call	io_fault	#
	movl	$.LC20, %esi	#,
	movq	%rax, %rcx	# D.6441,
	movl	$__func__.5820, %edx	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	movq	%rbx, %rdi	# k,
	call	pic12_standby	#
	movl	$70, %esi	#,
	movq	%rbx, %rdi	# k,
	call	io_exit	#
.L115:
	decl	%r13d	# flag
	movl	%ebp, pic12_index(%rip)	# dev, pic12_index
	jne	.L118	#,
	jmp	.L122	#
.L119:
	call	pic12_increment_address	#
	incl	%ebp	# i
	jmp	.L117	#
.L122:
	xorl	%ebp, %ebp	# i
.L117:
	movl	pic12_index(%rip), %eax	# pic12_index, pic12_index
	movq	%rbx, %rdi	# k,
	imulq	$1044, %rax, %rax	#, pic12_index, tmp120
	movzwl	pic12_map+1028(%rax), %eax	# pic12_map[pic12_index.18_24].flash, pic12_map[pic12_index.18_24].flash
	decl	%eax	# tmp123
	cmpl	%eax, %ebp	# tmp123, i
	jb	.L119	#,
	call	pic12_read_program_memory_increment	#
	xorl	%ebp, %ebp	# i
	movw	%ax, pic12_conf+10(%rip)	# D.6449, pic12_conf.osccal_reset
	jmp	.L120	#
.L121:
	incl	%ebp	# i
	call	pic12_increment_address	#
.L120:
	movl	pic12_index(%rip), %eax	# pic12_index, pic12_index
	movq	%rbx, %rdi	# k,
	imulq	$1044, %rax, %rax	#, pic12_index, tmp127
	movzwl	pic12_map+1030(%rax), %eax	# pic12_map[pic12_index.18_32].dataflash, pic12_map[pic12_index.18_32].dataflash
	cmpl	%eax, %ebp	# pic12_map[pic12_index.18_32].dataflash, i
	jb	.L121	#,
	call	pic12_read_program_memory_increment	#
	movq	%rbx, %rdi	# k,
	movw	%ax, pic12_conf(%rip)	# D.6452, pic12_conf.userid
	call	pic12_read_program_memory_increment	#
	movq	%rbx, %rdi	# k,
	movw	%ax, pic12_conf+2(%rip)	# D.6453, pic12_conf.userid
	call	pic12_read_program_memory_increment	#
	movq	%rbx, %rdi	# k,
	movw	%ax, pic12_conf+4(%rip)	# D.6454, pic12_conf.userid
	call	pic12_read_program_memory_increment	#
	movq	%rbx, %rdi	# k,
	movw	%ax, pic12_conf+6(%rip)	# D.6455, pic12_conf.userid
	call	pic12_read_program_memory_increment	#
	movw	%ax, pic12_conf+8(%rip)	# D.6456, pic12_conf.osccal_backup
.L118:
	movq	%rbx, %rdi	# k,
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
	jmp	pic12_standby	#
.L130:
	.cfi_restore_state
	movq	%r14, %rcx	# tmp137,
	movl	$__func__.5820, %edx	#,
	movl	$.LC21, %esi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	movl	$70, %esi	#,
	movq	%rbx, %rdi	# k,
	call	io_exit	#
	jmp	.L112	#
	.cfi_endproc
.LFE52:
	.size	pic12_read_config_memory, .-pic12_read_config_memory
	.globl	pic12_read_osccal
	.type	pic12_read_osccal, @function
pic12_read_osccal:
.LFB57:
	.cfi_startproc
	pushq	%rcx	#
	.cfi_def_cfa_offset 16
	movl	pic12_index(%rip), %eax	# pic12_index, pic12_index
	imulq	$1044, %rax, %rax	#, pic12_index, tmp66
	cmpw	$0, pic12_map+1036(%rax)	#, pic12_map[pic12_index.15_2].backupaddr
	jne	.L133	#,
	movl	$__func__.5867, %edx	#,
	movl	$.LC18, %esi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	xorl	%eax, %eax	# D.6396
	jmp	.L134	#
.L133:
	movl	$1, %esi	#,
	call	pic12_read_config_memory	#
	movw	pic12_conf+10(%rip), %ax	# pic12_conf.osccal_reset, D.6396
.L134:
	popq	%rdx	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE57:
	.size	pic12_read_osccal, .-pic12_read_osccal
	.section	.rodata.str1.1
.LC22:
	.string	"%s: error: OSCCAL RESET write failed: read [%04X] expected [%04X]\n"
.LC23:
	.string	"%s: error: OSCCAL BACKUP write failed: read [%04X] expected [%04X]\n"
	.text
	.globl	pic12_write_osccal
	.type	pic12_write_osccal, @function
pic12_write_osccal:
.LFB58:
	.cfi_startproc
	pushq	%r13	#
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12	#
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp	#
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx	#
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	pushq	%r8	#
	.cfi_def_cfa_offset 48
	movl	pic12_index(%rip), %eax	# pic12_index, pic12_index
	imulq	$1044, %rax, %rax	#, pic12_index, tmp95
	cmpw	$0, pic12_map+1036(%rax)	#, pic12_map[pic12_index.14_4].backupaddr
	jne	.L137	#,
	movl	$__func__.5873, %edx	#,
	movl	$.LC18, %esi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	jmp	.L146	#
.L137:
	movq	%rdi, %rbx	# k, k
	movl	%esi, %r13d	# osccal, osccal
	xorl	%ebp, %ebp	# i
	call	pic12_program_verify	#
	movq	%rbx, %rdi	# k,
	call	pic12_increment_address	#
	jmp	.L139	#
.L140:
	movq	%rbx, %rdi	# k,
	incl	%ebp	# i
	call	pic12_increment_address	#
.L139:
	movl	pic12_index(%rip), %eax	# pic12_index, pic12_index
	imulq	$1044, %rax, %rax	#, pic12_index, tmp99
	movzwl	pic12_map+1028(%rax), %eax	# pic12_map[pic12_index.14_9].flash, pic12_map[pic12_index.14_9].flash
	decl	%eax	# tmp102
	cmpl	%eax, %ebp	# tmp102, i
	jb	.L140	#,
	movzwl	%r13w, %ebp	# osccal, D.6383
	movq	%rbx, %rdi	# k,
	movl	%ebp, %esi	# D.6383,
	call	pic12_load_data_for_program_memory	#
	movq	%rbx, %rdi	# k,
	call	pic12_begin_programming	#
	movq	%rbx, %rdi	# k,
	call	pic12_end_programming	#
	movq	%rbx, %rdi	# k,
	call	pic12_read_data_from_program_memory	#
	cmpw	%r13w, %ax	# osccal, vdata
	movl	%eax, %r12d	#, vdata
	movq	%rbx, %rdi	# k,
	je	.L141	#,
	call	pic12_standby	#
	movzwl	%r12w, %ecx	# vdata, vdata
	movl	%ebp, %r8d	# D.6383,
	movl	$__func__.5873, %edx	#,
	movl	$.LC22, %esi	#,
.L147:
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
.L146:
	xorl	%eax, %eax	# D.6378
	jmp	.L138	#
.L141:
	call	pic12_increment_address	#
	xorl	%r13d, %r13d	# i
	jmp	.L142	#
.L143:
	incl	%r13d	# i
	call	pic12_increment_address	#
.L142:
	movl	pic12_index(%rip), %eax	# pic12_index, pic12_index
	movq	%rbx, %rdi	# k,
	imulq	$1044, %rax, %rax	#, pic12_index, tmp106
	movzwl	pic12_map+1030(%rax), %eax	# pic12_map[pic12_index.14_22].dataflash, pic12_map[pic12_index.14_22].dataflash
	cmpl	%eax, %r13d	# pic12_map[pic12_index.14_22].dataflash, i
	jb	.L143	#,
	call	pic12_increment_address	#
	movq	%rbx, %rdi	# k,
	call	pic12_increment_address	#
	movq	%rbx, %rdi	# k,
	call	pic12_increment_address	#
	movq	%rbx, %rdi	# k,
	call	pic12_increment_address	#
	movl	%ebp, %esi	# D.6383,
	movq	%rbx, %rdi	# k,
	call	pic12_load_data_for_program_memory	#
	movq	%rbx, %rdi	# k,
	call	pic12_begin_programming	#
	movq	%rbx, %rdi	# k,
	call	pic12_end_programming	#
	movq	%rbx, %rdi	# k,
	call	pic12_read_data_from_program_memory	#
	cmpw	%r12w, %ax	# vdata, vdata
	movl	%eax, %r13d	#, vdata
	movq	%rbx, %rdi	# k,
	je	.L144	#,
	call	pic12_standby	#
	movzwl	%r13w, %ecx	# vdata, vdata
	movl	%ebp, %r8d	# D.6383,
	movl	$__func__.5873, %edx	#,
	movl	$.LC23, %esi	#,
	jmp	.L147	#
.L144:
	call	pic12_standby	#
	movl	$1, %eax	#, D.6378
.L138:
	popq	%rsi	#
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
.LFE58:
	.size	pic12_write_osccal, .-pic12_write_osccal
	.globl	pic12_bulk_erase
	.type	pic12_bulk_erase, @function
pic12_bulk_erase:
.LFB51:
	.cfi_startproc
	movl	pic12_index(%rip), %eax	# pic12_index, pic12_index
	pushq	%r12	#
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp	#
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movl	%esi, %ebp	# osccal, osccal
	imulq	$1044, %rax, %rax	#, pic12_index, tmp98
	pushq	%rbx	#
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%rdi, %rbx	# k, k
	cmpw	$0, pic12_map+1036(%rax)	#, pic12_map[pic12_index.19_5].backupaddr
	jne	.L149	#,
	addl	$2, %esi	#, tmp100
	cmpw	$1, %si	#, tmp100
	jbe	.L150	#,
	popq	%rbx	#
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbp	#
	.cfi_def_cfa_offset 16
	popq	%r12	#
	.cfi_def_cfa_offset 8
	movl	$__func__.5805, %edx	#,
	movl	$.LC18, %esi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	jmp	__printf_chk	#
.L149:
	.cfi_restore_state
	incw	%si	# osccal
	jne	.L150	#,
	call	pic12_read_osccal	#
	movl	%eax, %ebp	#, osccal
.L150:
	movq	%rbx, %rdi	# k,
	call	pic12_program_verify	#
	movl	pic12_index(%rip), %eax	# pic12_index, pic12_index
	movq	%rbx, %rdi	# k,
	imulq	$1044, %rax, %rax	#, pic12_index, tmp103
	cmpw	$0, pic12_map+1030(%rax)	#, pic12_map[pic12_index.19_11].dataflash
	jne	.L151	#,
	call	pic12_increment_address	#
	xorl	%r12d, %r12d	# i
	jmp	.L152	#
.L153:
	movq	%rbx, %rdi	# k,
	incl	%r12d	# i
	call	pic12_increment_address	#
.L152:
	movl	pic12_index(%rip), %eax	# pic12_index, pic12_index
	imulq	$1044, %rax, %rax	#, pic12_index, tmp107
	movzwl	pic12_map+1028(%rax), %eax	# pic12_map[pic12_index.19_14].flash, pic12_map[pic12_index.19_14].flash
	cmpl	%eax, %r12d	# pic12_map[pic12_index.19_14].flash, i
	jb	.L153	#,
.L160:
	movq	%rbx, %rdi	# k,
	call	pic12_bulk_erase_program_memory	#
	movq	%rbx, %rdi	# k,
	call	pic12_standby	#
	movl	pic12_index(%rip), %eax	# pic12_index, pic12_index
	imulq	$1044, %rax, %rax	#, pic12_index, tmp112
	cmpw	$0, pic12_map+1036(%rax)	#, pic12_map[pic12_index.19_28].backupaddr
	jne	.L154	#,
	jmp	.L148	#
.L151:
	call	pic12_bulk_erase_program_memory	#
	movq	%rbx, %rdi	# k,
	xorl	%r12d, %r12d	# i
	call	pic12_increment_address	#
	jmp	.L156	#
.L157:
	incl	%r12d	# i
	call	pic12_increment_address	#
.L156:
	movl	pic12_index(%rip), %eax	# pic12_index, pic12_index
	movq	%rbx, %rdi	# k,
	imulq	$1044, %rax, %rax	#, pic12_index, tmp116
	movzwl	pic12_map+1028(%rax), %eax	# pic12_map[pic12_index.19_19].flash, pic12_map[pic12_index.19_19].flash
	cmpl	%eax, %r12d	# pic12_map[pic12_index.19_19].flash, i
	jb	.L157	#,
	call	pic12_bulk_erase_program_memory	#
	xorl	%r12d, %r12d	# i
	jmp	.L158	#
.L159:
	movq	%rbx, %rdi	# k,
	incl	%r12d	# i
	call	pic12_increment_address	#
.L158:
	movl	pic12_index(%rip), %eax	# pic12_index, pic12_index
	imulq	$1044, %rax, %rax	#, pic12_index, tmp121
	movzwl	pic12_map+1030(%rax), %eax	# pic12_map[pic12_index.19_24].dataflash, pic12_map[pic12_index.19_24].dataflash
	cmpl	%eax, %r12d	# pic12_map[pic12_index.19_24].dataflash, i
	jb	.L159	#,
	jmp	.L160	#
.L154:
	cmpw	$-2, %bp	#, osccal
	je	.L148	#,
	movq	%rbx, %rdi	# k,
	movzwl	%bp, %esi	# osccal, osccal
	popq	%rbx	#
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbp	#
	.cfi_def_cfa_offset 16
	popq	%r12	#
	.cfi_def_cfa_offset 8
	jmp	pic12_write_osccal	#
.L148:
	.cfi_restore_state
	popq	%rbx	#
	.cfi_def_cfa_offset 24
	popq	%rbp	#
	.cfi_def_cfa_offset 16
	popq	%r12	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE51:
	.size	pic12_bulk_erase, .-pic12_bulk_erase
	.globl	pic12_write_config
	.type	pic12_write_config, @function
pic12_write_config:
.LFB59:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movl	%esi, %ebp	# config, config
	pushq	%rbx	#
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rdi, %rbx	# k, k
	pushq	%r9	#
	.cfi_def_cfa_offset 32
	call	pic12_program_verify	#
	movzwl	%bp, %esi	# config, config
	movq	%rbx, %rdi	# k,
	call	pic12_load_data_for_program_memory	#
	movq	%rbx, %rdi	# k,
	call	pic12_begin_programming	#
	movq	%rbx, %rdi	# k,
	call	pic12_end_programming	#
	movq	%rbx, %rdi	# k,
	call	pic12_standby	#
	popq	%r10	#
	.cfi_def_cfa_offset 24
	popq	%rbx	#
	.cfi_def_cfa_offset 16
	movl	$1, %eax	#,
	popq	%rbp	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE59:
	.size	pic12_write_config, .-pic12_write_config
	.section	.rodata.str1.1
.LC24:
	.string	"%s: warning: address unsupported [%04X]\n"
	.text
	.globl	pic12_getregion
	.type	pic12_getregion, @function
pic12_getregion:
.LFB60:
	.cfi_startproc
	movl	pic12_index(%rip), %edx	# pic12_index, pic12_index.13
	imulq	$1044, %rdx, %rdx	#, pic12_index.13, tmp71
	movl	pic12_map+1028(%rdx), %eax	# pic12_map[pic12_index.13_2].flash, tmp77
	addw	pic12_map+1030(%rdx), %ax	# pic12_map[pic12_index.13_2].dataflash, tmp77
	leal	3(%rax), %edx	#, tmp80
	movl	$1, %eax	#, D.6366
	cmpw	%dx, %di	# tmp80, address
	jbe	.L173	#,
	cmpw	$4095, %di	#, address
	movb	$2, %al	#,
	je	.L173	#,
	pushq	%r11	#
	.cfi_def_cfa_offset 16
	movzwl	%di, %ecx	# address, address
	movl	$__func__.5889, %edx	#,
	movl	$.LC24, %esi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	popq	%rdx	#
	.cfi_def_cfa_offset 8
	xorl	%eax, %eax	# D.6366
.L173:
	ret
	.cfi_endproc
.LFE60:
	.size	pic12_getregion, .-pic12_getregion
	.section	.rodata.str1.1
.LC25:
	.string	"%s: warning: region unsupported [%d]\n"
	.text
	.globl	pic12_initregion
	.type	pic12_initregion, @function
pic12_initregion:
.LFB61:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	cmpw	$1, %si	#, region
	movq	%rdx, %rbp	# address, address
	pushq	%rbx	#
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movl	%esi, %ebx	# region, region
	pushq	%r8	#
	.cfi_def_cfa_offset 32
	je	.L176	#,
	cmpw	$2, %si	#, region
	jne	.L179	#,
	jmp	.L177	#
.L176:
	call	pic12_increment_address	#
	movw	$0, 0(%rbp)	#, *address_5(D)
	jmp	.L178	#
.L177:
	movw	$4095, (%rdx)	#, *address_5(D)
	jmp	.L178	#
.L179:
	movzwl	%si, %ecx	# region, region
	movl	$__func__.5898, %edx	#,
	movl	$.LC25, %esi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	xorl	%ebx, %ebx	# region
	call	__printf_chk	#
.L178:
	popq	%rcx	#
	.cfi_def_cfa_offset 24
	movl	%ebx, %eax	# region,
	popq	%rbx	#
	.cfi_def_cfa_offset 16
	popq	%rbp	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE61:
	.size	pic12_initregion, .-pic12_initregion
	.globl	pic12_loadregion
	.type	pic12_loadregion, @function
pic12_loadregion:
.LFB62:
	.cfi_startproc
	leal	-1(%rsi), %eax	#, tmp66
	cmpw	$1, %ax	#, tmp66
	ja	.L182	#,
	movzwl	%dx, %esi	# word, word
	jmp	pic12_load_data_for_program_memory	#
.L182:
	movzwl	%si, %ecx	# region, region
	movl	$__func__.5909, %edx	#,
	movl	$.LC25, %esi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	jmp	__printf_chk	#
	.cfi_endproc
.LFE62:
	.size	pic12_loadregion, .-pic12_loadregion
	.section	.rodata.str1.1
.LC26:
	.string	"%s: warning: OSCCAL RESET word ignored: word [%04X] address [%04X]\n"
.LC27:
	.string	"%s: warning: OSCCAL BACKUP word ignored: word [%04X] address [%04X]\n"
	.text
	.globl	pic12_programregion
	.type	pic12_programregion, @function
pic12_programregion:
.LFB63:
	.cfi_startproc
	cmpw	$2, %dx	#, region
	movl	%ecx, %eax	# data, data
	jne	.L185	#,
	movw	%cx, pic12_conf+12(%rip)	# data, pic12_conf.config
	ret
.L185:
	decw	%dx	# region
	jne	.L194	#,
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	cmpw	$-1, %cx	#, data
	movq	%rdi, %rbp	# k, k
	pushq	%rbx	#
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movl	%esi, %ebx	# address, address
	pushq	%r11	#
	.cfi_def_cfa_offset 32
	je	.L187	#,
	movl	pic12_index(%rip), %ecx	# pic12_index, pic12_index.10
	imulq	$1044, %rcx, %rcx	#, pic12_index.10, tmp79
	movl	pic12_map+1036(%rcx), %edx	# pic12_map[pic12_index.10_3].backupaddr, D.6325
	addq	$pic12_map+1024, %rcx	#, tmp80
	testw	%dx, %dx	# D.6325
	je	.L188	#,
	movzwl	4(%rcx), %ecx	# pic12_map[pic12_index.10_3].flash, pic12_map[pic12_index.10_3].flash
	movzwl	%si, %r8d	# address, D.6328
	decl	%ecx	# tmp86
	cmpl	%ecx, %r8d	# tmp86, D.6328
	movzwl	%ax, %ecx	# data, data
	jne	.L189	#,
	movl	$__func__.5917, %edx	#,
	movl	$.LC26, %esi	#,
	jmp	.L195	#
.L189:
	cmpw	%dx, %si	# D.6325, address
	jne	.L188	#,
	movl	$__func__.5917, %edx	#,
	movl	$.LC27, %esi	#,
.L195:
	popq	%r10	#
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx	#
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popq	%rbp	#
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	jmp	__printf_chk	#
.L188:
	.cfi_restore_state
	movzwl	%ax, %edx	# data, data
	movl	$1, %esi	#,
	movq	%rbp, %rdi	# k,
	call	pic12_loadregion	#
	movl	$1, write_pending.5916(%rip)	#, write_pending
.L187:
	popq	%r9	#
	.cfi_def_cfa_offset 24
	movzwl	%bx, %esi	# address, address
	movq	%rbp, %rdi	# k,
	popq	%rbx	#
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popq	%rbp	#
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	jmp	pic12_programregion.part.3	#
.L194:
	ret
	.cfi_endproc
.LFE63:
	.size	pic12_programregion, .-pic12_programregion
	.section	.rodata.str1.1
.LC28:
	.string	"Total: %u\n"
	.text
	.globl	pic12_program
	.type	pic12_program, @function
pic12_program:
.LFB65:
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
	subq	$40, %rsp	#,
	.cfi_def_cfa_offset 96
	movl	%edx, 4(%rsp)	# blank, %sfp
	movl	$2, %edx	#,
	movw	$0, 30(%rsp)	#, PC_address
	call	inhx32	#
	testl	%eax, %eax	# D.6256
	je	.L196	#,
	cmpl	$0, 4(%rsp)	#, %sfp
	je	.L198	#,
	movl	$65535, %edx	#,
	movl	$65535, %esi	#,
	movq	%rbx, %rdi	# k,
	call	pic12_bulk_erase	#
.L198:
	xorl	%r12d, %r12d	# i
	xorl	%r15d, %r15d	# total
	xorl	%ebp, %ebp	# current_region
	jmp	.L199	#
.L208:
	movl	%r12d, %eax	# i, i
	leaq	0(,%rax,8), %rdx	#,
	movq	%rdx, 8(%rsp)	#, %sfp
	movq	3104(%rbx), %rdx	# k_11(D)->pdata, k_11(D)->pdata
	movq	(%rdx,%rax,8), %rax	# *D.6264_20, *D.6264_20
	movl	(%rax), %r13d	# D.6265_21->address, D.6267
	shrl	%r13d	# D.6267
	movzwl	%r13w, %edi	# D.6267, tmp148
	call	pic12_getregion	#
	testw	%ax, %ax	# new_region
	movl	%eax, %r14d	#, new_region
	je	.L200	#,
	cmpw	%bp, %ax	# current_region, new_region
	je	.L222	#,
	cmpw	$1, %bp	#, current_region
	jne	.L202	#,
	movl	$65535, %esi	#,
	movq	%rbx, %rdi	# k,
	call	pic12_programregion.part.3	#
.L202:
	movq	%rbx, %rdi	# k,
	call	pic12_program_verify	#
	leaq	30(%rsp), %rdx	#,
	movzwl	%r14w, %esi	# new_region, new_region
	movq	%rbx, %rdi	# k,
	call	pic12_initregion	#
	testw	%ax, %ax	# D.6276
	je	.L200	#,
	movl	%r14d, %ebp	# new_region, current_region
	jmp	.L222	#
.L205:
	cmpw	$1, %bp	#, current_region
	jne	.L204	#,
	movq	%rbx, %rdi	# k,
	call	pic12_programregion.part.3	#
.L204:
	movq	%rbx, %rdi	# k,
	incw	30(%rsp)	# PC_address
	call	pic12_increment_address	#
.L222:
	movzwl	30(%rsp), %esi	# PC_address,
	cmpw	%r13w, %si	# D.6267, PC_address.8
	jb	.L205	#,
	xorl	%r14d, %r14d	# ivtmp.462
	movzwl	%bp, %r13d	# current_region, current_region
	jmp	.L206	#
.L207:
	leal	1(%rax), %ecx	#, tmp153
	movzwl	30(%rsp), %esi	# PC_address, PC_address
	movq	%rbx, %rdi	# k,
	incq	%r14	# ivtmp.462
	movzwl	4(%rdx,%rcx,2), %ecx	# D.6265_40->bytes, tmp155
	sall	$8, %ecx	#, tmp155
	orw	4(%rdx,%rax,2), %cx	# D.6265_40->bytes, tmp157
	movl	%r13d, %edx	# current_region,
	andl	$4095, %ecx	#, tmp159
	call	pic12_programregion	#
	movq	%rbx, %rdi	# k,
	incw	30(%rsp)	# PC_address
	call	pic12_increment_address	#
.L206:
	movq	8(%rsp), %rsi	# %sfp,
	movq	3104(%rbx), %rdx	# k_11(D)->pdata, k_11(D)->pdata
	leal	(%r14,%r14), %eax	#,
	leal	(%r15,%r14), %ecx	#, total
	movq	(%rdx,%rsi), %rdx	# *D.6264_39, D.6265
	movzwl	516(%rdx), %esi	# D.6265_40->nbytes, D.6265_40->nbytes
	cmpl	%esi, %eax	# D.6265_40->nbytes, D.7350
	jb	.L207	#,
	movl	%ecx, %r15d	# total, total
.L200:
	incl	%r12d	# i
.L199:
	cmpl	3112(%rbx), %r12d	# k_11(D)->count, i
	jb	.L208	#,
	decw	%bp	# current_region
	jne	.L209	#,
	movl	$65535, %esi	#,
	movq	%rbx, %rdi	# k,
	call	pic12_programregion.part.3	#
.L209:
	movq	%rbx, %rdi	# k,
	call	pic12_standby	#
	cmpl	$0, 4(%rsp)	#, %sfp
	je	.L210	#,
	movzwl	pic12_conf+12(%rip), %esi	# pic12_conf.config, pic12_conf.config
	movq	%rbx, %rdi	# k,
	call	pic12_write_config	#
.L210:
	movl	$1, %edi	#,
	movl	%r15d, %edx	# total,
	movl	$.LC28, %esi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	movq	%rbx, %rdi	# k,
	call	inhx32_free	#
.L196:
	addq	$40, %rsp	#,
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
.LFE65:
	.size	pic12_program, .-pic12_program
	.section	.rodata.str1.1
.LC29:
	.string	"%s: error: read [%04X] expected [%04X] at [%04X]\n"
	.text
	.globl	pic12_verifyregion
	.type	pic12_verifyregion, @function
pic12_verifyregion:
.LFB64:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	leal	-1(%rdx), %eax	#, tmp73
	pushq	%rbx	#
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	cmpw	$1, %ax	#, tmp73
	pushq	%rbp	#
	.cfi_def_cfa_offset 32
	ja	.L230	#,
	movl	%ecx, %ebx	# data, data
	movl	%esi, %ebp	# address, address
	call	pic12_read_data_from_program_memory	#
	cmpw	%bx, %ax	# data, vdata
	jne	.L232	#,
	xorl	%eax, %eax	# D.6307
	jmp	.L233	#
.L230:
	movzwl	%dx, %ecx	# region, region
	movl	$.LC25, %esi	#,
	movl	$__func__.5930, %edx	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	jmp	.L235	#
.L232:
	movzwl	%ax, %ecx	# vdata, vdata
	movzwl	%bp, %r9d	# address,
	movzwl	%bx, %r8d	# data,
	movl	$__func__.5930, %edx	#,
	movl	$.LC29, %esi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
.L235:
	movl	$1, %eax	#, D.6307
.L233:
	popq	%rbx	#
	.cfi_def_cfa_offset 24
	popq	%rbx	#
	.cfi_def_cfa_offset 16
	popq	%rbp	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE64:
	.size	pic12_verifyregion, .-pic12_verifyregion
	.section	.rodata.str1.1
.LC30:
	.string	"Total: %u Pass: %u Fail: %u\n"
	.text
	.globl	pic12_verify
	.type	pic12_verify, @function
pic12_verify:
.LFB66:
	.cfi_startproc
	pushq	%r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movl	$2, %edx	#,
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
	subq	$40, %rsp	#,
	.cfi_def_cfa_offset 96
	movw	$0, 30(%rsp)	#, PC_address
	call	inhx32	#
	testl	%eax, %eax	# D.6216
	je	.L237	#,
	xorl	%r13d, %r13d	# i
	xorl	%r12d, %r12d	# total
	xorb	%bpl, %bpl	#
	movw	$0, 6(%rsp)	#, %sfp
	jmp	.L238	#
.L245:
	movl	%r13d, %eax	# i, i
	leaq	0(,%rax,8), %rdx	#,
	movq	%rdx, 8(%rsp)	#, %sfp
	movq	3104(%rbx), %rdx	# k_16(D)->pdata, k_16(D)->pdata
	movq	(%rdx,%rax,8), %rax	# *D.6223_25, *D.6223_25
	movl	(%rax), %r14d	# D.6224_26->address, D.6226
	shrl	%r14d	# D.6226
	movzwl	%r14w, %edi	# D.6226, tmp145
	call	pic12_getregion	#
	testw	%ax, %ax	# new_region
	movl	%eax, %r15d	#, new_region
	je	.L239	#,
	cmpw	6(%rsp), %ax	# %sfp, new_region
	je	.L251	#,
	movq	%rbx, %rdi	# k,
	call	pic12_program_verify	#
	leaq	30(%rsp), %rdx	#,
	movzwl	%r15w, %esi	# new_region, new_region
	movq	%rbx, %rdi	# k,
	call	pic12_initregion	#
	testw	%ax, %ax	# D.6233
	je	.L239	#,
	movw	%r15w, 6(%rsp)	# new_region, %sfp
	jmp	.L251	#
.L242:
	incl	%eax	# tmp148
	movq	%rbx, %rdi	# k,
	movw	%ax, 30(%rsp)	# tmp148, PC_address
	call	pic12_increment_address	#
.L251:
	movw	30(%rsp), %ax	# PC_address, PC_address.6
	cmpw	%r14w, %ax	# D.6226, PC_address.6
	jb	.L242	#,
	xorl	%r15d, %r15d	# ivtmp.501
	movzwl	6(%rsp), %r14d	# %sfp, current_region
	jmp	.L243	#
.L244:
	leal	1(%rax), %ecx	#, tmp150
	movzwl	30(%rsp), %esi	# PC_address, PC_address.6
	movq	%rbx, %rdi	# k,
	incq	%r15	# ivtmp.501
	movzwl	4(%rdx,%rcx,2), %ecx	# D.6224_43->bytes, tmp152
	sall	$8, %ecx	#, tmp152
	orw	4(%rdx,%rax,2), %cx	# D.6224_43->bytes, tmp154
	leal	1(%rsi), %eax	#, tmp156
	movl	%r14d, %edx	# current_region,
	movw	%ax, 30(%rsp)	# tmp156, PC_address
	andl	$4095, %ecx	#, D.6246
	call	pic12_verifyregion	#
	movq	%rbx, %rdi	# k,
	addl	%eax, %ebp	# D.6249, fail
	call	pic12_increment_address	#
.L243:
	movq	8(%rsp), %rsi	# %sfp,
	movq	3104(%rbx), %rdx	# k_16(D)->pdata, k_16(D)->pdata
	leal	(%r15,%r15), %eax	#,
	leal	(%r12,%r15), %ecx	#, total
	movq	(%rdx,%rsi), %rdx	# *D.6223_42, D.6224
	movzwl	516(%rdx), %esi	# D.6224_43->nbytes, D.6224_43->nbytes
	cmpl	%esi, %eax	# D.6224_43->nbytes, D.7401
	jb	.L244	#,
	movl	%ecx, %r12d	# total, total
.L239:
	incl	%r13d	# i
.L238:
	cmpl	3112(%rbx), %r13d	# k_16(D)->count, i
	jb	.L245	#,
	movq	%rbx, %rdi	# k,
	call	pic12_standby	#
	movl	%r12d, %ecx	# total, tmp161
	movl	$1, %edi	#,
	movl	%ebp, %r8d	# fail,
	subl	%ebp, %ecx	# fail, tmp161
	movl	%r12d, %edx	# total,
	movl	$.LC30, %esi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	movq	%rbx, %rdi	# k,
	call	inhx32_free	#
.L237:
	addq	$40, %rsp	#,
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
.LFE66:
	.size	pic12_verify, .-pic12_verify
	.globl	pic12_index
	.data
	.align 4
	.type	pic12_index, @object
	.size	pic12_index, 4
pic12_index:
	.long	18
	.globl	pic12_map
	.align 16
	.type	pic12_map, @object
	.size	pic12_map, 19836
pic12_map:
# devicename:
	.string	"PIC12F508"
	.zero	1014
# deviceid:
	.long	12508
# flash:
	.value	512
# dataflash:
	.value	0
# datasheet:
	.long	41227
# backupaddr:
	.value	516
# configaddr:
	.value	1023
# nlatches:
	.byte	1
	.zero	3
# devicename:
	.string	"PIC12F509"
	.zero	1014
# deviceid:
	.long	12509
# flash:
	.value	1024
# dataflash:
	.value	0
# datasheet:
	.long	41227
# backupaddr:
	.value	1028
# configaddr:
	.value	2047
# nlatches:
	.byte	1
	.zero	3
# devicename:
	.string	"PIC16F505"
	.zero	1014
# deviceid:
	.long	16505
# flash:
	.value	1024
# dataflash:
	.value	0
# datasheet:
	.long	41226
# backupaddr:
	.value	1028
# configaddr:
	.value	2047
# nlatches:
	.byte	1
	.zero	3
# devicename:
	.string	"PIC12F510"
	.zero	1014
# deviceid:
	.long	12510
# flash:
	.value	1024
# dataflash:
	.value	0
# datasheet:
	.long	41257
# backupaddr:
	.value	1028
# configaddr:
	.value	2047
# nlatches:
	.byte	1
	.zero	3
# devicename:
	.string	"PIC16F506"
	.zero	1014
# deviceid:
	.long	16506
# flash:
	.value	1024
# dataflash:
	.value	0
# datasheet:
	.long	41258
# backupaddr:
	.value	1028
# configaddr:
	.value	2047
# nlatches:
	.byte	1
	.zero	3
# devicename:
	.string	"PIC10F200"
	.zero	1014
# deviceid:
	.long	10200
# flash:
	.value	256
# dataflash:
	.value	0
# datasheet:
	.long	41228
# backupaddr:
	.value	260
# configaddr:
	.value	511
# nlatches:
	.byte	1
	.zero	3
# devicename:
	.string	"PIC10F202"
	.zero	1014
# deviceid:
	.long	10202
# flash:
	.value	512
# dataflash:
	.value	0
# datasheet:
	.long	41228
# backupaddr:
	.value	516
# configaddr:
	.value	1023
# nlatches:
	.byte	1
	.zero	3
# devicename:
	.string	"PIC10F204"
	.zero	1014
# deviceid:
	.long	10204
# flash:
	.value	256
# dataflash:
	.value	0
# datasheet:
	.long	41228
# backupaddr:
	.value	260
# configaddr:
	.value	511
# nlatches:
	.byte	1
	.zero	3
# devicename:
	.string	"PIC10F206"
	.zero	1014
# deviceid:
	.long	10206
# flash:
	.value	512
# dataflash:
	.value	0
# datasheet:
	.long	41228
# backupaddr:
	.value	516
# configaddr:
	.value	1023
# nlatches:
	.byte	1
	.zero	3
# devicename:
	.string	"PIC16F54"
	.zero	1015
# deviceid:
	.long	1654
# flash:
	.value	512
# dataflash:
	.value	0
# datasheet:
	.long	41207
# backupaddr:
	.value	0
# configaddr:
	.value	1023
# nlatches:
	.byte	1
	.zero	3
# devicename:
	.string	"PIC16F57"
	.zero	1015
# deviceid:
	.long	1657
# flash:
	.value	2048
# dataflash:
	.value	0
# datasheet:
	.long	41208
# backupaddr:
	.value	0
# configaddr:
	.value	4095
# nlatches:
	.byte	4
	.zero	3
# devicename:
	.string	"PIC16F59"
	.zero	1015
# deviceid:
	.long	1659
# flash:
	.value	2048
# dataflash:
	.value	0
# datasheet:
	.long	41243
# backupaddr:
	.value	0
# configaddr:
	.value	4095
# nlatches:
	.byte	4
	.zero	3
# devicename:
	.string	"PIC10F220"
	.zero	1014
# deviceid:
	.long	10220
# flash:
	.value	256
# dataflash:
	.value	0
# datasheet:
	.long	41266
# backupaddr:
	.value	260
# configaddr:
	.value	511
# nlatches:
	.byte	1
	.zero	3
# devicename:
	.string	"PIC10F222"
	.zero	1014
# deviceid:
	.long	10222
# flash:
	.value	512
# dataflash:
	.value	0
# datasheet:
	.long	41266
# backupaddr:
	.value	516
# configaddr:
	.value	1023
# nlatches:
	.byte	1
	.zero	3
# devicename:
	.string	"PIC12F519"
	.zero	1014
# deviceid:
	.long	12519
# flash:
	.value	1024
# dataflash:
	.value	64
# datasheet:
	.long	41316
# backupaddr:
	.value	1092
# configaddr:
	.value	2047
# nlatches:
	.byte	1
	.zero	3
# devicename:
	.string	"PIC16F570"
	.zero	1014
# deviceid:
	.long	16570
# flash:
	.value	2048
# dataflash:
	.value	64
# datasheet:
	.long	41670
# backupaddr:
	.value	2116
# configaddr:
	.value	4095
# nlatches:
	.byte	4
	.zero	3
# devicename:
	.string	"PIC16F527"
	.zero	1014
# deviceid:
	.long	16527
# flash:
	.value	1024
# dataflash:
	.value	64
# datasheet:
	.long	41640
# backupaddr:
	.value	1092
# configaddr:
	.value	2047
# nlatches:
	.byte	1
	.zero	3
# devicename:
	.string	"PIC16F526"
	.zero	1014
# deviceid:
	.long	16526
# flash:
	.value	1024
# dataflash:
	.value	64
# datasheet:
	.long	41317
# backupaddr:
	.value	1092
# configaddr:
	.value	2047
# nlatches:
	.byte	1
	.zero	3
# devicename:
	.string	"(null)"
	.zero	1017
# deviceid:
	.long	0
# flash:
	.value	0
# dataflash:
	.value	0
# datasheet:
	.long	0
# backupaddr:
	.value	0
# configaddr:
	.value	0
# nlatches:
	.byte	0
	.zero	3
	.comm	pic12_conf,14,8
	.globl	pic12_ops
	.align 16
	.type	pic12_ops, @object
	.size	pic12_ops, 160
pic12_ops:
# arch:
	.long	4095
# selector:
	.zero	4
	.quad	pic12_selector
# read_config_memory:
	.quad	pic12_read_config_memory
# get_program_size:
	.quad	pic12_get_program_size
# get_data_size:
	.quad	pic12_get_data_size
# get_executive_size:
	.quad	0
# read_program_memory_block:
	.quad	pic12_read_program_memory_block
# read_data_memory_block:
	.quad	pic12_read_data_memory_block
# program:
	.quad	pic12_program
# verify:
	.quad	pic12_verify
# bulk_erase:
	.quad	pic12_bulk_erase
# row_erase:
	.quad	0
# dumpdeviceid:
	.quad	pic12_dumpdeviceid
# dumpconfig:
	.quad	pic12_dumpconfig
# dumposccal:
	.quad	pic12_dumposccal
# dumpdevice:
	.quad	pic12_dumpdevice
# dumphexcode:
	.quad	pic12_dumphexcode
# dumpinhxcode:
	.quad	pic12_dumpinhxcode
# dumphexdata:
	.quad	pic12_dumphexdata
# dumpinhxdata:
	.quad	pic12_dumpinhxdata
	.section	.rodata
	.align 16
	.type	__func__.5805, @object
	.size	__func__.5805, 17
__func__.5805:
	.string	"pic12_bulk_erase"
	.align 16
	.type	__func__.5820, @object
	.size	__func__.5820, 25
__func__.5820:
	.string	"pic12_read_config_memory"
	.align 16
	.type	__func__.5867, @object
	.size	__func__.5867, 18
__func__.5867:
	.string	"pic12_read_osccal"
	.align 16
	.type	__func__.5873, @object
	.size	__func__.5873, 19
__func__.5873:
	.string	"pic12_write_osccal"
	.align 16
	.type	__func__.5889, @object
	.size	__func__.5889, 16
__func__.5889:
	.string	"pic12_getregion"
	.align 16
	.type	__func__.5898, @object
	.size	__func__.5898, 17
__func__.5898:
	.string	"pic12_initregion"
	.align 16
	.type	__func__.5909, @object
	.size	__func__.5909, 17
__func__.5909:
	.string	"pic12_loadregion"
	.align 16
	.type	__func__.5917, @object
	.size	__func__.5917, 20
__func__.5917:
	.string	"pic12_programregion"
	.local	write_pending.5916
	.comm	write_pending.5916,4,4
	.align 16
	.type	__func__.5930, @object
	.size	__func__.5930, 19
__func__.5930:
	.string	"pic12_verifyregion"
	.align 16
	.type	__func__.5987, @object
	.size	__func__.5987, 17
__func__.5987:
	.string	"pic12_dumposccal"
	.align 16
	.type	__func__.6011, @object
	.size	__func__.6011, 18
__func__.6011:
	.string	"pic12_dumphexcode"
	.align 16
	.type	__func__.6049, @object
	.size	__func__.6049, 18
__func__.6049:
	.string	"pic12_dumphexdata"
	.ident	"GCC: (Ubuntu/Linaro 4.7.2-2ubuntu1) 4.7.2"
	.section	.note.GNU-stack,"",@progbits
