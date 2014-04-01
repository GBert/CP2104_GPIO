	.file	"pic14.c"
# GNU C (Ubuntu/Linaro 4.7.2-2ubuntu1) version 4.7.2 (x86_64-linux-gnu)
#	compiled by GNU C version 4.7.2, GMP version 5.0.2, MPFR version 3.1.0-p3, MPC version 0.9
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# angegebene Optionen:  -fpreprocessed pic14.i -mtune=generic -march=x86-64
# -auxbase-strip pic14.o -Os -pedantic-errors -Wall -std=gnu99
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
	.globl	pic14_get_program_size
	.type	pic14_get_program_size, @function
pic14_get_program_size:
.LFB67:
	.cfi_startproc
	movl	$0, (%rdi)	#, *addr_1(D)
	movl	pic14_index(%rip), %eax	# pic14_index, pic14_index
	imulq	$1044, %rax, %rax	#, pic14_index, tmp67
	movzwl	pic14_map+1026(%rax), %eax	# pic14_map[pic14_index.24_2].flash, pic14_map[pic14_index.24_2].flash
	ret
	.cfi_endproc
.LFE67:
	.size	pic14_get_program_size, .-pic14_get_program_size
	.globl	pic14_get_data_size
	.type	pic14_get_data_size, @function
pic14_get_data_size:
.LFB68:
	.cfi_startproc
	movl	pic14_index(%rip), %eax	# pic14_index, pic14_index
	imulq	$1044, %rax, %rax	#, pic14_index, tmp69
	movzwl	pic14_map+1038(%rax), %eax	# pic14_map[pic14_index.23_1].dataaddr, pic14_map[pic14_index.23_1].dataaddr
	movl	%eax, (%rdi)	# pic14_map[pic14_index.23_1].dataaddr, *addr_4(D)
	movl	pic14_index(%rip), %eax	# pic14_index, pic14_index
	imulq	$1044, %rax, %rax	#, pic14_index, tmp75
	movzwl	pic14_map+1028(%rax), %eax	# pic14_map[pic14_index.23_5].eeprom, pic14_map[pic14_index.23_5].eeprom
	ret
	.cfi_endproc
.LFE68:
	.size	pic14_get_data_size, .-pic14_get_data_size
	.globl	pic14_dumpdevice
	.type	pic14_dumpdevice, @function
pic14_dumpdevice:
.LFB89:
	.cfi_startproc
	movl	pic14_index(%rip), %eax	# pic14_index, pic14_index
	pushq	%rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movl	$1, %esi	#,
	xorl	%ebx, %ebx	# ivtmp.111
	imulq	$1044, %rax, %rax	#, pic14_index, tmp115
	movzwl	pic14_map+1036(%rax), %edi	# pic14_map[pic14_index.0_3].configaddr, pic14_map[pic14_index.0_3].configaddr
	addl	%edi, %edi	# tmp118
	call	pic_dumpaddr	#
.L4:
	movl	pic14_index(%rip), %eax	# pic14_index, pic14_index
	movzwl	pic14_conf(%rbx,%rbx), %esi	# MEM[symbol: pic14_conf, index: ivtmp.111_27, step: 2, offset: 0B], MEM[symbol: pic14_conf, index: ivtmp.111_27, step: 2, offset: 0B]
	imulq	$1044, %rax, %rax	#, pic14_index, tmp123
	movzwl	pic14_map+1036(%rax), %edi	# pic14_map[pic14_index.0_11].configaddr, pic14_map[pic14_index.0_11].configaddr
	addl	%ebx, %edi	# ivtmp.111, tmp126
	incq	%rbx	# ivtmp.111
	call	pic_dumpword16	#
	cmpq	$4, %rbx	#, ivtmp.111
	jne	.L4	#,
	xorb	%bl, %bl	#
	jmp	.L5	#
.L6:
	movzwl	pic14_map+1036(%rax), %eax	# pic14_map[pic14_index.0_17].configaddr, pic14_map[pic14_index.0_17].configaddr
	movzwl	pic14_conf+14(%rbx,%rbx), %esi	# MEM[symbol: pic14_conf, index: ivtmp.100_46, step: 2, offset: 14B], MEM[symbol: pic14_conf, index: ivtmp.100_46, step: 2, offset: 14B]
	leal	7(%rax,%rbx), %edi	#, tmp135
	incq	%rbx	# ivtmp.100
	call	pic_dumpword16	#
.L5:
	movl	pic14_index(%rip), %eax	# pic14_index, pic14_index.0
	imulq	$1044, %rax, %rax	#, pic14_index.0, tmp138
	movzbl	pic14_map+1040(%rax), %edx	# pic14_map[pic14_index.0_17].nconfig, pic14_map[pic14_index.0_17].nconfig
	cmpl	%edx, %ebx	# pic14_map[pic14_index.0_17].nconfig, ivtmp.100
	jb	.L6	#,
	popq	%rbx	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE89:
	.size	pic14_dumpdevice, .-pic14_dumpdevice
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"[%04X] [CONFIG]   %04X\n"
.LC1:
	.string	"[%04X] [CONFIG%d]  %04X\n"
	.text
	.globl	pic14_dumpconfig
	.type	pic14_dumpconfig, @function
pic14_dumpconfig:
.LFB84:
	.cfi_startproc
	movl	pic14_index(%rip), %eax	# pic14_index, pic14_index.3
	pushq	%rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	xorl	%ebx, %ebx	# ivtmp.125
	imulq	$1044, %rax, %rax	#, pic14_index.3, tmp85
	cmpb	$1, pic14_map+1040(%rax)	#, pic14_map[pic14_index.3_2].nconfig
	jne	.L13	#,
	movzwl	pic14_map+1036(%rax), %edx	# pic14_map[pic14_index.3_2].configaddr, pic14_map[pic14_index.3_2].configaddr
	movzwl	pic14_conf+14(%rip), %ecx	# pic14_conf.config, pic14_conf.config
	movl	$.LC0, %esi	#,
	popq	%rbx	#
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	addl	$7, %edx	#, tmp94
	jmp	__printf_chk	#
.L11:
	.cfi_restore_state
	movzwl	pic14_map+1036(%rdx), %edx	# pic14_map[pic14_index.3_11].configaddr, pic14_map[pic14_index.3_11].configaddr
	movzwl	pic14_conf+12(%rbx,%rbx), %r8d	# MEM[symbol: pic14_conf, index: ivtmp.125_36, step: 2, offset: 12B],
	movl	%ebx, %ecx	# ivtmp.125,
	movl	$.LC1, %esi	#,
	movl	$1, %edi	#,
	leal	7(%rax,%rdx), %edx	#, tmp103
	xorl	%eax, %eax	#
	call	__printf_chk	#
.L13:
	movl	pic14_index(%rip), %edx	# pic14_index, pic14_index.3
	movl	%ebx, %eax	# ivtmp.125, i
	incq	%rbx	# ivtmp.125
	imulq	$1044, %rdx, %rdx	#, pic14_index.3, tmp106
	movzbl	pic14_map+1040(%rdx), %ecx	# pic14_map[pic14_index.3_11].nconfig, pic14_map[pic14_index.3_11].nconfig
	cmpl	%ecx, %eax	# pic14_map[pic14_index.3_11].nconfig, i
	jb	.L11	#,
	popq	%rbx	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE84:
	.size	pic14_dumpconfig, .-pic14_dumpconfig
	.section	.rodata.str1.1
.LC2:
	.string	":%02X%02X%02X00"
.LC3:
	.string	"%02X00"
.LC4:
	.string	"%02X\n"
	.text
	.globl	pic14_dumpinhxdata
	.type	pic14_dumpinhxdata, @function
pic14_dumpinhxdata:
.LFB88:
	.cfi_startproc
	pushq	%r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	leal	(%rsi,%rsi), %edi	#, tmp132
	pushq	%r14	#
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movq	%rcx, %r14	# data, data
	pushq	%r13	#
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
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
	jmp	.L16	#
.L19:
	movl	%ebx, %eax	# i, i
	movl	$8, %esi	#,
	movl	$255, %edi	#,
	leaq	(%r14,%rax,2), %rdx	#, tmp135
	call	pic_mtdata	#
	testl	%eax, %eax	# D.6296
	jne	.L17	#,
	leal	(%rbx,%r12), %ebp	#, tmp136
	shrl	$7, %r13d	#, D.6299
	movl	$254, %r8d	#,
	movzbl	%r13b, %ecx	# D.6299, tmp138
	movl	$16, %edx	#,
	movl	$.LC2, %esi	#,
	addl	%ebp, %ebp	# lb
	movl	$1, %edi	#,
	andl	%ebp, %r8d	# lb,
	leal	16(%rbp,%r13), %r13d	#, cc
	xorl	%ebp, %ebp	# ivtmp.150
	call	__printf_chk	#
.L18:
	leal	(%rbx,%rbp), %eax	#, tmp141
	movl	$.LC3, %esi	#,
	movl	$1, %edi	#,
	incq	%rbp	# ivtmp.150
	movw	(%r14,%rax,2), %r15w	# *D.6307_26, *D.6307_26
	xorl	%eax, %eax	#
	movzbl	%r15b, %edx	# *D.6307_26, lb
	addl	%r15d, %r13d	# *D.6307_26, cc
	call	__printf_chk	#
	cmpq	$8, %rbp	#, ivtmp.150
	jne	.L18	#,
	negl	%r13d	# tmp145
	movl	$.LC4, %esi	#,
	movl	$1, %edi	#,
	movzbl	%r13b, %edx	# tmp145, tmp146
	xorl	%eax, %eax	#
	call	__printf_chk	#
.L17:
	addl	$8, %ebx	#, i
.L16:
	cmpl	12(%rsp), %ebx	# %sfp, i
	leal	(%rbx,%r12), %r13d	#, address
	jb	.L19	#,
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
.LFE88:
	.size	pic14_dumpinhxdata, .-pic14_dumpinhxdata
	.section	.rodata.str1.1
.LC5:
	.string	"[%04X] "
.LC6:
	.string	"%02X "
.LC7:
	.string	"%s: information: data eeprom empty\n"
	.text
	.globl	pic14_dumphexdata
	.type	pic14_dumphexdata, @function
pic14_dumphexdata:
.LFB87:
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
	jmp	.L23	#
.L28:
	movl	%ebx, %eax	# i, i
	movl	$16, %esi	#,
	movl	$255, %edi	#,
	leaq	(%r12,%rax,2), %rdx	#, tmp117
	call	pic_mtdata	#
	testl	%eax, %eax	# D.6318
	jne	.L24	#,
	movl	%r13d, %edx	# address,
	movl	$.LC5, %esi	#,
	movl	$1, %edi	#,
	xorl	%r13d, %r13d	# j
	call	__printf_chk	#
.L25:
	leal	0(%r13,%rbx), %eax	#, tmp119
	movl	$.LC6, %esi	#,
	movl	$1, %edi	#,
	incl	%r13d	# j
	movzwl	(%r12,%rax,2), %edx	# *D.6324_21, *D.6324_21
	xorl	%eax, %eax	#
	call	__printf_chk	#
	cmpl	$16, %r13d	#, j
	jne	.L25	#,
	xorb	%r13b, %r13b	#
.L27:
	leal	0(%r13,%rbx), %eax	#, tmp122
	movw	(%r12,%rax,2), %di	# *D.6324_29, *D.6324_29
	andw	$255, %di	#, D.6328
	leal	-32(%rdi), %eax	#, tmp124
	movzwl	%di, %edi	# D.6328, D.6328
	cmpw	$94, %ax	#, tmp124
	cmova	%r15d, %edi	# D.6328,, iftmp.1, iftmp.1
	incl	%r13d	# j
	call	putchar	#
	cmpl	$16, %r13d	#, j
	jne	.L27	#,
	movl	$10, %edi	#,
	incl	%ebp	# nlines
	call	putchar	#
.L24:
	addl	$16, %ebx	#, i
.L23:
	cmpl	12(%rsp), %ebx	# %sfp, i
	leal	(%rbx,%r14), %r13d	#, address
	jb	.L28	#,
	testl	%ebp, %ebp	# nlines
	jne	.L22	#,
	addq	$24, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movl	$__func__.6248, %edx	#,
	movl	$.LC7, %esi	#,
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
.L22:
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
.LFE87:
	.size	pic14_dumphexdata, .-pic14_dumphexdata
	.section	.rodata.str1.1
.LC8:
	.string	"%02X%02X"
	.text
	.globl	pic14_dumpinhxcode
	.type	pic14_dumpinhxcode, @function
pic14_dumpinhxcode:
.LFB86:
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
	jmp	.L35	#
.L38:
	movl	%ebx, %eax	# i, i
	movl	$8, %esi	#,
	movl	$16383, %edi	#,
	leaq	0(%r13,%rax,4), %rdx	#, tmp147
	call	pic_mtcode	#
	testl	%eax, %eax	# D.6338
	jne	.L36	#,
	leal	(%rbx,%r12), %r14d	#, tmp148
	shrl	$7, %ebp	#, D.6341
	movl	$254, %r8d	#,
	movzbl	%bpl, %ecx	# D.6341, tmp150
	movl	$16, %edx	#,
	movl	$.LC2, %esi	#,
	addl	%r14d, %r14d	# lb
	movl	$1, %edi	#,
	andl	%r14d, %r8d	# lb,
	leal	16(%r14,%rbp), %r15d	#, cc
	xorl	%ebp, %ebp	# ivtmp.224
	call	__printf_chk	#
.L37:
	leal	(%rbx,%rbp), %eax	#, tmp153
	movl	$.LC8, %esi	#,
	movl	$1, %edi	#,
	incq	%rbp	# ivtmp.224
	movl	0(%r13,%rax,4), %r14d	# *D.6349_25, D.6350
	movl	%r14d, %eax	# D.6350,
	movzbl	%r14b, %edx	# D.6350, tmp155
	shrl	$8, %eax	#,
	movzbl	%al, %ecx	#, tmp154
	movl	%eax, 8(%rsp)	#, %sfp
	xorl	%eax, %eax	#
	call	__printf_chk	#
	addl	8(%rsp), %r14d	# %sfp, tmp156
	addl	%r14d, %r15d	# tmp156, cc
	cmpq	$8, %rbp	#, ivtmp.224
	jne	.L37	#,
	movb	%r15b, %al	# cc,
	movl	$.LC4, %esi	#,
	movl	$1, %edi	#,
	negl	%eax	#
	movzbl	%al, %edx	# tmp158, tmp159
	xorl	%eax, %eax	#
	call	__printf_chk	#
.L36:
	addl	$8, %ebx	#, i
.L35:
	cmpl	12(%rsp), %ebx	# %sfp, i
	leal	(%rbx,%r12), %ebp	#, address
	jb	.L38	#,
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
.LFE86:
	.size	pic14_dumpinhxcode, .-pic14_dumpinhxcode
	.section	.rodata.str1.1
.LC9:
	.string	"%04X "
.LC10:
	.string	"%s: information: program flash empty\n"
	.text
	.globl	pic14_dumphexcode
	.type	pic14_dumphexcode, @function
pic14_dumphexcode:
.LFB85:
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
	jmp	.L42	#
.L47:
	movl	%ebx, %eax	# i, i
	movl	$8, %esi	#,
	movl	$16383, %edi	#,
	leaq	(%r12,%rax,4), %rdx	#, tmp116
	call	pic_mtcode	#
	testl	%eax, %eax	# D.6360
	jne	.L43	#,
	movl	%r13d, %edx	# address,
	movl	$.LC5, %esi	#,
	movl	$1, %edi	#,
	xorl	%r13d, %r13d	# j
	call	__printf_chk	#
.L44:
	leal	0(%r13,%rbx), %eax	#, tmp118
	movl	$.LC9, %esi	#,
	movl	$1, %edi	#,
	incl	%r13d	# j
	movl	(%r12,%rax,4), %edx	# *D.6366_21, tmp119
	xorl	%eax, %eax	#
	andl	$16383, %edx	#, tmp119
	call	__printf_chk	#
	cmpl	$8, %r13d	#, j
	jne	.L44	#,
	xorb	%r13b, %r13b	#
.L46:
	leal	0(%r13,%rbx), %eax	#, tmp122
	movl	(%r12,%rax,4), %edi	# *D.6366_29, *D.6366_29
	andl	$255, %edi	#, D.6370
	leal	-32(%rdi), %eax	#, tmp124
	cmpl	$94, %eax	#, tmp124
	cmova	%r15d, %edi	# D.6370,, tmp127, iftmp.2
	incl	%r13d	# j
	call	putchar	#
	cmpl	$8, %r13d	#, j
	jne	.L46	#,
	movl	$10, %edi	#,
	incl	%ebp	# nlines
	call	putchar	#
.L43:
	addl	$8, %ebx	#, i
.L42:
	cmpl	12(%rsp), %ebx	# %sfp, i
	leal	(%rbx,%r14), %r13d	#, address
	jb	.L47	#,
	testl	%ebp, %ebp	# nlines
	jne	.L41	#,
	addq	$24, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movl	$__func__.6210, %edx	#,
	movl	$.LC10, %esi	#,
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
.L41:
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
.LFE85:
	.size	pic14_dumphexcode, .-pic14_dumphexcode
	.type	pic14_increment_address, @function
pic14_increment_address:
.LFB49:
	.cfi_startproc
	movl	$6, %edx	#,
	movl	$6, %esi	#,
	jmp	io_program_out	#
	.cfi_endproc
.LFE49:
	.size	pic14_increment_address, .-pic14_increment_address
	.type	pic14_load_data_for_program_memory, @function
pic14_load_data_for_program_memory:
.LFB45:
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
	pushq	%rax	#
	.cfi_def_cfa_offset 32
	call	io_program_out	#
	popq	%rcx	#
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
.LFE45:
	.size	pic14_load_data_for_program_memory, .-pic14_load_data_for_program_memory
	.type	pic14_load_data_for_data_memory, @function
pic14_load_data_for_data_memory:
.LFB46:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movl	%esi, %ebp	# word, word
	movl	$6, %edx	#,
	movl	$3, %esi	#,
	pushq	%rbx	#
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rdi, %rbx	# k, k
	pushq	%r8	#
	.cfi_def_cfa_offset 32
	call	io_program_out	#
	popq	%r9	#
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
.LFE46:
	.size	pic14_load_data_for_data_memory, .-pic14_load_data_for_data_memory
	.type	pic14_load_configuration, @function
pic14_load_configuration:
.LFB44:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movl	%esi, %ebp	# word, word
	movl	$6, %edx	#,
	xorl	%esi, %esi	#
	pushq	%rbx	#
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rdi, %rbx	# k, k
	pushq	%r10	#
	.cfi_def_cfa_offset 32
	call	io_program_out	#
	popq	%r11	#
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
	.size	pic14_load_configuration, .-pic14_load_configuration
	.type	pic14_bulk_erase_setup1, @function
pic14_bulk_erase_setup1:
.LFB58:
	.cfi_startproc
	movl	$6, %edx	#,
	movl	$1, %esi	#,
	jmp	io_program_out	#
	.cfi_endproc
.LFE58:
	.size	pic14_bulk_erase_setup1, .-pic14_bulk_erase_setup1
	.type	pic14_bulk_erase_setup2, @function
pic14_bulk_erase_setup2:
.LFB59:
	.cfi_startproc
	movl	$6, %edx	#,
	movl	$7, %esi	#,
	jmp	io_program_out	#
	.cfi_endproc
.LFE59:
	.size	pic14_bulk_erase_setup2, .-pic14_bulk_erase_setup2
	.type	pic14_read_data_from_program_memory, @function
pic14_read_data_from_program_memory:
.LFB47:
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
	andw	$16383, %ax	#, tmp65
	popq	%rbx	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE47:
	.size	pic14_read_data_from_program_memory, .-pic14_read_data_from_program_memory
	.type	pic14_read_data_from_data_memory, @function
pic14_read_data_from_data_memory:
.LFB48:
	.cfi_startproc
	pushq	%rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movl	$6, %edx	#,
	movq	%rdi, %rbx	# k, k
	movl	$5, %esi	#,
	call	io_program_out	#
	movq	%rbx, %rdi	# k,
	movl	$16, %esi	#,
	call	io_program_in	#
	shrw	%ax	# tmp67
	andw	$16383, %ax	#, tmp67
	popq	%rbx	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE48:
	.size	pic14_read_data_from_data_memory, .-pic14_read_data_from_data_memory
	.type	pic14_begin_programming_001000, @function
pic14_begin_programming_001000:
.LFB51:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movl	$6, %edx	#,
	movl	%esi, %ebp	# t, t
	movl	$8, %esi	#,
	pushq	%rbx	#
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	pushq	%rbx	#
	.cfi_def_cfa_offset 32
	movq	%rdi, %rbx	# k, k
	call	io_program_out	#
	movl	%ebp, %esi	# t,
	movq	%rbx, %rdi	# k,
	popq	%rbp	#
	.cfi_def_cfa_offset 24
	popq	%rbx	#
	.cfi_def_cfa_offset 16
	popq	%rbp	#
	.cfi_def_cfa_offset 8
	jmp	io_usleep	#
	.cfi_endproc
.LFE51:
	.size	pic14_begin_programming_001000, .-pic14_begin_programming_001000
	.type	pic14_begin_programming_011000, @function
pic14_begin_programming_011000:
.LFB52:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movl	%esi, %ebp	# t, t
	movl	$6, %edx	#,
	movl	$24, %esi	#,
	pushq	%rbx	#
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rdi, %rbx	# k, k
	pushq	%rax	#
	.cfi_def_cfa_offset 32
	call	io_program_out	#
	popq	%rax	#
	.cfi_def_cfa_offset 24
	movq	%rbx, %rdi	# k,
	movl	%ebp, %esi	# t,
	popq	%rbx	#
	.cfi_def_cfa_offset 16
	popq	%rbp	#
	.cfi_def_cfa_offset 8
	jmp	io_usleep	#
	.cfi_endproc
.LFE52:
	.size	pic14_begin_programming_011000, .-pic14_begin_programming_011000
	.type	pic14_bulk_erase_program_memory, @function
pic14_bulk_erase_program_memory:
.LFB56:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movl	%esi, %ebp	# t, t
	movl	$6, %edx	#,
	movl	$9, %esi	#,
	pushq	%rbx	#
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rdi, %rbx	# k, k
	pushq	%rax	#
	.cfi_def_cfa_offset 32
	call	io_program_out	#
	popq	%rax	#
	.cfi_def_cfa_offset 24
	movq	%rbx, %rdi	# k,
	movl	%ebp, %esi	# t,
	popq	%rbx	#
	.cfi_def_cfa_offset 16
	popq	%rbp	#
	.cfi_def_cfa_offset 8
	jmp	io_usleep	#
	.cfi_endproc
.LFE56:
	.size	pic14_bulk_erase_program_memory, .-pic14_bulk_erase_program_memory
	.section	.rodata.str1.1
.LC11:
	.string	"%s\t"
.LC12:
	.string	"Total: %u\n"
	.text
	.globl	pic14_selector
	.type	pic14_selector, @function
pic14_selector:
.LFB41:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	xorl	%eax, %eax	# ivtmp.313
	pushq	%rbx	#
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$1752, %rsp	#,
	.cfi_def_cfa_offset 1776
.L73:
	movl	%eax, %edx	# ivtmp.313, ivtmp.313
	imulq	$1044, %rdx, %rdx	#, ivtmp.313, tmp86
	addq	$pic14_map, %rdx	#, tmp87
	movq	%rdx, (%rsp,%rax,8)	# tmp87, MEM[symbol: dnames, index: ivtmp.313_2, step: 8, offset: 0B]
	incq	%rax	# ivtmp.313
	cmpq	$218, %rax	#, ivtmp.313
	jne	.L73	#,
	movl	$pic_cmp, %ecx	#,
	movl	$8, %edx	#,
	movl	$218, %esi	#,
	movq	%rsp, %rdi	#,
	xorl	%ebx, %ebx	# ivtmp.304
	movl	$5, %ebp	#, tmp99
	call	qsort	#
.L76:
	xorl	%edx, %edx	# tmp91
	movl	%ebx, %eax	#, tmp92
	divl	%ebp	# tmp99
	cmpl	$4, %edx	#, tmp91
	jne	.L74	#,
	movq	(%rsp,%rbx,8), %rdi	# MEM[symbol: dnames, index: ivtmp.304_40, step: 8, offset: 0B], MEM[symbol: dnames, index: ivtmp.304_40, step: 8, offset: 0B]
	call	puts	#
	jmp	.L75	#
.L74:
	movq	(%rsp,%rbx,8), %rdx	# MEM[symbol: dnames, index: ivtmp.304_40, step: 8, offset: 0B], MEM[symbol: dnames, index: ivtmp.304_40, step: 8, offset: 0B]
	movl	$.LC11, %esi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
.L75:
	incq	%rbx	# ivtmp.304
	cmpq	$218, %rbx	#, ivtmp.304
	jne	.L76	#,
	movl	$10, %edi	#,
	call	putchar	#
	movl	$218, %edx	#,
	movl	$.LC12, %esi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	addq	$1752, %rsp	#,
	.cfi_def_cfa_offset 24
	popq	%rbx	#
	.cfi_def_cfa_offset 16
	popq	%rbp	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE41:
	.size	pic14_selector, .-pic14_selector
	.globl	pic14_arch
	.type	pic14_arch, @function
pic14_arch:
.LFB40:
	.cfi_startproc
	movq	$pic14_ops, 3128(%rdi)	#, k_1(D)->pic
	movl	pic14_ops(%rip), %eax	# pic14_ops.arch,
	ret
	.cfi_endproc
.LFE40:
	.size	pic14_arch, .-pic14_arch
	.globl	pic14_program_verify
	.type	pic14_program_verify, @function
pic14_program_verify:
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
	cmpl	$2, 3076(%rbx)	#, k_1(D)->key
	movl	$1, %esi	#,
	movq	%rbx, %rdi	# k,
	jne	.L82	#,
	call	io_set_vpp	#
	movq	%rbx, %rdi	# k,
	movl	$250, %esi	#,
	call	io_usleep	#
	xorl	%esi, %esi	#
	movq	%rbx, %rdi	# k,
	call	io_set_vpp	#
	movq	%rbx, %rdi	# k,
	movl	$250, %esi	#,
	call	io_usleep	#
	movl	$33, %edx	#,
	movl	$1296255056, %esi	#,
	movq	%rbx, %rdi	# k,
	call	io_program_out	#
	jmp	.L84	#
.L82:
	call	io_set_pgm	#
	movl	$10, %esi	#,
	movq	%rbx, %rdi	# k,
	call	io_usleep	#
	movl	$1, %esi	#,
	movq	%rbx, %rdi	# k,
	call	io_set_vpp	#
.L84:
	movq	%rbx, %rdi	# k,
	movl	$250, %esi	#,
	popq	%rbx	#
	.cfi_def_cfa_offset 8
	jmp	io_usleep	#
	.cfi_endproc
.LFE42:
	.size	pic14_program_verify, .-pic14_program_verify
	.globl	pic14_standby
	.type	pic14_standby, @function
pic14_standby:
.LFB43:
	.cfi_startproc
	pushq	%rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	xorl	%esi, %esi	#
	movq	%rdi, %rbx	# k, k
	call	io_set_pgd	#
	xorl	%esi, %esi	#
	movq	%rbx, %rdi	# k,
	call	io_set_pgc	#
	cmpl	$2, 3076(%rbx)	#, k_1(D)->key
	jne	.L86	#,
	movq	%rbx, %rdi	# k,
	movl	$1, %esi	#,
	call	io_set_vpp	#
	movq	%rbx, %rdi	# k,
	movl	$250, %esi	#,
	call	io_usleep	#
	movq	%rbx, %rdi	# k,
	xorl	%esi, %esi	#
	popq	%rbx	#
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	jmp	io_set_vpp	#
.L86:
	.cfi_restore_state
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
	.size	pic14_standby, .-pic14_standby
	.globl	pic14_read_program_memory_increment
	.type	pic14_read_program_memory_increment, @function
pic14_read_program_memory_increment:
.LFB62:
	.cfi_startproc
	pushq	%rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %rbx	# k, k
	subq	$16, %rsp	#,
	.cfi_def_cfa_offset 32
	call	pic14_read_data_from_program_memory	#
	movq	%rbx, %rdi	# k,
	movl	%eax, 8(%rsp)	#,
	call	pic14_increment_address	#
	movl	8(%rsp), %eax	#,
	addq	$16, %rsp	#,
	.cfi_def_cfa_offset 16
	popq	%rbx	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE62:
	.size	pic14_read_program_memory_increment, .-pic14_read_program_memory_increment
	.globl	pic14_read_program_memory_block
	.type	pic14_read_program_memory_block, @function
pic14_read_program_memory_block:
.LFB69:
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
	call	pic14_program_verify	#
	xorl	%esi, %esi	#
	movq	%rbx, %rdi	# k,
	call	pic14_load_data_for_program_memory	#
	jmp	.L91	#
.L92:
	movq	%rbx, %rdi	# k,
	incl	%r12d	# i
	call	pic14_increment_address	#
.L91:
	cmpl	%r13d, %r12d	# addr, i
	jne	.L92	#,
	leaq	4(%rbp,%r14,4), %r12	#, D.7627
	jmp	.L93	#
.L94:
	call	pic14_read_program_memory_increment	#
	movzwl	%ax, %eax	# D.6759, D.6759
	movl	%eax, -4(%rbp)	# D.6759, MEM[base: D.7628_33, offset: -4B]
.L93:
	addq	$4, %rbp	#, ivtmp.337
	movq	%rbx, %rdi	# k,
	cmpq	%r12, %rbp	# D.7627, ivtmp.337
	jne	.L94	#,
	call	pic14_standby	#
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
.LFE69:
	.size	pic14_read_program_memory_block, .-pic14_read_program_memory_block
	.section	.rodata.str1.1
.LC13:
	.string	"%s: fatal error: %s.\n"
.LC14:
	.string	"%s: fatal error: device unknown: [%04X]\n"
.LC15:
	.string	"%s: fatal error: unknown device: [%s]\n"
	.text
	.globl	pic14_read_config_memory
	.type	pic14_read_config_memory, @function
pic14_read_config_memory:
.LFB66:
	.cfi_startproc
	pushq	%r14	#
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	movl	$pic14_conf, %edx	#, tmp111
	xorl	%eax, %eax	# tmp113
	movl	$21, %ecx	#, tmp114
	movl	$218, pic14_index(%rip)	#, pic14_index
	pushq	%r13	#
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	pushq	%r12	#
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	pushq	%rbp	#
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	xorl	%ebp, %ebp	# ivtmp.409
	pushq	%rbx	#
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	movq	%rdi, %rbx	# k, k
	movq	%rdx, %rdi	# tmp111, tmp112
	rep stosl
	movq	%rbx, %rdi	# k,
	call	pic14_program_verify	#
	xorl	%esi, %esi	#
	movq	%rbx, %rdi	# k,
	call	pic14_load_configuration	#
.L97:
	movq	%rbx, %rdi	# k,
	call	pic14_read_program_memory_increment	#
	movw	%ax, pic14_conf(%rbp)	# D.6773, MEM[symbol: pic14_conf, index: ivtmp.409_132, offset: 0B]
	addq	$2, %rbp	#, ivtmp.409
	cmpq	$8, %rbp	#, ivtmp.409
	jne	.L97	#,
	movq	%rbx, %rdi	# k,
	call	pic14_read_program_memory_increment	#
	movq	%rbx, %rdi	# k,
	movw	%ax, pic14_conf+8(%rip)	# D.6774, pic14_conf.reserved
	call	pic14_read_program_memory_increment	#
	movq	%rbx, %rdi	# k,
	movw	%ax, pic14_conf+10(%rip)	# D.6775, pic14_conf.revisionid
	call	pic14_read_program_memory_increment	#
	cmpb	$0, 2048(%rbx)	#, k_8(D)->devicename
	movw	%ax, pic14_conf+12(%rip)	# deviceid, pic14_conf.deviceid
	je	.L98	#,
	movl	$pic14_map+1024, %r12d	#, ivtmp.384
	xorb	%bpl, %bpl	#
	leaq	2048(%rbx), %r13	#, tmp150
	jmp	.L99	#
.L102:
	movl	%ebp, %edi	# dev, dev
	movq	%r13, %rsi	# tmp150,
	addq	$1044, %r12	#, ivtmp.384
	imulq	$1044, %rdi, %rdi	#, dev, tmp121
	addq	$pic14_map, %rdi	#, tmp122
	call	strcasecmp	#
	testl	%eax, %eax	# D.6782
	jne	.L100	#,
	movw	%r14w, pic14_conf+12(%rip)	# D.6785, pic14_conf.deviceid
	jmp	.L101	#
.L100:
	incl	%ebp	# dev
.L99:
	movw	(%r12), %r14w	# MEM[base: D.7678_111, offset: 0B], D.6785
	testw	%r14w, %r14w	# D.6785
	jne	.L102	#,
	jmp	.L120	#
.L98:
	movl	%eax, %edx	# deviceid, tmp124
	movl	%eax, %esi	# deviceid, tmp149
	andw	$12288, %dx	#, tmp124
	andw	$16352, %si	#, tmp149
	cmpw	$12288, %dx	#, tmp124
	movl	$pic14_map+1024, %edx	#, ivtmp.396
	cmove	%eax, %esi	# tmp149,, deviceid, deviceid
	xorl	%ebp, %ebp	# dev
	jmp	.L105	#
.L106:
	addq	$1044, %rdx	#, ivtmp.396
	cmpw	%si, %cx	# deviceid, D.6785
	je	.L101	#,
	incl	%ebp	# dev
.L105:
	movw	(%rdx), %cx	# MEM[base: D.7691_131, offset: 0B], D.6785
	testw	%cx, %cx	# D.6785
	jne	.L106	#,
	jmp	.L121	#
.L114:
	movzwl	%ax, %esi	# deviceid, deviceid
	movq	%rbx, %rdi	# k,
	call	io_fault	#
	movl	$__func__.5931, %edx	#,
	movq	%rax, %rcx	# D.6804,
	movl	$.LC13, %esi	#,
	jmp	.L124	#
.L122:
	movzwl	%ax, %ecx	# deviceid, deviceid
	movl	$__func__.5931, %edx	#,
	movl	$.LC14, %esi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
.L108:
	movq	%rbx, %rdi	# k,
	call	pic14_standby	#
	movl	$70, %esi	#,
	movq	%rbx, %rdi	# k,
	call	io_exit	#
.L101:
	movl	%ebp, pic14_index(%rip)	# dev, pic14_index
	xorl	%ebp, %ebp	# ivtmp.369
	jmp	.L109	#
.L110:
	movq	%rbx, %rdi	# k,
	call	pic14_read_program_memory_increment	#
	movw	%ax, pic14_conf+14(%rbp,%rbp)	# D.6806, MEM[symbol: pic14_conf, index: ivtmp.369_58, step: 2, offset: 14B]
	incq	%rbp	# ivtmp.369
.L109:
	movl	pic14_index(%rip), %eax	# pic14_index, pic14_index.25
	imulq	$1044, %rax, %rax	#, pic14_index.25, tmp130
	leaq	pic14_map+1040(%rax), %rdx	#, tmp131
	movzbl	pic14_map+1040(%rax), %eax	# pic14_map[pic14_index.25_46].nconfig, pic14_map[pic14_index.25_46].nconfig
	cmpl	%ebp, %eax	# ivtmp.369, pic14_map[pic14_index.25_46].nconfig
	ja	.L110	#,
	xorl	%ebp, %ebp	# ivtmp.356
	cmpb	$0, 1(%rdx)	#, pic14_map[pic14_index.25_118].ncalib
	jne	.L119	#,
.L113:
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
	jmp	pic14_standby	#
.L112:
	.cfi_restore_state
	movq	%rbx, %rdi	# k,
	call	pic14_read_program_memory_increment	#
	movw	%ax, pic14_conf+18(%rbp,%rbp)	# D.6813, MEM[symbol: pic14_conf, index: ivtmp.356_108, step: 2, offset: 18B]
.L119:
	movl	pic14_index(%rip), %eax	# pic14_index, pic14_index
	movl	%ebp, %edx	# ivtmp.356, i
	incq	%rbp	# ivtmp.356
	imulq	$1044, %rax, %rax	#, pic14_index, tmp140
	movzbl	pic14_map+1041(%rax), %eax	# pic14_map[pic14_index.25_54].ncalib, pic14_map[pic14_index.25_54].ncalib
	cmpl	%eax, %edx	# pic14_map[pic14_index.25_54].ncalib, i
	jb	.L112	#,
	jmp	.L113	#
.L120:
	movq	%r13, %rcx	# tmp150,
	movl	$__func__.5931, %edx	#,
	movl	$.LC15, %esi	#,
.L124:
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	jmp	.L108	#
.L121:
	cmpw	$16383, %ax	#, deviceid
	je	.L114	#,
	testw	%ax, %ax	# deviceid
	je	.L114	#,
	jmp	.L122	#
	.cfi_endproc
.LFE66:
	.size	pic14_read_config_memory, .-pic14_read_config_memory
	.globl	pic14_read_data_memory_increment
	.type	pic14_read_data_memory_increment, @function
pic14_read_data_memory_increment:
.LFB63:
	.cfi_startproc
	pushq	%rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %rbx	# k, k
	subq	$16, %rsp	#,
	.cfi_def_cfa_offset 32
	call	pic14_read_data_from_data_memory	#
	movq	%rbx, %rdi	# k,
	movb	%al, 8(%rsp)	#,
	call	pic14_increment_address	#
	movb	8(%rsp), %al	#,
	addq	$16, %rsp	#,
	.cfi_def_cfa_offset 16
	popq	%rbx	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE63:
	.size	pic14_read_data_memory_increment, .-pic14_read_data_memory_increment
	.globl	pic14_read_data_memory_block
	.type	pic14_read_data_memory_block, @function
pic14_read_data_memory_block:
.LFB70:
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
	xorl	%r12d, %r12d	# i
	pushq	%rbp	#
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	movl	%edx, %ebp	# addr, addr
	pushq	%rbx	#
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	movq	%rdi, %rbx	# k, k
	call	pic14_program_verify	#
	xorl	%esi, %esi	#
	movq	%rbx, %rdi	# k,
	call	pic14_load_data_for_data_memory	#
	movl	pic14_index(%rip), %eax	# pic14_index, pic14_index
	imulq	$1044, %rax, %rax	#, pic14_index, tmp79
	movzwl	pic14_map+1038(%rax), %eax	# pic14_map[pic14_index.22_4].dataaddr, pic14_map[pic14_index.22_4].dataaddr
	subl	%eax, %ebp	# pic14_map[pic14_index.22_4].dataaddr, addr
	jmp	.L128	#
.L129:
	movq	%rbx, %rdi	# k,
	incl	%r12d	# i
	call	pic14_increment_address	#
.L128:
	cmpl	%ebp, %r12d	# addr, i
	jne	.L129	#,
	xorl	%r12d, %r12d	# ivtmp.418
	jmp	.L130	#
.L131:
	call	pic14_read_data_memory_increment	#
	movzbl	%al, %eax	# D.6751, D.6751
	movw	%ax, (%r14,%r12,2)	# D.6751, MEM[base: data_16(D), index: ivtmp.418_21, step: 2, offset: 0B]
	incq	%r12	# ivtmp.418
.L130:
	cmpl	%r12d, %r13d	# ivtmp.418, size
	movq	%rbx, %rdi	# k,
	ja	.L131	#,
	call	pic14_standby	#
	popq	%rbx	#
	.cfi_def_cfa_offset 40
	movl	%ebp, %eax	# addr,
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
.LFE70:
	.size	pic14_read_data_memory_block, .-pic14_read_data_memory_block
	.section	.rodata.str1.1
.LC16:
	.string	"%s: information: unimplemented\n"
	.text
	.globl	pic14_write_word
	.type	pic14_write_word, @function
pic14_write_word:
.LFB71:
	.cfi_startproc
	movl	pic14_index(%rip), %eax	# pic14_index, pic14_index
	pushq	%rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %rbx	# k, k
	imulq	$1044, %rax, %rax	#, pic14_index, tmp70
	movl	pic14_map+1032(%rax), %eax	# pic14_map[pic14_index.21_2].datasheet, pic14_map[pic14_index.21_2].datasheet
	cmpl	$41332, %eax	#, pic14_map[pic14_index.21_2].datasheet
	je	.L136	#,
	ja	.L141	#,
	cmpl	$39607, %eax	#, pic14_map[pic14_index.21_2].datasheet
	je	.L138	#,
	ja	.L142	#,
	cmpl	$30324, %eax	#, pic14_map[pic14_index.21_2].datasheet
	je	.L137	#,
	ja	.L143	#,
	cmpl	$30189, %eax	#, pic14_map[pic14_index.21_2].datasheet
	je	.L136	#,
	cmpl	$30262, %eax	#, pic14_map[pic14_index.21_2].datasheet
	je	.L135	#,
	cmpl	$30034, %eax	#, pic14_map[pic14_index.21_2].datasheet
	jne	.L134	#,
	jmp	.L135	#
.L143:
	cmpl	$39025, %eax	#, pic14_map[pic14_index.21_2].datasheet
	je	.L135	#,
	ja	.L144	#,
	cmpl	$30492, %eax	#, pic14_map[pic14_index.21_2].datasheet
	jne	.L134	#,
	jmp	.L137	#
.L144:
	cmpl	$39589, %eax	#, pic14_map[pic14_index.21_2].datasheet
	je	.L138	#,
	cmpl	$39603, %eax	#, pic14_map[pic14_index.21_2].datasheet
	jne	.L134	#,
	jmp	.L138	#
.L142:
	cmpl	$41204, %eax	#, pic14_map[pic14_index.21_2].datasheet
	je	.L136	#,
	ja	.L145	#,
	cmpl	$41191, %eax	#, pic14_map[pic14_index.21_2].datasheet
	je	.L140	#,
	cmpl	$41196, %eax	#, pic14_map[pic14_index.21_2].datasheet
	je	.L136	#,
	cmpl	$40245, %eax	#, pic14_map[pic14_index.21_2].datasheet
	jne	.L134	#,
	jmp	.L139	#
.L145:
	cmpl	$41244, %eax	#, pic14_map[pic14_index.21_2].datasheet
	je	.L136	#,
	ja	.L146	#,
	cmpl	$41237, %eax	#, pic14_map[pic14_index.21_2].datasheet
	jmp	.L257	#
.L146:
	cmpl	$41284, %eax	#, pic14_map[pic14_index.21_2].datasheet
	je	.L140	#,
	cmpl	$41287, %eax	#, pic14_map[pic14_index.21_2].datasheet
	jmp	.L257	#
.L141:
	cmpl	$41573, %eax	#, pic14_map[pic14_index.21_2].datasheet
	ja	.L147	#,
	cmpl	$41572, %eax	#, pic14_map[pic14_index.21_2].datasheet
	jae	.L136	#,
	cmpl	$41409, %eax	#, pic14_map[pic14_index.21_2].datasheet
	je	.L136	#,
	ja	.L148	#,
	cmpl	$41397, %eax	#, pic14_map[pic14_index.21_2].datasheet
	je	.L136	#,
	cmpl	$41405, %eax	#, pic14_map[pic14_index.21_2].datasheet
	je	.L136	#,
	cmpl	$41390, %eax	#, pic14_map[pic14_index.21_2].datasheet
	jmp	.L257	#
.L148:
	cmpl	$41442, %eax	#, pic14_map[pic14_index.21_2].datasheet
	je	.L136	#,
	ja	.L149	#,
	cmpl	$41439, %eax	#, pic14_map[pic14_index.21_2].datasheet
	jmp	.L257	#
.L149:
	cmpl	$41457, %eax	#, pic14_map[pic14_index.21_2].datasheet
	je	.L136	#,
	cmpl	$41561, %eax	#, pic14_map[pic14_index.21_2].datasheet
	jne	.L134	#,
	jmp	.L140	#
.L147:
	cmpl	$40001683, %eax	#, pic14_map[pic14_index.21_2].datasheet
	je	.L136	#,
	ja	.L150	#,
	cmpl	$41642, %eax	#, pic14_map[pic14_index.21_2].datasheet
	je	.L136	#,
	cmpl	$41686, %eax	#, pic14_map[pic14_index.21_2].datasheet
	je	.L140	#,
	cmpl	$41620, %eax	#, pic14_map[pic14_index.21_2].datasheet
	jmp	.L257	#
.L150:
	cmpl	$40001720, %eax	#, pic14_map[pic14_index.21_2].datasheet
	je	.L136	#,
	ja	.L151	#,
	subl	$40001713, %eax	#, tmp73
	cmpl	$1, %eax	#, tmp73
	ja	.L134	#,
	jmp	.L136	#
.L151:
	cmpl	$40001743, %eax	#, pic14_map[pic14_index.21_2].datasheet
.L257:
	jne	.L134	#,
	jmp	.L136	#
.L135:
	cmpw	$3, %si	#, region
	jne	.L152	#,
	movl	pic14_conf+12(%rip), %eax	# pic14_conf.deviceid, tmp75
	movl	$20000, %esi	#,
	subw	$1379, %ax	#, tmp75
	cmpw	$1, %ax	#, tmp75
	jbe	.L261	#,
.L152:
	movl	$10000, %esi	#,
.L261:
	movq	%rbx, %rdi	# k,
	call	pic14_begin_programming_011000	#
	jmp	.L258	#
.L138:
	movl	$10000, %esi	#,
	movq	%rbx, %rdi	# k,
	call	pic14_begin_programming_011000	#
	movl	$6, %edx	#,
	movl	$23, %esi	#,
.L259:
	movq	%rbx, %rdi	# k,
	call	io_program_out	#
	movl	$100, %esi	#,
	movq	%rbx, %rdi	# k,
	call	io_usleep	#
.L258:
	movl	$1, %eax	#, D.6743
	jmp	.L153	#
.L139:
	movl	$10000, %esi	#,
	call	pic14_begin_programming_011000	#
	jmp	.L260	#
.L136:
	movl	$10000, %esi	#,
	movq	%rbx, %rdi	# k,
	call	pic14_begin_programming_001000	#
	jmp	.L258	#
.L137:
	movl	$10000, %esi	#,
	movq	%rbx, %rdi	# k,
	call	pic14_begin_programming_001000	#
.L260:
	movl	$6, %edx	#,
	movl	$14, %esi	#,
	jmp	.L259	#
.L140:
	movl	$10000, %esi	#,
	movq	%rbx, %rdi	# k,
	call	pic14_begin_programming_011000	#
	movl	$6, %edx	#,
	movl	$10, %esi	#,
	jmp	.L259	#
.L134:
	movl	$__func__.6018, %edx	#,
	movl	$.LC16, %esi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	xorl	%eax, %eax	# D.6743
.L153:
	popq	%rbx	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE71:
	.size	pic14_write_word, .-pic14_write_word
	.section	.rodata.str1.1
.LC17:
	.string	"%s: information: data EEPROM/flash is not supported on this device\n"
.LC18:
	.string	"%s: information: unsupported\n"
.LC19:
	.string	"%s: information: row out of range\n"
	.text
	.globl	pic14_row_erase
	.type	pic14_row_erase, @function
pic14_row_erase:
.LFB65:
	.cfi_startproc
	pushq	%r14	#
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	movl	pic14_index(%rip), %eax	# pic14_index, pic14_index
	pushq	%r13	#
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	pushq	%r12	#
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	imulq	$1044, %rax, %rax	#, pic14_index, tmp90
	cmpl	$-3, %esi	#, row
	pushq	%rbp	#
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	pushq	%rbx	#
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	movq	%rdi, %rbx	# k, k
	jne	.L263	#,
	cmpw	$0, pic14_map+1028(%rax)	#, pic14_map[pic14_index.26_9].eeprom
	jne	.L264	#,
	movl	$__func__.5903, %edx	#,
	movl	$.LC17, %esi	#,
	jmp	.L279	#
.L264:
	call	pic14_program_verify	#
	xorl	%ebp, %ebp	# i
	jmp	.L265	#
.L266:
	movl	$16383, %esi	#,
	movq	%rbx, %rdi	# k,
	incl	%ebp	# i
	call	pic14_load_data_for_data_memory	#
	movl	$3, %esi	#,
	movq	%rbx, %rdi	# k,
	call	pic14_write_word	#
	movq	%rbx, %rdi	# k,
	call	pic14_increment_address	#
.L265:
	movl	pic14_index(%rip), %eax	# pic14_index, pic14_index
	imulq	$1044, %rax, %rax	#, pic14_index, tmp94
	movzwl	pic14_map+1028(%rax), %eax	# pic14_map[pic14_index.26_13].eeprom, pic14_map[pic14_index.26_13].eeprom
	cmpl	%eax, %ebp	# pic14_map[pic14_index.26_13].eeprom, i
	jb	.L266	#,
	jmp	.L280	#
.L263:
	movzbl	pic14_map+1043(%rax), %ebp	# pic14_map[pic14_index.26_17].erasesize,
	testb	%bpl, %bpl	# D.6834
	jne	.L267	#,
	movl	$__func__.5903, %edx	#,
	movl	$.LC18, %esi	#,
	jmp	.L279	#
.L267:
	cmpl	$-1, %esi	#, row
	jne	.L268	#,
	call	pic14_program_verify	#
	movl	$16383, %esi	#,
	movq	%rbx, %rdi	# k,
	call	pic14_load_configuration	#
	movl	$17, %esi	#,
	movq	%rbx, %rdi	# k,
	movl	$6, %edx	#,
	call	io_program_out	#
	movl	$6000, %esi	#,
	movq	%rbx, %rdi	# k,
	call	io_usleep	#
.L280:
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
	jmp	pic14_standby	#
.L268:
	.cfi_restore_state
	movzwl	pic14_map+1026(%rax), %eax	# pic14_map[pic14_index.26_17].flash, pic14_map[pic14_index.26_17].flash
	movl	%edx, %ecx	# nrows, nrows
	xorl	%edx, %edx	# tmp107
	divl	%ebp	# erasesize
	cmpl	%eax, %esi	# tmp106, row
	jb	.L269	#,
	movl	$__func__.5903, %edx	#,
	movl	$.LC19, %esi	#,
.L279:
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
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	jmp	__printf_chk	#
.L269:
	.cfi_restore_state
	subl	%esi, %eax	# row, tmp108
	movl	%esi, %r13d	# row, address
	cmpl	%eax, %ecx	# tmp108, nrows
	movl	%eax, %r12d	# tmp108, nrows
	cmovbe	%ecx, %r12d	# nrows,, nrows
	xorl	%r14d, %r14d	# PC_address
	call	pic14_program_verify	#
	movl	$16383, %esi	#,
	movq	%rbx, %rdi	# k,
	imull	%ebp, %r13d	# erasesize, address
	call	pic14_load_data_for_program_memory	#
	jmp	.L270	#
.L271:
	movq	%rbx, %rdi	# k,
	incl	%r14d	# PC_address
	call	pic14_increment_address	#
.L277:
	cmpl	%r14d, %r13d	# PC_address, address
	ja	.L271	#,
	movl	$6, %edx	#,
	movl	$17, %esi	#,
	movq	%rbx, %rdi	# k,
	call	io_program_out	#
	addl	%ebp, %r13d	# erasesize, address
	movl	$6000, %esi	#,
	movq	%rbx, %rdi	# k,
	decl	%r12d	# nrows
	call	io_usleep	#
.L270:
	testl	%r12d, %r12d	# nrows
	jne	.L277	#,
	jmp	.L280	#
	.cfi_endproc
.LFE65:
	.size	pic14_row_erase, .-pic14_row_erase
	.section	.rodata.str1.1
.LC20:
	.string	"%s: error: OSCCAL is not supported on this device\n"
	.text
	.globl	pic14_read_osccal
	.type	pic14_read_osccal, @function
pic14_read_osccal:
.LFB72:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx	#
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$24, %rsp	#,
	.cfi_def_cfa_offset 48
	movl	pic14_index(%rip), %eax	# pic14_index, pic14_index
	imulq	$1044, %rax, %rax	#, pic14_index, tmp69
	cmpl	$41191, pic14_map+1032(%rax)	#, pic14_map[pic14_index.20_3].datasheet
	je	.L282	#,
	movl	$__func__.6022, %edx	#,
	movl	$.LC20, %esi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	xorl	%eax, %eax	# osccal
	jmp	.L283	#
.L282:
	movq	%rdi, %rbx	# k, k
	movl	$1023, %ebp	#, ivtmp.463
	call	pic14_program_verify	#
	xorl	%esi, %esi	#
	movq	%rbx, %rdi	# k,
	call	pic14_load_data_for_program_memory	#
.L284:
	movq	%rbx, %rdi	# k,
	call	pic14_increment_address	#
	decl	%ebp	# ivtmp.463
	jne	.L284	#,
	movq	%rbx, %rdi	# k,
	call	pic14_read_program_memory_increment	#
	movq	%rbx, %rdi	# k,
	movl	%eax, 8(%rsp)	#,
	call	pic14_standby	#
	movl	8(%rsp), %eax	#,
.L283:
	addq	$24, %rsp	#,
	.cfi_def_cfa_offset 24
	popq	%rbx	#
	.cfi_def_cfa_offset 16
	popq	%rbp	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE72:
	.size	pic14_read_osccal, .-pic14_read_osccal
	.section	.rodata.str1.1
.LC21:
	.string	"[%04X] [OSCCAL]   %04X\n"
	.text
	.globl	pic14_dumposccal
	.type	pic14_dumposccal, @function
pic14_dumposccal:
.LFB83:
	.cfi_startproc
	movl	pic14_index(%rip), %eax	# pic14_index, pic14_index
	imulq	$1044, %rax, %rax	#, pic14_index, tmp66
	cmpl	$41191, pic14_map+1032(%rax)	#, pic14_map[pic14_index.4_1].datasheet
	je	.L288	#,
	movl	$__func__.6182, %edx	#,
	movl	$.LC20, %esi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	jmp	__printf_chk	#
.L288:
	pushq	%r9	#
	.cfi_def_cfa_offset 16
	call	pic14_read_osccal	#
	popq	%r10	#
	.cfi_def_cfa_offset 8
	movzwl	%ax, %ecx	# D.7802, D.7802
	movl	$1023, %edx	#,
	movl	$.LC21, %esi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	jmp	__printf_chk	#
	.cfi_endproc
.LFE83:
	.size	pic14_dumposccal, .-pic14_dumposccal
	.section	.rodata.str1.1
.LC22:
	.string	"[0000] [PROGRAM]  %04X WORDS"
.LC23:
	.string	" (%04X ROWS OF %04X WORDS)"
.LC24:
	.string	"[%04X] [USERID%d]  "
.LC25:
	.string	"%04X %c\n"
.LC26:
	.string	"[%04X] [RESERVED] %04X\n"
.LC27:
	.string	"       [DEVICEID]"
.LC28:
	.string	"[%04X] [REVISION] %04X REV:%03X\n"
.LC29:
	.string	"[%04X] [DEVICEID] %04X DEV:%04X"
.LC30:
	.string	"[%04X] [DEVICEID] %04X DEV:%03X REV:%02X"
.LC31:
	.string	" %s\n"
.LC32:
	.string	"[%04X] [CALIB]    %04X\n"
.LC33:
	.string	"[%04X] [CALIB%d]   %04X\n"
.LC34:
	.string	"[%04X] [CALIB%d]  %04X\n"
.LC35:
	.string	"[%04X] [DATA]     %04X BYTES\n"
	.text
	.globl	pic14_dumpdeviceid
	.type	pic14_dumpdeviceid, @function
pic14_dumpdeviceid:
.LFB82:
	.cfi_startproc
	movl	pic14_index(%rip), %eax	# pic14_index, pic14_index
	pushq	%r12	#
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	movl	$.LC22, %esi	#,
	pushq	%rbp	#
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movq	%rdi, %rbp	# k, k
	movl	$1, %edi	#,
	imulq	$1044, %rax, %rax	#, pic14_index, tmp199
	pushq	%rbx	#
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movzwl	pic14_map+1026(%rax), %edx	# pic14_map[pic14_index.5_6].flash, pic14_map[pic14_index.5_6].flash
	xorl	%eax, %eax	#
	call	__printf_chk	#
	movl	pic14_index(%rip), %eax	# pic14_index, pic14_index.5
	imulq	$1044, %rax, %rax	#, pic14_index.5, tmp204
	movzbl	pic14_map+1043(%rax), %ecx	# pic14_map[pic14_index.5_9].erasesize,
	testb	%cl, %cl	# D.6405
	je	.L291	#,
	movzwl	pic14_map+1026(%rax), %eax	# pic14_map[pic14_index.5_9].flash, pic14_map[pic14_index.5_9].flash
	movl	$.LC23, %esi	#,
	movl	$1, %edi	#,
	cltd
	idivl	%ecx	# D.6408
	movl	%eax, %edx	# tmp212,
	xorl	%eax, %eax	#
	call	__printf_chk	#
.L291:
	movl	$10, %edi	#,
	call	putchar	#
	movl	pic14_index(%rip), %eax	# pic14_index, pic14_index
	imulq	$1044, %rax, %rax	#, pic14_index, tmp216
	cmpl	$41191, pic14_map+1032(%rax)	#, pic14_map[pic14_index.5_21].datasheet
	jne	.L292	#,
	movq	%rbp, %rdi	# k,
	call	pic14_dumposccal	#
.L292:
	xorl	%ebx, %ebx	# ivtmp.496
	movl	$46, %r12d	#, iftmp.6
.L294:
	movl	pic14_index(%rip), %eax	# pic14_index, pic14_index
	movl	%ebx, %ecx	# ivtmp.496,
	movl	$.LC24, %esi	#,
	movl	$1, %edi	#,
	imulq	$1044, %rax, %rax	#, pic14_index, tmp220
	movzwl	pic14_map+1036(%rax), %edx	# pic14_map[pic14_index.5_25].configaddr, pic14_map[pic14_index.5_25].configaddr
	xorl	%eax, %eax	#
	addl	%ebx, %edx	# ivtmp.496, tmp223
	call	__printf_chk	#
	movzwl	pic14_conf(%rbx,%rbx), %edx	# MEM[symbol: pic14_conf, index: ivtmp.496_232, step: 2, offset: 0B], D.6417
	movl	$.LC25, %esi	#,
	movl	$1, %edi	#,
	movzbl	%dl, %ecx	# D.6417, D.6418
	leal	-32(%rcx), %eax	#, tmp225
	movzwl	%cx, %ecx	# D.6418, D.6418
	cmpw	$94, %ax	#, tmp225
	cmova	%r12d, %ecx	# D.6418,, iftmp.6, iftmp.6
	xorl	%eax, %eax	#
	incq	%rbx	# ivtmp.496
	call	__printf_chk	#
	cmpq	$4, %rbx	#, ivtmp.496
	jne	.L294	#,
	movl	pic14_index(%rip), %eax	# pic14_index, pic14_index
	movzwl	pic14_conf+8(%rip), %ecx	# pic14_conf.reserved, pic14_conf.reserved
	movl	$.LC26, %esi	#,
	movl	$1, %edi	#,
	imulq	$1044, %rax, %rax	#, pic14_index, tmp231
	movzwl	pic14_map+1036(%rax), %edx	# pic14_map[pic14_index.5_41].configaddr, pic14_map[pic14_index.5_41].configaddr
	xorl	%eax, %eax	#
	addl	$4, %edx	#, tmp234
	call	__printf_chk	#
	cmpb	$0, 2048(%rbp)	#, k_23(D)->devicename
	je	.L295	#,
	movl	pic14_index(%rip), %eax	# pic14_index, pic14_index
	movzwl	pic14_conf+10(%rip), %ecx	# pic14_conf.revisionid, pic14_conf.revisionid
	movl	$.LC26, %esi	#,
	movl	$1, %edi	#,
	imulq	$1044, %rax, %rax	#, pic14_index, tmp239
	movzwl	pic14_map+1036(%rax), %edx	# pic14_map[pic14_index.5_48].configaddr, pic14_map[pic14_index.5_48].configaddr
	xorl	%eax, %eax	#
	addl	$5, %edx	#, tmp242
	call	__printf_chk	#
	movl	$.LC27, %esi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	jmp	.L296	#
.L295:
	movl	pic14_conf+12(%rip), %eax	# pic14_conf.deviceid, tmp244
	andw	$12288, %ax	#, tmp244
	cmpw	$12288, %ax	#, tmp244
	movl	pic14_index(%rip), %eax	# pic14_index, pic14_index
	jne	.L297	#,
	imulq	$1044, %rax, %rax	#, pic14_index, tmp252
	movw	pic14_conf+10(%rip), %r8w	# pic14_conf.revisionid, D.6431
	movl	$.LC28, %esi	#,
	movl	$1, %edi	#,
	movzwl	%r8w, %ecx	# D.6431, D.6431
	andl	$4095, %r8d	#,
	movzwl	pic14_map+1036(%rax), %edx	# pic14_map[pic14_index.5_60].configaddr, pic14_map[pic14_index.5_60].configaddr
	xorl	%eax, %eax	#
	addl	$5, %edx	#, tmp255
	call	__printf_chk	#
	movl	pic14_index(%rip), %eax	# pic14_index, pic14_index
	movzwl	pic14_conf+12(%rip), %ecx	# pic14_conf.deviceid, D.6436
	movl	$.LC29, %esi	#,
	movl	$1, %edi	#,
	imulq	$1044, %rax, %rax	#, pic14_index, tmp259
	movl	%ecx, %r8d	# D.6436,
	movzwl	pic14_map+1036(%rax), %edx	# pic14_map[pic14_index.5_68].configaddr, pic14_map[pic14_index.5_68].configaddr
	xorl	%eax, %eax	#
	addl	$6, %edx	#, tmp262
	call	__printf_chk	#
	jmp	.L296	#
.L297:
	imulq	$1044, %rax, %rax	#, pic14_index, tmp267
	movzwl	pic14_conf+8(%rip), %ecx	# pic14_conf.reserved, pic14_conf.reserved
	movl	$.LC26, %esi	#,
	movl	$1, %edi	#,
	movzwl	pic14_map+1036(%rax), %edx	# pic14_map[pic14_index.5_74].configaddr, pic14_map[pic14_index.5_74].configaddr
	xorl	%eax, %eax	#
	addl	$5, %edx	#, tmp270
	call	__printf_chk	#
	movl	pic14_index(%rip), %eax	# pic14_index, pic14_index
	movl	pic14_conf+12(%rip), %r8d	# pic14_conf.deviceid, D.6435
	movl	$.LC30, %esi	#,
	movl	$1, %edi	#,
	movl	%r8d, %r9d	#,
	movzwl	%r8w, %ecx	# D.6435, D.6435
	andl	$16352, %r8d	#,
	imulq	$1044, %rax, %rax	#, pic14_index, tmp279
	andl	$31, %r9d	#,
	movzwl	pic14_map+1036(%rax), %edx	# pic14_map[pic14_index.5_86].configaddr, pic14_map[pic14_index.5_86].configaddr
	xorl	%eax, %eax	#
	addl	$6, %edx	#, tmp282
	call	__printf_chk	#
.L296:
	movl	pic14_index(%rip), %edx	# pic14_index, pic14_index
	movl	$.LC31, %esi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	imulq	$1044, %rdx, %rdx	#, pic14_index, tmp284
	addq	$pic14_map, %rdx	#, tmp285
	call	__printf_chk	#
	xorl	%esi, %esi	#
	movq	%rbp, %rdi	# k,
	call	pic14_dumpconfig	#
	movl	pic14_index(%rip), %eax	# pic14_index, pic14_index.5
	imulq	$1044, %rax, %rax	#, pic14_index.5, tmp288
	movb	pic14_map+1041(%rax), %dl	# pic14_map[pic14_index.5_92].ncalib, D.6446
	testb	%dl, %dl	# D.6446
	je	.L299	#,
	movl	pic14_map+1036(%rax), %r12d	# pic14_map[pic14_index.5_92].configaddr, pic14_map[pic14_index.5_92].configaddr
	movzbl	pic14_map+1040(%rax), %eax	# pic14_map[pic14_index.5_92].nconfig, pic14_map[pic14_index.5_92].nconfig
	decb	%dl	# D.6446
	leal	7(%r12,%rax), %r12d	#, caddr
	jne	.L307	#,
	movzwl	pic14_conf+20(%rip), %ecx	# pic14_conf.calib, pic14_conf.calib
	movzwl	%r12w, %edx	# caddr, caddr
	movl	$.LC32, %esi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	jmp	.L299	#
.L303:
	movl	%ebx, %eax	# i, i
	cmpl	$8, %ebx	#, i
	movl	$.LC33, %esi	#,
	movzwl	%dx, %edx	# D.7835, D.7835
	movzwl	pic14_conf+20(%rax,%rax), %r8d	# pic14_conf.calib,
	movl	%ebp, %ecx	# D.6462,
	jbe	.L313	#,
.L301:
	movl	$.LC34, %esi	#,
.L313:
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	incl	%ebx	# i
	call	__printf_chk	#
	incl	%ebp	# D.6462
	jmp	.L300	#
.L307:
	movl	$1, %ebp	#, D.6462
	xorl	%ebx, %ebx	# i
.L300:
	movl	pic14_index(%rip), %eax	# pic14_index, pic14_index
	leal	(%r12,%rbx), %edx	#, D.7835
	imulq	$1044, %rax, %rax	#, pic14_index, tmp316
	movzbl	pic14_map+1041(%rax), %eax	# pic14_map[pic14_index.5_107].ncalib, pic14_map[pic14_index.5_107].ncalib
	cmpl	%eax, %ebx	# pic14_map[pic14_index.5_107].ncalib, i
	jb	.L303	#,
.L299:
	movl	pic14_index(%rip), %eax	# pic14_index, pic14_index.5
	imulq	$1044, %rax, %rax	#, pic14_index.5, tmp321
	movzwl	pic14_map+1028(%rax), %ecx	# pic14_map[pic14_index.5_121].eeprom,
	addq	$pic14_map+1024, %rax	#, tmp322
	testw	%cx, %cx	# D.6467
	je	.L290	#,
	popq	%rbx	#
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbp	#
	.cfi_def_cfa_offset 16
	movzwl	14(%rax), %edx	# pic14_map[pic14_index.5_121].dataaddr, pic14_map[pic14_index.5_121].dataaddr
	movl	$.LC35, %esi	#,
	movl	$1, %edi	#,
	popq	%r12	#
	.cfi_def_cfa_offset 8
	xorl	%eax, %eax	#
	jmp	__printf_chk	#
.L290:
	.cfi_restore_state
	popq	%rbx	#
	.cfi_def_cfa_offset 24
	popq	%rbp	#
	.cfi_def_cfa_offset 16
	popq	%r12	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE82:
	.size	pic14_dumpdeviceid, .-pic14_dumpdeviceid
	.section	.rodata.str1.1
.LC36:
	.string	"%s: error: OSCCAL write failed: read [%04X] expected [%04X]\n"
	.text
	.globl	pic14_write_osccal
	.type	pic14_write_osccal, @function
pic14_write_osccal:
.LFB73:
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
	pushq	%rbx	#
	.cfi_def_cfa_offset 48
	movl	pic14_index(%rip), %eax	# pic14_index, pic14_index
	imulq	$1044, %rax, %rax	#, pic14_index, tmp76
	cmpl	$41191, pic14_map+1032(%rax)	#, pic14_map[pic14_index.19_3].datasheet
	je	.L315	#,
	movl	$__func__.6032, %edx	#,
	movl	$.LC20, %esi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	jmp	.L321	#
.L315:
	movl	%esi, %r13d	# osccal, osccal
	movq	%rdi, %rbx	# k, k
	movl	$1023, %ebp	#, ivtmp.506
	movzwl	%r13w, %r12d	# osccal, D.6724
	call	pic14_program_verify	#
	movl	%r12d, %esi	# D.6724,
	movq	%rbx, %rdi	# k,
	call	pic14_load_data_for_program_memory	#
.L317:
	movq	%rbx, %rdi	# k,
	call	pic14_increment_address	#
	decw	%bp	# ivtmp.506
	jne	.L317	#,
	movl	$1, %esi	#,
	movq	%rbx, %rdi	# k,
	call	pic14_write_word	#
	movq	%rbx, %rdi	# k,
	call	pic14_read_data_from_program_memory	#
	movq	%rbx, %rdi	# k,
	movl	%eax, %ebp	#, vdata
	call	pic14_standby	#
	cmpw	%r13w, %bp	# osccal, vdata
	movl	$1, %eax	#, D.6723
	je	.L316	#,
	movzwl	%bp, %ecx	# vdata, vdata
	movl	%r12d, %r8d	# D.6724,
	movl	$__func__.6032, %edx	#,
	movl	$.LC36, %esi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
.L321:
	xorl	%eax, %eax	# D.6723
.L316:
	popq	%r11	#
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
.LFE73:
	.size	pic14_write_osccal, .-pic14_write_osccal
	.section	.rodata.str1.1
.LC37:
	.string	"%s: error: CONFIG%d write failed: read [%04X] expected [%04X]\n"
	.text
	.globl	pic14_write_config
	.type	pic14_write_config, @function
pic14_write_config:
.LFB74:
	.cfi_startproc
	pushq	%r12	#
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	xorl	%eax, %eax	# tmp107
	movl	$6, %ecx	#, tmp108
	pushq	%rbp	#
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx	#
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%rdi, %rbx	# k, k
	subq	$16, %rsp	#,
	.cfi_def_cfa_offset 48
	leaq	10(%rsp), %rdi	#, tmp106
	movw	%si, 4(%rsp)	# config1, cdata
	rep stosb
	movl	pic14_index(%rip), %eax	# pic14_index, pic14_index
	imulq	$1044, %rax, %rax	#, pic14_index, tmp111
	movzbl	pic14_map+1040(%rax), %edx	# pic14_map[pic14_index.18_8].nconfig, D.6693
	xorl	%eax, %eax	# ivtmp.560
	jmp	.L323	#
.L324:
	movw	pic14_conf+14(%rax,%rax), %cx	# MEM[symbol: pic14_conf, index: ivtmp.560_17, step: 2, offset: 14B], MEM[symbol: pic14_conf, index: ivtmp.560_17, step: 2, offset: 14B]
	movw	%cx, 4(%rsp,%rax,2)	# MEM[symbol: pic14_conf, index: ivtmp.560_17, step: 2, offset: 14B], MEM[symbol: cdata, index: ivtmp.560_17, step: 2, offset: 0B]
.L323:
	incq	%rax	# ivtmp.560
	cmpl	%eax, %edx	# ivtmp.560, D.6693
	ja	.L324	#,
	movq	%rbx, %rdi	# k,
	movl	$6, %ebp	#, ivtmp.519
	call	pic14_program_verify	#
	movzwl	4(%rsp), %r12d	# cdata, D.6695
	movq	%rbx, %rdi	# k,
	movl	%r12d, %esi	# D.6695,
	call	pic14_load_configuration	#
.L325:
	movq	%rbx, %rdi	# k,
	call	pic14_increment_address	#
	decl	%ebp	# ivtmp.519
	jne	.L325	#,
	movl	pic14_index(%rip), %eax	# pic14_index, pic14_index
	xorl	%ebp, %ebp	# ivtmp.539
	imulq	$1044, %rax, %rax	#, pic14_index, tmp118
	cmpb	$1, pic14_map+1040(%rax)	#, pic14_map[pic14_index.18_18].nconfig
	jne	.L344	#,
	movq	%rbx, %rdi	# k,
	call	pic14_increment_address	#
	movl	pic14_index(%rip), %eax	# pic14_index, pic14_index
	imulq	$1044, %rax, %rax	#, pic14_index, tmp122
	movl	pic14_map+1032(%rax), %eax	# pic14_map[pic14_index.18_20].datasheet, pic14_map[pic14_index.18_20].datasheet
	cmpl	$39589, %eax	#, pic14_map[pic14_index.18_20].datasheet
	je	.L329	#,
	cmpl	$41196, %eax	#, pic14_map[pic14_index.18_20].datasheet
	je	.L328	#,
	cmpl	$30324, %eax	#, pic14_map[pic14_index.18_20].datasheet
	jne	.L327	#,
	jmp	.L328	#
.L329:
	movl	$10000, %esi	#,
	movq	%rbx, %rdi	# k,
	call	pic14_begin_programming_001000	#
	jmp	.L330	#
.L328:
	movl	%r12d, %esi	# D.6695,
	movq	%rbx, %rdi	# k,
	call	pic14_load_data_for_program_memory	#
.L327:
	movl	$2, %esi	#,
	movq	%rbx, %rdi	# k,
	call	pic14_write_word	#
.L330:
	movq	%rbx, %rdi	# k,
	call	pic14_read_data_from_program_memory	#
	movw	%ax, 10(%rsp)	# D.6699, vdata
	jmp	.L331	#
.L332:
	movq	%rbx, %rdi	# k,
	call	pic14_increment_address	#
	movzwl	4(%rsp,%rbp,2), %esi	# MEM[symbol: cdata, index: ivtmp.539_51, step: 2, offset: 0B], MEM[symbol: cdata, index: ivtmp.539_51, step: 2, offset: 0B]
	movq	%rbx, %rdi	# k,
	call	pic14_load_data_for_program_memory	#
	movl	$2, %esi	#,
	movq	%rbx, %rdi	# k,
	call	pic14_write_word	#
	movq	%rbx, %rdi	# k,
	call	pic14_read_data_from_program_memory	#
	movw	%ax, 10(%rsp,%rbp,2)	# D.6703, MEM[symbol: vdata, index: ivtmp.539_51, step: 2, offset: 0B]
	incq	%rbp	# ivtmp.539
.L344:
	movl	pic14_index(%rip), %eax	# pic14_index, pic14_index
	imulq	$1044, %rax, %rax	#, pic14_index, tmp130
	movzbl	pic14_map+1040(%rax), %eax	# pic14_map[pic14_index.18_26].nconfig, pic14_map[pic14_index.18_26].nconfig
	cmpl	%ebp, %eax	# ivtmp.539, pic14_map[pic14_index.18_26].nconfig
	ja	.L332	#,
.L331:
	movq	%rbx, %rdi	# k,
	call	pic14_standby	#
	movl	pic14_index(%rip), %eax	# pic14_index,
	movl	%eax, %edx	# pic14_index.18, pic14_index.18
	imulq	$1044, %rdx, %rdx	#, pic14_index.18, tmp135
	cmpl	$41191, pic14_map+1032(%rdx)	#, pic14_map[pic14_index.18_33].datasheet
	jne	.L333	#,
	andw	$511, 10(%rsp)	#, vdata
	andw	$511, 4(%rsp)	#, cdata
.L333:
	imulq	$1044, %rax, %rax	#, pic14_index.18, tmp139
	xorl	%edx, %edx	# ivtmp.522
	movzbl	pic14_map+1040(%rax), %eax	# pic14_map[pic14_index.18_33].nconfig, D.6716
	jmp	.L334	#
.L336:
	movzwl	10(%rsp,%rdx,2), %r8d	# MEM[symbol: vdata, index: ivtmp.522_97, step: 2, offset: 0B],
	incq	%rdx	# ivtmp.522
	movzwl	2(%rsp,%rdx,2), %r9d	# MEM[symbol: cdata, index: ivtmp.522_96, step: 2, offset: -2B],
	cmpw	%r9w, %r8w	# D.6710, D.6709
	je	.L334	#,
	incl	%ecx	# tmp145
	movl	$__func__.6062, %edx	#,
	movl	$.LC37, %esi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	xorl	%eax, %eax	# D.6716
	jmp	.L335	#
.L334:
	cmpl	%eax, %edx	# D.6716, ivtmp.522
	movl	%edx, %ecx	# ivtmp.522, i
	jb	.L336	#,
.L335:
	addq	$16, %rsp	#,
	.cfi_def_cfa_offset 32
	popq	%rbx	#
	.cfi_def_cfa_offset 24
	popq	%rbp	#
	.cfi_def_cfa_offset 16
	popq	%r12	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE74:
	.size	pic14_write_config, .-pic14_write_config
	.section	.rodata.str1.1
.LC38:
	.string	"%s: error: BANDGAP is not supported on this device\n"
	.text
	.globl	pic14_bulk_erase
	.type	pic14_bulk_erase, @function
pic14_bulk_erase:
.LFB64:
	.cfi_startproc
	pushq	%r13	#
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	movl	%edx, %r13d	# bandgap, bandgap
	pushq	%r12	#
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	movl	%esi, %r12d	# osccal, osccal
	pushq	%rbp	#
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	movl	%edx, %ebp	# bandgap, bandgap
	pushq	%rbx	#
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	movq	%rdi, %rbx	# k, k
	pushq	%r8	#
	.cfi_def_cfa_offset 48
	movl	pic14_index(%rip), %eax	# pic14_index, pic14_index
	imulq	$1044, %rax, %rax	#, pic14_index, tmp83
	cmpl	$41191, pic14_map+1032(%rax)	#, pic14_map[pic14_index.27_5].datasheet
	je	.L349	#,
	addl	$2, %esi	#, tmp85
	cmpw	$1, %si	#, tmp85
	jbe	.L350	#,
	movl	$__func__.5855, %edx	#,
	movl	$.LC20, %esi	#,
	jmp	.L495	#
.L350:
	addl	$2, %r13d	#, tmp86
	cmpw	$1, %r13w	#, tmp86
	jbe	.L351	#,
	movl	$__func__.5855, %edx	#,
	movl	$.LC38, %esi	#,
.L495:
	popq	%rcx	#
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbx	#
	.cfi_def_cfa_offset 32
	popq	%rbp	#
	.cfi_def_cfa_offset 24
	popq	%r12	#
	.cfi_def_cfa_offset 16
	popq	%r13	#
	.cfi_def_cfa_offset 8
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	jmp	__printf_chk	#
.L349:
	.cfi_restore_state
	incw	%si	# osccal
	jne	.L352	#,
	call	pic14_read_osccal	#
	movl	%eax, %r12d	#, osccal
.L352:
	incw	%r13w	# bandgap
	cmove	pic14_conf+14(%rip), %bp	# pic14_conf.config,, bandgap
.L351:
	movq	%rbx, %rdi	# k,
	call	pic14_program_verify	#
	movl	pic14_index(%rip), %eax	# pic14_index, pic14_index
	imulq	$1044, %rax, %rax	#, pic14_index, tmp90
	movl	pic14_map+1032(%rax), %edx	# pic14_map[pic14_index.27_14].datasheet, pic14_map[pic14_index.27_14].datasheet
	cmpl	$41332, %edx	#, pic14_map[pic14_index.27_14].datasheet
	je	.L357	#,
	ja	.L359	#,
	cmpl	$39607, %edx	#, pic14_map[pic14_index.27_14].datasheet
	je	.L356	#,
	ja	.L360	#,
	cmpl	$30324, %edx	#, pic14_map[pic14_index.27_14].datasheet
	je	.L355	#,
	ja	.L361	#,
	cmpl	$30189, %edx	#, pic14_map[pic14_index.27_14].datasheet
	je	.L354	#,
	cmpl	$30262, %edx	#, pic14_map[pic14_index.27_14].datasheet
	je	.L354	#,
	cmpl	$30034, %edx	#, pic14_map[pic14_index.27_14].datasheet
	jne	.L353	#,
	jmp	.L354	#
.L361:
	cmpl	$39025, %edx	#, pic14_map[pic14_index.27_14].datasheet
	je	.L354	#,
	ja	.L362	#,
	cmpl	$30492, %edx	#, pic14_map[pic14_index.27_14].datasheet
	jne	.L353	#,
	jmp	.L355	#
.L362:
	cmpl	$39589, %edx	#, pic14_map[pic14_index.27_14].datasheet
	je	.L356	#,
	cmpl	$39603, %edx	#, pic14_map[pic14_index.27_14].datasheet
	jne	.L353	#,
	jmp	.L356	#
.L360:
	cmpl	$41204, %edx	#, pic14_map[pic14_index.27_14].datasheet
	je	.L358	#,
	ja	.L363	#,
	cmpl	$41191, %edx	#, pic14_map[pic14_index.27_14].datasheet
	je	.L358	#,
	cmpl	$41196, %edx	#, pic14_map[pic14_index.27_14].datasheet
	je	.L358	#,
	cmpl	$40245, %edx	#, pic14_map[pic14_index.27_14].datasheet
	jmp	.L492	#
.L363:
	cmpl	$41244, %edx	#, pic14_map[pic14_index.27_14].datasheet
	je	.L358	#,
	ja	.L364	#,
	cmpl	$41237, %edx	#, pic14_map[pic14_index.27_14].datasheet
	jmp	.L486	#
.L364:
	cmpl	$41284, %edx	#, pic14_map[pic14_index.27_14].datasheet
	je	.L357	#,
	cmpl	$41287, %edx	#, pic14_map[pic14_index.27_14].datasheet
	jmp	.L486	#
.L359:
	cmpl	$41573, %edx	#, pic14_map[pic14_index.27_14].datasheet
	ja	.L365	#,
	cmpl	$41572, %edx	#, pic14_map[pic14_index.27_14].datasheet
	jae	.L357	#,
	cmpl	$41409, %edx	#, pic14_map[pic14_index.27_14].datasheet
	je	.L357	#,
	ja	.L366	#,
	cmpl	$41397, %edx	#, pic14_map[pic14_index.27_14].datasheet
	je	.L358	#,
	cmpl	$41405, %edx	#, pic14_map[pic14_index.27_14].datasheet
	je	.L357	#,
	cmpl	$41390, %edx	#, pic14_map[pic14_index.27_14].datasheet
	jmp	.L486	#
.L366:
	cmpl	$41442, %edx	#, pic14_map[pic14_index.27_14].datasheet
	je	.L357	#,
	ja	.L367	#,
	cmpl	$41439, %edx	#, pic14_map[pic14_index.27_14].datasheet
.L486:
	jne	.L353	#,
	jmp	.L358	#
.L367:
	cmpl	$41457, %edx	#, pic14_map[pic14_index.27_14].datasheet
	je	.L358	#,
	cmpl	$41561, %edx	#, pic14_map[pic14_index.27_14].datasheet
	jmp	.L492	#
.L365:
	cmpl	$40001683, %edx	#, pic14_map[pic14_index.27_14].datasheet
	je	.L357	#,
	ja	.L368	#,
	cmpl	$41642, %edx	#, pic14_map[pic14_index.27_14].datasheet
	je	.L357	#,
	cmpl	$41686, %edx	#, pic14_map[pic14_index.27_14].datasheet
	je	.L357	#,
	cmpl	$41620, %edx	#, pic14_map[pic14_index.27_14].datasheet
	jmp	.L492	#
.L368:
	cmpl	$40001720, %edx	#, pic14_map[pic14_index.27_14].datasheet
	je	.L357	#,
	ja	.L369	#,
	subl	$40001713, %edx	#, tmp93
	cmpl	$1, %edx	#, tmp93
	ja	.L353	#,
	jmp	.L357	#
.L369:
	cmpl	$40001743, %edx	#, pic14_map[pic14_index.27_14].datasheet
.L492:
	jne	.L353	#,
	jmp	.L357	#
.L354:
	movl	$16383, %esi	#,
	movq	%rbx, %rdi	# k,
	movl	$7, %r13d	#, ivtmp.578
	call	pic14_load_configuration	#
.L370:
	movq	%rbx, %rdi	# k,
	call	pic14_increment_address	#
	decl	%r13d	# ivtmp.578
	jne	.L370	#,
	movq	%rbx, %rdi	# k,
	call	pic14_bulk_erase_setup1	#
	movq	%rbx, %rdi	# k,
	call	pic14_bulk_erase_setup2	#
	movl	$10000, %esi	#,
	movq	%rbx, %rdi	# k,
	call	pic14_begin_programming_001000	#
	movq	%rbx, %rdi	# k,
	call	pic14_bulk_erase_setup1	#
	movq	%rbx, %rdi	# k,
	call	pic14_bulk_erase_setup2	#
	movl	$16383, %esi	#,
	movq	%rbx, %rdi	# k,
	call	pic14_load_data_for_data_memory	#
	movl	pic14_conf+12(%rip), %eax	# pic14_conf.deviceid, tmp95
	subw	$1379, %ax	#, tmp95
	cmpw	$1, %ax	#, tmp95
	ja	.L371	#,
	movq	%rbx, %rdi	# k,
	call	pic14_bulk_erase_setup1	#
	movq	%rbx, %rdi	# k,
	call	pic14_bulk_erase_setup2	#
	movl	$20000, %esi	#,
	movq	%rbx, %rdi	# k,
	call	pic14_begin_programming_001000	#
	movq	%rbx, %rdi	# k,
	call	pic14_bulk_erase_setup1	#
	movq	%rbx, %rdi	# k,
	call	pic14_bulk_erase_setup2	#
	jmp	.L372	#
.L371:
	movl	$6, %edx	#,
	movq	%rbx, %rdi	# k,
	movl	$11, %esi	#,
	call	io_program_out	#
	movq	%rbx, %rdi	# k,
	movl	$10000, %esi	#,
	call	io_usleep	#
	movl	$10000, %esi	#,
	movq	%rbx, %rdi	# k,
	call	pic14_begin_programming_011000	#
	jmp	.L372	#
.L356:
	movl	$16383, %esi	#,
	movq	%rbx, %rdi	# k,
	call	pic14_load_configuration	#
	movl	$6, %edx	#,
	movl	$31, %esi	#,
	jmp	.L493	#
.L358:
	movl	$16383, %esi	#,
	movq	%rbx, %rdi	# k,
	call	pic14_load_configuration	#
	movl	$10000, %esi	#,
	movq	%rbx, %rdi	# k,
	call	pic14_bulk_erase_program_memory	#
	movl	$6, %edx	#,
	movl	$11, %esi	#,
.L493:
	movq	%rbx, %rdi	# k,
	call	io_program_out	#
	movl	$10000, %esi	#,
	movq	%rbx, %rdi	# k,
	call	io_usleep	#
	jmp	.L372	#
.L357:
	movl	$16383, %esi	#,
	movq	%rbx, %rdi	# k,
	call	pic14_load_configuration	#
	movl	$10000, %esi	#,
	jmp	.L494	#
.L355:
	movl	$16383, %esi	#,
	movq	%rbx, %rdi	# k,
	call	pic14_load_configuration	#
	movl	$30000, %esi	#,
.L494:
	movq	%rbx, %rdi	# k,
	call	pic14_bulk_erase_program_memory	#
	jmp	.L372	#
.L353:
	movl	$__func__.5855, %edx	#,
	movl	$.LC16, %esi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
.L372:
	movq	%rbx, %rdi	# k,
	call	pic14_standby	#
	movl	pic14_index(%rip), %eax	# pic14_index, pic14_index
	imulq	$1044, %rax, %rax	#, pic14_index, tmp99
	cmpl	$41191, pic14_map+1032(%rax)	#, pic14_map[pic14_index.27_20].datasheet
	jne	.L348	#,
	cmpw	$-2, %r12w	#, osccal
	je	.L375	#,
	movzwl	%r12w, %esi	# osccal, osccal
	movq	%rbx, %rdi	# k,
	call	pic14_write_osccal	#
.L375:
	cmpw	$-2, %bp	#, bandgap
	je	.L348	#,
	popq	%rax	#
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	movq	%rbx, %rdi	# k,
	movl	%ebp, %esi	#, tmp104
	popq	%rbx	#
	.cfi_def_cfa_offset 32
	popq	%rbp	#
	.cfi_def_cfa_offset 24
	popq	%r12	#
	.cfi_def_cfa_offset 16
	popq	%r13	#
	.cfi_def_cfa_offset 8
	andl	$12288, %esi	#, tmp104
	orl	$511, %esi	#, tmp104
	jmp	pic14_write_config	#
.L348:
	.cfi_restore_state
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
	ret
	.cfi_endproc
.LFE64:
	.size	pic14_bulk_erase, .-pic14_bulk_erase
	.section	.rodata.str1.1
.LC39:
	.string	"%s: warning: address unsupported [%04X]\n"
	.text
	.globl	pic14_getregion
	.type	pic14_getregion, @function
pic14_getregion:
.LFB75:
	.cfi_startproc
	pushq	%r10	#
	.cfi_def_cfa_offset 16
	movl	pic14_index(%rip), %ecx	# pic14_index, pic14_index.17
	movl	$1, %eax	#, D.6670
	movl	%ecx, %edx	# pic14_index.17, pic14_index.17
	imulq	$1044, %rdx, %rdx	#, pic14_index.17, tmp84
	movw	pic14_map+1026(%rdx), %si	# pic14_map[pic14_index.17_2].flash, tmp86
	addq	$pic14_map+1024, %rdx	#, tmp85
	decl	%esi	# tmp86
	cmpw	%si, %di	# tmp86, address
	jbe	.L497	#,
	movl	4(%rdx), %eax	# pic14_map[pic14_index.17_2].eeprom, D.6671
	testw	%ax, %ax	# D.6671
	je	.L498	#,
	movw	14(%rdx), %dx	# pic14_map[pic14_index.17_2].dataaddr, data_low
	leal	-1(%rax,%rdx), %eax	#, tmp97
	cmpw	%di, %ax	# address, tmp97
	jb	.L498	#,
	cmpw	%di, %dx	# address, data_low
	movl	$3, %eax	#, D.6670
	jbe	.L497	#,
.L498:
	movl	%ecx, %eax	# pic14_index.17, pic14_index.17
	imulq	$1044, %rax, %rax	#, pic14_index.17, tmp104
	movl	pic14_map+1036(%rax), %edx	# pic14_map[pic14_index.17_2].configaddr, config_low
	movzbl	pic14_map+1040(%rax), %eax	# pic14_map[pic14_index.17_2].nconfig, pic14_map[pic14_index.17_2].nconfig
	leal	6(%rdx,%rax), %eax	#, tmp112
	cmpw	%di, %ax	# address, tmp112
	jb	.L504	#,
	cmpw	%di, %dx	# address, config_low
	movl	$2, %eax	#, D.6670
	jbe	.L497	#,
.L504:
	movzwl	%di, %ecx	# address, address
	movl	$__func__.6074, %edx	#,
	movl	$.LC39, %esi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	xorl	%eax, %eax	# D.6670
.L497:
	popq	%r9	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE75:
	.size	pic14_getregion, .-pic14_getregion
	.section	.rodata.str1.1
.LC40:
	.string	"%s: warning: region unsupported [%d]\n"
	.text
	.globl	pic14_initregion
	.type	pic14_initregion, @function
pic14_initregion:
.LFB76:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	cmpw	$2, %si	#, region
	movl	%esi, %ebp	# region, region
	pushq	%rbx	#
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	pushq	%rbx	#
	.cfi_def_cfa_offset 32
	movq	%rdx, %rbx	# address, address
	je	.L518	#,
	cmpw	$3, %si	#, region
	je	.L519	#,
	cmpw	$1, %si	#, region
	jne	.L521	#,
	xorl	%esi, %esi	#
	call	pic14_load_data_for_program_memory	#
	movw	$0, (%rbx)	#, *address_5(D)
	jmp	.L520	#
.L518:
	xorl	%esi, %esi	#
	call	pic14_load_configuration	#
	movl	pic14_index(%rip), %eax	# pic14_index, pic14_index
	imulq	$1044, %rax, %rax	#, pic14_index, tmp71
	movl	pic14_map+1036(%rax), %eax	# pic14_map[pic14_index.16_28].configaddr, D.7997
	jmp	.L523	#
.L519:
	xorl	%esi, %esi	#
	call	pic14_load_data_for_data_memory	#
	movl	pic14_index(%rip), %eax	# pic14_index, pic14_index
	imulq	$1044, %rax, %rax	#, pic14_index, tmp75
	movw	pic14_map+1038(%rax), %ax	# pic14_map[pic14_index.16_10].dataaddr, D.6659
.L523:
	movw	%ax, (%rbx)	# D.6659, *address_5(D)
	jmp	.L520	#
.L521:
	movzwl	%si, %ecx	# region, region
	movl	$__func__.6084, %edx	#,
	movl	$.LC40, %esi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	xorl	%ebp, %ebp	# region
	call	__printf_chk	#
.L520:
	popq	%r11	#
	.cfi_def_cfa_offset 24
	popq	%rbx	#
	.cfi_def_cfa_offset 16
	movl	%ebp, %eax	# region,
	popq	%rbp	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE76:
	.size	pic14_initregion, .-pic14_initregion
	.globl	pic14_loadregion
	.type	pic14_loadregion, @function
pic14_loadregion:
.LFB77:
	.cfi_startproc
	cmpw	$1, %si	#, region
	jb	.L525	#,
	cmpw	$2, %si	#, region
	jbe	.L526	#,
	cmpw	$3, %si	#, region
	jne	.L525	#,
	jmp	.L527	#
.L526:
	movzwl	%dx, %esi	# word, word
	jmp	pic14_load_data_for_program_memory	#
.L527:
	movzwl	%dx, %esi	# word, word
	jmp	pic14_load_data_for_data_memory	#
.L525:
	movzwl	%si, %ecx	# region, region
	movl	$__func__.6096, %edx	#,
	movl	$.LC40, %esi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	jmp	__printf_chk	#
	.cfi_endproc
.LFE77:
	.size	pic14_loadregion, .-pic14_loadregion
	.section	.rodata.str1.1
.LC41:
	.string	"%s: warning: config word ignored: word [%04X] address [%04X]\n"
.LC42:
	.string	"%s: warning: OSCCAL word ignored: word [%04X] address [%04X]\n"
	.text
	.globl	pic14_programregion
	.type	pic14_programregion, @function
pic14_programregion:
.LFB78:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	cmpw	$2, %dx	#, region
	movl	%esi, %ebp	# address, address
	pushq	%rbx	#
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rdi, %rbx	# k, k
	pushq	%r10	#
	.cfi_def_cfa_offset 32
	jne	.L529	#,
	movl	pic14_index(%rip), %esi	# pic14_index, pic14_index.13
	movzwl	%bp, %r8d	# address, D.6601
	imulq	$1044, %rsi, %rsi	#, pic14_index.13, tmp100
	movl	pic14_map+1036(%rsi), %r9d	# pic14_map[pic14_index.13_3].configaddr, D.6598
	movzwl	%r9w, %r10d	# D.6598, D.6598
	addl	$3, %r10d	#, tmp103
	cmpl	%r8d, %r10d	# D.6601, tmp103
	jge	.L530	#,
	subl	%r9d, %ebp	# D.6598, config
	cmpw	$7, %bp	#, config
	jne	.L531	#,
	cmpl	$41191, pic14_map+1032(%rsi)	#, pic14_map[pic14_index.13_3].datasheet
	movl	%ecx, %eax	# data, data
	jne	.L532	#,
	movw	pic14_conf+14(%rip), %dx	# pic14_conf.config, tmp109
	andw	$511, %ax	#, data
	andw	$12288, %dx	#, tmp109
	orl	%edx, %eax	# tmp109, data
.L532:
	movw	%ax, pic14_conf+14(%rip)	# data, pic14_conf.config
	jmp	.L528	#
.L531:
	cmpw	$8, %bp	#, config
	jne	.L534	#,
	cmpb	$1, pic14_map+1040(%rsi)	#, pic14_map[pic14_index.13_3].nconfig
	jbe	.L535	#,
	movw	%cx, pic14_conf+16(%rip)	# data, pic14_conf.config
	jmp	.L528	#
.L534:
	cmpw	$9, %bp	#, config
	jne	.L535	#,
	cmpb	$2, pic14_map+1040(%rsi)	#, pic14_map[pic14_index.13_3].nconfig
	jbe	.L535	#,
	movw	%cx, pic14_conf+18(%rip)	# data, pic14_conf.config
	jmp	.L528	#
.L535:
	movzwl	%cx, %ecx	# data, data
	movl	$__func__.6105, %edx	#,
	movl	$.LC41, %esi	#,
	jmp	.L539	#
.L529:
	cmpw	$1, %dx	#, region
	jne	.L530	#,
	cmpw	$-1, %cx	#, data
	je	.L536	#,
	movl	pic14_index(%rip), %eax	# pic14_index, pic14_index
	movzwl	%cx, %ecx	# data, data
	imulq	$1044, %rax, %rax	#, pic14_index, tmp125
	cmpl	$41191, pic14_map+1032(%rax)	#, pic14_map[pic14_index.13_28].datasheet
	jne	.L537	#,
	cmpw	$1023, %si	#, address
	jne	.L537	#,
	movl	$1023, %r8d	#,
	movl	$__func__.6105, %edx	#,
	movl	$.LC42, %esi	#,
.L539:
	popq	%r9	#
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx	#
	.cfi_def_cfa_offset 16
	popq	%rbp	#
	.cfi_def_cfa_offset 8
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	jmp	__printf_chk	#
.L537:
	.cfi_restore_state
	movl	%ecx, %edx	# data,
	movl	$1, %esi	#,
	movq	%rbx, %rdi	# k,
	call	pic14_loadregion	#
	movl	$1, write_pending.6103(%rip)	#, write_pending
.L536:
	movl	pic14_index(%rip), %eax	# pic14_index, pic14_index
	imulq	$1044, %rax, %rax	#, pic14_index, tmp131
	movzbl	pic14_map+1042(%rax), %eax	# pic14_map[pic14_index.13_34].nlatches, pic14_map[pic14_index.13_34].nlatches
	decl	%eax	# mask
	andl	%eax, %ebp	# mask, tmp134
	cmpw	%ax, %bp	# mask, tmp134
	jne	.L528	#,
	cmpl	$0, write_pending.6103(%rip)	#, write_pending
	je	.L528	#,
	movl	$1, %esi	#,
	movq	%rbx, %rdi	# k,
	call	pic14_write_word	#
	movl	$0, write_pending.6103(%rip)	#, write_pending
	jmp	.L528	#
.L530:
	movzwl	%dx, %ebp	# region, D.6641
	movq	%rbx, %rdi	# k,
	movzwl	%cx, %edx	# data, data
	movl	%ebp, %esi	# D.6641,
	call	pic14_loadregion	#
	popq	%rax	#
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	movq	%rbx, %rdi	# k,
	movl	%ebp, %esi	# D.6641,
	popq	%rbx	#
	.cfi_def_cfa_offset 16
	popq	%rbp	#
	.cfi_def_cfa_offset 8
	jmp	pic14_write_word	#
.L528:
	.cfi_restore_state
	popq	%rbp	#
	.cfi_def_cfa_offset 24
	popq	%rbx	#
	.cfi_def_cfa_offset 16
	popq	%rbp	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE78:
	.size	pic14_programregion, .-pic14_programregion
	.section	.rodata.str1.1
.LC43:
	.string	"%s: information: The %s must be power cycled before verification.\n"
	.text
	.globl	pic14_program
	.type	pic14_program, @function
pic14_program:
.LFB80:
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
	testl	%eax, %eax	# D.6516
	je	.L540	#,
	cmpl	$0, 4(%rsp)	#, %sfp
	je	.L542	#,
	movl	$65534, %edx	#,
	movl	$65535, %esi	#,
	movq	%rbx, %rdi	# k,
	call	pic14_bulk_erase	#
.L542:
	xorl	%r12d, %r12d	# i
	xorl	%r15d, %r15d	# total
	xorl	%ebp, %ebp	# current_region
	jmp	.L543	#
.L552:
	movl	%r12d, %eax	# i, i
	leaq	0(,%rax,8), %rdx	#,
	movq	%rdx, 8(%rsp)	#, %sfp
	movq	3104(%rbx), %rdx	# k_11(D)->pdata, k_11(D)->pdata
	movq	(%rdx,%rax,8), %rax	# *D.6524_20, *D.6524_20
	movl	(%rax), %r13d	# D.6525_21->address, D.6527
	shrl	%r13d	# D.6527
	movzwl	%r13w, %edi	# D.6527, tmp155
	call	pic14_getregion	#
	testw	%ax, %ax	# new_region
	movl	%eax, %r14d	#, new_region
	je	.L544	#,
	cmpw	%bp, %ax	# current_region, new_region
	je	.L567	#,
	cmpw	$1, %bp	#, current_region
	jne	.L546	#,
	movl	$65535, %ecx	#,
	movl	$1, %edx	#,
	movl	$65535, %esi	#,
	movq	%rbx, %rdi	# k,
	call	pic14_programregion	#
.L546:
	movq	%rbx, %rdi	# k,
	call	pic14_program_verify	#
	leaq	30(%rsp), %rdx	#,
	movzwl	%r14w, %esi	# new_region, new_region
	movq	%rbx, %rdi	# k,
	call	pic14_initregion	#
	testw	%ax, %ax	# D.6536
	je	.L544	#,
	movl	%r14d, %ebp	# new_region, current_region
	jmp	.L567	#
.L549:
	cmpw	$1, %bp	#, current_region
	jne	.L548	#,
	movl	$65535, %ecx	#,
	movl	$1, %edx	#,
	movq	%rbx, %rdi	# k,
	call	pic14_programregion	#
.L548:
	movq	%rbx, %rdi	# k,
	incw	30(%rsp)	# PC_address
	call	pic14_increment_address	#
.L567:
	movzwl	30(%rsp), %esi	# PC_address,
	cmpw	%r13w, %si	# D.6527, PC_address.9
	jb	.L549	#,
	xorl	%r14d, %r14d	# ivtmp.623
	movzwl	%bp, %r13d	# current_region, current_region
	jmp	.L550	#
.L551:
	leal	1(%rax), %ecx	#, tmp160
	movzwl	30(%rsp), %esi	# PC_address, PC_address
	movq	%rbx, %rdi	# k,
	incq	%r14	# ivtmp.623
	movzwl	4(%rdx,%rcx,2), %ecx	# D.6525_40->bytes, tmp162
	sall	$8, %ecx	#, tmp162
	orw	4(%rdx,%rax,2), %cx	# D.6525_40->bytes, tmp164
	movl	%r13d, %edx	# current_region,
	andl	$16383, %ecx	#, tmp166
	call	pic14_programregion	#
	movq	%rbx, %rdi	# k,
	incw	30(%rsp)	# PC_address
	call	pic14_increment_address	#
.L550:
	movq	8(%rsp), %rsi	# %sfp,
	movq	3104(%rbx), %rdx	# k_11(D)->pdata, k_11(D)->pdata
	leal	(%r14,%r14), %eax	#,
	leal	(%r15,%r14), %ecx	#, total
	movq	(%rdx,%rsi), %rdx	# *D.6524_39, D.6525
	movzwl	516(%rdx), %esi	# D.6525_40->nbytes, D.6525_40->nbytes
	cmpl	%esi, %eax	# D.6525_40->nbytes, D.8067
	jb	.L551	#,
	movl	%ecx, %r15d	# total, total
.L544:
	incl	%r12d	# i
.L543:
	cmpl	3112(%rbx), %r12d	# k_11(D)->count, i
	jb	.L552	#,
	decw	%bp	# current_region
	jne	.L553	#,
	movl	$65535, %ecx	#,
	movl	$1, %edx	#,
	movl	$65535, %esi	#,
	movq	%rbx, %rdi	# k,
	call	pic14_programregion	#
.L553:
	movq	%rbx, %rdi	# k,
	call	pic14_standby	#
	cmpl	$0, 4(%rsp)	#, %sfp
	je	.L554	#,
	movzwl	pic14_conf+14(%rip), %esi	# pic14_conf.config, pic14_conf.config
	movq	%rbx, %rdi	# k,
	call	pic14_write_config	#
.L554:
	movzwl	%r15w, %edx	# total, total
	movl	$.LC12, %esi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	movq	%rbx, %rdi	# k,
	call	inhx32_free	#
	movl	pic14_index(%rip), %ecx	# pic14_index, pic14_index.11
	imulq	$1044, %rcx, %rcx	#, pic14_index.11, tmp176
	cmpl	$40245, pic14_map+1032(%rcx)	#, pic14_map[pic14_index.11_75].datasheet
	jne	.L540	#,
	addq	$pic14_map, %rcx	#, tmp180
	movl	$__func__.6143, %edx	#,
	movl	$.LC43, %esi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
.L540:
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
.LFE80:
	.size	pic14_program, .-pic14_program
	.section	.rodata.str1.1
.LC44:
	.string	"%s: error: read [%04X] expected [%04X] at [%04X]\n"
	.text
	.globl	pic14_verifyregion
	.type	pic14_verifyregion, @function
pic14_verifyregion:
.LFB79:
	.cfi_startproc
	pushq	%r12	#
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	cmpw	$1, %dx	#, region
	pushq	%rbp	#
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx	#
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	jb	.L575	#,
	cmpw	$2, %dx	#, region
	movl	%esi, %ebp	# address, address
	movl	%ecx, %r12d	# data, data
	movl	%ecx, %ebx	# data, data
	jbe	.L576	#,
	cmpw	$3, %dx	#, region
	jne	.L575	#,
	jmp	.L577	#
.L576:
	call	pic14_read_data_from_program_memory	#
	movl	%eax, %edx	#, vdata
	jmp	.L578	#
.L577:
	call	pic14_read_data_from_data_memory	#
	movzbl	%al, %edx	# D.6573, vdata
	jmp	.L578	#
.L575:
	movzwl	%dx, %ecx	# region, region
	movl	$.LC40, %esi	#,
	movl	$__func__.6119, %edx	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	jmp	.L583	#
.L578:
	movl	pic14_index(%rip), %eax	# pic14_index, pic14_index
	imulq	$1044, %rax, %rax	#, pic14_index, tmp81
	cmpl	$41191, pic14_map+1032(%rax)	#, pic14_map[pic14_index.12_14].datasheet
	jne	.L580	#,
	cmpw	$8199, %bp	#, address
	jne	.L580	#,
	movl	%r12d, %ebx	#, data
	andw	$511, %dx	#, vdata
	andw	$511, %bx	#, data
.L580:
	xorl	%eax, %eax	# D.6574
	cmpw	%bx, %dx	# data, vdata
	je	.L579	#,
	movzwl	%dx, %ecx	# vdata, vdata
	movzwl	%bp, %r9d	# address,
	movzwl	%bx, %r8d	# data,
	movl	$__func__.6119, %edx	#,
	movl	$.LC44, %esi	#,
	movl	$1, %edi	#,
	call	__printf_chk	#
.L583:
	movl	$1, %eax	#, D.6574
.L579:
	popq	%rbx	#
	.cfi_def_cfa_offset 24
	popq	%rbp	#
	.cfi_def_cfa_offset 16
	popq	%r12	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE79:
	.size	pic14_verifyregion, .-pic14_verifyregion
	.section	.rodata.str1.1
.LC45:
	.string	"Total: %u Pass: %u Fail: %u\n"
	.text
	.globl	pic14_verify
	.type	pic14_verify, @function
pic14_verify:
.LFB81:
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
	movl	$1, %ebp	#, D.6476
	pushq	%rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rdi, %rbx	# k, k
	subq	$40, %rsp	#,
	.cfi_def_cfa_offset 96
	movw	$0, 30(%rsp)	#, PC_address
	call	inhx32	#
	testl	%eax, %eax	# D.6473
	je	.L585	#,
	xorb	%bpl, %bpl	#
	xorl	%r14d, %r14d	# total
	movw	$0, 6(%rsp)	#, %sfp
	xorl	%r15d, %r15d	# current_region
	jmp	.L586	#
.L593:
	movl	%ebp, %eax	# i, i
	leaq	0(,%rax,8), %rdx	#,
	movq	%rdx, 8(%rsp)	#, %sfp
	movq	3104(%rbx), %rdx	# k_16(D)->pdata, k_16(D)->pdata
	movq	(%rdx,%rax,8), %rax	# *D.6480_25, *D.6480_25
	movl	(%rax), %r12d	# D.6481_26->address, D.6483
	shrl	%r12d	# D.6483
	movzwl	%r12w, %edi	# D.6483, tmp157
	call	pic14_getregion	#
	testw	%ax, %ax	# new_region
	movl	%eax, %r13d	#, new_region
	je	.L587	#,
	cmpw	%r15w, %ax	# current_region, new_region
	je	.L599	#,
	movq	%rbx, %rdi	# k,
	call	pic14_program_verify	#
	leaq	30(%rsp), %rdx	#,
	movzwl	%r13w, %esi	# new_region, new_region
	movq	%rbx, %rdi	# k,
	call	pic14_initregion	#
	testw	%ax, %ax	# D.6490
	je	.L587	#,
	movl	%r13d, %r15d	# new_region, current_region
	jmp	.L599	#
.L590:
	incl	%eax	# tmp160
	movq	%rbx, %rdi	# k,
	movw	%ax, 30(%rsp)	# tmp160, PC_address
	call	pic14_increment_address	#
.L599:
	movw	30(%rsp), %ax	# PC_address, PC_address.7
	cmpw	%r12w, %ax	# D.6483, PC_address.7
	jb	.L590	#,
	xorl	%r13d, %r13d	# ivtmp.667
	movzwl	%r15w, %r12d	# current_region, current_region
	jmp	.L591	#
.L592:
	leal	1(%rax), %ecx	#, tmp162
	movzwl	30(%rsp), %esi	# PC_address, PC_address.7
	movq	%rbx, %rdi	# k,
	incq	%r13	# ivtmp.667
	movzwl	4(%rdx,%rcx,2), %ecx	# D.6481_43->bytes, tmp164
	sall	$8, %ecx	#, tmp164
	orw	4(%rdx,%rax,2), %cx	# D.6481_43->bytes, tmp166
	leal	1(%rsi), %eax	#, tmp168
	movl	%r12d, %edx	# current_region,
	movw	%ax, 30(%rsp)	# tmp168, PC_address
	andl	$16383, %ecx	#, D.6503
	call	pic14_verifyregion	#
	movq	%rbx, %rdi	# k,
	addw	%ax, 6(%rsp)	# D.6506, %sfp
	call	pic14_increment_address	#
.L591:
	movq	8(%rsp), %rsi	# %sfp,
	movq	3104(%rbx), %rdx	# k_16(D)->pdata, k_16(D)->pdata
	leal	(%r13,%r13), %eax	#,
	leal	(%r14,%r13), %ecx	#, total
	movq	(%rdx,%rsi), %rdx	# *D.6480_42, D.6481
	movzwl	516(%rdx), %esi	# D.6481_43->nbytes, D.6481_43->nbytes
	cmpl	%esi, %eax	# D.6481_43->nbytes, D.8123
	jb	.L592	#,
	movl	%ecx, %r14d	# total, total
.L587:
	incl	%ebp	# i
.L586:
	cmpl	3112(%rbx), %ebp	# k_16(D)->count, i
	jb	.L593	#,
	movq	%rbx, %rdi	# k,
	call	pic14_standby	#
	movzwl	6(%rsp), %ebp	# %sfp, D.6511
	movzwl	%r14w, %edx	# total, D.6512
	movl	$1, %edi	#,
	movl	%edx, %ecx	# D.6512, tmp173
	movl	$.LC45, %esi	#,
	xorl	%eax, %eax	#
	subl	%ebp, %ecx	# D.6511, tmp173
	movl	%ebp, %r8d	# D.6511,
	call	__printf_chk	#
	movq	%rbx, %rdi	# k,
	call	inhx32_free	#
.L585:
	addq	$40, %rsp	#,
	.cfi_def_cfa_offset 56
	movl	%ebp, %eax	# D.6476,
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
.LFE81:
	.size	pic14_verify, .-pic14_verify
	.globl	pic14_index
	.data
	.align 4
	.type	pic14_index, @object
	.size	pic14_index, 4
pic14_index:
	.long	218
	.globl	pic14_map
	.align 16
	.type	pic14_map, @object
	.size	pic14_map, 228636
pic14_map:
# devicename:
	.string	"PIC16C84"
	.zero	1015
# deviceid:
	.value	1381
# flash:
	.value	1024
# eeprom:
	.value	64
# datasheet:
	.zero	2
	.long	30189
# configaddr:
	.value	8192
# dataaddr:
	.value	8448
# nconfig:
	.byte	1
# ncalib:
	.byte	0
# nlatches:
	.byte	1
# erasesize:
	.byte	0
# devicename:
	.string	"PIC16F83"
	.zero	1015
# deviceid:
	.value	1379
# flash:
	.value	512
# eeprom:
	.value	64
# datasheet:
	.zero	2
	.long	30262
# configaddr:
	.value	8192
# dataaddr:
	.value	8448
# nconfig:
	.byte	1
# ncalib:
	.byte	0
# nlatches:
	.byte	1
# erasesize:
	.byte	0
# devicename:
	.string	"PIC16F84"
	.zero	1015
# deviceid:
	.value	1380
# flash:
	.value	1024
# eeprom:
	.value	64
# datasheet:
	.zero	2
	.long	30262
# configaddr:
	.value	8192
# dataaddr:
	.value	8448
# nconfig:
	.byte	1
# ncalib:
	.byte	0
# nlatches:
	.byte	1
# erasesize:
	.byte	0
# devicename:
	.string	"PIC16F84A"
	.zero	1014
# deviceid:
	.value	1376
# flash:
	.value	1024
# eeprom:
	.value	64
# datasheet:
	.zero	2
	.long	30262
# configaddr:
	.value	8192
# dataaddr:
	.value	8448
# nconfig:
	.byte	1
# ncalib:
	.byte	0
# nlatches:
	.byte	1
# erasesize:
	.byte	0
# devicename:
	.string	"PIC16F627"
	.zero	1014
# deviceid:
	.value	1952
# flash:
	.value	1024
# eeprom:
	.value	128
# datasheet:
	.zero	2
	.long	30034
# configaddr:
	.value	8192
# dataaddr:
	.value	8448
# nconfig:
	.byte	1
# ncalib:
	.byte	0
# nlatches:
	.byte	1
# erasesize:
	.byte	0
# devicename:
	.string	"PIC16F628"
	.zero	1014
# deviceid:
	.value	1984
# flash:
	.value	2048
# eeprom:
	.value	128
# datasheet:
	.zero	2
	.long	30034
# configaddr:
	.value	8192
# dataaddr:
	.value	8448
# nconfig:
	.byte	1
# ncalib:
	.byte	0
# nlatches:
	.byte	1
# erasesize:
	.byte	0
# devicename:
	.string	"PIC16F870"
	.zero	1014
# deviceid:
	.value	3328
# flash:
	.value	2048
# eeprom:
	.value	64
# datasheet:
	.zero	2
	.long	39025
# configaddr:
	.value	8192
# dataaddr:
	.value	8448
# nconfig:
	.byte	1
# ncalib:
	.byte	0
# nlatches:
	.byte	1
# erasesize:
	.byte	0
# devicename:
	.string	"PIC16F871"
	.zero	1014
# deviceid:
	.value	3360
# flash:
	.value	2048
# eeprom:
	.value	64
# datasheet:
	.zero	2
	.long	39025
# configaddr:
	.value	8192
# dataaddr:
	.value	8448
# nconfig:
	.byte	1
# ncalib:
	.byte	0
# nlatches:
	.byte	1
# erasesize:
	.byte	0
# devicename:
	.string	"PIC16F872"
	.zero	1014
# deviceid:
	.value	2272
# flash:
	.value	2048
# eeprom:
	.value	64
# datasheet:
	.zero	2
	.long	39025
# configaddr:
	.value	8192
# dataaddr:
	.value	8448
# nconfig:
	.byte	1
# ncalib:
	.byte	0
# nlatches:
	.byte	1
# erasesize:
	.byte	0
# devicename:
	.string	"PIC16F873"
	.zero	1014
# deviceid:
	.value	2400
# flash:
	.value	4096
# eeprom:
	.value	128
# datasheet:
	.zero	2
	.long	39025
# configaddr:
	.value	8192
# dataaddr:
	.value	8448
# nconfig:
	.byte	1
# ncalib:
	.byte	0
# nlatches:
	.byte	1
# erasesize:
	.byte	0
# devicename:
	.string	"PIC16F874"
	.zero	1014
# deviceid:
	.value	2336
# flash:
	.value	4096
# eeprom:
	.value	128
# datasheet:
	.zero	2
	.long	39025
# configaddr:
	.value	8192
# dataaddr:
	.value	8448
# nconfig:
	.byte	1
# ncalib:
	.byte	0
# nlatches:
	.byte	1
# erasesize:
	.byte	0
# devicename:
	.string	"PIC16F876"
	.zero	1014
# deviceid:
	.value	2528
# flash:
	.value	8192
# eeprom:
	.value	256
# datasheet:
	.zero	2
	.long	39025
# configaddr:
	.value	8192
# dataaddr:
	.value	8448
# nconfig:
	.byte	1
# ncalib:
	.byte	0
# nlatches:
	.byte	1
# erasesize:
	.byte	0
# devicename:
	.string	"PIC16F877"
	.zero	1014
# deviceid:
	.value	2464
# flash:
	.value	8192
# eeprom:
	.value	256
# datasheet:
	.zero	2
	.long	39025
# configaddr:
	.value	8192
# dataaddr:
	.value	8448
# nconfig:
	.byte	1
# ncalib:
	.byte	0
# nlatches:
	.byte	1
# erasesize:
	.byte	0
# devicename:
	.string	"PIC16F873A"
	.zero	1013
# deviceid:
	.value	3648
# flash:
	.value	4096
# eeprom:
	.value	128
# datasheet:
	.zero	2
	.long	39589
# configaddr:
	.value	8192
# dataaddr:
	.value	8448
# nconfig:
	.byte	1
# ncalib:
	.byte	0
# nlatches:
	.byte	8
# erasesize:
	.byte	0
# devicename:
	.string	"PIC16F874A"
	.zero	1013
# deviceid:
	.value	3680
# flash:
	.value	4096
# eeprom:
	.value	128
# datasheet:
	.zero	2
	.long	39589
# configaddr:
	.value	8192
# dataaddr:
	.value	8448
# nconfig:
	.byte	1
# ncalib:
	.byte	0
# nlatches:
	.byte	8
# erasesize:
	.byte	0
# devicename:
	.string	"PIC16F876A"
	.zero	1013
# deviceid:
	.value	3584
# flash:
	.value	8192
# eeprom:
	.value	256
# datasheet:
	.zero	2
	.long	39589
# configaddr:
	.value	8192
# dataaddr:
	.value	8448
# nconfig:
	.byte	1
# ncalib:
	.byte	0
# nlatches:
	.byte	8
# erasesize:
	.byte	0
# devicename:
	.string	"PIC16F877A"
	.zero	1013
# deviceid:
	.value	3616
# flash:
	.value	8192
# eeprom:
	.value	256
# datasheet:
	.zero	2
	.long	39589
# configaddr:
	.value	8192
# dataaddr:
	.value	8448
# nconfig:
	.byte	1
# ncalib:
	.byte	0
# nlatches:
	.byte	8
# erasesize:
	.byte	0
# devicename:
	.string	"PIC16F87"
	.zero	1015
# deviceid:
	.value	1824
# flash:
	.value	4096
# eeprom:
	.value	256
# datasheet:
	.zero	2
	.long	39607
# configaddr:
	.value	8192
# dataaddr:
	.value	8448
# nconfig:
	.byte	2
# ncalib:
	.byte	0
# nlatches:
	.byte	4
# erasesize:
	.byte	0
# devicename:
	.string	"PIC16F88"
	.zero	1015
# deviceid:
	.value	1888
# flash:
	.value	4096
# eeprom:
	.value	256
# datasheet:
	.zero	2
	.long	39607
# configaddr:
	.value	8192
# dataaddr:
	.value	8448
# nconfig:
	.byte	2
# ncalib:
	.byte	0
# nlatches:
	.byte	4
# erasesize:
	.byte	0
# devicename:
	.string	"PIC12F629"
	.zero	1014
# deviceid:
	.value	3968
# flash:
	.value	1024
# eeprom:
	.value	128
# datasheet:
	.zero	2
	.long	41191
# configaddr:
	.value	8192
# dataaddr:
	.value	8448
# nconfig:
	.byte	1
# ncalib:
	.byte	0
# nlatches:
	.byte	1
# erasesize:
	.byte	0
# devicename:
	.string	"PIC12F675"
	.zero	1014
# deviceid:
	.value	4032
# flash:
	.value	1024
# eeprom:
	.value	128
# datasheet:
	.zero	2
	.long	41191
# configaddr:
	.value	8192
# dataaddr:
	.value	8448
# nconfig:
	.byte	1
# ncalib:
	.byte	0
# nlatches:
	.byte	1
# erasesize:
	.byte	0
# devicename:
	.string	"PIC16F630"
	.zero	1014
# deviceid:
	.value	4288
# flash:
	.value	1024
# eeprom:
	.value	128
# datasheet:
	.zero	2
	.long	41191
# configaddr:
	.value	8192
# dataaddr:
	.value	8448
# nconfig:
	.byte	1
# ncalib:
	.byte	0
# nlatches:
	.byte	1
# erasesize:
	.byte	0
# devicename:
	.string	"PIC16F676"
	.zero	1014
# deviceid:
	.value	4320
# flash:
	.value	1024
# eeprom:
	.value	128
# datasheet:
	.zero	2
	.long	41191
# configaddr:
	.value	8192
# dataaddr:
	.value	8448
# nconfig:
	.byte	1
# ncalib:
	.byte	0
# nlatches:
	.byte	1
# erasesize:
	.byte	0
# devicename:
	.string	"PIC16F627A"
	.zero	1013
# deviceid:
	.value	4160
# flash:
	.value	1024
# eeprom:
	.value	128
# datasheet:
	.zero	2
	.long	41196
# configaddr:
	.value	8192
# dataaddr:
	.value	8448
# nconfig:
	.byte	1
# ncalib:
	.byte	0
# nlatches:
	.byte	1
# erasesize:
	.byte	0
# devicename:
	.string	"PIC16F628A"
	.zero	1013
# deviceid:
	.value	4192
# flash:
	.value	2048
# eeprom:
	.value	128
# datasheet:
	.zero	2
	.long	41196
# configaddr:
	.value	8192
# dataaddr:
	.value	8448
# nconfig:
	.byte	1
# ncalib:
	.byte	0
# nlatches:
	.byte	1
# erasesize:
	.byte	0
# devicename:
	.string	"PIC16F648A"
	.zero	1013
# deviceid:
	.value	4352
# flash:
	.value	4096
# eeprom:
	.value	256
# datasheet:
	.zero	2
	.long	41196
# configaddr:
	.value	8192
# dataaddr:
	.value	8448
# nconfig:
	.byte	1
# ncalib:
	.byte	0
# nlatches:
	.byte	1
# erasesize:
	.byte	0
# devicename:
	.string	"PIC16F818"
	.zero	1014
# deviceid:
	.value	1216
# flash:
	.value	1024
# eeprom:
	.value	128
# datasheet:
	.zero	2
	.long	39603
# configaddr:
	.value	8192
# dataaddr:
	.value	8448
# nconfig:
	.byte	1
# ncalib:
	.byte	0
# nlatches:
	.byte	4
# erasesize:
	.byte	0
# devicename:
	.string	"PIC16F819"
	.zero	1014
# deviceid:
	.value	1248
# flash:
	.value	2048
# eeprom:
	.value	256
# datasheet:
	.zero	2
	.long	39603
# configaddr:
	.value	8192
# dataaddr:
	.value	8448
# nconfig:
	.byte	1
# ncalib:
	.byte	0
# nlatches:
	.byte	4
# erasesize:
	.byte	0
# devicename:
	.string	"PIC16F716"
	.zero	1014
# deviceid:
	.value	4416
# flash:
	.value	2048
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	40245
# configaddr:
	.value	8192
# dataaddr:
	.value	8448
# nconfig:
	.byte	1
# ncalib:
	.byte	0
# nlatches:
	.byte	4
# erasesize:
	.byte	0
# devicename:
	.string	"PIC16F631"
	.zero	1014
# deviceid:
	.value	5152
# flash:
	.value	1024
# eeprom:
	.value	128
# datasheet:
	.zero	2
	.long	41204
# configaddr:
	.value	8192
# dataaddr:
	.value	8448
# nconfig:
	.byte	1
# ncalib:
	.byte	1
# nlatches:
	.byte	4
# erasesize:
	.byte	16
# devicename:
	.string	"PIC16F677"
	.zero	1014
# deviceid:
	.value	5184
# flash:
	.value	2048
# eeprom:
	.value	256
# datasheet:
	.zero	2
	.long	41204
# configaddr:
	.value	8192
# dataaddr:
	.value	8448
# nconfig:
	.byte	1
# ncalib:
	.byte	1
# nlatches:
	.byte	4
# erasesize:
	.byte	16
# devicename:
	.string	"PIC16F685"
	.zero	1014
# deviceid:
	.value	1184
# flash:
	.value	4096
# eeprom:
	.value	256
# datasheet:
	.zero	2
	.long	41204
# configaddr:
	.value	8192
# dataaddr:
	.value	8448
# nconfig:
	.byte	1
# ncalib:
	.byte	1
# nlatches:
	.byte	4
# erasesize:
	.byte	16
# devicename:
	.string	"PIC16F687"
	.zero	1014
# deviceid:
	.value	4896
# flash:
	.value	2048
# eeprom:
	.value	256
# datasheet:
	.zero	2
	.long	41204
# configaddr:
	.value	8192
# dataaddr:
	.value	8448
# nconfig:
	.byte	1
# ncalib:
	.byte	1
# nlatches:
	.byte	4
# erasesize:
	.byte	16
# devicename:
	.string	"PIC16F689"
	.zero	1014
# deviceid:
	.value	4928
# flash:
	.value	4096
# eeprom:
	.value	256
# datasheet:
	.zero	2
	.long	41204
# configaddr:
	.value	8192
# dataaddr:
	.value	8448
# nconfig:
	.byte	1
# ncalib:
	.byte	1
# nlatches:
	.byte	4
# erasesize:
	.byte	16
# devicename:
	.string	"PIC16F690"
	.zero	1014
# deviceid:
	.value	5120
# flash:
	.value	4096
# eeprom:
	.value	256
# datasheet:
	.zero	2
	.long	41204
# configaddr:
	.value	8192
# dataaddr:
	.value	8448
# nconfig:
	.byte	1
# ncalib:
	.byte	1
# nlatches:
	.byte	4
# erasesize:
	.byte	16
# devicename:
	.string	"PIC12F635"
	.zero	1014
# deviceid:
	.value	4000
# flash:
	.value	1024
# eeprom:
	.value	128
# datasheet:
	.zero	2
	.long	41204
# configaddr:
	.value	8192
# dataaddr:
	.value	8448
# nconfig:
	.byte	1
# ncalib:
	.byte	2
# nlatches:
	.byte	4
# erasesize:
	.byte	16
# devicename:
	.string	"PIC16F636"
	.zero	1014
# deviceid:
	.value	4256
# flash:
	.value	2048
# eeprom:
	.value	256
# datasheet:
	.zero	2
	.long	41204
# configaddr:
	.value	8192
# dataaddr:
	.value	8448
# nconfig:
	.byte	1
# ncalib:
	.byte	2
# nlatches:
	.byte	4
# erasesize:
	.byte	16
# devicename:
	.string	"PIC16F639"
	.zero	1014
# deviceid:
	.value	4256
# flash:
	.value	2048
# eeprom:
	.value	256
# datasheet:
	.zero	2
	.long	41204
# configaddr:
	.value	8192
# dataaddr:
	.value	8448
# nconfig:
	.byte	1
# ncalib:
	.byte	2
# nlatches:
	.byte	4
# erasesize:
	.byte	16
# devicename:
	.string	"PIC12F683"
	.zero	1014
# deviceid:
	.value	1120
# flash:
	.value	2048
# eeprom:
	.value	256
# datasheet:
	.zero	2
	.long	41204
# configaddr:
	.value	8192
# dataaddr:
	.value	8448
# nconfig:
	.byte	1
# ncalib:
	.byte	1
# nlatches:
	.byte	4
# erasesize:
	.byte	16
# devicename:
	.string	"PIC16F684"
	.zero	1014
# deviceid:
	.value	4224
# flash:
	.value	2048
# eeprom:
	.value	256
# datasheet:
	.zero	2
	.long	41204
# configaddr:
	.value	8192
# dataaddr:
	.value	8448
# nconfig:
	.byte	1
# ncalib:
	.byte	1
# nlatches:
	.byte	4
# erasesize:
	.byte	16
# devicename:
	.string	"PIC16F688"
	.zero	1014
# deviceid:
	.value	4480
# flash:
	.value	4096
# eeprom:
	.value	256
# datasheet:
	.zero	2
	.long	41204
# configaddr:
	.value	8192
# dataaddr:
	.value	8448
# nconfig:
	.byte	1
# ncalib:
	.byte	1
# nlatches:
	.byte	4
# erasesize:
	.byte	16
# devicename:
	.string	"PIC16F722"
	.zero	1014
# deviceid:
	.value	6272
# flash:
	.value	2048
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	41332
# configaddr:
	.value	8192
# dataaddr:
	.value	8448
# nconfig:
	.byte	2
# ncalib:
	.byte	2
# nlatches:
	.byte	8
# erasesize:
	.byte	32
# devicename:
	.string	"PIC16F722A"
	.zero	1013
# deviceid:
	.value	6944
# flash:
	.value	2048
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	41332
# configaddr:
	.value	8192
# dataaddr:
	.value	8448
# nconfig:
	.byte	2
# ncalib:
	.byte	2
# nlatches:
	.byte	8
# erasesize:
	.byte	32
# devicename:
	.string	"PIC16F723"
	.zero	1014
# deviceid:
	.value	6240
# flash:
	.value	4096
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	41332
# configaddr:
	.value	8192
# dataaddr:
	.value	8448
# nconfig:
	.byte	2
# ncalib:
	.byte	2
# nlatches:
	.byte	8
# erasesize:
	.byte	32
# devicename:
	.string	"PIC16F723A"
	.zero	1013
# deviceid:
	.value	6912
# flash:
	.value	4096
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	41332
# configaddr:
	.value	8192
# dataaddr:
	.value	8448
# nconfig:
	.byte	2
# ncalib:
	.byte	2
# nlatches:
	.byte	8
# erasesize:
	.byte	32
# devicename:
	.string	"PIC16F724"
	.zero	1014
# deviceid:
	.value	6208
# flash:
	.value	4096
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	41332
# configaddr:
	.value	8192
# dataaddr:
	.value	8448
# nconfig:
	.byte	2
# ncalib:
	.byte	2
# nlatches:
	.byte	8
# erasesize:
	.byte	32
# devicename:
	.string	"PIC16F726"
	.zero	1014
# deviceid:
	.value	6176
# flash:
	.value	8192
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	41332
# configaddr:
	.value	8192
# dataaddr:
	.value	8448
# nconfig:
	.byte	2
# ncalib:
	.byte	2
# nlatches:
	.byte	8
# erasesize:
	.byte	32
# devicename:
	.string	"PIC16F727"
	.zero	1014
# deviceid:
	.value	6144
# flash:
	.value	8192
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	41332
# configaddr:
	.value	8192
# dataaddr:
	.value	8448
# nconfig:
	.byte	2
# ncalib:
	.byte	2
# nlatches:
	.byte	8
# erasesize:
	.byte	32
# devicename:
	.string	"PIC16LF722"
	.zero	1013
# deviceid:
	.value	6528
# flash:
	.value	2048
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	41332
# configaddr:
	.value	8192
# dataaddr:
	.value	8448
# nconfig:
	.byte	2
# ncalib:
	.byte	2
# nlatches:
	.byte	8
# erasesize:
	.byte	32
# devicename:
	.string	"PIC16LF722A"
	.zero	1012
# deviceid:
	.value	7008
# flash:
	.value	2048
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	41332
# configaddr:
	.value	8192
# dataaddr:
	.value	8448
# nconfig:
	.byte	2
# ncalib:
	.byte	2
# nlatches:
	.byte	8
# erasesize:
	.byte	32
# devicename:
	.string	"PIC16LF723"
	.zero	1013
# deviceid:
	.value	6496
# flash:
	.value	4096
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	41332
# configaddr:
	.value	8192
# dataaddr:
	.value	8448
# nconfig:
	.byte	2
# ncalib:
	.byte	2
# nlatches:
	.byte	8
# erasesize:
	.byte	32
# devicename:
	.string	"PIC16LF723A"
	.zero	1012
# deviceid:
	.value	6976
# flash:
	.value	4096
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	41332
# configaddr:
	.value	8192
# dataaddr:
	.value	8448
# nconfig:
	.byte	2
# ncalib:
	.byte	2
# nlatches:
	.byte	8
# erasesize:
	.byte	32
# devicename:
	.string	"PIC16LF724"
	.zero	1013
# deviceid:
	.value	6464
# flash:
	.value	4096
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	41332
# configaddr:
	.value	8192
# dataaddr:
	.value	8448
# nconfig:
	.byte	2
# ncalib:
	.byte	2
# nlatches:
	.byte	8
# erasesize:
	.byte	32
# devicename:
	.string	"PIC16LF726"
	.zero	1013
# deviceid:
	.value	6432
# flash:
	.value	8192
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	41332
# configaddr:
	.value	8192
# dataaddr:
	.value	8448
# nconfig:
	.byte	2
# ncalib:
	.byte	2
# nlatches:
	.byte	8
# erasesize:
	.byte	32
# devicename:
	.string	"PIC16LF727"
	.zero	1013
# deviceid:
	.value	6400
# flash:
	.value	8192
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	41332
# configaddr:
	.value	8192
# dataaddr:
	.value	8448
# nconfig:
	.byte	2
# ncalib:
	.byte	2
# nlatches:
	.byte	8
# erasesize:
	.byte	32
# devicename:
	.string	"PIC16F720"
	.zero	1014
# deviceid:
	.value	7168
# flash:
	.value	2048
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	41409
# configaddr:
	.value	8192
# dataaddr:
	.value	8448
# nconfig:
	.byte	2
# ncalib:
	.byte	2
# nlatches:
	.byte	32
# erasesize:
	.byte	32
# devicename:
	.string	"PIC16F721"
	.zero	1014
# deviceid:
	.value	7200
# flash:
	.value	4096
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	41409
# configaddr:
	.value	8192
# dataaddr:
	.value	8448
# nconfig:
	.byte	2
# ncalib:
	.byte	2
# nlatches:
	.byte	32
# erasesize:
	.byte	32
# devicename:
	.string	"PIC16LF720"
	.zero	1013
# deviceid:
	.value	7232
# flash:
	.value	2048
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	41409
# configaddr:
	.value	8192
# dataaddr:
	.value	8448
# nconfig:
	.byte	2
# ncalib:
	.byte	2
# nlatches:
	.byte	32
# erasesize:
	.byte	32
# devicename:
	.string	"PIC16LF721"
	.zero	1013
# deviceid:
	.value	7264
# flash:
	.value	4096
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	41409
# configaddr:
	.value	8192
# dataaddr:
	.value	8448
# nconfig:
	.byte	2
# ncalib:
	.byte	2
# nlatches:
	.byte	32
# erasesize:
	.byte	32
# devicename:
	.string	"PIC16F707"
	.zero	1014
# deviceid:
	.value	6848
# flash:
	.value	8192
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	41405
# configaddr:
	.value	8192
# dataaddr:
	.value	8448
# nconfig:
	.byte	2
# ncalib:
	.byte	2
# nlatches:
	.byte	8
# erasesize:
	.byte	32
# devicename:
	.string	"PIC16LF707"
	.zero	1013
# deviceid:
	.value	6880
# flash:
	.value	8192
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	41405
# configaddr:
	.value	8192
# dataaddr:
	.value	8448
# nconfig:
	.byte	2
# ncalib:
	.byte	2
# nlatches:
	.byte	8
# erasesize:
	.byte	32
# devicename:
	.string	"PIC12F609"
	.zero	1014
# deviceid:
	.value	8768
# flash:
	.value	1024
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	41284
# configaddr:
	.value	8192
# dataaddr:
	.value	8448
# nconfig:
	.byte	1
# ncalib:
	.byte	1
# nlatches:
	.byte	1
# erasesize:
	.byte	0
# devicename:
	.string	"PIC12HV609"
	.zero	1013
# deviceid:
	.value	8832
# flash:
	.value	1024
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	41284
# configaddr:
	.value	8192
# dataaddr:
	.value	8448
# nconfig:
	.byte	1
# ncalib:
	.byte	1
# nlatches:
	.byte	1
# erasesize:
	.byte	0
# devicename:
	.string	"PIC12F615"
	.zero	1014
# deviceid:
	.value	8576
# flash:
	.value	1024
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	41284
# configaddr:
	.value	8192
# dataaddr:
	.value	8448
# nconfig:
	.byte	1
# ncalib:
	.byte	1
# nlatches:
	.byte	1
# erasesize:
	.byte	0
# devicename:
	.string	"PIC12HV615"
	.zero	1013
# deviceid:
	.value	8608
# flash:
	.value	1024
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	41284
# configaddr:
	.value	8192
# dataaddr:
	.value	8448
# nconfig:
	.byte	1
# ncalib:
	.byte	1
# nlatches:
	.byte	1
# erasesize:
	.byte	0
# devicename:
	.string	"PIC16F610"
	.zero	1014
# deviceid:
	.value	8800
# flash:
	.value	1024
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	41284
# configaddr:
	.value	8192
# dataaddr:
	.value	8448
# nconfig:
	.byte	1
# ncalib:
	.byte	1
# nlatches:
	.byte	1
# erasesize:
	.byte	0
# devicename:
	.string	"PIC16HV610"
	.zero	1013
# deviceid:
	.value	8864
# flash:
	.value	1024
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	41284
# configaddr:
	.value	8192
# dataaddr:
	.value	8448
# nconfig:
	.byte	1
# ncalib:
	.byte	1
# nlatches:
	.byte	1
# erasesize:
	.byte	0
# devicename:
	.string	"PIC16F616"
	.zero	1014
# deviceid:
	.value	4672
# flash:
	.value	2048
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	41284
# configaddr:
	.value	8192
# dataaddr:
	.value	8448
# nconfig:
	.byte	1
# ncalib:
	.byte	1
# nlatches:
	.byte	4
# erasesize:
	.byte	16
# devicename:
	.string	"PIC16HV616"
	.zero	1013
# deviceid:
	.value	4704
# flash:
	.value	2048
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	41284
# configaddr:
	.value	8192
# dataaddr:
	.value	8448
# nconfig:
	.byte	1
# ncalib:
	.byte	1
# nlatches:
	.byte	4
# erasesize:
	.byte	16
# devicename:
	.string	"PIC12F617"
	.zero	1014
# deviceid:
	.value	4960
# flash:
	.value	2048
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	41284
# configaddr:
	.value	8192
# dataaddr:
	.value	8448
# nconfig:
	.byte	1
# ncalib:
	.byte	1
# nlatches:
	.byte	4
# erasesize:
	.byte	16
# devicename:
	.string	"PIC16F882"
	.zero	1014
# deviceid:
	.value	8192
# flash:
	.value	2048
# eeprom:
	.value	128
# datasheet:
	.zero	2
	.long	41287
# configaddr:
	.value	8192
# dataaddr:
	.value	8448
# nconfig:
	.byte	2
# ncalib:
	.byte	1
# nlatches:
	.byte	8
# erasesize:
	.byte	16
# devicename:
	.string	"PIC16F883"
	.zero	1014
# deviceid:
	.value	8224
# flash:
	.value	4096
# eeprom:
	.value	256
# datasheet:
	.zero	2
	.long	41287
# configaddr:
	.value	8192
# dataaddr:
	.value	8448
# nconfig:
	.byte	2
# ncalib:
	.byte	1
# nlatches:
	.byte	8
# erasesize:
	.byte	16
# devicename:
	.string	"PIC16F884"
	.zero	1014
# deviceid:
	.value	8256
# flash:
	.value	4096
# eeprom:
	.value	256
# datasheet:
	.zero	2
	.long	41287
# configaddr:
	.value	8192
# dataaddr:
	.value	8448
# nconfig:
	.byte	2
# ncalib:
	.byte	1
# nlatches:
	.byte	8
# erasesize:
	.byte	16
# devicename:
	.string	"PIC16F886"
	.zero	1014
# deviceid:
	.value	8288
# flash:
	.value	8192
# eeprom:
	.value	256
# datasheet:
	.zero	2
	.long	41287
# configaddr:
	.value	8192
# dataaddr:
	.value	8448
# nconfig:
	.byte	2
# ncalib:
	.byte	1
# nlatches:
	.byte	8
# erasesize:
	.byte	16
# devicename:
	.string	"PIC16F887"
	.zero	1014
# deviceid:
	.value	8320
# flash:
	.value	8192
# eeprom:
	.value	256
# datasheet:
	.zero	2
	.long	41287
# configaddr:
	.value	8192
# dataaddr:
	.value	8448
# nconfig:
	.byte	2
# ncalib:
	.byte	1
# nlatches:
	.byte	8
# erasesize:
	.byte	16
# devicename:
	.string	"PIC16F73"
	.zero	1015
# deviceid:
	.value	1536
# flash:
	.value	4096
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	30324
# configaddr:
	.value	8192
# dataaddr:
	.value	8448
# nconfig:
	.byte	1
# ncalib:
	.byte	0
# nlatches:
	.byte	2
# erasesize:
	.byte	0
# devicename:
	.string	"PIC16F74"
	.zero	1015
# deviceid:
	.value	1568
# flash:
	.value	4096
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	30324
# configaddr:
	.value	8192
# dataaddr:
	.value	8448
# nconfig:
	.byte	1
# ncalib:
	.byte	0
# nlatches:
	.byte	2
# erasesize:
	.byte	0
# devicename:
	.string	"PIC16F76"
	.zero	1015
# deviceid:
	.value	1600
# flash:
	.value	8192
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	30324
# configaddr:
	.value	8192
# dataaddr:
	.value	8448
# nconfig:
	.byte	1
# ncalib:
	.byte	0
# nlatches:
	.byte	2
# erasesize:
	.byte	0
# devicename:
	.string	"PIC16F77"
	.zero	1015
# deviceid:
	.value	1632
# flash:
	.value	8192
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	30324
# configaddr:
	.value	8192
# dataaddr:
	.value	8448
# nconfig:
	.byte	1
# ncalib:
	.byte	0
# nlatches:
	.byte	2
# erasesize:
	.byte	0
# devicename:
	.string	"PIC10F320"
	.zero	1014
# deviceid:
	.value	10656
# flash:
	.value	256
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	41572
# configaddr:
	.value	8192
# dataaddr:
	.value	8448
# nconfig:
	.byte	1
# ncalib:
	.byte	2
# nlatches:
	.byte	16
# erasesize:
	.byte	16
# devicename:
	.string	"PIC10F322"
	.zero	1014
# deviceid:
	.value	10624
# flash:
	.value	512
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	41572
# configaddr:
	.value	8192
# dataaddr:
	.value	8448
# nconfig:
	.byte	1
# ncalib:
	.byte	2
# nlatches:
	.byte	16
# erasesize:
	.byte	16
# devicename:
	.string	"PIC10LF320"
	.zero	1013
# deviceid:
	.value	10720
# flash:
	.value	256
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	41572
# configaddr:
	.value	8192
# dataaddr:
	.value	8448
# nconfig:
	.byte	1
# ncalib:
	.byte	2
# nlatches:
	.byte	16
# erasesize:
	.byte	16
# devicename:
	.string	"PIC10LF322"
	.zero	1013
# deviceid:
	.value	10688
# flash:
	.value	512
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	41572
# configaddr:
	.value	8192
# dataaddr:
	.value	8448
# nconfig:
	.byte	1
# ncalib:
	.byte	2
# nlatches:
	.byte	16
# erasesize:
	.byte	16
# devicename:
	.string	"PIC12F1501"
	.zero	1013
# deviceid:
	.value	11456
# flash:
	.value	1024
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	41573
# configaddr:
	.value	-32768
# dataaddr:
	.value	-4096
# nconfig:
	.byte	2
# ncalib:
	.byte	2
# nlatches:
	.byte	32
# erasesize:
	.byte	32
# devicename:
	.string	"PIC16F1503"
	.zero	1013
# deviceid:
	.value	11488
# flash:
	.value	2048
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	41573
# configaddr:
	.value	-32768
# dataaddr:
	.value	-4096
# nconfig:
	.byte	2
# ncalib:
	.byte	2
# nlatches:
	.byte	16
# erasesize:
	.byte	16
# devicename:
	.string	"PIC16F1507"
	.zero	1013
# deviceid:
	.value	11520
# flash:
	.value	2048
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	41573
# configaddr:
	.value	-32768
# dataaddr:
	.value	-4096
# nconfig:
	.byte	2
# ncalib:
	.byte	2
# nlatches:
	.byte	16
# erasesize:
	.byte	16
# devicename:
	.string	"PIC16F1508"
	.zero	1013
# deviceid:
	.value	11552
# flash:
	.value	4096
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	41573
# configaddr:
	.value	-32768
# dataaddr:
	.value	-4096
# nconfig:
	.byte	2
# ncalib:
	.byte	2
# nlatches:
	.byte	32
# erasesize:
	.byte	32
# devicename:
	.string	"PIC16F1509"
	.zero	1013
# deviceid:
	.value	11584
# flash:
	.value	8192
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	41573
# configaddr:
	.value	-32768
# dataaddr:
	.value	-4096
# nconfig:
	.byte	2
# ncalib:
	.byte	2
# nlatches:
	.byte	32
# erasesize:
	.byte	32
# devicename:
	.string	"PIC12LF1501"
	.zero	1012
# deviceid:
	.value	11392
# flash:
	.value	1024
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	41573
# configaddr:
	.value	-32768
# dataaddr:
	.value	-4096
# nconfig:
	.byte	2
# ncalib:
	.byte	2
# nlatches:
	.byte	32
# erasesize:
	.byte	32
# devicename:
	.string	"PIC16LF1503"
	.zero	1012
# deviceid:
	.value	11680
# flash:
	.value	2048
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	41573
# configaddr:
	.value	-32768
# dataaddr:
	.value	-4096
# nconfig:
	.byte	2
# ncalib:
	.byte	2
# nlatches:
	.byte	16
# erasesize:
	.byte	16
# devicename:
	.string	"PIC16LF1507"
	.zero	1012
# deviceid:
	.value	11712
# flash:
	.value	2048
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	41573
# configaddr:
	.value	-32768
# dataaddr:
	.value	-4096
# nconfig:
	.byte	2
# ncalib:
	.byte	2
# nlatches:
	.byte	16
# erasesize:
	.byte	16
# devicename:
	.string	"PIC16LF1508"
	.zero	1012
# deviceid:
	.value	11744
# flash:
	.value	4096
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	41573
# configaddr:
	.value	-32768
# dataaddr:
	.value	-4096
# nconfig:
	.byte	2
# ncalib:
	.byte	2
# nlatches:
	.byte	32
# erasesize:
	.byte	32
# devicename:
	.string	"PIC16LF1509"
	.zero	1012
# deviceid:
	.value	11776
# flash:
	.value	8192
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	41573
# configaddr:
	.value	-32768
# dataaddr:
	.value	-4096
# nconfig:
	.byte	2
# ncalib:
	.byte	2
# nlatches:
	.byte	32
# erasesize:
	.byte	32
# devicename:
	.string	"PIC12F1840"
	.zero	1013
# deviceid:
	.value	7552
# flash:
	.value	4096
# eeprom:
	.value	256
# datasheet:
	.zero	2
	.long	41439
# configaddr:
	.value	-32768
# dataaddr:
	.value	-4096
# nconfig:
	.byte	2
# ncalib:
	.byte	2
# nlatches:
	.byte	32
# erasesize:
	.byte	32
# devicename:
	.string	"PIC16F1847"
	.zero	1013
# deviceid:
	.value	5248
# flash:
	.value	8192
# eeprom:
	.value	256
# datasheet:
	.zero	2
	.long	41439
# configaddr:
	.value	-32768
# dataaddr:
	.value	-4096
# nconfig:
	.byte	2
# ncalib:
	.byte	2
# nlatches:
	.byte	32
# erasesize:
	.byte	32
# devicename:
	.string	"PIC12LF1840"
	.zero	1012
# deviceid:
	.value	7616
# flash:
	.value	4096
# eeprom:
	.value	256
# datasheet:
	.zero	2
	.long	41439
# configaddr:
	.value	-32768
# dataaddr:
	.value	-4096
# nconfig:
	.byte	2
# ncalib:
	.byte	2
# nlatches:
	.byte	32
# erasesize:
	.byte	32
# devicename:
	.string	"PIC16LF1847"
	.zero	1012
# deviceid:
	.value	5280
# flash:
	.value	8192
# eeprom:
	.value	256
# datasheet:
	.zero	2
	.long	41439
# configaddr:
	.value	-32768
# dataaddr:
	.value	-4096
# nconfig:
	.byte	2
# ncalib:
	.byte	2
# nlatches:
	.byte	32
# erasesize:
	.byte	32
# devicename:
	.string	"PIC16F1933"
	.zero	1013
# deviceid:
	.value	8960
# flash:
	.value	4096
# eeprom:
	.value	256
# datasheet:
	.zero	2
	.long	41397
# configaddr:
	.value	-32768
# dataaddr:
	.value	-4096
# nconfig:
	.byte	2
# ncalib:
	.byte	2
# nlatches:
	.byte	8
# erasesize:
	.byte	32
# devicename:
	.string	"PIC16F1934"
	.zero	1013
# deviceid:
	.value	9024
# flash:
	.value	4096
# eeprom:
	.value	256
# datasheet:
	.zero	2
	.long	41397
# configaddr:
	.value	-32768
# dataaddr:
	.value	-4096
# nconfig:
	.byte	2
# ncalib:
	.byte	2
# nlatches:
	.byte	8
# erasesize:
	.byte	32
# devicename:
	.string	"PIC16F1936"
	.zero	1013
# deviceid:
	.value	9056
# flash:
	.value	8192
# eeprom:
	.value	256
# datasheet:
	.zero	2
	.long	41397
# configaddr:
	.value	-32768
# dataaddr:
	.value	-4096
# nconfig:
	.byte	2
# ncalib:
	.byte	2
# nlatches:
	.byte	8
# erasesize:
	.byte	32
# devicename:
	.string	"PIC16F1937"
	.zero	1013
# deviceid:
	.value	9088
# flash:
	.value	8192
# eeprom:
	.value	256
# datasheet:
	.zero	2
	.long	41397
# configaddr:
	.value	-32768
# dataaddr:
	.value	-4096
# nconfig:
	.byte	2
# ncalib:
	.byte	2
# nlatches:
	.byte	8
# erasesize:
	.byte	32
# devicename:
	.string	"PIC16F1938"
	.zero	1013
# deviceid:
	.value	9120
# flash:
	.value	16384
# eeprom:
	.value	256
# datasheet:
	.zero	2
	.long	41397
# configaddr:
	.value	-32768
# dataaddr:
	.value	-4096
# nconfig:
	.byte	2
# ncalib:
	.byte	2
# nlatches:
	.byte	8
# erasesize:
	.byte	32
# devicename:
	.string	"PIC16F1939"
	.zero	1013
# deviceid:
	.value	9152
# flash:
	.value	16384
# eeprom:
	.value	256
# datasheet:
	.zero	2
	.long	41397
# configaddr:
	.value	-32768
# dataaddr:
	.value	-4096
# nconfig:
	.byte	2
# ncalib:
	.byte	2
# nlatches:
	.byte	8
# erasesize:
	.byte	32
# devicename:
	.string	"PIC16F1946"
	.zero	1013
# deviceid:
	.value	9472
# flash:
	.value	8192
# eeprom:
	.value	256
# datasheet:
	.zero	2
	.long	41397
# configaddr:
	.value	-32768
# dataaddr:
	.value	-4096
# nconfig:
	.byte	2
# ncalib:
	.byte	2
# nlatches:
	.byte	8
# erasesize:
	.byte	32
# devicename:
	.string	"PIC16F1947"
	.zero	1013
# deviceid:
	.value	9504
# flash:
	.value	16384
# eeprom:
	.value	256
# datasheet:
	.zero	2
	.long	41397
# configaddr:
	.value	-32768
# dataaddr:
	.value	-4096
# nconfig:
	.byte	2
# ncalib:
	.byte	2
# nlatches:
	.byte	8
# erasesize:
	.byte	32
# devicename:
	.string	"PIC16LF1933"
	.zero	1012
# deviceid:
	.value	9216
# flash:
	.value	4096
# eeprom:
	.value	256
# datasheet:
	.zero	2
	.long	41397
# configaddr:
	.value	-32768
# dataaddr:
	.value	-4096
# nconfig:
	.byte	2
# ncalib:
	.byte	2
# nlatches:
	.byte	8
# erasesize:
	.byte	32
# devicename:
	.string	"PIC16LF1934"
	.zero	1012
# deviceid:
	.value	9280
# flash:
	.value	4096
# eeprom:
	.value	256
# datasheet:
	.zero	2
	.long	41397
# configaddr:
	.value	-32768
# dataaddr:
	.value	-4096
# nconfig:
	.byte	2
# ncalib:
	.byte	2
# nlatches:
	.byte	8
# erasesize:
	.byte	32
# devicename:
	.string	"PIC16LF1936"
	.zero	1012
# deviceid:
	.value	9312
# flash:
	.value	8192
# eeprom:
	.value	256
# datasheet:
	.zero	2
	.long	41397
# configaddr:
	.value	-32768
# dataaddr:
	.value	-4096
# nconfig:
	.byte	2
# ncalib:
	.byte	2
# nlatches:
	.byte	8
# erasesize:
	.byte	32
# devicename:
	.string	"PIC16LF1937"
	.zero	1012
# deviceid:
	.value	9344
# flash:
	.value	8192
# eeprom:
	.value	256
# datasheet:
	.zero	2
	.long	41397
# configaddr:
	.value	-32768
# dataaddr:
	.value	-4096
# nconfig:
	.byte	2
# ncalib:
	.byte	2
# nlatches:
	.byte	8
# erasesize:
	.byte	32
# devicename:
	.string	"PIC16LF1938"
	.zero	1012
# deviceid:
	.value	9376
# flash:
	.value	16384
# eeprom:
	.value	256
# datasheet:
	.zero	2
	.long	41397
# configaddr:
	.value	-32768
# dataaddr:
	.value	-4096
# nconfig:
	.byte	2
# ncalib:
	.byte	2
# nlatches:
	.byte	8
# erasesize:
	.byte	32
# devicename:
	.string	"PIC16LF1939"
	.zero	1012
# deviceid:
	.value	9408
# flash:
	.value	16384
# eeprom:
	.value	256
# datasheet:
	.zero	2
	.long	41397
# configaddr:
	.value	-32768
# dataaddr:
	.value	-4096
# nconfig:
	.byte	2
# ncalib:
	.byte	2
# nlatches:
	.byte	8
# erasesize:
	.byte	32
# devicename:
	.string	"PIC16LF1946"
	.zero	1012
# deviceid:
	.value	9600
# flash:
	.value	8192
# eeprom:
	.value	256
# datasheet:
	.zero	2
	.long	41397
# configaddr:
	.value	-32768
# dataaddr:
	.value	-4096
# nconfig:
	.byte	2
# ncalib:
	.byte	2
# nlatches:
	.byte	8
# erasesize:
	.byte	32
# devicename:
	.string	"PIC16LF1947"
	.zero	1012
# deviceid:
	.value	9632
# flash:
	.value	16384
# eeprom:
	.value	256
# datasheet:
	.zero	2
	.long	41397
# configaddr:
	.value	-32768
# dataaddr:
	.value	-4096
# nconfig:
	.byte	2
# ncalib:
	.byte	2
# nlatches:
	.byte	8
# erasesize:
	.byte	32
# devicename:
	.string	"PIC16LF1902"
	.zero	1012
# deviceid:
	.value	11296
# flash:
	.value	2048
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	41397
# configaddr:
	.value	-32768
# dataaddr:
	.value	-4096
# nconfig:
	.byte	2
# ncalib:
	.byte	2
# nlatches:
	.byte	8
# erasesize:
	.byte	32
# devicename:
	.string	"PIC16LF1903"
	.zero	1012
# deviceid:
	.value	11264
# flash:
	.value	4096
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	41397
# configaddr:
	.value	-32768
# dataaddr:
	.value	-4096
# nconfig:
	.byte	2
# ncalib:
	.byte	2
# nlatches:
	.byte	8
# erasesize:
	.byte	32
# devicename:
	.string	"PIC16LF1904"
	.zero	1012
# deviceid:
	.value	11392
# flash:
	.value	4096
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	41397
# configaddr:
	.value	-32768
# dataaddr:
	.value	-4096
# nconfig:
	.byte	2
# ncalib:
	.byte	2
# nlatches:
	.byte	8
# erasesize:
	.byte	32
# devicename:
	.string	"PIC16LF1906"
	.zero	1012
# deviceid:
	.value	11360
# flash:
	.value	8192
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	41397
# configaddr:
	.value	-32768
# dataaddr:
	.value	-4096
# nconfig:
	.byte	2
# ncalib:
	.byte	2
# nlatches:
	.byte	8
# erasesize:
	.byte	32
# devicename:
	.string	"PIC16LF1907"
	.zero	1012
# deviceid:
	.value	11328
# flash:
	.value	8192
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	41397
# configaddr:
	.value	-32768
# dataaddr:
	.value	-4096
# nconfig:
	.byte	2
# ncalib:
	.byte	2
# nlatches:
	.byte	8
# erasesize:
	.byte	32
# devicename:
	.string	"PIC16F917"
	.zero	1014
# deviceid:
	.value	4992
# flash:
	.value	8192
# eeprom:
	.value	256
# datasheet:
	.zero	2
	.long	41244
# configaddr:
	.value	8192
# dataaddr:
	.value	8448
# nconfig:
	.byte	1
# ncalib:
	.byte	2
# nlatches:
	.byte	8
# erasesize:
	.byte	16
# devicename:
	.string	"PIC16F916"
	.zero	1014
# deviceid:
	.value	5024
# flash:
	.value	8192
# eeprom:
	.value	256
# datasheet:
	.zero	2
	.long	41244
# configaddr:
	.value	8192
# dataaddr:
	.value	8448
# nconfig:
	.byte	1
# ncalib:
	.byte	2
# nlatches:
	.byte	8
# erasesize:
	.byte	16
# devicename:
	.string	"PIC16F914"
	.zero	1014
# deviceid:
	.value	5056
# flash:
	.value	4096
# eeprom:
	.value	256
# datasheet:
	.zero	2
	.long	41244
# configaddr:
	.value	8192
# dataaddr:
	.value	8448
# nconfig:
	.byte	1
# ncalib:
	.byte	2
# nlatches:
	.byte	8
# erasesize:
	.byte	16
# devicename:
	.string	"PIC16F913"
	.zero	1014
# deviceid:
	.value	5088
# flash:
	.value	4096
# eeprom:
	.value	256
# datasheet:
	.zero	2
	.long	41244
# configaddr:
	.value	8192
# dataaddr:
	.value	8448
# nconfig:
	.byte	1
# ncalib:
	.byte	2
# nlatches:
	.byte	8
# erasesize:
	.byte	16
# devicename:
	.string	"PIC16F946"
	.zero	1014
# deviceid:
	.value	5216
# flash:
	.value	16384
# eeprom:
	.value	256
# datasheet:
	.zero	2
	.long	41244
# configaddr:
	.value	8192
# dataaddr:
	.value	8448
# nconfig:
	.byte	1
# ncalib:
	.byte	2
# nlatches:
	.byte	8
# erasesize:
	.byte	16
# devicename:
	.string	"PIC12F1822"
	.zero	1013
# deviceid:
	.value	9984
# flash:
	.value	2048
# eeprom:
	.value	256
# datasheet:
	.zero	2
	.long	41390
# configaddr:
	.value	-32768
# dataaddr:
	.value	-4096
# nconfig:
	.byte	2
# ncalib:
	.byte	2
# nlatches:
	.byte	16
# erasesize:
	.byte	16
# devicename:
	.string	"PIC16F1823"
	.zero	1013
# deviceid:
	.value	10016
# flash:
	.value	2048
# eeprom:
	.value	256
# datasheet:
	.zero	2
	.long	41390
# configaddr:
	.value	-32768
# dataaddr:
	.value	-4096
# nconfig:
	.byte	2
# ncalib:
	.byte	2
# nlatches:
	.byte	16
# erasesize:
	.byte	16
# devicename:
	.string	"PIC16F1826"
	.zero	1013
# deviceid:
	.value	10112
# flash:
	.value	2048
# eeprom:
	.value	256
# datasheet:
	.zero	2
	.long	41390
# configaddr:
	.value	-32768
# dataaddr:
	.value	-4096
# nconfig:
	.byte	2
# ncalib:
	.byte	2
# nlatches:
	.byte	8
# erasesize:
	.byte	32
# devicename:
	.string	"PIC16F1827"
	.zero	1013
# deviceid:
	.value	10144
# flash:
	.value	4096
# eeprom:
	.value	256
# datasheet:
	.zero	2
	.long	41390
# configaddr:
	.value	-32768
# dataaddr:
	.value	-4096
# nconfig:
	.byte	2
# ncalib:
	.byte	2
# nlatches:
	.byte	8
# erasesize:
	.byte	32
# devicename:
	.string	"PIC16F1824"
	.zero	1013
# deviceid:
	.value	10048
# flash:
	.value	4096
# eeprom:
	.value	256
# datasheet:
	.zero	2
	.long	41390
# configaddr:
	.value	-32768
# dataaddr:
	.value	-4096
# nconfig:
	.byte	2
# ncalib:
	.byte	2
# nlatches:
	.byte	32
# erasesize:
	.byte	32
# devicename:
	.string	"PIC16F1828"
	.zero	1013
# deviceid:
	.value	10176
# flash:
	.value	4096
# eeprom:
	.value	256
# datasheet:
	.zero	2
	.long	41390
# configaddr:
	.value	-32768
# dataaddr:
	.value	-4096
# nconfig:
	.byte	2
# ncalib:
	.byte	2
# nlatches:
	.byte	32
# erasesize:
	.byte	32
# devicename:
	.string	"PIC16F1825"
	.zero	1013
# deviceid:
	.value	10080
# flash:
	.value	8192
# eeprom:
	.value	256
# datasheet:
	.zero	2
	.long	41390
# configaddr:
	.value	-32768
# dataaddr:
	.value	-4096
# nconfig:
	.byte	2
# ncalib:
	.byte	2
# nlatches:
	.byte	32
# erasesize:
	.byte	32
# devicename:
	.string	"PIC16F1829"
	.zero	1013
# deviceid:
	.value	10208
# flash:
	.value	8192
# eeprom:
	.value	256
# datasheet:
	.zero	2
	.long	41390
# configaddr:
	.value	-32768
# dataaddr:
	.value	-4096
# nconfig:
	.byte	2
# ncalib:
	.byte	2
# nlatches:
	.byte	32
# erasesize:
	.byte	32
# devicename:
	.string	"PIC12LF1822"
	.zero	1012
# deviceid:
	.value	10240
# flash:
	.value	2048
# eeprom:
	.value	256
# datasheet:
	.zero	2
	.long	41390
# configaddr:
	.value	-32768
# dataaddr:
	.value	-4096
# nconfig:
	.byte	2
# ncalib:
	.byte	2
# nlatches:
	.byte	16
# erasesize:
	.byte	16
# devicename:
	.string	"PIC16LF1823"
	.zero	1012
# deviceid:
	.value	10272
# flash:
	.value	2048
# eeprom:
	.value	256
# datasheet:
	.zero	2
	.long	41390
# configaddr:
	.value	-32768
# dataaddr:
	.value	-4096
# nconfig:
	.byte	2
# ncalib:
	.byte	2
# nlatches:
	.byte	16
# erasesize:
	.byte	16
# devicename:
	.string	"PIC16LF1826"
	.zero	1012
# deviceid:
	.value	10368
# flash:
	.value	2048
# eeprom:
	.value	256
# datasheet:
	.zero	2
	.long	41390
# configaddr:
	.value	-32768
# dataaddr:
	.value	-4096
# nconfig:
	.byte	2
# ncalib:
	.byte	2
# nlatches:
	.byte	8
# erasesize:
	.byte	32
# devicename:
	.string	"PIC16LF1827"
	.zero	1012
# deviceid:
	.value	10400
# flash:
	.value	4096
# eeprom:
	.value	256
# datasheet:
	.zero	2
	.long	41390
# configaddr:
	.value	-32768
# dataaddr:
	.value	-4096
# nconfig:
	.byte	2
# ncalib:
	.byte	2
# nlatches:
	.byte	8
# erasesize:
	.byte	32
# devicename:
	.string	"PIC16LF1824"
	.zero	1012
# deviceid:
	.value	10304
# flash:
	.value	4096
# eeprom:
	.value	256
# datasheet:
	.zero	2
	.long	41390
# configaddr:
	.value	-32768
# dataaddr:
	.value	-4096
# nconfig:
	.byte	2
# ncalib:
	.byte	2
# nlatches:
	.byte	32
# erasesize:
	.byte	32
# devicename:
	.string	"PIC16LF1828"
	.zero	1012
# deviceid:
	.value	10432
# flash:
	.value	4096
# eeprom:
	.value	256
# datasheet:
	.zero	2
	.long	41390
# configaddr:
	.value	-32768
# dataaddr:
	.value	-4096
# nconfig:
	.byte	2
# ncalib:
	.byte	2
# nlatches:
	.byte	32
# erasesize:
	.byte	32
# devicename:
	.string	"PIC16LF1825"
	.zero	1012
# deviceid:
	.value	10336
# flash:
	.value	8192
# eeprom:
	.value	256
# datasheet:
	.zero	2
	.long	41390
# configaddr:
	.value	-32768
# dataaddr:
	.value	-4096
# nconfig:
	.byte	2
# ncalib:
	.byte	2
# nlatches:
	.byte	32
# erasesize:
	.byte	32
# devicename:
	.string	"PIC16LF1829"
	.zero	1012
# deviceid:
	.value	10464
# flash:
	.value	8192
# eeprom:
	.value	256
# datasheet:
	.zero	2
	.long	41390
# configaddr:
	.value	-32768
# dataaddr:
	.value	-4096
# nconfig:
	.byte	2
# ncalib:
	.byte	2
# nlatches:
	.byte	32
# erasesize:
	.byte	32
# devicename:
	.string	"PIC16F737"
	.zero	1014
# deviceid:
	.value	2976
# flash:
	.value	4096
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	30492
# configaddr:
	.value	8192
# dataaddr:
	.value	8448
# nconfig:
	.byte	2
# ncalib:
	.byte	0
# nlatches:
	.byte	2
# erasesize:
	.byte	0
# devicename:
	.string	"PIC16F747"
	.zero	1014
# deviceid:
	.value	3040
# flash:
	.value	4096
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	30492
# configaddr:
	.value	8192
# dataaddr:
	.value	8448
# nconfig:
	.byte	2
# ncalib:
	.byte	0
# nlatches:
	.byte	2
# erasesize:
	.byte	0
# devicename:
	.string	"PIC16F767"
	.zero	1014
# deviceid:
	.value	3744
# flash:
	.value	8192
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	30492
# configaddr:
	.value	8192
# dataaddr:
	.value	8448
# nconfig:
	.byte	2
# ncalib:
	.byte	0
# nlatches:
	.byte	2
# erasesize:
	.byte	0
# devicename:
	.string	"PIC16F777"
	.zero	1014
# deviceid:
	.value	3552
# flash:
	.value	8192
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	30492
# configaddr:
	.value	8192
# dataaddr:
	.value	8448
# nconfig:
	.byte	2
# ncalib:
	.byte	0
# nlatches:
	.byte	2
# erasesize:
	.byte	0
# devicename:
	.string	"PIC16F1782"
	.zero	1013
# deviceid:
	.value	10752
# flash:
	.value	2048
# eeprom:
	.value	256
# datasheet:
	.zero	2
	.long	41457
# configaddr:
	.value	-32768
# dataaddr:
	.value	-4096
# nconfig:
	.byte	2
# ncalib:
	.byte	11
# nlatches:
	.byte	32
# erasesize:
	.byte	32
# devicename:
	.string	"PIC16F1783"
	.zero	1013
# deviceid:
	.value	10784
# flash:
	.value	4096
# eeprom:
	.value	256
# datasheet:
	.zero	2
	.long	41457
# configaddr:
	.value	-32768
# dataaddr:
	.value	-4096
# nconfig:
	.byte	2
# ncalib:
	.byte	11
# nlatches:
	.byte	32
# erasesize:
	.byte	32
# devicename:
	.string	"PIC16F1784"
	.zero	1013
# deviceid:
	.value	10816
# flash:
	.value	4096
# eeprom:
	.value	256
# datasheet:
	.zero	2
	.long	41457
# configaddr:
	.value	-32768
# dataaddr:
	.value	-4096
# nconfig:
	.byte	2
# ncalib:
	.byte	11
# nlatches:
	.byte	32
# erasesize:
	.byte	32
# devicename:
	.string	"PIC16F1786"
	.zero	1013
# deviceid:
	.value	10848
# flash:
	.value	8192
# eeprom:
	.value	256
# datasheet:
	.zero	2
	.long	41457
# configaddr:
	.value	-32768
# dataaddr:
	.value	-4096
# nconfig:
	.byte	2
# ncalib:
	.byte	11
# nlatches:
	.byte	32
# erasesize:
	.byte	32
# devicename:
	.string	"PIC16F1787"
	.zero	1013
# deviceid:
	.value	10880
# flash:
	.value	8192
# eeprom:
	.value	256
# datasheet:
	.zero	2
	.long	41457
# configaddr:
	.value	-32768
# dataaddr:
	.value	-4096
# nconfig:
	.byte	2
# ncalib:
	.byte	11
# nlatches:
	.byte	32
# erasesize:
	.byte	32
# devicename:
	.string	"PIC16F1788"
	.zero	1013
# deviceid:
	.value	12331
# flash:
	.value	16384
# eeprom:
	.value	256
# datasheet:
	.zero	2
	.long	41457
# configaddr:
	.value	-32768
# dataaddr:
	.value	-4096
# nconfig:
	.byte	2
# ncalib:
	.byte	11
# nlatches:
	.byte	32
# erasesize:
	.byte	32
# devicename:
	.string	"PIC16F1789"
	.zero	1013
# deviceid:
	.value	12330
# flash:
	.value	16384
# eeprom:
	.value	256
# datasheet:
	.zero	2
	.long	41457
# configaddr:
	.value	-32768
# dataaddr:
	.value	-4096
# nconfig:
	.byte	2
# ncalib:
	.byte	11
# nlatches:
	.byte	32
# erasesize:
	.byte	32
# devicename:
	.string	"PIC16LF1782"
	.zero	1012
# deviceid:
	.value	10912
# flash:
	.value	2048
# eeprom:
	.value	256
# datasheet:
	.zero	2
	.long	41457
# configaddr:
	.value	-32768
# dataaddr:
	.value	-4096
# nconfig:
	.byte	2
# ncalib:
	.byte	11
# nlatches:
	.byte	32
# erasesize:
	.byte	32
# devicename:
	.string	"PIC16LF1783"
	.zero	1012
# deviceid:
	.value	10944
# flash:
	.value	4096
# eeprom:
	.value	256
# datasheet:
	.zero	2
	.long	41457
# configaddr:
	.value	-32768
# dataaddr:
	.value	-4096
# nconfig:
	.byte	2
# ncalib:
	.byte	11
# nlatches:
	.byte	32
# erasesize:
	.byte	32
# devicename:
	.string	"PIC16LF1784"
	.zero	1012
# deviceid:
	.value	10976
# flash:
	.value	4096
# eeprom:
	.value	256
# datasheet:
	.zero	2
	.long	41457
# configaddr:
	.value	-32768
# dataaddr:
	.value	-4096
# nconfig:
	.byte	2
# ncalib:
	.byte	11
# nlatches:
	.byte	32
# erasesize:
	.byte	32
# devicename:
	.string	"PIC16LF1786"
	.zero	1012
# deviceid:
	.value	11008
# flash:
	.value	8192
# eeprom:
	.value	256
# datasheet:
	.zero	2
	.long	41457
# configaddr:
	.value	-32768
# dataaddr:
	.value	-4096
# nconfig:
	.byte	2
# ncalib:
	.byte	11
# nlatches:
	.byte	32
# erasesize:
	.byte	32
# devicename:
	.string	"PIC16LF1787"
	.zero	1012
# deviceid:
	.value	11040
# flash:
	.value	8192
# eeprom:
	.value	256
# datasheet:
	.zero	2
	.long	41457
# configaddr:
	.value	-32768
# dataaddr:
	.value	-4096
# nconfig:
	.byte	2
# ncalib:
	.byte	11
# nlatches:
	.byte	32
# erasesize:
	.byte	32
# devicename:
	.string	"PIC16LF1788"
	.zero	1012
# deviceid:
	.value	12333
# flash:
	.value	16384
# eeprom:
	.value	256
# datasheet:
	.zero	2
	.long	41457
# configaddr:
	.value	-32768
# dataaddr:
	.value	-4096
# nconfig:
	.byte	2
# ncalib:
	.byte	11
# nlatches:
	.byte	32
# erasesize:
	.byte	32
# devicename:
	.string	"PIC16LF1789"
	.zero	1012
# deviceid:
	.value	12332
# flash:
	.value	16384
# eeprom:
	.value	256
# datasheet:
	.zero	2
	.long	41457
# configaddr:
	.value	-32768
# dataaddr:
	.value	-4096
# nconfig:
	.byte	2
# ncalib:
	.byte	11
# nlatches:
	.byte	32
# erasesize:
	.byte	32
# devicename:
	.string	"PIC16F1454"
	.zero	1013
# deviceid:
	.value	12320
# flash:
	.value	8192
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	41620
# configaddr:
	.value	-32768
# dataaddr:
	.value	-4096
# nconfig:
	.byte	2
# ncalib:
	.byte	2
# nlatches:
	.byte	32
# erasesize:
	.byte	32
# devicename:
	.string	"PIC16F1455"
	.zero	1013
# deviceid:
	.value	12321
# flash:
	.value	8192
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	41620
# configaddr:
	.value	-32768
# dataaddr:
	.value	-4096
# nconfig:
	.byte	2
# ncalib:
	.byte	2
# nlatches:
	.byte	32
# erasesize:
	.byte	32
# devicename:
	.string	"PIC16F1459"
	.zero	1013
# deviceid:
	.value	12323
# flash:
	.value	8192
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	41620
# configaddr:
	.value	-32768
# dataaddr:
	.value	-4096
# nconfig:
	.byte	2
# ncalib:
	.byte	2
# nlatches:
	.byte	32
# erasesize:
	.byte	32
# devicename:
	.string	"PIC16F1454"
	.zero	1013
# deviceid:
	.value	12320
# flash:
	.value	8192
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	41620
# configaddr:
	.value	-32768
# dataaddr:
	.value	-4096
# nconfig:
	.byte	2
# ncalib:
	.byte	2
# nlatches:
	.byte	32
# erasesize:
	.byte	32
# devicename:
	.string	"PIC16F1455"
	.zero	1013
# deviceid:
	.value	12321
# flash:
	.value	8192
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	41620
# configaddr:
	.value	-32768
# dataaddr:
	.value	-4096
# nconfig:
	.byte	2
# ncalib:
	.byte	2
# nlatches:
	.byte	32
# erasesize:
	.byte	32
# devicename:
	.string	"PIC16F1459"
	.zero	1013
# deviceid:
	.value	12323
# flash:
	.value	8192
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	41620
# configaddr:
	.value	-32768
# dataaddr:
	.value	-4096
# nconfig:
	.byte	2
# ncalib:
	.byte	2
# nlatches:
	.byte	32
# erasesize:
	.byte	32
# devicename:
	.string	"PIC16F1527"
	.zero	1013
# deviceid:
	.value	5536
# flash:
	.value	16384
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	41442
# configaddr:
	.value	-32768
# dataaddr:
	.value	-4096
# nconfig:
	.byte	2
# ncalib:
	.byte	2
# nlatches:
	.byte	32
# erasesize:
	.byte	32
# devicename:
	.string	"PIC16F1526"
	.zero	1013
# deviceid:
	.value	5504
# flash:
	.value	8192
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	41442
# configaddr:
	.value	-32768
# dataaddr:
	.value	-4096
# nconfig:
	.byte	2
# ncalib:
	.byte	2
# nlatches:
	.byte	32
# erasesize:
	.byte	32
# devicename:
	.string	"PIC16F1519"
	.zero	1013
# deviceid:
	.value	5856
# flash:
	.value	16384
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	41442
# configaddr:
	.value	-32768
# dataaddr:
	.value	-4096
# nconfig:
	.byte	2
# ncalib:
	.byte	2
# nlatches:
	.byte	32
# erasesize:
	.byte	32
# devicename:
	.string	"PIC16F1518"
	.zero	1013
# deviceid:
	.value	5824
# flash:
	.value	16384
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	41442
# configaddr:
	.value	-32768
# dataaddr:
	.value	-4096
# nconfig:
	.byte	2
# ncalib:
	.byte	2
# nlatches:
	.byte	32
# erasesize:
	.byte	32
# devicename:
	.string	"PIC16F1517"
	.zero	1013
# deviceid:
	.value	5792
# flash:
	.value	8192
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	41442
# configaddr:
	.value	-32768
# dataaddr:
	.value	-4096
# nconfig:
	.byte	2
# ncalib:
	.byte	2
# nlatches:
	.byte	32
# erasesize:
	.byte	32
# devicename:
	.string	"PIC16F1516"
	.zero	1013
# deviceid:
	.value	5760
# flash:
	.value	8192
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	41442
# configaddr:
	.value	-32768
# dataaddr:
	.value	-4096
# nconfig:
	.byte	2
# ncalib:
	.byte	2
# nlatches:
	.byte	32
# erasesize:
	.byte	32
# devicename:
	.string	"PIC16F1513"
	.zero	1013
# deviceid:
	.value	5696
# flash:
	.value	4096
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	41442
# configaddr:
	.value	-32768
# dataaddr:
	.value	-4096
# nconfig:
	.byte	2
# ncalib:
	.byte	2
# nlatches:
	.byte	32
# erasesize:
	.byte	32
# devicename:
	.string	"PIC16F1512"
	.zero	1013
# deviceid:
	.value	5888
# flash:
	.value	2048
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	41442
# configaddr:
	.value	-32768
# dataaddr:
	.value	-4096
# nconfig:
	.byte	2
# ncalib:
	.byte	2
# nlatches:
	.byte	32
# erasesize:
	.byte	32
# devicename:
	.string	"PIC16LF1527"
	.zero	1012
# deviceid:
	.value	5600
# flash:
	.value	16384
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	41442
# configaddr:
	.value	-32768
# dataaddr:
	.value	-4096
# nconfig:
	.byte	2
# ncalib:
	.byte	2
# nlatches:
	.byte	32
# erasesize:
	.byte	32
# devicename:
	.string	"PIC16LF1526"
	.zero	1012
# deviceid:
	.value	5568
# flash:
	.value	8192
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	41442
# configaddr:
	.value	-32768
# dataaddr:
	.value	-4096
# nconfig:
	.byte	2
# ncalib:
	.byte	2
# nlatches:
	.byte	32
# erasesize:
	.byte	32
# devicename:
	.string	"PIC16LF1519"
	.zero	1012
# deviceid:
	.value	6112
# flash:
	.value	16384
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	41442
# configaddr:
	.value	-32768
# dataaddr:
	.value	-4096
# nconfig:
	.byte	2
# ncalib:
	.byte	2
# nlatches:
	.byte	32
# erasesize:
	.byte	32
# devicename:
	.string	"PIC16LF1518"
	.zero	1012
# deviceid:
	.value	6080
# flash:
	.value	16384
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	41442
# configaddr:
	.value	-32768
# dataaddr:
	.value	-4096
# nconfig:
	.byte	2
# ncalib:
	.byte	2
# nlatches:
	.byte	32
# erasesize:
	.byte	32
# devicename:
	.string	"PIC16LF1517"
	.zero	1012
# deviceid:
	.value	6048
# flash:
	.value	8192
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	41442
# configaddr:
	.value	-32768
# dataaddr:
	.value	-4096
# nconfig:
	.byte	2
# ncalib:
	.byte	2
# nlatches:
	.byte	32
# erasesize:
	.byte	32
# devicename:
	.string	"PIC16LF1516"
	.zero	1012
# deviceid:
	.value	6016
# flash:
	.value	8192
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	41442
# configaddr:
	.value	-32768
# dataaddr:
	.value	-4096
# nconfig:
	.byte	2
# ncalib:
	.byte	2
# nlatches:
	.byte	32
# erasesize:
	.byte	32
# devicename:
	.string	"PIC16LF1513"
	.zero	1012
# deviceid:
	.value	5952
# flash:
	.value	4096
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	41442
# configaddr:
	.value	-32768
# dataaddr:
	.value	-4096
# nconfig:
	.byte	2
# ncalib:
	.byte	2
# nlatches:
	.byte	32
# erasesize:
	.byte	32
# devicename:
	.string	"PIC16LF1512"
	.zero	1012
# deviceid:
	.value	5920
# flash:
	.value	2048
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	41442
# configaddr:
	.value	-32768
# dataaddr:
	.value	-4096
# nconfig:
	.byte	2
# ncalib:
	.byte	2
# nlatches:
	.byte	32
# erasesize:
	.byte	32
# devicename:
	.string	"PIC12F752"
	.zero	1014
# deviceid:
	.value	5376
# flash:
	.value	1024
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	41561
# configaddr:
	.value	8192
# dataaddr:
	.value	8448
# nconfig:
	.byte	1
# ncalib:
	.byte	2
# nlatches:
	.byte	4
# erasesize:
	.byte	16
# devicename:
	.string	"PIC12HV752"
	.zero	1013
# deviceid:
	.value	5408
# flash:
	.value	1024
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	41561
# configaddr:
	.value	8192
# dataaddr:
	.value	8448
# nconfig:
	.byte	1
# ncalib:
	.byte	2
# nlatches:
	.byte	4
# erasesize:
	.byte	16
# devicename:
	.string	"PIC12LF1552"
	.zero	1012
# deviceid:
	.value	11200
# flash:
	.value	2048
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	41642
# configaddr:
	.value	-32768
# dataaddr:
	.value	-4096
# nconfig:
	.byte	2
# ncalib:
	.byte	2
# nlatches:
	.byte	16
# erasesize:
	.byte	16
# devicename:
	.string	"PIC16LF1554"
	.zero	1012
# deviceid:
	.value	12032
# flash:
	.value	4096
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	40001743
# configaddr:
	.value	-32768
# dataaddr:
	.value	-4096
# nconfig:
	.byte	2
# ncalib:
	.byte	2
# nlatches:
	.byte	32
# erasesize:
	.byte	32
# devicename:
	.string	"PIC16LF1559"
	.zero	1012
# deviceid:
	.value	12064
# flash:
	.value	8192
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	40001743
# configaddr:
	.value	-32768
# dataaddr:
	.value	-4096
# nconfig:
	.byte	2
# ncalib:
	.byte	2
# nlatches:
	.byte	32
# erasesize:
	.byte	32
# devicename:
	.string	"PIC16F753"
	.zero	1014
# deviceid:
	.value	12336
# flash:
	.value	2048
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	41686
# configaddr:
	.value	8192
# dataaddr:
	.value	8448
# nconfig:
	.byte	1
# ncalib:
	.byte	2
# nlatches:
	.byte	4
# erasesize:
	.byte	16
# devicename:
	.string	"PIC16HV752"
	.zero	1013
# deviceid:
	.value	12337
# flash:
	.value	2048
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	41686
# configaddr:
	.value	8192
# dataaddr:
	.value	8448
# nconfig:
	.byte	1
# ncalib:
	.byte	2
# nlatches:
	.byte	4
# erasesize:
	.byte	16
# devicename:
	.string	"PIC16F785"
	.zero	1014
# deviceid:
	.value	4608
# flash:
	.value	2048
# eeprom:
	.value	256
# datasheet:
	.zero	2
	.long	41237
# configaddr:
	.value	8192
# dataaddr:
	.value	8448
# nconfig:
	.byte	1
# ncalib:
	.byte	2
# nlatches:
	.byte	4
# erasesize:
	.byte	16
# devicename:
	.string	"PIC16HV785"
	.zero	1013
# deviceid:
	.value	4640
# flash:
	.value	2048
# eeprom:
	.value	256
# datasheet:
	.zero	2
	.long	41237
# configaddr:
	.value	8192
# dataaddr:
	.value	8448
# nconfig:
	.byte	1
# ncalib:
	.byte	2
# nlatches:
	.byte	4
# erasesize:
	.byte	16
# devicename:
	.string	"PIC16F1703"
	.zero	1013
# deviceid:
	.value	12385
# flash:
	.value	2048
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	40001683
# configaddr:
	.value	-32768
# dataaddr:
	.value	-4096
# nconfig:
	.byte	2
# ncalib:
	.byte	4
# nlatches:
	.byte	16
# erasesize:
	.byte	16
# devicename:
	.string	"PIC16F1704"
	.zero	1013
# deviceid:
	.value	12355
# flash:
	.value	4096
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	40001683
# configaddr:
	.value	-32768
# dataaddr:
	.value	-4096
# nconfig:
	.byte	2
# ncalib:
	.byte	8
# nlatches:
	.byte	32
# erasesize:
	.byte	32
# devicename:
	.string	"PIC16F1705"
	.zero	1013
# deviceid:
	.value	12373
# flash:
	.value	8192
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	40001683
# configaddr:
	.value	-32768
# dataaddr:
	.value	-4096
# nconfig:
	.byte	2
# ncalib:
	.byte	8
# nlatches:
	.byte	32
# erasesize:
	.byte	32
# devicename:
	.string	"PIC16F1707"
	.zero	1013
# deviceid:
	.value	12384
# flash:
	.value	2048
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	40001683
# configaddr:
	.value	-32768
# dataaddr:
	.value	-4096
# nconfig:
	.byte	2
# ncalib:
	.byte	4
# nlatches:
	.byte	16
# erasesize:
	.byte	16
# devicename:
	.string	"PIC16F1708"
	.zero	1013
# deviceid:
	.value	12354
# flash:
	.value	4096
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	40001683
# configaddr:
	.value	-32768
# dataaddr:
	.value	-4096
# nconfig:
	.byte	2
# ncalib:
	.byte	8
# nlatches:
	.byte	32
# erasesize:
	.byte	32
# devicename:
	.string	"PIC16F1709"
	.zero	1013
# deviceid:
	.value	12372
# flash:
	.value	8192
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	40001683
# configaddr:
	.value	-32768
# dataaddr:
	.value	-4096
# nconfig:
	.byte	2
# ncalib:
	.byte	8
# nlatches:
	.byte	32
# erasesize:
	.byte	32
# devicename:
	.string	"PIC16LF1703"
	.zero	1012
# deviceid:
	.value	12387
# flash:
	.value	2048
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	40001683
# configaddr:
	.value	-32768
# dataaddr:
	.value	-4096
# nconfig:
	.byte	2
# ncalib:
	.byte	4
# nlatches:
	.byte	16
# erasesize:
	.byte	16
# devicename:
	.string	"PIC16LF1704"
	.zero	1012
# deviceid:
	.value	12357
# flash:
	.value	4096
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	40001683
# configaddr:
	.value	-32768
# dataaddr:
	.value	-4096
# nconfig:
	.byte	2
# ncalib:
	.byte	8
# nlatches:
	.byte	32
# erasesize:
	.byte	32
# devicename:
	.string	"PIC16LF1705"
	.zero	1012
# deviceid:
	.value	12375
# flash:
	.value	8192
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	40001683
# configaddr:
	.value	-32768
# dataaddr:
	.value	-4096
# nconfig:
	.byte	2
# ncalib:
	.byte	8
# nlatches:
	.byte	32
# erasesize:
	.byte	32
# devicename:
	.string	"PIC16LF1707"
	.zero	1012
# deviceid:
	.value	12386
# flash:
	.value	2048
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	40001683
# configaddr:
	.value	-32768
# dataaddr:
	.value	-4096
# nconfig:
	.byte	2
# ncalib:
	.byte	4
# nlatches:
	.byte	16
# erasesize:
	.byte	16
# devicename:
	.string	"PIC16LF1708"
	.zero	1012
# deviceid:
	.value	12356
# flash:
	.value	4096
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	40001683
# configaddr:
	.value	-32768
# dataaddr:
	.value	-4096
# nconfig:
	.byte	2
# ncalib:
	.byte	8
# nlatches:
	.byte	32
# erasesize:
	.byte	32
# devicename:
	.string	"PIC16LF1709"
	.zero	1012
# deviceid:
	.value	12374
# flash:
	.value	8192
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	40001683
# configaddr:
	.value	-32768
# dataaddr:
	.value	-4096
# nconfig:
	.byte	2
# ncalib:
	.byte	8
# nlatches:
	.byte	32
# erasesize:
	.byte	32
# devicename:
	.string	"PIC12F1612"
	.zero	1013
# deviceid:
	.value	12376
# flash:
	.value	2048
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	40001720
# configaddr:
	.value	-32768
# dataaddr:
	.value	-4096
# nconfig:
	.byte	3
# ncalib:
	.byte	3
# nlatches:
	.byte	16
# erasesize:
	.byte	16
# devicename:
	.string	"PIC12LF1612"
	.zero	1012
# deviceid:
	.value	12377
# flash:
	.value	2048
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	40001720
# configaddr:
	.value	-32768
# dataaddr:
	.value	-4096
# nconfig:
	.byte	3
# ncalib:
	.byte	3
# nlatches:
	.byte	16
# erasesize:
	.byte	16
# devicename:
	.string	"PIC16F1613"
	.zero	1013
# deviceid:
	.value	12364
# flash:
	.value	2048
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	40001720
# configaddr:
	.value	-32768
# dataaddr:
	.value	-4096
# nconfig:
	.byte	3
# ncalib:
	.byte	3
# nlatches:
	.byte	16
# erasesize:
	.byte	16
# devicename:
	.string	"PIC16LF1613"
	.zero	1012
# deviceid:
	.value	12365
# flash:
	.value	2048
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	40001720
# configaddr:
	.value	-32768
# dataaddr:
	.value	-4096
# nconfig:
	.byte	3
# ncalib:
	.byte	3
# nlatches:
	.byte	16
# erasesize:
	.byte	16
# devicename:
	.string	"PIC16F1713"
	.zero	1013
# deviceid:
	.value	12361
# flash:
	.value	4096
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	40001714
# configaddr:
	.value	-32768
# dataaddr:
	.value	-4096
# nconfig:
	.byte	2
# ncalib:
	.byte	8
# nlatches:
	.byte	32
# erasesize:
	.byte	32
# devicename:
	.string	"PIC16F1716"
	.zero	1013
# deviceid:
	.value	12360
# flash:
	.value	8192
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	40001714
# configaddr:
	.value	-32768
# dataaddr:
	.value	-4096
# nconfig:
	.byte	2
# ncalib:
	.byte	8
# nlatches:
	.byte	32
# erasesize:
	.byte	32
# devicename:
	.string	"PIC16F1717"
	.zero	1013
# deviceid:
	.value	12380
# flash:
	.value	8192
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	40001714
# configaddr:
	.value	-32768
# dataaddr:
	.value	-4096
# nconfig:
	.byte	2
# ncalib:
	.byte	8
# nlatches:
	.byte	32
# erasesize:
	.byte	32
# devicename:
	.string	"PIC16F1718"
	.zero	1013
# deviceid:
	.value	12379
# flash:
	.value	16384
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	40001714
# configaddr:
	.value	-32768
# dataaddr:
	.value	-4096
# nconfig:
	.byte	2
# ncalib:
	.byte	8
# nlatches:
	.byte	32
# erasesize:
	.byte	32
# devicename:
	.string	"PIC16F1719"
	.zero	1013
# deviceid:
	.value	12378
# flash:
	.value	16384
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	40001714
# configaddr:
	.value	-32768
# dataaddr:
	.value	-4096
# nconfig:
	.byte	2
# ncalib:
	.byte	8
# nlatches:
	.byte	32
# erasesize:
	.byte	32
# devicename:
	.string	"PIC16LF1713"
	.zero	1012
# deviceid:
	.value	12363
# flash:
	.value	4096
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	40001714
# configaddr:
	.value	-32768
# dataaddr:
	.value	-4096
# nconfig:
	.byte	2
# ncalib:
	.byte	8
# nlatches:
	.byte	32
# erasesize:
	.byte	32
# devicename:
	.string	"PIC16LF1716"
	.zero	1012
# deviceid:
	.value	12362
# flash:
	.value	8192
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	40001714
# configaddr:
	.value	-32768
# dataaddr:
	.value	-4096
# nconfig:
	.byte	2
# ncalib:
	.byte	8
# nlatches:
	.byte	32
# erasesize:
	.byte	32
# devicename:
	.string	"PIC16LF1717"
	.zero	1012
# deviceid:
	.value	12383
# flash:
	.value	8192
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	40001714
# configaddr:
	.value	-32768
# dataaddr:
	.value	-4096
# nconfig:
	.byte	2
# ncalib:
	.byte	8
# nlatches:
	.byte	32
# erasesize:
	.byte	32
# devicename:
	.string	"PIC16LF1718"
	.zero	1012
# deviceid:
	.value	12382
# flash:
	.value	16384
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	40001714
# configaddr:
	.value	-32768
# dataaddr:
	.value	-4096
# nconfig:
	.byte	2
# ncalib:
	.byte	8
# nlatches:
	.byte	32
# erasesize:
	.byte	32
# devicename:
	.string	"PIC16LF1719"
	.zero	1012
# deviceid:
	.value	12381
# flash:
	.value	16384
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	40001714
# configaddr:
	.value	-32768
# dataaddr:
	.value	-4096
# nconfig:
	.byte	2
# ncalib:
	.byte	8
# nlatches:
	.byte	32
# erasesize:
	.byte	32
# devicename:
	.string	"PIC12F1571"
	.zero	1013
# deviceid:
	.value	12369
# flash:
	.value	1024
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	40001713
# configaddr:
	.value	-32768
# dataaddr:
	.value	-4096
# nconfig:
	.byte	2
# ncalib:
	.byte	3
# nlatches:
	.byte	16
# erasesize:
	.byte	16
# devicename:
	.string	"PIC12LF1571"
	.zero	1012
# deviceid:
	.value	12371
# flash:
	.value	1024
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	40001713
# configaddr:
	.value	-32768
# dataaddr:
	.value	-4096
# nconfig:
	.byte	2
# ncalib:
	.byte	3
# nlatches:
	.byte	16
# erasesize:
	.byte	16
# devicename:
	.string	"PIC12F1572"
	.zero	1013
# deviceid:
	.value	12368
# flash:
	.value	2048
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	40001713
# configaddr:
	.value	-32768
# dataaddr:
	.value	-4096
# nconfig:
	.byte	2
# ncalib:
	.byte	3
# nlatches:
	.byte	16
# erasesize:
	.byte	16
# devicename:
	.string	"PIC12LF1572"
	.zero	1012
# deviceid:
	.value	12370
# flash:
	.value	2048
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	40001713
# configaddr:
	.value	-32768
# dataaddr:
	.value	-4096
# nconfig:
	.byte	2
# ncalib:
	.byte	3
# nlatches:
	.byte	16
# erasesize:
	.byte	16
# devicename:
	.string	"(null)"
	.zero	1017
# deviceid:
	.value	0
# flash:
	.value	0
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	0
# configaddr:
	.value	0
# dataaddr:
	.value	0
# nconfig:
	.byte	0
# ncalib:
	.byte	0
# nlatches:
	.byte	0
# erasesize:
	.byte	0
	.comm	pic14_conf,84,16
	.globl	pic14_ops
	.align 16
	.type	pic14_ops, @object
	.size	pic14_ops, 160
pic14_ops:
# arch:
	.long	16383
# selector:
	.zero	4
	.quad	pic14_selector
# read_config_memory:
	.quad	pic14_read_config_memory
# get_program_size:
	.quad	pic14_get_program_size
# get_data_size:
	.quad	pic14_get_data_size
# get_executive_size:
	.quad	0
# read_program_memory_block:
	.quad	pic14_read_program_memory_block
# read_data_memory_block:
	.quad	pic14_read_data_memory_block
# program:
	.quad	pic14_program
# verify:
	.quad	pic14_verify
# bulk_erase:
	.quad	pic14_bulk_erase
# row_erase:
	.quad	pic14_row_erase
# dumpdeviceid:
	.quad	pic14_dumpdeviceid
# dumpconfig:
	.quad	pic14_dumpconfig
# dumposccal:
	.quad	pic14_dumposccal
# dumpdevice:
	.quad	pic14_dumpdevice
# dumphexcode:
	.quad	pic14_dumphexcode
# dumpinhxcode:
	.quad	pic14_dumpinhxcode
# dumphexdata:
	.quad	pic14_dumphexdata
# dumpinhxdata:
	.quad	pic14_dumpinhxdata
	.section	.rodata
	.align 16
	.type	__func__.5855, @object
	.size	__func__.5855, 17
__func__.5855:
	.string	"pic14_bulk_erase"
	.align 16
	.type	__func__.5903, @object
	.size	__func__.5903, 16
__func__.5903:
	.string	"pic14_row_erase"
	.align 16
	.type	__func__.5931, @object
	.size	__func__.5931, 25
__func__.5931:
	.string	"pic14_read_config_memory"
	.align 16
	.type	__func__.6018, @object
	.size	__func__.6018, 17
__func__.6018:
	.string	"pic14_write_word"
	.align 16
	.type	__func__.6022, @object
	.size	__func__.6022, 18
__func__.6022:
	.string	"pic14_read_osccal"
	.align 16
	.type	__func__.6032, @object
	.size	__func__.6032, 19
__func__.6032:
	.string	"pic14_write_osccal"
	.align 16
	.type	__func__.6062, @object
	.size	__func__.6062, 19
__func__.6062:
	.string	"pic14_write_config"
	.align 16
	.type	__func__.6074, @object
	.size	__func__.6074, 16
__func__.6074:
	.string	"pic14_getregion"
	.align 16
	.type	__func__.6084, @object
	.size	__func__.6084, 17
__func__.6084:
	.string	"pic14_initregion"
	.align 16
	.type	__func__.6096, @object
	.size	__func__.6096, 17
__func__.6096:
	.string	"pic14_loadregion"
	.align 16
	.type	__func__.6105, @object
	.size	__func__.6105, 20
__func__.6105:
	.string	"pic14_programregion"
	.local	write_pending.6103
	.comm	write_pending.6103,4,4
	.align 16
	.type	__func__.6119, @object
	.size	__func__.6119, 19
__func__.6119:
	.string	"pic14_verifyregion"
	.align 8
	.type	__func__.6143, @object
	.size	__func__.6143, 14
__func__.6143:
	.string	"pic14_program"
	.align 16
	.type	__func__.6182, @object
	.size	__func__.6182, 17
__func__.6182:
	.string	"pic14_dumposccal"
	.align 16
	.type	__func__.6210, @object
	.size	__func__.6210, 18
__func__.6210:
	.string	"pic14_dumphexcode"
	.align 16
	.type	__func__.6248, @object
	.size	__func__.6248, 18
__func__.6248:
	.string	"pic14_dumphexdata"
	.ident	"GCC: (Ubuntu/Linaro 4.7.2-2ubuntu1) 4.7.2"
	.section	.note.GNU-stack,"",@progbits
