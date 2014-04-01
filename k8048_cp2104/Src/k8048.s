	.file	"k8048.c"
# GNU C (Ubuntu/Linaro 4.7.2-2ubuntu1) version 4.7.2 (x86_64-linux-gnu)
#	compiled by GNU C version 4.7.2, GMP version 5.0.2, MPFR version 3.1.0-p3, MPC version 0.9
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# angegebene Optionen:  -fpreprocessed k8048.i -mtune=generic -march=x86-64
# -auxbase-strip k8048.o -Os -pedantic-errors -Wall -std=gnu99
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

	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"USAGE: k8048"
.LC1:
	.string	"Usage information.\n"
.LC2:
	.string	"FILES:\n %s\n\t\tConfiguration.\n\n"
.LC3:
	.string	"BACKENDS:\n TTY\n\t\tPOSIX serial.\n"
.LC4:
	.ascii	"EXAMPLES:\n k12 SELECT DEVICE OPERATION [ARG]\n\t\t12-bit wo"
	.ascii	"rd PIC10F/12F/16F operations.\n k14 [SELECT DEVICE] [LVP] OP"
	.ascii	"ERATION [ARG]\n\t\t14-bit word PIC10F/12F/16F opera"
	.string	"tions.\n k16 [SELECT DEVICE] [LVP|HVP] OPERATION [ARG]\n\t\t16-bit word PIC18F operations.\n k24 [SELECT DEVICE] [LVP|HVP] OPERATION [ARG]\n\t\t24-bit word PIC24/dsPIC operations.\n kctrl RUN|STOP|RESTORE\n\t\tControl master clear.\n ktest TEST [ARG]\n\t\tHardware tests.\n"
.LC5:
	.string	"VERSION:\n %s\n"
	.text
	.globl	usage_k8048
	.type	usage_k8048, @function
usage_k8048:
.LFB40:
	.cfi_startproc
	pushq	%rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %rbx	# k, k
	movl	$.LC0, %edi	#,
	call	puts	#
	movl	$.LC1, %edi	#,
	call	puts	#
	movq	%rbx, %rdx	# k,
	movl	$.LC2, %esi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	movl	$.LC3, %edi	#,
	call	puts	#
	movl	$.LC4, %edi	#,
	call	puts	#
	movl	$.LC5, %esi	#,
	movl	$1, %edi	#,
	movl	$VERSION, %edx	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	movq	%rbx, %rdi	# k,
	xorl	%esi, %esi	#
	popq	%rbx	#
	.cfi_def_cfa_offset 8
	jmp	io_exit	#
	.cfi_endproc
.LFE40:
	.size	usage_k8048, .-usage_k8048
	.section	.rodata.str1.1
.LC6:
	.string	"USAGE: kctrl RUN|STOP|RESTORE"
.LC7:
	.string	"Control master clear.\n"
.LC8:
	.string	"Error: %s.\n\n"
.LC9:
	.string	"EXAMPLES:\n kctrl RUN\n\t\tRaise master clear to take the device out of reset.\n kctrl STOP\n\t\tLower master clear to put the device in reset.\n kctrl RESTORE\n\t\tLower then raise master clear to reset the device.\n"
	.text
	.globl	usage_kctrl
	.type	usage_kctrl, @function
usage_kctrl:
.LFB41:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsi, %rbp	# msg, msg
	pushq	%rbx	#
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rdi, %rbx	# k, k
	movl	$.LC6, %edi	#,
	pushq	%rdx	#
	.cfi_def_cfa_offset 32
	call	puts	#
	movl	$.LC7, %edi	#,
	call	puts	#
	testq	%rbp, %rbp	# msg
	je	.L4	#,
	movq	%rbp, %rdx	# msg,
	movl	$.LC8, %esi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
.L4:
	movq	%rbx, %rdx	# k,
	movl	$.LC2, %esi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	movl	$.LC9, %edi	#,
	call	puts	#
	xorl	%eax, %eax	#
	movl	$VERSION, %edx	#,
	movl	$.LC5, %esi	#,
	movl	$1, %edi	#,
	call	__printf_chk	#
	testq	%rbp, %rbp	# msg
	je	.L5	#,
	movl	$64, %esi	#,
	movq	%rbx, %rdi	# k,
	call	io_exit	#
.L5:
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
.LFE41:
	.size	usage_kctrl, .-usage_kctrl
	.section	.rodata.str1.1
.LC10:
	.string	"USAGE: ktest TEST ARG"
.LC11:
	.string	"Hardware tests.\n"
.LC12:
	.ascii	"EXAMPLES:\n ktest VPP|PGC|PGD|PGM 5\n\t\tVPP, PGC, PGD or PG"
	.ascii	"M LOW->HIGH->LOW test with 5 seconds high time.\n ktest 1 10"
	.ascii	"\n\t\tD-SUB-9 test with 10 seconds per step.\n ktest 2 10\n\t"
	.ascii	"\tICSP test with 10 seconds per step.\n ktest 3 0\n\t\tD-SUB"
	.ascii	"-9 RTS 7 (PGC) DTR 4 (PGD) test with no mark time.\n ktest 3"
	.ascii	" 1\n\t\tD-SUB-9 RTS 7 (PGC) DTR 4 (PGD)"
	.string	" test with SLEEP mark time.\n ktest 3 100\n\t\tD-SUB-9 RTS 7 (PGC) DTR 4 (PGD) test with 100 microseconds mark time.\n ktest 4 100\n\t\t16F627 debug test with 100 microseconds clock mark time.\n ktest 5 100\n\t\tICSPIO demo test with 100 microseconds clock mark time.\n"
	.text
	.globl	usage_ktest
	.type	usage_ktest, @function
usage_ktest:
.LFB42:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsi, %rbp	# msg, msg
	pushq	%rbx	#
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rdi, %rbx	# k, k
	movl	$.LC10, %edi	#,
	pushq	%r8	#
	.cfi_def_cfa_offset 32
	call	puts	#
	movl	$.LC11, %edi	#,
	call	puts	#
	testq	%rbp, %rbp	# msg
	je	.L14	#,
	movq	%rbp, %rdx	# msg,
	movl	$.LC8, %esi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
.L14:
	movq	%rbx, %rdx	# k,
	movl	$.LC2, %esi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	movl	$.LC12, %edi	#,
	call	puts	#
	xorl	%eax, %eax	#
	movl	$VERSION, %edx	#,
	movl	$.LC5, %esi	#,
	movl	$1, %edi	#,
	call	__printf_chk	#
	testq	%rbp, %rbp	# msg
	je	.L15	#,
	movl	$64, %esi	#,
	movq	%rbx, %rdi	# k,
	call	io_exit	#
.L15:
	popq	%rcx	#
	.cfi_def_cfa_offset 24
	movq	%rbx, %rdi	# k,
	xorl	%esi, %esi	#
	popq	%rbx	#
	.cfi_def_cfa_offset 16
	popq	%rbp	#
	.cfi_def_cfa_offset 8
	jmp	io_exit	#
	.cfi_endproc
.LFE42:
	.size	usage_ktest, .-usage_ktest
	.section	.rodata.str1.1
.LC13:
	.string	"USAGE: k12 SELECT DEVICE OPERATION [ARG]"
.LC14:
	.string	"12-bit word PIC10F/12F/16F operations.\n"
.LC15:
	.string	"EXAMPLES:"
.LC16:
	.string	"\033[0m"
.LC17:
	.string	"\033[4m"
.LC18:
	.string	" k12 %ss%select\n\t\tDump supported devices.\n"
.LC19:
	.string	" k12 %ss%select PIC1XFXXX %sb%slank\n\t\tBlank device (disable protection and bulk erase).\n"
.LC20:
	.string	" k12 %ss%select PIC1XFXXX %sc%sonfig\n\t\tDisplay device configuration.\n"
.LC21:
	.string	" k12 %ss%select PIC1XFXXX %sda%sta\n\t\tDisplay data flash content.\n"
.LC22:
	.string	" k12 %ss%select PIC1XFXXX %sd%sump\n\t\tDump device content (INHX32 format).\n"
.LC23:
	.string	" k12 %ss%select PIC1XFXXX %sf%slash [n]\n\t\tDisplay all or n words of program flash content.\n"
.LC24:
	.string	" k12 %ss%select PIC1XFXXX %si%sd\n\t\tDisplay device identification.\n"
.LC25:
	.string	" k12 %ss%select PIC1XFXXX %so%ssccal\n\t\tDisplay oscillator calibration.\n"
.LC26:
	.string	" k12 %ss%select PIC1XFXXX %so%ssccal 0x0c1a\n\t\tRestore oscillator calibration as 0x0c1a.\n"
.LC27:
	.string	" k12 %ss%select PIC1XFXXX %sp%srogram [file.hex] [noblank]\n\t\tBlank and program file.hex or stdin to flash (INHX32 format).\n"
.LC28:
	.string	" k12 %ss%select PIC1XFXXX %sv%serify [file.hex]\n\t\tVerify file.hex or stdin in flash (INHX32 format).\n"
	.text
	.globl	usage_k12
	.type	usage_k12, @function
usage_k12:
.LFB43:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsi, %rbp	# msg, msg
	pushq	%rbx	#
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rdi, %rbx	# k, k
	movl	$.LC13, %edi	#,
	pushq	%r10	#
	.cfi_def_cfa_offset 32
	call	puts	#
	movl	$.LC14, %edi	#,
	call	puts	#
	testq	%rbp, %rbp	# msg
	je	.L24	#,
	movq	%rbp, %rdx	# msg,
	movl	$.LC8, %esi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
.L24:
	movq	%rbx, %rdx	# k,
	movl	$.LC2, %esi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	movl	$.LC15, %edi	#,
	call	puts	#
	movl	$.LC16, %ecx	#,
	movl	$.LC17, %edx	#,
	movl	$.LC18, %esi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	movl	$.LC16, %r9d	#,
	movl	$.LC17, %r8d	#,
	movl	$.LC19, %esi	#,
	movq	%r9, %rcx	#,
	movq	%r8, %rdx	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	movl	$.LC16, %r9d	#,
	movl	$.LC17, %r8d	#,
	movl	$.LC20, %esi	#,
	movq	%r9, %rcx	#,
	movq	%r8, %rdx	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	movl	$.LC16, %r9d	#,
	movl	$.LC17, %r8d	#,
	movl	$.LC21, %esi	#,
	movq	%r9, %rcx	#,
	movq	%r8, %rdx	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	movl	$.LC16, %r9d	#,
	movl	$.LC17, %r8d	#,
	movl	$.LC22, %esi	#,
	movq	%r9, %rcx	#,
	movq	%r8, %rdx	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	movl	$.LC16, %r9d	#,
	movl	$.LC17, %r8d	#,
	movl	$.LC23, %esi	#,
	movq	%r9, %rcx	#,
	movq	%r8, %rdx	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	movl	$.LC16, %r9d	#,
	movl	$.LC17, %r8d	#,
	movl	$.LC24, %esi	#,
	movq	%r9, %rcx	#,
	movq	%r8, %rdx	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	movl	$.LC16, %r9d	#,
	movl	$.LC17, %r8d	#,
	movl	$.LC25, %esi	#,
	movq	%r9, %rcx	#,
	movq	%r8, %rdx	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	movl	$.LC16, %r9d	#,
	movl	$.LC17, %r8d	#,
	movl	$.LC26, %esi	#,
	movq	%r9, %rcx	#,
	movq	%r8, %rdx	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	movl	$.LC16, %r9d	#,
	movl	$.LC17, %r8d	#,
	movl	$.LC27, %esi	#,
	movq	%r9, %rcx	#,
	movq	%r8, %rdx	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	movl	$.LC16, %r9d	#,
	movl	$.LC17, %r8d	#,
	movl	$.LC28, %esi	#,
	movq	%r8, %rdx	#,
	movq	%r9, %rcx	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	movl	$10, %edi	#,
	call	putchar	#
	xorl	%eax, %eax	#
	movl	$VERSION, %edx	#,
	movl	$.LC5, %esi	#,
	movl	$1, %edi	#,
	call	__printf_chk	#
	testq	%rbp, %rbp	# msg
	je	.L25	#,
	movl	$64, %esi	#,
	movq	%rbx, %rdi	# k,
	call	io_exit	#
.L25:
	popq	%r9	#
	.cfi_def_cfa_offset 24
	movq	%rbx, %rdi	# k,
	xorl	%esi, %esi	#
	popq	%rbx	#
	.cfi_def_cfa_offset 16
	popq	%rbp	#
	.cfi_def_cfa_offset 8
	jmp	io_exit	#
	.cfi_endproc
.LFE43:
	.size	usage_k12, .-usage_k12
	.section	.rodata.str1.1
.LC29:
	.string	"USAGE: k14 [SELECT DEVICE] [LVP] OPERATION [ARG]"
.LC30:
	.string	"14-bit word PIC10F/12F/16F operations.\n"
.LC31:
	.string	" k14 %ss%select\n\t\tDump supported devices.\n"
.LC32:
	.string	" k14 %ss%select 16F84 OPERATION [ARG]\n\t\tSelect device PIC16F84.\n"
.LC33:
	.string	" k14 %sl%svp OPERATION [ARG]\n\t\tLVP 32-bit key entry.\n"
.LC34:
	.string	" k14 %sb%slank\n\t\tBlank device (disable protection and bulk erase).\n"
.LC35:
	.string	" k14 %sc%sonfig\n\t\tDisplay device configuration.\n"
.LC36:
	.string	" k14 %sc%sonfig 0x3000\n\t\tRestore band-gap configuration as 0x3000.\n"
.LC37:
	.string	" k14 %sda%sta\n\t\tDisplay data EEPROM content.\n"
.LC38:
	.string	" k14 %sd%sump\n\t\tDump device content (INHX32 format).\n"
.LC39:
	.string	" k14 %ser%sase eeprom | flash | id | row [n]\n\t\tErase EEPROM, flash, id or flash at row for n rows.\n"
.LC40:
	.string	" k14 %sf%slash [n]\n\t\tDisplay all or n words of program flash content.\n"
.LC41:
	.string	" k14 %si%sd\n\t\tDisplay device identification.\n"
.LC42:
	.string	" k14 %so%ssccal\n\t\tDisplay oscillator calibration.\n"
.LC43:
	.string	" k14 %so%ssccal 0x343c\n\t\tRestore oscillator calibration as 0x343c.\n"
.LC44:
	.string	" k14 %sp%srogram [file.hex] [noblank]\n\t\tBlank and program file.hex or stdin to flash (INHX32 format).\n"
.LC45:
	.string	" k14 %sv%serify [file.hex]\n\t\tVerify file.hex or stdin in flash (INHX32 format).\n"
	.text
	.globl	usage_k14
	.type	usage_k14, @function
usage_k14:
.LFB44:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsi, %rbp	# msg, msg
	pushq	%rbx	#
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	pushq	%rbx	#
	.cfi_def_cfa_offset 32
	movq	%rdi, %rbx	# k, k
	movl	$.LC29, %edi	#,
	call	puts	#
	movl	$.LC30, %edi	#,
	call	puts	#
	testq	%rbp, %rbp	# msg
	je	.L34	#,
	movq	%rbp, %rdx	# msg,
	movl	$.LC8, %esi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
.L34:
	movq	%rbx, %rdx	# k,
	movl	$.LC2, %esi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	movl	$.LC15, %edi	#,
	call	puts	#
	movl	$.LC16, %ecx	#,
	movl	$.LC17, %edx	#,
	movl	$.LC31, %esi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	movl	$.LC16, %ecx	#,
	movl	$.LC17, %edx	#,
	movl	$.LC32, %esi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	movl	$.LC16, %ecx	#,
	movl	$.LC17, %edx	#,
	movl	$.LC33, %esi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	movl	$.LC16, %ecx	#,
	movl	$.LC17, %edx	#,
	movl	$.LC34, %esi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	movl	$.LC16, %ecx	#,
	movl	$.LC17, %edx	#,
	movl	$.LC35, %esi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	movl	$.LC16, %ecx	#,
	movl	$.LC17, %edx	#,
	movl	$.LC36, %esi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	movl	$.LC16, %ecx	#,
	movl	$.LC17, %edx	#,
	movl	$.LC37, %esi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	movl	$.LC16, %ecx	#,
	movl	$.LC17, %edx	#,
	movl	$.LC38, %esi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	movl	$.LC16, %ecx	#,
	movl	$.LC17, %edx	#,
	movl	$.LC39, %esi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	movl	$.LC16, %ecx	#,
	movl	$.LC17, %edx	#,
	movl	$.LC40, %esi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	movl	$.LC16, %ecx	#,
	movl	$.LC17, %edx	#,
	movl	$.LC41, %esi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	movl	$.LC16, %ecx	#,
	movl	$.LC17, %edx	#,
	movl	$.LC42, %esi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	movl	$.LC16, %ecx	#,
	movl	$.LC17, %edx	#,
	movl	$.LC43, %esi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	movl	$.LC16, %ecx	#,
	movl	$.LC17, %edx	#,
	movl	$.LC44, %esi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	movl	$.LC16, %ecx	#,
	movl	$.LC17, %edx	#,
	movl	$.LC45, %esi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	movl	$10, %edi	#,
	call	putchar	#
	xorl	%eax, %eax	#
	movl	$VERSION, %edx	#,
	movl	$.LC5, %esi	#,
	movl	$1, %edi	#,
	call	__printf_chk	#
	testq	%rbp, %rbp	# msg
	je	.L35	#,
	movl	$64, %esi	#,
	movq	%rbx, %rdi	# k,
	call	io_exit	#
.L35:
	popq	%r11	#
	.cfi_def_cfa_offset 24
	movq	%rbx, %rdi	# k,
	xorl	%esi, %esi	#
	popq	%rbx	#
	.cfi_def_cfa_offset 16
	popq	%rbp	#
	.cfi_def_cfa_offset 8
	jmp	io_exit	#
	.cfi_endproc
.LFE44:
	.size	usage_k14, .-usage_k14
	.section	.rodata.str1.1
.LC46:
	.string	"USAGE: k16 [SELECT DEVICE] [LVP|HVP] OPERATION [ARG]"
.LC47:
	.string	"16-bit word PIC18F operations.\n"
.LC48:
	.string	" k16 %ss%select\n\t\tDump supported devices.\n"
.LC49:
	.string	" k16 %ss%select 18LF2539 OPERATION [ARG]\n\t\tSelect device PIC18LF2539.\n"
.LC50:
	.string	" k16 %sl%svp OPERATION [ARG]\n\t\tLVP 32-bit key entry.\n"
.LC51:
	.string	" k16 %sh%svp OPERATION [ARG]\n\t\tHVP 32-bit key entry.\n"
.LC52:
	.string	" k16 %sb%slank\n\t\tBlank device (disable protection and bulk erase).\n"
.LC53:
	.string	" k16 %sc%sonfig\n\t\tDisplay device configuration.\n"
.LC54:
	.string	" k16 %sda%sta\n\t\tDisplay data EEPROM content.\n"
.LC55:
	.string	" k16 %sd%sump\n\t\tDump device content (INHX32 format).\n"
.LC56:
	.string	" k16 %ser%sase eeprom | flash | id | row [n]\n\t\tErase EEPROM, flash, id or flash at row for n rows.\n"
.LC57:
	.string	" k16 %sf%slash [n]\n\t\tDisplay all or n words of program flash content.\n"
.LC58:
	.string	" k16 %si%sd\n\t\tDisplay device identification.\n"
.LC59:
	.string	" k16 %sp%srogram [file.hex] [noblank]\n\t\tBlank and program file.hex or stdin to flash (INHX32 format).\n"
.LC60:
	.string	" k16 %sv%serify [file.hex]\n\t\tVerify file.hex or stdin in flash (INHX32 format).\n"
	.text
	.globl	usage_k16
	.type	usage_k16, @function
usage_k16:
.LFB45:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsi, %rbp	# msg, msg
	pushq	%rbx	#
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rdi, %rbx	# k, k
	movl	$.LC46, %edi	#,
	pushq	%rax	#
	.cfi_def_cfa_offset 32
	call	puts	#
	movl	$.LC47, %edi	#,
	call	puts	#
	testq	%rbp, %rbp	# msg
	je	.L44	#,
	movq	%rbp, %rdx	# msg,
	movl	$.LC8, %esi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
.L44:
	movq	%rbx, %rdx	# k,
	movl	$.LC2, %esi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	movl	$.LC15, %edi	#,
	call	puts	#
	movl	$.LC16, %ecx	#,
	movl	$.LC17, %edx	#,
	movl	$.LC48, %esi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	movl	$.LC16, %ecx	#,
	movl	$.LC17, %edx	#,
	movl	$.LC49, %esi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	movl	$.LC16, %ecx	#,
	movl	$.LC17, %edx	#,
	movl	$.LC50, %esi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	movl	$.LC16, %ecx	#,
	movl	$.LC17, %edx	#,
	movl	$.LC51, %esi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	movl	$.LC16, %ecx	#,
	movl	$.LC17, %edx	#,
	movl	$.LC52, %esi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	movl	$.LC16, %ecx	#,
	movl	$.LC17, %edx	#,
	movl	$.LC53, %esi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	movl	$.LC16, %ecx	#,
	movl	$.LC17, %edx	#,
	movl	$.LC54, %esi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	movl	$.LC16, %ecx	#,
	movl	$.LC17, %edx	#,
	movl	$.LC55, %esi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	movl	$.LC16, %ecx	#,
	movl	$.LC17, %edx	#,
	movl	$.LC56, %esi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	movl	$.LC16, %ecx	#,
	movl	$.LC17, %edx	#,
	movl	$.LC57, %esi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	movl	$.LC16, %ecx	#,
	movl	$.LC17, %edx	#,
	movl	$.LC58, %esi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	movl	$.LC16, %ecx	#,
	movl	$.LC17, %edx	#,
	movl	$.LC59, %esi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	movl	$.LC16, %ecx	#,
	movl	$.LC17, %edx	#,
	movl	$.LC60, %esi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	movl	$10, %edi	#,
	call	putchar	#
	xorl	%eax, %eax	#
	movl	$VERSION, %edx	#,
	movl	$.LC5, %esi	#,
	movl	$1, %edi	#,
	call	__printf_chk	#
	testq	%rbp, %rbp	# msg
	je	.L45	#,
	movl	$64, %esi	#,
	movq	%rbx, %rdi	# k,
	call	io_exit	#
.L45:
	popq	%rbp	#
	.cfi_def_cfa_offset 24
	movq	%rbx, %rdi	# k,
	xorl	%esi, %esi	#
	popq	%rbx	#
	.cfi_def_cfa_offset 16
	popq	%rbp	#
	.cfi_def_cfa_offset 8
	jmp	io_exit	#
	.cfi_endproc
.LFE45:
	.size	usage_k16, .-usage_k16
	.section	.rodata.str1.1
.LC61:
	.string	"USAGE: k24 [SELECT DEVICE] [LVP|HVP] OPERATION [ARG]"
.LC62:
	.string	"24-bit word PIC24/dsPIC operations.\n"
.LC63:
	.string	" k24 %ss%select\n\t\tDump supported devices.\n"
.LC64:
	.string	" k24 %ss%select 33EP128GP502 OPERATION [ARG]\n\t\tSelect device dsPIC33EP128GP502.\n"
.LC65:
	.string	" k24 %sl%svp OPERATION [ARG]\n\t\tLVP 32-bit key entry.\n"
.LC66:
	.string	" k24 %sh%svp OPERATION [ARG]\n\t\tHVP 32-bit key entry.\n"
.LC67:
	.string	" k24 %sb%slank\n\t\tBlank device (disable protection and bulk erase).\n"
.LC68:
	.string	" k24 %sc%sonfig\n\t\tDisplay device configuration.\n"
.LC69:
	.string	" k24 %sda%sta\n\t\tDisplay data EEPROM content.\n"
.LC70:
	.string	" k24 %sd%sump\n\t\tDump device content (INHX32 format).\n"
.LC71:
	.string	" k24 %sex%sec\n\t\tDisplay program executive content.\n"
.LC72:
	.string	" k24 %sf%slash [n]\n\t\tDisplay all or n words of program flash content.\n"
.LC73:
	.string	" k24 %si%sd\n\t\tDisplay device identification.\n"
.LC74:
	.string	" k24 %sp%srogram [file.hex] [noblank]\n\t\tBlank and program file.hex or stdin to flash (INHX32 format).\n"
.LC75:
	.string	" k24 %sv%serify [file.hex]\n\t\tVerify file.hex or stdin in flash (INHX32 format).\n"
	.text
	.globl	usage_k24
	.type	usage_k24, @function
usage_k24:
.LFB46:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsi, %rbp	# msg, msg
	pushq	%rbx	#
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rdi, %rbx	# k, k
	movl	$.LC61, %edi	#,
	pushq	%rax	#
	.cfi_def_cfa_offset 32
	call	puts	#
	movl	$.LC62, %edi	#,
	call	puts	#
	testq	%rbp, %rbp	# msg
	je	.L54	#,
	movq	%rbp, %rdx	# msg,
	movl	$.LC8, %esi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
.L54:
	movq	%rbx, %rdx	# k,
	movl	$.LC2, %esi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	movl	$.LC15, %edi	#,
	call	puts	#
	movl	$.LC16, %ecx	#,
	movl	$.LC17, %edx	#,
	movl	$.LC63, %esi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	movl	$.LC16, %ecx	#,
	movl	$.LC17, %edx	#,
	movl	$.LC64, %esi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	movl	$.LC16, %ecx	#,
	movl	$.LC17, %edx	#,
	movl	$.LC65, %esi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	movl	$.LC16, %ecx	#,
	movl	$.LC17, %edx	#,
	movl	$.LC66, %esi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	movl	$.LC16, %ecx	#,
	movl	$.LC17, %edx	#,
	movl	$.LC67, %esi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	movl	$.LC16, %ecx	#,
	movl	$.LC17, %edx	#,
	movl	$.LC68, %esi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	movl	$.LC16, %ecx	#,
	movl	$.LC17, %edx	#,
	movl	$.LC69, %esi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	movl	$.LC16, %ecx	#,
	movl	$.LC17, %edx	#,
	movl	$.LC70, %esi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	movl	$.LC16, %ecx	#,
	movl	$.LC17, %edx	#,
	movl	$.LC71, %esi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	movl	$.LC16, %ecx	#,
	movl	$.LC17, %edx	#,
	movl	$.LC72, %esi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	movl	$.LC16, %ecx	#,
	movl	$.LC17, %edx	#,
	movl	$.LC73, %esi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	movl	$.LC16, %ecx	#,
	movl	$.LC17, %edx	#,
	movl	$.LC74, %esi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	movl	$.LC16, %ecx	#,
	movl	$.LC17, %edx	#,
	movl	$.LC75, %esi	#,
	movl	$1, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	movl	$10, %edi	#,
	call	putchar	#
	xorl	%eax, %eax	#
	movl	$VERSION, %edx	#,
	movl	$.LC5, %esi	#,
	movl	$1, %edi	#,
	call	__printf_chk	#
	testq	%rbp, %rbp	# msg
	je	.L55	#,
	movl	$64, %esi	#,
	movq	%rbx, %rdi	# k,
	call	io_exit	#
.L55:
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
.LFE46:
	.size	usage_k24, .-usage_k24
	.section	.rodata.str1.1
.LC76:
	.string	"k12"
.LC77:
	.string	"k14"
.LC78:
	.string	"k16"
.LC79:
	.string	"k24"
	.text
	.globl	usage
	.type	usage, @function
usage:
.LFB47:
	.cfi_startproc
	pushq	%r12	#
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	movq	%rsi, %r12	# execname, execname
	pushq	%rbp	#
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movq	%rdx, %rbp	# msg, msg
	pushq	%rbx	#
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%rdi, %rbx	# k, k
	movl	$.LC76, %edi	#,
	call	strcmp	#
	testl	%eax, %eax	# D.6189
	jne	.L64	#,
	movq	%rbp, %rsi	# msg,
	movq	%rbx, %rdi	# k,
	call	usage_k12	#
.L64:
	movq	%r12, %rsi	# execname,
	movl	$.LC77, %edi	#,
	call	strcmp	#
	testl	%eax, %eax	# D.6192
	jne	.L65	#,
	movq	%rbp, %rsi	# msg,
	movq	%rbx, %rdi	# k,
	call	usage_k14	#
.L65:
	movq	%r12, %rsi	# execname,
	movl	$.LC78, %edi	#,
	call	strcmp	#
	testl	%eax, %eax	# D.6195
	jne	.L66	#,
	movq	%rbp, %rsi	# msg,
	movq	%rbx, %rdi	# k,
	call	usage_k16	#
.L66:
	movq	%r12, %rsi	# execname,
	movl	$.LC79, %edi	#,
	call	strcmp	#
	testl	%eax, %eax	# D.6198
	jne	.L67	#,
	movq	%rbp, %rsi	# msg,
	movq	%rbx, %rdi	# k,
	call	usage_k24	#
.L67:
	movq	%rbx, %rdi	# k,
	popq	%rbx	#
	.cfi_def_cfa_offset 24
	popq	%rbp	#
	.cfi_def_cfa_offset 16
	popq	%r12	#
	.cfi_def_cfa_offset 8
	jmp	usage_k8048	#
	.cfi_endproc
.LFE47:
	.size	usage, .-usage
	.section	.rodata.str1.1
.LC80:
	.string	"%s: fatal error: strdup failed\n"
.LC81:
	.string	"%s: fatal error: basename failed\n"
.LC82:
	.string	"k8048"
.LC83:
	.string	"ktest"
.LC84:
	.string	"%s: fatal error: setuid failed\n"
.LC85:
	.string	"kctrl"
.LC86:
	.string	"Missing arg"
.LC87:
	.string	"Too many args"
.LC88:
	.string	"RUN"
.LC89:
	.string	"STOP"
.LC90:
	.string	"RESTORE"
.LC91:
	.string	"Missing args"
.LC92:
	.string	"Invalid arg"
.LC93:
	.string	"VPP"
.LC94:
	.string	"PGC"
.LC95:
	.string	"PGD"
.LC96:
	.string	"PGM"
.LC97:
	.string	"Missing arg(s)"
.LC98:
	.string	"dspic"
.LC99:
	.string	"pic"
.LC100:
	.string	"Invalid arg [select]"
.LC101:
	.string	"Missing select"
.LC102:
	.string	"Invalid arg [lvp]"
.LC103:
	.string	"Invalid arg [hvp]"
.LC104:
	.string	"Too many args [blank]"
.LC105:
	.string	"Blank device"
.LC106:
	.string	"Too many args [config]"
.LC107:
	.string	"Too many args [data]"
.LC108:
	.string	"Too many args [dump]"
.LC109:
	.string	"Missing arg [erase]"
.LC110:
	.string	"Too many args [erase]"
.LC111:
	.string	"Erase id"
.LC112:
	.string	"Erase config"
.LC113:
	.string	"Erase EEPROM"
.LC114:
	.string	"Erase program flash"
.LC115:
	.string	"Invalid arg [erase]"
.LC116:
	.string	"Erase %u row(s) at row %u"
.LC117:
	.string	"Too many args [executive]"
.LC118:
	.string	"Too many args [eeprom]"
.LC119:
	.string	"Too many args [program flash]"
.LC120:
	.string	"Invalid arg [program flash]"
.LC121:
	.string	"Too many args [id]"
.LC122:
	.string	"Too many args [osccal]"
.LC123:
	.string	"Too many args [program]"
.LC124:
	.string	"Invalid arg [program]"
.LC125:
	.string	"-"
.LC126:
	.string	"Too many args [verify]"
.LC127:
	.string	"Unknown operation"
	.section	.text.startup,"ax",@progbits
	.globl	main
	.type	main, @function
main:
.LFB48:
	.cfi_startproc
	pushq	%r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movl	$784, %ecx	#, tmp225
	pushq	%r14	#
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13	#
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movq	%rsi, %r12	# argv, argv
	pushq	%rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movl	%edi, %ebp	# argc, argc
	pushq	%rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$4216, %rsp	#,
	.cfi_def_cfa_offset 4272
	leaq	1064(%rsp), %rbx	#, tmp222
	movq	%fs:40, %rax	#,
	movq	%rax, 4200(%rsp)	#, D.6809
	xorl	%eax, %eax	#
	movq	%rbx, %rdi	# tmp222, tmp223
	rep stosl
	movq	(%rsi), %rdi	# *argv_20(D),
	call	strdup	#
	testq	%rax, %rax	# execdup
	movq	%rax, %r14	#, execdup
	jne	.L70	#,
	movl	$.LC80, %esi	#,
	movl	$1, %edi	#,
	movl	$__func__.5790, %edx	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	movl	$71, %esi	#,
	movq	%rbx, %rdi	# tmp222,
	call	io_exit	#
.L70:
	movq	%r14, %rdi	# execdup,
	call	__xpg_basename	#
	testq	%rax, %rax	# execname
	movq	%rax, %rbx	#, execname
	jne	.L71	#,
	movl	$.LC81, %esi	#,
	movl	$1, %edi	#,
	movl	$__func__.5790, %edx	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	leaq	1064(%rsp), %rdi	#,
	movl	$71, %esi	#,
	call	io_exit	#
.L71:
	leaq	1064(%rsp), %rdi	#,
	movq	%rbx, %rsi	# execname,
	call	getconf	#
	movl	$.LC82, %esi	#,
	movq	%rbx, %rdi	# execname,
	call	strcmp	#
	testl	%eax, %eax	# D.5857
	jne	.L72	#,
	leaq	1064(%rsp), %rdi	#,
	call	usage_k8048	#
.L72:
	leaq	1064(%rsp), %rdi	#,
	call	io_open	#
	testl	%eax, %eax	# D.5860
	jns	.L73	#,
	movl	$.LC83, %esi	#,
	movq	%rbx, %rdi	# execname,
	call	strcmp	#
	testl	%eax, %eax	# D.5863
	jne	.L74	#,
	leaq	1064(%rsp), %rdi	#,
	call	io_error	#
	leaq	1064(%rsp), %rdi	#,
	movq	%rax, %rsi	# D.5866,
	call	usage_ktest	#
.L74:
	leaq	1064(%rsp), %rdi	#,
	call	io_error	#
	leaq	1064(%rsp), %rdi	#,
	movq	%rax, %rdx	# D.5867,
	movq	%rbx, %rsi	# execname,
	call	usage	#
.L73:
	xorl	%esi, %esi	#
	xorl	%edi, %edi	#
	movl	$-20, %edx	#,
	call	setpriority	#
	call	getuid	#
	movl	%eax, %r13d	#, D.5868
	call	geteuid	#
	cmpl	%eax, %r13d	# D.5869, D.5868
	je	.L76	#,
	call	getuid	#
	movl	%eax, %edi	# D.5872,
	call	setuid	#
	testl	%eax, %eax	# D.5873
	jns	.L76	#,
	movl	$.LC84, %esi	#,
	movl	$1, %edi	#,
	movl	$__func__.5790, %edx	#,
	xorl	%eax, %eax	#
	call	__printf_chk	#
	leaq	1064(%rsp), %rdi	#,
	movl	$71, %esi	#,
	call	io_exit	#
.L76:
	movl	$.LC85, %esi	#,
	movq	%rbx, %rdi	# execname,
	call	strcmp	#
	testl	%eax, %eax	# D.5876
	jne	.L78	#,
	cmpl	$1, %ebp	#, argc
	movl	$.LC86, %esi	#,
	jle	.L213	#,
.L79:
	cmpl	$2, %ebp	#, argc
	je	.L80	#,
	movl	$.LC87, %esi	#,
.L213:
	leaq	1064(%rsp), %rdi	#,
	call	usage_kctrl	#
.L80:
	movq	8(%r12), %r13	# MEM[(char * *)argv_20(D) + 8B], D.5885
	movl	$.LC88, %esi	#,
	movq	%r13, %rdi	# D.5885,
	call	strcasecmp	#
	testl	%eax, %eax	# D.5886
	jne	.L81	#,
	leaq	1064(%rsp), %rdi	#,
	movl	$1, %esi	#,
	call	io_close	#
	movl	$.LC88, %edi	#,
	jmp	.L214	#
.L81:
	movl	$.LC89, %esi	#,
	movq	%r13, %rdi	# D.5885,
	call	strcasecmp	#
	testl	%eax, %eax	# D.5890
	jne	.L83	#,
	leaq	1064(%rsp), %rdi	#,
	xorl	%esi, %esi	#
	call	io_close	#
	movl	$.LC89, %edi	#,
	jmp	.L214	#
.L83:
	movl	$.LC90, %esi	#,
	movq	%r13, %rdi	# D.5885,
	call	strcasecmp	#
	testl	%eax, %eax	# D.5894
	jne	.L82	#,
	leaq	1064(%rsp), %rdi	#,
	xorl	%esi, %esi	#
	call	io_set_vpp	#
	leaq	1064(%rsp), %rdi	#,
	movl	$10, %esi	#,
	call	io_usleep	#
	leaq	1064(%rsp), %rdi	#,
	movl	$1, %esi	#,
	call	io_close	#
	movl	$.LC90, %edi	#,
.L214:
	call	puts	#
.L82:
	leaq	1064(%rsp), %rdi	#,
	xorl	%esi, %esi	#
	call	io_exit	#
.L78:
	movl	$.LC83, %esi	#,
	movq	%rbx, %rdi	# execname,
	call	strcmp	#
	testl	%eax, %eax	# D.5897
	jne	.L84	#,
	cmpl	$2, %ebp	#, argc
	movl	$.LC91, %esi	#,
	jle	.L215	#,
.L85:
	cmpl	$3, %ebp	#, argc
	je	.L86	#,
	movl	$.LC87, %esi	#,
.L215:
	leaq	1064(%rsp), %rdi	#,
	call	usage_ktest	#
.L86:
	movq	16(%r12), %rdi	# MEM[(char * *)argv_20(D) + 16B], MEM[(char * *)argv_20(D) + 16B]
	xorl	%edx, %edx	#
	xorl	%esi, %esi	#
	call	strtol	#
	testl	%eax, %eax	# D.5907
	movq	%rax, %r13	#, D.5907
	jns	.L87	#,
	leaq	1064(%rsp), %rdi	#,
	movl	$.LC92, %esi	#,
	call	usage_ktest	#
.L87:
	movq	8(%r12), %r15	# MEM[(char * *)argv_20(D) + 8B], D.5885
	movl	$.LC93, %esi	#,
	movq	%r15, %rdi	# D.5885,
	call	strcasecmp	#
	testl	%eax, %eax	# D.5910
	jne	.L88	#,
	movl	%r13d, %edx	# D.5907,
	xorl	%esi, %esi	#
	jmp	.L216	#
.L88:
	movl	$.LC94, %esi	#,
	movq	%r15, %rdi	# D.5885,
	call	strcasecmp	#
	testl	%eax, %eax	# D.5914
	jne	.L90	#,
	movl	%r13d, %edx	# D.5907,
	movl	$1, %esi	#,
.L216:
	leaq	1064(%rsp), %rdi	#,
.L217:
	call	io_test0	#
	jmp	.L89	#
.L90:
	movl	$.LC95, %esi	#,
	movq	%r15, %rdi	# D.5885,
	call	strcasecmp	#
	testl	%eax, %eax	# D.5918
	jne	.L91	#,
	movl	%r13d, %edx	# D.5907,
	movl	$2, %esi	#,
	jmp	.L216	#
.L91:
	movl	$.LC96, %esi	#,
	movq	%r15, %rdi	# D.5885,
	call	strcasecmp	#
	testl	%eax, %eax	# D.5922
	leaq	1064(%rsp), %rcx	#, tmp381
	jne	.L92	#,
	movl	%r13d, %edx	# D.5907,
	movl	$3, %esi	#,
	movq	%rcx, %rdi	# tmp381,
	jmp	.L217	#
.L92:
	movb	(%r15), %al	# *D.5885_50, tmp257
	subl	$48, %eax	#, tmp257
	cmpb	$9, %al	#, tmp257
	ja	.L93	#,
	xorl	%edx, %edx	#
	xorl	%esi, %esi	#
	movq	%r15, %rdi	# D.5885,
	movq	%rcx, 16(%rsp)	#,
	call	strtol	#
	movq	16(%rsp), %rcx	#,
	decl	%eax	#
	cmpl	$4, %eax	#, tmp259
	movq	%rcx, %rdi	# tmp381, tmp385
	ja	.L93	#,
	movl	%r13d, %esi	# D.5907,
	jmp	*.L100(,%rax,8)	#
	.section	.rodata
	.align 8
	.align 4
.L100:
	.quad	.L95
	.quad	.L96
	.quad	.L97
	.quad	.L98
	.quad	.L99
	.section	.text.startup
.L95:
	call	io_test1	#
	jmp	.L89	#
.L96:
	call	io_test2	#
	jmp	.L89	#
.L97:
	call	io_test3	#
	jmp	.L89	#
.L98:
	call	io_test4	#
	jmp	.L89	#
.L99:
	call	io_test5	#
	jmp	.L89	#
.L93:
	movl	$.LC92, %esi	#,
	movq	%rcx, %rdi	# tmp381,
	call	usage_ktest	#
.L89:
	leaq	1064(%rsp), %rdi	#,
	xorl	%esi, %esi	#
	call	io_exit	#
.L84:
	leaq	1064(%rsp), %rdi	#,
	movq	%rbx, %rsi	# execname,
	call	pic_arch	#
	testl	%eax, %eax	# D.5933
	jne	.L101	#,
	leaq	1064(%rsp), %rdi	#,
	call	usage_k8048	#
.L101:
	cmpl	$1, %ebp	#, argc
	jg	.L102	#,
	leaq	1064(%rsp), %rdi	#,
	movl	$.LC97, %edx	#,
	movq	%rbx, %rsi	# execname,
	call	usage	#
.L102:
	movq	8(%r12), %rax	# MEM[(char * *)argv_20(D) + 8B], MEM[(char * *)argv_20(D) + 8B]
	movsbl	(%rax), %edi	# *D.5885_72, __res
	call	tolower	#
	cmpl	$115, %eax	#, __res
	jne	.L103	#,
	cmpl	$2, %ebp	#, argc
	jg	.L104	#,
	leaq	1064(%rsp), %rdi	#,
	call	pic_selector	#
	leaq	1064(%rsp), %rdi	#,
	xorl	%esi, %esi	#
	call	io_exit	#
.L104:
	movq	16(%r12), %rdi	# MEM[(char * *)argv_20(D) + 16B], MEM[(char * *)argv_20(D) + 16B]
	movl	$.LC98, %esi	#,
	call	mystrcasestr	#
	movq	16(%r12), %rdi	# MEM[(char * *)argv_20(D) + 16B], D.5906
	cmpq	%rdi, %rax	# D.5906, D.5964
	jne	.L105	#,
	jmp	.L227	#
.L105:
	movl	$.LC99, %esi	#,
	call	mystrcasestr	#
	movq	16(%r12), %rdi	# MEM[(char * *)argv_20(D) + 16B], D.5906
	cmpq	%rdi, %rax	# D.5906, D.5968
	jne	.L107	#,
.L227:
	movl	$1024, %edx	#,
	movq	%rax, %rsi	# D.5968,
	leaq	3112(%rsp), %rdi	#,
	jmp	.L218	#
.L107:
	xorl	%edx, %edx	#
	xorl	%esi, %esi	#
	call	strtol	#
	movq	%rax, %r13	#, D.5972
	leal	-10(%rax), %eax	#, tmp282
	cmpl	$23, %eax	#, tmp282
	jbe	.L108	#,
	leaq	1064(%rsp), %rdi	#,
	movl	$.LC100, %edx	#,
	movq	%rbx, %rsi	# execname,
	call	usage	#
.L108:
	cmpl	$33, %r13d	#, D.5972
	leaq	3112(%rsp), %rdi	#, tmp294
	je	.L171	#,
	cmpl	$30, %r13d	#, D.5972
	jne	.L109	#,
.L171:
	movl	$.LC98, %esi	#,
	call	strcpy	#
	movq	16(%r12), %rsi	# MEM[(char * *)argv_20(D) + 16B], MEM[(char * *)argv_20(D) + 16B]
	leaq	3117(%rsp), %rdi	#, tmp292
	movl	$1019, %edx	#,
	jmp	.L218	#
.L109:
	movl	$.LC99, %esi	#,
	call	strcpy	#
	movq	16(%r12), %rsi	# MEM[(char * *)argv_20(D) + 16B], MEM[(char * *)argv_20(D) + 16B]
	leaq	3115(%rsp), %rdi	#, tmp297
	movl	$1021, %edx	#,
.L218:
	subl	$2, %ebp	#, argc
	addq	$16, %r12	#, argv
	call	strncpy	#
	cmpl	$1, %ebp	#, argc
	movl	$.LC97, %edx	#,
	jle	.L219	#,
	jmp	.L111	#
.L103:
	movq	4192(%rsp), %rax	# k.pic, k.pic
	cmpl	$4095, (%rax)	#, D.5986_126->arch
	jne	.L111	#,
	movl	$.LC101, %edx	#,
.L219:
	leaq	1064(%rsp), %rdi	#,
	movq	%rbx, %rsi	# execname,
	call	usage	#
.L111:
	movq	8(%r12), %rax	# MEM[(char * *)argv_3 + 8B], MEM[(char * *)argv_3 + 8B]
	movsbl	(%rax), %edi	# *D.5885_129, __res
	call	tolower	#
	cmpl	$108, %eax	#, __res
	movq	4192(%rsp), %rdx	# k.pic, k.pic
	jne	.L112	#,
	cmpl	$4095, (%rdx)	#, D.5986_154->arch
	jne	.L113	#,
	leaq	1064(%rsp), %rdi	#,
	movl	$.LC102, %edx	#,
	movq	%rbx, %rsi	# execname,
	call	usage	#
.L113:
	movl	$2, 4140(%rsp)	#, k.key
	jmp	.L229	#
.L112:
	cmpl	$104, %eax	#, __res
	jne	.L115	#,
	movl	(%rdx), %eax	# D.5986_158->arch, D.6016
	cmpl	$16383, %eax	#, D.6016
	je	.L116	#,
	cmpl	$4095, %eax	#, D.6016
	je	.L116	#,
	incl	%eax	# D.6016
	jne	.L117	#,
.L116:
	leaq	1064(%rsp), %rdi	#,
	movl	$.LC103, %edx	#,
	movq	%rbx, %rsi	# execname,
	call	usage	#
.L117:
	movl	$1, 4140(%rsp)	#, k.key
.L229:
	decl	%ebp	# argc
	addq	$8, %r12	#, argv
	cmpl	$1, %ebp	#, argc
	jg	.L114	#,
	leaq	1064(%rsp), %rdi	#,
	movl	$.LC97, %edx	#,
	movq	%rbx, %rsi	# execname,
	call	usage	#
	jmp	.L114	#
.L115:
	xorl	%eax, %eax	# tmp387
	cmpl	$-1, (%rdx)	#, D.5986_167->arch
	sete	%al	#, tmp387
	addl	%eax, %eax	# tmp387
	movl	%eax, 4140(%rsp)	# tmp387, k.key
.L114:
	movq	8(%r12), %r15	# MEM[(char * *)argv_4 + 8B], D.5885
	movsbl	(%r15), %edi	# *D.5885_170, __res
	call	tolower	#
	movsbl	1(%r15), %edi	# MEM[(char *)D.5885_170 + 1B], __res
	movl	%eax, %r13d	#, __res
	call	tolower	#
	movl	%eax, %edx	#, __res
	leal	-98(%r13), %eax	#,
	leaq	1064(%rsp), %r13	#, tmp379
	cmpl	$20, %eax	#, tmp313
	ja	.L119	#,
	movq	%r13, %r15	# tmp379, tmp380
	jmp	*.L129(,%rax,8)	#
	.section	.rodata
	.align 8
	.align 4
.L129:
	.quad	.L120
	.quad	.L121
	.quad	.L122
	.quad	.L123
	.quad	.L124
	.quad	.L119
	.quad	.L119
	.quad	.L125
	.quad	.L119
	.quad	.L119
	.quad	.L119
	.quad	.L119
	.quad	.L119
	.quad	.L126
	.quad	.L127
	.quad	.L119
	.quad	.L119
	.quad	.L119
	.quad	.L119
	.quad	.L119
	.quad	.L128
	.section	.text.startup
.L120:
	cmpl	$2, %ebp	#, argc
	jle	.L130	#,
	movl	$.LC104, %edx	#,
	movq	%rbx, %rsi	# execname,
	movq	%r13, %rdi	# tmp379,
	call	usage	#
.L130:
	movl	$.LC105, %edi	#,
	call	areyousure	#
	testl	%eax, %eax	# D.6066
	je	.L131	#,
	leaq	1064(%rsp), %rdi	#,
	call	pic_blank	#
	jmp	.L131	#
.L121:
	cmpl	$3, %ebp	#, argc
	jle	.L132	#,
	movl	$.LC106, %edx	#,
	movq	%rbx, %rsi	# execname,
	movq	%r13, %rdi	# tmp379,
	call	usage	#
	jmp	.L133	#
.L132:
	cmpl	$2, %ebp	#, argc
	jne	.L133	#,
	movq	%r13, %rdi	# tmp380,
	call	pic_dumpconfig	#
	jmp	.L131	#
.L133:
	movq	16(%r12), %rdi	# MEM[(char * *)argv_4 + 16B], MEM[(char * *)argv_4 + 16B]
	xorl	%esi, %esi	#
	xorl	%edx, %edx	#
	call	strtoul	#
	leaq	1064(%rsp), %rdi	#,
	movzwl	%ax, %esi	# D.6074, D.6074
	call	pic_writebandgap	#
	jmp	.L131	#
.L122:
	cmpl	$97, %edx	#, __res
	jne	.L134	#,
	cmpl	$2, %ebp	#, argc
	jle	.L135	#,
	movl	$.LC107, %edx	#,
	movq	%rbx, %rsi	# execname,
	movq	%r13, %rdi	# tmp380,
.L221:
	call	usage	#
.L135:
	leaq	1064(%rsp), %rdi	#,
	call	pic_dumpdata	#
	jmp	.L131	#
.L134:
	cmpl	$2, %ebp	#, argc
	jle	.L136	#,
	movl	$.LC108, %edx	#,
	movq	%rbx, %rsi	# execname,
	movq	%r13, %rdi	# tmp380,
	call	usage	#
.L136:
	movq	%r15, %rdi	# tmp380,
	call	pic_dumpdevice	#
	jmp	.L131	#
.L123:
	cmpl	$114, %edx	#, __res
	jne	.L137	#,
	leaq	40(%rsp), %rdi	#, tmp328
	xorl	%eax, %eax	# tmp329
	movl	$256, %ecx	#, tmp330
	cmpl	$2, %ebp	#, argc
	movq	$0, 32(%rsp)	#, endptr
	movl	$.LC109, %edx	#,
	rep stosl
	jle	.L222	#,
.L138:
	cmpl	$4, %ebp	#, argc
	jle	.L139	#,
	movl	$.LC110, %edx	#,
.L222:
	leaq	1064(%rsp), %rdi	#,
	movq	%rbx, %rsi	# execname,
	call	usage	#
.L139:
	movq	16(%r12), %r13	# MEM[(char * *)argv_4 + 16B], D.5906
	movsbl	0(%r13), %edi	# *D.5906_233, __res
	call	tolower	#
	cmpl	$102, %eax	#, __res
	leaq	40(%rsp), %rdi	#, tmp386
	je	.L143	#,
	jg	.L145	#,
	cmpl	$99, %eax	#, __res
	je	.L141	#,
	cmpl	$101, %eax	#, __res
	jne	.L140	#,
	jmp	.L142	#
.L145:
	cmpl	$105, %eax	#, __res
	je	.L144	#,
	cmpl	$117, %eax	#, __res
	jne	.L140	#,
.L144:
	movl	$1024, %edx	#,
	movl	$.LC111, %esi	#,
	movl	$1, %r15d	#, nrows
	call	strncpy	#
	orl	$-1, %r13d	#, row
	jmp	.L146	#
.L141:
	movl	$1024, %edx	#,
	movl	$.LC112, %esi	#,
	movl	$1, %r15d	#, nrows
	call	strncpy	#
	movl	$-2, %r13d	#, row
	jmp	.L146	#
.L142:
	movl	$1024, %edx	#,
	movl	$.LC113, %esi	#,
	movl	$1, %r15d	#, nrows
	call	strncpy	#
	movl	$-3, %r13d	#, row
	jmp	.L146	#
.L143:
	movl	$1024, %edx	#,
	movl	$.LC114, %esi	#,
	orl	$-1, %r15d	#, nrows
	call	strncpy	#
	xorl	%r13d, %r13d	# row
	jmp	.L146	#
.L140:
	leaq	32(%rsp), %rsi	#,
	xorl	%edx, %edx	#
	movq	%r13, %rdi	# D.5906,
	call	strtoul	#
	movq	16(%r12), %rdx	# MEM[(char * *)argv_4 + 16B],
	cmpq	%rdx, 32(%rsp)	#, endptr
	movl	%eax, %r13d	#, row
	movq	%rax, 24(%rsp)	#, %sfp
	jne	.L147	#,
	leaq	1064(%rsp), %rdi	#,
	movl	$.LC115, %edx	#,
	movq	%rbx, %rsi	# execname,
	call	usage	#
.L147:
	cmpl	$4, %ebp	#, argc
	movl	$1, %r15d	#, nrows
	jne	.L148	#,
	movq	24(%r12), %rdi	# MEM[(char * *)argv_4 + 24B], MEM[(char * *)argv_4 + 24B]
	xorl	%edx, %edx	#
	xorl	%esi, %esi	#
	call	strtoul	#
	testl	%eax, %eax	# D.6119
	movl	%eax, %r15d	# D.6119, nrows
	jne	.L148	#,
	leaq	1064(%rsp), %rdi	#,
	movl	$.LC115, %edx	#,
	movq	%rbx, %rsi	# execname,
	call	usage	#
.L148:
	movl	24(%rsp), %eax	# %sfp,
	leaq	40(%rsp), %rdi	#,
	movl	%r15d, %r9d	# nrows,
	movl	$.LC116, %r8d	#,
	movl	$1024, %ecx	#,
	movl	$1, %edx	#,
	movl	$1024, %esi	#,
	movl	%eax, (%rsp)	#,
	xorl	%eax, %eax	#
	call	__snprintf_chk	#
.L146:
	leaq	40(%rsp), %rdi	#,
	call	areyousure	#
	testl	%eax, %eax	# D.6122
	je	.L131	#,
	leaq	1064(%rsp), %rdi	#,
	movl	%r15d, %edx	# nrows,
	movl	%r13d, %esi	# row,
	call	pic_erase	#
	jmp	.L131	#
.L137:
	cmpl	$120, %edx	#, __res
	jne	.L150	#,
	cmpl	$2, %ebp	#, argc
	jle	.L151	#,
	leaq	1064(%rsp), %rdi	#,
	movl	$.LC117, %edx	#,
	movq	%rbx, %rsi	# execname,
	call	usage	#
.L151:
	leaq	1064(%rsp), %rdi	#,
	call	pic_dumpexec	#
	jmp	.L131	#
.L150:
	cmpl	$2, %ebp	#, argc
	jle	.L135	#,
	movl	$.LC118, %edx	#,
	movq	%rbx, %rsi	# execname,
	leaq	1064(%rsp), %rdi	#,
	jmp	.L221	#
.L124:
	cmpl	$3, %ebp	#, argc
	jle	.L152	#,
	movl	$.LC119, %edx	#,
	movq	%rbx, %rsi	# execname,
	movq	%r13, %rdi	# tmp379,
	call	usage	#
	orl	$-1, %ebp	#, words
	jmp	.L153	#
.L152:
	movl	$-1, %ebp	#, words
	jne	.L153	#,
	movq	16(%r12), %rdi	# MEM[(char * *)argv_4 + 16B], MEM[(char * *)argv_4 + 16B]
	xorl	%edx, %edx	#
	xorl	%esi, %esi	#
	call	strtoul	#
	testl	%eax, %eax	# D.6137
	movl	%eax, %ebp	# D.6137, words
	jne	.L153	#,
	leaq	1064(%rsp), %rdi	#,
	movl	$.LC120, %edx	#,
	movq	%rbx, %rsi	# execname,
	call	usage	#
.L153:
	leaq	1064(%rsp), %rdi	#,
	movl	%ebp, %esi	# words,
	call	pic_dumpprogram	#
	jmp	.L131	#
.L125:
	cmpl	$2, %ebp	#, argc
	jle	.L154	#,
	movl	$.LC121, %edx	#,
	movq	%rbx, %rsi	# execname,
	movq	%r13, %rdi	# tmp379,
	call	usage	#
.L154:
	movq	%r13, %rdi	# tmp379,
	call	pic_dumpdeviceid	#
	jmp	.L131	#
.L126:
	cmpl	$3, %ebp	#, argc
	jle	.L155	#,
	movl	$.LC122, %edx	#,
	movq	%rbx, %rsi	# execname,
	movq	%r13, %rdi	# tmp379,
	call	usage	#
	jmp	.L156	#
.L155:
	cmpl	$2, %ebp	#, argc
	jne	.L156	#,
	movq	%r13, %rdi	# tmp380,
	call	pic_dumposccal	#
	jmp	.L131	#
.L156:
	movq	16(%r12), %rdi	# MEM[(char * *)argv_4 + 16B], MEM[(char * *)argv_4 + 16B]
	xorl	%esi, %esi	#
	xorl	%edx, %edx	#
	call	strtoul	#
	leaq	1064(%rsp), %rdi	#,
	movzwl	%ax, %esi	# D.6147, D.6147
	call	pic_writeosccal	#
	jmp	.L131	#
.L127:
	cmpl	$4, %ebp	#, argc
	jle	.L157	#,
	movl	$.LC123, %edx	#,
	movq	%rbx, %rsi	# execname,
	movq	%r13, %rdi	# tmp379,
	jmp	.L226	#
.L157:
	jne	.L159	#,
	movq	24(%r12), %rax	# MEM[(char * *)argv_4 + 24B], MEM[(char * *)argv_4 + 24B]
	movb	(%rax), %al	# *D.6118_286, *D.6118_286
	cmpb	$78, %al	#, *D.6118_286
	je	.L161	#,
	jg	.L163	#,
	cmpb	$48, %al	#, *D.6118_286
	je	.L161	#,
	cmpb	$49, %al	#, *D.6118_286
	jmp	.L223	#
.L163:
	cmpb	$110, %al	#, *D.6118_286
	je	.L161	#,
	cmpb	$121, %al	#, *D.6118_286
	je	.L169	#,
	cmpb	$89, %al	#, *D.6118_286
.L223:
	je	.L169	#,
	leaq	1064(%rsp), %rdi	#,
	movl	$.LC124, %edx	#,
	movq	%rbx, %rsi	# execname,
.L226:
	call	usage	#
	jmp	.L169	#
.L159:
	cmpl	$2, %ebp	#, argc
	movl	$1, %edx	#,
	jg	.L158	#,
	movl	$.LC125, %esi	#,
	jmp	.L224	#
.L158:
	movq	16(%r12), %rsi	# MEM[(char * *)argv_4 + 16B], MEM[(char * *)argv_4 + 16B]
.L224:
	leaq	1064(%rsp), %rdi	#,
	call	pic_program	#
	jmp	.L131	#
.L128:
	cmpl	$3, %ebp	#, argc
	jle	.L164	#,
	movl	$.LC126, %edx	#,
	movq	%rbx, %rsi	# execname,
	movq	%r13, %rdi	# tmp379,
	call	usage	#
	jmp	.L165	#
.L164:
	je	.L165	#,
	movl	$.LC125, %esi	#,
	movq	%r13, %rdi	# tmp380,
	jmp	.L225	#
.L165:
	movq	16(%r12), %rsi	# MEM[(char * *)argv_4 + 16B], MEM[(char * *)argv_4 + 16B]
	leaq	1064(%rsp), %rdi	#,
.L225:
	call	pic_verify	#
	jmp	.L131	#
.L119:
	movl	$.LC127, %edx	#,
	movq	%rbx, %rsi	# execname,
	movq	%r13, %rdi	# tmp379,
	call	usage	#
.L131:
	movq	%r14, %rdi	# execdup,
	call	free	#
	leaq	1064(%rsp), %rdi	#,
	xorl	%esi, %esi	#
	call	io_exit	#
	xorl	%eax, %eax	#
	movq	4200(%rsp), %rdx	# D.6809,
	xorq	%fs:40, %rdx	#,
	je	.L166	#,
	jmp	.L211	#
.L161:
	xorl	%edx, %edx	# blank
	jmp	.L158	#
.L169:
	movl	$1, %edx	#, blank
	jmp	.L158	#
.L211:
	call	__stack_chk_fail	#
.L166:
	addq	$4216, %rsp	#,
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
.LFE48:
	.size	main, .-main
	.globl	VERSION
	.section	.rodata
	.align 8
	.type	VERSION, @object
	.size	VERSION, 9
VERSION:
	.string	"2.18-dev"
	.type	__func__.5790, @object
	.size	__func__.5790, 5
__func__.5790:
	.string	"main"
	.ident	"GCC: (Ubuntu/Linaro 4.7.2-2ubuntu1) 4.7.2"
	.section	.note.GNU-stack,"",@progbits
