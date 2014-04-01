	.file	"pic24.c"
# GNU C (Ubuntu/Linaro 4.7.2-2ubuntu1) version 4.7.2 (x86_64-linux-gnu)
#	compiled by GNU C version 4.7.2, GMP version 5.0.2, MPFR version 3.1.0-p3, MPC version 0.9
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# angegebene Optionen:  -fpreprocessed pic24.i -mtune=generic -march=x86-64
# -auxbase-strip pic24.o -Os -pedantic-errors -Wall -std=gnu99
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
	.globl	pic24_get_program_size
	.type	pic24_get_program_size, @function
pic24_get_program_size:
.LFB65:
	.cfi_startproc
	movl	$0, (%rdi)	#, *addr_1(D)
	movl	pic24_index(%rip), %eax	# pic24_index, pic24_index
	imulq	$1064, %rax, %rax	#, pic24_index, tmp66
	movl	pic24_map+1028(%rax), %eax	# pic24_map[pic24_index.33_2].flash, pic24_map[pic24_index.33_2].flash
	ret
	.cfi_endproc
.LFE65:
	.size	pic24_get_program_size, .-pic24_get_program_size
	.globl	pic24_get_data_size
	.type	pic24_get_data_size, @function
pic24_get_data_size:
.LFB66:
	.cfi_startproc
	movl	pic24_index(%rip), %eax	# pic24_index, pic24_index
	imulq	$1064, %rax, %rax	#, pic24_index, tmp75
	movl	pic24_map+1032(%rax), %eax	# pic24_map[pic24_index.32_1].eeprom, D.7160
	testw	%ax, %ax	# D.7160
	je	.L3	#,
	movzwl	%ax, %edx	# D.7160, D.7160
	movl	$8388608, %eax	#, tmp79
	subl	%edx, %eax	# D.7160, tmp79
	movl	%eax, (%rdi)	# tmp79, *addr_8(D)
	jmp	.L4	#
.L3:
	movl	$0, (%rdi)	#, *addr_8(D)
.L4:
	movl	pic24_index(%rip), %eax	# pic24_index, pic24_index
	imulq	$1064, %rax, %rax	#, pic24_index, tmp83
	movzwl	pic24_map+1032(%rax), %eax	# pic24_map[pic24_index.32_9].eeprom, pic24_map[pic24_index.32_9].eeprom
	ret
	.cfi_endproc
.LFE66:
	.size	pic24_get_data_size, .-pic24_get_data_size
	.globl	pic24_get_executive_size
	.type	pic24_get_executive_size, @function
pic24_get_executive_size:
.LFB67:
	.cfi_startproc
	movl	$8388608, (%rdi)	#, *addr_3(D)
	movl	pic24_index(%rip), %eax	# pic24_index, pic24_index
	imulq	$1064, %rax, %rax	#, pic24_index, tmp70
	movl	pic24_map+1036(%rax), %edx	# pic24_map[pic24_index.31_4].datasheet, D.7146
	cmpl	$70284, %edx	#, D.7146
	je	.L7	#,
	cmpl	$70102, %edx	#, D.7146
	je	.L7	#,
	cmpl	$70663, %edx	#, D.7146
	movl	$4096, %eax	#, size
	movl	$2048, %edx	#, tmp77
	cmovne	%edx, %eax	# tmp77,, size
	jmp	.L6	#
.L7:
	movl	$1536, %eax	#, size
.L6:
	shrl	%eax	# tmp76
	ret
	.cfi_endproc
.LFE67:
	.size	pic24_get_executive_size, .-pic24_get_executive_size
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC6:
	.string	"[%06X] %-10s %04X\n"
.LC7:
	.string	"[%06X] %-10s %02X\n"
.LC8:
	.string	"[%06X] [CONFIG2]  %04X\n"
.LC9:
	.string	"[%06X] [CONFIG1]  %04X\n"
.LC10:
	.string	"[%06X] [CONFIG4]  %04X\n"
.LC11:
	.string	"[%06X] [CONFIG3]  %04X\n"
.LC12:
	.string	"[UNIMPLEMENTED]"
	.section	.rodata
	.align 16
.LC0:
	.string	"[FOSC]"
	.zero	3
	.string	"[FWDT]"
	.zero	3
	.string	"[FBORPOR]"
	.string	"[FBS]"
	.zero	4
	.string	"[FSS]"
	.zero	4
	.string	"[FGS]"
	.zero	4
	.string	"[FICD]"
	.zero	3
	.align 16
.LC1:
	.string	"[FBS]"
	.zero	5
	.string	"[RESERVED]"
	.string	"[FGS]"
	.zero	5
	.string	"[FOSCSEL]"
	.zero	1
	.string	"[FOSC]"
	.zero	4
	.string	"[FWDT]"
	.zero	4
	.string	"[FPOR]"
	.zero	4
	.string	"[FICD]"
	.zero	4
	.align 16
.LC2:
	.string	"[FBS]"
	.zero	4
	.string	"[FSS]"
	.zero	4
	.string	"[FGS]"
	.zero	4
	.string	"[FOSCSEL]"
	.string	"[FOSC]"
	.zero	3
	.string	"[FWDT]"
	.zero	3
	.string	"[FPOR]"
	.zero	3
	.string	"[FICD]"
	.zero	3
	.string	"[FCMP]"
	.zero	3
	.align 16
.LC3:
	.string	"[FBS]"
	.zero	5
	.string	"[RESERVED]"
	.string	"[FGS]"
	.zero	5
	.string	"[FOSCSEL]"
	.zero	1
	.string	"[FOSC]"
	.zero	4
	.string	"[FWDT]"
	.zero	4
	.string	"[FPOR]"
	.zero	4
	.string	"[FICD]"
	.zero	4
	.string	"[FDS]"
	.zero	5
	.align 16
.LC4:
	.string	"[FICD]"
	.zero	4
	.string	"[RESERVED]"
	.string	"[FWDT]"
	.zero	4
	.string	"[FOSC]"
	.zero	4
	.string	"[FOSCSEL]"
	.zero	1
	.string	"[FGS]"
	.zero	5
	.string	"[RESERVED]"
	.string	"[RESERVED]"
	.align 16
.LC5:
	.string	"[RESERVED]"
	.string	"[RESERVED]"
	.string	"[FICD]"
	.zero	4
	.string	"[FPOR]"
	.zero	4
	.string	"[FWDT]"
	.zero	4
	.string	"[FOSC]"
	.zero	4
	.string	"[FOSCSEL]"
	.zero	1
	.string	"[FGS]"
	.zero	5
	.string	"[RESERVED]"
	.string	"[RESERVED]"
	.text
	.globl	pic24_dumpconfig
	.type	pic24_dumpconfig, @function
pic24_dumpconfig:
.LFB92:
	.cfi_startproc
	pushq	%rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	subq	$112, %rsp	#,
	.cfi_def_cfa_offset 128
	movl	pic24_index(%rip), %ecx	# pic24_index, pic24_index.6
	movl	%ecx, %edx	# pic24_index.6, pic24_index.6
	imulq	$1064, %rdx, %rdx	#, pic24_index.6, tmp209
	movl	pic24_map+1036(%rdx), %eax	# pic24_map[pic24_index.6_7].datasheet, D.6514
	cmpl	$70102, %eax	#, D.6514
	jne	.L10	#,
	leaq	2(%rsp), %rdi	#, tmp211
	movl	$.LC0, %esi	#, tmp212
	movl	$70, %ecx	#, tmp213
	xorl	%ebx, %ebx	# ivtmp.127
	rep movsb
	jmp	.L11	#
.L12:
	movl	%ebx, %ecx	# ivtmp.127, i
	movl	pic24_map+1040(%rax), %eax	# pic24_map[pic24_index.6_10].configaddr, pic24_map[pic24_index.6_10].configaddr
	leaq	2(%rsp), %rdx	#,
	imulq	$10, %rcx, %rcx	#, i, tmp218
	movl	pic24_conf+36(,%rbx,4), %r8d	# MEM[symbol: pic24_conf, index: ivtmp.127_212, step: 4, offset: 36B],
	movl	$.LC6, %esi	#,
	movl	$1, %edi	#,
	addq	%rdx, %rcx	#, tmp219
	leal	(%rax,%rbx,2), %edx	#, tmp225
	xorl	%eax, %eax	#
	incq	%rbx	# ivtmp.127
	call	__printf_chk	#
.L11:
	movl	pic24_index(%rip), %eax	# pic24_index, pic24_index.6
	imulq	$1064, %rax, %rax	#, pic24_index.6, tmp229
	movzbl	pic24_map+1044(%rax), %edx	# pic24_map[pic24_index.6_10].nconfig, pic24_map[pic24_index.6_10].nconfig
	cmpl	%edx, %ebx	# pic24_map[pic24_index.6_10].nconfig, ivtmp.127
	jb	.L12	#,
	jmp	.L9	#
.L10:
	cmpl	$70284, %eax	#, D.6514
	jne	.L14	#,
	leaq	2(%rsp), %rdi	#, tmp232
	movl	$.LC1, %esi	#, tmp233
	movl	$22, %ecx	#, tmp234
	xorl	%ebx, %ebx	# ivtmp.142
	rep movsl
	jmp	.L15	#
.L16:
	movl	%ebx, %ecx	# ivtmp.142, i
	movl	pic24_map+1040(%rax), %eax	# pic24_map[pic24_index.6_23].configaddr, pic24_map[pic24_index.6_23].configaddr
	leaq	2(%rsp), %rdx	#,
	imulq	$11, %rcx, %rcx	#, i, tmp240
	movzbl	pic24_conf+36(,%rbx,4), %r8d	# MEM[symbol: pic24_conf, index: ivtmp.142_19, step: 4, offset: 36B],
	movl	$.LC7, %esi	#,
	movl	$1, %edi	#,
	addq	%rdx, %rcx	#, tmp241
	leal	(%rax,%rbx,2), %edx	#, tmp247
	xorl	%eax, %eax	#
	incq	%rbx	# ivtmp.142
	call	__printf_chk	#
.L15:
	movl	pic24_index(%rip), %eax	# pic24_index, pic24_index.6
	imulq	$1064, %rax, %rax	#, pic24_index.6, tmp251
	movzbl	pic24_map+1044(%rax), %edx	# pic24_map[pic24_index.6_23].nconfig, pic24_map[pic24_index.6_23].nconfig
	cmpl	%edx, %ebx	# pic24_map[pic24_index.6_23].nconfig, ivtmp.142
	jb	.L16	#,
	jmp	.L9	#
.L14:
	cmpl	$70152, %eax	#, D.6514
	jne	.L17	#,
	leaq	2(%rsp), %rdi	#, tmp254
	movl	$.LC2, %esi	#, tmp255
	movl	$90, %ecx	#, tmp256
	xorl	%ebx, %ebx	# ivtmp.156
	rep movsb
	jmp	.L18	#
.L19:
	movl	%ebx, %ecx	# ivtmp.156, i
	movl	pic24_map+1040(%rax), %eax	# pic24_map[pic24_index.6_37].configaddr, pic24_map[pic24_index.6_37].configaddr
	leaq	2(%rsp), %rdx	#,
	imulq	$10, %rcx, %rcx	#, i, tmp262
	movzbl	pic24_conf+36(,%rbx,4), %r8d	# MEM[symbol: pic24_conf, index: ivtmp.156_33, step: 4, offset: 36B],
	movl	$.LC7, %esi	#,
	movl	$1, %edi	#,
	addq	%rdx, %rcx	#, tmp263
	leal	(%rax,%rbx,2), %edx	#, tmp269
	xorl	%eax, %eax	#
	incq	%rbx	# ivtmp.156
	call	__printf_chk	#
.L18:
	movl	pic24_index(%rip), %eax	# pic24_index, pic24_index.6
	imulq	$1064, %rax, %rax	#, pic24_index.6, tmp273
	movzbl	pic24_map+1044(%rax), %edx	# pic24_map[pic24_index.6_37].nconfig, pic24_map[pic24_index.6_37].nconfig
	cmpl	%edx, %ebx	# pic24_map[pic24_index.6_37].nconfig, ivtmp.156
	jb	.L19	#,
	jmp	.L9	#
.L17:
	cmpl	$30625, %eax	#, D.6514
	je	.L34	#,
	cmpl	$39919, %eax	#, D.6514
	jne	.L20	#,
.L34:
	leaq	2(%rsp), %rdi	#, tmp280
	movl	$.LC3, %esi	#, tmp281
	movl	$99, %ecx	#, tmp282
	xorl	%ebx, %ebx	# ivtmp.170
	rep movsb
	jmp	.L22	#
.L23:
	movl	%ebx, %ecx	# ivtmp.170, i
	movl	pic24_map+1040(%rax), %eax	# pic24_map[pic24_index.6_54].configaddr, pic24_map[pic24_index.6_54].configaddr
	leaq	2(%rsp), %rdx	#,
	imulq	$11, %rcx, %rcx	#, i, tmp288
	movzbl	pic24_conf+36(,%rbx,4), %r8d	# MEM[symbol: pic24_conf, index: ivtmp.170_47, step: 4, offset: 36B],
	movl	$.LC7, %esi	#,
	movl	$1, %edi	#,
	addq	%rdx, %rcx	#, tmp289
	leal	(%rax,%rbx,2), %edx	#, tmp295
	xorl	%eax, %eax	#
	incq	%rbx	# ivtmp.170
	call	__printf_chk	#
.L22:
	movl	pic24_index(%rip), %eax	# pic24_index, pic24_index.6
	imulq	$1064, %rax, %rax	#, pic24_index.6, tmp299
	movzbl	pic24_map+1044(%rax), %edx	# pic24_map[pic24_index.6_54].nconfig, pic24_map[pic24_index.6_54].nconfig
	cmpl	%edx, %ebx	# pic24_map[pic24_index.6_54].nconfig, ivtmp.170
	jb	.L23	#,
	jmp	.L9	#
.L20:
	cmpl	$75012, %eax	#, D.6514
	je	.L35	#,
	cmpl	$70659, %eax	#, D.6514
	jne	.L24	#,
.L35:
	movl	%ecx, %eax	# pic24_index.6, pic24_index.6
	imulq	$1064, %rax, %rax	#, pic24_index.6, tmp308
	cmpb	$2, pic24_map+1044(%rax)	#, pic24_map[pic24_index.6_7].nconfig
	jne	.L26	#,
	movl	pic24_conf+36(%rip), %ecx	# pic24_conf.config,
	movl	pic24_map+1040(%rax), %edx	# pic24_map[pic24_index.6_7].configaddr,
	jmp	.L38	#
.L26:
	leaq	2(%rsp), %rdi	#, tmp322
	movl	$.LC4, %esi	#, tmp323
	movl	$22, %ecx	#, tmp324
	xorl	%ebx, %ebx	# ivtmp.184
	rep movsl
	jmp	.L27	#
.L28:
	movl	%ebx, %ecx	# ivtmp.184, i
	movl	pic24_map+1040(%rax), %eax	# pic24_map[pic24_index.6_80].configaddr, pic24_map[pic24_index.6_80].configaddr
	leaq	2(%rsp), %rdx	#,
	imulq	$11, %rcx, %rcx	#, i, tmp330
	movzbl	pic24_conf+36(,%rbx,4), %r8d	# MEM[symbol: pic24_conf, index: ivtmp.184_64, step: 4, offset: 36B],
	movl	$.LC7, %esi	#,
	movl	$1, %edi	#,
	addq	%rdx, %rcx	#, tmp331
	leal	(%rax,%rbx,2), %edx	#, tmp337
	xorl	%eax, %eax	#
	incq	%rbx	# ivtmp.184
	call	__printf_chk	#
.L27:
	movl	pic24_index(%rip), %eax	# pic24_index, pic24_index.6
	imulq	$1064, %rax, %rax	#, pic24_index.6, tmp341
	movzbl	pic24_map+1044(%rax), %edx	# pic24_map[pic24_index.6_80].nconfig, pic24_map[pic24_index.6_80].nconfig
	cmpl	%edx, %ebx	# pic24_map[pic24_index.6_80].nconfig, ivtmp.184
	jb	.L28	#,
	jmp	.L9	#
.L24:
	cmpl	$39786, %eax	#, D.6514
	jne	.L29	#,
	movl	pic24_conf+36(%rip), %ecx	# pic24_conf.config,
	movl	pic24_map+1040(%rdx), %edx	# pic24_map[pic24_index.6_7].configaddr,
.L38:
	movl	$.LC8, %esi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	movl	pic24_index(%rip), %eax	# pic24_index, pic24_index
	movl	pic24_conf+40(%rip), %ecx	# pic24_conf.config,
	imulq	$1064, %rax, %rax	#, pic24_index, tmp352
	movl	pic24_map+1040(%rax), %edx	#, pic24_map[pic24_index.6_97].configaddr
	addl	$2, %edx	#, tmp354
	jmp	.L37	#
.L29:
	cmpl	$39934, %eax	#, D.6514
	jne	.L30	#,
	movl	pic24_conf+36(%rip), %ecx	# pic24_conf.config,
	movl	pic24_map+1040(%rdx), %edx	# pic24_map[pic24_index.6_7].configaddr,
	movl	$.LC10, %esi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	movl	pic24_index(%rip), %eax	# pic24_index, pic24_index
	movl	pic24_conf+40(%rip), %ecx	# pic24_conf.config,
	movl	$.LC11, %esi	#,
	movl	$1, %edi	#,
	imulq	$1064, %rax, %rax	#, pic24_index, tmp364
	movl	pic24_map+1040(%rax), %edx	# pic24_map[pic24_index.6_106].configaddr, pic24_map[pic24_index.6_106].configaddr
	xorl	%eax, %eax	#
	addl	$2, %edx	#, tmp366
	call	__printf_chk	#
	movl	pic24_index(%rip), %eax	# pic24_index, pic24_index
	movl	pic24_conf+44(%rip), %ecx	# pic24_conf.config,
	movl	$.LC8, %esi	#,
	movl	$1, %edi	#,
	imulq	$1064, %rax, %rax	#, pic24_index, tmp371
	movl	pic24_map+1040(%rax), %edx	# pic24_map[pic24_index.6_110].configaddr, pic24_map[pic24_index.6_110].configaddr
	xorl	%eax, %eax	#
	addl	$4, %edx	#, tmp373
	call	__printf_chk	#
	movl	pic24_index(%rip), %eax	# pic24_index, pic24_index
	movl	pic24_conf+48(%rip), %ecx	# pic24_conf.config,
	imulq	$1064, %rax, %rax	#, pic24_index, tmp378
	movl	pic24_map+1040(%rax), %edx	# pic24_map[pic24_index.6_114].configaddr, pic24_map[pic24_index.6_114].configaddr
	addl	$6, %edx	#, tmp380
.L37:
	movl	$.LC9, %esi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	jmp	.L9	#
.L30:
	cmpl	$70663, %eax	#, D.6514
	jne	.L31	#,
	leaq	2(%rsp), %rdi	#, tmp382
	movl	$.LC5, %esi	#, tmp383
	movl	$110, %ecx	#, tmp384
	xorl	%ebx, %ebx	# ivtmp.198
	rep movsb
	jmp	.L32	#
.L33:
	movl	%ebx, %ecx	# ivtmp.198, i
	movl	pic24_map+1040(%rax), %eax	# pic24_map[pic24_index.6_120].configaddr, pic24_map[pic24_index.6_120].configaddr
	leaq	2(%rsp), %rdx	#,
	imulq	$11, %rcx, %rcx	#, i, tmp390
	movzbl	pic24_conf+36(,%rbx,4), %r8d	# MEM[symbol: pic24_conf, index: ivtmp.198_90, step: 4, offset: 36B],
	movl	$.LC7, %esi	#,
	movl	$1, %edi	#,
	addq	%rdx, %rcx	#, tmp391
	leal	(%rax,%rbx,2), %edx	#, tmp397
	xorl	%eax, %eax	#
	incq	%rbx	# ivtmp.198
	call	__printf_chk	#
.L32:
	movl	pic24_index(%rip), %eax	# pic24_index, pic24_index.6
	imulq	$1064, %rax, %rax	#, pic24_index.6, tmp401
	movzbl	pic24_map+1044(%rax), %edx	# pic24_map[pic24_index.6_120].nconfig, pic24_map[pic24_index.6_120].nconfig
	cmpl	%edx, %ebx	# pic24_map[pic24_index.6_120].nconfig, ivtmp.198
	jb	.L33	#,
	jmp	.L9	#
.L31:
	movl	$.LC12, %edi	#,
	call	puts	#
.L9:
	addq	$112, %rsp	#,
	.cfi_def_cfa_offset 16
	popq	%rbx	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE92:
	.size	pic24_dumpconfig, .-pic24_dumpconfig
	.section	.rodata.str1.1
.LC13:
	.string	"[000000] [PROGRAM]  %04X WORDS\n"
.LC14:
	.string	"[%06X] [DATA]     %04X BYTES\n"
.LC15:
	.string	"[%06X] [APPID]    %02X\n"
.LC16:
	.string	"[%06X] [UNIT%02X]   %04X %04X %04X %04X\n"
.LC17:
	.string	"[%06X] [DEVID]    %04X MASK:%03X VAR:%02X %s\n"
.LC18:
	.string	"[%06X] [DEVREV]   %04X PROC:%X REV:%1X DOT:%1X\n"
.LC19:
	.string	"[%06X] [CALIB%d]   %06X\n"
.LC20:
	.string	"[%06X] [FUID%d]    %02X\n"
.LC21:
	.string	"[%06X] [DEVID]    %04X %s\n"
.LC22:
	.string	"[%06X] [DEVREV]   %04X\n"
.LC23:
	.string	"[%06X] [DEVID]    %04X FAM:%02X DEV:%02X %s\n"
.LC24:
	.string	"[%06X] [DEVREV]   %04X REV:%1X\n"
.LC25:
	.string	"[%06X] [DEVREV]   %04X MAJOR:%1X DOT:%1X\n"
.LC26:
	.string	"[%06X] [FUID%d]    %04X\n"
	.text
	.globl	pic24_dumpdeviceid
	.type	pic24_dumpdeviceid, @function
pic24_dumpdeviceid:
.LFB91:
	.cfi_startproc
	pushq	%r12	#
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	movl	$.LC13, %esi	#,
	pushq	%rbp	#
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx	#
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%rdi, %rbx	# k, k
	movl	$1, %edi	#,
	subq	$32, %rsp	#,
	.cfi_def_cfa_offset 64
	movl	pic24_index(%rip), %eax	# pic24_index, pic24_index
	imulq	$1064, %rax, %rax	#, pic24_index, tmp324
	movl	pic24_map+1028(%rax), %edx	# pic24_map[pic24_index.7_8].flash, pic24_map[pic24_index.7_8].flash
	xorl	%eax, %eax	#
	call	__printf_chk	#
	leaq	28(%rsp), %rdi	#,
	call	pic24_get_data_size	#
	testl	%eax, %eax	# D.6597
	je	.L40	#,
	movl	pic24_index(%rip), %eax	# pic24_index, pic24_index
	movl	28(%rsp), %edx	# eaddr,
	movl	$.LC14, %esi	#,
	movl	$1, %edi	#,
	imulq	$1064, %rax, %rax	#, pic24_index, tmp330
	movzwl	pic24_map+1032(%rax), %ecx	# pic24_map[pic24_index.7_11].eeprom, pic24_map[pic24_index.7_11].eeprom
	xorl	%eax, %eax	#
	call	__printf_chk	#
.L40:
	movl	pic24_index(%rip), %eax	# pic24_index, pic24_index
	imulq	$1064, %rax, %rax	#, pic24_index, tmp336
	movl	pic24_map+1036(%rax), %eax	# pic24_map[pic24_index.7_15].datasheet, D.6603
	cmpl	$70284, %eax	#, D.6603
	je	.L65	#,
	cmpl	$70102, %eax	#, D.6603
	jne	.L41	#,
.L65:
	movzbl	pic24_conf(%rip), %ecx	# pic24_conf.appid, tmp343
	movl	$8390078, %edx	#,
	movl	$.LC15, %esi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	movl	$pic24_conf+112, %ebp	#, ivtmp.263
	xorl	%r12d, %r12d	# i
	call	__printf_chk	#
.L43:
	movl	pic24_index(%rip), %eax	# pic24_index, pic24_index
	movl	%r12d, %ecx	# i,
	movl	$.LC16, %esi	#,
	movl	$1, %edi	#,
	imulq	$1064, %rax, %rax	#, pic24_index, tmp352
	movl	pic24_map+1048(%rax), %eax	# pic24_map[pic24_index.7_34].fuidaddr, pic24_map[pic24_index.7_34].fuidaddr
	leal	(%rax,%r12,2), %edx	#, tmp354
	movzwl	0(%rbp), %eax	# MEM[base: D.8154_431, offset: 0B], tmp356
	addl	$4, %r12d	#, i
	movl	%eax, 8(%rsp)	# tmp356,
	movzwl	-4(%rbp), %eax	# MEM[base: D.8154_431, offset: -4B], tmp358
	movl	%eax, (%rsp)	# tmp358,
	movzwl	-8(%rbp), %r9d	# MEM[base: D.8154_431, offset: -8B],
	xorl	%eax, %eax	#
	movzwl	-12(%rbp), %r8d	# MEM[base: D.8154_431, offset: -12B],
	addq	$16, %rbp	#, ivtmp.263
	call	__printf_chk	#
	cmpl	$32, %r12d	#, i
	jne	.L43	#,
	xorl	%esi, %esi	#
	movq	%rbx, %rdi	# k,
	call	pic24_dumpconfig	#
	movl	pic24_index(%rip), %eax	# pic24_index, pic24_index
	movl	pic24_conf+228(%rip), %ecx	# pic24_conf.deviceid, D.6625
	movl	$16711680, %edx	#,
	movl	$.LC17, %esi	#,
	movl	$1, %edi	#,
	movl	%ecx, %r8d	# D.6625, tmp362
	movl	%ecx, %r9d	# D.6625,
	imulq	$1064, %rax, %rax	#, pic24_index, tmp365
	andl	$65472, %r8d	#, tmp362
	andl	$63, %r9d	#,
	shrl	$6, %r8d	#,
	addq	$pic24_map, %rax	#, tmp366
	movq	%rax, (%rsp)	# tmp366,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	movl	pic24_conf+232(%rip), %ecx	# pic24_conf.revision, D.6632
	movl	$16711682, %edx	#,
	movl	$.LC18, %esi	#,
	movl	$1, %edi	#,
	movl	%ecx, %r9d	# D.6632, tmp368
	movl	%ecx, %r8d	# D.6632, tmp370
	movl	%ecx, %eax	# D.6632, tmp372
	andl	$63, %eax	#, tmp372
	andl	$4032, %r9d	#, tmp368
	andl	$61440, %r8d	#, tmp370
	movl	%eax, (%rsp)	# tmp372,
	shrl	$6, %r9d	#,
	shrl	$12, %r8d	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	jmp	.L39	#
.L41:
	cmpl	$70152, %eax	#, D.6603
	jne	.L45	#,
	movzbl	pic24_conf(%rip), %ecx	# pic24_conf.appid, tmp374
	movl	$8390640, %edx	#,
	movl	$.LC15, %esi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	xorl	%ebp, %ebp	# ivtmp.287
	call	__printf_chk	#
	jmp	.L46	#
.L47:
	movl	pic24_map+1056(%rax), %eax	# pic24_map[pic24_index.7_72].calibaddr, pic24_map[pic24_index.7_72].calibaddr
	movl	pic24_conf+4(,%rbp,4), %r8d	# MEM[symbol: pic24_conf, index: ivtmp.287_92, step: 4, offset: 4B],
	leal	1(%rbp), %ecx	#, tmp378
	movl	$.LC19, %esi	#,
	movl	$1, %edi	#,
	leal	(%rax,%rbp,2), %edx	#, tmp384
	xorl	%eax, %eax	#
	incq	%rbp	# ivtmp.287
	call	__printf_chk	#
.L46:
	movl	pic24_index(%rip), %eax	# pic24_index, pic24_index.7
	imulq	$1064, %rax, %rax	#, pic24_index.7, tmp388
	movzbl	pic24_map+1060(%rax), %edx	# pic24_map[pic24_index.7_72].ncalib, pic24_map[pic24_index.7_72].ncalib
	cmpl	%edx, %ebp	# pic24_map[pic24_index.7_72].ncalib, ivtmp.287
	jb	.L47	#,
	movq	%rbx, %rdi	# k,
	xorl	%esi, %esi	#
	xorl	%ebx, %ebx	# ivtmp.273
	call	pic24_dumpconfig	#
	jmp	.L48	#
.L49:
	movl	8(%rax), %eax	# pic24_map[pic24_index.7_83].fuidaddr, pic24_map[pic24_index.7_83].fuidaddr
	movzbl	pic24_conf+100(,%rbx,4), %r8d	# MEM[symbol: pic24_conf, index: ivtmp.273_426, step: 4, offset: 100B],
	movl	%ebx, %ecx	# ivtmp.273,
	movl	$.LC20, %esi	#,
	movl	$1, %edi	#,
	leal	(%rax,%rbx,2), %edx	#, tmp399
	xorl	%eax, %eax	#
	incq	%rbx	# ivtmp.273
	call	__printf_chk	#
.L48:
	movl	pic24_index(%rip), %r8d	# pic24_index, pic24_index.7
	imulq	$1064, %r8, %r8	#, pic24_index.7, tmp403
	leaq	pic24_map+1040(%r8), %rax	#, tmp404
	movzbl	12(%rax), %edx	# pic24_map[pic24_index.7_83].nfuid, pic24_map[pic24_index.7_83].nfuid
	cmpl	%edx, %ebx	# pic24_map[pic24_index.7_83].nfuid, ivtmp.273
	jb	.L49	#,
	jmp	.L73	#
.L45:
	cmpl	$30625, %eax	#, D.6603
	je	.L66	#,
	cmpl	$39919, %eax	#, D.6603
	jne	.L50	#,
.L66:
	movzbl	pic24_conf(%rip), %ecx	# pic24_conf.appid, tmp416
	movl	$8390640, %edx	#,
	movl	$.LC15, %esi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	xorl	%ebp, %ebp	# ivtmp.301
	call	__printf_chk	#
	jmp	.L52	#
.L53:
	movl	pic24_map+1056(%rax), %eax	# pic24_map[pic24_index.7_105].calibaddr, pic24_map[pic24_index.7_105].calibaddr
	movl	pic24_conf+4(,%rbp,4), %r8d	# MEM[symbol: pic24_conf, index: ivtmp.301_440, step: 4, offset: 4B],
	leal	1(%rbp), %ecx	#, tmp420
	movl	$.LC19, %esi	#,
	movl	$1, %edi	#,
	leal	(%rax,%rbp,2), %edx	#, tmp426
	xorl	%eax, %eax	#
	incq	%rbp	# ivtmp.301
	call	__printf_chk	#
.L52:
	movl	pic24_index(%rip), %eax	# pic24_index, pic24_index.7
	imulq	$1064, %rax, %rax	#, pic24_index.7, tmp430
	movzbl	pic24_map+1060(%rax), %edx	# pic24_map[pic24_index.7_105].ncalib, pic24_map[pic24_index.7_105].ncalib
	cmpl	%edx, %ebp	# pic24_map[pic24_index.7_105].ncalib, ivtmp.301
	jb	.L53	#,
	xorl	%esi, %esi	#
	movq	%rbx, %rdi	# k,
	call	pic24_dumpconfig	#
	movl	pic24_index(%rip), %eax	# pic24_index, pic24_index
	movl	pic24_conf+228(%rip), %ecx	# pic24_conf.deviceid, D.6625
	imulq	$1064, %rax, %rax	#, pic24_index, tmp438
	jmp	.L74	#
.L50:
	cmpl	$75012, %eax	#, D.6603
	je	.L67	#,
	cmpl	$70659, %eax	#, D.6603
	jne	.L54	#,
.L67:
	xorl	%esi, %esi	#
	movq	%rbx, %rdi	# k,
	call	pic24_dumpconfig	#
	movzbl	pic24_conf(%rip), %ecx	# pic24_conf.appid, tmp447
	movl	$8390640, %edx	#,
	movl	$.LC15, %esi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	movl	pic24_index(%rip), %r8d	# pic24_index, pic24_index
	imulq	$1064, %r8, %r8	#, pic24_index, tmp450
.L73:
	movl	pic24_conf+228(%rip), %ecx	# pic24_conf.deviceid,
	addq	$pic24_map, %r8	#,
	movl	$16711680, %edx	#,
	movl	$.LC21, %esi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	movl	pic24_conf+232(%rip), %ecx	# pic24_conf.revision,
	movl	$16711682, %edx	#,
	movl	$.LC22, %esi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	jmp	.L39	#
.L54:
	cmpl	$39786, %eax	#, D.6603
	jne	.L56	#,
	movq	%rbx, %rdi	# k,
	xorl	%esi, %esi	#
	xorl	%ebx, %ebx	# ivtmp.315
	call	pic24_dumpconfig	#
	movzbl	pic24_conf(%rip), %ecx	# pic24_conf.appid, tmp455
	movl	$8390640, %edx	#,
	movl	$.LC15, %esi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	jmp	.L57	#
.L58:
	movl	pic24_map+1056(%rax), %eax	# pic24_map[pic24_index.7_148].calibaddr, pic24_map[pic24_index.7_148].calibaddr
	movl	pic24_conf+4(,%rbx,4), %r8d	# MEM[symbol: pic24_conf, index: ivtmp.315_446, step: 4, offset: 4B],
	leal	1(%rbx), %ecx	#, tmp459
	movl	$.LC19, %esi	#,
	movl	$1, %edi	#,
	leal	(%rax,%rbx,2), %edx	#, tmp465
	xorl	%eax, %eax	#
	incq	%rbx	# ivtmp.315
	call	__printf_chk	#
.L57:
	movl	pic24_index(%rip), %eax	# pic24_index, pic24_index.7
	imulq	$1064, %rax, %rax	#, pic24_index.7, tmp469
	movzbl	pic24_map+1060(%rax), %edx	# pic24_map[pic24_index.7_148].ncalib, pic24_map[pic24_index.7_148].ncalib
	cmpl	%edx, %ebx	# pic24_map[pic24_index.7_148].ncalib, ivtmp.315
	jb	.L58	#,
	movl	pic24_conf+228(%rip), %ecx	# pic24_conf.deviceid, D.6625
	addq	$pic24_map, %rax	#, tmp478
	movl	$16711680, %edx	#,
	movq	%rax, (%rsp)	# tmp478,
	movl	$.LC23, %esi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	movl	%ecx, %r8d	# D.6625, tmp474
	movl	%ecx, %r9d	# D.6625,
	andl	$16320, %r8d	#, tmp474
	andl	$63, %r9d	#,
	shrl	$6, %r8d	#,
	call	__printf_chk	#
	movl	pic24_conf+232(%rip), %ecx	# pic24_conf.revision, D.6632
	movl	$16711682, %edx	#,
	movl	$.LC25, %esi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	movl	%ecx, %r8d	# D.6632, tmp481
	movl	%ecx, %r9d	# D.6632,
	andl	$448, %r8d	#, tmp481
	andl	$7, %r9d	#,
	shrl	$6, %r8d	#,
	call	__printf_chk	#
	jmp	.L39	#
.L56:
	cmpl	$39934, %eax	#, D.6603
	jne	.L59	#,
	movq	%rbx, %rdi	# k,
	xorl	%esi, %esi	#
	xorl	%ebx, %ebx	# ivtmp.329
	call	pic24_dumpconfig	#
	movzbl	pic24_conf(%rip), %ecx	# pic24_conf.appid, tmp484
	movl	$8390640, %edx	#,
	movl	$.LC15, %esi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	jmp	.L60	#
.L61:
	movl	pic24_map+1056(%rax), %eax	# pic24_map[pic24_index.7_185].calibaddr, pic24_map[pic24_index.7_185].calibaddr
	movl	pic24_conf+4(,%rbx,4), %r8d	# MEM[symbol: pic24_conf, index: ivtmp.329_452, step: 4, offset: 4B],
	leal	1(%rbx), %ecx	#, tmp488
	movl	$.LC19, %esi	#,
	movl	$1, %edi	#,
	leal	(%rax,%rbx,2), %edx	#, tmp494
	xorl	%eax, %eax	#
	incq	%rbx	# ivtmp.329
	call	__printf_chk	#
.L60:
	movl	pic24_index(%rip), %eax	# pic24_index, pic24_index.7
	imulq	$1064, %rax, %rax	#, pic24_index.7, tmp498
	movzbl	pic24_map+1060(%rax), %edx	# pic24_map[pic24_index.7_185].ncalib, pic24_map[pic24_index.7_185].ncalib
	cmpl	%edx, %ebx	# pic24_map[pic24_index.7_185].ncalib, ivtmp.329
	jb	.L61	#,
	movl	pic24_conf+228(%rip), %ecx	# pic24_conf.deviceid, D.6625
.L74:
	addq	$pic24_map, %rax	#, tmp507
	movzbl	%cl, %r9d	# D.6625,
	movl	$16711680, %edx	#,
	movq	%rax, (%rsp)	# tmp507,
	movzbl	%ch, %eax	# D.6625,
	movl	$.LC23, %esi	#,
	movl	%eax, %r8d	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	movl	pic24_conf+232(%rip), %ecx	# pic24_conf.revision, D.6632
	movl	$16711682, %edx	#,
	movl	$.LC24, %esi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	movl	%ecx, %r8d	# D.6632,
	andl	$15, %r8d	#,
	call	__printf_chk	#
	jmp	.L39	#
.L59:
	cmpl	$70663, %eax	#, D.6603
	jne	.L62	#,
	movq	%rbx, %rdi	# k,
	xorl	%esi, %esi	#
	xorl	%ebx, %ebx	# ivtmp.343
	call	pic24_dumpconfig	#
	movzbl	pic24_conf(%rip), %ecx	# pic24_conf.appid, tmp511
	movl	$8392688, %edx	#,
	movl	$.LC15, %esi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	jmp	.L63	#
.L64:
	movl	8(%rax), %eax	# pic24_map[pic24_index.7_217].fuidaddr, pic24_map[pic24_index.7_217].fuidaddr
	movzwl	pic24_conf+100(,%rbx,4), %r8d	# MEM[symbol: pic24_conf, index: ivtmp.343_458, step: 4, offset: 100B],
	movl	%ebx, %ecx	# ivtmp.343,
	movl	$.LC26, %esi	#,
	movl	$1, %edi	#,
	leal	(%rax,%rbx,2), %edx	#, tmp521
	xorl	%eax, %eax	#
	incq	%rbx	# ivtmp.343
	call	__printf_chk	#
.L63:
	movl	pic24_index(%rip), %r8d	# pic24_index, pic24_index.7
	imulq	$1064, %r8, %r8	#, pic24_index.7, tmp525
	leaq	pic24_map+1040(%r8), %rax	#, tmp526
	movzbl	12(%rax), %edx	# pic24_map[pic24_index.7_217].nfuid, pic24_map[pic24_index.7_217].nfuid
	cmpl	%edx, %ebx	# pic24_map[pic24_index.7_217].nfuid, ivtmp.343
	jb	.L64	#,
	jmp	.L73	#
.L62:
	movl	$.LC12, %edi	#,
	call	puts	#
.L39:
	addq	$32, %rsp	#,
	.cfi_def_cfa_offset 32
	popq	%rbx	#
	.cfi_def_cfa_offset 24
	popq	%rbp	#
	.cfi_def_cfa_offset 16
	popq	%r12	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE91:
	.size	pic24_dumpdeviceid, .-pic24_dumpdeviceid
	.section	.rodata.str1.1
.LC27:
	.string	":%02X%02X%02X00"
.LC28:
	.string	"%02X%02X0000"
.LC29:
	.string	"%02X\n"
	.text
	.globl	pic24_dumpinhxdata
	.type	pic24_dumpinhxdata, @function
pic24_dumpinhxdata:
.LFB96:
	.cfi_startproc
	pushq	%r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	leal	(%rsi,%rsi), %edi	#, tmp144
	pushq	%r14	#
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movq	%rcx, %r14	# data, data
	pushq	%r13	#
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movl	%edx, %r13d	# size, D.6420
	shrl	%r13d	# D.6420
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
	subq	$24, %rsp	#,
	.cfi_def_cfa_offset 80
	call	pic_dumpaddr	#
	jmp	.L76	#
.L79:
	movl	%ebp, %eax	# i, i
	movl	$4, %esi	#,
	movl	$65535, %edi	#,
	leaq	(%r14,%rax,2), %rdx	#, tmp147
	call	pic_mtdata	#
	testl	%eax, %eax	# D.6401
	jne	.L77	#,
	leal	(%rbx,%rbx), %edi	#, tmp148
	xorl	%esi, %esi	#
	leal	(%rbx,%rbx), %r15d	#, lb
	movl	%ebx, %r12d	# address, D.6404
	call	pic_dumpaddr	#
	shrl	$7, %r12d	#, D.6404
	movl	$254, %r8d	#,
	movl	$16, %edx	#,
	movzbl	%r12b, %ecx	# D.6404, tmp150
	andl	%r15d, %r8d	# lb,
	movl	$.LC27, %esi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	leal	16(%r15,%r12), %r8d	#, cc
	xorl	%r12d, %r12d	# ivtmp.375
.L78:
	leal	0(%rbp,%r12), %eax	#, tmp153
	movl	$.LC28, %esi	#,
	movl	$1, %edi	#,
	movb	%r8b, (%rsp)	#,
	incq	%r12	# ivtmp.375
	movw	(%r14,%rax,2), %r15w	# *D.6412_28, D.6413
	movl	%r15d, %eax	# D.6413,
	movzbl	%r15b, %edx	# D.6413, lb
	shrw	$8, %ax	#,
	movw	%ax, 14(%rsp)	#, %sfp
	movzbl	%al, %ecx	#, mb
	xorl	%eax, %eax	#
	call	__printf_chk	#
	addb	14(%rsp), %r15b	# %sfp, tmp157
	movb	(%rsp), %r8b	#,
	addl	%r15d, %r8d	# tmp157, cc
	cmpq	$4, %r12	#, ivtmp.375
	jne	.L78	#,
	negl	%r8d	# tmp159
	movl	$.LC29, %esi	#,
	movl	$1, %edi	#,
	movzbl	%r8b, %edx	# tmp159, tmp160
	xorl	%eax, %eax	#
	call	__printf_chk	#
.L77:
	addl	$8, %ebx	#, address
	addl	$4, %ebp	#, i
.L76:
	cmpl	%r13d, %ebp	# D.6420, i
	jb	.L79	#,
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
	.size	pic24_dumpinhxdata, .-pic24_dumpinhxdata
	.section	.rodata.str1.1
.LC30:
	.string	"[%06X] "
.LC31:
	.string	"%04X "
.LC32:
	.string	"%s: information: data eeprom empty\n"
	.text
	.globl	pic24_dumphexdata
	.type	pic24_dumphexdata, @function
pic24_dumphexdata:
.LFB95:
	.cfi_startproc
	pushq	%r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movl	%esi, %r15d	# address, address
	pushq	%r14	#
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movl	$46, %r14d	#, iftmp.1
	pushq	%r13	#
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movq	%rcx, %r13	# data, data
	pushq	%r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movl	%edx, %r12d	# size, D.6447
	shrl	%r12d	# D.6447
	pushq	%rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	xorl	%ebp, %ebp	# nlines
	pushq	%rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	xorl	%ebx, %ebx	# i
	subq	$40, %rsp	#,
	.cfi_def_cfa_offset 96
	jmp	.L83	#
.L89:
	movl	%ebx, %eax	# i, i
	movl	$8, %esi	#,
	movl	$65535, %edi	#,
	leaq	0(%r13,%rax,2), %rdx	#, tmp123
	call	pic_mtdata	#
	testl	%eax, %eax	# D.6426
	jne	.L84	#,
	movl	28(%rsp), %edx	# %sfp,
	movl	$.LC30, %esi	#,
	movl	$1, %edi	#,
	call	__printf_chk	#
	xorl	%ecx, %ecx	# j
.L85:
	leal	(%rcx,%rbx), %eax	#, tmp125
	movl	$.LC31, %esi	#,
	movl	$1, %edi	#,
	movl	%ecx, 16(%rsp)	#,
	movzwl	0(%r13,%rax,2), %edx	# *D.6432_23, *D.6432_23
	xorl	%eax, %eax	#
	call	__printf_chk	#
	movl	16(%rsp), %ecx	#,
	incl	%ecx	# j
	cmpl	$8, %ecx	#, j
	jne	.L85	#,
	xorl	%edx, %edx	# j
.L88:
	leal	(%rdx,%rbx), %eax	#, tmp128
	leaq	0(%r13,%rax,2), %rcx	#, D.6432
	movzbl	(%rcx), %edi	# *D.6432_31, D.6436
	movl	%edx, 8(%rsp)	#,
	movq	%rcx, 16(%rsp)	#,
	leal	-32(%rdi), %eax	#, tmp131
	movzwl	%di, %edi	# D.6436, D.6436
	cmpw	$94, %ax	#, tmp131
	cmova	%r14d, %edi	# D.6436,, iftmp.1, iftmp.1
	call	putchar	#
	movq	16(%rsp), %rcx	#,
	movw	(%rcx), %di	# *D.6432_31, D.6442
	shrw	$8, %di	#, D.6442
	leal	-32(%rdi), %eax	#, tmp133
	movzwl	%di, %edi	# D.6442, D.6442
	cmpw	$94, %ax	#, tmp133
	cmova	%r14d, %edi	# D.6442,, iftmp.1, iftmp.2
	call	putchar	#
	movl	8(%rsp), %edx	#,
	incl	%edx	# j
	cmpl	$8, %edx	#, j
	jne	.L88	#,
	movl	$10, %edi	#,
	incl	%ebp	# nlines
	call	putchar	#
.L84:
	addl	$8, %ebx	#, i
.L83:
	leal	(%r15,%rbx,2), %eax	#,
	cmpl	%r12d, %ebx	# D.6447, i
	movl	%eax, 28(%rsp)	#, %sfp
	jb	.L89	#,
	testl	%ebp, %ebp	# nlines
	jne	.L82	#,
	addq	$40, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movl	$__func__.6347, %edx	#,
	movl	$.LC32, %esi	#,
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
.L82:
	.cfi_restore_state
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
.LFE95:
	.size	pic24_dumphexdata, .-pic24_dumphexdata
	.section	.rodata.str1.1
.LC33:
	.string	"%02X%02X%02X00"
	.text
	.globl	pic24_dumpinhxcode
	.type	pic24_dumpinhxcode, @function
pic24_dumpinhxcode:
.LFB94:
	.cfi_startproc
	pushq	%r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	leal	(%rsi,%rsi), %edi	#, tmp161
	pushq	%r14	#
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
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
	xorl	%ebp, %ebp	# i
	pushq	%rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movl	%esi, %ebx	# address, address
	movl	$1, %esi	#,
	subq	$24, %rsp	#,
	.cfi_def_cfa_offset 80
	movl	%edx, 12(%rsp)	# size, %sfp
	call	pic_dumpaddr	#
	jmp	.L97	#
.L100:
	movl	%ebp, %eax	# i, i
	movl	$4, %esi	#,
	movl	$16777215, %edi	#,
	leaq	(%r12,%rax,4), %rdx	#, tmp164
	call	pic_mtcode	#
	testl	%eax, %eax	# D.6454
	jne	.L98	#,
	leal	(%rbx,%rbx), %edi	#, tmp165
	xorl	%esi, %esi	#
	leal	(%rbx,%rbx), %r14d	#, lb
	movl	%ebx, %r13d	# address, D.6457
	xorl	%r15d, %r15d	# ivtmp.455
	call	pic_dumpaddr	#
	shrl	$7, %r13d	#, D.6457
	movl	$254, %r8d	#,
	movl	$16, %edx	#,
	andl	%r14d, %r8d	# lb,
	leal	16(%r14,%r13), %r14d	#, cc
	movzbl	%r13b, %ecx	# D.6457, tmp167
	movl	$.LC27, %esi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
.L99:
	leal	0(%rbp,%r15), %eax	#, tmp170
	movl	$.LC33, %esi	#,
	movl	$1, %edi	#,
	incq	%r15	# ivtmp.455
	movl	(%r12,%rax,4), %r10d	# *D.6465_27, D.6466
	movl	%r10d, %eax	# D.6466,
	movl	%r10d, %r13d	# D.6466, D.6468
	movzbl	%r10b, %edx	# D.6466, tmp173
	shrl	$8, %eax	#,
	shrl	$16, %r13d	#, D.6468
	movl	%r10d, (%rsp)	#,
	movzbl	%al, %ecx	#, tmp172
	movl	%eax, 8(%rsp)	#, %sfp
	movzbl	%r13b, %r8d	# D.6468,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	addl	8(%rsp), %r13d	# %sfp, tmp174
	movl	(%rsp), %r10d	#,
	addl	%r13d, %r10d	# tmp174, tmp175
	addl	%r10d, %r14d	# tmp175, cc
	cmpq	$4, %r15	#, ivtmp.455
	jne	.L99	#,
	movb	%r14b, %al	# cc,
	movl	$.LC29, %esi	#,
	movl	$1, %edi	#,
	negl	%eax	#
	movzbl	%al, %edx	# tmp177, tmp178
	xorl	%eax, %eax	#
	call	__printf_chk	#
.L98:
	addl	$8, %ebx	#, address
	addl	$4, %ebp	#, i
.L97:
	cmpl	12(%rsp), %ebp	# %sfp, i
	jb	.L100	#,
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
.LFE94:
	.size	pic24_dumpinhxcode, .-pic24_dumpinhxcode
	.section	.rodata.str1.1
.LC34:
	.string	"%06X "
.LC35:
	.string	"%s: information: program flash empty\n"
	.text
	.globl	pic24_dumphexcode
	.type	pic24_dumphexcode, @function
pic24_dumphexcode:
.LFB93:
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
	movl	$46, %r13d	#, tmp148
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
	movl	%esi, 8(%rsp)	# address, %sfp
	movl	%edx, 12(%rsp)	# size, %sfp
	jmp	.L104	#
.L111:
	movl	%ebx, %eax	# i, i
	movl	$8, %esi	#,
	movl	$16777215, %edi	#,
	leaq	(%r12,%rax,4), %rdx	#, tmp127
	call	pic_mtcode	#
	testl	%eax, %eax	# D.6479
	jne	.L105	#,
	movl	%r14d, %edx	# D.8452,
	movl	$.LC30, %esi	#,
	movl	$1, %edi	#,
	xorl	%r14d, %r14d	# j
	call	__printf_chk	#
.L106:
	leal	(%r14,%rbx), %eax	#, tmp129
	movl	$.LC34, %esi	#,
	movl	$1, %edi	#,
	incl	%r14d	# j
	movl	(%r12,%rax,4), %edx	# *D.6485_23, tmp130
	xorl	%eax, %eax	#
	andl	$16777215, %edx	#, tmp130
	call	__printf_chk	#
	cmpl	$8, %r14d	#, j
	jne	.L106	#,
	xorb	%r14b, %r14b	#
.L110:
	leal	(%r14,%rbx), %eax	#, tmp133
	leaq	(%r12,%rax,4), %r15	#, D.6485
	movzbl	(%r15), %edi	# *D.6485_31, D.6489
	leal	-32(%rdi), %eax	#, tmp136
	cmpl	$94, %eax	#, tmp136
	cmova	%r13d, %edi	# D.6489,, tmp148, iftmp.3
	call	putchar	#
	movl	(%r15), %eax	# *D.6485_31, *D.6485_31
	movzbl	%ah, %edi	# *D.6485_31, D.6497
	leal	-32(%rdi), %eax	#, tmp139
	cmpl	$94, %eax	#, tmp139
	cmova	%r13d, %edi	# D.6497,, tmp148, iftmp.4
	call	putchar	#
	movzbl	2(%r15), %edi	# *D.6485_31, D.6505
	leal	-32(%rdi), %eax	#, tmp142
	cmpl	$94, %eax	#, tmp142
	cmova	%r13d, %edi	# D.6505,, tmp148, iftmp.5
	incl	%r14d	# j
	call	putchar	#
	cmpl	$8, %r14d	#, j
	jne	.L110	#,
	movl	$10, %edi	#,
	incl	%ebp	# nlines
	call	putchar	#
.L105:
	addl	$8, %ebx	#, i
.L104:
	cmpl	12(%rsp), %ebx	# %sfp, i
	movl	8(%rsp), %eax	# %sfp,
	leal	(%rax,%rbx,2), %r14d	#, D.8452
	jb	.L111	#,
	testl	%ebp, %ebp	# nlines
	jne	.L103	#,
	addq	$24, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movl	$__func__.6308, %edx	#,
	movl	$.LC35, %esi	#,
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
.L103:
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
.LFE93:
	.size	pic24_dumphexcode, .-pic24_dumphexcode
	.type	pic24_regout, @function
pic24_regout:
.LFB45:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movl	$4, %edx	#,
	movl	$1, %esi	#,
	pushq	%rbx	#
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rdi, %rbx	# k, k
	pushq	%rax	#
	.cfi_def_cfa_offset 32
	call	io_program_out	#
	movq	%rbx, %rdi	# k,
	movl	$24, %esi	#,
	call	io_program_in	#
	movl	$28, %edx	#,
	movq	%rbx, %rdi	# k,
	xorl	%esi, %esi	#
	movl	%eax, %ebp	#, D.7124
	call	io_program_out	#
	popq	%rdx	#
	.cfi_def_cfa_offset 24
	movl	%ebp, %eax	# D.7124, tmp65
	popq	%rbx	#
	.cfi_def_cfa_offset 16
	shrl	$8, %eax	#, tmp65
	popq	%rbp	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE45:
	.size	pic24_regout, .-pic24_regout
	.section	.rodata.str1.1
.LC36:
	.string	"%-19s"
.LC37:
	.string	"Total: %u\n"
	.text
	.globl	pic24_selector
	.type	pic24_selector, @function
pic24_selector:
.LFB41:
	.cfi_startproc
	pushq	%rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	xorl	%eax, %eax	# ivtmp.526
	subq	$2704, %rsp	#,
	.cfi_def_cfa_offset 2720
.L122:
	movl	%eax, %edx	# ivtmp.526, ivtmp.526
	imulq	$1064, %rdx, %rdx	#, ivtmp.526, tmp88
	addq	$pic24_map, %rdx	#, tmp89
	movq	%rdx, (%rsp,%rax,8)	# tmp89, MEM[symbol: dnames, index: ivtmp.526_2, step: 8, offset: 0B]
	incq	%rax	# ivtmp.526
	cmpq	$338, %rax	#, ivtmp.526
	jne	.L122	#,
	movl	$pic_cmp, %ecx	#,
	movl	$8, %edx	#,
	movl	$338, %esi	#,
	movq	%rsp, %rdi	#,
	xorl	%ebx, %ebx	# ivtmp.517
	call	qsort	#
.L125:
	movq	%rbx, %rax	# ivtmp.517, tmp91
	andl	$3, %eax	#, tmp91
	cmpl	$3, %eax	#, tmp91
	jne	.L123	#,
	movq	(%rsp,%rbx,8), %rdi	# MEM[symbol: dnames, index: ivtmp.517_40, step: 8, offset: 0B], MEM[symbol: dnames, index: ivtmp.517_40, step: 8, offset: 0B]
	call	puts	#
	jmp	.L124	#
.L123:
	movq	(%rsp,%rbx,8), %rdx	# MEM[symbol: dnames, index: ivtmp.517_40, step: 8, offset: 0B], MEM[symbol: dnames, index: ivtmp.517_40, step: 8, offset: 0B]
	movl	$.LC36, %esi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
.L124:
	incq	%rbx	# ivtmp.517
	cmpq	$338, %rbx	#, ivtmp.517
	jne	.L125	#,
	movl	$10, %edi	#,
	call	putchar	#
	movl	$338, %edx	#,
	movl	$.LC37, %esi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	addq	$2704, %rsp	#,
	.cfi_def_cfa_offset 16
	popq	%rbx	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE41:
	.size	pic24_selector, .-pic24_selector
	.globl	pic24_dumpdevice
	.type	pic24_dumpdevice, @function
pic24_dumpdevice:
.LFB97:
	.cfi_startproc
	movl	pic24_index(%rip), %eax	# pic24_index, pic24_index
	pushq	%rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	imulq	$1064, %rax, %rax	#, pic24_index, tmp99
	movl	pic24_map+1048(%rax), %edi	# pic24_map[pic24_index.0_3].fuidaddr, D.6379
	testl	%edi, %edi	# D.6379
	jne	.L130	#,
.L135:
	movl	pic24_index(%rip), %eax	# pic24_index, pic24_index
	imulq	$1064, %rax, %rax	#, pic24_index, tmp103
	cmpl	$16252928, pic24_map+1040(%rax)	#, pic24_map[pic24_index.0_18].configaddr
	jne	.L129	#,
	jmp	.L131	#
.L130:
	addl	%edi, %edi	# tmp105
	movl	$1, %esi	#,
	xorl	%ebx, %ebx	# ivtmp.561
	call	pic_dumpaddr	#
	jmp	.L133	#
.L134:
	movl	8(%rax), %eax	# pic24_map[pic24_index.0_9].fuidaddr, pic24_map[pic24_index.0_9].fuidaddr
	movl	pic24_conf+100(,%rbx,4), %esi	# MEM[symbol: pic24_conf, index: ivtmp.561_48, step: 4, offset: 100B], MEM[symbol: pic24_conf, index: ivtmp.561_48, step: 4, offset: 100B]
	leal	(%rax,%rbx,2), %edi	#, tmp113
	incq	%rbx	# ivtmp.561
	call	pic_dumpword32	#
.L133:
	movl	pic24_index(%rip), %eax	# pic24_index, pic24_index.0
	imulq	$1064, %rax, %rax	#, pic24_index.0, tmp117
	addq	$pic24_map+1040, %rax	#, tmp118
	movzbl	12(%rax), %edx	# pic24_map[pic24_index.0_9].nfuid, pic24_map[pic24_index.0_9].nfuid
	cmpl	%edx, %ebx	# pic24_map[pic24_index.0_9].nfuid, ivtmp.561
	jb	.L134	#,
	jmp	.L135	#
.L131:
	movl	$1, %esi	#,
	movl	$32505856, %edi	#,
	xorl	%ebx, %ebx	# ivtmp.547
	call	pic_dumpaddr	#
	jmp	.L136	#
.L137:
	movl	pic24_map+1040(%rax), %eax	# pic24_map[pic24_index.0_44].configaddr, pic24_map[pic24_index.0_44].configaddr
	movl	pic24_conf+36(,%rbx,4), %esi	# MEM[symbol: pic24_conf, index: ivtmp.547_35, step: 4, offset: 36B], MEM[symbol: pic24_conf, index: ivtmp.547_35, step: 4, offset: 36B]
	leal	(%rax,%rbx,2), %edi	#, tmp127
	incq	%rbx	# ivtmp.547
	call	pic_dumpword32	#
.L136:
	movl	pic24_index(%rip), %eax	# pic24_index, pic24_index.0
	imulq	$1064, %rax, %rax	#, pic24_index.0, tmp131
	movzbl	pic24_map+1044(%rax), %edx	# pic24_map[pic24_index.0_44].nconfig, pic24_map[pic24_index.0_44].nconfig
	cmpl	%edx, %ebx	# pic24_map[pic24_index.0_44].nconfig, ivtmp.547
	jb	.L137	#,
.L129:
	popq	%rbx	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE97:
	.size	pic24_dumpdevice, .-pic24_dumpdevice
	.type	pic24_six, @function
pic24_six:
.LFB44:
	.cfi_startproc
	pushq	%r12	#
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	movl	%esi, %r12d	# data, data
	xorl	%esi, %esi	#
	pushq	%rbp	#
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movl	%edx, %ebp	# nops, nops
	movl	$4, %edx	#,
	pushq	%rbx	#
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%rdi, %rbx	# k, k
	call	io_program_out	#
	movl	$24, %edx	#,
	movl	%r12d, %esi	# data,
	movq	%rbx, %rdi	# k,
	call	io_program_out	#
	testb	%bpl, %bpl	# nops
	je	.L139	#,
	movq	%rbx, %rdi	# k,
	xorl	%esi, %esi	#
	popq	%rbx	#
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	imull	$28, %ebp, %edx	#, nops, tmp67
	popq	%rbp	#
	.cfi_def_cfa_offset 16
	popq	%r12	#
	.cfi_def_cfa_offset 8
	andl	$252, %edx	#, tmp67
	jmp	io_program_out	#
.L139:
	.cfi_restore_state
	popq	%rbx	#
	.cfi_def_cfa_offset 24
	popq	%rbp	#
	.cfi_def_cfa_offset 16
	popq	%r12	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE44:
	.size	pic24_six, .-pic24_six
	.type	pic24_table_read16_post_increment, @function
pic24_table_read16_post_increment:
.LFB50:
	.cfi_startproc
	movzbl	pic24_conf+242(%rip), %edx	# pic24_conf.tblnop, pic24_conf.tblnop
	pushq	%rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movl	$12192694, %esi	#,
	movq	%rdi, %rbx	# k, k
	call	pic24_six	#
	movq	%rbx, %rdi	# k,
	popq	%rbx	#
	.cfi_def_cfa_offset 8
	jmp	pic24_regout	#
	.cfi_endproc
.LFE50:
	.size	pic24_table_read16_post_increment, .-pic24_table_read16_post_increment
	.globl	pic24_arch
	.type	pic24_arch, @function
pic24_arch:
.LFB40:
	.cfi_startproc
	movq	$pic24_ops, 3128(%rdi)	#, k_1(D)->pic
	movl	pic24_ops(%rip), %eax	# pic24_ops.arch,
	ret
	.cfi_endproc
.LFE40:
	.size	pic24_arch, .-pic24_arch
	.globl	pic24_standby
	.type	pic24_standby, @function
pic24_standby:
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
	.size	pic24_standby, .-pic24_standby
	.globl	pic24_goto200
	.type	pic24_goto200, @function
pic24_goto200:
.LFB46:
	.cfi_startproc
	movzbl	pic24_conf+243(%rip), %edx	# pic24_conf.gotonop, pic24_conf.gotonop
	movl	$262656, %esi	#,
	jmp	pic24_six	#
	.cfi_endproc
.LFE46:
	.size	pic24_goto200, .-pic24_goto200
	.globl	pic24_program_verify
	.type	pic24_program_verify, @function
pic24_program_verify:
.LFB42:
	.cfi_startproc
	pushq	%rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	xorl	%esi, %esi	#
	movq	%rdi, %rbx	# k, k
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
	movl	3076(%rbx), %eax	# k_1(D)->key, D.7327
	cmpl	$2, %eax	#, D.7327
	jne	.L149	#,
	movl	$1, %esi	#,
	movq	%rbx, %rdi	# k,
	call	io_configure	#
	movl	$1, %esi	#,
	movq	%rbx, %rdi	# k,
	call	io_set_vpp	#
	movl	$500, %esi	#,
	movq	%rbx, %rdi	# k,
	call	io_usleep	#
	xorl	%esi, %esi	#
	movq	%rbx, %rdi	# k,
	call	io_set_vpp	#
	movl	$1000, %esi	#,
	movq	%rbx, %rdi	# k,
	call	io_usleep	#
	movl	$32, %edx	#,
	movl	$-1978481998, %esi	#,
	movq	%rbx, %rdi	# k,
	call	io_program_out	#
	movl	$1000, %esi	#,
	movq	%rbx, %rdi	# k,
	call	io_usleep	#
	movl	$1, %esi	#,
	movq	%rbx, %rdi	# k,
	call	io_set_vpp	#
	movl	$50001, %esi	#,
	movq	%rbx, %rdi	# k,
	call	io_usleep	#
	movb	pic24_conf+243(%rip), %al	# pic24_conf.gotonop, tmp66
	movb	$28, %dl	#, tmp68
	imull	%edx, %eax	# tmp68, tmp66
	leal	5(%rax), %edx	#, tmp69
	movzbl	%dl, %edx	# tmp69, tmp70
	jmp	.L152	#
.L149:
	decl	%eax	# D.7327
	jne	.L150	#,
	movl	$1, %esi	#,
	movq	%rbx, %rdi	# k,
	call	io_configure	#
	movl	$1, %esi	#,
	movq	%rbx, %rdi	# k,
	call	io_set_vpp	#
	movl	$1000, %esi	#,
	movq	%rbx, %rdi	# k,
	call	io_usleep	#
	movl	$32, %edx	#,
	movl	$-1978481998, %esi	#,
	movq	%rbx, %rdi	# k,
	call	io_program_out	#
	movl	$25000, %esi	#,
	movq	%rbx, %rdi	# k,
	call	io_usleep	#
	movl	$33, %edx	#,
	jmp	.L152	#
.L150:
	xorl	%esi, %esi	#
	movq	%rbx, %rdi	# k,
	call	io_configure	#
	movl	$1, %esi	#,
	movq	%rbx, %rdi	# k,
	call	io_set_vpp	#
	movl	$25000, %esi	#,
	movq	%rbx, %rdi	# k,
	call	io_usleep	#
	movl	$56, %edx	#,
.L152:
	movq	%rbx, %rdi	# k,
	xorl	%esi, %esi	#
	call	io_program_out	#
	movq	%rbx, %rdi	# k,
	popq	%rbx	#
	.cfi_def_cfa_offset 8
	jmp	pic24_goto200	#
	.cfi_endproc
.LFE42:
	.size	pic24_program_verify, .-pic24_program_verify
	.globl	pic24_readreg
	.type	pic24_readreg, @function
pic24_readreg:
.LFB47:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movzwl	%si, %esi	# regin, regin
	movl	$1, %edx	#,
	sall	$3, %esi	#, tmp78
	pushq	%rbx	#
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	orl	$8388608, %esi	#, tmp78
	movq	%rdi, %rbx	# k, k
	pushq	%rcx	#
	.cfi_def_cfa_offset 32
	movzwl	pic24_conf+240(%rip), %ebp	# pic24_conf.visi, pic24_conf.visi
	call	pic24_six	#
	movq	%rbx, %rdi	# k,
	movl	$1, %edx	#,
	sall	$3, %ebp	#, visi
	orl	$8912896, %ebp	#, visi
	movl	%ebp, %esi	# visi,
	call	pic24_six	#
	popq	%rsi	#
	.cfi_def_cfa_offset 24
	movq	%rbx, %rdi	# k,
	popq	%rbx	#
	.cfi_def_cfa_offset 16
	popq	%rbp	#
	.cfi_def_cfa_offset 8
	jmp	pic24_regout	#
	.cfi_endproc
.LFE47:
	.size	pic24_readreg, .-pic24_readreg
	.globl	pic24_set_read_pointer
	.type	pic24_set_read_pointer, @function
pic24_set_read_pointer:
.LFB48:
	.cfi_startproc
	pushq	%r13	#
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	movl	%esi, %r13d	# addr, addr
	andl	$16711680, %esi	#, tmp85
	shrl	$12, %esi	#, tmp85
	xorl	%edx, %edx	#
	pushq	%r12	#
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	orl	$2097152, %esi	#, tmp85
	pushq	%rbp	#
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	movq	%rdi, %rbp	# k, k
	pushq	%rbx	#
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	pushq	%r8	#
	.cfi_def_cfa_offset 48
	movzwl	pic24_conf+236(%rip), %r12d	# pic24_conf.tblpag, pic24_conf.tblpag
	movzwl	pic24_conf+240(%rip), %ebx	# pic24_conf.visi, visi
	call	pic24_six	#
	movq	%rbp, %rdi	# k,
	xorl	%edx, %edx	#
	sall	$3, %r12d	#, tblpag
	orl	$8912896, %r12d	#, tblpag
	sall	$4, %ebx	#, visi
	movl	%r12d, %esi	# tblpag,
	orl	$2097159, %ebx	#, visi
	call	pic24_six	#
	movzwl	%r13w, %esi	# addr, tmp88
	movq	%rbp, %rdi	# k,
	xorl	%edx, %edx	#
	sall	$4, %esi	#, tmp88
	orl	$2097158, %esi	#, tmp88
	call	pic24_six	#
	popq	%r9	#
	.cfi_def_cfa_offset 40
	movl	%ebx, %esi	# visi,
	movq	%rbp, %rdi	# k,
	movl	$1, %edx	#,
	popq	%rbx	#
	.cfi_def_cfa_offset 32
	popq	%rbp	#
	.cfi_def_cfa_offset 24
	popq	%r12	#
	.cfi_def_cfa_offset 16
	popq	%r13	#
	.cfi_def_cfa_offset 8
	jmp	pic24_six	#
	.cfi_endproc
.LFE48:
	.size	pic24_set_read_pointer, .-pic24_set_read_pointer
	.globl	pic24_read_data_memory_block
	.type	pic24_read_data_memory_block, @function
pic24_read_data_memory_block:
.LFB69:
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
	xorl	%ebp, %ebp	# ivtmp.591
	pushq	%rbx	#
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	movq	%rdi, %rbx	# k, k
	call	pic24_program_verify	#
	movl	%r12d, %esi	# addr,
	movq	%rbx, %rdi	# k,
	call	pic24_set_read_pointer	#
	jmp	.L158	#
.L160:
	testb	$31, %bpl	#, ivtmp.591
	jne	.L159	#,
	movq	%rbx, %rdi	# k,
	call	pic24_goto200	#
.L159:
	movq	%rbx, %rdi	# k,
	call	pic24_table_read16_post_increment	#
	movw	%ax, (%r14,%rbp,2)	# D.7116, MEM[base: data_14(D), index: ivtmp.591_28, step: 2, offset: 0B]
	incq	%rbp	# ivtmp.591
.L158:
	cmpl	%ebp, %r13d	# ivtmp.591, size
	ja	.L160	#,
	movq	%rbx, %rdi	# k,
	call	pic24_standby	#
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
.LFE69:
	.size	pic24_read_data_memory_block, .-pic24_read_data_memory_block
	.globl	pic24_set_write_pointer
	.type	pic24_set_write_pointer, @function
pic24_set_write_pointer:
.LFB49:
	.cfi_startproc
	pushq	%r12	#
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	movl	%esi, %r12d	# addr, addr
	andl	$16711680, %esi	#, tmp77
	shrl	$12, %esi	#, tmp77
	xorl	%edx, %edx	#
	pushq	%rbp	#
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movzwl	pic24_conf+236(%rip), %ebp	# pic24_conf.tblpag, pic24_conf.tblpag
	orl	$2097152, %esi	#, tmp77
	pushq	%rbx	#
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%rdi, %rbx	# k, k
	sall	$3, %ebp	#, tblpag
	orl	$8912896, %ebp	#, tblpag
	call	pic24_six	#
	movl	%ebp, %esi	# tblpag,
	movq	%rbx, %rdi	# k,
	xorl	%edx, %edx	#
	call	pic24_six	#
	movq	%rbx, %rdi	# k,
	movzwl	%r12w, %esi	# addr, tmp80
	movl	$1, %edx	#,
	popq	%rbx	#
	.cfi_def_cfa_offset 24
	popq	%rbp	#
	.cfi_def_cfa_offset 16
	popq	%r12	#
	.cfi_def_cfa_offset 8
	sall	$4, %esi	#, tmp80
	orl	$2097159, %esi	#, tmp80
	jmp	pic24_six	#
	.cfi_endproc
.LFE49:
	.size	pic24_set_write_pointer, .-pic24_set_write_pointer
	.globl	pic24_table_read24_post_increment
	.type	pic24_table_read24_post_increment, @function
pic24_table_read24_post_increment:
.LFB51:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movl	$12192662, %esi	#,
	pushq	%rbx	#
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rdi, %rbx	# k, k
	pushq	%r10	#
	.cfi_def_cfa_offset 32
	movzbl	pic24_conf+242(%rip), %edx	# pic24_conf.tblnop, pic24_conf.tblnop
	call	pic24_six	#
	movq	%rbx, %rdi	# k,
	call	pic24_regout	#
	movzbl	pic24_conf+242(%rip), %edx	# pic24_conf.tblnop, pic24_conf.tblnop
	movq	%rbx, %rdi	# k,
	movl	$12225462, %esi	#,
	movzwl	%ax, %ebp	#,
	call	pic24_six	#
	movq	%rbx, %rdi	# k,
	call	pic24_regout	#
	popq	%r11	#
	.cfi_def_cfa_offset 24
	sall	$16, %eax	#, tmp77
	orl	%ebp, %eax	# low, tmp77
	popq	%rbx	#
	.cfi_def_cfa_offset 16
	andl	$16777215, %eax	#, tmp77
	popq	%rbp	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE51:
	.size	pic24_table_read24_post_increment, .-pic24_table_read24_post_increment
	.section	.rodata.str1.1
.LC38:
	.string	"%s: fatal error: %s.\n"
.LC39:
	.string	"%s: fatal error: device unknown: [%06X] [%06X]\n"
.LC40:
	.string	"%s: fatal error: unknown device: [%s]\n"
	.text
	.globl	pic24_read_config_memory
	.type	pic24_read_config_memory, @function
pic24_read_config_memory:
.LFB64:
	.cfi_startproc
	pushq	%r13	#
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	movl	$pic24_conf, %edx	#, tmp136
	xorl	%eax, %eax	# tmp138
	movl	$61, %ecx	#, tmp139
	pushq	%r12	#
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp	#
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx	#
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	movq	%rdi, %rbx	# k, k
	movq	%rdx, %rdi	# tmp136, tmp137
	pushq	%rbp	#
	.cfi_def_cfa_offset 48
	movl	$338, pic24_index(%rip)	#, pic24_index
	rep stosl
	cmpb	$0, 2048(%rbx)	#, k_6(D)->devicename
	je	.L167	#,
	movl	$pic24_map+1024, %r12d	#, ivtmp.672
	xorl	%ebp, %ebp	# dev
	leaq	2048(%rbx), %r13	#, tmp210
	jmp	.L168	#
.L170:
	movl	%ebp, %edi	# dev, dev
	movq	%r13, %rsi	# tmp210,
	addq	$1064, %r12	#, ivtmp.672
	imulq	$1064, %rdi, %rdi	#, dev, tmp142
	addq	$pic24_map, %rdi	#, tmp143
	call	strcasecmp	#
	testl	%eax, %eax	# D.7177
	jne	.L169	#,
	movl	%ebp, pic24_index(%rip)	# dev, pic24_index
	jmp	.L167	#
.L169:
	incl	%ebp	# dev
.L168:
	cmpw	$0, (%r12)	#, MEM[base: D.8658_175, offset: 0B]
	jne	.L170	#,
	jmp	.L197	#
.L167:
	movl	pic24_index(%rip), %eax	# pic24_index, pic24_index
	imulq	$1064, %rax, %rax	#, pic24_index, tmp146
	cmpl	$70663, pic24_map+1036(%rax)	#, pic24_map[pic24_index.34_16].datasheet
	je	.L173	#,
	movw	$50, pic24_conf+236(%rip)	#, pic24_conf.tblpag
	movw	$1888, pic24_conf+238(%rip)	#, pic24_conf.nvmcon
	movw	$1924, pic24_conf+240(%rip)	#, pic24_conf.visi
	movb	$2, pic24_conf+242(%rip)	#, pic24_conf.tblnop
	movb	$1, pic24_conf+243(%rip)	#, pic24_conf.gotonop
	jmp	.L174	#
.L173:
	movw	$84, pic24_conf+236(%rip)	#, pic24_conf.tblpag
	movw	$1832, pic24_conf+238(%rip)	#, pic24_conf.nvmcon
	movw	$3976, pic24_conf+240(%rip)	#, pic24_conf.visi
	movb	$5, pic24_conf+242(%rip)	#, pic24_conf.tblnop
	movb	$3, pic24_conf+243(%rip)	#, pic24_conf.gotonop
.L174:
	movq	%rbx, %rdi	# k,
	xorl	%ebp, %ebp	#
	call	pic24_program_verify	#
	movl	$16711680, %esi	#,
	movq	%rbx, %rdi	# k,
	call	pic24_set_read_pointer	#
	movq	%rbx, %rdi	# k,
	call	pic24_table_read16_post_increment	#
	movq	%rbx, %rdi	# k,
	movzwl	%ax, %eax	# D.7185, D.7185
	movl	%eax, pic24_conf+228(%rip)	# D.7185, pic24_conf.deviceid
	call	pic24_table_read16_post_increment	#
	movzwl	%ax, %r8d	# D.7187, D.7188
	movl	pic24_conf+228(%rip), %ecx	# pic24_conf.deviceid, D.7190
	movl	$pic24_map+1024, %edx	#, ivtmp.660
	movl	%r8d, pic24_conf+232(%rip)	# D.7188, pic24_conf.revision
	jmp	.L175	#
.L177:
	addq	$1064, %rdx	#, ivtmp.660
	cmpl	%ecx, %eax	# D.7190, D.7180
	je	.L176	#,
	incl	%ebp	#
.L175:
	movzwl	(%rdx), %eax	# MEM[base: D.8645_171, offset: 0B],
	testw	%ax, %ax	# D.7180
	jne	.L177	#,
	jmp	.L198	#
.L194:
	movl	%ecx, %esi	# D.7190,
	movq	%rbx, %rdi	# k,
	call	io_fault	#
	movl	$__func__.5896, %edx	#,
	movq	%rax, %rcx	# D.7201,
	movl	$.LC38, %esi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	jmp	.L179	#
.L199:
	movl	$__func__.5896, %edx	#,
	movl	$.LC39, %esi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
.L179:
	movq	%rbx, %rdi	# k,
	call	pic24_standby	#
	movl	$70, %esi	#,
	movq	%rbx, %rdi	# k,
	call	io_exit	#
.L176:
	movl	%ebp, pic24_index(%rip)	# dev, pic24_index
	imulq	$1064, %rbp, %rbp	#, dev, tmp166
	movl	pic24_map+1036(%rbp), %eax	# pic24_map[dev_166].datasheet, D.7204
	cmpl	$70284, %eax	#, D.7204
	je	.L196	#,
	cmpl	$70102, %eax	#, D.7204
	jne	.L180	#,
.L196:
	movl	$8390078, %esi	#,
	jmp	.L201	#
.L180:
	cmpl	$70663, %eax	#, D.7204
	movl	$8392688, %esi	#,
	je	.L201	#,
.L183:
	movl	$8390640, %esi	#,
.L201:
	movq	%rbx, %rdi	# k,
	xorl	%ebp, %ebp	# ivtmp.644
	call	pic24_set_read_pointer	#
	movq	%rbx, %rdi	# k,
	call	pic24_table_read24_post_increment	#
	movl	%eax, pic24_conf(%rip)	# D.7214, pic24_conf.appid
	movl	pic24_index(%rip), %eax	# pic24_index, pic24_index
	movq	%rbx, %rdi	# k,
	imulq	$1064, %rax, %rax	#, pic24_index, tmp175
	movl	pic24_map+1040(%rax), %esi	# pic24_map[pic24_index.34_46].configaddr,
	call	pic24_set_read_pointer	#
	jmp	.L184	#
.L185:
	movq	%rbx, %rdi	# k,
	call	pic24_table_read16_post_increment	#
	movzwl	%ax, %eax	# D.7216, D.7216
	movl	%eax, pic24_conf+32(,%rbp,4)	# D.7216, MEM[symbol: pic24_conf, index: ivtmp.644_168, step: 4, offset: 32B]
.L184:
	movl	pic24_index(%rip), %eax	# pic24_index, pic24_index.34
	movl	%ebp, %ecx	# ivtmp.644, i
	incq	%rbp	# ivtmp.644
	imulq	$1064, %rax, %rax	#, pic24_index.34, tmp181
	movzbl	pic24_map+1044(%rax), %edx	# pic24_map[pic24_index.34_49].nconfig, pic24_map[pic24_index.34_49].nconfig
	addq	$pic24_map+1040, %rax	#, tmp182
	cmpl	%edx, %ecx	# pic24_map[pic24_index.34_49].nconfig, i
	jb	.L185	#,
	movl	8(%rax), %esi	# pic24_map[pic24_index.34_165].fuidaddr, D.7220
	testl	%esi, %esi	# D.7220
	jne	.L186	#,
.L191:
	movl	pic24_index(%rip), %eax	# pic24_index, pic24_index
	imulq	$1064, %rax, %rax	#, pic24_index, tmp190
	movl	pic24_map+1056(%rax), %esi	# pic24_map[pic24_index.34_65].calibaddr, D.7226
	testl	%esi, %esi	# D.7226
	je	.L188	#,
	jmp	.L187	#
.L186:
	movq	%rbx, %rdi	# k,
	xorl	%ebp, %ebp	# ivtmp.632
	call	pic24_set_read_pointer	#
	jmp	.L189	#
.L190:
	movq	%rbx, %rdi	# k,
	call	pic24_table_read24_post_increment	#
	movl	%eax, pic24_conf+96(,%rbp,4)	# D.7223, MEM[symbol: pic24_conf, index: ivtmp.632_167, step: 4, offset: 96B]
.L189:
	movl	pic24_index(%rip), %eax	# pic24_index, pic24_index
	movl	%ebp, %edx	# ivtmp.632, i
	incq	%rbp	# ivtmp.632
	imulq	$1064, %rax, %rax	#, pic24_index, tmp195
	movzbl	pic24_map+1052(%rax), %eax	# pic24_map[pic24_index.34_60].nfuid, pic24_map[pic24_index.34_60].nfuid
	cmpl	%eax, %edx	# pic24_map[pic24_index.34_60].nfuid, i
	jb	.L190	#,
	jmp	.L191	#
.L188:
	movq	%rbx, %rdi	# k,
	popq	%rbx	#
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
	jmp	pic24_standby	#
.L187:
	.cfi_restore_state
	movq	%rbx, %rdi	# k,
	xorl	%ebp, %ebp	# ivtmp.621
	call	pic24_set_read_pointer	#
	jmp	.L192	#
.L193:
	movq	%rbx, %rdi	# k,
	call	pic24_table_read24_post_increment	#
	movl	%eax, pic24_conf+4(,%rbp,4)	# D.7229, MEM[symbol: pic24_conf, index: ivtmp.621_85, step: 4, offset: 4B]
	incq	%rbp	# ivtmp.621
.L192:
	movl	pic24_index(%rip), %eax	# pic24_index, pic24_index
	imulq	$1064, %rax, %rax	#, pic24_index, tmp201
	movzbl	pic24_map+1060(%rax), %eax	# pic24_map[pic24_index.34_70].ncalib, pic24_map[pic24_index.34_70].ncalib
	cmpl	%ebp, %eax	# ivtmp.621, pic24_map[pic24_index.34_70].ncalib
	ja	.L193	#,
	jmp	.L188	#
.L197:
	movq	%r13, %rcx	# tmp210,
	movl	$__func__.5896, %edx	#,
	movl	$.LC40, %esi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	movl	$70, %esi	#,
	movq	%rbx, %rdi	# k,
	call	io_exit	#
	jmp	.L167	#
.L198:
	cmpl	$65535, %ecx	#, D.7190
	je	.L194	#,
	testl	%ecx, %ecx	# D.7190
	je	.L194	#,
	jmp	.L199	#
	.cfi_endproc
.LFE64:
	.size	pic24_read_config_memory, .-pic24_read_config_memory
	.globl	pic24_table_read48_post_increment
	.type	pic24_table_read48_post_increment, @function
pic24_table_read48_post_increment:
.LFB52:
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
	movq	%rdx, %rbp	# word1, word1
	pushq	%rbx	#
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	movq	%rdi, %rbx	# k, k
	pushq	%r12	#
	.cfi_def_cfa_offset 48
	movzbl	pic24_conf+242(%rip), %edx	# pic24_conf.tblnop, pic24_conf.tblnop
	movq	%rsi, %r12	# word0, word0
	movl	$12192662, %esi	#,
	call	pic24_six	#
	movq	%rbx, %rdi	# k,
	call	pic24_regout	#
	movzwl	%ax, %eax	# D.7272, D.7272
	movq	%rbx, %rdi	# k,
	movl	$12245942, %esi	#,
	movl	%eax, (%r12)	# D.7272, *word0_6(D)
	movzbl	pic24_conf+242(%rip), %edx	# pic24_conf.tblnop, pic24_conf.tblnop
	call	pic24_six	#
	movzbl	pic24_conf+242(%rip), %edx	# pic24_conf.tblnop, pic24_conf.tblnop
	movl	$12243926, %esi	#,
	movq	%rbx, %rdi	# k,
	call	pic24_six	#
	movq	%rbx, %rdi	# k,
	call	pic24_regout	#
	movzbl	pic24_conf+242(%rip), %edx	# pic24_conf.tblnop, pic24_conf.tblnop
	movq	%rbx, %rdi	# k,
	movl	$12192694, %esi	#,
	movl	%eax, %r13d	#, msb
	call	pic24_six	#
	movq	%rbx, %rdi	# k,
	call	pic24_regout	#
	movzwl	%ax, %eax	# D.7274, D.7274
	movzbl	%r13b, %edx	# msb, tmp99
	movl	%eax, 0(%rbp)	# D.7274, *word1_16(D)
	movl	%r13d, %eax	#, tmp102
	sall	$16, %edx	#, tmp99
	andl	$65280, %eax	#, tmp102
	orl	%edx, (%r12)	# tmp99, *word0_6(D)
	sall	$8, %eax	#, tmp102
	orl	%eax, 0(%rbp)	# tmp102, *word1_16(D)
	popq	%r13	#
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
.LFE52:
	.size	pic24_table_read48_post_increment, .-pic24_table_read48_post_increment
	.section	.rodata.str1.1
.LC41:
	.string	"%s: fatal error: block size (%u) uneven\n"
	.text
	.globl	pic24_read_program_memory_block
	.type	pic24_read_program_memory_block, @function
pic24_read_program_memory_block:
.LFB68:
	.cfi_startproc
	pushq	%r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movq	%rsi, %r15	# data, data
	pushq	%r14	#
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13	#
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movl	%ecx, %r13d	# size, size
	pushq	%r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movl	%edx, %ebp	# addr, addr
	pushq	%rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rdi, %rbx	# k, k
	subq	$24, %rsp	#,
	.cfi_def_cfa_offset 80
	testb	$1, %cl	#, size
	je	.L205	#,
	movl	$.LC41, %esi	#,
	movl	$1, %edi	#,
	movl	$__func__.5931, %edx	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	movl	$70, %esi	#,
	movq	%rbx, %rdi	# k,
	call	io_exit	#
.L205:
	movq	%rbx, %rdi	# k,
	xorl	%r12d, %r12d	# pc
	call	pic24_program_verify	#
	movl	%ebp, %esi	# addr,
	movq	%rbx, %rdi	# k,
	call	pic24_set_read_pointer	#
	jmp	.L215	#
.L209:
	movl	%r12d, %eax	# pc, D.7131
	incl	%r12d	# pc
	andl	$31, %eax	#, D.7131
	testl	%eax, %eax	# D.7131
	jne	.L207	#,
	movq	%rbx, %rdi	# k,
	call	pic24_goto200	#
.L207:
	leaq	12(%rsp), %rdx	#,
	leaq	8(%rsp), %rsi	#,
	movq	%rbx, %rdi	# k,
	addl	$4, %ebp	#, addr
	call	pic24_table_read48_post_increment	#
	movl	8(%rsp), %eax	# word0, word0
	movl	12(%rsp), %edx	# word1, word1
	testw	%bp, %bp	# addr
	movl	%eax, (%r15,%r14,4)	# word0, *D.7137_16
	leal	-1(%r12,%r12), %eax	#, tmp95
	movl	%edx, (%r15,%rax,4)	# word1, *D.7137_21
	jne	.L215	#,
	movl	%ebp, %esi	# addr,
	movq	%rbx, %rdi	# k,
	call	pic24_set_read_pointer	#
.L215:
	leal	(%r12,%r12), %r14d	#,
	cmpl	%r13d, %r14d	# size, i
	jb	.L209	#,
	movq	%rbx, %rdi	# k,
	call	pic24_standby	#
	addq	$24, %rsp	#,
	.cfi_def_cfa_offset 56
	movl	%ebp, %eax	# addr,
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
.LFE68:
	.size	pic24_read_program_memory_block, .-pic24_read_program_memory_block
	.section	.rodata.str1.1
.LC42:
	.string	"%s: information: program/erase timed out.\n"
	.text
	.globl	pic24_nvmcon_write_completion
	.type	pic24_nvmcon_write_completion, @function
pic24_nvmcon_write_completion:
.LFB53:
	.cfi_startproc
	pushq	%r14	#
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	xorl	%eax, %eax	# tmp75
	movl	$4, %ecx	#, tmp76
	pushq	%r13	#
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	movl	%edx, %r13d	# word, word
	pushq	%r12	#
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	movl	%esi, %r12d	# mask, mask
	xorl	%esi, %esi	#
	pushq	%rbp	#
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	movq	%rdi, %rbp	# k, k
	pushq	%rbx	#
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	subq	$32, %rsp	#,
	.cfi_def_cfa_offset 80
	movq	%rsp, %rdi	#, tmp74
	rep stosl
	leaq	16(%rsp), %rdi	#, tmp77
	movb	$4, %cl	#,
	rep stosl
	movq	%rsp, %rdi	#,
	call	gettimeofday	#
	movl	$28, %edx	#,
	xorl	%esi, %esi	#
	movq	%rbp, %rdi	# k,
	call	io_program_out	#
.L220:
	leaq	16(%rsp), %rdi	#,
	xorl	%esi, %esi	#
	call	gettimeofday	#
	movq	24(%rsp), %rax	# tv2.tv_usec, tmp89
	subq	8(%rsp), %rax	# tv1.tv_usec, tmp89
	movq	%rbp, %rdi	# k,
	movq	16(%rsp), %rbx	# tv2.tv_sec, tv3$tv_sec
	movzwl	pic24_conf+238(%rip), %esi	# pic24_conf.nvmcon, pic24_conf.nvmcon
	subq	(%rsp), %rbx	# tv1.tv_sec, tv3$tv_sec
	shrq	$63, %rax	#, tmp89
	subq	%rax, %rbx	# tmp89, tv3$tv_sec
	call	pic24_readreg	#
	movl	%eax, %r14d	#, regout
	movq	%rbp, %rdi	# k,
	andl	%r12d, %r14d	# mask, regout
	call	pic24_goto200	#
	cmpw	%r13w, %r14w	# word, regout
	je	.L219	#,
	testq	%rbx, %rbx	# tv3$tv_sec
	jle	.L220	#,
	jmp	.L221	#
.L219:
	testq	%rbx, %rbx	# tv3$tv_sec
	jle	.L217	#,
.L221:
	movl	$__func__.5835, %edx	#,
	movl	$.LC42, %esi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
.L217:
	addq	$32, %rsp	#,
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
.LFE53:
	.size	pic24_nvmcon_write_completion, .-pic24_nvmcon_write_completion
	.type	pic24_nvmcon_write_internal, @function
pic24_nvmcon_write_internal:
.LFB55:
	.cfi_startproc
	pushq	%rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movl	$2, %edx	#,
	movq	%rdi, %rbx	# k, k
	movl	$11069281, %esi	#,
	call	pic24_six	#
	movq	%rbx, %rdi	# k,
	xorl	%edx, %edx	#
	movl	$32768, %esi	#,
	popq	%rbx	#
	.cfi_def_cfa_offset 8
	jmp	pic24_nvmcon_write_completion	#
	.cfi_endproc
.LFE55:
	.size	pic24_nvmcon_write_internal, .-pic24_nvmcon_write_internal
	.globl	pic24_nvmcon_write_external
	.type	pic24_nvmcon_write_external, @function
pic24_nvmcon_write_external:
.LFB54:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movl	%esi, %ebp	# tdly, tdly
	xorl	%edx, %edx	#
	movl	$2098520, %esi	#,
	pushq	%rbx	#
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rdi, %rbx	# k, k
	pushq	%rax	#
	.cfi_def_cfa_offset 32
	call	pic24_six	#
	movq	%rbx, %rdi	# k,
	xorl	%edx, %edx	#
	movl	$2099881, %esi	#,
	call	pic24_six	#
	movq	%rbx, %rdi	# k,
	xorl	%edx, %edx	#
	movl	$8928056, %esi	#,
	call	pic24_six	#
	movq	%rbx, %rdi	# k,
	xorl	%edx, %edx	#
	movl	$8928057, %esi	#,
	call	pic24_six	#
	movl	$4, %edx	#,
	movq	%rbx, %rdi	# k,
	movl	$11069281, %esi	#,
	call	pic24_six	#
	movl	%ebp, %esi	# tdly,
	movq	%rbx, %rdi	# k,
	call	io_usleep	#
	movq	%rbx, %rdi	# k,
	movl	$4, %edx	#,
	movl	$11134817, %esi	#,
	call	pic24_six	#
	popq	%rax	#
	.cfi_def_cfa_offset 24
	movq	%rbx, %rdi	# k,
	popq	%rbx	#
	.cfi_def_cfa_offset 16
	popq	%rbp	#
	.cfi_def_cfa_offset 8
	jmp	pic24_goto200	#
	.cfi_endproc
.LFE54:
	.size	pic24_nvmcon_write_external, .-pic24_nvmcon_write_external
	.globl	pic24_PIC24FJ_erase
	.type	pic24_PIC24FJ_erase, @function
pic24_PIC24FJ_erase:
.LFB58:
	.cfi_startproc
	pushq	%rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %rbx	# k, k
	call	pic24_program_verify	#
	movq	%rbx, %rdi	# k,
	xorl	%edx, %edx	#
	movl	$2360570, %esi	#,
	call	pic24_six	#
	movq	%rbx, %rdi	# k,
	xorl	%edx, %edx	#
	movl	$8928010, %esi	#,
	call	pic24_six	#
	movq	%rbx, %rdi	# k,
	xorl	%edx, %edx	#
	movl	$2097152, %esi	#,
	call	pic24_six	#
	movq	%rbx, %rdi	# k,
	xorl	%edx, %edx	#
	movl	$8913296, %esi	#,
	call	pic24_six	#
	movq	%rbx, %rdi	# k,
	xorl	%edx, %edx	#
	movl	$2097152, %esi	#,
	call	pic24_six	#
	movq	%rbx, %rdi	# k,
	movl	$2, %edx	#,
	movl	$12257280, %esi	#,
	call	pic24_six	#
	movq	%rbx, %rdi	# k,
	call	pic24_nvmcon_write_internal	#
	movq	%rbx, %rdi	# k,
	popq	%rbx	#
	.cfi_def_cfa_offset 8
	jmp	pic24_standby	#
	.cfi_endproc
.LFE58:
	.size	pic24_PIC24FJ_erase, .-pic24_PIC24FJ_erase
	.globl	pic24_dsPIC33FJ_erase
	.type	pic24_dsPIC33FJ_erase, @function
pic24_dsPIC33FJ_erase:
.LFB59:
	.cfi_startproc
	pushq	%rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %rbx	# k, k
	call	pic24_program_verify	#
	movq	%rbx, %rdi	# k,
	xorl	%edx, %edx	#
	movl	$2360570, %esi	#,
	call	pic24_six	#
	movq	%rbx, %rdi	# k,
	xorl	%edx, %edx	#
	movl	$8928010, %esi	#,
	call	pic24_six	#
	movq	%rbx, %rdi	# k,
	xorl	%edx, %edx	#
	movl	$2097152, %esi	#,
	call	pic24_six	#
	movq	%rbx, %rdi	# k,
	xorl	%edx, %edx	#
	movl	$8913296, %esi	#,
	call	pic24_six	#
	movl	$4, %edx	#,
	movq	%rbx, %rdi	# k,
	movl	$11069281, %esi	#,
	call	pic24_six	#
	movq	%rbx, %rdi	# k,
	movl	$240001, %esi	#,
	call	io_usleep	#
	movq	%rbx, %rdi	# k,
	xorl	%edx, %edx	#
	movl	$32768, %esi	#,
	call	pic24_nvmcon_write_completion	#
	movq	%rbx, %rdi	# k,
	popq	%rbx	#
	.cfi_def_cfa_offset 8
	jmp	pic24_standby	#
	.cfi_endproc
.LFE59:
	.size	pic24_dsPIC33FJ_erase, .-pic24_dsPIC33FJ_erase
	.globl	pic24_PIC24FKA_erase
	.type	pic24_PIC24FKA_erase, @function
pic24_PIC24FKA_erase:
.LFB60:
	.cfi_startproc
	pushq	%rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %rbx	# k, k
	call	pic24_program_verify	#
	movq	%rbx, %rdi	# k,
	xorl	%edx, %edx	#
	movl	$2360906, %esi	#,
	call	pic24_six	#
	movq	%rbx, %rdi	# k,
	xorl	%edx, %edx	#
	movl	$8928010, %esi	#,
	call	pic24_six	#
	movq	%rbx, %rdi	# k,
	xorl	%edx, %edx	#
	movl	$2097152, %esi	#,
	call	pic24_six	#
	movq	%rbx, %rdi	# k,
	xorl	%edx, %edx	#
	movl	$8913296, %esi	#,
	call	pic24_six	#
	movq	%rbx, %rdi	# k,
	xorl	%edx, %edx	#
	movl	$2097152, %esi	#,
	call	pic24_six	#
	movq	%rbx, %rdi	# k,
	movl	$2, %edx	#,
	movl	$12257280, %esi	#,
	call	pic24_six	#
	movq	%rbx, %rdi	# k,
	call	pic24_nvmcon_write_internal	#
	movq	%rbx, %rdi	# k,
	popq	%rbx	#
	.cfi_def_cfa_offset 8
	jmp	pic24_standby	#
	.cfi_endproc
.LFE60:
	.size	pic24_PIC24FKA_erase, .-pic24_PIC24FKA_erase
	.globl	pic24_dsPIC33E_PIC24E_erase
	.type	pic24_dsPIC33E_PIC24E_erase, @function
pic24_dsPIC33E_PIC24E_erase:
.LFB62:
	.cfi_startproc
	pushq	%rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %rbx	# k, k
	call	pic24_program_verify	#
	movq	%rbx, %rdi	# k,
	movl	$1, %edx	#,
	movl	$2359546, %esi	#,
	call	pic24_six	#
	movq	%rbx, %rdi	# k,
	movl	$2, %edx	#,
	movl	$8927562, %esi	#,
	call	pic24_six	#
	movq	%rbx, %rdi	# k,
	xorl	%edx, %edx	#
	movl	$2098513, %esi	#,
	call	pic24_six	#
	movq	%rbx, %rdi	# k,
	xorl	%edx, %edx	#
	movl	$8927601, %esi	#,
	call	pic24_six	#
	movq	%rbx, %rdi	# k,
	xorl	%edx, %edx	#
	movl	$2099873, %esi	#,
	call	pic24_six	#
	movq	%rbx, %rdi	# k,
	xorl	%edx, %edx	#
	movl	$8927601, %esi	#,
	call	pic24_six	#
	movl	$3, %edx	#,
	movq	%rbx, %rdi	# k,
	movl	$11069225, %esi	#,
	call	pic24_six	#
	movq	%rbx, %rdi	# k,
	movl	$21001, %esi	#,
	call	io_usleep	#
	movq	%rbx, %rdi	# k,
	movl	$16399, %edx	#,
	movl	$65535, %esi	#,
	call	pic24_nvmcon_write_completion	#
	movq	%rbx, %rdi	# k,
	popq	%rbx	#
	.cfi_def_cfa_offset 8
	jmp	pic24_standby	#
	.cfi_endproc
.LFE62:
	.size	pic24_dsPIC33E_PIC24E_erase, .-pic24_dsPIC33E_PIC24E_erase
	.globl	pic24_write_buffer_init
	.type	pic24_write_buffer_init, @function
pic24_write_buffer_init:
.LFB70:
	.cfi_startproc
	movl	$pic24_conf+100, %edx	#, tmp62
	xorl	%eax, %eax	# tmp64
	pushq	%rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movl	$32, %ecx	#, tmp65
	movq	%rdi, %rbx	# k, k
	movq	%rdx, %rdi	# tmp62, tmp63
	rep stosl
	movl	$pic24_conf+36, %edx	#, tmp66
	movq	%rdx, %rdi	# tmp66, tmp67
	movb	$16, %cl	#,
	rep stosl
	movl	pic24_index(%rip), %eax	# pic24_index, pic24_index
	imulq	$1064, %rax, %rax	#, pic24_index, tmp72
	movl	pic24_map+1036(%rax), %eax	# pic24_map[pic24_index.28_1].datasheet, pic24_map[pic24_index.28_1].datasheet
	cmpl	$39934, %eax	#, pic24_map[pic24_index.28_1].datasheet
	je	.L240	#,
	ja	.L243	#,
	cmpl	$39786, %eax	#, pic24_map[pic24_index.28_1].datasheet
	je	.L240	#,
	cmpl	$39919, %eax	#, pic24_map[pic24_index.28_1].datasheet
	je	.L239	#,
	cmpl	$30625, %eax	#, pic24_map[pic24_index.28_1].datasheet
	jne	.L237	#,
	jmp	.L239	#
.L243:
	cmpl	$70659, %eax	#, pic24_map[pic24_index.28_1].datasheet
	je	.L241	#,
	ja	.L244	#,
	cmpl	$70152, %eax	#, pic24_map[pic24_index.28_1].datasheet
	jne	.L237	#,
	jmp	.L240	#
.L244:
	cmpl	$70663, %eax	#, pic24_map[pic24_index.28_1].datasheet
	je	.L242	#,
	cmpl	$75012, %eax	#, pic24_map[pic24_index.28_1].datasheet
	jne	.L237	#,
	jmp	.L241	#
.L240:
	xorl	%edx, %edx	#
	movl	$2359322, %esi	#,
	jmp	.L268	#
.L241:
	xorl	%edx, %edx	#
	movl	$2359354, %esi	#,
.L268:
	movq	%rbx, %rdi	# k,
	call	pic24_six	#
	xorl	%edx, %edx	#
	movl	$8928010, %esi	#,
	jmp	.L267	#
.L239:
	xorl	%edx, %edx	#
	movl	$2359370, %esi	#,
	jmp	.L268	#
.L242:
	xorl	%edx, %edx	#
	movl	$2101164, %esi	#,
	movq	%rbx, %rdi	# k,
	call	pic24_six	#
	xorl	%edx, %edx	#
	movl	$8913580, %esi	#,
.L267:
	movq	%rbx, %rdi	# k,
	popq	%rbx	#
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	jmp	pic24_six	#
.L237:
	.cfi_restore_state
	popq	%rbx	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE70:
	.size	pic24_write_buffer_init, .-pic24_write_buffer_init
	.globl	pic24_write_program
	.type	pic24_write_program, @function
pic24_write_program:
.LFB71:
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
	movl	%esi, %r12d	# address, address
	pushq	%rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movq	%rdx, %rbp	# buffer, buffer
	pushq	%rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rdi, %rbx	# k, k
	subq	$24, %rsp	#,
	.cfi_def_cfa_offset 80
	movl	pic24_index(%rip), %eax	# pic24_index, pic24_index
	movl	%ecx, 12(%rsp)	# buffer_size, %sfp
	imulq	$1064, %rax, %rax	#, pic24_index, tmp150
	movl	pic24_map+1036(%rax), %eax	# pic24_map[pic24_index.27_2].datasheet, pic24_map[pic24_index.27_2].datasheet
	cmpl	$70102, %eax	#, pic24_map[pic24_index.27_2].datasheet
	je	.L271	#,
	cmpl	$70284, %eax	#, pic24_map[pic24_index.27_2].datasheet
	jne	.L270	#,
.L271:
	xorl	%edx, %edx	#
	movl	$2359322, %esi	#,
	movq	%rbx, %rdi	# k,
	call	pic24_six	#
	xorl	%edx, %edx	#
	movl	$8928010, %esi	#,
	movq	%rbx, %rdi	# k,
	call	pic24_six	#
.L270:
	movl	%r12d, %esi	# address,
	movq	%rbx, %rdi	# k,
	xorl	%r15d, %r15d	# i
	call	pic24_set_write_pointer	#
	jmp	.L272	#
.L273:
	movl	%r15d, %edx	# i, i
	movq	%rbx, %rdi	# k,
	movl	0(%rbp,%rdx,4), %ecx	# *D.7060_11, D.7061
	leal	1(%r15), %edx	#, tmp155
	movl	0(%rbp,%rdx,4), %r14d	# *D.7065_17, D.7066
	leal	2(%r15), %edx	#, tmp157
	movzwl	%cx, %esi	# D.7061, tmp162
	movl	0(%rbp,%rdx,4), %r13d	# *D.7070_23, D.7071
	leal	3(%r15), %edx	#, tmp159
	sall	$4, %esi	#, tmp162
	orl	$2097152, %esi	#, tmp162
	movl	0(%rbp,%rdx,4), %r12d	# *D.7075_29, D.7076
	xorl	%edx, %edx	#
	movl	%ecx, (%rsp)	#,
	call	pic24_six	#
	movl	(%rsp), %ecx	#,
	movl	%r14d, %edx	# D.7066, tmp169
	movq	%rbx, %rdi	# k,
	shrl	$4, %edx	#, tmp169
	andl	$1044480, %edx	#, tmp169
	movl	%ecx, %esi	# D.7061, tmp170
	shrl	$12, %esi	#, tmp170
	andl	$4080, %esi	#, tmp170
	orl	$2097153, %esi	#, tmp170
	orl	%edx, %esi	# tmp169, tmp170
	xorl	%edx, %edx	#
	call	pic24_six	#
	movzwl	%r14w, %esi	# D.7066, tmp173
	xorl	%edx, %edx	#
	movq	%rbx, %rdi	# k,
	sall	$4, %esi	#, tmp173
	orl	$2097154, %esi	#, tmp173
	call	pic24_six	#
	movzwl	%r13w, %esi	# D.7071, tmp176
	xorl	%edx, %edx	#
	movq	%rbx, %rdi	# k,
	sall	$4, %esi	#, tmp176
	shrl	$12, %r13d	#, tmp182
	orl	$2097155, %esi	#, tmp176
	andl	$4080, %r13d	#, tmp182
	call	pic24_six	#
	movl	%r12d, %esi	# D.7076, tmp184
	xorl	%edx, %edx	#
	movq	%rbx, %rdi	# k,
	shrl	$4, %esi	#, tmp184
	andl	$1044480, %esi	#, tmp184
	orl	%r13d, %esi	# tmp182, tmp184
	orl	$2097156, %esi	#, tmp184
	call	pic24_six	#
	movzwl	%r12w, %esi	# D.7076, tmp187
	movq	%rbx, %rdi	# k,
	sall	$4, %esi	#, tmp187
	orl	$2097157, %esi	#, tmp187
	xorl	%edx, %edx	#
	addl	$4, %r15d	#, i
	call	pic24_six	#
	movl	$1, %edx	#,
	movl	$15401728, %esi	#,
	movq	%rbx, %rdi	# k,
	call	pic24_six	#
	movl	$2, %edx	#,
	movl	$12258230, %esi	#,
	movq	%rbx, %rdi	# k,
	call	pic24_six	#
	movl	$2, %edx	#,
	movl	$12311478, %esi	#,
	movq	%rbx, %rdi	# k,
	call	pic24_six	#
	movl	$2, %edx	#,
	movl	$12315574, %esi	#,
	movq	%rbx, %rdi	# k,
	call	pic24_six	#
	movl	$2, %edx	#,
	movl	$12262326, %esi	#,
	movq	%rbx, %rdi	# k,
	call	pic24_six	#
	movl	$2, %edx	#,
	movl	$12258230, %esi	#,
	movq	%rbx, %rdi	# k,
	call	pic24_six	#
	movl	$2, %edx	#,
	movl	$12311478, %esi	#,
	movq	%rbx, %rdi	# k,
	call	pic24_six	#
	movl	$2, %edx	#,
	movl	$12315574, %esi	#,
	movq	%rbx, %rdi	# k,
	call	pic24_six	#
	movl	$2, %edx	#,
	movl	$12262326, %esi	#,
	movq	%rbx, %rdi	# k,
	call	pic24_six	#
.L272:
	cmpl	12(%rsp), %r15d	# %sfp, i
	jb	.L273	#,
	movl	pic24_index(%rip), %eax	# pic24_index, pic24_index
	imulq	$1064, %rax, %rax	#, pic24_index, tmp190
	movl	pic24_map+1036(%rax), %eax	# pic24_map[pic24_index.27_90].datasheet, pic24_map[pic24_index.27_90].datasheet
	cmpl	$70102, %eax	#, pic24_map[pic24_index.27_90].datasheet
	je	.L275	#,
	cmpl	$70284, %eax	#, pic24_map[pic24_index.27_90].datasheet
	jne	.L288	#,
.L275:
	addq	$24, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movq	%rbx, %rdi	# k,
	movl	$4000, %esi	#,
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
	jmp	pic24_nvmcon_write_external	#
.L288:
	.cfi_restore_state
	addq	$24, %rsp	#,
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
	jmp	pic24_nvmcon_write_internal	#
	.cfi_endproc
.LFE71:
	.size	pic24_write_program, .-pic24_write_program
	.globl	pic24_write_data
	.type	pic24_write_data, @function
pic24_write_data:
.LFB72:
	.cfi_startproc
	pushq	%r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14	#
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movq	%rdx, %r14	# buffer, buffer
	pushq	%r13	#
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movl	%esi, %ebp	# address, address
	pushq	%rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rdi, %rbx	# k, k
	subq	$24, %rsp	#,
	.cfi_def_cfa_offset 80
	movl	pic24_index(%rip), %eax	# pic24_index, pic24_index
	movl	%ecx, 12(%rsp)	# buffer_size, %sfp
	imulq	$1064, %rax, %rax	#, pic24_index, tmp120
	cmpl	$70102, pic24_map+1036(%rax)	#, pic24_map[pic24_index.26_2].datasheet
	jne	.L291	#,
	xorl	%edx, %edx	#
	movl	$2359386, %esi	#,
	call	pic24_six	#
	xorl	%edx, %edx	#
	movl	$8928010, %esi	#,
	movq	%rbx, %rdi	# k,
	call	pic24_six	#
.L291:
	movl	%ebp, %esi	# address,
	movq	%rbx, %rdi	# k,
	xorl	%ebp, %ebp	# i
	call	pic24_set_write_pointer	#
	jmp	.L293	#
.L294:
	leal	2(%rbp), %edx	#, tmp129
	leal	1(%rbp), %eax	#, tmp124
	movq	%rbx, %rdi	# k,
	movl	(%r14,%rdx,4), %r13d	# *D.7044_27, *D.7044_27
	leal	3(%rbp), %edx	#, tmp134
	movl	(%r14,%rax,4), %eax	# *D.7037_19, *D.7037_19
	movl	(%r14,%rdx,4), %r12d	# *D.7051_35, *D.7051_35
	movl	%ebp, %edx	# i, i
	addl	$4, %ebp	#, i
	movl	(%r14,%rdx,4), %esi	# *D.7030_11, *D.7030_11
	movzwl	%ax, %r15d	# *D.7037_19, w1
	andl	$65535, %r13d	#, w2
	sall	$4, %r15d	#, w1
	xorl	%edx, %edx	#
	sall	$4, %r13d	#, w2
	orl	$2097153, %r15d	#, w1
	andl	$65535, %r12d	#, w3
	orl	$2097154, %r13d	#, w2
	andl	$65535, %esi	#, tmp142
	sall	$4, %r12d	#, w3
	sall	$4, %esi	#, tmp142
	orl	$2097155, %r12d	#, w3
	orl	$2097152, %esi	#, tmp142
	call	pic24_six	#
	xorl	%edx, %edx	#
	movl	%r15d, %esi	# w1,
	movq	%rbx, %rdi	# k,
	call	pic24_six	#
	xorl	%edx, %edx	#
	movl	%r13d, %esi	# w2,
	movq	%rbx, %rdi	# k,
	call	pic24_six	#
	xorl	%edx, %edx	#
	movl	%r12d, %esi	# w3,
	movq	%rbx, %rdi	# k,
	call	pic24_six	#
	movl	$1, %edx	#,
	movl	$15401728, %esi	#,
	movq	%rbx, %rdi	# k,
	call	pic24_six	#
	movl	$2, %edx	#,
	movl	$12262326, %esi	#,
	movq	%rbx, %rdi	# k,
	call	pic24_six	#
	movl	$2, %edx	#,
	movl	$12262326, %esi	#,
	movq	%rbx, %rdi	# k,
	call	pic24_six	#
	movl	$2, %edx	#,
	movl	$12262326, %esi	#,
	movq	%rbx, %rdi	# k,
	call	pic24_six	#
	movl	$2, %edx	#,
	movl	$12262326, %esi	#,
	movq	%rbx, %rdi	# k,
	call	pic24_six	#
.L293:
	cmpl	12(%rsp), %ebp	# %sfp, i
	jb	.L294	#,
	movl	pic24_index(%rip), %eax	# pic24_index, pic24_index
	imulq	$1064, %rax, %rax	#, pic24_index, tmp145
	cmpl	$70102, pic24_map+1036(%rax)	#, pic24_map[pic24_index.26_41].datasheet
	jne	.L297	#,
	addq	$24, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movq	%rbx, %rdi	# k,
	movl	$2000, %esi	#,
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
	jmp	pic24_nvmcon_write_external	#
.L297:
	.cfi_restore_state
	addq	$24, %rsp	#,
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
	jmp	pic24_nvmcon_write_internal	#
	.cfi_endproc
.LFE72:
	.size	pic24_write_data, .-pic24_write_data
	.globl	pic24_write_program_word24
	.type	pic24_write_program_word24, @function
pic24_write_program_word24:
.LFB73:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	andl	$65535, %esi	#, tmp73
	movl	%edx, %ebp	# word, word
	sall	$4, %esi	#, tmp73
	xorl	%edx, %edx	#
	pushq	%rbx	#
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	orl	$2097154, %esi	#, tmp73
	movq	%rdi, %rbx	# k, k
	pushq	%rax	#
	.cfi_def_cfa_offset 32
	call	pic24_six	#
	movzwl	%bp, %esi	# word, tmp76
	movq	%rbx, %rdi	# k,
	xorl	%edx, %edx	#
	sall	$4, %esi	#, tmp76
	orl	$2097157, %esi	#, tmp76
	call	pic24_six	#
	movl	%ebp, %esi	# word, tmp79
	movq	%rbx, %rdi	# k,
	movl	$1, %edx	#,
	andl	$16711680, %esi	#, tmp79
	shrl	$12, %esi	#, tmp79
	orl	$2097158, %esi	#, tmp79
	call	pic24_six	#
	movq	%rbx, %rdi	# k,
	movl	$2, %edx	#,
	movl	$12257541, %esi	#,
	call	pic24_six	#
	movq	%rbx, %rdi	# k,
	movl	$3, %edx	#,
	movl	$12294406, %esi	#,
	call	pic24_six	#
	popq	%rax	#
	.cfi_def_cfa_offset 24
	movq	%rbx, %rdi	# k,
	popq	%rbx	#
	.cfi_def_cfa_offset 16
	popq	%rbp	#
	.cfi_def_cfa_offset 8
	jmp	pic24_nvmcon_write_internal	#
	.cfi_endproc
.LFE73:
	.size	pic24_write_program_word24, .-pic24_write_program_word24
	.globl	pic24_write_program_word48
	.type	pic24_write_program_word48, @function
pic24_write_program_word48:
.LFB74:
	.cfi_startproc
	pushq	%r13	#
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	movl	%edx, %r13d	# word0, word0
	pushq	%r12	#
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	movl	%ecx, %r12d	# word1, word1
	pushq	%rbp	#
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	movl	%esi, %ebp	# address, address
	movzwl	%dx, %esi	# word0, tmp92
	sall	$4, %esi	#, tmp92
	xorl	%edx, %edx	#
	pushq	%rbx	#
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	orl	$2097152, %esi	#, tmp92
	movq	%rdi, %rbx	# k, k
	pushq	%rax	#
	.cfi_def_cfa_offset 48
	call	pic24_six	#
	movl	%r13d, %esi	# word0, tmp100
	movl	%r12d, %edx	# word1, tmp99
	movq	%rbx, %rdi	# k,
	shrl	$12, %esi	#, tmp100
	shrl	$4, %edx	#, tmp99
	andl	$4080, %esi	#, tmp100
	andl	$1044480, %edx	#, tmp99
	orl	$2097153, %esi	#, tmp100
	orl	%edx, %esi	# tmp99, tmp100
	xorl	%edx, %edx	#
	call	pic24_six	#
	movzwl	%r12w, %esi	# word1, tmp103
	xorl	%edx, %edx	#
	movq	%rbx, %rdi	# k,
	sall	$4, %esi	#, tmp103
	orl	$2097154, %esi	#, tmp103
	call	pic24_six	#
	movq	%rbx, %rdi	# k,
	movl	$1, %edx	#,
	movl	$15401728, %esi	#,
	call	pic24_six	#
	movq	%rbx, %rdi	# k,
	movl	$1, %edx	#,
	movl	$15401856, %esi	#,
	call	pic24_six	#
	movq	%rbx, %rdi	# k,
	movl	$2, %edx	#,
	movl	$12258230, %esi	#,
	call	pic24_six	#
	movq	%rbx, %rdi	# k,
	movl	$2, %edx	#,
	movl	$12311478, %esi	#,
	call	pic24_six	#
	movq	%rbx, %rdi	# k,
	movl	$2, %edx	#,
	movl	$12315574, %esi	#,
	call	pic24_six	#
	movq	%rbx, %rdi	# k,
	movl	$2, %edx	#,
	movl	$12262326, %esi	#,
	call	pic24_six	#
	movzwl	%bp, %esi	# address, tmp106
	xorl	%edx, %edx	#
	movq	%rbx, %rdi	# k,
	sall	$4, %esi	#, tmp106
	orl	$2097155, %esi	#, tmp106
	call	pic24_six	#
	movl	%ebp, %esi	# address, tmp109
	movq	%rbx, %rdi	# k,
	xorl	%edx, %edx	#
	andl	$16711680, %esi	#, tmp109
	shrl	$12, %esi	#, tmp109
	orl	$2097156, %esi	#, tmp109
	call	pic24_six	#
	movq	%rbx, %rdi	# k,
	xorl	%edx, %edx	#
	movl	$8927571, %esi	#,
	call	pic24_six	#
	movq	%rbx, %rdi	# k,
	xorl	%edx, %edx	#
	movl	$8927588, %esi	#,
	call	pic24_six	#
	movq	%rbx, %rdi	# k,
	movl	$1, %edx	#,
	movl	$2359322, %esi	#,
	call	pic24_six	#
	movq	%rbx, %rdi	# k,
	movl	$2, %edx	#,
	movl	$8927562, %esi	#,
	call	pic24_six	#
	movq	%rbx, %rdi	# k,
	xorl	%edx, %edx	#
	movl	$2098513, %esi	#,
	call	pic24_six	#
	movq	%rbx, %rdi	# k,
	xorl	%edx, %edx	#
	movl	$8927601, %esi	#,
	call	pic24_six	#
	movq	%rbx, %rdi	# k,
	xorl	%edx, %edx	#
	movl	$2099873, %esi	#,
	call	pic24_six	#
	movq	%rbx, %rdi	# k,
	xorl	%edx, %edx	#
	movl	$8927601, %esi	#,
	call	pic24_six	#
	movl	$3, %edx	#,
	movq	%rbx, %rdi	# k,
	movl	$11069225, %esi	#,
	call	pic24_six	#
	movq	%rbx, %rdi	# k,
	movl	$55, %esi	#,
	call	io_usleep	#
	popq	%rax	#
	.cfi_def_cfa_offset 40
	movq	%rbx, %rdi	# k,
	movl	$16385, %edx	#,
	movl	$65535, %esi	#,
	popq	%rbx	#
	.cfi_def_cfa_offset 32
	popq	%rbp	#
	.cfi_def_cfa_offset 24
	popq	%r12	#
	.cfi_def_cfa_offset 16
	popq	%r13	#
	.cfi_def_cfa_offset 8
	jmp	pic24_nvmcon_write_completion	#
	.cfi_endproc
.LFE74:
	.size	pic24_write_program_word48, .-pic24_write_program_word48
	.globl	pic24_write_data_word16
	.type	pic24_write_data_word16, @function
pic24_write_data_word16:
.LFB75:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	andl	$65535, %esi	#, tmp70
	movl	%edx, %ebp	# word, word
	sall	$4, %esi	#, tmp70
	xorl	%edx, %edx	#
	pushq	%rbx	#
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	orl	$2097154, %esi	#, tmp70
	movq	%rdi, %rbx	# k, k
	pushq	%rcx	#
	.cfi_def_cfa_offset 32
	call	pic24_six	#
	movzwl	%bp, %esi	# word, tmp73
	movq	%rbx, %rdi	# k,
	xorl	%edx, %edx	#
	sall	$4, %esi	#, tmp73
	orl	$2097157, %esi	#, tmp73
	call	pic24_six	#
	movq	%rbx, %rdi	# k,
	movl	$12257541, %esi	#,
	movl	$2, %edx	#,
	call	pic24_six	#
	popq	%rsi	#
	.cfi_def_cfa_offset 24
	movq	%rbx, %rdi	# k,
	popq	%rbx	#
	.cfi_def_cfa_offset 16
	popq	%rbp	#
	.cfi_def_cfa_offset 8
	jmp	pic24_nvmcon_write_internal	#
	.cfi_endproc
.LFE75:
	.size	pic24_write_data_word16, .-pic24_write_data_word16
	.section	.rodata.str1.1
.LC43:
	.string	"%s: warning: region unsupported [%d]\n"
	.text
	.globl	pic24_write_buffer
	.type	pic24_write_buffer, @function
pic24_write_buffer:
.LFB76:
	.cfi_startproc
	movl	%esi, %eax	# region, region
	movl	%edx, %esi	# address, address
	movq	%rcx, %rdx	# buffer, buffer
	cmpl	$2, %eax	#, region
	movl	%r8d, %ecx	# buffer_size, buffer_size
	je	.L308	#,
	cmpl	$4, %eax	#, region
	je	.L307	#,
	cmpl	$1, %eax	#, region
	jne	.L318	#,
.L307:
	cmpl	$1, %ecx	#, buffer_size
	jne	.L309	#,
	movl	(%rdx), %edx	# *buffer_3(D),
	jmp	pic24_write_program_word24	#
.L309:
	cmpl	$2, %ecx	#, buffer_size
	jne	.L310	#,
	movl	4(%rdx), %ecx	# MEM[(uint32_t *)buffer_3(D) + 4B], MEM[(uint32_t *)buffer_3(D) + 4B]
	movl	(%rdx), %edx	# *buffer_3(D),
	jmp	pic24_write_program_word48	#
.L310:
	jmp	pic24_write_program	#
.L308:
	cmpl	$1, %r8d	#, buffer_size
	jne	.L311	#,
	movl	(%rdx), %edx	# *buffer_3(D),
	jmp	pic24_write_data_word16	#
.L311:
	jmp	pic24_write_data	#
.L318:
	movl	%eax, %ecx	# region,
	movl	$__func__.6057, %edx	#,
	movl	$.LC43, %esi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	jmp	__printf_chk	#
	.cfi_endproc
.LFE76:
	.size	pic24_write_buffer, .-pic24_write_buffer
	.section	.rodata.str1.1
.LC44:
	.string	"%s: fatal error: zero sized buffer\n"
.LC45:
	.string	"%s: fatal error: malloc failed\n"
	.text
	.globl	pic24_write_buffered
	.type	pic24_write_buffered, @function
pic24_write_buffered:
.LFB77:
	.cfi_startproc
	pushq	%r14	#
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	movl	%ecx, %eax	# mode, tmp112
	andl	$-3, %eax	#, tmp112
	pushq	%r13	#
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	decl	%eax	# tmp112
	movl	%esi, %r13d	# data1, data1
	pushq	%r12	#
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	movl	%edx, %r12d	# data2, data2
	pushq	%rbp	#
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	movl	%ecx, %ebp	# mode, mode
	pushq	%rbx	#
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	movq	%rdi, %rbx	# k, k
	jne	.L321	#,
	movq	buffer.6066(%rip), %rcx	# buffer, buffer.18
	testq	%rcx, %rcx	# buffer.18
	je	.L322	#,
	cmpl	$0, write_pending.6068(%rip)	#, write_pending
	je	.L323	#,
	movl	buffer_address.6065(%rip), %edx	# buffer_address, tmp113
	movl	buffer_size.6067(%rip), %r8d	# buffer_size,
	movl	buffer_region.6064(%rip), %esi	# buffer_region,
	movl	$0, write_pending.6068(%rip)	#, write_pending
	addl	%edx, %edx	# tmp113
	call	pic24_write_buffer	#
.L323:
	movq	buffer.6066(%rip), %rdi	# buffer,
	call	free	#
	movl	$0, buffer_region.6064(%rip)	#, buffer_region
	movl	$0, buffer_address.6065(%rip)	#, buffer_address
	movq	$0, buffer.6066(%rip)	#, buffer
	movl	$0, buffer_size.6067(%rip)	#, buffer_size
.L322:
	cmpl	$1, %ebp	#, mode
	jne	.L321	#,
	movl	%r13d, buffer_region.6064(%rip)	# data1, buffer_region
	movl	%r12d, buffer_size.6067(%rip)	# data2, buffer_size
.L321:
	leal	-1(%rbp), %eax	#, tmp115
	cmpl	$1, %eax	#, tmp115
	ja	.L319	#,
	cmpq	$0, buffer.6066(%rip)	#, buffer
	jne	.L327	#,
	cmpl	$0, buffer_size.6067(%rip)	#, buffer_size
	jne	.L328	#,
	movl	$.LC44, %esi	#,
	movl	$1, %edi	#,
	movl	$__func__.6069, %edx	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	movl	$70, %esi	#,
	movq	%rbx, %rdi	# k,
	call	io_exit	#
.L328:
	movl	buffer_size.6067(%rip), %edi	# buffer_size, buffer_size
	salq	$2, %rdi	#, tmp117
	call	malloc	#
	testq	%rax, %rax	# tmp118
	movq	%rax, buffer.6066(%rip)	# tmp118, buffer
	jne	.L329	#,
	movl	$.LC45, %esi	#,
	movl	$1, %edi	#,
	movl	$__func__.6069, %edx	#,
	call	__printf_chk	#
	movl	$70, %esi	#,
	movq	%rbx, %rdi	# k,
	call	io_exit	#
.L329:
	movl	buffer_size.6067(%rip), %ecx	# buffer_size, buffer_size
	movq	buffer.6066(%rip), %rdi	# buffer, buffer
	movb	$-1, %al	#, tmp124
	salq	$2, %rcx	#, tmp120
	rep stosb
.L327:
	cmpl	$2, %ebp	#, mode
	jne	.L319	#,
	movl	buffer_size.6067(%rip), %r8d	# buffer_size, buffer_size.20
	movl	buffer_address.6065(%rip), %edx	# buffer_address, buffer_address.21
	shrl	%r13d	# address
	movl	%r8d, %ebp	# buffer_size.20, new_address
	leal	-1(%r8), %r14d	#, mask
	negl	%ebp	# new_address
	andl	%r13d, %ebp	# address, new_address
	cmpl	%edx, %ebp	# buffer_address.21, new_address
	je	.L331	#,
	cmpl	$0, write_pending.6068(%rip)	#, write_pending
	je	.L332	#,
	movq	buffer.6066(%rip), %rcx	# buffer,
	movl	buffer_region.6064(%rip), %esi	# buffer_region,
	movq	%rbx, %rdi	# k,
	addl	%edx, %edx	# tmp127
	movl	$0, write_pending.6068(%rip)	#, write_pending
	call	pic24_write_buffer	#
	movl	buffer_size.6067(%rip), %ecx	# buffer_size, buffer_size
	movq	buffer.6066(%rip), %rdi	# buffer, buffer
	movb	$-1, %al	#, tmp133
	salq	$2, %rcx	#, tmp129
	rep stosb
.L332:
	movl	%ebp, buffer_address.6065(%rip)	# new_address, buffer_address
.L331:
	movq	buffer.6066(%rip), %rax	# buffer, buffer
	incl	write_pending.6068(%rip)	# write_pending
	andl	%r14d, %r13d	# mask,
	movl	%r12d, (%rax,%r13,4)	# data2, *D.6972_50
.L319:
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
.LFE77:
	.size	pic24_write_buffered, .-pic24_write_buffered
	.globl	pic24_restore_calibration
	.type	pic24_restore_calibration, @function
pic24_restore_calibration:
.LFB56:
	.cfi_startproc
	movl	pic24_index(%rip), %eax	# pic24_index, pic24_index
	imulq	$1064, %rax, %rax	#, pic24_index, tmp84
	cmpl	$0, pic24_map+1056(%rax)	#, pic24_map[pic24_index.37_3].calibaddr
	je	.L342	#,
	pushq	%r12	#
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp	#
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movq	%rdi, %rbp	# k, k
	pushq	%rbx	#
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	xorl	%ebx, %ebx	# ivtmp.763
	call	pic24_write_buffer_init	#
	movl	pic24_index(%rip), %eax	# pic24_index, pic24_index
	movl	$1, %ecx	#,
	movl	$4, %esi	#,
	movq	%rbp, %rdi	# k,
	imulq	$1064, %rax, %rax	#, pic24_index, tmp88
	movzbl	pic24_map+1061(%rax), %edx	# pic24_map[pic24_index.37_6].codepanelsize, pic24_map[pic24_index.37_6].codepanelsize
	call	pic24_write_buffered	#
	movl	pic24_index(%rip), %eax	# pic24_index, pic24_index
	imulq	$1064, %rax, %rax	#, pic24_index, tmp93
	movl	pic24_map+1056(%rax), %r12d	# pic24_map[pic24_index.37_9].calibaddr, address
	jmp	.L339	#
.L340:
	movl	pic24_conf+4(,%rbx,4), %edx	# MEM[symbol: pic24_conf, index: ivtmp.763_28, step: 4, offset: 4B], MEM[symbol: pic24_conf, index: ivtmp.763_28, step: 4, offset: 4B]
	movl	$2, %ecx	#,
	movq	%rbp, %rdi	# k,
	incq	%rbx	# ivtmp.763
	call	pic24_write_buffered	#
.L339:
	movl	pic24_index(%rip), %eax	# pic24_index, pic24_index
	leal	(%r12,%rbx,2), %esi	#, D.8795
	imulq	$1064, %rax, %rax	#, pic24_index, tmp100
	movzbl	pic24_map+1060(%rax), %eax	# pic24_map[pic24_index.37_12].ncalib, pic24_map[pic24_index.37_12].ncalib
	cmpl	%eax, %ebx	# pic24_map[pic24_index.37_12].ncalib, ivtmp.763
	jb	.L340	#,
	popq	%rbx	#
	.cfi_restore 3
	.cfi_def_cfa_offset 24
	movq	%rbp, %rdi	# k,
	movl	$3, %ecx	#,
	movl	$65535, %edx	#,
	popq	%rbp	#
	.cfi_restore 6
	.cfi_def_cfa_offset 16
	popq	%r12	#
	.cfi_restore 12
	.cfi_def_cfa_offset 8
	movl	$65535, %esi	#,
	jmp	pic24_write_buffered	#
.L342:
	ret
	.cfi_endproc
.LFE56:
	.size	pic24_restore_calibration, .-pic24_restore_calibration
	.globl	pic24_write_config_init1
	.type	pic24_write_config_init1, @function
pic24_write_config_init1:
.LFB78:
	.cfi_startproc
	movl	pic24_index(%rip), %eax	# pic24_index, pic24_index
	pushq	%rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %rbx	# k, k
	imulq	$1064, %rax, %rax	#, pic24_index, tmp64
	movl	pic24_map+1036(%rax), %eax	# pic24_map[pic24_index.17_1].datasheet, pic24_map[pic24_index.17_1].datasheet
	cmpl	$39919, %eax	#, pic24_map[pic24_index.17_1].datasheet
	je	.L345	#,
	cmpl	$70152, %eax	#, pic24_map[pic24_index.17_1].datasheet
	je	.L346	#,
	cmpl	$30625, %eax	#, pic24_map[pic24_index.17_1].datasheet
	jne	.L353	#,
.L345:
	xorl	%edx, %edx	#
	movl	$2359370, %esi	#,
	jmp	.L355	#
.L346:
	xorl	%edx, %edx	#
	movl	$2359306, %esi	#,
.L355:
	movq	%rbx, %rdi	# k,
	call	pic24_six	#
	movq	%rbx, %rdi	# k,
	xorl	%edx, %edx	#
	movl	$8928010, %esi	#,
	popq	%rbx	#
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	jmp	pic24_six	#
.L353:
	.cfi_restore_state
	popq	%rbx	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE78:
	.size	pic24_write_config_init1, .-pic24_write_config_init1
	.globl	pic24_write_config_init2
	.type	pic24_write_config_init2, @function
pic24_write_config_init2:
.LFB79:
	.cfi_startproc
	movl	pic24_index(%rip), %eax	# pic24_index, pic24_index
	pushq	%rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %rbx	# k, k
	imulq	$1064, %rax, %rax	#, pic24_index, tmp64
	movl	pic24_map+1036(%rax), %eax	# pic24_map[pic24_index.16_1].datasheet, pic24_map[pic24_index.16_1].datasheet
	cmpl	$70102, %eax	#, pic24_map[pic24_index.16_1].datasheet
	je	.L358	#,
	cmpl	$70284, %eax	#, pic24_map[pic24_index.16_1].datasheet
	jne	.L365	#,
.L358:
	movq	%rbx, %rdi	# k,
	xorl	%edx, %edx	#
	movl	$2359434, %esi	#,
	call	pic24_six	#
	movq	%rbx, %rdi	# k,
	xorl	%edx, %edx	#
	movl	$8928010, %esi	#,
	popq	%rbx	#
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	jmp	pic24_six	#
.L365:
	.cfi_restore_state
	popq	%rbx	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE79:
	.size	pic24_write_config_init2, .-pic24_write_config_init2
	.globl	pic24_write_config_word
	.type	pic24_write_config_word, @function
pic24_write_config_word:
.LFB80:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movl	%edx, %ebp	# word, word
	pushq	%rbx	#
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rdi, %rbx	# k, k
	pushq	%r10	#
	.cfi_def_cfa_offset 32
	call	pic24_set_write_pointer	#
	movzwl	%bp, %esi	# word, tmp71
	movl	$1, %edx	#,
	movq	%rbx, %rdi	# k,
	sall	$4, %esi	#, tmp71
	orl	$2097158, %esi	#, tmp71
	call	pic24_six	#
	movl	$2, %edx	#,
	movl	$12262278, %esi	#,
	movq	%rbx, %rdi	# k,
	call	pic24_six	#
	movl	pic24_index(%rip), %eax	# pic24_index, pic24_index
	imulq	$1064, %rax, %rax	#, pic24_index, tmp74
	movl	pic24_map+1036(%rax), %eax	# pic24_map[pic24_index.15_8].datasheet, pic24_map[pic24_index.15_8].datasheet
	cmpl	$70102, %eax	#, pic24_map[pic24_index.15_8].datasheet
	je	.L369	#,
	cmpl	$70284, %eax	#, pic24_map[pic24_index.15_8].datasheet
	jne	.L376	#,
.L369:
	popq	%r9	#
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	movq	%rbx, %rdi	# k,
	movl	$4000, %esi	#,
	popq	%rbx	#
	.cfi_def_cfa_offset 16
	popq	%rbp	#
	.cfi_def_cfa_offset 8
	jmp	pic24_nvmcon_write_external	#
.L376:
	.cfi_restore_state
	popq	%r8	#
	.cfi_def_cfa_offset 24
	movq	%rbx, %rdi	# k,
	popq	%rbx	#
	.cfi_def_cfa_offset 16
	popq	%rbp	#
	.cfi_def_cfa_offset 8
	jmp	pic24_nvmcon_write_internal	#
	.cfi_endproc
.LFE80:
	.size	pic24_write_config_word, .-pic24_write_config_word
	.globl	pic24_write_config_words
	.type	pic24_write_config_words, @function
pic24_write_config_words:
.LFB81:
	.cfi_startproc
	pushq	%r13	#
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12	#
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	xorl	%r12d, %r12d	# n
	pushq	%rbp	#
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx	#
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	pushq	%rbx	#
	.cfi_def_cfa_offset 48
	movl	pic24_index(%rip), %eax	# pic24_index, pic24_index
	imulq	$1064, %rax, %rax	#, pic24_index, tmp86
	cmpl	$16252928, pic24_map+1040(%rax)	#, pic24_map[pic24_index.14_5].configaddr
	jne	.L379	#,
	movq	%rdi, %rbp	# k, k
	xorl	%ebx, %ebx	# ivtmp.793
	call	pic24_write_config_init1	#
	jmp	.L380	#
.L382:
	cmpl	$0, pic24_conf+36(,%rbx,4)	#, MEM[symbol: pic24_conf, index: ivtmp.793_61, step: 4, offset: 36B]
	jns	.L381	#,
	movl	pic24_map+1040(%rax), %eax	# pic24_map[pic24_index.14_37].configaddr, pic24_map[pic24_index.14_37].configaddr
	movq	%rbp, %rdi	# k,
	incl	%r12d	# n
	leal	(%rax,%rcx,2), %r13d	#, address
	call	pic24_write_config_init2	#
	movzwl	pic24_conf+36(,%rbx,4), %edx	# MEM[symbol: pic24_conf, index: ivtmp.793_61, step: 4, offset: 36B], tmp96
	movl	%r13d, %esi	# address,
	movq	%rbp, %rdi	# k,
	call	pic24_write_config_word	#
.L381:
	incq	%rbx	# ivtmp.793
.L380:
	movl	pic24_index(%rip), %eax	# pic24_index, pic24_index.14
	movl	%ebx, %ecx	# ivtmp.793, i
	imulq	$1064, %rax, %rax	#, pic24_index.14, tmp100
	movzbl	pic24_map+1044(%rax), %edx	# pic24_map[pic24_index.14_37].nconfig, pic24_map[pic24_index.14_37].nconfig
	cmpl	%edx, %ebx	# pic24_map[pic24_index.14_37].nconfig, ivtmp.793
	jb	.L382	#,
.L379:
	popq	%r11	#
	.cfi_def_cfa_offset 40
	popq	%rbx	#
	.cfi_def_cfa_offset 32
	popq	%rbp	#
	.cfi_def_cfa_offset 24
	movl	%r12d, %eax	# n,
	popq	%r12	#
	.cfi_def_cfa_offset 16
	popq	%r13	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE81:
	.size	pic24_write_config_words, .-pic24_write_config_words
	.globl	pic24_dsPIC30F_erase
	.type	pic24_dsPIC30F_erase, @function
pic24_dsPIC30F_erase:
.LFB57:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movl	%esi, %ebp	# tdly, tdly
	pushq	%rbx	#
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rdi, %rbx	# k, k
	pushq	%rax	#
	.cfi_def_cfa_offset 32
	call	pic24_program_verify	#
	movl	pic24_index(%rip), %eax	# pic24_index, pic24_index
	imulq	$1064, %rax, %rax	#, pic24_index, tmp70
	movl	pic24_map+1024(%rax), %eax	# pic24_map[pic24_index.36_2].deviceid, pic24_map[pic24_index.36_2].deviceid
	addl	$-128, %eax	#, tmp72
	cmpw	$1, %ax	#, tmp72
	ja	.L386	#,
	movl	$-2147483648, pic24_conf+48(%rip)	#, pic24_conf.config
	movl	$-2147483648, pic24_conf+52(%rip)	#, pic24_conf.config
.L386:
	movq	%rbx, %rdi	# k,
	call	pic24_write_config_words	#
	movl	pic24_index(%rip), %eax	# pic24_index, pic24_index.36
	movq	%rbx, %rdi	# k,
	movl	$pic24_conf+100, %edx	#,
	imulq	$1064, %rax, %rax	#, pic24_index.36, tmp78
	movzbl	pic24_map+1052(%rax), %ecx	# pic24_map[pic24_index.36_5].nfuid, pic24_map[pic24_index.36_5].nfuid
	movl	pic24_map+1048(%rax), %esi	# pic24_map[pic24_index.36_5].fuidaddr, pic24_map[pic24_index.36_5].fuidaddr
	call	pic24_write_program	#
	movq	%rbx, %rdi	# k,
	xorl	%edx, %edx	#
	movl	$2361338, %esi	#,
	call	pic24_six	#
	movq	%rbx, %rdi	# k,
	xorl	%edx, %edx	#
	movl	$8928010, %esi	#,
	call	pic24_six	#
	movq	%rbx, %rdi	# k,
	movl	%ebp, %esi	# tdly,
	call	pic24_nvmcon_write_external	#
	popq	%rbp	#
	.cfi_def_cfa_offset 24
	movq	%rbx, %rdi	# k,
	popq	%rbx	#
	.cfi_def_cfa_offset 16
	popq	%rbp	#
	.cfi_def_cfa_offset 8
	jmp	pic24_standby	#
	.cfi_endproc
.LFE57:
	.size	pic24_dsPIC30F_erase, .-pic24_dsPIC30F_erase
	.globl	pic24_write_fuid_words
	.type	pic24_write_fuid_words, @function
pic24_write_fuid_words:
.LFB82:
	.cfi_startproc
	pushq	%r13	#
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12	#
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	xorl	%r12d, %r12d	# n
	pushq	%rbp	#
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx	#
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	pushq	%rcx	#
	.cfi_def_cfa_offset 48
	movl	pic24_index(%rip), %eax	# pic24_index, pic24_index
	imulq	$1064, %rax, %rax	#, pic24_index, tmp86
	cmpl	$16252927, pic24_map+1048(%rax)	#, pic24_map[pic24_index.13_5].fuidaddr
	jbe	.L389	#,
	movq	%rdi, %rbp	# k, k
	xorl	%ebx, %ebx	# ivtmp.810
	call	pic24_write_config_init1	#
	jmp	.L390	#
.L392:
	cmpl	$0, pic24_conf+100(,%rbx,4)	#, MEM[symbol: pic24_conf, index: ivtmp.810_61, step: 4, offset: 100B]
	jns	.L391	#,
	movl	8(%rax), %eax	# pic24_map[pic24_index.13_37].fuidaddr, pic24_map[pic24_index.13_37].fuidaddr
	movq	%rbp, %rdi	# k,
	incl	%r12d	# n
	leal	(%rax,%rcx,2), %r13d	#, address
	call	pic24_write_config_init2	#
	movzwl	pic24_conf+100(,%rbx,4), %edx	# MEM[symbol: pic24_conf, index: ivtmp.810_61, step: 4, offset: 100B], tmp96
	movl	%r13d, %esi	# address,
	movq	%rbp, %rdi	# k,
	call	pic24_write_config_word	#
.L391:
	incq	%rbx	# ivtmp.810
.L390:
	movl	pic24_index(%rip), %eax	# pic24_index, pic24_index.13
	movl	%ebx, %ecx	# ivtmp.810, i
	imulq	$1064, %rax, %rax	#, pic24_index.13, tmp100
	addq	$pic24_map+1040, %rax	#, tmp101
	movzbl	12(%rax), %edx	# pic24_map[pic24_index.13_37].nfuid, pic24_map[pic24_index.13_37].nfuid
	cmpl	%edx, %ebx	# pic24_map[pic24_index.13_37].nfuid, ivtmp.810
	jb	.L392	#,
.L389:
	popq	%rdx	#
	.cfi_def_cfa_offset 40
	popq	%rbx	#
	.cfi_def_cfa_offset 32
	popq	%rbp	#
	.cfi_def_cfa_offset 24
	movl	%r12d, %eax	# n,
	popq	%r12	#
	.cfi_def_cfa_offset 16
	popq	%r13	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE82:
	.size	pic24_write_fuid_words, .-pic24_write_fuid_words
	.globl	pic24_dsPIC33F_PIC24H_erase
	.type	pic24_dsPIC33F_PIC24H_erase, @function
pic24_dsPIC33F_PIC24H_erase:
.LFB61:
	.cfi_startproc
	pushq	%rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %rbx	# k, k
	call	pic24_program_verify	#
	movq	%rbx, %rdi	# k,
	call	pic24_write_config_words	#
	movq	%rbx, %rdi	# k,
	call	pic24_write_fuid_words	#
	movq	%rbx, %rdi	# k,
	xorl	%edx, %edx	#
	movl	$2360570, %esi	#,
	call	pic24_six	#
	movq	%rbx, %rdi	# k,
	xorl	%edx, %edx	#
	movl	$8928010, %esi	#,
	call	pic24_six	#
	movq	%rbx, %rdi	# k,
	xorl	%edx, %edx	#
	movl	$2097152, %esi	#,
	call	pic24_six	#
	movq	%rbx, %rdi	# k,
	xorl	%edx, %edx	#
	movl	$8913296, %esi	#,
	call	pic24_six	#
	movl	$4, %edx	#,
	movq	%rbx, %rdi	# k,
	movl	$11069281, %esi	#,
	call	pic24_six	#
	movq	%rbx, %rdi	# k,
	movl	$330001, %esi	#,
	call	io_usleep	#
	movq	%rbx, %rdi	# k,
	xorl	%edx, %edx	#
	movl	$32768, %esi	#,
	call	pic24_nvmcon_write_completion	#
	movq	%rbx, %rdi	# k,
	call	pic24_restore_calibration	#
	movq	%rbx, %rdi	# k,
	popq	%rbx	#
	.cfi_def_cfa_offset 8
	jmp	pic24_standby	#
	.cfi_endproc
.LFE61:
	.size	pic24_dsPIC33F_PIC24H_erase, .-pic24_dsPIC33F_PIC24H_erase
	.section	.rodata.str1.1
.LC46:
	.string	"%s: information: unimplemented\n"
	.text
	.globl	pic24_bulk_erase
	.type	pic24_bulk_erase, @function
pic24_bulk_erase:
.LFB63:
	.cfi_startproc
	movl	$pic24_conf+100, %esi	#, tmp66
	orl	$-1, %eax	#, tmp68
	movq	%rdi, %rdx	# k, k
	movl	$32, %ecx	#, tmp69
	movq	%rsi, %rdi	# tmp66, tmp67
	movl	$pic24_conf+36, %esi	#, tmp70
	rep stosl
	movq	%rsi, %rdi	# tmp70, tmp71
	movb	$16, %cl	#,
	rep stosl
	movl	pic24_index(%rip), %eax	# pic24_index, pic24_index
	imulq	$1064, %rax, %rax	#, pic24_index, tmp76
	movl	pic24_map+1036(%rax), %eax	# pic24_map[pic24_index.35_1].datasheet, pic24_map[pic24_index.35_1].datasheet
	cmpl	$70102, %eax	#, pic24_map[pic24_index.35_1].datasheet
	je	.L401	#,
	ja	.L405	#,
	cmpl	$39786, %eax	#, pic24_map[pic24_index.35_1].datasheet
	je	.L400	#,
	ja	.L406	#,
	cmpl	$30625, %eax	#, pic24_map[pic24_index.35_1].datasheet
	jne	.L398	#,
	jmp	.L399	#
.L406:
	cmpl	$39919, %eax	#, pic24_map[pic24_index.35_1].datasheet
	je	.L399	#,
	cmpl	$39934, %eax	#, pic24_map[pic24_index.35_1].datasheet
	jne	.L398	#,
	jmp	.L400	#
.L405:
	cmpl	$70659, %eax	#, pic24_map[pic24_index.35_1].datasheet
	je	.L403	#,
	ja	.L407	#,
	cmpl	$70152, %eax	#, pic24_map[pic24_index.35_1].datasheet
	je	.L402	#,
	cmpl	$70284, %eax	#, pic24_map[pic24_index.35_1].datasheet
	jne	.L398	#,
	jmp	.L401	#
.L407:
	cmpl	$70663, %eax	#, pic24_map[pic24_index.35_1].datasheet
	je	.L404	#,
	cmpl	$75012, %eax	#, pic24_map[pic24_index.35_1].datasheet
	jne	.L398	#,
	jmp	.L403	#
.L401:
	movl	$200000, %esi	#,
	movq	%rdx, %rdi	# k,
	jmp	pic24_dsPIC30F_erase	#
.L400:
	movq	%rdx, %rdi	# k,
	jmp	pic24_PIC24FJ_erase	#
.L403:
	movq	%rdx, %rdi	# k,
	jmp	pic24_dsPIC33FJ_erase	#
.L399:
	movq	%rdx, %rdi	# k,
	jmp	pic24_PIC24FKA_erase	#
.L402:
	movq	%rdx, %rdi	# k,
	jmp	pic24_dsPIC33F_PIC24H_erase	#
.L404:
	movq	%rdx, %rdi	# k,
	jmp	pic24_dsPIC33E_PIC24E_erase	#
.L398:
	movl	$__func__.5887, %edx	#,
	movl	$.LC46, %esi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	jmp	__printf_chk	#
	.cfi_endproc
.LFE63:
	.size	pic24_bulk_erase, .-pic24_bulk_erase
	.globl	pic24_write_config
	.type	pic24_write_config, @function
pic24_write_config:
.LFB83:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rdi, %rbp	# k, k
	pushq	%rbx	#
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	pushq	%r8	#
	.cfi_def_cfa_offset 32
	movl	pic24_index(%rip), %eax	# pic24_index, pic24_index.12
	imulq	$1064, %rax, %rax	#, pic24_index.12, tmp73
	cmpl	$16252927, pic24_map+1040(%rax)	#, pic24_map[pic24_index.12_4].configaddr
	ja	.L433	#,
	xorl	%ebx, %ebx	# n
	cmpl	$16252927, pic24_map+1048(%rax)	#, pic24_map[pic24_index.12_4].fuidaddr
	jbe	.L434	#,
.L433:
	movq	%rbp, %rdi	# k,
	xorl	%ebx, %ebx	# n
	call	pic24_program_verify	#
	movl	pic24_index(%rip), %eax	# pic24_index, pic24_index
	imulq	$1064, %rax, %rax	#, pic24_index, tmp81
	cmpl	$0, pic24_map+1048(%rax)	#, pic24_map[pic24_index.12_11].fuidaddr
	je	.L435	#,
	movq	%rbp, %rdi	# k,
	call	pic24_write_fuid_words	#
	movl	%eax, %ebx	#, n
.L435:
	movl	pic24_index(%rip), %eax	# pic24_index, pic24_index
	imulq	$1064, %rax, %rax	#, pic24_index, tmp85
	cmpl	$0, pic24_map+1040(%rax)	#, pic24_map[pic24_index.12_15].configaddr
	je	.L436	#,
	movq	%rbp, %rdi	# k,
	call	pic24_write_config_words	#
	addl	%eax, %ebx	# D.6889, n
.L436:
	movq	%rbp, %rdi	# k,
	call	pic24_standby	#
.L434:
	popq	%rsi	#
	.cfi_def_cfa_offset 24
	movl	%ebx, %eax	# n,
	popq	%rbx	#
	.cfi_def_cfa_offset 16
	popq	%rbp	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE83:
	.size	pic24_write_config, .-pic24_write_config
	.section	.rodata.str1.1
.LC47:
	.string	"%s: warning: address unsupported [%06X]\n"
	.text
	.globl	pic24_getregion
	.type	pic24_getregion, @function
pic24_getregion:
.LFB84:
	.cfi_startproc
	pushq	%r10	#
	.cfi_def_cfa_offset 16
	movl	pic24_index(%rip), %edx	# pic24_index,
	movl	%edi, %ecx	# address, address
	movl	%edx, %esi	# pic24_index.11, pic24_index.11
	imulq	$1064, %rsi, %rsi	#, pic24_index.11, tmp95
	movl	pic24_map+1028(%rsi), %eax	# pic24_map[pic24_index.11_2].flash, pic24_map[pic24_index.11_2].flash
	addq	$pic24_map+1024, %rsi	#, tmp96
	leal	-2(%rax,%rax), %edi	#, tmp99
	movl	$1, %eax	#, D.6828
	cmpl	%edi, %ecx	# tmp99, address
	jbe	.L441	#,
	movl	8(%rsi), %eax	# pic24_map[pic24_index.11_2].eeprom, D.6829
	testw	%ax, %ax	# D.6829
	je	.L442	#,
	movzwl	%ax, %esi	# D.6829, D.6829
	movl	$8388608, %eax	#, tmp105
	subl	%esi, %eax	# D.6829, tmp105
	cmpl	%eax, %ecx	# tmp105, address
	jb	.L442	#,
	cmpl	$8388606, %ecx	#, address
	movl	$2, %eax	#, D.6828
	jbe	.L441	#,
.L442:
	movl	%edx, %eax	# pic24_index.11, pic24_index.11
	leal	-8388608(%rcx), %esi	#, tmp146
	imulq	$1064, %rax, %rax	#, pic24_index.11, tmp113
	movl	pic24_map+1036(%rax), %eax	# pic24_map[pic24_index.11_2].datasheet, D.6839
	cmpl	$70102, %eax	#, D.6839
	jne	.L444	#,
	movl	$4, %eax	#, D.6828
	cmpl	$1536, %esi	#, tmp146
	jmp	.L471	#
.L444:
	cmpl	$70663, %eax	#, D.6839
	movl	$4, %eax	#, D.6828
	jne	.L446	#,
	cmpl	$4096, %esi	#, tmp146
	jmp	.L471	#
.L446:
	cmpl	$2048, %esi	#, tmp146
.L471:
	jbe	.L441	#,
	movl	%edx, %esi	# pic24_index.11, pic24_index.11
	imulq	$1064, %rsi, %rsi	#, pic24_index.11, tmp120
	movl	pic24_map+1048(%rsi), %eax	# pic24_map[pic24_index.11_2].fuidaddr, D.6853
	addq	$pic24_map+1040, %rsi	#, tmp121
	testl	%eax, %eax	# D.6853
	je	.L447	#,
	cmpl	%eax, %ecx	# D.6853, address
	movzbl	12(%rsi), %esi	# pic24_map[pic24_index.11_2].nfuid,
	jb	.L447	#,
	leal	-2(%rax,%rsi,2), %esi	#, tmp129
	movl	$5, %eax	#, D.6828
	cmpl	%esi, %ecx	# tmp129, address
	jbe	.L441	#,
.L447:
	imulq	$1064, %rdx, %rdx	#, pic24_index.11, tmp132
	cmpl	$16252928, pic24_map+1040(%rdx)	#, pic24_map[pic24_index.11_2].configaddr
	jne	.L448	#,
	movzbl	pic24_map+1044(%rdx), %eax	# pic24_map[pic24_index.11_2].nconfig, pic24_map[pic24_index.11_2].nconfig
	leal	16252926(%rax,%rax), %eax	#, tmp140
	cmpl	%eax, %ecx	# tmp140, address
	ja	.L448	#,
	cmpl	$16252927, %ecx	#, address
	movl	$3, %eax	#, D.6828
	ja	.L441	#,
.L448:
	movl	$__func__.6129, %edx	#,
	movl	$.LC47, %esi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	xorl	%eax, %eax	# D.6828
.L441:
	popq	%r9	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE84:
	.size	pic24_getregion, .-pic24_getregion
	.globl	pic24_init_writeregion
	.type	pic24_init_writeregion, @function
pic24_init_writeregion:
.LFB85:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	leal	-1(%rsi), %eax	#,
	movl	%esi, %ebp	# region, region
	pushq	%rbx	#
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	cmpl	$4, %eax	#, tmp76
	pushq	%rbx	#
	.cfi_def_cfa_offset 32
	ja	.L474	#,
	movq	%rdi, %rbx	# k, k
	jmp	*.L478(,%rax,8)	#
	.section	.rodata
	.align 8
	.align 4
.L478:
	.quad	.L475
	.quad	.L476
	.quad	.L477
	.quad	.L475
	.quad	.L477
	.text
.L475:
	movl	pic24_index(%rip), %eax	# pic24_index, pic24_index
	imulq	$1064, %rax, %rax	#, pic24_index, tmp82
	cmpb	$1, pic24_map+1061(%rax)	#, pic24_map[pic24_index.10_3].codepanelsize
	jne	.L479	#,
	movl	$1, %edx	#,
	movl	$2097153, %esi	#,
	call	pic24_six	#
	xorl	%edx, %edx	#
	movl	$8913297, %esi	#,
	movq	%rbx, %rdi	# k,
	call	pic24_six	#
.L479:
	movl	pic24_index(%rip), %eax	# pic24_index, pic24_index
	movl	$1, %ecx	#,
	movl	$1, %esi	#,
	imulq	$1064, %rax, %rax	#, pic24_index, tmp86
	movzbl	pic24_map+1061(%rax), %edx	# pic24_map[pic24_index.10_6].codepanelsize, pic24_map[pic24_index.10_6].codepanelsize
	jmp	.L482	#
.L476:
	movl	pic24_index(%rip), %eax	# pic24_index, pic24_index
	imulq	$1064, %rax, %rax	#, pic24_index, tmp91
	cmpb	$1, pic24_map+1062(%rax)	#, pic24_map[pic24_index.10_10].datapanelsize
	jne	.L480	#,
	movl	$1, %edx	#,
	movl	$2099185, %esi	#,
	call	pic24_six	#
	xorl	%edx, %edx	#
	movl	$8913297, %esi	#,
	movq	%rbx, %rdi	# k,
	call	pic24_six	#
.L480:
	movl	pic24_index(%rip), %eax	# pic24_index, pic24_index
	movl	$1, %ecx	#,
	movl	$2, %esi	#,
	imulq	$1064, %rax, %rax	#, pic24_index, tmp95
	movzbl	pic24_map+1062(%rax), %edx	# pic24_map[pic24_index.10_12].datapanelsize, pic24_map[pic24_index.10_12].datapanelsize
.L482:
	movq	%rbx, %rdi	# k,
	call	pic24_write_buffered	#
	jmp	.L477	#
.L474:
	movl	%esi, %ecx	# region,
	movl	$__func__.6139, %edx	#,
	movl	$.LC43, %esi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	xorl	%ebp, %ebp	# region
	call	__printf_chk	#
.L477:
	popq	%r11	#
	.cfi_def_cfa_offset 24
	popq	%rbx	#
	.cfi_def_cfa_offset 16
	movl	%ebp, %eax	# region,
	popq	%rbp	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE85:
	.size	pic24_init_writeregion, .-pic24_init_writeregion
	.globl	pic24_writeregion
	.type	pic24_writeregion, @function
pic24_writeregion:
.LFB86:
	.cfi_startproc
	movl	%ecx, %eax	# data, data
	leal	-1(%rdx), %ecx	#,
	cmpl	$4, %ecx	#, tmp75
	ja	.L484	#,
	jmp	*.L488(,%rcx,8)	#
	.section	.rodata
	.align 8
	.align 4
.L488:
	.quad	.L485
	.quad	.L485
	.quad	.L486
	.quad	.L485
	.quad	.L487
	.text
.L485:
	movl	$2, %ecx	#,
	movl	%eax, %edx	# data,
	jmp	pic24_write_buffered	#
.L486:
	movl	pic24_index(%rip), %edx	# pic24_index, pic24_index
	andl	$65535, %eax	#, tmp89
	orl	$-2147483648, %eax	#, tmp89
	imulq	$1064, %rdx, %rdx	#, pic24_index, tmp81
	subl	pic24_map+1040(%rdx), %esi	# pic24_map[pic24_index.9_5].configaddr, tmp84
	shrl	%esi	#
	movl	%eax, pic24_conf+36(,%rsi,4)	# tmp89, pic24_conf.config
	ret
.L487:
	movl	pic24_index(%rip), %edx	# pic24_index, pic24_index
	andl	$65535, %eax	#, tmp100
	orl	$-2147483648, %eax	#, tmp100
	imulq	$1064, %rdx, %rdx	#, pic24_index, tmp92
	subl	pic24_map+1048(%rdx), %esi	# pic24_map[pic24_index.9_11].fuidaddr, tmp95
	shrl	%esi	#
	movl	%eax, pic24_conf+100(,%rsi,4)	# tmp100, pic24_conf.fuid
	ret
.L484:
	movl	%edx, %ecx	# region,
	movl	$.LC43, %esi	#,
	movl	$__func__.6155, %edx	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	jmp	__printf_chk	#
	.cfi_endproc
.LFE86:
	.size	pic24_writeregion, .-pic24_writeregion
	.globl	pic24_program
	.type	pic24_program, @function
pic24_program:
.LFB89:
	.cfi_startproc
	pushq	%r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14	#
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movl	%edx, %r14d	# blank, blank
	movl	$4, %edx	#,
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
	call	inhx32	#
	testl	%eax, %eax	# D.6750
	je	.L490	#,
	testl	%r14d, %r14d	# blank
	je	.L492	#,
	movl	$65535, %edx	#,
	movl	$65535, %esi	#,
	movq	%rbx, %rdi	# k,
	call	pic24_bulk_erase	#
.L492:
	movq	%rbx, %rdi	# k,
	xorl	%r12d, %r12d	# i
	xorl	%ebp, %ebp	# total
	call	pic24_program_verify	#
	movq	%rbx, %rdi	# k,
	xorl	%r15d, %r15d	# current_region
	call	pic24_write_buffer_init	#
	jmp	.L493	#
.L498:
	movl	%r12d, %eax	# i, i
	leaq	0(,%rax,8), %rdx	#,
	movq	%rdx, 24(%rsp)	#, %sfp
	movq	3104(%rbx), %rdx	# k_13(D)->pdata, k_13(D)->pdata
	movq	(%rdx,%rax,8), %rax	# *D.8922_98, *D.8922_98
	movl	(%rax), %r13d	# D.8923_99->address, PC_address
	shrl	%r13d	# PC_address
	movl	%r13d, %edi	# PC_address,
	call	pic24_getregion	#
	testl	%eax, %eax	# new_region
	je	.L494	#,
	cmpl	%r15d, %eax	# current_region, new_region
	je	.L495	#,
	movl	$3, %ecx	#,
	movl	$65535, %edx	#,
	movl	$65535, %esi	#,
	movq	%rbx, %rdi	# k,
	movl	%eax, 8(%rsp)	#,
	call	pic24_write_buffered	#
	movl	8(%rsp), %eax	#,
	movq	%rbx, %rdi	# k,
	movl	%eax, %esi	# new_region,
	call	pic24_init_writeregion	#
	testl	%eax, %eax	# current_region
	movl	%eax, %r15d	#, current_region
	je	.L494	#,
.L495:
	xorl	%eax, %eax	# ivtmp.849
	xorl	%r8d, %r8d	# j
	jmp	.L496	#
.L497:
	leal	1(%r8), %ecx	#, tmp138
	leal	2(%r8), %edi	#, tmp142
	movzwl	4(%rdx,%rcx,2), %ecx	# D.8923_105->bytes, tmp148
	movzwl	4(%rdx,%rdi,2), %edi	# D.8923_105->bytes, tmp144
	sall	$8, %ecx	#, tmp148
	sall	$16, %edi	#, tmp144
	orl	%edi, %ecx	# tmp144, tmp148
	movl	%r8d, %edi	# j, j
	movzwl	4(%rdx,%rdi,2), %edx	# D.8923_105->bytes, tmp147
	movq	%rbx, %rdi	# k,
	movq	%rax, 8(%rsp)	#,
	movl	%r8d, 16(%rsp)	#,
	orl	%edx, %ecx	# tmp147, tmp148
	movl	%r15d, %edx	# current_region,
	call	pic24_writeregion	#
	movl	16(%rsp), %r8d	#,
	movq	8(%rsp), %rax	#,
	addl	$4, %r8d	#, j
.L496:
	movq	24(%rsp), %rdi	# %sfp,
	movq	3104(%rbx), %rdx	# k_13(D)->pdata, k_13(D)->pdata
	leal	0(%r13,%rax,2), %esi	#, D.8983
	leal	0(%rbp,%rax), %ecx	#, total
	incq	%rax	# ivtmp.849
	movq	(%rdx,%rdi), %rdx	# *D.8922_127, D.8923
	movzwl	516(%rdx), %edi	# D.8923_105->nbytes, D.8923_105->nbytes
	cmpl	%edi, %r8d	# D.8923_105->nbytes, j
	jb	.L497	#,
	movl	%ecx, %ebp	# total, total
.L494:
	incl	%r12d	# i
.L493:
	cmpl	3112(%rbx), %r12d	# k_13(D)->count, i
	jb	.L498	#,
	movl	$3, %ecx	#,
	movl	$65535, %edx	#,
	movl	$65535, %esi	#,
	movq	%rbx, %rdi	# k,
	call	pic24_write_buffered	#
	movq	%rbx, %rdi	# k,
	call	pic24_standby	#
	testl	%r14d, %r14d	# blank
	je	.L499	#,
	movq	%rbx, %rdi	# k,
	call	pic24_write_config	#
	addl	%eax, %ebp	# D.8940, total
.L499:
	movl	%ebp, %edx	# total,
	movl	$1, %edi	#,
	movl	$.LC37, %esi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	addq	$40, %rsp	#,
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
.L490:
	.cfi_restore_state
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
.LFE89:
	.size	pic24_program, .-pic24_program
	.globl	pic24_init_verifyregion
	.type	pic24_init_verifyregion, @function
pic24_init_verifyregion:
.LFB87:
	.cfi_startproc
	testl	%esi, %esi	# region
	pushq	%rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movl	%esi, %ebx	# region, region
	jne	.L514	#,
	xorl	%ecx, %ecx	#
	movl	$__func__.6160, %edx	#,
	movl	$.LC43, %esi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
.L514:
	movl	%ebx, %eax	# region,
	popq	%rbx	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE87:
	.size	pic24_init_verifyregion, .-pic24_init_verifyregion
	.section	.rodata.str1.1
.LC48:
	.string	"%s: error: read [%06X] expected [%06X] at [%06X]\n"
	.text
	.globl	pic24_verifyregion
	.type	pic24_verifyregion, @function
pic24_verifyregion:
.LFB88:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx	#
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$24, %rsp	#,
	.cfi_def_cfa_offset 48
	testl	%edx, %edx	# region
	jne	.L517	#,
	xorl	%ecx, %ecx	#
	movl	$__func__.6169, %edx	#,
	movl	$.LC43, %esi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	jmp	.L523	#
.L517:
	cmpl	$3, %edx	#, region
	jne	.L519	#,
.L521:
	xorl	%eax, %eax	# D.6788
	jmp	.L518	#
.L519:
	testw	%cx, %cx	# index
	movq	%rdi, %rbx	# k, k
	movl	%esi, %ebp	# address, address
	jne	.L520	#,
	movl	%r8d, 8(%rsp)	#,
	call	pic24_set_read_pointer	#
	movq	%rbx, %rdi	# k,
	call	pic24_goto200	#
	movl	8(%rsp), %r8d	#,
.L520:
	movq	%rbx, %rdi	# k,
	movl	%r8d, 8(%rsp)	#,
	call	pic24_table_read24_post_increment	#
	movl	8(%rsp), %r8d	#,
	cmpl	%r8d, %eax	# data, vdata
	je	.L521	#,
	movl	%eax, %ecx	# vdata,
	movl	%ebp, %r9d	# address,
	movl	$__func__.6169, %edx	#,
	movl	$.LC48, %esi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
.L523:
	movl	$1, %eax	#, D.6788
.L518:
	addq	$24, %rsp	#,
	.cfi_def_cfa_offset 24
	popq	%rbx	#
	.cfi_def_cfa_offset 16
	popq	%rbp	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE88:
	.size	pic24_verifyregion, .-pic24_verifyregion
	.section	.rodata.str1.1
.LC49:
	.string	"Total: %u Pass: %u Fail: %u\n"
	.text
	.globl	pic24_verify
	.type	pic24_verify, @function
pic24_verify:
.LFB90:
	.cfi_startproc
	pushq	%r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movl	$4, %edx	#,
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
	testl	%eax, %eax	# D.6714
	je	.L525	#,
	movq	%rbx, %rdi	# k,
	xorl	%r13d, %r13d	# i
	xorl	%r15d, %r15d	# current_region
	call	pic24_program_verify	#
	xorl	%r12d, %r12d	# total
	xorb	%bpl, %bpl	#
	jmp	.L526	#
.L531:
	movl	%r13d, %eax	# i, i
	leaq	0(,%rax,8), %rdx	#,
	movq	%rdx, 8(%rsp)	#, %sfp
	movq	3104(%rbx), %rdx	# k_17(D)->pdata, k_17(D)->pdata
	movq	(%rdx,%rax,8), %rax	# *D.9008_99, *D.9008_99
	movl	(%rax), %r14d	# D.9009_100->address, PC_address
	shrl	%r14d	# PC_address
	movl	%r14d, %edi	# PC_address,
	call	pic24_getregion	#
	testl	%eax, %eax	# new_region
	je	.L527	#,
	cmpl	%r15d, %eax	# current_region, new_region
	je	.L528	#,
	movl	%eax, %esi	# new_region,
	movq	%rbx, %rdi	# k,
	call	pic24_init_verifyregion	#
	testl	%eax, %eax	# current_region
	movl	%eax, %r15d	#, current_region
	je	.L527	#,
.L528:
	xorl	%r9d, %r9d	# ivtmp.893
	jmp	.L529	#
.L530:
	leal	1(%rcx), %eax	#, tmp144
	leal	2(%rcx), %edi	#,
	movzwl	4(%rdx,%rax,2), %eax	# D.9009_106->bytes, tmp151
	movzwl	4(%rdx,%rdi,2), %edi	# D.9009_106->bytes, tmp150
	sall	$8, %eax	#, tmp151
	sall	$16, %edi	#, tmp150
	orl	%edi, %eax	# tmp150, tmp151
	movl	%ecx, %edi	# D.9069, D.9069
	movzwl	4(%rdx,%rdi,2), %r8d	# D.9009_106->bytes, tmp153
	movl	%r15d, %edx	# current_region,
	movq	%rbx, %rdi	# k,
	movq	%r9, (%rsp)	#,
	orl	%eax, %r8d	# tmp151,
	call	pic24_verifyregion	#
	movq	(%rsp), %r9	#,
	addl	%eax, %ebp	# D.9024, fail
	incq	%r9	# ivtmp.893
.L529:
	movq	8(%rsp), %rdi	# %sfp,
	movq	3104(%rbx), %rdx	# k_17(D)->pdata, k_17(D)->pdata
	leal	0(,%r9,4), %ecx	#, D.9069
	leal	(%r14,%r9,2), %esi	#, D.9078
	leal	(%r12,%r9), %eax	#, total
	movq	(%rdx,%rdi), %rdx	# *D.9008_133, D.9009
	movzwl	516(%rdx), %edi	# D.9009_106->nbytes, D.9009_106->nbytes
	cmpl	%edi, %ecx	# D.9009_106->nbytes, D.9069
	jb	.L530	#,
	movl	%eax, %r12d	# total, total
.L527:
	incl	%r13d	# i
.L526:
	cmpl	3112(%rbx), %r13d	# k_17(D)->count, i
	jb	.L531	#,
	movq	%rbx, %rdi	# k,
	call	pic24_standby	#
	movl	%r12d, %ecx	# total, tmp158
	movl	$1, %edi	#,
	movl	%ebp, %r8d	# fail,
	subl	%ebp, %ecx	# fail, tmp158
	movl	%r12d, %edx	# total,
	movl	$.LC49, %esi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	movq	%rbx, %rdi	# k,
	call	inhx32_free	#
.L525:
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
.LFE90:
	.size	pic24_verify, .-pic24_verify
	.globl	pic24_index
	.data
	.align 4
	.type	pic24_index, @object
	.size	pic24_index, 4
pic24_index:
	.long	338
	.globl	pic24_map
	.align 16
	.type	pic24_map, @object
	.size	pic24_map, 360696
pic24_map:
# devicename:
	.string	"PIC24FJ16GA002"
	.zero	1009
# deviceid:
	.value	1092
# flash:
	.zero	2
	.long	5632
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	39786
# configaddr:
	.long	11260
# nconfig:
	.byte	2
# fuidaddr:
	.zero	3
	.long	0
# nfuid:
	.byte	0
# calibaddr:
	.zero	3
	.long	8390644
# ncalib:
	.byte	6
# codepanelsize:
	.byte	64
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"PIC24FJ16GA004"
	.zero	1009
# deviceid:
	.value	1100
# flash:
	.zero	2
	.long	5632
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	39786
# configaddr:
	.long	11260
# nconfig:
	.byte	2
# fuidaddr:
	.zero	3
	.long	0
# nfuid:
	.byte	0
# calibaddr:
	.zero	3
	.long	8390644
# ncalib:
	.byte	6
# codepanelsize:
	.byte	64
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"PIC24FJ32GA002"
	.zero	1009
# deviceid:
	.value	1093
# flash:
	.zero	2
	.long	11264
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	39786
# configaddr:
	.long	22524
# nconfig:
	.byte	2
# fuidaddr:
	.zero	3
	.long	0
# nfuid:
	.byte	0
# calibaddr:
	.zero	3
	.long	8390644
# ncalib:
	.byte	6
# codepanelsize:
	.byte	64
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"PIC24FJ32GA004"
	.zero	1009
# deviceid:
	.value	1101
# flash:
	.zero	2
	.long	11264
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	39786
# configaddr:
	.long	22524
# nconfig:
	.byte	2
# fuidaddr:
	.zero	3
	.long	0
# nfuid:
	.byte	0
# calibaddr:
	.zero	3
	.long	8390644
# ncalib:
	.byte	6
# codepanelsize:
	.byte	64
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"PIC24FJ48GA002"
	.zero	1009
# deviceid:
	.value	1094
# flash:
	.zero	2
	.long	16896
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	39786
# configaddr:
	.long	33788
# nconfig:
	.byte	2
# fuidaddr:
	.zero	3
	.long	0
# nfuid:
	.byte	0
# calibaddr:
	.zero	3
	.long	8390644
# ncalib:
	.byte	6
# codepanelsize:
	.byte	64
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"PIC24FJ48GA004"
	.zero	1009
# deviceid:
	.value	1102
# flash:
	.zero	2
	.long	16896
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	39786
# configaddr:
	.long	33788
# nconfig:
	.byte	2
# fuidaddr:
	.zero	3
	.long	0
# nfuid:
	.byte	0
# calibaddr:
	.zero	3
	.long	8390644
# ncalib:
	.byte	6
# codepanelsize:
	.byte	64
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"PIC24FJ64GA002"
	.zero	1009
# deviceid:
	.value	1095
# flash:
	.zero	2
	.long	22016
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	39786
# configaddr:
	.long	44028
# nconfig:
	.byte	2
# fuidaddr:
	.zero	3
	.long	0
# nfuid:
	.byte	0
# calibaddr:
	.zero	3
	.long	8390644
# ncalib:
	.byte	6
# codepanelsize:
	.byte	64
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"PIC24FJ64GA004"
	.zero	1009
# deviceid:
	.value	1103
# flash:
	.zero	2
	.long	22016
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	39786
# configaddr:
	.long	44028
# nconfig:
	.byte	2
# fuidaddr:
	.zero	3
	.long	0
# nfuid:
	.byte	0
# calibaddr:
	.zero	3
	.long	8390644
# ncalib:
	.byte	6
# codepanelsize:
	.byte	64
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"PIC24FJ64GA006"
	.zero	1009
# deviceid:
	.value	1029
# flash:
	.zero	2
	.long	22016
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	39786
# configaddr:
	.long	44028
# nconfig:
	.byte	2
# fuidaddr:
	.zero	3
	.long	0
# nfuid:
	.byte	0
# calibaddr:
	.zero	3
	.long	8390644
# ncalib:
	.byte	6
# codepanelsize:
	.byte	64
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"PIC24FJ64GA008"
	.zero	1009
# deviceid:
	.value	1032
# flash:
	.zero	2
	.long	22016
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	39786
# configaddr:
	.long	44028
# nconfig:
	.byte	2
# fuidaddr:
	.zero	3
	.long	0
# nfuid:
	.byte	0
# calibaddr:
	.zero	3
	.long	8390644
# ncalib:
	.byte	6
# codepanelsize:
	.byte	64
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"PIC24FJ64GA010"
	.zero	1009
# deviceid:
	.value	1035
# flash:
	.zero	2
	.long	22016
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	39786
# configaddr:
	.long	44028
# nconfig:
	.byte	2
# fuidaddr:
	.zero	3
	.long	0
# nfuid:
	.byte	0
# calibaddr:
	.zero	3
	.long	8390644
# ncalib:
	.byte	6
# codepanelsize:
	.byte	64
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"PIC24FJ96GA006"
	.zero	1009
# deviceid:
	.value	1030
# flash:
	.zero	2
	.long	32768
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	39786
# configaddr:
	.long	65532
# nconfig:
	.byte	2
# fuidaddr:
	.zero	3
	.long	0
# nfuid:
	.byte	0
# calibaddr:
	.zero	3
	.long	8390644
# ncalib:
	.byte	6
# codepanelsize:
	.byte	64
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"PIC24FJ96GA008"
	.zero	1009
# deviceid:
	.value	1033
# flash:
	.zero	2
	.long	32768
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	39786
# configaddr:
	.long	65532
# nconfig:
	.byte	2
# fuidaddr:
	.zero	3
	.long	0
# nfuid:
	.byte	0
# calibaddr:
	.zero	3
	.long	8390644
# ncalib:
	.byte	6
# codepanelsize:
	.byte	64
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"PIC24FJ96GA010"
	.zero	1009
# deviceid:
	.value	1036
# flash:
	.zero	2
	.long	32768
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	39786
# configaddr:
	.long	65532
# nconfig:
	.byte	2
# fuidaddr:
	.zero	3
	.long	0
# nfuid:
	.byte	0
# calibaddr:
	.zero	3
	.long	8390644
# ncalib:
	.byte	6
# codepanelsize:
	.byte	64
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"PIC24FJ128GA006"
	.zero	1008
# deviceid:
	.value	1031
# flash:
	.zero	2
	.long	44032
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	39786
# configaddr:
	.long	88060
# nconfig:
	.byte	2
# fuidaddr:
	.zero	3
	.long	0
# nfuid:
	.byte	0
# calibaddr:
	.zero	3
	.long	8390644
# ncalib:
	.byte	6
# codepanelsize:
	.byte	64
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"PIC24FJ128GA008"
	.zero	1008
# deviceid:
	.value	1034
# flash:
	.zero	2
	.long	44032
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	39786
# configaddr:
	.long	88060
# nconfig:
	.byte	2
# fuidaddr:
	.zero	3
	.long	0
# nfuid:
	.byte	0
# calibaddr:
	.zero	3
	.long	8390644
# ncalib:
	.byte	6
# codepanelsize:
	.byte	64
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"PIC24FJ128GA010"
	.zero	1008
# deviceid:
	.value	1037
# flash:
	.zero	2
	.long	44032
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	39786
# configaddr:
	.long	88060
# nconfig:
	.byte	2
# fuidaddr:
	.zero	3
	.long	0
# nfuid:
	.byte	0
# calibaddr:
	.zero	3
	.long	8390644
# ncalib:
	.byte	6
# codepanelsize:
	.byte	64
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"dsPIC30F2010"
	.zero	1011
# deviceid:
	.value	64
# flash:
	.zero	2
	.long	4096
# eeprom:
	.value	1024
# datasheet:
	.zero	2
	.long	70102
# configaddr:
	.long	16252928
# nconfig:
	.byte	7
# fuidaddr:
	.zero	3
	.long	8390080
# nfuid:
	.byte	32
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	32
# datapanelsize:
	.byte	16
	.zero	1
# devicename:
	.string	"dsPIC30F2011"
	.zero	1011
# deviceid:
	.value	576
# flash:
	.zero	2
	.long	4096
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70102
# configaddr:
	.long	16252928
# nconfig:
	.byte	7
# fuidaddr:
	.zero	3
	.long	8390080
# nfuid:
	.byte	32
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	32
# datapanelsize:
	.byte	16
	.zero	1
# devicename:
	.string	"dsPIC30F2012"
	.zero	1011
# deviceid:
	.value	577
# flash:
	.zero	2
	.long	4096
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70102
# configaddr:
	.long	16252928
# nconfig:
	.byte	7
# fuidaddr:
	.zero	3
	.long	8390080
# nfuid:
	.byte	32
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	32
# datapanelsize:
	.byte	16
	.zero	1
# devicename:
	.string	"dsPIC30F3010"
	.zero	1011
# deviceid:
	.value	448
# flash:
	.zero	2
	.long	8192
# eeprom:
	.value	1024
# datasheet:
	.zero	2
	.long	70102
# configaddr:
	.long	16252928
# nconfig:
	.byte	7
# fuidaddr:
	.zero	3
	.long	8390080
# nfuid:
	.byte	32
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	32
# datapanelsize:
	.byte	16
	.zero	1
# devicename:
	.string	"dsPIC30F3011"
	.zero	1011
# deviceid:
	.value	449
# flash:
	.zero	2
	.long	8192
# eeprom:
	.value	1024
# datasheet:
	.zero	2
	.long	70102
# configaddr:
	.long	16252928
# nconfig:
	.byte	7
# fuidaddr:
	.zero	3
	.long	8390080
# nfuid:
	.byte	32
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	32
# datapanelsize:
	.byte	16
	.zero	1
# devicename:
	.string	"dsPIC30F3012"
	.zero	1011
# deviceid:
	.value	193
# flash:
	.zero	2
	.long	8192
# eeprom:
	.value	1024
# datasheet:
	.zero	2
	.long	70102
# configaddr:
	.long	16252928
# nconfig:
	.byte	7
# fuidaddr:
	.zero	3
	.long	8390080
# nfuid:
	.byte	32
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	32
# datapanelsize:
	.byte	16
	.zero	1
# devicename:
	.string	"dsPIC30F3013"
	.zero	1011
# deviceid:
	.value	195
# flash:
	.zero	2
	.long	8192
# eeprom:
	.value	1024
# datasheet:
	.zero	2
	.long	70102
# configaddr:
	.long	16252928
# nconfig:
	.byte	7
# fuidaddr:
	.zero	3
	.long	8390080
# nfuid:
	.byte	32
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	32
# datapanelsize:
	.byte	16
	.zero	1
# devicename:
	.string	"dsPIC30F3014"
	.zero	1011
# deviceid:
	.value	352
# flash:
	.zero	2
	.long	8192
# eeprom:
	.value	1024
# datasheet:
	.zero	2
	.long	70102
# configaddr:
	.long	16252928
# nconfig:
	.byte	7
# fuidaddr:
	.zero	3
	.long	8390080
# nfuid:
	.byte	32
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	32
# datapanelsize:
	.byte	16
	.zero	1
# devicename:
	.string	"dsPIC30F4011"
	.zero	1011
# deviceid:
	.value	257
# flash:
	.zero	2
	.long	16384
# eeprom:
	.value	1024
# datasheet:
	.zero	2
	.long	70102
# configaddr:
	.long	16252928
# nconfig:
	.byte	7
# fuidaddr:
	.zero	3
	.long	8390080
# nfuid:
	.byte	32
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	32
# datapanelsize:
	.byte	16
	.zero	1
# devicename:
	.string	"dsPIC30F4012"
	.zero	1011
# deviceid:
	.value	256
# flash:
	.zero	2
	.long	16384
# eeprom:
	.value	1024
# datasheet:
	.zero	2
	.long	70102
# configaddr:
	.long	16252928
# nconfig:
	.byte	7
# fuidaddr:
	.zero	3
	.long	8390080
# nfuid:
	.byte	32
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	32
# datapanelsize:
	.byte	16
	.zero	1
# devicename:
	.string	"dsPIC30F4013"
	.zero	1011
# deviceid:
	.value	321
# flash:
	.zero	2
	.long	16384
# eeprom:
	.value	1024
# datasheet:
	.zero	2
	.long	70102
# configaddr:
	.long	16252928
# nconfig:
	.byte	7
# fuidaddr:
	.zero	3
	.long	8390080
# nfuid:
	.byte	32
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	32
# datapanelsize:
	.byte	16
	.zero	1
# devicename:
	.string	"dsPIC30F5011"
	.zero	1011
# deviceid:
	.value	128
# flash:
	.zero	2
	.long	22528
# eeprom:
	.value	1024
# datasheet:
	.zero	2
	.long	70102
# configaddr:
	.long	16252928
# nconfig:
	.byte	7
# fuidaddr:
	.zero	3
	.long	8390080
# nfuid:
	.byte	32
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	32
# datapanelsize:
	.byte	16
	.zero	1
# devicename:
	.string	"dsPIC30F5013"
	.zero	1011
# deviceid:
	.value	129
# flash:
	.zero	2
	.long	22528
# eeprom:
	.value	1024
# datasheet:
	.zero	2
	.long	70102
# configaddr:
	.long	16252928
# nconfig:
	.byte	7
# fuidaddr:
	.zero	3
	.long	8390080
# nfuid:
	.byte	32
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	32
# datapanelsize:
	.byte	16
	.zero	1
# devicename:
	.string	"dsPIC30F5015"
	.zero	1011
# deviceid:
	.value	512
# flash:
	.zero	2
	.long	22528
# eeprom:
	.value	1024
# datasheet:
	.zero	2
	.long	70102
# configaddr:
	.long	16252928
# nconfig:
	.byte	7
# fuidaddr:
	.zero	3
	.long	8390080
# nfuid:
	.byte	32
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	32
# datapanelsize:
	.byte	16
	.zero	1
# devicename:
	.string	"dsPIC30F5016"
	.zero	1011
# deviceid:
	.value	513
# flash:
	.zero	2
	.long	22528
# eeprom:
	.value	1024
# datasheet:
	.zero	2
	.long	70102
# configaddr:
	.long	16252928
# nconfig:
	.byte	7
# fuidaddr:
	.zero	3
	.long	8390080
# nfuid:
	.byte	32
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	32
# datapanelsize:
	.byte	16
	.zero	1
# devicename:
	.string	"dsPIC30F6010"
	.zero	1011
# deviceid:
	.value	392
# flash:
	.zero	2
	.long	49152
# eeprom:
	.value	4096
# datasheet:
	.zero	2
	.long	70102
# configaddr:
	.long	16252928
# nconfig:
	.byte	7
# fuidaddr:
	.zero	3
	.long	8390080
# nfuid:
	.byte	32
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	32
# datapanelsize:
	.byte	16
	.zero	1
# devicename:
	.string	"dsPIC30F6010A"
	.zero	1010
# deviceid:
	.value	641
# flash:
	.zero	2
	.long	49152
# eeprom:
	.value	4096
# datasheet:
	.zero	2
	.long	70102
# configaddr:
	.long	16252928
# nconfig:
	.byte	7
# fuidaddr:
	.zero	3
	.long	8390080
# nfuid:
	.byte	32
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	32
# datapanelsize:
	.byte	16
	.zero	1
# devicename:
	.string	"dsPIC30F6011"
	.zero	1011
# deviceid:
	.value	402
# flash:
	.zero	2
	.long	45056
# eeprom:
	.value	2048
# datasheet:
	.zero	2
	.long	70102
# configaddr:
	.long	16252928
# nconfig:
	.byte	7
# fuidaddr:
	.zero	3
	.long	8390080
# nfuid:
	.byte	32
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	32
# datapanelsize:
	.byte	16
	.zero	1
# devicename:
	.string	"dsPIC30F6011A"
	.zero	1010
# deviceid:
	.value	704
# flash:
	.zero	2
	.long	45056
# eeprom:
	.value	2048
# datasheet:
	.zero	2
	.long	70102
# configaddr:
	.long	16252928
# nconfig:
	.byte	7
# fuidaddr:
	.zero	3
	.long	8390080
# nfuid:
	.byte	32
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	32
# datapanelsize:
	.byte	16
	.zero	1
# devicename:
	.string	"dsPIC30F6012"
	.zero	1011
# deviceid:
	.value	403
# flash:
	.zero	2
	.long	49152
# eeprom:
	.value	4096
# datasheet:
	.zero	2
	.long	70102
# configaddr:
	.long	16252928
# nconfig:
	.byte	7
# fuidaddr:
	.zero	3
	.long	8390080
# nfuid:
	.byte	32
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	32
# datapanelsize:
	.byte	16
	.zero	1
# devicename:
	.string	"dsPIC30F6012A"
	.zero	1010
# deviceid:
	.value	706
# flash:
	.zero	2
	.long	49152
# eeprom:
	.value	4096
# datasheet:
	.zero	2
	.long	70102
# configaddr:
	.long	16252928
# nconfig:
	.byte	7
# fuidaddr:
	.zero	3
	.long	8390080
# nfuid:
	.byte	32
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	32
# datapanelsize:
	.byte	16
	.zero	1
# devicename:
	.string	"dsPIC30F6013"
	.zero	1011
# deviceid:
	.value	407
# flash:
	.zero	2
	.long	45056
# eeprom:
	.value	2048
# datasheet:
	.zero	2
	.long	70102
# configaddr:
	.long	16252928
# nconfig:
	.byte	7
# fuidaddr:
	.zero	3
	.long	8390080
# nfuid:
	.byte	32
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	32
# datapanelsize:
	.byte	16
	.zero	1
# devicename:
	.string	"dsPIC30F6013A"
	.zero	1010
# deviceid:
	.value	705
# flash:
	.zero	2
	.long	45056
# eeprom:
	.value	2048
# datasheet:
	.zero	2
	.long	70102
# configaddr:
	.long	16252928
# nconfig:
	.byte	7
# fuidaddr:
	.zero	3
	.long	8390080
# nfuid:
	.byte	32
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	32
# datapanelsize:
	.byte	16
	.zero	1
# devicename:
	.string	"dsPIC30F6014"
	.zero	1011
# deviceid:
	.value	408
# flash:
	.zero	2
	.long	49152
# eeprom:
	.value	4096
# datasheet:
	.zero	2
	.long	70102
# configaddr:
	.long	16252928
# nconfig:
	.byte	7
# fuidaddr:
	.zero	3
	.long	8390080
# nfuid:
	.byte	32
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	32
# datapanelsize:
	.byte	16
	.zero	1
# devicename:
	.string	"dsPIC30F6014A"
	.zero	1010
# deviceid:
	.value	707
# flash:
	.zero	2
	.long	49152
# eeprom:
	.value	4096
# datasheet:
	.zero	2
	.long	70102
# configaddr:
	.long	16252928
# nconfig:
	.byte	7
# fuidaddr:
	.zero	3
	.long	8390080
# nfuid:
	.byte	32
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	32
# datapanelsize:
	.byte	16
	.zero	1
# devicename:
	.string	"dsPIC30F6015"
	.zero	1011
# deviceid:
	.value	640
# flash:
	.zero	2
	.long	49152
# eeprom:
	.value	4096
# datasheet:
	.zero	2
	.long	70102
# configaddr:
	.long	16252928
# nconfig:
	.byte	7
# fuidaddr:
	.zero	3
	.long	8390080
# nfuid:
	.byte	32
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	32
# datapanelsize:
	.byte	16
	.zero	1
# devicename:
	.string	"dsPIC33FJ16GP101"
	.zero	1007
# deviceid:
	.value	512
# flash:
	.zero	2
	.long	5632
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70659
# configaddr:
	.long	11260
# nconfig:
	.byte	2
# fuidaddr:
	.zero	3
	.long	0
# nfuid:
	.byte	0
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	1
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"dsPIC33FJ16GP102"
	.zero	1007
# deviceid:
	.value	513
# flash:
	.zero	2
	.long	5632
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70659
# configaddr:
	.long	11260
# nconfig:
	.byte	2
# fuidaddr:
	.zero	3
	.long	0
# nfuid:
	.byte	0
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	1
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"dsPIC33FJ32GP101"
	.zero	1007
# deviceid:
	.value	2560
# flash:
	.zero	2
	.long	11264
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70659
# configaddr:
	.long	22524
# nconfig:
	.byte	2
# fuidaddr:
	.zero	3
	.long	0
# nfuid:
	.byte	0
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	1
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"dsPIC33FJ32GP102"
	.zero	1007
# deviceid:
	.value	2561
# flash:
	.zero	2
	.long	11264
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70659
# configaddr:
	.long	22524
# nconfig:
	.byte	2
# fuidaddr:
	.zero	3
	.long	0
# nfuid:
	.byte	0
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	1
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"dsPIC33FJ32GP104"
	.zero	1007
# deviceid:
	.value	2563
# flash:
	.zero	2
	.long	11264
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70659
# configaddr:
	.long	22524
# nconfig:
	.byte	2
# fuidaddr:
	.zero	3
	.long	0
# nfuid:
	.byte	0
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	1
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"dsPIC33FJ16MC101"
	.zero	1007
# deviceid:
	.value	514
# flash:
	.zero	2
	.long	5632
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70659
# configaddr:
	.long	11260
# nconfig:
	.byte	2
# fuidaddr:
	.zero	3
	.long	0
# nfuid:
	.byte	0
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	1
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"dsPIC33FJ16MC102"
	.zero	1007
# deviceid:
	.value	515
# flash:
	.zero	2
	.long	5632
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70659
# configaddr:
	.long	11260
# nconfig:
	.byte	2
# fuidaddr:
	.zero	3
	.long	0
# nfuid:
	.byte	0
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	1
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"dsPIC33FJ32MC101"
	.zero	1007
# deviceid:
	.value	2564
# flash:
	.zero	2
	.long	11264
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70659
# configaddr:
	.long	22524
# nconfig:
	.byte	2
# fuidaddr:
	.zero	3
	.long	0
# nfuid:
	.byte	0
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	1
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"dsPIC33FJ32MC102"
	.zero	1007
# deviceid:
	.value	2565
# flash:
	.zero	2
	.long	11264
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70659
# configaddr:
	.long	22524
# nconfig:
	.byte	2
# fuidaddr:
	.zero	3
	.long	0
# nfuid:
	.byte	0
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	1
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"dsPIC33FJ32MC104"
	.zero	1007
# deviceid:
	.value	2567
# flash:
	.zero	2
	.long	11264
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70659
# configaddr:
	.long	22524
# nconfig:
	.byte	2
# fuidaddr:
	.zero	3
	.long	0
# nfuid:
	.byte	0
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	1
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"dsPIC33FJ06GS001"
	.zero	1007
# deviceid:
	.value	18688
# flash:
	.zero	2
	.long	2048
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70659
# configaddr:
	.long	4080
# nconfig:
	.byte	8
# fuidaddr:
	.zero	3
	.long	0
# nfuid:
	.byte	0
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	1
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"dsPIC33FJ06GS101A"
	.zero	1006
# deviceid:
	.value	18689
# flash:
	.zero	2
	.long	2048
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70659
# configaddr:
	.long	4080
# nconfig:
	.byte	8
# fuidaddr:
	.zero	3
	.long	0
# nfuid:
	.byte	0
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	1
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"dsPIC33FJ06GS102A"
	.zero	1006
# deviceid:
	.value	18692
# flash:
	.zero	2
	.long	2048
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70659
# configaddr:
	.long	4080
# nconfig:
	.byte	8
# fuidaddr:
	.zero	3
	.long	0
# nfuid:
	.byte	0
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	1
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"dsPIC33FJ06GS202A"
	.zero	1006
# deviceid:
	.value	18693
# flash:
	.zero	2
	.long	2048
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70659
# configaddr:
	.long	4080
# nconfig:
	.byte	8
# fuidaddr:
	.zero	3
	.long	0
# nfuid:
	.byte	0
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	1
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"dsPIC33FJ09GS302"
	.zero	1007
# deviceid:
	.value	18694
# flash:
	.zero	2
	.long	3072
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70659
# configaddr:
	.long	6128
# nconfig:
	.byte	8
# fuidaddr:
	.zero	3
	.long	0
# nfuid:
	.byte	0
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	1
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"PIC24F08KA101"
	.zero	1010
# deviceid:
	.value	3336
# flash:
	.zero	2
	.long	2816
# eeprom:
	.value	512
# datasheet:
	.zero	2
	.long	39919
# configaddr:
	.long	16252928
# nconfig:
	.byte	9
# fuidaddr:
	.zero	3
	.long	0
# nfuid:
	.byte	0
# calibaddr:
	.zero	3
	.long	8390644
# ncalib:
	.byte	6
# codepanelsize:
	.byte	32
# datapanelsize:
	.byte	1
	.zero	1
# devicename:
	.string	"PIC24F16KA101"
	.zero	1010
# deviceid:
	.value	3329
# flash:
	.zero	2
	.long	5632
# eeprom:
	.value	512
# datasheet:
	.zero	2
	.long	39919
# configaddr:
	.long	16252928
# nconfig:
	.byte	9
# fuidaddr:
	.zero	3
	.long	0
# nfuid:
	.byte	0
# calibaddr:
	.zero	3
	.long	8390644
# ncalib:
	.byte	6
# codepanelsize:
	.byte	32
# datapanelsize:
	.byte	1
	.zero	1
# devicename:
	.string	"PIC24F08KA102"
	.zero	1010
# deviceid:
	.value	3338
# flash:
	.zero	2
	.long	2816
# eeprom:
	.value	512
# datasheet:
	.zero	2
	.long	39919
# configaddr:
	.long	16252928
# nconfig:
	.byte	9
# fuidaddr:
	.zero	3
	.long	0
# nfuid:
	.byte	0
# calibaddr:
	.zero	3
	.long	8390644
# ncalib:
	.byte	6
# codepanelsize:
	.byte	32
# datapanelsize:
	.byte	1
	.zero	1
# devicename:
	.string	"PIC24F16KA102"
	.zero	1010
# deviceid:
	.value	3331
# flash:
	.zero	2
	.long	5632
# eeprom:
	.value	512
# datasheet:
	.zero	2
	.long	39919
# configaddr:
	.long	16252928
# nconfig:
	.byte	9
# fuidaddr:
	.zero	3
	.long	0
# nfuid:
	.byte	0
# calibaddr:
	.zero	3
	.long	8390644
# ncalib:
	.byte	6
# codepanelsize:
	.byte	32
# datapanelsize:
	.byte	1
	.zero	1
# devicename:
	.string	"PIC24FV16KA301"
	.zero	1009
# deviceid:
	.value	17673
# flash:
	.zero	2
	.long	5632
# eeprom:
	.value	512
# datasheet:
	.zero	2
	.long	39919
# configaddr:
	.long	16252928
# nconfig:
	.byte	9
# fuidaddr:
	.zero	3
	.long	0
# nfuid:
	.byte	0
# calibaddr:
	.zero	3
	.long	8390644
# ncalib:
	.byte	6
# codepanelsize:
	.byte	32
# datapanelsize:
	.byte	1
	.zero	1
# devicename:
	.string	"PIC24FV16KA302"
	.zero	1009
# deviceid:
	.value	17667
# flash:
	.zero	2
	.long	5632
# eeprom:
	.value	512
# datasheet:
	.zero	2
	.long	39919
# configaddr:
	.long	16252928
# nconfig:
	.byte	9
# fuidaddr:
	.zero	3
	.long	0
# nfuid:
	.byte	0
# calibaddr:
	.zero	3
	.long	8390644
# ncalib:
	.byte	6
# codepanelsize:
	.byte	32
# datapanelsize:
	.byte	1
	.zero	1
# devicename:
	.string	"PIC24FV16KA304"
	.zero	1009
# deviceid:
	.value	17671
# flash:
	.zero	2
	.long	5632
# eeprom:
	.value	512
# datasheet:
	.zero	2
	.long	39919
# configaddr:
	.long	16252928
# nconfig:
	.byte	9
# fuidaddr:
	.zero	3
	.long	0
# nfuid:
	.byte	0
# calibaddr:
	.zero	3
	.long	8390644
# ncalib:
	.byte	6
# codepanelsize:
	.byte	32
# datapanelsize:
	.byte	1
	.zero	1
# devicename:
	.string	"PIC24FV32KA301"
	.zero	1009
# deviceid:
	.value	17689
# flash:
	.zero	2
	.long	11264
# eeprom:
	.value	512
# datasheet:
	.zero	2
	.long	39919
# configaddr:
	.long	16252928
# nconfig:
	.byte	9
# fuidaddr:
	.zero	3
	.long	0
# nfuid:
	.byte	0
# calibaddr:
	.zero	3
	.long	8390644
# ncalib:
	.byte	6
# codepanelsize:
	.byte	32
# datapanelsize:
	.byte	1
	.zero	1
# devicename:
	.string	"PIC24FV32KA302"
	.zero	1009
# deviceid:
	.value	17683
# flash:
	.zero	2
	.long	11264
# eeprom:
	.value	512
# datasheet:
	.zero	2
	.long	39919
# configaddr:
	.long	16252928
# nconfig:
	.byte	9
# fuidaddr:
	.zero	3
	.long	0
# nfuid:
	.byte	0
# calibaddr:
	.zero	3
	.long	8390644
# ncalib:
	.byte	6
# codepanelsize:
	.byte	32
# datapanelsize:
	.byte	1
	.zero	1
# devicename:
	.string	"PIC24FV32KA304"
	.zero	1009
# deviceid:
	.value	17687
# flash:
	.zero	2
	.long	11264
# eeprom:
	.value	512
# datasheet:
	.zero	2
	.long	39919
# configaddr:
	.long	16252928
# nconfig:
	.byte	9
# fuidaddr:
	.zero	3
	.long	0
# nfuid:
	.byte	0
# calibaddr:
	.zero	3
	.long	8390644
# ncalib:
	.byte	6
# codepanelsize:
	.byte	32
# datapanelsize:
	.byte	1
	.zero	1
# devicename:
	.string	"PIC24F16KA301"
	.zero	1010
# deviceid:
	.value	17672
# flash:
	.zero	2
	.long	5632
# eeprom:
	.value	512
# datasheet:
	.zero	2
	.long	39919
# configaddr:
	.long	16252928
# nconfig:
	.byte	9
# fuidaddr:
	.zero	3
	.long	0
# nfuid:
	.byte	0
# calibaddr:
	.zero	3
	.long	8390644
# ncalib:
	.byte	6
# codepanelsize:
	.byte	32
# datapanelsize:
	.byte	1
	.zero	1
# devicename:
	.string	"PIC24F16KA302"
	.zero	1010
# deviceid:
	.value	17666
# flash:
	.zero	2
	.long	5632
# eeprom:
	.value	512
# datasheet:
	.zero	2
	.long	39919
# configaddr:
	.long	16252928
# nconfig:
	.byte	9
# fuidaddr:
	.zero	3
	.long	0
# nfuid:
	.byte	0
# calibaddr:
	.zero	3
	.long	8390644
# ncalib:
	.byte	6
# codepanelsize:
	.byte	32
# datapanelsize:
	.byte	1
	.zero	1
# devicename:
	.string	"PIC24F16KA304"
	.zero	1010
# deviceid:
	.value	17670
# flash:
	.zero	2
	.long	5632
# eeprom:
	.value	512
# datasheet:
	.zero	2
	.long	39919
# configaddr:
	.long	16252928
# nconfig:
	.byte	9
# fuidaddr:
	.zero	3
	.long	0
# nfuid:
	.byte	0
# calibaddr:
	.zero	3
	.long	8390644
# ncalib:
	.byte	6
# codepanelsize:
	.byte	32
# datapanelsize:
	.byte	1
	.zero	1
# devicename:
	.string	"PIC24F32KA301"
	.zero	1010
# deviceid:
	.value	17688
# flash:
	.zero	2
	.long	11264
# eeprom:
	.value	512
# datasheet:
	.zero	2
	.long	39919
# configaddr:
	.long	16252928
# nconfig:
	.byte	9
# fuidaddr:
	.zero	3
	.long	0
# nfuid:
	.byte	0
# calibaddr:
	.zero	3
	.long	8390644
# ncalib:
	.byte	6
# codepanelsize:
	.byte	32
# datapanelsize:
	.byte	1
	.zero	1
# devicename:
	.string	"PIC24F32KA302"
	.zero	1010
# deviceid:
	.value	17682
# flash:
	.zero	2
	.long	11264
# eeprom:
	.value	512
# datasheet:
	.zero	2
	.long	39919
# configaddr:
	.long	16252928
# nconfig:
	.byte	9
# fuidaddr:
	.zero	3
	.long	0
# nfuid:
	.byte	0
# calibaddr:
	.zero	3
	.long	8390644
# ncalib:
	.byte	6
# codepanelsize:
	.byte	32
# datapanelsize:
	.byte	1
	.zero	1
# devicename:
	.string	"PIC24F32KA304"
	.zero	1010
# deviceid:
	.value	17686
# flash:
	.zero	2
	.long	11264
# eeprom:
	.value	512
# datasheet:
	.zero	2
	.long	39919
# configaddr:
	.long	16252928
# nconfig:
	.byte	9
# fuidaddr:
	.zero	3
	.long	0
# nfuid:
	.byte	0
# calibaddr:
	.zero	3
	.long	8390644
# ncalib:
	.byte	6
# codepanelsize:
	.byte	32
# datapanelsize:
	.byte	1
	.zero	1
# devicename:
	.string	"PIC24F04KA200"
	.zero	1010
# deviceid:
	.value	3330
# flash:
	.zero	2
	.long	1408
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	39919
# configaddr:
	.long	16252928
# nconfig:
	.byte	9
# fuidaddr:
	.zero	3
	.long	0
# nfuid:
	.byte	0
# calibaddr:
	.zero	3
	.long	8390644
# ncalib:
	.byte	6
# codepanelsize:
	.byte	32
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"PIC24F04KA201"
	.zero	1010
# deviceid:
	.value	3328
# flash:
	.zero	2
	.long	1408
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	39919
# configaddr:
	.long	16252928
# nconfig:
	.byte	9
# fuidaddr:
	.zero	3
	.long	0
# nfuid:
	.byte	0
# calibaddr:
	.zero	3
	.long	8390644
# ncalib:
	.byte	6
# codepanelsize:
	.byte	32
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"PIC24F16KL402"
	.zero	1010
# deviceid:
	.value	19220
# flash:
	.zero	2
	.long	5632
# eeprom:
	.value	512
# datasheet:
	.zero	2
	.long	30625
# configaddr:
	.long	16252928
# nconfig:
	.byte	8
# fuidaddr:
	.zero	3
	.long	0
# nfuid:
	.byte	0
# calibaddr:
	.zero	3
	.long	8390644
# ncalib:
	.byte	6
# codepanelsize:
	.byte	32
# datapanelsize:
	.byte	1
	.zero	1
# devicename:
	.string	"PIC24F16KL401"
	.zero	1010
# deviceid:
	.value	19230
# flash:
	.zero	2
	.long	5632
# eeprom:
	.value	512
# datasheet:
	.zero	2
	.long	30625
# configaddr:
	.long	16252928
# nconfig:
	.byte	8
# fuidaddr:
	.zero	3
	.long	0
# nfuid:
	.byte	0
# calibaddr:
	.zero	3
	.long	8390644
# ncalib:
	.byte	6
# codepanelsize:
	.byte	32
# datapanelsize:
	.byte	1
	.zero	1
# devicename:
	.string	"PIC24F08KL402"
	.zero	1010
# deviceid:
	.value	19204
# flash:
	.zero	2
	.long	2816
# eeprom:
	.value	512
# datasheet:
	.zero	2
	.long	30625
# configaddr:
	.long	16252928
# nconfig:
	.byte	8
# fuidaddr:
	.zero	3
	.long	0
# nfuid:
	.byte	0
# calibaddr:
	.zero	3
	.long	8390644
# ncalib:
	.byte	6
# codepanelsize:
	.byte	32
# datapanelsize:
	.byte	1
	.zero	1
# devicename:
	.string	"PIC24F08KL401"
	.zero	1010
# deviceid:
	.value	19214
# flash:
	.zero	2
	.long	2816
# eeprom:
	.value	512
# datasheet:
	.zero	2
	.long	30625
# configaddr:
	.long	16252928
# nconfig:
	.byte	8
# fuidaddr:
	.zero	3
	.long	0
# nfuid:
	.byte	0
# calibaddr:
	.zero	3
	.long	8390644
# ncalib:
	.byte	6
# codepanelsize:
	.byte	32
# datapanelsize:
	.byte	1
	.zero	1
# devicename:
	.string	"PIC24F08KL302"
	.zero	1010
# deviceid:
	.value	19200
# flash:
	.zero	2
	.long	2816
# eeprom:
	.value	256
# datasheet:
	.zero	2
	.long	30625
# configaddr:
	.long	16252928
# nconfig:
	.byte	8
# fuidaddr:
	.zero	3
	.long	0
# nfuid:
	.byte	0
# calibaddr:
	.zero	3
	.long	8390644
# ncalib:
	.byte	6
# codepanelsize:
	.byte	32
# datapanelsize:
	.byte	1
	.zero	1
# devicename:
	.string	"PIC24F08KL301"
	.zero	1010
# deviceid:
	.value	19210
# flash:
	.zero	2
	.long	2816
# eeprom:
	.value	256
# datasheet:
	.zero	2
	.long	30625
# configaddr:
	.long	16252928
# nconfig:
	.byte	8
# fuidaddr:
	.zero	3
	.long	0
# nfuid:
	.byte	0
# calibaddr:
	.zero	3
	.long	8390644
# ncalib:
	.byte	6
# codepanelsize:
	.byte	32
# datapanelsize:
	.byte	1
	.zero	1
# devicename:
	.string	"PIC24F08KL201"
	.zero	1010
# deviceid:
	.value	19206
# flash:
	.zero	2
	.long	2816
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	30625
# configaddr:
	.long	16252928
# nconfig:
	.byte	8
# fuidaddr:
	.zero	3
	.long	0
# nfuid:
	.byte	0
# calibaddr:
	.zero	3
	.long	8390644
# ncalib:
	.byte	6
# codepanelsize:
	.byte	32
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"PIC24F08KL200"
	.zero	1010
# deviceid:
	.value	19205
# flash:
	.zero	2
	.long	2816
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	30625
# configaddr:
	.long	16252928
# nconfig:
	.byte	8
# fuidaddr:
	.zero	3
	.long	0
# nfuid:
	.byte	0
# calibaddr:
	.zero	3
	.long	8390644
# ncalib:
	.byte	6
# codepanelsize:
	.byte	32
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"PIC24F04KL101"
	.zero	1010
# deviceid:
	.value	19202
# flash:
	.zero	2
	.long	1408
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	30625
# configaddr:
	.long	16252928
# nconfig:
	.byte	8
# fuidaddr:
	.zero	3
	.long	0
# nfuid:
	.byte	0
# calibaddr:
	.zero	3
	.long	8390644
# ncalib:
	.byte	6
# codepanelsize:
	.byte	32
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"PIC24F04KL100"
	.zero	1010
# deviceid:
	.value	19201
# flash:
	.zero	2
	.long	1408
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	30625
# configaddr:
	.long	16252928
# nconfig:
	.byte	8
# fuidaddr:
	.zero	3
	.long	0
# nfuid:
	.byte	0
# calibaddr:
	.zero	3
	.long	8390644
# ncalib:
	.byte	6
# codepanelsize:
	.byte	32
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"PIC24FV16KM204"
	.zero	1009
# deviceid:
	.value	21791
# flash:
	.zero	2
	.long	5632
# eeprom:
	.value	512
# datasheet:
	.zero	2
	.long	30625
# configaddr:
	.long	16252928
# nconfig:
	.byte	8
# fuidaddr:
	.zero	3
	.long	0
# nfuid:
	.byte	0
# calibaddr:
	.zero	3
	.long	8390644
# ncalib:
	.byte	6
# codepanelsize:
	.byte	32
# datapanelsize:
	.byte	1
	.zero	1
# devicename:
	.string	"PIC24FV08KM204"
	.zero	1009
# deviceid:
	.value	21783
# flash:
	.zero	2
	.long	2816
# eeprom:
	.value	512
# datasheet:
	.zero	2
	.long	30625
# configaddr:
	.long	16252928
# nconfig:
	.byte	8
# fuidaddr:
	.zero	3
	.long	0
# nfuid:
	.byte	0
# calibaddr:
	.zero	3
	.long	8390644
# ncalib:
	.byte	6
# codepanelsize:
	.byte	32
# datapanelsize:
	.byte	1
	.zero	1
# devicename:
	.string	"PIC24FV16KM104"
	.zero	1009
# deviceid:
	.value	21775
# flash:
	.zero	2
	.long	5632
# eeprom:
	.value	512
# datasheet:
	.zero	2
	.long	30625
# configaddr:
	.long	16252928
# nconfig:
	.byte	8
# fuidaddr:
	.zero	3
	.long	0
# nfuid:
	.byte	0
# calibaddr:
	.zero	3
	.long	8390644
# ncalib:
	.byte	6
# codepanelsize:
	.byte	32
# datapanelsize:
	.byte	1
	.zero	1
# devicename:
	.string	"PIC24FV16KM202"
	.zero	1009
# deviceid:
	.value	21787
# flash:
	.zero	2
	.long	5632
# eeprom:
	.value	512
# datasheet:
	.zero	2
	.long	30625
# configaddr:
	.long	16252928
# nconfig:
	.byte	8
# fuidaddr:
	.zero	3
	.long	0
# nfuid:
	.byte	0
# calibaddr:
	.zero	3
	.long	8390644
# ncalib:
	.byte	6
# codepanelsize:
	.byte	32
# datapanelsize:
	.byte	1
	.zero	1
# devicename:
	.string	"PIC24FV08KM202"
	.zero	1009
# deviceid:
	.value	21779
# flash:
	.zero	2
	.long	2816
# eeprom:
	.value	512
# datasheet:
	.zero	2
	.long	30625
# configaddr:
	.long	16252928
# nconfig:
	.byte	8
# fuidaddr:
	.zero	3
	.long	0
# nfuid:
	.byte	0
# calibaddr:
	.zero	3
	.long	8390644
# ncalib:
	.byte	6
# codepanelsize:
	.byte	32
# datapanelsize:
	.byte	1
	.zero	1
# devicename:
	.string	"PIC24FV16KM102"
	.zero	1009
# deviceid:
	.value	21771
# flash:
	.zero	2
	.long	5632
# eeprom:
	.value	512
# datasheet:
	.zero	2
	.long	30625
# configaddr:
	.long	16252928
# nconfig:
	.byte	8
# fuidaddr:
	.zero	3
	.long	0
# nfuid:
	.byte	0
# calibaddr:
	.zero	3
	.long	8390644
# ncalib:
	.byte	6
# codepanelsize:
	.byte	32
# datapanelsize:
	.byte	1
	.zero	1
# devicename:
	.string	"PIC24FV08KM102"
	.zero	1009
# deviceid:
	.value	21763
# flash:
	.zero	2
	.long	2816
# eeprom:
	.value	512
# datasheet:
	.zero	2
	.long	30625
# configaddr:
	.long	16252928
# nconfig:
	.byte	8
# fuidaddr:
	.zero	3
	.long	0
# nfuid:
	.byte	0
# calibaddr:
	.zero	3
	.long	8390644
# ncalib:
	.byte	6
# codepanelsize:
	.byte	32
# datapanelsize:
	.byte	1
	.zero	1
# devicename:
	.string	"PIC24FV08KM101"
	.zero	1009
# deviceid:
	.value	21761
# flash:
	.zero	2
	.long	2816
# eeprom:
	.value	512
# datasheet:
	.zero	2
	.long	30625
# configaddr:
	.long	16252928
# nconfig:
	.byte	8
# fuidaddr:
	.zero	3
	.long	0
# nfuid:
	.byte	0
# calibaddr:
	.zero	3
	.long	8390644
# ncalib:
	.byte	6
# codepanelsize:
	.byte	32
# datapanelsize:
	.byte	1
	.zero	1
# devicename:
	.string	"PIC24F16KM204"
	.zero	1010
# deviceid:
	.value	21790
# flash:
	.zero	2
	.long	5632
# eeprom:
	.value	512
# datasheet:
	.zero	2
	.long	30625
# configaddr:
	.long	16252928
# nconfig:
	.byte	8
# fuidaddr:
	.zero	3
	.long	0
# nfuid:
	.byte	0
# calibaddr:
	.zero	3
	.long	8390644
# ncalib:
	.byte	6
# codepanelsize:
	.byte	32
# datapanelsize:
	.byte	1
	.zero	1
# devicename:
	.string	"PIC24F08KM204"
	.zero	1010
# deviceid:
	.value	21782
# flash:
	.zero	2
	.long	2816
# eeprom:
	.value	512
# datasheet:
	.zero	2
	.long	30625
# configaddr:
	.long	16252928
# nconfig:
	.byte	8
# fuidaddr:
	.zero	3
	.long	0
# nfuid:
	.byte	0
# calibaddr:
	.zero	3
	.long	8390644
# ncalib:
	.byte	6
# codepanelsize:
	.byte	32
# datapanelsize:
	.byte	1
	.zero	1
# devicename:
	.string	"PIC24F16KM104"
	.zero	1010
# deviceid:
	.value	21774
# flash:
	.zero	2
	.long	5632
# eeprom:
	.value	512
# datasheet:
	.zero	2
	.long	30625
# configaddr:
	.long	16252928
# nconfig:
	.byte	8
# fuidaddr:
	.zero	3
	.long	0
# nfuid:
	.byte	0
# calibaddr:
	.zero	3
	.long	8390644
# ncalib:
	.byte	6
# codepanelsize:
	.byte	32
# datapanelsize:
	.byte	1
	.zero	1
# devicename:
	.string	"PIC24F16KM202"
	.zero	1010
# deviceid:
	.value	21786
# flash:
	.zero	2
	.long	5632
# eeprom:
	.value	512
# datasheet:
	.zero	2
	.long	30625
# configaddr:
	.long	16252928
# nconfig:
	.byte	8
# fuidaddr:
	.zero	3
	.long	0
# nfuid:
	.byte	0
# calibaddr:
	.zero	3
	.long	8390644
# ncalib:
	.byte	6
# codepanelsize:
	.byte	32
# datapanelsize:
	.byte	1
	.zero	1
# devicename:
	.string	"PIC24F08KM202"
	.zero	1010
# deviceid:
	.value	21778
# flash:
	.zero	2
	.long	2816
# eeprom:
	.value	512
# datasheet:
	.zero	2
	.long	30625
# configaddr:
	.long	16252928
# nconfig:
	.byte	8
# fuidaddr:
	.zero	3
	.long	0
# nfuid:
	.byte	0
# calibaddr:
	.zero	3
	.long	8390644
# ncalib:
	.byte	6
# codepanelsize:
	.byte	32
# datapanelsize:
	.byte	1
	.zero	1
# devicename:
	.string	"PIC24F16KM102"
	.zero	1010
# deviceid:
	.value	21770
# flash:
	.zero	2
	.long	5632
# eeprom:
	.value	512
# datasheet:
	.zero	2
	.long	30625
# configaddr:
	.long	16252928
# nconfig:
	.byte	8
# fuidaddr:
	.zero	3
	.long	0
# nfuid:
	.byte	0
# calibaddr:
	.zero	3
	.long	8390644
# ncalib:
	.byte	6
# codepanelsize:
	.byte	32
# datapanelsize:
	.byte	1
	.zero	1
# devicename:
	.string	"PIC24F08KM102"
	.zero	1010
# deviceid:
	.value	21762
# flash:
	.zero	2
	.long	2816
# eeprom:
	.value	512
# datasheet:
	.zero	2
	.long	30625
# configaddr:
	.long	16252928
# nconfig:
	.byte	8
# fuidaddr:
	.zero	3
	.long	0
# nfuid:
	.byte	0
# calibaddr:
	.zero	3
	.long	8390644
# ncalib:
	.byte	6
# codepanelsize:
	.byte	32
# datapanelsize:
	.byte	1
	.zero	1
# devicename:
	.string	"PIC24F08KM101"
	.zero	1010
# deviceid:
	.value	21760
# flash:
	.zero	2
	.long	2816
# eeprom:
	.value	512
# datasheet:
	.zero	2
	.long	30625
# configaddr:
	.long	16252928
# nconfig:
	.byte	8
# fuidaddr:
	.zero	3
	.long	0
# nfuid:
	.byte	0
# calibaddr:
	.zero	3
	.long	8390644
# ncalib:
	.byte	6
# codepanelsize:
	.byte	32
# datapanelsize:
	.byte	1
	.zero	1
# devicename:
	.string	"dsPIC33FJ06GS101"
	.zero	1007
# deviceid:
	.value	3072
# flash:
	.zero	2
	.long	2048
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70152
# configaddr:
	.long	16252928
# nconfig:
	.byte	8
# fuidaddr:
	.zero	3
	.long	16252944
# nfuid:
	.byte	2
# calibaddr:
	.zero	3
	.long	8390644
# ncalib:
	.byte	6
# codepanelsize:
	.byte	64
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"dsPIC33FJ06GS102"
	.zero	1007
# deviceid:
	.value	3073
# flash:
	.zero	2
	.long	2048
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70152
# configaddr:
	.long	16252928
# nconfig:
	.byte	8
# fuidaddr:
	.zero	3
	.long	16252944
# nfuid:
	.byte	2
# calibaddr:
	.zero	3
	.long	8390644
# ncalib:
	.byte	6
# codepanelsize:
	.byte	64
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"dsPIC33FJ06GS202"
	.zero	1007
# deviceid:
	.value	3074
# flash:
	.zero	2
	.long	2048
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70152
# configaddr:
	.long	16252928
# nconfig:
	.byte	8
# fuidaddr:
	.zero	3
	.long	16252944
# nfuid:
	.byte	2
# calibaddr:
	.zero	3
	.long	8390644
# ncalib:
	.byte	6
# codepanelsize:
	.byte	64
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"dsPIC33FJ16GS402"
	.zero	1007
# deviceid:
	.value	3076
# flash:
	.zero	2
	.long	5632
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70152
# configaddr:
	.long	16252928
# nconfig:
	.byte	8
# fuidaddr:
	.zero	3
	.long	16252944
# nfuid:
	.byte	2
# calibaddr:
	.zero	3
	.long	8390644
# ncalib:
	.byte	6
# codepanelsize:
	.byte	64
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"dsPIC33FJ16GS404"
	.zero	1007
# deviceid:
	.value	3078
# flash:
	.zero	2
	.long	5632
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70152
# configaddr:
	.long	16252928
# nconfig:
	.byte	8
# fuidaddr:
	.zero	3
	.long	16252944
# nfuid:
	.byte	2
# calibaddr:
	.zero	3
	.long	8390644
# ncalib:
	.byte	6
# codepanelsize:
	.byte	64
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"dsPIC33FJ16GS502"
	.zero	1007
# deviceid:
	.value	3075
# flash:
	.zero	2
	.long	5632
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70152
# configaddr:
	.long	16252928
# nconfig:
	.byte	8
# fuidaddr:
	.zero	3
	.long	16252944
# nfuid:
	.byte	2
# calibaddr:
	.zero	3
	.long	8390644
# ncalib:
	.byte	6
# codepanelsize:
	.byte	64
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"dsPIC33FJ16GS504"
	.zero	1007
# deviceid:
	.value	3077
# flash:
	.zero	2
	.long	5632
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70152
# configaddr:
	.long	16252928
# nconfig:
	.byte	8
# fuidaddr:
	.zero	3
	.long	16252944
# nfuid:
	.byte	2
# calibaddr:
	.zero	3
	.long	8390644
# ncalib:
	.byte	6
# codepanelsize:
	.byte	64
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"dsPIC33FJ32GS406"
	.zero	1007
# deviceid:
	.value	16384
# flash:
	.zero	2
	.long	11264
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70152
# configaddr:
	.long	16252928
# nconfig:
	.byte	9
# fuidaddr:
	.zero	3
	.long	0
# nfuid:
	.byte	0
# calibaddr:
	.zero	3
	.long	8390644
# ncalib:
	.byte	6
# codepanelsize:
	.byte	64
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"dsPIC33FJ32GS606"
	.zero	1007
# deviceid:
	.value	16386
# flash:
	.zero	2
	.long	11264
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70152
# configaddr:
	.long	16252928
# nconfig:
	.byte	9
# fuidaddr:
	.zero	3
	.long	0
# nfuid:
	.byte	0
# calibaddr:
	.zero	3
	.long	8390644
# ncalib:
	.byte	6
# codepanelsize:
	.byte	64
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"dsPIC33FJ32GS608"
	.zero	1007
# deviceid:
	.value	16388
# flash:
	.zero	2
	.long	11264
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70152
# configaddr:
	.long	16252928
# nconfig:
	.byte	9
# fuidaddr:
	.zero	3
	.long	0
# nfuid:
	.byte	0
# calibaddr:
	.zero	3
	.long	8390644
# ncalib:
	.byte	6
# codepanelsize:
	.byte	64
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"dsPIC33FJ32GS610"
	.zero	1007
# deviceid:
	.value	16390
# flash:
	.zero	2
	.long	11264
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70152
# configaddr:
	.long	16252928
# nconfig:
	.byte	9
# fuidaddr:
	.zero	3
	.long	0
# nfuid:
	.byte	0
# calibaddr:
	.zero	3
	.long	8390644
# ncalib:
	.byte	6
# codepanelsize:
	.byte	64
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"dsPIC33FJ64GS406"
	.zero	1007
# deviceid:
	.value	16385
# flash:
	.zero	2
	.long	22016
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70152
# configaddr:
	.long	16252928
# nconfig:
	.byte	9
# fuidaddr:
	.zero	3
	.long	0
# nfuid:
	.byte	0
# calibaddr:
	.zero	3
	.long	8390644
# ncalib:
	.byte	6
# codepanelsize:
	.byte	64
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"dsPIC33FJ64GS606"
	.zero	1007
# deviceid:
	.value	16387
# flash:
	.zero	2
	.long	22016
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70152
# configaddr:
	.long	16252928
# nconfig:
	.byte	9
# fuidaddr:
	.zero	3
	.long	0
# nfuid:
	.byte	0
# calibaddr:
	.zero	3
	.long	8390644
# ncalib:
	.byte	6
# codepanelsize:
	.byte	64
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"dsPIC33FJ64GS608"
	.zero	1007
# deviceid:
	.value	16389
# flash:
	.zero	2
	.long	22016
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70152
# configaddr:
	.long	16252928
# nconfig:
	.byte	9
# fuidaddr:
	.zero	3
	.long	0
# nfuid:
	.byte	0
# calibaddr:
	.zero	3
	.long	8390644
# ncalib:
	.byte	6
# codepanelsize:
	.byte	64
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"dsPIC33FJ64GS610"
	.zero	1007
# deviceid:
	.value	16391
# flash:
	.zero	2
	.long	22016
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70152
# configaddr:
	.long	16252928
# nconfig:
	.byte	9
# fuidaddr:
	.zero	3
	.long	0
# nfuid:
	.byte	0
# calibaddr:
	.zero	3
	.long	8390644
# ncalib:
	.byte	6
# codepanelsize:
	.byte	64
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"dsPIC33FJ12GP201"
	.zero	1007
# deviceid:
	.value	2050
# flash:
	.zero	2
	.long	4096
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70152
# configaddr:
	.long	16252928
# nconfig:
	.byte	8
# fuidaddr:
	.zero	3
	.long	16252944
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	64
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"dsPIC33FJ12GP202"
	.zero	1007
# deviceid:
	.value	2051
# flash:
	.zero	2
	.long	4096
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70152
# configaddr:
	.long	16252928
# nconfig:
	.byte	8
# fuidaddr:
	.zero	3
	.long	16252944
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	64
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"dsPIC33FJ16GP304"
	.zero	1007
# deviceid:
	.value	3847
# flash:
	.zero	2
	.long	5632
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70152
# configaddr:
	.long	16252928
# nconfig:
	.byte	8
# fuidaddr:
	.zero	3
	.long	16252944
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	64
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"dsPIC33FJ32GP202"
	.zero	1007
# deviceid:
	.value	3853
# flash:
	.zero	2
	.long	11264
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70152
# configaddr:
	.long	16252928
# nconfig:
	.byte	8
# fuidaddr:
	.zero	3
	.long	16252944
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	64
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"dsPIC33FJ32GP204"
	.zero	1007
# deviceid:
	.value	3855
# flash:
	.zero	2
	.long	11264
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70152
# configaddr:
	.long	16252928
# nconfig:
	.byte	8
# fuidaddr:
	.zero	3
	.long	16252944
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	64
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"dsPIC33FJ32GP302"
	.zero	1007
# deviceid:
	.value	1541
# flash:
	.zero	2
	.long	11264
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70152
# configaddr:
	.long	16252928
# nconfig:
	.byte	8
# fuidaddr:
	.zero	3
	.long	16252944
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	64
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"dsPIC33FJ32GP304"
	.zero	1007
# deviceid:
	.value	1543
# flash:
	.zero	2
	.long	11264
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70152
# configaddr:
	.long	16252928
# nconfig:
	.byte	8
# fuidaddr:
	.zero	3
	.long	16252944
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	64
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"dsPIC33FJ64GP202"
	.zero	1007
# deviceid:
	.value	1557
# flash:
	.zero	2
	.long	22016
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70152
# configaddr:
	.long	16252928
# nconfig:
	.byte	8
# fuidaddr:
	.zero	3
	.long	16252944
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	64
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"dsPIC33FJ64GP204"
	.zero	1007
# deviceid:
	.value	1559
# flash:
	.zero	2
	.long	22016
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70152
# configaddr:
	.long	16252928
# nconfig:
	.byte	8
# fuidaddr:
	.zero	3
	.long	16252944
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	64
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"dsPIC33FJ64GP206"
	.zero	1007
# deviceid:
	.value	193
# flash:
	.zero	2
	.long	22016
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70152
# configaddr:
	.long	16252928
# nconfig:
	.byte	8
# fuidaddr:
	.zero	3
	.long	16252944
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	64
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"dsPIC33FJ64GP306"
	.zero	1007
# deviceid:
	.value	205
# flash:
	.zero	2
	.long	22016
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70152
# configaddr:
	.long	16252928
# nconfig:
	.byte	8
# fuidaddr:
	.zero	3
	.long	16252944
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	64
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"dsPIC33FJ64GP310"
	.zero	1007
# deviceid:
	.value	207
# flash:
	.zero	2
	.long	22016
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70152
# configaddr:
	.long	16252928
# nconfig:
	.byte	8
# fuidaddr:
	.zero	3
	.long	16252944
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	64
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"dsPIC33FJ64GP706"
	.zero	1007
# deviceid:
	.value	213
# flash:
	.zero	2
	.long	22016
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70152
# configaddr:
	.long	16252928
# nconfig:
	.byte	8
# fuidaddr:
	.zero	3
	.long	16252944
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	64
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"dsPIC33FJ64GP708"
	.zero	1007
# deviceid:
	.value	214
# flash:
	.zero	2
	.long	22016
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70152
# configaddr:
	.long	16252928
# nconfig:
	.byte	8
# fuidaddr:
	.zero	3
	.long	16252944
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	64
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"dsPIC33FJ64GP710"
	.zero	1007
# deviceid:
	.value	215
# flash:
	.zero	2
	.long	22016
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70152
# configaddr:
	.long	16252928
# nconfig:
	.byte	8
# fuidaddr:
	.zero	3
	.long	16252944
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	64
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"dsPIC33FJ64GP802"
	.zero	1007
# deviceid:
	.value	1565
# flash:
	.zero	2
	.long	22016
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70152
# configaddr:
	.long	16252928
# nconfig:
	.byte	8
# fuidaddr:
	.zero	3
	.long	16252944
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	64
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"dsPIC33FJ64GP804"
	.zero	1007
# deviceid:
	.value	1567
# flash:
	.zero	2
	.long	22016
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70152
# configaddr:
	.long	16252928
# nconfig:
	.byte	8
# fuidaddr:
	.zero	3
	.long	16252944
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	64
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"dsPIC33FJ128GP202"
	.zero	1006
# deviceid:
	.value	1573
# flash:
	.zero	2
	.long	44032
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70152
# configaddr:
	.long	16252928
# nconfig:
	.byte	8
# fuidaddr:
	.zero	3
	.long	16252944
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	64
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"dsPIC33FJ128GP204"
	.zero	1006
# deviceid:
	.value	1575
# flash:
	.zero	2
	.long	44032
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70152
# configaddr:
	.long	16252928
# nconfig:
	.byte	8
# fuidaddr:
	.zero	3
	.long	16252944
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	64
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"dsPIC33FJ128GP206"
	.zero	1006
# deviceid:
	.value	217
# flash:
	.zero	2
	.long	44032
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70152
# configaddr:
	.long	16252928
# nconfig:
	.byte	8
# fuidaddr:
	.zero	3
	.long	16252944
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	64
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"dsPIC33FJ128GP306"
	.zero	1006
# deviceid:
	.value	229
# flash:
	.zero	2
	.long	44032
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70152
# configaddr:
	.long	16252928
# nconfig:
	.byte	8
# fuidaddr:
	.zero	3
	.long	16252944
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	64
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"dsPIC33FJ128GP310"
	.zero	1006
# deviceid:
	.value	231
# flash:
	.zero	2
	.long	44032
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70152
# configaddr:
	.long	16252928
# nconfig:
	.byte	8
# fuidaddr:
	.zero	3
	.long	16252944
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	64
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"dsPIC33FJ128GP706"
	.zero	1006
# deviceid:
	.value	237
# flash:
	.zero	2
	.long	44032
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70152
# configaddr:
	.long	16252928
# nconfig:
	.byte	8
# fuidaddr:
	.zero	3
	.long	16252944
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	64
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"dsPIC33FJ128GP708"
	.zero	1006
# deviceid:
	.value	238
# flash:
	.zero	2
	.long	44032
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70152
# configaddr:
	.long	16252928
# nconfig:
	.byte	8
# fuidaddr:
	.zero	3
	.long	16252944
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	64
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"dsPIC33FJ128GP710"
	.zero	1006
# deviceid:
	.value	239
# flash:
	.zero	2
	.long	44032
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70152
# configaddr:
	.long	16252928
# nconfig:
	.byte	8
# fuidaddr:
	.zero	3
	.long	16252944
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	64
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"dsPIC33FJ128GP802"
	.zero	1006
# deviceid:
	.value	1581
# flash:
	.zero	2
	.long	44032
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70152
# configaddr:
	.long	16252928
# nconfig:
	.byte	8
# fuidaddr:
	.zero	3
	.long	16252944
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	64
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"dsPIC33FJ128GP804"
	.zero	1006
# deviceid:
	.value	1583
# flash:
	.zero	2
	.long	44032
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70152
# configaddr:
	.long	16252928
# nconfig:
	.byte	8
# fuidaddr:
	.zero	3
	.long	16252944
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	64
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"dsPIC33FJ256GP506"
	.zero	1006
# deviceid:
	.value	245
# flash:
	.zero	2
	.long	87552
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70152
# configaddr:
	.long	16252928
# nconfig:
	.byte	8
# fuidaddr:
	.zero	3
	.long	16252944
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	64
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"dsPIC33FJ256GP510"
	.zero	1006
# deviceid:
	.value	247
# flash:
	.zero	2
	.long	87552
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70152
# configaddr:
	.long	16252928
# nconfig:
	.byte	8
# fuidaddr:
	.zero	3
	.long	16252944
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	64
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"dsPIC33FJ256GP710"
	.zero	1006
# deviceid:
	.value	255
# flash:
	.zero	2
	.long	87552
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70152
# configaddr:
	.long	16252928
# nconfig:
	.byte	8
# fuidaddr:
	.zero	3
	.long	16252944
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	64
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"dsPIC33FJ12MC201"
	.zero	1007
# deviceid:
	.value	2048
# flash:
	.zero	2
	.long	4096
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70152
# configaddr:
	.long	16252928
# nconfig:
	.byte	8
# fuidaddr:
	.zero	3
	.long	16252944
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	64
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"dsPIC33FJ12MC202"
	.zero	1007
# deviceid:
	.value	2049
# flash:
	.zero	2
	.long	4096
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70152
# configaddr:
	.long	16252928
# nconfig:
	.byte	8
# fuidaddr:
	.zero	3
	.long	16252944
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	64
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"dsPIC33FJ16MC304"
	.zero	1007
# deviceid:
	.value	3843
# flash:
	.zero	2
	.long	5632
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70152
# configaddr:
	.long	16252928
# nconfig:
	.byte	8
# fuidaddr:
	.zero	3
	.long	16252944
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	64
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"dsPIC33FJ32MC202"
	.zero	1007
# deviceid:
	.value	3849
# flash:
	.zero	2
	.long	11264
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70152
# configaddr:
	.long	16252928
# nconfig:
	.byte	8
# fuidaddr:
	.zero	3
	.long	16252944
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	64
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"dsPIC33FJ32MC204"
	.zero	1007
# deviceid:
	.value	3851
# flash:
	.zero	2
	.long	11264
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70152
# configaddr:
	.long	16252928
# nconfig:
	.byte	8
# fuidaddr:
	.zero	3
	.long	16252944
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	64
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"dsPIC33FJ32MC302"
	.zero	1007
# deviceid:
	.value	1537
# flash:
	.zero	2
	.long	11264
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70152
# configaddr:
	.long	16252928
# nconfig:
	.byte	8
# fuidaddr:
	.zero	3
	.long	16252944
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	64
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"dsPIC33FJ32MC304"
	.zero	1007
# deviceid:
	.value	1539
# flash:
	.zero	2
	.long	11264
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70152
# configaddr:
	.long	16252928
# nconfig:
	.byte	8
# fuidaddr:
	.zero	3
	.long	16252944
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	64
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"dsPIC33FJ64MC202"
	.zero	1007
# deviceid:
	.value	1553
# flash:
	.zero	2
	.long	22016
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70152
# configaddr:
	.long	16252928
# nconfig:
	.byte	8
# fuidaddr:
	.zero	3
	.long	16252944
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	64
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"dsPIC33FJ64MC204"
	.zero	1007
# deviceid:
	.value	1555
# flash:
	.zero	2
	.long	22016
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70152
# configaddr:
	.long	16252928
# nconfig:
	.byte	8
# fuidaddr:
	.zero	3
	.long	16252944
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	64
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"dsPIC33FJ64MC506"
	.zero	1007
# deviceid:
	.value	137
# flash:
	.zero	2
	.long	22016
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70152
# configaddr:
	.long	16252928
# nconfig:
	.byte	8
# fuidaddr:
	.zero	3
	.long	16252944
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	64
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"dsPIC33FJ64MC508"
	.zero	1007
# deviceid:
	.value	138
# flash:
	.zero	2
	.long	22016
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70152
# configaddr:
	.long	16252928
# nconfig:
	.byte	8
# fuidaddr:
	.zero	3
	.long	16252944
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	64
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"dsPIC33FJ64MC510"
	.zero	1007
# deviceid:
	.value	139
# flash:
	.zero	2
	.long	22016
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70152
# configaddr:
	.long	16252928
# nconfig:
	.byte	8
# fuidaddr:
	.zero	3
	.long	16252944
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	64
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"dsPIC33FJ64MC706"
	.zero	1007
# deviceid:
	.value	145
# flash:
	.zero	2
	.long	22016
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70152
# configaddr:
	.long	16252928
# nconfig:
	.byte	8
# fuidaddr:
	.zero	3
	.long	16252944
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	64
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"dsPIC33FJ64MC710"
	.zero	1007
# deviceid:
	.value	151
# flash:
	.zero	2
	.long	22016
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70152
# configaddr:
	.long	16252928
# nconfig:
	.byte	8
# fuidaddr:
	.zero	3
	.long	16252944
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	64
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"dsPIC33FJ64MC802"
	.zero	1007
# deviceid:
	.value	1561
# flash:
	.zero	2
	.long	22016
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70152
# configaddr:
	.long	16252928
# nconfig:
	.byte	8
# fuidaddr:
	.zero	3
	.long	16252944
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	64
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"dsPIC33FJ64MC804"
	.zero	1007
# deviceid:
	.value	1563
# flash:
	.zero	2
	.long	22016
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70152
# configaddr:
	.long	16252928
# nconfig:
	.byte	8
# fuidaddr:
	.zero	3
	.long	16252944
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	64
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"dsPIC33FJ128MC202"
	.zero	1006
# deviceid:
	.value	1569
# flash:
	.zero	2
	.long	44032
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70152
# configaddr:
	.long	16252928
# nconfig:
	.byte	8
# fuidaddr:
	.zero	3
	.long	16252944
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	64
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"dsPIC33FJ128MC204"
	.zero	1006
# deviceid:
	.value	1571
# flash:
	.zero	2
	.long	44032
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70152
# configaddr:
	.long	16252928
# nconfig:
	.byte	8
# fuidaddr:
	.zero	3
	.long	16252944
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	64
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"dsPIC33FJ128MC506"
	.zero	1006
# deviceid:
	.value	161
# flash:
	.zero	2
	.long	44032
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70152
# configaddr:
	.long	16252928
# nconfig:
	.byte	8
# fuidaddr:
	.zero	3
	.long	16252944
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	64
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"dsPIC33FJ128MC510"
	.zero	1006
# deviceid:
	.value	163
# flash:
	.zero	2
	.long	44032
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70152
# configaddr:
	.long	16252928
# nconfig:
	.byte	8
# fuidaddr:
	.zero	3
	.long	16252944
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	64
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"dsPIC33FJ128MC706"
	.zero	1006
# deviceid:
	.value	169
# flash:
	.zero	2
	.long	44032
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70152
# configaddr:
	.long	16252928
# nconfig:
	.byte	8
# fuidaddr:
	.zero	3
	.long	16252944
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	64
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"dsPIC33FJ128MC708"
	.zero	1006
# deviceid:
	.value	174
# flash:
	.zero	2
	.long	44032
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70152
# configaddr:
	.long	16252928
# nconfig:
	.byte	8
# fuidaddr:
	.zero	3
	.long	16252944
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	64
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"dsPIC33FJ128MC710"
	.zero	1006
# deviceid:
	.value	175
# flash:
	.zero	2
	.long	44032
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70152
# configaddr:
	.long	16252928
# nconfig:
	.byte	8
# fuidaddr:
	.zero	3
	.long	16252944
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	64
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"dsPIC33FJ128MC802"
	.zero	1006
# deviceid:
	.value	1577
# flash:
	.zero	2
	.long	44032
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70152
# configaddr:
	.long	16252928
# nconfig:
	.byte	8
# fuidaddr:
	.zero	3
	.long	16252944
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	64
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"dsPIC33FJ128MC804"
	.zero	1006
# deviceid:
	.value	1579
# flash:
	.zero	2
	.long	44032
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70152
# configaddr:
	.long	16252928
# nconfig:
	.byte	8
# fuidaddr:
	.zero	3
	.long	16252944
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	64
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"dsPIC33FJ256MC510"
	.zero	1006
# deviceid:
	.value	183
# flash:
	.zero	2
	.long	87552
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70152
# configaddr:
	.long	16252928
# nconfig:
	.byte	8
# fuidaddr:
	.zero	3
	.long	16252944
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	64
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"dsPIC33FJ256MC710"
	.zero	1006
# deviceid:
	.value	191
# flash:
	.zero	2
	.long	87552
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70152
# configaddr:
	.long	16252928
# nconfig:
	.byte	8
# fuidaddr:
	.zero	3
	.long	16252944
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	64
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"PIC24HJ12GP201"
	.zero	1009
# deviceid:
	.value	2058
# flash:
	.zero	2
	.long	4096
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70152
# configaddr:
	.long	16252928
# nconfig:
	.byte	8
# fuidaddr:
	.zero	3
	.long	16252944
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	64
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"PIC24HJ12GP202"
	.zero	1009
# deviceid:
	.value	2059
# flash:
	.zero	2
	.long	4096
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70152
# configaddr:
	.long	16252928
# nconfig:
	.byte	8
# fuidaddr:
	.zero	3
	.long	16252944
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	64
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"PIC24HJ16GP304"
	.zero	1009
# deviceid:
	.value	3863
# flash:
	.zero	2
	.long	5632
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70152
# configaddr:
	.long	16252928
# nconfig:
	.byte	8
# fuidaddr:
	.zero	3
	.long	16252944
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	64
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"PIC24HJ32GP202"
	.zero	1009
# deviceid:
	.value	3869
# flash:
	.zero	2
	.long	11264
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70152
# configaddr:
	.long	16252928
# nconfig:
	.byte	8
# fuidaddr:
	.zero	3
	.long	16252944
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	64
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"PIC24HJ32GP204"
	.zero	1009
# deviceid:
	.value	3871
# flash:
	.zero	2
	.long	11264
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70152
# configaddr:
	.long	16252928
# nconfig:
	.byte	8
# fuidaddr:
	.zero	3
	.long	16252944
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	64
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"PIC24HJ32GP302"
	.zero	1009
# deviceid:
	.value	1605
# flash:
	.zero	2
	.long	11264
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70152
# configaddr:
	.long	16252928
# nconfig:
	.byte	8
# fuidaddr:
	.zero	3
	.long	16252944
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	64
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"PIC24HJ32GP304"
	.zero	1009
# deviceid:
	.value	1607
# flash:
	.zero	2
	.long	11264
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70152
# configaddr:
	.long	16252928
# nconfig:
	.byte	8
# fuidaddr:
	.zero	3
	.long	16252944
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	64
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"PIC24HJ64GP202"
	.zero	1009
# deviceid:
	.value	1621
# flash:
	.zero	2
	.long	22016
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70152
# configaddr:
	.long	16252928
# nconfig:
	.byte	8
# fuidaddr:
	.zero	3
	.long	16252944
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	64
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"PIC24HJ64GP204"
	.zero	1009
# deviceid:
	.value	1623
# flash:
	.zero	2
	.long	22016
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70152
# configaddr:
	.long	16252928
# nconfig:
	.byte	8
# fuidaddr:
	.zero	3
	.long	16252944
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	64
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"PIC24HJ64GP206"
	.zero	1009
# deviceid:
	.value	65
# flash:
	.zero	2
	.long	22016
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70152
# configaddr:
	.long	16252928
# nconfig:
	.byte	8
# fuidaddr:
	.zero	3
	.long	16252944
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	64
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"PIC24HJ64GP210"
	.zero	1009
# deviceid:
	.value	71
# flash:
	.zero	2
	.long	22016
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70152
# configaddr:
	.long	16252928
# nconfig:
	.byte	8
# fuidaddr:
	.zero	3
	.long	16252944
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	64
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"PIC24HJ64GP502"
	.zero	1009
# deviceid:
	.value	1653
# flash:
	.zero	2
	.long	22016
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70152
# configaddr:
	.long	16252928
# nconfig:
	.byte	8
# fuidaddr:
	.zero	3
	.long	16252944
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	64
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"PIC24HJ64GP504"
	.zero	1009
# deviceid:
	.value	1655
# flash:
	.zero	2
	.long	22016
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70152
# configaddr:
	.long	16252928
# nconfig:
	.byte	8
# fuidaddr:
	.zero	3
	.long	16252944
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	64
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"PIC24HJ64GP506"
	.zero	1009
# deviceid:
	.value	73
# flash:
	.zero	2
	.long	22016
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70152
# configaddr:
	.long	16252928
# nconfig:
	.byte	8
# fuidaddr:
	.zero	3
	.long	16252944
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	64
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"PIC24HJ64GP510"
	.zero	1009
# deviceid:
	.value	75
# flash:
	.zero	2
	.long	22016
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70152
# configaddr:
	.long	16252928
# nconfig:
	.byte	8
# fuidaddr:
	.zero	3
	.long	16252944
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	64
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"PIC24HJ128GP202"
	.zero	1008
# deviceid:
	.value	1637
# flash:
	.zero	2
	.long	44032
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70152
# configaddr:
	.long	16252928
# nconfig:
	.byte	8
# fuidaddr:
	.zero	3
	.long	16252944
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	64
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"PIC24HJ128GP204"
	.zero	1008
# deviceid:
	.value	1639
# flash:
	.zero	2
	.long	44032
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70152
# configaddr:
	.long	16252928
# nconfig:
	.byte	8
# fuidaddr:
	.zero	3
	.long	16252944
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	64
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"PIC24HJ128GP206"
	.zero	1008
# deviceid:
	.value	93
# flash:
	.zero	2
	.long	44032
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70152
# configaddr:
	.long	16252928
# nconfig:
	.byte	8
# fuidaddr:
	.zero	3
	.long	16252944
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	64
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"PIC24HJ128GP210"
	.zero	1008
# deviceid:
	.value	95
# flash:
	.zero	2
	.long	44032
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70152
# configaddr:
	.long	16252928
# nconfig:
	.byte	8
# fuidaddr:
	.zero	3
	.long	16252944
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	64
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"PIC24HJ128GP306"
	.zero	1008
# deviceid:
	.value	101
# flash:
	.zero	2
	.long	44032
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70152
# configaddr:
	.long	16252928
# nconfig:
	.byte	8
# fuidaddr:
	.zero	3
	.long	16252944
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	64
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"PIC24HJ128GP310"
	.zero	1008
# deviceid:
	.value	103
# flash:
	.zero	2
	.long	44032
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70152
# configaddr:
	.long	16252928
# nconfig:
	.byte	8
# fuidaddr:
	.zero	3
	.long	16252944
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	64
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"PIC24HJ128GP502"
	.zero	1008
# deviceid:
	.value	1661
# flash:
	.zero	2
	.long	44032
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70152
# configaddr:
	.long	16252928
# nconfig:
	.byte	8
# fuidaddr:
	.zero	3
	.long	16252944
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	64
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"PIC24HJ128GP504"
	.zero	1008
# deviceid:
	.value	1663
# flash:
	.zero	2
	.long	44032
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70152
# configaddr:
	.long	16252928
# nconfig:
	.byte	8
# fuidaddr:
	.zero	3
	.long	16252944
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	64
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"PIC24HJ128GP506"
	.zero	1008
# deviceid:
	.value	97
# flash:
	.zero	2
	.long	44032
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70152
# configaddr:
	.long	16252928
# nconfig:
	.byte	8
# fuidaddr:
	.zero	3
	.long	16252944
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	64
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"PIC24HJ128GP510"
	.zero	1008
# deviceid:
	.value	99
# flash:
	.zero	2
	.long	44032
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70152
# configaddr:
	.long	16252928
# nconfig:
	.byte	8
# fuidaddr:
	.zero	3
	.long	16252944
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	64
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"PIC24HJ256GP206"
	.zero	1008
# deviceid:
	.value	113
# flash:
	.zero	2
	.long	87552
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70152
# configaddr:
	.long	16252928
# nconfig:
	.byte	8
# fuidaddr:
	.zero	3
	.long	16252944
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	64
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"PIC24HJ256GP210"
	.zero	1008
# deviceid:
	.value	115
# flash:
	.zero	2
	.long	87552
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70152
# configaddr:
	.long	16252928
# nconfig:
	.byte	8
# fuidaddr:
	.zero	3
	.long	16252944
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	64
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"PIC24HJ256GP610"
	.zero	1008
# deviceid:
	.value	123
# flash:
	.zero	2
	.long	87552
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70152
# configaddr:
	.long	16252928
# nconfig:
	.byte	8
# fuidaddr:
	.zero	3
	.long	16252944
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	64
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"dsPIC33FJ64GP206A"
	.zero	1006
# deviceid:
	.value	193
# flash:
	.zero	2
	.long	22016
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70152
# configaddr:
	.long	16252928
# nconfig:
	.byte	8
# fuidaddr:
	.zero	3
	.long	16252944
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	64
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"dsPIC33FJ64GP306A"
	.zero	1006
# deviceid:
	.value	205
# flash:
	.zero	2
	.long	22016
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70152
# configaddr:
	.long	16252928
# nconfig:
	.byte	8
# fuidaddr:
	.zero	3
	.long	16252944
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	64
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"dsPIC33FJ64GP310A"
	.zero	1006
# deviceid:
	.value	207
# flash:
	.zero	2
	.long	22016
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70152
# configaddr:
	.long	16252928
# nconfig:
	.byte	8
# fuidaddr:
	.zero	3
	.long	16252944
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	64
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"dsPIC33FJ64GP706A"
	.zero	1006
# deviceid:
	.value	213
# flash:
	.zero	2
	.long	22016
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70152
# configaddr:
	.long	16252928
# nconfig:
	.byte	8
# fuidaddr:
	.zero	3
	.long	16252944
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	64
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"dsPIC33FJ64GP708A"
	.zero	1006
# deviceid:
	.value	214
# flash:
	.zero	2
	.long	22016
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70152
# configaddr:
	.long	16252928
# nconfig:
	.byte	8
# fuidaddr:
	.zero	3
	.long	16252944
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	64
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"dsPIC33FJ64GP710A"
	.zero	1006
# deviceid:
	.value	215
# flash:
	.zero	2
	.long	22016
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70152
# configaddr:
	.long	16252928
# nconfig:
	.byte	8
# fuidaddr:
	.zero	3
	.long	16252944
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	64
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"dsPIC33FJ64MC506A"
	.zero	1006
# deviceid:
	.value	137
# flash:
	.zero	2
	.long	22016
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70152
# configaddr:
	.long	16252928
# nconfig:
	.byte	8
# fuidaddr:
	.zero	3
	.long	16252944
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	64
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"dsPIC33FJ64MC508A"
	.zero	1006
# deviceid:
	.value	138
# flash:
	.zero	2
	.long	22016
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70152
# configaddr:
	.long	16252928
# nconfig:
	.byte	8
# fuidaddr:
	.zero	3
	.long	16252944
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	64
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"dsPIC33FJ64MC510A"
	.zero	1006
# deviceid:
	.value	139
# flash:
	.zero	2
	.long	22016
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70152
# configaddr:
	.long	16252928
# nconfig:
	.byte	8
# fuidaddr:
	.zero	3
	.long	16252944
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	64
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"dsPIC33FJ64MC706A"
	.zero	1006
# deviceid:
	.value	145
# flash:
	.zero	2
	.long	22016
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70152
# configaddr:
	.long	16252928
# nconfig:
	.byte	8
# fuidaddr:
	.zero	3
	.long	16252944
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	64
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"dsPIC33FJ64MC710A"
	.zero	1006
# deviceid:
	.value	151
# flash:
	.zero	2
	.long	22016
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70152
# configaddr:
	.long	16252928
# nconfig:
	.byte	8
# fuidaddr:
	.zero	3
	.long	16252944
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	64
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"PIC24HJ64GP206A"
	.zero	1008
# deviceid:
	.value	65
# flash:
	.zero	2
	.long	22016
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70152
# configaddr:
	.long	16252928
# nconfig:
	.byte	8
# fuidaddr:
	.zero	3
	.long	16252944
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	64
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"PIC24HJ64GP210A"
	.zero	1008
# deviceid:
	.value	71
# flash:
	.zero	2
	.long	22016
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70152
# configaddr:
	.long	16252928
# nconfig:
	.byte	8
# fuidaddr:
	.zero	3
	.long	16252944
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	64
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"PIC24HJ64GP506A"
	.zero	1008
# deviceid:
	.value	73
# flash:
	.zero	2
	.long	22016
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70152
# configaddr:
	.long	16252928
# nconfig:
	.byte	8
# fuidaddr:
	.zero	3
	.long	16252944
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	64
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"PIC24HJ64GP510A"
	.zero	1008
# deviceid:
	.value	75
# flash:
	.zero	2
	.long	22016
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70152
# configaddr:
	.long	16252928
# nconfig:
	.byte	8
# fuidaddr:
	.zero	3
	.long	16252944
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	64
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"dsPIC33FJ128GP206A"
	.zero	1005
# deviceid:
	.value	217
# flash:
	.zero	2
	.long	44032
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70152
# configaddr:
	.long	16252928
# nconfig:
	.byte	8
# fuidaddr:
	.zero	3
	.long	16252944
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	64
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"dsPIC33FJ128GP306A"
	.zero	1005
# deviceid:
	.value	229
# flash:
	.zero	2
	.long	44032
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70152
# configaddr:
	.long	16252928
# nconfig:
	.byte	8
# fuidaddr:
	.zero	3
	.long	16252944
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	64
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"dsPIC33FJ128GP310A"
	.zero	1005
# deviceid:
	.value	231
# flash:
	.zero	2
	.long	44032
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70152
# configaddr:
	.long	16252928
# nconfig:
	.byte	8
# fuidaddr:
	.zero	3
	.long	16252944
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	64
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"dsPIC33FJ128GP706A"
	.zero	1005
# deviceid:
	.value	237
# flash:
	.zero	2
	.long	44032
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70152
# configaddr:
	.long	16252928
# nconfig:
	.byte	8
# fuidaddr:
	.zero	3
	.long	16252944
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	64
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"dsPIC33FJ128GP708A"
	.zero	1005
# deviceid:
	.value	238
# flash:
	.zero	2
	.long	44032
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70152
# configaddr:
	.long	16252928
# nconfig:
	.byte	8
# fuidaddr:
	.zero	3
	.long	16252944
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	64
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"dsPIC33FJ128GP710A"
	.zero	1005
# deviceid:
	.value	239
# flash:
	.zero	2
	.long	44032
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70152
# configaddr:
	.long	16252928
# nconfig:
	.byte	8
# fuidaddr:
	.zero	3
	.long	16252944
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	64
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"dsPIC33FJ128MC506A"
	.zero	1005
# deviceid:
	.value	161
# flash:
	.zero	2
	.long	44032
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70152
# configaddr:
	.long	16252928
# nconfig:
	.byte	8
# fuidaddr:
	.zero	3
	.long	16252944
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	64
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"dsPIC33FJ128MC510A"
	.zero	1005
# deviceid:
	.value	163
# flash:
	.zero	2
	.long	44032
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70152
# configaddr:
	.long	16252928
# nconfig:
	.byte	8
# fuidaddr:
	.zero	3
	.long	16252944
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	64
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"dsPIC33FJ128MC706A"
	.zero	1005
# deviceid:
	.value	169
# flash:
	.zero	2
	.long	44032
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70152
# configaddr:
	.long	16252928
# nconfig:
	.byte	8
# fuidaddr:
	.zero	3
	.long	16252944
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	64
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"dsPIC33FJ128MC708A"
	.zero	1005
# deviceid:
	.value	174
# flash:
	.zero	2
	.long	44032
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70152
# configaddr:
	.long	16252928
# nconfig:
	.byte	8
# fuidaddr:
	.zero	3
	.long	16252944
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	64
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"dsPIC33FJ128MC710A"
	.zero	1005
# deviceid:
	.value	175
# flash:
	.zero	2
	.long	44032
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70152
# configaddr:
	.long	16252928
# nconfig:
	.byte	8
# fuidaddr:
	.zero	3
	.long	16252944
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	64
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"PIC24HJ128GP206A"
	.zero	1007
# deviceid:
	.value	93
# flash:
	.zero	2
	.long	44032
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70152
# configaddr:
	.long	16252928
# nconfig:
	.byte	8
# fuidaddr:
	.zero	3
	.long	16252944
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	64
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"PIC24HJ128GP210A"
	.zero	1007
# deviceid:
	.value	95
# flash:
	.zero	2
	.long	44032
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70152
# configaddr:
	.long	16252928
# nconfig:
	.byte	8
# fuidaddr:
	.zero	3
	.long	16252944
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	64
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"PIC24HJ128GP306A"
	.zero	1007
# deviceid:
	.value	101
# flash:
	.zero	2
	.long	44032
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70152
# configaddr:
	.long	16252928
# nconfig:
	.byte	8
# fuidaddr:
	.zero	3
	.long	16252944
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	64
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"PIC24HJ128GP310A"
	.zero	1007
# deviceid:
	.value	103
# flash:
	.zero	2
	.long	44032
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70152
# configaddr:
	.long	16252928
# nconfig:
	.byte	8
# fuidaddr:
	.zero	3
	.long	16252944
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	64
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"PIC24HJ128GP506A"
	.zero	1007
# deviceid:
	.value	97
# flash:
	.zero	2
	.long	44032
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70152
# configaddr:
	.long	16252928
# nconfig:
	.byte	8
# fuidaddr:
	.zero	3
	.long	16252944
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	64
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"PIC24HJ128GP510A"
	.zero	1007
# deviceid:
	.value	99
# flash:
	.zero	2
	.long	44032
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70152
# configaddr:
	.long	16252928
# nconfig:
	.byte	8
# fuidaddr:
	.zero	3
	.long	16252944
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	64
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"dsPIC33FJ256GP506A"
	.zero	1005
# deviceid:
	.value	2037
# flash:
	.zero	2
	.long	87552
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70152
# configaddr:
	.long	16252928
# nconfig:
	.byte	8
# fuidaddr:
	.zero	3
	.long	16252944
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	64
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"dsPIC33FJ256GP510A"
	.zero	1005
# deviceid:
	.value	2039
# flash:
	.zero	2
	.long	87552
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70152
# configaddr:
	.long	16252928
# nconfig:
	.byte	8
# fuidaddr:
	.zero	3
	.long	16252944
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	64
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"dsPIC33FJ256GP710A"
	.zero	1005
# deviceid:
	.value	2047
# flash:
	.zero	2
	.long	87552
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70152
# configaddr:
	.long	16252928
# nconfig:
	.byte	8
# fuidaddr:
	.zero	3
	.long	16252944
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	64
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"dsPIC33FJ256MC510A"
	.zero	1005
# deviceid:
	.value	1975
# flash:
	.zero	2
	.long	87552
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70152
# configaddr:
	.long	16252928
# nconfig:
	.byte	8
# fuidaddr:
	.zero	3
	.long	16252944
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	64
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"dsPIC33FJ256MC710A"
	.zero	1005
# deviceid:
	.value	1983
# flash:
	.zero	2
	.long	87552
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70152
# configaddr:
	.long	16252928
# nconfig:
	.byte	8
# fuidaddr:
	.zero	3
	.long	16252944
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	64
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"PIC24HJ256GP206A"
	.zero	1007
# deviceid:
	.value	1905
# flash:
	.zero	2
	.long	87552
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70152
# configaddr:
	.long	16252928
# nconfig:
	.byte	8
# fuidaddr:
	.zero	3
	.long	16252944
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	64
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"PIC24HJ256GP210A"
	.zero	1007
# deviceid:
	.value	1907
# flash:
	.zero	2
	.long	87552
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70152
# configaddr:
	.long	16252928
# nconfig:
	.byte	8
# fuidaddr:
	.zero	3
	.long	16252944
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	64
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"PIC24HJ256GP610A"
	.zero	1007
# deviceid:
	.value	1915
# flash:
	.zero	2
	.long	87552
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70152
# configaddr:
	.long	16252928
# nconfig:
	.byte	8
# fuidaddr:
	.zero	3
	.long	16252944
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	64
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"PIC24EP32GP202"
	.zero	1009
# deviceid:
	.value	7193
# flash:
	.zero	2
	.long	11264
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70663
# configaddr:
	.long	22508
# nconfig:
	.byte	10
# fuidaddr:
	.zero	3
	.long	8392696
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	2
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"PIC24EP32GP203"
	.zero	1009
# deviceid:
	.value	7194
# flash:
	.zero	2
	.long	11264
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70663
# configaddr:
	.long	22508
# nconfig:
	.byte	10
# fuidaddr:
	.zero	3
	.long	8392696
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	2
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"PIC24EP32GP204"
	.zero	1009
# deviceid:
	.value	7192
# flash:
	.zero	2
	.long	11264
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70663
# configaddr:
	.long	22508
# nconfig:
	.byte	10
# fuidaddr:
	.zero	3
	.long	8392696
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	2
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"dsPIC33EP32GP502"
	.zero	1007
# deviceid:
	.value	7181
# flash:
	.zero	2
	.long	11264
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70663
# configaddr:
	.long	22508
# nconfig:
	.byte	10
# fuidaddr:
	.zero	3
	.long	8392696
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	2
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"dsPIC33EP32GP503"
	.zero	1007
# deviceid:
	.value	7182
# flash:
	.zero	2
	.long	11264
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70663
# configaddr:
	.long	22508
# nconfig:
	.byte	10
# fuidaddr:
	.zero	3
	.long	8392696
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	2
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"dsPIC33EP32GP504"
	.zero	1007
# deviceid:
	.value	7180
# flash:
	.zero	2
	.long	11264
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70663
# configaddr:
	.long	22508
# nconfig:
	.byte	10
# fuidaddr:
	.zero	3
	.long	8392696
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	2
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"PIC24EP32MC202"
	.zero	1009
# deviceid:
	.value	7185
# flash:
	.zero	2
	.long	11264
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70663
# configaddr:
	.long	22508
# nconfig:
	.byte	10
# fuidaddr:
	.zero	3
	.long	8392696
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	2
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"PIC24EP32MC203"
	.zero	1009
# deviceid:
	.value	7186
# flash:
	.zero	2
	.long	11264
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70663
# configaddr:
	.long	22508
# nconfig:
	.byte	10
# fuidaddr:
	.zero	3
	.long	8392696
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	2
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"PIC24EP32MC204"
	.zero	1009
# deviceid:
	.value	7184
# flash:
	.zero	2
	.long	11264
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70663
# configaddr:
	.long	22508
# nconfig:
	.byte	10
# fuidaddr:
	.zero	3
	.long	8392696
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	2
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"dsPIC33EP32MC202"
	.zero	1007
# deviceid:
	.value	7169
# flash:
	.zero	2
	.long	11264
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70663
# configaddr:
	.long	22508
# nconfig:
	.byte	10
# fuidaddr:
	.zero	3
	.long	8392696
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	2
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"dsPIC33EP32MC203"
	.zero	1007
# deviceid:
	.value	7170
# flash:
	.zero	2
	.long	11264
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70663
# configaddr:
	.long	22508
# nconfig:
	.byte	10
# fuidaddr:
	.zero	3
	.long	8392696
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	2
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"dsPIC33EP32MC204"
	.zero	1007
# deviceid:
	.value	7168
# flash:
	.zero	2
	.long	11264
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70663
# configaddr:
	.long	22508
# nconfig:
	.byte	10
# fuidaddr:
	.zero	3
	.long	8392696
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	2
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"dsPIC33EP32MC502"
	.zero	1007
# deviceid:
	.value	7173
# flash:
	.zero	2
	.long	11264
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70663
# configaddr:
	.long	22508
# nconfig:
	.byte	10
# fuidaddr:
	.zero	3
	.long	8392696
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	2
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"dsPIC33EP32MC503"
	.zero	1007
# deviceid:
	.value	7174
# flash:
	.zero	2
	.long	11264
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70663
# configaddr:
	.long	22508
# nconfig:
	.byte	10
# fuidaddr:
	.zero	3
	.long	8392696
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	2
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"dsPIC33EP32MC504"
	.zero	1007
# deviceid:
	.value	7172
# flash:
	.zero	2
	.long	11264
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70663
# configaddr:
	.long	22508
# nconfig:
	.byte	10
# fuidaddr:
	.zero	3
	.long	8392696
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	2
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"PIC24EP64GP202"
	.zero	1009
# deviceid:
	.value	7481
# flash:
	.zero	2
	.long	22528
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70663
# configaddr:
	.long	45036
# nconfig:
	.byte	10
# fuidaddr:
	.zero	3
	.long	8392696
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	2
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"PIC24EP64GP203"
	.zero	1009
# deviceid:
	.value	7482
# flash:
	.zero	2
	.long	22528
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70663
# configaddr:
	.long	45036
# nconfig:
	.byte	10
# fuidaddr:
	.zero	3
	.long	8392696
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	2
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"PIC24EP64GP204"
	.zero	1009
# deviceid:
	.value	7480
# flash:
	.zero	2
	.long	22528
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70663
# configaddr:
	.long	45036
# nconfig:
	.byte	10
# fuidaddr:
	.zero	3
	.long	8392696
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	2
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"PIC24EP64GP206"
	.zero	1009
# deviceid:
	.value	7483
# flash:
	.zero	2
	.long	22528
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70663
# configaddr:
	.long	45036
# nconfig:
	.byte	10
# fuidaddr:
	.zero	3
	.long	8392696
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	2
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"dsPIC33EP64GP502"
	.zero	1007
# deviceid:
	.value	7469
# flash:
	.zero	2
	.long	22528
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70663
# configaddr:
	.long	45036
# nconfig:
	.byte	10
# fuidaddr:
	.zero	3
	.long	8392696
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	2
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"dsPIC33EP64GP503"
	.zero	1007
# deviceid:
	.value	7470
# flash:
	.zero	2
	.long	22528
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70663
# configaddr:
	.long	45036
# nconfig:
	.byte	10
# fuidaddr:
	.zero	3
	.long	8392696
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	2
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"dsPIC33EP64GP504"
	.zero	1007
# deviceid:
	.value	7468
# flash:
	.zero	2
	.long	22528
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70663
# configaddr:
	.long	45036
# nconfig:
	.byte	10
# fuidaddr:
	.zero	3
	.long	8392696
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	2
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"dsPIC33EP64GP506"
	.zero	1007
# deviceid:
	.value	7471
# flash:
	.zero	2
	.long	22528
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70663
# configaddr:
	.long	45036
# nconfig:
	.byte	10
# fuidaddr:
	.zero	3
	.long	8392696
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	2
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"PIC24EP64MC202"
	.zero	1009
# deviceid:
	.value	7473
# flash:
	.zero	2
	.long	22528
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70663
# configaddr:
	.long	45036
# nconfig:
	.byte	10
# fuidaddr:
	.zero	3
	.long	8392696
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	2
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"PIC24EP64MC203"
	.zero	1009
# deviceid:
	.value	7474
# flash:
	.zero	2
	.long	22528
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70663
# configaddr:
	.long	45036
# nconfig:
	.byte	10
# fuidaddr:
	.zero	3
	.long	8392696
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	2
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"PIC24EP64MC204"
	.zero	1009
# deviceid:
	.value	7472
# flash:
	.zero	2
	.long	22528
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70663
# configaddr:
	.long	45036
# nconfig:
	.byte	10
# fuidaddr:
	.zero	3
	.long	8392696
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	2
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"PIC24EP64MC206"
	.zero	1009
# deviceid:
	.value	7475
# flash:
	.zero	2
	.long	22528
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70663
# configaddr:
	.long	45036
# nconfig:
	.byte	10
# fuidaddr:
	.zero	3
	.long	8392696
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	2
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"dsPIC33EP64MC202"
	.zero	1007
# deviceid:
	.value	7457
# flash:
	.zero	2
	.long	22528
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70663
# configaddr:
	.long	45036
# nconfig:
	.byte	10
# fuidaddr:
	.zero	3
	.long	8392696
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	2
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"dsPIC33EP64MC203"
	.zero	1007
# deviceid:
	.value	7458
# flash:
	.zero	2
	.long	22528
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70663
# configaddr:
	.long	45036
# nconfig:
	.byte	10
# fuidaddr:
	.zero	3
	.long	8392696
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	2
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"dsPIC33EP64MC204"
	.zero	1007
# deviceid:
	.value	7456
# flash:
	.zero	2
	.long	22528
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70663
# configaddr:
	.long	45036
# nconfig:
	.byte	10
# fuidaddr:
	.zero	3
	.long	8392696
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	2
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"dsPIC33EP64MC206"
	.zero	1007
# deviceid:
	.value	7459
# flash:
	.zero	2
	.long	22528
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70663
# configaddr:
	.long	45036
# nconfig:
	.byte	10
# fuidaddr:
	.zero	3
	.long	8392696
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	2
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"dsPIC33EP64MC502"
	.zero	1007
# deviceid:
	.value	7461
# flash:
	.zero	2
	.long	22528
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70663
# configaddr:
	.long	45036
# nconfig:
	.byte	10
# fuidaddr:
	.zero	3
	.long	8392696
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	2
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"dsPIC33EP64MC503"
	.zero	1007
# deviceid:
	.value	7462
# flash:
	.zero	2
	.long	22528
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70663
# configaddr:
	.long	45036
# nconfig:
	.byte	10
# fuidaddr:
	.zero	3
	.long	8392696
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	2
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"dsPIC33EP64MC504"
	.zero	1007
# deviceid:
	.value	7460
# flash:
	.zero	2
	.long	22528
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70663
# configaddr:
	.long	45036
# nconfig:
	.byte	10
# fuidaddr:
	.zero	3
	.long	8392696
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	2
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"dsPIC33EP64MC506"
	.zero	1007
# deviceid:
	.value	7463
# flash:
	.zero	2
	.long	22528
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70663
# configaddr:
	.long	45036
# nconfig:
	.byte	10
# fuidaddr:
	.zero	3
	.long	8392696
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	2
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"PIC24EP128GP202"
	.zero	1008
# deviceid:
	.value	7769
# flash:
	.zero	2
	.long	44032
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70663
# configaddr:
	.long	88044
# nconfig:
	.byte	10
# fuidaddr:
	.zero	3
	.long	8392696
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	2
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"PIC24EP128GP204"
	.zero	1008
# deviceid:
	.value	7768
# flash:
	.zero	2
	.long	44032
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70663
# configaddr:
	.long	88044
# nconfig:
	.byte	10
# fuidaddr:
	.zero	3
	.long	8392696
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	2
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"PIC24EP128GP206"
	.zero	1008
# deviceid:
	.value	7771
# flash:
	.zero	2
	.long	44032
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70663
# configaddr:
	.long	88044
# nconfig:
	.byte	10
# fuidaddr:
	.zero	3
	.long	8392696
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	2
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"dsPIC33EP128GP502"
	.zero	1006
# deviceid:
	.value	7757
# flash:
	.zero	2
	.long	44032
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70663
# configaddr:
	.long	88044
# nconfig:
	.byte	10
# fuidaddr:
	.zero	3
	.long	8392696
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	2
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"dsPIC33EP128GP504"
	.zero	1006
# deviceid:
	.value	7756
# flash:
	.zero	2
	.long	44032
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70663
# configaddr:
	.long	88044
# nconfig:
	.byte	10
# fuidaddr:
	.zero	3
	.long	8392696
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	2
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"dsPIC33EP128GP506"
	.zero	1006
# deviceid:
	.value	7759
# flash:
	.zero	2
	.long	44032
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70663
# configaddr:
	.long	88044
# nconfig:
	.byte	10
# fuidaddr:
	.zero	3
	.long	8392696
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	2
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"PIC24EP128MC202"
	.zero	1008
# deviceid:
	.value	7761
# flash:
	.zero	2
	.long	44032
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70663
# configaddr:
	.long	88044
# nconfig:
	.byte	10
# fuidaddr:
	.zero	3
	.long	8392696
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	2
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"PIC24EP128MC204"
	.zero	1008
# deviceid:
	.value	7760
# flash:
	.zero	2
	.long	44032
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70663
# configaddr:
	.long	88044
# nconfig:
	.byte	10
# fuidaddr:
	.zero	3
	.long	8392696
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	2
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"PIC24EP128MC206"
	.zero	1008
# deviceid:
	.value	7763
# flash:
	.zero	2
	.long	44032
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70663
# configaddr:
	.long	88044
# nconfig:
	.byte	10
# fuidaddr:
	.zero	3
	.long	8392696
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	2
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"dsPIC33EP128MC202"
	.zero	1006
# deviceid:
	.value	7745
# flash:
	.zero	2
	.long	44032
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70663
# configaddr:
	.long	88044
# nconfig:
	.byte	10
# fuidaddr:
	.zero	3
	.long	8392696
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	2
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"dsPIC33EP128MC204"
	.zero	1006
# deviceid:
	.value	7744
# flash:
	.zero	2
	.long	44032
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70663
# configaddr:
	.long	88044
# nconfig:
	.byte	10
# fuidaddr:
	.zero	3
	.long	8392696
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	2
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"dsPIC33EP128MC206"
	.zero	1006
# deviceid:
	.value	7747
# flash:
	.zero	2
	.long	44032
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70663
# configaddr:
	.long	88044
# nconfig:
	.byte	10
# fuidaddr:
	.zero	3
	.long	8392696
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	2
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"dsPIC33EP128MC502"
	.zero	1006
# deviceid:
	.value	7749
# flash:
	.zero	2
	.long	44032
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70663
# configaddr:
	.long	88044
# nconfig:
	.byte	10
# fuidaddr:
	.zero	3
	.long	8392696
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	2
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"dsPIC33EP128MC504"
	.zero	1006
# deviceid:
	.value	7748
# flash:
	.zero	2
	.long	44032
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70663
# configaddr:
	.long	88044
# nconfig:
	.byte	10
# fuidaddr:
	.zero	3
	.long	8392696
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	2
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"dsPIC33EP128MC506"
	.zero	1006
# deviceid:
	.value	7751
# flash:
	.zero	2
	.long	44032
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70663
# configaddr:
	.long	88044
# nconfig:
	.byte	10
# fuidaddr:
	.zero	3
	.long	8392696
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	2
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"PIC24EP256GP202"
	.zero	1008
# deviceid:
	.value	8057
# flash:
	.zero	2
	.long	88064
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70663
# configaddr:
	.long	176108
# nconfig:
	.byte	10
# fuidaddr:
	.zero	3
	.long	8392696
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	2
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"PIC24EP256GP204"
	.zero	1008
# deviceid:
	.value	8056
# flash:
	.zero	2
	.long	88064
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70663
# configaddr:
	.long	176108
# nconfig:
	.byte	10
# fuidaddr:
	.zero	3
	.long	8392696
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	2
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"PIC24EP256GP206"
	.zero	1008
# deviceid:
	.value	8059
# flash:
	.zero	2
	.long	88064
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70663
# configaddr:
	.long	176108
# nconfig:
	.byte	10
# fuidaddr:
	.zero	3
	.long	8392696
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	2
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"dsPIC33EP256GP502"
	.zero	1006
# deviceid:
	.value	8045
# flash:
	.zero	2
	.long	88064
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70663
# configaddr:
	.long	176108
# nconfig:
	.byte	10
# fuidaddr:
	.zero	3
	.long	8392696
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	2
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"dsPIC33EP256GP504"
	.zero	1006
# deviceid:
	.value	8044
# flash:
	.zero	2
	.long	88064
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70663
# configaddr:
	.long	176108
# nconfig:
	.byte	10
# fuidaddr:
	.zero	3
	.long	8392696
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	2
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"dsPIC33EP256GP506"
	.zero	1006
# deviceid:
	.value	8047
# flash:
	.zero	2
	.long	88064
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70663
# configaddr:
	.long	176108
# nconfig:
	.byte	10
# fuidaddr:
	.zero	3
	.long	8392696
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	2
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"PIC24EP256MC202"
	.zero	1008
# deviceid:
	.value	8049
# flash:
	.zero	2
	.long	88064
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70663
# configaddr:
	.long	176108
# nconfig:
	.byte	10
# fuidaddr:
	.zero	3
	.long	8392696
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	2
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"PIC24EP256MC204"
	.zero	1008
# deviceid:
	.value	8048
# flash:
	.zero	2
	.long	88064
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70663
# configaddr:
	.long	176108
# nconfig:
	.byte	10
# fuidaddr:
	.zero	3
	.long	8392696
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	2
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"PIC24EP256MC206"
	.zero	1008
# deviceid:
	.value	8051
# flash:
	.zero	2
	.long	88064
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70663
# configaddr:
	.long	176108
# nconfig:
	.byte	10
# fuidaddr:
	.zero	3
	.long	8392696
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	2
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"dsPIC33EP256MC202"
	.zero	1006
# deviceid:
	.value	8033
# flash:
	.zero	2
	.long	88064
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70663
# configaddr:
	.long	176108
# nconfig:
	.byte	10
# fuidaddr:
	.zero	3
	.long	8392696
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	2
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"dsPIC33EP256MC204"
	.zero	1006
# deviceid:
	.value	8032
# flash:
	.zero	2
	.long	88064
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70663
# configaddr:
	.long	176108
# nconfig:
	.byte	10
# fuidaddr:
	.zero	3
	.long	8392696
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	2
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"dsPIC33EP256MC206"
	.zero	1006
# deviceid:
	.value	8035
# flash:
	.zero	2
	.long	88064
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70663
# configaddr:
	.long	176108
# nconfig:
	.byte	10
# fuidaddr:
	.zero	3
	.long	8392696
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	2
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"dsPIC33EP256MC502"
	.zero	1006
# deviceid:
	.value	8037
# flash:
	.zero	2
	.long	88064
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70663
# configaddr:
	.long	176108
# nconfig:
	.byte	10
# fuidaddr:
	.zero	3
	.long	8392696
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	2
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"dsPIC33EP256MC504"
	.zero	1006
# deviceid:
	.value	8036
# flash:
	.zero	2
	.long	88064
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70663
# configaddr:
	.long	176108
# nconfig:
	.byte	10
# fuidaddr:
	.zero	3
	.long	8392696
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	2
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"dsPIC33EP256MC506"
	.zero	1006
# deviceid:
	.value	8039
# flash:
	.zero	2
	.long	88064
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70663
# configaddr:
	.long	176108
# nconfig:
	.byte	10
# fuidaddr:
	.zero	3
	.long	8392696
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	2
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"PIC24EP512GP202"
	.zero	1008
# deviceid:
	.value	6041
# flash:
	.zero	2
	.long	175104
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70663
# configaddr:
	.long	350188
# nconfig:
	.byte	10
# fuidaddr:
	.zero	3
	.long	8392696
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	2
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"PIC24EP512GP204"
	.zero	1008
# deviceid:
	.value	6040
# flash:
	.zero	2
	.long	175104
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70663
# configaddr:
	.long	350188
# nconfig:
	.byte	10
# fuidaddr:
	.zero	3
	.long	8392696
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	2
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"PIC24EP512GP206"
	.zero	1008
# deviceid:
	.value	6043
# flash:
	.zero	2
	.long	175104
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70663
# configaddr:
	.long	350188
# nconfig:
	.byte	10
# fuidaddr:
	.zero	3
	.long	8392696
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	2
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"dsPIC33EP512GP502"
	.zero	1006
# deviceid:
	.value	6029
# flash:
	.zero	2
	.long	175104
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70663
# configaddr:
	.long	350188
# nconfig:
	.byte	10
# fuidaddr:
	.zero	3
	.long	8392696
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	2
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"dsPIC33EP512GP504"
	.zero	1006
# deviceid:
	.value	6028
# flash:
	.zero	2
	.long	175104
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70663
# configaddr:
	.long	350188
# nconfig:
	.byte	10
# fuidaddr:
	.zero	3
	.long	8392696
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	2
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"dsPIC33EP512GP506"
	.zero	1006
# deviceid:
	.value	6031
# flash:
	.zero	2
	.long	175104
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70663
# configaddr:
	.long	350188
# nconfig:
	.byte	10
# fuidaddr:
	.zero	3
	.long	8392696
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	2
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"PIC24EP512MC202"
	.zero	1008
# deviceid:
	.value	6033
# flash:
	.zero	2
	.long	175104
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70663
# configaddr:
	.long	350188
# nconfig:
	.byte	10
# fuidaddr:
	.zero	3
	.long	8392696
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	2
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"PIC24EP512MC204"
	.zero	1008
# deviceid:
	.value	6032
# flash:
	.zero	2
	.long	175104
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70663
# configaddr:
	.long	350188
# nconfig:
	.byte	10
# fuidaddr:
	.zero	3
	.long	8392696
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	2
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"PIC24EP512MC206"
	.zero	1008
# deviceid:
	.value	6035
# flash:
	.zero	2
	.long	175104
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70663
# configaddr:
	.long	350188
# nconfig:
	.byte	10
# fuidaddr:
	.zero	3
	.long	8392696
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	2
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"dsPIC33EP512MC202"
	.zero	1006
# deviceid:
	.value	6017
# flash:
	.zero	2
	.long	175104
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70663
# configaddr:
	.long	350188
# nconfig:
	.byte	10
# fuidaddr:
	.zero	3
	.long	8392696
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	2
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"dsPIC33EP512MC204"
	.zero	1006
# deviceid:
	.value	6016
# flash:
	.zero	2
	.long	175104
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70663
# configaddr:
	.long	350188
# nconfig:
	.byte	10
# fuidaddr:
	.zero	3
	.long	8392696
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	2
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"dsPIC33EP512MC206"
	.zero	1006
# deviceid:
	.value	6019
# flash:
	.zero	2
	.long	175104
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70663
# configaddr:
	.long	350188
# nconfig:
	.byte	10
# fuidaddr:
	.zero	3
	.long	8392696
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	2
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"dsPIC33EP512MC502"
	.zero	1006
# deviceid:
	.value	6021
# flash:
	.zero	2
	.long	175104
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70663
# configaddr:
	.long	350188
# nconfig:
	.byte	10
# fuidaddr:
	.zero	3
	.long	8392696
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	2
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"dsPIC33EP512MC504"
	.zero	1006
# deviceid:
	.value	6020
# flash:
	.zero	2
	.long	175104
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70663
# configaddr:
	.long	350188
# nconfig:
	.byte	10
# fuidaddr:
	.zero	3
	.long	8392696
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	2
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"dsPIC33EP512MC506"
	.zero	1006
# deviceid:
	.value	6023
# flash:
	.zero	2
	.long	175104
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70663
# configaddr:
	.long	350188
# nconfig:
	.byte	10
# fuidaddr:
	.zero	3
	.long	8392696
# nfuid:
	.byte	4
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	2
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"dsPIC30F1010"
	.zero	1011
# deviceid:
	.value	1028
# flash:
	.zero	2
	.long	2048
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70284
# configaddr:
	.long	16252928
# nconfig:
	.byte	8
# fuidaddr:
	.zero	3
	.long	8390080
# nfuid:
	.byte	32
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	32
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"dsPIC30F2020"
	.zero	1011
# deviceid:
	.value	1024
# flash:
	.zero	2
	.long	4096
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70284
# configaddr:
	.long	16252928
# nconfig:
	.byte	8
# fuidaddr:
	.zero	3
	.long	8390080
# nfuid:
	.byte	32
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	32
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"dsPIC30F2023"
	.zero	1011
# deviceid:
	.value	1027
# flash:
	.zero	2
	.long	4096
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	70284
# configaddr:
	.long	16252928
# nconfig:
	.byte	8
# fuidaddr:
	.zero	3
	.long	8390080
# nfuid:
	.byte	32
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	32
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"PIC24FJ16MC101"
	.zero	1009
# deviceid:
	.value	518
# flash:
	.zero	2
	.long	5632
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	75012
# configaddr:
	.long	11260
# nconfig:
	.byte	2
# fuidaddr:
	.zero	3
	.long	0
# nfuid:
	.byte	0
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	1
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"PIC24FJ16MC102"
	.zero	1009
# deviceid:
	.value	519
# flash:
	.zero	2
	.long	5632
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	75012
# configaddr:
	.long	11260
# nconfig:
	.byte	2
# fuidaddr:
	.zero	3
	.long	0
# nfuid:
	.byte	0
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	1
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"PIC24FJ32MC101"
	.zero	1009
# deviceid:
	.value	2572
# flash:
	.zero	2
	.long	11264
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	75012
# configaddr:
	.long	22524
# nconfig:
	.byte	2
# fuidaddr:
	.zero	3
	.long	0
# nfuid:
	.byte	0
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	1
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"PIC24FJ32MC102"
	.zero	1009
# deviceid:
	.value	2573
# flash:
	.zero	2
	.long	11264
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	75012
# configaddr:
	.long	22524
# nconfig:
	.byte	2
# fuidaddr:
	.zero	3
	.long	0
# nfuid:
	.byte	0
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	1
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"PIC24FJ32MC104"
	.zero	1009
# deviceid:
	.value	2575
# flash:
	.zero	2
	.long	11264
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	75012
# configaddr:
	.long	22524
# nconfig:
	.byte	2
# fuidaddr:
	.zero	3
	.long	0
# nfuid:
	.byte	0
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	1
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"PIC24FJ32GA102"
	.zero	1009
# deviceid:
	.value	16898
# flash:
	.zero	2
	.long	11264
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	39934
# configaddr:
	.long	22520
# nconfig:
	.byte	4
# fuidaddr:
	.zero	3
	.long	0
# nfuid:
	.byte	0
# calibaddr:
	.zero	3
	.long	8390784
# ncalib:
	.byte	8
# codepanelsize:
	.byte	64
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"PIC24FJ64GA102"
	.zero	1009
# deviceid:
	.value	16902
# flash:
	.zero	2
	.long	22016
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	39934
# configaddr:
	.long	44024
# nconfig:
	.byte	4
# fuidaddr:
	.zero	3
	.long	0
# nfuid:
	.byte	0
# calibaddr:
	.zero	3
	.long	8390784
# ncalib:
	.byte	8
# codepanelsize:
	.byte	64
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"PIC24FJ32GA104"
	.zero	1009
# deviceid:
	.value	16906
# flash:
	.zero	2
	.long	11264
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	39934
# configaddr:
	.long	22520
# nconfig:
	.byte	4
# fuidaddr:
	.zero	3
	.long	0
# nfuid:
	.byte	0
# calibaddr:
	.zero	3
	.long	8390784
# ncalib:
	.byte	8
# codepanelsize:
	.byte	64
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"PIC24FJ64GA104"
	.zero	1009
# deviceid:
	.value	16910
# flash:
	.zero	2
	.long	22016
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	39934
# configaddr:
	.long	44024
# nconfig:
	.byte	4
# fuidaddr:
	.zero	3
	.long	0
# nfuid:
	.byte	0
# calibaddr:
	.zero	3
	.long	8390784
# ncalib:
	.byte	8
# codepanelsize:
	.byte	64
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"PIC24FJ32GB002"
	.zero	1009
# deviceid:
	.value	16899
# flash:
	.zero	2
	.long	11264
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	39934
# configaddr:
	.long	22520
# nconfig:
	.byte	4
# fuidaddr:
	.zero	3
	.long	0
# nfuid:
	.byte	0
# calibaddr:
	.zero	3
	.long	8390784
# ncalib:
	.byte	8
# codepanelsize:
	.byte	64
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"PIC24FJ64GB002"
	.zero	1009
# deviceid:
	.value	16903
# flash:
	.zero	2
	.long	22016
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	39934
# configaddr:
	.long	44024
# nconfig:
	.byte	4
# fuidaddr:
	.zero	3
	.long	0
# nfuid:
	.byte	0
# calibaddr:
	.zero	3
	.long	8390784
# ncalib:
	.byte	8
# codepanelsize:
	.byte	64
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"PIC24FJ32GB004"
	.zero	1009
# deviceid:
	.value	16907
# flash:
	.zero	2
	.long	11264
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	39934
# configaddr:
	.long	22520
# nconfig:
	.byte	4
# fuidaddr:
	.zero	3
	.long	0
# nfuid:
	.byte	0
# calibaddr:
	.zero	3
	.long	8390784
# ncalib:
	.byte	8
# codepanelsize:
	.byte	64
# datapanelsize:
	.byte	0
	.zero	1
# devicename:
	.string	"PIC24FJ64GB004"
	.zero	1009
# deviceid:
	.value	16911
# flash:
	.zero	2
	.long	22016
# eeprom:
	.value	0
# datasheet:
	.zero	2
	.long	39934
# configaddr:
	.long	44024
# nconfig:
	.byte	4
# fuidaddr:
	.zero	3
	.long	0
# nfuid:
	.byte	0
# calibaddr:
	.zero	3
	.long	8390784
# ncalib:
	.byte	8
# codepanelsize:
	.byte	64
# datapanelsize:
	.byte	0
	.zero	1
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
# configaddr:
	.long	0
# nconfig:
	.byte	0
# fuidaddr:
	.zero	3
	.long	0
# nfuid:
	.byte	0
# calibaddr:
	.zero	3
	.long	0
# ncalib:
	.byte	0
# codepanelsize:
	.byte	0
# datapanelsize:
	.byte	0
	.zero	1
	.comm	pic24_conf,244,16
	.globl	pic24_ops
	.align 16
	.type	pic24_ops, @object
	.size	pic24_ops, 160
pic24_ops:
# arch:
	.long	16777215
# selector:
	.zero	4
	.quad	pic24_selector
# read_config_memory:
	.quad	pic24_read_config_memory
# get_program_size:
	.quad	pic24_get_program_size
# get_data_size:
	.quad	pic24_get_data_size
# get_executive_size:
	.quad	pic24_get_executive_size
# read_program_memory_block:
	.quad	pic24_read_program_memory_block
# read_data_memory_block:
	.quad	pic24_read_data_memory_block
# program:
	.quad	pic24_program
# verify:
	.quad	pic24_verify
# bulk_erase:
	.quad	pic24_bulk_erase
# row_erase:
	.quad	0
# dumpdeviceid:
	.quad	pic24_dumpdeviceid
# dumpconfig:
	.quad	pic24_dumpconfig
# dumposccal:
	.quad	0
# dumpdevice:
	.quad	pic24_dumpdevice
# dumphexcode:
	.quad	pic24_dumphexcode
# dumpinhxcode:
	.quad	pic24_dumpinhxcode
# dumphexdata:
	.quad	pic24_dumphexdata
# dumpinhxdata:
	.quad	pic24_dumpinhxdata
	.section	.rodata
	.align 16
	.type	__func__.5835, @object
	.size	__func__.5835, 30
__func__.5835:
	.string	"pic24_nvmcon_write_completion"
	.align 16
	.type	__func__.5887, @object
	.size	__func__.5887, 17
__func__.5887:
	.string	"pic24_bulk_erase"
	.align 16
	.type	__func__.5896, @object
	.size	__func__.5896, 25
__func__.5896:
	.string	"pic24_read_config_memory"
	.align 16
	.type	__func__.5931, @object
	.size	__func__.5931, 32
__func__.5931:
	.string	"pic24_read_program_memory_block"
	.align 16
	.type	__func__.6057, @object
	.size	__func__.6057, 19
__func__.6057:
	.string	"pic24_write_buffer"
	.local	buffer.6066
	.comm	buffer.6066,8,8
	.local	write_pending.6068
	.comm	write_pending.6068,4,4
	.local	buffer_size.6067
	.comm	buffer_size.6067,4,4
	.local	buffer_address.6065
	.comm	buffer_address.6065,4,4
	.local	buffer_region.6064
	.comm	buffer_region.6064,4,4
	.align 16
	.type	__func__.6069, @object
	.size	__func__.6069, 21
__func__.6069:
	.string	"pic24_write_buffered"
	.align 16
	.type	__func__.6129, @object
	.size	__func__.6129, 16
__func__.6129:
	.string	"pic24_getregion"
	.align 16
	.type	__func__.6139, @object
	.size	__func__.6139, 23
__func__.6139:
	.string	"pic24_init_writeregion"
	.align 16
	.type	__func__.6155, @object
	.size	__func__.6155, 18
__func__.6155:
	.string	"pic24_writeregion"
	.align 16
	.type	__func__.6160, @object
	.size	__func__.6160, 24
__func__.6160:
	.string	"pic24_init_verifyregion"
	.align 16
	.type	__func__.6169, @object
	.size	__func__.6169, 19
__func__.6169:
	.string	"pic24_verifyregion"
	.align 16
	.type	__func__.6308, @object
	.size	__func__.6308, 18
__func__.6308:
	.string	"pic24_dumphexcode"
	.align 16
	.type	__func__.6347, @object
	.size	__func__.6347, 18
__func__.6347:
	.string	"pic24_dumphexdata"
	.ident	"GCC: (Ubuntu/Linaro 4.7.2-2ubuntu1) 4.7.2"
	.section	.note.GNU-stack,"",@progbits
