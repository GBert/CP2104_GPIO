	.file	"kio.c"
# GNU C (Ubuntu/Linaro 4.7.2-2ubuntu1) version 4.7.2 (x86_64-linux-gnu)
#	compiled by GNU C version 4.7.2, GMP version 5.0.2, MPFR version 3.1.0-p3, MPC version 0.9
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# angegebene Optionen:  -fpreprocessed kio.i -mtune=generic -march=x86-64
# -auxbase-strip kio.o -Os -pedantic-errors -Wall -std=gnu99 -fverbose-asm
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
	.string	"USAGE: %s COMMAND [ARG]\n"
.LC1:
	.string	"ICSPIO operations.\n"
.LC2:
	.string	"Error: %s.\n\n"
.LC3:
	.ascii	"Commands:\n LED       0x00..0x3F            Set Velleman K80"
	.ascii	"48 LEDs.\n SWITCH                          Get Velleman K804"
	.ascii	"8 switches.\n SLEEP                           Sleep until wa"
	.ascii	"tchdog time-out.\n WATCHDOG  E|D                   Set watch"
	.ascii	"dog enable/disable.\n CLOCK     0..7                  Set in"
	.ascii	"ternal RC clock divider.\n DIRECTION A..D|G 0x00..0xFF     S"
	.ascii	"et port data direction.\n OUTPUT    A..D|G 0x00..0xFF     Se"
	.ascii	"t port data output.\n INPUT     A..D|G                Get po"
	.ascii	"rt data input, output on stdout.\n ANALOG    0..N|D         "
	.ascii	"       Set analog channel enable/disable.\n SAMPLE          "
	.ascii	"                Get analog channel input.\n EEREAD    0x00.."
	.ascii	"0xFF            Get data EEPROM.\n EEWRITE   0x00..0xFF 0x00"
	.ascii	"..0xFF Set data EEPROM.\n READ      0x0000..0xFFFF        Ge"
	.ascii	"t program flash.\n VREF      0..15|D               Set vref "
	.ascii	"voltage level or disable.\n 8         0..0xFF               "
	.ascii	"Send an 8-bit arg & get an 8-bit answer.\n 16        0..0xFF"
	.ascii	"FF             Send a 16-bit arg & get an 8-bit answer.\n 24"
	.ascii	"        0..0xFFFFFF"
	.string	"           Send a 24-bit arg & get an 8-bit answer.\n 32        0..0xFFFFFFFF         Send a 32-bit arg & get an 8-bit answer.\n TEST      0..0xFF               Send an 8-bit test arg & get no reply.\n ERROR                           Get last firmware error.\n"
.LC4:
	.string	"FILES:\n %s\n\t\tConfiguration.\n\n"
.LC5:
	.string	"EXAMPLES:\n kio WATCHDOG D\n\t\tTurn off watchdog.\n kio DIRECTION C 0xF0\n\t\tSet port C bits 0..3 as output and bits 4..7 as input.\n kio OUTPUT C 0x0A\n\t\tSet port C bits 0..3 to 0x0A.\n"
.LC6:
	.string	"VERSION:\n %s\n"
	.text
	.globl	usage
	.type	usage, @function
usage:
.LFB40:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rdx, %rbp	# msg, msg
	xorl	%eax, %eax	#
	movq	%rsi, %rdx	# execname,
	movl	$.LC0, %esi	#,
	pushq	%rbx	#
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rdi, %rbx	# k, k
	movl	$1, %edi	#,
	pushq	%rcx	#
	.cfi_def_cfa_offset 32
	call	__printf_chk	#
	movl	$.LC1, %edi	#,
	call	puts	#
	testq	%rbp, %rbp	# msg
	je	.L2	#,
	movq	%rbp, %rdx	# msg,
	movl	$.LC2, %esi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
.L2:
	movl	$.LC3, %edi	#,
	call	puts	#
	movq	%rbx, %rdx	# k,
	movl	$.LC4, %esi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	movl	$.LC5, %edi	#,
	call	puts	#
	xorl	%eax, %eax	#
	movl	$VERSION, %edx	#,
	movl	$.LC6, %esi	#,
	movl	$1, %edi	#,
	call	__printf_chk	#
	testq	%rbp, %rbp	# msg
	je	.L3	#,
	movl	$64, %esi	#,
	movq	%rbx, %rdi	# k,
	call	io_exit	#
.L3:
	popq	%rax	#
	.cfi_def_cfa_offset 24
	movq	%rbx, %rdi	# k,
	xorl	%esi, %esi	#
	popq	%rbx	#
	.cfi_def_cfa_offset 16
	popq	%rbp	#
	.cfi_def_cfa_offset 8
	jmp	io_exit	#
	.cfi_endproc
.LFE40:
	.size	usage, .-usage
	.section	.rodata.str1.1
.LC7:
	.string	"Invalid arg [8-bit byte]"
	.text
	.globl	getbytearg
	.type	getbytearg, @function
getbytearg:
.LFB41:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsi, %rbp	# execname, execname
	xorl	%esi, %esi	#
	pushq	%rbx	#
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rdi, %rbx	# k, k
	movq	%rdx, %rdi	# args, args
	xorl	%edx, %edx	#
	pushq	%r8	#
	.cfi_def_cfa_offset 32
	call	strtoul	#
	cmpl	$255, %eax	#, D.6335
	jbe	.L13	#,
	movl	$.LC7, %edx	#,
	movq	%rbp, %rsi	# execname,
	movq	%rbx, %rdi	# k,
	call	usage	#
	xorl	%eax, %eax	# D.6338
.L13:
	popq	%rsi	#
	.cfi_def_cfa_offset 24
	popq	%rbx	#
	.cfi_def_cfa_offset 16
	popq	%rbp	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE41:
	.size	getbytearg, .-getbytearg
	.section	.rodata.str1.1
.LC8:
	.string	"Invalid arg [16-bit word]"
	.text
	.globl	getshortarg
	.type	getshortarg, @function
getshortarg:
.LFB42:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsi, %rbp	# execname, execname
	xorl	%esi, %esi	#
	pushq	%rbx	#
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rdi, %rbx	# k, k
	movq	%rdx, %rdi	# args, args
	xorl	%edx, %edx	#
	pushq	%r10	#
	.cfi_def_cfa_offset 32
	call	strtoul	#
	cmpl	$65535, %eax	#, D.6330
	jbe	.L17	#,
	movl	$.LC8, %edx	#,
	movq	%rbp, %rsi	# execname,
	movq	%rbx, %rdi	# k,
	call	usage	#
	xorl	%eax, %eax	# D.6333
.L17:
	popq	%r9	#
	.cfi_def_cfa_offset 24
	popq	%rbx	#
	.cfi_def_cfa_offset 16
	popq	%rbp	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE42:
	.size	getshortarg, .-getshortarg
	.section	.rodata.str1.1
.LC9:
	.string	"Invalid arg [24-bit word]"
	.text
	.globl	get24arg
	.type	get24arg, @function
get24arg:
.LFB43:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsi, %rbp	# execname, execname
	xorl	%esi, %esi	#
	pushq	%rbx	#
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	pushq	%rbx	#
	.cfi_def_cfa_offset 32
	movq	%rdi, %rbx	# k, k
	movq	%rdx, %rdi	# args, args
	xorl	%edx, %edx	#
	call	strtoul	#
	cmpl	$16777215, %eax	#, D.6325
	movl	%eax, %edx	# D.6325, argn
	jbe	.L20	#,
	movl	$.LC9, %edx	#,
	movq	%rbp, %rsi	# execname,
	movq	%rbx, %rdi	# k,
	call	usage	#
	xorl	%edx, %edx	# argn
.L20:
	popq	%r11	#
	.cfi_def_cfa_offset 24
	popq	%rbx	#
	.cfi_def_cfa_offset 16
	movl	%edx, %eax	# argn,
	popq	%rbp	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE43:
	.size	get24arg, .-get24arg
	.globl	getintarg
	.type	getintarg, @function
getintarg:
.LFB44:
	.cfi_startproc
	pushq	%rax	#
	.cfi_def_cfa_offset 16
	movq	%rdx, %rdi	# args, args
	xorl	%esi, %esi	#
	xorl	%edx, %edx	#
	call	strtoul	#
	popq	%rdx	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE44:
	.size	getintarg, .-getintarg
	.section	.rodata.str1.1
.LC10:
	.string	"Invalid arg [port]"
	.text
	.globl	getportarg
	.type	getportarg, @function
getportarg:
.LFB45:
	.cfi_startproc
	pushq	%rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %rbx	# k, k
	subq	$16, %rsp	#,
	.cfi_def_cfa_offset 32
	movsbl	(%rdx), %edi	# *args_4(D), __res
	movq	%rsi, 8(%rsp)	#,
	call	toupper	#
	cmpb	$71, %al	#, __res
	movq	8(%rsp), %rsi	#,
	je	.L27	#,
	leal	-65(%rax), %edx	#, tmp70
	cmpb	$3, %dl	#, tmp70
	ja	.L26	#,
	subl	$64, %eax	#, D.6315
	jmp	.L25	#
.L26:
	movl	$.LC10, %edx	#,
	movq	%rbx, %rdi	# k,
	call	usage	#
.L27:
	xorl	%eax, %eax	# D.6315
.L25:
	addq	$16, %rsp	#,
	.cfi_def_cfa_offset 16
	popq	%rbx	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE45:
	.size	getportarg, .-getportarg
	.section	.rodata.str1.1
.LC11:
	.string	"%s: fatal error: strdup failed\n"
.LC12:
	.string	"%s: fatal error: basename failed\n"
.LC13:
	.string	"%s: fatal error: setuid failed\n"
.LC14:
	.string	"Missing arg(s)"
.LC15:
	.string	"LED"
.LC16:
	.string	"Missing arg"
.LC17:
	.string	"Too many args"
.LC18:
	.string	"0x%02X(0x%02X) = 0x%02X\n"
.LC19:
	.string	"%s: error: %s [0x%02X]\n"
.LC20:
	.string	"SWITCH"
.LC21:
	.string	"0x%02X() = 0x%02X\n"
.LC22:
	.string	"0x%02X\n"
.LC23:
	.string	"SLEEP"
.LC24:
	.string	"WATCHDOG"
.LC25:
	.string	"Invalid arg"
.LC26:
	.string	"CLOCK"
.LC27:
	.string	"DIRECTION"
.LC28:
	.string	"0x%02X(0x%02X, 0x%02X) = 0x%02X\n"
.LC29:
	.string	"OUTPUT"
.LC30:
	.string	"INPUT"
.LC31:
	.string	"ANALOG"
.LC32:
	.string	"SAMPLE"
.LC33:
	.string	"0x%04X\n"
.LC34:
	.string	"EEREAD"
.LC35:
	.string	"EEWRITE"
.LC36:
	.string	"READ"
.LC37:
	.string	"0x%02X(0x%02X,0x%02X) = 0x%02X\n"
.LC38:
	.string	"VREF"
.LC39:
	.string	"8"
.LC40:
	.string	"16"
.LC41:
	.string	"24"
.LC42:
	.string	"0x%02X(0x%02X,0x%02X,0x%02X) = 0x%02X\n"
.LC43:
	.string	"32"
.LC44:
	.string	"0x%02X(0x%02X,0x%02X,0x%02X,0x%02X) = 0x%02X\n"
.LC45:
	.string	"TEST"
.LC46:
	.string	"ERROR"
.LC47:
	.string	"Unknown operation"
	.section	.text.startup,"ax",@progbits
	.globl	main
	.type	main, @function
main:
.LFB46:
	.cfi_startproc
	pushq	%r13	#
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	movl	$784, %ecx	#, tmp653
	pushq	%r12	#
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	movq	%rsi, %r12	# argv, argv
	pushq	%rbp	#
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	movl	%edi, %ebp	# argc, argc
	pushq	%rbx	#
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	subq	$4216, %rsp	#,
	.cfi_def_cfa_offset 4256
	leaq	1064(%rsp), %rbx	#, tmp650
	movq	%fs:40, %rax	#,
	movq	%rax, 4200(%rsp)	#, D.6773
	xorl	%eax, %eax	#
	movq	%rbx, %rdi	# tmp650, tmp651
	rep stosl
	movq	(%rsi), %rdi	# *argv_3(D),
	call	strdup	#
	testq	%rax, %rax	# execdup
	movq	%rax, %r13	#, execdup
	jne	.L30	#,
	movl	$.LC11, %esi	#,
	movl	$1, %edi	#,
	movl	$__func__.5824, %edx	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	movl	$71, %esi	#,
	movq	%rbx, %rdi	# tmp650,
	call	io_exit	#
.L30:
	movq	%r13, %rdi	# execdup,
	call	__xpg_basename	#
	testq	%rax, %rax	# execname
	movq	%rax, %rbx	#, execname
	jne	.L31	#,
	movl	$.LC12, %esi	#,
	movl	$1, %edi	#,
	movl	$__func__.5824, %edx	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	leaq	1064(%rsp), %rdi	#,
	movl	$71, %esi	#,
	call	io_exit	#
.L31:
	leaq	1064(%rsp), %rdi	#,
	movq	%rbx, %rsi	# execname,
	call	getconf	#
	leaq	1064(%rsp), %rdi	#,
	call	io_open	#
	testl	%eax, %eax	# D.5887
	jns	.L32	#,
	leaq	1064(%rsp), %rdi	#,
	call	io_error	#
	leaq	1064(%rsp), %rdi	#,
	movq	%rax, %rdx	# D.5890,
	movq	%rbx, %rsi	# execname,
	call	usage	#
.L32:
	call	getuid	#
	movl	%eax, %r13d	#, D.5891
	call	geteuid	#
	cmpl	%eax, %r13d	# D.5892, D.5891
	je	.L34	#,
	call	getuid	#
	movl	%eax, %edi	# D.5895,
	call	setuid	#
	testl	%eax, %eax	# D.5896
	jns	.L34	#,
	movl	$.LC13, %esi	#,
	movl	$1, %edi	#,
	movl	$__func__.5824, %edx	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	leaq	1064(%rsp), %rdi	#,
	movl	$71, %esi	#,
	call	io_exit	#
.L34:
	cmpl	$1, %ebp	#, argc
	jg	.L36	#,
	leaq	1064(%rsp), %rdi	#,
	movl	$.LC14, %edx	#,
	movq	%rbx, %rsi	# execname,
	call	usage	#
.L36:
	movq	8(%r12), %r13	# MEM[(char * *)argv_3(D) + 8B], D.5902
	movl	$.LC15, %esi	#,
	movq	%r13, %rdi	# D.5902,
	call	strcasecmp	#
	testl	%eax, %eax	# D.5903
	jne	.L37	#,
	cmpl	$2, %ebp	#, argc
	movl	$.LC16, %edx	#,
	jle	.L306	#,
.L38:
	cmpl	$3, %ebp	#, argc
	je	.L39	#,
	movl	$.LC17, %edx	#,
.L306:
	leaq	1064(%rsp), %rdi	#,
	movq	%rbx, %rsi	# execname,
	call	usage	#
.L39:
	movq	16(%r12), %rdx	# MEM[(char * *)argv_3(D) + 16B], MEM[(char * *)argv_3(D) + 16B]
	leaq	1064(%rsp), %rbp	#, tmp666
	movq	%rbx, %rsi	# execname,
	movb	$1, 40(%rsp)	#, cmd
	movq	%rbp, %rdi	# tmp666,
	call	getbytearg	#
	movb	%al, 41(%rsp)	# D.5912, cmd
.L44:
	movl	4156(%rsp), %esi	# k.fwsleep, D.5913
	leaq	40(%rsp), %rcx	#,
	xorl	%r9d, %r9d	#
	movl	$1, %r8d	#,
	movq	%rbp, %rdi	# tmp973,
	movl	$0, (%rsp)	#,
	leal	(%rsi,%rsi), %edx	#, tmp668
	call	io_test_command	#
	movzbl	40(%rsp), %ecx	# cmd, cmd
	movzbl	41(%rsp), %r8d	# cmd,
	movl	%eax, %ebx	#, err
	movq	stderr(%rip), %rdi	# stderr,
	movl	%eax, %r9d	# err,
	movl	$.LC18, %edx	#,
	xorl	%eax, %eax	#
	movl	$1, %esi	#,
	call	__fprintf_chk	#
	testl	%ebx, %ebx	# err
	je	.L40	#,
	cmpl	$0, 4160(%rsp)	#, k.debug
	je	.L41	#,
	movl	%ebx, %edi	# err,
	call	io_test_err	#
	movq	stderr(%rip), %rdi	# stderr,
	movq	%rax, %r8	#, D.5927
	movl	%ebx, %r9d	# err,
	movl	$__func__.5824, %ecx	#,
	movl	$.LC19, %edx	#,
	movl	$1, %esi	#,
	xorl	%eax, %eax	#
	call	__fprintf_chk	#
.L41:
	movl	4156(%rsp), %esi	# k.fwsleep, tmp672
	movq	%rbp, %rdi	# tmp973,
	sall	$8, %esi	#, tmp672
	call	io_usleep	#
.L40:
	cmpl	$0, io_stop(%rip)	#, io_stop
	jne	.L43	#,
	andl	$-5, %ebx	#, err
	jne	.L44	#,
	jmp	.L43	#
.L37:
	movl	$.LC20, %esi	#,
	movq	%r13, %rdi	# D.5902,
	call	strcasecmp	#
	testl	%eax, %eax	# D.5935
	jne	.L46	#,
	cmpl	$2, %ebp	#, argc
	jle	.L47	#,
	leaq	1064(%rsp), %rdi	#,
	movl	$.LC17, %edx	#,
	movq	%rbx, %rsi	# execname,
	call	usage	#
.L47:
	movl	$0, 36(%rsp)	#, sw
	movb	$2, 40(%rsp)	#, cmd
.L51:
	movl	4156(%rsp), %esi	# k.fwsleep, D.5913
	leaq	36(%rsp), %r9	#,
	leaq	40(%rsp), %rcx	#,
	leaq	1064(%rsp), %rdi	#,
	xorl	%r8d, %r8d	#
	movl	$1, (%rsp)	#,
	leal	(%rsi,%rsi), %edx	#, tmp679
	call	io_test_command	#
	movzbl	40(%rsp), %ecx	# cmd, cmd
	movq	stderr(%rip), %rdi	# stderr,
	movl	%eax, %ebx	#, err
	movl	%eax, %r8d	# err,
	movl	$.LC21, %edx	#,
	xorl	%eax, %eax	#
	movl	$1, %esi	#,
	call	__fprintf_chk	#
	testl	%ebx, %ebx	# err
	je	.L48	#,
	cmpl	$0, 4160(%rsp)	#, k.debug
	je	.L49	#,
	movl	%ebx, %edi	# err,
	call	io_test_err	#
	movq	stderr(%rip), %rdi	# stderr,
	movq	%rax, %r8	#, D.5944
	movl	%ebx, %r9d	# err,
	movl	$__func__.5824, %ecx	#,
	movl	$.LC19, %edx	#,
	movl	$1, %esi	#,
	xorl	%eax, %eax	#
	call	__fprintf_chk	#
.L49:
	movl	4156(%rsp), %esi	# k.fwsleep, tmp682
	leaq	1064(%rsp), %rdi	#,
	sall	$8, %esi	#, tmp682
	call	io_usleep	#
.L48:
	cmpl	$0, io_stop(%rip)	#, io_stop
	jne	.L171	#,
	andl	$-5, %ebx	#, err
	jne	.L51	#,
	jmp	.L171	#
.L46:
	movl	$.LC23, %esi	#,
	movq	%r13, %rdi	# D.5902,
	call	strcasecmp	#
	testl	%eax, %eax	# D.5949
	jne	.L52	#,
	cmpl	$2, %ebp	#, argc
	jle	.L53	#,
	leaq	1064(%rsp), %rdi	#,
	movl	$.LC17, %edx	#,
	movq	%rbx, %rsi	# execname,
	call	usage	#
.L53:
	movb	$16, 40(%rsp)	#, cmd
.L56:
	movl	4156(%rsp), %esi	# k.fwsleep, D.5913
	leaq	40(%rsp), %rcx	#,
	leaq	1064(%rsp), %rdi	#,
	xorl	%r9d, %r9d	#
	xorl	%r8d, %r8d	#
	movl	$0, (%rsp)	#,
	leal	(%rsi,%rsi), %edx	#, tmp689
	call	io_test_command	#
	movzbl	40(%rsp), %ecx	# cmd, cmd
	movq	stderr(%rip), %rdi	# stderr,
	movl	%eax, %ebx	#, err
	movl	%eax, %r8d	# err,
	movl	$.LC21, %edx	#,
	xorl	%eax, %eax	#
	movl	$1, %esi	#,
	call	__fprintf_chk	#
	testl	%ebx, %ebx	# err
	je	.L54	#,
	cmpl	$0, 4160(%rsp)	#, k.debug
	je	.L55	#,
	movl	%ebx, %edi	# err,
	call	io_test_err	#
	movq	stderr(%rip), %rdi	# stderr,
	movq	%rax, %r8	#, D.5958
	movl	%ebx, %r9d	# err,
	movl	$__func__.5824, %ecx	#,
	movl	$.LC19, %edx	#,
	movl	$1, %esi	#,
	xorl	%eax, %eax	#
	call	__fprintf_chk	#
.L55:
	movl	4156(%rsp), %esi	# k.fwsleep, tmp692
	leaq	1064(%rsp), %rdi	#,
	sall	$8, %esi	#, tmp692
	call	io_usleep	#
.L54:
	cmpl	$0, io_stop(%rip)	#, io_stop
	jne	.L43	#,
	andl	$-5, %ebx	#, err
	jne	.L56	#,
	jmp	.L43	#
.L52:
	movl	$.LC24, %esi	#,
	movq	%r13, %rdi	# D.5902,
	call	strcasecmp	#
	testl	%eax, %eax	# D.5961
	jne	.L57	#,
	cmpl	$2, %ebp	#, argc
	movl	$.LC16, %edx	#,
	jle	.L307	#,
.L58:
	cmpl	$3, %ebp	#, argc
	je	.L59	#,
	movl	$.LC17, %edx	#,
.L307:
	leaq	1064(%rsp), %rdi	#,
	movq	%rbx, %rsi	# execname,
	call	usage	#
.L59:
	movq	16(%r12), %rax	# MEM[(char * *)argv_3(D) + 16B], MEM[(char * *)argv_3(D) + 16B]
	movb	$17, 40(%rsp)	#, cmd
	movb	(%rax), %al	# *D.5911_88, D.6677
	andl	$-33, %eax	#, D.6677
	cmpb	$68, %al	#, D.6677
	jne	.L60	#,
	movb	$0, 41(%rsp)	#, cmd
	jmp	.L246	#
.L60:
	cmpb	$69, %al	#, D.6677
	jne	.L62	#,
	movb	$1, 41(%rsp)	#, cmd
	jmp	.L246	#
.L62:
	leaq	1064(%rsp), %rdi	#,
	movl	$.LC25, %edx	#,
	movq	%rbx, %rsi	# execname,
	call	usage	#
.L246:
	movl	4156(%rsp), %esi	# k.fwsleep, D.5913
	leaq	40(%rsp), %rcx	#,
	leaq	1064(%rsp), %rdi	#,
	xorl	%r9d, %r9d	#
	movl	$1, %r8d	#,
	movl	$0, (%rsp)	#,
	leal	(%rsi,%rsi), %edx	#, tmp702
	call	io_test_command	#
	movzbl	40(%rsp), %ecx	# cmd, cmd
	movzbl	41(%rsp), %r8d	# cmd,
	movl	%eax, %ebx	#, err
	movq	stderr(%rip), %rdi	# stderr,
	movl	%eax, %r9d	# err,
	movl	$.LC18, %edx	#,
	xorl	%eax, %eax	#
	movl	$1, %esi	#,
	call	__fprintf_chk	#
	testl	%ebx, %ebx	# err
	je	.L63	#,
	cmpl	$0, 4160(%rsp)	#, k.debug
	je	.L64	#,
	movl	%ebx, %edi	# err,
	call	io_test_err	#
	movq	stderr(%rip), %rdi	# stderr,
	movq	%rax, %r8	#, D.5986
	movl	%ebx, %r9d	# err,
	movl	$__func__.5824, %ecx	#,
	movl	$.LC19, %edx	#,
	movl	$1, %esi	#,
	xorl	%eax, %eax	#
	call	__fprintf_chk	#
.L64:
	movl	4156(%rsp), %esi	# k.fwsleep, tmp706
	leaq	1064(%rsp), %rdi	#,
	sall	$8, %esi	#, tmp706
	call	io_usleep	#
.L63:
	cmpl	$0, io_stop(%rip)	#, io_stop
	jne	.L43	#,
	andl	$-5, %ebx	#, err
	jne	.L246	#,
	jmp	.L43	#
.L57:
	movl	$.LC26, %esi	#,
	movq	%r13, %rdi	# D.5902,
	call	strcasecmp	#
	testl	%eax, %eax	# D.5989
	jne	.L66	#,
	cmpl	$2, %ebp	#, argc
	movl	$.LC16, %edx	#,
	jle	.L308	#,
.L67:
	cmpl	$3, %ebp	#, argc
	je	.L68	#,
	movl	$.LC17, %edx	#,
.L308:
	leaq	1064(%rsp), %rdi	#,
	movq	%rbx, %rsi	# execname,
	call	usage	#
.L68:
	movq	16(%r12), %rdx	# MEM[(char * *)argv_3(D) + 16B], MEM[(char * *)argv_3(D) + 16B]
	leaq	1064(%rsp), %rbp	#, tmp713
	movq	%rbx, %rsi	# execname,
	movb	$18, 40(%rsp)	#, cmd
	movq	%rbp, %rdi	# tmp713,
	call	getbytearg	#
	movb	%al, 41(%rsp)	# D.5996, cmd
.L71:
	movl	4156(%rsp), %esi	# k.fwsleep, D.5913
	leaq	40(%rsp), %rcx	#,
	xorl	%r9d, %r9d	#
	movl	$1, %r8d	#,
	movq	%rbp, %rdi	# tmp982,
	movl	$0, (%rsp)	#,
	leal	(%rsi,%rsi), %edx	#, tmp715
	call	io_test_command	#
	movzbl	40(%rsp), %ecx	# cmd, cmd
	movzbl	41(%rsp), %r8d	# cmd,
	movl	%eax, %ebx	#, err
	movq	stderr(%rip), %rdi	# stderr,
	movl	%eax, %r9d	# err,
	movl	$.LC18, %edx	#,
	xorl	%eax, %eax	#
	movl	$1, %esi	#,
	call	__fprintf_chk	#
	testl	%ebx, %ebx	# err
	je	.L69	#,
	cmpl	$0, 4160(%rsp)	#, k.debug
	je	.L70	#,
	movl	%ebx, %edi	# err,
	call	io_test_err	#
	movq	stderr(%rip), %rdi	# stderr,
	movq	%rax, %r8	#, D.6001
	movl	%ebx, %r9d	# err,
	movl	$__func__.5824, %ecx	#,
	movl	$.LC19, %edx	#,
	movl	$1, %esi	#,
	xorl	%eax, %eax	#
	call	__fprintf_chk	#
.L70:
	movl	4156(%rsp), %esi	# k.fwsleep, tmp719
	movq	%rbp, %rdi	# tmp982,
	sall	$8, %esi	#, tmp719
	call	io_usleep	#
.L69:
	cmpl	$0, io_stop(%rip)	#, io_stop
	jne	.L43	#,
	andl	$-5, %ebx	#, err
	jne	.L71	#,
	jmp	.L43	#
.L66:
	movl	$.LC27, %esi	#,
	movq	%r13, %rdi	# D.5902,
	call	strcasecmp	#
	testl	%eax, %eax	# D.6004
	jne	.L72	#,
	cmpl	$3, %ebp	#, argc
	movl	$.LC16, %edx	#,
	jle	.L309	#,
.L73:
	cmpl	$4, %ebp	#, argc
	je	.L74	#,
	movl	$.LC17, %edx	#,
.L309:
	leaq	1064(%rsp), %rdi	#,
	movq	%rbx, %rsi	# execname,
	call	usage	#
.L74:
	movq	16(%r12), %rdx	# MEM[(char * *)argv_3(D) + 16B], MEM[(char * *)argv_3(D) + 16B]
	leaq	1064(%rsp), %rbp	#, tmp726
	movq	%rbx, %rsi	# execname,
	movb	$32, 40(%rsp)	#, cmd
	movq	%rbp, %rdi	# tmp726,
	call	getportarg	#
	movq	24(%r12), %rdx	# MEM[(char * *)argv_3(D) + 24B], MEM[(char * *)argv_3(D) + 24B]
	movq	%rbx, %rsi	# execname,
	movq	%rbp, %rdi	# tmp726,
	movb	%al, 41(%rsp)	# D.6011, cmd
	call	getbytearg	#
	movb	%al, 42(%rsp)	# D.6014, cmd
.L77:
	movl	4156(%rsp), %esi	# k.fwsleep, D.5913
	leaq	40(%rsp), %rcx	#,
	xorl	%r9d, %r9d	#
	movl	$2, %r8d	#,
	movq	%rbp, %rdi	# tmp984,
	movl	$0, (%rsp)	#,
	leal	(%rsi,%rsi), %edx	#, tmp730
	call	io_test_command	#
	movzbl	42(%rsp), %r9d	# cmd, cmd
	movzbl	41(%rsp), %r8d	# cmd, cmd
	movl	%eax, %ebx	#, err
	movzbl	40(%rsp), %ecx	# cmd, cmd
	movq	stderr(%rip), %rdi	# stderr,
	movl	$.LC28, %edx	#,
	movl	%eax, (%rsp)	# err,
	movl	$1, %esi	#,
	xorl	%eax, %eax	#
	call	__fprintf_chk	#
	testl	%ebx, %ebx	# err
	je	.L75	#,
	cmpl	$0, 4160(%rsp)	#, k.debug
	je	.L76	#,
	movl	%ebx, %edi	# err,
	call	io_test_err	#
	movq	stderr(%rip), %rdi	# stderr,
	movq	%rax, %r8	#, D.6021
	movl	%ebx, %r9d	# err,
	movl	$__func__.5824, %ecx	#,
	movl	$.LC19, %edx	#,
	movl	$1, %esi	#,
	xorl	%eax, %eax	#
	call	__fprintf_chk	#
.L76:
	movl	4156(%rsp), %esi	# k.fwsleep, tmp735
	movq	%rbp, %rdi	# tmp984,
	sall	$8, %esi	#, tmp735
	call	io_usleep	#
.L75:
	cmpl	$0, io_stop(%rip)	#, io_stop
	jne	.L43	#,
	andl	$-5, %ebx	#, err
	jne	.L77	#,
	jmp	.L43	#
.L72:
	movl	$.LC29, %esi	#,
	movq	%r13, %rdi	# D.5902,
	call	strcasecmp	#
	testl	%eax, %eax	# D.6024
	jne	.L78	#,
	cmpl	$3, %ebp	#, argc
	movl	$.LC16, %edx	#,
	jle	.L310	#,
.L79:
	cmpl	$4, %ebp	#, argc
	je	.L80	#,
	movl	$.LC17, %edx	#,
.L310:
	leaq	1064(%rsp), %rdi	#,
	movq	%rbx, %rsi	# execname,
	call	usage	#
.L80:
	movq	16(%r12), %rdx	# MEM[(char * *)argv_3(D) + 16B], MEM[(char * *)argv_3(D) + 16B]
	leaq	1064(%rsp), %rbp	#, tmp742
	movq	%rbx, %rsi	# execname,
	movb	$33, 40(%rsp)	#, cmd
	movq	%rbp, %rdi	# tmp742,
	call	getportarg	#
	movq	24(%r12), %rdx	# MEM[(char * *)argv_3(D) + 24B], MEM[(char * *)argv_3(D) + 24B]
	movq	%rbx, %rsi	# execname,
	movq	%rbp, %rdi	# tmp742,
	movb	%al, 41(%rsp)	# D.6031, cmd
	call	getbytearg	#
	movb	%al, 42(%rsp)	# D.6032, cmd
.L83:
	movl	4156(%rsp), %esi	# k.fwsleep, D.5913
	leaq	40(%rsp), %rcx	#,
	xorl	%r9d, %r9d	#
	movl	$2, %r8d	#,
	movq	%rbp, %rdi	# tmp986,
	movl	$0, (%rsp)	#,
	leal	(%rsi,%rsi), %edx	#, tmp746
	call	io_test_command	#
	movzbl	42(%rsp), %r9d	# cmd, cmd
	movzbl	41(%rsp), %r8d	# cmd, cmd
	movl	%eax, %ebx	#, err
	movzbl	40(%rsp), %ecx	# cmd, cmd
	movq	stderr(%rip), %rdi	# stderr,
	movl	$.LC28, %edx	#,
	movl	%eax, (%rsp)	# err,
	movl	$1, %esi	#,
	xorl	%eax, %eax	#
	call	__fprintf_chk	#
	testl	%ebx, %ebx	# err
	je	.L81	#,
	cmpl	$0, 4160(%rsp)	#, k.debug
	je	.L82	#,
	movl	%ebx, %edi	# err,
	call	io_test_err	#
	movq	stderr(%rip), %rdi	# stderr,
	movq	%rax, %r8	#, D.6037
	movl	%ebx, %r9d	# err,
	movl	$__func__.5824, %ecx	#,
	movl	$.LC19, %edx	#,
	movl	$1, %esi	#,
	xorl	%eax, %eax	#
	call	__fprintf_chk	#
.L82:
	movl	4156(%rsp), %esi	# k.fwsleep, tmp751
	movq	%rbp, %rdi	# tmp986,
	sall	$8, %esi	#, tmp751
	call	io_usleep	#
.L81:
	cmpl	$0, io_stop(%rip)	#, io_stop
	jne	.L43	#,
	andl	$-5, %ebx	#, err
	jne	.L83	#,
	jmp	.L43	#
.L78:
	movl	$.LC30, %esi	#,
	movq	%r13, %rdi	# D.5902,
	call	strcasecmp	#
	testl	%eax, %eax	# D.6040
	jne	.L84	#,
	cmpl	$2, %ebp	#, argc
	movl	$.LC16, %edx	#,
	jle	.L311	#,
.L85:
	cmpl	$3, %ebp	#, argc
	je	.L86	#,
	movl	$.LC17, %edx	#,
.L311:
	leaq	1064(%rsp), %rdi	#,
	movq	%rbx, %rsi	# execname,
	call	usage	#
.L86:
	movq	16(%r12), %rdx	# MEM[(char * *)argv_3(D) + 16B], MEM[(char * *)argv_3(D) + 16B]
	leaq	1064(%rsp), %rbp	#, tmp758
	movq	%rbx, %rsi	# execname,
	movb	$34, 40(%rsp)	#, cmd
	movq	%rbp, %rdi	# tmp758,
	call	getportarg	#
	movb	%al, 41(%rsp)	# D.6047, cmd
.L90:
	movl	4156(%rsp), %esi	# k.fwsleep, D.5913
	leaq	36(%rsp), %r9	#,
	leaq	40(%rsp), %rcx	#,
	movl	$1, %r8d	#,
	movq	%rbp, %rdi	# tmp989,
	movl	$1, (%rsp)	#,
	movl	$0, 36(%rsp)	#, in
	leal	(%rsi,%rsi), %edx	#, tmp761
	call	io_test_command	#
	movzbl	40(%rsp), %ecx	# cmd, cmd
	movzbl	41(%rsp), %r8d	# cmd,
	movl	%eax, %ebx	#, err
	movq	stderr(%rip), %rdi	# stderr,
	movl	%eax, %r9d	# err,
	movl	$.LC18, %edx	#,
	xorl	%eax, %eax	#
	movl	$1, %esi	#,
	call	__fprintf_chk	#
	testl	%ebx, %ebx	# err
	je	.L87	#,
	cmpl	$0, 4160(%rsp)	#, k.debug
	je	.L88	#,
	movl	%ebx, %edi	# err,
	call	io_test_err	#
	movq	stderr(%rip), %rdi	# stderr,
	movq	%rax, %r8	#, D.6052
	movl	%ebx, %r9d	# err,
	movl	$__func__.5824, %ecx	#,
	movl	$.LC19, %edx	#,
	movl	$1, %esi	#,
	xorl	%eax, %eax	#
	call	__fprintf_chk	#
.L88:
	movl	4156(%rsp), %esi	# k.fwsleep, tmp765
	movq	%rbp, %rdi	# tmp989,
	sall	$8, %esi	#, tmp765
	call	io_usleep	#
.L87:
	cmpl	$0, io_stop(%rip)	#, io_stop
	jne	.L171	#,
	andl	$-5, %ebx	#, err
	jne	.L90	#,
	jmp	.L171	#
.L84:
	movl	$.LC31, %esi	#,
	movq	%r13, %rdi	# D.5902,
	call	strcasecmp	#
	testl	%eax, %eax	# D.6056
	jne	.L91	#,
	cmpl	$2, %ebp	#, argc
	movl	$.LC16, %edx	#,
	jle	.L312	#,
.L92:
	cmpl	$3, %ebp	#, argc
	je	.L93	#,
	movl	$.LC17, %edx	#,
.L312:
	leaq	1064(%rsp), %rdi	#,
	movq	%rbx, %rsi	# execname,
	call	usage	#
.L93:
	movq	16(%r12), %rdx	# MEM[(char * *)argv_3(D) + 16B], D.5911
	movb	$48, 40(%rsp)	#, cmd
	movb	(%rdx), %al	# *D.5911_239, tmp772
	andl	$-33, %eax	#, tmp772
	cmpb	$68, %al	#, tmp772
	jne	.L94	#,
	movb	$-1, 41(%rsp)	#, cmd
	jmp	.L247	#
.L94:
	leaq	1064(%rsp), %rdi	#,
	movq	%rbx, %rsi	# execname,
	call	getbytearg	#
	movb	%al, 41(%rsp)	# D.6070, cmd
.L247:
	movl	4156(%rsp), %esi	# k.fwsleep, D.5913
	leaq	40(%rsp), %rcx	#,
	leaq	1064(%rsp), %rdi	#,
	xorl	%r9d, %r9d	#
	movl	$1, %r8d	#,
	movl	$0, (%rsp)	#,
	leal	(%rsi,%rsi), %edx	#, tmp776
	call	io_test_command	#
	movzbl	40(%rsp), %ecx	# cmd, cmd
	movzbl	41(%rsp), %r8d	# cmd,
	movl	%eax, %ebx	#, err
	movq	stderr(%rip), %rdi	# stderr,
	movl	%eax, %r9d	# err,
	movl	$.LC18, %edx	#,
	xorl	%eax, %eax	#
	movl	$1, %esi	#,
	call	__fprintf_chk	#
	testl	%ebx, %ebx	# err
	je	.L96	#,
	cmpl	$0, 4160(%rsp)	#, k.debug
	je	.L97	#,
	movl	%ebx, %edi	# err,
	call	io_test_err	#
	movq	stderr(%rip), %rdi	# stderr,
	movq	%rax, %r8	#, D.6075
	movl	%ebx, %r9d	# err,
	movl	$__func__.5824, %ecx	#,
	movl	$.LC19, %edx	#,
	movl	$1, %esi	#,
	xorl	%eax, %eax	#
	call	__fprintf_chk	#
.L97:
	movl	4156(%rsp), %esi	# k.fwsleep, tmp780
	leaq	1064(%rsp), %rdi	#,
	sall	$8, %esi	#, tmp780
	call	io_usleep	#
.L96:
	cmpl	$0, io_stop(%rip)	#, io_stop
	jne	.L43	#,
	andl	$-5, %ebx	#, err
	jne	.L247	#,
	jmp	.L43	#
.L91:
	movl	$.LC32, %esi	#,
	movq	%r13, %rdi	# D.5902,
	call	strcasecmp	#
	testl	%eax, %eax	# D.6078
	jne	.L99	#,
	cmpl	$2, %ebp	#, argc
	jle	.L100	#,
	leaq	1064(%rsp), %rdi	#,
	movl	$.LC17, %edx	#,
	movq	%rbx, %rsi	# execname,
	call	usage	#
.L100:
	movb	$49, 40(%rsp)	#, cmd
.L104:
	movl	4156(%rsp), %esi	# k.fwsleep,
	leaq	36(%rsp), %r9	#,
	leaq	40(%rsp), %rcx	#,
	leaq	1064(%rsp), %rdi	#,
	xorl	%r8d, %r8d	#
	movl	$200, %edx	#,
	movl	$2, (%rsp)	#,
	movl	$0, 36(%rsp)	#, sample
	call	io_test_command	#
	movzbl	40(%rsp), %ecx	# cmd, cmd
	movq	stderr(%rip), %rdi	# stderr,
	movl	%eax, %ebx	#, err
	movl	%eax, %r8d	# err,
	movl	$.LC21, %edx	#,
	xorl	%eax, %eax	#
	movl	$1, %esi	#,
	call	__fprintf_chk	#
	testl	%ebx, %ebx	# err
	je	.L101	#,
	cmpl	$0, 4160(%rsp)	#, k.debug
	je	.L102	#,
	movl	%ebx, %edi	# err,
	call	io_test_err	#
	movq	stderr(%rip), %rdi	# stderr,
	movq	%rax, %r8	#, D.6087
	movl	%ebx, %r9d	# err,
	movl	$__func__.5824, %ecx	#,
	movl	$.LC19, %edx	#,
	movl	$1, %esi	#,
	xorl	%eax, %eax	#
	call	__fprintf_chk	#
.L102:
	movl	4156(%rsp), %esi	# k.fwsleep, tmp790
	leaq	1064(%rsp), %rdi	#,
	sall	$8, %esi	#, tmp790
	call	io_usleep	#
.L101:
	cmpl	$0, io_stop(%rip)	#, io_stop
	jne	.L123	#,
	andl	$-5, %ebx	#, err
	jne	.L104	#,
	jmp	.L123	#
.L99:
	movl	$.LC34, %esi	#,
	movq	%r13, %rdi	# D.5902,
	call	strcasecmp	#
	testl	%eax, %eax	# D.6091
	jne	.L105	#,
	cmpl	$2, %ebp	#, argc
	movl	$.LC16, %edx	#,
	jle	.L313	#,
.L106:
	cmpl	$3, %ebp	#, argc
	je	.L107	#,
	movl	$.LC17, %edx	#,
.L313:
	leaq	1064(%rsp), %rdi	#,
	movq	%rbx, %rsi	# execname,
	call	usage	#
.L107:
	movq	16(%r12), %rdx	# MEM[(char * *)argv_3(D) + 16B], MEM[(char * *)argv_3(D) + 16B]
	leaq	1064(%rsp), %rbp	#, tmp798
	movq	%rbx, %rsi	# execname,
	movb	$64, 40(%rsp)	#, cmd
	movq	%rbp, %rdi	# tmp798,
	call	getbytearg	#
	movb	%al, 41(%rsp)	# D.6098, cmd
.L111:
	movl	4156(%rsp), %esi	# k.fwsleep, D.5913
	leaq	36(%rsp), %r9	#,
	leaq	40(%rsp), %rcx	#,
	movl	$1, %r8d	#,
	movq	%rbp, %rdi	# tmp997,
	movl	$1, (%rsp)	#,
	leal	(%rsi,%rsi), %edx	#, tmp801
	call	io_test_command	#
	movzbl	40(%rsp), %ecx	# cmd, cmd
	movzbl	41(%rsp), %r8d	# cmd,
	movl	%eax, %ebx	#, err
	movq	stderr(%rip), %rdi	# stderr,
	movl	%eax, %r9d	# err,
	movl	$.LC18, %edx	#,
	xorl	%eax, %eax	#
	movl	$1, %esi	#,
	call	__fprintf_chk	#
	testl	%ebx, %ebx	# err
	je	.L108	#,
	cmpl	$0, 4160(%rsp)	#, k.debug
	je	.L109	#,
	movl	%ebx, %edi	# err,
	call	io_test_err	#
	movq	stderr(%rip), %rdi	# stderr,
	movq	%rax, %r8	#, D.6103
	movl	%ebx, %r9d	# err,
	movl	$__func__.5824, %ecx	#,
	movl	$.LC19, %edx	#,
	movl	$1, %esi	#,
	xorl	%eax, %eax	#
	call	__fprintf_chk	#
.L109:
	movl	4156(%rsp), %esi	# k.fwsleep, tmp805
	movq	%rbp, %rdi	# tmp997,
	sall	$8, %esi	#, tmp805
	call	io_usleep	#
.L108:
	cmpl	$0, io_stop(%rip)	#, io_stop
	jne	.L171	#,
	andl	$-5, %ebx	#, err
	jne	.L111	#,
	jmp	.L171	#
.L105:
	movl	$.LC35, %esi	#,
	movq	%r13, %rdi	# D.5902,
	call	strcasecmp	#
	testl	%eax, %eax	# D.6107
	jne	.L112	#,
	cmpl	$3, %ebp	#, argc
	movl	$.LC16, %edx	#,
	jle	.L314	#,
.L113:
	cmpl	$4, %ebp	#, argc
	je	.L114	#,
	movl	$.LC17, %edx	#,
.L314:
	leaq	1064(%rsp), %rdi	#,
	movq	%rbx, %rsi	# execname,
	call	usage	#
.L114:
	movq	16(%r12), %rdx	# MEM[(char * *)argv_3(D) + 16B], MEM[(char * *)argv_3(D) + 16B]
	leaq	1064(%rsp), %rbp	#, tmp813
	movq	%rbx, %rsi	# execname,
	movb	$65, 40(%rsp)	#, cmd
	movq	%rbp, %rdi	# tmp813,
	call	getbytearg	#
	movq	24(%r12), %rdx	# MEM[(char * *)argv_3(D) + 24B], MEM[(char * *)argv_3(D) + 24B]
	movq	%rbx, %rsi	# execname,
	movq	%rbp, %rdi	# tmp813,
	movb	%al, 41(%rsp)	# D.6114, cmd
	call	getbytearg	#
	movb	%al, 42(%rsp)	# D.6115, cmd
.L117:
	movl	4156(%rsp), %esi	# k.fwsleep,
	leaq	40(%rsp), %rcx	#,
	xorl	%r9d, %r9d	#
	movl	$2, %r8d	#,
	movl	$200, %edx	#,
	movq	%rbp, %rdi	# tmp999,
	movl	$0, (%rsp)	#,
	call	io_test_command	#
	movzbl	42(%rsp), %r9d	# cmd, cmd
	movzbl	41(%rsp), %r8d	# cmd, cmd
	movl	%eax, %ebx	#, err
	movzbl	40(%rsp), %ecx	# cmd, cmd
	movq	stderr(%rip), %rdi	# stderr,
	movl	$.LC28, %edx	#,
	movl	%eax, (%rsp)	# err,
	movl	$1, %esi	#,
	xorl	%eax, %eax	#
	call	__fprintf_chk	#
	testl	%ebx, %ebx	# err
	je	.L115	#,
	cmpl	$0, 4160(%rsp)	#, k.debug
	je	.L116	#,
	movl	%ebx, %edi	# err,
	call	io_test_err	#
	movq	stderr(%rip), %rdi	# stderr,
	movq	%rax, %r8	#, D.6120
	movl	%ebx, %r9d	# err,
	movl	$__func__.5824, %ecx	#,
	movl	$.LC19, %edx	#,
	movl	$1, %esi	#,
	xorl	%eax, %eax	#
	call	__fprintf_chk	#
.L116:
	movl	4156(%rsp), %esi	# k.fwsleep, tmp822
	movq	%rbp, %rdi	# tmp999,
	sall	$8, %esi	#, tmp822
	call	io_usleep	#
.L115:
	cmpl	$0, io_stop(%rip)	#, io_stop
	jne	.L43	#,
	andl	$-5, %ebx	#, err
	jne	.L117	#,
	jmp	.L43	#
.L112:
	movl	$.LC36, %esi	#,
	movq	%r13, %rdi	# D.5902,
	call	strcasecmp	#
	testl	%eax, %eax	# D.6123
	jne	.L118	#,
	cmpl	$2, %ebp	#, argc
	movl	$.LC16, %edx	#,
	jle	.L315	#,
.L119:
	cmpl	$3, %ebp	#, argc
	je	.L120	#,
	movl	$.LC17, %edx	#,
.L315:
	leaq	1064(%rsp), %rdi	#,
	movq	%rbx, %rsi	# execname,
	call	usage	#
.L120:
	movq	16(%r12), %rdx	# MEM[(char * *)argv_3(D) + 16B], MEM[(char * *)argv_3(D) + 16B]
	leaq	1064(%rsp), %rbp	#, tmp829
	movq	%rbx, %rsi	# execname,
	movq	%rbp, %rdi	# tmp829,
	call	getshortarg	#
	movl	%eax, %edx	# addr, tmp830
	movb	$80, 40(%rsp)	#, cmd
	movb	%al, 42(%rsp)	# addr, cmd
	shrw	$8, %dx	#, tmp830
	movb	%dl, 41(%rsp)	# tmp830, cmd
.L124:
	movl	4156(%rsp), %esi	# k.fwsleep, D.5913
	leaq	36(%rsp), %r9	#,
	leaq	40(%rsp), %rcx	#,
	movl	$2, %r8d	#,
	movq	%rbp, %rdi	# tmp1002,
	movl	$2, (%rsp)	#,
	leal	(%rsi,%rsi), %edx	#, tmp833
	call	io_test_command	#
	movzbl	42(%rsp), %r9d	# cmd, cmd
	movzbl	41(%rsp), %r8d	# cmd, cmd
	movl	%eax, %ebx	#, err
	movzbl	40(%rsp), %ecx	# cmd, cmd
	movq	stderr(%rip), %rdi	# stderr,
	movl	$.LC37, %edx	#,
	movl	%eax, (%rsp)	# err,
	movl	$1, %esi	#,
	xorl	%eax, %eax	#
	call	__fprintf_chk	#
	testl	%ebx, %ebx	# err
	je	.L121	#,
	cmpl	$0, 4160(%rsp)	#, k.debug
	je	.L122	#,
	movl	%ebx, %edi	# err,
	call	io_test_err	#
	movq	stderr(%rip), %rdi	# stderr,
	movq	%rax, %r8	#, D.6137
	movl	%ebx, %r9d	# err,
	movl	$__func__.5824, %ecx	#,
	movl	$.LC19, %edx	#,
	movl	$1, %esi	#,
	xorl	%eax, %eax	#
	call	__fprintf_chk	#
.L122:
	movl	4156(%rsp), %esi	# k.fwsleep, tmp838
	movq	%rbp, %rdi	# tmp1002,
	sall	$8, %esi	#, tmp838
	call	io_usleep	#
.L121:
	cmpl	$0, io_stop(%rip)	#, io_stop
	jne	.L123	#,
	andl	$-5, %ebx	#, err
	jne	.L124	#,
.L123:
	movl	36(%rsp), %ecx	#,
	movl	$.LC33, %edx	#,
	jmp	.L322	#
.L118:
	movl	$.LC38, %esi	#,
	movq	%r13, %rdi	# D.5902,
	call	strcasecmp	#
	testl	%eax, %eax	# D.6141
	jne	.L125	#,
	cmpl	$2, %ebp	#, argc
	movl	$.LC16, %edx	#,
	jle	.L316	#,
.L126:
	cmpl	$3, %ebp	#, argc
	je	.L127	#,
	movl	$.LC17, %edx	#,
.L316:
	leaq	1064(%rsp), %rdi	#,
	movq	%rbx, %rsi	# execname,
	call	usage	#
.L127:
	movq	16(%r12), %rdx	# MEM[(char * *)argv_3(D) + 16B], D.5911
	movb	$56, 40(%rsp)	#, cmd
	movb	(%rdx), %al	# *D.5911_380, tmp845
	andl	$-33, %eax	#, tmp845
	cmpb	$68, %al	#, tmp845
	jne	.L128	#,
	movb	$-1, 41(%rsp)	#, cmd
	jmp	.L248	#
.L128:
	leaq	1064(%rsp), %rdi	#,
	movq	%rbx, %rsi	# execname,
	call	getbytearg	#
	movb	%al, 41(%rsp)	# D.6155, cmd
.L248:
	movl	4156(%rsp), %esi	# k.fwsleep, D.5913
	leaq	40(%rsp), %rcx	#,
	leaq	1064(%rsp), %rdi	#,
	xorl	%r9d, %r9d	#
	movl	$1, %r8d	#,
	movl	$0, (%rsp)	#,
	leal	(%rsi,%rsi), %edx	#, tmp849
	call	io_test_command	#
	movzbl	40(%rsp), %ecx	# cmd, cmd
	movzbl	41(%rsp), %r8d	# cmd,
	movl	%eax, %ebx	#, err
	movq	stderr(%rip), %rdi	# stderr,
	movl	%eax, %r9d	# err,
	movl	$.LC18, %edx	#,
	xorl	%eax, %eax	#
	movl	$1, %esi	#,
	call	__fprintf_chk	#
	testl	%ebx, %ebx	# err
	je	.L130	#,
	cmpl	$0, 4160(%rsp)	#, k.debug
	je	.L131	#,
	movl	%ebx, %edi	# err,
	call	io_test_err	#
	movq	stderr(%rip), %rdi	# stderr,
	movq	%rax, %r8	#, D.6160
	movl	%ebx, %r9d	# err,
	movl	$__func__.5824, %ecx	#,
	movl	$.LC19, %edx	#,
	movl	$1, %esi	#,
	xorl	%eax, %eax	#
	call	__fprintf_chk	#
.L131:
	movl	4156(%rsp), %esi	# k.fwsleep, tmp853
	leaq	1064(%rsp), %rdi	#,
	sall	$8, %esi	#, tmp853
	call	io_usleep	#
.L130:
	cmpl	$0, io_stop(%rip)	#, io_stop
	jne	.L43	#,
	andl	$-5, %ebx	#, err
	jne	.L248	#,
	jmp	.L43	#
.L125:
	movl	$.LC39, %esi	#,
	movq	%r13, %rdi	# D.5902,
	call	strcasecmp	#
	testl	%eax, %eax	# D.6163
	jne	.L133	#,
	cmpl	$2, %ebp	#, argc
	movl	$.LC16, %edx	#,
	jle	.L317	#,
.L134:
	cmpl	$3, %ebp	#, argc
	je	.L135	#,
	movl	$.LC17, %edx	#,
.L317:
	leaq	1064(%rsp), %rdi	#,
	movq	%rbx, %rsi	# execname,
	call	usage	#
.L135:
	movq	16(%r12), %rdx	# MEM[(char * *)argv_3(D) + 16B], MEM[(char * *)argv_3(D) + 16B]
	leaq	1064(%rsp), %rbp	#, tmp860
	movq	%rbx, %rsi	# execname,
	movl	$0, 36(%rsp)	#, in
	movb	$-16, 40(%rsp)	#, cmd
	movq	%rbp, %rdi	# tmp860,
	call	getbytearg	#
	movb	%al, 41(%rsp)	# D.6170, cmd
.L139:
	movl	4156(%rsp), %esi	# k.fwsleep, D.5913
	leaq	36(%rsp), %r9	#,
	leaq	40(%rsp), %rcx	#,
	movl	$1, %r8d	#,
	movq	%rbp, %rdi	# tmp1007,
	movl	$1, (%rsp)	#,
	leal	(%rsi,%rsi), %edx	#, tmp863
	call	io_test_command	#
	movzbl	40(%rsp), %ecx	# cmd, cmd
	movzbl	41(%rsp), %r8d	# cmd,
	movl	%eax, %ebx	#, err
	movq	stderr(%rip), %rdi	# stderr,
	movl	%eax, %r9d	# err,
	movl	$.LC18, %edx	#,
	xorl	%eax, %eax	#
	movl	$1, %esi	#,
	call	__fprintf_chk	#
	testl	%ebx, %ebx	# err
	je	.L136	#,
	cmpl	$0, 4160(%rsp)	#, k.debug
	je	.L137	#,
	movl	%ebx, %edi	# err,
	call	io_test_err	#
	movq	stderr(%rip), %rdi	# stderr,
	movq	%rax, %r8	#, D.6175
	movl	%ebx, %r9d	# err,
	movl	$__func__.5824, %ecx	#,
	movl	$.LC19, %edx	#,
	movl	$1, %esi	#,
	xorl	%eax, %eax	#
	call	__fprintf_chk	#
.L137:
	movl	4156(%rsp), %esi	# k.fwsleep, tmp867
	movq	%rbp, %rdi	# tmp1007,
	sall	$8, %esi	#, tmp867
	call	io_usleep	#
.L136:
	cmpl	$0, io_stop(%rip)	#, io_stop
	jne	.L171	#,
	andl	$-5, %ebx	#, err
	jne	.L139	#,
	jmp	.L171	#
.L133:
	movl	$.LC40, %esi	#,
	movq	%r13, %rdi	# D.5902,
	call	strcasecmp	#
	testl	%eax, %eax	# D.6179
	jne	.L140	#,
	cmpl	$2, %ebp	#, argc
	movl	$.LC16, %edx	#,
	jle	.L318	#,
.L141:
	cmpl	$3, %ebp	#, argc
	je	.L142	#,
	movl	$.LC17, %edx	#,
.L318:
	leaq	1064(%rsp), %rdi	#,
	movq	%rbx, %rsi	# execname,
	call	usage	#
.L142:
	movq	16(%r12), %rdx	# MEM[(char * *)argv_3(D) + 16B], MEM[(char * *)argv_3(D) + 16B]
	leaq	1064(%rsp), %rbp	#, tmp875
	movq	%rbx, %rsi	# execname,
	movl	$0, 36(%rsp)	#, in
	movq	%rbp, %rdi	# tmp875,
	call	getshortarg	#
	movl	%eax, %edx	# fwarg, tmp876
	movb	$-15, 40(%rsp)	#, cmd
	movb	%al, 42(%rsp)	# fwarg, cmd
	shrw	$8, %dx	#, tmp876
	movb	%dl, 41(%rsp)	# tmp876, cmd
.L146:
	movl	4156(%rsp), %esi	# k.fwsleep, D.5913
	leaq	36(%rsp), %r9	#,
	leaq	40(%rsp), %rcx	#,
	movl	$2, %r8d	#,
	movq	%rbp, %rdi	# tmp1010,
	movl	$1, (%rsp)	#,
	leal	(%rsi,%rsi), %edx	#, tmp879
	call	io_test_command	#
	movzbl	42(%rsp), %r9d	# cmd, cmd
	movzbl	41(%rsp), %r8d	# cmd, cmd
	movl	%eax, %ebx	#, err
	movzbl	40(%rsp), %ecx	# cmd, cmd
	movq	stderr(%rip), %rdi	# stderr,
	movl	$.LC37, %edx	#,
	movl	%eax, (%rsp)	# err,
	movl	$1, %esi	#,
	xorl	%eax, %eax	#
	call	__fprintf_chk	#
	testl	%ebx, %ebx	# err
	je	.L143	#,
	cmpl	$0, 4160(%rsp)	#, k.debug
	je	.L144	#,
	movl	%ebx, %edi	# err,
	call	io_test_err	#
	movq	stderr(%rip), %rdi	# stderr,
	movq	%rax, %r8	#, D.6193
	movl	%ebx, %r9d	# err,
	movl	$__func__.5824, %ecx	#,
	movl	$.LC19, %edx	#,
	movl	$1, %esi	#,
	xorl	%eax, %eax	#
	call	__fprintf_chk	#
.L144:
	movl	4156(%rsp), %esi	# k.fwsleep, tmp884
	movq	%rbp, %rdi	# tmp1010,
	sall	$8, %esi	#, tmp884
	call	io_usleep	#
.L143:
	cmpl	$0, io_stop(%rip)	#, io_stop
	jne	.L171	#,
	andl	$-5, %ebx	#, err
	jne	.L146	#,
	jmp	.L171	#
.L140:
	movl	$.LC41, %esi	#,
	movq	%r13, %rdi	# D.5902,
	call	strcasecmp	#
	testl	%eax, %eax	# D.6197
	jne	.L147	#,
	cmpl	$2, %ebp	#, argc
	movl	$.LC16, %edx	#,
	jle	.L319	#,
.L148:
	cmpl	$3, %ebp	#, argc
	je	.L149	#,
	movl	$.LC17, %edx	#,
.L319:
	leaq	1064(%rsp), %rdi	#,
	movq	%rbx, %rsi	# execname,
	call	usage	#
.L149:
	movq	16(%r12), %rdx	# MEM[(char * *)argv_3(D) + 16B], MEM[(char * *)argv_3(D) + 16B]
	leaq	1064(%rsp), %rbp	#, tmp892
	movq	%rbx, %rsi	# execname,
	movl	$0, 36(%rsp)	#, in
	movq	%rbp, %rdi	# tmp892,
	call	get24arg	#
	movl	%eax, %edx	# fwarg, tmp893
	movb	$-14, 40(%rsp)	#, cmd
	movb	%al, 43(%rsp)	# fwarg, cmd
	shrl	$16, %edx	#, tmp893
	movb	%dl, 41(%rsp)	# tmp893, cmd
	movl	%eax, %edx	# fwarg, tmp894
	shrl	$8, %edx	#, tmp894
	movb	%dl, 42(%rsp)	# tmp894, cmd
.L153:
	movl	4156(%rsp), %esi	# k.fwsleep, D.5913
	leaq	36(%rsp), %r9	#,
	leaq	40(%rsp), %rcx	#,
	movl	$3, %r8d	#,
	movq	%rbp, %rdi	# tmp1013,
	movl	$1, (%rsp)	#,
	leal	(%rsi,%rsi), %edx	#, tmp897
	call	io_test_command	#
	movl	%eax, %ebx	#, err
	movl	%eax, 8(%rsp)	# err,
	movzbl	43(%rsp), %eax	# cmd, cmd
	movzbl	42(%rsp), %r9d	# cmd, cmd
	movzbl	41(%rsp), %r8d	# cmd, cmd
	movl	$.LC42, %edx	#,
	movzbl	40(%rsp), %ecx	# cmd, cmd
	movq	stderr(%rip), %rdi	# stderr,
	movl	$1, %esi	#,
	movl	%eax, (%rsp)	# cmd,
	xorl	%eax, %eax	#
	call	__fprintf_chk	#
	testl	%ebx, %ebx	# err
	je	.L150	#,
	cmpl	$0, 4160(%rsp)	#, k.debug
	je	.L151	#,
	movl	%ebx, %edi	# err,
	call	io_test_err	#
	movq	stderr(%rip), %rdi	# stderr,
	movq	%rax, %r8	#, D.6215
	movl	%ebx, %r9d	# err,
	movl	$__func__.5824, %ecx	#,
	movl	$.LC19, %edx	#,
	movl	$1, %esi	#,
	xorl	%eax, %eax	#
	call	__fprintf_chk	#
.L151:
	movl	4156(%rsp), %esi	# k.fwsleep, tmp903
	movq	%rbp, %rdi	# tmp1013,
	sall	$8, %esi	#, tmp903
	call	io_usleep	#
.L150:
	cmpl	$0, io_stop(%rip)	#, io_stop
	jne	.L171	#,
	andl	$-5, %ebx	#, err
	jne	.L153	#,
	jmp	.L171	#
.L147:
	movl	$.LC43, %esi	#,
	movq	%r13, %rdi	# D.5902,
	call	strcasecmp	#
	testl	%eax, %eax	# D.6219
	jne	.L154	#,
	cmpl	$2, %ebp	#, argc
	movl	$.LC16, %edx	#,
	jle	.L320	#,
.L155:
	cmpl	$3, %ebp	#, argc
	je	.L156	#,
	movl	$.LC17, %edx	#,
.L320:
	leaq	1064(%rsp), %rdi	#,
	movq	%rbx, %rsi	# execname,
	call	usage	#
.L156:
	movq	16(%r12), %rdi	# MEM[(char * *)argv_3(D) + 16B], MEM[(char * *)argv_3(D) + 16B]
	xorl	%edx, %edx	#
	xorl	%esi, %esi	#
	movl	$0, 36(%rsp)	#, in
	call	strtoul	#
	movl	%eax, %edx	#, tmp911
	movb	$-14, 40(%rsp)	#, cmd
	movb	%al, 44(%rsp)	# D.6577, cmd
	shrl	$24, %edx	#, tmp911
	movb	%dl, 41(%rsp)	# tmp911, cmd
	movl	%eax, %edx	#, tmp912
	shrl	$16, %edx	#, tmp912
	movb	%dl, 42(%rsp)	# tmp912, cmd
	movl	%eax, %edx	#, tmp913
	shrl	$8, %edx	#, tmp913
	movb	%dl, 43(%rsp)	# tmp913, cmd
.L160:
	movl	4156(%rsp), %esi	# k.fwsleep, D.5913
	leaq	36(%rsp), %r9	#,
	leaq	40(%rsp), %rcx	#,
	leaq	1064(%rsp), %rdi	#,
	movl	$4, %r8d	#,
	movl	$1, (%rsp)	#,
	leal	(%rsi,%rsi), %edx	#, tmp916
	call	io_test_command	#
	movl	%eax, %ebx	#, err
	movl	%eax, 16(%rsp)	# err,
	movzbl	44(%rsp), %eax	# cmd, cmd
	movzbl	42(%rsp), %r9d	# cmd, cmd
	movzbl	41(%rsp), %r8d	# cmd, cmd
	movl	$.LC44, %edx	#,
	movzbl	40(%rsp), %ecx	# cmd, cmd
	movq	stderr(%rip), %rdi	# stderr,
	movl	$1, %esi	#,
	movl	%eax, 8(%rsp)	# cmd,
	movzbl	43(%rsp), %eax	# cmd, cmd
	movl	%eax, (%rsp)	# cmd,
	xorl	%eax, %eax	#
	call	__fprintf_chk	#
	testl	%ebx, %ebx	# err
	je	.L157	#,
	cmpl	$0, 4160(%rsp)	#, k.debug
	je	.L158	#,
	movl	%ebx, %edi	# err,
	call	io_test_err	#
	movq	stderr(%rip), %rdi	# stderr,
	movq	%rax, %r8	#, D.6239
	movl	%ebx, %r9d	# err,
	movl	$__func__.5824, %ecx	#,
	movl	$.LC19, %edx	#,
	movl	$1, %esi	#,
	xorl	%eax, %eax	#
	call	__fprintf_chk	#
.L158:
	movl	4156(%rsp), %esi	# k.fwsleep, tmp923
	leaq	1064(%rsp), %rdi	#,
	sall	$8, %esi	#, tmp923
	call	io_usleep	#
.L157:
	cmpl	$0, io_stop(%rip)	#, io_stop
	jne	.L171	#,
	andl	$-5, %ebx	#, err
	jne	.L160	#,
	jmp	.L171	#
.L154:
	movl	$.LC45, %esi	#,
	movq	%r13, %rdi	# D.5902,
	call	strcasecmp	#
	testl	%eax, %eax	# D.6243
	jne	.L161	#,
	cmpl	$2, %ebp	#, argc
	movl	$.LC16, %edx	#,
	jle	.L321	#,
.L162:
	cmpl	$3, %ebp	#, argc
	je	.L163	#,
	movl	$.LC17, %edx	#,
.L321:
	leaq	1064(%rsp), %rdi	#,
	movq	%rbx, %rsi	# execname,
	call	usage	#
.L163:
	movq	16(%r12), %rdx	# MEM[(char * *)argv_3(D) + 16B], MEM[(char * *)argv_3(D) + 16B]
	leaq	1064(%rsp), %rbp	#, tmp931
	movq	%rbx, %rsi	# execname,
	movb	$-2, 40(%rsp)	#, cmd
	movq	%rbp, %rdi	# tmp931,
	call	getbytearg	#
	movb	%al, 41(%rsp)	# D.6250, cmd
.L166:
	movl	4156(%rsp), %esi	# k.fwsleep, D.5913
	leaq	40(%rsp), %rcx	#,
	xorl	%r9d, %r9d	#
	movl	$1, %r8d	#,
	movq	%rbp, %rdi	# tmp1018,
	movl	$0, (%rsp)	#,
	leal	(%rsi,%rsi), %edx	#, tmp933
	call	io_test_command	#
	movzbl	40(%rsp), %ecx	# cmd, cmd
	movzbl	41(%rsp), %r8d	# cmd,
	movl	%eax, %ebx	#, err
	movq	stderr(%rip), %rdi	# stderr,
	movl	%eax, %r9d	# err,
	movl	$.LC18, %edx	#,
	xorl	%eax, %eax	#
	movl	$1, %esi	#,
	call	__fprintf_chk	#
	testl	%ebx, %ebx	# err
	je	.L164	#,
	cmpl	$0, 4160(%rsp)	#, k.debug
	je	.L165	#,
	movl	%ebx, %edi	# err,
	call	io_test_err	#
	movq	stderr(%rip), %rdi	# stderr,
	movq	%rax, %r8	#, D.6255
	movl	%ebx, %r9d	# err,
	movl	$__func__.5824, %ecx	#,
	movl	$.LC19, %edx	#,
	movl	$1, %esi	#,
	xorl	%eax, %eax	#
	call	__fprintf_chk	#
.L165:
	movl	4156(%rsp), %esi	# k.fwsleep, tmp937
	movq	%rbp, %rdi	# tmp1018,
	sall	$8, %esi	#, tmp937
	call	io_usleep	#
.L164:
	cmpl	$0, io_stop(%rip)	#, io_stop
	jne	.L43	#,
	andl	$-5, %ebx	#, err
	jne	.L166	#,
	jmp	.L43	#
.L161:
	movl	$.LC46, %esi	#,
	movq	%r13, %rdi	# D.5902,
	call	strcasecmp	#
	testl	%eax, %eax	# D.6258
	jne	.L167	#,
	cmpl	$2, %ebp	#, argc
	jle	.L168	#,
	leaq	1064(%rsp), %rdi	#,
	movl	$.LC17, %edx	#,
	movq	%rbx, %rsi	# execname,
	call	usage	#
.L168:
	movb	$-1, 40(%rsp)	#, cmd
.L172:
	movl	4156(%rsp), %esi	# k.fwsleep, D.5913
	leaq	36(%rsp), %r9	#,
	leaq	40(%rsp), %rcx	#,
	leaq	1064(%rsp), %rdi	#,
	xorl	%r8d, %r8d	#
	movl	$1, (%rsp)	#,
	movl	$0, 36(%rsp)	#, le
	leal	(%rsi,%rsi), %edx	#, tmp944
	call	io_test_command	#
	movzbl	40(%rsp), %ecx	# cmd, cmd
	movq	stderr(%rip), %rdi	# stderr,
	movl	%eax, %ebx	#, err
	movl	%eax, %r8d	# err,
	movl	$.LC21, %edx	#,
	xorl	%eax, %eax	#
	movl	$1, %esi	#,
	call	__fprintf_chk	#
	testl	%ebx, %ebx	# err
	je	.L169	#,
	cmpl	$0, 4160(%rsp)	#, k.debug
	je	.L170	#,
	movl	%ebx, %edi	# err,
	call	io_test_err	#
	movq	stderr(%rip), %rdi	# stderr,
	movq	%rax, %r8	#, D.6267
	movl	%ebx, %r9d	# err,
	movl	$__func__.5824, %ecx	#,
	movl	$.LC19, %edx	#,
	movl	$1, %esi	#,
	xorl	%eax, %eax	#
	call	__fprintf_chk	#
.L170:
	movl	4156(%rsp), %esi	# k.fwsleep, tmp947
	leaq	1064(%rsp), %rdi	#,
	sall	$8, %esi	#, tmp947
	call	io_usleep	#
.L169:
	cmpl	$0, io_stop(%rip)	#, io_stop
	jne	.L171	#,
	andl	$-5, %ebx	#, err
	jne	.L172	#,
.L171:
	movl	36(%rsp), %ecx	#,
	movl	$.LC22, %edx	#,
.L322:
	movq	stdout(%rip), %rdi	# stdout,
	movl	$1, %esi	#,
	xorl	%eax, %eax	#
	call	__fprintf_chk	#
	jmp	.L43	#
.L167:
	leaq	1064(%rsp), %rdi	#,
	movl	$.LC47, %edx	#,
	movq	%rbx, %rsi	# execname,
	call	usage	#
.L43:
	leaq	1064(%rsp), %rdi	#,
	xorl	%esi, %esi	#
	call	io_exit	#
	xorl	%eax, %eax	#
	movq	4200(%rsp), %rdx	# D.6773,
	xorq	%fs:40, %rdx	#,
	je	.L173	#,
	call	__stack_chk_fail	#
.L173:
	addq	$4216, %rsp	#,
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
.LFE46:
	.size	main, .-main
	.globl	VERSION
	.section	.rodata
	.align 8
	.type	VERSION, @object
	.size	VERSION, 9
VERSION:
	.string	"2.18-dev"
	.type	__func__.5824, @object
	.size	__func__.5824, 5
__func__.5824:
	.string	"main"
	.ident	"GCC: (Ubuntu/Linaro 4.7.2-2ubuntu1) 4.7.2"
	.section	.note.GNU-stack,"",@progbits
