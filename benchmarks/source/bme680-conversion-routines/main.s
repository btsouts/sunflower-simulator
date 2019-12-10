	.file	"main.c"
	.option nopic
# GNU C17 (GCC) version 8.2.0 (riscv32-elf)
#	compiled by GNU C version 5.4.0 20160609, GMP version 6.1.0, MPFR version 3.1.4, MPC version 1.0.3, isl version none
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: 
# -I /home/billtsou/Desktop/UPP/sunflower-simulator/tools/riscv/include
# -iprefix /home/billtsou/Desktop/UPP/sunflower-simulator/sunflower-toolchain/tools/riscv/bin/../lib/gcc/riscv32-elf/8.2.0/
# -D M32 main.c -march=rv32ifd -mabi=ilp32d -auxbase-strip main.s -g -O0
# -Wall -fverbose-asm
# options enabled:  -faggressive-loop-optimizations -fauto-inc-dec
# -fchkp-check-incomplete-type -fchkp-check-read -fchkp-check-write
# -fchkp-instrument-calls -fchkp-narrow-bounds -fchkp-optimize
# -fchkp-store-bounds -fchkp-use-static-bounds
# -fchkp-use-static-const-bounds -fchkp-use-wrappers -fcommon
# -fdelete-null-pointer-checks -fearly-inlining
# -feliminate-unused-debug-types -ffp-int-builtin-inexact -ffunction-cse
# -fgcse-lm -fgnu-runtime -fgnu-unique -fident -finline-atomics
# -fira-hoist-pressure -fira-share-save-slots -fira-share-spill-slots
# -fivopts -fkeep-static-consts -fleading-underscore -flifetime-dse
# -flto-odr-type-merging -fmath-errno -fmerge-debug-strings -fpeephole
# -fplt -fprefetch-loop-arrays -freg-struct-return
# -fsched-critical-path-heuristic -fsched-dep-count-heuristic
# -fsched-group-heuristic -fsched-interblock -fsched-last-insn-heuristic
# -fsched-rank-heuristic -fsched-spec -fsched-spec-insn-heuristic
# -fsched-stalled-insns-dep -fschedule-fusion -fsemantic-interposition
# -fshow-column -fshrink-wrap-separate -fsigned-zeros
# -fsplit-ivs-in-unroller -fssa-backprop -fstdarg-opt
# -fstrict-volatile-bitfields -fsync-libcalls -ftrapping-math
# -ftree-forwprop -ftree-loop-if-convert -ftree-loop-im -ftree-loop-ivcanon
# -ftree-loop-optimize -ftree-parallelize-loops= -ftree-phiprop
# -ftree-reassoc -ftree-scev-cprop -funit-at-a-time -fverbose-asm
# -fzero-initialized-in-bss -mexplicit-relocs -mfdiv -mplt -mstrict-align

	.text
.Ltext0:
	.globl	coeff_array
	.bss
	.align	2
	.type	coeff_array, @object
	.size	coeff_array, 41
coeff_array:
	.zero	41
	.comm	dev,92,4
	.globl	T
	.section	.sdata,"aw"
	.align	2
	.type	T, @object
	.size	T, 4
T:
	.word	495616
	.globl	H
	.align	2
	.type	H, @object
	.size	H, 4
H:
	.word	17152
	.globl	P
	.align	2
	.type	P, @object
	.size	P, 4
P:
	.word	389120
	.section	.rodata
	.align	2
.LC0:
	.string	"Starting conversion. Sizeof(dev) is %d, 0x%X\n"
	.align	2
.LC1:
	.string	"\nTemperature is %f"
	.text
	.align	2
	.globl	main
	.type	main, @function
main:
.LFB3:
	.file 1 "main.c"
	.loc 1 31 1
	addi	sp,sp,-32	#,,
.LCFI0:
	sw	ra,28(sp)	#,
	sw	s0,24(sp)	#,
.LCFI1:
	addi	s0,sp,32	#,,
.LCFI2:
# main.c:33: printf("Starting conversion. Sizeof(dev) is %d, 0x%X\n",sizeof(struct bme680_dev),sizeof(struct bme680_dev));
	.loc 1 33 1
	li	a2,92		#,
	li	a1,92		#,
	lui	a5,%hi(.LC0)	# tmp77,
	addi	a0,a5,%lo(.LC0)	#, tmp77,
	call	printf_		#
# main.c:36: bme680_init(&dev);
	.loc 1 36 1
	lui	a5,%hi(dev)	# tmp78,
	addi	a0,a5,%lo(dev)	#, tmp78,
	call	bme680_init		#
# main.c:37: get_calib_data(&dev);
	.loc 1 37 1
	lui	a5,%hi(dev)	# tmp79,
	addi	a0,a5,%lo(dev)	#, tmp79,
	call	get_calib_data		#
# main.c:39: printf("\nTemperature is %f",calc_temperature(T, &dev));
	.loc 1 39 30
	lui	a5,%hi(T)	# tmp80,
	lw	a4,%lo(T)(a5)		# T.0_1, T
	lui	a5,%hi(dev)	# tmp81,
	addi	a1,a5,%lo(dev)	#, tmp81,
	mv	a0,a4	#, T.0_1
	call	calc_temperature		#
	fmv.s	fa5,fa0	# _2,
# main.c:39: printf("\nTemperature is %f",calc_temperature(T, &dev));
	.loc 1 39 1
	fcvt.d.s	fa5,fa5	# _3, _2
	fsd	fa5,-24(s0)	# _3, %sfp
	lw	a2,-24(s0)		#, %sfp
	lw	a3,-20(s0)		#, %sfp
	lui	a5,%hi(.LC1)	# tmp82,
	addi	a0,a5,%lo(.LC1)	#, tmp82,
	call	printf_		#
# main.c:43: return 0;
	.loc 1 43 8
	li	a5,0		# _10,
# main.c:44: }
	.loc 1 44 1
	mv	a0,a5	#, <retval>
	lw	ra,28(sp)		#,
.LCFI3:
	lw	s0,24(sp)		#,
.LCFI4:
	addi	sp,sp,32	#,,
.LCFI5:
	jr	ra		#
.LFE3:
	.size	main, .-main
	.section	.debug_frame,"",@progbits
.Lframe0:
	.4byte	.LECIE0-.LSCIE0
.LSCIE0:
	.4byte	0xffffffff
	.byte	0x3
	.string	""
	.byte	0x1
	.byte	0x7c
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0
	.align	2
.LECIE0:
.LSFDE0:
	.4byte	.LEFDE0-.LASFDE0
.LASFDE0:
	.4byte	.Lframe0
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x4
	.4byte	.LCFI0-.LFB3
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.4byte	.LCFI1-.LCFI0
	.byte	0x81
	.byte	0x1
	.byte	0x88
	.byte	0x2
	.byte	0x4
	.4byte	.LCFI2-.LCFI1
	.byte	0xc
	.byte	0x8
	.byte	0
	.byte	0x4
	.4byte	.LCFI3-.LCFI2
	.byte	0xc1
	.byte	0x4
	.4byte	.LCFI4-.LCFI3
	.byte	0xc8
	.byte	0x4
	.4byte	.LCFI5-.LCFI4
	.byte	0xd
	.byte	0x2
	.align	2
.LEFDE0:
	.text
.Letext0:
	.file 2 "/home/billtsou/Desktop/UPP/sunflower-simulator/sunflower-toolchain/tools/riscv/riscv32-elf/sys-include/machine/_default_types.h"
	.file 3 "/home/billtsou/Desktop/UPP/sunflower-simulator/sunflower-toolchain/tools/riscv/riscv32-elf/sys-include/sys/lock.h"
	.file 4 "/home/billtsou/Desktop/UPP/sunflower-simulator/sunflower-toolchain/tools/riscv/riscv32-elf/sys-include/sys/_types.h"
	.file 5 "/home/billtsou/Desktop/UPP/sunflower-simulator/sunflower-toolchain/tools/riscv/lib/gcc/riscv32-elf/8.2.0/include/stddef.h"
	.file 6 "/home/billtsou/Desktop/UPP/sunflower-simulator/sunflower-toolchain/tools/riscv/riscv32-elf/sys-include/sys/reent.h"
	.file 7 "/home/billtsou/Desktop/UPP/sunflower-simulator/sunflower-toolchain/tools/riscv/riscv32-elf/sys-include/sys/_stdint.h"
	.file 8 "/home/billtsou/Desktop/UPP/sunflower-simulator/sunflower-toolchain/tools/riscv/riscv32-elf/sys-include/stdlib.h"
	.file 9 "BME680_driver_patched/bme680_defs.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xda3
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF193
	.byte	0xc
	.4byte	.LASF194
	.4byte	.LASF195
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.byte	0x2
	.4byte	.LASF0
	.byte	0x2
	.byte	0x29
	.byte	0x17
	.4byte	0x31
	.byte	0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.byte	0x2
	.4byte	.LASF1
	.byte	0x2
	.byte	0x2b
	.byte	0x18
	.4byte	0x44
	.byte	0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.byte	0x2
	.4byte	.LASF4
	.byte	0x2
	.byte	0x37
	.byte	0x18
	.4byte	0x57
	.byte	0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF5
	.byte	0x2
	.4byte	.LASF6
	.byte	0x2
	.byte	0x39
	.byte	0x19
	.4byte	0x6a
	.byte	0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF7
	.byte	0x2
	.4byte	.LASF8
	.byte	0x2
	.byte	0x4d
	.byte	0x18
	.4byte	0x7d
	.byte	0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF9
	.byte	0x2
	.4byte	.LASF10
	.byte	0x2
	.byte	0x4f
	.byte	0x19
	.4byte	0x90
	.byte	0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.byte	0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF12
	.byte	0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF13
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.byte	0x3
	.byte	0x10
	.byte	0x4
	.4byte	.LASF15
	.byte	0x2
	.4byte	.LASF16
	.byte	0x3
	.byte	0xc
	.byte	0xd
	.4byte	0xa5
	.byte	0x2
	.4byte	.LASF17
	.byte	0x4
	.byte	0x2c
	.byte	0xe
	.4byte	0x7d
	.byte	0x2
	.4byte	.LASF18
	.byte	0x4
	.byte	0x72
	.byte	0xe
	.4byte	0x7d
	.byte	0x2
	.4byte	.LASF19
	.byte	0x4
	.byte	0x91
	.byte	0x17
	.4byte	0xa5
	.byte	0x5
	.4byte	.LASF20
	.byte	0x5
	.2byte	0x165
	.byte	0x17
	.4byte	0xac
	.byte	0x6
	.byte	0x4
	.byte	0x4
	.byte	0xa6
	.byte	0x3
	.4byte	0x119
	.byte	0x7
	.4byte	.LASF21
	.byte	0x4
	.byte	0xa8
	.byte	0xc
	.4byte	0xea
	.byte	0x7
	.4byte	.LASF22
	.byte	0x4
	.byte	0xa9
	.byte	0x13
	.4byte	0x119
	.byte	0
	.byte	0x8
	.4byte	0x44
	.4byte	0x129
	.byte	0x9
	.4byte	0xac
	.byte	0x3
	.byte	0
	.byte	0xa
	.byte	0x8
	.byte	0x4
	.byte	0xa3
	.byte	0x9
	.4byte	0x14d
	.byte	0xb
	.4byte	.LASF23
	.byte	0x4
	.byte	0xa5
	.byte	0x7
	.4byte	0xa5
	.byte	0
	.byte	0xb
	.4byte	.LASF24
	.byte	0x4
	.byte	0xaa
	.byte	0x5
	.4byte	0xf7
	.byte	0x4
	.byte	0
	.byte	0x2
	.4byte	.LASF25
	.byte	0x4
	.byte	0xab
	.byte	0x3
	.4byte	0x129
	.byte	0x2
	.4byte	.LASF26
	.byte	0x4
	.byte	0xaf
	.byte	0x1b
	.4byte	0xba
	.byte	0xc
	.byte	0x4
	.byte	0x2
	.4byte	.LASF27
	.byte	0x6
	.byte	0x16
	.byte	0x19
	.4byte	0x90
	.byte	0xd
	.4byte	.LASF32
	.byte	0x18
	.byte	0x6
	.byte	0x2f
	.byte	0x8
	.4byte	0x1cd
	.byte	0xb
	.4byte	.LASF28
	.byte	0x6
	.byte	0x31
	.byte	0x13
	.4byte	0x1cd
	.byte	0
	.byte	0xe
	.string	"_k"
	.byte	0x6
	.byte	0x32
	.byte	0x7
	.4byte	0xa5
	.byte	0x4
	.byte	0xb
	.4byte	.LASF29
	.byte	0x6
	.byte	0x32
	.byte	0xb
	.4byte	0xa5
	.byte	0x8
	.byte	0xb
	.4byte	.LASF30
	.byte	0x6
	.byte	0x32
	.byte	0x14
	.4byte	0xa5
	.byte	0xc
	.byte	0xb
	.4byte	.LASF31
	.byte	0x6
	.byte	0x32
	.byte	0x1b
	.4byte	0xa5
	.byte	0x10
	.byte	0xe
	.string	"_x"
	.byte	0x6
	.byte	0x33
	.byte	0xb
	.4byte	0x1d3
	.byte	0x14
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x173
	.byte	0x8
	.4byte	0x167
	.4byte	0x1e3
	.byte	0x9
	.4byte	0xac
	.byte	0
	.byte	0
	.byte	0xd
	.4byte	.LASF33
	.byte	0x24
	.byte	0x6
	.byte	0x37
	.byte	0x8
	.4byte	0x266
	.byte	0xb
	.4byte	.LASF34
	.byte	0x6
	.byte	0x39
	.byte	0x9
	.4byte	0xa5
	.byte	0
	.byte	0xb
	.4byte	.LASF35
	.byte	0x6
	.byte	0x3a
	.byte	0x9
	.4byte	0xa5
	.byte	0x4
	.byte	0xb
	.4byte	.LASF36
	.byte	0x6
	.byte	0x3b
	.byte	0x9
	.4byte	0xa5
	.byte	0x8
	.byte	0xb
	.4byte	.LASF37
	.byte	0x6
	.byte	0x3c
	.byte	0x9
	.4byte	0xa5
	.byte	0xc
	.byte	0xb
	.4byte	.LASF38
	.byte	0x6
	.byte	0x3d
	.byte	0x9
	.4byte	0xa5
	.byte	0x10
	.byte	0xb
	.4byte	.LASF39
	.byte	0x6
	.byte	0x3e
	.byte	0x9
	.4byte	0xa5
	.byte	0x14
	.byte	0xb
	.4byte	.LASF40
	.byte	0x6
	.byte	0x3f
	.byte	0x9
	.4byte	0xa5
	.byte	0x18
	.byte	0xb
	.4byte	.LASF41
	.byte	0x6
	.byte	0x40
	.byte	0x9
	.4byte	0xa5
	.byte	0x1c
	.byte	0xb
	.4byte	.LASF42
	.byte	0x6
	.byte	0x41
	.byte	0x9
	.4byte	0xa5
	.byte	0x20
	.byte	0
	.byte	0x10
	.4byte	.LASF43
	.2byte	0x108
	.byte	0x6
	.byte	0x4a
	.byte	0x8
	.4byte	0x2ab
	.byte	0xb
	.4byte	.LASF44
	.byte	0x6
	.byte	0x4b
	.byte	0xa
	.4byte	0x2ab
	.byte	0
	.byte	0xb
	.4byte	.LASF45
	.byte	0x6
	.byte	0x4c
	.byte	0x9
	.4byte	0x2ab
	.byte	0x80
	.byte	0x11
	.4byte	.LASF46
	.byte	0x6
	.byte	0x4e
	.byte	0xa
	.4byte	0x167
	.2byte	0x100
	.byte	0x11
	.4byte	.LASF47
	.byte	0x6
	.byte	0x51
	.byte	0xa
	.4byte	0x167
	.2byte	0x104
	.byte	0
	.byte	0x8
	.4byte	0x165
	.4byte	0x2bb
	.byte	0x9
	.4byte	0xac
	.byte	0x1f
	.byte	0
	.byte	0x10
	.4byte	.LASF48
	.2byte	0x190
	.byte	0x6
	.byte	0x5d
	.byte	0x8
	.4byte	0x2fe
	.byte	0xb
	.4byte	.LASF28
	.byte	0x6
	.byte	0x5e
	.byte	0x12
	.4byte	0x2fe
	.byte	0
	.byte	0xb
	.4byte	.LASF49
	.byte	0x6
	.byte	0x5f
	.byte	0x6
	.4byte	0xa5
	.byte	0x4
	.byte	0xb
	.4byte	.LASF50
	.byte	0x6
	.byte	0x61
	.byte	0x9
	.4byte	0x304
	.byte	0x8
	.byte	0xb
	.4byte	.LASF43
	.byte	0x6
	.byte	0x62
	.byte	0x1e
	.4byte	0x266
	.byte	0x88
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x2bb
	.byte	0x8
	.4byte	0x314
	.4byte	0x314
	.byte	0x9
	.4byte	0xac
	.byte	0x1f
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x31a
	.byte	0x12
	.byte	0xd
	.4byte	.LASF51
	.byte	0x8
	.byte	0x6
	.byte	0x75
	.byte	0x8
	.4byte	0x343
	.byte	0xb
	.4byte	.LASF52
	.byte	0x6
	.byte	0x76
	.byte	0x11
	.4byte	0x343
	.byte	0
	.byte	0xb
	.4byte	.LASF53
	.byte	0x6
	.byte	0x77
	.byte	0x6
	.4byte	0xa5
	.byte	0x4
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x44
	.byte	0xd
	.4byte	.LASF54
	.byte	0x68
	.byte	0x6
	.byte	0xb5
	.byte	0x8
	.4byte	0x48c
	.byte	0xe
	.string	"_p"
	.byte	0x6
	.byte	0xb6
	.byte	0x12
	.4byte	0x343
	.byte	0
	.byte	0xe
	.string	"_r"
	.byte	0x6
	.byte	0xb7
	.byte	0x7
	.4byte	0xa5
	.byte	0x4
	.byte	0xe
	.string	"_w"
	.byte	0x6
	.byte	0xb8
	.byte	0x7
	.4byte	0xa5
	.byte	0x8
	.byte	0xb
	.4byte	.LASF55
	.byte	0x6
	.byte	0xb9
	.byte	0x9
	.4byte	0x57
	.byte	0xc
	.byte	0xb
	.4byte	.LASF56
	.byte	0x6
	.byte	0xba
	.byte	0x9
	.4byte	0x57
	.byte	0xe
	.byte	0xe
	.string	"_bf"
	.byte	0x6
	.byte	0xbb
	.byte	0x11
	.4byte	0x31b
	.byte	0x10
	.byte	0xb
	.4byte	.LASF57
	.byte	0x6
	.byte	0xbc
	.byte	0x7
	.4byte	0xa5
	.byte	0x18
	.byte	0xb
	.4byte	.LASF58
	.byte	0x6
	.byte	0xc3
	.byte	0x8
	.4byte	0x165
	.byte	0x1c
	.byte	0xb
	.4byte	.LASF59
	.byte	0x6
	.byte	0xc5
	.byte	0x1b
	.4byte	0x610
	.byte	0x20
	.byte	0xb
	.4byte	.LASF60
	.byte	0x6
	.byte	0xc7
	.byte	0x1b
	.4byte	0x63a
	.byte	0x24
	.byte	0xb
	.4byte	.LASF61
	.byte	0x6
	.byte	0xca
	.byte	0xb
	.4byte	0x65e
	.byte	0x28
	.byte	0xb
	.4byte	.LASF62
	.byte	0x6
	.byte	0xcb
	.byte	0x7
	.4byte	0x678
	.byte	0x2c
	.byte	0xe
	.string	"_ub"
	.byte	0x6
	.byte	0xce
	.byte	0x11
	.4byte	0x31b
	.byte	0x30
	.byte	0xe
	.string	"_up"
	.byte	0x6
	.byte	0xcf
	.byte	0x12
	.4byte	0x343
	.byte	0x38
	.byte	0xe
	.string	"_ur"
	.byte	0x6
	.byte	0xd0
	.byte	0x7
	.4byte	0xa5
	.byte	0x3c
	.byte	0xb
	.4byte	.LASF63
	.byte	0x6
	.byte	0xd3
	.byte	0x11
	.4byte	0x67e
	.byte	0x40
	.byte	0xb
	.4byte	.LASF64
	.byte	0x6
	.byte	0xd4
	.byte	0x11
	.4byte	0x68e
	.byte	0x43
	.byte	0xe
	.string	"_lb"
	.byte	0x6
	.byte	0xd7
	.byte	0x11
	.4byte	0x31b
	.byte	0x44
	.byte	0xb
	.4byte	.LASF65
	.byte	0x6
	.byte	0xda
	.byte	0x7
	.4byte	0xa5
	.byte	0x4c
	.byte	0xb
	.4byte	.LASF66
	.byte	0x6
	.byte	0xdb
	.byte	0xa
	.4byte	0xc6
	.byte	0x50
	.byte	0xb
	.4byte	.LASF67
	.byte	0x6
	.byte	0xde
	.byte	0x12
	.4byte	0x4aa
	.byte	0x54
	.byte	0xb
	.4byte	.LASF68
	.byte	0x6
	.byte	0xe2
	.byte	0xc
	.4byte	0x159
	.byte	0x58
	.byte	0xb
	.4byte	.LASF69
	.byte	0x6
	.byte	0xe4
	.byte	0xe
	.4byte	0x14d
	.byte	0x5c
	.byte	0xb
	.4byte	.LASF70
	.byte	0x6
	.byte	0xe5
	.byte	0x9
	.4byte	0xa5
	.byte	0x64
	.byte	0
	.byte	0x13
	.4byte	0xde
	.4byte	0x4aa
	.byte	0x14
	.4byte	0x4aa
	.byte	0x14
	.4byte	0x165
	.byte	0x14
	.4byte	0x5fe
	.byte	0x14
	.4byte	0xa5
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x4b5
	.byte	0x15
	.4byte	0x4aa
	.byte	0x16
	.4byte	.LASF71
	.2byte	0x428
	.byte	0x6
	.2byte	0x239
	.byte	0x8
	.4byte	0x5fe
	.byte	0x17
	.4byte	.LASF72
	.byte	0x6
	.2byte	0x23b
	.byte	0x7
	.4byte	0xa5
	.byte	0
	.byte	0x17
	.4byte	.LASF73
	.byte	0x6
	.2byte	0x240
	.byte	0xb
	.4byte	0x6ea
	.byte	0x4
	.byte	0x17
	.4byte	.LASF74
	.byte	0x6
	.2byte	0x240
	.byte	0x14
	.4byte	0x6ea
	.byte	0x8
	.byte	0x17
	.4byte	.LASF75
	.byte	0x6
	.2byte	0x240
	.byte	0x1e
	.4byte	0x6ea
	.byte	0xc
	.byte	0x17
	.4byte	.LASF76
	.byte	0x6
	.2byte	0x242
	.byte	0x8
	.4byte	0xa5
	.byte	0x10
	.byte	0x17
	.4byte	.LASF77
	.byte	0x6
	.2byte	0x243
	.byte	0x8
	.4byte	0x8ea
	.byte	0x14
	.byte	0x17
	.4byte	.LASF78
	.byte	0x6
	.2byte	0x246
	.byte	0x7
	.4byte	0xa5
	.byte	0x30
	.byte	0x17
	.4byte	.LASF79
	.byte	0x6
	.2byte	0x247
	.byte	0x16
	.4byte	0x8ff
	.byte	0x34
	.byte	0x17
	.4byte	.LASF80
	.byte	0x6
	.2byte	0x249
	.byte	0x7
	.4byte	0xa5
	.byte	0x38
	.byte	0x17
	.4byte	.LASF81
	.byte	0x6
	.2byte	0x24b
	.byte	0x8
	.4byte	0x910
	.byte	0x3c
	.byte	0x17
	.4byte	.LASF82
	.byte	0x6
	.2byte	0x24e
	.byte	0x13
	.4byte	0x1cd
	.byte	0x40
	.byte	0x17
	.4byte	.LASF83
	.byte	0x6
	.2byte	0x24f
	.byte	0x7
	.4byte	0xa5
	.byte	0x44
	.byte	0x17
	.4byte	.LASF84
	.byte	0x6
	.2byte	0x250
	.byte	0x13
	.4byte	0x1cd
	.byte	0x48
	.byte	0x17
	.4byte	.LASF85
	.byte	0x6
	.2byte	0x251
	.byte	0x14
	.4byte	0x916
	.byte	0x4c
	.byte	0x17
	.4byte	.LASF86
	.byte	0x6
	.2byte	0x254
	.byte	0x7
	.4byte	0xa5
	.byte	0x50
	.byte	0x17
	.4byte	.LASF87
	.byte	0x6
	.2byte	0x255
	.byte	0x9
	.4byte	0x5fe
	.byte	0x54
	.byte	0x17
	.4byte	.LASF88
	.byte	0x6
	.2byte	0x278
	.byte	0x7
	.4byte	0x8c5
	.byte	0x58
	.byte	0x18
	.4byte	.LASF48
	.byte	0x6
	.2byte	0x27c
	.byte	0x13
	.4byte	0x2fe
	.2byte	0x148
	.byte	0x18
	.4byte	.LASF89
	.byte	0x6
	.2byte	0x27d
	.byte	0x12
	.4byte	0x2bb
	.2byte	0x14c
	.byte	0x18
	.4byte	.LASF90
	.byte	0x6
	.2byte	0x281
	.byte	0xc
	.4byte	0x927
	.2byte	0x2dc
	.byte	0x18
	.4byte	.LASF91
	.byte	0x6
	.2byte	0x286
	.byte	0x10
	.4byte	0x6ab
	.2byte	0x2e0
	.byte	0x18
	.4byte	.LASF92
	.byte	0x6
	.2byte	0x288
	.byte	0xa
	.4byte	0x933
	.2byte	0x2ec
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x604
	.byte	0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF93
	.byte	0x15
	.4byte	0x604
	.byte	0xf
	.byte	0x4
	.4byte	0x48c
	.byte	0x13
	.4byte	0xde
	.4byte	0x634
	.byte	0x14
	.4byte	0x4aa
	.byte	0x14
	.4byte	0x165
	.byte	0x14
	.4byte	0x634
	.byte	0x14
	.4byte	0xa5
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x60b
	.byte	0xf
	.byte	0x4
	.4byte	0x616
	.byte	0x13
	.4byte	0xd2
	.4byte	0x65e
	.byte	0x14
	.4byte	0x4aa
	.byte	0x14
	.4byte	0x165
	.byte	0x14
	.4byte	0xd2
	.byte	0x14
	.4byte	0xa5
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x640
	.byte	0x13
	.4byte	0xa5
	.4byte	0x678
	.byte	0x14
	.4byte	0x4aa
	.byte	0x14
	.4byte	0x165
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x664
	.byte	0x8
	.4byte	0x44
	.4byte	0x68e
	.byte	0x9
	.4byte	0xac
	.byte	0x2
	.byte	0
	.byte	0x8
	.4byte	0x44
	.4byte	0x69e
	.byte	0x9
	.4byte	0xac
	.byte	0
	.byte	0
	.byte	0x5
	.4byte	.LASF94
	.byte	0x6
	.2byte	0x11f
	.byte	0x1a
	.4byte	0x349
	.byte	0x19
	.4byte	.LASF95
	.byte	0xc
	.byte	0x6
	.2byte	0x123
	.byte	0x8
	.4byte	0x6e4
	.byte	0x17
	.4byte	.LASF28
	.byte	0x6
	.2byte	0x125
	.byte	0x11
	.4byte	0x6e4
	.byte	0
	.byte	0x17
	.4byte	.LASF96
	.byte	0x6
	.2byte	0x126
	.byte	0x7
	.4byte	0xa5
	.byte	0x4
	.byte	0x17
	.4byte	.LASF97
	.byte	0x6
	.2byte	0x127
	.byte	0xb
	.4byte	0x6ea
	.byte	0x8
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x6ab
	.byte	0xf
	.byte	0x4
	.4byte	0x69e
	.byte	0x19
	.4byte	.LASF98
	.byte	0xe
	.byte	0x6
	.2byte	0x13f
	.byte	0x8
	.4byte	0x729
	.byte	0x17
	.4byte	.LASF99
	.byte	0x6
	.2byte	0x140
	.byte	0x12
	.4byte	0x729
	.byte	0
	.byte	0x17
	.4byte	.LASF100
	.byte	0x6
	.2byte	0x141
	.byte	0x12
	.4byte	0x729
	.byte	0x6
	.byte	0x17
	.4byte	.LASF101
	.byte	0x6
	.2byte	0x142
	.byte	0x12
	.4byte	0x6a
	.byte	0xc
	.byte	0
	.byte	0x8
	.4byte	0x6a
	.4byte	0x739
	.byte	0x9
	.4byte	0xac
	.byte	0x2
	.byte	0
	.byte	0x1a
	.byte	0xd0
	.byte	0x6
	.2byte	0x259
	.byte	0x7
	.4byte	0x84e
	.byte	0x17
	.4byte	.LASF102
	.byte	0x6
	.2byte	0x25b
	.byte	0x18
	.4byte	0xac
	.byte	0
	.byte	0x17
	.4byte	.LASF103
	.byte	0x6
	.2byte	0x25c
	.byte	0x12
	.4byte	0x5fe
	.byte	0x4
	.byte	0x17
	.4byte	.LASF104
	.byte	0x6
	.2byte	0x25d
	.byte	0x10
	.4byte	0x84e
	.byte	0x8
	.byte	0x17
	.4byte	.LASF105
	.byte	0x6
	.2byte	0x25e
	.byte	0x17
	.4byte	0x1e3
	.byte	0x24
	.byte	0x17
	.4byte	.LASF106
	.byte	0x6
	.2byte	0x25f
	.byte	0xf
	.4byte	0xa5
	.byte	0x48
	.byte	0x17
	.4byte	.LASF107
	.byte	0x6
	.2byte	0x260
	.byte	0x2c
	.4byte	0x9e
	.byte	0x50
	.byte	0x17
	.4byte	.LASF108
	.byte	0x6
	.2byte	0x261
	.byte	0x1a
	.4byte	0x6f0
	.byte	0x58
	.byte	0x17
	.4byte	.LASF109
	.byte	0x6
	.2byte	0x262
	.byte	0x16
	.4byte	0x14d
	.byte	0x68
	.byte	0x17
	.4byte	.LASF110
	.byte	0x6
	.2byte	0x263
	.byte	0x16
	.4byte	0x14d
	.byte	0x70
	.byte	0x17
	.4byte	.LASF111
	.byte	0x6
	.2byte	0x264
	.byte	0x16
	.4byte	0x14d
	.byte	0x78
	.byte	0x17
	.4byte	.LASF112
	.byte	0x6
	.2byte	0x265
	.byte	0x10
	.4byte	0x85e
	.byte	0x80
	.byte	0x17
	.4byte	.LASF113
	.byte	0x6
	.2byte	0x266
	.byte	0x10
	.4byte	0x86e
	.byte	0x88
	.byte	0x17
	.4byte	.LASF114
	.byte	0x6
	.2byte	0x267
	.byte	0xf
	.4byte	0xa5
	.byte	0xa0
	.byte	0x17
	.4byte	.LASF115
	.byte	0x6
	.2byte	0x268
	.byte	0x16
	.4byte	0x14d
	.byte	0xa4
	.byte	0x17
	.4byte	.LASF116
	.byte	0x6
	.2byte	0x269
	.byte	0x16
	.4byte	0x14d
	.byte	0xac
	.byte	0x17
	.4byte	.LASF117
	.byte	0x6
	.2byte	0x26a
	.byte	0x16
	.4byte	0x14d
	.byte	0xb4
	.byte	0x17
	.4byte	.LASF118
	.byte	0x6
	.2byte	0x26b
	.byte	0x16
	.4byte	0x14d
	.byte	0xbc
	.byte	0x17
	.4byte	.LASF119
	.byte	0x6
	.2byte	0x26c
	.byte	0x16
	.4byte	0x14d
	.byte	0xc4
	.byte	0x17
	.4byte	.LASF120
	.byte	0x6
	.2byte	0x26d
	.byte	0x8
	.4byte	0xa5
	.byte	0xcc
	.byte	0
	.byte	0x8
	.4byte	0x604
	.4byte	0x85e
	.byte	0x9
	.4byte	0xac
	.byte	0x19
	.byte	0
	.byte	0x8
	.4byte	0x604
	.4byte	0x86e
	.byte	0x9
	.4byte	0xac
	.byte	0x7
	.byte	0
	.byte	0x8
	.4byte	0x604
	.4byte	0x87e
	.byte	0x9
	.4byte	0xac
	.byte	0x17
	.byte	0
	.byte	0x1a
	.byte	0xf0
	.byte	0x6
	.2byte	0x272
	.byte	0x7
	.4byte	0x8a5
	.byte	0x17
	.4byte	.LASF121
	.byte	0x6
	.2byte	0x275
	.byte	0x1b
	.4byte	0x8a5
	.byte	0
	.byte	0x17
	.4byte	.LASF122
	.byte	0x6
	.2byte	0x276
	.byte	0x18
	.4byte	0x8b5
	.byte	0x78
	.byte	0
	.byte	0x8
	.4byte	0x343
	.4byte	0x8b5
	.byte	0x9
	.4byte	0xac
	.byte	0x1d
	.byte	0
	.byte	0x8
	.4byte	0xac
	.4byte	0x8c5
	.byte	0x9
	.4byte	0xac
	.byte	0x1d
	.byte	0
	.byte	0x1b
	.byte	0xf0
	.byte	0x6
	.2byte	0x257
	.byte	0x3
	.4byte	0x8ea
	.byte	0x1c
	.4byte	.LASF71
	.byte	0x6
	.2byte	0x26e
	.byte	0xb
	.4byte	0x739
	.byte	0x1c
	.4byte	.LASF123
	.byte	0x6
	.2byte	0x277
	.byte	0xb
	.4byte	0x87e
	.byte	0
	.byte	0x8
	.4byte	0x604
	.4byte	0x8fa
	.byte	0x9
	.4byte	0xac
	.byte	0x18
	.byte	0
	.byte	0x1d
	.4byte	.LASF196
	.byte	0xf
	.byte	0x4
	.4byte	0x8fa
	.byte	0x1e
	.4byte	0x910
	.byte	0x14
	.4byte	0x4aa
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x905
	.byte	0xf
	.byte	0x4
	.4byte	0x1cd
	.byte	0x1e
	.4byte	0x927
	.byte	0x14
	.4byte	0xa5
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x92d
	.byte	0xf
	.byte	0x4
	.4byte	0x91c
	.byte	0x8
	.4byte	0x69e
	.4byte	0x943
	.byte	0x9
	.4byte	0xac
	.byte	0x2
	.byte	0
	.byte	0x1f
	.4byte	.LASF124
	.byte	0x6
	.2byte	0x307
	.byte	0x17
	.4byte	0x4aa
	.byte	0x1f
	.4byte	.LASF125
	.byte	0x6
	.2byte	0x308
	.byte	0x1e
	.4byte	0x4b0
	.byte	0x2
	.4byte	.LASF126
	.byte	0x7
	.byte	0x14
	.byte	0x12
	.4byte	0x25
	.byte	0x2
	.4byte	.LASF127
	.byte	0x7
	.byte	0x18
	.byte	0x13
	.4byte	0x38
	.byte	0x2
	.4byte	.LASF128
	.byte	0x7
	.byte	0x20
	.byte	0x13
	.4byte	0x4b
	.byte	0x2
	.4byte	.LASF129
	.byte	0x7
	.byte	0x24
	.byte	0x14
	.4byte	0x5e
	.byte	0x2
	.4byte	.LASF130
	.byte	0x7
	.byte	0x2c
	.byte	0x13
	.4byte	0x71
	.byte	0x2
	.4byte	.LASF131
	.byte	0x7
	.byte	0x30
	.byte	0x14
	.4byte	0x84
	.byte	0x20
	.4byte	.LASF132
	.byte	0x8
	.byte	0x63
	.byte	0xe
	.4byte	0x5fe
	.byte	0x5
	.4byte	.LASF133
	.byte	0x9
	.2byte	0x162
	.byte	0x12
	.4byte	0x9be
	.byte	0xf
	.byte	0x4
	.4byte	0x9c4
	.byte	0x13
	.4byte	0x95d
	.4byte	0x9e2
	.byte	0x14
	.4byte	0x969
	.byte	0x14
	.4byte	0x969
	.byte	0x14
	.4byte	0x9e2
	.byte	0x14
	.4byte	0x981
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x969
	.byte	0x5
	.4byte	.LASF134
	.byte	0x9
	.2byte	0x168
	.byte	0x10
	.4byte	0x9f5
	.byte	0xf
	.byte	0x4
	.4byte	0x9fb
	.byte	0x1e
	.4byte	0xa06
	.byte	0x14
	.4byte	0x999
	.byte	0
	.byte	0x21
	.4byte	.LASF197
	.byte	0x7
	.byte	0x4
	.4byte	0xac
	.byte	0x9
	.2byte	0x16d
	.byte	0x6
	.4byte	0xa26
	.byte	0x22
	.4byte	.LASF135
	.byte	0
	.byte	0x22
	.4byte	.LASF136
	.byte	0x1
	.byte	0
	.byte	0x19
	.4byte	.LASF137
	.byte	0x30
	.byte	0x9
	.2byte	0x19a
	.byte	0x8
	.4byte	0xbaf
	.byte	0x17
	.4byte	.LASF138
	.byte	0x9
	.2byte	0x19c
	.byte	0xb
	.4byte	0x981
	.byte	0
	.byte	0x17
	.4byte	.LASF139
	.byte	0x9
	.2byte	0x19e
	.byte	0xb
	.4byte	0x981
	.byte	0x2
	.byte	0x17
	.4byte	.LASF140
	.byte	0x9
	.2byte	0x1a0
	.byte	0x9
	.4byte	0x95d
	.byte	0x4
	.byte	0x17
	.4byte	.LASF141
	.byte	0x9
	.2byte	0x1a2
	.byte	0x9
	.4byte	0x95d
	.byte	0x5
	.byte	0x17
	.4byte	.LASF142
	.byte	0x9
	.2byte	0x1a4
	.byte	0x9
	.4byte	0x95d
	.byte	0x6
	.byte	0x17
	.4byte	.LASF143
	.byte	0x9
	.2byte	0x1a6
	.byte	0xa
	.4byte	0x969
	.byte	0x7
	.byte	0x17
	.4byte	.LASF144
	.byte	0x9
	.2byte	0x1a8
	.byte	0x9
	.4byte	0x95d
	.byte	0x8
	.byte	0x17
	.4byte	.LASF145
	.byte	0x9
	.2byte	0x1aa
	.byte	0x9
	.4byte	0x95d
	.byte	0x9
	.byte	0x17
	.4byte	.LASF146
	.byte	0x9
	.2byte	0x1ac
	.byte	0xa
	.4byte	0x975
	.byte	0xa
	.byte	0x17
	.4byte	.LASF147
	.byte	0x9
	.2byte	0x1ae
	.byte	0x9
	.4byte	0x95d
	.byte	0xc
	.byte	0x17
	.4byte	.LASF148
	.byte	0x9
	.2byte	0x1b0
	.byte	0xb
	.4byte	0x981
	.byte	0xe
	.byte	0x17
	.4byte	.LASF149
	.byte	0x9
	.2byte	0x1b2
	.byte	0xa
	.4byte	0x975
	.byte	0x10
	.byte	0x17
	.4byte	.LASF150
	.byte	0x9
	.2byte	0x1b4
	.byte	0x9
	.4byte	0x95d
	.byte	0x12
	.byte	0x17
	.4byte	.LASF151
	.byte	0x9
	.2byte	0x1b6
	.byte	0xb
	.4byte	0x981
	.byte	0x14
	.byte	0x17
	.4byte	.LASF152
	.byte	0x9
	.2byte	0x1b8
	.byte	0xa
	.4byte	0x975
	.byte	0x16
	.byte	0x17
	.4byte	.LASF153
	.byte	0x9
	.2byte	0x1ba
	.byte	0x9
	.4byte	0x95d
	.byte	0x18
	.byte	0x17
	.4byte	.LASF154
	.byte	0x9
	.2byte	0x1bc
	.byte	0xa
	.4byte	0x975
	.byte	0x1a
	.byte	0x17
	.4byte	.LASF155
	.byte	0x9
	.2byte	0x1be
	.byte	0xa
	.4byte	0x975
	.byte	0x1c
	.byte	0x17
	.4byte	.LASF156
	.byte	0x9
	.2byte	0x1c0
	.byte	0x9
	.4byte	0x95d
	.byte	0x1e
	.byte	0x17
	.4byte	.LASF157
	.byte	0x9
	.2byte	0x1c2
	.byte	0x9
	.4byte	0x95d
	.byte	0x1f
	.byte	0x17
	.4byte	.LASF158
	.byte	0x9
	.2byte	0x1c4
	.byte	0xa
	.4byte	0x975
	.byte	0x20
	.byte	0x17
	.4byte	.LASF159
	.byte	0x9
	.2byte	0x1c6
	.byte	0xa
	.4byte	0x975
	.byte	0x22
	.byte	0x17
	.4byte	.LASF160
	.byte	0x9
	.2byte	0x1c8
	.byte	0xa
	.4byte	0x969
	.byte	0x24
	.byte	0x17
	.4byte	.LASF161
	.byte	0x9
	.2byte	0x1cc
	.byte	0xa
	.4byte	0x98d
	.byte	0x28
	.byte	0x17
	.4byte	.LASF162
	.byte	0x9
	.2byte	0x1d2
	.byte	0xa
	.4byte	0x969
	.byte	0x2c
	.byte	0x17
	.4byte	.LASF163
	.byte	0x9
	.2byte	0x1d4
	.byte	0x9
	.4byte	0x95d
	.byte	0x2d
	.byte	0x17
	.4byte	.LASF164
	.byte	0x9
	.2byte	0x1d6
	.byte	0x9
	.4byte	0x95d
	.byte	0x2e
	.byte	0
	.byte	0x19
	.4byte	.LASF165
	.byte	0x4
	.byte	0x9
	.2byte	0x1dd
	.byte	0x8
	.4byte	0xbf6
	.byte	0x17
	.4byte	.LASF166
	.byte	0x9
	.2byte	0x1df
	.byte	0xa
	.4byte	0x969
	.byte	0
	.byte	0x17
	.4byte	.LASF167
	.byte	0x9
	.2byte	0x1e1
	.byte	0xa
	.4byte	0x969
	.byte	0x1
	.byte	0x17
	.4byte	.LASF168
	.byte	0x9
	.2byte	0x1e3
	.byte	0xa
	.4byte	0x969
	.byte	0x2
	.byte	0x17
	.4byte	.LASF169
	.byte	0x9
	.2byte	0x1e5
	.byte	0xa
	.4byte	0x969
	.byte	0x3
	.byte	0
	.byte	0x19
	.4byte	.LASF170
	.byte	0x8
	.byte	0x9
	.2byte	0x1ec
	.byte	0x8
	.4byte	0xc4b
	.byte	0x17
	.4byte	.LASF171
	.byte	0x9
	.2byte	0x1ee
	.byte	0xa
	.4byte	0x969
	.byte	0
	.byte	0x17
	.4byte	.LASF172
	.byte	0x9
	.2byte	0x1f0
	.byte	0xa
	.4byte	0x969
	.byte	0x1
	.byte	0x17
	.4byte	.LASF173
	.byte	0x9
	.2byte	0x1f2
	.byte	0xa
	.4byte	0x969
	.byte	0x2
	.byte	0x17
	.4byte	.LASF174
	.byte	0x9
	.2byte	0x1f4
	.byte	0xb
	.4byte	0x981
	.byte	0x4
	.byte	0x17
	.4byte	.LASF175
	.byte	0x9
	.2byte	0x1f6
	.byte	0xb
	.4byte	0x981
	.byte	0x6
	.byte	0
	.byte	0x19
	.4byte	.LASF176
	.byte	0x5c
	.byte	0x9
	.2byte	0x1fc
	.byte	0x8
	.4byte	0xd2c
	.byte	0x17
	.4byte	.LASF177
	.byte	0x9
	.2byte	0x1fe
	.byte	0xa
	.4byte	0x969
	.byte	0
	.byte	0x17
	.4byte	.LASF178
	.byte	0x9
	.2byte	0x200
	.byte	0xa
	.4byte	0x969
	.byte	0x1
	.byte	0x17
	.4byte	.LASF179
	.byte	0x9
	.2byte	0x202
	.byte	0x13
	.4byte	0xa06
	.byte	0x4
	.byte	0x17
	.4byte	.LASF180
	.byte	0x9
	.2byte	0x204
	.byte	0xa
	.4byte	0x969
	.byte	0x8
	.byte	0x17
	.4byte	.LASF181
	.byte	0x9
	.2byte	0x206
	.byte	0x9
	.4byte	0x95d
	.byte	0x9
	.byte	0x17
	.4byte	.LASF182
	.byte	0x9
	.2byte	0x208
	.byte	0x1b
	.4byte	0xa26
	.byte	0xc
	.byte	0x17
	.4byte	.LASF183
	.byte	0x9
	.2byte	0x20a
	.byte	0x19
	.4byte	0xbaf
	.byte	0x3c
	.byte	0x17
	.4byte	.LASF184
	.byte	0x9
	.2byte	0x20c
	.byte	0x19
	.4byte	0xbf6
	.byte	0x40
	.byte	0x17
	.4byte	.LASF185
	.byte	0x9
	.2byte	0x20e
	.byte	0xa
	.4byte	0x969
	.byte	0x48
	.byte	0x17
	.4byte	.LASF186
	.byte	0x9
	.2byte	0x210
	.byte	0xa
	.4byte	0x969
	.byte	0x49
	.byte	0x17
	.4byte	.LASF187
	.byte	0x9
	.2byte	0x212
	.byte	0xa
	.4byte	0x969
	.byte	0x4a
	.byte	0x17
	.4byte	.LASF188
	.byte	0x9
	.2byte	0x214
	.byte	0x14
	.4byte	0x9b1
	.byte	0x4c
	.byte	0x17
	.4byte	.LASF189
	.byte	0x9
	.2byte	0x216
	.byte	0x14
	.4byte	0x9b1
	.byte	0x50
	.byte	0x17
	.4byte	.LASF190
	.byte	0x9
	.2byte	0x218
	.byte	0x16
	.4byte	0x9e8
	.byte	0x54
	.byte	0x17
	.4byte	.LASF191
	.byte	0x9
	.2byte	0x21a
	.byte	0x9
	.4byte	0x95d
	.byte	0x58
	.byte	0
	.byte	0x8
	.4byte	0x969
	.4byte	0xd3c
	.byte	0x9
	.4byte	0xac
	.byte	0x28
	.byte	0
	.byte	0x23
	.4byte	.LASF192
	.byte	0x1
	.byte	0x18
	.byte	0x9
	.4byte	0xd2c
	.byte	0x5
	.byte	0x3
	.4byte	coeff_array
	.byte	0x24
	.string	"dev"
	.byte	0x1
	.byte	0x19
	.byte	0x13
	.4byte	0xc4b
	.byte	0x5
	.byte	0x3
	.4byte	dev
	.byte	0x24
	.string	"T"
	.byte	0x1
	.byte	0x1a
	.byte	0xa
	.4byte	0x999
	.byte	0x5
	.byte	0x3
	.4byte	T
	.byte	0x24
	.string	"H"
	.byte	0x1
	.byte	0x1b
	.byte	0xa
	.4byte	0x999
	.byte	0x5
	.byte	0x3
	.4byte	H
	.byte	0x24
	.string	"P"
	.byte	0x1
	.byte	0x1c
	.byte	0xa
	.4byte	0x999
	.byte	0x5
	.byte	0x3
	.4byte	P
	.byte	0x25
	.4byte	.LASF198
	.byte	0x1
	.byte	0x1e
	.byte	0x5
	.4byte	0xa5
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x1
	.byte	0x9c
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x25
	.byte	0xe
	.byte	0x13
	.byte	0xb
	.byte	0x3
	.byte	0xe
	.byte	0x1b
	.byte	0xe
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x10
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x2
	.byte	0x16
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x3
	.byte	0x24
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x3e
	.byte	0xb
	.byte	0x3
	.byte	0xe
	.byte	0
	.byte	0
	.byte	0x4
	.byte	0x24
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x3e
	.byte	0xb
	.byte	0x3
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0x5
	.byte	0x16
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x6
	.byte	0x17
	.byte	0x1
	.byte	0xb
	.byte	0xb
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0xd
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x8
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x9
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xa
	.byte	0x13
	.byte	0x1
	.byte	0xb
	.byte	0xb
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xb
	.byte	0xd
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x38
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xc
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xd
	.byte	0x13
	.byte	0x1
	.byte	0x3
	.byte	0xe
	.byte	0xb
	.byte	0xb
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xe
	.byte	0xd
	.byte	0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x38
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xf
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x10
	.byte	0x13
	.byte	0x1
	.byte	0x3
	.byte	0xe
	.byte	0xb
	.byte	0x5
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x11
	.byte	0xd
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x38
	.byte	0x5
	.byte	0
	.byte	0
	.byte	0x12
	.byte	0x15
	.byte	0
	.byte	0x27
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0x13
	.byte	0x15
	.byte	0x1
	.byte	0x27
	.byte	0x19
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x14
	.byte	0x5
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x15
	.byte	0x26
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x16
	.byte	0x13
	.byte	0x1
	.byte	0x3
	.byte	0xe
	.byte	0xb
	.byte	0x5
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x17
	.byte	0xd
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x38
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x18
	.byte	0xd
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x38
	.byte	0x5
	.byte	0
	.byte	0
	.byte	0x19
	.byte	0x13
	.byte	0x1
	.byte	0x3
	.byte	0xe
	.byte	0xb
	.byte	0xb
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1a
	.byte	0x13
	.byte	0x1
	.byte	0xb
	.byte	0xb
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1b
	.byte	0x17
	.byte	0x1
	.byte	0xb
	.byte	0xb
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1c
	.byte	0xd
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1d
	.byte	0x13
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3c
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0x1e
	.byte	0x15
	.byte	0x1
	.byte	0x27
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1f
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x3f
	.byte	0x19
	.byte	0x3c
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0x20
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x3f
	.byte	0x19
	.byte	0x3c
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0x21
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0xe
	.byte	0x3e
	.byte	0xb
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x22
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x1c
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x23
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x3f
	.byte	0x19
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x24
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x3f
	.byte	0x19
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x25
	.byte	0x2e
	.byte	0
	.byte	0x3f
	.byte	0x19
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x40
	.byte	0x18
	.byte	0x96,0x42
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x1c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF45:
	.string	"_dso_handle"
.LASF148:
	.string	"par_t1"
.LASF53:
	.string	"_size"
.LASF98:
	.string	"_rand48"
.LASF135:
	.string	"BME680_SPI_INTF"
.LASF77:
	.string	"_emergency"
.LASF189:
	.string	"write"
.LASF1:
	.string	"__uint8_t"
.LASF162:
	.string	"res_heat_range"
.LASF67:
	.string	"_data"
.LASF191:
	.string	"com_rslt"
.LASF118:
	.string	"_wcrtomb_state"
.LASF119:
	.string	"_wcsrtombs_state"
.LASF13:
	.string	"long long unsigned int"
.LASF57:
	.string	"_lbfsize"
.LASF173:
	.string	"run_gas"
.LASF196:
	.string	"__locale_t"
.LASF193:
	.string	"GNU C17 8.2.0 -march=rv32ifd -mabi=ilp32d -g -O0"
.LASF0:
	.string	"__int8_t"
.LASF116:
	.string	"_mbrtowc_state"
.LASF111:
	.string	"_wctomb_state"
.LASF34:
	.string	"__tm_sec"
.LASF128:
	.string	"int16_t"
.LASF12:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF63:
	.string	"_ubuf"
.LASF52:
	.string	"_base"
.LASF167:
	.string	"os_temp"
.LASF36:
	.string	"__tm_hour"
.LASF92:
	.string	"__sf"
.LASF43:
	.string	"_on_exit_args"
.LASF172:
	.string	"heatr_ctrl"
.LASF58:
	.string	"_cookie"
.LASF91:
	.string	"__sglue"
.LASF9:
	.string	"long int"
.LASF175:
	.string	"heatr_dur"
.LASF55:
	.string	"_flags"
.LASF47:
	.string	"_is_cxa"
.LASF73:
	.string	"_stdin"
.LASF65:
	.string	"_blksize"
.LASF129:
	.string	"uint16_t"
.LASF164:
	.string	"range_sw_err"
.LASF87:
	.string	"_cvtbuf"
.LASF66:
	.string	"_offset"
.LASF198:
	.string	"main"
.LASF168:
	.string	"os_pres"
.LASF117:
	.string	"_mbsrtowcs_state"
.LASF115:
	.string	"_mbrlen_state"
.LASF44:
	.string	"_fnargs"
.LASF139:
	.string	"par_h2"
.LASF50:
	.string	"_fns"
.LASF141:
	.string	"par_h4"
.LASF10:
	.string	"__uint32_t"
.LASF30:
	.string	"_sign"
.LASF161:
	.string	"t_fine"
.LASF4:
	.string	"__int16_t"
.LASF75:
	.string	"_stderr"
.LASF32:
	.string	"_Bigint"
.LASF106:
	.string	"_gamma_signgam"
.LASF59:
	.string	"_read"
.LASF83:
	.string	"_result_k"
.LASF33:
	.string	"__tm"
.LASF14:
	.string	"unsigned int"
.LASF22:
	.string	"__wchb"
.LASF74:
	.string	"_stdout"
.LASF86:
	.string	"_cvtlen"
.LASF138:
	.string	"par_h1"
.LASF11:
	.string	"long unsigned int"
.LASF140:
	.string	"par_h3"
.LASF56:
	.string	"_file"
.LASF142:
	.string	"par_h5"
.LASF143:
	.string	"par_h6"
.LASF144:
	.string	"par_h7"
.LASF174:
	.string	"heatr_temp"
.LASF96:
	.string	"_niobs"
.LASF7:
	.string	"short unsigned int"
.LASF89:
	.string	"_atexit0"
.LASF113:
	.string	"_signal_buf"
.LASF104:
	.string	"_asctime_buf"
.LASF153:
	.string	"par_p3"
.LASF154:
	.string	"par_p4"
.LASF155:
	.string	"par_p5"
.LASF156:
	.string	"par_p6"
.LASF82:
	.string	"_result"
.LASF21:
	.string	"__wch"
.LASF151:
	.string	"par_p1"
.LASF152:
	.string	"par_p2"
.LASF194:
	.string	"main.c"
.LASF163:
	.string	"res_heat_val"
.LASF20:
	.string	"wint_t"
.LASF68:
	.string	"_lock"
.LASF157:
	.string	"par_p7"
.LASF70:
	.string	"_flags2"
.LASF159:
	.string	"par_p9"
.LASF136:
	.string	"BME680_I2C_INTF"
.LASF184:
	.string	"gas_sett"
.LASF60:
	.string	"_write"
.LASF39:
	.string	"__tm_year"
.LASF182:
	.string	"calib"
.LASF122:
	.string	"_nmalloc"
.LASF179:
	.string	"intf"
.LASF158:
	.string	"par_p8"
.LASF180:
	.string	"mem_page"
.LASF15:
	.string	"long double"
.LASF121:
	.string	"_nextf"
.LASF195:
	.string	"/home/billtsou/Desktop/UPP/sunflower-simulator/benchmarks/source/bme680-conversion-routines"
.LASF38:
	.string	"__tm_mon"
.LASF48:
	.string	"_atexit"
.LASF132:
	.string	"suboptarg"
.LASF80:
	.string	"__sdidinit"
.LASF17:
	.string	"_off_t"
.LASF185:
	.string	"power_mode"
.LASF127:
	.string	"uint8_t"
.LASF188:
	.string	"read"
.LASF85:
	.string	"_freelist"
.LASF183:
	.string	"tph_sett"
.LASF16:
	.string	"_LOCK_RECURSIVE_T"
.LASF134:
	.string	"bme680_delay_fptr_t"
.LASF133:
	.string	"bme680_com_fptr_t"
.LASF130:
	.string	"int32_t"
.LASF3:
	.string	"unsigned char"
.LASF88:
	.string	"_new"
.LASF197:
	.string	"bme680_intf"
.LASF120:
	.string	"_h_errno"
.LASF5:
	.string	"short int"
.LASF41:
	.string	"__tm_yday"
.LASF51:
	.string	"__sbuf"
.LASF97:
	.string	"_iobs"
.LASF94:
	.string	"__FILE"
.LASF25:
	.string	"_mbstate_t"
.LASF54:
	.string	"__sFILE"
.LASF69:
	.string	"_mbstate"
.LASF107:
	.string	"_rand_next"
.LASF109:
	.string	"_mblen_state"
.LASF76:
	.string	"_inc"
.LASF49:
	.string	"_ind"
.LASF79:
	.string	"_locale"
.LASF81:
	.string	"__cleanup"
.LASF78:
	.string	"_unspecified_locale_info"
.LASF137:
	.string	"bme680_calib_data"
.LASF29:
	.string	"_maxwds"
.LASF71:
	.string	"_reent"
.LASF99:
	.string	"_seed"
.LASF190:
	.string	"delay_ms"
.LASF23:
	.string	"__count"
.LASF165:
	.string	"bme680_tph_sett"
.LASF24:
	.string	"__value"
.LASF61:
	.string	"_seek"
.LASF187:
	.string	"info_msg"
.LASF177:
	.string	"chip_id"
.LASF124:
	.string	"_impure_ptr"
.LASF18:
	.string	"_fpos_t"
.LASF72:
	.string	"_errno"
.LASF93:
	.string	"char"
.LASF35:
	.string	"__tm_min"
.LASF6:
	.string	"__uint16_t"
.LASF186:
	.string	"new_fields"
.LASF8:
	.string	"__int32_t"
.LASF100:
	.string	"_mult"
.LASF28:
	.string	"_next"
.LASF103:
	.string	"_strtok_last"
.LASF46:
	.string	"_fntypes"
.LASF145:
	.string	"par_gh1"
.LASF146:
	.string	"par_gh2"
.LASF147:
	.string	"par_gh3"
.LASF101:
	.string	"_add"
.LASF166:
	.string	"os_hum"
.LASF27:
	.string	"__ULong"
.LASF126:
	.string	"int8_t"
.LASF114:
	.string	"_getdate_err"
.LASF169:
	.string	"filter"
.LASF125:
	.string	"_global_impure_ptr"
.LASF131:
	.string	"uint32_t"
.LASF102:
	.string	"_unused_rand"
.LASF176:
	.string	"bme680_dev"
.LASF181:
	.string	"amb_temp"
.LASF31:
	.string	"_wds"
.LASF40:
	.string	"__tm_wday"
.LASF95:
	.string	"_glue"
.LASF19:
	.string	"_ssize_t"
.LASF112:
	.string	"_l64a_buf"
.LASF90:
	.string	"_sig_func"
.LASF26:
	.string	"_flock_t"
.LASF171:
	.string	"nb_conv"
.LASF64:
	.string	"_nbuf"
.LASF123:
	.string	"_unused"
.LASF149:
	.string	"par_t2"
.LASF150:
	.string	"par_t3"
.LASF42:
	.string	"__tm_isdst"
.LASF105:
	.string	"_localtime_buf"
.LASF62:
	.string	"_close"
.LASF108:
	.string	"_r48"
.LASF160:
	.string	"par_p10"
.LASF110:
	.string	"_mbtowc_state"
.LASF84:
	.string	"_p5s"
.LASF170:
	.string	"bme680_gas_sett"
.LASF178:
	.string	"dev_id"
.LASF37:
	.string	"__tm_mday"
.LASF192:
	.string	"coeff_array"
	.ident	"GCC: (GNU) 8.2.0"
