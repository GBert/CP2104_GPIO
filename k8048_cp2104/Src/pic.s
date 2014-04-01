	.file	"pic.c"
# GNU C (Ubuntu/Linaro 4.7.2-2ubuntu1) version 4.7.2 (x86_64-linux-gnu)
#	compiled by GNU C version 4.7.2, GMP version 5.0.2, MPFR version 3.1.0-p3, MPC version 0.9
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# angegebene Optionen:  -fpreprocessed pic.i -mtune=generic -march=x86-64
# -auxbase-strip pic.o -Os -pedantic-errors -Wall -std=gnu99 -fverbose-asm
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
	.string	"k12"
.LC1:
	.string	"k14"
.LC2:
	.string	"k16"
.LC3:
	.string	"k24"
	.text
	.globl	pic_arch
	.type	pic_arch, @function
pic_arch:
.LFB40:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsi, %rbp	# execname, execname
	movl	$.LC0, %esi	#,
	pushq	%rbx	#
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rdi, %rbx	# k, k
	movq	%rbp, %rdi	# execname,
	pushq	%r10	#
	.cfi_def_cfa_offset 32
	call	strcmp	#
	testl	%eax, %eax	# D.6241
	jne	.L2	#,
	popq	%r9	#
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	movq	%rbx, %rdi	# k,
	popq	%rbx	#
	.cfi_def_cfa_offset 16
	popq	%rbp	#
	.cfi_def_cfa_offset 8
	jmp	pic12_arch	#
.L2:
	.cfi_restore_state
	movl	$.LC1, %esi	#,
	movq	%rbp, %rdi	# execname,
	call	strcmp	#
	testl	%eax, %eax	# D.6245
	jne	.L3	#,
	popq	%r8	#
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	movq	%rbx, %rdi	# k,
	popq	%rbx	#
	.cfi_def_cfa_offset 16
	popq	%rbp	#
	.cfi_def_cfa_offset 8
	jmp	pic14_arch	#
.L3:
	.cfi_restore_state
	movl	$.LC2, %esi	#,
	movq	%rbp, %rdi	# execname,
	call	strcmp	#
	testl	%eax, %eax	# D.6248
	jne	.L4	#,
	popq	%rsi	#
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	movq	%rbx, %rdi	# k,
	popq	%rbx	#
	.cfi_def_cfa_offset 16
	popq	%rbp	#
	.cfi_def_cfa_offset 8
	jmp	pic16_arch	#
.L4:
	.cfi_restore_state
	movl	$.LC3, %esi	#,
	movq	%rbp, %rdi	# execname,
	call	strcmp	#
	testl	%eax, %eax	# D.6251
	jne	.L5	#,
	popq	%rcx	#
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	movq	%rbx, %rdi	# k,
	popq	%rbx	#
	.cfi_def_cfa_offset 16
	popq	%rbp	#
	.cfi_def_cfa_offset 8
	jmp	pic24_arch	#
.L5:
	.cfi_restore_state
	popq	%rdx	#
	.cfi_def_cfa_offset 24
	popq	%rbx	#
	.cfi_def_cfa_offset 16
	xorl	%eax, %eax	#
	popq	%rbp	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE40:
	.size	pic_arch, .-pic_arch
	.globl	pic_cmp
	.type	pic_cmp, @function
pic_cmp:
.LFB41:
	.cfi_startproc
	movq	(%rsi), %rsi	# MEM[(char * *)p2_3(D)],
	movq	(%rdi), %rdi	# MEM[(char * *)p1_1(D)],
	jmp	strcasecmp	#
	.cfi_endproc
.LFE41:
	.size	pic_cmp, .-pic_cmp
	.section	.rodata.str1.1
.LC4:
	.string	"%s: information: unimplemented\n"
	.text
	.globl	pic_selector
	.type	pic_selector, @function
pic_selector:
.LFB42:
	.cfi_startproc
	movq	3128(%rdi), %rax	# k_1(D)->pic, k_1(D)->pic
	movq	8(%rax), %rax	# D.6234_2->selector, D.6235
	testq	%rax, %rax	# D.6235
	je	.L9	#,
	jmp	*%rax	# D.6235
.L9:
	movl	$__func__.5763, %edx	#,
	movl	$.LC4, %esi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	jmp	__printf_chk	#
	.cfi_endproc
.LFE42:
	.size	pic_selector, .-pic_selector
	.globl	pic_read_config
	.type	pic_read_config, @function
pic_read_config:
.LFB43:
	.cfi_startproc
	movq	3128(%rdi), %rax	# k_1(D)->pic, k_1(D)->pic
	movq	16(%rax), %rax	# D.6229_2->read_config_memory, D.6230
	testq	%rax, %rax	# D.6230
	je	.L11	#,
	jmp	*%rax	# D.6230
.L11:
	movl	$__func__.5768, %edx	#,
	movl	$.LC4, %esi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	jmp	__printf_chk	#
	.cfi_endproc
.LFE43:
	.size	pic_read_config, .-pic_read_config
	.globl	pic_get_program_size
	.type	pic_get_program_size, @function
pic_get_program_size:
.LFB44:
	.cfi_startproc
	movq	3128(%rdi), %rax	# k_3(D)->pic, k_3(D)->pic
	movq	24(%rax), %rax	# D.6222_4->get_program_size, D.6223
	testq	%rax, %rax	# D.6223
	je	.L13	#,
	movq	%rsi, %rdi	# addr,
	jmp	*%rax	# D.6223
.L13:
	pushq	%r11	#
	.cfi_def_cfa_offset 16
	movl	$__func__.5774, %edx	#,
	movl	$.LC4, %esi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	orl	$-1, %eax	#,
	popq	%rdx	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE44:
	.size	pic_get_program_size, .-pic_get_program_size
	.globl	pic_get_data_size
	.type	pic_get_data_size, @function
pic_get_data_size:
.LFB45:
	.cfi_startproc
	movq	3128(%rdi), %rax	# k_3(D)->pic, k_3(D)->pic
	movq	32(%rax), %rax	# D.6215_4->get_data_size, D.6216
	testq	%rax, %rax	# D.6216
	je	.L16	#,
	movq	%rsi, %rdi	# addr,
	jmp	*%rax	# D.6216
.L16:
	pushq	%rcx	#
	.cfi_def_cfa_offset 16
	movl	$.LC4, %esi	#,
	movl	$__func__.5780, %edx	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	orl	$-1, %eax	#,
	popq	%rsi	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE45:
	.size	pic_get_data_size, .-pic_get_data_size
	.globl	pic_get_executive_size
	.type	pic_get_executive_size, @function
pic_get_executive_size:
.LFB46:
	.cfi_startproc
	movq	3128(%rdi), %rax	# k_3(D)->pic, k_3(D)->pic
	movq	40(%rax), %rax	# D.6208_4->get_executive_size, D.6209
	testq	%rax, %rax	# D.6209
	je	.L19	#,
	movq	%rsi, %rdi	# addr,
	jmp	*%rax	# D.6209
.L19:
	pushq	%rdi	#
	.cfi_def_cfa_offset 16
	movl	$__func__.5786, %edx	#,
	movl	$.LC4, %esi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	orl	$-1, %eax	#,
	popq	%r8	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE46:
	.size	pic_get_executive_size, .-pic_get_executive_size
	.globl	pic_read_program_memory_block
	.type	pic_read_program_memory_block, @function
pic_read_program_memory_block:
.LFB47:
	.cfi_startproc
	movq	3128(%rdi), %rax	# k_3(D)->pic, k_3(D)->pic
	movq	48(%rax), %rax	# D.6201_4->read_program_memory_block, D.6202
	testq	%rax, %rax	# D.6202
	je	.L22	#,
	jmp	*%rax	# D.6202
.L22:
	pushq	%r9	#
	.cfi_def_cfa_offset 16
	movl	$__func__.5794, %edx	#,
	movl	$.LC4, %esi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	orl	$-1, %eax	#,
	popq	%r10	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE47:
	.size	pic_read_program_memory_block, .-pic_read_program_memory_block
	.globl	pic_read_data_memory_block
	.type	pic_read_data_memory_block, @function
pic_read_data_memory_block:
.LFB48:
	.cfi_startproc
	movq	3128(%rdi), %rax	# k_3(D)->pic, k_3(D)->pic
	movq	56(%rax), %rax	# D.6193_4->read_data_memory_block, D.6194
	testq	%rax, %rax	# D.6194
	je	.L25	#,
	movzwl	%cx, %ecx	# size, size
	jmp	*%rax	# D.6194
.L25:
	pushq	%r11	#
	.cfi_def_cfa_offset 16
	movl	$__func__.5802, %edx	#,
	movl	$.LC4, %esi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	orl	$-1, %eax	#,
	popq	%rdx	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE48:
	.size	pic_read_data_memory_block, .-pic_read_data_memory_block
	.globl	pic_program
	.type	pic_program, @function
pic_program:
.LFB49:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx	#
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rdi, %rbx	# k, k
	subq	$24, %rsp	#,
	.cfi_def_cfa_offset 48
	movq	3128(%rdi), %rax	# k_1(D)->pic, k_1(D)->pic
	cmpq	$0, 64(%rax)	#, D.6188_2->program
	je	.L28	#,
	movq	%rsi, %rbp	# filename, filename
	xorl	%esi, %esi	#
	movl	%edx, 8(%rsp)	#,
	call	pic_read_config	#
	movq	3128(%rbx), %rax	# k_1(D)->pic, k_1(D)->pic
	movl	8(%rsp), %edx	#,
	movq	%rbx, %rdi	# k,
	movq	%rbp, %rsi	# filename,
	movq	64(%rax), %rax	# D.6188_4->program, D.6188_4->program
	addq	$24, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx	#
	.cfi_def_cfa_offset 16
	popq	%rbp	#
	.cfi_def_cfa_offset 8
	jmp	*%rax	# D.6188_4->program
.L28:
	.cfi_restore_state
	addq	$24, %rsp	#,
	.cfi_def_cfa_offset 24
	movl	$__func__.5808, %edx	#,
	movl	$.LC4, %esi	#,
	popq	%rbx	#
	.cfi_def_cfa_offset 16
	popq	%rbp	#
	.cfi_def_cfa_offset 8
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	jmp	__printf_chk	#
	.cfi_endproc
.LFE49:
	.size	pic_program, .-pic_program
	.globl	pic_verify
	.type	pic_verify, @function
pic_verify:
.LFB50:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx	#
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rdi, %rbx	# k, k
	pushq	%r9	#
	.cfi_def_cfa_offset 32
	movq	3128(%rdi), %rax	# k_3(D)->pic, k_3(D)->pic
	cmpq	$0, 64(%rax)	#, D.6180_4->program
	je	.L31	#,
	movq	%rsi, %rbp	# filename, filename
	xorl	%esi, %esi	#
	call	pic_read_config	#
	movq	3128(%rbx), %rax	# k_3(D)->pic, k_3(D)->pic
	movq	%rbx, %rdi	# k,
	movq	%rbp, %rsi	# filename,
	movq	72(%rax), %rax	# D.6180_6->verify, D.6180_6->verify
	popq	%r8	#
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx	#
	.cfi_def_cfa_offset 16
	popq	%rbp	#
	.cfi_def_cfa_offset 8
	jmp	*%rax	# D.6180_6->verify
.L31:
	.cfi_restore_state
	movl	$__func__.5814, %edx	#,
	movl	$.LC4, %esi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	popq	%rcx	#
	.cfi_def_cfa_offset 24
	popq	%rbx	#
	.cfi_def_cfa_offset 16
	orl	$-1, %eax	#,
	popq	%rbp	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE50:
	.size	pic_verify, .-pic_verify
	.section	.rodata.str1.1
.LC5:
	.string	"%s: information: BANDGAP is not supported on this architecture\n"
	.text
	.globl	pic_writebandgap
	.type	pic_writebandgap, @function
pic_writebandgap:
.LFB51:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx	#
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	pushq	%rbx	#
	.cfi_def_cfa_offset 32
	movq	3128(%rdi), %rax	# k_1(D)->pic, k_1(D)->pic
	movq	%rdi, %rbx	# k, k
	cmpl	$16383, (%rax)	#, D.6170_2->arch
	jne	.L34	#,
	movl	%esi, %ebp	# bandgap, bandgap
	xorl	%esi, %esi	#
	call	pic_read_config	#
	movq	3128(%rbx), %rax	# k_1(D)->pic, k_1(D)->pic
	movq	80(%rax), %rax	# D.6170_4->bulk_erase, D.6174
	testq	%rax, %rax	# D.6174
	je	.L35	#,
	popq	%r11	#
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	movq	%rbx, %rdi	# k,
	movzwl	%bp, %edx	# bandgap, bandgap
	movl	$65535, %esi	#,
	popq	%rbx	#
	.cfi_def_cfa_offset 16
	popq	%rbp	#
	.cfi_def_cfa_offset 8
	jmp	*%rax	# D.6174
.L35:
	.cfi_restore_state
	movl	$__func__.5819, %edx	#,
	movl	$.LC4, %esi	#,
	jmp	.L37	#
.L34:
	movl	$__func__.5819, %edx	#,
	movl	$.LC5, %esi	#,
.L37:
	popq	%r10	#
	.cfi_def_cfa_offset 24
	popq	%rbx	#
	.cfi_def_cfa_offset 16
	popq	%rbp	#
	.cfi_def_cfa_offset 8
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	jmp	__printf_chk	#
	.cfi_endproc
.LFE51:
	.size	pic_writebandgap, .-pic_writebandgap
	.section	.rodata.str1.1
.LC6:
	.string	"%s: information: OSCCAL is not supported on this architecture\n"
	.text
	.globl	pic_writeosccal
	.type	pic_writeosccal, @function
pic_writeosccal:
.LFB52:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movl	%esi, %ebp	# osccal, osccal
	pushq	%rbx	#
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rdi, %rbx	# k, k
	pushq	%r8	#
	.cfi_def_cfa_offset 32
	movq	3128(%rdi), %rax	# k_1(D)->pic, k_1(D)->pic
	movl	(%rax), %eax	# D.6157_2->arch, D.6158
	cmpl	$16383, %eax	#, D.6158
	je	.L42	#,
	cmpl	$4095, %eax	#, D.6158
	jne	.L39	#,
.L42:
	xorl	%esi, %esi	#
	movq	%rbx, %rdi	# k,
	call	pic_read_config	#
	movq	3128(%rbx), %rax	# k_1(D)->pic, k_1(D)->pic
	movq	80(%rax), %rax	# D.6157_7->bulk_erase, D.6164
	testq	%rax, %rax	# D.6164
	je	.L41	#,
	popq	%rcx	#
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	movq	%rbx, %rdi	# k,
	movzwl	%bp, %esi	# osccal, osccal
	movl	$65535, %edx	#,
	popq	%rbx	#
	.cfi_def_cfa_offset 16
	popq	%rbp	#
	.cfi_def_cfa_offset 8
	jmp	*%rax	# D.6164
.L41:
	.cfi_restore_state
	movl	$__func__.5824, %edx	#,
	movl	$.LC4, %esi	#,
	jmp	.L44	#
.L39:
	movl	$__func__.5824, %edx	#,
	movl	$.LC6, %esi	#,
.L44:
	popq	%rbp	#
	.cfi_def_cfa_offset 24
	popq	%rbx	#
	.cfi_def_cfa_offset 16
	popq	%rbp	#
	.cfi_def_cfa_offset 8
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	jmp	__printf_chk	#
	.cfi_endproc
.LFE52:
	.size	pic_writeosccal, .-pic_writeosccal
	.globl	pic_blank
	.type	pic_blank, @function
pic_blank:
.LFB53:
	.cfi_startproc
	pushq	%rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	3128(%rdi), %rax	# k_1(D)->pic, k_1(D)->pic
	movq	%rdi, %rbx	# k, k
	cmpq	$0, 80(%rax)	#, D.6152_2->bulk_erase
	je	.L46	#,
	xorl	%esi, %esi	#
	call	pic_read_config	#
	movq	3128(%rbx), %rax	# k_1(D)->pic, k_1(D)->pic
	movq	%rbx, %rdi	# k,
	movl	$65535, %edx	#,
	popq	%rbx	#
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	movl	$65535, %esi	#,
	movq	80(%rax), %rax	# D.6152_4->bulk_erase, D.6152_4->bulk_erase
	jmp	*%rax	# D.6152_4->bulk_erase
.L46:
	.cfi_restore_state
	popq	%rbx	#
	.cfi_def_cfa_offset 8
	movl	$__func__.5828, %edx	#,
	movl	$.LC4, %esi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	jmp	__printf_chk	#
	.cfi_endproc
.LFE53:
	.size	pic_blank, .-pic_blank
	.globl	pic_erase
	.type	pic_erase, @function
pic_erase:
.LFB54:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx	#
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rdi, %rbx	# k, k
	subq	$24, %rsp	#,
	.cfi_def_cfa_offset 48
	movq	3128(%rdi), %rax	# k_1(D)->pic, k_1(D)->pic
	cmpq	$0, 88(%rax)	#, D.6147_2->row_erase
	je	.L49	#,
	movl	%esi, %ebp	# row, row
	xorl	%esi, %esi	#
	movl	%edx, 8(%rsp)	#,
	call	pic_read_config	#
	movq	3128(%rbx), %rax	# k_1(D)->pic, k_1(D)->pic
	movl	8(%rsp), %edx	#,
	movq	%rbx, %rdi	# k,
	movl	%ebp, %esi	# row,
	movq	88(%rax), %rax	# D.6147_4->row_erase, D.6147_4->row_erase
	addq	$24, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx	#
	.cfi_def_cfa_offset 16
	popq	%rbp	#
	.cfi_def_cfa_offset 8
	jmp	*%rax	# D.6147_4->row_erase
.L49:
	.cfi_restore_state
	addq	$24, %rsp	#,
	.cfi_def_cfa_offset 24
	movl	$__func__.5834, %edx	#,
	movl	$.LC4, %esi	#,
	popq	%rbx	#
	.cfi_def_cfa_offset 16
	popq	%rbp	#
	.cfi_def_cfa_offset 8
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	jmp	__printf_chk	#
	.cfi_endproc
.LFE54:
	.size	pic_erase, .-pic_erase
	.globl	pic_dumpdeviceid
	.type	pic_dumpdeviceid, @function
pic_dumpdeviceid:
.LFB55:
	.cfi_startproc
	pushq	%rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	3128(%rdi), %rax	# k_1(D)->pic, k_1(D)->pic
	movq	%rdi, %rbx	# k, k
	cmpq	$0, 96(%rax)	#, D.6142_2->dumpdeviceid
	je	.L52	#,
	movl	$1, %esi	#,
	call	pic_read_config	#
	movq	3128(%rbx), %rax	# k_1(D)->pic, k_1(D)->pic
	movq	%rbx, %rdi	# k,
	popq	%rbx	#
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	movq	96(%rax), %rax	# D.6142_4->dumpdeviceid, D.6142_4->dumpdeviceid
	jmp	*%rax	# D.6142_4->dumpdeviceid
.L52:
	.cfi_restore_state
	popq	%rbx	#
	.cfi_def_cfa_offset 8
	movl	$__func__.5838, %edx	#,
	movl	$.LC4, %esi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	jmp	__printf_chk	#
	.cfi_endproc
.LFE55:
	.size	pic_dumpdeviceid, .-pic_dumpdeviceid
	.globl	pic_dumpconfig
	.type	pic_dumpconfig, @function
pic_dumpconfig:
.LFB56:
	.cfi_startproc
	pushq	%rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	3128(%rdi), %rax	# k_1(D)->pic, k_1(D)->pic
	movq	%rdi, %rbx	# k, k
	cmpq	$0, 104(%rax)	#, D.6137_2->dumpconfig
	je	.L55	#,
	xorl	%esi, %esi	#
	call	pic_read_config	#
	movq	3128(%rbx), %rax	# k_1(D)->pic, k_1(D)->pic
	movq	%rbx, %rdi	# k,
	movl	$1, %esi	#,
	popq	%rbx	#
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	movq	104(%rax), %rax	# D.6137_4->dumpconfig, D.6137_4->dumpconfig
	jmp	*%rax	# D.6137_4->dumpconfig
.L55:
	.cfi_restore_state
	popq	%rbx	#
	.cfi_def_cfa_offset 8
	movl	$__func__.5842, %edx	#,
	movl	$.LC4, %esi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	jmp	__printf_chk	#
	.cfi_endproc
.LFE56:
	.size	pic_dumpconfig, .-pic_dumpconfig
	.globl	pic_dumposccal
	.type	pic_dumposccal, @function
pic_dumposccal:
.LFB57:
	.cfi_startproc
	pushq	%rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	3128(%rdi), %rax	# k_1(D)->pic, k_1(D)->pic
	movq	%rdi, %rbx	# k, k
	movl	(%rax), %eax	# D.6125_2->arch, D.6126
	cmpl	$16383, %eax	#, D.6126
	je	.L61	#,
	cmpl	$4095, %eax	#, D.6126
	jne	.L58	#,
.L61:
	movl	$1, %esi	#,
	movq	%rbx, %rdi	# k,
	call	pic_read_config	#
	movq	3128(%rbx), %rax	# k_1(D)->pic, k_1(D)->pic
	movq	112(%rax), %rax	# D.6125_7->dumposccal, D.6132
	testq	%rax, %rax	# D.6132
	je	.L60	#,
	movq	%rbx, %rdi	# k,
	popq	%rbx	#
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	jmp	*%rax	# D.6132
.L60:
	.cfi_restore_state
	movl	$__func__.5846, %edx	#,
	movl	$.LC4, %esi	#,
	jmp	.L63	#
.L58:
	movl	$__func__.5846, %edx	#,
	movl	$.LC6, %esi	#,
.L63:
	popq	%rbx	#
	.cfi_def_cfa_offset 8
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	jmp	__printf_chk	#
	.cfi_endproc
.LFE57:
	.size	pic_dumposccal, .-pic_dumposccal
	.section	.rodata.str1.1
.LC7:
	.string	":02000004%02X%02X%02X\n"
	.text
	.globl	pic_dumpaddr
	.type	pic_dumpaddr, @function
pic_dumpaddr:
.LFB58:
	.cfi_startproc
	pushq	%rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movl	%edi, %ebx	# addr, D.6114
	shrl	$16, %ebx	#, D.6114
	testl	%esi, %esi	# flag
	jne	.L65	#,
	cmpw	oldaddr.5851(%rip), %bx	# oldaddr, D.6114
	je	.L66	#,
.L65:
	movl	%ebx, %edx	#, D.6119
	movb	$-6, %r8b	#, tmp75
	movzbl	%bl, %ecx	# D.6114, tmp77
	shrw	$8, %dx	#, D.6119
	subl	%ebx, %r8d	# D.6114, tmp75
	movl	$.LC7, %esi	#,
	subl	%edx, %r8d	# D.6119, tmp75
	movl	$1, %edi	#,
	movzwl	%dx, %edx	# D.6119, D.6119
	movzbl	%r8b, %r8d	# tmp75,
	xorl	%eax, %eax	#
	call	__printf_chk	#
.L66:
	movw	%bx, oldaddr.5851(%rip)	# D.6114, oldaddr
	popq	%rbx	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE58:
	.size	pic_dumpaddr, .-pic_dumpaddr
	.section	.rodata.str1.1
.LC8:
	.string	":01%02X%02X00"
.LC9:
	.string	"%02X%02X\n"
	.text
	.globl	pic_dumpbyte
	.type	pic_dumpbyte, @function
pic_dumpbyte:
.LFB59:
	.cfi_startproc
	pushq	%r12	#
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	movl	%esi, %r12d	# byte, byte
	movzbl	%dil, %ecx	# addr, tmp77
	movl	$.LC8, %esi	#,
	xorl	%eax, %eax	#
	pushq	%rbp	#
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movl	%edi, %ebp	# addr, D.6106
	shrl	$8, %ebp	#, D.6106
	pushq	%rbx	#
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movl	%edi, %ebx	# addr, addr
	movzbl	%bpl, %edx	# D.6106, tmp78
	leal	1(%r12,%rbx), %ebx	#, cc
	movl	$1, %edi	#,
	call	__printf_chk	#
	leal	(%rbx,%rbp), %ecx	#, tmp82
	movzbl	%r12b, %edx	# byte, byte
	movl	$.LC9, %esi	#,
	popq	%rbx	#
	.cfi_def_cfa_offset 24
	popq	%rbp	#
	.cfi_def_cfa_offset 16
	popq	%r12	#
	.cfi_def_cfa_offset 8
	negl	%ecx	# tmp82
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	movzbl	%cl, %ecx	# tmp82, tmp83
	jmp	__printf_chk	#
	.cfi_endproc
.LFE59:
	.size	pic_dumpbyte, .-pic_dumpbyte
	.section	.rodata.str1.1
.LC10:
	.string	":02%02X%02X00"
.LC11:
	.string	"%02X%02X%02X\n"
	.text
	.globl	pic_dumpword16
	.type	pic_dumpword16, @function
pic_dumpword16:
.LFB60:
	.cfi_startproc
	pushq	%r12	#
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	leal	(%rdi,%rdi), %r12d	#, lb
	xorl	%eax, %eax	#
	pushq	%rbp	#
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movl	%edi, %ebp	# addr, D.6095
	movzbl	%r12b, %ecx	# lb, lb
	shrl	$7, %ebp	#, D.6095
	movl	$1, %edi	#,
	pushq	%rbx	#
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movzbl	%bpl, %edx	# D.6095, tmp83
	movl	%esi, %ebx	# word, word
	movl	$.LC10, %esi	#,
	call	__printf_chk	#
	leal	2(%r12,%rbp), %r8d	#, tmp86
	movl	%ebx, %ecx	#, tmp84
	movzbl	%bl, %edx	# word, lb
	shrw	$8, %cx	#, tmp84
	movl	$.LC11, %esi	#,
	movl	$1, %edi	#,
	addl	%ebx, %r8d	# word, D.6101
	xorl	%eax, %eax	#
	popq	%rbx	#
	.cfi_def_cfa_offset 24
	popq	%rbp	#
	.cfi_def_cfa_offset 16
	popq	%r12	#
	.cfi_def_cfa_offset 8
	addl	%ecx, %r8d	# tmp84, tmp89
	movzbl	%cl, %ecx	# tmp84, hb
	negl	%r8d	# tmp89
	movzbl	%r8b, %r8d	# tmp89,
	jmp	__printf_chk	#
	.cfi_endproc
.LFE60:
	.size	pic_dumpword16, .-pic_dumpword16
	.section	.rodata.str1.1
.LC12:
	.string	":04%02X%02X00"
.LC13:
	.string	"%02X%02X%02X%02X%02X\n"
	.text
	.globl	pic_dumpword32
	.type	pic_dumpword32, @function
pic_dumpword32:
.LFB61:
	.cfi_startproc
	pushq	%r12	#
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	leal	(%rdi,%rdi), %r12d	#, b0
	xorl	%eax, %eax	#
	pushq	%rbp	#
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movl	%edi, %ebp	# addr, D.6078
	movzbl	%r12b, %ecx	# b0, b0
	shrl	$7, %ebp	#, D.6078
	movl	$1, %edi	#,
	pushq	%rbx	#
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movzbl	%bpl, %edx	# D.6078, tmp94
	movl	%esi, %ebx	# word, word
	movl	$.LC12, %esi	#,
	subq	$16, %rsp	#,
	.cfi_def_cfa_offset 48
	call	__printf_chk	#
	leal	4(%r12,%rbp), %eax	#, tmp96
	movl	%ebx, %r9d	# word, D.6083
	movl	%ebx, %r8d	# word, D.6084
	shrl	$24, %r9d	#, D.6083
	shrl	$16, %r8d	#, D.6084
	movl	%ebx, %esi	# word, D.6085
	addl	%ebx, %eax	# word, tmp97
	shrl	$8, %esi	#, D.6085
	movzbl	%bl, %edx	# word, tmp102
	addl	%r9d, %eax	# D.6083, tmp98
	movzbl	%sil, %ecx	# D.6085, tmp101
	movl	$1, %edi	#,
	addl	%r8d, %eax	# D.6084, D.6088
	movzbl	%r8b, %r8d	# D.6084,
	addl	%esi, %eax	# D.6085, tmp105
	movl	$.LC13, %esi	#,
	negl	%eax	# tmp105
	movzbl	%al, %eax	# tmp105, tmp106
	movl	%eax, (%rsp)	# tmp106,
	xorl	%eax, %eax	#
	call	__printf_chk	#
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
.LFE61:
	.size	pic_dumpword32, .-pic_dumpword32
	.globl	pic_mtcode
	.type	pic_mtcode, @function
pic_mtcode:
.LFB67:
	.cfi_startproc
	xorl	%eax, %eax	# ivtmp.89
	xorl	%ecx, %ecx	# mtrow
	jmp	.L75	#
.L77:
	xorl	%r8d, %r8d	# tmp90
	cmpl	%edi, (%rdx,%rax,4)	# compar, MEM[base: data_9(D), index: ivtmp.89_22, step: 4, offset: 0B]
	sete	%r8b	#, tmp90
	incq	%rax	# ivtmp.89
	addl	%r8d, %ecx	# tmp90, mtrow
.L75:
	cmpl	%eax, %esi	# ivtmp.89, size
	ja	.L77	#,
	xorl	%eax, %eax	# tmp88
	cmpl	%esi, %ecx	# size, mtrow
	sete	%al	#, tmp88
	ret
	.cfi_endproc
.LFE67:
	.size	pic_mtcode, .-pic_mtcode
	.globl	pic_dumphexcode
	.type	pic_dumphexcode, @function
pic_dumphexcode:
.LFB68:
	.cfi_startproc
	movq	3128(%rdi), %rax	# k_1(D)->pic, k_1(D)->pic
	movq	128(%rax), %rax	# D.6011_2->dumphexcode, D.6012
	testq	%rax, %rax	# D.6012
	je	.L79	#,
	jmp	*%rax	# D.6012
.L79:
	movl	$__func__.5930, %edx	#,
	movl	$.LC4, %esi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	jmp	__printf_chk	#
	.cfi_endproc
.LFE68:
	.size	pic_dumphexcode, .-pic_dumphexcode
	.globl	pic_dumpinhxcode
	.type	pic_dumpinhxcode, @function
pic_dumpinhxcode:
.LFB69:
	.cfi_startproc
	movq	3128(%rdi), %rax	# k_1(D)->pic, k_1(D)->pic
	movq	136(%rax), %rax	# D.6006_2->dumpinhxcode, D.6007
	testq	%rax, %rax	# D.6007
	je	.L81	#,
	jmp	*%rax	# D.6007
.L81:
	movl	$__func__.5937, %edx	#,
	movl	$.LC4, %esi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	jmp	__printf_chk	#
	.cfi_endproc
.LFE69:
	.size	pic_dumpinhxcode, .-pic_dumpinhxcode
	.section	.rodata.str1.1
.LC14:
	.string	"%s: fatal error: calloc failed\n"
.LC15:
	.string	"%s: fatal error: program flash read failed\n"
	.text
	.globl	pic_dump_program
	.type	pic_dump_program, @function
pic_dump_program:
.LFB66:
	.cfi_startproc
	pushq	%r14	#
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	movl	%ecx, %r14d	# mode, mode
	pushq	%r13	#
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	movl	%esi, %r13d	# addr, addr
	movl	$4, %esi	#,
	pushq	%r12	#
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	movl	%edx, %r12d	# size, size
	pushq	%rbp	#
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	movq	%rdi, %rbp	# k, k
	leal	16(%rdx), %edi	#, tmp68
	pushq	%rbx	#
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	call	calloc	#
	testq	%rax, %rax	# data
	movq	%rax, %rbx	#, data
	jne	.L83	#,
	movl	$.LC14, %esi	#,
	movl	$1, %edi	#,
	movl	$__func__.5913, %edx	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	movl	$71, %esi	#,
	movq	%rbp, %rdi	# k,
	call	io_exit	#
.L83:
	movl	%r12d, %ecx	# size,
	movl	%r13d, %edx	# addr,
	movq	%rbx, %rsi	# data,
	movq	%rbp, %rdi	# k,
	call	pic_read_program_memory_block	#
	incl	%eax	# D.6029
	jne	.L84	#,
	movl	$.LC15, %esi	#,
	movl	$1, %edi	#,
	movl	$__func__.5913, %edx	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	movl	$70, %esi	#,
	movq	%rbp, %rdi	# k,
	call	io_exit	#
.L84:
	cmpl	$1, %r14d	#, mode
	jne	.L85	#,
	movq	%rbx, %rcx	# data,
	movl	%r12d, %edx	# size,
	movl	%r13d, %esi	# addr,
	movq	%rbp, %rdi	# k,
	call	pic_dumphexcode	#
	jmp	.L86	#
.L85:
	cmpl	$2, %r14d	#, mode
	jne	.L86	#,
	movq	%rbx, %rcx	# data,
	movl	%r12d, %edx	# size,
	movl	%r13d, %esi	# addr,
	movq	%rbp, %rdi	# k,
	call	pic_dumpinhxcode	#
.L86:
	movq	%rbx, %rdi	# data,
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
	jmp	free	#
	.cfi_endproc
.LFE66:
	.size	pic_dump_program, .-pic_dump_program
	.section	.rodata.str1.1
.LC16:
	.string	"%s: information: EXECUTIVE is not supported on this architecture\n"
.LC17:
	.string	"%s: fatal error: EXECUTIVE size invalid\n"
	.text
	.globl	pic_dumpexec
	.type	pic_dumpexec, @function
pic_dumpexec:
.LFB65:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx	#
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rdi, %rbx	# k, k
	subq	$24, %rsp	#,
	.cfi_def_cfa_offset 48
	movq	3128(%rdi), %rax	# k_1(D)->pic, k_1(D)->pic
	cmpq	$0, 40(%rax)	#, D.6037_2->get_executive_size
	jne	.L89	#,
	movl	$__func__.5903, %edx	#,
	movl	$.LC16, %esi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	jmp	.L88	#
.L89:
	xorl	%esi, %esi	#
	call	pic_read_config	#
	leaq	12(%rsp), %rsi	#,
	movq	%rbx, %rdi	# k,
	call	pic_get_executive_size	#
	movl	%eax, %ebp	#, esize
	leal	-1(%rax), %eax	#, tmp67
	cmpl	$-3, %eax	#, tmp67
	jbe	.L91	#,
	movl	$.LC17, %esi	#,
	movl	$1, %edi	#,
	movl	$__func__.5903, %edx	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	movl	$70, %esi	#,
	movq	%rbx, %rdi	# k,
	call	io_exit	#
.L91:
	movl	12(%rsp), %esi	# eaddr,
	movl	$1, %ecx	#,
	movl	%ebp, %edx	# esize,
	movq	%rbx, %rdi	# k,
	call	pic_dump_program	#
.L88:
	addq	$24, %rsp	#,
	.cfi_def_cfa_offset 24
	popq	%rbx	#
	.cfi_def_cfa_offset 16
	popq	%rbp	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE65:
	.size	pic_dumpexec, .-pic_dumpexec
	.section	.rodata.str1.1
.LC18:
	.string	"%s: fatal error: program flash size invalid\n"
	.text
	.globl	pic_dumpprogram
	.type	pic_dumpprogram, @function
pic_dumpprogram:
.LFB63:
	.cfi_startproc
	pushq	%r12	#
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	movl	%esi, %r12d	# size, size
	xorl	%esi, %esi	#
	pushq	%rbp	#
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx	#
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%rdi, %rbx	# k, k
	subq	$16, %rsp	#,
	.cfi_def_cfa_offset 48
	call	pic_read_config	#
	leaq	12(%rsp), %rsi	#,
	movq	%rbx, %rdi	# k,
	call	pic_get_program_size	#
	movl	%eax, %ebp	#, fsize
	leal	-1(%rax), %eax	#, tmp66
	cmpl	$-3, %eax	#, tmp66
	jbe	.L94	#,
	movl	$.LC18, %esi	#,
	movl	$1, %edi	#,
	movl	$__func__.5893, %edx	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	movl	$70, %esi	#,
	movq	%rbx, %rdi	# k,
	call	io_exit	#
.L94:
	movl	12(%rsp), %esi	# faddr,
	cmpl	%r12d, %ebp	# size, fsize
	movl	%r12d, %edx	# size, tmp67
	cmovbe	%ebp, %edx	# fsize,, tmp67
	movq	%rbx, %rdi	# k,
	movl	$1, %ecx	#,
	call	pic_dump_program	#
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
.LFE63:
	.size	pic_dumpprogram, .-pic_dumpprogram
	.globl	pic_mtdata
	.type	pic_mtdata, @function
pic_mtdata:
.LFB71:
	.cfi_startproc
	xorl	%eax, %eax	# ivtmp.108
	xorl	%ecx, %ecx	# mtrow
	jmp	.L97	#
.L99:
	xorl	%r8d, %r8d	# tmp89
	cmpw	%di, (%rdx,%rax,2)	# compar, MEM[base: data_9(D), index: ivtmp.108_22, step: 2, offset: 0B]
	sete	%r8b	#, tmp89
	incq	%rax	# ivtmp.108
	addl	%r8d, %ecx	# tmp89, mtrow
.L97:
	cmpl	%eax, %esi	# ivtmp.108, size
	ja	.L99	#,
	xorl	%eax, %eax	# tmp87
	cmpl	%esi, %ecx	# size, mtrow
	sete	%al	#, tmp87
	ret
	.cfi_endproc
.LFE71:
	.size	pic_mtdata, .-pic_mtdata
	.globl	pic_dumphexdata
	.type	pic_dumphexdata, @function
pic_dumphexdata:
.LFB72:
	.cfi_startproc
	movq	3128(%rdi), %rax	# k_1(D)->pic, k_1(D)->pic
	movq	144(%rax), %rax	# D.5978_2->dumphexdata, D.5979
	testq	%rax, %rax	# D.5979
	je	.L101	#,
	jmp	*%rax	# D.5979
.L101:
	movl	$__func__.5962, %edx	#,
	movl	$.LC4, %esi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	jmp	__printf_chk	#
	.cfi_endproc
.LFE72:
	.size	pic_dumphexdata, .-pic_dumphexdata
	.globl	pic_dumpinhxdata
	.type	pic_dumpinhxdata, @function
pic_dumpinhxdata:
.LFB73:
	.cfi_startproc
	movq	3128(%rdi), %rax	# k_1(D)->pic, k_1(D)->pic
	movq	152(%rax), %rax	# D.5971_2->dumpinhxdata, D.5972
	testq	%rax, %rax	# D.5972
	je	.L103	#,
	jmp	*%rax	# D.5972
.L103:
	movl	$__func__.5969, %edx	#,
	movl	$.LC4, %esi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	jmp	__printf_chk	#
	.cfi_endproc
.LFE73:
	.size	pic_dumpinhxdata, .-pic_dumpinhxdata
	.section	.rodata.str1.1
.LC19:
	.string	"%s: fatal error: data EEPROM/flash read failed\n"
	.text
	.globl	pic_dump_data
	.type	pic_dump_data, @function
pic_dump_data:
.LFB70:
	.cfi_startproc
	pushq	%r14	#
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	movl	%ecx, %r14d	# mode, mode
	pushq	%r13	#
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	movl	%esi, %r13d	# addr, addr
	movl	$2, %esi	#,
	pushq	%r12	#
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	movl	%edx, %r12d	# size, size
	pushq	%rbp	#
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	movq	%rdi, %rbp	# k, k
	leal	16(%rdx), %edi	#, tmp70
	pushq	%rbx	#
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	call	calloc	#
	testq	%rax, %rax	# data
	movq	%rax, %rbx	#, data
	jne	.L105	#,
	movl	$.LC14, %esi	#,
	movl	$1, %edi	#,
	movl	$__func__.5945, %edx	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	movl	$71, %esi	#,
	movq	%rbp, %rdi	# k,
	call	io_exit	#
.L105:
	movzwl	%r12w, %ecx	# size, tmp72
	movl	%r13d, %edx	# addr,
	movq	%rbx, %rsi	# data,
	movq	%rbp, %rdi	# k,
	call	pic_read_data_memory_block	#
	incl	%eax	# D.5998
	jne	.L106	#,
	movl	$.LC19, %esi	#,
	movl	$1, %edi	#,
	movl	$__func__.5945, %edx	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	movl	$70, %esi	#,
	movq	%rbp, %rdi	# k,
	call	io_exit	#
.L106:
	cmpl	$1, %r14d	#, mode
	jne	.L107	#,
	movq	%rbx, %rcx	# data,
	movl	%r12d, %edx	# size,
	movl	%r13d, %esi	# addr,
	movq	%rbp, %rdi	# k,
	call	pic_dumphexdata	#
	jmp	.L108	#
.L107:
	cmpl	$2, %r14d	#, mode
	jne	.L108	#,
	movq	%rbx, %rcx	# data,
	movl	%r12d, %edx	# size,
	movl	%r13d, %esi	# addr,
	movq	%rbp, %rdi	# k,
	call	pic_dumpinhxdata	#
.L108:
	movq	%rbx, %rdi	# data,
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
	jmp	free	#
	.cfi_endproc
.LFE70:
	.size	pic_dump_data, .-pic_dump_data
	.section	.rodata.str1.1
.LC20:
	.string	"%s: fatal error: data EEPROM/flash size invalid\n"
.LC21:
	.string	"%s: information: data EEPROM/flash is not supported on this device\n"
	.text
	.globl	pic_dumpdata
	.type	pic_dumpdata, @function
pic_dumpdata:
.LFB64:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	xorl	%esi, %esi	#
	pushq	%rbx	#
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rdi, %rbx	# k, k
	subq	$24, %rsp	#,
	.cfi_def_cfa_offset 48
	call	pic_read_config	#
	leaq	12(%rsp), %rsi	#,
	movq	%rbx, %rdi	# k,
	call	pic_get_data_size	#
	cmpl	$-1, %eax	#, dsize
	movl	%eax, %ebp	#, dsize
	jne	.L111	#,
	movl	$__func__.5899, %edx	#,
	movl	$.LC20, %esi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	movl	$70, %esi	#,
	movq	%rbx, %rdi	# k,
	call	io_exit	#
	jmp	.L112	#
.L111:
	testl	%eax, %eax	# dsize
	jne	.L112	#,
	movl	$__func__.5899, %edx	#,
	movl	$.LC21, %esi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	jmp	.L110	#
.L112:
	movl	12(%rsp), %esi	# daddr,
	movl	$1, %ecx	#,
	movl	%ebp, %edx	# dsize,
	movq	%rbx, %rdi	# k,
	call	pic_dump_data	#
.L110:
	addq	$24, %rsp	#,
	.cfi_def_cfa_offset 24
	popq	%rbx	#
	.cfi_def_cfa_offset 16
	popq	%rbp	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE64:
	.size	pic_dumpdata, .-pic_dumpdata
	.section	.rodata.str1.1
.LC22:
	.string	":00000001FF"
	.text
	.globl	pic_dumpdevice
	.type	pic_dumpdevice, @function
pic_dumpdevice:
.LFB62:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx	#
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rdi, %rbx	# k, k
	subq	$24, %rsp	#,
	.cfi_def_cfa_offset 48
	movq	3128(%rdi), %rax	# k_1(D)->pic, k_1(D)->pic
	cmpq	$0, 120(%rax)	#, D.6062_2->dumpdevice
	jne	.L116	#,
	movl	$__func__.5882, %edx	#,
	movl	$.LC4, %esi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	jmp	.L115	#
.L116:
	movl	$1, %esi	#,
	call	pic_read_config	#
	leaq	8(%rsp), %rsi	#,
	movq	%rbx, %rdi	# k,
	call	pic_get_program_size	#
	movl	%eax, %ebp	#, fsize
	leal	-1(%rax), %eax	#, tmp73
	cmpl	$-3, %eax	#, tmp73
	jbe	.L118	#,
	movl	$.LC18, %esi	#,
	movl	$1, %edi	#,
	movl	$__func__.5882, %edx	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	movl	$70, %esi	#,
	movq	%rbx, %rdi	# k,
	call	io_exit	#
.L118:
	movl	8(%rsp), %esi	# faddr,
	movl	%ebp, %edx	# fsize,
	movl	$2, %ecx	#,
	movq	%rbx, %rdi	# k,
	call	pic_dump_program	#
	leaq	12(%rsp), %rsi	#,
	movq	%rbx, %rdi	# k,
	call	pic_get_data_size	#
	cmpl	$-1, %eax	#, dsize
	movl	%eax, %ebp	#, dsize
	jne	.L119	#,
	movl	$__func__.5882, %edx	#,
	movl	$.LC20, %esi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	movl	$70, %esi	#,
	movq	%rbx, %rdi	# k,
	call	io_exit	#
	jmp	.L120	#
.L119:
	testl	%eax, %eax	# dsize
	je	.L121	#,
.L120:
	movl	12(%rsp), %esi	# daddr,
	movl	$2, %ecx	#,
	movl	%ebp, %edx	# dsize,
	movq	%rbx, %rdi	# k,
	call	pic_dump_data	#
.L121:
	movq	3128(%rbx), %rax	# k_1(D)->pic, k_1(D)->pic
	movq	%rbx, %rdi	# k,
	call	*120(%rax)	# D.6062_9->dumpdevice
	movl	$.LC22, %edi	#,
	call	puts	#
.L115:
	addq	$24, %rsp	#,
	.cfi_def_cfa_offset 24
	popq	%rbx	#
	.cfi_def_cfa_offset 16
	popq	%rbp	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE62:
	.size	pic_dumpdevice, .-pic_dumpdevice
	.section	.rodata
	.align 8
	.type	__func__.5763, @object
	.size	__func__.5763, 13
__func__.5763:
	.string	"pic_selector"
	.align 16
	.type	__func__.5768, @object
	.size	__func__.5768, 16
__func__.5768:
	.string	"pic_read_config"
	.align 16
	.type	__func__.5774, @object
	.size	__func__.5774, 21
__func__.5774:
	.string	"pic_get_program_size"
	.align 16
	.type	__func__.5780, @object
	.size	__func__.5780, 18
__func__.5780:
	.string	"pic_get_data_size"
	.align 16
	.type	__func__.5786, @object
	.size	__func__.5786, 23
__func__.5786:
	.string	"pic_get_executive_size"
	.align 16
	.type	__func__.5794, @object
	.size	__func__.5794, 30
__func__.5794:
	.string	"pic_read_program_memory_block"
	.align 16
	.type	__func__.5802, @object
	.size	__func__.5802, 27
__func__.5802:
	.string	"pic_read_data_memory_block"
	.align 8
	.type	__func__.5808, @object
	.size	__func__.5808, 12
__func__.5808:
	.string	"pic_program"
	.align 8
	.type	__func__.5814, @object
	.size	__func__.5814, 11
__func__.5814:
	.string	"pic_verify"
	.align 16
	.type	__func__.5819, @object
	.size	__func__.5819, 17
__func__.5819:
	.string	"pic_writebandgap"
	.align 16
	.type	__func__.5824, @object
	.size	__func__.5824, 16
__func__.5824:
	.string	"pic_writeosccal"
	.align 8
	.type	__func__.5828, @object
	.size	__func__.5828, 10
__func__.5828:
	.string	"pic_blank"
	.align 8
	.type	__func__.5834, @object
	.size	__func__.5834, 10
__func__.5834:
	.string	"pic_erase"
	.align 16
	.type	__func__.5838, @object
	.size	__func__.5838, 17
__func__.5838:
	.string	"pic_dumpdeviceid"
	.align 8
	.type	__func__.5842, @object
	.size	__func__.5842, 15
__func__.5842:
	.string	"pic_dumpconfig"
	.align 8
	.type	__func__.5846, @object
	.size	__func__.5846, 15
__func__.5846:
	.string	"pic_dumposccal"
	.local	oldaddr.5851
	.comm	oldaddr.5851,2,2
	.align 8
	.type	__func__.5882, @object
	.size	__func__.5882, 15
__func__.5882:
	.string	"pic_dumpdevice"
	.align 16
	.type	__func__.5893, @object
	.size	__func__.5893, 16
__func__.5893:
	.string	"pic_dumpprogram"
	.align 8
	.type	__func__.5899, @object
	.size	__func__.5899, 13
__func__.5899:
	.string	"pic_dumpdata"
	.align 8
	.type	__func__.5903, @object
	.size	__func__.5903, 13
__func__.5903:
	.string	"pic_dumpexec"
	.align 16
	.type	__func__.5913, @object
	.size	__func__.5913, 17
__func__.5913:
	.string	"pic_dump_program"
	.align 16
	.type	__func__.5930, @object
	.size	__func__.5930, 16
__func__.5930:
	.string	"pic_dumphexcode"
	.align 16
	.type	__func__.5937, @object
	.size	__func__.5937, 17
__func__.5937:
	.string	"pic_dumpinhxcode"
	.align 8
	.type	__func__.5945, @object
	.size	__func__.5945, 14
__func__.5945:
	.string	"pic_dump_data"
	.align 16
	.type	__func__.5962, @object
	.size	__func__.5962, 16
__func__.5962:
	.string	"pic_dumphexdata"
	.align 16
	.type	__func__.5969, @object
	.size	__func__.5969, 17
__func__.5969:
	.string	"pic_dumpinhxdata"
	.ident	"GCC: (Ubuntu/Linaro 4.7.2-2ubuntu1) 4.7.2"
	.section	.note.GNU-stack,"",@progbits
