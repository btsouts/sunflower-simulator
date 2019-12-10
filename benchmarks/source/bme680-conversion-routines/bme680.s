	.file	"bme680.c"
	.option nopic
# GNU C17 (GCC) version 8.2.0 (riscv32-elf)
#	compiled by GNU C version 5.4.0 20160609, GMP version 6.1.0, MPFR version 3.1.4, MPC version 1.0.3, isl version none
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: 
# -I /home/billtsou/Desktop/UPP/sunflower-simulator/tools/riscv/include
# -iprefix /home/billtsou/Desktop/UPP/sunflower-simulator/sunflower-toolchain/tools/riscv/bin/../lib/gcc/riscv32-elf/8.2.0/
# -D M32 BME680_driver_patched/bme680.c -march=rv32ifd -mabi=ilp32d
# -auxbase-strip bme680.s -g -O0 -Wall -fverbose-asm
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
	.align	2
	.globl	bme680_init
	.type	bme680_init, @function
bme680_init:
.LFB0:
	.file 1 "BME680_driver_patched/bme680.c"
	.loc 1 190 1
	addi	sp,sp,-48	#,,
.LCFI0:
	sw	ra,44(sp)	#,
	sw	s0,40(sp)	#,
.LCFI1:
	addi	s0,sp,48	#,,
.LCFI2:
	sw	a0,-36(s0)	# dev, dev
# BME680_driver_patched/bme680.c:194: 	rslt = null_ptr_check(dev);
	.loc 1 194 9
	lw	a0,-36(s0)		#, dev
	call	null_ptr_check		#
	mv	a5,a0	# tmp76,
	sb	a5,-17(s0)	# tmp76, rslt
# BME680_driver_patched/bme680.c:195: 	if (rslt == BME680_OK) {
	.loc 1 195 5
	lb	a5,-17(s0)		# tmp77, rslt
	bnez	a5,.L2	#, tmp77,
# BME680_driver_patched/bme680.c:197: 		rslt = bme680_soft_reset(dev);
	.loc 1 197 10
	lw	a0,-36(s0)		#, dev
	call	bme680_soft_reset		#
	mv	a5,a0	# tmp78,
	sb	a5,-17(s0)	# tmp78, rslt
# BME680_driver_patched/bme680.c:198: 		if (rslt == BME680_OK) {
	.loc 1 198 6
	lb	a5,-17(s0)		# tmp79, rslt
	bnez	a5,.L2	#, tmp79,
# BME680_driver_patched/bme680.c:199: 			rslt = bme680_get_regs(BME680_CHIP_ID_ADDR, &dev->chip_id, 1, dev);
	.loc 1 199 11
	lw	a5,-36(s0)		# _1, dev
	lw	a3,-36(s0)		#, dev
	li	a2,1		#,
	mv	a1,a5	#, _1
	li	a0,208		#,
	call	bme680_get_regs		#
	mv	a5,a0	# tmp80,
	sb	a5,-17(s0)	# tmp80, rslt
# BME680_driver_patched/bme680.c:200: 			if (rslt == BME680_OK) {
	.loc 1 200 7
	lb	a5,-17(s0)		# tmp81, rslt
	bnez	a5,.L2	#, tmp81,
# BME680_driver_patched/bme680.c:201: 				if (dev->chip_id == BME680_CHIP_ID) {
	.loc 1 201 12
	lw	a5,-36(s0)		# tmp82, dev
	lbu	a4,0(a5)	# _2, dev_6(D)->chip_id
# BME680_driver_patched/bme680.c:201: 				if (dev->chip_id == BME680_CHIP_ID) {
	.loc 1 201 8
	li	a5,97		# tmp83,
	bne	a4,a5,.L3	#, _2, tmp83,
# BME680_driver_patched/bme680.c:203: 					rslt = get_calib_data(dev);
	.loc 1 203 13
	lw	a0,-36(s0)		#, dev
	call	get_calib_data		#
	mv	a5,a0	# tmp84,
	sb	a5,-17(s0)	# tmp84, rslt
	j	.L2		#
.L3:
# BME680_driver_patched/bme680.c:205: 					rslt = BME680_E_DEV_NOT_FOUND;
	.loc 1 205 11
	li	a5,-3		# tmp85,
	sb	a5,-17(s0)	# tmp85, rslt
.L2:
# BME680_driver_patched/bme680.c:211: 	return rslt;
	.loc 1 211 9
	lb	a5,-17(s0)		# _16, rslt
# BME680_driver_patched/bme680.c:212: }
	.loc 1 212 1
	mv	a0,a5	#, <retval>
	lw	ra,44(sp)		#,
.LCFI3:
	lw	s0,40(sp)		#,
.LCFI4:
	addi	sp,sp,48	#,,
.LCFI5:
	jr	ra		#
.LFE0:
	.size	bme680_init, .-bme680_init
	.align	2
	.globl	bme680_get_regs
	.type	bme680_get_regs, @function
bme680_get_regs:
.LFB1:
	.loc 1 218 1
	addi	sp,sp,-48	#,,
.LCFI6:
	sw	ra,44(sp)	#,
	sw	s0,40(sp)	#,
.LCFI7:
	addi	s0,sp,48	#,,
.LCFI8:
	mv	a5,a0	# tmp74, reg_addr
	sw	a1,-40(s0)	# reg_data, reg_data
	mv	a4,a2	# tmp76, len
	sw	a3,-44(s0)	# dev, dev
	sb	a5,-33(s0)	# tmp75, reg_addr
	mv	a5,a4	# tmp77, tmp76
	sh	a5,-36(s0)	# tmp77, len
# BME680_driver_patched/bme680.c:222: 	rslt = null_ptr_check(dev);
	.loc 1 222 9
	lw	a0,-44(s0)		#, dev
	call	null_ptr_check		#
	mv	a5,a0	# tmp78,
	sb	a5,-17(s0)	# tmp78, rslt
# BME680_driver_patched/bme680.c:223:   parseCSv();
	.loc 1 223 3
	call	parseCSv		#
# BME680_driver_patched/bme680.c:224:   rslt = BME680_OK;
	.loc 1 224 8
	sb	zero,-17(s0)	#, rslt
# BME680_driver_patched/bme680.c:225: 	return rslt;
	.loc 1 225 9
	lb	a5,-17(s0)		# _7, rslt
# BME680_driver_patched/bme680.c:226: }
	.loc 1 226 1
	mv	a0,a5	#, <retval>
	lw	ra,44(sp)		#,
.LCFI9:
	lw	s0,40(sp)		#,
.LCFI10:
	addi	sp,sp,48	#,,
.LCFI11:
	jr	ra		#
.LFE1:
	.size	bme680_get_regs, .-bme680_get_regs
	.align	2
	.globl	bme680_set_regs
	.type	bme680_set_regs, @function
bme680_set_regs:
.LFB2:
	.loc 1 233 1
	addi	sp,sp,-80	#,,
.LCFI12:
	sw	ra,76(sp)	#,
	sw	s0,72(sp)	#,
.LCFI13:
	addi	s0,sp,80	#,,
.LCFI14:
	sw	a0,-68(s0)	# reg_addr, reg_addr
	sw	a1,-72(s0)	# reg_data, reg_data
	mv	a5,a2	# tmp105, len
	sw	a3,-80(s0)	# dev, dev
	sb	a5,-73(s0)	# tmp106, len
# BME680_driver_patched/bme680.c:236: 	uint8_t tmp_buff[BME680_TMP_BUFFER_LENGTH] = { 0 };
	.loc 1 236 10
	sw	zero,-60(s0)	#, tmp_buff
	sw	zero,-56(s0)	#, tmp_buff
	sw	zero,-52(s0)	#, tmp_buff
	sw	zero,-48(s0)	#, tmp_buff
	sw	zero,-44(s0)	#, tmp_buff
	sw	zero,-40(s0)	#, tmp_buff
	sw	zero,-36(s0)	#, tmp_buff
	sw	zero,-32(s0)	#, tmp_buff
	sw	zero,-28(s0)	#, tmp_buff
	sw	zero,-24(s0)	#, tmp_buff
# BME680_driver_patched/bme680.c:240: 	rslt = null_ptr_check(dev);
	.loc 1 240 9
	lw	a0,-80(s0)		#, dev
	call	null_ptr_check		#
	mv	a5,a0	# tmp107,
	sb	a5,-17(s0)	# tmp107, rslt
# BME680_driver_patched/bme680.c:241: 	if (rslt == BME680_OK) {
	.loc 1 241 5
	lb	a5,-17(s0)		# tmp108, rslt
	bnez	a5,.L8	#, tmp108,
# BME680_driver_patched/bme680.c:242: 		if ((len > 0) && (len < BME680_TMP_BUFFER_LENGTH / 2)) {
	.loc 1 242 6
	lbu	a5,-73(s0)	# tmp109, len
	beqz	a5,.L9	#, tmp109,
# BME680_driver_patched/bme680.c:242: 		if ((len > 0) && (len < BME680_TMP_BUFFER_LENGTH / 2)) {
	.loc 1 242 17 discriminator 1
	lbu	a4,-73(s0)	# tmp110, len
	li	a5,19		# tmp111,
	bgtu	a4,a5,.L9	#, tmp110, tmp111,
# BME680_driver_patched/bme680.c:244: 			for (index = 0; index < len; index++) {
	.loc 1 244 15
	sh	zero,-20(s0)	#, index
# BME680_driver_patched/bme680.c:244: 			for (index = 0; index < len; index++) {
	.loc 1 244 4
	j	.L10		#
.L13:
# BME680_driver_patched/bme680.c:245: 				if (dev->intf == BME680_SPI_INTF) {
	.loc 1 245 12
	lw	a5,-80(s0)		# tmp112, dev
	lw	a5,4(a5)		# _1, dev_43(D)->intf
# BME680_driver_patched/bme680.c:245: 				if (dev->intf == BME680_SPI_INTF) {
	.loc 1 245 8
	bnez	a5,.L11	#, _1,
# BME680_driver_patched/bme680.c:247: 					rslt = set_mem_page(reg_addr[index], dev);
	.loc 1 247 34
	lhu	a5,-20(s0)	# _2, index
	lw	a4,-68(s0)		# tmp113, reg_addr
	add	a5,a4,a5	# _2, _3, tmp113
# BME680_driver_patched/bme680.c:247: 					rslt = set_mem_page(reg_addr[index], dev);
	.loc 1 247 13
	lbu	a5,0(a5)	# _4, *_3
	lw	a1,-80(s0)		#, dev
	mv	a0,a5	#, _4
	call	set_mem_page		#
	mv	a5,a0	# tmp114,
	sb	a5,-17(s0)	# tmp114, rslt
# BME680_driver_patched/bme680.c:248: 					tmp_buff[(2 * index)] = reg_addr[index] & BME680_SPI_WR_MSK;
	.loc 1 248 38
	lhu	a5,-20(s0)	# _5, index
	lw	a4,-68(s0)		# tmp115, reg_addr
	add	a5,a4,a5	# _5, _6, tmp115
# BME680_driver_patched/bme680.c:248: 					tmp_buff[(2 * index)] = reg_addr[index] & BME680_SPI_WR_MSK;
	.loc 1 248 46
	lbu	a4,0(a5)	# _7, *_6
# BME680_driver_patched/bme680.c:248: 					tmp_buff[(2 * index)] = reg_addr[index] & BME680_SPI_WR_MSK;
	.loc 1 248 18
	lhu	a5,-20(s0)	# _8, index
	slli	a5,a5,1	#, _9, _8
# BME680_driver_patched/bme680.c:248: 					tmp_buff[(2 * index)] = reg_addr[index] & BME680_SPI_WR_MSK;
	.loc 1 248 46
	andi	a4,a4,127	#, tmp116, _7
	andi	a4,a4,0xff	# _10, tmp116
# BME680_driver_patched/bme680.c:248: 					tmp_buff[(2 * index)] = reg_addr[index] & BME680_SPI_WR_MSK;
	.loc 1 248 28
	addi	a3,s0,-16	#, tmp139,
	add	a5,a3,a5	# _9, tmp117, tmp139
	sb	a4,-44(a5)	# _10, tmp_buff
	j	.L12		#
.L11:
# BME680_driver_patched/bme680.c:250: 					tmp_buff[(2 * index)] = reg_addr[index];
	.loc 1 250 38
	lhu	a5,-20(s0)	# _11, index
	lw	a4,-68(s0)		# tmp118, reg_addr
	add	a4,a4,a5	# _11, _12, tmp118
# BME680_driver_patched/bme680.c:250: 					tmp_buff[(2 * index)] = reg_addr[index];
	.loc 1 250 18
	lhu	a5,-20(s0)	# _13, index
	slli	a5,a5,1	#, _14, _13
# BME680_driver_patched/bme680.c:250: 					tmp_buff[(2 * index)] = reg_addr[index];
	.loc 1 250 38
	lbu	a4,0(a4)	# _15, *_12
# BME680_driver_patched/bme680.c:250: 					tmp_buff[(2 * index)] = reg_addr[index];
	.loc 1 250 28
	addi	a3,s0,-16	#, tmp140,
	add	a5,a3,a5	# _14, tmp119, tmp140
	sb	a4,-44(a5)	# _15, tmp_buff
.L12:
# BME680_driver_patched/bme680.c:252: 				tmp_buff[(2 * index) + 1] = reg_data[index];
	.loc 1 252 41 discriminator 2
	lhu	a5,-20(s0)	# _16, index
	lw	a4,-72(s0)		# tmp120, reg_data
	add	a4,a4,a5	# _16, _17, tmp120
# BME680_driver_patched/bme680.c:252: 				tmp_buff[(2 * index) + 1] = reg_data[index];
	.loc 1 252 17 discriminator 2
	lhu	a5,-20(s0)	# _18, index
	slli	a5,a5,1	#, _19, _18
# BME680_driver_patched/bme680.c:252: 				tmp_buff[(2 * index) + 1] = reg_data[index];
	.loc 1 252 26 discriminator 2
	addi	a5,a5,1	#, _20, _19
# BME680_driver_patched/bme680.c:252: 				tmp_buff[(2 * index) + 1] = reg_data[index];
	.loc 1 252 41 discriminator 2
	lbu	a4,0(a4)	# _21, *_17
# BME680_driver_patched/bme680.c:252: 				tmp_buff[(2 * index) + 1] = reg_data[index];
	.loc 1 252 31 discriminator 2
	addi	a3,s0,-16	#, tmp141,
	add	a5,a3,a5	# _20, tmp121, tmp141
	sb	a4,-44(a5)	# _21, tmp_buff
# BME680_driver_patched/bme680.c:244: 			for (index = 0; index < len; index++) {
	.loc 1 244 38 discriminator 2
	lhu	a5,-20(s0)	# index.0_22, index
	addi	a5,a5,1	#, tmp122, index.0_22
	sh	a5,-20(s0)	# tmp122, index
.L10:
# BME680_driver_patched/bme680.c:244: 			for (index = 0; index < len; index++) {
	.loc 1 244 26 discriminator 1
	lbu	a5,-73(s0)	# tmp123, len
	slli	a5,a5,16	#, _23, tmp123
	srli	a5,a5,16	#, _23, _23
# BME680_driver_patched/bme680.c:244: 			for (index = 0; index < len; index++) {
	.loc 1 244 4 discriminator 1
	lhu	a4,-20(s0)	# tmp124, index
	bltu	a4,a5,.L13	#, tmp124, _23,
# BME680_driver_patched/bme680.c:255: 			if (rslt == BME680_OK) {
	.loc 1 255 7
	lb	a5,-17(s0)		# tmp125, rslt
	bnez	a5,.L16	#, tmp125,
# BME680_driver_patched/bme680.c:256: 				dev->com_rslt = dev->write(dev->dev_id, tmp_buff[0], &tmp_buff[1], (2 * len) - 1);
	.loc 1 256 24
	lw	a5,-80(s0)		# tmp126, dev
	lw	a6,80(a5)		# _24, dev_43(D)->write
# BME680_driver_patched/bme680.c:256: 				dev->com_rslt = dev->write(dev->dev_id, tmp_buff[0], &tmp_buff[1], (2 * len) - 1);
	.loc 1 256 21
	lw	a5,-80(s0)		# tmp127, dev
	lbu	a4,1(a5)	# _25, dev_43(D)->dev_id
	lbu	a1,-60(s0)	# _26, tmp_buff
	lbu	a5,-73(s0)	# tmp128, len
	slli	a5,a5,16	#, _27, tmp128
	srli	a5,a5,16	#, _27, _27
	slli	a5,a5,1	#, tmp129, _27
	slli	a5,a5,16	#, _28, tmp129
	srli	a5,a5,16	#, _28, _28
	addi	a5,a5,-1	#, tmp130, _28
	slli	a3,a5,16	#, _29, tmp130
	srli	a3,a3,16	#, _29, _29
	addi	a5,s0,-60	#, tmp131,
	addi	a5,a5,1	#, tmp132, tmp131
	mv	a2,a5	#, tmp132
	mv	a0,a4	#, _25
	jalr	a6		# _24
.LVL0:
	mv	a5,a0	# tmp133,
	mv	a4,a5	# _30, tmp133
# BME680_driver_patched/bme680.c:256: 				dev->com_rslt = dev->write(dev->dev_id, tmp_buff[0], &tmp_buff[1], (2 * len) - 1);
	.loc 1 256 19
	lw	a5,-80(s0)		# tmp134, dev
	sb	a4,88(a5)	# _30, dev_43(D)->com_rslt
# BME680_driver_patched/bme680.c:257: 				if (dev->com_rslt != 0)
	.loc 1 257 12
	lw	a5,-80(s0)		# tmp135, dev
	lb	a5,88(a5)		# _31, dev_43(D)->com_rslt
# BME680_driver_patched/bme680.c:257: 				if (dev->com_rslt != 0)
	.loc 1 257 8
	beqz	a5,.L16	#, _31,
# BME680_driver_patched/bme680.c:258: 					rslt = BME680_E_COM_FAIL;
	.loc 1 258 11
	li	a5,-2		# tmp136,
	sb	a5,-17(s0)	# tmp136, rslt
# BME680_driver_patched/bme680.c:255: 			if (rslt == BME680_OK) {
	.loc 1 255 7
	j	.L16		#
.L9:
# BME680_driver_patched/bme680.c:261: 			rslt = BME680_E_INVALID_LENGTH;
	.loc 1 261 9
	li	a5,-4		# tmp137,
	sb	a5,-17(s0)	# tmp137, rslt
	j	.L8		#
.L16:
# BME680_driver_patched/bme680.c:255: 			if (rslt == BME680_OK) {
	.loc 1 255 7
	nop	
.L8:
# BME680_driver_patched/bme680.c:265: 	return rslt;
	.loc 1 265 9
	lb	a5,-17(s0)		# _60, rslt
# BME680_driver_patched/bme680.c:266: }
	.loc 1 266 1
	mv	a0,a5	#, <retval>
	lw	ra,76(sp)		#,
.LCFI15:
	lw	s0,72(sp)		#,
.LCFI16:
	addi	sp,sp,80	#,,
.LCFI17:
	jr	ra		#
.LFE2:
	.size	bme680_set_regs, .-bme680_set_regs
	.align	2
	.globl	bme680_soft_reset
	.type	bme680_soft_reset, @function
bme680_soft_reset:
.LFB3:
	.loc 1 272 1
	addi	sp,sp,-48	#,,
.LCFI18:
	sw	ra,44(sp)	#,
	sw	s0,40(sp)	#,
.LCFI19:
	addi	s0,sp,48	#,,
.LCFI20:
	sw	a0,-36(s0)	# dev, dev
# BME680_driver_patched/bme680.c:274: 	uint8_t reg_addr = BME680_SOFT_RESET_ADDR;
	.loc 1 274 10
	li	a5,-32		# tmp77,
	sb	a5,-18(s0)	# tmp77, reg_addr
# BME680_driver_patched/bme680.c:276: 	uint8_t soft_rst_cmd = BME680_SOFT_RESET_CMD;
	.loc 1 276 10
	li	a5,-74		# tmp78,
	sb	a5,-19(s0)	# tmp78, soft_rst_cmd
# BME680_driver_patched/bme680.c:279: 	rslt = null_ptr_check(dev);
	.loc 1 279 9
	lw	a0,-36(s0)		#, dev
	call	null_ptr_check		#
	mv	a5,a0	# tmp79,
	sb	a5,-17(s0)	# tmp79, rslt
# BME680_driver_patched/bme680.c:280: 	if (rslt == BME680_OK) {
	.loc 1 280 5
	lb	a5,-17(s0)		# tmp80, rslt
	bnez	a5,.L18	#, tmp80,
# BME680_driver_patched/bme680.c:281: 		if (dev->intf == BME680_SPI_INTF)
	.loc 1 281 10
	lw	a5,-36(s0)		# tmp81, dev
	lw	a5,4(a5)		# _1, dev_11(D)->intf
# BME680_driver_patched/bme680.c:281: 		if (dev->intf == BME680_SPI_INTF)
	.loc 1 281 6
	bnez	a5,.L19	#, _1,
# BME680_driver_patched/bme680.c:282: 			rslt = get_mem_page(dev);
	.loc 1 282 11
	lw	a0,-36(s0)		#, dev
	call	get_mem_page		#
	mv	a5,a0	# tmp82,
	sb	a5,-17(s0)	# tmp82, rslt
.L19:
# BME680_driver_patched/bme680.c:285: 		if (rslt == BME680_OK) {
	.loc 1 285 6
	lb	a5,-17(s0)		# tmp83, rslt
	bnez	a5,.L18	#, tmp83,
# BME680_driver_patched/bme680.c:286: 			rslt = bme680_set_regs(&reg_addr, &soft_rst_cmd, 1, dev);
	.loc 1 286 11
	addi	a4,s0,-19	#, tmp84,
	addi	a5,s0,-18	#, tmp85,
	lw	a3,-36(s0)		#, dev
	li	a2,1		#,
	mv	a1,a4	#, tmp84
	mv	a0,a5	#, tmp85
	call	bme680_set_regs		#
	mv	a5,a0	# tmp86,
	sb	a5,-17(s0)	# tmp86, rslt
# BME680_driver_patched/bme680.c:288: 			dev->delay_ms(BME680_RESET_PERIOD);
	.loc 1 288 7
	lw	a5,-36(s0)		# tmp87, dev
	lw	a5,84(a5)		# _2, dev_11(D)->delay_ms
# BME680_driver_patched/bme680.c:288: 			dev->delay_ms(BME680_RESET_PERIOD);
	.loc 1 288 4
	li	a0,10		#,
	jalr	a5		# _2
.LVL1:
# BME680_driver_patched/bme680.c:290: 			if (rslt == BME680_OK) {
	.loc 1 290 7
	lb	a5,-17(s0)		# tmp88, rslt
	bnez	a5,.L18	#, tmp88,
# BME680_driver_patched/bme680.c:292: 				if (dev->intf == BME680_SPI_INTF)
	.loc 1 292 12
	lw	a5,-36(s0)		# tmp89, dev
	lw	a5,4(a5)		# _3, dev_11(D)->intf
# BME680_driver_patched/bme680.c:292: 				if (dev->intf == BME680_SPI_INTF)
	.loc 1 292 8
	bnez	a5,.L18	#, _3,
# BME680_driver_patched/bme680.c:293: 					rslt = get_mem_page(dev);
	.loc 1 293 13
	lw	a0,-36(s0)		#, dev
	call	get_mem_page		#
	mv	a5,a0	# tmp90,
	sb	a5,-17(s0)	# tmp90, rslt
.L18:
# BME680_driver_patched/bme680.c:298: 	return rslt;
	.loc 1 298 9
	lb	a5,-17(s0)		# _21, rslt
# BME680_driver_patched/bme680.c:299: }
	.loc 1 299 1
	mv	a0,a5	#, <retval>
	lw	ra,44(sp)		#,
.LCFI21:
	lw	s0,40(sp)		#,
.LCFI22:
	addi	sp,sp,48	#,,
.LCFI23:
	jr	ra		#
.LFE3:
	.size	bme680_soft_reset, .-bme680_soft_reset
	.align	2
	.globl	bme680_set_sensor_settings
	.type	bme680_set_sensor_settings, @function
bme680_set_sensor_settings:
.LFB4:
	.loc 1 306 1
	addi	sp,sp,-64	#,,
.LCFI24:
	sw	ra,60(sp)	#,
	sw	s0,56(sp)	#,
.LCFI25:
	addi	s0,sp,64	#,,
.LCFI26:
	mv	a5,a0	# tmp185, desired_settings
	sw	a1,-56(s0)	# dev, dev
	sh	a5,-50(s0)	# tmp186, desired_settings
# BME680_driver_patched/bme680.c:309: 	uint8_t data = 0;
	.loc 1 309 10
	sb	zero,-21(s0)	#, data
# BME680_driver_patched/bme680.c:310: 	uint8_t count = 0;
	.loc 1 310 10
	sb	zero,-18(s0)	#, count
# BME680_driver_patched/bme680.c:311: 	uint8_t reg_array[BME680_REG_BUFFER_LENGTH] = { 0 };
	.loc 1 311 10
	sw	zero,-28(s0)	#, reg_array
	sh	zero,-24(s0)	#, reg_array
# BME680_driver_patched/bme680.c:312: 	uint8_t data_array[BME680_REG_BUFFER_LENGTH] = { 0 };
	.loc 1 312 10
	sw	zero,-36(s0)	#, data_array
	sh	zero,-32(s0)	#, data_array
# BME680_driver_patched/bme680.c:313: 	uint8_t intended_power_mode = dev->power_mode; /* Save intended power mode */
	.loc 1 313 10
	lw	a5,-56(s0)		# tmp187, dev
	lbu	a5,72(a5)	# tmp188, dev_157(D)->power_mode
	sb	a5,-19(s0)	# tmp188, intended_power_mode
# BME680_driver_patched/bme680.c:316: 	rslt = null_ptr_check(dev);
	.loc 1 316 9
	lw	a0,-56(s0)		#, dev
	call	null_ptr_check		#
	mv	a5,a0	# tmp189,
	sb	a5,-17(s0)	# tmp189, rslt
# BME680_driver_patched/bme680.c:317: 	if (rslt == BME680_OK) {
	.loc 1 317 5
	lb	a5,-17(s0)		# tmp190, rslt
	bnez	a5,.L22	#, tmp190,
# BME680_driver_patched/bme680.c:318: 		if (desired_settings & BME680_GAS_MEAS_SEL)
	.loc 1 318 24
	lhu	a5,-50(s0)	# _1, desired_settings
	andi	a5,a5,8	#, _2, _1
# BME680_driver_patched/bme680.c:318: 		if (desired_settings & BME680_GAS_MEAS_SEL)
	.loc 1 318 6
	beqz	a5,.L23	#, _2,
# BME680_driver_patched/bme680.c:319: 			rslt = set_gas_config(dev);
	.loc 1 319 11
	lw	a0,-56(s0)		#, dev
	call	set_gas_config		#
	mv	a5,a0	# tmp191,
	sb	a5,-17(s0)	# tmp191, rslt
.L23:
# BME680_driver_patched/bme680.c:321: 		dev->power_mode = BME680_SLEEP_MODE;
	.loc 1 321 19
	lw	a5,-56(s0)		# tmp192, dev
	sb	zero,72(a5)	#, dev_157(D)->power_mode
# BME680_driver_patched/bme680.c:322: 		if (rslt == BME680_OK)
	.loc 1 322 6
	lb	a5,-17(s0)		# tmp193, rslt
	bnez	a5,.L24	#, tmp193,
# BME680_driver_patched/bme680.c:323: 			rslt = bme680_set_sensor_mode(dev);
	.loc 1 323 11
	lw	a0,-56(s0)		#, dev
	call	bme680_set_sensor_mode		#
	mv	a5,a0	# tmp194,
	sb	a5,-17(s0)	# tmp194, rslt
.L24:
# BME680_driver_patched/bme680.c:326: 		if (desired_settings & BME680_FILTER_SEL) {
	.loc 1 326 24
	lhu	a5,-50(s0)	# _3, desired_settings
	andi	a5,a5,16	#, _4, _3
# BME680_driver_patched/bme680.c:326: 		if (desired_settings & BME680_FILTER_SEL) {
	.loc 1 326 6
	beqz	a5,.L25	#, _4,
# BME680_driver_patched/bme680.c:327: 			rslt = boundary_check(&dev->tph_sett.filter, BME680_FILTER_SIZE_0, BME680_FILTER_SIZE_127, dev);
	.loc 1 327 11
	lw	a5,-56(s0)		# tmp195, dev
	addi	a5,a5,63	#, _5, tmp195
	lw	a3,-56(s0)		#, dev
	li	a2,7		#,
	li	a1,0		#,
	mv	a0,a5	#, _5
	call	boundary_check		#
	mv	a5,a0	# tmp196,
	sb	a5,-17(s0)	# tmp196, rslt
# BME680_driver_patched/bme680.c:328: 			reg_addr = BME680_CONF_ODR_FILT_ADDR;
	.loc 1 328 13
	li	a5,117		# tmp197,
	sb	a5,-20(s0)	# tmp197, reg_addr
# BME680_driver_patched/bme680.c:330: 			if (rslt == BME680_OK)
	.loc 1 330 7
	lb	a5,-17(s0)		# tmp198, rslt
	bnez	a5,.L26	#, tmp198,
# BME680_driver_patched/bme680.c:331: 				rslt = bme680_get_regs(reg_addr, &data, 1, dev);
	.loc 1 331 12
	addi	a4,s0,-21	#, tmp199,
	lbu	a5,-20(s0)	# tmp200, reg_addr
	lw	a3,-56(s0)		#, dev
	li	a2,1		#,
	mv	a1,a4	#, tmp199
	mv	a0,a5	#, tmp200
	call	bme680_get_regs		#
	mv	a5,a0	# tmp201,
	sb	a5,-17(s0)	# tmp201, rslt
.L26:
# BME680_driver_patched/bme680.c:333: 			if (desired_settings & BME680_FILTER_SEL)
	.loc 1 333 25
	lhu	a5,-50(s0)	# _6, desired_settings
	andi	a5,a5,16	#, _7, _6
# BME680_driver_patched/bme680.c:333: 			if (desired_settings & BME680_FILTER_SEL)
	.loc 1 333 7
	beqz	a5,.L27	#, _7,
# BME680_driver_patched/bme680.c:334: 				data = BME680_SET_BITS(data, BME680_FILTER, dev->tph_sett.filter);
	.loc 1 334 12
	lbu	a5,-21(s0)	# data.1_8, data
	slli	a5,a5,24	#, data.2_9, data.1_8
	srai	a5,a5,24	#, data.2_9, data.2_9
	andi	a5,a5,-29	#, tmp202, data.2_9
	slli	a4,a5,24	#, _10, tmp202
	srai	a4,a4,24	#, _10, _10
	lw	a5,-56(s0)		# tmp203, dev
	lbu	a5,63(a5)	# _11, dev_157(D)->tph_sett.filter
	slli	a5,a5,2	#, _13, _12
	slli	a5,a5,24	#, _14, _13
	srai	a5,a5,24	#, _14, _14
	andi	a5,a5,28	#, tmp204, _14
	slli	a5,a5,24	#, _15, tmp204
	srai	a5,a5,24	#, _15, _15
	or	a5,a4,a5	# _15, tmp205, _10
	slli	a5,a5,24	#, _16, tmp205
	srai	a5,a5,24	#, _16, _16
	andi	a5,a5,0xff	# _17, _16
# BME680_driver_patched/bme680.c:334: 				data = BME680_SET_BITS(data, BME680_FILTER, dev->tph_sett.filter);
	.loc 1 334 10
	sb	a5,-21(s0)	# _17, data
.L27:
# BME680_driver_patched/bme680.c:336: 			reg_array[count] = reg_addr; /* Append configuration */
	.loc 1 336 13
	lbu	a5,-18(s0)	# _18, count
# BME680_driver_patched/bme680.c:336: 			reg_array[count] = reg_addr; /* Append configuration */
	.loc 1 336 21
	addi	a4,s0,-16	#, tmp288,
	add	a5,a4,a5	# _18, tmp206, tmp288
	lbu	a4,-20(s0)	# tmp207, reg_addr
	sb	a4,-12(a5)	# tmp207, reg_array
# BME680_driver_patched/bme680.c:337: 			data_array[count] = data;
	.loc 1 337 14
	lbu	a5,-18(s0)	# _19, count
# BME680_driver_patched/bme680.c:337: 			data_array[count] = data;
	.loc 1 337 22
	lbu	a4,-21(s0)	# data.3_20, data
	addi	a3,s0,-16	#, tmp289,
	add	a5,a3,a5	# _19, tmp208, tmp289
	sb	a4,-20(a5)	# data.3_20, data_array
# BME680_driver_patched/bme680.c:338: 			count++;
	.loc 1 338 9
	lbu	a5,-18(s0)	# count.4_21, count
	addi	a5,a5,1	#, tmp209, count.4_21
	sb	a5,-18(s0)	# tmp209, count
.L25:
# BME680_driver_patched/bme680.c:342: 		if (desired_settings & BME680_HCNTRL_SEL) {
	.loc 1 342 24
	lhu	a5,-50(s0)	# _22, desired_settings
	andi	a5,a5,32	#, _23, _22
# BME680_driver_patched/bme680.c:342: 		if (desired_settings & BME680_HCNTRL_SEL) {
	.loc 1 342 6
	beqz	a5,.L28	#, _23,
# BME680_driver_patched/bme680.c:343: 			rslt = boundary_check(&dev->gas_sett.heatr_ctrl, BME680_ENABLE_HEATER,
	.loc 1 343 11
	lw	a5,-56(s0)		# tmp210, dev
	addi	a5,a5,65	#, _24, tmp210
	lw	a3,-56(s0)		#, dev
	li	a2,8		#,
	li	a1,0		#,
	mv	a0,a5	#, _24
	call	boundary_check		#
	mv	a5,a0	# tmp211,
	sb	a5,-17(s0)	# tmp211, rslt
# BME680_driver_patched/bme680.c:345: 			reg_addr = BME680_CONF_HEAT_CTRL_ADDR;
	.loc 1 345 13
	li	a5,112		# tmp212,
	sb	a5,-20(s0)	# tmp212, reg_addr
# BME680_driver_patched/bme680.c:347: 			if (rslt == BME680_OK)
	.loc 1 347 7
	lb	a5,-17(s0)		# tmp213, rslt
	bnez	a5,.L29	#, tmp213,
# BME680_driver_patched/bme680.c:348: 				rslt = bme680_get_regs(reg_addr, &data, 1, dev);
	.loc 1 348 12
	addi	a4,s0,-21	#, tmp214,
	lbu	a5,-20(s0)	# tmp215, reg_addr
	lw	a3,-56(s0)		#, dev
	li	a2,1		#,
	mv	a1,a4	#, tmp214
	mv	a0,a5	#, tmp215
	call	bme680_get_regs		#
	mv	a5,a0	# tmp216,
	sb	a5,-17(s0)	# tmp216, rslt
.L29:
# BME680_driver_patched/bme680.c:349: 			data = BME680_SET_BITS_POS_0(data, BME680_HCTRL, dev->gas_sett.heatr_ctrl);
	.loc 1 349 11
	lbu	a5,-21(s0)	# data.5_25, data
	slli	a5,a5,24	#, data.6_26, data.5_25
	srai	a5,a5,24	#, data.6_26, data.6_26
	andi	a5,a5,-9	#, tmp217, data.6_26
	slli	a4,a5,24	#, _27, tmp217
	srai	a4,a4,24	#, _27, _27
	lw	a5,-56(s0)		# tmp218, dev
	lbu	a5,65(a5)	# _28, dev_157(D)->gas_sett.heatr_ctrl
	slli	a5,a5,24	#, _29, _28
	srai	a5,a5,24	#, _29, _29
	andi	a5,a5,8	#, tmp219, _29
	slli	a5,a5,24	#, _30, tmp219
	srai	a5,a5,24	#, _30, _30
	or	a5,a4,a5	# _30, tmp220, _27
	slli	a5,a5,24	#, _31, tmp220
	srai	a5,a5,24	#, _31, _31
	andi	a5,a5,0xff	# _32, _31
# BME680_driver_patched/bme680.c:349: 			data = BME680_SET_BITS_POS_0(data, BME680_HCTRL, dev->gas_sett.heatr_ctrl);
	.loc 1 349 9
	sb	a5,-21(s0)	# _32, data
# BME680_driver_patched/bme680.c:351: 			reg_array[count] = reg_addr; /* Append configuration */
	.loc 1 351 13
	lbu	a5,-18(s0)	# _33, count
# BME680_driver_patched/bme680.c:351: 			reg_array[count] = reg_addr; /* Append configuration */
	.loc 1 351 21
	addi	a4,s0,-16	#, tmp290,
	add	a5,a4,a5	# _33, tmp221, tmp290
	lbu	a4,-20(s0)	# tmp222, reg_addr
	sb	a4,-12(a5)	# tmp222, reg_array
# BME680_driver_patched/bme680.c:352: 			data_array[count] = data;
	.loc 1 352 14
	lbu	a5,-18(s0)	# _34, count
# BME680_driver_patched/bme680.c:352: 			data_array[count] = data;
	.loc 1 352 22
	lbu	a4,-21(s0)	# data.7_35, data
	addi	a3,s0,-16	#, tmp291,
	add	a5,a3,a5	# _34, tmp223, tmp291
	sb	a4,-20(a5)	# data.7_35, data_array
# BME680_driver_patched/bme680.c:353: 			count++;
	.loc 1 353 9
	lbu	a5,-18(s0)	# count.8_36, count
	addi	a5,a5,1	#, tmp224, count.8_36
	sb	a5,-18(s0)	# tmp224, count
.L28:
# BME680_driver_patched/bme680.c:357: 		if (desired_settings & (BME680_OST_SEL | BME680_OSP_SEL)) {
	.loc 1 357 24
	lhu	a5,-50(s0)	# _37, desired_settings
	andi	a5,a5,3	#, _38, _37
# BME680_driver_patched/bme680.c:357: 		if (desired_settings & (BME680_OST_SEL | BME680_OSP_SEL)) {
	.loc 1 357 6
	beqz	a5,.L30	#, _38,
# BME680_driver_patched/bme680.c:358: 			rslt = boundary_check(&dev->tph_sett.os_temp, BME680_OS_NONE, BME680_OS_16X, dev);
	.loc 1 358 11
	lw	a5,-56(s0)		# tmp225, dev
	addi	a5,a5,61	#, _39, tmp225
	lw	a3,-56(s0)		#, dev
	li	a2,5		#,
	li	a1,0		#,
	mv	a0,a5	#, _39
	call	boundary_check		#
	mv	a5,a0	# tmp226,
	sb	a5,-17(s0)	# tmp226, rslt
# BME680_driver_patched/bme680.c:359: 			reg_addr = BME680_CONF_T_P_MODE_ADDR;
	.loc 1 359 13
	li	a5,116		# tmp227,
	sb	a5,-20(s0)	# tmp227, reg_addr
# BME680_driver_patched/bme680.c:361: 			if (rslt == BME680_OK)
	.loc 1 361 7
	lb	a5,-17(s0)		# tmp228, rslt
	bnez	a5,.L31	#, tmp228,
# BME680_driver_patched/bme680.c:362: 				rslt = bme680_get_regs(reg_addr, &data, 1, dev);
	.loc 1 362 12
	addi	a4,s0,-21	#, tmp229,
	lbu	a5,-20(s0)	# tmp230, reg_addr
	lw	a3,-56(s0)		#, dev
	li	a2,1		#,
	mv	a1,a4	#, tmp229
	mv	a0,a5	#, tmp230
	call	bme680_get_regs		#
	mv	a5,a0	# tmp231,
	sb	a5,-17(s0)	# tmp231, rslt
.L31:
# BME680_driver_patched/bme680.c:364: 			if (desired_settings & BME680_OST_SEL)
	.loc 1 364 25
	lhu	a5,-50(s0)	# _40, desired_settings
	andi	a5,a5,1	#, _41, _40
# BME680_driver_patched/bme680.c:364: 			if (desired_settings & BME680_OST_SEL)
	.loc 1 364 7
	beqz	a5,.L32	#, _41,
# BME680_driver_patched/bme680.c:365: 				data = BME680_SET_BITS(data, BME680_OST, dev->tph_sett.os_temp);
	.loc 1 365 12
	lbu	a5,-21(s0)	# data.9_42, data
	slli	a5,a5,24	#, data.10_43, data.9_42
	srai	a5,a5,24	#, data.10_43, data.10_43
	andi	a5,a5,31	#, tmp232, data.10_43
	slli	a4,a5,24	#, _44, tmp232
	srai	a4,a4,24	#, _44, _44
	lw	a5,-56(s0)		# tmp233, dev
	lbu	a5,61(a5)	# _45, dev_157(D)->tph_sett.os_temp
	slli	a5,a5,5	#, _47, _46
	slli	a5,a5,24	#, _48, _47
	srai	a5,a5,24	#, _48, _48
	or	a5,a4,a5	# _48, tmp234, _44
	slli	a5,a5,24	#, _49, tmp234
	srai	a5,a5,24	#, _49, _49
	andi	a5,a5,0xff	# _50, _49
# BME680_driver_patched/bme680.c:365: 				data = BME680_SET_BITS(data, BME680_OST, dev->tph_sett.os_temp);
	.loc 1 365 10
	sb	a5,-21(s0)	# _50, data
.L32:
# BME680_driver_patched/bme680.c:367: 			if (desired_settings & BME680_OSP_SEL)
	.loc 1 367 25
	lhu	a5,-50(s0)	# _51, desired_settings
	andi	a5,a5,2	#, _52, _51
# BME680_driver_patched/bme680.c:367: 			if (desired_settings & BME680_OSP_SEL)
	.loc 1 367 7
	beqz	a5,.L33	#, _52,
# BME680_driver_patched/bme680.c:368: 				data = BME680_SET_BITS(data, BME680_OSP, dev->tph_sett.os_pres);
	.loc 1 368 12
	lbu	a5,-21(s0)	# data.11_53, data
	slli	a5,a5,24	#, data.12_54, data.11_53
	srai	a5,a5,24	#, data.12_54, data.12_54
	andi	a5,a5,-29	#, tmp235, data.12_54
	slli	a4,a5,24	#, _55, tmp235
	srai	a4,a4,24	#, _55, _55
	lw	a5,-56(s0)		# tmp236, dev
	lbu	a5,62(a5)	# _56, dev_157(D)->tph_sett.os_pres
	slli	a5,a5,2	#, _58, _57
	slli	a5,a5,24	#, _59, _58
	srai	a5,a5,24	#, _59, _59
	andi	a5,a5,28	#, tmp237, _59
	slli	a5,a5,24	#, _60, tmp237
	srai	a5,a5,24	#, _60, _60
	or	a5,a4,a5	# _60, tmp238, _55
	slli	a5,a5,24	#, _61, tmp238
	srai	a5,a5,24	#, _61, _61
	andi	a5,a5,0xff	# _62, _61
# BME680_driver_patched/bme680.c:368: 				data = BME680_SET_BITS(data, BME680_OSP, dev->tph_sett.os_pres);
	.loc 1 368 10
	sb	a5,-21(s0)	# _62, data
.L33:
# BME680_driver_patched/bme680.c:370: 			reg_array[count] = reg_addr;
	.loc 1 370 13
	lbu	a5,-18(s0)	# _63, count
# BME680_driver_patched/bme680.c:370: 			reg_array[count] = reg_addr;
	.loc 1 370 21
	addi	a4,s0,-16	#, tmp292,
	add	a5,a4,a5	# _63, tmp239, tmp292
	lbu	a4,-20(s0)	# tmp240, reg_addr
	sb	a4,-12(a5)	# tmp240, reg_array
# BME680_driver_patched/bme680.c:371: 			data_array[count] = data;
	.loc 1 371 14
	lbu	a5,-18(s0)	# _64, count
# BME680_driver_patched/bme680.c:371: 			data_array[count] = data;
	.loc 1 371 22
	lbu	a4,-21(s0)	# data.13_65, data
	addi	a3,s0,-16	#, tmp293,
	add	a5,a3,a5	# _64, tmp241, tmp293
	sb	a4,-20(a5)	# data.13_65, data_array
# BME680_driver_patched/bme680.c:372: 			count++;
	.loc 1 372 9
	lbu	a5,-18(s0)	# count.14_66, count
	addi	a5,a5,1	#, tmp242, count.14_66
	sb	a5,-18(s0)	# tmp242, count
.L30:
# BME680_driver_patched/bme680.c:376: 		if (desired_settings & BME680_OSH_SEL) {
	.loc 1 376 24
	lhu	a5,-50(s0)	# _67, desired_settings
	andi	a5,a5,4	#, _68, _67
# BME680_driver_patched/bme680.c:376: 		if (desired_settings & BME680_OSH_SEL) {
	.loc 1 376 6
	beqz	a5,.L34	#, _68,
# BME680_driver_patched/bme680.c:377: 			rslt = boundary_check(&dev->tph_sett.os_hum, BME680_OS_NONE, BME680_OS_16X, dev);
	.loc 1 377 11
	lw	a5,-56(s0)		# tmp243, dev
	addi	a5,a5,60	#, _69, tmp243
	lw	a3,-56(s0)		#, dev
	li	a2,5		#,
	li	a1,0		#,
	mv	a0,a5	#, _69
	call	boundary_check		#
	mv	a5,a0	# tmp244,
	sb	a5,-17(s0)	# tmp244, rslt
# BME680_driver_patched/bme680.c:378: 			reg_addr = BME680_CONF_OS_H_ADDR;
	.loc 1 378 13
	li	a5,114		# tmp245,
	sb	a5,-20(s0)	# tmp245, reg_addr
# BME680_driver_patched/bme680.c:380: 			if (rslt == BME680_OK)
	.loc 1 380 7
	lb	a5,-17(s0)		# tmp246, rslt
	bnez	a5,.L35	#, tmp246,
# BME680_driver_patched/bme680.c:381: 				rslt = bme680_get_regs(reg_addr, &data, 1, dev);
	.loc 1 381 12
	addi	a4,s0,-21	#, tmp247,
	lbu	a5,-20(s0)	# tmp248, reg_addr
	lw	a3,-56(s0)		#, dev
	li	a2,1		#,
	mv	a1,a4	#, tmp247
	mv	a0,a5	#, tmp248
	call	bme680_get_regs		#
	mv	a5,a0	# tmp249,
	sb	a5,-17(s0)	# tmp249, rslt
.L35:
# BME680_driver_patched/bme680.c:382: 			data = BME680_SET_BITS_POS_0(data, BME680_OSH, dev->tph_sett.os_hum);
	.loc 1 382 11
	lbu	a5,-21(s0)	# data.15_70, data
	slli	a5,a5,24	#, data.16_71, data.15_70
	srai	a5,a5,24	#, data.16_71, data.16_71
	andi	a5,a5,-8	#, tmp250, data.16_71
	slli	a4,a5,24	#, _72, tmp250
	srai	a4,a4,24	#, _72, _72
	lw	a5,-56(s0)		# tmp251, dev
	lbu	a5,60(a5)	# _73, dev_157(D)->tph_sett.os_hum
	slli	a5,a5,24	#, _74, _73
	srai	a5,a5,24	#, _74, _74
	andi	a5,a5,7	#, tmp252, _74
	slli	a5,a5,24	#, _75, tmp252
	srai	a5,a5,24	#, _75, _75
	or	a5,a4,a5	# _75, tmp253, _72
	slli	a5,a5,24	#, _76, tmp253
	srai	a5,a5,24	#, _76, _76
	andi	a5,a5,0xff	# _77, _76
# BME680_driver_patched/bme680.c:382: 			data = BME680_SET_BITS_POS_0(data, BME680_OSH, dev->tph_sett.os_hum);
	.loc 1 382 9
	sb	a5,-21(s0)	# _77, data
# BME680_driver_patched/bme680.c:384: 			reg_array[count] = reg_addr; /* Append configuration */
	.loc 1 384 13
	lbu	a5,-18(s0)	# _78, count
# BME680_driver_patched/bme680.c:384: 			reg_array[count] = reg_addr; /* Append configuration */
	.loc 1 384 21
	addi	a4,s0,-16	#, tmp294,
	add	a5,a4,a5	# _78, tmp254, tmp294
	lbu	a4,-20(s0)	# tmp255, reg_addr
	sb	a4,-12(a5)	# tmp255, reg_array
# BME680_driver_patched/bme680.c:385: 			data_array[count] = data;
	.loc 1 385 14
	lbu	a5,-18(s0)	# _79, count
# BME680_driver_patched/bme680.c:385: 			data_array[count] = data;
	.loc 1 385 22
	lbu	a4,-21(s0)	# data.17_80, data
	addi	a3,s0,-16	#, tmp295,
	add	a5,a3,a5	# _79, tmp256, tmp295
	sb	a4,-20(a5)	# data.17_80, data_array
# BME680_driver_patched/bme680.c:386: 			count++;
	.loc 1 386 9
	lbu	a5,-18(s0)	# count.18_81, count
	addi	a5,a5,1	#, tmp257, count.18_81
	sb	a5,-18(s0)	# tmp257, count
.L34:
# BME680_driver_patched/bme680.c:390: 		if (desired_settings & (BME680_RUN_GAS_SEL | BME680_NBCONV_SEL)) {
	.loc 1 390 24
	lhu	a5,-50(s0)	# _82, desired_settings
	andi	a5,a5,192	#, _83, _82
# BME680_driver_patched/bme680.c:390: 		if (desired_settings & (BME680_RUN_GAS_SEL | BME680_NBCONV_SEL)) {
	.loc 1 390 6
	beqz	a5,.L36	#, _83,
# BME680_driver_patched/bme680.c:391: 			rslt = boundary_check(&dev->gas_sett.run_gas, BME680_RUN_GAS_DISABLE,
	.loc 1 391 11
	lw	a5,-56(s0)		# tmp258, dev
	addi	a5,a5,66	#, _84, tmp258
	lw	a3,-56(s0)		#, dev
	li	a2,1		#,
	li	a1,0		#,
	mv	a0,a5	#, _84
	call	boundary_check		#
	mv	a5,a0	# tmp259,
	sb	a5,-17(s0)	# tmp259, rslt
# BME680_driver_patched/bme680.c:393: 			if (rslt == BME680_OK) {
	.loc 1 393 7
	lb	a5,-17(s0)		# tmp260, rslt
	bnez	a5,.L37	#, tmp260,
# BME680_driver_patched/bme680.c:395: 				rslt = boundary_check(&dev->gas_sett.nb_conv, BME680_NBCONV_MIN,
	.loc 1 395 12
	lw	a5,-56(s0)		# tmp261, dev
	addi	a5,a5,64	#, _85, tmp261
	lw	a3,-56(s0)		#, dev
	li	a2,10		#,
	li	a1,0		#,
	mv	a0,a5	#, _85
	call	boundary_check		#
	mv	a5,a0	# tmp262,
	sb	a5,-17(s0)	# tmp262, rslt
.L37:
# BME680_driver_patched/bme680.c:399: 			reg_addr = BME680_CONF_ODR_RUN_GAS_NBC_ADDR;
	.loc 1 399 13
	li	a5,113		# tmp263,
	sb	a5,-20(s0)	# tmp263, reg_addr
# BME680_driver_patched/bme680.c:401: 			if (rslt == BME680_OK)
	.loc 1 401 7
	lb	a5,-17(s0)		# tmp264, rslt
	bnez	a5,.L38	#, tmp264,
# BME680_driver_patched/bme680.c:402: 				rslt = bme680_get_regs(reg_addr, &data, 1, dev);
	.loc 1 402 12
	addi	a4,s0,-21	#, tmp265,
	lbu	a5,-20(s0)	# tmp266, reg_addr
	lw	a3,-56(s0)		#, dev
	li	a2,1		#,
	mv	a1,a4	#, tmp265
	mv	a0,a5	#, tmp266
	call	bme680_get_regs		#
	mv	a5,a0	# tmp267,
	sb	a5,-17(s0)	# tmp267, rslt
.L38:
# BME680_driver_patched/bme680.c:404: 			if (desired_settings & BME680_RUN_GAS_SEL)
	.loc 1 404 25
	lhu	a5,-50(s0)	# _86, desired_settings
	andi	a5,a5,64	#, _87, _86
# BME680_driver_patched/bme680.c:404: 			if (desired_settings & BME680_RUN_GAS_SEL)
	.loc 1 404 7
	beqz	a5,.L39	#, _87,
# BME680_driver_patched/bme680.c:405: 				data = BME680_SET_BITS(data, BME680_RUN_GAS, dev->gas_sett.run_gas);
	.loc 1 405 12
	lbu	a5,-21(s0)	# data.19_88, data
	slli	a5,a5,24	#, data.20_89, data.19_88
	srai	a5,a5,24	#, data.20_89, data.20_89
	andi	a5,a5,-17	#, tmp268, data.20_89
	slli	a4,a5,24	#, _90, tmp268
	srai	a4,a4,24	#, _90, _90
	lw	a5,-56(s0)		# tmp269, dev
	lbu	a5,66(a5)	# _91, dev_157(D)->gas_sett.run_gas
	slli	a5,a5,4	#, _93, _92
	slli	a5,a5,24	#, _94, _93
	srai	a5,a5,24	#, _94, _94
	andi	a5,a5,16	#, tmp270, _94
	slli	a5,a5,24	#, _95, tmp270
	srai	a5,a5,24	#, _95, _95
	or	a5,a4,a5	# _95, tmp271, _90
	slli	a5,a5,24	#, _96, tmp271
	srai	a5,a5,24	#, _96, _96
	andi	a5,a5,0xff	# _97, _96
# BME680_driver_patched/bme680.c:405: 				data = BME680_SET_BITS(data, BME680_RUN_GAS, dev->gas_sett.run_gas);
	.loc 1 405 10
	sb	a5,-21(s0)	# _97, data
.L39:
# BME680_driver_patched/bme680.c:407: 			if (desired_settings & BME680_NBCONV_SEL)
	.loc 1 407 25
	lhu	a5,-50(s0)	# _98, desired_settings
	andi	a5,a5,128	#, _99, _98
# BME680_driver_patched/bme680.c:407: 			if (desired_settings & BME680_NBCONV_SEL)
	.loc 1 407 7
	beqz	a5,.L40	#, _99,
# BME680_driver_patched/bme680.c:408: 				data = BME680_SET_BITS_POS_0(data, BME680_NBCONV, dev->gas_sett.nb_conv);
	.loc 1 408 12
	lbu	a5,-21(s0)	# data.21_100, data
	slli	a5,a5,24	#, data.22_101, data.21_100
	srai	a5,a5,24	#, data.22_101, data.22_101
	andi	a5,a5,-16	#, tmp272, data.22_101
	slli	a4,a5,24	#, _102, tmp272
	srai	a4,a4,24	#, _102, _102
	lw	a5,-56(s0)		# tmp273, dev
	lbu	a5,64(a5)	# _103, dev_157(D)->gas_sett.nb_conv
	slli	a5,a5,24	#, _104, _103
	srai	a5,a5,24	#, _104, _104
	andi	a5,a5,15	#, tmp274, _104
	slli	a5,a5,24	#, _105, tmp274
	srai	a5,a5,24	#, _105, _105
	or	a5,a4,a5	# _105, tmp275, _102
	slli	a5,a5,24	#, _106, tmp275
	srai	a5,a5,24	#, _106, _106
	andi	a5,a5,0xff	# _107, _106
# BME680_driver_patched/bme680.c:408: 				data = BME680_SET_BITS_POS_0(data, BME680_NBCONV, dev->gas_sett.nb_conv);
	.loc 1 408 10
	sb	a5,-21(s0)	# _107, data
.L40:
# BME680_driver_patched/bme680.c:410: 			reg_array[count] = reg_addr; /* Append configuration */
	.loc 1 410 13
	lbu	a5,-18(s0)	# _108, count
# BME680_driver_patched/bme680.c:410: 			reg_array[count] = reg_addr; /* Append configuration */
	.loc 1 410 21
	addi	a4,s0,-16	#, tmp296,
	add	a5,a4,a5	# _108, tmp276, tmp296
	lbu	a4,-20(s0)	# tmp277, reg_addr
	sb	a4,-12(a5)	# tmp277, reg_array
# BME680_driver_patched/bme680.c:411: 			data_array[count] = data;
	.loc 1 411 14
	lbu	a5,-18(s0)	# _109, count
# BME680_driver_patched/bme680.c:411: 			data_array[count] = data;
	.loc 1 411 22
	lbu	a4,-21(s0)	# data.23_110, data
	addi	a3,s0,-16	#, tmp297,
	add	a5,a3,a5	# _109, tmp278, tmp297
	sb	a4,-20(a5)	# data.23_110, data_array
# BME680_driver_patched/bme680.c:412: 			count++;
	.loc 1 412 9
	lbu	a5,-18(s0)	# count.24_111, count
	addi	a5,a5,1	#, tmp279, count.24_111
	sb	a5,-18(s0)	# tmp279, count
.L36:
# BME680_driver_patched/bme680.c:415: 		if (rslt == BME680_OK)
	.loc 1 415 6
	lb	a5,-17(s0)		# tmp280, rslt
	bnez	a5,.L41	#, tmp280,
# BME680_driver_patched/bme680.c:416: 			rslt = bme680_set_regs(reg_array, data_array, count, dev);
	.loc 1 416 11
	lbu	a2,-18(s0)	# tmp281, count
	addi	a4,s0,-36	#, tmp282,
	addi	a5,s0,-28	#, tmp283,
	lw	a3,-56(s0)		#, dev
	mv	a1,a4	#, tmp282
	mv	a0,a5	#, tmp283
	call	bme680_set_regs		#
	mv	a5,a0	# tmp284,
	sb	a5,-17(s0)	# tmp284, rslt
.L41:
# BME680_driver_patched/bme680.c:419: 		dev->power_mode = intended_power_mode;
	.loc 1 419 19
	lw	a5,-56(s0)		# tmp285, dev
	lbu	a4,-19(s0)	# tmp286, intended_power_mode
	sb	a4,72(a5)	# tmp286, dev_157(D)->power_mode
.L22:
# BME680_driver_patched/bme680.c:422: 	return rslt;
	.loc 1 422 9
	lb	a5,-17(s0)		# _219, rslt
# BME680_driver_patched/bme680.c:423: }
	.loc 1 423 1
	mv	a0,a5	#, <retval>
	lw	ra,60(sp)		#,
.LCFI27:
	lw	s0,56(sp)		#,
.LCFI28:
	addi	sp,sp,64	#,,
.LCFI29:
	jr	ra		#
.LFE4:
	.size	bme680_set_sensor_settings, .-bme680_set_sensor_settings
	.align	2
	.globl	bme680_get_sensor_settings
	.type	bme680_get_sensor_settings, @function
bme680_get_sensor_settings:
.LFB5:
	.loc 1 430 1
	addi	sp,sp,-48	#,,
.LCFI30:
	sw	ra,44(sp)	#,
	sw	s0,40(sp)	#,
.LCFI31:
	addi	s0,sp,48	#,,
.LCFI32:
	mv	a5,a0	# tmp109, desired_settings
	sw	a1,-40(s0)	# dev, dev
	sh	a5,-34(s0)	# tmp110, desired_settings
# BME680_driver_patched/bme680.c:433: 	uint8_t reg_addr = BME680_CONF_HEAT_CTRL_ADDR;
	.loc 1 433 10
	li	a5,112		# tmp111,
	sb	a5,-18(s0)	# tmp111, reg_addr
# BME680_driver_patched/bme680.c:434: 	uint8_t data_array[BME680_REG_BUFFER_LENGTH] = { 0 };
	.loc 1 434 10
	sw	zero,-24(s0)	#, data_array
	sh	zero,-20(s0)	#, data_array
# BME680_driver_patched/bme680.c:437: 	rslt = null_ptr_check(dev);
	.loc 1 437 9
	lw	a0,-40(s0)		#, dev
	call	null_ptr_check		#
	mv	a5,a0	# tmp112,
	sb	a5,-17(s0)	# tmp112, rslt
# BME680_driver_patched/bme680.c:438: 	if (rslt == BME680_OK) {
	.loc 1 438 5
	lb	a5,-17(s0)		# tmp113, rslt
	bnez	a5,.L44	#, tmp113,
# BME680_driver_patched/bme680.c:439: 		rslt = bme680_get_regs(reg_addr, data_array, BME680_REG_BUFFER_LENGTH, dev);
	.loc 1 439 10
	addi	a4,s0,-24	#, tmp114,
	lbu	a5,-18(s0)	# tmp115, reg_addr
	lw	a3,-40(s0)		#, dev
	li	a2,6		#,
	mv	a1,a4	#, tmp114
	mv	a0,a5	#, tmp115
	call	bme680_get_regs		#
	mv	a5,a0	# tmp116,
	sb	a5,-17(s0)	# tmp116, rslt
# BME680_driver_patched/bme680.c:441: 		if (rslt == BME680_OK) {
	.loc 1 441 6
	lb	a5,-17(s0)		# tmp117, rslt
	bnez	a5,.L51	#, tmp117,
# BME680_driver_patched/bme680.c:442: 			if (desired_settings & BME680_GAS_MEAS_SEL)
	.loc 1 442 25
	lhu	a5,-34(s0)	# _1, desired_settings
	andi	a5,a5,8	#, _2, _1
# BME680_driver_patched/bme680.c:442: 			if (desired_settings & BME680_GAS_MEAS_SEL)
	.loc 1 442 7
	beqz	a5,.L46	#, _2,
# BME680_driver_patched/bme680.c:443: 				rslt = get_gas_config(dev);
	.loc 1 443 12
	lw	a0,-40(s0)		#, dev
	call	get_gas_config		#
	mv	a5,a0	# tmp118,
	sb	a5,-17(s0)	# tmp118, rslt
.L46:
# BME680_driver_patched/bme680.c:446: 			if (desired_settings & BME680_FILTER_SEL)
	.loc 1 446 25
	lhu	a5,-34(s0)	# _3, desired_settings
	andi	a5,a5,16	#, _4, _3
# BME680_driver_patched/bme680.c:446: 			if (desired_settings & BME680_FILTER_SEL)
	.loc 1 446 7
	beqz	a5,.L47	#, _4,
# BME680_driver_patched/bme680.c:447: 				dev->tph_sett.filter = BME680_GET_BITS(data_array[BME680_REG_FILTER_INDEX],
	.loc 1 447 28
	lbu	a5,-19(s0)	# _5, data_array
	srai	a5,a5,2	#, _7, _6
	andi	a5,a5,0xff	# _8, _7
	andi	a5,a5,7	#, tmp119, _8
	andi	a4,a5,0xff	# _9, tmp119
# BME680_driver_patched/bme680.c:447: 				dev->tph_sett.filter = BME680_GET_BITS(data_array[BME680_REG_FILTER_INDEX],
	.loc 1 447 26
	lw	a5,-40(s0)		# tmp120, dev
	sb	a4,63(a5)	# _9, dev_49(D)->tph_sett.filter
.L47:
# BME680_driver_patched/bme680.c:450: 			if (desired_settings & (BME680_OST_SEL | BME680_OSP_SEL)) {
	.loc 1 450 25
	lhu	a5,-34(s0)	# _10, desired_settings
	andi	a5,a5,3	#, _11, _10
# BME680_driver_patched/bme680.c:450: 			if (desired_settings & (BME680_OST_SEL | BME680_OSP_SEL)) {
	.loc 1 450 7
	beqz	a5,.L48	#, _11,
# BME680_driver_patched/bme680.c:451: 				dev->tph_sett.os_temp = BME680_GET_BITS(data_array[BME680_REG_TEMP_INDEX], BME680_OST);
	.loc 1 451 29
	lbu	a5,-20(s0)	# _12, data_array
	srli	a5,a5,5	#, tmp121, _12
	andi	a4,a5,0xff	# _13, tmp121
# BME680_driver_patched/bme680.c:451: 				dev->tph_sett.os_temp = BME680_GET_BITS(data_array[BME680_REG_TEMP_INDEX], BME680_OST);
	.loc 1 451 27
	lw	a5,-40(s0)		# tmp122, dev
	sb	a4,61(a5)	# _13, dev_49(D)->tph_sett.os_temp
# BME680_driver_patched/bme680.c:452: 				dev->tph_sett.os_pres = BME680_GET_BITS(data_array[BME680_REG_PRES_INDEX], BME680_OSP);
	.loc 1 452 29
	lbu	a5,-20(s0)	# _14, data_array
	srai	a5,a5,2	#, _16, _15
	andi	a5,a5,0xff	# _17, _16
	andi	a5,a5,7	#, tmp123, _17
	andi	a4,a5,0xff	# _18, tmp123
# BME680_driver_patched/bme680.c:452: 				dev->tph_sett.os_pres = BME680_GET_BITS(data_array[BME680_REG_PRES_INDEX], BME680_OSP);
	.loc 1 452 27
	lw	a5,-40(s0)		# tmp124, dev
	sb	a4,62(a5)	# _18, dev_49(D)->tph_sett.os_pres
.L48:
# BME680_driver_patched/bme680.c:455: 			if (desired_settings & BME680_OSH_SEL)
	.loc 1 455 25
	lhu	a5,-34(s0)	# _19, desired_settings
	andi	a5,a5,4	#, _20, _19
# BME680_driver_patched/bme680.c:455: 			if (desired_settings & BME680_OSH_SEL)
	.loc 1 455 7
	beqz	a5,.L49	#, _20,
# BME680_driver_patched/bme680.c:456: 				dev->tph_sett.os_hum = BME680_GET_BITS_POS_0(data_array[BME680_REG_HUM_INDEX],
	.loc 1 456 28
	lbu	a5,-22(s0)	# _21, data_array
	andi	a5,a5,7	#, tmp125, _21
	andi	a4,a5,0xff	# _22, tmp125
# BME680_driver_patched/bme680.c:456: 				dev->tph_sett.os_hum = BME680_GET_BITS_POS_0(data_array[BME680_REG_HUM_INDEX],
	.loc 1 456 26
	lw	a5,-40(s0)		# tmp126, dev
	sb	a4,60(a5)	# _22, dev_49(D)->tph_sett.os_hum
.L49:
# BME680_driver_patched/bme680.c:460: 			if (desired_settings & BME680_HCNTRL_SEL)
	.loc 1 460 25
	lhu	a5,-34(s0)	# _23, desired_settings
	andi	a5,a5,32	#, _24, _23
# BME680_driver_patched/bme680.c:460: 			if (desired_settings & BME680_HCNTRL_SEL)
	.loc 1 460 7
	beqz	a5,.L50	#, _24,
# BME680_driver_patched/bme680.c:461: 				dev->gas_sett.heatr_ctrl = BME680_GET_BITS_POS_0(data_array[BME680_REG_HCTRL_INDEX],
	.loc 1 461 32
	lbu	a5,-24(s0)	# _25, data_array
	andi	a5,a5,8	#, tmp127, _25
	andi	a4,a5,0xff	# _26, tmp127
# BME680_driver_patched/bme680.c:461: 				dev->gas_sett.heatr_ctrl = BME680_GET_BITS_POS_0(data_array[BME680_REG_HCTRL_INDEX],
	.loc 1 461 30
	lw	a5,-40(s0)		# tmp128, dev
	sb	a4,65(a5)	# _26, dev_49(D)->gas_sett.heatr_ctrl
.L50:
# BME680_driver_patched/bme680.c:464: 			if (desired_settings & (BME680_RUN_GAS_SEL | BME680_NBCONV_SEL)) {
	.loc 1 464 25
	lhu	a5,-34(s0)	# _27, desired_settings
	andi	a5,a5,192	#, _28, _27
# BME680_driver_patched/bme680.c:464: 			if (desired_settings & (BME680_RUN_GAS_SEL | BME680_NBCONV_SEL)) {
	.loc 1 464 7
	beqz	a5,.L51	#, _28,
# BME680_driver_patched/bme680.c:465: 				dev->gas_sett.nb_conv = BME680_GET_BITS_POS_0(data_array[BME680_REG_NBCONV_INDEX],
	.loc 1 465 29
	lbu	a5,-23(s0)	# _29, data_array
	andi	a5,a5,15	#, tmp129, _29
	andi	a4,a5,0xff	# _30, tmp129
# BME680_driver_patched/bme680.c:465: 				dev->gas_sett.nb_conv = BME680_GET_BITS_POS_0(data_array[BME680_REG_NBCONV_INDEX],
	.loc 1 465 27
	lw	a5,-40(s0)		# tmp130, dev
	sb	a4,64(a5)	# _30, dev_49(D)->gas_sett.nb_conv
# BME680_driver_patched/bme680.c:467: 				dev->gas_sett.run_gas = BME680_GET_BITS(data_array[BME680_REG_RUN_GAS_INDEX],
	.loc 1 467 29
	lbu	a5,-23(s0)	# _31, data_array
	srai	a5,a5,4	#, _33, _32
	andi	a5,a5,0xff	# _34, _33
	andi	a5,a5,1	#, tmp131, _34
	andi	a4,a5,0xff	# _35, tmp131
# BME680_driver_patched/bme680.c:467: 				dev->gas_sett.run_gas = BME680_GET_BITS(data_array[BME680_REG_RUN_GAS_INDEX],
	.loc 1 467 27
	lw	a5,-40(s0)		# tmp132, dev
	sb	a4,66(a5)	# _35, dev_49(D)->gas_sett.run_gas
	j	.L51		#
.L44:
# BME680_driver_patched/bme680.c:472: 		rslt = BME680_E_NULL_PTR;
	.loc 1 472 8
	li	a5,-1		# tmp133,
	sb	a5,-17(s0)	# tmp133, rslt
.L51:
# BME680_driver_patched/bme680.c:475: 	return rslt;
	.loc 1 475 9
	lb	a5,-17(s0)		# _65, rslt
# BME680_driver_patched/bme680.c:476: }
	.loc 1 476 1
	mv	a0,a5	#, <retval>
	lw	ra,44(sp)		#,
.LCFI33:
	lw	s0,40(sp)		#,
.LCFI34:
	addi	sp,sp,48	#,,
.LCFI35:
	jr	ra		#
.LFE5:
	.size	bme680_get_sensor_settings, .-bme680_get_sensor_settings
	.align	2
	.globl	bme680_set_sensor_mode
	.type	bme680_set_sensor_mode, @function
bme680_set_sensor_mode:
.LFB6:
	.loc 1 482 1
	addi	sp,sp,-48	#,,
.LCFI36:
	sw	ra,44(sp)	#,
	sw	s0,40(sp)	#,
.LCFI37:
	addi	s0,sp,48	#,,
.LCFI38:
	sw	a0,-36(s0)	# dev, dev
# BME680_driver_patched/bme680.c:485: 	uint8_t pow_mode = 0;
	.loc 1 485 10
	sb	zero,-18(s0)	#, pow_mode
# BME680_driver_patched/bme680.c:486: 	uint8_t reg_addr = BME680_CONF_T_P_MODE_ADDR;
	.loc 1 486 10
	li	a5,116		# tmp87,
	sb	a5,-20(s0)	# tmp87, reg_addr
# BME680_driver_patched/bme680.c:489: 	rslt = null_ptr_check(dev);
	.loc 1 489 9
	lw	a0,-36(s0)		#, dev
	call	null_ptr_check		#
	mv	a5,a0	# tmp88,
	sb	a5,-17(s0)	# tmp88, rslt
# BME680_driver_patched/bme680.c:490: 	if (rslt == BME680_OK) {
	.loc 1 490 5
	lb	a5,-17(s0)		# tmp89, rslt
	bnez	a5,.L54	#, tmp89,
.L56:
# BME680_driver_patched/bme680.c:493: 			rslt = bme680_get_regs(BME680_CONF_T_P_MODE_ADDR, &tmp_pow_mode, 1, dev);
	.loc 1 493 11
	addi	a5,s0,-19	#, tmp90,
	lw	a3,-36(s0)		#, dev
	li	a2,1		#,
	mv	a1,a5	#, tmp90
	li	a0,116		#,
	call	bme680_get_regs		#
	mv	a5,a0	# tmp91,
	sb	a5,-17(s0)	# tmp91, rslt
# BME680_driver_patched/bme680.c:494: 			if (rslt == BME680_OK) {
	.loc 1 494 7
	lb	a5,-17(s0)		# tmp92, rslt
	bnez	a5,.L55	#, tmp92,
# BME680_driver_patched/bme680.c:496: 				pow_mode = (tmp_pow_mode & BME680_MODE_MSK);
	.loc 1 496 30
	lbu	a5,-19(s0)	# tmp_pow_mode.25_1, tmp_pow_mode
# BME680_driver_patched/bme680.c:496: 				pow_mode = (tmp_pow_mode & BME680_MODE_MSK);
	.loc 1 496 14
	andi	a5,a5,3	#, tmp93, tmp_pow_mode.25_1
	sb	a5,-18(s0)	# tmp93, pow_mode
# BME680_driver_patched/bme680.c:498: 				if (pow_mode != BME680_SLEEP_MODE) {
	.loc 1 498 8
	lbu	a5,-18(s0)	# tmp94, pow_mode
	beqz	a5,.L55	#, tmp94,
# BME680_driver_patched/bme680.c:499: 					tmp_pow_mode = tmp_pow_mode & (~BME680_MODE_MSK); /* Set to sleep */
	.loc 1 499 34
	lbu	a5,-19(s0)	# tmp_pow_mode.26_2, tmp_pow_mode
	andi	a5,a5,-4	#, tmp95, tmp_pow_mode.26_2
	andi	a5,a5,0xff	# _3, tmp95
# BME680_driver_patched/bme680.c:499: 					tmp_pow_mode = tmp_pow_mode & (~BME680_MODE_MSK); /* Set to sleep */
	.loc 1 499 19
	sb	a5,-19(s0)	# _3, tmp_pow_mode
# BME680_driver_patched/bme680.c:500: 					rslt = bme680_set_regs(&reg_addr, &tmp_pow_mode, 1, dev);
	.loc 1 500 13
	addi	a4,s0,-19	#, tmp96,
	addi	a5,s0,-20	#, tmp97,
	lw	a3,-36(s0)		#, dev
	li	a2,1		#,
	mv	a1,a4	#, tmp96
	mv	a0,a5	#, tmp97
	call	bme680_set_regs		#
	mv	a5,a0	# tmp98,
	sb	a5,-17(s0)	# tmp98, rslt
# BME680_driver_patched/bme680.c:501: 					dev->delay_ms(BME680_POLL_PERIOD_MS);
	.loc 1 501 9
	lw	a5,-36(s0)		# tmp99, dev
	lw	a5,84(a5)		# _4, dev_24(D)->delay_ms
# BME680_driver_patched/bme680.c:501: 					dev->delay_ms(BME680_POLL_PERIOD_MS);
	.loc 1 501 6
	li	a0,10		#,
	jalr	a5		# _4
.LVL2:
.L55:
# BME680_driver_patched/bme680.c:504: 		} while (pow_mode != BME680_SLEEP_MODE);
	.loc 1 504 3
	lbu	a5,-18(s0)	# tmp100, pow_mode
	bnez	a5,.L56	#, tmp100,
# BME680_driver_patched/bme680.c:507: 		if (dev->power_mode != BME680_SLEEP_MODE) {
	.loc 1 507 10
	lw	a5,-36(s0)		# tmp101, dev
	lbu	a5,72(a5)	# _5, dev_24(D)->power_mode
# BME680_driver_patched/bme680.c:507: 		if (dev->power_mode != BME680_SLEEP_MODE) {
	.loc 1 507 6
	beqz	a5,.L54	#, _5,
# BME680_driver_patched/bme680.c:508: 			tmp_pow_mode = (tmp_pow_mode & ~BME680_MODE_MSK) | (dev->power_mode & BME680_MODE_MSK);
	.loc 1 508 33
	lbu	a5,-19(s0)	# tmp_pow_mode.27_6, tmp_pow_mode
	slli	a5,a5,24	#, tmp_pow_mode.28_7, tmp_pow_mode.27_6
	srai	a5,a5,24	#, tmp_pow_mode.28_7, tmp_pow_mode.28_7
	andi	a5,a5,-4	#, tmp102, tmp_pow_mode.28_7
	slli	a4,a5,24	#, _8, tmp102
	srai	a4,a4,24	#, _8, _8
# BME680_driver_patched/bme680.c:508: 			tmp_pow_mode = (tmp_pow_mode & ~BME680_MODE_MSK) | (dev->power_mode & BME680_MODE_MSK);
	.loc 1 508 59
	lw	a5,-36(s0)		# tmp103, dev
	lbu	a5,72(a5)	# _9, dev_24(D)->power_mode
	slli	a5,a5,24	#, _10, _9
	srai	a5,a5,24	#, _10, _10
# BME680_driver_patched/bme680.c:508: 			tmp_pow_mode = (tmp_pow_mode & ~BME680_MODE_MSK) | (dev->power_mode & BME680_MODE_MSK);
	.loc 1 508 72
	andi	a5,a5,3	#, tmp104, _10
	slli	a5,a5,24	#, _11, tmp104
	srai	a5,a5,24	#, _11, _11
# BME680_driver_patched/bme680.c:508: 			tmp_pow_mode = (tmp_pow_mode & ~BME680_MODE_MSK) | (dev->power_mode & BME680_MODE_MSK);
	.loc 1 508 53
	or	a5,a4,a5	# _11, tmp105, _8
	slli	a5,a5,24	#, _12, tmp105
	srai	a5,a5,24	#, _12, _12
	andi	a5,a5,0xff	# _13, _12
# BME680_driver_patched/bme680.c:508: 			tmp_pow_mode = (tmp_pow_mode & ~BME680_MODE_MSK) | (dev->power_mode & BME680_MODE_MSK);
	.loc 1 508 17
	sb	a5,-19(s0)	# _13, tmp_pow_mode
# BME680_driver_patched/bme680.c:509: 			if (rslt == BME680_OK)
	.loc 1 509 7
	lb	a5,-17(s0)		# tmp106, rslt
	bnez	a5,.L54	#, tmp106,
# BME680_driver_patched/bme680.c:510: 				rslt = bme680_set_regs(&reg_addr, &tmp_pow_mode, 1, dev);
	.loc 1 510 12
	addi	a4,s0,-19	#, tmp107,
	addi	a5,s0,-20	#, tmp108,
	lw	a3,-36(s0)		#, dev
	li	a2,1		#,
	mv	a1,a4	#, tmp107
	mv	a0,a5	#, tmp108
	call	bme680_set_regs		#
	mv	a5,a0	# tmp109,
	sb	a5,-17(s0)	# tmp109, rslt
.L54:
# BME680_driver_patched/bme680.c:514: 	return rslt;
	.loc 1 514 9
	lb	a5,-17(s0)		# _37, rslt
# BME680_driver_patched/bme680.c:515: }
	.loc 1 515 1
	mv	a0,a5	#, <retval>
	lw	ra,44(sp)		#,
.LCFI39:
	lw	s0,40(sp)		#,
.LCFI40:
	addi	sp,sp,48	#,,
.LCFI41:
	jr	ra		#
.LFE6:
	.size	bme680_set_sensor_mode, .-bme680_set_sensor_mode
	.align	2
	.globl	bme680_get_sensor_mode
	.type	bme680_get_sensor_mode, @function
bme680_get_sensor_mode:
.LFB7:
	.loc 1 521 1
	addi	sp,sp,-48	#,,
.LCFI42:
	sw	ra,44(sp)	#,
	sw	s0,40(sp)	#,
.LCFI43:
	addi	s0,sp,48	#,,
.LCFI44:
	sw	a0,-36(s0)	# dev, dev
# BME680_driver_patched/bme680.c:526: 	rslt = null_ptr_check(dev);
	.loc 1 526 9
	lw	a0,-36(s0)		#, dev
	call	null_ptr_check		#
	mv	a5,a0	# tmp76,
	sb	a5,-17(s0)	# tmp76, rslt
# BME680_driver_patched/bme680.c:527: 	if (rslt == BME680_OK) {
	.loc 1 527 5
	lb	a5,-17(s0)		# tmp77, rslt
	bnez	a5,.L59	#, tmp77,
# BME680_driver_patched/bme680.c:528: 		rslt = bme680_get_regs(BME680_CONF_T_P_MODE_ADDR, &mode, 1, dev);
	.loc 1 528 10
	addi	a5,s0,-18	#, tmp78,
	lw	a3,-36(s0)		#, dev
	li	a2,1		#,
	mv	a1,a5	#, tmp78
	li	a0,116		#,
	call	bme680_get_regs		#
	mv	a5,a0	# tmp79,
	sb	a5,-17(s0)	# tmp79, rslt
# BME680_driver_patched/bme680.c:530: 		dev->power_mode = mode & BME680_MODE_MSK;
	.loc 1 530 26
	lbu	a5,-18(s0)	# mode.29_1, mode
	andi	a5,a5,3	#, tmp80, mode.29_1
	andi	a4,a5,0xff	# _2, tmp80
# BME680_driver_patched/bme680.c:530: 		dev->power_mode = mode & BME680_MODE_MSK;
	.loc 1 530 19
	lw	a5,-36(s0)		# tmp81, dev
	sb	a4,72(a5)	# _2, dev_6(D)->power_mode
.L59:
# BME680_driver_patched/bme680.c:533: 	return rslt;
	.loc 1 533 9
	lb	a5,-17(s0)		# _12, rslt
# BME680_driver_patched/bme680.c:534: }
	.loc 1 534 1
	mv	a0,a5	#, <retval>
	lw	ra,44(sp)		#,
.LCFI45:
	lw	s0,40(sp)		#,
.LCFI46:
	addi	sp,sp,48	#,,
.LCFI47:
	jr	ra		#
.LFE7:
	.size	bme680_get_sensor_mode, .-bme680_get_sensor_mode
	.globl	__udivsi3
	.section	.srodata,"a"
	.align	2
.LC0:
	.byte	0
	.byte	1
	.byte	2
	.byte	4
	.byte	8
	.byte	16
	.text
	.align	2
	.globl	bme680_set_profile_dur
	.type	bme680_set_profile_dur, @function
bme680_set_profile_dur:
.LFB8:
	.loc 1 540 1
	addi	sp,sp,-48	#,,
.LCFI48:
	sw	ra,44(sp)	#,
	sw	s0,40(sp)	#,
.LCFI49:
	addi	s0,sp,48	#,,
.LCFI50:
	mv	a5,a0	# tmp85, duration
	sw	a1,-40(s0)	# dev, dev
	sh	a5,-34(s0)	# tmp86, duration
# BME680_driver_patched/bme680.c:543: 	uint8_t os_to_meas_cycles[6] = {0, 1, 2, 4, 8, 16};
	.loc 1 543 10
	lui	a5,%hi(.LC0)	# tmp87,
	lw	a4,%lo(.LC0)(a5)		# tmp88,
	sw	a4,-32(s0)	# tmp88, os_to_meas_cycles
	addi	a5,a5,%lo(.LC0)	# tmp89, tmp87,
	lhu	a5,4(a5)	# tmp90,
	sh	a5,-28(s0)	# tmp90, os_to_meas_cycles
# BME680_driver_patched/bme680.c:545: 	meas_cycles = os_to_meas_cycles[dev->tph_sett.os_temp];
	.loc 1 545 47
	lw	a5,-40(s0)		# tmp91, dev
	lbu	a5,61(a5)	# _1, dev_16(D)->tph_sett.os_temp
# BME680_driver_patched/bme680.c:545: 	meas_cycles = os_to_meas_cycles[dev->tph_sett.os_temp];
	.loc 1 545 33
	addi	a4,s0,-16	#, tmp127,
	add	a5,a4,a5	# _2, tmp92, tmp127
	lbu	a5,-16(a5)	# _3, os_to_meas_cycles
# BME680_driver_patched/bme680.c:545: 	meas_cycles = os_to_meas_cycles[dev->tph_sett.os_temp];
	.loc 1 545 14
	sw	a5,-20(s0)	# _3, meas_cycles
# BME680_driver_patched/bme680.c:546: 	meas_cycles += os_to_meas_cycles[dev->tph_sett.os_pres];
	.loc 1 546 48
	lw	a5,-40(s0)		# tmp93, dev
	lbu	a5,62(a5)	# _4, dev_16(D)->tph_sett.os_pres
# BME680_driver_patched/bme680.c:546: 	meas_cycles += os_to_meas_cycles[dev->tph_sett.os_pres];
	.loc 1 546 34
	addi	a4,s0,-16	#, tmp128,
	add	a5,a4,a5	# _5, tmp94, tmp128
	lbu	a5,-16(a5)	# _6, os_to_meas_cycles
	mv	a4,a5	# _7, _6
# BME680_driver_patched/bme680.c:546: 	meas_cycles += os_to_meas_cycles[dev->tph_sett.os_pres];
	.loc 1 546 14
	lw	a5,-20(s0)		# tmp96, meas_cycles
	add	a5,a5,a4	# _7, tmp95, tmp96
	sw	a5,-20(s0)	# tmp95, meas_cycles
# BME680_driver_patched/bme680.c:547: 	meas_cycles += os_to_meas_cycles[dev->tph_sett.os_hum];
	.loc 1 547 48
	lw	a5,-40(s0)		# tmp97, dev
	lbu	a5,60(a5)	# _8, dev_16(D)->tph_sett.os_hum
# BME680_driver_patched/bme680.c:547: 	meas_cycles += os_to_meas_cycles[dev->tph_sett.os_hum];
	.loc 1 547 34
	addi	a4,s0,-16	#, tmp129,
	add	a5,a4,a5	# _9, tmp98, tmp129
	lbu	a5,-16(a5)	# _10, os_to_meas_cycles
	mv	a4,a5	# _11, _10
# BME680_driver_patched/bme680.c:547: 	meas_cycles += os_to_meas_cycles[dev->tph_sett.os_hum];
	.loc 1 547 14
	lw	a5,-20(s0)		# tmp100, meas_cycles
	add	a5,a5,a4	# _11, tmp99, tmp100
	sw	a5,-20(s0)	# tmp99, meas_cycles
# BME680_driver_patched/bme680.c:550: 	tph_dur = meas_cycles * UINT32_C(1963);
	.loc 1 550 10
	lw	a4,-20(s0)		# tmp101, meas_cycles
	mv	a5,a4	# tmp102, tmp101
	slli	a5,a5,5	#, tmp103, tmp102
	sub	a5,a5,a4	# tmp102, tmp102, tmp101
	slli	a5,a5,2	#, tmp104, tmp102
	sub	a5,a5,a4	# tmp102, tmp102, tmp101
	slli	a5,a5,2	#, tmp105, tmp102
	sub	a5,a5,a4	# tmp102, tmp102, tmp101
	slli	a5,a5,2	#, tmp106, tmp102
	sub	a5,a5,a4	# tmp107, tmp102, tmp101
	sw	a5,-24(s0)	# tmp107, tph_dur
# BME680_driver_patched/bme680.c:551: 	tph_dur += UINT32_C(477 * 4); /* TPH switching duration */
	.loc 1 551 10
	lw	a5,-24(s0)		# tmp109, tph_dur
	addi	a5,a5,1908	#, tmp108, tmp109
	sw	a5,-24(s0)	# tmp108, tph_dur
# BME680_driver_patched/bme680.c:552: 	tph_dur += UINT32_C(477 * 5); /* Gas measurement duration */
	.loc 1 552 10
	lw	a4,-24(s0)		# tmp111, tph_dur
	li	a5,4096		# tmp113,
	addi	a5,a5,-1711	#, tmp112, tmp113
	add	a5,a4,a5	# tmp112, tmp110, tmp111
	sw	a5,-24(s0)	# tmp110, tph_dur
# BME680_driver_patched/bme680.c:553: 	tph_dur += UINT32_C(500); /* Get it to the closest whole number.*/
	.loc 1 553 10
	lw	a5,-24(s0)		# tmp115, tph_dur
	addi	a5,a5,500	#, tmp114, tmp115
	sw	a5,-24(s0)	# tmp114, tph_dur
# BME680_driver_patched/bme680.c:554: 	tph_dur /= UINT32_C(1000); /* Convert to ms */
	.loc 1 554 10
	lw	a5,-24(s0)		# tmp117, tph_dur
	li	a1,1000		#,
	mv	a0,a5	#, tmp117
	call	__udivsi3		#
.LVL3:
	mv	a5,a0	# tmp120,
	sw	a5,-24(s0)	# tmp120, tph_dur
# BME680_driver_patched/bme680.c:556: 	tph_dur += UINT32_C(1); /* Wake up duration of 1ms */
	.loc 1 556 10
	lw	a5,-24(s0)		# tmp122, tph_dur
	addi	a5,a5,1	#, tmp121, tmp122
	sw	a5,-24(s0)	# tmp121, tph_dur
# BME680_driver_patched/bme680.c:558: 	dev->gas_sett.heatr_dur = duration - (uint16_t) tph_dur;
	.loc 1 558 39
	lw	a5,-24(s0)		# tmp123, tph_dur
	slli	a5,a5,16	#, _12, tmp123
	srli	a5,a5,16	#, _12, _12
# BME680_driver_patched/bme680.c:558: 	dev->gas_sett.heatr_dur = duration - (uint16_t) tph_dur;
	.loc 1 558 37
	lhu	a4,-34(s0)	# tmp124, duration
	sub	a5,a4,a5	# tmp125, tmp124, _12
	slli	a4,a5,16	#, _13, tmp125
	srli	a4,a4,16	#, _13, _13
# BME680_driver_patched/bme680.c:558: 	dev->gas_sett.heatr_dur = duration - (uint16_t) tph_dur;
	.loc 1 558 26
	lw	a5,-40(s0)		# tmp126, dev
	sh	a4,70(a5)	# _13, dev_16(D)->gas_sett.heatr_dur
# BME680_driver_patched/bme680.c:559: }
	.loc 1 559 1
	nop	
	lw	ra,44(sp)		#,
.LCFI51:
	lw	s0,40(sp)		#,
.LCFI52:
	addi	sp,sp,48	#,,
.LCFI53:
	jr	ra		#
.LFE8:
	.size	bme680_set_profile_dur, .-bme680_set_profile_dur
	.align	2
	.globl	bme680_get_profile_dur
	.type	bme680_get_profile_dur, @function
bme680_get_profile_dur:
.LFB9:
	.loc 1 565 1
	addi	sp,sp,-48	#,,
.LCFI54:
	sw	ra,44(sp)	#,
	sw	s0,40(sp)	#,
.LCFI55:
	addi	s0,sp,48	#,,
.LCFI56:
	sw	a0,-36(s0)	# duration, duration
	sw	a1,-40(s0)	# dev, dev
# BME680_driver_patched/bme680.c:568: 	uint8_t os_to_meas_cycles[6] = {0, 1, 2, 4, 8, 16};
	.loc 1 568 10
	lui	a5,%hi(.LC0)	# tmp88,
	lw	a4,%lo(.LC0)(a5)		# tmp89,
	sw	a4,-32(s0)	# tmp89, os_to_meas_cycles
	addi	a5,a5,%lo(.LC0)	# tmp90, tmp88,
	lhu	a5,4(a5)	# tmp91,
	sh	a5,-28(s0)	# tmp91, os_to_meas_cycles
# BME680_driver_patched/bme680.c:570: 	meas_cycles = os_to_meas_cycles[dev->tph_sett.os_temp];
	.loc 1 570 47
	lw	a5,-40(s0)		# tmp92, dev
	lbu	a5,61(a5)	# _1, dev_20(D)->tph_sett.os_temp
# BME680_driver_patched/bme680.c:570: 	meas_cycles = os_to_meas_cycles[dev->tph_sett.os_temp];
	.loc 1 570 33
	addi	a4,s0,-16	#, tmp131,
	add	a5,a4,a5	# _2, tmp93, tmp131
	lbu	a5,-16(a5)	# _3, os_to_meas_cycles
# BME680_driver_patched/bme680.c:570: 	meas_cycles = os_to_meas_cycles[dev->tph_sett.os_temp];
	.loc 1 570 14
	sw	a5,-20(s0)	# _3, meas_cycles
# BME680_driver_patched/bme680.c:571: 	meas_cycles += os_to_meas_cycles[dev->tph_sett.os_pres];
	.loc 1 571 48
	lw	a5,-40(s0)		# tmp94, dev
	lbu	a5,62(a5)	# _4, dev_20(D)->tph_sett.os_pres
# BME680_driver_patched/bme680.c:571: 	meas_cycles += os_to_meas_cycles[dev->tph_sett.os_pres];
	.loc 1 571 34
	addi	a4,s0,-16	#, tmp132,
	add	a5,a4,a5	# _5, tmp95, tmp132
	lbu	a5,-16(a5)	# _6, os_to_meas_cycles
	mv	a4,a5	# _7, _6
# BME680_driver_patched/bme680.c:571: 	meas_cycles += os_to_meas_cycles[dev->tph_sett.os_pres];
	.loc 1 571 14
	lw	a5,-20(s0)		# tmp97, meas_cycles
	add	a5,a5,a4	# _7, tmp96, tmp97
	sw	a5,-20(s0)	# tmp96, meas_cycles
# BME680_driver_patched/bme680.c:572: 	meas_cycles += os_to_meas_cycles[dev->tph_sett.os_hum];
	.loc 1 572 48
	lw	a5,-40(s0)		# tmp98, dev
	lbu	a5,60(a5)	# _8, dev_20(D)->tph_sett.os_hum
# BME680_driver_patched/bme680.c:572: 	meas_cycles += os_to_meas_cycles[dev->tph_sett.os_hum];
	.loc 1 572 34
	addi	a4,s0,-16	#, tmp133,
	add	a5,a4,a5	# _9, tmp99, tmp133
	lbu	a5,-16(a5)	# _10, os_to_meas_cycles
	mv	a4,a5	# _11, _10
# BME680_driver_patched/bme680.c:572: 	meas_cycles += os_to_meas_cycles[dev->tph_sett.os_hum];
	.loc 1 572 14
	lw	a5,-20(s0)		# tmp101, meas_cycles
	add	a5,a5,a4	# _11, tmp100, tmp101
	sw	a5,-20(s0)	# tmp100, meas_cycles
# BME680_driver_patched/bme680.c:575: 	tph_dur = meas_cycles * UINT32_C(1963);
	.loc 1 575 10
	lw	a4,-20(s0)		# tmp102, meas_cycles
	mv	a5,a4	# tmp103, tmp102
	slli	a5,a5,5	#, tmp104, tmp103
	sub	a5,a5,a4	# tmp103, tmp103, tmp102
	slli	a5,a5,2	#, tmp105, tmp103
	sub	a5,a5,a4	# tmp103, tmp103, tmp102
	slli	a5,a5,2	#, tmp106, tmp103
	sub	a5,a5,a4	# tmp103, tmp103, tmp102
	slli	a5,a5,2	#, tmp107, tmp103
	sub	a5,a5,a4	# tmp108, tmp103, tmp102
	sw	a5,-24(s0)	# tmp108, tph_dur
# BME680_driver_patched/bme680.c:576: 	tph_dur += UINT32_C(477 * 4); /* TPH switching duration */
	.loc 1 576 10
	lw	a5,-24(s0)		# tmp110, tph_dur
	addi	a5,a5,1908	#, tmp109, tmp110
	sw	a5,-24(s0)	# tmp109, tph_dur
# BME680_driver_patched/bme680.c:577: 	tph_dur += UINT32_C(477 * 5); /* Gas measurement duration */
	.loc 1 577 10
	lw	a4,-24(s0)		# tmp112, tph_dur
	li	a5,4096		# tmp114,
	addi	a5,a5,-1711	#, tmp113, tmp114
	add	a5,a4,a5	# tmp113, tmp111, tmp112
	sw	a5,-24(s0)	# tmp111, tph_dur
# BME680_driver_patched/bme680.c:578: 	tph_dur += UINT32_C(500); /* Get it to the closest whole number.*/
	.loc 1 578 10
	lw	a5,-24(s0)		# tmp116, tph_dur
	addi	a5,a5,500	#, tmp115, tmp116
	sw	a5,-24(s0)	# tmp115, tph_dur
# BME680_driver_patched/bme680.c:579: 	tph_dur /= UINT32_C(1000); /* Convert to ms */
	.loc 1 579 10
	lw	a5,-24(s0)		# tmp118, tph_dur
	li	a1,1000		#,
	mv	a0,a5	#, tmp118
	call	__udivsi3		#
.LVL4:
	mv	a5,a0	# tmp121,
	sw	a5,-24(s0)	# tmp121, tph_dur
# BME680_driver_patched/bme680.c:581: 	tph_dur += UINT32_C(1); /* Wake up duration of 1ms */
	.loc 1 581 10
	lw	a5,-24(s0)		# tmp123, tph_dur
	addi	a5,a5,1	#, tmp122, tmp123
	sw	a5,-24(s0)	# tmp122, tph_dur
# BME680_driver_patched/bme680.c:583: 	*duration = (uint16_t) tph_dur;
	.loc 1 583 14
	lw	a5,-24(s0)		# tmp124, tph_dur
	slli	a4,a5,16	#, _12, tmp124
	srli	a4,a4,16	#, _12, _12
# BME680_driver_patched/bme680.c:583: 	*duration = (uint16_t) tph_dur;
	.loc 1 583 12
	lw	a5,-36(s0)		# tmp125, duration
	sh	a4,0(a5)	# _12, *duration_30(D)
# BME680_driver_patched/bme680.c:586: 	if (dev->gas_sett.run_gas) {
	.loc 1 586 19
	lw	a5,-40(s0)		# tmp126, dev
	lbu	a5,66(a5)	# _13, dev_20(D)->gas_sett.run_gas
# BME680_driver_patched/bme680.c:586: 	if (dev->gas_sett.run_gas) {
	.loc 1 586 5
	beqz	a5,.L64	#, _13,
# BME680_driver_patched/bme680.c:588: 		*duration += dev->gas_sett.heatr_dur;
	.loc 1 588 13
	lw	a5,-36(s0)		# tmp127, duration
	lhu	a4,0(a5)	# _14, *duration_30(D)
# BME680_driver_patched/bme680.c:588: 		*duration += dev->gas_sett.heatr_dur;
	.loc 1 588 29
	lw	a5,-40(s0)		# tmp128, dev
	lhu	a5,70(a5)	# _15, dev_20(D)->gas_sett.heatr_dur
# BME680_driver_patched/bme680.c:588: 		*duration += dev->gas_sett.heatr_dur;
	.loc 1 588 13
	add	a5,a4,a5	# _15, tmp129, _14
	slli	a4,a5,16	#, _16, tmp129
	srli	a4,a4,16	#, _16, _16
	lw	a5,-36(s0)		# tmp130, duration
	sh	a4,0(a5)	# _16, *duration_30(D)
.L64:
# BME680_driver_patched/bme680.c:590: }
	.loc 1 590 1
	nop	
	lw	ra,44(sp)		#,
.LCFI57:
	lw	s0,40(sp)		#,
.LCFI58:
	addi	sp,sp,48	#,,
.LCFI59:
	jr	ra		#
.LFE9:
	.size	bme680_get_profile_dur, .-bme680_get_profile_dur
	.align	2
	.globl	bme680_get_sensor_data
	.type	bme680_get_sensor_data, @function
bme680_get_sensor_data:
.LFB10:
	.loc 1 598 1
	addi	sp,sp,-48	#,,
.LCFI60:
	sw	ra,44(sp)	#,
	sw	s0,40(sp)	#,
.LCFI61:
	addi	s0,sp,48	#,,
.LCFI62:
	sw	a0,-36(s0)	# data, data
	sw	a1,-40(s0)	# dev, dev
# BME680_driver_patched/bme680.c:602: 	rslt = null_ptr_check(dev);
	.loc 1 602 9
	lw	a0,-40(s0)		#, dev
	call	null_ptr_check		#
	mv	a5,a0	# tmp76,
	sb	a5,-17(s0)	# tmp76, rslt
# BME680_driver_patched/bme680.c:603: 	if (rslt == BME680_OK) {
	.loc 1 603 5
	lb	a5,-17(s0)		# tmp77, rslt
	bnez	a5,.L66	#, tmp77,
# BME680_driver_patched/bme680.c:605: 		rslt = read_field_data(data, dev);
	.loc 1 605 10
	lw	a1,-40(s0)		#, dev
	lw	a0,-36(s0)		#, data
	call	read_field_data		#
	mv	a5,a0	# tmp78,
	sb	a5,-17(s0)	# tmp78, rslt
# BME680_driver_patched/bme680.c:606: 		if (rslt == BME680_OK) {
	.loc 1 606 6
	lb	a5,-17(s0)		# tmp79, rslt
	bnez	a5,.L66	#, tmp79,
# BME680_driver_patched/bme680.c:607: 			if (data->status & BME680_NEW_DATA_MSK)
	.loc 1 607 12
	lw	a5,-36(s0)		# tmp80, data
	lbu	a5,0(a5)	# _1, data_9(D)->status
# BME680_driver_patched/bme680.c:607: 			if (data->status & BME680_NEW_DATA_MSK)
	.loc 1 607 8
	slli	a5,a5,24	#, _2, _1
	srai	a5,a5,24	#, _2, _2
# BME680_driver_patched/bme680.c:607: 			if (data->status & BME680_NEW_DATA_MSK)
	.loc 1 607 7
	bgez	a5,.L67	#, _2,
# BME680_driver_patched/bme680.c:608: 				dev->new_fields = 1;
	.loc 1 608 21
	lw	a5,-40(s0)		# tmp81, dev
	li	a4,1		# tmp82,
	sb	a4,73(a5)	# tmp82, dev_6(D)->new_fields
	j	.L66		#
.L67:
# BME680_driver_patched/bme680.c:610: 				dev->new_fields = 0;
	.loc 1 610 21
	lw	a5,-40(s0)		# tmp83, dev
	sb	zero,73(a5)	#, dev_6(D)->new_fields
.L66:
# BME680_driver_patched/bme680.c:614: 	return rslt;
	.loc 1 614 9
	lb	a5,-17(s0)		# _14, rslt
# BME680_driver_patched/bme680.c:615: }
	.loc 1 615 1
	mv	a0,a5	#, <retval>
	lw	ra,44(sp)		#,
.LCFI63:
	lw	s0,40(sp)		#,
.LCFI64:
	addi	sp,sp,48	#,,
.LCFI65:
	jr	ra		#
.LFE10:
	.size	bme680_get_sensor_data, .-bme680_get_sensor_data
	.align	2
	.globl	get_calib_data
	.type	get_calib_data, @function
get_calib_data:
.LFB11:
	.loc 1 621 1
	addi	sp,sp,-48	#,,
.LCFI66:
	sw	ra,44(sp)	#,
	sw	s0,40(sp)	#,
.LCFI67:
	addi	s0,sp,48	#,,
.LCFI68:
	sw	a0,-36(s0)	# dev, dev
# BME680_driver_patched/bme680.c:624: 	uint8_t temp_var = 0; /* Temporary variable */
	.loc 1 624 10
	sb	zero,-18(s0)	#, temp_var
# BME680_driver_patched/bme680.c:627: 	rslt = null_ptr_check(dev);
	.loc 1 627 9
	lw	a0,-36(s0)		#, dev
	call	null_ptr_check		#
	mv	a5,a0	# tmp189,
	sb	a5,-17(s0)	# tmp189, rslt
# BME680_driver_patched/bme680.c:629: 		rslt = bme680_get_regs(BME680_COEFF_ADDR1, coeff_array, BME680_COEFF_ADDR1_LEN, dev);
	.loc 1 629 10
	lw	a3,-36(s0)		#, dev
	li	a2,25		#,
	lui	a5,%hi(coeff_array)	# tmp190,
	addi	a1,a5,%lo(coeff_array)	#, tmp190,
	li	a0,137		#,
	call	bme680_get_regs		#
	mv	a5,a0	# tmp191,
	sb	a5,-17(s0)	# tmp191, rslt
# BME680_driver_patched/bme680.c:632: 			rslt = bme680_get_regs(BME680_COEFF_ADDR2, &coeff_array[BME680_COEFF_ADDR1_LEN]
	.loc 1 632 11
	lw	a3,-36(s0)		#, dev
	li	a2,16		#,
	lui	a5,%hi(coeff_array+25)	# tmp192,
	addi	a1,a5,%lo(coeff_array+25)	#, tmp192,
	li	a0,225		#,
	call	bme680_get_regs		#
	mv	a5,a0	# tmp193,
	sb	a5,-17(s0)	# tmp193, rslt
# BME680_driver_patched/bme680.c:636: 		dev->calib.par_t1 = (uint16_t) (BME680_CONCAT_BYTES(coeff_array[BME680_T1_MSB_REG],
	.loc 1 636 35
	lui	a5,%hi(coeff_array)	# tmp194,
	addi	a5,a5,%lo(coeff_array)	# tmp195, tmp194,
	lbu	a5,34(a5)	# _1, coeff_array
	slli	a5,a5,8	#, _3, _2
	slli	a4,a5,16	#, _4, _3
	srai	a4,a4,16	#, _4, _4
	lui	a5,%hi(coeff_array)	# tmp196,
	addi	a5,a5,%lo(coeff_array)	# tmp197, tmp196,
	lbu	a5,33(a5)	# _5, coeff_array
	slli	a5,a5,16	#, _6, _5
	srai	a5,a5,16	#, _6, _6
	or	a5,a4,a5	# _6, tmp198, _4
	slli	a5,a5,16	#, _7, tmp198
	srai	a5,a5,16	#, _7, _7
# BME680_driver_patched/bme680.c:636: 		dev->calib.par_t1 = (uint16_t) (BME680_CONCAT_BYTES(coeff_array[BME680_T1_MSB_REG],
	.loc 1 636 23
	slli	a4,a5,16	#, _8, _7
	srli	a4,a4,16	#, _8, _8
# BME680_driver_patched/bme680.c:636: 		dev->calib.par_t1 = (uint16_t) (BME680_CONCAT_BYTES(coeff_array[BME680_T1_MSB_REG],
	.loc 1 636 21
	lw	a5,-36(s0)		# tmp199, dev
	sh	a4,26(a5)	# _8, dev_120(D)->calib.par_t1
# BME680_driver_patched/bme680.c:638: 		dev->calib.par_t2 = (int16_t) (BME680_CONCAT_BYTES(coeff_array[BME680_T2_MSB_REG],
	.loc 1 638 34
	lui	a5,%hi(coeff_array)	# tmp200,
	addi	a5,a5,%lo(coeff_array)	# tmp201, tmp200,
	lbu	a5,2(a5)	# _9, coeff_array
	slli	a5,a5,8	#, _11, _10
# BME680_driver_patched/bme680.c:638: 		dev->calib.par_t2 = (int16_t) (BME680_CONCAT_BYTES(coeff_array[BME680_T2_MSB_REG],
	.loc 1 638 23
	slli	a4,a5,16	#, _12, _11
	srai	a4,a4,16	#, _12, _12
# BME680_driver_patched/bme680.c:638: 		dev->calib.par_t2 = (int16_t) (BME680_CONCAT_BYTES(coeff_array[BME680_T2_MSB_REG],
	.loc 1 638 34
	lui	a5,%hi(coeff_array)	# tmp202,
	addi	a5,a5,%lo(coeff_array)	# tmp203, tmp202,
	lbu	a5,1(a5)	# _13, coeff_array
	slli	a5,a5,16	#, _14, _13
	srai	a5,a5,16	#, _14, _14
# BME680_driver_patched/bme680.c:638: 		dev->calib.par_t2 = (int16_t) (BME680_CONCAT_BYTES(coeff_array[BME680_T2_MSB_REG],
	.loc 1 638 23
	or	a5,a4,a5	# _14, tmp204, _12
	slli	a4,a5,16	#, _15, tmp204
	srai	a4,a4,16	#, _15, _15
# BME680_driver_patched/bme680.c:638: 		dev->calib.par_t2 = (int16_t) (BME680_CONCAT_BYTES(coeff_array[BME680_T2_MSB_REG],
	.loc 1 638 21
	lw	a5,-36(s0)		# tmp205, dev
	sh	a4,28(a5)	# _15, dev_120(D)->calib.par_t2
# BME680_driver_patched/bme680.c:640: 		dev->calib.par_t3 = (int8_t) (coeff_array[BME680_T3_REG]);
	.loc 1 640 44
	lui	a5,%hi(coeff_array)	# tmp206,
	addi	a5,a5,%lo(coeff_array)	# tmp207, tmp206,
	lbu	a5,3(a5)	# _16, coeff_array
# BME680_driver_patched/bme680.c:640: 		dev->calib.par_t3 = (int8_t) (coeff_array[BME680_T3_REG]);
	.loc 1 640 23
	slli	a4,a5,24	#, _17, _16
	srai	a4,a4,24	#, _17, _17
# BME680_driver_patched/bme680.c:640: 		dev->calib.par_t3 = (int8_t) (coeff_array[BME680_T3_REG]);
	.loc 1 640 21
	lw	a5,-36(s0)		# tmp208, dev
	sb	a4,30(a5)	# _17, dev_120(D)->calib.par_t3
# BME680_driver_patched/bme680.c:643: 		dev->calib.par_p1 = (uint16_t) (BME680_CONCAT_BYTES(coeff_array[BME680_P1_MSB_REG],
	.loc 1 643 35
	lui	a5,%hi(coeff_array)	# tmp209,
	addi	a5,a5,%lo(coeff_array)	# tmp210, tmp209,
	lbu	a5,6(a5)	# _18, coeff_array
	slli	a5,a5,8	#, _20, _19
	slli	a4,a5,16	#, _21, _20
	srai	a4,a4,16	#, _21, _21
	lui	a5,%hi(coeff_array)	# tmp211,
	addi	a5,a5,%lo(coeff_array)	# tmp212, tmp211,
	lbu	a5,5(a5)	# _22, coeff_array
	slli	a5,a5,16	#, _23, _22
	srai	a5,a5,16	#, _23, _23
	or	a5,a4,a5	# _23, tmp213, _21
	slli	a5,a5,16	#, _24, tmp213
	srai	a5,a5,16	#, _24, _24
# BME680_driver_patched/bme680.c:643: 		dev->calib.par_p1 = (uint16_t) (BME680_CONCAT_BYTES(coeff_array[BME680_P1_MSB_REG],
	.loc 1 643 23
	slli	a4,a5,16	#, _25, _24
	srli	a4,a4,16	#, _25, _25
# BME680_driver_patched/bme680.c:643: 		dev->calib.par_p1 = (uint16_t) (BME680_CONCAT_BYTES(coeff_array[BME680_P1_MSB_REG],
	.loc 1 643 21
	lw	a5,-36(s0)		# tmp214, dev
	sh	a4,32(a5)	# _25, dev_120(D)->calib.par_p1
# BME680_driver_patched/bme680.c:645: 		dev->calib.par_p2 = (int16_t) (BME680_CONCAT_BYTES(coeff_array[BME680_P2_MSB_REG],
	.loc 1 645 34
	lui	a5,%hi(coeff_array)	# tmp215,
	addi	a5,a5,%lo(coeff_array)	# tmp216, tmp215,
	lbu	a5,8(a5)	# _26, coeff_array
	slli	a5,a5,8	#, _28, _27
# BME680_driver_patched/bme680.c:645: 		dev->calib.par_p2 = (int16_t) (BME680_CONCAT_BYTES(coeff_array[BME680_P2_MSB_REG],
	.loc 1 645 23
	slli	a4,a5,16	#, _29, _28
	srai	a4,a4,16	#, _29, _29
# BME680_driver_patched/bme680.c:645: 		dev->calib.par_p2 = (int16_t) (BME680_CONCAT_BYTES(coeff_array[BME680_P2_MSB_REG],
	.loc 1 645 34
	lui	a5,%hi(coeff_array)	# tmp217,
	addi	a5,a5,%lo(coeff_array)	# tmp218, tmp217,
	lbu	a5,7(a5)	# _30, coeff_array
	slli	a5,a5,16	#, _31, _30
	srai	a5,a5,16	#, _31, _31
# BME680_driver_patched/bme680.c:645: 		dev->calib.par_p2 = (int16_t) (BME680_CONCAT_BYTES(coeff_array[BME680_P2_MSB_REG],
	.loc 1 645 23
	or	a5,a4,a5	# _31, tmp219, _29
	slli	a4,a5,16	#, _32, tmp219
	srai	a4,a4,16	#, _32, _32
# BME680_driver_patched/bme680.c:645: 		dev->calib.par_p2 = (int16_t) (BME680_CONCAT_BYTES(coeff_array[BME680_P2_MSB_REG],
	.loc 1 645 21
	lw	a5,-36(s0)		# tmp220, dev
	sh	a4,34(a5)	# _32, dev_120(D)->calib.par_p2
# BME680_driver_patched/bme680.c:647: 		dev->calib.par_p3 = (int8_t) coeff_array[BME680_P3_REG];
	.loc 1 647 43
	lui	a5,%hi(coeff_array)	# tmp221,
	addi	a5,a5,%lo(coeff_array)	# tmp222, tmp221,
	lbu	a5,9(a5)	# _33, coeff_array
# BME680_driver_patched/bme680.c:647: 		dev->calib.par_p3 = (int8_t) coeff_array[BME680_P3_REG];
	.loc 1 647 23
	slli	a4,a5,24	#, _34, _33
	srai	a4,a4,24	#, _34, _34
# BME680_driver_patched/bme680.c:647: 		dev->calib.par_p3 = (int8_t) coeff_array[BME680_P3_REG];
	.loc 1 647 21
	lw	a5,-36(s0)		# tmp223, dev
	sb	a4,36(a5)	# _34, dev_120(D)->calib.par_p3
# BME680_driver_patched/bme680.c:648: 		dev->calib.par_p4 = (int16_t) (BME680_CONCAT_BYTES(coeff_array[BME680_P4_MSB_REG],
	.loc 1 648 34
	lui	a5,%hi(coeff_array)	# tmp224,
	addi	a5,a5,%lo(coeff_array)	# tmp225, tmp224,
	lbu	a5,12(a5)	# _35, coeff_array
	slli	a5,a5,8	#, _37, _36
# BME680_driver_patched/bme680.c:648: 		dev->calib.par_p4 = (int16_t) (BME680_CONCAT_BYTES(coeff_array[BME680_P4_MSB_REG],
	.loc 1 648 23
	slli	a4,a5,16	#, _38, _37
	srai	a4,a4,16	#, _38, _38
# BME680_driver_patched/bme680.c:648: 		dev->calib.par_p4 = (int16_t) (BME680_CONCAT_BYTES(coeff_array[BME680_P4_MSB_REG],
	.loc 1 648 34
	lui	a5,%hi(coeff_array)	# tmp226,
	addi	a5,a5,%lo(coeff_array)	# tmp227, tmp226,
	lbu	a5,11(a5)	# _39, coeff_array
	slli	a5,a5,16	#, _40, _39
	srai	a5,a5,16	#, _40, _40
# BME680_driver_patched/bme680.c:648: 		dev->calib.par_p4 = (int16_t) (BME680_CONCAT_BYTES(coeff_array[BME680_P4_MSB_REG],
	.loc 1 648 23
	or	a5,a4,a5	# _40, tmp228, _38
	slli	a4,a5,16	#, _41, tmp228
	srai	a4,a4,16	#, _41, _41
# BME680_driver_patched/bme680.c:648: 		dev->calib.par_p4 = (int16_t) (BME680_CONCAT_BYTES(coeff_array[BME680_P4_MSB_REG],
	.loc 1 648 21
	lw	a5,-36(s0)		# tmp229, dev
	sh	a4,38(a5)	# _41, dev_120(D)->calib.par_p4
# BME680_driver_patched/bme680.c:650: 		dev->calib.par_p5 = (int16_t) (BME680_CONCAT_BYTES(coeff_array[BME680_P5_MSB_REG],
	.loc 1 650 34
	lui	a5,%hi(coeff_array)	# tmp230,
	addi	a5,a5,%lo(coeff_array)	# tmp231, tmp230,
	lbu	a5,14(a5)	# _42, coeff_array
	slli	a5,a5,8	#, _44, _43
# BME680_driver_patched/bme680.c:650: 		dev->calib.par_p5 = (int16_t) (BME680_CONCAT_BYTES(coeff_array[BME680_P5_MSB_REG],
	.loc 1 650 23
	slli	a4,a5,16	#, _45, _44
	srai	a4,a4,16	#, _45, _45
# BME680_driver_patched/bme680.c:650: 		dev->calib.par_p5 = (int16_t) (BME680_CONCAT_BYTES(coeff_array[BME680_P5_MSB_REG],
	.loc 1 650 34
	lui	a5,%hi(coeff_array)	# tmp232,
	addi	a5,a5,%lo(coeff_array)	# tmp233, tmp232,
	lbu	a5,13(a5)	# _46, coeff_array
	slli	a5,a5,16	#, _47, _46
	srai	a5,a5,16	#, _47, _47
# BME680_driver_patched/bme680.c:650: 		dev->calib.par_p5 = (int16_t) (BME680_CONCAT_BYTES(coeff_array[BME680_P5_MSB_REG],
	.loc 1 650 23
	or	a5,a4,a5	# _47, tmp234, _45
	slli	a4,a5,16	#, _48, tmp234
	srai	a4,a4,16	#, _48, _48
# BME680_driver_patched/bme680.c:650: 		dev->calib.par_p5 = (int16_t) (BME680_CONCAT_BYTES(coeff_array[BME680_P5_MSB_REG],
	.loc 1 650 21
	lw	a5,-36(s0)		# tmp235, dev
	sh	a4,40(a5)	# _48, dev_120(D)->calib.par_p5
# BME680_driver_patched/bme680.c:652: 		dev->calib.par_p6 = (int8_t) (coeff_array[BME680_P6_REG]);
	.loc 1 652 44
	lui	a5,%hi(coeff_array)	# tmp236,
	addi	a5,a5,%lo(coeff_array)	# tmp237, tmp236,
	lbu	a5,16(a5)	# _49, coeff_array
# BME680_driver_patched/bme680.c:652: 		dev->calib.par_p6 = (int8_t) (coeff_array[BME680_P6_REG]);
	.loc 1 652 23
	slli	a4,a5,24	#, _50, _49
	srai	a4,a4,24	#, _50, _50
# BME680_driver_patched/bme680.c:652: 		dev->calib.par_p6 = (int8_t) (coeff_array[BME680_P6_REG]);
	.loc 1 652 21
	lw	a5,-36(s0)		# tmp238, dev
	sb	a4,42(a5)	# _50, dev_120(D)->calib.par_p6
# BME680_driver_patched/bme680.c:653: 		dev->calib.par_p7 = (int8_t) (coeff_array[BME680_P7_REG]);
	.loc 1 653 44
	lui	a5,%hi(coeff_array)	# tmp239,
	addi	a5,a5,%lo(coeff_array)	# tmp240, tmp239,
	lbu	a5,15(a5)	# _51, coeff_array
# BME680_driver_patched/bme680.c:653: 		dev->calib.par_p7 = (int8_t) (coeff_array[BME680_P7_REG]);
	.loc 1 653 23
	slli	a4,a5,24	#, _52, _51
	srai	a4,a4,24	#, _52, _52
# BME680_driver_patched/bme680.c:653: 		dev->calib.par_p7 = (int8_t) (coeff_array[BME680_P7_REG]);
	.loc 1 653 21
	lw	a5,-36(s0)		# tmp241, dev
	sb	a4,43(a5)	# _52, dev_120(D)->calib.par_p7
# BME680_driver_patched/bme680.c:654: 		dev->calib.par_p8 = (int16_t) (BME680_CONCAT_BYTES(coeff_array[BME680_P8_MSB_REG],
	.loc 1 654 34
	lui	a5,%hi(coeff_array)	# tmp242,
	addi	a5,a5,%lo(coeff_array)	# tmp243, tmp242,
	lbu	a5,20(a5)	# _53, coeff_array
	slli	a5,a5,8	#, _55, _54
# BME680_driver_patched/bme680.c:654: 		dev->calib.par_p8 = (int16_t) (BME680_CONCAT_BYTES(coeff_array[BME680_P8_MSB_REG],
	.loc 1 654 23
	slli	a4,a5,16	#, _56, _55
	srai	a4,a4,16	#, _56, _56
# BME680_driver_patched/bme680.c:654: 		dev->calib.par_p8 = (int16_t) (BME680_CONCAT_BYTES(coeff_array[BME680_P8_MSB_REG],
	.loc 1 654 34
	lui	a5,%hi(coeff_array)	# tmp244,
	addi	a5,a5,%lo(coeff_array)	# tmp245, tmp244,
	lbu	a5,19(a5)	# _57, coeff_array
	slli	a5,a5,16	#, _58, _57
	srai	a5,a5,16	#, _58, _58
# BME680_driver_patched/bme680.c:654: 		dev->calib.par_p8 = (int16_t) (BME680_CONCAT_BYTES(coeff_array[BME680_P8_MSB_REG],
	.loc 1 654 23
	or	a5,a4,a5	# _58, tmp246, _56
	slli	a4,a5,16	#, _59, tmp246
	srai	a4,a4,16	#, _59, _59
# BME680_driver_patched/bme680.c:654: 		dev->calib.par_p8 = (int16_t) (BME680_CONCAT_BYTES(coeff_array[BME680_P8_MSB_REG],
	.loc 1 654 21
	lw	a5,-36(s0)		# tmp247, dev
	sh	a4,44(a5)	# _59, dev_120(D)->calib.par_p8
# BME680_driver_patched/bme680.c:656: 		dev->calib.par_p9 = (int16_t) (BME680_CONCAT_BYTES(coeff_array[BME680_P9_MSB_REG],
	.loc 1 656 34
	lui	a5,%hi(coeff_array)	# tmp248,
	addi	a5,a5,%lo(coeff_array)	# tmp249, tmp248,
	lbu	a5,22(a5)	# _60, coeff_array
	slli	a5,a5,8	#, _62, _61
# BME680_driver_patched/bme680.c:656: 		dev->calib.par_p9 = (int16_t) (BME680_CONCAT_BYTES(coeff_array[BME680_P9_MSB_REG],
	.loc 1 656 23
	slli	a4,a5,16	#, _63, _62
	srai	a4,a4,16	#, _63, _63
# BME680_driver_patched/bme680.c:656: 		dev->calib.par_p9 = (int16_t) (BME680_CONCAT_BYTES(coeff_array[BME680_P9_MSB_REG],
	.loc 1 656 34
	lui	a5,%hi(coeff_array)	# tmp250,
	addi	a5,a5,%lo(coeff_array)	# tmp251, tmp250,
	lbu	a5,21(a5)	# _64, coeff_array
	slli	a5,a5,16	#, _65, _64
	srai	a5,a5,16	#, _65, _65
# BME680_driver_patched/bme680.c:656: 		dev->calib.par_p9 = (int16_t) (BME680_CONCAT_BYTES(coeff_array[BME680_P9_MSB_REG],
	.loc 1 656 23
	or	a5,a4,a5	# _65, tmp252, _63
	slli	a4,a5,16	#, _66, tmp252
	srai	a4,a4,16	#, _66, _66
# BME680_driver_patched/bme680.c:656: 		dev->calib.par_p9 = (int16_t) (BME680_CONCAT_BYTES(coeff_array[BME680_P9_MSB_REG],
	.loc 1 656 21
	lw	a5,-36(s0)		# tmp253, dev
	sh	a4,46(a5)	# _66, dev_120(D)->calib.par_p9
# BME680_driver_patched/bme680.c:658: 		dev->calib.par_p10 = (uint8_t) (coeff_array[BME680_P10_REG]);
	.loc 1 658 46
	lui	a5,%hi(coeff_array)	# tmp254,
	addi	a5,a5,%lo(coeff_array)	# tmp255, tmp254,
	lbu	a4,23(a5)	# _67, coeff_array
# BME680_driver_patched/bme680.c:658: 		dev->calib.par_p10 = (uint8_t) (coeff_array[BME680_P10_REG]);
	.loc 1 658 22
	lw	a5,-36(s0)		# tmp256, dev
	sb	a4,48(a5)	# _67, dev_120(D)->calib.par_p10
# BME680_driver_patched/bme680.c:661: 		dev->calib.par_h1 = (uint16_t) (((uint16_t) coeff_array[BME680_H1_MSB_REG] << BME680_HUM_REG_SHIFT_VAL)
	.loc 1 661 58
	lui	a5,%hi(coeff_array)	# tmp257,
	addi	a5,a5,%lo(coeff_array)	# tmp258, tmp257,
	lbu	a5,27(a5)	# _68, coeff_array
# BME680_driver_patched/bme680.c:661: 		dev->calib.par_h1 = (uint16_t) (((uint16_t) coeff_array[BME680_H1_MSB_REG] << BME680_HUM_REG_SHIFT_VAL)
	.loc 1 661 78
	slli	a5,a5,4	#, _70, _69
# BME680_driver_patched/bme680.c:662: 			| (coeff_array[BME680_H1_LSB_REG] & BME680_BIT_H1_DATA_MSK));
	.loc 1 662 4
	slli	a4,a5,16	#, _71, _70
	srai	a4,a4,16	#, _71, _71
# BME680_driver_patched/bme680.c:662: 			| (coeff_array[BME680_H1_LSB_REG] & BME680_BIT_H1_DATA_MSK));
	.loc 1 662 18
	lui	a5,%hi(coeff_array)	# tmp259,
	addi	a5,a5,%lo(coeff_array)	# tmp260, tmp259,
	lbu	a5,26(a5)	# _72, coeff_array
	slli	a5,a5,16	#, _73, _72
	srai	a5,a5,16	#, _73, _73
# BME680_driver_patched/bme680.c:662: 			| (coeff_array[BME680_H1_LSB_REG] & BME680_BIT_H1_DATA_MSK));
	.loc 1 662 38
	andi	a5,a5,15	#, tmp261, _73
	slli	a5,a5,16	#, _74, tmp261
	srai	a5,a5,16	#, _74, _74
# BME680_driver_patched/bme680.c:662: 			| (coeff_array[BME680_H1_LSB_REG] & BME680_BIT_H1_DATA_MSK));
	.loc 1 662 4
	or	a5,a4,a5	# _74, tmp262, _71
	slli	a5,a5,16	#, _75, tmp262
	srai	a5,a5,16	#, _75, _75
# BME680_driver_patched/bme680.c:661: 		dev->calib.par_h1 = (uint16_t) (((uint16_t) coeff_array[BME680_H1_MSB_REG] << BME680_HUM_REG_SHIFT_VAL)
	.loc 1 661 23
	slli	a4,a5,16	#, _76, _75
	srli	a4,a4,16	#, _76, _76
# BME680_driver_patched/bme680.c:661: 		dev->calib.par_h1 = (uint16_t) (((uint16_t) coeff_array[BME680_H1_MSB_REG] << BME680_HUM_REG_SHIFT_VAL)
	.loc 1 661 21
	lw	a5,-36(s0)		# tmp263, dev
	sh	a4,12(a5)	# _76, dev_120(D)->calib.par_h1
# BME680_driver_patched/bme680.c:663: 		dev->calib.par_h2 = (uint16_t) (((uint16_t) coeff_array[BME680_H2_MSB_REG] << BME680_HUM_REG_SHIFT_VAL)
	.loc 1 663 58
	lui	a5,%hi(coeff_array)	# tmp264,
	addi	a5,a5,%lo(coeff_array)	# tmp265, tmp264,
	lbu	a5,25(a5)	# _77, coeff_array
# BME680_driver_patched/bme680.c:663: 		dev->calib.par_h2 = (uint16_t) (((uint16_t) coeff_array[BME680_H2_MSB_REG] << BME680_HUM_REG_SHIFT_VAL)
	.loc 1 663 78
	slli	a5,a5,4	#, _79, _78
# BME680_driver_patched/bme680.c:664: 			| ((coeff_array[BME680_H2_LSB_REG]) >> BME680_HUM_REG_SHIFT_VAL));
	.loc 1 664 4
	slli	a4,a5,16	#, _80, _79
	srai	a4,a4,16	#, _80, _80
# BME680_driver_patched/bme680.c:664: 			| ((coeff_array[BME680_H2_LSB_REG]) >> BME680_HUM_REG_SHIFT_VAL));
	.loc 1 664 19
	lui	a5,%hi(coeff_array)	# tmp266,
	addi	a5,a5,%lo(coeff_array)	# tmp267, tmp266,
	lbu	a5,26(a5)	# _81, coeff_array
# BME680_driver_patched/bme680.c:664: 			| ((coeff_array[BME680_H2_LSB_REG]) >> BME680_HUM_REG_SHIFT_VAL));
	.loc 1 664 4
	srli	a5,a5,4	#, tmp268, _81
	andi	a5,a5,0xff	# _82, tmp268
	slli	a5,a5,16	#, _83, _82
	srai	a5,a5,16	#, _83, _83
	or	a5,a4,a5	# _83, tmp269, _80
	slli	a5,a5,16	#, _84, tmp269
	srai	a5,a5,16	#, _84, _84
# BME680_driver_patched/bme680.c:663: 		dev->calib.par_h2 = (uint16_t) (((uint16_t) coeff_array[BME680_H2_MSB_REG] << BME680_HUM_REG_SHIFT_VAL)
	.loc 1 663 23
	slli	a4,a5,16	#, _85, _84
	srli	a4,a4,16	#, _85, _85
# BME680_driver_patched/bme680.c:663: 		dev->calib.par_h2 = (uint16_t) (((uint16_t) coeff_array[BME680_H2_MSB_REG] << BME680_HUM_REG_SHIFT_VAL)
	.loc 1 663 21
	lw	a5,-36(s0)		# tmp270, dev
	sh	a4,14(a5)	# _85, dev_120(D)->calib.par_h2
# BME680_driver_patched/bme680.c:665: 		dev->calib.par_h3 = (int8_t) coeff_array[BME680_H3_REG];
	.loc 1 665 43
	lui	a5,%hi(coeff_array)	# tmp271,
	addi	a5,a5,%lo(coeff_array)	# tmp272, tmp271,
	lbu	a5,28(a5)	# _86, coeff_array
# BME680_driver_patched/bme680.c:665: 		dev->calib.par_h3 = (int8_t) coeff_array[BME680_H3_REG];
	.loc 1 665 23
	slli	a4,a5,24	#, _87, _86
	srai	a4,a4,24	#, _87, _87
# BME680_driver_patched/bme680.c:665: 		dev->calib.par_h3 = (int8_t) coeff_array[BME680_H3_REG];
	.loc 1 665 21
	lw	a5,-36(s0)		# tmp273, dev
	sb	a4,16(a5)	# _87, dev_120(D)->calib.par_h3
# BME680_driver_patched/bme680.c:666: 		dev->calib.par_h4 = (int8_t) coeff_array[BME680_H4_REG];
	.loc 1 666 43
	lui	a5,%hi(coeff_array)	# tmp274,
	addi	a5,a5,%lo(coeff_array)	# tmp275, tmp274,
	lbu	a5,29(a5)	# _88, coeff_array
# BME680_driver_patched/bme680.c:666: 		dev->calib.par_h4 = (int8_t) coeff_array[BME680_H4_REG];
	.loc 1 666 23
	slli	a4,a5,24	#, _89, _88
	srai	a4,a4,24	#, _89, _89
# BME680_driver_patched/bme680.c:666: 		dev->calib.par_h4 = (int8_t) coeff_array[BME680_H4_REG];
	.loc 1 666 21
	lw	a5,-36(s0)		# tmp276, dev
	sb	a4,17(a5)	# _89, dev_120(D)->calib.par_h4
# BME680_driver_patched/bme680.c:667: 		dev->calib.par_h5 = (int8_t) coeff_array[BME680_H5_REG];
	.loc 1 667 43
	lui	a5,%hi(coeff_array)	# tmp277,
	addi	a5,a5,%lo(coeff_array)	# tmp278, tmp277,
	lbu	a5,30(a5)	# _90, coeff_array
# BME680_driver_patched/bme680.c:667: 		dev->calib.par_h5 = (int8_t) coeff_array[BME680_H5_REG];
	.loc 1 667 23
	slli	a4,a5,24	#, _91, _90
	srai	a4,a4,24	#, _91, _91
# BME680_driver_patched/bme680.c:667: 		dev->calib.par_h5 = (int8_t) coeff_array[BME680_H5_REG];
	.loc 1 667 21
	lw	a5,-36(s0)		# tmp279, dev
	sb	a4,18(a5)	# _91, dev_120(D)->calib.par_h5
# BME680_driver_patched/bme680.c:668: 		dev->calib.par_h6 = (uint8_t) coeff_array[BME680_H6_REG];
	.loc 1 668 44
	lui	a5,%hi(coeff_array)	# tmp280,
	addi	a5,a5,%lo(coeff_array)	# tmp281, tmp280,
	lbu	a4,31(a5)	# _92, coeff_array
# BME680_driver_patched/bme680.c:668: 		dev->calib.par_h6 = (uint8_t) coeff_array[BME680_H6_REG];
	.loc 1 668 21
	lw	a5,-36(s0)		# tmp282, dev
	sb	a4,19(a5)	# _92, dev_120(D)->calib.par_h6
# BME680_driver_patched/bme680.c:669: 		dev->calib.par_h7 = (int8_t) coeff_array[BME680_H7_REG];
	.loc 1 669 43
	lui	a5,%hi(coeff_array)	# tmp283,
	addi	a5,a5,%lo(coeff_array)	# tmp284, tmp283,
	lbu	a5,32(a5)	# _93, coeff_array
# BME680_driver_patched/bme680.c:669: 		dev->calib.par_h7 = (int8_t) coeff_array[BME680_H7_REG];
	.loc 1 669 23
	slli	a4,a5,24	#, _94, _93
	srai	a4,a4,24	#, _94, _94
# BME680_driver_patched/bme680.c:669: 		dev->calib.par_h7 = (int8_t) coeff_array[BME680_H7_REG];
	.loc 1 669 21
	lw	a5,-36(s0)		# tmp285, dev
	sb	a4,20(a5)	# _94, dev_120(D)->calib.par_h7
# BME680_driver_patched/bme680.c:672: 		dev->calib.par_gh1 = (int8_t) coeff_array[BME680_GH1_REG];
	.loc 1 672 44
	lui	a5,%hi(coeff_array)	# tmp286,
	addi	a5,a5,%lo(coeff_array)	# tmp287, tmp286,
	lbu	a5,37(a5)	# _95, coeff_array
# BME680_driver_patched/bme680.c:672: 		dev->calib.par_gh1 = (int8_t) coeff_array[BME680_GH1_REG];
	.loc 1 672 24
	slli	a4,a5,24	#, _96, _95
	srai	a4,a4,24	#, _96, _96
# BME680_driver_patched/bme680.c:672: 		dev->calib.par_gh1 = (int8_t) coeff_array[BME680_GH1_REG];
	.loc 1 672 22
	lw	a5,-36(s0)		# tmp288, dev
	sb	a4,21(a5)	# _96, dev_120(D)->calib.par_gh1
# BME680_driver_patched/bme680.c:673: 		dev->calib.par_gh2 = (int16_t) (BME680_CONCAT_BYTES(coeff_array[BME680_GH2_MSB_REG],
	.loc 1 673 35
	lui	a5,%hi(coeff_array)	# tmp289,
	addi	a5,a5,%lo(coeff_array)	# tmp290, tmp289,
	lbu	a5,36(a5)	# _97, coeff_array
	slli	a5,a5,8	#, _99, _98
# BME680_driver_patched/bme680.c:673: 		dev->calib.par_gh2 = (int16_t) (BME680_CONCAT_BYTES(coeff_array[BME680_GH2_MSB_REG],
	.loc 1 673 24
	slli	a4,a5,16	#, _100, _99
	srai	a4,a4,16	#, _100, _100
# BME680_driver_patched/bme680.c:673: 		dev->calib.par_gh2 = (int16_t) (BME680_CONCAT_BYTES(coeff_array[BME680_GH2_MSB_REG],
	.loc 1 673 35
	lui	a5,%hi(coeff_array)	# tmp291,
	addi	a5,a5,%lo(coeff_array)	# tmp292, tmp291,
	lbu	a5,35(a5)	# _101, coeff_array
	slli	a5,a5,16	#, _102, _101
	srai	a5,a5,16	#, _102, _102
# BME680_driver_patched/bme680.c:673: 		dev->calib.par_gh2 = (int16_t) (BME680_CONCAT_BYTES(coeff_array[BME680_GH2_MSB_REG],
	.loc 1 673 24
	or	a5,a4,a5	# _102, tmp293, _100
	slli	a4,a5,16	#, _103, tmp293
	srai	a4,a4,16	#, _103, _103
# BME680_driver_patched/bme680.c:673: 		dev->calib.par_gh2 = (int16_t) (BME680_CONCAT_BYTES(coeff_array[BME680_GH2_MSB_REG],
	.loc 1 673 22
	lw	a5,-36(s0)		# tmp294, dev
	sh	a4,22(a5)	# _103, dev_120(D)->calib.par_gh2
# BME680_driver_patched/bme680.c:675: 		dev->calib.par_gh3 = (int8_t) coeff_array[BME680_GH3_REG];
	.loc 1 675 44
	lui	a5,%hi(coeff_array)	# tmp295,
	addi	a5,a5,%lo(coeff_array)	# tmp296, tmp295,
	lbu	a5,38(a5)	# _104, coeff_array
# BME680_driver_patched/bme680.c:675: 		dev->calib.par_gh3 = (int8_t) coeff_array[BME680_GH3_REG];
	.loc 1 675 24
	slli	a4,a5,24	#, _105, _104
	srai	a4,a4,24	#, _105, _105
# BME680_driver_patched/bme680.c:675: 		dev->calib.par_gh3 = (int8_t) coeff_array[BME680_GH3_REG];
	.loc 1 675 22
	lw	a5,-36(s0)		# tmp297, dev
	sb	a4,24(a5)	# _105, dev_120(D)->calib.par_gh3
# BME680_driver_patched/bme680.c:678: 		if (rslt == BME680_OK) {
	.loc 1 678 6
	lb	a5,-17(s0)		# tmp298, rslt
	bnez	a5,.L70	#, tmp298,
# BME680_driver_patched/bme680.c:679: 			rslt = bme680_get_regs(BME680_ADDR_RES_HEAT_RANGE_ADDR, &temp_var, 1, dev);
	.loc 1 679 11
	addi	a5,s0,-18	#, tmp299,
	lw	a3,-36(s0)		#, dev
	li	a2,1		#,
	mv	a1,a5	#, tmp299
	li	a0,2		#,
	call	bme680_get_regs		#
	mv	a5,a0	# tmp300,
	sb	a5,-17(s0)	# tmp300, rslt
# BME680_driver_patched/bme680.c:681: 			dev->calib.res_heat_range = ((temp_var & BME680_RHRANGE_MSK) / 16);
	.loc 1 681 43
	lbu	a5,-18(s0)	# temp_var.30_106, temp_var
	andi	a5,a5,48	#, _108, _107
# BME680_driver_patched/bme680.c:681: 			dev->calib.res_heat_range = ((temp_var & BME680_RHRANGE_MSK) / 16);
	.loc 1 681 65
	srai	a4,a5,31	#, tmp301, _108
	andi	a4,a4,15	#, tmp302, tmp301
	add	a5,a4,a5	# _108, tmp303, tmp302
	srai	a5,a5,4	#, tmp304, tmp303
# BME680_driver_patched/bme680.c:681: 			dev->calib.res_heat_range = ((temp_var & BME680_RHRANGE_MSK) / 16);
	.loc 1 681 30
	andi	a4,a5,0xff	# _110, _109
	lw	a5,-36(s0)		# tmp305, dev
	sb	a4,56(a5)	# _110, dev_120(D)->calib.res_heat_range
# BME680_driver_patched/bme680.c:682: 			if (rslt == BME680_OK) {
	.loc 1 682 7
	lb	a5,-17(s0)		# tmp306, rslt
	bnez	a5,.L70	#, tmp306,
# BME680_driver_patched/bme680.c:683: 				rslt = bme680_get_regs(BME680_ADDR_RES_HEAT_VAL_ADDR, &temp_var, 1, dev);
	.loc 1 683 12
	addi	a5,s0,-18	#, tmp307,
	lw	a3,-36(s0)		#, dev
	li	a2,1		#,
	mv	a1,a5	#, tmp307
	li	a0,0		#,
	call	bme680_get_regs		#
	mv	a5,a0	# tmp308,
	sb	a5,-17(s0)	# tmp308, rslt
# BME680_driver_patched/bme680.c:685: 				dev->calib.res_heat_val = (int8_t) temp_var;
	.loc 1 685 31
	lbu	a5,-18(s0)	# temp_var.31_111, temp_var
	slli	a4,a5,24	#, temp_var.32_112, temp_var.31_111
	srai	a4,a4,24	#, temp_var.32_112, temp_var.32_112
# BME680_driver_patched/bme680.c:685: 				dev->calib.res_heat_val = (int8_t) temp_var;
	.loc 1 685 29
	lw	a5,-36(s0)		# tmp309, dev
	sb	a4,57(a5)	# temp_var.32_112, dev_120(D)->calib.res_heat_val
# BME680_driver_patched/bme680.c:686: 				if (rslt == BME680_OK)
	.loc 1 686 8
	lb	a5,-17(s0)		# tmp310, rslt
	bnez	a5,.L70	#, tmp310,
# BME680_driver_patched/bme680.c:687: 					rslt = bme680_get_regs(BME680_ADDR_RANGE_SW_ERR_ADDR, &temp_var, 1, dev);
	.loc 1 687 13
	addi	a5,s0,-18	#, tmp311,
	lw	a3,-36(s0)		#, dev
	li	a2,1		#,
	mv	a1,a5	#, tmp311
	li	a0,4		#,
	call	bme680_get_regs		#
	mv	a5,a0	# tmp312,
	sb	a5,-17(s0)	# tmp312, rslt
.L70:
# BME680_driver_patched/bme680.c:690: 		dev->calib.range_sw_err = ((int8_t) temp_var & (int8_t) BME680_RSERROR_MSK) / 16;
	.loc 1 690 30
	lbu	a5,-18(s0)	# temp_var.33_113, temp_var
	slli	a5,a5,24	#, temp_var.34_114, temp_var.33_113
	srai	a5,a5,24	#, temp_var.34_114, temp_var.34_114
# BME680_driver_patched/bme680.c:690: 		dev->calib.range_sw_err = ((int8_t) temp_var & (int8_t) BME680_RSERROR_MSK) / 16;
	.loc 1 690 27
	srai	a5,a5,4	#, tmp313, temp_var.34_114
	slli	a4,a5,24	#, _115, tmp313
	srai	a4,a4,24	#, _115, _115
	lw	a5,-36(s0)		# tmp314, dev
	sb	a4,58(a5)	# _115, dev_120(D)->calib.range_sw_err
# BME680_driver_patched/bme680.c:693: 	return rslt;
	.loc 1 693 9
	lb	a5,-17(s0)		# _159, rslt
# BME680_driver_patched/bme680.c:694: }
	.loc 1 694 1
	mv	a0,a5	#, <retval>
	lw	ra,44(sp)		#,
.LCFI69:
	lw	s0,40(sp)		#,
.LCFI70:
	addi	sp,sp,48	#,,
.LCFI71:
	jr	ra		#
.LFE11:
	.size	get_calib_data, .-get_calib_data
	.align	2
	.globl	set_gas_config
	.type	set_gas_config, @function
set_gas_config:
.LFB12:
	.loc 1 700 1
	addi	sp,sp,-48	#,,
.LCFI72:
	sw	ra,44(sp)	#,
	sw	s0,40(sp)	#,
.LCFI73:
	addi	s0,sp,48	#,,
.LCFI74:
	sw	a0,-36(s0)	# dev, dev
# BME680_driver_patched/bme680.c:704: 	rslt = null_ptr_check(dev);
	.loc 1 704 9
	lw	a0,-36(s0)		#, dev
	call	null_ptr_check		#
	mv	a5,a0	# tmp80,
	sb	a5,-17(s0)	# tmp80, rslt
# BME680_driver_patched/bme680.c:705: 	if (rslt == BME680_OK) {
	.loc 1 705 5
	lb	a5,-17(s0)		# tmp81, rslt
	bnez	a5,.L73	#, tmp81,
.LBB2:
# BME680_driver_patched/bme680.c:707: 		uint8_t reg_addr[2] = {0};
	.loc 1 707 11
	sh	zero,-20(s0)	#, reg_addr
# BME680_driver_patched/bme680.c:708: 		uint8_t reg_data[2] = {0};
	.loc 1 708 11
	sh	zero,-24(s0)	#, reg_data
# BME680_driver_patched/bme680.c:710: 		if (dev->power_mode == BME680_FORCED_MODE) {
	.loc 1 710 10
	lw	a5,-36(s0)		# tmp82, dev
	lbu	a4,72(a5)	# _1, dev_14(D)->power_mode
# BME680_driver_patched/bme680.c:710: 		if (dev->power_mode == BME680_FORCED_MODE) {
	.loc 1 710 6
	li	a5,1		# tmp83,
	bne	a4,a5,.L74	#, _1, tmp83,
# BME680_driver_patched/bme680.c:711: 			reg_addr[0] = BME680_RES_HEAT0_ADDR;
	.loc 1 711 16
	li	a5,90		# tmp84,
	sb	a5,-20(s0)	# tmp84, reg_addr
# BME680_driver_patched/bme680.c:712: 			reg_data[0] = calc_heater_res(dev->gas_sett.heatr_temp, dev);
	.loc 1 712 18
	lw	a5,-36(s0)		# tmp85, dev
	lhu	a5,68(a5)	# _2, dev_14(D)->gas_sett.heatr_temp
	lw	a1,-36(s0)		#, dev
	mv	a0,a5	#, _2
	call	calc_heater_res		#
	fmv.s	fa5,fa0	# _3,
# BME680_driver_patched/bme680.c:712: 			reg_data[0] = calc_heater_res(dev->gas_sett.heatr_temp, dev);
	.loc 1 712 16
	fcvt.wu.s a5,fa5,rtz	# tmp87, _3
	andi	a5,a5,0xff	# _4, tmp86
	sb	a5,-24(s0)	# _4, reg_data
# BME680_driver_patched/bme680.c:713: 			reg_addr[1] = BME680_GAS_WAIT0_ADDR;
	.loc 1 713 16
	li	a5,100		# tmp88,
	sb	a5,-19(s0)	# tmp88, reg_addr
# BME680_driver_patched/bme680.c:714: 			reg_data[1] = calc_heater_dur(dev->gas_sett.heatr_dur);
	.loc 1 714 18
	lw	a5,-36(s0)		# tmp89, dev
	lhu	a5,70(a5)	# _5, dev_14(D)->gas_sett.heatr_dur
	mv	a0,a5	#, _5
	call	calc_heater_dur		#
	mv	a5,a0	# tmp90,
# BME680_driver_patched/bme680.c:714: 			reg_data[1] = calc_heater_dur(dev->gas_sett.heatr_dur);
	.loc 1 714 16
	sb	a5,-23(s0)	# _6, reg_data
# BME680_driver_patched/bme680.c:715: 			dev->gas_sett.nb_conv = 0;
	.loc 1 715 26
	lw	a5,-36(s0)		# tmp91, dev
	sb	zero,64(a5)	#, dev_14(D)->gas_sett.nb_conv
	j	.L75		#
.L74:
# BME680_driver_patched/bme680.c:717: 			rslt = BME680_W_DEFINE_PWR_MODE;
	.loc 1 717 9
	li	a5,1		# tmp92,
	sb	a5,-17(s0)	# tmp92, rslt
.L75:
# BME680_driver_patched/bme680.c:719: 		if (rslt == BME680_OK)
	.loc 1 719 6
	lb	a5,-17(s0)		# tmp93, rslt
	bnez	a5,.L73	#, tmp93,
# BME680_driver_patched/bme680.c:720: 			rslt = bme680_set_regs(reg_addr, reg_data, 2, dev);
	.loc 1 720 11
	addi	a4,s0,-24	#, tmp94,
	addi	a5,s0,-20	#, tmp95,
	lw	a3,-36(s0)		#, dev
	li	a2,2		#,
	mv	a1,a4	#, tmp94
	mv	a0,a5	#, tmp95
	call	bme680_set_regs		#
	mv	a5,a0	# tmp96,
	sb	a5,-17(s0)	# tmp96, rslt
.L73:
.LBE2:
# BME680_driver_patched/bme680.c:723: 	return rslt;
	.loc 1 723 9
	lb	a5,-17(s0)		# _31, rslt
# BME680_driver_patched/bme680.c:724: }
	.loc 1 724 1
	mv	a0,a5	#, <retval>
	lw	ra,44(sp)		#,
.LCFI75:
	lw	s0,40(sp)		#,
.LCFI76:
	addi	sp,sp,48	#,,
.LCFI77:
	jr	ra		#
.LFE12:
	.size	set_gas_config, .-set_gas_config
	.align	2
	.globl	get_gas_config
	.type	get_gas_config, @function
get_gas_config:
.LFB13:
	.loc 1 732 1
	addi	sp,sp,-48	#,,
.LCFI78:
	sw	ra,44(sp)	#,
	sw	s0,40(sp)	#,
.LCFI79:
	addi	s0,sp,48	#,,
.LCFI80:
	sw	a0,-36(s0)	# dev, dev
# BME680_driver_patched/bme680.c:735: 	uint8_t reg_addr1 = BME680_ADDR_SENS_CONF_START;
	.loc 1 735 10
	li	a5,90		# tmp79,
	sb	a5,-18(s0)	# tmp79, reg_addr1
# BME680_driver_patched/bme680.c:736: 	uint8_t reg_addr2 = BME680_ADDR_GAS_CONF_START;
	.loc 1 736 10
	li	a5,100		# tmp80,
	sb	a5,-19(s0)	# tmp80, reg_addr2
# BME680_driver_patched/bme680.c:737: 	uint8_t reg_data = 0;
	.loc 1 737 10
	sb	zero,-20(s0)	#, reg_data
# BME680_driver_patched/bme680.c:740: 	rslt = null_ptr_check(dev);
	.loc 1 740 9
	lw	a0,-36(s0)		#, dev
	call	null_ptr_check		#
	mv	a5,a0	# tmp81,
	sb	a5,-17(s0)	# tmp81, rslt
# BME680_driver_patched/bme680.c:741: 	if (rslt == BME680_OK) {
	.loc 1 741 5
	lb	a5,-17(s0)		# tmp82, rslt
	bnez	a5,.L79	#, tmp82,
# BME680_driver_patched/bme680.c:742: 		if (BME680_SPI_INTF == dev->intf) {
	.loc 1 742 29
	lw	a5,-36(s0)		# tmp83, dev
	lw	a5,4(a5)		# _1, dev_14(D)->intf
# BME680_driver_patched/bme680.c:742: 		if (BME680_SPI_INTF == dev->intf) {
	.loc 1 742 6
	bnez	a5,.L80	#, _1,
# BME680_driver_patched/bme680.c:744: 			rslt = set_mem_page(reg_addr1, dev);
	.loc 1 744 11
	lbu	a5,-18(s0)	# tmp84, reg_addr1
	lw	a1,-36(s0)		#, dev
	mv	a0,a5	#, tmp84
	call	set_mem_page		#
	mv	a5,a0	# tmp85,
	sb	a5,-17(s0)	# tmp85, rslt
.L80:
# BME680_driver_patched/bme680.c:747: 		if (rslt == BME680_OK) {
	.loc 1 747 6
	lb	a5,-17(s0)		# tmp86, rslt
	bnez	a5,.L79	#, tmp86,
# BME680_driver_patched/bme680.c:748: 			rslt = bme680_get_regs(reg_addr1, &reg_data, 1, dev);
	.loc 1 748 11
	addi	a4,s0,-20	#, tmp87,
	lbu	a5,-18(s0)	# tmp88, reg_addr1
	lw	a3,-36(s0)		#, dev
	li	a2,1		#,
	mv	a1,a4	#, tmp87
	mv	a0,a5	#, tmp88
	call	bme680_get_regs		#
	mv	a5,a0	# tmp89,
	sb	a5,-17(s0)	# tmp89, rslt
# BME680_driver_patched/bme680.c:749: 			if (rslt == BME680_OK) {
	.loc 1 749 7
	lb	a5,-17(s0)		# tmp90, rslt
	bnez	a5,.L79	#, tmp90,
# BME680_driver_patched/bme680.c:750: 				dev->gas_sett.heatr_temp = reg_data;
	.loc 1 750 30
	lbu	a5,-20(s0)	# reg_data.35_2, reg_data
	slli	a4,a5,16	#, _3, reg_data.35_2
	srli	a4,a4,16	#, _3, _3
	lw	a5,-36(s0)		# tmp91, dev
	sh	a4,68(a5)	# _3, dev_14(D)->gas_sett.heatr_temp
# BME680_driver_patched/bme680.c:751: 				rslt = bme680_get_regs(reg_addr2, &reg_data, 1, dev);
	.loc 1 751 12
	addi	a4,s0,-20	#, tmp92,
	lbu	a5,-19(s0)	# tmp93, reg_addr2
	lw	a3,-36(s0)		#, dev
	li	a2,1		#,
	mv	a1,a4	#, tmp92
	mv	a0,a5	#, tmp93
	call	bme680_get_regs		#
	mv	a5,a0	# tmp94,
	sb	a5,-17(s0)	# tmp94, rslt
# BME680_driver_patched/bme680.c:752: 				if (rslt == BME680_OK) {
	.loc 1 752 8
	lb	a5,-17(s0)		# tmp95, rslt
	bnez	a5,.L79	#, tmp95,
# BME680_driver_patched/bme680.c:754: 					dev->gas_sett.heatr_dur = reg_data;
	.loc 1 754 30
	lbu	a5,-20(s0)	# reg_data.36_4, reg_data
	slli	a4,a5,16	#, _5, reg_data.36_4
	srli	a4,a4,16	#, _5, _5
	lw	a5,-36(s0)		# tmp96, dev
	sh	a4,70(a5)	# _5, dev_14(D)->gas_sett.heatr_dur
.L79:
# BME680_driver_patched/bme680.c:760: 	return rslt;
	.loc 1 760 9
	lb	a5,-17(s0)		# _25, rslt
# BME680_driver_patched/bme680.c:761: }
	.loc 1 761 1
	mv	a0,a5	#, <retval>
	lw	ra,44(sp)		#,
.LCFI81:
	lw	s0,40(sp)		#,
.LCFI82:
	addi	sp,sp,48	#,,
.LCFI83:
	jr	ra		#
.LFE13:
	.size	get_gas_config, .-get_gas_config
	.section	.rodata
	.align	2
.LC5:
	.string	"DEBUG0: var1 is %.7f\n"
	.align	2
.LC6:
	.string	"DEBUG2: temp_adc is %d, calib.par_t1 %d, calib.par_t1F %.7f, var1 %.7f, calib.par_t2 %d, calib.par_t2F %.7f\n"
	.align	2
.LC9:
	.string	"DEBUG: var1 is %f\n"
	.align	2
.LC13:
	.string	"DEBUG: var2 is %f\n"
	.align	2
.LC14:
	.string	"DEBUG: calib.t_fine is %ld\n"
	.align	2
.LC16:
	.string	"DEBUG: calc_temp is %f\n"
	.text
	.align	2
	.globl	calc_temperature
	.type	calc_temperature, @function
calc_temperature:
.LFB14:
	.loc 1 771 1
	addi	sp,sp,-64	#,,
.LCFI84:
	sw	ra,60(sp)	#,
	sw	s0,56(sp)	#,
.LCFI85:
	addi	s0,sp,64	#,,
.LCFI86:
	sw	a0,-36(s0)	# temp_adc, temp_adc
	sw	a1,-40(s0)	# dev, dev
# BME680_driver_patched/bme680.c:772: 	float var1 = 26;
	.loc 1 772 8
	lui	a5,%hi(.LC3)	# tmp117,
	flw	fa5,%lo(.LC3)(a5)	# tmp118,
	fsw	fa5,-20(s0)	# tmp118, var1
# BME680_driver_patched/bme680.c:773: 	float var2 = 0;
	.loc 1 773 8
	sw	zero,-24(s0)	#, var2
# BME680_driver_patched/bme680.c:774: 	float calc_temp = 0;
	.loc 1 774 8
	sw	zero,-28(s0)	#, calc_temp
# BME680_driver_patched/bme680.c:776: 	printf_("DEBUG0: var1 is %.7f\n",27.1);
	.loc 1 776 2
	lui	a5,%hi(.LC4)	# tmp120,
	fld	fa5,%lo(.LC4)(a5)	# tmp119,
	fsd	fa5,-48(s0)	# tmp119, %sfp
	lw	a2,-48(s0)		#, %sfp
	lw	a3,-44(s0)		#, %sfp
	lui	a5,%hi(.LC5)	# tmp121,
	addi	a0,a5,%lo(.LC5)	#, tmp121,
	call	printf_		#
# BME680_driver_patched/bme680.c:779: 		temp_adc,dev->calib.par_t1,(float)dev->calib.par_t1,var1,dev->calib.par_t2,(float)dev->calib.par_t2);
	.loc 1 779 22
	lw	a5,-40(s0)		# tmp122, dev
	lhu	a5,26(a5)	# _1, dev_49(D)->calib.par_t1
# BME680_driver_patched/bme680.c:778: 	printf("DEBUG2: temp_adc is %d, calib.par_t1 %d, calib.par_t1F %.7f, var1 %.7f, calib.par_t2 %d, calib.par_t2F %.7f\n",
	.loc 1 778 2
	mv	a3,a5	# _2, _1
# BME680_driver_patched/bme680.c:779: 		temp_adc,dev->calib.par_t1,(float)dev->calib.par_t1,var1,dev->calib.par_t2,(float)dev->calib.par_t2);
	.loc 1 779 47
	lw	a5,-40(s0)		# tmp123, dev
	lhu	a5,26(a5)	# _3, dev_49(D)->calib.par_t1
# BME680_driver_patched/bme680.c:779: 		temp_adc,dev->calib.par_t1,(float)dev->calib.par_t1,var1,dev->calib.par_t2,(float)dev->calib.par_t2);
	.loc 1 779 30
	fcvt.s.wu	fa5,a5	# _4, _3
# BME680_driver_patched/bme680.c:778: 	printf("DEBUG2: temp_adc is %d, calib.par_t1 %d, calib.par_t1F %.7f, var1 %.7f, calib.par_t2 %d, calib.par_t2F %.7f\n",
	.loc 1 778 2
	fcvt.d.s	fa4,fa5	# _5, _4
	flw	fa5,-20(s0)	# tmp124, var1
	fcvt.d.s	fa3,fa5	# _6, tmp124
# BME680_driver_patched/bme680.c:779: 		temp_adc,dev->calib.par_t1,(float)dev->calib.par_t1,var1,dev->calib.par_t2,(float)dev->calib.par_t2);
	.loc 1 779 70
	lw	a5,-40(s0)		# tmp125, dev
	lh	a5,28(a5)		# _7, dev_49(D)->calib.par_t2
# BME680_driver_patched/bme680.c:778: 	printf("DEBUG2: temp_adc is %d, calib.par_t1 %d, calib.par_t1F %.7f, var1 %.7f, calib.par_t2 %d, calib.par_t2F %.7f\n",
	.loc 1 778 2
	mv	a4,a5	# _8, _7
# BME680_driver_patched/bme680.c:779: 		temp_adc,dev->calib.par_t1,(float)dev->calib.par_t1,var1,dev->calib.par_t2,(float)dev->calib.par_t2);
	.loc 1 779 95
	lw	a5,-40(s0)		# tmp126, dev
	lh	a5,28(a5)		# _9, dev_49(D)->calib.par_t2
# BME680_driver_patched/bme680.c:779: 		temp_adc,dev->calib.par_t1,(float)dev->calib.par_t1,var1,dev->calib.par_t2,(float)dev->calib.par_t2);
	.loc 1 779 78
	fcvt.s.w	fa5,a5	# _10, _9
# BME680_driver_patched/bme680.c:778: 	printf("DEBUG2: temp_adc is %d, calib.par_t1 %d, calib.par_t1F %.7f, var1 %.7f, calib.par_t2 %d, calib.par_t2F %.7f\n",
	.loc 1 778 2
	fcvt.d.s	fa5,fa5	# _11, _10
	fsd	fa5,8(sp)	# _11,
	sw	a4,0(sp)	# _8,
	fsd	fa3,-48(s0)	# _6, %sfp
	lw	a6,-48(s0)		#, %sfp
	lw	a7,-44(s0)		#, %sfp
	fsd	fa4,-48(s0)	# _5, %sfp
	lw	a4,-48(s0)		#, %sfp
	lw	a5,-44(s0)		#, %sfp
	mv	a2,a3	#, _2
	lw	a1,-36(s0)		#, temp_adc
	lui	a3,%hi(.LC6)	# tmp127,
	addi	a0,a3,%lo(.LC6)	#, tmp127,
	call	printf_		#
# BME680_driver_patched/bme680.c:782: 	var1  = ((((float)temp_adc / 16384.0f) - ((float)dev->calib.par_t1 / 1024.0f))
	.loc 1 782 13
	lw	a5,-36(s0)		# tmp128, temp_adc
	fcvt.s.wu	fa4,a5	# _12, tmp128
# BME680_driver_patched/bme680.c:782: 	var1  = ((((float)temp_adc / 16384.0f) - ((float)dev->calib.par_t1 / 1024.0f))
	.loc 1 782 29
	lui	a5,%hi(.LC7)	# tmp130,
	flw	fa5,%lo(.LC7)(a5)	# tmp129,
	fdiv.s	fa4,fa4,fa5	# _13, _12, tmp129
# BME680_driver_patched/bme680.c:782: 	var1  = ((((float)temp_adc / 16384.0f) - ((float)dev->calib.par_t1 / 1024.0f))
	.loc 1 782 61
	lw	a5,-40(s0)		# tmp131, dev
	lhu	a5,26(a5)	# _14, dev_49(D)->calib.par_t1
# BME680_driver_patched/bme680.c:782: 	var1  = ((((float)temp_adc / 16384.0f) - ((float)dev->calib.par_t1 / 1024.0f))
	.loc 1 782 44
	fcvt.s.wu	fa3,a5	# _15, _14
# BME680_driver_patched/bme680.c:782: 	var1  = ((((float)temp_adc / 16384.0f) - ((float)dev->calib.par_t1 / 1024.0f))
	.loc 1 782 69
	lui	a5,%hi(.LC8)	# tmp133,
	flw	fa5,%lo(.LC8)(a5)	# tmp132,
	fdiv.s	fa5,fa3,fa5	# _16, _15, tmp132
# BME680_driver_patched/bme680.c:782: 	var1  = ((((float)temp_adc / 16384.0f) - ((float)dev->calib.par_t1 / 1024.0f))
	.loc 1 782 41
	fsub.s	fa4,fa4,fa5	# _17, _13, _16
# BME680_driver_patched/bme680.c:783: 			* ((float)dev->calib.par_t2));
	.loc 1 783 24
	lw	a5,-40(s0)		# tmp134, dev
	lh	a5,28(a5)		# _18, dev_49(D)->calib.par_t2
# BME680_driver_patched/bme680.c:783: 			* ((float)dev->calib.par_t2));
	.loc 1 783 7
	fcvt.s.w	fa5,a5	# _19, _18
# BME680_driver_patched/bme680.c:782: 	var1  = ((((float)temp_adc / 16384.0f) - ((float)dev->calib.par_t1 / 1024.0f))
	.loc 1 782 8
	fmul.s	fa5,fa4,fa5	# tmp135, _17, _19
	fsw	fa5,-20(s0)	# tmp135, var1
# BME680_driver_patched/bme680.c:785: 	printf("DEBUG: var1 is %f\n",var1);
	.loc 1 785 2
	flw	fa5,-20(s0)	# tmp136, var1
	fcvt.d.s	fa5,fa5	# _20, tmp136
	fsd	fa5,-48(s0)	# _20, %sfp
	lw	a2,-48(s0)		#, %sfp
	lw	a3,-44(s0)		#, %sfp
	lui	a5,%hi(.LC9)	# tmp137,
	addi	a0,a5,%lo(.LC9)	#, tmp137,
	call	printf_		#
# BME680_driver_patched/bme680.c:788: 	var2  = (((((float)temp_adc / 131072.0f) - ((float)dev->calib.par_t1 / 8192.0f)) *
	.loc 1 788 14
	lw	a5,-36(s0)		# tmp138, temp_adc
	fcvt.s.wu	fa4,a5	# _21, tmp138
# BME680_driver_patched/bme680.c:788: 	var2  = (((((float)temp_adc / 131072.0f) - ((float)dev->calib.par_t1 / 8192.0f)) *
	.loc 1 788 30
	lui	a5,%hi(.LC10)	# tmp140,
	flw	fa5,%lo(.LC10)(a5)	# tmp139,
	fdiv.s	fa4,fa4,fa5	# _22, _21, tmp139
# BME680_driver_patched/bme680.c:788: 	var2  = (((((float)temp_adc / 131072.0f) - ((float)dev->calib.par_t1 / 8192.0f)) *
	.loc 1 788 63
	lw	a5,-40(s0)		# tmp141, dev
	lhu	a5,26(a5)	# _23, dev_49(D)->calib.par_t1
# BME680_driver_patched/bme680.c:788: 	var2  = (((((float)temp_adc / 131072.0f) - ((float)dev->calib.par_t1 / 8192.0f)) *
	.loc 1 788 46
	fcvt.s.wu	fa3,a5	# _24, _23
# BME680_driver_patched/bme680.c:788: 	var2  = (((((float)temp_adc / 131072.0f) - ((float)dev->calib.par_t1 / 8192.0f)) *
	.loc 1 788 71
	lui	a5,%hi(.LC11)	# tmp143,
	flw	fa5,%lo(.LC11)(a5)	# tmp142,
	fdiv.s	fa5,fa3,fa5	# _25, _24, tmp142
# BME680_driver_patched/bme680.c:788: 	var2  = (((((float)temp_adc / 131072.0f) - ((float)dev->calib.par_t1 / 8192.0f)) *
	.loc 1 788 43
	fsub.s	fa4,fa4,fa5	# _26, _22, _25
# BME680_driver_patched/bme680.c:789: 		(((float)temp_adc / 131072.0f) - ((float)dev->calib.par_t1 / 8192.0f))) *
	.loc 1 789 5
	lw	a5,-36(s0)		# tmp144, temp_adc
	fcvt.s.wu	fa3,a5	# _27, tmp144
# BME680_driver_patched/bme680.c:789: 		(((float)temp_adc / 131072.0f) - ((float)dev->calib.par_t1 / 8192.0f))) *
	.loc 1 789 21
	lui	a5,%hi(.LC10)	# tmp146,
	flw	fa5,%lo(.LC10)(a5)	# tmp145,
	fdiv.s	fa3,fa3,fa5	# _28, _27, tmp145
# BME680_driver_patched/bme680.c:789: 		(((float)temp_adc / 131072.0f) - ((float)dev->calib.par_t1 / 8192.0f))) *
	.loc 1 789 54
	lw	a5,-40(s0)		# tmp147, dev
	lhu	a5,26(a5)	# _29, dev_49(D)->calib.par_t1
# BME680_driver_patched/bme680.c:789: 		(((float)temp_adc / 131072.0f) - ((float)dev->calib.par_t1 / 8192.0f))) *
	.loc 1 789 37
	fcvt.s.wu	fa2,a5	# _30, _29
# BME680_driver_patched/bme680.c:789: 		(((float)temp_adc / 131072.0f) - ((float)dev->calib.par_t1 / 8192.0f))) *
	.loc 1 789 62
	lui	a5,%hi(.LC11)	# tmp149,
	flw	fa5,%lo(.LC11)(a5)	# tmp148,
	fdiv.s	fa5,fa2,fa5	# _31, _30, tmp148
# BME680_driver_patched/bme680.c:789: 		(((float)temp_adc / 131072.0f) - ((float)dev->calib.par_t1 / 8192.0f))) *
	.loc 1 789 34
	fsub.s	fa5,fa3,fa5	# _32, _28, _31
# BME680_driver_patched/bme680.c:788: 	var2  = (((((float)temp_adc / 131072.0f) - ((float)dev->calib.par_t1 / 8192.0f)) *
	.loc 1 788 83
	fmul.s	fa4,fa4,fa5	# _33, _26, _32
# BME680_driver_patched/bme680.c:790: 		((float)dev->calib.par_t3 * 16.0f));
	.loc 1 790 21
	lw	a5,-40(s0)		# tmp150, dev
	lb	a5,30(a5)		# _34, dev_49(D)->calib.par_t3
# BME680_driver_patched/bme680.c:790: 		((float)dev->calib.par_t3 * 16.0f));
	.loc 1 790 4
	fcvt.s.w	fa3,a5	# _35, _34
# BME680_driver_patched/bme680.c:790: 		((float)dev->calib.par_t3 * 16.0f));
	.loc 1 790 29
	lui	a5,%hi(.LC12)	# tmp152,
	flw	fa5,%lo(.LC12)(a5)	# tmp151,
	fmul.s	fa5,fa3,fa5	# _36, _35, tmp151
# BME680_driver_patched/bme680.c:788: 	var2  = (((((float)temp_adc / 131072.0f) - ((float)dev->calib.par_t1 / 8192.0f)) *
	.loc 1 788 8
	fmul.s	fa5,fa4,fa5	# tmp153, _33, _36
	fsw	fa5,-24(s0)	# tmp153, var2
# BME680_driver_patched/bme680.c:792: 	printf("DEBUG: var2 is %f\n",var2);
	.loc 1 792 2
	flw	fa5,-24(s0)	# tmp154, var2
	fcvt.d.s	fa5,fa5	# _37, tmp154
	fsd	fa5,-48(s0)	# _37, %sfp
	lw	a2,-48(s0)		#, %sfp
	lw	a3,-44(s0)		#, %sfp
	lui	a5,%hi(.LC13)	# tmp155,
	addi	a0,a5,%lo(.LC13)	#, tmp155,
	call	printf_		#
# BME680_driver_patched/bme680.c:795: 	dev->calib.t_fine = (var1 + var2);
	.loc 1 795 28
	flw	fa4,-20(s0)	# tmp156, var1
	flw	fa5,-24(s0)	# tmp157, var2
	fadd.s	fa5,fa4,fa5	# _38, tmp156, tmp157
# BME680_driver_patched/bme680.c:795: 	dev->calib.t_fine = (var1 + var2);
	.loc 1 795 20
	fcvt.w.s a4,fa5,rtz	# _39, _38
	lw	a5,-40(s0)		# tmp158, dev
	sw	a4,52(a5)	# _39, dev_49(D)->calib.t_fine
# BME680_driver_patched/bme680.c:797: 	printf("DEBUG: calib.t_fine is %ld\n",dev->calib.t_fine);
	.loc 1 797 2
	lw	a5,-40(s0)		# tmp159, dev
	lw	a5,52(a5)		# _40, dev_49(D)->calib.t_fine
	mv	a1,a5	#, _40
	lui	a5,%hi(.LC14)	# tmp160,
	addi	a0,a5,%lo(.LC14)	#, tmp160,
	call	printf_		#
# BME680_driver_patched/bme680.c:800: 	calc_temp  = ((dev->calib.t_fine) / 5120.0f);
	.loc 1 800 27
	lw	a5,-40(s0)		# tmp161, dev
	lw	a5,52(a5)		# _41, dev_49(D)->calib.t_fine
# BME680_driver_patched/bme680.c:800: 	calc_temp  = ((dev->calib.t_fine) / 5120.0f);
	.loc 1 800 36
	fcvt.s.w	fa4,a5	# _42, _41
# BME680_driver_patched/bme680.c:800: 	calc_temp  = ((dev->calib.t_fine) / 5120.0f);
	.loc 1 800 13
	lui	a5,%hi(.LC15)	# tmp164,
	flw	fa5,%lo(.LC15)(a5)	# tmp163,
	fdiv.s	fa5,fa4,fa5	# tmp162, _42, tmp163
	fsw	fa5,-28(s0)	# tmp162, calc_temp
# BME680_driver_patched/bme680.c:802: 	printf("DEBUG: calc_temp is %f\n",calc_temp);
	.loc 1 802 2
	flw	fa5,-28(s0)	# tmp165, calc_temp
	fcvt.d.s	fa5,fa5	# _43, tmp165
	fsd	fa5,-48(s0)	# _43, %sfp
	lw	a2,-48(s0)		#, %sfp
	lw	a3,-44(s0)		#, %sfp
	lui	a5,%hi(.LC16)	# tmp166,
	addi	a0,a5,%lo(.LC16)	#, tmp166,
	call	printf_		#
# BME680_driver_patched/bme680.c:804: 	return calc_temp;
	.loc 1 804 9
	flw	fa5,-28(s0)	# _60, calc_temp
# BME680_driver_patched/bme680.c:805: }
	.loc 1 805 1
	fmv.s	fa0,fa5	#, <retval>
	lw	ra,60(sp)		#,
.LCFI87:
	lw	s0,56(sp)		#,
.LCFI88:
	addi	sp,sp,64	#,,
.LCFI89:
	jr	ra		#
.LFE14:
	.size	calc_temperature, .-calc_temperature
	.align	2
	.globl	calc_pressure
	.type	calc_pressure, @function
calc_pressure:
.LFB15:
	.loc 1 812 1
	addi	sp,sp,-48	#,,
.LCFI90:
	sw	s0,44(sp)	#,
.LCFI91:
	addi	s0,sp,48	#,,
.LCFI92:
	sw	a0,-36(s0)	# pres_adc, pres_adc
	sw	a1,-40(s0)	# dev, dev
# BME680_driver_patched/bme680.c:813: 	float var1 = 0;
	.loc 1 813 8
	sw	zero,-24(s0)	#, var1
# BME680_driver_patched/bme680.c:814: 	float var2 = 0;
	.loc 1 814 8
	sw	zero,-28(s0)	#, var2
# BME680_driver_patched/bme680.c:815: 	float var3 = 0;
	.loc 1 815 8
	sw	zero,-32(s0)	#, var3
# BME680_driver_patched/bme680.c:816: 	float calc_pres = 0;
	.loc 1 816 8
	sw	zero,-20(s0)	#, calc_pres
# BME680_driver_patched/bme680.c:818: 	var1 = (((float)dev->calib.t_fine / 2.0f) - 64000.0f);
	.loc 1 818 28
	lw	a5,-40(s0)		# tmp130, dev
	lw	a5,52(a5)		# _1, dev_63(D)->calib.t_fine
# BME680_driver_patched/bme680.c:818: 	var1 = (((float)dev->calib.t_fine / 2.0f) - 64000.0f);
	.loc 1 818 11
	fcvt.s.w	fa4,a5	# _2, _1
# BME680_driver_patched/bme680.c:818: 	var1 = (((float)dev->calib.t_fine / 2.0f) - 64000.0f);
	.loc 1 818 36
	lui	a5,%hi(.LC17)	# tmp132,
	flw	fa5,%lo(.LC17)(a5)	# tmp131,
	fdiv.s	fa4,fa4,fa5	# _3, _2, tmp131
# BME680_driver_patched/bme680.c:818: 	var1 = (((float)dev->calib.t_fine / 2.0f) - 64000.0f);
	.loc 1 818 7
	lui	a5,%hi(.LC18)	# tmp135,
	flw	fa5,%lo(.LC18)(a5)	# tmp134,
	fsub.s	fa5,fa4,fa5	# tmp133, _3, tmp134
	fsw	fa5,-24(s0)	# tmp133, var1
# BME680_driver_patched/bme680.c:819: 	var2 = var1 * var1 * (((float)dev->calib.par_p6) / (131072.0f));
	.loc 1 819 14
	flw	fa4,-24(s0)	# tmp136, var1
	flw	fa5,-24(s0)	# tmp137, var1
	fmul.s	fa4,fa4,fa5	# _4, tmp136, tmp137
# BME680_driver_patched/bme680.c:819: 	var2 = var1 * var1 * (((float)dev->calib.par_p6) / (131072.0f));
	.loc 1 819 42
	lw	a5,-40(s0)		# tmp138, dev
	lb	a5,42(a5)		# _5, dev_63(D)->calib.par_p6
# BME680_driver_patched/bme680.c:819: 	var2 = var1 * var1 * (((float)dev->calib.par_p6) / (131072.0f));
	.loc 1 819 25
	fcvt.s.w	fa3,a5	# _6, _5
# BME680_driver_patched/bme680.c:819: 	var2 = var1 * var1 * (((float)dev->calib.par_p6) / (131072.0f));
	.loc 1 819 51
	lui	a5,%hi(.LC10)	# tmp140,
	flw	fa5,%lo(.LC10)(a5)	# tmp139,
	fdiv.s	fa5,fa3,fa5	# _7, _6, tmp139
# BME680_driver_patched/bme680.c:819: 	var2 = var1 * var1 * (((float)dev->calib.par_p6) / (131072.0f));
	.loc 1 819 7
	fmul.s	fa5,fa4,fa5	# tmp141, _4, _7
	fsw	fa5,-28(s0)	# tmp141, var2
# BME680_driver_patched/bme680.c:820: 	var2 = var2 + (var1 * ((float)dev->calib.par_p5) * 2.0f);
	.loc 1 820 42
	lw	a5,-40(s0)		# tmp142, dev
	lh	a5,40(a5)		# _8, dev_63(D)->calib.par_p5
# BME680_driver_patched/bme680.c:820: 	var2 = var2 + (var1 * ((float)dev->calib.par_p5) * 2.0f);
	.loc 1 820 25
	fcvt.s.w	fa4,a5	# _9, _8
# BME680_driver_patched/bme680.c:820: 	var2 = var2 + (var1 * ((float)dev->calib.par_p5) * 2.0f);
	.loc 1 820 22
	flw	fa5,-24(s0)	# tmp143, var1
	fmul.s	fa5,fa4,fa5	# _10, _9, tmp143
# BME680_driver_patched/bme680.c:820: 	var2 = var2 + (var1 * ((float)dev->calib.par_p5) * 2.0f);
	.loc 1 820 51
	fadd.s	fa5,fa5,fa5	# _11, _10, _10
# BME680_driver_patched/bme680.c:820: 	var2 = var2 + (var1 * ((float)dev->calib.par_p5) * 2.0f);
	.loc 1 820 7
	flw	fa4,-28(s0)	# tmp145, var2
	fadd.s	fa5,fa4,fa5	# tmp144, tmp145, _11
	fsw	fa5,-28(s0)	# tmp144, var2
# BME680_driver_patched/bme680.c:821: 	var2 = (var2 / 4.0f) + (((float)dev->calib.par_p4) * 65536.0f);
	.loc 1 821 15
	flw	fa4,-28(s0)	# tmp146, var2
	lui	a5,%hi(.LC19)	# tmp148,
	flw	fa5,%lo(.LC19)(a5)	# tmp147,
	fdiv.s	fa4,fa4,fa5	# _12, tmp146, tmp147
# BME680_driver_patched/bme680.c:821: 	var2 = (var2 / 4.0f) + (((float)dev->calib.par_p4) * 65536.0f);
	.loc 1 821 44
	lw	a5,-40(s0)		# tmp149, dev
	lh	a5,38(a5)		# _13, dev_63(D)->calib.par_p4
# BME680_driver_patched/bme680.c:821: 	var2 = (var2 / 4.0f) + (((float)dev->calib.par_p4) * 65536.0f);
	.loc 1 821 27
	fcvt.s.w	fa3,a5	# _14, _13
# BME680_driver_patched/bme680.c:821: 	var2 = (var2 / 4.0f) + (((float)dev->calib.par_p4) * 65536.0f);
	.loc 1 821 53
	lui	a5,%hi(.LC20)	# tmp151,
	flw	fa5,%lo(.LC20)(a5)	# tmp150,
	fmul.s	fa5,fa3,fa5	# _15, _14, tmp150
# BME680_driver_patched/bme680.c:821: 	var2 = (var2 / 4.0f) + (((float)dev->calib.par_p4) * 65536.0f);
	.loc 1 821 7
	fadd.s	fa5,fa4,fa5	# tmp152, _12, _15
	fsw	fa5,-28(s0)	# tmp152, var2
# BME680_driver_patched/bme680.c:822: 	var1 = (((((float)dev->calib.par_p3 * var1 * var1) / 16384.0f)
	.loc 1 822 30
	lw	a5,-40(s0)		# tmp153, dev
	lb	a5,36(a5)		# _16, dev_63(D)->calib.par_p3
# BME680_driver_patched/bme680.c:822: 	var1 = (((((float)dev->calib.par_p3 * var1 * var1) / 16384.0f)
	.loc 1 822 13
	fcvt.s.w	fa4,a5	# _17, _16
# BME680_driver_patched/bme680.c:822: 	var1 = (((((float)dev->calib.par_p3 * var1 * var1) / 16384.0f)
	.loc 1 822 38
	flw	fa5,-24(s0)	# tmp154, var1
	fmul.s	fa4,fa4,fa5	# _18, _17, tmp154
# BME680_driver_patched/bme680.c:822: 	var1 = (((((float)dev->calib.par_p3 * var1 * var1) / 16384.0f)
	.loc 1 822 45
	flw	fa5,-24(s0)	# tmp155, var1
	fmul.s	fa4,fa4,fa5	# _19, _18, tmp155
# BME680_driver_patched/bme680.c:822: 	var1 = (((((float)dev->calib.par_p3 * var1 * var1) / 16384.0f)
	.loc 1 822 53
	lui	a5,%hi(.LC7)	# tmp157,
	flw	fa5,%lo(.LC7)(a5)	# tmp156,
	fdiv.s	fa4,fa4,fa5	# _20, _19, tmp156
# BME680_driver_patched/bme680.c:823: 		+ ((float)dev->calib.par_p2 * var1)) / 524288.0f);
	.loc 1 823 23
	lw	a5,-40(s0)		# tmp158, dev
	lh	a5,34(a5)		# _21, dev_63(D)->calib.par_p2
# BME680_driver_patched/bme680.c:823: 		+ ((float)dev->calib.par_p2 * var1)) / 524288.0f);
	.loc 1 823 6
	fcvt.s.w	fa3,a5	# _22, _21
# BME680_driver_patched/bme680.c:823: 		+ ((float)dev->calib.par_p2 * var1)) / 524288.0f);
	.loc 1 823 31
	flw	fa5,-24(s0)	# tmp159, var1
	fmul.s	fa5,fa3,fa5	# _23, _22, tmp159
# BME680_driver_patched/bme680.c:823: 		+ ((float)dev->calib.par_p2 * var1)) / 524288.0f);
	.loc 1 823 3
	fadd.s	fa4,fa4,fa5	# _24, _20, _23
# BME680_driver_patched/bme680.c:822: 	var1 = (((((float)dev->calib.par_p3 * var1 * var1) / 16384.0f)
	.loc 1 822 7
	lui	a5,%hi(.LC21)	# tmp162,
	flw	fa5,%lo(.LC21)(a5)	# tmp161,
	fdiv.s	fa5,fa4,fa5	# tmp160, _24, tmp161
	fsw	fa5,-24(s0)	# tmp160, var1
# BME680_driver_patched/bme680.c:824: 	var1 = ((1.0f + (var1 / 32768.0f)) * ((float)dev->calib.par_p1));
	.loc 1 824 24
	flw	fa4,-24(s0)	# tmp163, var1
	lui	a5,%hi(.LC22)	# tmp165,
	flw	fa5,%lo(.LC22)(a5)	# tmp164,
	fdiv.s	fa4,fa4,fa5	# _25, tmp163, tmp164
# BME680_driver_patched/bme680.c:824: 	var1 = ((1.0f + (var1 / 32768.0f)) * ((float)dev->calib.par_p1));
	.loc 1 824 16
	lui	a5,%hi(.LC23)	# tmp167,
	flw	fa5,%lo(.LC23)(a5)	# tmp166,
	fadd.s	fa4,fa4,fa5	# _26, _25, tmp166
# BME680_driver_patched/bme680.c:824: 	var1 = ((1.0f + (var1 / 32768.0f)) * ((float)dev->calib.par_p1));
	.loc 1 824 57
	lw	a5,-40(s0)		# tmp168, dev
	lhu	a5,32(a5)	# _27, dev_63(D)->calib.par_p1
# BME680_driver_patched/bme680.c:824: 	var1 = ((1.0f + (var1 / 32768.0f)) * ((float)dev->calib.par_p1));
	.loc 1 824 40
	fcvt.s.wu	fa5,a5	# _28, _27
# BME680_driver_patched/bme680.c:824: 	var1 = ((1.0f + (var1 / 32768.0f)) * ((float)dev->calib.par_p1));
	.loc 1 824 7
	fmul.s	fa5,fa4,fa5	# tmp169, _26, _28
	fsw	fa5,-24(s0)	# tmp169, var1
# BME680_driver_patched/bme680.c:825: 	calc_pres = (1048576.0f - ((float)pres_adc));
	.loc 1 825 29
	lw	a5,-36(s0)		# tmp170, pres_adc
	fcvt.s.wu	fa5,a5	# _29, tmp170
# BME680_driver_patched/bme680.c:825: 	calc_pres = (1048576.0f - ((float)pres_adc));
	.loc 1 825 12
	lui	a5,%hi(.LC24)	# tmp173,
	flw	fa4,%lo(.LC24)(a5)	# tmp172,
	fsub.s	fa5,fa4,fa5	# tmp171, tmp172, _29
	fsw	fa5,-20(s0)	# tmp171, calc_pres
# BME680_driver_patched/bme680.c:828: 	if ((int)var1 != 0) {
	.loc 1 828 6
	flw	fa5,-24(s0)	# tmp174, var1
	fcvt.w.s a5,fa5,rtz	# _30, tmp174
# BME680_driver_patched/bme680.c:828: 	if ((int)var1 != 0) {
	.loc 1 828 5
	beqz	a5,.L85	#, _30,
# BME680_driver_patched/bme680.c:829: 		calc_pres = (((calc_pres - (var2 / 4096.0f)) * 6250.0f) / var1);
	.loc 1 829 36
	flw	fa4,-28(s0)	# tmp175, var2
	lui	a5,%hi(.LC25)	# tmp177,
	flw	fa5,%lo(.LC25)(a5)	# tmp176,
	fdiv.s	fa5,fa4,fa5	# _31, tmp175, tmp176
# BME680_driver_patched/bme680.c:829: 		calc_pres = (((calc_pres - (var2 / 4096.0f)) * 6250.0f) / var1);
	.loc 1 829 28
	flw	fa4,-20(s0)	# tmp178, calc_pres
	fsub.s	fa4,fa4,fa5	# _32, tmp178, _31
# BME680_driver_patched/bme680.c:829: 		calc_pres = (((calc_pres - (var2 / 4096.0f)) * 6250.0f) / var1);
	.loc 1 829 48
	lui	a5,%hi(.LC26)	# tmp180,
	flw	fa5,%lo(.LC26)(a5)	# tmp179,
	fmul.s	fa4,fa4,fa5	# _33, _32, tmp179
# BME680_driver_patched/bme680.c:829: 		calc_pres = (((calc_pres - (var2 / 4096.0f)) * 6250.0f) / var1);
	.loc 1 829 13
	flw	fa5,-24(s0)	# tmp182, var1
	fdiv.s	fa5,fa4,fa5	# tmp181, _33, tmp182
	fsw	fa5,-20(s0)	# tmp181, calc_pres
# BME680_driver_patched/bme680.c:830: 		var1 = (((float)dev->calib.par_p9) * calc_pres * calc_pres) / 2147483648.0f;
	.loc 1 830 29
	lw	a5,-40(s0)		# tmp183, dev
	lh	a5,46(a5)		# _34, dev_63(D)->calib.par_p9
# BME680_driver_patched/bme680.c:830: 		var1 = (((float)dev->calib.par_p9) * calc_pres * calc_pres) / 2147483648.0f;
	.loc 1 830 12
	fcvt.s.w	fa4,a5	# _35, _34
# BME680_driver_patched/bme680.c:830: 		var1 = (((float)dev->calib.par_p9) * calc_pres * calc_pres) / 2147483648.0f;
	.loc 1 830 38
	flw	fa5,-20(s0)	# tmp184, calc_pres
	fmul.s	fa4,fa4,fa5	# _36, _35, tmp184
# BME680_driver_patched/bme680.c:830: 		var1 = (((float)dev->calib.par_p9) * calc_pres * calc_pres) / 2147483648.0f;
	.loc 1 830 50
	flw	fa5,-20(s0)	# tmp185, calc_pres
	fmul.s	fa4,fa4,fa5	# _37, _36, tmp185
# BME680_driver_patched/bme680.c:830: 		var1 = (((float)dev->calib.par_p9) * calc_pres * calc_pres) / 2147483648.0f;
	.loc 1 830 8
	lui	a5,%hi(.LC27)	# tmp188,
	flw	fa5,%lo(.LC27)(a5)	# tmp187,
	fdiv.s	fa5,fa4,fa5	# tmp186, _37, tmp187
	fsw	fa5,-24(s0)	# tmp186, var1
# BME680_driver_patched/bme680.c:831: 		var2 = calc_pres * (((float)dev->calib.par_p8) / 32768.0f);
	.loc 1 831 41
	lw	a5,-40(s0)		# tmp189, dev
	lh	a5,44(a5)		# _38, dev_63(D)->calib.par_p8
# BME680_driver_patched/bme680.c:831: 		var2 = calc_pres * (((float)dev->calib.par_p8) / 32768.0f);
	.loc 1 831 24
	fcvt.s.w	fa4,a5	# _39, _38
# BME680_driver_patched/bme680.c:831: 		var2 = calc_pres * (((float)dev->calib.par_p8) / 32768.0f);
	.loc 1 831 50
	lui	a5,%hi(.LC22)	# tmp191,
	flw	fa5,%lo(.LC22)(a5)	# tmp190,
	fdiv.s	fa5,fa4,fa5	# _40, _39, tmp190
# BME680_driver_patched/bme680.c:831: 		var2 = calc_pres * (((float)dev->calib.par_p8) / 32768.0f);
	.loc 1 831 8
	flw	fa4,-20(s0)	# tmp193, calc_pres
	fmul.s	fa5,fa4,fa5	# tmp192, tmp193, _40
	fsw	fa5,-28(s0)	# tmp192, var2
# BME680_driver_patched/bme680.c:832: 		var3 = ((calc_pres / 256.0f) * (calc_pres / 256.0f) * (calc_pres / 256.0f)
	.loc 1 832 22
	flw	fa4,-20(s0)	# tmp194, calc_pres
	lui	a5,%hi(.LC28)	# tmp196,
	flw	fa5,%lo(.LC28)(a5)	# tmp195,
	fdiv.s	fa4,fa4,fa5	# _41, tmp194, tmp195
# BME680_driver_patched/bme680.c:832: 		var3 = ((calc_pres / 256.0f) * (calc_pres / 256.0f) * (calc_pres / 256.0f)
	.loc 1 832 45
	flw	fa3,-20(s0)	# tmp197, calc_pres
	lui	a5,%hi(.LC28)	# tmp199,
	flw	fa5,%lo(.LC28)(a5)	# tmp198,
	fdiv.s	fa5,fa3,fa5	# _42, tmp197, tmp198
# BME680_driver_patched/bme680.c:832: 		var3 = ((calc_pres / 256.0f) * (calc_pres / 256.0f) * (calc_pres / 256.0f)
	.loc 1 832 32
	fmul.s	fa4,fa4,fa5	# _43, _41, _42
# BME680_driver_patched/bme680.c:832: 		var3 = ((calc_pres / 256.0f) * (calc_pres / 256.0f) * (calc_pres / 256.0f)
	.loc 1 832 68
	flw	fa3,-20(s0)	# tmp200, calc_pres
	lui	a5,%hi(.LC28)	# tmp202,
	flw	fa5,%lo(.LC28)(a5)	# tmp201,
	fdiv.s	fa5,fa3,fa5	# _44, tmp200, tmp201
# BME680_driver_patched/bme680.c:832: 		var3 = ((calc_pres / 256.0f) * (calc_pres / 256.0f) * (calc_pres / 256.0f)
	.loc 1 832 55
	fmul.s	fa4,fa4,fa5	# _45, _43, _44
# BME680_driver_patched/bme680.c:833: 			* (dev->calib.par_p10 / 131072.0f));
	.loc 1 833 17
	lw	a5,-40(s0)		# tmp203, dev
	lbu	a5,48(a5)	# _46, dev_63(D)->calib.par_p10
# BME680_driver_patched/bme680.c:833: 			* (dev->calib.par_p10 / 131072.0f));
	.loc 1 833 26
	fcvt.s.w	fa3,a5	# _48, _47
	lui	a5,%hi(.LC10)	# tmp205,
	flw	fa5,%lo(.LC10)(a5)	# tmp204,
	fdiv.s	fa5,fa3,fa5	# _49, _48, tmp204
# BME680_driver_patched/bme680.c:832: 		var3 = ((calc_pres / 256.0f) * (calc_pres / 256.0f) * (calc_pres / 256.0f)
	.loc 1 832 8
	fmul.s	fa5,fa4,fa5	# tmp206, _45, _49
	fsw	fa5,-32(s0)	# tmp206, var3
# BME680_driver_patched/bme680.c:834: 		calc_pres = (calc_pres + (var1 + var2 + var3 + ((float)dev->calib.par_p7 * 128.0f)) / 16.0f);
	.loc 1 834 34
	flw	fa4,-24(s0)	# tmp207, var1
	flw	fa5,-28(s0)	# tmp208, var2
	fadd.s	fa4,fa4,fa5	# _50, tmp207, tmp208
# BME680_driver_patched/bme680.c:834: 		calc_pres = (calc_pres + (var1 + var2 + var3 + ((float)dev->calib.par_p7 * 128.0f)) / 16.0f);
	.loc 1 834 41
	flw	fa5,-32(s0)	# tmp209, var3
	fadd.s	fa4,fa4,fa5	# _51, _50, tmp209
# BME680_driver_patched/bme680.c:834: 		calc_pres = (calc_pres + (var1 + var2 + var3 + ((float)dev->calib.par_p7 * 128.0f)) / 16.0f);
	.loc 1 834 68
	lw	a5,-40(s0)		# tmp210, dev
	lb	a5,43(a5)		# _52, dev_63(D)->calib.par_p7
# BME680_driver_patched/bme680.c:834: 		calc_pres = (calc_pres + (var1 + var2 + var3 + ((float)dev->calib.par_p7 * 128.0f)) / 16.0f);
	.loc 1 834 51
	fcvt.s.w	fa3,a5	# _53, _52
# BME680_driver_patched/bme680.c:834: 		calc_pres = (calc_pres + (var1 + var2 + var3 + ((float)dev->calib.par_p7 * 128.0f)) / 16.0f);
	.loc 1 834 76
	lui	a5,%hi(.LC29)	# tmp212,
	flw	fa5,%lo(.LC29)(a5)	# tmp211,
	fmul.s	fa5,fa3,fa5	# _54, _53, tmp211
# BME680_driver_patched/bme680.c:834: 		calc_pres = (calc_pres + (var1 + var2 + var3 + ((float)dev->calib.par_p7 * 128.0f)) / 16.0f);
	.loc 1 834 48
	fadd.s	fa4,fa4,fa5	# _55, _51, _54
# BME680_driver_patched/bme680.c:834: 		calc_pres = (calc_pres + (var1 + var2 + var3 + ((float)dev->calib.par_p7 * 128.0f)) / 16.0f);
	.loc 1 834 87
	lui	a5,%hi(.LC12)	# tmp214,
	flw	fa5,%lo(.LC12)(a5)	# tmp213,
	fdiv.s	fa5,fa4,fa5	# _56, _55, tmp213
# BME680_driver_patched/bme680.c:834: 		calc_pres = (calc_pres + (var1 + var2 + var3 + ((float)dev->calib.par_p7 * 128.0f)) / 16.0f);
	.loc 1 834 13
	flw	fa4,-20(s0)	# tmp216, calc_pres
	fadd.s	fa5,fa4,fa5	# tmp215, tmp216, _56
	fsw	fa5,-20(s0)	# tmp215, calc_pres
	j	.L86		#
.L85:
# BME680_driver_patched/bme680.c:836: 		calc_pres = 0;
	.loc 1 836 13
	sw	zero,-20(s0)	#, calc_pres
.L86:
# BME680_driver_patched/bme680.c:839: 	return calc_pres;
	.loc 1 839 9
	flw	fa5,-20(s0)	# _78, calc_pres
# BME680_driver_patched/bme680.c:840: }
	.loc 1 840 1
	fmv.s	fa0,fa5	#, <retval>
	lw	s0,44(sp)		#,
.LCFI93:
	addi	sp,sp,48	#,,
.LCFI94:
	jr	ra		#
.LFE15:
	.size	calc_pressure, .-calc_pressure
	.align	2
	.globl	calc_humidity
	.type	calc_humidity, @function
calc_humidity:
.LFB16:
	.loc 1 847 1
	addi	sp,sp,-64	#,,
.LCFI95:
	sw	s0,60(sp)	#,
.LCFI96:
	addi	s0,sp,64	#,,
.LCFI97:
	mv	a5,a0	# tmp108, hum_adc
	sw	a1,-56(s0)	# dev, dev
	sh	a5,-50(s0)	# tmp109, hum_adc
# BME680_driver_patched/bme680.c:848: 	float calc_hum = 0;
	.loc 1 848 8
	sw	zero,-20(s0)	#, calc_hum
# BME680_driver_patched/bme680.c:849: 	float var1 = 0;
	.loc 1 849 8
	sw	zero,-24(s0)	#, var1
# BME680_driver_patched/bme680.c:850: 	float var2 = 0;
	.loc 1 850 8
	sw	zero,-28(s0)	#, var2
# BME680_driver_patched/bme680.c:851: 	float var3 = 0;
	.loc 1 851 8
	sw	zero,-32(s0)	#, var3
# BME680_driver_patched/bme680.c:852: 	float var4 = 0;
	.loc 1 852 8
	sw	zero,-36(s0)	#, var4
# BME680_driver_patched/bme680.c:856: 	temp_comp  = ((dev->calib.t_fine) / 5120.0f);
	.loc 1 856 27
	lw	a5,-56(s0)		# tmp110, dev
	lw	a5,52(a5)		# _1, dev_42(D)->calib.t_fine
# BME680_driver_patched/bme680.c:856: 	temp_comp  = ((dev->calib.t_fine) / 5120.0f);
	.loc 1 856 36
	fcvt.s.w	fa4,a5	# _2, _1
# BME680_driver_patched/bme680.c:856: 	temp_comp  = ((dev->calib.t_fine) / 5120.0f);
	.loc 1 856 13
	lui	a5,%hi(.LC15)	# tmp113,
	flw	fa5,%lo(.LC15)(a5)	# tmp112,
	fdiv.s	fa5,fa4,fa5	# tmp111, _2, tmp112
	fsw	fa5,-40(s0)	# tmp111, temp_comp
# BME680_driver_patched/bme680.c:858: 	var1 = (float)((float)hum_adc) - (((float)dev->calib.par_h1 * 16.0f) + (((float)dev->calib.par_h3 / 2.0f)
	.loc 1 858 9
	lhu	a5,-50(s0)	# tmp114, hum_adc
	fcvt.s.wu	fa4,a5	# _3, tmp114
# BME680_driver_patched/bme680.c:858: 	var1 = (float)((float)hum_adc) - (((float)dev->calib.par_h1 * 16.0f) + (((float)dev->calib.par_h3 / 2.0f)
	.loc 1 858 54
	lw	a5,-56(s0)		# tmp115, dev
	lhu	a5,12(a5)	# _4, dev_42(D)->calib.par_h1
# BME680_driver_patched/bme680.c:858: 	var1 = (float)((float)hum_adc) - (((float)dev->calib.par_h1 * 16.0f) + (((float)dev->calib.par_h3 / 2.0f)
	.loc 1 858 37
	fcvt.s.wu	fa3,a5	# _5, _4
# BME680_driver_patched/bme680.c:858: 	var1 = (float)((float)hum_adc) - (((float)dev->calib.par_h1 * 16.0f) + (((float)dev->calib.par_h3 / 2.0f)
	.loc 1 858 62
	lui	a5,%hi(.LC12)	# tmp117,
	flw	fa5,%lo(.LC12)(a5)	# tmp116,
	fmul.s	fa3,fa3,fa5	# _6, _5, tmp116
# BME680_driver_patched/bme680.c:858: 	var1 = (float)((float)hum_adc) - (((float)dev->calib.par_h1 * 16.0f) + (((float)dev->calib.par_h3 / 2.0f)
	.loc 1 858 92
	lw	a5,-56(s0)		# tmp118, dev
	lb	a5,16(a5)		# _7, dev_42(D)->calib.par_h3
# BME680_driver_patched/bme680.c:858: 	var1 = (float)((float)hum_adc) - (((float)dev->calib.par_h1 * 16.0f) + (((float)dev->calib.par_h3 / 2.0f)
	.loc 1 858 75
	fcvt.s.w	fa2,a5	# _8, _7
# BME680_driver_patched/bme680.c:858: 	var1 = (float)((float)hum_adc) - (((float)dev->calib.par_h1 * 16.0f) + (((float)dev->calib.par_h3 / 2.0f)
	.loc 1 858 100
	lui	a5,%hi(.LC17)	# tmp120,
	flw	fa5,%lo(.LC17)(a5)	# tmp119,
	fdiv.s	fa2,fa2,fa5	# _9, _8, tmp119
# BME680_driver_patched/bme680.c:859: 		* temp_comp));
	.loc 1 859 3
	flw	fa5,-40(s0)	# tmp121, temp_comp
	fmul.s	fa5,fa2,fa5	# _10, _9, tmp121
# BME680_driver_patched/bme680.c:858: 	var1 = (float)((float)hum_adc) - (((float)dev->calib.par_h1 * 16.0f) + (((float)dev->calib.par_h3 / 2.0f)
	.loc 1 858 71
	fadd.s	fa5,fa3,fa5	# _11, _6, _10
# BME680_driver_patched/bme680.c:858: 	var1 = (float)((float)hum_adc) - (((float)dev->calib.par_h1 * 16.0f) + (((float)dev->calib.par_h3 / 2.0f)
	.loc 1 858 7
	fsub.s	fa5,fa4,fa5	# tmp122, _3, _11
	fsw	fa5,-24(s0)	# tmp122, var1
# BME680_driver_patched/bme680.c:861: 	var2 = var1 * ((float)(((float) dev->calib.par_h2 / 262144.0f) * (1.0f + (((float)dev->calib.par_h4 / 16384.0f)
	.loc 1 861 44
	lw	a5,-56(s0)		# tmp123, dev
	lhu	a5,14(a5)	# _12, dev_42(D)->calib.par_h2
# BME680_driver_patched/bme680.c:861: 	var2 = var1 * ((float)(((float) dev->calib.par_h2 / 262144.0f) * (1.0f + (((float)dev->calib.par_h4 / 16384.0f)
	.loc 1 861 26
	fcvt.s.wu	fa4,a5	# _13, _12
# BME680_driver_patched/bme680.c:861: 	var2 = var1 * ((float)(((float) dev->calib.par_h2 / 262144.0f) * (1.0f + (((float)dev->calib.par_h4 / 16384.0f)
	.loc 1 861 52
	lui	a5,%hi(.LC30)	# tmp125,
	flw	fa5,%lo(.LC30)(a5)	# tmp124,
	fdiv.s	fa4,fa4,fa5	# _14, _13, tmp124
# BME680_driver_patched/bme680.c:861: 	var2 = var1 * ((float)(((float) dev->calib.par_h2 / 262144.0f) * (1.0f + (((float)dev->calib.par_h4 / 16384.0f)
	.loc 1 861 94
	lw	a5,-56(s0)		# tmp126, dev
	lb	a5,17(a5)		# _15, dev_42(D)->calib.par_h4
# BME680_driver_patched/bme680.c:861: 	var2 = var1 * ((float)(((float) dev->calib.par_h2 / 262144.0f) * (1.0f + (((float)dev->calib.par_h4 / 16384.0f)
	.loc 1 861 77
	fcvt.s.w	fa3,a5	# _16, _15
# BME680_driver_patched/bme680.c:861: 	var2 = var1 * ((float)(((float) dev->calib.par_h2 / 262144.0f) * (1.0f + (((float)dev->calib.par_h4 / 16384.0f)
	.loc 1 861 102
	lui	a5,%hi(.LC7)	# tmp128,
	flw	fa5,%lo(.LC7)(a5)	# tmp127,
	fdiv.s	fa3,fa3,fa5	# _17, _16, tmp127
# BME680_driver_patched/bme680.c:862: 		* temp_comp) + (((float)dev->calib.par_h5 / 1048576.0f) * temp_comp * temp_comp))));
	.loc 1 862 3
	flw	fa5,-40(s0)	# tmp129, temp_comp
	fmul.s	fa3,fa3,fa5	# _18, _17, tmp129
# BME680_driver_patched/bme680.c:861: 	var2 = var1 * ((float)(((float) dev->calib.par_h2 / 262144.0f) * (1.0f + (((float)dev->calib.par_h4 / 16384.0f)
	.loc 1 861 73
	lui	a5,%hi(.LC23)	# tmp131,
	flw	fa5,%lo(.LC23)(a5)	# tmp130,
	fadd.s	fa3,fa3,fa5	# _19, _18, tmp130
# BME680_driver_patched/bme680.c:862: 		* temp_comp) + (((float)dev->calib.par_h5 / 1048576.0f) * temp_comp * temp_comp))));
	.loc 1 862 37
	lw	a5,-56(s0)		# tmp132, dev
	lb	a5,18(a5)		# _20, dev_42(D)->calib.par_h5
# BME680_driver_patched/bme680.c:862: 		* temp_comp) + (((float)dev->calib.par_h5 / 1048576.0f) * temp_comp * temp_comp))));
	.loc 1 862 20
	fcvt.s.w	fa2,a5	# _21, _20
# BME680_driver_patched/bme680.c:862: 		* temp_comp) + (((float)dev->calib.par_h5 / 1048576.0f) * temp_comp * temp_comp))));
	.loc 1 862 45
	lui	a5,%hi(.LC24)	# tmp134,
	flw	fa5,%lo(.LC24)(a5)	# tmp133,
	fdiv.s	fa2,fa2,fa5	# _22, _21, tmp133
# BME680_driver_patched/bme680.c:862: 		* temp_comp) + (((float)dev->calib.par_h5 / 1048576.0f) * temp_comp * temp_comp))));
	.loc 1 862 59
	flw	fa5,-40(s0)	# tmp135, temp_comp
	fmul.s	fa2,fa2,fa5	# _23, _22, tmp135
# BME680_driver_patched/bme680.c:862: 		* temp_comp) + (((float)dev->calib.par_h5 / 1048576.0f) * temp_comp * temp_comp))));
	.loc 1 862 71
	flw	fa5,-40(s0)	# tmp136, temp_comp
	fmul.s	fa5,fa2,fa5	# _24, _23, tmp136
# BME680_driver_patched/bme680.c:862: 		* temp_comp) + (((float)dev->calib.par_h5 / 1048576.0f) * temp_comp * temp_comp))));
	.loc 1 862 16
	fadd.s	fa5,fa3,fa5	# _25, _19, _24
# BME680_driver_patched/bme680.c:861: 	var2 = var1 * ((float)(((float) dev->calib.par_h2 / 262144.0f) * (1.0f + (((float)dev->calib.par_h4 / 16384.0f)
	.loc 1 861 17
	fmul.s	fa5,fa4,fa5	# _26, _14, _25
# BME680_driver_patched/bme680.c:861: 	var2 = var1 * ((float)(((float) dev->calib.par_h2 / 262144.0f) * (1.0f + (((float)dev->calib.par_h4 / 16384.0f)
	.loc 1 861 7
	flw	fa4,-24(s0)	# tmp138, var1
	fmul.s	fa5,fa4,fa5	# tmp137, tmp138, _26
	fsw	fa5,-28(s0)	# tmp137, var2
# BME680_driver_patched/bme680.c:864: 	var3 = (float) dev->calib.par_h6 / 16384.0f;
	.loc 1 864 27
	lw	a5,-56(s0)		# tmp139, dev
	lbu	a5,19(a5)	# _27, dev_42(D)->calib.par_h6
# BME680_driver_patched/bme680.c:864: 	var3 = (float) dev->calib.par_h6 / 16384.0f;
	.loc 1 864 9
	fcvt.s.wu	fa4,a5	# _28, _27
# BME680_driver_patched/bme680.c:864: 	var3 = (float) dev->calib.par_h6 / 16384.0f;
	.loc 1 864 7
	lui	a5,%hi(.LC7)	# tmp142,
	flw	fa5,%lo(.LC7)(a5)	# tmp141,
	fdiv.s	fa5,fa4,fa5	# tmp140, _28, tmp141
	fsw	fa5,-32(s0)	# tmp140, var3
# BME680_driver_patched/bme680.c:866: 	var4 = (float) dev->calib.par_h7 / 2097152.0f;
	.loc 1 866 27
	lw	a5,-56(s0)		# tmp143, dev
	lb	a5,20(a5)		# _29, dev_42(D)->calib.par_h7
# BME680_driver_patched/bme680.c:866: 	var4 = (float) dev->calib.par_h7 / 2097152.0f;
	.loc 1 866 9
	fcvt.s.w	fa4,a5	# _30, _29
# BME680_driver_patched/bme680.c:866: 	var4 = (float) dev->calib.par_h7 / 2097152.0f;
	.loc 1 866 7
	lui	a5,%hi(.LC31)	# tmp146,
	flw	fa5,%lo(.LC31)(a5)	# tmp145,
	fdiv.s	fa5,fa4,fa5	# tmp144, _30, tmp145
	fsw	fa5,-36(s0)	# tmp144, var4
# BME680_driver_patched/bme680.c:868: 	calc_hum = var2 + ((var3 + (var4 * temp_comp)) * var2 * var2);
	.loc 1 868 35
	flw	fa4,-36(s0)	# tmp147, var4
	flw	fa5,-40(s0)	# tmp148, temp_comp
	fmul.s	fa4,fa4,fa5	# _31, tmp147, tmp148
# BME680_driver_patched/bme680.c:868: 	calc_hum = var2 + ((var3 + (var4 * temp_comp)) * var2 * var2);
	.loc 1 868 27
	flw	fa5,-32(s0)	# tmp149, var3
	fadd.s	fa4,fa4,fa5	# _32, _31, tmp149
# BME680_driver_patched/bme680.c:868: 	calc_hum = var2 + ((var3 + (var4 * temp_comp)) * var2 * var2);
	.loc 1 868 49
	flw	fa5,-28(s0)	# tmp150, var2
	fmul.s	fa4,fa4,fa5	# _33, _32, tmp150
# BME680_driver_patched/bme680.c:868: 	calc_hum = var2 + ((var3 + (var4 * temp_comp)) * var2 * var2);
	.loc 1 868 56
	flw	fa5,-28(s0)	# tmp151, var2
	fmul.s	fa5,fa4,fa5	# _34, _33, tmp151
# BME680_driver_patched/bme680.c:868: 	calc_hum = var2 + ((var3 + (var4 * temp_comp)) * var2 * var2);
	.loc 1 868 11
	flw	fa4,-28(s0)	# tmp153, var2
	fadd.s	fa5,fa4,fa5	# tmp152, tmp153, _34
	fsw	fa5,-20(s0)	# tmp152, calc_hum
# BME680_driver_patched/bme680.c:870: 	if (calc_hum > 100.0f)
	.loc 1 870 5
	flw	fa4,-20(s0)	# tmp154, calc_hum
	lui	a5,%hi(.LC32)	# tmp156,
	flw	fa5,%lo(.LC32)(a5)	# tmp155,
	fgt.s	a5,fa4,fa5	#, tmp157, tmp154, tmp155
	beqz	a5,.L96	#, tmp157,
# BME680_driver_patched/bme680.c:871: 		calc_hum = 100.0f;
	.loc 1 871 12
	lui	a5,%hi(.LC32)	# tmp158,
	flw	fa5,%lo(.LC32)(a5)	# tmp159,
	fsw	fa5,-20(s0)	# tmp159, calc_hum
	j	.L91		#
.L96:
# BME680_driver_patched/bme680.c:872: 	else if (calc_hum < 0.0f)
	.loc 1 872 10
	flw	fa5,-20(s0)	# tmp160, calc_hum
	fmv.s.x	fa4,zero	# tmp161,
	flt.s	a5,fa5,fa4	#, tmp162, tmp160, tmp161
	beqz	a5,.L91	#, tmp162,
# BME680_driver_patched/bme680.c:873: 		calc_hum = 0.0f;
	.loc 1 873 12
	sw	zero,-20(s0)	#, calc_hum
.L91:
# BME680_driver_patched/bme680.c:875: 	return calc_hum;
	.loc 1 875 9
	flw	fa5,-20(s0)	# _52, calc_hum
# BME680_driver_patched/bme680.c:876: }
	.loc 1 876 1
	fmv.s	fa0,fa5	#, <retval>
	lw	s0,60(sp)		#,
.LCFI98:
	addi	sp,sp,64	#,,
.LCFI99:
	jr	ra		#
.LFE16:
	.size	calc_humidity, .-calc_humidity
	.section	.rodata
	.align	2
.LC1:
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	3212836864
	.word	0
	.word	3209481421
	.word	0
	.word	0
	.word	3192704205
	.word	3204448256
	.word	0
	.word	3212836864
	.word	0
	.word	0
	.align	2
.LC2:
	.word	0
	.word	0
	.word	0
	.word	0
	.word	1036831949
	.word	1060320051
	.word	0
	.word	3209481421
	.word	3184315597
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.text
	.align	2
	.globl	calc_gas_resistance
	.type	calc_gas_resistance, @function
calc_gas_resistance:
.LFB17:
	.loc 1 883 1
	addi	sp,sp,-176	#,,
.LCFI100:
	sw	ra,172(sp)	#,
	sw	s0,168(sp)	#,
.LCFI101:
	addi	s0,sp,176	#,,
.LCFI102:
	mv	a5,a0	# tmp94, gas_res_adc
	mv	a4,a1	# tmp96, gas_range
	sw	a2,-168(s0)	# dev, dev
	sh	a5,-162(s0)	# tmp95, gas_res_adc
	mv	a5,a4	# tmp97, tmp96
	sb	a5,-163(s0)	# tmp97, gas_range
# BME680_driver_patched/bme680.c:885: 	float var1 = 0;
	.loc 1 885 8
	sw	zero,-20(s0)	#, var1
# BME680_driver_patched/bme680.c:886: 	float var2 = 0;
	.loc 1 886 8
	sw	zero,-24(s0)	#, var2
# BME680_driver_patched/bme680.c:887: 	float var3 = 0;
	.loc 1 887 8
	sw	zero,-28(s0)	#, var3
# BME680_driver_patched/bme680.c:889: 	const float lookup_k1_range[16] = {
	.loc 1 889 14
	lui	a5,%hi(.LC1)	# tmp98,
	addi	a4,s0,-96	#, tmp99,
	addi	a5,a5,%lo(.LC1)	# tmp100, tmp98,
	li	a3,64		# tmp101,
	mv	a2,a3	#, tmp101
	mv	a1,a5	#, tmp100
	mv	a0,a4	#, tmp99
	call	memcpy		#
# BME680_driver_patched/bme680.c:892: 	const float lookup_k2_range[16] = {
	.loc 1 892 14
	lui	a5,%hi(.LC2)	# tmp103,
	addi	a4,s0,-160	#, tmp104,
	addi	a5,a5,%lo(.LC2)	# tmp105, tmp103,
	li	a3,64		# tmp106,
	mv	a2,a3	#, tmp106
	mv	a1,a5	#, tmp105
	mv	a0,a4	#, tmp104
	call	memcpy		#
# BME680_driver_patched/bme680.c:896: 	var1 = (1340.0f + (5.0f * dev->calib.range_sw_err));
	.loc 1 896 38
	lw	a5,-168(s0)		# tmp108, dev
	lb	a5,58(a5)		# _1, dev_27(D)->calib.range_sw_err
# BME680_driver_patched/bme680.c:896: 	var1 = (1340.0f + (5.0f * dev->calib.range_sw_err));
	.loc 1 896 26
	fcvt.s.w	fa4,a5	# _2, _1
	lui	a5,%hi(.LC33)	# tmp110,
	flw	fa5,%lo(.LC33)(a5)	# tmp109,
	fmul.s	fa4,fa4,fa5	# _3, _2, tmp109
# BME680_driver_patched/bme680.c:896: 	var1 = (1340.0f + (5.0f * dev->calib.range_sw_err));
	.loc 1 896 7
	lui	a5,%hi(.LC34)	# tmp113,
	flw	fa5,%lo(.LC34)(a5)	# tmp112,
	fadd.s	fa5,fa4,fa5	# tmp111, _3, tmp112
	fsw	fa5,-20(s0)	# tmp111, var1
# BME680_driver_patched/bme680.c:897: 	var2 = (var1) * (1.0f + lookup_k1_range[gas_range]/100.0f);
	.loc 1 897 41
	lbu	a5,-163(s0)	# _4, gas_range
	slli	a5,a5,2	#, tmp114, _4
	addi	a4,s0,-16	#, tmp141,
	add	a5,a4,a5	# tmp114, tmp114, tmp141
	flw	fa4,-80(a5)	# _5, lookup_k1_range
# BME680_driver_patched/bme680.c:897: 	var2 = (var1) * (1.0f + lookup_k1_range[gas_range]/100.0f);
	.loc 1 897 52
	lui	a5,%hi(.LC32)	# tmp116,
	flw	fa5,%lo(.LC32)(a5)	# tmp115,
	fdiv.s	fa4,fa4,fa5	# _6, _5, tmp115
# BME680_driver_patched/bme680.c:897: 	var2 = (var1) * (1.0f + lookup_k1_range[gas_range]/100.0f);
	.loc 1 897 24
	lui	a5,%hi(.LC23)	# tmp118,
	flw	fa5,%lo(.LC23)(a5)	# tmp117,
	fadd.s	fa5,fa4,fa5	# _7, _6, tmp117
# BME680_driver_patched/bme680.c:897: 	var2 = (var1) * (1.0f + lookup_k1_range[gas_range]/100.0f);
	.loc 1 897 7
	flw	fa4,-20(s0)	# tmp120, var1
	fmul.s	fa5,fa4,fa5	# tmp119, tmp120, _7
	fsw	fa5,-24(s0)	# tmp119, var2
# BME680_driver_patched/bme680.c:898: 	var3 = 1.0f + (lookup_k2_range[gas_range]/100.0f);
	.loc 1 898 32
	lbu	a5,-163(s0)	# _8, gas_range
	slli	a5,a5,2	#, tmp121, _8
	addi	a4,s0,-16	#, tmp142,
	add	a5,a4,a5	# tmp121, tmp121, tmp142
	flw	fa4,-144(a5)	# _9, lookup_k2_range
# BME680_driver_patched/bme680.c:898: 	var3 = 1.0f + (lookup_k2_range[gas_range]/100.0f);
	.loc 1 898 43
	lui	a5,%hi(.LC32)	# tmp123,
	flw	fa5,%lo(.LC32)(a5)	# tmp122,
	fdiv.s	fa4,fa4,fa5	# _10, _9, tmp122
# BME680_driver_patched/bme680.c:898: 	var3 = 1.0f + (lookup_k2_range[gas_range]/100.0f);
	.loc 1 898 7
	lui	a5,%hi(.LC23)	# tmp126,
	flw	fa5,%lo(.LC23)(a5)	# tmp125,
	fadd.s	fa5,fa4,fa5	# tmp124, _10, tmp125
	fsw	fa5,-28(s0)	# tmp124, var3
# BME680_driver_patched/bme680.c:900: 	calc_gas_res = 1.0f / (float)(var3 * (0.000000125f) * (float)(1 << gas_range) * (((((float)gas_res_adc)
	.loc 1 900 37
	flw	fa4,-28(s0)	# tmp127, var3
	lui	a5,%hi(.LC35)	# tmp129,
	flw	fa5,%lo(.LC35)(a5)	# tmp128,
	fmul.s	fa4,fa4,fa5	# _11, tmp127, tmp128
# BME680_driver_patched/bme680.c:900: 	calc_gas_res = 1.0f / (float)(var3 * (0.000000125f) * (float)(1 << gas_range) * (((((float)gas_res_adc)
	.loc 1 900 66
	lbu	a5,-163(s0)	# _12, gas_range
	li	a4,1		# tmp130,
	sll	a5,a4,a5	# _12, _13, tmp130
# BME680_driver_patched/bme680.c:900: 	calc_gas_res = 1.0f / (float)(var3 * (0.000000125f) * (float)(1 << gas_range) * (((((float)gas_res_adc)
	.loc 1 900 56
	fcvt.s.w	fa5,a5	# _14, _13
# BME680_driver_patched/bme680.c:900: 	calc_gas_res = 1.0f / (float)(var3 * (0.000000125f) * (float)(1 << gas_range) * (((((float)gas_res_adc)
	.loc 1 900 54
	fmul.s	fa4,fa4,fa5	# _15, _11, _14
# BME680_driver_patched/bme680.c:900: 	calc_gas_res = 1.0f / (float)(var3 * (0.000000125f) * (float)(1 << gas_range) * (((((float)gas_res_adc)
	.loc 1 900 86
	lhu	a5,-162(s0)	# tmp131, gas_res_adc
	fcvt.s.wu	fa3,a5	# _16, tmp131
# BME680_driver_patched/bme680.c:901: 		- 512.0f)/var2) + 1.0f));
	.loc 1 901 3
	lui	a5,%hi(.LC36)	# tmp133,
	flw	fa5,%lo(.LC36)(a5)	# tmp132,
	fsub.s	fa3,fa3,fa5	# _17, _16, tmp132
# BME680_driver_patched/bme680.c:901: 		- 512.0f)/var2) + 1.0f));
	.loc 1 901 12
	flw	fa5,-24(s0)	# tmp134, var2
	fdiv.s	fa3,fa3,fa5	# _18, _17, tmp134
# BME680_driver_patched/bme680.c:901: 		- 512.0f)/var2) + 1.0f));
	.loc 1 901 19
	lui	a5,%hi(.LC23)	# tmp136,
	flw	fa5,%lo(.LC23)(a5)	# tmp135,
	fadd.s	fa5,fa3,fa5	# _19, _18, tmp135
# BME680_driver_patched/bme680.c:900: 	calc_gas_res = 1.0f / (float)(var3 * (0.000000125f) * (float)(1 << gas_range) * (((((float)gas_res_adc)
	.loc 1 900 24
	fmul.s	fa5,fa4,fa5	# _20, _15, _19
# BME680_driver_patched/bme680.c:900: 	calc_gas_res = 1.0f / (float)(var3 * (0.000000125f) * (float)(1 << gas_range) * (((((float)gas_res_adc)
	.loc 1 900 15
	lui	a5,%hi(.LC23)	# tmp139,
	flw	fa4,%lo(.LC23)(a5)	# tmp138,
	fdiv.s	fa5,fa4,fa5	# tmp137, tmp138, _20
	fsw	fa5,-32(s0)	# tmp137, calc_gas_res
# BME680_driver_patched/bme680.c:903: 	return calc_gas_res;
	.loc 1 903 9
	flw	fa5,-32(s0)	# _34, calc_gas_res
# BME680_driver_patched/bme680.c:904: }
	.loc 1 904 1
	fmv.s	fa0,fa5	#, <retval>
	lw	ra,172(sp)		#,
.LCFI103:
	lw	s0,168(sp)		#,
.LCFI104:
	addi	sp,sp,176	#,,
.LCFI105:
	jr	ra		#
.LFE17:
	.size	calc_gas_resistance, .-calc_gas_resistance
	.align	2
	.globl	calc_heater_res
	.type	calc_heater_res, @function
calc_heater_res:
.LFB18:
	.loc 1 911 1
	addi	sp,sp,-64	#,,
.LCFI106:
	sw	s0,60(sp)	#,
.LCFI107:
	addi	s0,sp,64	#,,
.LCFI108:
	mv	a5,a0	# tmp103, temp
	sw	a1,-56(s0)	# dev, dev
	sh	a5,-50(s0)	# tmp104, temp
# BME680_driver_patched/bme680.c:912: 	float var1 = 0;
	.loc 1 912 8
	sw	zero,-20(s0)	#, var1
# BME680_driver_patched/bme680.c:913: 	float var2 = 0;
	.loc 1 913 8
	sw	zero,-24(s0)	#, var2
# BME680_driver_patched/bme680.c:914: 	float var3 = 0;
	.loc 1 914 8
	sw	zero,-28(s0)	#, var3
# BME680_driver_patched/bme680.c:915: 	float var4 = 0;
	.loc 1 915 8
	sw	zero,-32(s0)	#, var4
# BME680_driver_patched/bme680.c:916: 	float var5 = 0;
	.loc 1 916 8
	sw	zero,-36(s0)	#, var5
# BME680_driver_patched/bme680.c:917: 	float res_heat = 0;
	.loc 1 917 8
	sw	zero,-40(s0)	#, res_heat
# BME680_driver_patched/bme680.c:919: 	if (temp > 400) /* Cap temperature */
	.loc 1 919 5
	lhu	a4,-50(s0)	# tmp105, temp
	li	a5,400		# tmp106,
	bleu	a4,a5,.L100	#, tmp105, tmp106,
# BME680_driver_patched/bme680.c:920: 		temp = 400;
	.loc 1 920 8
	li	a5,400		# tmp107,
	sh	a5,-50(s0)	# tmp107, temp
.L100:
# BME680_driver_patched/bme680.c:922: 	var1 = (((float)dev->calib.par_gh1 / (16.0f)) + 49.0f);
	.loc 1 922 28
	lw	a5,-56(s0)		# tmp108, dev
	lb	a5,21(a5)		# _1, dev_40(D)->calib.par_gh1
# BME680_driver_patched/bme680.c:922: 	var1 = (((float)dev->calib.par_gh1 / (16.0f)) + 49.0f);
	.loc 1 922 11
	fcvt.s.w	fa4,a5	# _2, _1
# BME680_driver_patched/bme680.c:922: 	var1 = (((float)dev->calib.par_gh1 / (16.0f)) + 49.0f);
	.loc 1 922 37
	lui	a5,%hi(.LC12)	# tmp110,
	flw	fa5,%lo(.LC12)(a5)	# tmp109,
	fdiv.s	fa4,fa4,fa5	# _3, _2, tmp109
# BME680_driver_patched/bme680.c:922: 	var1 = (((float)dev->calib.par_gh1 / (16.0f)) + 49.0f);
	.loc 1 922 7
	lui	a5,%hi(.LC37)	# tmp113,
	flw	fa5,%lo(.LC37)(a5)	# tmp112,
	fadd.s	fa5,fa4,fa5	# tmp111, _3, tmp112
	fsw	fa5,-20(s0)	# tmp111, var1
# BME680_driver_patched/bme680.c:923: 	var2 = ((((float)dev->calib.par_gh2 / (32768.0f)) * (0.0005f)) + 0.00235f);
	.loc 1 923 29
	lw	a5,-56(s0)		# tmp114, dev
	lh	a5,22(a5)		# _4, dev_40(D)->calib.par_gh2
# BME680_driver_patched/bme680.c:923: 	var2 = ((((float)dev->calib.par_gh2 / (32768.0f)) * (0.0005f)) + 0.00235f);
	.loc 1 923 12
	fcvt.s.w	fa4,a5	# _5, _4
# BME680_driver_patched/bme680.c:923: 	var2 = ((((float)dev->calib.par_gh2 / (32768.0f)) * (0.0005f)) + 0.00235f);
	.loc 1 923 38
	lui	a5,%hi(.LC22)	# tmp116,
	flw	fa5,%lo(.LC22)(a5)	# tmp115,
	fdiv.s	fa4,fa4,fa5	# _6, _5, tmp115
# BME680_driver_patched/bme680.c:923: 	var2 = ((((float)dev->calib.par_gh2 / (32768.0f)) * (0.0005f)) + 0.00235f);
	.loc 1 923 52
	lui	a5,%hi(.LC38)	# tmp118,
	flw	fa5,%lo(.LC38)(a5)	# tmp117,
	fmul.s	fa4,fa4,fa5	# _7, _6, tmp117
# BME680_driver_patched/bme680.c:923: 	var2 = ((((float)dev->calib.par_gh2 / (32768.0f)) * (0.0005f)) + 0.00235f);
	.loc 1 923 7
	lui	a5,%hi(.LC39)	# tmp121,
	flw	fa5,%lo(.LC39)(a5)	# tmp120,
	fadd.s	fa5,fa4,fa5	# tmp119, _7, tmp120
	fsw	fa5,-24(s0)	# tmp119, var2
# BME680_driver_patched/bme680.c:924: 	var3 = ((float)dev->calib.par_gh3 / (1024.0f));
	.loc 1 924 27
	lw	a5,-56(s0)		# tmp122, dev
	lb	a5,24(a5)		# _8, dev_40(D)->calib.par_gh3
# BME680_driver_patched/bme680.c:924: 	var3 = ((float)dev->calib.par_gh3 / (1024.0f));
	.loc 1 924 10
	fcvt.s.w	fa4,a5	# _9, _8
# BME680_driver_patched/bme680.c:924: 	var3 = ((float)dev->calib.par_gh3 / (1024.0f));
	.loc 1 924 7
	lui	a5,%hi(.LC8)	# tmp125,
	flw	fa5,%lo(.LC8)(a5)	# tmp124,
	fdiv.s	fa5,fa4,fa5	# tmp123, _9, tmp124
	fsw	fa5,-28(s0)	# tmp123, var3
# BME680_driver_patched/bme680.c:925: 	var4 = (var1 * (1.0f + (var2 * (float)temp)));
	.loc 1 925 33
	lhu	a5,-50(s0)	# tmp126, temp
	fcvt.s.wu	fa4,a5	# _10, tmp126
# BME680_driver_patched/bme680.c:925: 	var4 = (var1 * (1.0f + (var2 * (float)temp)));
	.loc 1 925 31
	flw	fa5,-24(s0)	# tmp127, var2
	fmul.s	fa4,fa4,fa5	# _11, _10, tmp127
# BME680_driver_patched/bme680.c:925: 	var4 = (var1 * (1.0f + (var2 * (float)temp)));
	.loc 1 925 23
	lui	a5,%hi(.LC23)	# tmp129,
	flw	fa5,%lo(.LC23)(a5)	# tmp128,
	fadd.s	fa5,fa4,fa5	# _12, _11, tmp128
# BME680_driver_patched/bme680.c:925: 	var4 = (var1 * (1.0f + (var2 * (float)temp)));
	.loc 1 925 7
	flw	fa4,-20(s0)	# tmp131, var1
	fmul.s	fa5,fa4,fa5	# tmp130, tmp131, _12
	fsw	fa5,-32(s0)	# tmp130, var4
# BME680_driver_patched/bme680.c:926: 	var5 = (var4 + (var3 * (float)dev->amb_temp));
	.loc 1 926 35
	lw	a5,-56(s0)		# tmp132, dev
	lb	a5,9(a5)		# _13, dev_40(D)->amb_temp
# BME680_driver_patched/bme680.c:926: 	var5 = (var4 + (var3 * (float)dev->amb_temp));
	.loc 1 926 25
	fcvt.s.w	fa4,a5	# _14, _13
# BME680_driver_patched/bme680.c:926: 	var5 = (var4 + (var3 * (float)dev->amb_temp));
	.loc 1 926 23
	flw	fa5,-28(s0)	# tmp133, var3
	fmul.s	fa5,fa4,fa5	# _15, _14, tmp133
# BME680_driver_patched/bme680.c:926: 	var5 = (var4 + (var3 * (float)dev->amb_temp));
	.loc 1 926 7
	flw	fa4,-32(s0)	# tmp135, var4
	fadd.s	fa5,fa4,fa5	# tmp134, tmp135, _15
	fsw	fa5,-36(s0)	# tmp134, var5
# BME680_driver_patched/bme680.c:927: 	res_heat = (uint8_t)(3.4f * ((var5 * (4 / (4 + (float)dev->calib.res_heat_range)) *
	.loc 1 927 66
	lw	a5,-56(s0)		# tmp136, dev
	lbu	a5,56(a5)	# _16, dev_40(D)->calib.res_heat_range
# BME680_driver_patched/bme680.c:927: 	res_heat = (uint8_t)(3.4f * ((var5 * (4 / (4 + (float)dev->calib.res_heat_range)) *
	.loc 1 927 49
	fcvt.s.wu	fa4,a5	# _17, _16
# BME680_driver_patched/bme680.c:927: 	res_heat = (uint8_t)(3.4f * ((var5 * (4 / (4 + (float)dev->calib.res_heat_range)) *
	.loc 1 927 47
	lui	a5,%hi(.LC19)	# tmp138,
	flw	fa5,%lo(.LC19)(a5)	# tmp137,
	fadd.s	fa5,fa4,fa5	# _18, _17, tmp137
# BME680_driver_patched/bme680.c:927: 	res_heat = (uint8_t)(3.4f * ((var5 * (4 / (4 + (float)dev->calib.res_heat_range)) *
	.loc 1 927 42
	lui	a5,%hi(.LC19)	# tmp140,
	flw	fa4,%lo(.LC19)(a5)	# tmp139,
	fdiv.s	fa4,fa4,fa5	# _19, tmp139, _18
# BME680_driver_patched/bme680.c:927: 	res_heat = (uint8_t)(3.4f * ((var5 * (4 / (4 + (float)dev->calib.res_heat_range)) *
	.loc 1 927 37
	flw	fa5,-36(s0)	# tmp141, var5
	fmul.s	fa4,fa4,fa5	# _20, _19, tmp141
# BME680_driver_patched/bme680.c:928: 		(1/(1 + ((float) dev->calib.res_heat_val * 0.002f)))) - 25));
	.loc 1 928 30
	lw	a5,-56(s0)		# tmp142, dev
	lb	a5,57(a5)		# _21, dev_40(D)->calib.res_heat_val
# BME680_driver_patched/bme680.c:928: 		(1/(1 + ((float) dev->calib.res_heat_val * 0.002f)))) - 25));
	.loc 1 928 12
	fcvt.s.w	fa3,a5	# _22, _21
# BME680_driver_patched/bme680.c:928: 		(1/(1 + ((float) dev->calib.res_heat_val * 0.002f)))) - 25));
	.loc 1 928 44
	lui	a5,%hi(.LC40)	# tmp144,
	flw	fa5,%lo(.LC40)(a5)	# tmp143,
	fmul.s	fa3,fa3,fa5	# _23, _22, tmp143
# BME680_driver_patched/bme680.c:928: 		(1/(1 + ((float) dev->calib.res_heat_val * 0.002f)))) - 25));
	.loc 1 928 9
	lui	a5,%hi(.LC23)	# tmp146,
	flw	fa5,%lo(.LC23)(a5)	# tmp145,
	fadd.s	fa5,fa3,fa5	# _24, _23, tmp145
# BME680_driver_patched/bme680.c:928: 		(1/(1 + ((float) dev->calib.res_heat_val * 0.002f)))) - 25));
	.loc 1 928 5
	lui	a5,%hi(.LC23)	# tmp148,
	flw	fa3,%lo(.LC23)(a5)	# tmp147,
	fdiv.s	fa5,fa3,fa5	# _25, tmp147, _24
# BME680_driver_patched/bme680.c:927: 	res_heat = (uint8_t)(3.4f * ((var5 * (4 / (4 + (float)dev->calib.res_heat_range)) *
	.loc 1 927 84
	fmul.s	fa4,fa4,fa5	# _26, _20, _25
# BME680_driver_patched/bme680.c:928: 		(1/(1 + ((float) dev->calib.res_heat_val * 0.002f)))) - 25));
	.loc 1 928 57
	lui	a5,%hi(.LC41)	# tmp150,
	flw	fa5,%lo(.LC41)(a5)	# tmp149,
	fsub.s	fa4,fa4,fa5	# _27, _26, tmp149
# BME680_driver_patched/bme680.c:927: 	res_heat = (uint8_t)(3.4f * ((var5 * (4 / (4 + (float)dev->calib.res_heat_range)) *
	.loc 1 927 28
	lui	a5,%hi(.LC42)	# tmp152,
	flw	fa5,%lo(.LC42)(a5)	# tmp151,
	fmul.s	fa5,fa4,fa5	# _28, _27, tmp151
# BME680_driver_patched/bme680.c:927: 	res_heat = (uint8_t)(3.4f * ((var5 * (4 / (4 + (float)dev->calib.res_heat_range)) *
	.loc 1 927 13
	fcvt.wu.s a5,fa5,rtz	# tmp154, _28
	andi	a5,a5,0xff	# _29, tmp153
# BME680_driver_patched/bme680.c:927: 	res_heat = (uint8_t)(3.4f * ((var5 * (4 / (4 + (float)dev->calib.res_heat_range)) *
	.loc 1 927 11
	fcvt.s.wu	fa5,a5	# tmp155, _29
	fsw	fa5,-40(s0)	# tmp155, res_heat
# BME680_driver_patched/bme680.c:930: 	return res_heat;
	.loc 1 930 9
	flw	fa5,-40(s0)	# _47, res_heat
# BME680_driver_patched/bme680.c:931: }
	.loc 1 931 1
	fmv.s	fa0,fa5	#, <retval>
	lw	s0,60(sp)		#,
.LCFI109:
	addi	sp,sp,64	#,,
.LCFI110:
	jr	ra		#
.LFE18:
	.size	calc_heater_res, .-calc_heater_res
	.align	2
	.globl	calc_heater_dur
	.type	calc_heater_dur, @function
calc_heater_dur:
.LFB19:
	.loc 1 939 1
	addi	sp,sp,-48	#,,
.LCFI111:
	sw	s0,44(sp)	#,
.LCFI112:
	addi	s0,sp,48	#,,
.LCFI113:
	mv	a5,a0	# tmp76, dur
	sh	a5,-34(s0)	# tmp77, dur
# BME680_driver_patched/bme680.c:940: 	uint8_t factor = 0;
	.loc 1 940 10
	sb	zero,-17(s0)	#, factor
# BME680_driver_patched/bme680.c:943: 	if (dur >= 0xfc0) {
	.loc 1 943 5
	lhu	a4,-34(s0)	# tmp78, dur
	li	a5,4096		# tmp80,
	addi	a5,a5,-65	#, tmp79, tmp80
	bleu	a4,a5,.L105	#, tmp78, tmp79,
# BME680_driver_patched/bme680.c:944: 		durval = 0xff; /* Max duration*/
	.loc 1 944 10
	li	a5,-1		# tmp81,
	sb	a5,-18(s0)	# tmp81, durval
	j	.L104		#
.L106:
# BME680_driver_patched/bme680.c:947: 			dur = dur / 4;
	.loc 1 947 8
	lhu	a5,-34(s0)	# tmp83, dur
	srli	a5,a5,2	#, tmp82, tmp83
	sh	a5,-34(s0)	# tmp82, dur
# BME680_driver_patched/bme680.c:948: 			factor += 1;
	.loc 1 948 11
	lbu	a5,-17(s0)	# tmp84, factor
	addi	a5,a5,1	#, tmp85, tmp84
	sb	a5,-17(s0)	# tmp85, factor
.L105:
# BME680_driver_patched/bme680.c:946: 		while (dur > 0x3F) {
	.loc 1 946 9
	lhu	a4,-34(s0)	# tmp86, dur
	li	a5,63		# tmp87,
	bgtu	a4,a5,.L106	#, tmp86, tmp87,
# BME680_driver_patched/bme680.c:950: 		durval = (uint8_t) (dur + (factor * 64));
	.loc 1 950 12
	lhu	a5,-34(s0)	# tmp88, dur
	andi	a4,a5,0xff	# _1, tmp88
	lbu	a5,-17(s0)	# tmp89, factor
	slli	a5,a5,6	#, tmp90, tmp89
	andi	a5,a5,0xff	# _2, tmp90
# BME680_driver_patched/bme680.c:950: 		durval = (uint8_t) (dur + (factor * 64));
	.loc 1 950 10
	add	a5,a4,a5	# _2, tmp91, _1
	sb	a5,-18(s0)	# tmp91, durval
.L104:
# BME680_driver_patched/bme680.c:953: 	return durval;
	.loc 1 953 9
	lbu	a5,-18(s0)	# _12, durval
# BME680_driver_patched/bme680.c:954: }
	.loc 1 954 1
	mv	a0,a5	#, <retval>
	lw	s0,44(sp)		#,
.LCFI114:
	addi	sp,sp,48	#,,
.LCFI115:
	jr	ra		#
.LFE19:
	.size	calc_heater_dur, .-calc_heater_dur
	.align	2
	.globl	read_field_data
	.type	read_field_data, @function
read_field_data:
.LFB20:
	.loc 1 960 1
	addi	sp,sp,-64	#,,
.LCFI116:
	sw	ra,60(sp)	#,
	sw	s0,56(sp)	#,
.LCFI117:
	addi	s0,sp,64	#,,
.LCFI118:
	sw	a0,-52(s0)	# data, data
	sw	a1,-56(s0)	# dev, dev
# BME680_driver_patched/bme680.c:962: 	uint8_t buff[BME680_FIELD_LENGTH] = { 0 };
	.loc 1 962 10
	sw	zero,-48(s0)	#, buff
	sw	zero,-44(s0)	#, buff
	sw	zero,-40(s0)	#, buff
	sh	zero,-36(s0)	#, buff
	sb	zero,-34(s0)	#, buff
# BME680_driver_patched/bme680.c:968: 	uint8_t tries = 10;
	.loc 1 968 10
	li	a5,10		# tmp137,
	sb	a5,-18(s0)	# tmp137, tries
# BME680_driver_patched/bme680.c:971: 	rslt = null_ptr_check(dev);
	.loc 1 971 9
	lw	a0,-56(s0)		#, dev
	call	null_ptr_check		#
	mv	a5,a0	# tmp138,
	sb	a5,-17(s0)	# tmp138, rslt
.L112:
# BME680_driver_patched/bme680.c:973: 		if (rslt == BME680_OK) {
	.loc 1 973 6
	lb	a5,-17(s0)		# tmp139, rslt
	bnez	a5,.L109	#, tmp139,
# BME680_driver_patched/bme680.c:974: 			rslt = bme680_get_regs(((uint8_t) (BME680_FIELD0_ADDR)), buff, (uint16_t) BME680_FIELD_LENGTH,
	.loc 1 974 11
	addi	a5,s0,-48	#, tmp140,
	lw	a3,-56(s0)		#, dev
	li	a2,15		#,
	mv	a1,a5	#, tmp140
	li	a0,29		#,
	call	bme680_get_regs		#
	mv	a5,a0	# tmp141,
	sb	a5,-17(s0)	# tmp141, rslt
# BME680_driver_patched/bme680.c:977: 			data->status = buff[0] & BME680_NEW_DATA_MSK;
	.loc 1 977 23
	lbu	a5,-48(s0)	# _1, buff
# BME680_driver_patched/bme680.c:977: 			data->status = buff[0] & BME680_NEW_DATA_MSK;
	.loc 1 977 27
	andi	a5,a5,-128	#, tmp142, _1
	andi	a4,a5,0xff	# _2, tmp142
# BME680_driver_patched/bme680.c:977: 			data->status = buff[0] & BME680_NEW_DATA_MSK;
	.loc 1 977 17
	lw	a5,-52(s0)		# tmp143, data
	sb	a4,0(a5)	# _2, data_81(D)->status
# BME680_driver_patched/bme680.c:978: 			data->gas_index = buff[0] & BME680_GAS_INDEX_MSK;
	.loc 1 978 26
	lbu	a5,-48(s0)	# _3, buff
# BME680_driver_patched/bme680.c:978: 			data->gas_index = buff[0] & BME680_GAS_INDEX_MSK;
	.loc 1 978 30
	andi	a5,a5,15	#, tmp144, _3
	andi	a4,a5,0xff	# _4, tmp144
# BME680_driver_patched/bme680.c:978: 			data->gas_index = buff[0] & BME680_GAS_INDEX_MSK;
	.loc 1 978 20
	lw	a5,-52(s0)		# tmp145, data
	sb	a4,1(a5)	# _4, data_81(D)->gas_index
# BME680_driver_patched/bme680.c:979: 			data->meas_index = buff[1];
	.loc 1 979 27
	lbu	a4,-47(s0)	# _5, buff
# BME680_driver_patched/bme680.c:979: 			data->meas_index = buff[1];
	.loc 1 979 21
	lw	a5,-52(s0)		# tmp146, data
	sb	a4,2(a5)	# _5, data_81(D)->meas_index
# BME680_driver_patched/bme680.c:982: 			adc_pres = (uint32_t) (((uint32_t) buff[2] * 4096) | ((uint32_t) buff[3] * 16)
	.loc 1 982 43
	lbu	a5,-46(s0)	# _6, buff
# BME680_driver_patched/bme680.c:982: 			adc_pres = (uint32_t) (((uint32_t) buff[2] * 4096) | ((uint32_t) buff[3] * 16)
	.loc 1 982 47
	slli	a4,a5,12	#, _8, _7
# BME680_driver_patched/bme680.c:982: 			adc_pres = (uint32_t) (((uint32_t) buff[2] * 4096) | ((uint32_t) buff[3] * 16)
	.loc 1 982 73
	lbu	a5,-45(s0)	# _9, buff
# BME680_driver_patched/bme680.c:982: 			adc_pres = (uint32_t) (((uint32_t) buff[2] * 4096) | ((uint32_t) buff[3] * 16)
	.loc 1 982 77
	slli	a5,a5,4	#, _11, _10
# BME680_driver_patched/bme680.c:982: 			adc_pres = (uint32_t) (((uint32_t) buff[2] * 4096) | ((uint32_t) buff[3] * 16)
	.loc 1 982 55
	or	a5,a4,a5	# _11, _12, _8
# BME680_driver_patched/bme680.c:983: 				| ((uint32_t) buff[4] / 16));
	.loc 1 983 23
	lbu	a4,-44(s0)	# _13, buff
# BME680_driver_patched/bme680.c:983: 				| ((uint32_t) buff[4] / 16));
	.loc 1 983 27
	srli	a4,a4,4	#, tmp147, _13
	andi	a4,a4,0xff	# _14, tmp147
# BME680_driver_patched/bme680.c:982: 			adc_pres = (uint32_t) (((uint32_t) buff[2] * 4096) | ((uint32_t) buff[3] * 16)
	.loc 1 982 13
	or	a5,a5,a4	# _15, tmp148, _12
	sw	a5,-24(s0)	# tmp148, adc_pres
# BME680_driver_patched/bme680.c:984: 			adc_temp = (uint32_t) (((uint32_t) buff[5] * 4096) | ((uint32_t) buff[6] * 16)
	.loc 1 984 43
	lbu	a5,-43(s0)	# _16, buff
# BME680_driver_patched/bme680.c:984: 			adc_temp = (uint32_t) (((uint32_t) buff[5] * 4096) | ((uint32_t) buff[6] * 16)
	.loc 1 984 47
	slli	a4,a5,12	#, _18, _17
# BME680_driver_patched/bme680.c:984: 			adc_temp = (uint32_t) (((uint32_t) buff[5] * 4096) | ((uint32_t) buff[6] * 16)
	.loc 1 984 73
	lbu	a5,-42(s0)	# _19, buff
# BME680_driver_patched/bme680.c:984: 			adc_temp = (uint32_t) (((uint32_t) buff[5] * 4096) | ((uint32_t) buff[6] * 16)
	.loc 1 984 77
	slli	a5,a5,4	#, _21, _20
# BME680_driver_patched/bme680.c:984: 			adc_temp = (uint32_t) (((uint32_t) buff[5] * 4096) | ((uint32_t) buff[6] * 16)
	.loc 1 984 55
	or	a5,a4,a5	# _21, _22, _18
# BME680_driver_patched/bme680.c:985: 				| ((uint32_t) buff[7] / 16));
	.loc 1 985 23
	lbu	a4,-41(s0)	# _23, buff
# BME680_driver_patched/bme680.c:985: 				| ((uint32_t) buff[7] / 16));
	.loc 1 985 27
	srli	a4,a4,4	#, tmp149, _23
	andi	a4,a4,0xff	# _24, tmp149
# BME680_driver_patched/bme680.c:984: 			adc_temp = (uint32_t) (((uint32_t) buff[5] * 4096) | ((uint32_t) buff[6] * 16)
	.loc 1 984 13
	or	a5,a5,a4	# _25, tmp150, _22
	sw	a5,-28(s0)	# tmp150, adc_temp
# BME680_driver_patched/bme680.c:986: 			adc_hum = (uint16_t) (((uint32_t) buff[8] * 256) | (uint32_t) buff[9]);
	.loc 1 986 42
	lbu	a5,-40(s0)	# _26, buff
	slli	a5,a5,16	#, _27, _26
	srli	a5,a5,16	#, _27, _27
# BME680_driver_patched/bme680.c:986: 			adc_hum = (uint16_t) (((uint32_t) buff[8] * 256) | (uint32_t) buff[9]);
	.loc 1 986 46
	slli	a5,a5,8	#, tmp151, _27
	slli	a4,a5,16	#, _28, tmp151
	srli	a4,a4,16	#, _28, _28
# BME680_driver_patched/bme680.c:986: 			adc_hum = (uint16_t) (((uint32_t) buff[8] * 256) | (uint32_t) buff[9]);
	.loc 1 986 70
	lbu	a5,-39(s0)	# _29, buff
	slli	a5,a5,16	#, _30, _29
	srli	a5,a5,16	#, _30, _30
# BME680_driver_patched/bme680.c:986: 			adc_hum = (uint16_t) (((uint32_t) buff[8] * 256) | (uint32_t) buff[9]);
	.loc 1 986 12
	or	a5,a4,a5	# _30, tmp152, _28
	sh	a5,-30(s0)	# tmp152, adc_hum
# BME680_driver_patched/bme680.c:987: 			adc_gas_res = (uint16_t) ((uint32_t) buff[13] * 4 | (((uint32_t) buff[14]) / 64));
	.loc 1 987 45
	lbu	a5,-35(s0)	# _31, buff
	slli	a5,a5,16	#, _32, _31
	srli	a5,a5,16	#, _32, _32
# BME680_driver_patched/bme680.c:987: 			adc_gas_res = (uint16_t) ((uint32_t) buff[13] * 4 | (((uint32_t) buff[14]) / 64));
	.loc 1 987 50
	slli	a5,a5,2	#, tmp153, _32
	slli	a4,a5,16	#, _33, tmp153
	srli	a4,a4,16	#, _33, _33
# BME680_driver_patched/bme680.c:987: 			adc_gas_res = (uint16_t) ((uint32_t) buff[13] * 4 | (((uint32_t) buff[14]) / 64));
	.loc 1 987 73
	lbu	a5,-34(s0)	# _34, buff
# BME680_driver_patched/bme680.c:987: 			adc_gas_res = (uint16_t) ((uint32_t) buff[13] * 4 | (((uint32_t) buff[14]) / 64));
	.loc 1 987 18
	srli	a5,a5,6	#, tmp154, _34
	andi	a5,a5,0xff	# _35, tmp154
	slli	a5,a5,16	#, _36, _35
	srli	a5,a5,16	#, _36, _36
# BME680_driver_patched/bme680.c:987: 			adc_gas_res = (uint16_t) ((uint32_t) buff[13] * 4 | (((uint32_t) buff[14]) / 64));
	.loc 1 987 16
	or	a5,a4,a5	# _36, tmp155, _33
	sh	a5,-32(s0)	# tmp155, adc_gas_res
# BME680_driver_patched/bme680.c:988: 			gas_range = buff[14] & BME680_GAS_RANGE_MSK;
	.loc 1 988 20
	lbu	a5,-34(s0)	# _37, buff
# BME680_driver_patched/bme680.c:988: 			gas_range = buff[14] & BME680_GAS_RANGE_MSK;
	.loc 1 988 14
	andi	a5,a5,15	#, tmp156, _37
	sb	a5,-33(s0)	# tmp156, gas_range
# BME680_driver_patched/bme680.c:990: 			data->status |= buff[14] & BME680_GASM_VALID_MSK;
	.loc 1 990 17
	lw	a5,-52(s0)		# tmp157, data
	lbu	a5,0(a5)	# _38, data_81(D)->status
	slli	a4,a5,24	#, _39, _38
	srai	a4,a4,24	#, _39, _39
# BME680_driver_patched/bme680.c:990: 			data->status |= buff[14] & BME680_GASM_VALID_MSK;
	.loc 1 990 24
	lbu	a5,-34(s0)	# _40, buff
	slli	a5,a5,24	#, _41, _40
	srai	a5,a5,24	#, _41, _41
# BME680_driver_patched/bme680.c:990: 			data->status |= buff[14] & BME680_GASM_VALID_MSK;
	.loc 1 990 29
	andi	a5,a5,32	#, tmp158, _41
	slli	a5,a5,24	#, _42, tmp158
	srai	a5,a5,24	#, _42, _42
# BME680_driver_patched/bme680.c:990: 			data->status |= buff[14] & BME680_GASM_VALID_MSK;
	.loc 1 990 17
	or	a5,a4,a5	# _42, tmp159, _39
	slli	a5,a5,24	#, _43, tmp159
	srai	a5,a5,24	#, _43, _43
	andi	a4,a5,0xff	# _44, _43
	lw	a5,-52(s0)		# tmp160, data
	sb	a4,0(a5)	# _44, data_81(D)->status
# BME680_driver_patched/bme680.c:991: 			data->status |= buff[14] & BME680_HEAT_STAB_MSK;
	.loc 1 991 17
	lw	a5,-52(s0)		# tmp161, data
	lbu	a5,0(a5)	# _45, data_81(D)->status
	slli	a4,a5,24	#, _46, _45
	srai	a4,a4,24	#, _46, _46
# BME680_driver_patched/bme680.c:991: 			data->status |= buff[14] & BME680_HEAT_STAB_MSK;
	.loc 1 991 24
	lbu	a5,-34(s0)	# _47, buff
	slli	a5,a5,24	#, _48, _47
	srai	a5,a5,24	#, _48, _48
# BME680_driver_patched/bme680.c:991: 			data->status |= buff[14] & BME680_HEAT_STAB_MSK;
	.loc 1 991 29
	andi	a5,a5,16	#, tmp162, _48
	slli	a5,a5,24	#, _49, tmp162
	srai	a5,a5,24	#, _49, _49
# BME680_driver_patched/bme680.c:991: 			data->status |= buff[14] & BME680_HEAT_STAB_MSK;
	.loc 1 991 17
	or	a5,a4,a5	# _49, tmp163, _46
	slli	a5,a5,24	#, _50, tmp163
	srai	a5,a5,24	#, _50, _50
	andi	a4,a5,0xff	# _51, _50
	lw	a5,-52(s0)		# tmp164, data
	sb	a4,0(a5)	# _51, data_81(D)->status
# BME680_driver_patched/bme680.c:993: 			if (data->status & BME680_NEW_DATA_MSK) {
	.loc 1 993 12
	lw	a5,-52(s0)		# tmp165, data
	lbu	a5,0(a5)	# _52, data_81(D)->status
# BME680_driver_patched/bme680.c:993: 			if (data->status & BME680_NEW_DATA_MSK) {
	.loc 1 993 8
	slli	a5,a5,24	#, _53, _52
	srai	a5,a5,24	#, _53, _53
# BME680_driver_patched/bme680.c:993: 			if (data->status & BME680_NEW_DATA_MSK) {
	.loc 1 993 7
	bgez	a5,.L110	#, _53,
# BME680_driver_patched/bme680.c:994: 				data->temperature = calc_temperature(adc_temp, dev);
	.loc 1 994 25
	lw	a1,-56(s0)		#, dev
	lw	a0,-28(s0)		#, adc_temp
	call	calc_temperature		#
	fmv.s	fa5,fa0	# _54,
# BME680_driver_patched/bme680.c:994: 				data->temperature = calc_temperature(adc_temp, dev);
	.loc 1 994 23
	fcvt.w.s a5,fa5,rtz	# tmp167, _54
	slli	a4,a5,16	#, _55, tmp166
	srai	a4,a4,16	#, _55, _55
	lw	a5,-52(s0)		# tmp168, data
	sh	a4,4(a5)	# _55, data_81(D)->temperature
# BME680_driver_patched/bme680.c:995: 				data->pressure = calc_pressure(adc_pres, dev);
	.loc 1 995 22
	lw	a1,-56(s0)		#, dev
	lw	a0,-24(s0)		#, adc_pres
	call	calc_pressure		#
	fmv.s	fa5,fa0	# _56,
# BME680_driver_patched/bme680.c:995: 				data->pressure = calc_pressure(adc_pres, dev);
	.loc 1 995 20
	fcvt.wu.s a4,fa5,rtz	# _57, _56
	lw	a5,-52(s0)		# tmp169, data
	sw	a4,8(a5)	# _57, data_81(D)->pressure
# BME680_driver_patched/bme680.c:996: 				data->humidity = calc_humidity(adc_hum, dev);
	.loc 1 996 22
	lhu	a5,-30(s0)	# tmp170, adc_hum
	lw	a1,-56(s0)		#, dev
	mv	a0,a5	#, tmp170
	call	calc_humidity		#
	fmv.s	fa5,fa0	# _58,
# BME680_driver_patched/bme680.c:996: 				data->humidity = calc_humidity(adc_hum, dev);
	.loc 1 996 20
	fcvt.wu.s a4,fa5,rtz	# _59, _58
	lw	a5,-52(s0)		# tmp171, data
	sw	a4,12(a5)	# _59, data_81(D)->humidity
# BME680_driver_patched/bme680.c:997: 				data->gas_resistance = calc_gas_resistance(adc_gas_res, gas_range, dev);
	.loc 1 997 28
	lbu	a4,-33(s0)	# tmp172, gas_range
	lhu	a5,-32(s0)	# tmp173, adc_gas_res
	lw	a2,-56(s0)		#, dev
	mv	a1,a4	#, tmp172
	mv	a0,a5	#, tmp173
	call	calc_gas_resistance		#
	fmv.s	fa5,fa0	# _60,
# BME680_driver_patched/bme680.c:997: 				data->gas_resistance = calc_gas_resistance(adc_gas_res, gas_range, dev);
	.loc 1 997 26
	fcvt.wu.s a4,fa5,rtz	# _61, _60
	lw	a5,-52(s0)		# tmp174, data
	sw	a4,16(a5)	# _61, data_81(D)->gas_resistance
# BME680_driver_patched/bme680.c:998: 				break;
	.loc 1 998 5
	j	.L111		#
.L110:
# BME680_driver_patched/bme680.c:1001: 			dev->delay_ms(BME680_POLL_PERIOD_MS);
	.loc 1 1001 7
	lw	a5,-56(s0)		# tmp175, dev
	lw	a5,84(a5)		# _62, dev_76(D)->delay_ms
# BME680_driver_patched/bme680.c:1001: 			dev->delay_ms(BME680_POLL_PERIOD_MS);
	.loc 1 1001 4
	li	a0,10		#,
	jalr	a5		# _62
.LVL5:
.L109:
# BME680_driver_patched/bme680.c:1003: 		tries--;
	.loc 1 1003 8
	lbu	a5,-18(s0)	# tries.37_63, tries
	addi	a5,a5,-1	#, tmp176, tries.37_63
	sb	a5,-18(s0)	# tmp176, tries
# BME680_driver_patched/bme680.c:1004: 	} while (tries);
	.loc 1 1004 2
	lbu	a5,-18(s0)	# tmp177, tries
	bnez	a5,.L112	#, tmp177,
.L111:
# BME680_driver_patched/bme680.c:1006: 	if (!tries)
	.loc 1 1006 5
	lbu	a5,-18(s0)	# tmp178, tries
	bnez	a5,.L113	#, tmp178,
# BME680_driver_patched/bme680.c:1007: 		rslt = BME680_W_NO_NEW_DATA;
	.loc 1 1007 8
	li	a5,2		# tmp179,
	sb	a5,-17(s0)	# tmp179, rslt
.L113:
# BME680_driver_patched/bme680.c:1009: 	return rslt;
	.loc 1 1009 9
	lb	a5,-17(s0)		# _103, rslt
# BME680_driver_patched/bme680.c:1010: }
	.loc 1 1010 1
	mv	a0,a5	#, <retval>
	lw	ra,60(sp)		#,
.LCFI119:
	lw	s0,56(sp)		#,
.LCFI120:
	addi	sp,sp,64	#,,
.LCFI121:
	jr	ra		#
.LFE20:
	.size	read_field_data, .-read_field_data
	.align	2
	.globl	set_mem_page
	.type	set_mem_page, @function
set_mem_page:
.LFB21:
	.loc 1 1016 1
	addi	sp,sp,-48	#,,
.LCFI122:
	sw	ra,44(sp)	#,
	sw	s0,40(sp)	#,
.LCFI123:
	addi	s0,sp,48	#,,
.LCFI124:
	mv	a5,a0	# tmp93, reg_addr
	sw	a1,-40(s0)	# dev, dev
	sb	a5,-33(s0)	# tmp94, reg_addr
# BME680_driver_patched/bme680.c:1022: 	rslt = null_ptr_check(dev);
	.loc 1 1022 9
	lw	a0,-40(s0)		#, dev
	call	null_ptr_check		#
	mv	a5,a0	# tmp95,
	sb	a5,-17(s0)	# tmp95, rslt
# BME680_driver_patched/bme680.c:1023: 	if (rslt == BME680_OK) {
	.loc 1 1023 5
	lb	a5,-17(s0)		# tmp96, rslt
	bnez	a5,.L116	#, tmp96,
# BME680_driver_patched/bme680.c:1024: 		if (reg_addr > 0x7f)
	.loc 1 1024 16
	lb	a5,-33(s0)		# reg_addr.38_1, reg_addr
# BME680_driver_patched/bme680.c:1024: 		if (reg_addr > 0x7f)
	.loc 1 1024 6
	bgez	a5,.L117	#, reg_addr.38_1,
# BME680_driver_patched/bme680.c:1025: 			mem_page = BME680_MEM_PAGE1;
	.loc 1 1025 13
	sb	zero,-18(s0)	#, mem_page
	j	.L118		#
.L117:
# BME680_driver_patched/bme680.c:1027: 			mem_page = BME680_MEM_PAGE0;
	.loc 1 1027 13
	li	a5,16		# tmp97,
	sb	a5,-18(s0)	# tmp97, mem_page
.L118:
# BME680_driver_patched/bme680.c:1029: 		if (mem_page != dev->mem_page) {
	.loc 1 1029 22
	lw	a5,-40(s0)		# tmp98, dev
	lbu	a5,8(a5)	# _2, dev_25(D)->mem_page
# BME680_driver_patched/bme680.c:1029: 		if (mem_page != dev->mem_page) {
	.loc 1 1029 6
	lbu	a4,-18(s0)	# tmp99, mem_page
	beq	a4,a5,.L116	#, tmp99, _2,
# BME680_driver_patched/bme680.c:1030: 			dev->mem_page = mem_page;
	.loc 1 1030 18
	lw	a5,-40(s0)		# tmp100, dev
	lbu	a4,-18(s0)	# tmp101, mem_page
	sb	a4,8(a5)	# tmp101, dev_25(D)->mem_page
# BME680_driver_patched/bme680.c:1032: 			dev->com_rslt = dev->read(dev->dev_id, BME680_MEM_PAGE_ADDR | BME680_SPI_RD_MSK, &reg, 1);
	.loc 1 1032 23
	lw	a5,-40(s0)		# tmp102, dev
	lw	a6,76(a5)		# _3, dev_25(D)->read
# BME680_driver_patched/bme680.c:1032: 			dev->com_rslt = dev->read(dev->dev_id, BME680_MEM_PAGE_ADDR | BME680_SPI_RD_MSK, &reg, 1);
	.loc 1 1032 20
	lw	a5,-40(s0)		# tmp103, dev
	lbu	a5,1(a5)	# _4, dev_25(D)->dev_id
	addi	a4,s0,-19	#, tmp104,
	li	a3,1		#,
	mv	a2,a4	#, tmp104
	li	a1,243		#,
	mv	a0,a5	#, _4
	jalr	a6		# _3
.LVL6:
	mv	a5,a0	# tmp105,
	mv	a4,a5	# _5, tmp105
# BME680_driver_patched/bme680.c:1032: 			dev->com_rslt = dev->read(dev->dev_id, BME680_MEM_PAGE_ADDR | BME680_SPI_RD_MSK, &reg, 1);
	.loc 1 1032 18
	lw	a5,-40(s0)		# tmp106, dev
	sb	a4,88(a5)	# _5, dev_25(D)->com_rslt
# BME680_driver_patched/bme680.c:1033: 			if (dev->com_rslt != 0)
	.loc 1 1033 11
	lw	a5,-40(s0)		# tmp107, dev
	lb	a5,88(a5)		# _6, dev_25(D)->com_rslt
# BME680_driver_patched/bme680.c:1033: 			if (dev->com_rslt != 0)
	.loc 1 1033 7
	beqz	a5,.L119	#, _6,
# BME680_driver_patched/bme680.c:1034: 				rslt = BME680_E_COM_FAIL;
	.loc 1 1034 10
	li	a5,-2		# tmp108,
	sb	a5,-17(s0)	# tmp108, rslt
.L119:
# BME680_driver_patched/bme680.c:1036: 			if (rslt == BME680_OK) {
	.loc 1 1036 7
	lb	a5,-17(s0)		# tmp109, rslt
	bnez	a5,.L116	#, tmp109,
# BME680_driver_patched/bme680.c:1037: 				reg = reg & (~BME680_MEM_PAGE_MSK);
	.loc 1 1037 15
	lbu	a5,-19(s0)	# reg.39_7, reg
	andi	a5,a5,-17	#, tmp110, reg.39_7
	andi	a5,a5,0xff	# _8, tmp110
# BME680_driver_patched/bme680.c:1037: 				reg = reg & (~BME680_MEM_PAGE_MSK);
	.loc 1 1037 9
	sb	a5,-19(s0)	# _8, reg
# BME680_driver_patched/bme680.c:1038: 				reg = reg | (dev->mem_page & BME680_MEM_PAGE_MSK);
	.loc 1 1038 21
	lw	a5,-40(s0)		# tmp111, dev
	lbu	a5,8(a5)	# _9, dev_25(D)->mem_page
	slli	a5,a5,24	#, _10, _9
	srai	a5,a5,24	#, _10, _10
# BME680_driver_patched/bme680.c:1038: 				reg = reg | (dev->mem_page & BME680_MEM_PAGE_MSK);
	.loc 1 1038 32
	andi	a5,a5,16	#, tmp112, _10
	slli	a4,a5,24	#, _11, tmp112
	srai	a4,a4,24	#, _11, _11
# BME680_driver_patched/bme680.c:1038: 				reg = reg | (dev->mem_page & BME680_MEM_PAGE_MSK);
	.loc 1 1038 15
	lbu	a5,-19(s0)	# reg.40_12, reg
	slli	a5,a5,24	#, reg.41_13, reg.40_12
	srai	a5,a5,24	#, reg.41_13, reg.41_13
	or	a5,a4,a5	# reg.41_13, tmp113, _11
	slli	a5,a5,24	#, _14, tmp113
	srai	a5,a5,24	#, _14, _14
	andi	a5,a5,0xff	# _15, _14
# BME680_driver_patched/bme680.c:1038: 				reg = reg | (dev->mem_page & BME680_MEM_PAGE_MSK);
	.loc 1 1038 9
	sb	a5,-19(s0)	# _15, reg
# BME680_driver_patched/bme680.c:1040: 				dev->com_rslt = dev->write(dev->dev_id, BME680_MEM_PAGE_ADDR & BME680_SPI_WR_MSK,
	.loc 1 1040 24
	lw	a5,-40(s0)		# tmp114, dev
	lw	a6,80(a5)		# _16, dev_25(D)->write
# BME680_driver_patched/bme680.c:1040: 				dev->com_rslt = dev->write(dev->dev_id, BME680_MEM_PAGE_ADDR & BME680_SPI_WR_MSK,
	.loc 1 1040 21
	lw	a5,-40(s0)		# tmp115, dev
	lbu	a5,1(a5)	# _17, dev_25(D)->dev_id
	addi	a4,s0,-19	#, tmp116,
	li	a3,1		#,
	mv	a2,a4	#, tmp116
	li	a1,115		#,
	mv	a0,a5	#, _17
	jalr	a6		# _16
.LVL7:
	mv	a5,a0	# tmp117,
	mv	a4,a5	# _18, tmp117
# BME680_driver_patched/bme680.c:1040: 				dev->com_rslt = dev->write(dev->dev_id, BME680_MEM_PAGE_ADDR & BME680_SPI_WR_MSK,
	.loc 1 1040 19
	lw	a5,-40(s0)		# tmp118, dev
	sb	a4,88(a5)	# _18, dev_25(D)->com_rslt
# BME680_driver_patched/bme680.c:1042: 				if (dev->com_rslt != 0)
	.loc 1 1042 12
	lw	a5,-40(s0)		# tmp119, dev
	lb	a5,88(a5)		# _19, dev_25(D)->com_rslt
# BME680_driver_patched/bme680.c:1042: 				if (dev->com_rslt != 0)
	.loc 1 1042 8
	beqz	a5,.L116	#, _19,
# BME680_driver_patched/bme680.c:1043: 					rslt = BME680_E_COM_FAIL;
	.loc 1 1043 11
	li	a5,-2		# tmp120,
	sb	a5,-17(s0)	# tmp120, rslt
.L116:
# BME680_driver_patched/bme680.c:1048: 	return rslt;
	.loc 1 1048 9
	lb	a5,-17(s0)		# _40, rslt
# BME680_driver_patched/bme680.c:1049: }
	.loc 1 1049 1
	mv	a0,a5	#, <retval>
	lw	ra,44(sp)		#,
.LCFI125:
	lw	s0,40(sp)		#,
.LCFI126:
	addi	sp,sp,48	#,,
.LCFI127:
	jr	ra		#
.LFE21:
	.size	set_mem_page, .-set_mem_page
	.align	2
	.globl	get_mem_page
	.type	get_mem_page, @function
get_mem_page:
.LFB22:
	.loc 1 1055 1
	addi	sp,sp,-48	#,,
.LCFI128:
	sw	ra,44(sp)	#,
	sw	s0,40(sp)	#,
.LCFI129:
	addi	s0,sp,48	#,,
.LCFI130:
	sw	a0,-36(s0)	# dev, dev
# BME680_driver_patched/bme680.c:1060: 	rslt = null_ptr_check(dev);
	.loc 1 1060 9
	lw	a0,-36(s0)		#, dev
	call	null_ptr_check		#
	mv	a5,a0	# tmp80,
	sb	a5,-17(s0)	# tmp80, rslt
# BME680_driver_patched/bme680.c:1061: 	if (rslt == BME680_OK) {
	.loc 1 1061 5
	lb	a5,-17(s0)		# tmp81, rslt
	bnez	a5,.L122	#, tmp81,
# BME680_driver_patched/bme680.c:1062: 		dev->com_rslt = dev->read(dev->dev_id, BME680_MEM_PAGE_ADDR | BME680_SPI_RD_MSK, &reg, 1);
	.loc 1 1062 22
	lw	a5,-36(s0)		# tmp82, dev
	lw	a6,76(a5)		# _1, dev_10(D)->read
# BME680_driver_patched/bme680.c:1062: 		dev->com_rslt = dev->read(dev->dev_id, BME680_MEM_PAGE_ADDR | BME680_SPI_RD_MSK, &reg, 1);
	.loc 1 1062 19
	lw	a5,-36(s0)		# tmp83, dev
	lbu	a5,1(a5)	# _2, dev_10(D)->dev_id
	addi	a4,s0,-18	#, tmp84,
	li	a3,1		#,
	mv	a2,a4	#, tmp84
	li	a1,243		#,
	mv	a0,a5	#, _2
	jalr	a6		# _1
.LVL8:
	mv	a5,a0	# tmp85,
	mv	a4,a5	# _3, tmp85
# BME680_driver_patched/bme680.c:1062: 		dev->com_rslt = dev->read(dev->dev_id, BME680_MEM_PAGE_ADDR | BME680_SPI_RD_MSK, &reg, 1);
	.loc 1 1062 17
	lw	a5,-36(s0)		# tmp86, dev
	sb	a4,88(a5)	# _3, dev_10(D)->com_rslt
# BME680_driver_patched/bme680.c:1063: 		if (dev->com_rslt != 0)
	.loc 1 1063 10
	lw	a5,-36(s0)		# tmp87, dev
	lb	a5,88(a5)		# _4, dev_10(D)->com_rslt
# BME680_driver_patched/bme680.c:1063: 		if (dev->com_rslt != 0)
	.loc 1 1063 6
	beqz	a5,.L123	#, _4,
# BME680_driver_patched/bme680.c:1064: 			rslt = BME680_E_COM_FAIL;
	.loc 1 1064 9
	li	a5,-2		# tmp88,
	sb	a5,-17(s0)	# tmp88, rslt
	j	.L122		#
.L123:
# BME680_driver_patched/bme680.c:1066: 			dev->mem_page = reg & BME680_MEM_PAGE_MSK;
	.loc 1 1066 24
	lbu	a5,-18(s0)	# reg.42_5, reg
	andi	a5,a5,16	#, tmp89, reg.42_5
	andi	a4,a5,0xff	# _6, tmp89
# BME680_driver_patched/bme680.c:1066: 			dev->mem_page = reg & BME680_MEM_PAGE_MSK;
	.loc 1 1066 18
	lw	a5,-36(s0)		# tmp90, dev
	sb	a4,8(a5)	# _6, dev_10(D)->mem_page
.L122:
# BME680_driver_patched/bme680.c:1069: 	return rslt;
	.loc 1 1069 9
	lb	a5,-17(s0)		# _17, rslt
# BME680_driver_patched/bme680.c:1070: }
	.loc 1 1070 1
	mv	a0,a5	#, <retval>
	lw	ra,44(sp)		#,
.LCFI131:
	lw	s0,40(sp)		#,
.LCFI132:
	addi	sp,sp,48	#,,
.LCFI133:
	jr	ra		#
.LFE22:
	.size	get_mem_page, .-get_mem_page
	.align	2
	.globl	boundary_check
	.type	boundary_check, @function
boundary_check:
.LFB23:
	.loc 1 1077 1
	addi	sp,sp,-48	#,,
.LCFI134:
	sw	s0,44(sp)	#,
.LCFI135:
	addi	s0,sp,48	#,,
.LCFI136:
	sw	a0,-36(s0)	# value, value
	mv	a5,a1	# tmp80, min
	mv	a4,a2	# tmp82, max
	sw	a3,-44(s0)	# dev, dev
	sb	a5,-37(s0)	# tmp81, min
	mv	a5,a4	# tmp83, tmp82
	sb	a5,-38(s0)	# tmp83, max
# BME680_driver_patched/bme680.c:1078: 	int8_t rslt = BME680_OK;
	.loc 1 1078 9
	sb	zero,-17(s0)	#, rslt
# BME680_driver_patched/bme680.c:1080: 	if (value != NULL) {
	.loc 1 1080 5
	lw	a5,-36(s0)		# tmp84, value
	beqz	a5,.L126	#, tmp84,
# BME680_driver_patched/bme680.c:1082: 		if (*value < min) {
	.loc 1 1082 7
	lw	a5,-36(s0)		# tmp85, value
	lbu	a5,0(a5)	# _1, *value_12(D)
# BME680_driver_patched/bme680.c:1082: 		if (*value < min) {
	.loc 1 1082 6
	lbu	a4,-37(s0)	# tmp86, min
	bleu	a4,a5,.L127	#, tmp86, _1,
# BME680_driver_patched/bme680.c:1084: 			*value = min;
	.loc 1 1084 11
	lw	a5,-36(s0)		# tmp87, value
	lbu	a4,-37(s0)	# tmp88, min
	sb	a4,0(a5)	# tmp88, *value_12(D)
# BME680_driver_patched/bme680.c:1085: 			dev->info_msg |= BME680_I_MIN_CORRECTION;
	.loc 1 1085 18
	lw	a5,-44(s0)		# tmp89, dev
	lbu	a5,74(a5)	# _2, dev_16(D)->info_msg
	ori	a5,a5,1	#, tmp90, _2
	andi	a4,a5,0xff	# _3, tmp90
	lw	a5,-44(s0)		# tmp91, dev
	sb	a4,74(a5)	# _3, dev_16(D)->info_msg
.L127:
# BME680_driver_patched/bme680.c:1088: 		if (*value > max) {
	.loc 1 1088 7
	lw	a5,-36(s0)		# tmp92, value
	lbu	a5,0(a5)	# _4, *value_12(D)
# BME680_driver_patched/bme680.c:1088: 		if (*value > max) {
	.loc 1 1088 6
	lbu	a4,-38(s0)	# tmp93, max
	bgeu	a4,a5,.L129	#, tmp93, _4,
# BME680_driver_patched/bme680.c:1090: 			*value = max;
	.loc 1 1090 11
	lw	a5,-36(s0)		# tmp94, value
	lbu	a4,-38(s0)	# tmp95, max
	sb	a4,0(a5)	# tmp95, *value_12(D)
# BME680_driver_patched/bme680.c:1091: 			dev->info_msg |= BME680_I_MAX_CORRECTION;
	.loc 1 1091 18
	lw	a5,-44(s0)		# tmp96, dev
	lbu	a5,74(a5)	# _5, dev_16(D)->info_msg
	ori	a5,a5,2	#, tmp97, _5
	andi	a4,a5,0xff	# _6, tmp97
	lw	a5,-44(s0)		# tmp98, dev
	sb	a4,74(a5)	# _6, dev_16(D)->info_msg
	j	.L129		#
.L126:
# BME680_driver_patched/bme680.c:1094: 		rslt = BME680_E_NULL_PTR;
	.loc 1 1094 8
	li	a5,-1		# tmp99,
	sb	a5,-17(s0)	# tmp99, rslt
.L129:
# BME680_driver_patched/bme680.c:1097: 	return rslt;
	.loc 1 1097 9
	lb	a5,-17(s0)		# _22, rslt
# BME680_driver_patched/bme680.c:1098: }
	.loc 1 1098 1
	mv	a0,a5	#, <retval>
	lw	s0,44(sp)		#,
.LCFI137:
	addi	sp,sp,48	#,,
.LCFI138:
	jr	ra		#
.LFE23:
	.size	boundary_check, .-boundary_check
	.align	2
	.globl	null_ptr_check
	.type	null_ptr_check, @function
null_ptr_check:
.LFB24:
	.loc 1 1105 1
	addi	sp,sp,-48	#,,
.LCFI139:
	sw	s0,44(sp)	#,
.LCFI140:
	addi	s0,sp,48	#,,
.LCFI141:
	sw	a0,-36(s0)	# dev, dev
# BME680_driver_patched/bme680.c:1108: 	if ((dev == NULL) || (dev->read == NULL) || (dev->write == NULL) || (dev->delay_ms == NULL)) {
	.loc 1 1108 5
	lw	a5,-36(s0)		# tmp77, dev
	beqz	a5,.L132	#, tmp77,
# BME680_driver_patched/bme680.c:1108: 	if ((dev == NULL) || (dev->read == NULL) || (dev->write == NULL) || (dev->delay_ms == NULL)) {
	.loc 1 1108 27 discriminator 1
	lw	a5,-36(s0)		# tmp78, dev
	lw	a5,76(a5)		# _1, dev_5(D)->read
# BME680_driver_patched/bme680.c:1108: 	if ((dev == NULL) || (dev->read == NULL) || (dev->write == NULL) || (dev->delay_ms == NULL)) {
	.loc 1 1108 20 discriminator 1
	beqz	a5,.L132	#, _1,
# BME680_driver_patched/bme680.c:1108: 	if ((dev == NULL) || (dev->read == NULL) || (dev->write == NULL) || (dev->delay_ms == NULL)) {
	.loc 1 1108 50 discriminator 2
	lw	a5,-36(s0)		# tmp79, dev
	lw	a5,80(a5)		# _2, dev_5(D)->write
# BME680_driver_patched/bme680.c:1108: 	if ((dev == NULL) || (dev->read == NULL) || (dev->write == NULL) || (dev->delay_ms == NULL)) {
	.loc 1 1108 43 discriminator 2
	beqz	a5,.L132	#, _2,
# BME680_driver_patched/bme680.c:1108: 	if ((dev == NULL) || (dev->read == NULL) || (dev->write == NULL) || (dev->delay_ms == NULL)) {
	.loc 1 1108 74 discriminator 3
	lw	a5,-36(s0)		# tmp80, dev
	lw	a5,84(a5)		# _3, dev_5(D)->delay_ms
# BME680_driver_patched/bme680.c:1108: 	if ((dev == NULL) || (dev->read == NULL) || (dev->write == NULL) || (dev->delay_ms == NULL)) {
	.loc 1 1108 67 discriminator 3
	bnez	a5,.L133	#, _3,
.L132:
# BME680_driver_patched/bme680.c:1110: 		rslt = BME680_E_NULL_PTR;
	.loc 1 1110 8
	li	a5,-1		# tmp81,
	sb	a5,-17(s0)	# tmp81, rslt
	j	.L134		#
.L133:
# BME680_driver_patched/bme680.c:1113: 		rslt = BME680_OK;
	.loc 1 1113 8
	sb	zero,-17(s0)	#, rslt
.L134:
# BME680_driver_patched/bme680.c:1116: 	return rslt;
	.loc 1 1116 9
	lb	a5,-17(s0)		# _9, rslt
# BME680_driver_patched/bme680.c:1117: }
	.loc 1 1117 1
	mv	a0,a5	#, <retval>
	lw	s0,44(sp)		#,
.LCFI142:
	addi	sp,sp,48	#,,
.LCFI143:
	jr	ra		#
.LFE24:
	.size	null_ptr_check, .-null_ptr_check
	.align	2
	.globl	parseCSv
	.type	parseCSv, @function
parseCSv:
.LFB25:
	.loc 1 1120 1
	addi	sp,sp,-16	#,,
.LCFI144:
	sw	s0,12(sp)	#,
.LCFI145:
	addi	s0,sp,16	#,,
.LCFI146:
# BME680_driver_patched/bme680.c:1122:   coeff_array[0] = 0x00;
	.loc 1 1122 18
	lui	a5,%hi(coeff_array)	# tmp72,
	sb	zero,%lo(coeff_array)(a5)	#, coeff_array
# BME680_driver_patched/bme680.c:1123:   coeff_array[1] = 0x27;
	.loc 1 1123 18
	lui	a5,%hi(coeff_array)	# tmp73,
	addi	a5,a5,%lo(coeff_array)	# tmp74, tmp73,
	li	a4,39		# tmp75,
	sb	a4,1(a5)	# tmp75, coeff_array
# BME680_driver_patched/bme680.c:1124:   coeff_array[2] = 0x66;
	.loc 1 1124 18
	lui	a5,%hi(coeff_array)	# tmp76,
	addi	a5,a5,%lo(coeff_array)	# tmp77, tmp76,
	li	a4,102		# tmp78,
	sb	a4,2(a5)	# tmp78, coeff_array
# BME680_driver_patched/bme680.c:1125:   coeff_array[3] = 0x03;
	.loc 1 1125 18
	lui	a5,%hi(coeff_array)	# tmp79,
	addi	a5,a5,%lo(coeff_array)	# tmp80, tmp79,
	li	a4,3		# tmp81,
	sb	a4,3(a5)	# tmp81, coeff_array
# BME680_driver_patched/bme680.c:1126:   coeff_array[4] = 0x0F;
	.loc 1 1126 18
	lui	a5,%hi(coeff_array)	# tmp82,
	addi	a5,a5,%lo(coeff_array)	# tmp83, tmp82,
	li	a4,15		# tmp84,
	sb	a4,4(a5)	# tmp84, coeff_array
# BME680_driver_patched/bme680.c:1127:   coeff_array[5] = 0x7F;
	.loc 1 1127 18
	lui	a5,%hi(coeff_array)	# tmp85,
	addi	a5,a5,%lo(coeff_array)	# tmp86, tmp85,
	li	a4,127		# tmp87,
	sb	a4,5(a5)	# tmp87, coeff_array
# BME680_driver_patched/bme680.c:1128:   coeff_array[6] = 0x89;
	.loc 1 1128 18
	lui	a5,%hi(coeff_array)	# tmp88,
	addi	a5,a5,%lo(coeff_array)	# tmp89, tmp88,
	li	a4,-119		# tmp90,
	sb	a4,6(a5)	# tmp90, coeff_array
# BME680_driver_patched/bme680.c:1129:   coeff_array[7] = 0x17;
	.loc 1 1129 18
	lui	a5,%hi(coeff_array)	# tmp91,
	addi	a5,a5,%lo(coeff_array)	# tmp92, tmp91,
	li	a4,23		# tmp93,
	sb	a4,7(a5)	# tmp93, coeff_array
# BME680_driver_patched/bme680.c:1130:   coeff_array[8] = 0xD7;
	.loc 1 1130 18
	lui	a5,%hi(coeff_array)	# tmp94,
	addi	a5,a5,%lo(coeff_array)	# tmp95, tmp94,
	li	a4,-41		# tmp96,
	sb	a4,8(a5)	# tmp96, coeff_array
# BME680_driver_patched/bme680.c:1131:   coeff_array[9] = 0x58;
	.loc 1 1131 18
	lui	a5,%hi(coeff_array)	# tmp97,
	addi	a5,a5,%lo(coeff_array)	# tmp98, tmp97,
	li	a4,88		# tmp99,
	sb	a4,9(a5)	# tmp99, coeff_array
# BME680_driver_patched/bme680.c:1132:   coeff_array[10] = 0xFF;
	.loc 1 1132 19
	lui	a5,%hi(coeff_array)	# tmp100,
	addi	a5,a5,%lo(coeff_array)	# tmp101, tmp100,
	li	a4,-1		# tmp102,
	sb	a4,10(a5)	# tmp102, coeff_array
# BME680_driver_patched/bme680.c:1133:   coeff_array[11] = 0x23;
	.loc 1 1133 19
	lui	a5,%hi(coeff_array)	# tmp103,
	addi	a5,a5,%lo(coeff_array)	# tmp104, tmp103,
	li	a4,35		# tmp105,
	sb	a4,11(a5)	# tmp105, coeff_array
# BME680_driver_patched/bme680.c:1134:   coeff_array[12] = 0x14;
	.loc 1 1134 19
	lui	a5,%hi(coeff_array)	# tmp106,
	addi	a5,a5,%lo(coeff_array)	# tmp107, tmp106,
	li	a4,20		# tmp108,
	sb	a4,12(a5)	# tmp108, coeff_array
# BME680_driver_patched/bme680.c:1135:   coeff_array[13] = 0x49;
	.loc 1 1135 19
	lui	a5,%hi(coeff_array)	# tmp109,
	addi	a5,a5,%lo(coeff_array)	# tmp110, tmp109,
	li	a4,73		# tmp111,
	sb	a4,13(a5)	# tmp111, coeff_array
# BME680_driver_patched/bme680.c:1136:   coeff_array[14] = 0x00;
	.loc 1 1136 19
	lui	a5,%hi(coeff_array)	# tmp112,
	addi	a5,a5,%lo(coeff_array)	# tmp113, tmp112,
	sb	zero,14(a5)	#, coeff_array
# BME680_driver_patched/bme680.c:1137:   coeff_array[15] = 0x18;
	.loc 1 1137 19
	lui	a5,%hi(coeff_array)	# tmp114,
	addi	a5,a5,%lo(coeff_array)	# tmp115, tmp114,
	li	a4,24		# tmp116,
	sb	a4,15(a5)	# tmp116, coeff_array
# BME680_driver_patched/bme680.c:1138:   coeff_array[16] = 0x1E;
	.loc 1 1138 19
	lui	a5,%hi(coeff_array)	# tmp117,
	addi	a5,a5,%lo(coeff_array)	# tmp118, tmp117,
	li	a4,30		# tmp119,
	sb	a4,16(a5)	# tmp119, coeff_array
# BME680_driver_patched/bme680.c:1139:   coeff_array[17] = 0x00;
	.loc 1 1139 19
	lui	a5,%hi(coeff_array)	# tmp120,
	addi	a5,a5,%lo(coeff_array)	# tmp121, tmp120,
	sb	zero,17(a5)	#, coeff_array
# BME680_driver_patched/bme680.c:1140:   coeff_array[18] = 0x00;
	.loc 1 1140 19
	lui	a5,%hi(coeff_array)	# tmp122,
	addi	a5,a5,%lo(coeff_array)	# tmp123, tmp122,
	sb	zero,18(a5)	#, coeff_array
# BME680_driver_patched/bme680.c:1141:   coeff_array[19] = 0xF5;
	.loc 1 1141 19
	lui	a5,%hi(coeff_array)	# tmp124,
	addi	a5,a5,%lo(coeff_array)	# tmp125, tmp124,
	li	a4,-11		# tmp126,
	sb	a4,19(a5)	# tmp126, coeff_array
# BME680_driver_patched/bme680.c:1142:   coeff_array[20] = 0xFD;
	.loc 1 1142 19
	lui	a5,%hi(coeff_array)	# tmp127,
	addi	a5,a5,%lo(coeff_array)	# tmp128, tmp127,
	li	a4,-3		# tmp129,
	sb	a4,20(a5)	# tmp129, coeff_array
# BME680_driver_patched/bme680.c:1143:   coeff_array[21] = 0x76;
	.loc 1 1143 19
	lui	a5,%hi(coeff_array)	# tmp130,
	addi	a5,a5,%lo(coeff_array)	# tmp131, tmp130,
	li	a4,118		# tmp132,
	sb	a4,21(a5)	# tmp132, coeff_array
# BME680_driver_patched/bme680.c:1144:   coeff_array[22] = 0xF2;
	.loc 1 1144 19
	lui	a5,%hi(coeff_array)	# tmp133,
	addi	a5,a5,%lo(coeff_array)	# tmp134, tmp133,
	li	a4,-14		# tmp135,
	sb	a4,22(a5)	# tmp135, coeff_array
# BME680_driver_patched/bme680.c:1145:   coeff_array[23] = 0x1E;
	.loc 1 1145 19
	lui	a5,%hi(coeff_array)	# tmp136,
	addi	a5,a5,%lo(coeff_array)	# tmp137, tmp136,
	li	a4,30		# tmp138,
	sb	a4,23(a5)	# tmp138, coeff_array
# BME680_driver_patched/bme680.c:1146:   coeff_array[24] = 0x02;
	.loc 1 1146 19
	lui	a5,%hi(coeff_array)	# tmp139,
	addi	a5,a5,%lo(coeff_array)	# tmp140, tmp139,
	li	a4,2		# tmp141,
	sb	a4,24(a5)	# tmp141, coeff_array
# BME680_driver_patched/bme680.c:1147:   coeff_array[25] = 0x40;
	.loc 1 1147 19
	lui	a5,%hi(coeff_array)	# tmp142,
	addi	a5,a5,%lo(coeff_array)	# tmp143, tmp142,
	li	a4,64		# tmp144,
	sb	a4,25(a5)	# tmp144, coeff_array
# BME680_driver_patched/bme680.c:1148:   coeff_array[26] = 0x6F;
	.loc 1 1148 19
	lui	a5,%hi(coeff_array)	# tmp145,
	addi	a5,a5,%lo(coeff_array)	# tmp146, tmp145,
	li	a4,111		# tmp147,
	sb	a4,26(a5)	# tmp147, coeff_array
# BME680_driver_patched/bme680.c:1149:   coeff_array[27] = 0x29;
	.loc 1 1149 19
	lui	a5,%hi(coeff_array)	# tmp148,
	addi	a5,a5,%lo(coeff_array)	# tmp149, tmp148,
	li	a4,41		# tmp150,
	sb	a4,27(a5)	# tmp150, coeff_array
# BME680_driver_patched/bme680.c:1150:   coeff_array[28] = 0x00;
	.loc 1 1150 19
	lui	a5,%hi(coeff_array)	# tmp151,
	addi	a5,a5,%lo(coeff_array)	# tmp152, tmp151,
	sb	zero,28(a5)	#, coeff_array
# BME680_driver_patched/bme680.c:1151:   coeff_array[29] = 0x2D;
	.loc 1 1151 19
	lui	a5,%hi(coeff_array)	# tmp153,
	addi	a5,a5,%lo(coeff_array)	# tmp154, tmp153,
	li	a4,45		# tmp155,
	sb	a4,29(a5)	# tmp155, coeff_array
# BME680_driver_patched/bme680.c:1152:   coeff_array[30] = 0x14;
	.loc 1 1152 19
	lui	a5,%hi(coeff_array)	# tmp156,
	addi	a5,a5,%lo(coeff_array)	# tmp157, tmp156,
	li	a4,20		# tmp158,
	sb	a4,30(a5)	# tmp158, coeff_array
# BME680_driver_patched/bme680.c:1153:   coeff_array[31] = 0x78;
	.loc 1 1153 19
	lui	a5,%hi(coeff_array)	# tmp159,
	addi	a5,a5,%lo(coeff_array)	# tmp160, tmp159,
	li	a4,120		# tmp161,
	sb	a4,31(a5)	# tmp161, coeff_array
# BME680_driver_patched/bme680.c:1154:   coeff_array[32] = 0x9C;
	.loc 1 1154 19
	lui	a5,%hi(coeff_array)	# tmp162,
	addi	a5,a5,%lo(coeff_array)	# tmp163, tmp162,
	li	a4,-100		# tmp164,
	sb	a4,32(a5)	# tmp164, coeff_array
# BME680_driver_patched/bme680.c:1155:   coeff_array[33] = 0xE1;
	.loc 1 1155 19
	lui	a5,%hi(coeff_array)	# tmp165,
	addi	a5,a5,%lo(coeff_array)	# tmp166, tmp165,
	li	a4,-31		# tmp167,
	sb	a4,33(a5)	# tmp167, coeff_array
# BME680_driver_patched/bme680.c:1156:   coeff_array[34] = 0x65;
	.loc 1 1156 19
	lui	a5,%hi(coeff_array)	# tmp168,
	addi	a5,a5,%lo(coeff_array)	# tmp169, tmp168,
	li	a4,101		# tmp170,
	sb	a4,34(a5)	# tmp170, coeff_array
# BME680_driver_patched/bme680.c:1157:   coeff_array[35] = 0xFE;
	.loc 1 1157 19
	lui	a5,%hi(coeff_array)	# tmp171,
	addi	a5,a5,%lo(coeff_array)	# tmp172, tmp171,
	li	a4,-2		# tmp173,
	sb	a4,35(a5)	# tmp173, coeff_array
# BME680_driver_patched/bme680.c:1158:   coeff_array[36] = 0xF1;
	.loc 1 1158 19
	lui	a5,%hi(coeff_array)	# tmp174,
	addi	a5,a5,%lo(coeff_array)	# tmp175, tmp174,
	li	a4,-15		# tmp176,
	sb	a4,36(a5)	# tmp176, coeff_array
# BME680_driver_patched/bme680.c:1159:   coeff_array[37] = 0xE0;
	.loc 1 1159 19
	lui	a5,%hi(coeff_array)	# tmp177,
	addi	a5,a5,%lo(coeff_array)	# tmp178, tmp177,
	li	a4,-32		# tmp179,
	sb	a4,37(a5)	# tmp179, coeff_array
# BME680_driver_patched/bme680.c:1160:   coeff_array[38] = 0x12;
	.loc 1 1160 19
	lui	a5,%hi(coeff_array)	# tmp180,
	addi	a5,a5,%lo(coeff_array)	# tmp181, tmp180,
	li	a4,18		# tmp182,
	sb	a4,38(a5)	# tmp182, coeff_array
# BME680_driver_patched/bme680.c:1161:   coeff_array[39] = 0x6B;
	.loc 1 1161 19
	lui	a5,%hi(coeff_array)	# tmp183,
	addi	a5,a5,%lo(coeff_array)	# tmp184, tmp183,
	li	a4,107		# tmp185,
	sb	a4,39(a5)	# tmp185, coeff_array
# BME680_driver_patched/bme680.c:1162:   coeff_array[40] = 0x00;
	.loc 1 1162 19
	lui	a5,%hi(coeff_array)	# tmp186,
	addi	a5,a5,%lo(coeff_array)	# tmp187, tmp186,
	sb	zero,40(a5)	#, coeff_array
# BME680_driver_patched/bme680.c:1165: }
	.loc 1 1165 1
	nop	
	lw	s0,12(sp)		#,
.LCFI147:
	addi	sp,sp,16	#,,
.LCFI148:
	jr	ra		#
.LFE25:
	.size	parseCSv, .-parseCSv
	.section	.rodata
	.align	2
.LC3:
	.word	1104150528
	.align	3
.LC4:
	.word	2576980378
	.word	1077615001
	.align	2
.LC7:
	.word	1182793728
	.align	2
.LC8:
	.word	1149239296
	.align	2
.LC10:
	.word	1207959552
	.align	2
.LC11:
	.word	1174405120
	.align	2
.LC12:
	.word	1098907648
	.align	2
.LC15:
	.word	1168113664
	.align	2
.LC17:
	.word	1073741824
	.align	2
.LC18:
	.word	1199177728
	.align	2
.LC19:
	.word	1082130432
	.align	2
.LC20:
	.word	1199570944
	.align	2
.LC21:
	.word	1224736768
	.align	2
.LC22:
	.word	1191182336
	.align	2
.LC23:
	.word	1065353216
	.align	2
.LC24:
	.word	1233125376
	.align	2
.LC25:
	.word	1166016512
	.align	2
.LC26:
	.word	1170427904
	.align	2
.LC27:
	.word	1325400064
	.align	2
.LC28:
	.word	1132462080
	.align	2
.LC29:
	.word	1124073472
	.align	2
.LC30:
	.word	1216348160
	.align	2
.LC31:
	.word	1241513984
	.align	2
.LC32:
	.word	1120403456
	.align	2
.LC33:
	.word	1084227584
	.align	2
.LC34:
	.word	1151827968
	.align	2
.LC35:
	.word	872822717
	.align	2
.LC36:
	.word	1140850688
	.align	2
.LC37:
	.word	1111752704
	.align	2
.LC38:
	.word	973279855
	.align	2
.LC39:
	.word	991560309
	.align	2
.LC40:
	.word	990057071
	.align	2
.LC41:
	.word	1103626240
	.align	2
.LC42:
	.word	1079613850
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
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.byte	0x4
	.4byte	.LCFI0-.LFB0
	.byte	0xe
	.byte	0x30
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
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.byte	0x4
	.4byte	.LCFI6-.LFB1
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.4byte	.LCFI7-.LCFI6
	.byte	0x81
	.byte	0x1
	.byte	0x88
	.byte	0x2
	.byte	0x4
	.4byte	.LCFI8-.LCFI7
	.byte	0xc
	.byte	0x8
	.byte	0
	.byte	0x4
	.4byte	.LCFI9-.LCFI8
	.byte	0xc1
	.byte	0x4
	.4byte	.LCFI10-.LCFI9
	.byte	0xc8
	.byte	0x4
	.4byte	.LCFI11-.LCFI10
	.byte	0xd
	.byte	0x2
	.align	2
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x4
	.4byte	.LCFI12-.LFB2
	.byte	0xe
	.byte	0x50
	.byte	0x4
	.4byte	.LCFI13-.LCFI12
	.byte	0x81
	.byte	0x1
	.byte	0x88
	.byte	0x2
	.byte	0x4
	.4byte	.LCFI14-.LCFI13
	.byte	0xc
	.byte	0x8
	.byte	0
	.byte	0x4
	.4byte	.LCFI15-.LCFI14
	.byte	0xc1
	.byte	0x4
	.4byte	.LCFI16-.LCFI15
	.byte	0xc8
	.byte	0x4
	.4byte	.LCFI17-.LCFI16
	.byte	0xd
	.byte	0x2
	.align	2
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x4
	.4byte	.LCFI18-.LFB3
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.4byte	.LCFI19-.LCFI18
	.byte	0x81
	.byte	0x1
	.byte	0x88
	.byte	0x2
	.byte	0x4
	.4byte	.LCFI20-.LCFI19
	.byte	0xc
	.byte	0x8
	.byte	0
	.byte	0x4
	.4byte	.LCFI21-.LCFI20
	.byte	0xc1
	.byte	0x4
	.4byte	.LCFI22-.LCFI21
	.byte	0xc8
	.byte	0x4
	.4byte	.LCFI23-.LCFI22
	.byte	0xd
	.byte	0x2
	.align	2
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x4
	.4byte	.LCFI24-.LFB4
	.byte	0xe
	.byte	0x40
	.byte	0x4
	.4byte	.LCFI25-.LCFI24
	.byte	0x81
	.byte	0x1
	.byte	0x88
	.byte	0x2
	.byte	0x4
	.4byte	.LCFI26-.LCFI25
	.byte	0xc
	.byte	0x8
	.byte	0
	.byte	0x4
	.4byte	.LCFI27-.LCFI26
	.byte	0xc1
	.byte	0x4
	.4byte	.LCFI28-.LCFI27
	.byte	0xc8
	.byte	0x4
	.4byte	.LCFI29-.LCFI28
	.byte	0xd
	.byte	0x2
	.align	2
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x4
	.4byte	.LCFI30-.LFB5
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.4byte	.LCFI31-.LCFI30
	.byte	0x81
	.byte	0x1
	.byte	0x88
	.byte	0x2
	.byte	0x4
	.4byte	.LCFI32-.LCFI31
	.byte	0xc
	.byte	0x8
	.byte	0
	.byte	0x4
	.4byte	.LCFI33-.LCFI32
	.byte	0xc1
	.byte	0x4
	.4byte	.LCFI34-.LCFI33
	.byte	0xc8
	.byte	0x4
	.4byte	.LCFI35-.LCFI34
	.byte	0xd
	.byte	0x2
	.align	2
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x4
	.4byte	.LCFI36-.LFB6
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.4byte	.LCFI37-.LCFI36
	.byte	0x81
	.byte	0x1
	.byte	0x88
	.byte	0x2
	.byte	0x4
	.4byte	.LCFI38-.LCFI37
	.byte	0xc
	.byte	0x8
	.byte	0
	.byte	0x4
	.4byte	.LCFI39-.LCFI38
	.byte	0xc1
	.byte	0x4
	.4byte	.LCFI40-.LCFI39
	.byte	0xc8
	.byte	0x4
	.4byte	.LCFI41-.LCFI40
	.byte	0xd
	.byte	0x2
	.align	2
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x4
	.4byte	.LCFI42-.LFB7
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.4byte	.LCFI43-.LCFI42
	.byte	0x81
	.byte	0x1
	.byte	0x88
	.byte	0x2
	.byte	0x4
	.4byte	.LCFI44-.LCFI43
	.byte	0xc
	.byte	0x8
	.byte	0
	.byte	0x4
	.4byte	.LCFI45-.LCFI44
	.byte	0xc1
	.byte	0x4
	.4byte	.LCFI46-.LCFI45
	.byte	0xc8
	.byte	0x4
	.4byte	.LCFI47-.LCFI46
	.byte	0xd
	.byte	0x2
	.align	2
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x4
	.4byte	.LCFI48-.LFB8
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.4byte	.LCFI49-.LCFI48
	.byte	0x81
	.byte	0x1
	.byte	0x88
	.byte	0x2
	.byte	0x4
	.4byte	.LCFI50-.LCFI49
	.byte	0xc
	.byte	0x8
	.byte	0
	.byte	0x4
	.4byte	.LCFI51-.LCFI50
	.byte	0xc1
	.byte	0x4
	.4byte	.LCFI52-.LCFI51
	.byte	0xc8
	.byte	0x4
	.4byte	.LCFI53-.LCFI52
	.byte	0xd
	.byte	0x2
	.align	2
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x4
	.4byte	.LCFI54-.LFB9
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.4byte	.LCFI55-.LCFI54
	.byte	0x81
	.byte	0x1
	.byte	0x88
	.byte	0x2
	.byte	0x4
	.4byte	.LCFI56-.LCFI55
	.byte	0xc
	.byte	0x8
	.byte	0
	.byte	0x4
	.4byte	.LCFI57-.LCFI56
	.byte	0xc1
	.byte	0x4
	.4byte	.LCFI58-.LCFI57
	.byte	0xc8
	.byte	0x4
	.4byte	.LCFI59-.LCFI58
	.byte	0xd
	.byte	0x2
	.align	2
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x4
	.4byte	.LCFI60-.LFB10
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.4byte	.LCFI61-.LCFI60
	.byte	0x81
	.byte	0x1
	.byte	0x88
	.byte	0x2
	.byte	0x4
	.4byte	.LCFI62-.LCFI61
	.byte	0xc
	.byte	0x8
	.byte	0
	.byte	0x4
	.4byte	.LCFI63-.LCFI62
	.byte	0xc1
	.byte	0x4
	.4byte	.LCFI64-.LCFI63
	.byte	0xc8
	.byte	0x4
	.4byte	.LCFI65-.LCFI64
	.byte	0xd
	.byte	0x2
	.align	2
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x4
	.4byte	.LCFI66-.LFB11
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.4byte	.LCFI67-.LCFI66
	.byte	0x81
	.byte	0x1
	.byte	0x88
	.byte	0x2
	.byte	0x4
	.4byte	.LCFI68-.LCFI67
	.byte	0xc
	.byte	0x8
	.byte	0
	.byte	0x4
	.4byte	.LCFI69-.LCFI68
	.byte	0xc1
	.byte	0x4
	.4byte	.LCFI70-.LCFI69
	.byte	0xc8
	.byte	0x4
	.4byte	.LCFI71-.LCFI70
	.byte	0xd
	.byte	0x2
	.align	2
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x4
	.4byte	.LCFI72-.LFB12
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.4byte	.LCFI73-.LCFI72
	.byte	0x81
	.byte	0x1
	.byte	0x88
	.byte	0x2
	.byte	0x4
	.4byte	.LCFI74-.LCFI73
	.byte	0xc
	.byte	0x8
	.byte	0
	.byte	0x4
	.4byte	.LCFI75-.LCFI74
	.byte	0xc1
	.byte	0x4
	.4byte	.LCFI76-.LCFI75
	.byte	0xc8
	.byte	0x4
	.4byte	.LCFI77-.LCFI76
	.byte	0xd
	.byte	0x2
	.align	2
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x4
	.4byte	.LCFI78-.LFB13
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.4byte	.LCFI79-.LCFI78
	.byte	0x81
	.byte	0x1
	.byte	0x88
	.byte	0x2
	.byte	0x4
	.4byte	.LCFI80-.LCFI79
	.byte	0xc
	.byte	0x8
	.byte	0
	.byte	0x4
	.4byte	.LCFI81-.LCFI80
	.byte	0xc1
	.byte	0x4
	.4byte	.LCFI82-.LCFI81
	.byte	0xc8
	.byte	0x4
	.4byte	.LCFI83-.LCFI82
	.byte	0xd
	.byte	0x2
	.align	2
.LEFDE26:
.LSFDE28:
	.4byte	.LEFDE28-.LASFDE28
.LASFDE28:
	.4byte	.Lframe0
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x4
	.4byte	.LCFI84-.LFB14
	.byte	0xe
	.byte	0x40
	.byte	0x4
	.4byte	.LCFI85-.LCFI84
	.byte	0x81
	.byte	0x1
	.byte	0x88
	.byte	0x2
	.byte	0x4
	.4byte	.LCFI86-.LCFI85
	.byte	0xc
	.byte	0x8
	.byte	0
	.byte	0x4
	.4byte	.LCFI87-.LCFI86
	.byte	0xc1
	.byte	0x4
	.4byte	.LCFI88-.LCFI87
	.byte	0xc8
	.byte	0x4
	.4byte	.LCFI89-.LCFI88
	.byte	0xd
	.byte	0x2
	.align	2
.LEFDE28:
.LSFDE30:
	.4byte	.LEFDE30-.LASFDE30
.LASFDE30:
	.4byte	.Lframe0
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x4
	.4byte	.LCFI90-.LFB15
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.4byte	.LCFI91-.LCFI90
	.byte	0x88
	.byte	0x1
	.byte	0x4
	.4byte	.LCFI92-.LCFI91
	.byte	0xc
	.byte	0x8
	.byte	0
	.byte	0x4
	.4byte	.LCFI93-.LCFI92
	.byte	0xc8
	.byte	0x4
	.4byte	.LCFI94-.LCFI93
	.byte	0xd
	.byte	0x2
	.align	2
.LEFDE30:
.LSFDE32:
	.4byte	.LEFDE32-.LASFDE32
.LASFDE32:
	.4byte	.Lframe0
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x4
	.4byte	.LCFI95-.LFB16
	.byte	0xe
	.byte	0x40
	.byte	0x4
	.4byte	.LCFI96-.LCFI95
	.byte	0x88
	.byte	0x1
	.byte	0x4
	.4byte	.LCFI97-.LCFI96
	.byte	0xc
	.byte	0x8
	.byte	0
	.byte	0x4
	.4byte	.LCFI98-.LCFI97
	.byte	0xc8
	.byte	0x4
	.4byte	.LCFI99-.LCFI98
	.byte	0xd
	.byte	0x2
	.align	2
.LEFDE32:
.LSFDE34:
	.4byte	.LEFDE34-.LASFDE34
.LASFDE34:
	.4byte	.Lframe0
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x4
	.4byte	.LCFI100-.LFB17
	.byte	0xe
	.byte	0xb0,0x1
	.byte	0x4
	.4byte	.LCFI101-.LCFI100
	.byte	0x81
	.byte	0x1
	.byte	0x88
	.byte	0x2
	.byte	0x4
	.4byte	.LCFI102-.LCFI101
	.byte	0xc
	.byte	0x8
	.byte	0
	.byte	0x4
	.4byte	.LCFI103-.LCFI102
	.byte	0xc1
	.byte	0x4
	.4byte	.LCFI104-.LCFI103
	.byte	0xc8
	.byte	0x4
	.4byte	.LCFI105-.LCFI104
	.byte	0xd
	.byte	0x2
	.align	2
.LEFDE34:
.LSFDE36:
	.4byte	.LEFDE36-.LASFDE36
.LASFDE36:
	.4byte	.Lframe0
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x4
	.4byte	.LCFI106-.LFB18
	.byte	0xe
	.byte	0x40
	.byte	0x4
	.4byte	.LCFI107-.LCFI106
	.byte	0x88
	.byte	0x1
	.byte	0x4
	.4byte	.LCFI108-.LCFI107
	.byte	0xc
	.byte	0x8
	.byte	0
	.byte	0x4
	.4byte	.LCFI109-.LCFI108
	.byte	0xc8
	.byte	0x4
	.4byte	.LCFI110-.LCFI109
	.byte	0xd
	.byte	0x2
	.align	2
.LEFDE36:
.LSFDE38:
	.4byte	.LEFDE38-.LASFDE38
.LASFDE38:
	.4byte	.Lframe0
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x4
	.4byte	.LCFI111-.LFB19
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.4byte	.LCFI112-.LCFI111
	.byte	0x88
	.byte	0x1
	.byte	0x4
	.4byte	.LCFI113-.LCFI112
	.byte	0xc
	.byte	0x8
	.byte	0
	.byte	0x4
	.4byte	.LCFI114-.LCFI113
	.byte	0xc8
	.byte	0x4
	.4byte	.LCFI115-.LCFI114
	.byte	0xd
	.byte	0x2
	.align	2
.LEFDE38:
.LSFDE40:
	.4byte	.LEFDE40-.LASFDE40
.LASFDE40:
	.4byte	.Lframe0
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x4
	.4byte	.LCFI116-.LFB20
	.byte	0xe
	.byte	0x40
	.byte	0x4
	.4byte	.LCFI117-.LCFI116
	.byte	0x81
	.byte	0x1
	.byte	0x88
	.byte	0x2
	.byte	0x4
	.4byte	.LCFI118-.LCFI117
	.byte	0xc
	.byte	0x8
	.byte	0
	.byte	0x4
	.4byte	.LCFI119-.LCFI118
	.byte	0xc1
	.byte	0x4
	.4byte	.LCFI120-.LCFI119
	.byte	0xc8
	.byte	0x4
	.4byte	.LCFI121-.LCFI120
	.byte	0xd
	.byte	0x2
	.align	2
.LEFDE40:
.LSFDE42:
	.4byte	.LEFDE42-.LASFDE42
.LASFDE42:
	.4byte	.Lframe0
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.byte	0x4
	.4byte	.LCFI122-.LFB21
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.4byte	.LCFI123-.LCFI122
	.byte	0x81
	.byte	0x1
	.byte	0x88
	.byte	0x2
	.byte	0x4
	.4byte	.LCFI124-.LCFI123
	.byte	0xc
	.byte	0x8
	.byte	0
	.byte	0x4
	.4byte	.LCFI125-.LCFI124
	.byte	0xc1
	.byte	0x4
	.4byte	.LCFI126-.LCFI125
	.byte	0xc8
	.byte	0x4
	.4byte	.LCFI127-.LCFI126
	.byte	0xd
	.byte	0x2
	.align	2
.LEFDE42:
.LSFDE44:
	.4byte	.LEFDE44-.LASFDE44
.LASFDE44:
	.4byte	.Lframe0
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x4
	.4byte	.LCFI128-.LFB22
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.4byte	.LCFI129-.LCFI128
	.byte	0x81
	.byte	0x1
	.byte	0x88
	.byte	0x2
	.byte	0x4
	.4byte	.LCFI130-.LCFI129
	.byte	0xc
	.byte	0x8
	.byte	0
	.byte	0x4
	.4byte	.LCFI131-.LCFI130
	.byte	0xc1
	.byte	0x4
	.4byte	.LCFI132-.LCFI131
	.byte	0xc8
	.byte	0x4
	.4byte	.LCFI133-.LCFI132
	.byte	0xd
	.byte	0x2
	.align	2
.LEFDE44:
.LSFDE46:
	.4byte	.LEFDE46-.LASFDE46
.LASFDE46:
	.4byte	.Lframe0
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.byte	0x4
	.4byte	.LCFI134-.LFB23
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.4byte	.LCFI135-.LCFI134
	.byte	0x88
	.byte	0x1
	.byte	0x4
	.4byte	.LCFI136-.LCFI135
	.byte	0xc
	.byte	0x8
	.byte	0
	.byte	0x4
	.4byte	.LCFI137-.LCFI136
	.byte	0xc8
	.byte	0x4
	.4byte	.LCFI138-.LCFI137
	.byte	0xd
	.byte	0x2
	.align	2
.LEFDE46:
.LSFDE48:
	.4byte	.LEFDE48-.LASFDE48
.LASFDE48:
	.4byte	.Lframe0
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.byte	0x4
	.4byte	.LCFI139-.LFB24
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.4byte	.LCFI140-.LCFI139
	.byte	0x88
	.byte	0x1
	.byte	0x4
	.4byte	.LCFI141-.LCFI140
	.byte	0xc
	.byte	0x8
	.byte	0
	.byte	0x4
	.4byte	.LCFI142-.LCFI141
	.byte	0xc8
	.byte	0x4
	.4byte	.LCFI143-.LCFI142
	.byte	0xd
	.byte	0x2
	.align	2
.LEFDE48:
.LSFDE50:
	.4byte	.LEFDE50-.LASFDE50
.LASFDE50:
	.4byte	.Lframe0
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.byte	0x4
	.4byte	.LCFI144-.LFB25
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.4byte	.LCFI145-.LCFI144
	.byte	0x88
	.byte	0x1
	.byte	0x4
	.4byte	.LCFI146-.LCFI145
	.byte	0xc
	.byte	0x8
	.byte	0
	.byte	0x4
	.4byte	.LCFI147-.LCFI146
	.byte	0xc8
	.byte	0x4
	.4byte	.LCFI148-.LCFI147
	.byte	0xd
	.byte	0x2
	.align	2
.LEFDE50:
	.text
.Letext0:
	.file 2 "/home/billtsou/Desktop/UPP/sunflower-simulator/sunflower-toolchain/tools/riscv/riscv32-elf/sys-include/machine/_default_types.h"
	.file 3 "/home/billtsou/Desktop/UPP/sunflower-simulator/sunflower-toolchain/tools/riscv/riscv32-elf/sys-include/sys/_stdint.h"
	.file 4 "BME680_driver_patched/bme680_defs.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1065
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF165
	.byte	0xc
	.4byte	.LASF166
	.4byte	.LASF167
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
	.byte	0x2
	.4byte	.LASF15
	.byte	0x3
	.byte	0x14
	.byte	0x12
	.4byte	0x25
	.byte	0x2
	.4byte	.LASF16
	.byte	0x3
	.byte	0x18
	.byte	0x13
	.4byte	0x38
	.byte	0x5
	.4byte	0xbf
	.byte	0x2
	.4byte	.LASF17
	.byte	0x3
	.byte	0x20
	.byte	0x13
	.4byte	0x4b
	.byte	0x2
	.4byte	.LASF18
	.byte	0x3
	.byte	0x24
	.byte	0x14
	.4byte	0x5e
	.byte	0x2
	.4byte	.LASF19
	.byte	0x3
	.byte	0x2c
	.byte	0x13
	.4byte	0x71
	.byte	0x2
	.4byte	.LASF20
	.byte	0x3
	.byte	0x30
	.byte	0x14
	.4byte	0x84
	.byte	0x3
	.byte	0x10
	.byte	0x4
	.4byte	.LASF21
	.byte	0x6
	.4byte	.LASF22
	.byte	0x4
	.2byte	0x162
	.byte	0x12
	.4byte	0x114
	.byte	0x7
	.byte	0x4
	.4byte	0x11a
	.byte	0x8
	.4byte	0xb3
	.4byte	0x138
	.byte	0x9
	.4byte	0xbf
	.byte	0x9
	.4byte	0xbf
	.byte	0x9
	.4byte	0x138
	.byte	0x9
	.4byte	0xdc
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0xbf
	.byte	0x6
	.4byte	.LASF23
	.byte	0x4
	.2byte	0x168
	.byte	0x10
	.4byte	0x14b
	.byte	0x7
	.byte	0x4
	.4byte	0x151
	.byte	0xa
	.4byte	0x15c
	.byte	0x9
	.4byte	0xf4
	.byte	0
	.byte	0xb
	.4byte	.LASF168
	.byte	0x7
	.byte	0x4
	.4byte	0xac
	.byte	0x4
	.2byte	0x16d
	.byte	0x6
	.4byte	0x17c
	.byte	0xc
	.4byte	.LASF24
	.byte	0
	.byte	0xc
	.4byte	.LASF25
	.byte	0x1
	.byte	0
	.byte	0xd
	.4byte	.LASF33
	.byte	0x14
	.byte	0x4
	.2byte	0x178
	.byte	0x8
	.4byte	0x1ed
	.byte	0xe
	.4byte	.LASF26
	.byte	0x4
	.2byte	0x17a
	.byte	0xa
	.4byte	0xbf
	.byte	0
	.byte	0xe
	.4byte	.LASF27
	.byte	0x4
	.2byte	0x17c
	.byte	0xa
	.4byte	0xbf
	.byte	0x1
	.byte	0xe
	.4byte	.LASF28
	.byte	0x4
	.2byte	0x17e
	.byte	0xa
	.4byte	0xbf
	.byte	0x2
	.byte	0xe
	.4byte	.LASF29
	.byte	0x4
	.2byte	0x182
	.byte	0xa
	.4byte	0xd0
	.byte	0x4
	.byte	0xe
	.4byte	.LASF30
	.byte	0x4
	.2byte	0x184
	.byte	0xb
	.4byte	0xf4
	.byte	0x8
	.byte	0xe
	.4byte	.LASF31
	.byte	0x4
	.2byte	0x186
	.byte	0xb
	.4byte	0xf4
	.byte	0xc
	.byte	0xe
	.4byte	.LASF32
	.byte	0x4
	.2byte	0x188
	.byte	0xb
	.4byte	0xf4
	.byte	0x10
	.byte	0
	.byte	0xd
	.4byte	.LASF34
	.byte	0x30
	.byte	0x4
	.2byte	0x19a
	.byte	0x8
	.4byte	0x376
	.byte	0xe
	.4byte	.LASF35
	.byte	0x4
	.2byte	0x19c
	.byte	0xb
	.4byte	0xdc
	.byte	0
	.byte	0xe
	.4byte	.LASF36
	.byte	0x4
	.2byte	0x19e
	.byte	0xb
	.4byte	0xdc
	.byte	0x2
	.byte	0xe
	.4byte	.LASF37
	.byte	0x4
	.2byte	0x1a0
	.byte	0x9
	.4byte	0xb3
	.byte	0x4
	.byte	0xe
	.4byte	.LASF38
	.byte	0x4
	.2byte	0x1a2
	.byte	0x9
	.4byte	0xb3
	.byte	0x5
	.byte	0xe
	.4byte	.LASF39
	.byte	0x4
	.2byte	0x1a4
	.byte	0x9
	.4byte	0xb3
	.byte	0x6
	.byte	0xe
	.4byte	.LASF40
	.byte	0x4
	.2byte	0x1a6
	.byte	0xa
	.4byte	0xbf
	.byte	0x7
	.byte	0xe
	.4byte	.LASF41
	.byte	0x4
	.2byte	0x1a8
	.byte	0x9
	.4byte	0xb3
	.byte	0x8
	.byte	0xe
	.4byte	.LASF42
	.byte	0x4
	.2byte	0x1aa
	.byte	0x9
	.4byte	0xb3
	.byte	0x9
	.byte	0xe
	.4byte	.LASF43
	.byte	0x4
	.2byte	0x1ac
	.byte	0xa
	.4byte	0xd0
	.byte	0xa
	.byte	0xe
	.4byte	.LASF44
	.byte	0x4
	.2byte	0x1ae
	.byte	0x9
	.4byte	0xb3
	.byte	0xc
	.byte	0xe
	.4byte	.LASF45
	.byte	0x4
	.2byte	0x1b0
	.byte	0xb
	.4byte	0xdc
	.byte	0xe
	.byte	0xe
	.4byte	.LASF46
	.byte	0x4
	.2byte	0x1b2
	.byte	0xa
	.4byte	0xd0
	.byte	0x10
	.byte	0xe
	.4byte	.LASF47
	.byte	0x4
	.2byte	0x1b4
	.byte	0x9
	.4byte	0xb3
	.byte	0x12
	.byte	0xe
	.4byte	.LASF48
	.byte	0x4
	.2byte	0x1b6
	.byte	0xb
	.4byte	0xdc
	.byte	0x14
	.byte	0xe
	.4byte	.LASF49
	.byte	0x4
	.2byte	0x1b8
	.byte	0xa
	.4byte	0xd0
	.byte	0x16
	.byte	0xe
	.4byte	.LASF50
	.byte	0x4
	.2byte	0x1ba
	.byte	0x9
	.4byte	0xb3
	.byte	0x18
	.byte	0xe
	.4byte	.LASF51
	.byte	0x4
	.2byte	0x1bc
	.byte	0xa
	.4byte	0xd0
	.byte	0x1a
	.byte	0xe
	.4byte	.LASF52
	.byte	0x4
	.2byte	0x1be
	.byte	0xa
	.4byte	0xd0
	.byte	0x1c
	.byte	0xe
	.4byte	.LASF53
	.byte	0x4
	.2byte	0x1c0
	.byte	0x9
	.4byte	0xb3
	.byte	0x1e
	.byte	0xe
	.4byte	.LASF54
	.byte	0x4
	.2byte	0x1c2
	.byte	0x9
	.4byte	0xb3
	.byte	0x1f
	.byte	0xe
	.4byte	.LASF55
	.byte	0x4
	.2byte	0x1c4
	.byte	0xa
	.4byte	0xd0
	.byte	0x20
	.byte	0xe
	.4byte	.LASF56
	.byte	0x4
	.2byte	0x1c6
	.byte	0xa
	.4byte	0xd0
	.byte	0x22
	.byte	0xe
	.4byte	.LASF57
	.byte	0x4
	.2byte	0x1c8
	.byte	0xa
	.4byte	0xbf
	.byte	0x24
	.byte	0xe
	.4byte	.LASF58
	.byte	0x4
	.2byte	0x1cc
	.byte	0xa
	.4byte	0xe8
	.byte	0x28
	.byte	0xe
	.4byte	.LASF59
	.byte	0x4
	.2byte	0x1d2
	.byte	0xa
	.4byte	0xbf
	.byte	0x2c
	.byte	0xe
	.4byte	.LASF60
	.byte	0x4
	.2byte	0x1d4
	.byte	0x9
	.4byte	0xb3
	.byte	0x2d
	.byte	0xe
	.4byte	.LASF61
	.byte	0x4
	.2byte	0x1d6
	.byte	0x9
	.4byte	0xb3
	.byte	0x2e
	.byte	0
	.byte	0xd
	.4byte	.LASF62
	.byte	0x4
	.byte	0x4
	.2byte	0x1dd
	.byte	0x8
	.4byte	0x3bd
	.byte	0xe
	.4byte	.LASF63
	.byte	0x4
	.2byte	0x1df
	.byte	0xa
	.4byte	0xbf
	.byte	0
	.byte	0xe
	.4byte	.LASF64
	.byte	0x4
	.2byte	0x1e1
	.byte	0xa
	.4byte	0xbf
	.byte	0x1
	.byte	0xe
	.4byte	.LASF65
	.byte	0x4
	.2byte	0x1e3
	.byte	0xa
	.4byte	0xbf
	.byte	0x2
	.byte	0xe
	.4byte	.LASF66
	.byte	0x4
	.2byte	0x1e5
	.byte	0xa
	.4byte	0xbf
	.byte	0x3
	.byte	0
	.byte	0xd
	.4byte	.LASF67
	.byte	0x8
	.byte	0x4
	.2byte	0x1ec
	.byte	0x8
	.4byte	0x412
	.byte	0xe
	.4byte	.LASF68
	.byte	0x4
	.2byte	0x1ee
	.byte	0xa
	.4byte	0xbf
	.byte	0
	.byte	0xe
	.4byte	.LASF69
	.byte	0x4
	.2byte	0x1f0
	.byte	0xa
	.4byte	0xbf
	.byte	0x1
	.byte	0xe
	.4byte	.LASF70
	.byte	0x4
	.2byte	0x1f2
	.byte	0xa
	.4byte	0xbf
	.byte	0x2
	.byte	0xe
	.4byte	.LASF71
	.byte	0x4
	.2byte	0x1f4
	.byte	0xb
	.4byte	0xdc
	.byte	0x4
	.byte	0xe
	.4byte	.LASF72
	.byte	0x4
	.2byte	0x1f6
	.byte	0xb
	.4byte	0xdc
	.byte	0x6
	.byte	0
	.byte	0xd
	.4byte	.LASF73
	.byte	0x5c
	.byte	0x4
	.2byte	0x1fc
	.byte	0x8
	.4byte	0x4f3
	.byte	0xe
	.4byte	.LASF74
	.byte	0x4
	.2byte	0x1fe
	.byte	0xa
	.4byte	0xbf
	.byte	0
	.byte	0xe
	.4byte	.LASF75
	.byte	0x4
	.2byte	0x200
	.byte	0xa
	.4byte	0xbf
	.byte	0x1
	.byte	0xe
	.4byte	.LASF76
	.byte	0x4
	.2byte	0x202
	.byte	0x13
	.4byte	0x15c
	.byte	0x4
	.byte	0xe
	.4byte	.LASF77
	.byte	0x4
	.2byte	0x204
	.byte	0xa
	.4byte	0xbf
	.byte	0x8
	.byte	0xe
	.4byte	.LASF78
	.byte	0x4
	.2byte	0x206
	.byte	0x9
	.4byte	0xb3
	.byte	0x9
	.byte	0xe
	.4byte	.LASF79
	.byte	0x4
	.2byte	0x208
	.byte	0x1b
	.4byte	0x1ed
	.byte	0xc
	.byte	0xe
	.4byte	.LASF80
	.byte	0x4
	.2byte	0x20a
	.byte	0x19
	.4byte	0x376
	.byte	0x3c
	.byte	0xe
	.4byte	.LASF81
	.byte	0x4
	.2byte	0x20c
	.byte	0x19
	.4byte	0x3bd
	.byte	0x40
	.byte	0xe
	.4byte	.LASF82
	.byte	0x4
	.2byte	0x20e
	.byte	0xa
	.4byte	0xbf
	.byte	0x48
	.byte	0xe
	.4byte	.LASF83
	.byte	0x4
	.2byte	0x210
	.byte	0xa
	.4byte	0xbf
	.byte	0x49
	.byte	0xe
	.4byte	.LASF84
	.byte	0x4
	.2byte	0x212
	.byte	0xa
	.4byte	0xbf
	.byte	0x4a
	.byte	0xe
	.4byte	.LASF85
	.byte	0x4
	.2byte	0x214
	.byte	0x14
	.4byte	0x107
	.byte	0x4c
	.byte	0xe
	.4byte	.LASF86
	.byte	0x4
	.2byte	0x216
	.byte	0x14
	.4byte	0x107
	.byte	0x50
	.byte	0xe
	.4byte	.LASF87
	.byte	0x4
	.2byte	0x218
	.byte	0x16
	.4byte	0x13e
	.byte	0x54
	.byte	0xe
	.4byte	.LASF88
	.byte	0x4
	.2byte	0x21a
	.byte	0x9
	.4byte	0xb3
	.byte	0x58
	.byte	0
	.byte	0x5
	.4byte	0x412
	.byte	0xf
	.4byte	0xbf
	.4byte	0x508
	.byte	0x10
	.4byte	0xac
	.byte	0x28
	.byte	0
	.byte	0x11
	.4byte	.LASF169
	.byte	0x1
	.byte	0x37
	.byte	0x10
	.4byte	0x4f8
	.byte	0x12
	.4byte	.LASF170
	.byte	0x1
	.2byte	0x45f
	.byte	0x6
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.byte	0x1
	.byte	0x9c
	.byte	0x13
	.4byte	.LASF89
	.byte	0x1
	.2byte	0x450
	.byte	0x9
	.4byte	0xb3
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.byte	0x1
	.byte	0x9c
	.4byte	0x563
	.byte	0x14
	.string	"dev"
	.byte	0x1
	.2byte	0x450
	.byte	0x31
	.4byte	0x563
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0x15
	.4byte	.LASF92
	.byte	0x1
	.2byte	0x452
	.byte	0x9
	.4byte	0xb3
	.byte	0x2
	.byte	0x91
	.byte	0x6f
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x4f3
	.byte	0x13
	.4byte	.LASF90
	.byte	0x1
	.2byte	0x434
	.byte	0x9
	.4byte	0xb3
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.byte	0x1
	.byte	0x9c
	.4byte	0x5d5
	.byte	0x16
	.4byte	.LASF91
	.byte	0x1
	.2byte	0x434
	.byte	0x21
	.4byte	0x138
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0x14
	.string	"min"
	.byte	0x1
	.2byte	0x434
	.byte	0x30
	.4byte	0xbf
	.byte	0x2
	.byte	0x91
	.byte	0x5b
	.byte	0x14
	.string	"max"
	.byte	0x1
	.2byte	0x434
	.byte	0x3d
	.4byte	0xbf
	.byte	0x2
	.byte	0x91
	.byte	0x5a
	.byte	0x14
	.string	"dev"
	.byte	0x1
	.2byte	0x434
	.byte	0x55
	.4byte	0x5d5
	.byte	0x2
	.byte	0x91
	.byte	0x54
	.byte	0x15
	.4byte	.LASF92
	.byte	0x1
	.2byte	0x436
	.byte	0x9
	.4byte	0xb3
	.byte	0x2
	.byte	0x91
	.byte	0x6f
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x412
	.byte	0x17
	.4byte	.LASF93
	.byte	0x1
	.2byte	0x41e
	.byte	0x9
	.4byte	0xb3
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x1
	.byte	0x9c
	.4byte	0x627
	.byte	0x14
	.string	"dev"
	.byte	0x1
	.2byte	0x41e
	.byte	0x29
	.4byte	0x5d5
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0x15
	.4byte	.LASF92
	.byte	0x1
	.2byte	0x420
	.byte	0x9
	.4byte	0xb3
	.byte	0x2
	.byte	0x91
	.byte	0x6f
	.byte	0x18
	.string	"reg"
	.byte	0x1
	.2byte	0x421
	.byte	0xa
	.4byte	0xbf
	.byte	0x2
	.byte	0x91
	.byte	0x6e
	.byte	0
	.byte	0x17
	.4byte	.LASF94
	.byte	0x1
	.2byte	0x3f7
	.byte	0x9
	.4byte	0xb3
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.byte	0x1
	.byte	0x9c
	.4byte	0x693
	.byte	0x16
	.4byte	.LASF95
	.byte	0x1
	.2byte	0x3f7
	.byte	0x1e
	.4byte	0xbf
	.byte	0x2
	.byte	0x91
	.byte	0x5f
	.byte	0x14
	.string	"dev"
	.byte	0x1
	.2byte	0x3f7
	.byte	0x3b
	.4byte	0x5d5
	.byte	0x2
	.byte	0x91
	.byte	0x58
	.byte	0x15
	.4byte	.LASF92
	.byte	0x1
	.2byte	0x3f9
	.byte	0x9
	.4byte	0xb3
	.byte	0x2
	.byte	0x91
	.byte	0x6f
	.byte	0x18
	.string	"reg"
	.byte	0x1
	.2byte	0x3fa
	.byte	0xa
	.4byte	0xbf
	.byte	0x2
	.byte	0x91
	.byte	0x6d
	.byte	0x15
	.4byte	.LASF77
	.byte	0x1
	.2byte	0x3fb
	.byte	0xa
	.4byte	0xbf
	.byte	0x2
	.byte	0x91
	.byte	0x6e
	.byte	0
	.byte	0x17
	.4byte	.LASF96
	.byte	0x1
	.2byte	0x3bf
	.byte	0x9
	.4byte	0xb3
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x1
	.byte	0x9c
	.4byte	0x74f
	.byte	0x16
	.4byte	.LASF97
	.byte	0x1
	.2byte	0x3bf
	.byte	0x33
	.4byte	0x74f
	.byte	0x2
	.byte	0x91
	.byte	0x4c
	.byte	0x14
	.string	"dev"
	.byte	0x1
	.2byte	0x3bf
	.byte	0x4c
	.4byte	0x5d5
	.byte	0x2
	.byte	0x91
	.byte	0x48
	.byte	0x15
	.4byte	.LASF92
	.byte	0x1
	.2byte	0x3c1
	.byte	0x9
	.4byte	0xb3
	.byte	0x2
	.byte	0x91
	.byte	0x6f
	.byte	0x15
	.4byte	.LASF98
	.byte	0x1
	.2byte	0x3c2
	.byte	0xa
	.4byte	0x755
	.byte	0x2
	.byte	0x91
	.byte	0x50
	.byte	0x15
	.4byte	.LASF99
	.byte	0x1
	.2byte	0x3c3
	.byte	0xa
	.4byte	0xbf
	.byte	0x2
	.byte	0x91
	.byte	0x5f
	.byte	0x15
	.4byte	.LASF100
	.byte	0x1
	.2byte	0x3c4
	.byte	0xb
	.4byte	0xf4
	.byte	0x2
	.byte	0x91
	.byte	0x64
	.byte	0x15
	.4byte	.LASF101
	.byte	0x1
	.2byte	0x3c5
	.byte	0xb
	.4byte	0xf4
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0x15
	.4byte	.LASF102
	.byte	0x1
	.2byte	0x3c6
	.byte	0xb
	.4byte	0xdc
	.byte	0x2
	.byte	0x91
	.byte	0x62
	.byte	0x15
	.4byte	.LASF103
	.byte	0x1
	.2byte	0x3c7
	.byte	0xb
	.4byte	0xdc
	.byte	0x2
	.byte	0x91
	.byte	0x60
	.byte	0x15
	.4byte	.LASF104
	.byte	0x1
	.2byte	0x3c8
	.byte	0xa
	.4byte	0xbf
	.byte	0x2
	.byte	0x91
	.byte	0x6e
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x17c
	.byte	0xf
	.4byte	0xbf
	.4byte	0x765
	.byte	0x10
	.4byte	0xac
	.byte	0xe
	.byte	0
	.byte	0x13
	.4byte	.LASF105
	.byte	0x1
	.2byte	0x3aa
	.byte	0xa
	.4byte	0xbf
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x1
	.byte	0x9c
	.4byte	0x7b1
	.byte	0x14
	.string	"dur"
	.byte	0x1
	.2byte	0x3aa
	.byte	0x23
	.4byte	0xdc
	.byte	0x2
	.byte	0x91
	.byte	0x5e
	.byte	0x15
	.4byte	.LASF106
	.byte	0x1
	.2byte	0x3ac
	.byte	0xa
	.4byte	0xbf
	.byte	0x2
	.byte	0x91
	.byte	0x6f
	.byte	0x15
	.4byte	.LASF107
	.byte	0x1
	.2byte	0x3ad
	.byte	0xa
	.4byte	0xbf
	.byte	0x2
	.byte	0x91
	.byte	0x6e
	.byte	0
	.byte	0x13
	.4byte	.LASF108
	.byte	0x1
	.2byte	0x38e
	.byte	0x8
	.4byte	0x84d
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x1
	.byte	0x9c
	.4byte	0x84d
	.byte	0x16
	.4byte	.LASF109
	.byte	0x1
	.2byte	0x38e
	.byte	0x21
	.4byte	0xdc
	.byte	0x2
	.byte	0x91
	.byte	0x4e
	.byte	0x14
	.string	"dev"
	.byte	0x1
	.2byte	0x38e
	.byte	0x40
	.4byte	0x563
	.byte	0x2
	.byte	0x91
	.byte	0x48
	.byte	0x15
	.4byte	.LASF110
	.byte	0x1
	.2byte	0x390
	.byte	0x8
	.4byte	0x84d
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x15
	.4byte	.LASF111
	.byte	0x1
	.2byte	0x391
	.byte	0x8
	.4byte	0x84d
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0x15
	.4byte	.LASF112
	.byte	0x1
	.2byte	0x392
	.byte	0x8
	.4byte	0x84d
	.byte	0x2
	.byte	0x91
	.byte	0x64
	.byte	0x15
	.4byte	.LASF113
	.byte	0x1
	.2byte	0x393
	.byte	0x8
	.4byte	0x84d
	.byte	0x2
	.byte	0x91
	.byte	0x60
	.byte	0x15
	.4byte	.LASF114
	.byte	0x1
	.2byte	0x394
	.byte	0x8
	.4byte	0x84d
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0x15
	.4byte	.LASF115
	.byte	0x1
	.2byte	0x395
	.byte	0x8
	.4byte	0x84d
	.byte	0x2
	.byte	0x91
	.byte	0x58
	.byte	0
	.byte	0x3
	.byte	0x4
	.byte	0x4
	.4byte	.LASF116
	.byte	0x5
	.4byte	0x84d
	.byte	0x17
	.4byte	.LASF117
	.byte	0x1
	.2byte	0x372
	.byte	0x8
	.4byte	0x84d
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x1
	.byte	0x9c
	.4byte	0x90a
	.byte	0x16
	.4byte	.LASF118
	.byte	0x1
	.2byte	0x372
	.byte	0x25
	.4byte	0xdc
	.byte	0x3
	.byte	0x91
	.byte	0xde,0x7e
	.byte	0x16
	.4byte	.LASF99
	.byte	0x1
	.2byte	0x372
	.byte	0x3a
	.4byte	0xbf
	.byte	0x3
	.byte	0x91
	.byte	0xdd,0x7e
	.byte	0x14
	.string	"dev"
	.byte	0x1
	.2byte	0x372
	.byte	0x5e
	.4byte	0x563
	.byte	0x3
	.byte	0x91
	.byte	0xd8,0x7e
	.byte	0x15
	.4byte	.LASF119
	.byte	0x1
	.2byte	0x374
	.byte	0x8
	.4byte	0x84d
	.byte	0x2
	.byte	0x91
	.byte	0x60
	.byte	0x15
	.4byte	.LASF110
	.byte	0x1
	.2byte	0x375
	.byte	0x8
	.4byte	0x84d
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x15
	.4byte	.LASF111
	.byte	0x1
	.2byte	0x376
	.byte	0x8
	.4byte	0x84d
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0x15
	.4byte	.LASF112
	.byte	0x1
	.2byte	0x377
	.byte	0x8
	.4byte	0x84d
	.byte	0x2
	.byte	0x91
	.byte	0x64
	.byte	0x15
	.4byte	.LASF120
	.byte	0x1
	.2byte	0x379
	.byte	0xe
	.4byte	0x91a
	.byte	0x3
	.byte	0x91
	.byte	0xa0,0x7f
	.byte	0x15
	.4byte	.LASF121
	.byte	0x1
	.2byte	0x37c
	.byte	0xe
	.4byte	0x91a
	.byte	0x3
	.byte	0x91
	.byte	0xe0,0x7e
	.byte	0
	.byte	0xf
	.4byte	0x854
	.4byte	0x91a
	.byte	0x10
	.4byte	0xac
	.byte	0xf
	.byte	0
	.byte	0x5
	.4byte	0x90a
	.byte	0x13
	.4byte	.LASF122
	.byte	0x1
	.2byte	0x34e
	.byte	0x8
	.4byte	0x84d
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x1
	.byte	0x9c
	.4byte	0x9bb
	.byte	0x16
	.4byte	.LASF123
	.byte	0x1
	.2byte	0x34e
	.byte	0x1f
	.4byte	0xdc
	.byte	0x2
	.byte	0x91
	.byte	0x4e
	.byte	0x14
	.string	"dev"
	.byte	0x1
	.2byte	0x34e
	.byte	0x41
	.4byte	0x563
	.byte	0x2
	.byte	0x91
	.byte	0x48
	.byte	0x15
	.4byte	.LASF124
	.byte	0x1
	.2byte	0x350
	.byte	0x8
	.4byte	0x84d
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x15
	.4byte	.LASF110
	.byte	0x1
	.2byte	0x351
	.byte	0x8
	.4byte	0x84d
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0x15
	.4byte	.LASF111
	.byte	0x1
	.2byte	0x352
	.byte	0x8
	.4byte	0x84d
	.byte	0x2
	.byte	0x91
	.byte	0x64
	.byte	0x15
	.4byte	.LASF112
	.byte	0x1
	.2byte	0x353
	.byte	0x8
	.4byte	0x84d
	.byte	0x2
	.byte	0x91
	.byte	0x60
	.byte	0x15
	.4byte	.LASF113
	.byte	0x1
	.2byte	0x354
	.byte	0x8
	.4byte	0x84d
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0x15
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x355
	.byte	0x8
	.4byte	0x84d
	.byte	0x2
	.byte	0x91
	.byte	0x58
	.byte	0
	.byte	0x13
	.4byte	.LASF126
	.byte	0x1
	.2byte	0x32b
	.byte	0x8
	.4byte	0x84d
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x1
	.byte	0x9c
	.4byte	0xa37
	.byte	0x16
	.4byte	.LASF127
	.byte	0x1
	.2byte	0x32b
	.byte	0x1f
	.4byte	0xf4
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0x14
	.string	"dev"
	.byte	0x1
	.2byte	0x32b
	.byte	0x42
	.4byte	0x563
	.byte	0x2
	.byte	0x91
	.byte	0x58
	.byte	0x15
	.4byte	.LASF110
	.byte	0x1
	.2byte	0x32d
	.byte	0x8
	.4byte	0x84d
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0x15
	.4byte	.LASF111
	.byte	0x1
	.2byte	0x32e
	.byte	0x8
	.4byte	0x84d
	.byte	0x2
	.byte	0x91
	.byte	0x64
	.byte	0x15
	.4byte	.LASF112
	.byte	0x1
	.2byte	0x32f
	.byte	0x8
	.4byte	0x84d
	.byte	0x2
	.byte	0x91
	.byte	0x60
	.byte	0x15
	.4byte	.LASF128
	.byte	0x1
	.2byte	0x330
	.byte	0x8
	.4byte	0x84d
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0x17
	.4byte	.LASF129
	.byte	0x1
	.2byte	0x302
	.byte	0x8
	.4byte	0x84d
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x1
	.byte	0x9c
	.4byte	0xaa3
	.byte	0x16
	.4byte	.LASF130
	.byte	0x1
	.2byte	0x302
	.byte	0x22
	.4byte	0xf4
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0x14
	.string	"dev"
	.byte	0x1
	.2byte	0x302
	.byte	0x3f
	.4byte	0x5d5
	.byte	0x2
	.byte	0x91
	.byte	0x58
	.byte	0x15
	.4byte	.LASF110
	.byte	0x1
	.2byte	0x304
	.byte	0x8
	.4byte	0x84d
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x15
	.4byte	.LASF111
	.byte	0x1
	.2byte	0x305
	.byte	0x8
	.4byte	0x84d
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0x15
	.4byte	.LASF131
	.byte	0x1
	.2byte	0x306
	.byte	0x8
	.4byte	0x84d
	.byte	0x2
	.byte	0x91
	.byte	0x64
	.byte	0
	.byte	0x17
	.4byte	.LASF132
	.byte	0x1
	.2byte	0x2db
	.byte	0x9
	.4byte	0xb3
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x1
	.byte	0x9c
	.4byte	0xb0f
	.byte	0x14
	.string	"dev"
	.byte	0x1
	.2byte	0x2db
	.byte	0x2b
	.4byte	0x5d5
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0x15
	.4byte	.LASF92
	.byte	0x1
	.2byte	0x2dd
	.byte	0x9
	.4byte	0xb3
	.byte	0x2
	.byte	0x91
	.byte	0x6f
	.byte	0x15
	.4byte	.LASF133
	.byte	0x1
	.2byte	0x2df
	.byte	0xa
	.4byte	0xbf
	.byte	0x2
	.byte	0x91
	.byte	0x6e
	.byte	0x15
	.4byte	.LASF134
	.byte	0x1
	.2byte	0x2e0
	.byte	0xa
	.4byte	0xbf
	.byte	0x2
	.byte	0x91
	.byte	0x6d
	.byte	0x15
	.4byte	.LASF135
	.byte	0x1
	.2byte	0x2e1
	.byte	0xa
	.4byte	0xbf
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0x17
	.4byte	.LASF136
	.byte	0x1
	.2byte	0x2bb
	.byte	0x9
	.4byte	0xb3
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x1
	.byte	0x9c
	.4byte	0xb75
	.byte	0x14
	.string	"dev"
	.byte	0x1
	.2byte	0x2bb
	.byte	0x2b
	.4byte	0x5d5
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0x15
	.4byte	.LASF92
	.byte	0x1
	.2byte	0x2bd
	.byte	0x9
	.4byte	0xb3
	.byte	0x2
	.byte	0x91
	.byte	0x6f
	.byte	0x19
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.byte	0x15
	.4byte	.LASF95
	.byte	0x1
	.2byte	0x2c3
	.byte	0xb
	.4byte	0xb75
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x15
	.4byte	.LASF135
	.byte	0x1
	.2byte	0x2c4
	.byte	0xb
	.4byte	0xb75
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0
	.byte	0
	.byte	0xf
	.4byte	0xbf
	.4byte	0xb85
	.byte	0x10
	.4byte	0xac
	.byte	0x1
	.byte	0
	.byte	0x17
	.4byte	.LASF137
	.byte	0x1
	.2byte	0x26c
	.byte	0x8
	.4byte	0xb3
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x1
	.byte	0x9c
	.4byte	0xbd1
	.byte	0x14
	.string	"dev"
	.byte	0x1
	.2byte	0x26c
	.byte	0x2a
	.4byte	0x5d5
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0x15
	.4byte	.LASF92
	.byte	0x1
	.2byte	0x26e
	.byte	0x9
	.4byte	0xb3
	.byte	0x2
	.byte	0x91
	.byte	0x6f
	.byte	0x15
	.4byte	.LASF138
	.byte	0x1
	.2byte	0x270
	.byte	0xa
	.4byte	0xbf
	.byte	0x2
	.byte	0x91
	.byte	0x6e
	.byte	0
	.byte	0x17
	.4byte	.LASF139
	.byte	0x1
	.2byte	0x255
	.byte	0x8
	.4byte	0xb3
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x1
	.byte	0x9c
	.4byte	0xc1d
	.byte	0x16
	.4byte	.LASF97
	.byte	0x1
	.2byte	0x255
	.byte	0x39
	.4byte	0x74f
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0x14
	.string	"dev"
	.byte	0x1
	.2byte	0x255
	.byte	0x52
	.4byte	0x5d5
	.byte	0x2
	.byte	0x91
	.byte	0x58
	.byte	0x15
	.4byte	.LASF92
	.byte	0x1
	.2byte	0x257
	.byte	0x9
	.4byte	0xb3
	.byte	0x2
	.byte	0x91
	.byte	0x6f
	.byte	0
	.byte	0x1a
	.4byte	.LASF144
	.byte	0x1
	.2byte	0x234
	.byte	0x6
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x1
	.byte	0x9c
	.4byte	0xc85
	.byte	0x16
	.4byte	.LASF140
	.byte	0x1
	.2byte	0x234
	.byte	0x27
	.4byte	0xc85
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0x14
	.string	"dev"
	.byte	0x1
	.2byte	0x234
	.byte	0x4a
	.4byte	0x563
	.byte	0x2
	.byte	0x91
	.byte	0x58
	.byte	0x15
	.4byte	.LASF141
	.byte	0x1
	.2byte	0x236
	.byte	0xb
	.4byte	0xf4
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0x15
	.4byte	.LASF142
	.byte	0x1
	.2byte	0x237
	.byte	0xb
	.4byte	0xf4
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x15
	.4byte	.LASF143
	.byte	0x1
	.2byte	0x238
	.byte	0xa
	.4byte	0xc8b
	.byte	0x2
	.byte	0x91
	.byte	0x60
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0xdc
	.byte	0xf
	.4byte	0xbf
	.4byte	0xc9b
	.byte	0x10
	.4byte	0xac
	.byte	0x5
	.byte	0
	.byte	0x1a
	.4byte	.LASF145
	.byte	0x1
	.2byte	0x21b
	.byte	0x6
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x1
	.byte	0x9c
	.4byte	0xd03
	.byte	0x16
	.4byte	.LASF140
	.byte	0x1
	.2byte	0x21b
	.byte	0x26
	.4byte	0xdc
	.byte	0x2
	.byte	0x91
	.byte	0x5e
	.byte	0x14
	.string	"dev"
	.byte	0x1
	.2byte	0x21b
	.byte	0x43
	.4byte	0x5d5
	.byte	0x2
	.byte	0x91
	.byte	0x58
	.byte	0x15
	.4byte	.LASF141
	.byte	0x1
	.2byte	0x21d
	.byte	0xb
	.4byte	0xf4
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0x15
	.4byte	.LASF142
	.byte	0x1
	.2byte	0x21e
	.byte	0xb
	.4byte	0xf4
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x15
	.4byte	.LASF143
	.byte	0x1
	.2byte	0x21f
	.byte	0xa
	.4byte	0xc8b
	.byte	0x2
	.byte	0x91
	.byte	0x60
	.byte	0
	.byte	0x17
	.4byte	.LASF146
	.byte	0x1
	.2byte	0x208
	.byte	0x8
	.4byte	0xb3
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x1
	.byte	0x9c
	.4byte	0xd4f
	.byte	0x14
	.string	"dev"
	.byte	0x1
	.2byte	0x208
	.byte	0x32
	.4byte	0x5d5
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0x15
	.4byte	.LASF92
	.byte	0x1
	.2byte	0x20a
	.byte	0x9
	.4byte	0xb3
	.byte	0x2
	.byte	0x91
	.byte	0x6f
	.byte	0x15
	.4byte	.LASF147
	.byte	0x1
	.2byte	0x20b
	.byte	0xa
	.4byte	0xbf
	.byte	0x2
	.byte	0x91
	.byte	0x6e
	.byte	0
	.byte	0x17
	.4byte	.LASF148
	.byte	0x1
	.2byte	0x1e1
	.byte	0x8
	.4byte	0xb3
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x1
	.byte	0x9c
	.4byte	0xdbb
	.byte	0x14
	.string	"dev"
	.byte	0x1
	.2byte	0x1e1
	.byte	0x32
	.4byte	0x5d5
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0x15
	.4byte	.LASF92
	.byte	0x1
	.2byte	0x1e3
	.byte	0x9
	.4byte	0xb3
	.byte	0x2
	.byte	0x91
	.byte	0x6f
	.byte	0x15
	.4byte	.LASF149
	.byte	0x1
	.2byte	0x1e4
	.byte	0xa
	.4byte	0xbf
	.byte	0x2
	.byte	0x91
	.byte	0x6d
	.byte	0x15
	.4byte	.LASF150
	.byte	0x1
	.2byte	0x1e5
	.byte	0xa
	.4byte	0xbf
	.byte	0x2
	.byte	0x91
	.byte	0x6e
	.byte	0x15
	.4byte	.LASF95
	.byte	0x1
	.2byte	0x1e6
	.byte	0xa
	.4byte	0xbf
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0x17
	.4byte	.LASF151
	.byte	0x1
	.2byte	0x1ad
	.byte	0x8
	.4byte	0xb3
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x1
	.byte	0x9c
	.4byte	0xe27
	.byte	0x16
	.4byte	.LASF152
	.byte	0x1
	.2byte	0x1ad
	.byte	0x2c
	.4byte	0xdc
	.byte	0x2
	.byte	0x91
	.byte	0x5e
	.byte	0x14
	.string	"dev"
	.byte	0x1
	.2byte	0x1ad
	.byte	0x51
	.4byte	0x5d5
	.byte	0x2
	.byte	0x91
	.byte	0x58
	.byte	0x15
	.4byte	.LASF92
	.byte	0x1
	.2byte	0x1af
	.byte	0x9
	.4byte	0xb3
	.byte	0x2
	.byte	0x91
	.byte	0x6f
	.byte	0x15
	.4byte	.LASF95
	.byte	0x1
	.2byte	0x1b1
	.byte	0xa
	.4byte	0xbf
	.byte	0x2
	.byte	0x91
	.byte	0x6e
	.byte	0x15
	.4byte	.LASF153
	.byte	0x1
	.2byte	0x1b2
	.byte	0xa
	.4byte	0xc8b
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0
	.byte	0x17
	.4byte	.LASF154
	.byte	0x1
	.2byte	0x131
	.byte	0x8
	.4byte	0xb3
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x1
	.byte	0x9c
	.4byte	0xed3
	.byte	0x16
	.4byte	.LASF152
	.byte	0x1
	.2byte	0x131
	.byte	0x2c
	.4byte	0xdc
	.byte	0x2
	.byte	0x91
	.byte	0x4e
	.byte	0x14
	.string	"dev"
	.byte	0x1
	.2byte	0x131
	.byte	0x51
	.4byte	0x5d5
	.byte	0x2
	.byte	0x91
	.byte	0x48
	.byte	0x15
	.4byte	.LASF92
	.byte	0x1
	.2byte	0x133
	.byte	0x9
	.4byte	0xb3
	.byte	0x2
	.byte	0x91
	.byte	0x6f
	.byte	0x15
	.4byte	.LASF95
	.byte	0x1
	.2byte	0x134
	.byte	0xa
	.4byte	0xbf
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x15
	.4byte	.LASF97
	.byte	0x1
	.2byte	0x135
	.byte	0xa
	.4byte	0xbf
	.byte	0x2
	.byte	0x91
	.byte	0x6b
	.byte	0x15
	.4byte	.LASF155
	.byte	0x1
	.2byte	0x136
	.byte	0xa
	.4byte	0xbf
	.byte	0x2
	.byte	0x91
	.byte	0x6e
	.byte	0x15
	.4byte	.LASF156
	.byte	0x1
	.2byte	0x137
	.byte	0xa
	.4byte	0xc8b
	.byte	0x2
	.byte	0x91
	.byte	0x64
	.byte	0x15
	.4byte	.LASF153
	.byte	0x1
	.2byte	0x138
	.byte	0xa
	.4byte	0xc8b
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0x15
	.4byte	.LASF157
	.byte	0x1
	.2byte	0x139
	.byte	0xa
	.4byte	0xbf
	.byte	0x2
	.byte	0x91
	.byte	0x6d
	.byte	0
	.byte	0x17
	.4byte	.LASF158
	.byte	0x1
	.2byte	0x10f
	.byte	0x8
	.4byte	0xb3
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x1
	.byte	0x9c
	.4byte	0xf2f
	.byte	0x14
	.string	"dev"
	.byte	0x1
	.2byte	0x10f
	.byte	0x2d
	.4byte	0x5d5
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0x15
	.4byte	.LASF92
	.byte	0x1
	.2byte	0x111
	.byte	0x9
	.4byte	0xb3
	.byte	0x2
	.byte	0x91
	.byte	0x6f
	.byte	0x15
	.4byte	.LASF95
	.byte	0x1
	.2byte	0x112
	.byte	0xa
	.4byte	0xbf
	.byte	0x2
	.byte	0x91
	.byte	0x6e
	.byte	0x15
	.4byte	.LASF159
	.byte	0x1
	.2byte	0x114
	.byte	0xa
	.4byte	0xbf
	.byte	0x2
	.byte	0x91
	.byte	0x6d
	.byte	0
	.byte	0x1b
	.4byte	.LASF160
	.byte	0x1
	.byte	0xe8
	.byte	0x8
	.4byte	0xb3
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x1
	.byte	0x9c
	.4byte	0xfb7
	.byte	0x1c
	.4byte	.LASF95
	.byte	0x1
	.byte	0xe8
	.byte	0x27
	.4byte	0xfb7
	.byte	0x3
	.byte	0x91
	.byte	0xbc,0x7f
	.byte	0x1c
	.4byte	.LASF135
	.byte	0x1
	.byte	0xe8
	.byte	0x40
	.4byte	0xfb7
	.byte	0x3
	.byte	0x91
	.byte	0xb8,0x7f
	.byte	0x1d
	.string	"len"
	.byte	0x1
	.byte	0xe8
	.byte	0x52
	.4byte	0xbf
	.byte	0x3
	.byte	0x91
	.byte	0xb7,0x7f
	.byte	0x1d
	.string	"dev"
	.byte	0x1
	.byte	0xe8
	.byte	0x6a
	.4byte	0x5d5
	.byte	0x3
	.byte	0x91
	.byte	0xb0,0x7f
	.byte	0x1e
	.4byte	.LASF92
	.byte	0x1
	.byte	0xea
	.byte	0x9
	.4byte	0xb3
	.byte	0x2
	.byte	0x91
	.byte	0x6f
	.byte	0x1e
	.4byte	.LASF161
	.byte	0x1
	.byte	0xec
	.byte	0xa
	.4byte	0xfbd
	.byte	0x2
	.byte	0x91
	.byte	0x44
	.byte	0x1e
	.4byte	.LASF162
	.byte	0x1
	.byte	0xed
	.byte	0xb
	.4byte	0xdc
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0xcb
	.byte	0xf
	.4byte	0xbf
	.4byte	0xfcd
	.byte	0x10
	.4byte	0xac
	.byte	0x27
	.byte	0
	.byte	0x1b
	.4byte	.LASF163
	.byte	0x1
	.byte	0xd9
	.byte	0x8
	.4byte	0xb3
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.byte	0x1
	.byte	0x9c
	.4byte	0x1033
	.byte	0x1c
	.4byte	.LASF95
	.byte	0x1
	.byte	0xd9
	.byte	0x20
	.4byte	0xbf
	.byte	0x2
	.byte	0x91
	.byte	0x5f
	.byte	0x1c
	.4byte	.LASF135
	.byte	0x1
	.byte	0xd9
	.byte	0x33
	.4byte	0x138
	.byte	0x2
	.byte	0x91
	.byte	0x58
	.byte	0x1d
	.string	"len"
	.byte	0x1
	.byte	0xd9
	.byte	0x46
	.4byte	0xdc
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0x1d
	.string	"dev"
	.byte	0x1
	.byte	0xd9
	.byte	0x5e
	.4byte	0x5d5
	.byte	0x2
	.byte	0x91
	.byte	0x54
	.byte	0x1e
	.4byte	.LASF92
	.byte	0x1
	.byte	0xdb
	.byte	0x9
	.4byte	0xb3
	.byte	0x2
	.byte	0x91
	.byte	0x6f
	.byte	0
	.byte	0x1f
	.4byte	.LASF164
	.byte	0x1
	.byte	0xbd
	.byte	0x8
	.4byte	0xb3
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.byte	0x1
	.byte	0x9c
	.byte	0x1d
	.string	"dev"
	.byte	0x1
	.byte	0xbd
	.byte	0x27
	.4byte	0x5d5
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0x1e
	.4byte	.LASF92
	.byte	0x1
	.byte	0xbf
	.byte	0x9
	.4byte	0xb3
	.byte	0x2
	.byte	0x91
	.byte	0x6f
	.byte	0
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
	.byte	0x26
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x6
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
	.byte	0x7
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x8
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
	.byte	0x9
	.byte	0x5
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xa
	.byte	0x15
	.byte	0x1
	.byte	0x27
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xb
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
	.byte	0xc
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x1c
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
	.byte	0x5
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
	.byte	0xf
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x10
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x11
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
	.byte	0x12
	.byte	0x2e
	.byte	0
	.byte	0x3f
	.byte	0x19
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x40
	.byte	0x18
	.byte	0x97,0x42
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0x13
	.byte	0x2e
	.byte	0x1
	.byte	0x3f
	.byte	0x19
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x27
	.byte	0x19
	.byte	0x49
	.byte	0x13
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x40
	.byte	0x18
	.byte	0x97,0x42
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x14
	.byte	0x5
	.byte	0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x15
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
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x16
	.byte	0x5
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
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x17
	.byte	0x2e
	.byte	0x1
	.byte	0x3f
	.byte	0x19
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x27
	.byte	0x19
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
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x18
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x19
	.byte	0xb
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0x1a
	.byte	0x2e
	.byte	0x1
	.byte	0x3f
	.byte	0x19
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x27
	.byte	0x19
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x40
	.byte	0x18
	.byte	0x96,0x42
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1b
	.byte	0x2e
	.byte	0x1
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
	.byte	0x27
	.byte	0x19
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
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1c
	.byte	0x5
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
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x1d
	.byte	0x5
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
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x1e
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
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x1f
	.byte	0x2e
	.byte	0x1
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
	.byte	0x27
	.byte	0x19
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
.LASF155:
	.string	"count"
.LASF100:
	.string	"adc_temp"
.LASF105:
	.string	"calc_heater_dur"
.LASF24:
	.string	"BME680_SPI_INTF"
.LASF125:
	.string	"temp_comp"
.LASF1:
	.string	"__uint8_t"
.LASF59:
	.string	"res_heat_range"
.LASF150:
	.string	"pow_mode"
.LASF101:
	.string	"adc_pres"
.LASF149:
	.string	"tmp_pow_mode"
.LASF88:
	.string	"com_rslt"
.LASF34:
	.string	"bme680_calib_data"
.LASF13:
	.string	"long long unsigned int"
.LASF70:
	.string	"run_gas"
.LASF165:
	.string	"GNU C17 8.2.0 -march=rv32ifd -mabi=ilp32d -g -O0"
.LASF0:
	.string	"__int8_t"
.LASF106:
	.string	"factor"
.LASF119:
	.string	"calc_gas_res"
.LASF17:
	.string	"int16_t"
.LASF12:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF146:
	.string	"bme680_get_sensor_mode"
.LASF92:
	.string	"rslt"
.LASF98:
	.string	"buff"
.LASF160:
	.string	"bme680_set_regs"
.LASF138:
	.string	"temp_var"
.LASF89:
	.string	"null_ptr_check"
.LASF95:
	.string	"reg_addr"
.LASF69:
	.string	"heatr_ctrl"
.LASF130:
	.string	"temp_adc"
.LASF132:
	.string	"get_gas_config"
.LASF109:
	.string	"temp"
.LASF9:
	.string	"long int"
.LASF124:
	.string	"calc_hum"
.LASF115:
	.string	"res_heat"
.LASF64:
	.string	"os_temp"
.LASF166:
	.string	"BME680_driver_patched/bme680.c"
.LASF118:
	.string	"gas_res_adc"
.LASF18:
	.string	"uint16_t"
.LASF142:
	.string	"meas_cycles"
.LASF61:
	.string	"range_sw_err"
.LASF29:
	.string	"temperature"
.LASF151:
	.string	"bme680_get_sensor_settings"
.LASF65:
	.string	"os_pres"
.LASF32:
	.string	"gas_resistance"
.LASF10:
	.string	"__uint32_t"
.LASF58:
	.string	"t_fine"
.LASF107:
	.string	"durval"
.LASF4:
	.string	"__int16_t"
.LASF140:
	.string	"duration"
.LASF72:
	.string	"heatr_dur"
.LASF152:
	.string	"desired_settings"
.LASF36:
	.string	"par_h2"
.LASF91:
	.string	"value"
.LASF68:
	.string	"nb_conv"
.LASF141:
	.string	"tph_dur"
.LASF14:
	.string	"unsigned int"
.LASF169:
	.string	"coeff_array"
.LASF145:
	.string	"bme680_set_profile_dur"
.LASF110:
	.string	"var1"
.LASF35:
	.string	"par_h1"
.LASF11:
	.string	"long unsigned int"
.LASF37:
	.string	"par_h3"
.LASF38:
	.string	"par_h4"
.LASF39:
	.string	"par_h5"
.LASF40:
	.string	"par_h6"
.LASF41:
	.string	"par_h7"
.LASF71:
	.string	"heatr_temp"
.LASF25:
	.string	"BME680_I2C_INTF"
.LASF97:
	.string	"data"
.LASF158:
	.string	"bme680_soft_reset"
.LASF7:
	.string	"short unsigned int"
.LASF128:
	.string	"calc_pres"
.LASF108:
	.string	"calc_heater_res"
.LASF90:
	.string	"boundary_check"
.LASF31:
	.string	"humidity"
.LASF48:
	.string	"par_p1"
.LASF49:
	.string	"par_p2"
.LASF50:
	.string	"par_p3"
.LASF51:
	.string	"par_p4"
.LASF52:
	.string	"par_p5"
.LASF53:
	.string	"par_p6"
.LASF54:
	.string	"par_p7"
.LASF55:
	.string	"par_p8"
.LASF56:
	.string	"par_p9"
.LASF60:
	.string	"res_heat_val"
.LASF94:
	.string	"set_mem_page"
.LASF81:
	.string	"gas_sett"
.LASF163:
	.string	"bme680_get_regs"
.LASF123:
	.string	"hum_adc"
.LASF79:
	.string	"calib"
.LASF86:
	.string	"write"
.LASF129:
	.string	"calc_temperature"
.LASF33:
	.string	"bme680_field_data"
.LASF76:
	.string	"intf"
.LASF77:
	.string	"mem_page"
.LASF21:
	.string	"long double"
.LASF28:
	.string	"meas_index"
.LASF127:
	.string	"pres_adc"
.LASF167:
	.string	"/home/billtsou/Desktop/UPP/sunflower-simulator/benchmarks/source/bme680-conversion-routines"
.LASF30:
	.string	"pressure"
.LASF82:
	.string	"power_mode"
.LASF156:
	.string	"reg_array"
.LASF67:
	.string	"bme680_gas_sett"
.LASF116:
	.string	"float"
.LASF73:
	.string	"bme680_dev"
.LASF80:
	.string	"tph_sett"
.LASF117:
	.string	"calc_gas_resistance"
.LASF23:
	.string	"bme680_delay_fptr_t"
.LASF148:
	.string	"bme680_set_sensor_mode"
.LASF22:
	.string	"bme680_com_fptr_t"
.LASF19:
	.string	"int32_t"
.LASF3:
	.string	"unsigned char"
.LASF104:
	.string	"tries"
.LASF168:
	.string	"bme680_intf"
.LASF5:
	.string	"short int"
.LASF126:
	.string	"calc_pressure"
.LASF93:
	.string	"get_mem_page"
.LASF159:
	.string	"soft_rst_cmd"
.LASF121:
	.string	"lookup_k2_range"
.LASF135:
	.string	"reg_data"
.LASF84:
	.string	"info_msg"
.LASF131:
	.string	"calc_temp"
.LASF102:
	.string	"adc_hum"
.LASF87:
	.string	"delay_ms"
.LASF62:
	.string	"bme680_tph_sett"
.LASF20:
	.string	"uint32_t"
.LASF74:
	.string	"chip_id"
.LASF122:
	.string	"calc_humidity"
.LASF133:
	.string	"reg_addr1"
.LASF134:
	.string	"reg_addr2"
.LASF161:
	.string	"tmp_buff"
.LASF136:
	.string	"set_gas_config"
.LASF147:
	.string	"mode"
.LASF139:
	.string	"bme680_get_sensor_data"
.LASF6:
	.string	"__uint16_t"
.LASF162:
	.string	"index"
.LASF8:
	.string	"__int32_t"
.LASF111:
	.string	"var2"
.LASF112:
	.string	"var3"
.LASF113:
	.string	"var4"
.LASF114:
	.string	"var5"
.LASF96:
	.string	"read_field_data"
.LASF157:
	.string	"intended_power_mode"
.LASF42:
	.string	"par_gh1"
.LASF43:
	.string	"par_gh2"
.LASF44:
	.string	"par_gh3"
.LASF63:
	.string	"os_hum"
.LASF170:
	.string	"parseCSv"
.LASF15:
	.string	"int8_t"
.LASF27:
	.string	"gas_index"
.LASF66:
	.string	"filter"
.LASF137:
	.string	"get_calib_data"
.LASF144:
	.string	"bme680_get_profile_dur"
.LASF78:
	.string	"amb_temp"
.LASF26:
	.string	"status"
.LASF120:
	.string	"lookup_k1_range"
.LASF103:
	.string	"adc_gas_res"
.LASF143:
	.string	"os_to_meas_cycles"
.LASF16:
	.string	"uint8_t"
.LASF83:
	.string	"new_fields"
.LASF85:
	.string	"read"
.LASF45:
	.string	"par_t1"
.LASF46:
	.string	"par_t2"
.LASF47:
	.string	"par_t3"
.LASF57:
	.string	"par_p10"
.LASF154:
	.string	"bme680_set_sensor_settings"
.LASF153:
	.string	"data_array"
.LASF164:
	.string	"bme680_init"
.LASF99:
	.string	"gas_range"
.LASF75:
	.string	"dev_id"
	.ident	"GCC: (GNU) 8.2.0"
