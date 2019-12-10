
newton_rapson.out:     file format elf32-littleriscv


Disassembly of section .text:

08004000 <_start>:
init():
/home/billtsou/Desktop/UPP/sunflower-simulator/benchmarks/source/riscv_newton-raphson-orig/init.S:9

_start:
init:
.option push
.option norelax
	la	gp, __global_pointer$
 8004000:	00007197          	auipc	gp,0x7
 8004004:	16818193          	addi	gp,gp,360 # 800b168 <__global_pointer$>
/home/billtsou/Desktop/UPP/sunflower-simulator/benchmarks/source/riscv_newton-raphson-orig/init.S:11
.option pop
	call	main;
 8004008:	15c000ef          	jal	ra,8004164 <main>
/home/billtsou/Desktop/UPP/sunflower-simulator/benchmarks/source/riscv_newton-raphson-orig/init.S:12
	call	exit;
 800400c:	6cc020ef          	jal	ra,80066d8 <exit>

08004010 <__errno>:
	...

0800401c <f>:
f():

float cConst = 6;
float bConst = 2;

float f(float x)
{
 800401c:	fe010113          	addi	sp,sp,-32
 8004020:	00812e23          	sw	s0,28(sp)
 8004024:	02010413          	addi	s0,sp,32
 8004028:	fea42627          	fsw	fa0,-20(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/benchmarks/source/riscv_newton-raphson-orig/newton_rapson.c:13
	return x*x + bConst*x - cConst;
 800402c:	fec42707          	flw	fa4,-20(s0)
 8004030:	fec42787          	flw	fa5,-20(s0)
 8004034:	10f77753          	fmul.s	fa4,fa4,fa5
 8004038:	8081a687          	flw	fa3,-2040(gp) # 800a970 <bConst>
 800403c:	fec42787          	flw	fa5,-20(s0)
 8004040:	10f6f7d3          	fmul.s	fa5,fa3,fa5
 8004044:	00f77753          	fadd.s	fa4,fa4,fa5
 8004048:	0800b7b7          	lui	a5,0x800b
 800404c:	96c7a787          	flw	fa5,-1684(a5) # 800a96c <cConst>
 8004050:	08f777d3          	fsub.s	fa5,fa4,fa5
/home/billtsou/Desktop/UPP/sunflower-simulator/benchmarks/source/riscv_newton-raphson-orig/newton_rapson.c:14
}
 8004054:	20f78553          	fmv.s	fa0,fa5
 8004058:	01c12403          	lw	s0,28(sp)
 800405c:	02010113          	addi	sp,sp,32
 8004060:	00008067          	ret

08004064 <df>:
df():
/home/billtsou/Desktop/UPP/sunflower-simulator/benchmarks/source/riscv_newton-raphson-orig/newton_rapson.c:17

float df(float x)
{
 8004064:	fe010113          	addi	sp,sp,-32
 8004068:	00812e23          	sw	s0,28(sp)
 800406c:	02010413          	addi	s0,sp,32
 8004070:	fea42627          	fsw	fa0,-20(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/benchmarks/source/riscv_newton-raphson-orig/newton_rapson.c:18
	return 2*x + bConst;
 8004074:	fec42787          	flw	fa5,-20(s0)
 8004078:	00f7f753          	fadd.s	fa4,fa5,fa5
 800407c:	8081a787          	flw	fa5,-2040(gp) # 800a970 <bConst>
 8004080:	00f777d3          	fadd.s	fa5,fa4,fa5
/home/billtsou/Desktop/UPP/sunflower-simulator/benchmarks/source/riscv_newton-raphson-orig/newton_rapson.c:19
}
 8004084:	20f78553          	fmv.s	fa0,fa5
 8004088:	01c12403          	lw	s0,28(sp)
 800408c:	02010113          	addi	sp,sp,32
 8004090:	00008067          	ret

08004094 <percentage_error>:
percentage_error():
/home/billtsou/Desktop/UPP/sunflower-simulator/benchmarks/source/riscv_newton-raphson-orig/newton_rapson.c:21

float percentage_error(float x, float y) {
 8004094:	fd010113          	addi	sp,sp,-48
 8004098:	02112623          	sw	ra,44(sp)
 800409c:	02812423          	sw	s0,40(sp)
 80040a0:	03010413          	addi	s0,sp,48
 80040a4:	fca42e27          	fsw	fa0,-36(s0)
 80040a8:	fcb42c27          	fsw	fa1,-40(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/benchmarks/source/riscv_newton-raphson-orig/newton_rapson.c:22
	if (x == y) {
 80040ac:	fdc42707          	flw	fa4,-36(s0)
 80040b0:	fd842787          	flw	fa5,-40(s0)
 80040b4:	a0f727d3          	feq.s	a5,fa4,fa5
 80040b8:	00078663          	beqz	a5,80040c4 <percentage_error+0x30>
/home/billtsou/Desktop/UPP/sunflower-simulator/benchmarks/source/riscv_newton-raphson-orig/newton_rapson.c:23
		return 0;
 80040bc:	f00007d3          	fmv.s.x	fa5,zero
 80040c0:	0500006f          	j	8004110 <percentage_error+0x7c>
/home/billtsou/Desktop/UPP/sunflower-simulator/benchmarks/source/riscv_newton-raphson-orig/newton_rapson.c:25
	}
	float diff = fabsf(x - y);
 80040c4:	fdc42707          	flw	fa4,-36(s0)
 80040c8:	fd842787          	flw	fa5,-40(s0)
 80040cc:	08f777d3          	fsub.s	fa5,fa4,fa5
 80040d0:	20f7a7d3          	fabs.s	fa5,fa5
 80040d4:	fef42627          	fsw	fa5,-20(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/benchmarks/source/riscv_newton-raphson-orig/newton_rapson.c:26
	float min = fminf(fabsf(x), fabsf(y));
 80040d8:	fdc42787          	flw	fa5,-36(s0)
 80040dc:	20f7a753          	fabs.s	fa4,fa5
 80040e0:	fd842787          	flw	fa5,-40(s0)
 80040e4:	20f7a7d3          	fabs.s	fa5,fa5
 80040e8:	20f785d3          	fmv.s	fa1,fa5
 80040ec:	20e70553          	fmv.s	fa0,fa4
 80040f0:	26d040ef          	jal	ra,8008b5c <fminf>
 80040f4:	fea42427          	fsw	fa0,-24(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/benchmarks/source/riscv_newton-raphson-orig/newton_rapson.c:27
	return diff / min * 100;
 80040f8:	fec42707          	flw	fa4,-20(s0)
 80040fc:	fe842787          	flw	fa5,-24(s0)
 8004100:	18f77753          	fdiv.s	fa4,fa4,fa5
 8004104:	080097b7          	lui	a5,0x8009
 8004108:	c2c7a787          	flw	fa5,-980(a5) # 8008c2c <__fpclassifyf+0x6c>
 800410c:	10f777d3          	fmul.s	fa5,fa4,fa5
/home/billtsou/Desktop/UPP/sunflower-simulator/benchmarks/source/riscv_newton-raphson-orig/newton_rapson.c:28
}
 8004110:	20f78553          	fmv.s	fa0,fa5
 8004114:	02c12083          	lw	ra,44(sp)
 8004118:	02812403          	lw	s0,40(sp)
 800411c:	03010113          	addi	sp,sp,48
 8004120:	00008067          	ret

08004124 <newton_rapson>:
newton_rapson():
/home/billtsou/Desktop/UPP/sunflower-simulator/benchmarks/source/riscv_newton-raphson-orig/newton_rapson.c:30

void newton_rapson(void) {
 8004124:	fe010113          	addi	sp,sp,-32
 8004128:	00112e23          	sw	ra,28(sp)
 800412c:	00812c23          	sw	s0,24(sp)
 8004130:	02010413          	addi	s0,sp,32
/home/billtsou/Desktop/UPP/sunflower-simulator/benchmarks/source/riscv_newton-raphson-orig/newton_rapson.c:31
	float x = 0;
 8004134:	fe042623          	sw	zero,-20(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/benchmarks/source/riscv_newton-raphson-orig/newton_rapson.c:32
	float x_new = x - f(x); ///df(x);
 8004138:	fec42507          	flw	fa0,-20(s0)
 800413c:	ee1ff0ef          	jal	ra,800401c <f>
 8004140:	20a50753          	fmv.s	fa4,fa0
 8004144:	fec42787          	flw	fa5,-20(s0)
 8004148:	08e7f7d3          	fsub.s	fa5,fa5,fa4
 800414c:	fef42427          	fsw	fa5,-24(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/benchmarks/source/riscv_newton-raphson-orig/newton_rapson.c:44
		diff = x_new - x;
		printf("x_new %f diff %f\n",x_new,diff);	
	}
	*/
	//printf("x_new2 is %f\n",x_new);	
}
 8004150:	00000013          	nop
 8004154:	01c12083          	lw	ra,28(sp)
 8004158:	01812403          	lw	s0,24(sp)
 800415c:	02010113          	addi	sp,sp,32
 8004160:	00008067          	ret

08004164 <main>:
main():
/home/billtsou/Desktop/UPP/sunflower-simulator/benchmarks/source/riscv_newton-raphson-orig/newton_rapson.c:47

int main(void)
{
 8004164:	ff010113          	addi	sp,sp,-16
 8004168:	00112623          	sw	ra,12(sp)
 800416c:	00812423          	sw	s0,8(sp)
 8004170:	01010413          	addi	s0,sp,16
/home/billtsou/Desktop/UPP/sunflower-simulator/benchmarks/source/riscv_newton-raphson-orig/newton_rapson.c:81
			newton_rapson();
		}
	}
	*/

	printf("Starting Newton-Rapson3\n");
 8004174:	080097b7          	lui	a5,0x8009
 8004178:	c1078513          	addi	a0,a5,-1008 # 8008c10 <__fpclassifyf+0x50>
 800417c:	288020ef          	jal	ra,8006404 <printf_>
/home/billtsou/Desktop/UPP/sunflower-simulator/benchmarks/source/riscv_newton-raphson-orig/newton_rapson.c:82
	newton_rapson();
 8004180:	fa5ff0ef          	jal	ra,8004124 <newton_rapson>
/home/billtsou/Desktop/UPP/sunflower-simulator/benchmarks/source/riscv_newton-raphson-orig/newton_rapson.c:84

	return 0;
 8004184:	00000793          	li	a5,0
/home/billtsou/Desktop/UPP/sunflower-simulator/benchmarks/source/riscv_newton-raphson-orig/newton_rapson.c:85
}
 8004188:	00078513          	mv	a0,a5
 800418c:	00c12083          	lw	ra,12(sp)
 8004190:	00812403          	lw	s0,8(sp)
 8004194:	01010113          	addi	sp,sp,16
 8004198:	00008067          	ret

0800419c <_out_buffer>:
_out_buffer():
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:134
} out_fct_wrap_type;


// internal buffer output
static inline void _out_buffer(char character, void* buffer, size_t idx, size_t maxlen)
{
 800419c:	fe010113          	addi	sp,sp,-32
 80041a0:	00812e23          	sw	s0,28(sp)
 80041a4:	02010413          	addi	s0,sp,32
 80041a8:	00050793          	mv	a5,a0
 80041ac:	feb42423          	sw	a1,-24(s0)
 80041b0:	fec42223          	sw	a2,-28(s0)
 80041b4:	fed42023          	sw	a3,-32(s0)
 80041b8:	fef407a3          	sb	a5,-17(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:135
  if (idx < maxlen) {
 80041bc:	fe442703          	lw	a4,-28(s0)
 80041c0:	fe042783          	lw	a5,-32(s0)
 80041c4:	00f77c63          	bleu	a5,a4,80041dc <_out_buffer+0x40>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:136
    ((char*)buffer)[idx] = character;
 80041c8:	fe842703          	lw	a4,-24(s0)
 80041cc:	fe442783          	lw	a5,-28(s0)
 80041d0:	00f707b3          	add	a5,a4,a5
 80041d4:	fef44703          	lbu	a4,-17(s0)
 80041d8:	00e78023          	sb	a4,0(a5)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:138
  }
}
 80041dc:	00000013          	nop
 80041e0:	01c12403          	lw	s0,28(sp)
 80041e4:	02010113          	addi	sp,sp,32
 80041e8:	00008067          	ret

080041ec <_out_null>:
_out_null():
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:143


// internal null output
static inline void _out_null(char character, void* buffer, size_t idx, size_t maxlen)
{
 80041ec:	fe010113          	addi	sp,sp,-32
 80041f0:	00812e23          	sw	s0,28(sp)
 80041f4:	02010413          	addi	s0,sp,32
 80041f8:	00050793          	mv	a5,a0
 80041fc:	feb42423          	sw	a1,-24(s0)
 8004200:	fec42223          	sw	a2,-28(s0)
 8004204:	fed42023          	sw	a3,-32(s0)
 8004208:	fef407a3          	sb	a5,-17(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:145
  (void)character; (void)buffer; (void)idx; (void)maxlen;
}
 800420c:	00000013          	nop
 8004210:	01c12403          	lw	s0,28(sp)
 8004214:	02010113          	addi	sp,sp,32
 8004218:	00008067          	ret

0800421c <_out_char>:
_out_char():
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:150


// internal _putchar wrapper
static inline void _out_char(char character, void* buffer, size_t idx, size_t maxlen)
{
 800421c:	fe010113          	addi	sp,sp,-32
 8004220:	00112e23          	sw	ra,28(sp)
 8004224:	00812c23          	sw	s0,24(sp)
 8004228:	02010413          	addi	s0,sp,32
 800422c:	00050793          	mv	a5,a0
 8004230:	feb42423          	sw	a1,-24(s0)
 8004234:	fec42223          	sw	a2,-28(s0)
 8004238:	fed42023          	sw	a3,-32(s0)
 800423c:	fef407a3          	sb	a5,-17(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:152
  (void)buffer; (void)idx; (void)maxlen;
  if (character) {
 8004240:	fef44783          	lbu	a5,-17(s0)
 8004244:	00078863          	beqz	a5,8004254 <_out_char+0x38>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:153
    _putchar(character);
 8004248:	fef44783          	lbu	a5,-17(s0)
 800424c:	00078513          	mv	a0,a5
 8004250:	448020ef          	jal	ra,8006698 <_putchar>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:155
  }
}
 8004254:	00000013          	nop
 8004258:	01c12083          	lw	ra,28(sp)
 800425c:	01812403          	lw	s0,24(sp)
 8004260:	02010113          	addi	sp,sp,32
 8004264:	00008067          	ret

08004268 <_out_fct>:
_out_fct():
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:160


// internal output function wrapper
static inline void _out_fct(char character, void* buffer, size_t idx, size_t maxlen)
{
 8004268:	fe010113          	addi	sp,sp,-32
 800426c:	00112e23          	sw	ra,28(sp)
 8004270:	00812c23          	sw	s0,24(sp)
 8004274:	02010413          	addi	s0,sp,32
 8004278:	00050793          	mv	a5,a0
 800427c:	feb42423          	sw	a1,-24(s0)
 8004280:	fec42223          	sw	a2,-28(s0)
 8004284:	fed42023          	sw	a3,-32(s0)
 8004288:	fef407a3          	sb	a5,-17(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:162
  (void)idx; (void)maxlen;
  if (character) {
 800428c:	fef44783          	lbu	a5,-17(s0)
 8004290:	02078263          	beqz	a5,80042b4 <_out_fct+0x4c>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:164
    // buffer is the output fct pointer
    ((out_fct_wrap_type*)buffer)->fct(character, ((out_fct_wrap_type*)buffer)->arg);
 8004294:	fe842783          	lw	a5,-24(s0)
 8004298:	0007a683          	lw	a3,0(a5)
 800429c:	fe842783          	lw	a5,-24(s0)
 80042a0:	0047a703          	lw	a4,4(a5)
 80042a4:	fef44783          	lbu	a5,-17(s0)
 80042a8:	00070593          	mv	a1,a4
 80042ac:	00078513          	mv	a0,a5
 80042b0:	000680e7          	jalr	a3
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:166
  }
}
 80042b4:	00000013          	nop
 80042b8:	01c12083          	lw	ra,28(sp)
 80042bc:	01812403          	lw	s0,24(sp)
 80042c0:	02010113          	addi	sp,sp,32
 80042c4:	00008067          	ret

080042c8 <_strnlen_s>:
_strnlen_s():
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:172


// internal secure strlen
// \return The length of the string (excluding the terminating 0) limited by 'maxsize'
static inline unsigned int _strnlen_s(const char* str, size_t maxsize)
{
 80042c8:	fd010113          	addi	sp,sp,-48
 80042cc:	02812623          	sw	s0,44(sp)
 80042d0:	03010413          	addi	s0,sp,48
 80042d4:	fca42e23          	sw	a0,-36(s0)
 80042d8:	fcb42c23          	sw	a1,-40(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:174
  const char* s;
  for (s = str; *s && maxsize--; ++s);
 80042dc:	fdc42783          	lw	a5,-36(s0)
 80042e0:	fef42623          	sw	a5,-20(s0)
 80042e4:	0100006f          	j	80042f4 <_strnlen_s+0x2c>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:174 (discriminator 4)
 80042e8:	fec42783          	lw	a5,-20(s0)
 80042ec:	00178793          	addi	a5,a5,1
 80042f0:	fef42623          	sw	a5,-20(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:174 (discriminator 1)
 80042f4:	fec42783          	lw	a5,-20(s0)
 80042f8:	0007c783          	lbu	a5,0(a5)
 80042fc:	00078a63          	beqz	a5,8004310 <_strnlen_s+0x48>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:174 (discriminator 3)
 8004300:	fd842783          	lw	a5,-40(s0)
 8004304:	fff78713          	addi	a4,a5,-1
 8004308:	fce42c23          	sw	a4,-40(s0)
 800430c:	fc079ee3          	bnez	a5,80042e8 <_strnlen_s+0x20>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:175
  return (unsigned int)(s - str);
 8004310:	fec42703          	lw	a4,-20(s0)
 8004314:	fdc42783          	lw	a5,-36(s0)
 8004318:	40f707b3          	sub	a5,a4,a5
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:176
}
 800431c:	00078513          	mv	a0,a5
 8004320:	02c12403          	lw	s0,44(sp)
 8004324:	03010113          	addi	sp,sp,48
 8004328:	00008067          	ret

0800432c <_is_digit>:
_is_digit():
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:182


// internal test if char is a digit (0-9)
// \return true if char is a digit
static inline bool _is_digit(char ch)
{
 800432c:	fe010113          	addi	sp,sp,-32
 8004330:	00812e23          	sw	s0,28(sp)
 8004334:	02010413          	addi	s0,sp,32
 8004338:	00050793          	mv	a5,a0
 800433c:	fef407a3          	sb	a5,-17(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:183
  return (ch >= '0') && (ch <= '9');
 8004340:	fef44703          	lbu	a4,-17(s0)
 8004344:	02f00793          	li	a5,47
 8004348:	00e7fc63          	bleu	a4,a5,8004360 <_is_digit+0x34>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:183 (discriminator 1)
 800434c:	fef44703          	lbu	a4,-17(s0)
 8004350:	03900793          	li	a5,57
 8004354:	00e7e663          	bltu	a5,a4,8004360 <_is_digit+0x34>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:183 (discriminator 3)
 8004358:	00100793          	li	a5,1
 800435c:	0080006f          	j	8004364 <_is_digit+0x38>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:183 (discriminator 4)
 8004360:	00000793          	li	a5,0
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:183 (discriminator 6)
 8004364:	0017f793          	andi	a5,a5,1
 8004368:	0ff7f793          	andi	a5,a5,255
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:184 (discriminator 6)
}
 800436c:	00078513          	mv	a0,a5
 8004370:	01c12403          	lw	s0,28(sp)
 8004374:	02010113          	addi	sp,sp,32
 8004378:	00008067          	ret

0800437c <_atoi>:
_atoi():
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:189


// internal ASCII string to unsigned int conversion
static unsigned int _atoi(const char** str)
{
 800437c:	fd010113          	addi	sp,sp,-48
 8004380:	02112623          	sw	ra,44(sp)
 8004384:	02812423          	sw	s0,40(sp)
 8004388:	03010413          	addi	s0,sp,48
 800438c:	fca42e23          	sw	a0,-36(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:190
  unsigned int i = 0U;
 8004390:	fe042623          	sw	zero,-20(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:191
  while (_is_digit(**str)) {
 8004394:	0400006f          	j	80043d4 <_atoi+0x58>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:192
    i = i * 10U + (unsigned int)(*((*str)++) - '0');
 8004398:	fec42703          	lw	a4,-20(s0)
 800439c:	00070793          	mv	a5,a4
 80043a0:	00279793          	slli	a5,a5,0x2
 80043a4:	00e787b3          	add	a5,a5,a4
 80043a8:	00179793          	slli	a5,a5,0x1
 80043ac:	00078613          	mv	a2,a5
 80043b0:	fdc42783          	lw	a5,-36(s0)
 80043b4:	0007a783          	lw	a5,0(a5)
 80043b8:	00178693          	addi	a3,a5,1
 80043bc:	fdc42703          	lw	a4,-36(s0)
 80043c0:	00d72023          	sw	a3,0(a4)
 80043c4:	0007c783          	lbu	a5,0(a5)
 80043c8:	00f607b3          	add	a5,a2,a5
 80043cc:	fd078793          	addi	a5,a5,-48
 80043d0:	fef42623          	sw	a5,-20(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:191
  while (_is_digit(**str)) {
 80043d4:	fdc42783          	lw	a5,-36(s0)
 80043d8:	0007a783          	lw	a5,0(a5)
 80043dc:	0007c783          	lbu	a5,0(a5)
 80043e0:	00078513          	mv	a0,a5
 80043e4:	f49ff0ef          	jal	ra,800432c <_is_digit>
 80043e8:	00050793          	mv	a5,a0
 80043ec:	fa0796e3          	bnez	a5,8004398 <_atoi+0x1c>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:194
  }
  return i;
 80043f0:	fec42783          	lw	a5,-20(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:195
}
 80043f4:	00078513          	mv	a0,a5
 80043f8:	02c12083          	lw	ra,44(sp)
 80043fc:	02812403          	lw	s0,40(sp)
 8004400:	03010113          	addi	sp,sp,48
 8004404:	00008067          	ret

08004408 <_out_rev>:
_out_rev():
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:200


// output the specified string in reverse, taking care of any zero-padding
static size_t _out_rev(out_fct_type out, char* buffer, size_t idx, size_t maxlen, const char* buf, size_t len, unsigned int width, unsigned int flags)
{
 8004408:	fc010113          	addi	sp,sp,-64
 800440c:	02112e23          	sw	ra,60(sp)
 8004410:	02812c23          	sw	s0,56(sp)
 8004414:	04010413          	addi	s0,sp,64
 8004418:	fca42e23          	sw	a0,-36(s0)
 800441c:	fcb42c23          	sw	a1,-40(s0)
 8004420:	fcc42a23          	sw	a2,-44(s0)
 8004424:	fcd42823          	sw	a3,-48(s0)
 8004428:	fce42623          	sw	a4,-52(s0)
 800442c:	fcf42423          	sw	a5,-56(s0)
 8004430:	fd042223          	sw	a6,-60(s0)
 8004434:	fd142023          	sw	a7,-64(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:201
  const size_t start_idx = idx;
 8004438:	fd442783          	lw	a5,-44(s0)
 800443c:	fef42423          	sw	a5,-24(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:204

  // pad spaces up to given width
  if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
 8004440:	fc042783          	lw	a5,-64(s0)
 8004444:	0027f793          	andi	a5,a5,2
 8004448:	08079c63          	bnez	a5,80044e0 <_out_rev+0xd8>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:204 (discriminator 1)
 800444c:	fc042783          	lw	a5,-64(s0)
 8004450:	0017f793          	andi	a5,a5,1
 8004454:	08079663          	bnez	a5,80044e0 <_out_rev+0xd8>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:205
    for (size_t i = len; i < width; i++) {
 8004458:	fc842783          	lw	a5,-56(s0)
 800445c:	fef42623          	sw	a5,-20(s0)
 8004460:	0340006f          	j	8004494 <_out_rev+0x8c>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:206 (discriminator 3)
      out(' ', buffer, idx++, maxlen);
 8004464:	fd442783          	lw	a5,-44(s0)
 8004468:	00178713          	addi	a4,a5,1
 800446c:	fce42a23          	sw	a4,-44(s0)
 8004470:	fdc42703          	lw	a4,-36(s0)
 8004474:	fd042683          	lw	a3,-48(s0)
 8004478:	00078613          	mv	a2,a5
 800447c:	fd842583          	lw	a1,-40(s0)
 8004480:	02000513          	li	a0,32
 8004484:	000700e7          	jalr	a4
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:205 (discriminator 3)
    for (size_t i = len; i < width; i++) {
 8004488:	fec42783          	lw	a5,-20(s0)
 800448c:	00178793          	addi	a5,a5,1
 8004490:	fef42623          	sw	a5,-20(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:205 (discriminator 1)
 8004494:	fec42703          	lw	a4,-20(s0)
 8004498:	fc442783          	lw	a5,-60(s0)
 800449c:	fcf764e3          	bltu	a4,a5,8004464 <_out_rev+0x5c>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:211
    }
  }

  // reverse string
  while (len) {
 80044a0:	0400006f          	j	80044e0 <_out_rev+0xd8>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:212
    out(buf[--len], buffer, idx++, maxlen);
 80044a4:	fc842783          	lw	a5,-56(s0)
 80044a8:	fff78793          	addi	a5,a5,-1
 80044ac:	fcf42423          	sw	a5,-56(s0)
 80044b0:	fcc42703          	lw	a4,-52(s0)
 80044b4:	fc842783          	lw	a5,-56(s0)
 80044b8:	00f707b3          	add	a5,a4,a5
 80044bc:	0007c503          	lbu	a0,0(a5)
 80044c0:	fd442783          	lw	a5,-44(s0)
 80044c4:	00178713          	addi	a4,a5,1
 80044c8:	fce42a23          	sw	a4,-44(s0)
 80044cc:	fdc42703          	lw	a4,-36(s0)
 80044d0:	fd042683          	lw	a3,-48(s0)
 80044d4:	00078613          	mv	a2,a5
 80044d8:	fd842583          	lw	a1,-40(s0)
 80044dc:	000700e7          	jalr	a4
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:211
  while (len) {
 80044e0:	fc842783          	lw	a5,-56(s0)
 80044e4:	fc0790e3          	bnez	a5,80044a4 <_out_rev+0x9c>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:216
  }

  // append pad spaces up to given width
  if (flags & FLAGS_LEFT) {
 80044e8:	fc042783          	lw	a5,-64(s0)
 80044ec:	0027f793          	andi	a5,a5,2
 80044f0:	04078063          	beqz	a5,8004530 <_out_rev+0x128>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:217
    while (idx - start_idx < width) {
 80044f4:	0280006f          	j	800451c <_out_rev+0x114>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:218
      out(' ', buffer, idx++, maxlen);
 80044f8:	fd442783          	lw	a5,-44(s0)
 80044fc:	00178713          	addi	a4,a5,1
 8004500:	fce42a23          	sw	a4,-44(s0)
 8004504:	fdc42703          	lw	a4,-36(s0)
 8004508:	fd042683          	lw	a3,-48(s0)
 800450c:	00078613          	mv	a2,a5
 8004510:	fd842583          	lw	a1,-40(s0)
 8004514:	02000513          	li	a0,32
 8004518:	000700e7          	jalr	a4
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:217
    while (idx - start_idx < width) {
 800451c:	fd442703          	lw	a4,-44(s0)
 8004520:	fe842783          	lw	a5,-24(s0)
 8004524:	40f707b3          	sub	a5,a4,a5
 8004528:	fc442703          	lw	a4,-60(s0)
 800452c:	fce7e6e3          	bltu	a5,a4,80044f8 <_out_rev+0xf0>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:222
    }
  }

  return idx;
 8004530:	fd442783          	lw	a5,-44(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:223
}
 8004534:	00078513          	mv	a0,a5
 8004538:	03c12083          	lw	ra,60(sp)
 800453c:	03812403          	lw	s0,56(sp)
 8004540:	04010113          	addi	sp,sp,64
 8004544:	00008067          	ret

08004548 <_ntoa_format>:
_ntoa_format():
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:228


// internal itoa format
static size_t _ntoa_format(out_fct_type out, char* buffer, size_t idx, size_t maxlen, char* buf, size_t len, bool negative, unsigned int base, unsigned int prec, unsigned int width, unsigned int flags)
{
 8004548:	fd010113          	addi	sp,sp,-48
 800454c:	02112623          	sw	ra,44(sp)
 8004550:	02812423          	sw	s0,40(sp)
 8004554:	03010413          	addi	s0,sp,48
 8004558:	fea42623          	sw	a0,-20(s0)
 800455c:	feb42423          	sw	a1,-24(s0)
 8004560:	fec42223          	sw	a2,-28(s0)
 8004564:	fed42023          	sw	a3,-32(s0)
 8004568:	fce42e23          	sw	a4,-36(s0)
 800456c:	fcf42c23          	sw	a5,-40(s0)
 8004570:	00080793          	mv	a5,a6
 8004574:	fd142823          	sw	a7,-48(s0)
 8004578:	fcf40ba3          	sb	a5,-41(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:230
  // pad leading zeros
  if (!(flags & FLAGS_LEFT)) {
 800457c:	00842783          	lw	a5,8(s0)
 8004580:	0027f793          	andi	a5,a5,2
 8004584:	0a079a63          	bnez	a5,8004638 <_ntoa_format+0xf0>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:231
    if (width && (flags & FLAGS_ZEROPAD) && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
 8004588:	00442783          	lw	a5,4(s0)
 800458c:	04078863          	beqz	a5,80045dc <_ntoa_format+0x94>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:231 (discriminator 1)
 8004590:	00842783          	lw	a5,8(s0)
 8004594:	0017f793          	andi	a5,a5,1
 8004598:	04078263          	beqz	a5,80045dc <_ntoa_format+0x94>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:231 (discriminator 2)
 800459c:	fd744783          	lbu	a5,-41(s0)
 80045a0:	00079863          	bnez	a5,80045b0 <_ntoa_format+0x68>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:231 (discriminator 3)
 80045a4:	00842783          	lw	a5,8(s0)
 80045a8:	00c7f793          	andi	a5,a5,12
 80045ac:	02078863          	beqz	a5,80045dc <_ntoa_format+0x94>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:232
      width--;
 80045b0:	00442783          	lw	a5,4(s0)
 80045b4:	fff78793          	addi	a5,a5,-1
 80045b8:	00f42223          	sw	a5,4(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:234
    }
    while ((len < prec) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
 80045bc:	0200006f          	j	80045dc <_ntoa_format+0x94>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:235
      buf[len++] = '0';
 80045c0:	fd842783          	lw	a5,-40(s0)
 80045c4:	00178713          	addi	a4,a5,1
 80045c8:	fce42c23          	sw	a4,-40(s0)
 80045cc:	fdc42703          	lw	a4,-36(s0)
 80045d0:	00f707b3          	add	a5,a4,a5
 80045d4:	03000713          	li	a4,48
 80045d8:	00e78023          	sb	a4,0(a5)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:234
    while ((len < prec) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
 80045dc:	fd842703          	lw	a4,-40(s0)
 80045e0:	00042783          	lw	a5,0(s0)
 80045e4:	02f77863          	bleu	a5,a4,8004614 <_ntoa_format+0xcc>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:234 (discriminator 1)
 80045e8:	fd842703          	lw	a4,-40(s0)
 80045ec:	01f00793          	li	a5,31
 80045f0:	fce7f8e3          	bleu	a4,a5,80045c0 <_ntoa_format+0x78>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:237
    }
    while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
 80045f4:	0200006f          	j	8004614 <_ntoa_format+0xcc>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:238
      buf[len++] = '0';
 80045f8:	fd842783          	lw	a5,-40(s0)
 80045fc:	00178713          	addi	a4,a5,1
 8004600:	fce42c23          	sw	a4,-40(s0)
 8004604:	fdc42703          	lw	a4,-36(s0)
 8004608:	00f707b3          	add	a5,a4,a5
 800460c:	03000713          	li	a4,48
 8004610:	00e78023          	sb	a4,0(a5)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:237
    while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
 8004614:	00842783          	lw	a5,8(s0)
 8004618:	0017f793          	andi	a5,a5,1
 800461c:	00078e63          	beqz	a5,8004638 <_ntoa_format+0xf0>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:237 (discriminator 1)
 8004620:	fd842703          	lw	a4,-40(s0)
 8004624:	00442783          	lw	a5,4(s0)
 8004628:	00f77863          	bleu	a5,a4,8004638 <_ntoa_format+0xf0>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:237 (discriminator 2)
 800462c:	fd842703          	lw	a4,-40(s0)
 8004630:	01f00793          	li	a5,31
 8004634:	fce7f2e3          	bleu	a4,a5,80045f8 <_ntoa_format+0xb0>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:243
    }
  }

  // handle hash
  if (flags & FLAGS_HASH) {
 8004638:	00842783          	lw	a5,8(s0)
 800463c:	0107f793          	andi	a5,a5,16
 8004640:	14078063          	beqz	a5,8004780 <_ntoa_format+0x238>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:244
    if (!(flags & FLAGS_PRECISION) && len && ((len == prec) || (len == width))) {
 8004644:	00842783          	lw	a5,8(s0)
 8004648:	4007f793          	andi	a5,a5,1024
 800464c:	04079863          	bnez	a5,800469c <_ntoa_format+0x154>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:244 (discriminator 1)
 8004650:	fd842783          	lw	a5,-40(s0)
 8004654:	04078463          	beqz	a5,800469c <_ntoa_format+0x154>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:244 (discriminator 2)
 8004658:	fd842703          	lw	a4,-40(s0)
 800465c:	00042783          	lw	a5,0(s0)
 8004660:	00f70863          	beq	a4,a5,8004670 <_ntoa_format+0x128>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:244 (discriminator 3)
 8004664:	fd842703          	lw	a4,-40(s0)
 8004668:	00442783          	lw	a5,4(s0)
 800466c:	02f71863          	bne	a4,a5,800469c <_ntoa_format+0x154>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:245
      len--;
 8004670:	fd842783          	lw	a5,-40(s0)
 8004674:	fff78793          	addi	a5,a5,-1
 8004678:	fcf42c23          	sw	a5,-40(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:246
      if (len && (base == 16U)) {
 800467c:	fd842783          	lw	a5,-40(s0)
 8004680:	00078e63          	beqz	a5,800469c <_ntoa_format+0x154>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:246 (discriminator 1)
 8004684:	fd042703          	lw	a4,-48(s0)
 8004688:	01000793          	li	a5,16
 800468c:	00f71863          	bne	a4,a5,800469c <_ntoa_format+0x154>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:247
        len--;
 8004690:	fd842783          	lw	a5,-40(s0)
 8004694:	fff78793          	addi	a5,a5,-1
 8004698:	fcf42c23          	sw	a5,-40(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:250
      }
    }
    if ((base == 16U) && !(flags & FLAGS_UPPERCASE) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
 800469c:	fd042703          	lw	a4,-48(s0)
 80046a0:	01000793          	li	a5,16
 80046a4:	02f71e63          	bne	a4,a5,80046e0 <_ntoa_format+0x198>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:250 (discriminator 1)
 80046a8:	00842783          	lw	a5,8(s0)
 80046ac:	0207f793          	andi	a5,a5,32
 80046b0:	02079863          	bnez	a5,80046e0 <_ntoa_format+0x198>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:250 (discriminator 2)
 80046b4:	fd842703          	lw	a4,-40(s0)
 80046b8:	01f00793          	li	a5,31
 80046bc:	02e7e263          	bltu	a5,a4,80046e0 <_ntoa_format+0x198>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:251
      buf[len++] = 'x';
 80046c0:	fd842783          	lw	a5,-40(s0)
 80046c4:	00178713          	addi	a4,a5,1
 80046c8:	fce42c23          	sw	a4,-40(s0)
 80046cc:	fdc42703          	lw	a4,-36(s0)
 80046d0:	00f707b3          	add	a5,a4,a5
 80046d4:	07800713          	li	a4,120
 80046d8:	00e78023          	sb	a4,0(a5)
 80046dc:	07c0006f          	j	8004758 <_ntoa_format+0x210>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:253
    }
    else if ((base == 16U) && (flags & FLAGS_UPPERCASE) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
 80046e0:	fd042703          	lw	a4,-48(s0)
 80046e4:	01000793          	li	a5,16
 80046e8:	02f71e63          	bne	a4,a5,8004724 <_ntoa_format+0x1dc>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:253 (discriminator 1)
 80046ec:	00842783          	lw	a5,8(s0)
 80046f0:	0207f793          	andi	a5,a5,32
 80046f4:	02078863          	beqz	a5,8004724 <_ntoa_format+0x1dc>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:253 (discriminator 2)
 80046f8:	fd842703          	lw	a4,-40(s0)
 80046fc:	01f00793          	li	a5,31
 8004700:	02e7e263          	bltu	a5,a4,8004724 <_ntoa_format+0x1dc>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:254
      buf[len++] = 'X';
 8004704:	fd842783          	lw	a5,-40(s0)
 8004708:	00178713          	addi	a4,a5,1
 800470c:	fce42c23          	sw	a4,-40(s0)
 8004710:	fdc42703          	lw	a4,-36(s0)
 8004714:	00f707b3          	add	a5,a4,a5
 8004718:	05800713          	li	a4,88
 800471c:	00e78023          	sb	a4,0(a5)
 8004720:	0380006f          	j	8004758 <_ntoa_format+0x210>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:256
    }
    else if ((base == 2U) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
 8004724:	fd042703          	lw	a4,-48(s0)
 8004728:	00200793          	li	a5,2
 800472c:	02f71663          	bne	a4,a5,8004758 <_ntoa_format+0x210>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:256 (discriminator 1)
 8004730:	fd842703          	lw	a4,-40(s0)
 8004734:	01f00793          	li	a5,31
 8004738:	02e7e063          	bltu	a5,a4,8004758 <_ntoa_format+0x210>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:257
      buf[len++] = 'b';
 800473c:	fd842783          	lw	a5,-40(s0)
 8004740:	00178713          	addi	a4,a5,1
 8004744:	fce42c23          	sw	a4,-40(s0)
 8004748:	fdc42703          	lw	a4,-36(s0)
 800474c:	00f707b3          	add	a5,a4,a5
 8004750:	06200713          	li	a4,98
 8004754:	00e78023          	sb	a4,0(a5)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:259
    }
    if (len < PRINTF_NTOA_BUFFER_SIZE) {
 8004758:	fd842703          	lw	a4,-40(s0)
 800475c:	01f00793          	li	a5,31
 8004760:	02e7e063          	bltu	a5,a4,8004780 <_ntoa_format+0x238>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:260
      buf[len++] = '0';
 8004764:	fd842783          	lw	a5,-40(s0)
 8004768:	00178713          	addi	a4,a5,1
 800476c:	fce42c23          	sw	a4,-40(s0)
 8004770:	fdc42703          	lw	a4,-36(s0)
 8004774:	00f707b3          	add	a5,a4,a5
 8004778:	03000713          	li	a4,48
 800477c:	00e78023          	sb	a4,0(a5)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:264
    }
  }

  if (len < PRINTF_NTOA_BUFFER_SIZE) {
 8004780:	fd842703          	lw	a4,-40(s0)
 8004784:	01f00793          	li	a5,31
 8004788:	08e7e063          	bltu	a5,a4,8004808 <_ntoa_format+0x2c0>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:265
    if (negative) {
 800478c:	fd744783          	lbu	a5,-41(s0)
 8004790:	02078263          	beqz	a5,80047b4 <_ntoa_format+0x26c>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:266
      buf[len++] = '-';
 8004794:	fd842783          	lw	a5,-40(s0)
 8004798:	00178713          	addi	a4,a5,1
 800479c:	fce42c23          	sw	a4,-40(s0)
 80047a0:	fdc42703          	lw	a4,-36(s0)
 80047a4:	00f707b3          	add	a5,a4,a5
 80047a8:	02d00713          	li	a4,45
 80047ac:	00e78023          	sb	a4,0(a5)
 80047b0:	0580006f          	j	8004808 <_ntoa_format+0x2c0>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:268
    }
    else if (flags & FLAGS_PLUS) {
 80047b4:	00842783          	lw	a5,8(s0)
 80047b8:	0047f793          	andi	a5,a5,4
 80047bc:	02078263          	beqz	a5,80047e0 <_ntoa_format+0x298>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:269
      buf[len++] = '+';  // ignore the space if the '+' exists
 80047c0:	fd842783          	lw	a5,-40(s0)
 80047c4:	00178713          	addi	a4,a5,1
 80047c8:	fce42c23          	sw	a4,-40(s0)
 80047cc:	fdc42703          	lw	a4,-36(s0)
 80047d0:	00f707b3          	add	a5,a4,a5
 80047d4:	02b00713          	li	a4,43
 80047d8:	00e78023          	sb	a4,0(a5)
 80047dc:	02c0006f          	j	8004808 <_ntoa_format+0x2c0>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:271
    }
    else if (flags & FLAGS_SPACE) {
 80047e0:	00842783          	lw	a5,8(s0)
 80047e4:	0087f793          	andi	a5,a5,8
 80047e8:	02078063          	beqz	a5,8004808 <_ntoa_format+0x2c0>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:272
      buf[len++] = ' ';
 80047ec:	fd842783          	lw	a5,-40(s0)
 80047f0:	00178713          	addi	a4,a5,1
 80047f4:	fce42c23          	sw	a4,-40(s0)
 80047f8:	fdc42703          	lw	a4,-36(s0)
 80047fc:	00f707b3          	add	a5,a4,a5
 8004800:	02000713          	li	a4,32
 8004804:	00e78023          	sb	a4,0(a5)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:276
    }
  }

  return _out_rev(out, buffer, idx, maxlen, buf, len, width, flags);
 8004808:	00842883          	lw	a7,8(s0)
 800480c:	00442803          	lw	a6,4(s0)
 8004810:	fd842783          	lw	a5,-40(s0)
 8004814:	fdc42703          	lw	a4,-36(s0)
 8004818:	fe042683          	lw	a3,-32(s0)
 800481c:	fe442603          	lw	a2,-28(s0)
 8004820:	fe842583          	lw	a1,-24(s0)
 8004824:	fec42503          	lw	a0,-20(s0)
 8004828:	be1ff0ef          	jal	ra,8004408 <_out_rev>
 800482c:	00050793          	mv	a5,a0
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:277
}
 8004830:	00078513          	mv	a0,a5
 8004834:	02c12083          	lw	ra,44(sp)
 8004838:	02812403          	lw	s0,40(sp)
 800483c:	03010113          	addi	sp,sp,48
 8004840:	00008067          	ret

08004844 <_ntoa_long>:
_ntoa_long():
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:282


// internal itoa for 'long' type
static size_t _ntoa_long(out_fct_type out, char* buffer, size_t idx, size_t maxlen, unsigned long value, bool negative, unsigned long base, unsigned int prec, unsigned int width, unsigned int flags)
{
 8004844:	f9010113          	addi	sp,sp,-112
 8004848:	06112623          	sw	ra,108(sp)
 800484c:	06812423          	sw	s0,104(sp)
 8004850:	07010413          	addi	s0,sp,112
 8004854:	faa42e23          	sw	a0,-68(s0)
 8004858:	fab42c23          	sw	a1,-72(s0)
 800485c:	fac42a23          	sw	a2,-76(s0)
 8004860:	fad42823          	sw	a3,-80(s0)
 8004864:	fae42623          	sw	a4,-84(s0)
 8004868:	fb042223          	sw	a6,-92(s0)
 800486c:	fb142023          	sw	a7,-96(s0)
 8004870:	faf405a3          	sb	a5,-85(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:284
  char buf[PRINTF_NTOA_BUFFER_SIZE];
  size_t len = 0U;
 8004874:	fe042623          	sw	zero,-20(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:287

  // no hash for 0 values
  if (!value) {
 8004878:	fac42783          	lw	a5,-84(s0)
 800487c:	00079863          	bnez	a5,800488c <_ntoa_long+0x48>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:288
    flags &= ~FLAGS_HASH;
 8004880:	00442783          	lw	a5,4(s0)
 8004884:	fef7f793          	andi	a5,a5,-17
 8004888:	00f42223          	sw	a5,4(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:292
  }

  // write if precision != 0 and value is != 0
  if (!(flags & FLAGS_PRECISION) || value) {
 800488c:	00442783          	lw	a5,4(s0)
 8004890:	4007f793          	andi	a5,a5,1024
 8004894:	00078663          	beqz	a5,80048a0 <_ntoa_long+0x5c>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:292 (discriminator 1)
 8004898:	fac42783          	lw	a5,-84(s0)
 800489c:	0a078263          	beqz	a5,8004940 <_ntoa_long+0xfc>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:294
    do {
      const char digit = (char)(value % base);
 80048a0:	fac42783          	lw	a5,-84(s0)
 80048a4:	fa442583          	lw	a1,-92(s0)
 80048a8:	00078513          	mv	a0,a5
 80048ac:	24c040ef          	jal	ra,8008af8 <__umodsi3>
 80048b0:	00050793          	mv	a5,a0
 80048b4:	fef405a3          	sb	a5,-21(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:295
      buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
 80048b8:	feb44703          	lbu	a4,-21(s0)
 80048bc:	00900793          	li	a5,9
 80048c0:	00e7ea63          	bltu	a5,a4,80048d4 <_ntoa_long+0x90>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:295 (discriminator 1)
 80048c4:	feb44783          	lbu	a5,-21(s0)
 80048c8:	03078793          	addi	a5,a5,48
 80048cc:	0ff7f793          	andi	a5,a5,255
 80048d0:	0300006f          	j	8004900 <_ntoa_long+0xbc>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:295 (discriminator 2)
 80048d4:	00442783          	lw	a5,4(s0)
 80048d8:	0207f793          	andi	a5,a5,32
 80048dc:	00078663          	beqz	a5,80048e8 <_ntoa_long+0xa4>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:295 (discriminator 4)
 80048e0:	04100793          	li	a5,65
 80048e4:	0080006f          	j	80048ec <_ntoa_long+0xa8>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:295 (discriminator 5)
 80048e8:	06100793          	li	a5,97
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:295 (discriminator 7)
 80048ec:	feb44703          	lbu	a4,-21(s0)
 80048f0:	00e787b3          	add	a5,a5,a4
 80048f4:	0ff7f793          	andi	a5,a5,255
 80048f8:	ff678793          	addi	a5,a5,-10
 80048fc:	0ff7f793          	andi	a5,a5,255
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:295 (discriminator 8)
 8004900:	fec42703          	lw	a4,-20(s0)
 8004904:	00170693          	addi	a3,a4,1
 8004908:	fed42623          	sw	a3,-20(s0)
 800490c:	ff040693          	addi	a3,s0,-16
 8004910:	00e68733          	add	a4,a3,a4
 8004914:	fcf70c23          	sb	a5,-40(a4)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:296 (discriminator 8)
      value /= base;
 8004918:	fa442583          	lw	a1,-92(s0)
 800491c:	fac42503          	lw	a0,-84(s0)
 8004920:	190040ef          	jal	ra,8008ab0 <__udivsi3>
 8004924:	00050793          	mv	a5,a0
 8004928:	faf42623          	sw	a5,-84(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:297 (discriminator 8)
    } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
 800492c:	fac42783          	lw	a5,-84(s0)
 8004930:	00078863          	beqz	a5,8004940 <_ntoa_long+0xfc>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:297 (discriminator 1)
 8004934:	fec42703          	lw	a4,-20(s0)
 8004938:	01f00793          	li	a5,31
 800493c:	f6e7f2e3          	bleu	a4,a5,80048a0 <_ntoa_long+0x5c>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:300
  }

  return _ntoa_format(out, buffer, idx, maxlen, buf, len, negative, (unsigned int)base, prec, width, flags);
 8004940:	fab44683          	lbu	a3,-85(s0)
 8004944:	fc840713          	addi	a4,s0,-56
 8004948:	00442783          	lw	a5,4(s0)
 800494c:	00f12423          	sw	a5,8(sp)
 8004950:	00042783          	lw	a5,0(s0)
 8004954:	00f12223          	sw	a5,4(sp)
 8004958:	fa042783          	lw	a5,-96(s0)
 800495c:	00f12023          	sw	a5,0(sp)
 8004960:	fa442883          	lw	a7,-92(s0)
 8004964:	00068813          	mv	a6,a3
 8004968:	fec42783          	lw	a5,-20(s0)
 800496c:	fb042683          	lw	a3,-80(s0)
 8004970:	fb442603          	lw	a2,-76(s0)
 8004974:	fb842583          	lw	a1,-72(s0)
 8004978:	fbc42503          	lw	a0,-68(s0)
 800497c:	bcdff0ef          	jal	ra,8004548 <_ntoa_format>
 8004980:	00050793          	mv	a5,a0
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:301
}
 8004984:	00078513          	mv	a0,a5
 8004988:	06c12083          	lw	ra,108(sp)
 800498c:	06812403          	lw	s0,104(sp)
 8004990:	07010113          	addi	sp,sp,112
 8004994:	00008067          	ret

08004998 <_ntoa_long_long>:
_ntoa_long_long():
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:307


// internal itoa for 'long long' type
#if defined(PRINTF_SUPPORT_LONG_LONG)
static size_t _ntoa_long_long(out_fct_type out, char* buffer, size_t idx, size_t maxlen, unsigned long long value, bool negative, unsigned long long base, unsigned int prec, unsigned int width, unsigned int flags)
{
 8004998:	f8010113          	addi	sp,sp,-128
 800499c:	06112623          	sw	ra,108(sp)
 80049a0:	06812423          	sw	s0,104(sp)
 80049a4:	07010413          	addi	s0,sp,112
 80049a8:	faa42e23          	sw	a0,-68(s0)
 80049ac:	fab42c23          	sw	a1,-72(s0)
 80049b0:	fac42a23          	sw	a2,-76(s0)
 80049b4:	fad42823          	sw	a3,-80(s0)
 80049b8:	fae42423          	sw	a4,-88(s0)
 80049bc:	faf42623          	sw	a5,-84(s0)
 80049c0:	00080793          	mv	a5,a6
 80049c4:	01142623          	sw	a7,12(s0)
 80049c8:	faf403a3          	sb	a5,-89(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:309
  char buf[PRINTF_NTOA_BUFFER_SIZE];
  size_t len = 0U;
 80049cc:	fe042623          	sw	zero,-20(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:312

  // no hash for 0 values
  if (!value) {
 80049d0:	fa842783          	lw	a5,-88(s0)
 80049d4:	fac42703          	lw	a4,-84(s0)
 80049d8:	00e7e7b3          	or	a5,a5,a4
 80049dc:	00079863          	bnez	a5,80049ec <_ntoa_long_long+0x54>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:313
    flags &= ~FLAGS_HASH;
 80049e0:	01c42783          	lw	a5,28(s0)
 80049e4:	fef7f793          	andi	a5,a5,-17
 80049e8:	00f42e23          	sw	a5,28(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:317
  }

  // write if precision != 0 and value is != 0
  if (!(flags & FLAGS_PRECISION) || value) {
 80049ec:	01c42783          	lw	a5,28(s0)
 80049f0:	4007f793          	andi	a5,a5,1024
 80049f4:	00078a63          	beqz	a5,8004a08 <_ntoa_long_long+0x70>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:317 (discriminator 1)
 80049f8:	fa842783          	lw	a5,-88(s0)
 80049fc:	fac42703          	lw	a4,-84(s0)
 8004a00:	00e7e7b3          	or	a5,a5,a4
 8004a04:	0c078663          	beqz	a5,8004ad0 <_ntoa_long_long+0x138>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:319
    do {
      const char digit = (char)(value % base);
 8004a08:	fa842783          	lw	a5,-88(s0)
 8004a0c:	fac42803          	lw	a6,-84(s0)
 8004a10:	00c42603          	lw	a2,12(s0)
 8004a14:	01042683          	lw	a3,16(s0)
 8004a18:	00078513          	mv	a0,a5
 8004a1c:	00080593          	mv	a1,a6
 8004a20:	29d030ef          	jal	ra,80084bc <__umoddi3>
 8004a24:	00050793          	mv	a5,a0
 8004a28:	00058813          	mv	a6,a1
 8004a2c:	fef405a3          	sb	a5,-21(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:320
      buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
 8004a30:	feb44703          	lbu	a4,-21(s0)
 8004a34:	00900793          	li	a5,9
 8004a38:	00e7ea63          	bltu	a5,a4,8004a4c <_ntoa_long_long+0xb4>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:320 (discriminator 1)
 8004a3c:	feb44783          	lbu	a5,-21(s0)
 8004a40:	03078793          	addi	a5,a5,48
 8004a44:	0ff7f793          	andi	a5,a5,255
 8004a48:	0300006f          	j	8004a78 <_ntoa_long_long+0xe0>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:320 (discriminator 2)
 8004a4c:	01c42783          	lw	a5,28(s0)
 8004a50:	0207f793          	andi	a5,a5,32
 8004a54:	00078663          	beqz	a5,8004a60 <_ntoa_long_long+0xc8>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:320 (discriminator 4)
 8004a58:	04100793          	li	a5,65
 8004a5c:	0080006f          	j	8004a64 <_ntoa_long_long+0xcc>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:320 (discriminator 5)
 8004a60:	06100793          	li	a5,97
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:320 (discriminator 7)
 8004a64:	feb44703          	lbu	a4,-21(s0)
 8004a68:	00e787b3          	add	a5,a5,a4
 8004a6c:	0ff7f793          	andi	a5,a5,255
 8004a70:	ff678793          	addi	a5,a5,-10
 8004a74:	0ff7f793          	andi	a5,a5,255
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:320 (discriminator 8)
 8004a78:	fec42703          	lw	a4,-20(s0)
 8004a7c:	00170693          	addi	a3,a4,1
 8004a80:	fed42623          	sw	a3,-20(s0)
 8004a84:	ff040693          	addi	a3,s0,-16
 8004a88:	00e68733          	add	a4,a3,a4
 8004a8c:	fcf70c23          	sb	a5,-40(a4)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:321 (discriminator 8)
      value /= base;
 8004a90:	00c42603          	lw	a2,12(s0)
 8004a94:	01042683          	lw	a3,16(s0)
 8004a98:	fa842503          	lw	a0,-88(s0)
 8004a9c:	fac42583          	lw	a1,-84(s0)
 8004aa0:	3e4030ef          	jal	ra,8007e84 <__udivdi3>
 8004aa4:	00050793          	mv	a5,a0
 8004aa8:	00058813          	mv	a6,a1
 8004aac:	faf42423          	sw	a5,-88(s0)
 8004ab0:	fb042623          	sw	a6,-84(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:322 (discriminator 8)
    } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
 8004ab4:	fa842783          	lw	a5,-88(s0)
 8004ab8:	fac42703          	lw	a4,-84(s0)
 8004abc:	00e7e7b3          	or	a5,a5,a4
 8004ac0:	00078863          	beqz	a5,8004ad0 <_ntoa_long_long+0x138>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:322 (discriminator 1)
 8004ac4:	fec42703          	lw	a4,-20(s0)
 8004ac8:	01f00793          	li	a5,31
 8004acc:	f2e7fee3          	bleu	a4,a5,8004a08 <_ntoa_long_long+0x70>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:325
  }

  return _ntoa_format(out, buffer, idx, maxlen, buf, len, negative, (unsigned int)base, prec, width, flags);
 8004ad0:	00c42603          	lw	a2,12(s0)
 8004ad4:	fa744683          	lbu	a3,-89(s0)
 8004ad8:	fc840713          	addi	a4,s0,-56
 8004adc:	01c42783          	lw	a5,28(s0)
 8004ae0:	00f12423          	sw	a5,8(sp)
 8004ae4:	01842783          	lw	a5,24(s0)
 8004ae8:	00f12223          	sw	a5,4(sp)
 8004aec:	01442783          	lw	a5,20(s0)
 8004af0:	00f12023          	sw	a5,0(sp)
 8004af4:	00060893          	mv	a7,a2
 8004af8:	00068813          	mv	a6,a3
 8004afc:	fec42783          	lw	a5,-20(s0)
 8004b00:	fb042683          	lw	a3,-80(s0)
 8004b04:	fb442603          	lw	a2,-76(s0)
 8004b08:	fb842583          	lw	a1,-72(s0)
 8004b0c:	fbc42503          	lw	a0,-68(s0)
 8004b10:	a39ff0ef          	jal	ra,8004548 <_ntoa_format>
 8004b14:	00050793          	mv	a5,a0
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:326
}
 8004b18:	00078513          	mv	a0,a5
 8004b1c:	06c12083          	lw	ra,108(sp)
 8004b20:	06812403          	lw	s0,104(sp)
 8004b24:	08010113          	addi	sp,sp,128
 8004b28:	00008067          	ret

08004b2c <_ftoa>:
_ftoa():
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:340
#endif


// internal ftoa for fixed decimal floating point
static size_t _ftoa(out_fct_type out, char* buffer, size_t idx, size_t maxlen, double value, unsigned int prec, unsigned int width, unsigned int flags)
{
 8004b2c:	f7010113          	addi	sp,sp,-144
 8004b30:	08112623          	sw	ra,140(sp)
 8004b34:	08812423          	sw	s0,136(sp)
 8004b38:	09010413          	addi	s0,sp,144
 8004b3c:	f8a42e23          	sw	a0,-100(s0)
 8004b40:	f8b42c23          	sw	a1,-104(s0)
 8004b44:	f8c42a23          	sw	a2,-108(s0)
 8004b48:	f8d42823          	sw	a3,-112(s0)
 8004b4c:	f8a43427          	fsd	fa0,-120(s0)
 8004b50:	f8e42223          	sw	a4,-124(s0)
 8004b54:	f8f42023          	sw	a5,-128(s0)
 8004b58:	f7042e23          	sw	a6,-132(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:342
  char buf[PRINTF_FTOA_BUFFER_SIZE];
  size_t len  = 0U;
 8004b5c:	fe042623          	sw	zero,-20(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:343
  double diff = 0.0;
 8004b60:	fc042823          	sw	zero,-48(s0)
 8004b64:	fc042a23          	sw	zero,-44(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:349

  // powers of 10
  static const double pow10[] = { 1, 10, 100, 1000, 10000, 100000, 1000000, 10000000, 100000000, 1000000000 };

  // test for special values
  if (value != value)
 8004b68:	f8843707          	fld	fa4,-120(s0)
 8004b6c:	f8843787          	fld	fa5,-120(s0)
 8004b70:	a2f727d3          	feq.d	a5,fa4,fa5
 8004b74:	02079a63          	bnez	a5,8004ba8 <_ftoa+0x7c>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:350
    return _out_rev(out, buffer, idx, maxlen, "nan", 3, width, flags);
 8004b78:	f7c42883          	lw	a7,-132(s0)
 8004b7c:	f8042803          	lw	a6,-128(s0)
 8004b80:	00300793          	li	a5,3
 8004b84:	08009737          	lui	a4,0x8009
 8004b88:	c3070713          	addi	a4,a4,-976 # 8008c30 <__fpclassifyf+0x70>
 8004b8c:	f9042683          	lw	a3,-112(s0)
 8004b90:	f9442603          	lw	a2,-108(s0)
 8004b94:	f9842583          	lw	a1,-104(s0)
 8004b98:	f9c42503          	lw	a0,-100(s0)
 8004b9c:	86dff0ef          	jal	ra,8004408 <_out_rev>
 8004ba0:	00050793          	mv	a5,a0
 8004ba4:	56c0006f          	j	8005110 <_ftoa+0x5e4>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:351
  if (value < -DBL_MAX)
 8004ba8:	f8843707          	fld	fa4,-120(s0)
 8004bac:	080097b7          	lui	a5,0x8009
 8004bb0:	e787b787          	fld	fa5,-392(a5) # 8008e78 <pow10.1745+0x50>
 8004bb4:	a2f717d3          	flt.d	a5,fa4,fa5
 8004bb8:	02078a63          	beqz	a5,8004bec <_ftoa+0xc0>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:352
    return _out_rev(out, buffer, idx, maxlen, "fni-", 4, width, flags);
 8004bbc:	f7c42883          	lw	a7,-132(s0)
 8004bc0:	f8042803          	lw	a6,-128(s0)
 8004bc4:	00400793          	li	a5,4
 8004bc8:	08009737          	lui	a4,0x8009
 8004bcc:	c3470713          	addi	a4,a4,-972 # 8008c34 <__fpclassifyf+0x74>
 8004bd0:	f9042683          	lw	a3,-112(s0)
 8004bd4:	f9442603          	lw	a2,-108(s0)
 8004bd8:	f9842583          	lw	a1,-104(s0)
 8004bdc:	f9c42503          	lw	a0,-100(s0)
 8004be0:	829ff0ef          	jal	ra,8004408 <_out_rev>
 8004be4:	00050793          	mv	a5,a0
 8004be8:	5280006f          	j	8005110 <_ftoa+0x5e4>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:353
  if (value > DBL_MAX)
 8004bec:	f8843707          	fld	fa4,-120(s0)
 8004bf0:	080097b7          	lui	a5,0x8009
 8004bf4:	e807b787          	fld	fa5,-384(a5) # 8008e80 <pow10.1745+0x58>
 8004bf8:	a2e797d3          	flt.d	a5,fa5,fa4
 8004bfc:	06078063          	beqz	a5,8004c5c <_ftoa+0x130>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:354
    return _out_rev(out, buffer, idx, maxlen, (flags & FLAGS_PLUS) ? "fni+" : "fni", (flags & FLAGS_PLUS) ? 4U : 3U, width, flags);
 8004c00:	f7c42783          	lw	a5,-132(s0)
 8004c04:	0047f793          	andi	a5,a5,4
 8004c08:	00078863          	beqz	a5,8004c18 <_ftoa+0xec>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:354 (discriminator 1)
 8004c0c:	080097b7          	lui	a5,0x8009
 8004c10:	c3c78713          	addi	a4,a5,-964 # 8008c3c <__fpclassifyf+0x7c>
 8004c14:	00c0006f          	j	8004c20 <_ftoa+0xf4>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:354 (discriminator 2)
 8004c18:	080097b7          	lui	a5,0x8009
 8004c1c:	c4478713          	addi	a4,a5,-956 # 8008c44 <__fpclassifyf+0x84>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:354 (discriminator 4)
 8004c20:	f7c42783          	lw	a5,-132(s0)
 8004c24:	0047f793          	andi	a5,a5,4
 8004c28:	00078663          	beqz	a5,8004c34 <_ftoa+0x108>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:354 (discriminator 5)
 8004c2c:	00400793          	li	a5,4
 8004c30:	0080006f          	j	8004c38 <_ftoa+0x10c>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:354 (discriminator 6)
 8004c34:	00300793          	li	a5,3
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:354 (discriminator 8)
 8004c38:	f7c42883          	lw	a7,-132(s0)
 8004c3c:	f8042803          	lw	a6,-128(s0)
 8004c40:	f9042683          	lw	a3,-112(s0)
 8004c44:	f9442603          	lw	a2,-108(s0)
 8004c48:	f9842583          	lw	a1,-104(s0)
 8004c4c:	f9c42503          	lw	a0,-100(s0)
 8004c50:	fb8ff0ef          	jal	ra,8004408 <_out_rev>
 8004c54:	00050793          	mv	a5,a0
 8004c58:	4b80006f          	j	8005110 <_ftoa+0x5e4>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:358

  // test for very large values
  // standard printf behavior is to print EVERY whole number digit -- which could be 100s of characters overflowing your buffers == bad
  if ((value > PRINTF_MAX_FLOAT) || (value < -PRINTF_MAX_FLOAT)) {
 8004c5c:	f8843707          	fld	fa4,-120(s0)
 8004c60:	080097b7          	lui	a5,0x8009
 8004c64:	e887b787          	fld	fa5,-376(a5) # 8008e88 <pow10.1745+0x60>
 8004c68:	a2e797d3          	flt.d	a5,fa5,fa4
 8004c6c:	00079c63          	bnez	a5,8004c84 <_ftoa+0x158>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:358 (discriminator 1)
 8004c70:	f8843707          	fld	fa4,-120(s0)
 8004c74:	080097b7          	lui	a5,0x8009
 8004c78:	e907b787          	fld	fa5,-368(a5) # 8008e90 <pow10.1745+0x68>
 8004c7c:	a2f717d3          	flt.d	a5,fa4,fa5
 8004c80:	02078863          	beqz	a5,8004cb0 <_ftoa+0x184>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:360
#if defined(PRINTF_SUPPORT_EXPONENTIAL)
    return _etoa(out, buffer, idx, maxlen, value, prec, width, flags);
 8004c84:	f7c42803          	lw	a6,-132(s0)
 8004c88:	f8042783          	lw	a5,-128(s0)
 8004c8c:	f8442703          	lw	a4,-124(s0)
 8004c90:	f8843507          	fld	fa0,-120(s0)
 8004c94:	f9042683          	lw	a3,-112(s0)
 8004c98:	f9442603          	lw	a2,-108(s0)
 8004c9c:	f9842583          	lw	a1,-104(s0)
 8004ca0:	f9c42503          	lw	a0,-100(s0)
 8004ca4:	480000ef          	jal	ra,8005124 <_etoa>
 8004ca8:	00050793          	mv	a5,a0
 8004cac:	4640006f          	j	8005110 <_ftoa+0x5e4>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:367
    return 0U;
#endif
  }

  // test for negative
  bool negative = false;
 8004cb0:	fe0405a3          	sb	zero,-21(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:368
  if (value < 0) {
 8004cb4:	f8843787          	fld	fa5,-120(s0)
 8004cb8:	d2000753          	fcvt.d.w	fa4,zero
 8004cbc:	a2e797d3          	flt.d	a5,fa5,fa4
 8004cc0:	00078e63          	beqz	a5,8004cdc <_ftoa+0x1b0>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:369
    negative = true;
 8004cc4:	00100793          	li	a5,1
 8004cc8:	fef405a3          	sb	a5,-21(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:370
    value = 0 - value;
 8004ccc:	d2000753          	fcvt.d.w	fa4,zero
 8004cd0:	f8843787          	fld	fa5,-120(s0)
 8004cd4:	0af777d3          	fsub.d	fa5,fa4,fa5
 8004cd8:	f8f43427          	fsd	fa5,-120(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:374
  }

  // set default precision, if not set explicitly
  if (!(flags & FLAGS_PRECISION)) {
 8004cdc:	f7c42783          	lw	a5,-132(s0)
 8004ce0:	4007f793          	andi	a5,a5,1024
 8004ce4:	02079c63          	bnez	a5,8004d1c <_ftoa+0x1f0>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:375
    prec = PRINTF_DEFAULT_FLOAT_PRECISION;
 8004ce8:	00600793          	li	a5,6
 8004cec:	f8f42223          	sw	a5,-124(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:378
  }
  // limit precision to 9, cause a prec >= 10 can lead to overflow errors
  while ((len < PRINTF_FTOA_BUFFER_SIZE) && (prec > 9U)) {
 8004cf0:	02c0006f          	j	8004d1c <_ftoa+0x1f0>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:379
    buf[len++] = '0';
 8004cf4:	fec42783          	lw	a5,-20(s0)
 8004cf8:	00178713          	addi	a4,a5,1
 8004cfc:	fee42623          	sw	a4,-20(s0)
 8004d00:	ff040713          	addi	a4,s0,-16
 8004d04:	00f707b3          	add	a5,a4,a5
 8004d08:	03000713          	li	a4,48
 8004d0c:	fae78c23          	sb	a4,-72(a5)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:380
    prec--;
 8004d10:	f8442783          	lw	a5,-124(s0)
 8004d14:	fff78793          	addi	a5,a5,-1
 8004d18:	f8f42223          	sw	a5,-124(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:378
  while ((len < PRINTF_FTOA_BUFFER_SIZE) && (prec > 9U)) {
 8004d1c:	fec42703          	lw	a4,-20(s0)
 8004d20:	01f00793          	li	a5,31
 8004d24:	00e7e863          	bltu	a5,a4,8004d34 <_ftoa+0x208>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:378 (discriminator 1)
 8004d28:	f8442703          	lw	a4,-124(s0)
 8004d2c:	00900793          	li	a5,9
 8004d30:	fce7e2e3          	bltu	a5,a4,8004cf4 <_ftoa+0x1c8>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:383
  }

  int whole = (int)value;
 8004d34:	f8843787          	fld	fa5,-120(s0)
 8004d38:	c20797d3          	fcvt.w.d	a5,fa5,rtz
 8004d3c:	fef42223          	sw	a5,-28(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:384
  double tmp = (value - whole) * pow10[prec];
 8004d40:	fe442783          	lw	a5,-28(s0)
 8004d44:	d20787d3          	fcvt.d.w	fa5,a5
 8004d48:	f8843707          	fld	fa4,-120(s0)
 8004d4c:	0af77753          	fsub.d	fa4,fa4,fa5
 8004d50:	080097b7          	lui	a5,0x8009
 8004d54:	f8442703          	lw	a4,-124(s0)
 8004d58:	00371713          	slli	a4,a4,0x3
 8004d5c:	e2878793          	addi	a5,a5,-472 # 8008e28 <pow10.1745>
 8004d60:	00f707b3          	add	a5,a4,a5
 8004d64:	0007b787          	fld	fa5,0(a5)
 8004d68:	12f777d3          	fmul.d	fa5,fa4,fa5
 8004d6c:	fcf43427          	fsd	fa5,-56(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:385
  unsigned long frac = (unsigned long)tmp;
 8004d70:	fc843787          	fld	fa5,-56(s0)
 8004d74:	c21797d3          	fcvt.wu.d	a5,fa5,rtz
 8004d78:	fef42023          	sw	a5,-32(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:386
  diff = tmp - frac;
 8004d7c:	fe042783          	lw	a5,-32(s0)
 8004d80:	d21787d3          	fcvt.d.wu	fa5,a5
 8004d84:	fc843707          	fld	fa4,-56(s0)
 8004d88:	0af777d3          	fsub.d	fa5,fa4,fa5
 8004d8c:	fcf43827          	fsd	fa5,-48(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:388

  if (diff > 0.5) {
 8004d90:	fd043707          	fld	fa4,-48(s0)
 8004d94:	080097b7          	lui	a5,0x8009
 8004d98:	e987b787          	fld	fa5,-360(a5) # 8008e98 <pow10.1745+0x70>
 8004d9c:	a2e797d3          	flt.d	a5,fa5,fa4
 8004da0:	04078663          	beqz	a5,8004dec <_ftoa+0x2c0>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:389
    ++frac;
 8004da4:	fe042783          	lw	a5,-32(s0)
 8004da8:	00178793          	addi	a5,a5,1
 8004dac:	fef42023          	sw	a5,-32(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:391
    // handle rollover, e.g. case 0.99 with prec 1 is 1.0
    if (frac >= pow10[prec]) {
 8004db0:	fe042783          	lw	a5,-32(s0)
 8004db4:	d2178753          	fcvt.d.wu	fa4,a5
 8004db8:	080097b7          	lui	a5,0x8009
 8004dbc:	f8442703          	lw	a4,-124(s0)
 8004dc0:	00371713          	slli	a4,a4,0x3
 8004dc4:	e2878793          	addi	a5,a5,-472 # 8008e28 <pow10.1745>
 8004dc8:	00f707b3          	add	a5,a4,a5
 8004dcc:	0007b787          	fld	fa5,0(a5)
 8004dd0:	a2e787d3          	fle.d	a5,fa5,fa4
 8004dd4:	04078663          	beqz	a5,8004e20 <_ftoa+0x2f4>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:392
      frac = 0;
 8004dd8:	fe042023          	sw	zero,-32(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:393
      ++whole;
 8004ddc:	fe442783          	lw	a5,-28(s0)
 8004de0:	00178793          	addi	a5,a5,1
 8004de4:	fef42223          	sw	a5,-28(s0)
 8004de8:	0380006f          	j	8004e20 <_ftoa+0x2f4>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:396
    }
  }
  else if (diff < 0.5) {
 8004dec:	fd043707          	fld	fa4,-48(s0)
 8004df0:	080097b7          	lui	a5,0x8009
 8004df4:	e987b787          	fld	fa5,-360(a5) # 8008e98 <pow10.1745+0x70>
 8004df8:	a2f717d3          	flt.d	a5,fa4,fa5
 8004dfc:	02079263          	bnez	a5,8004e20 <_ftoa+0x2f4>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:398
  }
  else if ((frac == 0U) || (frac & 1U)) {
 8004e00:	fe042783          	lw	a5,-32(s0)
 8004e04:	00078863          	beqz	a5,8004e14 <_ftoa+0x2e8>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:398 (discriminator 1)
 8004e08:	fe042783          	lw	a5,-32(s0)
 8004e0c:	0017f793          	andi	a5,a5,1
 8004e10:	00078863          	beqz	a5,8004e20 <_ftoa+0x2f4>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:400
    // if halfway, round up if odd OR if last digit is 0
    ++frac;
 8004e14:	fe042783          	lw	a5,-32(s0)
 8004e18:	00178793          	addi	a5,a5,1
 8004e1c:	fef42023          	sw	a5,-32(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:403
  }

  if (prec == 0U) {
 8004e20:	f8442783          	lw	a5,-124(s0)
 8004e24:	06079663          	bnez	a5,8004e90 <_ftoa+0x364>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:404
    diff = value - (double)whole;
 8004e28:	fe442783          	lw	a5,-28(s0)
 8004e2c:	d20787d3          	fcvt.d.w	fa5,a5
 8004e30:	f8843707          	fld	fa4,-120(s0)
 8004e34:	0af777d3          	fsub.d	fa5,fa4,fa5
 8004e38:	fcf43827          	fsd	fa5,-48(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:405
    if ((!(diff < 0.5) || (diff > 0.5)) && (whole & 1)) {
 8004e3c:	fd043707          	fld	fa4,-48(s0)
 8004e40:	080097b7          	lui	a5,0x8009
 8004e44:	e987b787          	fld	fa5,-360(a5) # 8008e98 <pow10.1745+0x70>
 8004e48:	a2f717d3          	flt.d	a5,fa4,fa5
 8004e4c:	00f037b3          	snez	a5,a5
 8004e50:	0ff7f793          	andi	a5,a5,255
 8004e54:	0017c793          	xori	a5,a5,1
 8004e58:	0ff7f793          	andi	a5,a5,255
 8004e5c:	00079c63          	bnez	a5,8004e74 <_ftoa+0x348>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:405 (discriminator 2)
 8004e60:	fd043707          	fld	fa4,-48(s0)
 8004e64:	080097b7          	lui	a5,0x8009
 8004e68:	e987b787          	fld	fa5,-360(a5) # 8008e98 <pow10.1745+0x70>
 8004e6c:	a2e797d3          	flt.d	a5,fa5,fa4
 8004e70:	10078463          	beqz	a5,8004f78 <_ftoa+0x44c>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:405 (discriminator 3)
 8004e74:	fe442783          	lw	a5,-28(s0)
 8004e78:	0017f793          	andi	a5,a5,1
 8004e7c:	14078c63          	beqz	a5,8004fd4 <_ftoa+0x4a8>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:408
      // exactly 0.5 and ODD, then round up
      // 1.5 -> 2, but 2.5 -> 2
      ++whole;
 8004e80:	fe442783          	lw	a5,-28(s0)
 8004e84:	00178793          	addi	a5,a5,1
 8004e88:	fef42223          	sw	a5,-28(s0)
 8004e8c:	1480006f          	j	8004fd4 <_ftoa+0x4a8>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:412
    }
  }
  else {
    unsigned int count = prec;
 8004e90:	f8442783          	lw	a5,-124(s0)
 8004e94:	fcf42e23          	sw	a5,-36(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:414
    // now do fractional part, as an unsigned number
    while (len < PRINTF_FTOA_BUFFER_SIZE) {
 8004e98:	0680006f          	j	8004f00 <_ftoa+0x3d4>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:415
      --count;
 8004e9c:	fdc42783          	lw	a5,-36(s0)
 8004ea0:	fff78793          	addi	a5,a5,-1
 8004ea4:	fcf42e23          	sw	a5,-36(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:416
      buf[len++] = (char)(48U + (frac % 10U));
 8004ea8:	fe042783          	lw	a5,-32(s0)
 8004eac:	00a00593          	li	a1,10
 8004eb0:	00078513          	mv	a0,a5
 8004eb4:	445030ef          	jal	ra,8008af8 <__umodsi3>
 8004eb8:	00050793          	mv	a5,a0
 8004ebc:	0ff7f713          	andi	a4,a5,255
 8004ec0:	fec42783          	lw	a5,-20(s0)
 8004ec4:	00178693          	addi	a3,a5,1
 8004ec8:	fed42623          	sw	a3,-20(s0)
 8004ecc:	03070713          	addi	a4,a4,48
 8004ed0:	0ff77713          	andi	a4,a4,255
 8004ed4:	ff040693          	addi	a3,s0,-16
 8004ed8:	00f687b3          	add	a5,a3,a5
 8004edc:	fae78c23          	sb	a4,-72(a5)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:417
      if (!(frac /= 10U)) {
 8004ee0:	fe042783          	lw	a5,-32(s0)
 8004ee4:	00a00593          	li	a1,10
 8004ee8:	00078513          	mv	a0,a5
 8004eec:	3c5030ef          	jal	ra,8008ab0 <__udivsi3>
 8004ef0:	00050793          	mv	a5,a0
 8004ef4:	fef42023          	sw	a5,-32(s0)
 8004ef8:	fe042783          	lw	a5,-32(s0)
 8004efc:	00078a63          	beqz	a5,8004f10 <_ftoa+0x3e4>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:414
    while (len < PRINTF_FTOA_BUFFER_SIZE) {
 8004f00:	fec42703          	lw	a4,-20(s0)
 8004f04:	01f00793          	li	a5,31
 8004f08:	f8e7fae3          	bleu	a4,a5,8004e9c <_ftoa+0x370>
 8004f0c:	0280006f          	j	8004f34 <_ftoa+0x408>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:418
        break;
 8004f10:	00000013          	nop
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:422
      }
    }
    // add extra 0s
    while ((len < PRINTF_FTOA_BUFFER_SIZE) && (count-- > 0U)) {
 8004f14:	0200006f          	j	8004f34 <_ftoa+0x408>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:423
      buf[len++] = '0';
 8004f18:	fec42783          	lw	a5,-20(s0)
 8004f1c:	00178713          	addi	a4,a5,1
 8004f20:	fee42623          	sw	a4,-20(s0)
 8004f24:	ff040713          	addi	a4,s0,-16
 8004f28:	00f707b3          	add	a5,a4,a5
 8004f2c:	03000713          	li	a4,48
 8004f30:	fae78c23          	sb	a4,-72(a5)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:422
    while ((len < PRINTF_FTOA_BUFFER_SIZE) && (count-- > 0U)) {
 8004f34:	fec42703          	lw	a4,-20(s0)
 8004f38:	01f00793          	li	a5,31
 8004f3c:	00e7ea63          	bltu	a5,a4,8004f50 <_ftoa+0x424>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:422 (discriminator 1)
 8004f40:	fdc42783          	lw	a5,-36(s0)
 8004f44:	fff78713          	addi	a4,a5,-1
 8004f48:	fce42e23          	sw	a4,-36(s0)
 8004f4c:	fc0796e3          	bnez	a5,8004f18 <_ftoa+0x3ec>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:425
    }
    if (len < PRINTF_FTOA_BUFFER_SIZE) {
 8004f50:	fec42703          	lw	a4,-20(s0)
 8004f54:	01f00793          	li	a5,31
 8004f58:	06e7ee63          	bltu	a5,a4,8004fd4 <_ftoa+0x4a8>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:427
      // add decimal
      buf[len++] = '.';
 8004f5c:	fec42783          	lw	a5,-20(s0)
 8004f60:	00178713          	addi	a4,a5,1
 8004f64:	fee42623          	sw	a4,-20(s0)
 8004f68:	ff040713          	addi	a4,s0,-16
 8004f6c:	00f707b3          	add	a5,a4,a5
 8004f70:	02e00713          	li	a4,46
 8004f74:	fae78c23          	sb	a4,-72(a5)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:432 (discriminator 1)
    }
  }

  // do whole part, number is reversed
  while (len < PRINTF_FTOA_BUFFER_SIZE) {
 8004f78:	05c0006f          	j	8004fd4 <_ftoa+0x4a8>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:433
    buf[len++] = (char)(48 + (whole % 10));
 8004f7c:	fe442783          	lw	a5,-28(s0)
 8004f80:	00a00593          	li	a1,10
 8004f84:	00078513          	mv	a0,a5
 8004f88:	3a5030ef          	jal	ra,8008b2c <__modsi3>
 8004f8c:	00050793          	mv	a5,a0
 8004f90:	0ff7f713          	andi	a4,a5,255
 8004f94:	fec42783          	lw	a5,-20(s0)
 8004f98:	00178693          	addi	a3,a5,1
 8004f9c:	fed42623          	sw	a3,-20(s0)
 8004fa0:	03070713          	addi	a4,a4,48
 8004fa4:	0ff77713          	andi	a4,a4,255
 8004fa8:	ff040693          	addi	a3,s0,-16
 8004fac:	00f687b3          	add	a5,a3,a5
 8004fb0:	fae78c23          	sb	a4,-72(a5)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:434
    if (!(whole /= 10)) {
 8004fb4:	fe442783          	lw	a5,-28(s0)
 8004fb8:	00a00593          	li	a1,10
 8004fbc:	00078513          	mv	a0,a5
 8004fc0:	2e9030ef          	jal	ra,8008aa8 <__divsi3>
 8004fc4:	00050793          	mv	a5,a0
 8004fc8:	fef42223          	sw	a5,-28(s0)
 8004fcc:	fe442783          	lw	a5,-28(s0)
 8004fd0:	00078a63          	beqz	a5,8004fe4 <_ftoa+0x4b8>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:432
  while (len < PRINTF_FTOA_BUFFER_SIZE) {
 8004fd4:	fec42703          	lw	a4,-20(s0)
 8004fd8:	01f00793          	li	a5,31
 8004fdc:	fae7f0e3          	bleu	a4,a5,8004f7c <_ftoa+0x450>
 8004fe0:	0080006f          	j	8004fe8 <_ftoa+0x4bc>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:435
      break;
 8004fe4:	00000013          	nop
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:440
    }
  }

  // pad leading zeros
  if (!(flags & FLAGS_LEFT) && (flags & FLAGS_ZEROPAD)) {
 8004fe8:	f7c42783          	lw	a5,-132(s0)
 8004fec:	0027f793          	andi	a5,a5,2
 8004ff0:	06079863          	bnez	a5,8005060 <_ftoa+0x534>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:440 (discriminator 1)
 8004ff4:	f7c42783          	lw	a5,-132(s0)
 8004ff8:	0017f793          	andi	a5,a5,1
 8004ffc:	06078263          	beqz	a5,8005060 <_ftoa+0x534>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:441
    if (width && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
 8005000:	f8042783          	lw	a5,-128(s0)
 8005004:	04078263          	beqz	a5,8005048 <_ftoa+0x51c>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:441 (discriminator 1)
 8005008:	feb44783          	lbu	a5,-21(s0)
 800500c:	00079863          	bnez	a5,800501c <_ftoa+0x4f0>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:441 (discriminator 2)
 8005010:	f7c42783          	lw	a5,-132(s0)
 8005014:	00c7f793          	andi	a5,a5,12
 8005018:	02078863          	beqz	a5,8005048 <_ftoa+0x51c>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:442
      width--;
 800501c:	f8042783          	lw	a5,-128(s0)
 8005020:	fff78793          	addi	a5,a5,-1
 8005024:	f8f42023          	sw	a5,-128(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:444
    }
    while ((len < width) && (len < PRINTF_FTOA_BUFFER_SIZE)) {
 8005028:	0200006f          	j	8005048 <_ftoa+0x51c>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:445
      buf[len++] = '0';
 800502c:	fec42783          	lw	a5,-20(s0)
 8005030:	00178713          	addi	a4,a5,1
 8005034:	fee42623          	sw	a4,-20(s0)
 8005038:	ff040713          	addi	a4,s0,-16
 800503c:	00f707b3          	add	a5,a4,a5
 8005040:	03000713          	li	a4,48
 8005044:	fae78c23          	sb	a4,-72(a5)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:444
    while ((len < width) && (len < PRINTF_FTOA_BUFFER_SIZE)) {
 8005048:	fec42703          	lw	a4,-20(s0)
 800504c:	f8042783          	lw	a5,-128(s0)
 8005050:	00f77863          	bleu	a5,a4,8005060 <_ftoa+0x534>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:444 (discriminator 1)
 8005054:	fec42703          	lw	a4,-20(s0)
 8005058:	01f00793          	li	a5,31
 800505c:	fce7f8e3          	bleu	a4,a5,800502c <_ftoa+0x500>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:449
    }
  }

  if (len < PRINTF_FTOA_BUFFER_SIZE) {
 8005060:	fec42703          	lw	a4,-20(s0)
 8005064:	01f00793          	li	a5,31
 8005068:	08e7e063          	bltu	a5,a4,80050e8 <_ftoa+0x5bc>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:450
    if (negative) {
 800506c:	feb44783          	lbu	a5,-21(s0)
 8005070:	02078263          	beqz	a5,8005094 <_ftoa+0x568>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:451
      buf[len++] = '-';
 8005074:	fec42783          	lw	a5,-20(s0)
 8005078:	00178713          	addi	a4,a5,1
 800507c:	fee42623          	sw	a4,-20(s0)
 8005080:	ff040713          	addi	a4,s0,-16
 8005084:	00f707b3          	add	a5,a4,a5
 8005088:	02d00713          	li	a4,45
 800508c:	fae78c23          	sb	a4,-72(a5)
 8005090:	0580006f          	j	80050e8 <_ftoa+0x5bc>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:453
    }
    else if (flags & FLAGS_PLUS) {
 8005094:	f7c42783          	lw	a5,-132(s0)
 8005098:	0047f793          	andi	a5,a5,4
 800509c:	02078263          	beqz	a5,80050c0 <_ftoa+0x594>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:454
      buf[len++] = '+';  // ignore the space if the '+' exists
 80050a0:	fec42783          	lw	a5,-20(s0)
 80050a4:	00178713          	addi	a4,a5,1
 80050a8:	fee42623          	sw	a4,-20(s0)
 80050ac:	ff040713          	addi	a4,s0,-16
 80050b0:	00f707b3          	add	a5,a4,a5
 80050b4:	02b00713          	li	a4,43
 80050b8:	fae78c23          	sb	a4,-72(a5)
 80050bc:	02c0006f          	j	80050e8 <_ftoa+0x5bc>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:456
    }
    else if (flags & FLAGS_SPACE) {
 80050c0:	f7c42783          	lw	a5,-132(s0)
 80050c4:	0087f793          	andi	a5,a5,8
 80050c8:	02078063          	beqz	a5,80050e8 <_ftoa+0x5bc>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:457
      buf[len++] = ' ';
 80050cc:	fec42783          	lw	a5,-20(s0)
 80050d0:	00178713          	addi	a4,a5,1
 80050d4:	fee42623          	sw	a4,-20(s0)
 80050d8:	ff040713          	addi	a4,s0,-16
 80050dc:	00f707b3          	add	a5,a4,a5
 80050e0:	02000713          	li	a4,32
 80050e4:	fae78c23          	sb	a4,-72(a5)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:461
    }
  }

  return _out_rev(out, buffer, idx, maxlen, buf, len, width, flags);
 80050e8:	fa840713          	addi	a4,s0,-88
 80050ec:	f7c42883          	lw	a7,-132(s0)
 80050f0:	f8042803          	lw	a6,-128(s0)
 80050f4:	fec42783          	lw	a5,-20(s0)
 80050f8:	f9042683          	lw	a3,-112(s0)
 80050fc:	f9442603          	lw	a2,-108(s0)
 8005100:	f9842583          	lw	a1,-104(s0)
 8005104:	f9c42503          	lw	a0,-100(s0)
 8005108:	b00ff0ef          	jal	ra,8004408 <_out_rev>
 800510c:	00050793          	mv	a5,a0
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:462 (discriminator 3)
}
 8005110:	00078513          	mv	a0,a5
 8005114:	08c12083          	lw	ra,140(sp)
 8005118:	08812403          	lw	s0,136(sp)
 800511c:	09010113          	addi	sp,sp,144
 8005120:	00008067          	ret

08005124 <_etoa>:
_etoa():
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:468


#if defined(PRINTF_SUPPORT_EXPONENTIAL)
// internal ftoa variant for exponential floating-point type, contributed by Martijn Jasperse <m.jasperse@gmail.com>
static size_t _etoa(out_fct_type out, char* buffer, size_t idx, size_t maxlen, double value, unsigned int prec, unsigned int width, unsigned int flags)
{
 8005124:	f6010113          	addi	sp,sp,-160
 8005128:	08112e23          	sw	ra,156(sp)
 800512c:	08812c23          	sw	s0,152(sp)
 8005130:	09212a23          	sw	s2,148(sp)
 8005134:	09312823          	sw	s3,144(sp)
 8005138:	09412623          	sw	s4,140(sp)
 800513c:	09512423          	sw	s5,136(sp)
 8005140:	0a010413          	addi	s0,sp,160
 8005144:	f8a42e23          	sw	a0,-100(s0)
 8005148:	f8b42c23          	sw	a1,-104(s0)
 800514c:	f8c42a23          	sw	a2,-108(s0)
 8005150:	f8d42823          	sw	a3,-112(s0)
 8005154:	f8a43427          	fsd	fa0,-120(s0)
 8005158:	f8e42223          	sw	a4,-124(s0)
 800515c:	f8f42023          	sw	a5,-128(s0)
 8005160:	f7042e23          	sw	a6,-132(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:470
  // check for NaN and special values
  if ((value != value) || (value > DBL_MAX) || (value < -DBL_MAX)) {
 8005164:	f8843707          	fld	fa4,-120(s0)
 8005168:	f8843787          	fld	fa5,-120(s0)
 800516c:	a2f727d3          	feq.d	a5,fa4,fa5
 8005170:	02078663          	beqz	a5,800519c <_etoa+0x78>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:470 (discriminator 1)
 8005174:	f8843707          	fld	fa4,-120(s0)
 8005178:	080097b7          	lui	a5,0x8009
 800517c:	e807b787          	fld	fa5,-384(a5) # 8008e80 <pow10.1745+0x58>
 8005180:	a2e797d3          	flt.d	a5,fa5,fa4
 8005184:	00079c63          	bnez	a5,800519c <_etoa+0x78>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:470 (discriminator 2)
 8005188:	f8843707          	fld	fa4,-120(s0)
 800518c:	080097b7          	lui	a5,0x8009
 8005190:	e787b787          	fld	fa5,-392(a5) # 8008e78 <pow10.1745+0x50>
 8005194:	a2f717d3          	flt.d	a5,fa4,fa5
 8005198:	02078863          	beqz	a5,80051c8 <_etoa+0xa4>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:471
    return _ftoa(out, buffer, idx, maxlen, value, prec, width, flags);
 800519c:	f7c42803          	lw	a6,-132(s0)
 80051a0:	f8042783          	lw	a5,-128(s0)
 80051a4:	f8442703          	lw	a4,-124(s0)
 80051a8:	f8843507          	fld	fa0,-120(s0)
 80051ac:	f9042683          	lw	a3,-112(s0)
 80051b0:	f9442603          	lw	a2,-108(s0)
 80051b4:	f9842583          	lw	a1,-104(s0)
 80051b8:	f9c42503          	lw	a0,-100(s0)
 80051bc:	971ff0ef          	jal	ra,8004b2c <_ftoa>
 80051c0:	00050793          	mv	a5,a0
 80051c4:	4700006f          	j	8005634 <_etoa+0x510>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:475
  }

  // determine the sign
  const bool negative = value < 0;
 80051c8:	f8843787          	fld	fa5,-120(s0)
 80051cc:	d2000753          	fcvt.d.w	fa4,zero
 80051d0:	a2e797d3          	flt.d	a5,fa5,fa4
 80051d4:	00f037b3          	snez	a5,a5
 80051d8:	fcf409a3          	sb	a5,-45(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:476
  if (negative) {
 80051dc:	fd344783          	lbu	a5,-45(s0)
 80051e0:	00078863          	beqz	a5,80051f0 <_etoa+0xcc>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:477
    value = -value;
 80051e4:	f8843787          	fld	fa5,-120(s0)
 80051e8:	22f797d3          	fneg.d	fa5,fa5
 80051ec:	f8f43427          	fsd	fa5,-120(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:481
  }

  // default precision
  if (!(flags & FLAGS_PRECISION)) {
 80051f0:	f7c42783          	lw	a5,-132(s0)
 80051f4:	4007f793          	andi	a5,a5,1024
 80051f8:	00079663          	bnez	a5,8005204 <_etoa+0xe0>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:482
    prec = PRINTF_DEFAULT_FLOAT_PRECISION;
 80051fc:	00600793          	li	a5,6
 8005200:	f8f42223          	sw	a5,-124(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:492
  union {
    uint64_t U;
    double   F;
  } conv;

  conv.F = value;
 8005204:	f8843787          	fld	fa5,-120(s0)
 8005208:	faf43427          	fsd	fa5,-88(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:493
  int exp2 = (int)((conv.U >> 52U) & 0x07FFU) - 1023;           // effectively log2
 800520c:	fa842783          	lw	a5,-88(s0)
 8005210:	fac42803          	lw	a6,-84(s0)
 8005214:	01485a13          	srli	s4,a6,0x14
 8005218:	00000a93          	li	s5,0
 800521c:	000a0793          	mv	a5,s4
 8005220:	7ff7f793          	andi	a5,a5,2047
 8005224:	c0178793          	addi	a5,a5,-1023
 8005228:	fcf42623          	sw	a5,-52(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:494
  conv.U = (conv.U & ((1ULL << 52U) - 1U)) | (1023ULL << 52U);  // drop the exponent so conv.F is now in [1,2)
 800522c:	fa842783          	lw	a5,-88(s0)
 8005230:	fac42803          	lw	a6,-84(s0)
 8005234:	fff7f313          	andi	t1,a5,-1
 8005238:	00100737          	lui	a4,0x100
 800523c:	fff70713          	addi	a4,a4,-1 # fffff <_start-0x7f04001>
 8005240:	00e873b3          	and	t2,a6,a4
 8005244:	00036e13          	ori	t3,t1,0
 8005248:	3ff007b7          	lui	a5,0x3ff00
 800524c:	00f3eeb3          	or	t4,t2,a5
 8005250:	fbc42423          	sw	t3,-88(s0)
 8005254:	fbd42623          	sw	t4,-84(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:496
  // now approximate log10 from the log2 integer part and an expansion of ln around 1.5
  int expval = (int)(0.1760912590558 + exp2 * 0.301029995663981 + (conv.F - 1.5) * 0.289529654602168);
 8005258:	fcc42783          	lw	a5,-52(s0)
 800525c:	d2078753          	fcvt.d.w	fa4,a5
 8005260:	080097b7          	lui	a5,0x8009
 8005264:	ea07b787          	fld	fa5,-352(a5) # 8008ea0 <pow10.1745+0x78>
 8005268:	12f77753          	fmul.d	fa4,fa4,fa5
 800526c:	080097b7          	lui	a5,0x8009
 8005270:	ea87b787          	fld	fa5,-344(a5) # 8008ea8 <pow10.1745+0x80>
 8005274:	02f77753          	fadd.d	fa4,fa4,fa5
 8005278:	fa843687          	fld	fa3,-88(s0)
 800527c:	080097b7          	lui	a5,0x8009
 8005280:	eb07b787          	fld	fa5,-336(a5) # 8008eb0 <pow10.1745+0x88>
 8005284:	0af6f6d3          	fsub.d	fa3,fa3,fa5
 8005288:	080097b7          	lui	a5,0x8009
 800528c:	eb87b787          	fld	fa5,-328(a5) # 8008eb8 <pow10.1745+0x90>
 8005290:	12f6f7d3          	fmul.d	fa5,fa3,fa5
 8005294:	02f777d3          	fadd.d	fa5,fa4,fa5
 8005298:	c20797d3          	fcvt.w.d	a5,fa5,rtz
 800529c:	fcf42e23          	sw	a5,-36(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:498
  // now we want to compute 10^expval but we want to be sure it won't overflow
  exp2 = (int)(expval * 3.321928094887362 + 0.5);
 80052a0:	fdc42783          	lw	a5,-36(s0)
 80052a4:	d2078753          	fcvt.d.w	fa4,a5
 80052a8:	080097b7          	lui	a5,0x8009
 80052ac:	ec07b787          	fld	fa5,-320(a5) # 8008ec0 <pow10.1745+0x98>
 80052b0:	12f77753          	fmul.d	fa4,fa4,fa5
 80052b4:	080097b7          	lui	a5,0x8009
 80052b8:	e987b787          	fld	fa5,-360(a5) # 8008e98 <pow10.1745+0x70>
 80052bc:	02f777d3          	fadd.d	fa5,fa4,fa5
 80052c0:	c20797d3          	fcvt.w.d	a5,fa5,rtz
 80052c4:	fcf42623          	sw	a5,-52(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:499
  const double z  = expval * 2.302585092994046 - exp2 * 0.6931471805599453;
 80052c8:	fdc42783          	lw	a5,-36(s0)
 80052cc:	d2078753          	fcvt.d.w	fa4,a5
 80052d0:	080097b7          	lui	a5,0x8009
 80052d4:	ec87b787          	fld	fa5,-312(a5) # 8008ec8 <pow10.1745+0xa0>
 80052d8:	12f77753          	fmul.d	fa4,fa4,fa5
 80052dc:	fcc42783          	lw	a5,-52(s0)
 80052e0:	d20786d3          	fcvt.d.w	fa3,a5
 80052e4:	080097b7          	lui	a5,0x8009
 80052e8:	ed07b787          	fld	fa5,-304(a5) # 8008ed0 <pow10.1745+0xa8>
 80052ec:	12f6f7d3          	fmul.d	fa5,fa3,fa5
 80052f0:	0af777d3          	fsub.d	fa5,fa4,fa5
 80052f4:	fcf43027          	fsd	fa5,-64(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:500
  const double z2 = z * z;
 80052f8:	fc043707          	fld	fa4,-64(s0)
 80052fc:	fc043787          	fld	fa5,-64(s0)
 8005300:	12f777d3          	fmul.d	fa5,fa4,fa5
 8005304:	faf43c27          	fsd	fa5,-72(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:501
  conv.U = (uint64_t)(exp2 + 1023) << 52U;
 8005308:	fcc42783          	lw	a5,-52(s0)
 800530c:	3ff78793          	addi	a5,a5,1023
 8005310:	00078913          	mv	s2,a5
 8005314:	41f7d793          	srai	a5,a5,0x1f
 8005318:	00078993          	mv	s3,a5
 800531c:	01491f93          	slli	t6,s2,0x14
 8005320:	00000f13          	li	t5,0
 8005324:	fbe42423          	sw	t5,-88(s0)
 8005328:	fbf42623          	sw	t6,-84(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:503
  // compute exp(z) using continued fractions, see https://en.wikipedia.org/wiki/Exponential_function#Continued_fractions_for_ex
  conv.F *= 1 + 2 * z / (2 - z + (z2 / (6 + (z2 / (10 + z2 / 14)))));
 800532c:	fa843707          	fld	fa4,-88(s0)
 8005330:	fc043787          	fld	fa5,-64(s0)
 8005334:	02f7f6d3          	fadd.d	fa3,fa5,fa5
 8005338:	080097b7          	lui	a5,0x8009
 800533c:	ed87b607          	fld	fa2,-296(a5) # 8008ed8 <pow10.1745+0xb0>
 8005340:	fc043787          	fld	fa5,-64(s0)
 8005344:	0af67653          	fsub.d	fa2,fa2,fa5
 8005348:	fb843587          	fld	fa1,-72(s0)
 800534c:	080097b7          	lui	a5,0x8009
 8005350:	ee07b787          	fld	fa5,-288(a5) # 8008ee0 <pow10.1745+0xb8>
 8005354:	1af5f5d3          	fdiv.d	fa1,fa1,fa5
 8005358:	080097b7          	lui	a5,0x8009
 800535c:	ee87b787          	fld	fa5,-280(a5) # 8008ee8 <pow10.1745+0xc0>
 8005360:	02f5f7d3          	fadd.d	fa5,fa1,fa5
 8005364:	fb843587          	fld	fa1,-72(s0)
 8005368:	1af5f5d3          	fdiv.d	fa1,fa1,fa5
 800536c:	080097b7          	lui	a5,0x8009
 8005370:	ef07b787          	fld	fa5,-272(a5) # 8008ef0 <pow10.1745+0xc8>
 8005374:	02f5f7d3          	fadd.d	fa5,fa1,fa5
 8005378:	fb843587          	fld	fa1,-72(s0)
 800537c:	1af5f7d3          	fdiv.d	fa5,fa1,fa5
 8005380:	02f677d3          	fadd.d	fa5,fa2,fa5
 8005384:	1af6f6d3          	fdiv.d	fa3,fa3,fa5
 8005388:	080097b7          	lui	a5,0x8009
 800538c:	ef87b787          	fld	fa5,-264(a5) # 8008ef8 <pow10.1745+0xd0>
 8005390:	02f6f7d3          	fadd.d	fa5,fa3,fa5
 8005394:	12f777d3          	fmul.d	fa5,fa4,fa5
 8005398:	faf43427          	fsd	fa5,-88(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:505
  // correct for rounding errors
  if (value < conv.F) {
 800539c:	fa843787          	fld	fa5,-88(s0)
 80053a0:	f8843707          	fld	fa4,-120(s0)
 80053a4:	a2f717d3          	flt.d	a5,fa4,fa5
 80053a8:	02078263          	beqz	a5,80053cc <_etoa+0x2a8>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:506
    expval--;
 80053ac:	fdc42783          	lw	a5,-36(s0)
 80053b0:	fff78793          	addi	a5,a5,-1
 80053b4:	fcf42e23          	sw	a5,-36(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:507
    conv.F /= 10;
 80053b8:	fa843707          	fld	fa4,-88(s0)
 80053bc:	080097b7          	lui	a5,0x8009
 80053c0:	ee87b787          	fld	fa5,-280(a5) # 8008ee8 <pow10.1745+0xc0>
 80053c4:	1af777d3          	fdiv.d	fa5,fa4,fa5
 80053c8:	faf43427          	fsd	fa5,-88(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:511
  }

  // the exponent format is "%+03d" and largest value is "307", so set aside 4-5 characters
  unsigned int minwidth = ((expval < 100) && (expval > -100)) ? 4U : 5U;
 80053cc:	fdc42703          	lw	a4,-36(s0)
 80053d0:	06300793          	li	a5,99
 80053d4:	00e7cc63          	blt	a5,a4,80053ec <_etoa+0x2c8>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:511 (discriminator 1)
 80053d8:	fdc42703          	lw	a4,-36(s0)
 80053dc:	f9d00793          	li	a5,-99
 80053e0:	00f74663          	blt	a4,a5,80053ec <_etoa+0x2c8>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:511 (discriminator 3)
 80053e4:	00400793          	li	a5,4
 80053e8:	0080006f          	j	80053f0 <_etoa+0x2cc>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:511 (discriminator 4)
 80053ec:	00500793          	li	a5,5
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:511 (discriminator 6)
 80053f0:	fcf42c23          	sw	a5,-40(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:514 (discriminator 6)

  // in "%g" mode, "prec" is the number of *significant figures* not decimals
  if (flags & FLAGS_ADAPT_EXP) {
 80053f4:	f7c42703          	lw	a4,-132(s0)
 80053f8:	000017b7          	lui	a5,0x1
 80053fc:	80078793          	addi	a5,a5,-2048 # 800 <_start-0x8003800>
 8005400:	00f777b3          	and	a5,a4,a5
 8005404:	08078663          	beqz	a5,8005490 <_etoa+0x36c>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:516
    // do we want to fall-back to "%f" mode?
    if ((value >= 1e-4) && (value < 1e6)) {
 8005408:	f8843707          	fld	fa4,-120(s0)
 800540c:	080097b7          	lui	a5,0x8009
 8005410:	f007b787          	fld	fa5,-256(a5) # 8008f00 <pow10.1745+0xd8>
 8005414:	a2e787d3          	fle.d	a5,fa5,fa4
 8005418:	04078c63          	beqz	a5,8005470 <_etoa+0x34c>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:516 (discriminator 1)
 800541c:	f8843707          	fld	fa4,-120(s0)
 8005420:	080097b7          	lui	a5,0x8009
 8005424:	f087b787          	fld	fa5,-248(a5) # 8008f08 <pow10.1745+0xe0>
 8005428:	a2f717d3          	flt.d	a5,fa4,fa5
 800542c:	04078263          	beqz	a5,8005470 <_etoa+0x34c>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:517
      if ((int)prec > expval) {
 8005430:	f8442783          	lw	a5,-124(s0)
 8005434:	fdc42703          	lw	a4,-36(s0)
 8005438:	00f75e63          	ble	a5,a4,8005454 <_etoa+0x330>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:518
        prec = (unsigned)((int)prec - expval - 1);
 800543c:	f8442703          	lw	a4,-124(s0)
 8005440:	fdc42783          	lw	a5,-36(s0)
 8005444:	40f707b3          	sub	a5,a4,a5
 8005448:	fff78793          	addi	a5,a5,-1
 800544c:	f8f42223          	sw	a5,-124(s0)
 8005450:	0080006f          	j	8005458 <_etoa+0x334>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:521
      }
      else {
        prec = 0;
 8005454:	f8042223          	sw	zero,-124(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:523
      }
      flags |= FLAGS_PRECISION;   // make sure _ftoa respects precision
 8005458:	f7c42783          	lw	a5,-132(s0)
 800545c:	4007e793          	ori	a5,a5,1024
 8005460:	f6f42e23          	sw	a5,-132(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:525
      // no characters in exponent
      minwidth = 0U;
 8005464:	fc042c23          	sw	zero,-40(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:526
      expval   = 0;
 8005468:	fc042e23          	sw	zero,-36(s0)
 800546c:	0240006f          	j	8005490 <_etoa+0x36c>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:530
    }
    else {
      // we use one sigfig for the whole part
      if ((prec > 0) && (flags & FLAGS_PRECISION)) {
 8005470:	f8442783          	lw	a5,-124(s0)
 8005474:	00078e63          	beqz	a5,8005490 <_etoa+0x36c>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:530 (discriminator 1)
 8005478:	f7c42783          	lw	a5,-132(s0)
 800547c:	4007f793          	andi	a5,a5,1024
 8005480:	00078863          	beqz	a5,8005490 <_etoa+0x36c>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:531
        --prec;
 8005484:	f8442783          	lw	a5,-124(s0)
 8005488:	fff78793          	addi	a5,a5,-1
 800548c:	f8f42223          	sw	a5,-124(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:537
      }
    }
  }

  // will everything fit?
  unsigned int fwidth = width;
 8005490:	f8042783          	lw	a5,-128(s0)
 8005494:	fcf42a23          	sw	a5,-44(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:538
  if (width > minwidth) {
 8005498:	f8042703          	lw	a4,-128(s0)
 800549c:	fd842783          	lw	a5,-40(s0)
 80054a0:	00e7fc63          	bleu	a4,a5,80054b8 <_etoa+0x394>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:540
    // we didn't fall-back so subtract the characters required for the exponent
    fwidth -= minwidth;
 80054a4:	fd442703          	lw	a4,-44(s0)
 80054a8:	fd842783          	lw	a5,-40(s0)
 80054ac:	40f707b3          	sub	a5,a4,a5
 80054b0:	fcf42a23          	sw	a5,-44(s0)
 80054b4:	0080006f          	j	80054bc <_etoa+0x398>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:543
  } else {
    // not enough characters, so go back to default sizing
    fwidth = 0U;
 80054b8:	fc042a23          	sw	zero,-44(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:545
  }
  if ((flags & FLAGS_LEFT) && minwidth) {
 80054bc:	f7c42783          	lw	a5,-132(s0)
 80054c0:	0027f793          	andi	a5,a5,2
 80054c4:	00078863          	beqz	a5,80054d4 <_etoa+0x3b0>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:545 (discriminator 1)
 80054c8:	fd842783          	lw	a5,-40(s0)
 80054cc:	00078463          	beqz	a5,80054d4 <_etoa+0x3b0>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:547
    // if we're padding on the right, DON'T pad the floating part
    fwidth = 0U;
 80054d0:	fc042a23          	sw	zero,-44(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:551
  }

  // rescale the float value
  if (expval) {
 80054d4:	fdc42783          	lw	a5,-36(s0)
 80054d8:	00078a63          	beqz	a5,80054ec <_etoa+0x3c8>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:552
    value /= conv.F;
 80054dc:	fa843787          	fld	fa5,-88(s0)
 80054e0:	f8843707          	fld	fa4,-120(s0)
 80054e4:	1af777d3          	fdiv.d	fa5,fa4,fa5
 80054e8:	f8f43427          	fsd	fa5,-120(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:556
  }

  // output the floating part
  const size_t start_idx = idx;
 80054ec:	f9442783          	lw	a5,-108(s0)
 80054f0:	faf42a23          	sw	a5,-76(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:557
  idx = _ftoa(out, buffer, idx, maxlen, negative ? -value : value, prec, fwidth, flags & ~FLAGS_ADAPT_EXP);
 80054f4:	fd344783          	lbu	a5,-45(s0)
 80054f8:	00078863          	beqz	a5,8005508 <_etoa+0x3e4>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:557 (discriminator 1)
 80054fc:	f8843787          	fld	fa5,-120(s0)
 8005500:	22f797d3          	fneg.d	fa5,fa5
 8005504:	0080006f          	j	800550c <_etoa+0x3e8>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:557 (discriminator 2)
 8005508:	f8843787          	fld	fa5,-120(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:557 (discriminator 4)
 800550c:	f7c42703          	lw	a4,-132(s0)
 8005510:	fffff7b7          	lui	a5,0xfffff
 8005514:	7ff78793          	addi	a5,a5,2047 # fffff7ff <__global_pointer$+0xf7ff4697>
 8005518:	00f777b3          	and	a5,a4,a5
 800551c:	00078813          	mv	a6,a5
 8005520:	fd442783          	lw	a5,-44(s0)
 8005524:	f8442703          	lw	a4,-124(s0)
 8005528:	22f78553          	fmv.d	fa0,fa5
 800552c:	f9042683          	lw	a3,-112(s0)
 8005530:	f9442603          	lw	a2,-108(s0)
 8005534:	f9842583          	lw	a1,-104(s0)
 8005538:	f9c42503          	lw	a0,-100(s0)
 800553c:	df0ff0ef          	jal	ra,8004b2c <_ftoa>
 8005540:	f8a42a23          	sw	a0,-108(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:560 (discriminator 4)

  // output the exponent part
  if (minwidth) {
 8005544:	fd842783          	lw	a5,-40(s0)
 8005548:	0e078463          	beqz	a5,8005630 <_etoa+0x50c>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:562
    // output the exponential symbol
    out((flags & FLAGS_UPPERCASE) ? 'E' : 'e', buffer, idx++, maxlen);
 800554c:	f7c42783          	lw	a5,-132(s0)
 8005550:	0207f793          	andi	a5,a5,32
 8005554:	00078663          	beqz	a5,8005560 <_etoa+0x43c>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:562 (discriminator 1)
 8005558:	04500793          	li	a5,69
 800555c:	0080006f          	j	8005564 <_etoa+0x440>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:562 (discriminator 2)
 8005560:	06500793          	li	a5,101
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:562 (discriminator 4)
 8005564:	f9442703          	lw	a4,-108(s0)
 8005568:	00170693          	addi	a3,a4,1
 800556c:	f8d42a23          	sw	a3,-108(s0)
 8005570:	f9c42803          	lw	a6,-100(s0)
 8005574:	f9042683          	lw	a3,-112(s0)
 8005578:	00070613          	mv	a2,a4
 800557c:	f9842583          	lw	a1,-104(s0)
 8005580:	00078513          	mv	a0,a5
 8005584:	000800e7          	jalr	a6
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:564 (discriminator 4)
    // output the exponent value
    idx = _ntoa_long(out, buffer, idx, maxlen, (expval < 0) ? -expval : expval, expval < 0, 10, 0, minwidth-1, FLAGS_ZEROPAD | FLAGS_PLUS);
 8005588:	fdc42783          	lw	a5,-36(s0)
 800558c:	41f7d713          	srai	a4,a5,0x1f
 8005590:	fdc42783          	lw	a5,-36(s0)
 8005594:	00f747b3          	xor	a5,a4,a5
 8005598:	40e787b3          	sub	a5,a5,a4
 800559c:	00078613          	mv	a2,a5
 80055a0:	fdc42783          	lw	a5,-36(s0)
 80055a4:	01f7d793          	srli	a5,a5,0x1f
 80055a8:	0ff7f693          	andi	a3,a5,255
 80055ac:	fd842783          	lw	a5,-40(s0)
 80055b0:	fff78793          	addi	a5,a5,-1
 80055b4:	00500713          	li	a4,5
 80055b8:	00e12223          	sw	a4,4(sp)
 80055bc:	00f12023          	sw	a5,0(sp)
 80055c0:	00000893          	li	a7,0
 80055c4:	00a00813          	li	a6,10
 80055c8:	00068793          	mv	a5,a3
 80055cc:	00060713          	mv	a4,a2
 80055d0:	f9042683          	lw	a3,-112(s0)
 80055d4:	f9442603          	lw	a2,-108(s0)
 80055d8:	f9842583          	lw	a1,-104(s0)
 80055dc:	f9c42503          	lw	a0,-100(s0)
 80055e0:	a64ff0ef          	jal	ra,8004844 <_ntoa_long>
 80055e4:	f8a42a23          	sw	a0,-108(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:566 (discriminator 4)
    // might need to right-pad spaces
    if (flags & FLAGS_LEFT) {
 80055e8:	f7c42783          	lw	a5,-132(s0)
 80055ec:	0027f793          	andi	a5,a5,2
 80055f0:	04078063          	beqz	a5,8005630 <_etoa+0x50c>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:567
      while (idx - start_idx < width) out(' ', buffer, idx++, maxlen);
 80055f4:	0280006f          	j	800561c <_etoa+0x4f8>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:567 (discriminator 2)
 80055f8:	f9442783          	lw	a5,-108(s0)
 80055fc:	00178713          	addi	a4,a5,1
 8005600:	f8e42a23          	sw	a4,-108(s0)
 8005604:	f9c42703          	lw	a4,-100(s0)
 8005608:	f9042683          	lw	a3,-112(s0)
 800560c:	00078613          	mv	a2,a5
 8005610:	f9842583          	lw	a1,-104(s0)
 8005614:	02000513          	li	a0,32
 8005618:	000700e7          	jalr	a4
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:567 (discriminator 1)
 800561c:	f9442703          	lw	a4,-108(s0)
 8005620:	fb442783          	lw	a5,-76(s0)
 8005624:	40f707b3          	sub	a5,a4,a5
 8005628:	f8042703          	lw	a4,-128(s0)
 800562c:	fce7e6e3          	bltu	a5,a4,80055f8 <_etoa+0x4d4>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:570
    }
  }
  return idx;
 8005630:	f9442783          	lw	a5,-108(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:571 (discriminator 1)
}
 8005634:	00078513          	mv	a0,a5
 8005638:	09c12083          	lw	ra,156(sp)
 800563c:	09812403          	lw	s0,152(sp)
 8005640:	09412903          	lw	s2,148(sp)
 8005644:	09012983          	lw	s3,144(sp)
 8005648:	08c12a03          	lw	s4,140(sp)
 800564c:	08812a83          	lw	s5,136(sp)
 8005650:	0a010113          	addi	sp,sp,160
 8005654:	00008067          	ret

08005658 <_vsnprintf>:
_vsnprintf():
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:578
#endif  // PRINTF_SUPPORT_FLOAT


// internal vsnprintf
static int _vsnprintf(out_fct_type out, char* buffer, const size_t maxlen, const char* format, va_list va)
{
 8005658:	f5010113          	addi	sp,sp,-176
 800565c:	0a112623          	sw	ra,172(sp)
 8005660:	0a812423          	sw	s0,168(sp)
 8005664:	0b212223          	sw	s2,164(sp)
 8005668:	0b312023          	sw	s3,160(sp)
 800566c:	09412e23          	sw	s4,156(sp)
 8005670:	09512c23          	sw	s5,152(sp)
 8005674:	09612a23          	sw	s6,148(sp)
 8005678:	09712823          	sw	s7,144(sp)
 800567c:	09812623          	sw	s8,140(sp)
 8005680:	09912423          	sw	s9,136(sp)
 8005684:	09a12223          	sw	s10,132(sp)
 8005688:	09b12023          	sw	s11,128(sp)
 800568c:	0b010413          	addi	s0,sp,176
 8005690:	f6a42e23          	sw	a0,-132(s0)
 8005694:	f6b42c23          	sw	a1,-136(s0)
 8005698:	f6c42a23          	sw	a2,-140(s0)
 800569c:	f6d42823          	sw	a3,-144(s0)
 80056a0:	f6e42623          	sw	a4,-148(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:580
  unsigned int flags, width, precision, n;
  size_t idx = 0U;
 80056a4:	fa042e23          	sw	zero,-68(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:582

  if (!buffer) {
 80056a8:	f7842783          	lw	a5,-136(s0)
 80056ac:	4c079ce3          	bnez	a5,8006384 <_vsnprintf+0xd2c>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:584
    // use null output function
    out = _out_null;
 80056b0:	080047b7          	lui	a5,0x8004
 80056b4:	1ec78793          	addi	a5,a5,492 # 80041ec <_out_null>
 80056b8:	f6f42e23          	sw	a5,-132(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:587
  }

  while (*format)
 80056bc:	4c90006f          	j	8006384 <_vsnprintf+0xd2c>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:590
  {
    // format specifier?  %[flags][width][.precision][length]
    if (*format != '%') {
 80056c0:	f7042783          	lw	a5,-144(s0)
 80056c4:	0007c703          	lbu	a4,0(a5)
 80056c8:	02500793          	li	a5,37
 80056cc:	02f70e63          	beq	a4,a5,8005708 <_vsnprintf+0xb0>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:592
      // no
      out(*format, buffer, idx++, maxlen);
 80056d0:	f7042783          	lw	a5,-144(s0)
 80056d4:	0007c503          	lbu	a0,0(a5)
 80056d8:	fbc42783          	lw	a5,-68(s0)
 80056dc:	00178713          	addi	a4,a5,1
 80056e0:	fae42e23          	sw	a4,-68(s0)
 80056e4:	f7c42703          	lw	a4,-132(s0)
 80056e8:	f7442683          	lw	a3,-140(s0)
 80056ec:	00078613          	mv	a2,a5
 80056f0:	f7842583          	lw	a1,-136(s0)
 80056f4:	000700e7          	jalr	a4
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:593
      format++;
 80056f8:	f7042783          	lw	a5,-144(s0)
 80056fc:	00178793          	addi	a5,a5,1
 8005700:	f6f42823          	sw	a5,-144(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:594
      continue;
 8005704:	4810006f          	j	8006384 <_vsnprintf+0xd2c>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:598
    }
    else {
      // yes, evaluate it
      format++;
 8005708:	f7042783          	lw	a5,-144(s0)
 800570c:	00178793          	addi	a5,a5,1
 8005710:	f6f42823          	sw	a5,-144(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:602
    }

    // evaluate flags
    flags = 0U;
 8005714:	fc042623          	sw	zero,-52(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:604
    do {
      switch (*format) {
 8005718:	f7042783          	lw	a5,-144(s0)
 800571c:	0007c783          	lbu	a5,0(a5)
 8005720:	fe078793          	addi	a5,a5,-32
 8005724:	01000713          	li	a4,16
 8005728:	0cf76863          	bltu	a4,a5,80057f8 <_vsnprintf+0x1a0>
 800572c:	00279713          	slli	a4,a5,0x2
 8005730:	080097b7          	lui	a5,0x8009
 8005734:	c4878793          	addi	a5,a5,-952 # 8008c48 <__fpclassifyf+0x88>
 8005738:	00f707b3          	add	a5,a4,a5
 800573c:	0007a783          	lw	a5,0(a5)
 8005740:	00078067          	jr	a5
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:605
        case '0': flags |= FLAGS_ZEROPAD; format++; n = 1U; break;
 8005744:	fcc42783          	lw	a5,-52(s0)
 8005748:	0017e793          	ori	a5,a5,1
 800574c:	fcf42623          	sw	a5,-52(s0)
 8005750:	f7042783          	lw	a5,-144(s0)
 8005754:	00178793          	addi	a5,a5,1
 8005758:	f6f42823          	sw	a5,-144(s0)
 800575c:	00100793          	li	a5,1
 8005760:	fcf42023          	sw	a5,-64(s0)
 8005764:	09c0006f          	j	8005800 <_vsnprintf+0x1a8>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:606
        case '-': flags |= FLAGS_LEFT;    format++; n = 1U; break;
 8005768:	fcc42783          	lw	a5,-52(s0)
 800576c:	0027e793          	ori	a5,a5,2
 8005770:	fcf42623          	sw	a5,-52(s0)
 8005774:	f7042783          	lw	a5,-144(s0)
 8005778:	00178793          	addi	a5,a5,1
 800577c:	f6f42823          	sw	a5,-144(s0)
 8005780:	00100793          	li	a5,1
 8005784:	fcf42023          	sw	a5,-64(s0)
 8005788:	0780006f          	j	8005800 <_vsnprintf+0x1a8>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:607
        case '+': flags |= FLAGS_PLUS;    format++; n = 1U; break;
 800578c:	fcc42783          	lw	a5,-52(s0)
 8005790:	0047e793          	ori	a5,a5,4
 8005794:	fcf42623          	sw	a5,-52(s0)
 8005798:	f7042783          	lw	a5,-144(s0)
 800579c:	00178793          	addi	a5,a5,1
 80057a0:	f6f42823          	sw	a5,-144(s0)
 80057a4:	00100793          	li	a5,1
 80057a8:	fcf42023          	sw	a5,-64(s0)
 80057ac:	0540006f          	j	8005800 <_vsnprintf+0x1a8>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:608
        case ' ': flags |= FLAGS_SPACE;   format++; n = 1U; break;
 80057b0:	fcc42783          	lw	a5,-52(s0)
 80057b4:	0087e793          	ori	a5,a5,8
 80057b8:	fcf42623          	sw	a5,-52(s0)
 80057bc:	f7042783          	lw	a5,-144(s0)
 80057c0:	00178793          	addi	a5,a5,1
 80057c4:	f6f42823          	sw	a5,-144(s0)
 80057c8:	00100793          	li	a5,1
 80057cc:	fcf42023          	sw	a5,-64(s0)
 80057d0:	0300006f          	j	8005800 <_vsnprintf+0x1a8>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:609
        case '#': flags |= FLAGS_HASH;    format++; n = 1U; break;
 80057d4:	fcc42783          	lw	a5,-52(s0)
 80057d8:	0107e793          	ori	a5,a5,16
 80057dc:	fcf42623          	sw	a5,-52(s0)
 80057e0:	f7042783          	lw	a5,-144(s0)
 80057e4:	00178793          	addi	a5,a5,1
 80057e8:	f6f42823          	sw	a5,-144(s0)
 80057ec:	00100793          	li	a5,1
 80057f0:	fcf42023          	sw	a5,-64(s0)
 80057f4:	00c0006f          	j	8005800 <_vsnprintf+0x1a8>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:610
        default :                                   n = 0U; break;
 80057f8:	fc042023          	sw	zero,-64(s0)
 80057fc:	00000013          	nop
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:612
      }
    } while (n);
 8005800:	fc042783          	lw	a5,-64(s0)
 8005804:	f0079ae3          	bnez	a5,8005718 <_vsnprintf+0xc0>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:615

    // evaluate width field
    width = 0U;
 8005808:	fc042423          	sw	zero,-56(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:616
    if (_is_digit(*format)) {
 800580c:	f7042783          	lw	a5,-144(s0)
 8005810:	0007c783          	lbu	a5,0(a5)
 8005814:	00078513          	mv	a0,a5
 8005818:	b15fe0ef          	jal	ra,800432c <_is_digit>
 800581c:	00050793          	mv	a5,a0
 8005820:	00078c63          	beqz	a5,8005838 <_vsnprintf+0x1e0>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:617
      width = _atoi(&format);
 8005824:	f7040793          	addi	a5,s0,-144
 8005828:	00078513          	mv	a0,a5
 800582c:	b51fe0ef          	jal	ra,800437c <_atoi>
 8005830:	fca42423          	sw	a0,-56(s0)
 8005834:	0600006f          	j	8005894 <_vsnprintf+0x23c>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:619
    }
    else if (*format == '*') {
 8005838:	f7042783          	lw	a5,-144(s0)
 800583c:	0007c703          	lbu	a4,0(a5)
 8005840:	02a00793          	li	a5,42
 8005844:	04f71863          	bne	a4,a5,8005894 <_vsnprintf+0x23c>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:620
      const int w = va_arg(va, int);
 8005848:	f6c42783          	lw	a5,-148(s0)
 800584c:	00478713          	addi	a4,a5,4
 8005850:	f6e42623          	sw	a4,-148(s0)
 8005854:	0007a783          	lw	a5,0(a5)
 8005858:	faf42423          	sw	a5,-88(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:621
      if (w < 0) {
 800585c:	fa842783          	lw	a5,-88(s0)
 8005860:	0207d063          	bgez	a5,8005880 <_vsnprintf+0x228>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:622
        flags |= FLAGS_LEFT;    // reverse padding
 8005864:	fcc42783          	lw	a5,-52(s0)
 8005868:	0027e793          	ori	a5,a5,2
 800586c:	fcf42623          	sw	a5,-52(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:623
        width = (unsigned int)-w;
 8005870:	fa842783          	lw	a5,-88(s0)
 8005874:	40f007b3          	neg	a5,a5
 8005878:	fcf42423          	sw	a5,-56(s0)
 800587c:	00c0006f          	j	8005888 <_vsnprintf+0x230>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:626
      }
      else {
        width = (unsigned int)w;
 8005880:	fa842783          	lw	a5,-88(s0)
 8005884:	fcf42423          	sw	a5,-56(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:628
      }
      format++;
 8005888:	f7042783          	lw	a5,-144(s0)
 800588c:	00178793          	addi	a5,a5,1
 8005890:	f6f42823          	sw	a5,-144(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:632
    }

    // evaluate precision field
    precision = 0U;
 8005894:	fc042223          	sw	zero,-60(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:633
    if (*format == '.') {
 8005898:	f7042783          	lw	a5,-144(s0)
 800589c:	0007c703          	lbu	a4,0(a5)
 80058a0:	02e00793          	li	a5,46
 80058a4:	08f71463          	bne	a4,a5,800592c <_vsnprintf+0x2d4>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:634
      flags |= FLAGS_PRECISION;
 80058a8:	fcc42783          	lw	a5,-52(s0)
 80058ac:	4007e793          	ori	a5,a5,1024
 80058b0:	fcf42623          	sw	a5,-52(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:635
      format++;
 80058b4:	f7042783          	lw	a5,-144(s0)
 80058b8:	00178793          	addi	a5,a5,1
 80058bc:	f6f42823          	sw	a5,-144(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:636
      if (_is_digit(*format)) {
 80058c0:	f7042783          	lw	a5,-144(s0)
 80058c4:	0007c783          	lbu	a5,0(a5)
 80058c8:	00078513          	mv	a0,a5
 80058cc:	a61fe0ef          	jal	ra,800432c <_is_digit>
 80058d0:	00050793          	mv	a5,a0
 80058d4:	00078c63          	beqz	a5,80058ec <_vsnprintf+0x294>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:637
        precision = _atoi(&format);
 80058d8:	f7040793          	addi	a5,s0,-144
 80058dc:	00078513          	mv	a0,a5
 80058e0:	a9dfe0ef          	jal	ra,800437c <_atoi>
 80058e4:	fca42223          	sw	a0,-60(s0)
 80058e8:	0440006f          	j	800592c <_vsnprintf+0x2d4>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:639
      }
      else if (*format == '*') {
 80058ec:	f7042783          	lw	a5,-144(s0)
 80058f0:	0007c703          	lbu	a4,0(a5)
 80058f4:	02a00793          	li	a5,42
 80058f8:	02f71a63          	bne	a4,a5,800592c <_vsnprintf+0x2d4>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:640
        const int prec = (int)va_arg(va, int);
 80058fc:	f6c42783          	lw	a5,-148(s0)
 8005900:	00478713          	addi	a4,a5,4
 8005904:	f6e42623          	sw	a4,-148(s0)
 8005908:	0007a783          	lw	a5,0(a5)
 800590c:	faf42223          	sw	a5,-92(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:641
        precision = prec > 0 ? (unsigned int)prec : 0U;
 8005910:	fa442783          	lw	a5,-92(s0)
 8005914:	0007d463          	bgez	a5,800591c <_vsnprintf+0x2c4>
 8005918:	00000793          	li	a5,0
 800591c:	fcf42223          	sw	a5,-60(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:642
        format++;
 8005920:	f7042783          	lw	a5,-144(s0)
 8005924:	00178793          	addi	a5,a5,1
 8005928:	f6f42823          	sw	a5,-144(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:647
      }
    }

    // evaluate length field
    switch (*format) {
 800592c:	f7042783          	lw	a5,-144(s0)
 8005930:	0007c783          	lbu	a5,0(a5)
 8005934:	f9878793          	addi	a5,a5,-104
 8005938:	01200713          	li	a4,18
 800593c:	0ef76c63          	bltu	a4,a5,8005a34 <_vsnprintf+0x3dc>
 8005940:	00279713          	slli	a4,a5,0x2
 8005944:	080097b7          	lui	a5,0x8009
 8005948:	c8c78793          	addi	a5,a5,-884 # 8008c8c <__fpclassifyf+0xcc>
 800594c:	00f707b3          	add	a5,a4,a5
 8005950:	0007a783          	lw	a5,0(a5)
 8005954:	00078067          	jr	a5
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:649
      case 'l' :
        flags |= FLAGS_LONG;
 8005958:	fcc42783          	lw	a5,-52(s0)
 800595c:	1007e793          	ori	a5,a5,256
 8005960:	fcf42623          	sw	a5,-52(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:650
        format++;
 8005964:	f7042783          	lw	a5,-144(s0)
 8005968:	00178793          	addi	a5,a5,1
 800596c:	f6f42823          	sw	a5,-144(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:651
        if (*format == 'l') {
 8005970:	f7042783          	lw	a5,-144(s0)
 8005974:	0007c703          	lbu	a4,0(a5)
 8005978:	06c00793          	li	a5,108
 800597c:	0cf71063          	bne	a4,a5,8005a3c <_vsnprintf+0x3e4>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:652
          flags |= FLAGS_LONG_LONG;
 8005980:	fcc42783          	lw	a5,-52(s0)
 8005984:	2007e793          	ori	a5,a5,512
 8005988:	fcf42623          	sw	a5,-52(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:653
          format++;
 800598c:	f7042783          	lw	a5,-144(s0)
 8005990:	00178793          	addi	a5,a5,1
 8005994:	f6f42823          	sw	a5,-144(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:655
        }
        break;
 8005998:	0a40006f          	j	8005a3c <_vsnprintf+0x3e4>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:657
      case 'h' :
        flags |= FLAGS_SHORT;
 800599c:	fcc42783          	lw	a5,-52(s0)
 80059a0:	0807e793          	ori	a5,a5,128
 80059a4:	fcf42623          	sw	a5,-52(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:658
        format++;
 80059a8:	f7042783          	lw	a5,-144(s0)
 80059ac:	00178793          	addi	a5,a5,1
 80059b0:	f6f42823          	sw	a5,-144(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:659
        if (*format == 'h') {
 80059b4:	f7042783          	lw	a5,-144(s0)
 80059b8:	0007c703          	lbu	a4,0(a5)
 80059bc:	06800793          	li	a5,104
 80059c0:	08f71263          	bne	a4,a5,8005a44 <_vsnprintf+0x3ec>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:660
          flags |= FLAGS_CHAR;
 80059c4:	fcc42783          	lw	a5,-52(s0)
 80059c8:	0407e793          	ori	a5,a5,64
 80059cc:	fcf42623          	sw	a5,-52(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:661
          format++;
 80059d0:	f7042783          	lw	a5,-144(s0)
 80059d4:	00178793          	addi	a5,a5,1
 80059d8:	f6f42823          	sw	a5,-144(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:663
        }
        break;
 80059dc:	0680006f          	j	8005a44 <_vsnprintf+0x3ec>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:666
#if defined(PRINTF_SUPPORT_PTRDIFF_T)
      case 't' :
        flags |= (sizeof(ptrdiff_t) == sizeof(long) ? FLAGS_LONG : FLAGS_LONG_LONG);
 80059e0:	fcc42783          	lw	a5,-52(s0)
 80059e4:	1007e793          	ori	a5,a5,256
 80059e8:	fcf42623          	sw	a5,-52(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:667
        format++;
 80059ec:	f7042783          	lw	a5,-144(s0)
 80059f0:	00178793          	addi	a5,a5,1
 80059f4:	f6f42823          	sw	a5,-144(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:668
        break;
 80059f8:	0500006f          	j	8005a48 <_vsnprintf+0x3f0>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:671
#endif
      case 'j' :
        flags |= (sizeof(intmax_t) == sizeof(long) ? FLAGS_LONG : FLAGS_LONG_LONG);
 80059fc:	fcc42783          	lw	a5,-52(s0)
 8005a00:	2007e793          	ori	a5,a5,512
 8005a04:	fcf42623          	sw	a5,-52(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:672
        format++;
 8005a08:	f7042783          	lw	a5,-144(s0)
 8005a0c:	00178793          	addi	a5,a5,1
 8005a10:	f6f42823          	sw	a5,-144(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:673
        break;
 8005a14:	0340006f          	j	8005a48 <_vsnprintf+0x3f0>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:675
      case 'z' :
        flags |= (sizeof(size_t) == sizeof(long) ? FLAGS_LONG : FLAGS_LONG_LONG);
 8005a18:	fcc42783          	lw	a5,-52(s0)
 8005a1c:	1007e793          	ori	a5,a5,256
 8005a20:	fcf42623          	sw	a5,-52(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:676
        format++;
 8005a24:	f7042783          	lw	a5,-144(s0)
 8005a28:	00178793          	addi	a5,a5,1
 8005a2c:	f6f42823          	sw	a5,-144(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:677
        break;
 8005a30:	0180006f          	j	8005a48 <_vsnprintf+0x3f0>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:679
      default :
        break;
 8005a34:	00000013          	nop
 8005a38:	0100006f          	j	8005a48 <_vsnprintf+0x3f0>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:655
        break;
 8005a3c:	00000013          	nop
 8005a40:	0080006f          	j	8005a48 <_vsnprintf+0x3f0>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:663
        break;
 8005a44:	00000013          	nop
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:683
    }

    // evaluate specifier
    switch (*format) {
 8005a48:	f7042783          	lw	a5,-144(s0)
 8005a4c:	0007c783          	lbu	a5,0(a5)
 8005a50:	fdb78793          	addi	a5,a5,-37
 8005a54:	05300713          	li	a4,83
 8005a58:	0ef76ae3          	bltu	a4,a5,800634c <_vsnprintf+0xcf4>
 8005a5c:	00279713          	slli	a4,a5,0x2
 8005a60:	080097b7          	lui	a5,0x8009
 8005a64:	cd878793          	addi	a5,a5,-808 # 8008cd8 <__fpclassifyf+0x118>
 8005a68:	00f707b3          	add	a5,a4,a5
 8005a6c:	0007a783          	lw	a5,0(a5)
 8005a70:	00078067          	jr	a5
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:693
      case 'X' :
      case 'o' :
      case 'b' : {
        // set the base
        unsigned int base;
        if (*format == 'x' || *format == 'X') {
 8005a74:	f7042783          	lw	a5,-144(s0)
 8005a78:	0007c703          	lbu	a4,0(a5)
 8005a7c:	07800793          	li	a5,120
 8005a80:	00f70a63          	beq	a4,a5,8005a94 <_vsnprintf+0x43c>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:693 (discriminator 1)
 8005a84:	f7042783          	lw	a5,-144(s0)
 8005a88:	0007c703          	lbu	a4,0(a5)
 8005a8c:	05800793          	li	a5,88
 8005a90:	00f71863          	bne	a4,a5,8005aa0 <_vsnprintf+0x448>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:694
          base = 16U;
 8005a94:	01000793          	li	a5,16
 8005a98:	faf42c23          	sw	a5,-72(s0)
 8005a9c:	0500006f          	j	8005aec <_vsnprintf+0x494>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:696
        }
        else if (*format == 'o') {
 8005aa0:	f7042783          	lw	a5,-144(s0)
 8005aa4:	0007c703          	lbu	a4,0(a5)
 8005aa8:	06f00793          	li	a5,111
 8005aac:	00f71863          	bne	a4,a5,8005abc <_vsnprintf+0x464>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:697
          base =  8U;
 8005ab0:	00800793          	li	a5,8
 8005ab4:	faf42c23          	sw	a5,-72(s0)
 8005ab8:	0340006f          	j	8005aec <_vsnprintf+0x494>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:699
        }
        else if (*format == 'b') {
 8005abc:	f7042783          	lw	a5,-144(s0)
 8005ac0:	0007c703          	lbu	a4,0(a5)
 8005ac4:	06200793          	li	a5,98
 8005ac8:	00f71863          	bne	a4,a5,8005ad8 <_vsnprintf+0x480>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:700
          base =  2U;
 8005acc:	00200793          	li	a5,2
 8005ad0:	faf42c23          	sw	a5,-72(s0)
 8005ad4:	0180006f          	j	8005aec <_vsnprintf+0x494>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:703
        }
        else {
          base = 10U;
 8005ad8:	00a00793          	li	a5,10
 8005adc:	faf42c23          	sw	a5,-72(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:704
          flags &= ~FLAGS_HASH;   // no hash for dec format
 8005ae0:	fcc42783          	lw	a5,-52(s0)
 8005ae4:	fef7f793          	andi	a5,a5,-17
 8005ae8:	fcf42623          	sw	a5,-52(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:707
        }
        // uppercase
        if (*format == 'X') {
 8005aec:	f7042783          	lw	a5,-144(s0)
 8005af0:	0007c703          	lbu	a4,0(a5)
 8005af4:	05800793          	li	a5,88
 8005af8:	00f71863          	bne	a4,a5,8005b08 <_vsnprintf+0x4b0>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:708
          flags |= FLAGS_UPPERCASE;
 8005afc:	fcc42783          	lw	a5,-52(s0)
 8005b00:	0207e793          	ori	a5,a5,32
 8005b04:	fcf42623          	sw	a5,-52(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:712
        }

        // no plus or space flag for u, x, X, o, b
        if ((*format != 'i') && (*format != 'd')) {
 8005b08:	f7042783          	lw	a5,-144(s0)
 8005b0c:	0007c703          	lbu	a4,0(a5)
 8005b10:	06900793          	li	a5,105
 8005b14:	02f70063          	beq	a4,a5,8005b34 <_vsnprintf+0x4dc>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:712 (discriminator 1)
 8005b18:	f7042783          	lw	a5,-144(s0)
 8005b1c:	0007c703          	lbu	a4,0(a5)
 8005b20:	06400793          	li	a5,100
 8005b24:	00f70863          	beq	a4,a5,8005b34 <_vsnprintf+0x4dc>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:713
          flags &= ~(FLAGS_PLUS | FLAGS_SPACE);
 8005b28:	fcc42783          	lw	a5,-52(s0)
 8005b2c:	ff37f793          	andi	a5,a5,-13
 8005b30:	fcf42623          	sw	a5,-52(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:717
        }

        // ignore '0' flag when precision is given
        if (flags & FLAGS_PRECISION) {
 8005b34:	fcc42783          	lw	a5,-52(s0)
 8005b38:	4007f793          	andi	a5,a5,1024
 8005b3c:	00078863          	beqz	a5,8005b4c <_vsnprintf+0x4f4>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:718
          flags &= ~FLAGS_ZEROPAD;
 8005b40:	fcc42783          	lw	a5,-52(s0)
 8005b44:	ffe7f793          	andi	a5,a5,-2
 8005b48:	fcf42623          	sw	a5,-52(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:722
        }

        // convert the integer
        if ((*format == 'i') || (*format == 'd')) {
 8005b4c:	f7042783          	lw	a5,-144(s0)
 8005b50:	0007c703          	lbu	a4,0(a5)
 8005b54:	06900793          	li	a5,105
 8005b58:	00f70a63          	beq	a4,a5,8005b6c <_vsnprintf+0x514>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:722 (discriminator 1)
 8005b5c:	f7042783          	lw	a5,-144(s0)
 8005b60:	0007c703          	lbu	a4,0(a5)
 8005b64:	06400793          	li	a5,100
 8005b68:	20f71e63          	bne	a4,a5,8005d84 <_vsnprintf+0x72c>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:724
          // signed
          if (flags & FLAGS_LONG_LONG) {
 8005b6c:	fcc42783          	lw	a5,-52(s0)
 8005b70:	2007f793          	andi	a5,a5,512
 8005b74:	0c078863          	beqz	a5,8005c44 <_vsnprintf+0x5ec>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:726
#if defined(PRINTF_SUPPORT_LONG_LONG)
            const long long value = va_arg(va, long long);
 8005b78:	f6c42783          	lw	a5,-148(s0)
 8005b7c:	00778793          	addi	a5,a5,7
 8005b80:	ff87f793          	andi	a5,a5,-8
 8005b84:	00878713          	addi	a4,a5,8
 8005b88:	f6e42623          	sw	a4,-148(s0)
 8005b8c:	0047a803          	lw	a6,4(a5)
 8005b90:	0007a783          	lw	a5,0(a5)
 8005b94:	f8f42c23          	sw	a5,-104(s0)
 8005b98:	f9042e23          	sw	a6,-100(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:727
            idx = _ntoa_long_long(out, buffer, idx, maxlen, (unsigned long long)(value > 0 ? value : 0 - value), value < 0, base, precision, width, flags);
 8005b9c:	f9c42783          	lw	a5,-100(s0)
 8005ba0:	41f7d913          	srai	s2,a5,0x1f
 8005ba4:	f9c42783          	lw	a5,-100(s0)
 8005ba8:	41f7d993          	srai	s3,a5,0x1f
 8005bac:	f9842783          	lw	a5,-104(s0)
 8005bb0:	0127ca33          	xor	s4,a5,s2
 8005bb4:	f9c42783          	lw	a5,-100(s0)
 8005bb8:	0137cab3          	xor	s5,a5,s3
 8005bbc:	412a07b3          	sub	a5,s4,s2
 8005bc0:	00078713          	mv	a4,a5
 8005bc4:	00ea3733          	sltu	a4,s4,a4
 8005bc8:	413a8833          	sub	a6,s5,s3
 8005bcc:	40e80733          	sub	a4,a6,a4
 8005bd0:	00070813          	mv	a6,a4
 8005bd4:	00078a13          	mv	s4,a5
 8005bd8:	00080a93          	mv	s5,a6
 8005bdc:	000a0613          	mv	a2,s4
 8005be0:	000a8693          	mv	a3,s5
 8005be4:	f9c42783          	lw	a5,-100(s0)
 8005be8:	01f7d793          	srli	a5,a5,0x1f
 8005bec:	0ff7f713          	andi	a4,a5,255
 8005bf0:	fb842783          	lw	a5,-72(s0)
 8005bf4:	00078b13          	mv	s6,a5
 8005bf8:	00000b93          	li	s7,0
 8005bfc:	fcc42783          	lw	a5,-52(s0)
 8005c00:	00f12623          	sw	a5,12(sp)
 8005c04:	fc842783          	lw	a5,-56(s0)
 8005c08:	00f12423          	sw	a5,8(sp)
 8005c0c:	fc442783          	lw	a5,-60(s0)
 8005c10:	00f12223          	sw	a5,4(sp)
 8005c14:	01712023          	sw	s7,0(sp)
 8005c18:	000b0893          	mv	a7,s6
 8005c1c:	00070813          	mv	a6,a4
 8005c20:	00060713          	mv	a4,a2
 8005c24:	00068793          	mv	a5,a3
 8005c28:	f7442683          	lw	a3,-140(s0)
 8005c2c:	fbc42603          	lw	a2,-68(s0)
 8005c30:	f7842583          	lw	a1,-136(s0)
 8005c34:	f7c42503          	lw	a0,-132(s0)
 8005c38:	d61fe0ef          	jal	ra,8004998 <_ntoa_long_long>
 8005c3c:	faa42e23          	sw	a0,-68(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:724
          if (flags & FLAGS_LONG_LONG) {
 8005c40:	2a40006f          	j	8005ee4 <_vsnprintf+0x88c>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:730
#endif
          }
          else if (flags & FLAGS_LONG) {
 8005c44:	fcc42783          	lw	a5,-52(s0)
 8005c48:	1007f793          	andi	a5,a5,256
 8005c4c:	06078c63          	beqz	a5,8005cc4 <_vsnprintf+0x66c>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:731
            const long value = va_arg(va, long);
 8005c50:	f6c42783          	lw	a5,-148(s0)
 8005c54:	00478713          	addi	a4,a5,4
 8005c58:	f6e42623          	sw	a4,-148(s0)
 8005c5c:	0007a783          	lw	a5,0(a5)
 8005c60:	f8f42a23          	sw	a5,-108(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:732
            idx = _ntoa_long(out, buffer, idx, maxlen, (unsigned long)(value > 0 ? value : 0 - value), value < 0, base, precision, width, flags);
 8005c64:	f9442783          	lw	a5,-108(s0)
 8005c68:	41f7d713          	srai	a4,a5,0x1f
 8005c6c:	f9442783          	lw	a5,-108(s0)
 8005c70:	00f747b3          	xor	a5,a4,a5
 8005c74:	40e787b3          	sub	a5,a5,a4
 8005c78:	00078693          	mv	a3,a5
 8005c7c:	f9442783          	lw	a5,-108(s0)
 8005c80:	01f7d793          	srli	a5,a5,0x1f
 8005c84:	0ff7f713          	andi	a4,a5,255
 8005c88:	fcc42783          	lw	a5,-52(s0)
 8005c8c:	00f12223          	sw	a5,4(sp)
 8005c90:	fc842783          	lw	a5,-56(s0)
 8005c94:	00f12023          	sw	a5,0(sp)
 8005c98:	fc442883          	lw	a7,-60(s0)
 8005c9c:	fb842803          	lw	a6,-72(s0)
 8005ca0:	00070793          	mv	a5,a4
 8005ca4:	00068713          	mv	a4,a3
 8005ca8:	f7442683          	lw	a3,-140(s0)
 8005cac:	fbc42603          	lw	a2,-68(s0)
 8005cb0:	f7842583          	lw	a1,-136(s0)
 8005cb4:	f7c42503          	lw	a0,-132(s0)
 8005cb8:	b8dfe0ef          	jal	ra,8004844 <_ntoa_long>
 8005cbc:	faa42e23          	sw	a0,-68(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:724
          if (flags & FLAGS_LONG_LONG) {
 8005cc0:	2240006f          	j	8005ee4 <_vsnprintf+0x88c>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:735
          }
          else {
            const int value = (flags & FLAGS_CHAR) ? (char)va_arg(va, int) : (flags & FLAGS_SHORT) ? (short int)va_arg(va, int) : va_arg(va, int);
 8005cc4:	fcc42783          	lw	a5,-52(s0)
 8005cc8:	0407f793          	andi	a5,a5,64
 8005ccc:	00078e63          	beqz	a5,8005ce8 <_vsnprintf+0x690>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:735 (discriminator 1)
 8005cd0:	f6c42783          	lw	a5,-148(s0)
 8005cd4:	00478713          	addi	a4,a5,4
 8005cd8:	f6e42623          	sw	a4,-148(s0)
 8005cdc:	0007a783          	lw	a5,0(a5)
 8005ce0:	0ff7f793          	andi	a5,a5,255
 8005ce4:	03c0006f          	j	8005d20 <_vsnprintf+0x6c8>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:735 (discriminator 2)
 8005ce8:	fcc42783          	lw	a5,-52(s0)
 8005cec:	0807f793          	andi	a5,a5,128
 8005cf0:	02078063          	beqz	a5,8005d10 <_vsnprintf+0x6b8>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:735 (discriminator 4)
 8005cf4:	f6c42783          	lw	a5,-148(s0)
 8005cf8:	00478713          	addi	a4,a5,4
 8005cfc:	f6e42623          	sw	a4,-148(s0)
 8005d00:	0007a783          	lw	a5,0(a5)
 8005d04:	01079793          	slli	a5,a5,0x10
 8005d08:	4107d793          	srai	a5,a5,0x10
 8005d0c:	0140006f          	j	8005d20 <_vsnprintf+0x6c8>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:735 (discriminator 5)
 8005d10:	f6c42783          	lw	a5,-148(s0)
 8005d14:	00478713          	addi	a4,a5,4
 8005d18:	f6e42623          	sw	a4,-148(s0)
 8005d1c:	0007a783          	lw	a5,0(a5)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:735 (discriminator 8)
 8005d20:	f8f42823          	sw	a5,-112(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:736 (discriminator 8)
            idx = _ntoa_long(out, buffer, idx, maxlen, (unsigned int)(value > 0 ? value : 0 - value), value < 0, base, precision, width, flags);
 8005d24:	f9042783          	lw	a5,-112(s0)
 8005d28:	41f7d713          	srai	a4,a5,0x1f
 8005d2c:	f9042783          	lw	a5,-112(s0)
 8005d30:	00f747b3          	xor	a5,a4,a5
 8005d34:	40e787b3          	sub	a5,a5,a4
 8005d38:	00078693          	mv	a3,a5
 8005d3c:	f9042783          	lw	a5,-112(s0)
 8005d40:	01f7d793          	srli	a5,a5,0x1f
 8005d44:	0ff7f713          	andi	a4,a5,255
 8005d48:	fcc42783          	lw	a5,-52(s0)
 8005d4c:	00f12223          	sw	a5,4(sp)
 8005d50:	fc842783          	lw	a5,-56(s0)
 8005d54:	00f12023          	sw	a5,0(sp)
 8005d58:	fc442883          	lw	a7,-60(s0)
 8005d5c:	fb842803          	lw	a6,-72(s0)
 8005d60:	00070793          	mv	a5,a4
 8005d64:	00068713          	mv	a4,a3
 8005d68:	f7442683          	lw	a3,-140(s0)
 8005d6c:	fbc42603          	lw	a2,-68(s0)
 8005d70:	f7842583          	lw	a1,-136(s0)
 8005d74:	f7c42503          	lw	a0,-132(s0)
 8005d78:	acdfe0ef          	jal	ra,8004844 <_ntoa_long>
 8005d7c:	faa42e23          	sw	a0,-68(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:724 (discriminator 8)
          if (flags & FLAGS_LONG_LONG) {
 8005d80:	1640006f          	j	8005ee4 <_vsnprintf+0x88c>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:741
          }
        }
        else {
          // unsigned
          if (flags & FLAGS_LONG_LONG) {
 8005d84:	fcc42783          	lw	a5,-52(s0)
 8005d88:	2007f793          	andi	a5,a5,512
 8005d8c:	06078663          	beqz	a5,8005df8 <_vsnprintf+0x7a0>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:743
#if defined(PRINTF_SUPPORT_LONG_LONG)
            idx = _ntoa_long_long(out, buffer, idx, maxlen, va_arg(va, unsigned long long), false, base, precision, width, flags);
 8005d90:	f6c42783          	lw	a5,-148(s0)
 8005d94:	00778793          	addi	a5,a5,7
 8005d98:	ff87f793          	andi	a5,a5,-8
 8005d9c:	00878713          	addi	a4,a5,8
 8005da0:	f6e42623          	sw	a4,-148(s0)
 8005da4:	0007a703          	lw	a4,0(a5)
 8005da8:	0047a783          	lw	a5,4(a5)
 8005dac:	fb842683          	lw	a3,-72(s0)
 8005db0:	00068c13          	mv	s8,a3
 8005db4:	00000c93          	li	s9,0
 8005db8:	fcc42683          	lw	a3,-52(s0)
 8005dbc:	00d12623          	sw	a3,12(sp)
 8005dc0:	fc842683          	lw	a3,-56(s0)
 8005dc4:	00d12423          	sw	a3,8(sp)
 8005dc8:	fc442683          	lw	a3,-60(s0)
 8005dcc:	00d12223          	sw	a3,4(sp)
 8005dd0:	01912023          	sw	s9,0(sp)
 8005dd4:	000c0893          	mv	a7,s8
 8005dd8:	00000813          	li	a6,0
 8005ddc:	f7442683          	lw	a3,-140(s0)
 8005de0:	fbc42603          	lw	a2,-68(s0)
 8005de4:	f7842583          	lw	a1,-136(s0)
 8005de8:	f7c42503          	lw	a0,-132(s0)
 8005dec:	badfe0ef          	jal	ra,8004998 <_ntoa_long_long>
 8005df0:	faa42e23          	sw	a0,-68(s0)
 8005df4:	0f00006f          	j	8005ee4 <_vsnprintf+0x88c>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:746
#endif
          }
          else if (flags & FLAGS_LONG) {
 8005df8:	fcc42783          	lw	a5,-52(s0)
 8005dfc:	1007f793          	andi	a5,a5,256
 8005e00:	04078663          	beqz	a5,8005e4c <_vsnprintf+0x7f4>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:747
            idx = _ntoa_long(out, buffer, idx, maxlen, va_arg(va, unsigned long), false, base, precision, width, flags);
 8005e04:	f6c42783          	lw	a5,-148(s0)
 8005e08:	00478713          	addi	a4,a5,4
 8005e0c:	f6e42623          	sw	a4,-148(s0)
 8005e10:	0007a703          	lw	a4,0(a5)
 8005e14:	fcc42783          	lw	a5,-52(s0)
 8005e18:	00f12223          	sw	a5,4(sp)
 8005e1c:	fc842783          	lw	a5,-56(s0)
 8005e20:	00f12023          	sw	a5,0(sp)
 8005e24:	fc442883          	lw	a7,-60(s0)
 8005e28:	fb842803          	lw	a6,-72(s0)
 8005e2c:	00000793          	li	a5,0
 8005e30:	f7442683          	lw	a3,-140(s0)
 8005e34:	fbc42603          	lw	a2,-68(s0)
 8005e38:	f7842583          	lw	a1,-136(s0)
 8005e3c:	f7c42503          	lw	a0,-132(s0)
 8005e40:	a05fe0ef          	jal	ra,8004844 <_ntoa_long>
 8005e44:	faa42e23          	sw	a0,-68(s0)
 8005e48:	09c0006f          	j	8005ee4 <_vsnprintf+0x88c>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:750
          }
          else {
            const unsigned int value = (flags & FLAGS_CHAR) ? (unsigned char)va_arg(va, unsigned int) : (flags & FLAGS_SHORT) ? (unsigned short int)va_arg(va, unsigned int) : va_arg(va, unsigned int);
 8005e4c:	fcc42783          	lw	a5,-52(s0)
 8005e50:	0407f793          	andi	a5,a5,64
 8005e54:	00078e63          	beqz	a5,8005e70 <_vsnprintf+0x818>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:750 (discriminator 1)
 8005e58:	f6c42783          	lw	a5,-148(s0)
 8005e5c:	00478713          	addi	a4,a5,4
 8005e60:	f6e42623          	sw	a4,-148(s0)
 8005e64:	0007a783          	lw	a5,0(a5)
 8005e68:	0ff7f793          	andi	a5,a5,255
 8005e6c:	03c0006f          	j	8005ea8 <_vsnprintf+0x850>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:750 (discriminator 2)
 8005e70:	fcc42783          	lw	a5,-52(s0)
 8005e74:	0807f793          	andi	a5,a5,128
 8005e78:	02078063          	beqz	a5,8005e98 <_vsnprintf+0x840>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:750 (discriminator 4)
 8005e7c:	f6c42783          	lw	a5,-148(s0)
 8005e80:	00478713          	addi	a4,a5,4
 8005e84:	f6e42623          	sw	a4,-148(s0)
 8005e88:	0007a783          	lw	a5,0(a5)
 8005e8c:	01079793          	slli	a5,a5,0x10
 8005e90:	0107d793          	srli	a5,a5,0x10
 8005e94:	0140006f          	j	8005ea8 <_vsnprintf+0x850>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:750 (discriminator 5)
 8005e98:	f6c42783          	lw	a5,-148(s0)
 8005e9c:	00478713          	addi	a4,a5,4
 8005ea0:	f6e42623          	sw	a4,-148(s0)
 8005ea4:	0007a783          	lw	a5,0(a5)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:750 (discriminator 8)
 8005ea8:	faf42023          	sw	a5,-96(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:751 (discriminator 8)
            idx = _ntoa_long(out, buffer, idx, maxlen, value, false, base, precision, width, flags);
 8005eac:	fcc42783          	lw	a5,-52(s0)
 8005eb0:	00f12223          	sw	a5,4(sp)
 8005eb4:	fc842783          	lw	a5,-56(s0)
 8005eb8:	00f12023          	sw	a5,0(sp)
 8005ebc:	fc442883          	lw	a7,-60(s0)
 8005ec0:	fb842803          	lw	a6,-72(s0)
 8005ec4:	00000793          	li	a5,0
 8005ec8:	fa042703          	lw	a4,-96(s0)
 8005ecc:	f7442683          	lw	a3,-140(s0)
 8005ed0:	fbc42603          	lw	a2,-68(s0)
 8005ed4:	f7842583          	lw	a1,-136(s0)
 8005ed8:	f7c42503          	lw	a0,-132(s0)
 8005edc:	969fe0ef          	jal	ra,8004844 <_ntoa_long>
 8005ee0:	faa42e23          	sw	a0,-68(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:754
          }
        }
        format++;
 8005ee4:	f7042783          	lw	a5,-144(s0)
 8005ee8:	00178793          	addi	a5,a5,1
 8005eec:	f6f42823          	sw	a5,-144(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:755
        break;
 8005ef0:	4940006f          	j	8006384 <_vsnprintf+0xd2c>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:760
      }
#if defined(PRINTF_SUPPORT_FLOAT)
      case 'f' :
      case 'F' :
        if (*format == 'F') flags |= FLAGS_UPPERCASE;
 8005ef4:	f7042783          	lw	a5,-144(s0)
 8005ef8:	0007c703          	lbu	a4,0(a5)
 8005efc:	04600793          	li	a5,70
 8005f00:	00f71863          	bne	a4,a5,8005f10 <_vsnprintf+0x8b8>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:760 (discriminator 1)
 8005f04:	fcc42783          	lw	a5,-52(s0)
 8005f08:	0207e793          	ori	a5,a5,32
 8005f0c:	fcf42623          	sw	a5,-52(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:761
        idx = _ftoa(out, buffer, idx, maxlen, va_arg(va, double), precision, width, flags);
 8005f10:	f6c42783          	lw	a5,-148(s0)
 8005f14:	00778793          	addi	a5,a5,7
 8005f18:	ff87f793          	andi	a5,a5,-8
 8005f1c:	00878713          	addi	a4,a5,8
 8005f20:	f6e42623          	sw	a4,-148(s0)
 8005f24:	0007b787          	fld	fa5,0(a5)
 8005f28:	fcc42803          	lw	a6,-52(s0)
 8005f2c:	fc842783          	lw	a5,-56(s0)
 8005f30:	fc442703          	lw	a4,-60(s0)
 8005f34:	22f78553          	fmv.d	fa0,fa5
 8005f38:	f7442683          	lw	a3,-140(s0)
 8005f3c:	fbc42603          	lw	a2,-68(s0)
 8005f40:	f7842583          	lw	a1,-136(s0)
 8005f44:	f7c42503          	lw	a0,-132(s0)
 8005f48:	be5fe0ef          	jal	ra,8004b2c <_ftoa>
 8005f4c:	faa42e23          	sw	a0,-68(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:762
        format++;
 8005f50:	f7042783          	lw	a5,-144(s0)
 8005f54:	00178793          	addi	a5,a5,1
 8005f58:	f6f42823          	sw	a5,-144(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:763
        break;
 8005f5c:	4280006f          	j	8006384 <_vsnprintf+0xd2c>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:769
#if defined(PRINTF_SUPPORT_EXPONENTIAL)
      case 'e':
      case 'E':
      case 'g':
      case 'G':
        if ((*format == 'g')||(*format == 'G')) flags |= FLAGS_ADAPT_EXP;
 8005f60:	f7042783          	lw	a5,-144(s0)
 8005f64:	0007c703          	lbu	a4,0(a5)
 8005f68:	06700793          	li	a5,103
 8005f6c:	00f70a63          	beq	a4,a5,8005f80 <_vsnprintf+0x928>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:769 (discriminator 2)
 8005f70:	f7042783          	lw	a5,-144(s0)
 8005f74:	0007c703          	lbu	a4,0(a5)
 8005f78:	04700793          	li	a5,71
 8005f7c:	00f71c63          	bne	a4,a5,8005f94 <_vsnprintf+0x93c>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:769 (discriminator 3)
 8005f80:	fcc42703          	lw	a4,-52(s0)
 8005f84:	000017b7          	lui	a5,0x1
 8005f88:	80078793          	addi	a5,a5,-2048 # 800 <_start-0x8003800>
 8005f8c:	00f767b3          	or	a5,a4,a5
 8005f90:	fcf42623          	sw	a5,-52(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:770
        if ((*format == 'E')||(*format == 'G')) flags |= FLAGS_UPPERCASE;
 8005f94:	f7042783          	lw	a5,-144(s0)
 8005f98:	0007c703          	lbu	a4,0(a5)
 8005f9c:	04500793          	li	a5,69
 8005fa0:	00f70a63          	beq	a4,a5,8005fb4 <_vsnprintf+0x95c>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:770 (discriminator 2)
 8005fa4:	f7042783          	lw	a5,-144(s0)
 8005fa8:	0007c703          	lbu	a4,0(a5)
 8005fac:	04700793          	li	a5,71
 8005fb0:	00f71863          	bne	a4,a5,8005fc0 <_vsnprintf+0x968>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:770 (discriminator 3)
 8005fb4:	fcc42783          	lw	a5,-52(s0)
 8005fb8:	0207e793          	ori	a5,a5,32
 8005fbc:	fcf42623          	sw	a5,-52(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:771
        idx = _etoa(out, buffer, idx, maxlen, va_arg(va, double), precision, width, flags);
 8005fc0:	f6c42783          	lw	a5,-148(s0)
 8005fc4:	00778793          	addi	a5,a5,7
 8005fc8:	ff87f793          	andi	a5,a5,-8
 8005fcc:	00878713          	addi	a4,a5,8
 8005fd0:	f6e42623          	sw	a4,-148(s0)
 8005fd4:	0007b787          	fld	fa5,0(a5)
 8005fd8:	fcc42803          	lw	a6,-52(s0)
 8005fdc:	fc842783          	lw	a5,-56(s0)
 8005fe0:	fc442703          	lw	a4,-60(s0)
 8005fe4:	22f78553          	fmv.d	fa0,fa5
 8005fe8:	f7442683          	lw	a3,-140(s0)
 8005fec:	fbc42603          	lw	a2,-68(s0)
 8005ff0:	f7842583          	lw	a1,-136(s0)
 8005ff4:	f7c42503          	lw	a0,-132(s0)
 8005ff8:	92cff0ef          	jal	ra,8005124 <_etoa>
 8005ffc:	faa42e23          	sw	a0,-68(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:772
        format++;
 8006000:	f7042783          	lw	a5,-144(s0)
 8006004:	00178793          	addi	a5,a5,1
 8006008:	f6f42823          	sw	a5,-144(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:773
        break;
 800600c:	3780006f          	j	8006384 <_vsnprintf+0xd2c>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:777
#endif  // PRINTF_SUPPORT_EXPONENTIAL
#endif  // PRINTF_SUPPORT_FLOAT
      case 'c' : {
        unsigned int l = 1U;
 8006010:	00100793          	li	a5,1
 8006014:	faf42a23          	sw	a5,-76(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:779
        // pre padding
        if (!(flags & FLAGS_LEFT)) {
 8006018:	fcc42783          	lw	a5,-52(s0)
 800601c:	0027f793          	andi	a5,a5,2
 8006020:	04079063          	bnez	a5,8006060 <_vsnprintf+0xa08>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:780
          while (l++ < width) {
 8006024:	0280006f          	j	800604c <_vsnprintf+0x9f4>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:781
            out(' ', buffer, idx++, maxlen);
 8006028:	fbc42783          	lw	a5,-68(s0)
 800602c:	00178713          	addi	a4,a5,1
 8006030:	fae42e23          	sw	a4,-68(s0)
 8006034:	f7c42703          	lw	a4,-132(s0)
 8006038:	f7442683          	lw	a3,-140(s0)
 800603c:	00078613          	mv	a2,a5
 8006040:	f7842583          	lw	a1,-136(s0)
 8006044:	02000513          	li	a0,32
 8006048:	000700e7          	jalr	a4
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:780
          while (l++ < width) {
 800604c:	fb442783          	lw	a5,-76(s0)
 8006050:	00178713          	addi	a4,a5,1
 8006054:	fae42a23          	sw	a4,-76(s0)
 8006058:	fc842703          	lw	a4,-56(s0)
 800605c:	fce7e6e3          	bltu	a5,a4,8006028 <_vsnprintf+0x9d0>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:785
          }
        }
        // char output
        out((char)va_arg(va, int), buffer, idx++, maxlen);
 8006060:	f6c42783          	lw	a5,-148(s0)
 8006064:	00478713          	addi	a4,a5,4
 8006068:	f6e42623          	sw	a4,-148(s0)
 800606c:	0007a783          	lw	a5,0(a5)
 8006070:	0ff7f513          	andi	a0,a5,255
 8006074:	fbc42783          	lw	a5,-68(s0)
 8006078:	00178713          	addi	a4,a5,1
 800607c:	fae42e23          	sw	a4,-68(s0)
 8006080:	f7c42703          	lw	a4,-132(s0)
 8006084:	f7442683          	lw	a3,-140(s0)
 8006088:	00078613          	mv	a2,a5
 800608c:	f7842583          	lw	a1,-136(s0)
 8006090:	000700e7          	jalr	a4
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:787
        // post padding
        if (flags & FLAGS_LEFT) {
 8006094:	fcc42783          	lw	a5,-52(s0)
 8006098:	0027f793          	andi	a5,a5,2
 800609c:	04078063          	beqz	a5,80060dc <_vsnprintf+0xa84>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:788
          while (l++ < width) {
 80060a0:	0280006f          	j	80060c8 <_vsnprintf+0xa70>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:789
            out(' ', buffer, idx++, maxlen);
 80060a4:	fbc42783          	lw	a5,-68(s0)
 80060a8:	00178713          	addi	a4,a5,1
 80060ac:	fae42e23          	sw	a4,-68(s0)
 80060b0:	f7c42703          	lw	a4,-132(s0)
 80060b4:	f7442683          	lw	a3,-140(s0)
 80060b8:	00078613          	mv	a2,a5
 80060bc:	f7842583          	lw	a1,-136(s0)
 80060c0:	02000513          	li	a0,32
 80060c4:	000700e7          	jalr	a4
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:788
          while (l++ < width) {
 80060c8:	fb442783          	lw	a5,-76(s0)
 80060cc:	00178713          	addi	a4,a5,1
 80060d0:	fae42a23          	sw	a4,-76(s0)
 80060d4:	fc842703          	lw	a4,-56(s0)
 80060d8:	fce7e6e3          	bltu	a5,a4,80060a4 <_vsnprintf+0xa4c>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:792
          }
        }
        format++;
 80060dc:	f7042783          	lw	a5,-144(s0)
 80060e0:	00178793          	addi	a5,a5,1
 80060e4:	f6f42823          	sw	a5,-144(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:793
        break;
 80060e8:	29c0006f          	j	8006384 <_vsnprintf+0xd2c>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:797
      }

      case 's' : {
        const char* p = va_arg(va, char*);
 80060ec:	f6c42783          	lw	a5,-148(s0)
 80060f0:	00478713          	addi	a4,a5,4
 80060f4:	f6e42623          	sw	a4,-148(s0)
 80060f8:	0007a783          	lw	a5,0(a5)
 80060fc:	faf42823          	sw	a5,-80(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:798
        unsigned int l = _strnlen_s(p, precision ? precision : (size_t)-1);
 8006100:	fc442783          	lw	a5,-60(s0)
 8006104:	00078663          	beqz	a5,8006110 <_vsnprintf+0xab8>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:798 (discriminator 1)
 8006108:	fc442783          	lw	a5,-60(s0)
 800610c:	0080006f          	j	8006114 <_vsnprintf+0xabc>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:798 (discriminator 2)
 8006110:	fff00793          	li	a5,-1
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:798 (discriminator 4)
 8006114:	00078593          	mv	a1,a5
 8006118:	fb042503          	lw	a0,-80(s0)
 800611c:	9acfe0ef          	jal	ra,80042c8 <_strnlen_s>
 8006120:	faa42623          	sw	a0,-84(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:800 (discriminator 4)
        // pre padding
        if (flags & FLAGS_PRECISION) {
 8006124:	fcc42783          	lw	a5,-52(s0)
 8006128:	4007f793          	andi	a5,a5,1024
 800612c:	00078c63          	beqz	a5,8006144 <_vsnprintf+0xaec>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:801
          l = (l < precision ? l : precision);
 8006130:	fac42703          	lw	a4,-84(s0)
 8006134:	fc442783          	lw	a5,-60(s0)
 8006138:	00f77463          	bleu	a5,a4,8006140 <_vsnprintf+0xae8>
 800613c:	00070793          	mv	a5,a4
 8006140:	faf42623          	sw	a5,-84(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:803
        }
        if (!(flags & FLAGS_LEFT)) {
 8006144:	fcc42783          	lw	a5,-52(s0)
 8006148:	0027f793          	andi	a5,a5,2
 800614c:	06079a63          	bnez	a5,80061c0 <_vsnprintf+0xb68>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:804
          while (l++ < width) {
 8006150:	0280006f          	j	8006178 <_vsnprintf+0xb20>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:805
            out(' ', buffer, idx++, maxlen);
 8006154:	fbc42783          	lw	a5,-68(s0)
 8006158:	00178713          	addi	a4,a5,1
 800615c:	fae42e23          	sw	a4,-68(s0)
 8006160:	f7c42703          	lw	a4,-132(s0)
 8006164:	f7442683          	lw	a3,-140(s0)
 8006168:	00078613          	mv	a2,a5
 800616c:	f7842583          	lw	a1,-136(s0)
 8006170:	02000513          	li	a0,32
 8006174:	000700e7          	jalr	a4
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:804
          while (l++ < width) {
 8006178:	fac42783          	lw	a5,-84(s0)
 800617c:	00178713          	addi	a4,a5,1
 8006180:	fae42623          	sw	a4,-84(s0)
 8006184:	fc842703          	lw	a4,-56(s0)
 8006188:	fce7e6e3          	bltu	a5,a4,8006154 <_vsnprintf+0xafc>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:809
          }
        }
        // string output
        while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
 800618c:	0340006f          	j	80061c0 <_vsnprintf+0xb68>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:810
          out(*(p++), buffer, idx++, maxlen);
 8006190:	fb042783          	lw	a5,-80(s0)
 8006194:	00178713          	addi	a4,a5,1
 8006198:	fae42823          	sw	a4,-80(s0)
 800619c:	0007c503          	lbu	a0,0(a5)
 80061a0:	fbc42783          	lw	a5,-68(s0)
 80061a4:	00178713          	addi	a4,a5,1
 80061a8:	fae42e23          	sw	a4,-68(s0)
 80061ac:	f7c42703          	lw	a4,-132(s0)
 80061b0:	f7442683          	lw	a3,-140(s0)
 80061b4:	00078613          	mv	a2,a5
 80061b8:	f7842583          	lw	a1,-136(s0)
 80061bc:	000700e7          	jalr	a4
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:809
        while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
 80061c0:	fb042783          	lw	a5,-80(s0)
 80061c4:	0007c783          	lbu	a5,0(a5)
 80061c8:	02078063          	beqz	a5,80061e8 <_vsnprintf+0xb90>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:809 (discriminator 1)
 80061cc:	fcc42783          	lw	a5,-52(s0)
 80061d0:	4007f793          	andi	a5,a5,1024
 80061d4:	fa078ee3          	beqz	a5,8006190 <_vsnprintf+0xb38>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:809 (discriminator 2)
 80061d8:	fc442783          	lw	a5,-60(s0)
 80061dc:	fff78713          	addi	a4,a5,-1
 80061e0:	fce42223          	sw	a4,-60(s0)
 80061e4:	fa0796e3          	bnez	a5,8006190 <_vsnprintf+0xb38>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:813
        }
        // post padding
        if (flags & FLAGS_LEFT) {
 80061e8:	fcc42783          	lw	a5,-52(s0)
 80061ec:	0027f793          	andi	a5,a5,2
 80061f0:	04078063          	beqz	a5,8006230 <_vsnprintf+0xbd8>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:814
          while (l++ < width) {
 80061f4:	0280006f          	j	800621c <_vsnprintf+0xbc4>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:815
            out(' ', buffer, idx++, maxlen);
 80061f8:	fbc42783          	lw	a5,-68(s0)
 80061fc:	00178713          	addi	a4,a5,1
 8006200:	fae42e23          	sw	a4,-68(s0)
 8006204:	f7c42703          	lw	a4,-132(s0)
 8006208:	f7442683          	lw	a3,-140(s0)
 800620c:	00078613          	mv	a2,a5
 8006210:	f7842583          	lw	a1,-136(s0)
 8006214:	02000513          	li	a0,32
 8006218:	000700e7          	jalr	a4
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:814
          while (l++ < width) {
 800621c:	fac42783          	lw	a5,-84(s0)
 8006220:	00178713          	addi	a4,a5,1
 8006224:	fae42623          	sw	a4,-84(s0)
 8006228:	fc842703          	lw	a4,-56(s0)
 800622c:	fce7e6e3          	bltu	a5,a4,80061f8 <_vsnprintf+0xba0>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:818
          }
        }
        format++;
 8006230:	f7042783          	lw	a5,-144(s0)
 8006234:	00178793          	addi	a5,a5,1
 8006238:	f6f42823          	sw	a5,-144(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:819
        break;
 800623c:	1480006f          	j	8006384 <_vsnprintf+0xd2c>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:823
      }

      case 'p' : {
        width = sizeof(void*) * 2U;
 8006240:	00800793          	li	a5,8
 8006244:	fcf42423          	sw	a5,-56(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:824
        flags |= FLAGS_ZEROPAD | FLAGS_UPPERCASE;
 8006248:	fcc42783          	lw	a5,-52(s0)
 800624c:	0217e793          	ori	a5,a5,33
 8006250:	fcf42623          	sw	a5,-52(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:826
#if defined(PRINTF_SUPPORT_LONG_LONG)
        const bool is_ll = sizeof(uintptr_t) == sizeof(long long);
 8006254:	f80407a3          	sb	zero,-113(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:827
        if (is_ll) {
 8006258:	f8f44783          	lbu	a5,-113(s0)
 800625c:	06078263          	beqz	a5,80062c0 <_vsnprintf+0xc68>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:828
          idx = _ntoa_long_long(out, buffer, idx, maxlen, (uintptr_t)va_arg(va, void*), false, 16U, precision, width, flags);
 8006260:	f6c42783          	lw	a5,-148(s0)
 8006264:	00478713          	addi	a4,a5,4
 8006268:	f6e42623          	sw	a4,-148(s0)
 800626c:	0007a783          	lw	a5,0(a5)
 8006270:	00078d13          	mv	s10,a5
 8006274:	00000d93          	li	s11,0
 8006278:	fcc42783          	lw	a5,-52(s0)
 800627c:	00f12623          	sw	a5,12(sp)
 8006280:	fc842783          	lw	a5,-56(s0)
 8006284:	00f12423          	sw	a5,8(sp)
 8006288:	fc442783          	lw	a5,-60(s0)
 800628c:	00f12223          	sw	a5,4(sp)
 8006290:	00012023          	sw	zero,0(sp)
 8006294:	01000893          	li	a7,16
 8006298:	00000813          	li	a6,0
 800629c:	000d0713          	mv	a4,s10
 80062a0:	000d8793          	mv	a5,s11
 80062a4:	f7442683          	lw	a3,-140(s0)
 80062a8:	fbc42603          	lw	a2,-68(s0)
 80062ac:	f7842583          	lw	a1,-136(s0)
 80062b0:	f7c42503          	lw	a0,-132(s0)
 80062b4:	ee4fe0ef          	jal	ra,8004998 <_ntoa_long_long>
 80062b8:	faa42e23          	sw	a0,-68(s0)
 80062bc:	04c0006f          	j	8006308 <_vsnprintf+0xcb0>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:832
        }
        else {
#endif
          idx = _ntoa_long(out, buffer, idx, maxlen, (unsigned long)((uintptr_t)va_arg(va, void*)), false, 16U, precision, width, flags);
 80062c0:	f6c42783          	lw	a5,-148(s0)
 80062c4:	00478713          	addi	a4,a5,4
 80062c8:	f6e42623          	sw	a4,-148(s0)
 80062cc:	0007a783          	lw	a5,0(a5)
 80062d0:	00078713          	mv	a4,a5
 80062d4:	fcc42783          	lw	a5,-52(s0)
 80062d8:	00f12223          	sw	a5,4(sp)
 80062dc:	fc842783          	lw	a5,-56(s0)
 80062e0:	00f12023          	sw	a5,0(sp)
 80062e4:	fc442883          	lw	a7,-60(s0)
 80062e8:	01000813          	li	a6,16
 80062ec:	00000793          	li	a5,0
 80062f0:	f7442683          	lw	a3,-140(s0)
 80062f4:	fbc42603          	lw	a2,-68(s0)
 80062f8:	f7842583          	lw	a1,-136(s0)
 80062fc:	f7c42503          	lw	a0,-132(s0)
 8006300:	d44fe0ef          	jal	ra,8004844 <_ntoa_long>
 8006304:	faa42e23          	sw	a0,-68(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:836
#if defined(PRINTF_SUPPORT_LONG_LONG)
        }
#endif
        format++;
 8006308:	f7042783          	lw	a5,-144(s0)
 800630c:	00178793          	addi	a5,a5,1
 8006310:	f6f42823          	sw	a5,-144(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:837
        break;
 8006314:	0700006f          	j	8006384 <_vsnprintf+0xd2c>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:841
      }

      case '%' :
        out('%', buffer, idx++, maxlen);
 8006318:	fbc42783          	lw	a5,-68(s0)
 800631c:	00178713          	addi	a4,a5,1
 8006320:	fae42e23          	sw	a4,-68(s0)
 8006324:	f7c42703          	lw	a4,-132(s0)
 8006328:	f7442683          	lw	a3,-140(s0)
 800632c:	00078613          	mv	a2,a5
 8006330:	f7842583          	lw	a1,-136(s0)
 8006334:	02500513          	li	a0,37
 8006338:	000700e7          	jalr	a4
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:842
        format++;
 800633c:	f7042783          	lw	a5,-144(s0)
 8006340:	00178793          	addi	a5,a5,1
 8006344:	f6f42823          	sw	a5,-144(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:843
        break;
 8006348:	03c0006f          	j	8006384 <_vsnprintf+0xd2c>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:846

      default :
        out(*format, buffer, idx++, maxlen);
 800634c:	f7042783          	lw	a5,-144(s0)
 8006350:	0007c503          	lbu	a0,0(a5)
 8006354:	fbc42783          	lw	a5,-68(s0)
 8006358:	00178713          	addi	a4,a5,1
 800635c:	fae42e23          	sw	a4,-68(s0)
 8006360:	f7c42703          	lw	a4,-132(s0)
 8006364:	f7442683          	lw	a3,-140(s0)
 8006368:	00078613          	mv	a2,a5
 800636c:	f7842583          	lw	a1,-136(s0)
 8006370:	000700e7          	jalr	a4
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:847
        format++;
 8006374:	f7042783          	lw	a5,-144(s0)
 8006378:	00178793          	addi	a5,a5,1
 800637c:	f6f42823          	sw	a5,-144(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:848
        break;
 8006380:	00000013          	nop
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:587
  while (*format)
 8006384:	f7042783          	lw	a5,-144(s0)
 8006388:	0007c783          	lbu	a5,0(a5)
 800638c:	b2079a63          	bnez	a5,80056c0 <_vsnprintf+0x68>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:853
    }
  }

  // termination
  out((char)0, buffer, idx < maxlen ? idx : maxlen - 1U, maxlen);
 8006390:	fbc42703          	lw	a4,-68(s0)
 8006394:	f7442783          	lw	a5,-140(s0)
 8006398:	00f76863          	bltu	a4,a5,80063a8 <_vsnprintf+0xd50>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:853 (discriminator 1)
 800639c:	f7442783          	lw	a5,-140(s0)
 80063a0:	fff78793          	addi	a5,a5,-1
 80063a4:	0080006f          	j	80063ac <_vsnprintf+0xd54>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:853 (discriminator 2)
 80063a8:	fbc42783          	lw	a5,-68(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:853 (discriminator 4)
 80063ac:	f7c42703          	lw	a4,-132(s0)
 80063b0:	f7442683          	lw	a3,-140(s0)
 80063b4:	00078613          	mv	a2,a5
 80063b8:	f7842583          	lw	a1,-136(s0)
 80063bc:	00000513          	li	a0,0
 80063c0:	000700e7          	jalr	a4
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:856 (discriminator 4)

  // return written chars without terminating \0
  return (int)idx;
 80063c4:	fbc42783          	lw	a5,-68(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:857 (discriminator 4)
}
 80063c8:	00078513          	mv	a0,a5
 80063cc:	0ac12083          	lw	ra,172(sp)
 80063d0:	0a812403          	lw	s0,168(sp)
 80063d4:	0a412903          	lw	s2,164(sp)
 80063d8:	0a012983          	lw	s3,160(sp)
 80063dc:	09c12a03          	lw	s4,156(sp)
 80063e0:	09812a83          	lw	s5,152(sp)
 80063e4:	09412b03          	lw	s6,148(sp)
 80063e8:	09012b83          	lw	s7,144(sp)
 80063ec:	08c12c03          	lw	s8,140(sp)
 80063f0:	08812c83          	lw	s9,136(sp)
 80063f4:	08412d03          	lw	s10,132(sp)
 80063f8:	08012d83          	lw	s11,128(sp)
 80063fc:	0b010113          	addi	sp,sp,176
 8006400:	00008067          	ret

08006404 <printf_>:
printf_():
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:863


///////////////////////////////////////////////////////////////////////////////

int printf_(const char* format, ...)
{
 8006404:	fb010113          	addi	sp,sp,-80
 8006408:	02112623          	sw	ra,44(sp)
 800640c:	02812423          	sw	s0,40(sp)
 8006410:	03010413          	addi	s0,sp,48
 8006414:	fca42e23          	sw	a0,-36(s0)
 8006418:	00b42223          	sw	a1,4(s0)
 800641c:	00c42423          	sw	a2,8(s0)
 8006420:	00d42623          	sw	a3,12(s0)
 8006424:	00e42823          	sw	a4,16(s0)
 8006428:	00f42a23          	sw	a5,20(s0)
 800642c:	01042c23          	sw	a6,24(s0)
 8006430:	01142e23          	sw	a7,28(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:865
  va_list va;
  va_start(va, format);
 8006434:	02040793          	addi	a5,s0,32
 8006438:	fe478793          	addi	a5,a5,-28
 800643c:	fef42423          	sw	a5,-24(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:867
  char buffer[1];
  const int ret = _vsnprintf(_out_char, buffer, (size_t)-1, format, va);
 8006440:	fe842703          	lw	a4,-24(s0)
 8006444:	fe440793          	addi	a5,s0,-28
 8006448:	fdc42683          	lw	a3,-36(s0)
 800644c:	fff00613          	li	a2,-1
 8006450:	00078593          	mv	a1,a5
 8006454:	080047b7          	lui	a5,0x8004
 8006458:	21c78513          	addi	a0,a5,540 # 800421c <_out_char>
 800645c:	9fcff0ef          	jal	ra,8005658 <_vsnprintf>
 8006460:	fea42623          	sw	a0,-20(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:869
  va_end(va);
  return ret;
 8006464:	fec42783          	lw	a5,-20(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:870
}
 8006468:	00078513          	mv	a0,a5
 800646c:	02c12083          	lw	ra,44(sp)
 8006470:	02812403          	lw	s0,40(sp)
 8006474:	05010113          	addi	sp,sp,80
 8006478:	00008067          	ret

0800647c <sprintf_>:
sprintf_():
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:874


int sprintf_(char* buffer, const char* format, ...)
{
 800647c:	fb010113          	addi	sp,sp,-80
 8006480:	02112623          	sw	ra,44(sp)
 8006484:	02812423          	sw	s0,40(sp)
 8006488:	03010413          	addi	s0,sp,48
 800648c:	fca42e23          	sw	a0,-36(s0)
 8006490:	fcb42c23          	sw	a1,-40(s0)
 8006494:	00c42423          	sw	a2,8(s0)
 8006498:	00d42623          	sw	a3,12(s0)
 800649c:	00e42823          	sw	a4,16(s0)
 80064a0:	00f42a23          	sw	a5,20(s0)
 80064a4:	01042c23          	sw	a6,24(s0)
 80064a8:	01142e23          	sw	a7,28(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:876
  va_list va;
  va_start(va, format);
 80064ac:	02040793          	addi	a5,s0,32
 80064b0:	fe878793          	addi	a5,a5,-24
 80064b4:	fef42423          	sw	a5,-24(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:877
  const int ret = _vsnprintf(_out_buffer, buffer, (size_t)-1, format, va);
 80064b8:	fe842783          	lw	a5,-24(s0)
 80064bc:	00078713          	mv	a4,a5
 80064c0:	fd842683          	lw	a3,-40(s0)
 80064c4:	fff00613          	li	a2,-1
 80064c8:	fdc42583          	lw	a1,-36(s0)
 80064cc:	080047b7          	lui	a5,0x8004
 80064d0:	19c78513          	addi	a0,a5,412 # 800419c <_out_buffer>
 80064d4:	984ff0ef          	jal	ra,8005658 <_vsnprintf>
 80064d8:	fea42623          	sw	a0,-20(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:879
  va_end(va);
  return ret;
 80064dc:	fec42783          	lw	a5,-20(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:880
}
 80064e0:	00078513          	mv	a0,a5
 80064e4:	02c12083          	lw	ra,44(sp)
 80064e8:	02812403          	lw	s0,40(sp)
 80064ec:	05010113          	addi	sp,sp,80
 80064f0:	00008067          	ret

080064f4 <snprintf_>:
snprintf_():
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:884


int snprintf_(char* buffer, size_t count, const char* format, ...)
{
 80064f4:	fb010113          	addi	sp,sp,-80
 80064f8:	02112623          	sw	ra,44(sp)
 80064fc:	02812423          	sw	s0,40(sp)
 8006500:	03010413          	addi	s0,sp,48
 8006504:	fca42e23          	sw	a0,-36(s0)
 8006508:	fcb42c23          	sw	a1,-40(s0)
 800650c:	fcc42a23          	sw	a2,-44(s0)
 8006510:	00d42623          	sw	a3,12(s0)
 8006514:	00e42823          	sw	a4,16(s0)
 8006518:	00f42a23          	sw	a5,20(s0)
 800651c:	01042c23          	sw	a6,24(s0)
 8006520:	01142e23          	sw	a7,28(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:886
  va_list va;
  va_start(va, format);
 8006524:	02040793          	addi	a5,s0,32
 8006528:	fec78793          	addi	a5,a5,-20
 800652c:	fef42423          	sw	a5,-24(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:887
  const int ret = _vsnprintf(_out_buffer, buffer, count, format, va);
 8006530:	fe842783          	lw	a5,-24(s0)
 8006534:	00078713          	mv	a4,a5
 8006538:	fd442683          	lw	a3,-44(s0)
 800653c:	fd842603          	lw	a2,-40(s0)
 8006540:	fdc42583          	lw	a1,-36(s0)
 8006544:	080047b7          	lui	a5,0x8004
 8006548:	19c78513          	addi	a0,a5,412 # 800419c <_out_buffer>
 800654c:	90cff0ef          	jal	ra,8005658 <_vsnprintf>
 8006550:	fea42623          	sw	a0,-20(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:889
  va_end(va);
  return ret;
 8006554:	fec42783          	lw	a5,-20(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:890
}
 8006558:	00078513          	mv	a0,a5
 800655c:	02c12083          	lw	ra,44(sp)
 8006560:	02812403          	lw	s0,40(sp)
 8006564:	05010113          	addi	sp,sp,80
 8006568:	00008067          	ret

0800656c <vprintf_>:
vprintf_():
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:894


int vprintf_(const char* format, va_list va)
{
 800656c:	fd010113          	addi	sp,sp,-48
 8006570:	02112623          	sw	ra,44(sp)
 8006574:	02812423          	sw	s0,40(sp)
 8006578:	03010413          	addi	s0,sp,48
 800657c:	fca42e23          	sw	a0,-36(s0)
 8006580:	fcb42c23          	sw	a1,-40(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:896
  char buffer[1];
  return _vsnprintf(_out_char, buffer, (size_t)-1, format, va);
 8006584:	fec40793          	addi	a5,s0,-20
 8006588:	fd842703          	lw	a4,-40(s0)
 800658c:	fdc42683          	lw	a3,-36(s0)
 8006590:	fff00613          	li	a2,-1
 8006594:	00078593          	mv	a1,a5
 8006598:	080047b7          	lui	a5,0x8004
 800659c:	21c78513          	addi	a0,a5,540 # 800421c <_out_char>
 80065a0:	8b8ff0ef          	jal	ra,8005658 <_vsnprintf>
 80065a4:	00050793          	mv	a5,a0
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:897
}
 80065a8:	00078513          	mv	a0,a5
 80065ac:	02c12083          	lw	ra,44(sp)
 80065b0:	02812403          	lw	s0,40(sp)
 80065b4:	03010113          	addi	sp,sp,48
 80065b8:	00008067          	ret

080065bc <vsnprintf_>:
vsnprintf_():
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:901


int vsnprintf_(char* buffer, size_t count, const char* format, va_list va)
{
 80065bc:	fe010113          	addi	sp,sp,-32
 80065c0:	00112e23          	sw	ra,28(sp)
 80065c4:	00812c23          	sw	s0,24(sp)
 80065c8:	02010413          	addi	s0,sp,32
 80065cc:	fea42623          	sw	a0,-20(s0)
 80065d0:	feb42423          	sw	a1,-24(s0)
 80065d4:	fec42223          	sw	a2,-28(s0)
 80065d8:	fed42023          	sw	a3,-32(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:902
  return _vsnprintf(_out_buffer, buffer, count, format, va);
 80065dc:	fe042703          	lw	a4,-32(s0)
 80065e0:	fe442683          	lw	a3,-28(s0)
 80065e4:	fe842603          	lw	a2,-24(s0)
 80065e8:	fec42583          	lw	a1,-20(s0)
 80065ec:	080047b7          	lui	a5,0x8004
 80065f0:	19c78513          	addi	a0,a5,412 # 800419c <_out_buffer>
 80065f4:	864ff0ef          	jal	ra,8005658 <_vsnprintf>
 80065f8:	00050793          	mv	a5,a0
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:903
}
 80065fc:	00078513          	mv	a0,a5
 8006600:	01c12083          	lw	ra,28(sp)
 8006604:	01812403          	lw	s0,24(sp)
 8006608:	02010113          	addi	sp,sp,32
 800660c:	00008067          	ret

08006610 <fctprintf>:
fctprintf():
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:907


int fctprintf(void (*out)(char character, void* arg), void* arg, const char* format, ...)
{
 8006610:	fb010113          	addi	sp,sp,-80
 8006614:	02112623          	sw	ra,44(sp)
 8006618:	02812423          	sw	s0,40(sp)
 800661c:	03010413          	addi	s0,sp,48
 8006620:	fca42e23          	sw	a0,-36(s0)
 8006624:	fcb42c23          	sw	a1,-40(s0)
 8006628:	fcc42a23          	sw	a2,-44(s0)
 800662c:	00d42623          	sw	a3,12(s0)
 8006630:	00e42823          	sw	a4,16(s0)
 8006634:	00f42a23          	sw	a5,20(s0)
 8006638:	01042c23          	sw	a6,24(s0)
 800663c:	01142e23          	sw	a7,28(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:909
  va_list va;
  va_start(va, format);
 8006640:	02040793          	addi	a5,s0,32
 8006644:	fec78793          	addi	a5,a5,-20
 8006648:	fef42423          	sw	a5,-24(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:910
  const out_fct_wrap_type out_fct_wrap = { out, arg };
 800664c:	fdc42783          	lw	a5,-36(s0)
 8006650:	fef42023          	sw	a5,-32(s0)
 8006654:	fd842783          	lw	a5,-40(s0)
 8006658:	fef42223          	sw	a5,-28(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:911
  const int ret = _vsnprintf(_out_fct, (char*)(uintptr_t)&out_fct_wrap, (size_t)-1, format, va);
 800665c:	fe842703          	lw	a4,-24(s0)
 8006660:	fe040793          	addi	a5,s0,-32
 8006664:	fd442683          	lw	a3,-44(s0)
 8006668:	fff00613          	li	a2,-1
 800666c:	00078593          	mv	a1,a5
 8006670:	080047b7          	lui	a5,0x8004
 8006674:	26878513          	addi	a0,a5,616 # 8004268 <_out_fct>
 8006678:	fe1fe0ef          	jal	ra,8005658 <_vsnprintf>
 800667c:	fea42623          	sw	a0,-20(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:913
  va_end(va);
  return ret;
 8006680:	fec42783          	lw	a5,-20(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/printf-4.0.0/printf.c:914
}
 8006684:	00078513          	mv	a0,a5
 8006688:	02c12083          	lw	ra,44(sp)
 800668c:	02812403          	lw	s0,40(sp)
 8006690:	05010113          	addi	sp,sp,80
 8006694:	00008067          	ret

08006698 <_putchar>:
_putchar():
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/putchar/putchar.c:49
 *  printf library does not know how to actually print characters so
 *  we supply a function here to make the system call.
 */

void _putchar(char character)
{
 8006698:	fe010113          	addi	sp,sp,-32
 800669c:	00112e23          	sw	ra,28(sp)
 80066a0:	00812c23          	sw	s0,24(sp)
 80066a4:	02010413          	addi	s0,sp,32
 80066a8:	00050793          	mv	a5,a0
 80066ac:	fef407a3          	sb	a5,-17(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/putchar/putchar.c:50
    write(1, &character, 1);
 80066b0:	fef40793          	addi	a5,s0,-17
 80066b4:	00100613          	li	a2,1
 80066b8:	00078593          	mv	a1,a5
 80066bc:	00100513          	li	a0,1
 80066c0:	04c000ef          	jal	ra,800670c <write>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/putchar/putchar.c:51
}
 80066c4:	00000013          	nop
 80066c8:	01c12083          	lw	ra,28(sp)
 80066cc:	01812403          	lw	s0,24(sp)
 80066d0:	02010113          	addi	sp,sp,32
 80066d4:	00008067          	ret

080066d8 <exit>:
exit():
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/exit.c:60
 80066d8:	ff010113          	addi	sp,sp,-16
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/exit.c:66
 80066dc:	00000593          	li	a1,0
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/exit.c:60
 80066e0:	00812423          	sw	s0,8(sp)
 80066e4:	00112623          	sw	ra,12(sp)
 80066e8:	00050413          	mv	s0,a0
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/exit.c:66
 80066ec:	09c000ef          	jal	ra,8006788 <__call_exitprocs>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/exit.c:68
 80066f0:	0800b7b7          	lui	a5,0x800b
 80066f4:	9687a503          	lw	a0,-1688(a5) # 800a968 <_global_impure_ptr>
 80066f8:	03c52783          	lw	a5,60(a0)
 80066fc:	00078463          	beqz	a5,8006704 <exit+0x2c>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/exit.c:69
 8006700:	000780e7          	jalr	a5
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/exit.c:70
 8006704:	00040513          	mv	a0,s0
 8006708:	740010ef          	jal	ra,8007e48 <_exit>

0800670c <write>:
write():
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/syscalls/../../../../../newlib/libc/syscalls/syswrite.c:12
 800670c:	00060693          	mv	a3,a2
 8006710:	00058613          	mv	a2,a1
 8006714:	00050593          	mv	a1,a0
 8006718:	80c1a503          	lw	a0,-2036(gp) # 800a974 <_impure_ptr>
 800671c:	0040006f          	j	8006720 <_write_r>

08006720 <_write_r>:
_write_r():
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/reent/../../../../../newlib/libc/reent/writer.c:54
 8006720:	ff010113          	addi	sp,sp,-16
 8006724:	00058793          	mv	a5,a1
 8006728:	00812423          	sw	s0,8(sp)
 800672c:	00912223          	sw	s1,4(sp)
 8006730:	00060593          	mv	a1,a2
 8006734:	00050493          	mv	s1,a0
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/reent/../../../../../newlib/libc/reent/writer.c:58
 8006738:	00078513          	mv	a0,a5
 800673c:	00068613          	mv	a2,a3
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/reent/../../../../../newlib/libc/reent/writer.c:54
 8006740:	00112623          	sw	ra,12(sp)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/reent/../../../../../newlib/libc/reent/writer.c:57
 8006744:	8601a023          	sw	zero,-1952(gp) # 800a9c8 <errno>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/reent/../../../../../newlib/libc/reent/writer.c:58
 8006748:	0ac010ef          	jal	ra,80077f4 <_write>
 800674c:	fff00793          	li	a5,-1
 8006750:	00f50c63          	beq	a0,a5,8006768 <_write_r+0x48>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/reent/../../../../../newlib/libc/reent/writer.c:61
 8006754:	00c12083          	lw	ra,12(sp)
 8006758:	00812403          	lw	s0,8(sp)
 800675c:	00412483          	lw	s1,4(sp)
 8006760:	01010113          	addi	sp,sp,16
 8006764:	00008067          	ret
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/reent/../../../../../newlib/libc/reent/writer.c:58 (discriminator 1)
 8006768:	8601a783          	lw	a5,-1952(gp) # 800a9c8 <errno>
 800676c:	fe0784e3          	beqz	a5,8006754 <_write_r+0x34>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/reent/../../../../../newlib/libc/reent/writer.c:61
 8006770:	00c12083          	lw	ra,12(sp)
 8006774:	00812403          	lw	s0,8(sp)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/reent/../../../../../newlib/libc/reent/writer.c:59
 8006778:	00f4a023          	sw	a5,0(s1)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/reent/../../../../../newlib/libc/reent/writer.c:61
 800677c:	00412483          	lw	s1,4(sp)
 8006780:	01010113          	addi	sp,sp,16
 8006784:	00008067          	ret

08006788 <__call_exitprocs>:
__call_exitprocs():
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/__call_atexit.c:70
 8006788:	fd010113          	addi	sp,sp,-48
 800678c:	0800b7b7          	lui	a5,0x800b
 8006790:	01812423          	sw	s8,8(sp)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/__call_atexit.c:85
 8006794:	9687ac03          	lw	s8,-1688(a5) # 800a968 <_global_impure_ptr>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/__call_atexit.c:70
 8006798:	01312e23          	sw	s3,28(sp)
 800679c:	01412c23          	sw	s4,24(sp)
 80067a0:	01512a23          	sw	s5,20(sp)
 80067a4:	01612823          	sw	s6,16(sp)
 80067a8:	02112623          	sw	ra,44(sp)
 80067ac:	02812423          	sw	s0,40(sp)
 80067b0:	02912223          	sw	s1,36(sp)
 80067b4:	03212023          	sw	s2,32(sp)
 80067b8:	01712623          	sw	s7,12(sp)
 80067bc:	00050a93          	mv	s5,a0
 80067c0:	00058b13          	mv	s6,a1
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/__call_atexit.c:98
 80067c4:	00100a13          	li	s4,1
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/__call_atexit.c:94
 80067c8:	fff00993          	li	s3,-1
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/__call_atexit.c:85
 80067cc:	148c2903          	lw	s2,328(s8)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/__call_atexit.c:87
 80067d0:	02090863          	beqz	s2,8006800 <__call_exitprocs+0x78>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/__call_atexit.c:94
 80067d4:	00492483          	lw	s1,4(s2)
 80067d8:	fff48413          	addi	s0,s1,-1
 80067dc:	02044263          	bltz	s0,8006800 <__call_exitprocs+0x78>
 80067e0:	00249493          	slli	s1,s1,0x2
 80067e4:	009904b3          	add	s1,s2,s1
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/__call_atexit.c:101
 80067e8:	040b0463          	beqz	s6,8006830 <__call_exitprocs+0xa8>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/__call_atexit.c:101 (discriminator 2)
 80067ec:	1044a783          	lw	a5,260(s1)
 80067f0:	05678063          	beq	a5,s6,8006830 <__call_exitprocs+0xa8>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/__call_atexit.c:94
 80067f4:	fff40413          	addi	s0,s0,-1
 80067f8:	ffc48493          	addi	s1,s1,-4
 80067fc:	ff3416e3          	bne	s0,s3,80067e8 <__call_exitprocs+0x60>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/__call_atexit.c:165
 8006800:	02c12083          	lw	ra,44(sp)
 8006804:	02812403          	lw	s0,40(sp)
 8006808:	02412483          	lw	s1,36(sp)
 800680c:	02012903          	lw	s2,32(sp)
 8006810:	01c12983          	lw	s3,28(sp)
 8006814:	01812a03          	lw	s4,24(sp)
 8006818:	01412a83          	lw	s5,20(sp)
 800681c:	01012b03          	lw	s6,16(sp)
 8006820:	00c12b83          	lw	s7,12(sp)
 8006824:	00812c03          	lw	s8,8(sp)
 8006828:	03010113          	addi	sp,sp,48
 800682c:	00008067          	ret
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/__call_atexit.c:107
 8006830:	00492783          	lw	a5,4(s2)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/__call_atexit.c:106
 8006834:	0044a683          	lw	a3,4(s1)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/__call_atexit.c:107
 8006838:	fff78793          	addi	a5,a5,-1
 800683c:	04878a63          	beq	a5,s0,8006890 <__call_exitprocs+0x108>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/__call_atexit.c:110
 8006840:	0004a223          	sw	zero,4(s1)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/__call_atexit.c:113
 8006844:	fa0688e3          	beqz	a3,80067f4 <__call_exitprocs+0x6c>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/__call_atexit.c:119
 8006848:	18892783          	lw	a5,392(s2)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/__call_atexit.c:98
 800684c:	008a1733          	sll	a4,s4,s0
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/__call_atexit.c:116
 8006850:	00492b83          	lw	s7,4(s2)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/__call_atexit.c:119
 8006854:	00f777b3          	and	a5,a4,a5
 8006858:	00079e63          	bnez	a5,8006874 <__call_exitprocs+0xec>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/__call_atexit.c:120
 800685c:	000680e7          	jalr	a3
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/__call_atexit.c:129
 8006860:	00492783          	lw	a5,4(s2)
 8006864:	f77794e3          	bne	a5,s7,80067cc <__call_exitprocs+0x44>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/__call_atexit.c:129 (discriminator 1)
 8006868:	148c2783          	lw	a5,328(s8)
 800686c:	f92784e3          	beq	a5,s2,80067f4 <__call_exitprocs+0x6c>
 8006870:	f5dff06f          	j	80067cc <__call_exitprocs+0x44>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/__call_atexit.c:121
 8006874:	18c92783          	lw	a5,396(s2)
 8006878:	0844a583          	lw	a1,132(s1)
 800687c:	00f77733          	and	a4,a4,a5
 8006880:	00071c63          	bnez	a4,8006898 <__call_exitprocs+0x110>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/__call_atexit.c:122
 8006884:	000a8513          	mv	a0,s5
 8006888:	000680e7          	jalr	a3
 800688c:	fd5ff06f          	j	8006860 <__call_exitprocs+0xd8>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/__call_atexit.c:108
 8006890:	00892223          	sw	s0,4(s2)
 8006894:	fb1ff06f          	j	8006844 <__call_exitprocs+0xbc>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/__call_atexit.c:124
 8006898:	00058513          	mv	a0,a1
 800689c:	000680e7          	jalr	a3
 80068a0:	fc1ff06f          	j	8006860 <__call_exitprocs+0xd8>

080068a4 <cleanup_glue>:
cleanup_glue():
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/reent/../../../../../newlib/libc/reent/reent.c:36
 80068a4:	ff010113          	addi	sp,sp,-16
 80068a8:	00812423          	sw	s0,8(sp)
 80068ac:	00058413          	mv	s0,a1
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/reent/../../../../../newlib/libc/reent/reent.c:38
 80068b0:	0005a583          	lw	a1,0(a1)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/reent/../../../../../newlib/libc/reent/reent.c:36
 80068b4:	00912223          	sw	s1,4(sp)
 80068b8:	00112623          	sw	ra,12(sp)
 80068bc:	00050493          	mv	s1,a0
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/reent/../../../../../newlib/libc/reent/reent.c:38
 80068c0:	00058463          	beqz	a1,80068c8 <cleanup_glue+0x24>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/reent/../../../../../newlib/libc/reent/reent.c:39
 80068c4:	fe1ff0ef          	jal	ra,80068a4 <cleanup_glue>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/reent/../../../../../newlib/libc/reent/reent.c:41
 80068c8:	00040593          	mv	a1,s0
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/reent/../../../../../newlib/libc/reent/reent.c:42
 80068cc:	00812403          	lw	s0,8(sp)
 80068d0:	00c12083          	lw	ra,12(sp)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/reent/../../../../../newlib/libc/reent/reent.c:41
 80068d4:	00048513          	mv	a0,s1
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/reent/../../../../../newlib/libc/reent/reent.c:42
 80068d8:	00412483          	lw	s1,4(sp)
 80068dc:	01010113          	addi	sp,sp,16
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/reent/../../../../../newlib/libc/reent/reent.c:41
 80068e0:	23c0006f          	j	8006b1c <_free_r>

080068e4 <_reclaim_reent>:
_reclaim_reent():
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/reent/../../../../../newlib/libc/reent/reent.c:48
 80068e4:	80c1a783          	lw	a5,-2036(gp) # 800a974 <_impure_ptr>
 80068e8:	10a78263          	beq	a5,a0,80069ec <_reclaim_reent+0x108>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/reent/../../../../../newlib/libc/reent/reent.c:55
 80068ec:	04c52703          	lw	a4,76(a0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/reent/../../../../../newlib/libc/reent/reent.c:47
 80068f0:	fe010113          	addi	sp,sp,-32
 80068f4:	00912a23          	sw	s1,20(sp)
 80068f8:	00112e23          	sw	ra,28(sp)
 80068fc:	00812c23          	sw	s0,24(sp)
 8006900:	01212823          	sw	s2,16(sp)
 8006904:	01312623          	sw	s3,12(sp)
 8006908:	00050493          	mv	s1,a0
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/reent/../../../../../newlib/libc/reent/reent.c:55
 800690c:	04070263          	beqz	a4,8006950 <_reclaim_reent+0x6c>
 8006910:	00000913          	li	s2,0
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/reent/../../../../../newlib/libc/reent/reent.c:58
 8006914:	08000993          	li	s3,128
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/reent/../../../../../newlib/libc/reent/reent.c:62
 8006918:	012707b3          	add	a5,a4,s2
 800691c:	0007a583          	lw	a1,0(a5)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/reent/../../../../../newlib/libc/reent/reent.c:63
 8006920:	00058e63          	beqz	a1,800693c <_reclaim_reent+0x58>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/reent/../../../../../newlib/libc/reent/reent.c:66
 8006924:	0005a403          	lw	s0,0(a1)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/reent/../../../../../newlib/libc/reent/reent.c:67
 8006928:	00048513          	mv	a0,s1
 800692c:	1f0000ef          	jal	ra,8006b1c <_free_r>
 8006930:	00040593          	mv	a1,s0
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/reent/../../../../../newlib/libc/reent/reent.c:63
 8006934:	fe0418e3          	bnez	s0,8006924 <_reclaim_reent+0x40>
 8006938:	04c4a703          	lw	a4,76(s1)
 800693c:	00490913          	addi	s2,s2,4
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/reent/../../../../../newlib/libc/reent/reent.c:58 (discriminator 2)
 8006940:	fd391ce3          	bne	s2,s3,8006918 <_reclaim_reent+0x34>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/reent/../../../../../newlib/libc/reent/reent.c:71
 8006944:	00070593          	mv	a1,a4
 8006948:	00048513          	mv	a0,s1
 800694c:	1d0000ef          	jal	ra,8006b1c <_free_r>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/reent/../../../../../newlib/libc/reent/reent.c:73
 8006950:	0404a583          	lw	a1,64(s1)
 8006954:	00058663          	beqz	a1,8006960 <_reclaim_reent+0x7c>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/reent/../../../../../newlib/libc/reent/reent.c:74
 8006958:	00048513          	mv	a0,s1
 800695c:	1c0000ef          	jal	ra,8006b1c <_free_r>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/reent/../../../../../newlib/libc/reent/reent.c:102
 8006960:	1484a583          	lw	a1,328(s1)
 8006964:	02058063          	beqz	a1,8006984 <_reclaim_reent+0xa0>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/reent/../../../../../newlib/libc/reent/reent.c:102 (discriminator 1)
 8006968:	14c48913          	addi	s2,s1,332
 800696c:	01258c63          	beq	a1,s2,8006984 <_reclaim_reent+0xa0>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/reent/../../../../../newlib/libc/reent/reent.c:108
 8006970:	0005a403          	lw	s0,0(a1)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/reent/../../../../../newlib/libc/reent/reent.c:109
 8006974:	00048513          	mv	a0,s1
 8006978:	1a4000ef          	jal	ra,8006b1c <_free_r>
 800697c:	00040593          	mv	a1,s0
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/reent/../../../../../newlib/libc/reent/reent.c:105
 8006980:	fe8918e3          	bne	s2,s0,8006970 <_reclaim_reent+0x8c>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/reent/../../../../../newlib/libc/reent/reent.c:115
 8006984:	0544a583          	lw	a1,84(s1)
 8006988:	00058663          	beqz	a1,8006994 <_reclaim_reent+0xb0>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/reent/../../../../../newlib/libc/reent/reent.c:116
 800698c:	00048513          	mv	a0,s1
 8006990:	18c000ef          	jal	ra,8006b1c <_free_r>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/reent/../../../../../newlib/libc/reent/reent.c:123
 8006994:	0384a783          	lw	a5,56(s1)
 8006998:	02078c63          	beqz	a5,80069d0 <_reclaim_reent+0xec>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/reent/../../../../../newlib/libc/reent/reent.c:127
 800699c:	03c4a783          	lw	a5,60(s1)
 80069a0:	00048513          	mv	a0,s1
 80069a4:	000780e7          	jalr	a5
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/reent/../../../../../newlib/libc/reent/reent.c:129
 80069a8:	2e04a583          	lw	a1,736(s1)
 80069ac:	02058263          	beqz	a1,80069d0 <_reclaim_reent+0xec>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/reent/../../../../../newlib/libc/reent/reent.c:136
 80069b0:	01812403          	lw	s0,24(sp)
 80069b4:	01c12083          	lw	ra,28(sp)
 80069b8:	01012903          	lw	s2,16(sp)
 80069bc:	00c12983          	lw	s3,12(sp)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/reent/../../../../../newlib/libc/reent/reent.c:130
 80069c0:	00048513          	mv	a0,s1
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/reent/../../../../../newlib/libc/reent/reent.c:136
 80069c4:	01412483          	lw	s1,20(sp)
 80069c8:	02010113          	addi	sp,sp,32
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/reent/../../../../../newlib/libc/reent/reent.c:130
 80069cc:	ed9ff06f          	j	80068a4 <cleanup_glue>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/reent/../../../../../newlib/libc/reent/reent.c:136
 80069d0:	01c12083          	lw	ra,28(sp)
 80069d4:	01812403          	lw	s0,24(sp)
 80069d8:	01412483          	lw	s1,20(sp)
 80069dc:	01012903          	lw	s2,16(sp)
 80069e0:	00c12983          	lw	s3,12(sp)
 80069e4:	02010113          	addi	sp,sp,32
 80069e8:	00008067          	ret
 80069ec:	00008067          	ret

080069f0 <_malloc_trim_r>:
_malloc_trim_r():
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:3309
 80069f0:	fe010113          	addi	sp,sp,-32
 80069f4:	01212823          	sw	s2,16(sp)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:3319
 80069f8:	0800a937          	lui	s2,0x800a
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:3309
 80069fc:	00812c23          	sw	s0,24(sp)
 8006a00:	00912a23          	sw	s1,20(sp)
 8006a04:	01312623          	sw	s3,12(sp)
 8006a08:	00058413          	mv	s0,a1
 8006a0c:	00112e23          	sw	ra,28(sp)
 8006a10:	00050993          	mv	s3,a0
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:3319
 8006a14:	56090913          	addi	s2,s2,1376 # 800a560 <__malloc_av_>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:3317
 8006a18:	389000ef          	jal	ra,80075a0 <__malloc_lock>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:3319
 8006a1c:	00892683          	lw	a3,8(s2)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:3320
 8006a20:	00001737          	lui	a4,0x1
 8006a24:	fef70793          	addi	a5,a4,-17 # fef <_start-0x8003011>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:3319
 8006a28:	0046a483          	lw	s1,4(a3)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:3320
 8006a2c:	40878433          	sub	s0,a5,s0
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:3319
 8006a30:	ffc4f493          	andi	s1,s1,-4
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:3320
 8006a34:	00940433          	add	s0,s0,s1
 8006a38:	00c45413          	srli	s0,s0,0xc
 8006a3c:	fff40413          	addi	s0,s0,-1
 8006a40:	00c41413          	slli	s0,s0,0xc
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:3322
 8006a44:	00e44e63          	blt	s0,a4,8006a60 <_malloc_trim_r+0x70>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:3331
 8006a48:	00000593          	li	a1,0
 8006a4c:	00098513          	mv	a0,s3
 8006a50:	359000ef          	jal	ra,80075a8 <_sbrk_r>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:3332
 8006a54:	00892783          	lw	a5,8(s2)
 8006a58:	009787b3          	add	a5,a5,s1
 8006a5c:	02f50663          	beq	a0,a5,8006a88 <_malloc_trim_r+0x98>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:3324
 8006a60:	00098513          	mv	a0,s3
 8006a64:	341000ef          	jal	ra,80075a4 <__malloc_unlock>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:3368
 8006a68:	01c12083          	lw	ra,28(sp)
 8006a6c:	01812403          	lw	s0,24(sp)
 8006a70:	01412483          	lw	s1,20(sp)
 8006a74:	01012903          	lw	s2,16(sp)
 8006a78:	00c12983          	lw	s3,12(sp)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:3325
 8006a7c:	00000513          	li	a0,0
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:3368
 8006a80:	02010113          	addi	sp,sp,32
 8006a84:	00008067          	ret
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:3340
 8006a88:	408005b3          	neg	a1,s0
 8006a8c:	00098513          	mv	a0,s3
 8006a90:	319000ef          	jal	ra,80075a8 <_sbrk_r>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:3342
 8006a94:	fff00793          	li	a5,-1
 8006a98:	04f50663          	beq	a0,a5,8006ae4 <_malloc_trim_r+0xf4>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:3361
 8006a9c:	0800b737          	lui	a4,0x800b
 8006aa0:	99072783          	lw	a5,-1648(a4) # 800a990 <__malloc_current_mallinfo>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:3360
 8006aa4:	00892683          	lw	a3,8(s2)
 8006aa8:	408484b3          	sub	s1,s1,s0
 8006aac:	0014e493          	ori	s1,s1,1
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:3361
 8006ab0:	40878433          	sub	s0,a5,s0
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:3363
 8006ab4:	00098513          	mv	a0,s3
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:3360
 8006ab8:	0096a223          	sw	s1,4(a3)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:3361
 8006abc:	98872823          	sw	s0,-1648(a4)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:3363
 8006ac0:	2e5000ef          	jal	ra,80075a4 <__malloc_unlock>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:3368
 8006ac4:	01c12083          	lw	ra,28(sp)
 8006ac8:	01812403          	lw	s0,24(sp)
 8006acc:	01412483          	lw	s1,20(sp)
 8006ad0:	01012903          	lw	s2,16(sp)
 8006ad4:	00c12983          	lw	s3,12(sp)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:3364
 8006ad8:	00100513          	li	a0,1
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:3368
 8006adc:	02010113          	addi	sp,sp,32
 8006ae0:	00008067          	ret
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:3345
 8006ae4:	00000593          	li	a1,0
 8006ae8:	00098513          	mv	a0,s3
 8006aec:	2bd000ef          	jal	ra,80075a8 <_sbrk_r>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:3346
 8006af0:	00892703          	lw	a4,8(s2)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:3347
 8006af4:	00f00693          	li	a3,15
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:3346
 8006af8:	40e507b3          	sub	a5,a0,a4
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:3347
 8006afc:	f6f6d2e3          	ble	a5,a3,8006a60 <_malloc_trim_r+0x70>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:3349
 8006b00:	8101a683          	lw	a3,-2032(gp) # 800a978 <__malloc_sbrk_base>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:3350
 8006b04:	0017e793          	ori	a5,a5,1
 8006b08:	00f72223          	sw	a5,4(a4)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:3349
 8006b0c:	40d50533          	sub	a0,a0,a3
 8006b10:	0800b6b7          	lui	a3,0x800b
 8006b14:	98a6a823          	sw	a0,-1648(a3) # 800a990 <__malloc_current_mallinfo>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:3350
 8006b18:	f49ff06f          	j	8006a60 <_malloc_trim_r+0x70>

08006b1c <_free_r>:
_free_r():
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2644
 8006b1c:	12058c63          	beqz	a1,8006c54 <_free_r+0x138>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2626
 8006b20:	ff010113          	addi	sp,sp,-16
 8006b24:	00812423          	sw	s0,8(sp)
 8006b28:	00912223          	sw	s1,4(sp)
 8006b2c:	00058413          	mv	s0,a1
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2647
 8006b30:	00050493          	mv	s1,a0
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2626
 8006b34:	00112623          	sw	ra,12(sp)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2647
 8006b38:	269000ef          	jal	ra,80075a0 <__malloc_lock>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2650
 8006b3c:	ffc42503          	lw	a0,-4(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2649
 8006b40:	ff840713          	addi	a4,s0,-8
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2667
 8006b44:	0800a5b7          	lui	a1,0x800a
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2663
 8006b48:	ffe57793          	andi	a5,a0,-2
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2664
 8006b4c:	00f70633          	add	a2,a4,a5
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2667
 8006b50:	56058593          	addi	a1,a1,1376 # 800a560 <__malloc_av_>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2665
 8006b54:	00462683          	lw	a3,4(a2)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2667
 8006b58:	0085a803          	lw	a6,8(a1)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2665
 8006b5c:	ffc6f693          	andi	a3,a3,-4
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2667
 8006b60:	1ac80263          	beq	a6,a2,8006d04 <_free_r+0x1e8>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2687
 8006b64:	00d62223          	sw	a3,4(a2)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2691
 8006b68:	00157513          	andi	a0,a0,1
 8006b6c:	00d60833          	add	a6,a2,a3
 8006b70:	0a051263          	bnez	a0,8006c14 <_free_r+0xf8>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2693
 8006b74:	ff842303          	lw	t1,-8(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2694
 8006b78:	00482803          	lw	a6,4(a6)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2697
 8006b7c:	0800a537          	lui	a0,0x800a
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2694
 8006b80:	40670733          	sub	a4,a4,t1
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2697
 8006b84:	00872883          	lw	a7,8(a4)
 8006b88:	56850513          	addi	a0,a0,1384 # 800a568 <__malloc_av_+0x8>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2695
 8006b8c:	006787b3          	add	a5,a5,t1
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2697
 8006b90:	00187813          	andi	a6,a6,1
 8006b94:	14a88263          	beq	a7,a0,8006cd8 <_free_r+0x1bc>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2700
 8006b98:	00c72303          	lw	t1,12(a4)
 8006b9c:	0068a623          	sw	t1,12(a7)
 8006ba0:	01132423          	sw	a7,8(t1)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2703
 8006ba4:	1c080863          	beqz	a6,8006d74 <_free_r+0x258>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2717
 8006ba8:	0017e693          	ori	a3,a5,1
 8006bac:	00d72223          	sw	a3,4(a4)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2718
 8006bb0:	00f62023          	sw	a5,0(a2)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2720
 8006bb4:	1ff00693          	li	a3,511
 8006bb8:	0af6ea63          	bltu	a3,a5,8006c6c <_free_r+0x150>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2720 (discriminator 1)
 8006bbc:	0037d793          	srli	a5,a5,0x3
 8006bc0:	00178693          	addi	a3,a5,1
 8006bc4:	00369693          	slli	a3,a3,0x3
 8006bc8:	0045a803          	lw	a6,4(a1)
 8006bcc:	00d586b3          	add	a3,a1,a3
 8006bd0:	0006a503          	lw	a0,0(a3)
 8006bd4:	4027d613          	srai	a2,a5,0x2
 8006bd8:	00100793          	li	a5,1
 8006bdc:	00c797b3          	sll	a5,a5,a2
 8006be0:	0107e7b3          	or	a5,a5,a6
 8006be4:	ff868613          	addi	a2,a3,-8
 8006be8:	00c72623          	sw	a2,12(a4)
 8006bec:	00a72423          	sw	a0,8(a4)
 8006bf0:	00f5a223          	sw	a5,4(a1)
 8006bf4:	00e6a023          	sw	a4,0(a3)
 8006bf8:	00e52623          	sw	a4,12(a0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2725
 8006bfc:	00812403          	lw	s0,8(sp)
 8006c00:	00c12083          	lw	ra,12(sp)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2683
 8006c04:	00048513          	mv	a0,s1
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2725
 8006c08:	00412483          	lw	s1,4(sp)
 8006c0c:	01010113          	addi	sp,sp,16
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2683
 8006c10:	1950006f          	j	80075a4 <__malloc_unlock>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2703
 8006c14:	00482503          	lw	a0,4(a6)
 8006c18:	00157513          	andi	a0,a0,1
 8006c1c:	02051e63          	bnez	a0,8006c58 <_free_r+0x13c>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2705
 8006c20:	0800a537          	lui	a0,0x800a
 8006c24:	00d787b3          	add	a5,a5,a3
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2707
 8006c28:	56850513          	addi	a0,a0,1384 # 800a568 <__malloc_av_+0x8>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2707 (discriminator 1)
 8006c2c:	00862683          	lw	a3,8(a2)
 8006c30:	0017e893          	ori	a7,a5,1
 8006c34:	00f70833          	add	a6,a4,a5
 8006c38:	14a68a63          	beq	a3,a0,8006d8c <_free_r+0x270>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2713
 8006c3c:	00c62603          	lw	a2,12(a2)
 8006c40:	00c6a623          	sw	a2,12(a3)
 8006c44:	00d62423          	sw	a3,8(a2)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2717
 8006c48:	01172223          	sw	a7,4(a4)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2718
 8006c4c:	00f82023          	sw	a5,0(a6)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2719
 8006c50:	f65ff06f          	j	8006bb4 <_free_r+0x98>
 8006c54:	00008067          	ret
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2717
 8006c58:	0017e693          	ori	a3,a5,1
 8006c5c:	fed42e23          	sw	a3,-4(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2718
 8006c60:	00f62023          	sw	a5,0(a2)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2720
 8006c64:	1ff00693          	li	a3,511
 8006c68:	f4f6fae3          	bleu	a5,a3,8006bbc <_free_r+0xa0>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2720 (discriminator 2)
 8006c6c:	0097d693          	srli	a3,a5,0x9
 8006c70:	00400613          	li	a2,4
 8006c74:	0cd66e63          	bltu	a2,a3,8006d50 <_free_r+0x234>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2720 (discriminator 7)
 8006c78:	0067d693          	srli	a3,a5,0x6
 8006c7c:	03968513          	addi	a0,a3,57
 8006c80:	03868613          	addi	a2,a3,56
 8006c84:	00351513          	slli	a0,a0,0x3
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2720 (discriminator 26)
 8006c88:	00a58533          	add	a0,a1,a0
 8006c8c:	00052683          	lw	a3,0(a0)
 8006c90:	ff850513          	addi	a0,a0,-8
 8006c94:	10d50a63          	beq	a0,a3,8006da8 <_free_r+0x28c>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2720 (discriminator 32)
 8006c98:	0046a603          	lw	a2,4(a3)
 8006c9c:	ffc67613          	andi	a2,a2,-4
 8006ca0:	00c7f663          	bleu	a2,a5,8006cac <_free_r+0x190>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2720 (discriminator 34)
 8006ca4:	0086a683          	lw	a3,8(a3)
 8006ca8:	fed518e3          	bne	a0,a3,8006c98 <_free_r+0x17c>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2720 (discriminator 35)
 8006cac:	00c6a503          	lw	a0,12(a3)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2720 (discriminator 36)
 8006cb0:	00a72623          	sw	a0,12(a4)
 8006cb4:	00d72423          	sw	a3,8(a4)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2725 (discriminator 36)
 8006cb8:	00812403          	lw	s0,8(sp)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2720 (discriminator 36)
 8006cbc:	00e52423          	sw	a4,8(a0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2725 (discriminator 36)
 8006cc0:	00c12083          	lw	ra,12(sp)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2683 (discriminator 36)
 8006cc4:	00048513          	mv	a0,s1
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2725 (discriminator 36)
 8006cc8:	00412483          	lw	s1,4(sp)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2720 (discriminator 36)
 8006ccc:	00e6a623          	sw	a4,12(a3)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2725 (discriminator 36)
 8006cd0:	01010113          	addi	sp,sp,16
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2683 (discriminator 36)
 8006cd4:	0d10006f          	j	80075a4 <__malloc_unlock>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2703
 8006cd8:	12081863          	bnez	a6,8006e08 <_free_r+0x2ec>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2705
 8006cdc:	00862583          	lw	a1,8(a2)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2713
 8006ce0:	00c62603          	lw	a2,12(a2)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2705
 8006ce4:	00f687b3          	add	a5,a3,a5
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2717
 8006ce8:	0017e693          	ori	a3,a5,1
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2713
 8006cec:	00c5a623          	sw	a2,12(a1)
 8006cf0:	00b62423          	sw	a1,8(a2)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2717
 8006cf4:	00d72223          	sw	a3,4(a4)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2718
 8006cf8:	00f70733          	add	a4,a4,a5
 8006cfc:	00f72023          	sw	a5,0(a4)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2719
 8006d00:	efdff06f          	j	8006bfc <_free_r+0xe0>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2671
 8006d04:	00157513          	andi	a0,a0,1
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2669
 8006d08:	00d787b3          	add	a5,a5,a3
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2671
 8006d0c:	02051063          	bnez	a0,8006d2c <_free_r+0x210>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2673
 8006d10:	ff842503          	lw	a0,-8(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2674
 8006d14:	40a70733          	sub	a4,a4,a0
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2676
 8006d18:	00c72683          	lw	a3,12(a4)
 8006d1c:	00872603          	lw	a2,8(a4)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2675
 8006d20:	00a787b3          	add	a5,a5,a0
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2676
 8006d24:	00d62623          	sw	a3,12(a2)
 8006d28:	00c6a423          	sw	a2,8(a3)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2679 (discriminator 1)
 8006d2c:	0017e613          	ori	a2,a5,1
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2681 (discriminator 1)
 8006d30:	8141a683          	lw	a3,-2028(gp) # 800a97c <__malloc_trim_threshold>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2679 (discriminator 1)
 8006d34:	00c72223          	sw	a2,4(a4)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2680 (discriminator 1)
 8006d38:	00e5a423          	sw	a4,8(a1)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2681 (discriminator 1)
 8006d3c:	ecd7e0e3          	bltu	a5,a3,8006bfc <_free_r+0xe0>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2682
 8006d40:	8201a583          	lw	a1,-2016(gp) # 800a988 <__malloc_top_pad>
 8006d44:	00048513          	mv	a0,s1
 8006d48:	ca9ff0ef          	jal	ra,80069f0 <_malloc_trim_r>
 8006d4c:	eb1ff06f          	j	8006bfc <_free_r+0xe0>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2720 (discriminator 8)
 8006d50:	01400613          	li	a2,20
 8006d54:	02d67463          	bleu	a3,a2,8006d7c <_free_r+0x260>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2720 (discriminator 11)
 8006d58:	05400613          	li	a2,84
 8006d5c:	06d66463          	bltu	a2,a3,8006dc4 <_free_r+0x2a8>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2720 (discriminator 13)
 8006d60:	00c7d693          	srli	a3,a5,0xc
 8006d64:	06f68513          	addi	a0,a3,111
 8006d68:	06e68613          	addi	a2,a3,110
 8006d6c:	00351513          	slli	a0,a0,0x3
 8006d70:	f19ff06f          	j	8006c88 <_free_r+0x16c>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2705
 8006d74:	00d787b3          	add	a5,a5,a3
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2707
 8006d78:	eb5ff06f          	j	8006c2c <_free_r+0x110>
 8006d7c:	05c68513          	addi	a0,a3,92
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2720 (discriminator 10)
 8006d80:	05b68613          	addi	a2,a3,91
 8006d84:	00351513          	slli	a0,a0,0x3
 8006d88:	f01ff06f          	j	8006c88 <_free_r+0x16c>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2710
 8006d8c:	00e5aa23          	sw	a4,20(a1)
 8006d90:	00e5a823          	sw	a4,16(a1)
 8006d94:	00a72623          	sw	a0,12(a4)
 8006d98:	00a72423          	sw	a0,8(a4)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2717
 8006d9c:	01172223          	sw	a7,4(a4)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2718
 8006da0:	00f82023          	sw	a5,0(a6)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2719
 8006da4:	e59ff06f          	j	8006bfc <_free_r+0xe0>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2720 (discriminator 28)
 8006da8:	0045a803          	lw	a6,4(a1)
 8006dac:	40265613          	srai	a2,a2,0x2
 8006db0:	00100793          	li	a5,1
 8006db4:	00c79633          	sll	a2,a5,a2
 8006db8:	01066633          	or	a2,a2,a6
 8006dbc:	00c5a223          	sw	a2,4(a1)
 8006dc0:	ef1ff06f          	j	8006cb0 <_free_r+0x194>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2720 (discriminator 14)
 8006dc4:	15400613          	li	a2,340
 8006dc8:	00d66c63          	bltu	a2,a3,8006de0 <_free_r+0x2c4>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2720 (discriminator 16)
 8006dcc:	00f7d693          	srli	a3,a5,0xf
 8006dd0:	07868513          	addi	a0,a3,120
 8006dd4:	07768613          	addi	a2,a3,119
 8006dd8:	00351513          	slli	a0,a0,0x3
 8006ddc:	eadff06f          	j	8006c88 <_free_r+0x16c>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2720 (discriminator 17)
 8006de0:	55400613          	li	a2,1364
 8006de4:	00d66c63          	bltu	a2,a3,8006dfc <_free_r+0x2e0>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2720 (discriminator 19)
 8006de8:	0127d693          	srli	a3,a5,0x12
 8006dec:	07d68513          	addi	a0,a3,125
 8006df0:	07c68613          	addi	a2,a3,124
 8006df4:	00351513          	slli	a0,a0,0x3
 8006df8:	e91ff06f          	j	8006c88 <_free_r+0x16c>
 8006dfc:	3f800513          	li	a0,1016
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2720
 8006e00:	07e00613          	li	a2,126
 8006e04:	e85ff06f          	j	8006c88 <_free_r+0x16c>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2717
 8006e08:	0017e693          	ori	a3,a5,1
 8006e0c:	00d72223          	sw	a3,4(a4)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2718
 8006e10:	00f62023          	sw	a5,0(a2)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2719
 8006e14:	de9ff06f          	j	8006bfc <_free_r+0xe0>

08006e18 <_malloc_r>:
_malloc_r():
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2328
 8006e18:	fd010113          	addi	sp,sp,-48
 8006e1c:	02912223          	sw	s1,36(sp)
 8006e20:	01312e23          	sw	s3,28(sp)
 8006e24:	02112623          	sw	ra,44(sp)
 8006e28:	02812423          	sw	s0,40(sp)
 8006e2c:	03212023          	sw	s2,32(sp)
 8006e30:	01412c23          	sw	s4,24(sp)
 8006e34:	01512a23          	sw	s5,20(sp)
 8006e38:	01612823          	sw	s6,16(sp)
 8006e3c:	01712623          	sw	s7,12(sp)
 8006e40:	01812423          	sw	s8,8(sp)
 8006e44:	01912223          	sw	s9,4(sp)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2348
 8006e48:	00b58493          	addi	s1,a1,11
 8006e4c:	01600793          	li	a5,22
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2328
 8006e50:	00050993          	mv	s3,a0
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2348
 8006e54:	0697e663          	bltu	a5,s1,8006ec0 <_malloc_r+0xa8>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2351
 8006e58:	01000793          	li	a5,16
 8006e5c:	22b7e063          	bltu	a5,a1,800707c <_malloc_r+0x264>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2357
 8006e60:	740000ef          	jal	ra,80075a0 <__malloc_lock>
 8006e64:	01000493          	li	s1,16
 8006e68:	00200613          	li	a2,2
 8006e6c:	01800793          	li	a5,24
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2367
 8006e70:	0800a937          	lui	s2,0x800a
 8006e74:	56090913          	addi	s2,s2,1376 # 800a560 <__malloc_av_>
 8006e78:	00f907b3          	add	a5,s2,a5
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2368
 8006e7c:	0047a403          	lw	s0,4(a5)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2367
 8006e80:	ff878713          	addi	a4,a5,-8
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2372
 8006e84:	24e40463          	beq	s0,a4,80070cc <_malloc_r+0x2b4>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2380
 8006e88:	00442783          	lw	a5,4(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2381
 8006e8c:	00c42683          	lw	a3,12(s0)
 8006e90:	00842603          	lw	a2,8(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2380
 8006e94:	ffc7f793          	andi	a5,a5,-4
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2410
 8006e98:	00f407b3          	add	a5,s0,a5
 8006e9c:	0047a703          	lw	a4,4(a5)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2409
 8006ea0:	00d62623          	sw	a3,12(a2)
 8006ea4:	00c6a423          	sw	a2,8(a3)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2410
 8006ea8:	00176713          	ori	a4,a4,1
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2412
 8006eac:	00098513          	mv	a0,s3
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2410
 8006eb0:	00e7a223          	sw	a4,4(a5)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2412
 8006eb4:	6f0000ef          	jal	ra,80075a4 <__malloc_unlock>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2413
 8006eb8:	00840513          	addi	a0,s0,8
 8006ebc:	1cc0006f          	j	8007088 <_malloc_r+0x270>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2348 (discriminator 1)
 8006ec0:	ff84f493          	andi	s1,s1,-8
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2351 (discriminator 1)
 8006ec4:	1a04cc63          	bltz	s1,800707c <_malloc_r+0x264>
 8006ec8:	1ab4ea63          	bltu	s1,a1,800707c <_malloc_r+0x264>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2357
 8006ecc:	6d4000ef          	jal	ra,80075a0 <__malloc_lock>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2361
 8006ed0:	1f700793          	li	a5,503
 8006ed4:	4697fa63          	bleu	s1,a5,8007348 <_malloc_r+0x530>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2393
 8006ed8:	0094d793          	srli	a5,s1,0x9
 8006edc:	1e078063          	beqz	a5,80070bc <_malloc_r+0x2a4>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2393 (discriminator 2)
 8006ee0:	00400713          	li	a4,4
 8006ee4:	3ef76e63          	bltu	a4,a5,80072e0 <_malloc_r+0x4c8>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2393 (discriminator 4)
 8006ee8:	0064d793          	srli	a5,s1,0x6
 8006eec:	03978613          	addi	a2,a5,57
 8006ef0:	03878513          	addi	a0,a5,56
 8006ef4:	00361693          	slli	a3,a2,0x3
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2394 (discriminator 24)
 8006ef8:	0800a937          	lui	s2,0x800a
 8006efc:	56090913          	addi	s2,s2,1376 # 800a560 <__malloc_av_>
 8006f00:	00d906b3          	add	a3,s2,a3
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2396 (discriminator 24)
 8006f04:	0046a403          	lw	s0,4(a3)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2394 (discriminator 24)
 8006f08:	ff868693          	addi	a3,a3,-8
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2396 (discriminator 24)
 8006f0c:	02868c63          	beq	a3,s0,8006f44 <_malloc_r+0x12c>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2398
 8006f10:	00442783          	lw	a5,4(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2401
 8006f14:	00f00593          	li	a1,15
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2398
 8006f18:	ffc7f793          	andi	a5,a5,-4
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2399
 8006f1c:	40978733          	sub	a4,a5,s1
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2401
 8006f20:	02e5c063          	blt	a1,a4,8006f40 <_malloc_r+0x128>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2407
 8006f24:	34075863          	bgez	a4,8007274 <_malloc_r+0x45c>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2396 (discriminator 2)
 8006f28:	00c42403          	lw	s0,12(s0)
 8006f2c:	00868c63          	beq	a3,s0,8006f44 <_malloc_r+0x12c>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2398
 8006f30:	00442783          	lw	a5,4(s0)
 8006f34:	ffc7f793          	andi	a5,a5,-4
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2399
 8006f38:	40978733          	sub	a4,a5,s1
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2401
 8006f3c:	fee5d4e3          	ble	a4,a1,8006f24 <_malloc_r+0x10c>
 8006f40:	00050613          	mv	a2,a0
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2423
 8006f44:	01092403          	lw	s0,16(s2)
 8006f48:	00890813          	addi	a6,s2,8
 8006f4c:	19040c63          	beq	s0,a6,80070e4 <_malloc_r+0x2cc>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2425
 8006f50:	00442583          	lw	a1,4(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2428
 8006f54:	00f00713          	li	a4,15
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2425
 8006f58:	ffc5f593          	andi	a1,a1,-4
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2426
 8006f5c:	409587b3          	sub	a5,a1,s1
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2428
 8006f60:	40f74a63          	blt	a4,a5,8007374 <_malloc_r+0x55c>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2440
 8006f64:	01092a23          	sw	a6,20(s2)
 8006f68:	01092823          	sw	a6,16(s2)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2442
 8006f6c:	3e07d463          	bgez	a5,8007354 <_malloc_r+0x53c>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2452
 8006f70:	1ff00793          	li	a5,511
 8006f74:	30b7e663          	bltu	a5,a1,8007280 <_malloc_r+0x468>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2452 (discriminator 1)
 8006f78:	0035d593          	srli	a1,a1,0x3
 8006f7c:	00158793          	addi	a5,a1,1
 8006f80:	00379793          	slli	a5,a5,0x3
 8006f84:	00492503          	lw	a0,4(s2)
 8006f88:	00f907b3          	add	a5,s2,a5
 8006f8c:	0007a683          	lw	a3,0(a5)
 8006f90:	4025d593          	srai	a1,a1,0x2
 8006f94:	00100713          	li	a4,1
 8006f98:	00b71733          	sll	a4,a4,a1
 8006f9c:	00a76733          	or	a4,a4,a0
 8006fa0:	ff878593          	addi	a1,a5,-8
 8006fa4:	00b42623          	sw	a1,12(s0)
 8006fa8:	00d42423          	sw	a3,8(s0)
 8006fac:	00e92223          	sw	a4,4(s2)
 8006fb0:	0087a023          	sw	s0,0(a5)
 8006fb4:	0086a623          	sw	s0,12(a3)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2460 (discriminator 37)
 8006fb8:	40265793          	srai	a5,a2,0x2
 8006fbc:	00100693          	li	a3,1
 8006fc0:	00f696b3          	sll	a3,a3,a5
 8006fc4:	12d76a63          	bltu	a4,a3,80070f8 <_malloc_r+0x2e0>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2465
 8006fc8:	00e6f7b3          	and	a5,a3,a4
 8006fcc:	02079463          	bnez	a5,8006ff4 <_malloc_r+0x1dc>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2469
 8006fd0:	00169693          	slli	a3,a3,0x1
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2468
 8006fd4:	ffc67613          	andi	a2,a2,-4
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2470
 8006fd8:	00e6f7b3          	and	a5,a3,a4
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2468
 8006fdc:	00460613          	addi	a2,a2,4
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2470
 8006fe0:	00079a63          	bnez	a5,8006ff4 <_malloc_r+0x1dc>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2473
 8006fe4:	00169693          	slli	a3,a3,0x1
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2470
 8006fe8:	00e6f7b3          	and	a5,a3,a4
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2472
 8006fec:	00460613          	addi	a2,a2,4
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2470
 8006ff0:	fe078ae3          	beqz	a5,8006fe4 <_malloc_r+0x1cc>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2493
 8006ff4:	00f00513          	li	a0,15
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2481
 8006ff8:	00361893          	slli	a7,a2,0x3
 8006ffc:	011908b3          	add	a7,s2,a7
 8007000:	00088593          	mv	a1,a7
 8007004:	00060313          	mv	t1,a2
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2488
 8007008:	00c5a403          	lw	s0,12(a1)
 800700c:	00859a63          	bne	a1,s0,8007020 <_malloc_r+0x208>
 8007010:	2f40006f          	j	8007304 <_malloc_r+0x4ec>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2506
 8007014:	30075263          	bgez	a4,8007318 <_malloc_r+0x500>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2488 (discriminator 2)
 8007018:	00c42403          	lw	s0,12(s0)
 800701c:	2e858463          	beq	a1,s0,8007304 <_malloc_r+0x4ec>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2490
 8007020:	00442783          	lw	a5,4(s0)
 8007024:	ffc7f793          	andi	a5,a5,-4
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2491
 8007028:	40978733          	sub	a4,a5,s1
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2493
 800702c:	fee554e3          	ble	a4,a0,8007014 <_malloc_r+0x1fc>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2497
 8007030:	00c42683          	lw	a3,12(s0)
 8007034:	00842603          	lw	a2,8(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2496
 8007038:	0014e593          	ori	a1,s1,1
 800703c:	00b42223          	sw	a1,4(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2497
 8007040:	00d62623          	sw	a3,12(a2)
 8007044:	00c6a423          	sw	a2,8(a3)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2495
 8007048:	009404b3          	add	s1,s0,s1
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2498
 800704c:	00992a23          	sw	s1,20(s2)
 8007050:	00992823          	sw	s1,16(s2)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2499
 8007054:	00176693          	ori	a3,a4,1
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2498
 8007058:	0104a623          	sw	a6,12(s1)
 800705c:	0104a423          	sw	a6,8(s1)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2499
 8007060:	00d4a223          	sw	a3,4(s1)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2500
 8007064:	00f407b3          	add	a5,s0,a5
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2502
 8007068:	00098513          	mv	a0,s3
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2500
 800706c:	00e7a023          	sw	a4,0(a5)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2502
 8007070:	534000ef          	jal	ra,80075a4 <__malloc_unlock>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2503
 8007074:	00840513          	addi	a0,s0,8
 8007078:	0100006f          	j	8007088 <_malloc_r+0x270>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2353
 800707c:	00c00793          	li	a5,12
 8007080:	00f9a023          	sw	a5,0(s3)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2354
 8007084:	00000513          	li	a0,0
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2593
 8007088:	02c12083          	lw	ra,44(sp)
 800708c:	02812403          	lw	s0,40(sp)
 8007090:	02412483          	lw	s1,36(sp)
 8007094:	02012903          	lw	s2,32(sp)
 8007098:	01c12983          	lw	s3,28(sp)
 800709c:	01812a03          	lw	s4,24(sp)
 80070a0:	01412a83          	lw	s5,20(sp)
 80070a4:	01012b03          	lw	s6,16(sp)
 80070a8:	00c12b83          	lw	s7,12(sp)
 80070ac:	00812c03          	lw	s8,8(sp)
 80070b0:	00412c83          	lw	s9,4(sp)
 80070b4:	03010113          	addi	sp,sp,48
 80070b8:	00008067          	ret
 80070bc:	20000693          	li	a3,512
 80070c0:	04000613          	li	a2,64
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2393
 80070c4:	03f00513          	li	a0,63
 80070c8:	e31ff06f          	j	8006ef8 <_malloc_r+0xe0>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2375
 80070cc:	00c7a403          	lw	s0,12(a5)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2388
 80070d0:	00260613          	addi	a2,a2,2
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2378
 80070d4:	da879ae3          	bne	a5,s0,8006e88 <_malloc_r+0x70>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2423
 80070d8:	01092403          	lw	s0,16(s2)
 80070dc:	00890813          	addi	a6,s2,8
 80070e0:	e70418e3          	bne	s0,a6,8006f50 <_malloc_r+0x138>
 80070e4:	00492703          	lw	a4,4(s2)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2460
 80070e8:	40265793          	srai	a5,a2,0x2
 80070ec:	00100693          	li	a3,1
 80070f0:	00f696b3          	sll	a3,a3,a5
 80070f4:	ecd77ae3          	bleu	a3,a4,8006fc8 <_malloc_r+0x1b0>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2560
 80070f8:	00892403          	lw	s0,8(s2)
 80070fc:	00442783          	lw	a5,4(s0)
 8007100:	ffc7fb93          	andi	s7,a5,-4
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2561
 8007104:	009be863          	bltu	s7,s1,8007114 <_malloc_r+0x2fc>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2560 (discriminator 1)
 8007108:	409b8733          	sub	a4,s7,s1
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2561 (discriminator 1)
 800710c:	00f00793          	li	a5,15
 8007110:	12e7ce63          	blt	a5,a4,800724c <_malloc_r+0x434>
malloc_extend_top():
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2155
 8007114:	8201aa03          	lw	s4,-2016(gp) # 800a988 <__malloc_top_pad>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2162
 8007118:	8101a703          	lw	a4,-2032(gp) # 800a978 <__malloc_sbrk_base>
 800711c:	fff00793          	li	a5,-1
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2151
 8007120:	01740c33          	add	s8,s0,s7
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2155
 8007124:	01448a33          	add	s4,s1,s4
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2162
 8007128:	32f70863          	beq	a4,a5,8007458 <_malloc_r+0x640>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2163
 800712c:	000017b7          	lui	a5,0x1
 8007130:	00f78793          	addi	a5,a5,15 # 100f <_start-0x8002ff1>
 8007134:	00fa0a33          	add	s4,s4,a5
 8007138:	fffff7b7          	lui	a5,0xfffff
 800713c:	00fa7a33          	and	s4,s4,a5
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2165
 8007140:	000a0593          	mv	a1,s4
 8007144:	00098513          	mv	a0,s3
 8007148:	460000ef          	jal	ra,80075a8 <_sbrk_r>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2168
 800714c:	fff00793          	li	a5,-1
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2165
 8007150:	00050a93          	mv	s5,a0
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2168
 8007154:	26f50a63          	beq	a0,a5,80073c8 <_malloc_r+0x5b0>
 8007158:	27856663          	bltu	a0,s8,80073c4 <_malloc_r+0x5ac>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2172
 800715c:	82818b13          	addi	s6,gp,-2008 # 800a990 <__malloc_current_mallinfo>
 8007160:	000b2703          	lw	a4,0(s6)
 8007164:	00ea0733          	add	a4,s4,a4
 8007168:	00eb2023          	sw	a4,0(s6)
 800716c:	00070793          	mv	a5,a4
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2174
 8007170:	34ac0c63          	beq	s8,a0,80074c8 <_malloc_r+0x6b0>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2183
 8007174:	8101a683          	lw	a3,-2032(gp) # 800a978 <__malloc_sbrk_base>
 8007178:	fff00713          	li	a4,-1
 800717c:	36e68463          	beq	a3,a4,80074e4 <_malloc_r+0x6cc>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2186
 8007180:	418a8c33          	sub	s8,s5,s8
 8007184:	00fc07b3          	add	a5,s8,a5
 8007188:	00fb2023          	sw	a5,0(s6)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2189
 800718c:	007af793          	andi	a5,s5,7
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2190
 8007190:	00001737          	lui	a4,0x1
 8007194:	00078a63          	beqz	a5,80071a8 <_malloc_r+0x390>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2192
 8007198:	40fa8ab3          	sub	s5,s5,a5
 800719c:	00870713          	addi	a4,a4,8 # 1008 <_start-0x8002ff8>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2193
 80071a0:	008a8a93          	addi	s5,s5,8
 80071a4:	40f70733          	sub	a4,a4,a5
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2199
 80071a8:	000017b7          	lui	a5,0x1
 80071ac:	fff78793          	addi	a5,a5,-1 # fff <_start-0x8003001>
 80071b0:	014a8a33          	add	s4,s5,s4
 80071b4:	00fa7a33          	and	s4,s4,a5
 80071b8:	41470a33          	sub	s4,a4,s4
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2202
 80071bc:	000a0593          	mv	a1,s4
 80071c0:	00098513          	mv	a0,s3
 80071c4:	3e4000ef          	jal	ra,80075a8 <_sbrk_r>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2203
 80071c8:	fff00793          	li	a5,-1
 80071cc:	32f50463          	beq	a0,a5,80074f4 <_malloc_r+0x6dc>
 80071d0:	415507b3          	sub	a5,a0,s5
 80071d4:	014787b3          	add	a5,a5,s4
 80071d8:	0017e793          	ori	a5,a5,1
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2210
 80071dc:	000b2703          	lw	a4,0(s6)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2212
 80071e0:	01592423          	sw	s5,8(s2)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2214
 80071e4:	00faa223          	sw	a5,4(s5)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2210
 80071e8:	00ea0733          	add	a4,s4,a4
 80071ec:	00eb2023          	sw	a4,0(s6)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2216
 80071f0:	2f240e63          	beq	s0,s2,80074ec <_malloc_r+0x6d4>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2223
 80071f4:	00f00613          	li	a2,15
 80071f8:	31767463          	bleu	s7,a2,8007500 <_malloc_r+0x6e8>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2231
 80071fc:	00442683          	lw	a3,4(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2230
 8007200:	ff4b8793          	addi	a5,s7,-12
 8007204:	ff87f793          	andi	a5,a5,-8
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2231
 8007208:	0016f693          	andi	a3,a3,1
 800720c:	00f6e6b3          	or	a3,a3,a5
 8007210:	00d42223          	sw	a3,4(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2232
 8007214:	00500593          	li	a1,5
 8007218:	00f406b3          	add	a3,s0,a5
 800721c:	00b6a223          	sw	a1,4(a3)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2234
 8007220:	00b6a423          	sw	a1,8(a3)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2237
 8007224:	32f66063          	bltu	a2,a5,8007544 <_malloc_r+0x72c>
 8007228:	004aa783          	lw	a5,4(s5)
 800722c:	000a8413          	mv	s0,s5
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2242
 8007230:	81c1a603          	lw	a2,-2020(gp) # 800a984 <__malloc_max_sbrked_mem>
 8007234:	00e67463          	bleu	a4,a2,800723c <_malloc_r+0x424>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2243
 8007238:	80e1ae23          	sw	a4,-2020(gp) # 800a984 <__malloc_max_sbrked_mem>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2248
 800723c:	8181a603          	lw	a2,-2024(gp) # 800a980 <_edata>
 8007240:	18e67863          	bleu	a4,a2,80073d0 <_malloc_r+0x5b8>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2249
 8007244:	80e1ac23          	sw	a4,-2024(gp) # 800a980 <_edata>
 8007248:	1880006f          	j	80073d0 <_malloc_r+0x5b8>
_malloc_r():
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2585
 800724c:	0014e793          	ori	a5,s1,1
 8007250:	00f42223          	sw	a5,4(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2586
 8007254:	009404b3          	add	s1,s0,s1
 8007258:	00992423          	sw	s1,8(s2)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2587
 800725c:	00176713          	ori	a4,a4,1
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2589
 8007260:	00098513          	mv	a0,s3
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2587
 8007264:	00e4a223          	sw	a4,4(s1)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2589
 8007268:	33c000ef          	jal	ra,80075a4 <__malloc_unlock>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2590
 800726c:	00840513          	addi	a0,s0,8
 8007270:	e19ff06f          	j	8007088 <_malloc_r+0x270>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2409
 8007274:	00c42683          	lw	a3,12(s0)
 8007278:	00842603          	lw	a2,8(s0)
 800727c:	c1dff06f          	j	8006e98 <_malloc_r+0x80>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2452 (discriminator 2)
 8007280:	0095d793          	srli	a5,a1,0x9
 8007284:	00400713          	li	a4,4
 8007288:	12f77463          	bleu	a5,a4,80073b0 <_malloc_r+0x598>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2452 (discriminator 8)
 800728c:	01400713          	li	a4,20
 8007290:	1ef76663          	bltu	a4,a5,800747c <_malloc_r+0x664>
 8007294:	05c78693          	addi	a3,a5,92
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2452 (discriminator 10)
 8007298:	05b78713          	addi	a4,a5,91
 800729c:	00369693          	slli	a3,a3,0x3
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2452 (discriminator 26)
 80072a0:	00d906b3          	add	a3,s2,a3
 80072a4:	0006a783          	lw	a5,0(a3)
 80072a8:	ff868693          	addi	a3,a3,-8
 80072ac:	1af68a63          	beq	a3,a5,8007460 <_malloc_r+0x648>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2452 (discriminator 32)
 80072b0:	0047a703          	lw	a4,4(a5)
 80072b4:	ffc77713          	andi	a4,a4,-4
 80072b8:	00e5f663          	bleu	a4,a1,80072c4 <_malloc_r+0x4ac>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2452 (discriminator 34)
 80072bc:	0087a783          	lw	a5,8(a5)
 80072c0:	fef698e3          	bne	a3,a5,80072b0 <_malloc_r+0x498>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2452 (discriminator 35)
 80072c4:	00c7a683          	lw	a3,12(a5)
 80072c8:	00492703          	lw	a4,4(s2)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2452 (discriminator 36)
 80072cc:	00d42623          	sw	a3,12(s0)
 80072d0:	00f42423          	sw	a5,8(s0)
 80072d4:	0086a423          	sw	s0,8(a3)
 80072d8:	0087a623          	sw	s0,12(a5)
 80072dc:	cddff06f          	j	8006fb8 <_malloc_r+0x1a0>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2393 (discriminator 5)
 80072e0:	01400713          	li	a4,20
 80072e4:	10f77863          	bleu	a5,a4,80073f4 <_malloc_r+0x5dc>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2393 (discriminator 8)
 80072e8:	05400713          	li	a4,84
 80072ec:	1af76663          	bltu	a4,a5,8007498 <_malloc_r+0x680>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2393 (discriminator 10)
 80072f0:	00c4d793          	srli	a5,s1,0xc
 80072f4:	06f78613          	addi	a2,a5,111
 80072f8:	06e78513          	addi	a0,a5,110
 80072fc:	00361693          	slli	a3,a2,0x3
 8007300:	bf9ff06f          	j	8006ef8 <_malloc_r+0xe0>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2526
 8007304:	00130313          	addi	t1,t1,1
 8007308:	00337793          	andi	a5,t1,3
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2517
 800730c:	00858593          	addi	a1,a1,8
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2526
 8007310:	ce079ce3          	bnez	a5,8007008 <_malloc_r+0x1f0>
 8007314:	0fc0006f          	j	8007410 <_malloc_r+0x5f8>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2508
 8007318:	00f407b3          	add	a5,s0,a5
 800731c:	0047a703          	lw	a4,4(a5)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2509
 8007320:	00c42683          	lw	a3,12(s0)
 8007324:	00842603          	lw	a2,8(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2508
 8007328:	00176713          	ori	a4,a4,1
 800732c:	00e7a223          	sw	a4,4(a5)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2509
 8007330:	00d62623          	sw	a3,12(a2)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2511
 8007334:	00098513          	mv	a0,s3
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2509
 8007338:	00c6a423          	sw	a2,8(a3)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2511
 800733c:	268000ef          	jal	ra,80075a4 <__malloc_unlock>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2512
 8007340:	00840513          	addi	a0,s0,8
 8007344:	d45ff06f          	j	8007088 <_malloc_r+0x270>
 8007348:	0034d613          	srli	a2,s1,0x3
 800734c:	00848793          	addi	a5,s1,8
 8007350:	b21ff06f          	j	8006e70 <_malloc_r+0x58>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2444
 8007354:	00b405b3          	add	a1,s0,a1
 8007358:	0045a783          	lw	a5,4(a1)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2446
 800735c:	00098513          	mv	a0,s3
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2444
 8007360:	0017e793          	ori	a5,a5,1
 8007364:	00f5a223          	sw	a5,4(a1)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2446
 8007368:	23c000ef          	jal	ra,80075a4 <__malloc_unlock>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2447
 800736c:	00840513          	addi	a0,s0,8
 8007370:	d19ff06f          	j	8007088 <_malloc_r+0x270>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2431
 8007374:	0014e713          	ori	a4,s1,1
 8007378:	00e42223          	sw	a4,4(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2430
 800737c:	009404b3          	add	s1,s0,s1
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2432
 8007380:	00992a23          	sw	s1,20(s2)
 8007384:	00992823          	sw	s1,16(s2)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2433
 8007388:	0017e713          	ori	a4,a5,1
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2432
 800738c:	0104a623          	sw	a6,12(s1)
 8007390:	0104a423          	sw	a6,8(s1)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2433
 8007394:	00e4a223          	sw	a4,4(s1)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2434
 8007398:	00b405b3          	add	a1,s0,a1
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2436
 800739c:	00098513          	mv	a0,s3
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2434
 80073a0:	00f5a023          	sw	a5,0(a1)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2436
 80073a4:	200000ef          	jal	ra,80075a4 <__malloc_unlock>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2437
 80073a8:	00840513          	addi	a0,s0,8
 80073ac:	cddff06f          	j	8007088 <_malloc_r+0x270>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2452 (discriminator 7)
 80073b0:	0065d793          	srli	a5,a1,0x6
 80073b4:	03978693          	addi	a3,a5,57
 80073b8:	03878713          	addi	a4,a5,56
 80073bc:	00369693          	slli	a3,a3,0x3
 80073c0:	ee1ff06f          	j	80072a0 <_malloc_r+0x488>
malloc_extend_top():
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2169
 80073c4:	0f240863          	beq	s0,s2,80074b4 <_malloc_r+0x69c>
 80073c8:	00892403          	lw	s0,8(s2)
 80073cc:	00442783          	lw	a5,4(s0)
_malloc_r():
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2576
 80073d0:	ffc7f793          	andi	a5,a5,-4
 80073d4:	40978733          	sub	a4,a5,s1
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2577
 80073d8:	0097e663          	bltu	a5,s1,80073e4 <_malloc_r+0x5cc>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2577 (discriminator 1)
 80073dc:	00f00793          	li	a5,15
 80073e0:	e6e7c6e3          	blt	a5,a4,800724c <_malloc_r+0x434>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2579
 80073e4:	00098513          	mv	a0,s3
 80073e8:	1bc000ef          	jal	ra,80075a4 <__malloc_unlock>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2580
 80073ec:	00000513          	li	a0,0
 80073f0:	c99ff06f          	j	8007088 <_malloc_r+0x270>
 80073f4:	05c78613          	addi	a2,a5,92
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2393 (discriminator 7)
 80073f8:	05b78513          	addi	a0,a5,91
 80073fc:	00361693          	slli	a3,a2,0x3
 8007400:	af9ff06f          	j	8006ef8 <_malloc_r+0xe0>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2539
 8007404:	0088a783          	lw	a5,8(a7)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2537
 8007408:	fff60613          	addi	a2,a2,-1
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2539
 800740c:	19179663          	bne	a5,a7,8007598 <_malloc_r+0x780>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2532
 8007410:	00367793          	andi	a5,a2,3
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2538
 8007414:	ff888893          	addi	a7,a7,-8
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2532
 8007418:	fe0796e3          	bnez	a5,8007404 <_malloc_r+0x5ec>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2534
 800741c:	00492703          	lw	a4,4(s2)
 8007420:	fff6c793          	not	a5,a3
 8007424:	00e7f7b3          	and	a5,a5,a4
 8007428:	00f92223          	sw	a5,4(s2)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2543
 800742c:	00169693          	slli	a3,a3,0x1
 8007430:	ccd7e4e3          	bltu	a5,a3,80070f8 <_malloc_r+0x2e0>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2543 (discriminator 1)
 8007434:	cc0682e3          	beqz	a3,80070f8 <_malloc_r+0x2e0>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2545
 8007438:	00f6f733          	and	a4,a3,a5
 800743c:	00071a63          	bnez	a4,8007450 <_malloc_r+0x638>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2548
 8007440:	00169693          	slli	a3,a3,0x1
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2545
 8007444:	00f6f733          	and	a4,a3,a5
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2547
 8007448:	00430313          	addi	t1,t1,4
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2545
 800744c:	fe070ae3          	beqz	a4,8007440 <_malloc_r+0x628>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2452
 8007450:	00030613          	mv	a2,t1
 8007454:	ba5ff06f          	j	8006ff8 <_malloc_r+0x1e0>
malloc_extend_top():
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2155
 8007458:	010a0a13          	addi	s4,s4,16
 800745c:	ce5ff06f          	j	8007140 <_malloc_r+0x328>
_malloc_r():
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2452 (discriminator 28)
 8007460:	00492503          	lw	a0,4(s2)
 8007464:	40275593          	srai	a1,a4,0x2
 8007468:	00100713          	li	a4,1
 800746c:	00b71733          	sll	a4,a4,a1
 8007470:	00a76733          	or	a4,a4,a0
 8007474:	00e92223          	sw	a4,4(s2)
 8007478:	e55ff06f          	j	80072cc <_malloc_r+0x4b4>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2452 (discriminator 11)
 800747c:	05400713          	li	a4,84
 8007480:	08f76663          	bltu	a4,a5,800750c <_malloc_r+0x6f4>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2452 (discriminator 13)
 8007484:	00c5d793          	srli	a5,a1,0xc
 8007488:	06f78693          	addi	a3,a5,111
 800748c:	06e78713          	addi	a4,a5,110
 8007490:	00369693          	slli	a3,a3,0x3
 8007494:	e0dff06f          	j	80072a0 <_malloc_r+0x488>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2393 (discriminator 11)
 8007498:	15400713          	li	a4,340
 800749c:	08f76663          	bltu	a4,a5,8007528 <_malloc_r+0x710>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2393 (discriminator 13)
 80074a0:	00f4d793          	srli	a5,s1,0xf
 80074a4:	07878613          	addi	a2,a5,120
 80074a8:	07778513          	addi	a0,a5,119
 80074ac:	00361693          	slli	a3,a2,0x3
 80074b0:	a49ff06f          	j	8006ef8 <_malloc_r+0xe0>
malloc_extend_top():
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2172
 80074b4:	82818b13          	addi	s6,gp,-2008 # 800a990 <__malloc_current_mallinfo>
 80074b8:	000b2783          	lw	a5,0(s6)
 80074bc:	00fa07b3          	add	a5,s4,a5
 80074c0:	00fb2023          	sw	a5,0(s6)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2174
 80074c4:	cb1ff06f          	j	8007174 <_malloc_r+0x35c>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2176
 80074c8:	014c1693          	slli	a3,s8,0x14
 80074cc:	ca0694e3          	bnez	a3,8007174 <_malloc_r+0x35c>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2179
 80074d0:	00892403          	lw	s0,8(s2)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2178
 80074d4:	014b87b3          	add	a5,s7,s4
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2179
 80074d8:	0017e793          	ori	a5,a5,1
 80074dc:	00f42223          	sw	a5,4(s0)
 80074e0:	d51ff06f          	j	8007230 <_malloc_r+0x418>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2184
 80074e4:	8151a823          	sw	s5,-2032(gp) # 800a978 <__malloc_sbrk_base>
 80074e8:	ca5ff06f          	j	800718c <_malloc_r+0x374>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2216
 80074ec:	000a8413          	mv	s0,s5
 80074f0:	d41ff06f          	j	8007230 <_malloc_r+0x418>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2203
 80074f4:	00100793          	li	a5,1
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2205
 80074f8:	00000a13          	li	s4,0
 80074fc:	ce1ff06f          	j	80071dc <_malloc_r+0x3c4>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2225
 8007500:	00100793          	li	a5,1
 8007504:	00faa223          	sw	a5,4(s5)
_malloc_r():
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2577
 8007508:	eddff06f          	j	80073e4 <_malloc_r+0x5cc>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2452 (discriminator 14)
 800750c:	15400713          	li	a4,340
 8007510:	04f76863          	bltu	a4,a5,8007560 <_malloc_r+0x748>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2452 (discriminator 16)
 8007514:	00f5d793          	srli	a5,a1,0xf
 8007518:	07878693          	addi	a3,a5,120
 800751c:	07778713          	addi	a4,a5,119
 8007520:	00369693          	slli	a3,a3,0x3
 8007524:	d7dff06f          	j	80072a0 <_malloc_r+0x488>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2393 (discriminator 14)
 8007528:	55400713          	li	a4,1364
 800752c:	04f76863          	bltu	a4,a5,800757c <_malloc_r+0x764>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2393 (discriminator 16)
 8007530:	0124d793          	srli	a5,s1,0x12
 8007534:	07d78613          	addi	a2,a5,125
 8007538:	07c78513          	addi	a0,a5,124
 800753c:	00361693          	slli	a3,a2,0x3
 8007540:	9b9ff06f          	j	8006ef8 <_malloc_r+0xe0>
malloc_extend_top():
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2238
 8007544:	00840593          	addi	a1,s0,8
 8007548:	00098513          	mv	a0,s3
 800754c:	dd0ff0ef          	jal	ra,8006b1c <_free_r>
 8007550:	00892403          	lw	s0,8(s2)
 8007554:	000b2703          	lw	a4,0(s6)
 8007558:	00442783          	lw	a5,4(s0)
 800755c:	cd5ff06f          	j	8007230 <_malloc_r+0x418>
_malloc_r():
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2452 (discriminator 17)
 8007560:	55400713          	li	a4,1364
 8007564:	02f76463          	bltu	a4,a5,800758c <_malloc_r+0x774>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2452 (discriminator 19)
 8007568:	0125d793          	srli	a5,a1,0x12
 800756c:	07d78693          	addi	a3,a5,125
 8007570:	07c78713          	addi	a4,a5,124
 8007574:	00369693          	slli	a3,a3,0x3
 8007578:	d29ff06f          	j	80072a0 <_malloc_r+0x488>
 800757c:	3f800693          	li	a3,1016
 8007580:	07f00613          	li	a2,127
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2393
 8007584:	07e00513          	li	a0,126
 8007588:	971ff06f          	j	8006ef8 <_malloc_r+0xe0>
 800758c:	3f800693          	li	a3,1016
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mallocr.c:2452
 8007590:	07e00713          	li	a4,126
 8007594:	d0dff06f          	j	80072a0 <_malloc_r+0x488>
 8007598:	00492783          	lw	a5,4(s2)
 800759c:	e91ff06f          	j	800742c <_malloc_r+0x614>

080075a0 <__malloc_lock>:
__malloc_lock():
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/stdlib/../../../../../newlib/libc/stdlib/mlock.c:53
 80075a0:	00008067          	ret

080075a4 <__malloc_unlock>:
__malloc_unlock():
 80075a4:	00008067          	ret

080075a8 <_sbrk_r>:
_sbrk_r():
 80075a8:	ff010113          	addi	sp,sp,-16
 80075ac:	00812423          	sw	s0,8(sp)
 80075b0:	00912223          	sw	s1,4(sp)
 80075b4:	00050493          	mv	s1,a0
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/reent/../../../../../newlib/libc/reent/sbrkr.c:58
 80075b8:	00058513          	mv	a0,a1
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/reent/../../../../../newlib/libc/reent/sbrkr.c:53
 80075bc:	00112623          	sw	ra,12(sp)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/reent/../../../../../newlib/libc/reent/sbrkr.c:57
 80075c0:	8601a023          	sw	zero,-1952(gp) # 800a9c8 <errno>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/reent/../../../../../newlib/libc/reent/sbrkr.c:58
 80075c4:	7a8000ef          	jal	ra,8007d6c <_sbrk>
 80075c8:	fff00793          	li	a5,-1
 80075cc:	00f50c63          	beq	a0,a5,80075e4 <_sbrk_r+0x3c>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/reent/../../../../../newlib/libc/reent/sbrkr.c:61
 80075d0:	00c12083          	lw	ra,12(sp)
 80075d4:	00812403          	lw	s0,8(sp)
 80075d8:	00412483          	lw	s1,4(sp)
 80075dc:	01010113          	addi	sp,sp,16
 80075e0:	00008067          	ret
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/reent/../../../../../newlib/libc/reent/sbrkr.c:58 (discriminator 1)
 80075e4:	8601a783          	lw	a5,-1952(gp) # 800a9c8 <errno>
 80075e8:	fe0784e3          	beqz	a5,80075d0 <_sbrk_r+0x28>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/reent/../../../../../newlib/libc/reent/sbrkr.c:61
 80075ec:	00c12083          	lw	ra,12(sp)
 80075f0:	00812403          	lw	s0,8(sp)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/reent/../../../../../newlib/libc/reent/sbrkr.c:59
 80075f4:	00f4a023          	sw	a5,0(s1)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libc/reent/../../../../../newlib/libc/reent/sbrkr.c:61
 80075f8:	00412483          	lw	s1,4(sp)
 80075fc:	01010113          	addi	sp,sp,16
 8007600:	00008067          	ret

08007604 <conv_stat>:
conv_stat():
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/syscalls.c:140
 8007604:	ff010113          	addi	sp,sp,-16
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/syscalls.c:144
 8007608:	0145a383          	lw	t2,20(a1)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/syscalls.c:145
 800760c:	0185a283          	lw	t0,24(a1)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/syscalls.c:146
 8007610:	01c5af83          	lw	t6,28(a1)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/syscalls.c:147
 8007614:	0205af03          	lw	t5,32(a1)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/syscalls.c:148
 8007618:	0305ae83          	lw	t4,48(a1)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/syscalls.c:149
 800761c:	0405ae03          	lw	t3,64(a1)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/syscalls.c:150
 8007620:	0385a303          	lw	t1,56(a1)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/syscalls.c:151
 8007624:	0485a803          	lw	a6,72(a1)
 8007628:	04c5a883          	lw	a7,76(a1)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/syscalls.c:152
 800762c:	0585a603          	lw	a2,88(a1)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/syscalls.c:140
 8007630:	00812623          	sw	s0,12(sp)
 8007634:	00912423          	sw	s1,8(sp)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/syscalls.c:143
 8007638:	0105a403          	lw	s0,16(a1)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/syscalls.c:142
 800763c:	0085a483          	lw	s1,8(a1)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/syscalls.c:140
 8007640:	01212223          	sw	s2,4(sp)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/syscalls.c:141
 8007644:	0005a903          	lw	s2,0(a1)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/syscalls.c:152
 8007648:	05c5a683          	lw	a3,92(a1)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/syscalls.c:153
 800764c:	0685a703          	lw	a4,104(a1)
 8007650:	06c5a783          	lw	a5,108(a1)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/syscalls.c:141
 8007654:	01251023          	sh	s2,0(a0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/syscalls.c:142
 8007658:	00951123          	sh	s1,2(a0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/syscalls.c:143
 800765c:	00852223          	sw	s0,4(a0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/syscalls.c:144
 8007660:	00751423          	sh	t2,8(a0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/syscalls.c:145
 8007664:	00551523          	sh	t0,10(a0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/syscalls.c:146
 8007668:	01f51623          	sh	t6,12(a0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/syscalls.c:147
 800766c:	01e51723          	sh	t5,14(a0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/syscalls.c:148
 8007670:	01d52823          	sw	t4,16(a0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/syscalls.c:149
 8007674:	05c52423          	sw	t3,72(a0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/syscalls.c:150
 8007678:	04652223          	sw	t1,68(a0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/syscalls.c:151
 800767c:	01052c23          	sw	a6,24(a0)
 8007680:	01152e23          	sw	a7,28(a0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/syscalls.c:152
 8007684:	02c52423          	sw	a2,40(a0)
 8007688:	02d52623          	sw	a3,44(a0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/syscalls.c:154
 800768c:	00c12403          	lw	s0,12(sp)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/syscalls.c:153
 8007690:	02e52c23          	sw	a4,56(a0)
 8007694:	02f52e23          	sw	a5,60(a0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/syscalls.c:154
 8007698:	00812483          	lw	s1,8(sp)
 800769c:	00412903          	lw	s2,4(sp)
 80076a0:	01010113          	addi	sp,sp,16
 80076a4:	00008067          	ret

080076a8 <__syscall_error>:
__syscall_error():
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/syscalls.c:77
 80076a8:	ff010113          	addi	sp,sp,-16
 80076ac:	00812423          	sw	s0,8(sp)
 80076b0:	00112623          	sw	ra,12(sp)
 80076b4:	00050413          	mv	s0,a0
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/syscalls.c:78
 80076b8:	959fc0ef          	jal	ra,8004010 <__errno>
 80076bc:	408007b3          	neg	a5,s0
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/syscalls.c:80
 80076c0:	00c12083          	lw	ra,12(sp)
 80076c4:	00812403          	lw	s0,8(sp)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/syscalls.c:78
 80076c8:	00f52023          	sw	a5,0(a0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/syscalls.c:80
 80076cc:	fff00513          	li	a0,-1
 80076d0:	01010113          	addi	sp,sp,16
 80076d4:	00008067          	ret

080076d8 <_open>:
_open():
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/syscalls.c:85
 80076d8:	ff010113          	addi	sp,sp,-16
 80076dc:	00112623          	sw	ra,12(sp)
 80076e0:	00812423          	sw	s0,8(sp)
__internal_syscall():
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/machine/syscall.h:65
 80076e4:	00000693          	li	a3,0
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/machine/syscall.h:70
 80076e8:	40000893          	li	a7,1024
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/machine/syscall.h:73
 80076ec:	00000073          	ecall
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/machine/syscall.h:76
 80076f0:	00050413          	mv	s0,a0
 80076f4:	00054c63          	bltz	a0,800770c <_open+0x34>
_open():
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/syscalls.c:87
 80076f8:	00040513          	mv	a0,s0
 80076fc:	00c12083          	lw	ra,12(sp)
 8007700:	00812403          	lw	s0,8(sp)
 8007704:	01010113          	addi	sp,sp,16
 8007708:	00008067          	ret
__syscall_error():
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/syscalls.c:78
 800770c:	40800433          	neg	s0,s0
 8007710:	901fc0ef          	jal	ra,8004010 <__errno>
 8007714:	00852023          	sw	s0,0(a0)
__internal_syscall():
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/machine/syscall.h:77
 8007718:	fff00413          	li	s0,-1
_open():
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/syscalls.c:86
 800771c:	fddff06f          	j	80076f8 <_open+0x20>

08007720 <_openat>:
_openat():
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/syscalls.c:92
 8007720:	ff010113          	addi	sp,sp,-16
 8007724:	00112623          	sw	ra,12(sp)
 8007728:	00812423          	sw	s0,8(sp)
__internal_syscall():
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/machine/syscall.h:70
 800772c:	03800893          	li	a7,56
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/machine/syscall.h:73
 8007730:	00000073          	ecall
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/machine/syscall.h:76
 8007734:	00050413          	mv	s0,a0
 8007738:	00054c63          	bltz	a0,8007750 <_openat+0x30>
_openat():
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/syscalls.c:94
 800773c:	00040513          	mv	a0,s0
 8007740:	00c12083          	lw	ra,12(sp)
 8007744:	00812403          	lw	s0,8(sp)
 8007748:	01010113          	addi	sp,sp,16
 800774c:	00008067          	ret
__syscall_error():
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/syscalls.c:78
 8007750:	40800433          	neg	s0,s0
 8007754:	8bdfc0ef          	jal	ra,8004010 <__errno>
 8007758:	00852023          	sw	s0,0(a0)
__internal_syscall():
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/machine/syscall.h:77
 800775c:	fff00413          	li	s0,-1
_openat():
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/syscalls.c:93
 8007760:	fddff06f          	j	800773c <_openat+0x1c>

08007764 <_lseek>:
_lseek():
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/syscalls.c:99
 8007764:	ff010113          	addi	sp,sp,-16
 8007768:	00112623          	sw	ra,12(sp)
 800776c:	00812423          	sw	s0,8(sp)
__internal_syscall():
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/machine/syscall.h:65
 8007770:	00000693          	li	a3,0
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/machine/syscall.h:70
 8007774:	03e00893          	li	a7,62
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/machine/syscall.h:73
 8007778:	00000073          	ecall
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/machine/syscall.h:76
 800777c:	00050413          	mv	s0,a0
 8007780:	00054c63          	bltz	a0,8007798 <_lseek+0x34>
_lseek():
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/syscalls.c:101
 8007784:	00040513          	mv	a0,s0
 8007788:	00c12083          	lw	ra,12(sp)
 800778c:	00812403          	lw	s0,8(sp)
 8007790:	01010113          	addi	sp,sp,16
 8007794:	00008067          	ret
__syscall_error():
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/syscalls.c:78
 8007798:	40800433          	neg	s0,s0
 800779c:	875fc0ef          	jal	ra,8004010 <__errno>
 80077a0:	00852023          	sw	s0,0(a0)
__internal_syscall():
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/machine/syscall.h:77
 80077a4:	fff00413          	li	s0,-1
_lseek():
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/syscalls.c:100
 80077a8:	fddff06f          	j	8007784 <_lseek+0x20>

080077ac <_read>:
_read():
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/syscalls.c:106
 80077ac:	ff010113          	addi	sp,sp,-16
 80077b0:	00112623          	sw	ra,12(sp)
 80077b4:	00812423          	sw	s0,8(sp)
__internal_syscall():
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/machine/syscall.h:65
 80077b8:	00000693          	li	a3,0
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/machine/syscall.h:70
 80077bc:	03f00893          	li	a7,63
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/machine/syscall.h:73
 80077c0:	00000073          	ecall
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/machine/syscall.h:76
 80077c4:	00050413          	mv	s0,a0
 80077c8:	00054c63          	bltz	a0,80077e0 <_read+0x34>
_read():
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/syscalls.c:108
 80077cc:	00040513          	mv	a0,s0
 80077d0:	00c12083          	lw	ra,12(sp)
 80077d4:	00812403          	lw	s0,8(sp)
 80077d8:	01010113          	addi	sp,sp,16
 80077dc:	00008067          	ret
__syscall_error():
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/syscalls.c:78
 80077e0:	40800433          	neg	s0,s0
 80077e4:	82dfc0ef          	jal	ra,8004010 <__errno>
 80077e8:	00852023          	sw	s0,0(a0)
__internal_syscall():
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/machine/syscall.h:77
 80077ec:	fff00413          	li	s0,-1
_read():
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/syscalls.c:107
 80077f0:	fddff06f          	j	80077cc <_read+0x20>

080077f4 <_write>:
_write():
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/syscalls.c:113
 80077f4:	ff010113          	addi	sp,sp,-16
 80077f8:	00112623          	sw	ra,12(sp)
 80077fc:	00812423          	sw	s0,8(sp)
__internal_syscall():
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/machine/syscall.h:65
 8007800:	00000693          	li	a3,0
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/machine/syscall.h:70
 8007804:	04000893          	li	a7,64
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/machine/syscall.h:73
 8007808:	00000073          	ecall
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/machine/syscall.h:76
 800780c:	00050413          	mv	s0,a0
 8007810:	00054c63          	bltz	a0,8007828 <_write+0x34>
_write():
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/syscalls.c:115
 8007814:	00040513          	mv	a0,s0
 8007818:	00c12083          	lw	ra,12(sp)
 800781c:	00812403          	lw	s0,8(sp)
 8007820:	01010113          	addi	sp,sp,16
 8007824:	00008067          	ret
__syscall_error():
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/syscalls.c:78
 8007828:	40800433          	neg	s0,s0
 800782c:	fe4fc0ef          	jal	ra,8004010 <__errno>
 8007830:	00852023          	sw	s0,0(a0)
__internal_syscall():
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/machine/syscall.h:77
 8007834:	fff00413          	li	s0,-1
_write():
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/syscalls.c:114
 8007838:	fddff06f          	j	8007814 <_write+0x20>

0800783c <_fstat>:
_fstat():
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/syscalls.c:160
 800783c:	f7010113          	addi	sp,sp,-144
 8007840:	08912223          	sw	s1,132(sp)
 8007844:	08112623          	sw	ra,140(sp)
 8007848:	00058493          	mv	s1,a1
 800784c:	08812423          	sw	s0,136(sp)
__internal_syscall():
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/machine/syscall.h:64
 8007850:	00000613          	li	a2,0
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/machine/syscall.h:63
 8007854:	00010593          	mv	a1,sp
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/machine/syscall.h:65
 8007858:	00000693          	li	a3,0
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/machine/syscall.h:70
 800785c:	05000893          	li	a7,80
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/machine/syscall.h:73
 8007860:	00000073          	ecall
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/machine/syscall.h:76
 8007864:	00050413          	mv	s0,a0
 8007868:	02054463          	bltz	a0,8007890 <_fstat+0x54>
_fstat():
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/syscalls.c:163
 800786c:	00048513          	mv	a0,s1
 8007870:	00010593          	mv	a1,sp
 8007874:	d91ff0ef          	jal	ra,8007604 <conv_stat>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/syscalls.c:165
 8007878:	00040513          	mv	a0,s0
 800787c:	08c12083          	lw	ra,140(sp)
 8007880:	08812403          	lw	s0,136(sp)
 8007884:	08412483          	lw	s1,132(sp)
 8007888:	09010113          	addi	sp,sp,144
 800788c:	00008067          	ret
__syscall_error():
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/syscalls.c:78
 8007890:	40800433          	neg	s0,s0
 8007894:	f7cfc0ef          	jal	ra,8004010 <__errno>
 8007898:	00852023          	sw	s0,0(a0)
__internal_syscall():
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/machine/syscall.h:77
 800789c:	fff00413          	li	s0,-1
 80078a0:	fcdff06f          	j	800786c <_fstat+0x30>

080078a4 <_stat>:
_stat():
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/syscalls.c:170
 80078a4:	f7010113          	addi	sp,sp,-144
 80078a8:	08912223          	sw	s1,132(sp)
 80078ac:	08112623          	sw	ra,140(sp)
 80078b0:	00058493          	mv	s1,a1
 80078b4:	08812423          	sw	s0,136(sp)
__internal_syscall():
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/machine/syscall.h:64
 80078b8:	00000613          	li	a2,0
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/machine/syscall.h:63
 80078bc:	00010593          	mv	a1,sp
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/machine/syscall.h:65
 80078c0:	00000693          	li	a3,0
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/machine/syscall.h:70
 80078c4:	40e00893          	li	a7,1038
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/machine/syscall.h:73
 80078c8:	00000073          	ecall
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/machine/syscall.h:76
 80078cc:	00050413          	mv	s0,a0
 80078d0:	02054463          	bltz	a0,80078f8 <_stat+0x54>
_stat():
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/syscalls.c:173
 80078d4:	00048513          	mv	a0,s1
 80078d8:	00010593          	mv	a1,sp
 80078dc:	d29ff0ef          	jal	ra,8007604 <conv_stat>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/syscalls.c:175
 80078e0:	00040513          	mv	a0,s0
 80078e4:	08c12083          	lw	ra,140(sp)
 80078e8:	08812403          	lw	s0,136(sp)
 80078ec:	08412483          	lw	s1,132(sp)
 80078f0:	09010113          	addi	sp,sp,144
 80078f4:	00008067          	ret
__syscall_error():
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/syscalls.c:78
 80078f8:	40800433          	neg	s0,s0
 80078fc:	f14fc0ef          	jal	ra,8004010 <__errno>
 8007900:	00852023          	sw	s0,0(a0)
__internal_syscall():
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/machine/syscall.h:77
 8007904:	fff00413          	li	s0,-1
 8007908:	fcdff06f          	j	80078d4 <_stat+0x30>

0800790c <_lstat>:
_lstat():
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/syscalls.c:180
 800790c:	f7010113          	addi	sp,sp,-144
 8007910:	08912223          	sw	s1,132(sp)
 8007914:	08112623          	sw	ra,140(sp)
 8007918:	00058493          	mv	s1,a1
 800791c:	08812423          	sw	s0,136(sp)
__internal_syscall():
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/machine/syscall.h:64
 8007920:	00000613          	li	a2,0
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/machine/syscall.h:63
 8007924:	00010593          	mv	a1,sp
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/machine/syscall.h:65
 8007928:	00000693          	li	a3,0
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/machine/syscall.h:70
 800792c:	40f00893          	li	a7,1039
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/machine/syscall.h:73
 8007930:	00000073          	ecall
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/machine/syscall.h:76
 8007934:	00050413          	mv	s0,a0
 8007938:	02054463          	bltz	a0,8007960 <_lstat+0x54>
_lstat():
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/syscalls.c:183
 800793c:	00048513          	mv	a0,s1
 8007940:	00010593          	mv	a1,sp
 8007944:	cc1ff0ef          	jal	ra,8007604 <conv_stat>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/syscalls.c:185
 8007948:	00040513          	mv	a0,s0
 800794c:	08c12083          	lw	ra,140(sp)
 8007950:	08812403          	lw	s0,136(sp)
 8007954:	08412483          	lw	s1,132(sp)
 8007958:	09010113          	addi	sp,sp,144
 800795c:	00008067          	ret
__syscall_error():
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/syscalls.c:78
 8007960:	40800433          	neg	s0,s0
 8007964:	eacfc0ef          	jal	ra,8004010 <__errno>
 8007968:	00852023          	sw	s0,0(a0)
__internal_syscall():
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/machine/syscall.h:77
 800796c:	fff00413          	li	s0,-1
 8007970:	fcdff06f          	j	800793c <_lstat+0x30>

08007974 <_fstatat>:
_fstatat():
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/syscalls.c:190
 8007974:	f7010113          	addi	sp,sp,-144
 8007978:	08912223          	sw	s1,132(sp)
 800797c:	08112623          	sw	ra,140(sp)
 8007980:	00060493          	mv	s1,a2
 8007984:	08812423          	sw	s0,136(sp)
__internal_syscall():
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/machine/syscall.h:70
 8007988:	04f00893          	li	a7,79
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/machine/syscall.h:64
 800798c:	00010613          	mv	a2,sp
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/machine/syscall.h:73
 8007990:	00000073          	ecall
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/machine/syscall.h:76
 8007994:	00050413          	mv	s0,a0
 8007998:	02054463          	bltz	a0,80079c0 <_fstatat+0x4c>
_fstatat():
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/syscalls.c:193
 800799c:	00048513          	mv	a0,s1
 80079a0:	00010593          	mv	a1,sp
 80079a4:	c61ff0ef          	jal	ra,8007604 <conv_stat>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/syscalls.c:195
 80079a8:	00040513          	mv	a0,s0
 80079ac:	08c12083          	lw	ra,140(sp)
 80079b0:	08812403          	lw	s0,136(sp)
 80079b4:	08412483          	lw	s1,132(sp)
 80079b8:	09010113          	addi	sp,sp,144
 80079bc:	00008067          	ret
__syscall_error():
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/syscalls.c:78
 80079c0:	40800433          	neg	s0,s0
 80079c4:	e4cfc0ef          	jal	ra,8004010 <__errno>
 80079c8:	00852023          	sw	s0,0(a0)
__internal_syscall():
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/machine/syscall.h:77
 80079cc:	fff00413          	li	s0,-1
 80079d0:	fcdff06f          	j	800799c <_fstatat+0x28>

080079d4 <_access>:
_access():
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/syscalls.c:200
 80079d4:	ff010113          	addi	sp,sp,-16
 80079d8:	00112623          	sw	ra,12(sp)
 80079dc:	00812423          	sw	s0,8(sp)
__internal_syscall():
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/machine/syscall.h:64
 80079e0:	00000613          	li	a2,0
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/machine/syscall.h:65
 80079e4:	00000693          	li	a3,0
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/machine/syscall.h:70
 80079e8:	40900893          	li	a7,1033
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/machine/syscall.h:73
 80079ec:	00000073          	ecall
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/machine/syscall.h:76
 80079f0:	00050413          	mv	s0,a0
 80079f4:	00054c63          	bltz	a0,8007a0c <_access+0x38>
_access():
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/syscalls.c:202
 80079f8:	00040513          	mv	a0,s0
 80079fc:	00c12083          	lw	ra,12(sp)
 8007a00:	00812403          	lw	s0,8(sp)
 8007a04:	01010113          	addi	sp,sp,16
 8007a08:	00008067          	ret
__syscall_error():
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/syscalls.c:78
 8007a0c:	40800433          	neg	s0,s0
 8007a10:	e00fc0ef          	jal	ra,8004010 <__errno>
 8007a14:	00852023          	sw	s0,0(a0)
__internal_syscall():
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/machine/syscall.h:77
 8007a18:	fff00413          	li	s0,-1
_access():
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/syscalls.c:201
 8007a1c:	fddff06f          	j	80079f8 <_access+0x24>

08007a20 <_faccessat>:
_faccessat():
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/syscalls.c:207
 8007a20:	ff010113          	addi	sp,sp,-16
 8007a24:	00112623          	sw	ra,12(sp)
 8007a28:	00812423          	sw	s0,8(sp)
__internal_syscall():
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/machine/syscall.h:70
 8007a2c:	03000893          	li	a7,48
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/machine/syscall.h:73
 8007a30:	00000073          	ecall
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/machine/syscall.h:76
 8007a34:	00050413          	mv	s0,a0
 8007a38:	00054c63          	bltz	a0,8007a50 <_faccessat+0x30>
_faccessat():
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/syscalls.c:209
 8007a3c:	00040513          	mv	a0,s0
 8007a40:	00c12083          	lw	ra,12(sp)
 8007a44:	00812403          	lw	s0,8(sp)
 8007a48:	01010113          	addi	sp,sp,16
 8007a4c:	00008067          	ret
__syscall_error():
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/syscalls.c:78
 8007a50:	40800433          	neg	s0,s0
 8007a54:	dbcfc0ef          	jal	ra,8004010 <__errno>
 8007a58:	00852023          	sw	s0,0(a0)
__internal_syscall():
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/machine/syscall.h:77
 8007a5c:	fff00413          	li	s0,-1
_faccessat():
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/syscalls.c:208
 8007a60:	fddff06f          	j	8007a3c <_faccessat+0x1c>

08007a64 <_close>:
_close():
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/syscalls.c:214
 8007a64:	ff010113          	addi	sp,sp,-16
 8007a68:	00112623          	sw	ra,12(sp)
 8007a6c:	00812423          	sw	s0,8(sp)
__internal_syscall():
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/machine/syscall.h:63
 8007a70:	00000593          	li	a1,0
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/machine/syscall.h:64
 8007a74:	00000613          	li	a2,0
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/machine/syscall.h:65
 8007a78:	00000693          	li	a3,0
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/machine/syscall.h:70
 8007a7c:	03900893          	li	a7,57
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/machine/syscall.h:73
 8007a80:	00000073          	ecall
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/machine/syscall.h:76
 8007a84:	00050413          	mv	s0,a0
 8007a88:	00054c63          	bltz	a0,8007aa0 <_close+0x3c>
_close():
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/syscalls.c:216
 8007a8c:	00040513          	mv	a0,s0
 8007a90:	00c12083          	lw	ra,12(sp)
 8007a94:	00812403          	lw	s0,8(sp)
 8007a98:	01010113          	addi	sp,sp,16
 8007a9c:	00008067          	ret
__syscall_error():
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/syscalls.c:78
 8007aa0:	40800433          	neg	s0,s0
 8007aa4:	d6cfc0ef          	jal	ra,8004010 <__errno>
 8007aa8:	00852023          	sw	s0,0(a0)
__internal_syscall():
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/machine/syscall.h:77
 8007aac:	fff00413          	li	s0,-1
_close():
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/syscalls.c:215
 8007ab0:	fddff06f          	j	8007a8c <_close+0x28>

08007ab4 <_link>:
_link():
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/syscalls.c:221
 8007ab4:	ff010113          	addi	sp,sp,-16
 8007ab8:	00112623          	sw	ra,12(sp)
 8007abc:	00812423          	sw	s0,8(sp)
__internal_syscall():
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/machine/syscall.h:64
 8007ac0:	00000613          	li	a2,0
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/machine/syscall.h:65
 8007ac4:	00000693          	li	a3,0
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/machine/syscall.h:70
 8007ac8:	40100893          	li	a7,1025
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/machine/syscall.h:73
 8007acc:	00000073          	ecall
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/machine/syscall.h:76
 8007ad0:	00050413          	mv	s0,a0
 8007ad4:	00054c63          	bltz	a0,8007aec <_link+0x38>
_link():
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/syscalls.c:223
 8007ad8:	00040513          	mv	a0,s0
 8007adc:	00c12083          	lw	ra,12(sp)
 8007ae0:	00812403          	lw	s0,8(sp)
 8007ae4:	01010113          	addi	sp,sp,16
 8007ae8:	00008067          	ret
__syscall_error():
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/syscalls.c:78
 8007aec:	40800433          	neg	s0,s0
 8007af0:	d20fc0ef          	jal	ra,8004010 <__errno>
 8007af4:	00852023          	sw	s0,0(a0)
__internal_syscall():
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/machine/syscall.h:77
 8007af8:	fff00413          	li	s0,-1
_link():
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/syscalls.c:222
 8007afc:	fddff06f          	j	8007ad8 <_link+0x24>

08007b00 <_unlink>:
_unlink():
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/syscalls.c:228
 8007b00:	ff010113          	addi	sp,sp,-16
 8007b04:	00112623          	sw	ra,12(sp)
 8007b08:	00812423          	sw	s0,8(sp)
__internal_syscall():
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/machine/syscall.h:63
 8007b0c:	00000593          	li	a1,0
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/machine/syscall.h:64
 8007b10:	00000613          	li	a2,0
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/machine/syscall.h:65
 8007b14:	00000693          	li	a3,0
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/machine/syscall.h:70
 8007b18:	40200893          	li	a7,1026
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/machine/syscall.h:73
 8007b1c:	00000073          	ecall
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/machine/syscall.h:76
 8007b20:	00050413          	mv	s0,a0
 8007b24:	00054c63          	bltz	a0,8007b3c <_unlink+0x3c>
_unlink():
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/syscalls.c:230
 8007b28:	00040513          	mv	a0,s0
 8007b2c:	00c12083          	lw	ra,12(sp)
 8007b30:	00812403          	lw	s0,8(sp)
 8007b34:	01010113          	addi	sp,sp,16
 8007b38:	00008067          	ret
__syscall_error():
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/syscalls.c:78
 8007b3c:	40800433          	neg	s0,s0
 8007b40:	cd0fc0ef          	jal	ra,8004010 <__errno>
 8007b44:	00852023          	sw	s0,0(a0)
__internal_syscall():
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/machine/syscall.h:77
 8007b48:	fff00413          	li	s0,-1
_unlink():
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/syscalls.c:229
 8007b4c:	fddff06f          	j	8007b28 <_unlink+0x28>

08007b50 <_execve>:
_execve():
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/syscalls.c:236
 8007b50:	ff010113          	addi	sp,sp,-16
 8007b54:	00112623          	sw	ra,12(sp)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/syscalls.c:237
 8007b58:	cb8fc0ef          	jal	ra,8004010 <__errno>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/syscalls.c:239
 8007b5c:	00c12083          	lw	ra,12(sp)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/syscalls.c:237
 8007b60:	00c00793          	li	a5,12
 8007b64:	00f52023          	sw	a5,0(a0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/syscalls.c:239
 8007b68:	fff00513          	li	a0,-1
 8007b6c:	01010113          	addi	sp,sp,16
 8007b70:	00008067          	ret

08007b74 <_fork>:
_fork():
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/syscalls.c:246
 8007b74:	ff010113          	addi	sp,sp,-16
 8007b78:	00112623          	sw	ra,12(sp)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/syscalls.c:247
 8007b7c:	c94fc0ef          	jal	ra,8004010 <__errno>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/syscalls.c:249
 8007b80:	00c12083          	lw	ra,12(sp)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/syscalls.c:247
 8007b84:	00b00793          	li	a5,11
 8007b88:	00f52023          	sw	a5,0(a0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/syscalls.c:249
 8007b8c:	fff00513          	li	a0,-1
 8007b90:	01010113          	addi	sp,sp,16
 8007b94:	00008067          	ret

08007b98 <_getpid>:
_getpid():
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/syscalls.c:259
 8007b98:	00100513          	li	a0,1
 8007b9c:	00008067          	ret

08007ba0 <_kill>:
_kill():
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/syscalls.c:266
 8007ba0:	ff010113          	addi	sp,sp,-16
 8007ba4:	00112623          	sw	ra,12(sp)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/syscalls.c:267
 8007ba8:	c68fc0ef          	jal	ra,8004010 <__errno>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/syscalls.c:269
 8007bac:	00c12083          	lw	ra,12(sp)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/syscalls.c:267
 8007bb0:	01600793          	li	a5,22
 8007bb4:	00f52023          	sw	a5,0(a0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/syscalls.c:269
 8007bb8:	fff00513          	li	a0,-1
 8007bbc:	01010113          	addi	sp,sp,16
 8007bc0:	00008067          	ret

08007bc4 <_wait>:
_wait():
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/syscalls.c:276
 8007bc4:	ff010113          	addi	sp,sp,-16
 8007bc8:	00112623          	sw	ra,12(sp)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/syscalls.c:277
 8007bcc:	c44fc0ef          	jal	ra,8004010 <__errno>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/syscalls.c:279
 8007bd0:	00c12083          	lw	ra,12(sp)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/syscalls.c:277
 8007bd4:	00a00793          	li	a5,10
 8007bd8:	00f52023          	sw	a5,0(a0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/syscalls.c:279
 8007bdc:	fff00513          	li	a0,-1
 8007be0:	01010113          	addi	sp,sp,16
 8007be4:	00008067          	ret

08007be8 <_isatty>:
_isatty():
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/syscalls.c:287
 8007be8:	f9010113          	addi	sp,sp,-112
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/syscalls.c:289
 8007bec:	00810593          	addi	a1,sp,8
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/syscalls.c:287
 8007bf0:	06112623          	sw	ra,108(sp)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/syscalls.c:289
 8007bf4:	c49ff0ef          	jal	ra,800783c <_fstat>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/syscalls.c:290
 8007bf8:	fff00793          	li	a5,-1
 8007bfc:	00f50863          	beq	a0,a5,8007c0c <_isatty+0x24>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/syscalls.c:290 (discriminator 1)
 8007c00:	00c12503          	lw	a0,12(sp)
 8007c04:	00d55513          	srli	a0,a0,0xd
 8007c08:	00157513          	andi	a0,a0,1
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/syscalls.c:291
 8007c0c:	06c12083          	lw	ra,108(sp)
 8007c10:	07010113          	addi	sp,sp,112
 8007c14:	00008067          	ret

08007c18 <_gettimeofday>:
_gettimeofday():
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/syscalls.c:297
 8007c18:	ff010113          	addi	sp,sp,-16
 8007c1c:	00112623          	sw	ra,12(sp)
 8007c20:	00812423          	sw	s0,8(sp)
__internal_syscall():
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/machine/syscall.h:63
 8007c24:	00000593          	li	a1,0
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/machine/syscall.h:64
 8007c28:	00000613          	li	a2,0
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/machine/syscall.h:65
 8007c2c:	00000693          	li	a3,0
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/machine/syscall.h:70
 8007c30:	0a900893          	li	a7,169
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/machine/syscall.h:73
 8007c34:	00000073          	ecall
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/machine/syscall.h:76
 8007c38:	00050413          	mv	s0,a0
 8007c3c:	00054c63          	bltz	a0,8007c54 <_gettimeofday+0x3c>
_gettimeofday():
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/syscalls.c:299
 8007c40:	00040513          	mv	a0,s0
 8007c44:	00c12083          	lw	ra,12(sp)
 8007c48:	00812403          	lw	s0,8(sp)
 8007c4c:	01010113          	addi	sp,sp,16
 8007c50:	00008067          	ret
__syscall_error():
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/syscalls.c:78
 8007c54:	40800433          	neg	s0,s0
 8007c58:	bb8fc0ef          	jal	ra,8004010 <__errno>
 8007c5c:	00852023          	sw	s0,0(a0)
__internal_syscall():
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/machine/syscall.h:77
 8007c60:	fff00413          	li	s0,-1
_gettimeofday():
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/syscalls.c:298
 8007c64:	fddff06f          	j	8007c40 <_gettimeofday+0x28>

08007c68 <_times>:
_times():
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/syscalls.c:315
 8007c68:	fe010113          	addi	sp,sp,-32
 8007c6c:	00912a23          	sw	s1,20(sp)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/syscalls.c:318
 8007c70:	85018493          	addi	s1,gp,-1968 # 800a9b8 <t0.2745>
 8007c74:	0004a783          	lw	a5,0(s1)
 8007c78:	0044a683          	lw	a3,4(s1)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/syscalls.c:315
 8007c7c:	00812c23          	sw	s0,24(sp)
 8007c80:	00112e23          	sw	ra,28(sp)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/syscalls.c:318
 8007c84:	00d7e7b3          	or	a5,a5,a3
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/syscalls.c:315
 8007c88:	00050413          	mv	s0,a0
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/syscalls.c:318
 8007c8c:	06078863          	beqz	a5,8007cfc <_times+0x94>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/syscalls.c:322
 8007c90:	00010513          	mv	a0,sp
 8007c94:	00000593          	li	a1,0
 8007c98:	f81ff0ef          	jal	ra,8007c18 <_gettimeofday>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/syscalls.c:324
 8007c9c:	0004a703          	lw	a4,0(s1)
 8007ca0:	00012783          	lw	a5,0(sp)
 8007ca4:	0084a603          	lw	a2,8(s1)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/syscalls.c:326
 8007ca8:	00042623          	sw	zero,12(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/syscalls.c:324
 8007cac:	40e78733          	sub	a4,a5,a4
 8007cb0:	00571793          	slli	a5,a4,0x5
 8007cb4:	40e786b3          	sub	a3,a5,a4
 8007cb8:	00669793          	slli	a5,a3,0x6
 8007cbc:	40d787b3          	sub	a5,a5,a3
 8007cc0:	00379793          	slli	a5,a5,0x3
 8007cc4:	00e787b3          	add	a5,a5,a4
 8007cc8:	00812703          	lw	a4,8(sp)
 8007ccc:	00679793          	slli	a5,a5,0x6
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/syscalls.c:326
 8007cd0:	00042423          	sw	zero,8(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/syscalls.c:324
 8007cd4:	40c70733          	sub	a4,a4,a2
 8007cd8:	00e787b3          	add	a5,a5,a4
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/syscalls.c:325
 8007cdc:	00f42023          	sw	a5,0(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/syscalls.c:326
 8007ce0:	00042223          	sw	zero,4(s0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/syscalls.c:329
 8007ce4:	01c12083          	lw	ra,28(sp)
 8007ce8:	01812403          	lw	s0,24(sp)
 8007cec:	01412483          	lw	s1,20(sp)
 8007cf0:	fff00513          	li	a0,-1
 8007cf4:	02010113          	addi	sp,sp,32
 8007cf8:	00008067          	ret
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/syscalls.c:319
 8007cfc:	00000593          	li	a1,0
 8007d00:	85018513          	addi	a0,gp,-1968 # 800a9b8 <t0.2745>
 8007d04:	f15ff0ef          	jal	ra,8007c18 <_gettimeofday>
 8007d08:	f89ff06f          	j	8007c90 <_times+0x28>

08007d0c <_ftime>:
_ftime():
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/syscalls.c:335
 8007d0c:	00000793          	li	a5,0
 8007d10:	00000813          	li	a6,0
 8007d14:	00051423          	sh	zero,8(a0)
 8007d18:	00f52023          	sw	a5,0(a0)
 8007d1c:	01052223          	sw	a6,4(a0)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/syscalls.c:337
 8007d20:	00000513          	li	a0,0
 8007d24:	00008067          	ret

08007d28 <_utime>:
_utime():
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/syscalls.c:344
 8007d28:	fff00513          	li	a0,-1
 8007d2c:	00008067          	ret

08007d30 <_chown>:
_chown():
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/syscalls.c:351
 8007d30:	fff00513          	li	a0,-1
 8007d34:	00008067          	ret

08007d38 <_chmod>:
_chmod():
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/syscalls.c:358
 8007d38:	fff00513          	li	a0,-1
 8007d3c:	00008067          	ret

08007d40 <_chdir>:
_chdir():
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/syscalls.c:365
 8007d40:	fff00513          	li	a0,-1
 8007d44:	00008067          	ret

08007d48 <_getcwd>:
_getcwd():
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/syscalls.c:372
 8007d48:	00000513          	li	a0,0
 8007d4c:	00008067          	ret

08007d50 <_sysconf>:
_sysconf():
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/syscalls.c:379
 8007d50:	00200793          	li	a5,2
 8007d54:	00f51863          	bne	a0,a5,8007d64 <_sysconf+0x14>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/syscalls.c:382
 8007d58:	000f4537          	lui	a0,0xf4
 8007d5c:	24050513          	addi	a0,a0,576 # f4240 <_start-0x7f0fdc0>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/syscalls.c:386
 8007d60:	00008067          	ret
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/syscalls.c:385
 8007d64:	fff00513          	li	a0,-1
 8007d68:	00008067          	ret

08007d6c <_sbrk>:
_sbrk():
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/syscalls.c:394
 8007d6c:	fe010113          	addi	sp,sp,-32
 8007d70:	01212823          	sw	s2,16(sp)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/syscalls.c:397
 8007d74:	8241a783          	lw	a5,-2012(gp) # 800a98c <heap_end.2778>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/syscalls.c:394
 8007d78:	00912a23          	sw	s1,20(sp)
 8007d7c:	00112e23          	sw	ra,28(sp)
 8007d80:	00812c23          	sw	s0,24(sp)
 8007d84:	00050493          	mv	s1,a0
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/syscalls.c:397
 8007d88:	02079463          	bnez	a5,8007db0 <_sbrk+0x44>
__internal_syscall():
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/machine/syscall.h:62
 8007d8c:	00000513          	li	a0,0
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/machine/syscall.h:63
 8007d90:	00000593          	li	a1,0
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/machine/syscall.h:64
 8007d94:	00000613          	li	a2,0
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/machine/syscall.h:65
 8007d98:	00000693          	li	a3,0
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/machine/syscall.h:70
 8007d9c:	0d600893          	li	a7,214
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/machine/syscall.h:73
 8007da0:	00000073          	ecall
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/machine/syscall.h:76
 8007da4:	00050793          	mv	a5,a0
 8007da8:	06054863          	bltz	a0,8007e18 <_sbrk+0xac>
_sbrk():
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/syscalls.c:402
 8007dac:	82a1a223          	sw	a0,-2012(gp) # 800a98c <heap_end.2778>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/syscalls.c:405
 8007db0:	00f48533          	add	a0,s1,a5
__internal_syscall():
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/machine/syscall.h:63
 8007db4:	00000593          	li	a1,0
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/machine/syscall.h:64
 8007db8:	00000613          	li	a2,0
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/machine/syscall.h:65
 8007dbc:	00000693          	li	a3,0
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/machine/syscall.h:70
 8007dc0:	0d600893          	li	a7,214
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/machine/syscall.h:73
 8007dc4:	00000073          	ecall
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/machine/syscall.h:76
 8007dc8:	00050413          	mv	s0,a0
 8007dcc:	06054463          	bltz	a0,8007e34 <_sbrk+0xc8>
_sbrk():
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/syscalls.c:405
 8007dd0:	8241a783          	lw	a5,-2012(gp) # 800a98c <heap_end.2778>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/syscalls.c:406
 8007dd4:	fff00513          	li	a0,-1
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/syscalls.c:405
 8007dd8:	00f484b3          	add	s1,s1,a5
 8007ddc:	00848e63          	beq	s1,s0,8007df8 <_sbrk+0x8c>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/syscalls.c:410
 8007de0:	01c12083          	lw	ra,28(sp)
 8007de4:	01812403          	lw	s0,24(sp)
 8007de8:	01412483          	lw	s1,20(sp)
 8007dec:	01012903          	lw	s2,16(sp)
 8007df0:	02010113          	addi	sp,sp,32
 8007df4:	00008067          	ret
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/syscalls.c:408
 8007df8:	8281a223          	sw	s0,-2012(gp) # 800a98c <heap_end.2778>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/syscalls.c:410
 8007dfc:	01c12083          	lw	ra,28(sp)
 8007e00:	01812403          	lw	s0,24(sp)
 8007e04:	01412483          	lw	s1,20(sp)
 8007e08:	01012903          	lw	s2,16(sp)
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/syscalls.c:409
 8007e0c:	00078513          	mv	a0,a5
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/syscalls.c:410
 8007e10:	02010113          	addi	sp,sp,32
 8007e14:	00008067          	ret
__syscall_error():
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/syscalls.c:78
 8007e18:	00a12623          	sw	a0,12(sp)
 8007e1c:	9f4fc0ef          	jal	ra,8004010 <__errno>
 8007e20:	00c12783          	lw	a5,12(sp)
 8007e24:	40f007b3          	neg	a5,a5
 8007e28:	00f52023          	sw	a5,0(a0)
_sbrk():
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/syscalls.c:401
 8007e2c:	fff00513          	li	a0,-1
 8007e30:	fb1ff06f          	j	8007de0 <_sbrk+0x74>
__syscall_error():
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/syscalls.c:78
 8007e34:	40800433          	neg	s0,s0
 8007e38:	9d8fc0ef          	jal	ra,8004010 <__errno>
 8007e3c:	00852023          	sw	s0,0(a0)
 8007e40:	fff00413          	li	s0,-1
 8007e44:	f8dff06f          	j	8007dd0 <_sbrk+0x64>

08007e48 <_exit>:
__internal_syscall():
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/machine/syscall.h:63
 8007e48:	00000593          	li	a1,0
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/machine/syscall.h:64
 8007e4c:	00000613          	li	a2,0
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/machine/syscall.h:65
 8007e50:	00000693          	li	a3,0
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/machine/syscall.h:70
 8007e54:	05d00893          	li	a7,93
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/machine/syscall.h:73
 8007e58:	00000073          	ecall
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/machine/syscall.h:76
 8007e5c:	00054463          	bltz	a0,8007e64 <_exit+0x1c>
_exit():
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/syscalls.c:418
 8007e60:	0000006f          	j	8007e60 <_exit+0x18>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/syscalls.c:416
 8007e64:	ff010113          	addi	sp,sp,-16
 8007e68:	00812423          	sw	s0,8(sp)
 8007e6c:	00050413          	mv	s0,a0
 8007e70:	00112623          	sw	ra,12(sp)
__syscall_error():
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/syscalls.c:78
 8007e74:	40800433          	neg	s0,s0
 8007e78:	998fc0ef          	jal	ra,8004010 <__errno>
 8007e7c:	00852023          	sw	s0,0(a0)
_exit():
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/libgloss/riscv/../../../../libgloss/riscv/syscalls.c:418 (discriminator 1)
 8007e80:	0000006f          	j	8007e80 <_exit+0x38>

08007e84 <__udivdi3>:
__udivdi3():
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/libgcc2.c:1319
 8007e84:	fd010113          	addi	sp,sp,-48
 8007e88:	02812423          	sw	s0,40(sp)
 8007e8c:	01412c23          	sw	s4,24(sp)
 8007e90:	02112623          	sw	ra,44(sp)
 8007e94:	02912223          	sw	s1,36(sp)
 8007e98:	03212023          	sw	s2,32(sp)
 8007e9c:	01312e23          	sw	s3,28(sp)
 8007ea0:	01512a23          	sw	s5,20(sp)
 8007ea4:	01612823          	sw	s6,16(sp)
 8007ea8:	01712623          	sw	s7,12(sp)
 8007eac:	01812423          	sw	s8,8(sp)
 8007eb0:	01912223          	sw	s9,4(sp)
 8007eb4:	00050a13          	mv	s4,a0
 8007eb8:	00058413          	mv	s0,a1
__udivmoddi4():
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/libgcc2.c:1064
 8007ebc:	22069e63          	bnez	a3,80080f8 <__udivdi3+0x274>
 8007ec0:	00068993          	mv	s3,a3
 8007ec4:	00060493          	mv	s1,a2
 8007ec8:	00050913          	mv	s2,a0
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/libgcc2.c:1066
 8007ecc:	10c5fe63          	bleu	a2,a1,8007fe8 <__udivdi3+0x164>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/libgcc2.c:1070
 8007ed0:	000107b7          	lui	a5,0x10
 8007ed4:	00058a93          	mv	s5,a1
 8007ed8:	2cf66e63          	bltu	a2,a5,80081b4 <__udivdi3+0x330>
 8007edc:	010007b7          	lui	a5,0x1000
 8007ee0:	56f66a63          	bltu	a2,a5,8008454 <__udivdi3+0x5d0>
 8007ee4:	01865793          	srli	a5,a2,0x18
 8007ee8:	01800993          	li	s3,24
 8007eec:	08009737          	lui	a4,0x8009
 8007ef0:	f1070713          	addi	a4,a4,-240 # 8008f10 <__clz_tab>
 8007ef4:	00e787b3          	add	a5,a5,a4
 8007ef8:	0007c783          	lbu	a5,0(a5) # 1000000 <_start-0x7004000>
 8007efc:	013789b3          	add	s3,a5,s3
 8007f00:	02000793          	li	a5,32
 8007f04:	413787b3          	sub	a5,a5,s3
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/libgcc2.c:1072
 8007f08:	00078c63          	beqz	a5,8007f20 <__udivdi3+0x9c>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/libgcc2.c:1078
 8007f0c:	00f41433          	sll	s0,s0,a5
 8007f10:	013a59b3          	srl	s3,s4,s3
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/libgcc2.c:1077
 8007f14:	00f614b3          	sll	s1,a2,a5
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/libgcc2.c:1078
 8007f18:	0089eab3          	or	s5,s3,s0
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/libgcc2.c:1079
 8007f1c:	00fa1933          	sll	s2,s4,a5
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/libgcc2.c:1082
 8007f20:	0104db13          	srli	s6,s1,0x10
 8007f24:	000b0593          	mv	a1,s6
 8007f28:	000a8513          	mv	a0,s5
 8007f2c:	3cd000ef          	jal	ra,8008af8 <__umodsi3>
 8007f30:	00050a13          	mv	s4,a0
 8007f34:	000b0593          	mv	a1,s6
 8007f38:	000a8513          	mv	a0,s5
 8007f3c:	01049a93          	slli	s5,s1,0x10
 8007f40:	371000ef          	jal	ra,8008ab0 <__udivsi3>
 8007f44:	010ada93          	srli	s5,s5,0x10
 8007f48:	00050593          	mv	a1,a0
 8007f4c:	00050413          	mv	s0,a0
 8007f50:	000a8513          	mv	a0,s5
 8007f54:	331000ef          	jal	ra,8008a84 <__mulsi3>
 8007f58:	010a1a13          	slli	s4,s4,0x10
 8007f5c:	01095793          	srli	a5,s2,0x10
 8007f60:	00fa67b3          	or	a5,s4,a5
 8007f64:	00a7fc63          	bleu	a0,a5,8007f7c <__udivdi3+0xf8>
 8007f68:	009787b3          	add	a5,a5,s1
 8007f6c:	fff40713          	addi	a4,s0,-1
 8007f70:	0097e463          	bltu	a5,s1,8007f78 <__udivdi3+0xf4>
 8007f74:	52a7e863          	bltu	a5,a0,80084a4 <__udivdi3+0x620>
 8007f78:	00070413          	mv	s0,a4
 8007f7c:	40a789b3          	sub	s3,a5,a0
 8007f80:	000b0593          	mv	a1,s6
 8007f84:	00098513          	mv	a0,s3
 8007f88:	371000ef          	jal	ra,8008af8 <__umodsi3>
 8007f8c:	00050a13          	mv	s4,a0
 8007f90:	000b0593          	mv	a1,s6
 8007f94:	00098513          	mv	a0,s3
 8007f98:	319000ef          	jal	ra,8008ab0 <__udivsi3>
 8007f9c:	01091913          	slli	s2,s2,0x10
 8007fa0:	00050593          	mv	a1,a0
 8007fa4:	00050993          	mv	s3,a0
 8007fa8:	010a1a13          	slli	s4,s4,0x10
 8007fac:	000a8513          	mv	a0,s5
 8007fb0:	01095913          	srli	s2,s2,0x10
 8007fb4:	2d1000ef          	jal	ra,8008a84 <__mulsi3>
 8007fb8:	012a6933          	or	s2,s4,s2
 8007fbc:	00a97e63          	bleu	a0,s2,8007fd8 <__udivdi3+0x154>
 8007fc0:	01248933          	add	s2,s1,s2
 8007fc4:	fff98793          	addi	a5,s3,-1
 8007fc8:	00996663          	bltu	s2,s1,8007fd4 <__udivdi3+0x150>
 8007fcc:	ffe98993          	addi	s3,s3,-2
 8007fd0:	00a96463          	bltu	s2,a0,8007fd8 <__udivdi3+0x154>
 8007fd4:	00078993          	mv	s3,a5
 8007fd8:	01041513          	slli	a0,s0,0x10
 8007fdc:	01356533          	or	a0,a0,s3
 8007fe0:	00000c13          	li	s8,0
 8007fe4:	16c0006f          	j	8008150 <__udivdi3+0x2cc>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/libgcc2.c:1091
 8007fe8:	00061a63          	bnez	a2,8007ffc <__udivdi3+0x178>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/libgcc2.c:1092
 8007fec:	00000593          	li	a1,0
 8007ff0:	00100513          	li	a0,1
 8007ff4:	2bd000ef          	jal	ra,8008ab0 <__udivsi3>
 8007ff8:	00050493          	mv	s1,a0
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/libgcc2.c:1094
 8007ffc:	000107b7          	lui	a5,0x10
 8008000:	18f4ee63          	bltu	s1,a5,800819c <__udivdi3+0x318>
 8008004:	010007b7          	lui	a5,0x1000
 8008008:	44f4ec63          	bltu	s1,a5,8008460 <__udivdi3+0x5dc>
 800800c:	0184d793          	srli	a5,s1,0x18
 8008010:	01800993          	li	s3,24
 8008014:	08009737          	lui	a4,0x8009
 8008018:	f1070713          	addi	a4,a4,-240 # 8008f10 <__clz_tab>
 800801c:	00e787b3          	add	a5,a5,a4
 8008020:	0007c783          	lbu	a5,0(a5) # 1000000 <_start-0x7004000>
 8008024:	013789b3          	add	s3,a5,s3
 8008028:	02000793          	li	a5,32
 800802c:	413787b3          	sub	a5,a5,s3
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/libgcc2.c:1096
 8008030:	18079e63          	bnez	a5,80081cc <__udivdi3+0x348>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/libgcc2.c:1105
 8008034:	01049b93          	slli	s7,s1,0x10
 8008038:	40940433          	sub	s0,s0,s1
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/libgcc2.c:1106
 800803c:	0104db13          	srli	s6,s1,0x10
 8008040:	010bdb93          	srli	s7,s7,0x10
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/libgcc2.c:1105
 8008044:	00100c13          	li	s8,1
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/libgcc2.c:1124
 8008048:	000b0593          	mv	a1,s6
 800804c:	00040513          	mv	a0,s0
 8008050:	2a9000ef          	jal	ra,8008af8 <__umodsi3>
 8008054:	00050a13          	mv	s4,a0
 8008058:	000b0593          	mv	a1,s6
 800805c:	00040513          	mv	a0,s0
 8008060:	251000ef          	jal	ra,8008ab0 <__udivsi3>
 8008064:	000b8593          	mv	a1,s7
 8008068:	00050413          	mv	s0,a0
 800806c:	219000ef          	jal	ra,8008a84 <__mulsi3>
 8008070:	010a1a13          	slli	s4,s4,0x10
 8008074:	01095793          	srli	a5,s2,0x10
 8008078:	00fa67b3          	or	a5,s4,a5
 800807c:	00a7fc63          	bleu	a0,a5,8008094 <__udivdi3+0x210>
 8008080:	009787b3          	add	a5,a5,s1
 8008084:	fff40713          	addi	a4,s0,-1
 8008088:	0097e463          	bltu	a5,s1,8008090 <__udivdi3+0x20c>
 800808c:	42a7e263          	bltu	a5,a0,80084b0 <__udivdi3+0x62c>
 8008090:	00070413          	mv	s0,a4
 8008094:	40a789b3          	sub	s3,a5,a0
 8008098:	000b0593          	mv	a1,s6
 800809c:	00098513          	mv	a0,s3
 80080a0:	259000ef          	jal	ra,8008af8 <__umodsi3>
 80080a4:	00050a13          	mv	s4,a0
 80080a8:	000b0593          	mv	a1,s6
 80080ac:	00098513          	mv	a0,s3
 80080b0:	201000ef          	jal	ra,8008ab0 <__udivsi3>
 80080b4:	01091913          	slli	s2,s2,0x10
 80080b8:	000b8593          	mv	a1,s7
 80080bc:	010a1a13          	slli	s4,s4,0x10
 80080c0:	01095913          	srli	s2,s2,0x10
 80080c4:	00050993          	mv	s3,a0
 80080c8:	012a6933          	or	s2,s4,s2
 80080cc:	1b9000ef          	jal	ra,8008a84 <__mulsi3>
 80080d0:	00a97e63          	bleu	a0,s2,80080ec <__udivdi3+0x268>
 80080d4:	01248933          	add	s2,s1,s2
 80080d8:	fff98793          	addi	a5,s3,-1
 80080dc:	00996663          	bltu	s2,s1,80080e8 <__udivdi3+0x264>
 80080e0:	ffe98993          	addi	s3,s3,-2
 80080e4:	00a96463          	bltu	s2,a0,80080ec <__udivdi3+0x268>
 80080e8:	00078993          	mv	s3,a5
 80080ec:	01041513          	slli	a0,s0,0x10
 80080f0:	01356533          	or	a0,a0,s3
 80080f4:	05c0006f          	j	8008150 <__udivdi3+0x2cc>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/libgcc2.c:1140
 80080f8:	04d5e863          	bltu	a1,a3,8008148 <__udivdi3+0x2c4>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/libgcc2.c:1159
 80080fc:	000107b7          	lui	a5,0x10
 8008100:	08f6e463          	bltu	a3,a5,8008188 <__udivdi3+0x304>
 8008104:	010007b7          	lui	a5,0x1000
 8008108:	34f6e063          	bltu	a3,a5,8008448 <__udivdi3+0x5c4>
 800810c:	0186d593          	srli	a1,a3,0x18
 8008110:	01800513          	li	a0,24
 8008114:	08009737          	lui	a4,0x8009
 8008118:	f1070713          	addi	a4,a4,-240 # 8008f10 <__clz_tab>
 800811c:	00e58733          	add	a4,a1,a4
 8008120:	00074783          	lbu	a5,0(a4)
 8008124:	02000b13          	li	s6,32
 8008128:	00a787b3          	add	a5,a5,a0
 800812c:	40fb0b33          	sub	s6,s6,a5
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/libgcc2.c:1160
 8008130:	180b1063          	bnez	s6,80082b0 <__udivdi3+0x42c>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/libgcc2.c:1170
 8008134:	3286ec63          	bltu	a3,s0,800846c <__udivdi3+0x5e8>
 8008138:	00ca3633          	sltu	a2,s4,a2
 800813c:	00164513          	xori	a0,a2,1
 8008140:	00000c13          	li	s8,0
 8008144:	00c0006f          	j	8008150 <__udivdi3+0x2cc>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/libgcc2.c:1140
 8008148:	00000c13          	li	s8,0
 800814c:	00000513          	li	a0,0
__udivdi3():
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/libgcc2.c:1321
 8008150:	000c0593          	mv	a1,s8
 8008154:	02c12083          	lw	ra,44(sp)
 8008158:	02812403          	lw	s0,40(sp)
 800815c:	02412483          	lw	s1,36(sp)
 8008160:	02012903          	lw	s2,32(sp)
 8008164:	01c12983          	lw	s3,28(sp)
 8008168:	01812a03          	lw	s4,24(sp)
 800816c:	01412a83          	lw	s5,20(sp)
 8008170:	01012b03          	lw	s6,16(sp)
 8008174:	00c12b83          	lw	s7,12(sp)
 8008178:	00812c03          	lw	s8,8(sp)
 800817c:	00412c83          	lw	s9,4(sp)
 8008180:	03010113          	addi	sp,sp,48
 8008184:	00008067          	ret
__udivmoddi4():
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/libgcc2.c:1159
 8008188:	0ff00793          	li	a5,255
 800818c:	2ed7f663          	bleu	a3,a5,8008478 <__udivdi3+0x5f4>
 8008190:	0086d593          	srli	a1,a3,0x8
 8008194:	00800513          	li	a0,8
 8008198:	f7dff06f          	j	8008114 <__udivdi3+0x290>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/libgcc2.c:1094
 800819c:	0ff00713          	li	a4,255
 80081a0:	00048793          	mv	a5,s1
 80081a4:	e69778e3          	bleu	s1,a4,8008014 <__udivdi3+0x190>
 80081a8:	0084d793          	srli	a5,s1,0x8
 80081ac:	00800993          	li	s3,8
 80081b0:	e65ff06f          	j	8008014 <__udivdi3+0x190>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/libgcc2.c:1070
 80081b4:	0ff00713          	li	a4,255
 80081b8:	00060793          	mv	a5,a2
 80081bc:	d2c778e3          	bleu	a2,a4,8007eec <__udivdi3+0x68>
 80081c0:	00865793          	srli	a5,a2,0x8
 80081c4:	00800993          	li	s3,8
 80081c8:	d25ff06f          	j	8007eec <__udivdi3+0x68>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/libgcc2.c:1114
 80081cc:	00f494b3          	sll	s1,s1,a5
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/libgcc2.c:1115
 80081d0:	01345c33          	srl	s8,s0,s3
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/libgcc2.c:1119
 80081d4:	0104db13          	srli	s6,s1,0x10
 80081d8:	000b0593          	mv	a1,s6
 80081dc:	000c0513          	mv	a0,s8
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/libgcc2.c:1116
 80081e0:	00f41433          	sll	s0,s0,a5
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/libgcc2.c:1117
 80081e4:	00fa1933          	sll	s2,s4,a5
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/libgcc2.c:1116
 80081e8:	013a59b3          	srl	s3,s4,s3
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/libgcc2.c:1119
 80081ec:	10d000ef          	jal	ra,8008af8 <__umodsi3>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/libgcc2.c:1116
 80081f0:	0089eab3          	or	s5,s3,s0
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/libgcc2.c:1119
 80081f4:	000b0593          	mv	a1,s6
 80081f8:	00050993          	mv	s3,a0
 80081fc:	01049b93          	slli	s7,s1,0x10
 8008200:	000c0513          	mv	a0,s8
 8008204:	0ad000ef          	jal	ra,8008ab0 <__udivsi3>
 8008208:	010bdb93          	srli	s7,s7,0x10
 800820c:	00050593          	mv	a1,a0
 8008210:	00050a13          	mv	s4,a0
 8008214:	000b8513          	mv	a0,s7
 8008218:	06d000ef          	jal	ra,8008a84 <__mulsi3>
 800821c:	01099993          	slli	s3,s3,0x10
 8008220:	010ad793          	srli	a5,s5,0x10
 8008224:	00f9e7b3          	or	a5,s3,a5
 8008228:	00a7fe63          	bleu	a0,a5,8008244 <__udivdi3+0x3c0>
 800822c:	009787b3          	add	a5,a5,s1
 8008230:	fffa0713          	addi	a4,s4,-1
 8008234:	2697e463          	bltu	a5,s1,800849c <__udivdi3+0x618>
 8008238:	26a7f263          	bleu	a0,a5,800849c <__udivdi3+0x618>
 800823c:	ffea0a13          	addi	s4,s4,-2
 8008240:	009787b3          	add	a5,a5,s1
 8008244:	40a78433          	sub	s0,a5,a0
 8008248:	000b0593          	mv	a1,s6
 800824c:	00040513          	mv	a0,s0
 8008250:	0a9000ef          	jal	ra,8008af8 <__umodsi3>
 8008254:	00050993          	mv	s3,a0
 8008258:	000b0593          	mv	a1,s6
 800825c:	00040513          	mv	a0,s0
 8008260:	051000ef          	jal	ra,8008ab0 <__udivsi3>
 8008264:	010a9a93          	slli	s5,s5,0x10
 8008268:	00050593          	mv	a1,a0
 800826c:	00050c13          	mv	s8,a0
 8008270:	01099413          	slli	s0,s3,0x10
 8008274:	000b8513          	mv	a0,s7
 8008278:	010ada93          	srli	s5,s5,0x10
 800827c:	009000ef          	jal	ra,8008a84 <__mulsi3>
 8008280:	01546433          	or	s0,s0,s5
 8008284:	00a47e63          	bleu	a0,s0,80082a0 <__udivdi3+0x41c>
 8008288:	00940433          	add	s0,s0,s1
 800828c:	fffc0793          	addi	a5,s8,-1
 8008290:	1e946e63          	bltu	s0,s1,800848c <__udivdi3+0x608>
 8008294:	1ea47c63          	bleu	a0,s0,800848c <__udivdi3+0x608>
 8008298:	ffec0c13          	addi	s8,s8,-2
 800829c:	00940433          	add	s0,s0,s1
 80082a0:	010a1a13          	slli	s4,s4,0x10
 80082a4:	40a40433          	sub	s0,s0,a0
 80082a8:	018a6c33          	or	s8,s4,s8
 80082ac:	d9dff06f          	j	8008048 <__udivdi3+0x1c4>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/libgcc2.c:1194
 80082b0:	00f65bb3          	srl	s7,a2,a5
 80082b4:	016696b3          	sll	a3,a3,s6
 80082b8:	00dbebb3          	or	s7,s7,a3
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/libgcc2.c:1196
 80082bc:	00f454b3          	srl	s1,s0,a5
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/libgcc2.c:1200
 80082c0:	010bd993          	srli	s3,s7,0x10
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/libgcc2.c:1197
 80082c4:	00fa57b3          	srl	a5,s4,a5
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/libgcc2.c:1200
 80082c8:	00098593          	mv	a1,s3
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/libgcc2.c:1197
 80082cc:	01641433          	sll	s0,s0,s6
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/libgcc2.c:1200
 80082d0:	00048513          	mv	a0,s1
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/libgcc2.c:1197
 80082d4:	0087e433          	or	s0,a5,s0
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/libgcc2.c:1195
 80082d8:	01661ab3          	sll	s5,a2,s6
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/libgcc2.c:1200
 80082dc:	01d000ef          	jal	ra,8008af8 <__umodsi3>
 80082e0:	00050913          	mv	s2,a0
 80082e4:	00098593          	mv	a1,s3
 80082e8:	010b9c13          	slli	s8,s7,0x10
 80082ec:	00048513          	mv	a0,s1
 80082f0:	7c0000ef          	jal	ra,8008ab0 <__udivsi3>
 80082f4:	010c5c13          	srli	s8,s8,0x10
 80082f8:	00050593          	mv	a1,a0
 80082fc:	00050c93          	mv	s9,a0
 8008300:	000c0513          	mv	a0,s8
 8008304:	780000ef          	jal	ra,8008a84 <__mulsi3>
 8008308:	01091913          	slli	s2,s2,0x10
 800830c:	01045793          	srli	a5,s0,0x10
 8008310:	00f967b3          	or	a5,s2,a5
 8008314:	00a7fe63          	bleu	a0,a5,8008330 <__udivdi3+0x4ac>
 8008318:	017787b3          	add	a5,a5,s7
 800831c:	fffc8713          	addi	a4,s9,-1
 8008320:	1777ea63          	bltu	a5,s7,8008494 <__udivdi3+0x610>
 8008324:	16a7f863          	bleu	a0,a5,8008494 <__udivdi3+0x610>
 8008328:	ffec8c93          	addi	s9,s9,-2
 800832c:	017787b3          	add	a5,a5,s7
 8008330:	40a784b3          	sub	s1,a5,a0
 8008334:	00098593          	mv	a1,s3
 8008338:	00048513          	mv	a0,s1
 800833c:	7bc000ef          	jal	ra,8008af8 <__umodsi3>
 8008340:	00050913          	mv	s2,a0
 8008344:	00098593          	mv	a1,s3
 8008348:	00048513          	mv	a0,s1
 800834c:	764000ef          	jal	ra,8008ab0 <__udivsi3>
 8008350:	01041413          	slli	s0,s0,0x10
 8008354:	00050593          	mv	a1,a0
 8008358:	00050493          	mv	s1,a0
 800835c:	01091913          	slli	s2,s2,0x10
 8008360:	000c0513          	mv	a0,s8
 8008364:	01045413          	srli	s0,s0,0x10
 8008368:	71c000ef          	jal	ra,8008a84 <__mulsi3>
 800836c:	00896433          	or	s0,s2,s0
 8008370:	00a47e63          	bleu	a0,s0,800838c <__udivdi3+0x508>
 8008374:	01740433          	add	s0,s0,s7
 8008378:	fff48793          	addi	a5,s1,-1
 800837c:	11746463          	bltu	s0,s7,8008484 <__udivdi3+0x600>
 8008380:	10a47263          	bleu	a0,s0,8008484 <__udivdi3+0x600>
 8008384:	ffe48493          	addi	s1,s1,-2
 8008388:	01740433          	add	s0,s0,s7
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/libgcc2.c:1201
 800838c:	00010e37          	lui	t3,0x10
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/libgcc2.c:1200
 8008390:	010c9c93          	slli	s9,s9,0x10
 8008394:	009cecb3          	or	s9,s9,s1
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/libgcc2.c:1201
 8008398:	fffe0713          	addi	a4,t3,-1 # ffff <_start-0x7ff4001>
 800839c:	00ecf833          	and	a6,s9,a4
 80083a0:	00eaf733          	and	a4,s5,a4
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/libgcc2.c:1200
 80083a4:	40a40433          	sub	s0,s0,a0
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/libgcc2.c:1201
 80083a8:	010cd893          	srli	a7,s9,0x10
 80083ac:	010ada93          	srli	s5,s5,0x10
 80083b0:	00080513          	mv	a0,a6
 80083b4:	00070593          	mv	a1,a4
 80083b8:	6cc000ef          	jal	ra,8008a84 <__mulsi3>
 80083bc:	00050313          	mv	t1,a0
 80083c0:	000a8593          	mv	a1,s5
 80083c4:	00080513          	mv	a0,a6
 80083c8:	6bc000ef          	jal	ra,8008a84 <__mulsi3>
 80083cc:	00050813          	mv	a6,a0
 80083d0:	00070593          	mv	a1,a4
 80083d4:	00088513          	mv	a0,a7
 80083d8:	6ac000ef          	jal	ra,8008a84 <__mulsi3>
 80083dc:	00050713          	mv	a4,a0
 80083e0:	000a8593          	mv	a1,s5
 80083e4:	00088513          	mv	a0,a7
 80083e8:	69c000ef          	jal	ra,8008a84 <__mulsi3>
 80083ec:	01035793          	srli	a5,t1,0x10
 80083f0:	00e80833          	add	a6,a6,a4
 80083f4:	010787b3          	add	a5,a5,a6
 80083f8:	00e7f463          	bleu	a4,a5,8008400 <__udivdi3+0x57c>
 80083fc:	01c50533          	add	a0,a0,t3
 8008400:	0107d713          	srli	a4,a5,0x10
 8008404:	00a70533          	add	a0,a4,a0
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/libgcc2.c:1203
 8008408:	02a46a63          	bltu	s0,a0,800843c <__udivdi3+0x5b8>
 800840c:	00a40863          	beq	s0,a0,800841c <__udivdi3+0x598>
 8008410:	000c8513          	mv	a0,s9
 8008414:	00000c13          	li	s8,0
 8008418:	d39ff06f          	j	8008150 <__udivdi3+0x2cc>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/libgcc2.c:1201
 800841c:	00010737          	lui	a4,0x10
 8008420:	fff70713          	addi	a4,a4,-1 # ffff <_start-0x7ff4001>
 8008424:	00e7f7b3          	and	a5,a5,a4
 8008428:	01079793          	slli	a5,a5,0x10
 800842c:	00e37333          	and	t1,t1,a4
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/libgcc2.c:1198
 8008430:	016a1633          	sll	a2,s4,s6
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/libgcc2.c:1201
 8008434:	006787b3          	add	a5,a5,t1
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/libgcc2.c:1203
 8008438:	fcf67ce3          	bleu	a5,a2,8008410 <__udivdi3+0x58c>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/libgcc2.c:1205
 800843c:	fffc8513          	addi	a0,s9,-1
 8008440:	00000c13          	li	s8,0
 8008444:	d0dff06f          	j	8008150 <__udivdi3+0x2cc>
 8008448:	0106d593          	srli	a1,a3,0x10
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/libgcc2.c:1159
 800844c:	01000513          	li	a0,16
 8008450:	cc5ff06f          	j	8008114 <__udivdi3+0x290>
 8008454:	01065793          	srli	a5,a2,0x10
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/libgcc2.c:1070
 8008458:	01000993          	li	s3,16
 800845c:	a91ff06f          	j	8007eec <__udivdi3+0x68>
 8008460:	0104d793          	srli	a5,s1,0x10
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/libgcc2.c:1094
 8008464:	01000993          	li	s3,16
 8008468:	badff06f          	j	8008014 <__udivdi3+0x190>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/libgcc2.c:1170
 800846c:	00000c13          	li	s8,0
 8008470:	00100513          	li	a0,1
 8008474:	cddff06f          	j	8008150 <__udivdi3+0x2cc>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/libgcc2.c:1159
 8008478:	00068593          	mv	a1,a3
 800847c:	00000513          	li	a0,0
 8008480:	c95ff06f          	j	8008114 <__udivdi3+0x290>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/libgcc2.c:1200
 8008484:	00078493          	mv	s1,a5
 8008488:	f05ff06f          	j	800838c <__udivdi3+0x508>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/libgcc2.c:1119
 800848c:	00078c13          	mv	s8,a5
 8008490:	e11ff06f          	j	80082a0 <__udivdi3+0x41c>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/libgcc2.c:1200
 8008494:	00070c93          	mv	s9,a4
 8008498:	e99ff06f          	j	8008330 <__udivdi3+0x4ac>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/libgcc2.c:1119
 800849c:	00070a13          	mv	s4,a4
 80084a0:	da5ff06f          	j	8008244 <__udivdi3+0x3c0>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/libgcc2.c:1082
 80084a4:	ffe40413          	addi	s0,s0,-2
 80084a8:	009787b3          	add	a5,a5,s1
 80084ac:	ad1ff06f          	j	8007f7c <__udivdi3+0xf8>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/libgcc2.c:1124
 80084b0:	ffe40413          	addi	s0,s0,-2
 80084b4:	009787b3          	add	a5,a5,s1
 80084b8:	bddff06f          	j	8008094 <__udivdi3+0x210>

080084bc <__umoddi3>:
__umoddi3():
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/libgcc2.c:1307
 80084bc:	fd010113          	addi	sp,sp,-48
 80084c0:	02812423          	sw	s0,40(sp)
 80084c4:	02912223          	sw	s1,36(sp)
 80084c8:	02112623          	sw	ra,44(sp)
 80084cc:	03212023          	sw	s2,32(sp)
 80084d0:	01312e23          	sw	s3,28(sp)
 80084d4:	01412c23          	sw	s4,24(sp)
 80084d8:	01512a23          	sw	s5,20(sp)
 80084dc:	01612823          	sw	s6,16(sp)
 80084e0:	01712623          	sw	s7,12(sp)
 80084e4:	01812423          	sw	s8,8(sp)
 80084e8:	01912223          	sw	s9,4(sp)
 80084ec:	01a12023          	sw	s10,0(sp)
 80084f0:	00058493          	mv	s1,a1
 80084f4:	00050413          	mv	s0,a0
__udivmoddi4():
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/libgcc2.c:1064
 80084f8:	22069663          	bnez	a3,8008724 <__umoddi3+0x268>
 80084fc:	00068913          	mv	s2,a3
 8008500:	00060b13          	mv	s6,a2
 8008504:	00050993          	mv	s3,a0
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/libgcc2.c:1066
 8008508:	12c5fe63          	bleu	a2,a1,8008644 <__umoddi3+0x188>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/libgcc2.c:1070
 800850c:	000107b7          	lui	a5,0x10
 8008510:	00058a93          	mv	s5,a1
 8008514:	28f67a63          	bleu	a5,a2,80087a8 <__umoddi3+0x2ec>
 8008518:	0ff00713          	li	a4,255
 800851c:	00060793          	mv	a5,a2
 8008520:	00c77663          	bleu	a2,a4,800852c <__umoddi3+0x70>
 8008524:	00865793          	srli	a5,a2,0x8
 8008528:	00800913          	li	s2,8
 800852c:	08009737          	lui	a4,0x8009
 8008530:	f1070713          	addi	a4,a4,-240 # 8008f10 <__clz_tab>
 8008534:	00e787b3          	add	a5,a5,a4
 8008538:	0007c783          	lbu	a5,0(a5) # 10000 <_start-0x7ff4000>
 800853c:	02000513          	li	a0,32
 8008540:	012787b3          	add	a5,a5,s2
 8008544:	40f50933          	sub	s2,a0,a5
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/libgcc2.c:1072
 8008548:	00090c63          	beqz	s2,8008560 <__umoddi3+0xa4>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/libgcc2.c:1078
 800854c:	012494b3          	sll	s1,s1,s2
 8008550:	00f45ab3          	srl	s5,s0,a5
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/libgcc2.c:1077
 8008554:	01261b33          	sll	s6,a2,s2
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/libgcc2.c:1078
 8008558:	009aeab3          	or	s5,s5,s1
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/libgcc2.c:1079
 800855c:	012419b3          	sll	s3,s0,s2
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/libgcc2.c:1082
 8008560:	010b5b93          	srli	s7,s6,0x10
 8008564:	000b8593          	mv	a1,s7
 8008568:	000a8513          	mv	a0,s5
 800856c:	58c000ef          	jal	ra,8008af8 <__umodsi3>
 8008570:	00050a13          	mv	s4,a0
 8008574:	000b8593          	mv	a1,s7
 8008578:	000a8513          	mv	a0,s5
 800857c:	010b1a93          	slli	s5,s6,0x10
 8008580:	530000ef          	jal	ra,8008ab0 <__udivsi3>
 8008584:	010ada93          	srli	s5,s5,0x10
 8008588:	00050593          	mv	a1,a0
 800858c:	000a8513          	mv	a0,s5
 8008590:	4f4000ef          	jal	ra,8008a84 <__mulsi3>
 8008594:	010a1a13          	slli	s4,s4,0x10
 8008598:	0109d793          	srli	a5,s3,0x10
 800859c:	00fa67b3          	or	a5,s4,a5
 80085a0:	00a7f863          	bleu	a0,a5,80085b0 <__umoddi3+0xf4>
 80085a4:	016787b3          	add	a5,a5,s6
 80085a8:	0167e463          	bltu	a5,s6,80085b0 <__umoddi3+0xf4>
 80085ac:	4ca7e863          	bltu	a5,a0,8008a7c <__umoddi3+0x5c0>
 80085b0:	40a78433          	sub	s0,a5,a0
 80085b4:	000b8593          	mv	a1,s7
 80085b8:	00040513          	mv	a0,s0
 80085bc:	53c000ef          	jal	ra,8008af8 <__umodsi3>
 80085c0:	00050493          	mv	s1,a0
 80085c4:	000b8593          	mv	a1,s7
 80085c8:	00040513          	mv	a0,s0
 80085cc:	4e4000ef          	jal	ra,8008ab0 <__udivsi3>
 80085d0:	00050593          	mv	a1,a0
 80085d4:	000a8513          	mv	a0,s5
 80085d8:	4ac000ef          	jal	ra,8008a84 <__mulsi3>
 80085dc:	01099793          	slli	a5,s3,0x10
 80085e0:	01049493          	slli	s1,s1,0x10
 80085e4:	0107d793          	srli	a5,a5,0x10
 80085e8:	00f4e7b3          	or	a5,s1,a5
 80085ec:	00a7fa63          	bleu	a0,a5,8008600 <__umoddi3+0x144>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/libgcc2.c:1124
 80085f0:	016787b3          	add	a5,a5,s6
 80085f4:	0167e663          	bltu	a5,s6,8008600 <__umoddi3+0x144>
 80085f8:	00a7f463          	bleu	a0,a5,8008600 <__umoddi3+0x144>
 80085fc:	016787b3          	add	a5,a5,s6
 8008600:	40a78533          	sub	a0,a5,a0
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/libgcc2.c:1131
 8008604:	01255533          	srl	a0,a0,s2
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/libgcc2.c:1133
 8008608:	00000593          	li	a1,0
__umoddi3():
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/libgcc2.c:1313
 800860c:	02c12083          	lw	ra,44(sp)
 8008610:	02812403          	lw	s0,40(sp)
 8008614:	02412483          	lw	s1,36(sp)
 8008618:	02012903          	lw	s2,32(sp)
 800861c:	01c12983          	lw	s3,28(sp)
 8008620:	01812a03          	lw	s4,24(sp)
 8008624:	01412a83          	lw	s5,20(sp)
 8008628:	01012b03          	lw	s6,16(sp)
 800862c:	00c12b83          	lw	s7,12(sp)
 8008630:	00812c03          	lw	s8,8(sp)
 8008634:	00412c83          	lw	s9,4(sp)
 8008638:	00012d03          	lw	s10,0(sp)
 800863c:	03010113          	addi	sp,sp,48
 8008640:	00008067          	ret
__udivmoddi4():
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/libgcc2.c:1091
 8008644:	00061a63          	bnez	a2,8008658 <__umoddi3+0x19c>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/libgcc2.c:1092
 8008648:	00000593          	li	a1,0
 800864c:	00100513          	li	a0,1
 8008650:	460000ef          	jal	ra,8008ab0 <__udivsi3>
 8008654:	00050b13          	mv	s6,a0
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/libgcc2.c:1094
 8008658:	000107b7          	lui	a5,0x10
 800865c:	12fb6a63          	bltu	s6,a5,8008790 <__umoddi3+0x2d4>
 8008660:	010007b7          	lui	a5,0x1000
 8008664:	3cfb6c63          	bltu	s6,a5,8008a3c <__umoddi3+0x580>
 8008668:	018b5793          	srli	a5,s6,0x18
 800866c:	01800913          	li	s2,24
 8008670:	08009737          	lui	a4,0x8009
 8008674:	f1070713          	addi	a4,a4,-240 # 8008f10 <__clz_tab>
 8008678:	00e787b3          	add	a5,a5,a4
 800867c:	0007c783          	lbu	a5,0(a5) # 1000000 <_start-0x7004000>
 8008680:	02000513          	li	a0,32
 8008684:	012787b3          	add	a5,a5,s2
 8008688:	40f50933          	sub	s2,a0,a5
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/libgcc2.c:1096
 800868c:	12091863          	bnez	s2,80087bc <__umoddi3+0x300>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/libgcc2.c:1105
 8008690:	010b1b93          	slli	s7,s6,0x10
 8008694:	416484b3          	sub	s1,s1,s6
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/libgcc2.c:1106
 8008698:	010b5a93          	srli	s5,s6,0x10
 800869c:	010bdb93          	srli	s7,s7,0x10
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/libgcc2.c:1124
 80086a0:	000a8593          	mv	a1,s5
 80086a4:	00048513          	mv	a0,s1
 80086a8:	450000ef          	jal	ra,8008af8 <__umodsi3>
 80086ac:	00050a13          	mv	s4,a0
 80086b0:	000a8593          	mv	a1,s5
 80086b4:	00048513          	mv	a0,s1
 80086b8:	3f8000ef          	jal	ra,8008ab0 <__udivsi3>
 80086bc:	000b8593          	mv	a1,s7
 80086c0:	3c4000ef          	jal	ra,8008a84 <__mulsi3>
 80086c4:	010a1a13          	slli	s4,s4,0x10
 80086c8:	0109d793          	srli	a5,s3,0x10
 80086cc:	00fa67b3          	or	a5,s4,a5
 80086d0:	00a7fa63          	bleu	a0,a5,80086e4 <__umoddi3+0x228>
 80086d4:	016787b3          	add	a5,a5,s6
 80086d8:	0167e663          	bltu	a5,s6,80086e4 <__umoddi3+0x228>
 80086dc:	00a7f463          	bleu	a0,a5,80086e4 <__umoddi3+0x228>
 80086e0:	016787b3          	add	a5,a5,s6
 80086e4:	40a78433          	sub	s0,a5,a0
 80086e8:	000a8593          	mv	a1,s5
 80086ec:	00040513          	mv	a0,s0
 80086f0:	408000ef          	jal	ra,8008af8 <__umodsi3>
 80086f4:	00050493          	mv	s1,a0
 80086f8:	000a8593          	mv	a1,s5
 80086fc:	00040513          	mv	a0,s0
 8008700:	3b0000ef          	jal	ra,8008ab0 <__udivsi3>
 8008704:	000b8593          	mv	a1,s7
 8008708:	01099993          	slli	s3,s3,0x10
 800870c:	378000ef          	jal	ra,8008a84 <__mulsi3>
 8008710:	01049493          	slli	s1,s1,0x10
 8008714:	0109d993          	srli	s3,s3,0x10
 8008718:	0134e7b3          	or	a5,s1,s3
 800871c:	eea7f2e3          	bleu	a0,a5,8008600 <__umoddi3+0x144>
 8008720:	ed1ff06f          	j	80085f0 <__umoddi3+0x134>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/libgcc2.c:1140
 8008724:	eed5e4e3          	bltu	a1,a3,800860c <__umoddi3+0x150>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/libgcc2.c:1159
 8008728:	000107b7          	lui	a5,0x10
 800872c:	04f6e863          	bltu	a3,a5,800877c <__umoddi3+0x2c0>
 8008730:	010007b7          	lui	a5,0x1000
 8008734:	30f6ea63          	bltu	a3,a5,8008a48 <__umoddi3+0x58c>
 8008738:	0186d713          	srli	a4,a3,0x18
 800873c:	01800813          	li	a6,24
 8008740:	080097b7          	lui	a5,0x8009
 8008744:	f1078793          	addi	a5,a5,-240 # 8008f10 <__clz_tab>
 8008748:	00f707b3          	add	a5,a4,a5
 800874c:	0007ca83          	lbu	s5,0(a5)
 8008750:	02000a13          	li	s4,32
 8008754:	010a8ab3          	add	s5,s5,a6
 8008758:	415a0a33          	sub	s4,s4,s5
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/libgcc2.c:1160
 800875c:	120a1263          	bnez	s4,8008880 <__umoddi3+0x3c4>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/libgcc2.c:1170
 8008760:	0096e463          	bltu	a3,s1,8008768 <__umoddi3+0x2ac>
 8008764:	eac464e3          	bltu	s0,a2,800860c <__umoddi3+0x150>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/libgcc2.c:1173
 8008768:	40c40533          	sub	a0,s0,a2
 800876c:	40d486b3          	sub	a3,s1,a3
 8008770:	00a435b3          	sltu	a1,s0,a0
 8008774:	40b685b3          	sub	a1,a3,a1
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/libgcc2.c:1184
 8008778:	e95ff06f          	j	800860c <__umoddi3+0x150>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/libgcc2.c:1159
 800877c:	0ff00793          	li	a5,255
 8008780:	2ed7f063          	bleu	a3,a5,8008a60 <__umoddi3+0x5a4>
 8008784:	0086d713          	srli	a4,a3,0x8
 8008788:	00800813          	li	a6,8
 800878c:	fb5ff06f          	j	8008740 <__umoddi3+0x284>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/libgcc2.c:1094
 8008790:	0ff00713          	li	a4,255
 8008794:	000b0793          	mv	a5,s6
 8008798:	ed677ce3          	bleu	s6,a4,8008670 <__umoddi3+0x1b4>
 800879c:	008b5793          	srli	a5,s6,0x8
 80087a0:	00800913          	li	s2,8
 80087a4:	ecdff06f          	j	8008670 <__umoddi3+0x1b4>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/libgcc2.c:1070
 80087a8:	010007b7          	lui	a5,0x1000
 80087ac:	2af66463          	bltu	a2,a5,8008a54 <__umoddi3+0x598>
 80087b0:	01865793          	srli	a5,a2,0x18
 80087b4:	01800913          	li	s2,24
 80087b8:	d75ff06f          	j	800852c <__umoddi3+0x70>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/libgcc2.c:1114
 80087bc:	012b1b33          	sll	s6,s6,s2
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/libgcc2.c:1115
 80087c0:	00f4dc33          	srl	s8,s1,a5
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/libgcc2.c:1119
 80087c4:	010b5a93          	srli	s5,s6,0x10
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/libgcc2.c:1116
 80087c8:	00f457b3          	srl	a5,s0,a5
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/libgcc2.c:1119
 80087cc:	000a8593          	mv	a1,s5
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/libgcc2.c:1116
 80087d0:	012494b3          	sll	s1,s1,s2
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/libgcc2.c:1119
 80087d4:	000c0513          	mv	a0,s8
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/libgcc2.c:1116
 80087d8:	0097ea33          	or	s4,a5,s1
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/libgcc2.c:1119
 80087dc:	31c000ef          	jal	ra,8008af8 <__umodsi3>
 80087e0:	00050993          	mv	s3,a0
 80087e4:	000a8593          	mv	a1,s5
 80087e8:	010b1b93          	slli	s7,s6,0x10
 80087ec:	000c0513          	mv	a0,s8
 80087f0:	2c0000ef          	jal	ra,8008ab0 <__udivsi3>
 80087f4:	010bdb93          	srli	s7,s7,0x10
 80087f8:	00050593          	mv	a1,a0
 80087fc:	000b8513          	mv	a0,s7
 8008800:	284000ef          	jal	ra,8008a84 <__mulsi3>
 8008804:	01099993          	slli	s3,s3,0x10
 8008808:	010a5793          	srli	a5,s4,0x10
 800880c:	00f9e7b3          	or	a5,s3,a5
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/libgcc2.c:1117
 8008810:	012419b3          	sll	s3,s0,s2
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/libgcc2.c:1119
 8008814:	00a7fa63          	bleu	a0,a5,8008828 <__umoddi3+0x36c>
 8008818:	016787b3          	add	a5,a5,s6
 800881c:	0167e663          	bltu	a5,s6,8008828 <__umoddi3+0x36c>
 8008820:	00a7f463          	bleu	a0,a5,8008828 <__umoddi3+0x36c>
 8008824:	016787b3          	add	a5,a5,s6
 8008828:	40a784b3          	sub	s1,a5,a0
 800882c:	000a8593          	mv	a1,s5
 8008830:	00048513          	mv	a0,s1
 8008834:	2c4000ef          	jal	ra,8008af8 <__umodsi3>
 8008838:	00050413          	mv	s0,a0
 800883c:	000a8593          	mv	a1,s5
 8008840:	00048513          	mv	a0,s1
 8008844:	26c000ef          	jal	ra,8008ab0 <__udivsi3>
 8008848:	010a1a13          	slli	s4,s4,0x10
 800884c:	00050593          	mv	a1,a0
 8008850:	01041493          	slli	s1,s0,0x10
 8008854:	000b8513          	mv	a0,s7
 8008858:	010a5a13          	srli	s4,s4,0x10
 800885c:	228000ef          	jal	ra,8008a84 <__mulsi3>
 8008860:	0144e4b3          	or	s1,s1,s4
 8008864:	00a4fa63          	bleu	a0,s1,8008878 <__umoddi3+0x3bc>
 8008868:	016484b3          	add	s1,s1,s6
 800886c:	0164e663          	bltu	s1,s6,8008878 <__umoddi3+0x3bc>
 8008870:	00a4f463          	bleu	a0,s1,8008878 <__umoddi3+0x3bc>
 8008874:	016484b3          	add	s1,s1,s6
 8008878:	40a484b3          	sub	s1,s1,a0
 800887c:	e25ff06f          	j	80086a0 <__umoddi3+0x1e4>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/libgcc2.c:1194
 8008880:	015657b3          	srl	a5,a2,s5
 8008884:	014696b3          	sll	a3,a3,s4
 8008888:	00d7ec33          	or	s8,a5,a3
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/libgcc2.c:1196
 800888c:	0154d9b3          	srl	s3,s1,s5
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/libgcc2.c:1200
 8008890:	010c5c93          	srli	s9,s8,0x10
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/libgcc2.c:1197
 8008894:	015457b3          	srl	a5,s0,s5
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/libgcc2.c:1200
 8008898:	000c8593          	mv	a1,s9
 800889c:	00098513          	mv	a0,s3
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/libgcc2.c:1197
 80088a0:	014494b3          	sll	s1,s1,s4
 80088a4:	0097e4b3          	or	s1,a5,s1
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/libgcc2.c:1195
 80088a8:	01461933          	sll	s2,a2,s4
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/libgcc2.c:1200
 80088ac:	24c000ef          	jal	ra,8008af8 <__umodsi3>
 80088b0:	00050b93          	mv	s7,a0
 80088b4:	000c8593          	mv	a1,s9
 80088b8:	00098513          	mv	a0,s3
 80088bc:	010c1d13          	slli	s10,s8,0x10
 80088c0:	1f0000ef          	jal	ra,8008ab0 <__udivsi3>
 80088c4:	010d5d13          	srli	s10,s10,0x10
 80088c8:	00050593          	mv	a1,a0
 80088cc:	00050993          	mv	s3,a0
 80088d0:	000d0513          	mv	a0,s10
 80088d4:	1b0000ef          	jal	ra,8008a84 <__mulsi3>
 80088d8:	010b9b93          	slli	s7,s7,0x10
 80088dc:	0104d713          	srli	a4,s1,0x10
 80088e0:	00ebe733          	or	a4,s7,a4
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/libgcc2.c:1198
 80088e4:	01441433          	sll	s0,s0,s4
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/libgcc2.c:1200
 80088e8:	00a77e63          	bleu	a0,a4,8008904 <__umoddi3+0x448>
 80088ec:	01870733          	add	a4,a4,s8
 80088f0:	fff98793          	addi	a5,s3,-1
 80088f4:	19876063          	bltu	a4,s8,8008a74 <__umoddi3+0x5b8>
 80088f8:	16a77e63          	bleu	a0,a4,8008a74 <__umoddi3+0x5b8>
 80088fc:	ffe98993          	addi	s3,s3,-2
 8008900:	01870733          	add	a4,a4,s8
 8008904:	40a70b33          	sub	s6,a4,a0
 8008908:	000c8593          	mv	a1,s9
 800890c:	000b0513          	mv	a0,s6
 8008910:	1e8000ef          	jal	ra,8008af8 <__umodsi3>
 8008914:	00050b93          	mv	s7,a0
 8008918:	000c8593          	mv	a1,s9
 800891c:	000b0513          	mv	a0,s6
 8008920:	190000ef          	jal	ra,8008ab0 <__udivsi3>
 8008924:	01049493          	slli	s1,s1,0x10
 8008928:	00050593          	mv	a1,a0
 800892c:	00050b13          	mv	s6,a0
 8008930:	010b9b93          	slli	s7,s7,0x10
 8008934:	000d0513          	mv	a0,s10
 8008938:	0104d493          	srli	s1,s1,0x10
 800893c:	148000ef          	jal	ra,8008a84 <__mulsi3>
 8008940:	009be4b3          	or	s1,s7,s1
 8008944:	00a4fe63          	bleu	a0,s1,8008960 <__umoddi3+0x4a4>
 8008948:	018484b3          	add	s1,s1,s8
 800894c:	fffb0793          	addi	a5,s6,-1
 8008950:	1184ee63          	bltu	s1,s8,8008a6c <__umoddi3+0x5b0>
 8008954:	10a4fc63          	bleu	a0,s1,8008a6c <__umoddi3+0x5b0>
 8008958:	ffeb0b13          	addi	s6,s6,-2
 800895c:	018484b3          	add	s1,s1,s8
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/libgcc2.c:1201
 8008960:	00010e37          	lui	t3,0x10
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/libgcc2.c:1200
 8008964:	01099993          	slli	s3,s3,0x10
 8008968:	0169e9b3          	or	s3,s3,s6
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/libgcc2.c:1201
 800896c:	fffe0713          	addi	a4,t3,-1 # ffff <_start-0x7ff4001>
 8008970:	00e9f7b3          	and	a5,s3,a4
 8008974:	00e97733          	and	a4,s2,a4
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/libgcc2.c:1200
 8008978:	40a484b3          	sub	s1,s1,a0
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/libgcc2.c:1201
 800897c:	0109d993          	srli	s3,s3,0x10
 8008980:	01095893          	srli	a7,s2,0x10
 8008984:	00078513          	mv	a0,a5
 8008988:	00070593          	mv	a1,a4
 800898c:	0f8000ef          	jal	ra,8008a84 <__mulsi3>
 8008990:	00050813          	mv	a6,a0
 8008994:	00088593          	mv	a1,a7
 8008998:	00078513          	mv	a0,a5
 800899c:	0e8000ef          	jal	ra,8008a84 <__mulsi3>
 80089a0:	00050313          	mv	t1,a0
 80089a4:	00070593          	mv	a1,a4
 80089a8:	00098513          	mv	a0,s3
 80089ac:	0d8000ef          	jal	ra,8008a84 <__mulsi3>
 80089b0:	00050713          	mv	a4,a0
 80089b4:	00088593          	mv	a1,a7
 80089b8:	00098513          	mv	a0,s3
 80089bc:	0c8000ef          	jal	ra,8008a84 <__mulsi3>
 80089c0:	01085793          	srli	a5,a6,0x10
 80089c4:	00e30333          	add	t1,t1,a4
 80089c8:	006787b3          	add	a5,a5,t1
 80089cc:	00e7f463          	bleu	a4,a5,80089d4 <__umoddi3+0x518>
 80089d0:	01c50533          	add	a0,a0,t3
 80089d4:	00010737          	lui	a4,0x10
 80089d8:	fff70713          	addi	a4,a4,-1 # ffff <_start-0x7ff4001>
 80089dc:	0107d593          	srli	a1,a5,0x10
 80089e0:	00e7f7b3          	and	a5,a5,a4
 80089e4:	01079793          	slli	a5,a5,0x10
 80089e8:	00e87833          	and	a6,a6,a4
 80089ec:	00a585b3          	add	a1,a1,a0
 80089f0:	010787b3          	add	a5,a5,a6
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/libgcc2.c:1203
 80089f4:	02b4e863          	bltu	s1,a1,8008a24 <__umoddi3+0x568>
 80089f8:	02b48463          	beq	s1,a1,8008a20 <__umoddi3+0x564>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/libgcc2.c:1214
 80089fc:	40f407b3          	sub	a5,s0,a5
 8008a00:	00f43433          	sltu	s0,s0,a5
 8008a04:	40b485b3          	sub	a1,s1,a1
 8008a08:	408585b3          	sub	a1,a1,s0
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/libgcc2.c:1215
 8008a0c:	01559533          	sll	a0,a1,s5
 8008a10:	0147d7b3          	srl	a5,a5,s4
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/libgcc2.c:1217
 8008a14:	00f56533          	or	a0,a0,a5
 8008a18:	0145d5b3          	srl	a1,a1,s4
__umoddi3():
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/libgcc2.c:1312
 8008a1c:	bf1ff06f          	j	800860c <__umoddi3+0x150>
__udivmoddi4():
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/libgcc2.c:1203
 8008a20:	fcf47ee3          	bleu	a5,s0,80089fc <__umoddi3+0x540>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/libgcc2.c:1206
 8008a24:	41278933          	sub	s2,a5,s2
 8008a28:	0127b7b3          	sltu	a5,a5,s2
 8008a2c:	018787b3          	add	a5,a5,s8
 8008a30:	40f585b3          	sub	a1,a1,a5
 8008a34:	00090793          	mv	a5,s2
 8008a38:	fc5ff06f          	j	80089fc <__umoddi3+0x540>
 8008a3c:	010b5793          	srli	a5,s6,0x10
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/libgcc2.c:1094
 8008a40:	01000913          	li	s2,16
 8008a44:	c2dff06f          	j	8008670 <__umoddi3+0x1b4>
 8008a48:	0106d713          	srli	a4,a3,0x10
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/libgcc2.c:1159
 8008a4c:	01000813          	li	a6,16
 8008a50:	cf1ff06f          	j	8008740 <__umoddi3+0x284>
 8008a54:	01065793          	srli	a5,a2,0x10
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/libgcc2.c:1070
 8008a58:	01000913          	li	s2,16
 8008a5c:	ad1ff06f          	j	800852c <__umoddi3+0x70>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/libgcc2.c:1159
 8008a60:	00068713          	mv	a4,a3
 8008a64:	00000813          	li	a6,0
 8008a68:	cd9ff06f          	j	8008740 <__umoddi3+0x284>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/libgcc2.c:1200
 8008a6c:	00078b13          	mv	s6,a5
 8008a70:	ef1ff06f          	j	8008960 <__umoddi3+0x4a4>
 8008a74:	00078993          	mv	s3,a5
 8008a78:	e8dff06f          	j	8008904 <__umoddi3+0x448>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/libgcc2.c:1082
 8008a7c:	016787b3          	add	a5,a5,s6
 8008a80:	b31ff06f          	j	80085b0 <__umoddi3+0xf4>

08008a84 <__mulsi3>:
__mulsi3():
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/config/riscv/muldi3.S:37
 8008a84:	00050613          	mv	a2,a0
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/config/riscv/muldi3.S:38
 8008a88:	00000513          	li	a0,0
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/config/riscv/muldi3.S:40
 8008a8c:	0015f693          	andi	a3,a1,1
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/config/riscv/muldi3.S:41
 8008a90:	00068463          	beqz	a3,8008a98 <__mulsi3+0x14>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/config/riscv/muldi3.S:42
 8008a94:	00c50533          	add	a0,a0,a2
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/config/riscv/muldi3.S:44
 8008a98:	0015d593          	srli	a1,a1,0x1
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/config/riscv/muldi3.S:45
 8008a9c:	00161613          	slli	a2,a2,0x1
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/config/riscv/muldi3.S:46
 8008aa0:	fe0596e3          	bnez	a1,8008a8c <__mulsi3+0x8>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/config/riscv/muldi3.S:47
 8008aa4:	00008067          	ret

08008aa8 <__divsi3>:
__divsi3():
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/config/riscv/div.S:69
 8008aa8:	06054063          	bltz	a0,8008b08 <__umodsi3+0x10>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/config/riscv/div.S:70
 8008aac:	0605c663          	bltz	a1,8008b18 <__umodsi3+0x20>

08008ab0 <__udivsi3>:
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/config/riscv/div.S:74
 8008ab0:	00058613          	mv	a2,a1
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/config/riscv/div.S:75
 8008ab4:	00050593          	mv	a1,a0
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/config/riscv/div.S:76
 8008ab8:	fff00513          	li	a0,-1
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/config/riscv/div.S:77
 8008abc:	02060c63          	beqz	a2,8008af4 <__udivsi3+0x44>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/config/riscv/div.S:78
 8008ac0:	00100693          	li	a3,1
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/config/riscv/div.S:79
 8008ac4:	00b67a63          	bleu	a1,a2,8008ad8 <__udivsi3+0x28>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/config/riscv/div.S:81
 8008ac8:	00c05863          	blez	a2,8008ad8 <__udivsi3+0x28>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/config/riscv/div.S:82
 8008acc:	00161613          	slli	a2,a2,0x1
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/config/riscv/div.S:83
 8008ad0:	00169693          	slli	a3,a3,0x1
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/config/riscv/div.S:84
 8008ad4:	feb66ae3          	bltu	a2,a1,8008ac8 <__udivsi3+0x18>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/config/riscv/div.S:86
 8008ad8:	00000513          	li	a0,0
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/config/riscv/div.S:88
 8008adc:	00c5e663          	bltu	a1,a2,8008ae8 <__udivsi3+0x38>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/config/riscv/div.S:89
 8008ae0:	40c585b3          	sub	a1,a1,a2
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/config/riscv/div.S:90
 8008ae4:	00d56533          	or	a0,a0,a3
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/config/riscv/div.S:92
 8008ae8:	0016d693          	srli	a3,a3,0x1
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/config/riscv/div.S:93
 8008aec:	00165613          	srli	a2,a2,0x1
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/config/riscv/div.S:94
 8008af0:	fe0696e3          	bnez	a3,8008adc <__udivsi3+0x2c>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/config/riscv/div.S:96
 8008af4:	00008067          	ret

08008af8 <__umodsi3>:
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/config/riscv/div.S:101
 8008af8:	00008293          	mv	t0,ra
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/config/riscv/div.S:102
 8008afc:	fb5ff0ef          	jal	ra,8008ab0 <__udivsi3>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/config/riscv/div.S:103
 8008b00:	00058513          	mv	a0,a1
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/config/riscv/div.S:104
 8008b04:	00028067          	jr	t0
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/config/riscv/div.S:109
 8008b08:	40a00533          	neg	a0,a0
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/config/riscv/div.S:110
 8008b0c:	0005d863          	bgez	a1,8008b1c <__umodsi3+0x24>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/config/riscv/div.S:111
 8008b10:	40b005b3          	neg	a1,a1
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/config/riscv/div.S:112
 8008b14:	f9dff06f          	j	8008ab0 <__udivsi3>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/config/riscv/div.S:114
 8008b18:	40b005b3          	neg	a1,a1
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/config/riscv/div.S:116
 8008b1c:	00008293          	mv	t0,ra
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/config/riscv/div.S:117
 8008b20:	f91ff0ef          	jal	ra,8008ab0 <__udivsi3>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/config/riscv/div.S:118
 8008b24:	40a00533          	neg	a0,a0
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/config/riscv/div.S:119
 8008b28:	00028067          	jr	t0

08008b2c <__modsi3>:
__modsi3():
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/config/riscv/div.S:123
 8008b2c:	00008293          	mv	t0,ra
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/config/riscv/div.S:124
 8008b30:	0005ca63          	bltz	a1,8008b44 <__modsi3+0x18>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/config/riscv/div.S:125
 8008b34:	00054c63          	bltz	a0,8008b4c <__modsi3+0x20>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/config/riscv/div.S:127
 8008b38:	f79ff0ef          	jal	ra,8008ab0 <__udivsi3>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/config/riscv/div.S:128
 8008b3c:	00058513          	mv	a0,a1
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/config/riscv/div.S:129
 8008b40:	00028067          	jr	t0
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/config/riscv/div.S:131
 8008b44:	40b005b3          	neg	a1,a1
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/config/riscv/div.S:132
 8008b48:	fe0558e3          	bgez	a0,8008b38 <__modsi3+0xc>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/config/riscv/div.S:134
 8008b4c:	40a00533          	neg	a0,a0
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/config/riscv/div.S:135
 8008b50:	f61ff0ef          	jal	ra,8008ab0 <__udivsi3>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/config/riscv/div.S:136
 8008b54:	40b00533          	neg	a0,a1
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/gcc-8.2.0/objdir/riscv32-elf/libgcc/../../../libgcc/config/riscv/div.S:137
 8008b58:	00028067          	jr	t0

08008b5c <fminf>:
fminf():
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libm/common/../../../../../newlib/libm/common/sf_fmin.c:16
 8008b5c:	fe010113          	addi	sp,sp,-32
 8008b60:	00813427          	fsd	fs0,8(sp)
 8008b64:	00913027          	fsd	fs1,0(sp)
 8008b68:	00112e23          	sw	ra,28(sp)
 8008b6c:	20a50453          	fmv.s	fs0,fa0
 8008b70:	20b584d3          	fmv.s	fs1,fa1
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libm/common/../../../../../newlib/libm/common/sf_fmin.c:17
 8008b74:	04c000ef          	jal	ra,8008bc0 <__fpclassifyf>
 8008b78:	00051e63          	bnez	a0,8008b94 <fminf+0x38>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libm/common/../../../../../newlib/libm/common/sf_fmin.c:22 (discriminator 2)
 8008b7c:	20948553          	fmv.s	fa0,fs1
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libm/common/../../../../../newlib/libm/common/sf_fmin.c:23
 8008b80:	01c12083          	lw	ra,28(sp)
 8008b84:	00813407          	fld	fs0,8(sp)
 8008b88:	00013487          	fld	fs1,0(sp)
 8008b8c:	02010113          	addi	sp,sp,32
 8008b90:	00008067          	ret
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libm/common/../../../../../newlib/libm/common/sf_fmin.c:19
 8008b94:	20948553          	fmv.s	fa0,fs1
 8008b98:	028000ef          	jal	ra,8008bc0 <__fpclassifyf>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libm/common/../../../../../newlib/libm/common/sf_fmin.c:20
 8008b9c:	20840553          	fmv.s	fa0,fs0
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libm/common/../../../../../newlib/libm/common/sf_fmin.c:19
 8008ba0:	fe0500e3          	beqz	a0,8008b80 <fminf+0x24>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libm/common/../../../../../newlib/libm/common/sf_fmin.c:22
 8008ba4:	a09417d3          	flt.s	a5,fs0,fs1
 8008ba8:	fc078ae3          	beqz	a5,8008b7c <fminf+0x20>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libm/common/../../../../../newlib/libm/common/sf_fmin.c:23
 8008bac:	01c12083          	lw	ra,28(sp)
 8008bb0:	00813407          	fld	fs0,8(sp)
 8008bb4:	00013487          	fld	fs1,0(sp)
 8008bb8:	02010113          	addi	sp,sp,32
 8008bbc:	00008067          	ret

08008bc0 <__fpclassifyf>:
__fpclassifyf():
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libm/common/../../../../../newlib/libm/common/sf_fpclassify.c:11
 8008bc0:	e00507d3          	fmv.x.s	a5,fa0
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libm/common/../../../../../newlib/libm/common/sf_fpclassify.c:16
 8008bc4:	80000537          	lui	a0,0x80000
 8008bc8:	fff54513          	not	a0,a0
 8008bcc:	00a7f7b3          	and	a5,a5,a0
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libm/common/../../../../../newlib/libm/common/sf_fpclassify.c:17
 8008bd0:	00200513          	li	a0,2
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libm/common/../../../../../newlib/libm/common/sf_fpclassify.c:16
 8008bd4:	02078c63          	beqz	a5,8008c0c <__fpclassifyf+0x4c>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libm/common/../../../../../newlib/libm/common/sf_fpclassify.c:18
 8008bd8:	ff800737          	lui	a4,0xff800
 8008bdc:	00e78733          	add	a4,a5,a4
 8008be0:	7f0006b7          	lui	a3,0x7f000
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libm/common/../../../../../newlib/libm/common/sf_fpclassify.c:20
 8008be4:	00400513          	li	a0,4
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libm/common/../../../../../newlib/libm/common/sf_fpclassify.c:18
 8008be8:	02d76263          	bltu	a4,a3,8008c0c <__fpclassifyf+0x4c>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libm/common/../../../../../newlib/libm/common/sf_fpclassify.c:21 (discriminator 1)
 8008bec:	00800737          	lui	a4,0x800
 8008bf0:	fff78693          	addi	a3,a5,-1 # ffffff <_start-0x7004001>
 8008bf4:	ffe70713          	addi	a4,a4,-2 # 7ffffe <_start-0x7804002>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libm/common/../../../../../newlib/libm/common/sf_fpclassify.c:23 (discriminator 1)
 8008bf8:	00300513          	li	a0,3
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libm/common/../../../../../newlib/libm/common/sf_fpclassify.c:21 (discriminator 1)
 8008bfc:	00d77863          	bleu	a3,a4,8008c0c <__fpclassifyf+0x4c>
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libm/common/../../../../../newlib/libm/common/sf_fpclassify.c:24 (discriminator 1)
 8008c00:	80800537          	lui	a0,0x80800
 8008c04:	00a787b3          	add	a5,a5,a0
 8008c08:	0017b513          	seqz	a0,a5
/home/billtsou/Desktop/UPP/sunflower-simulator/tools/source/newlib-2.5.0.20170922/objdir/riscv32-elf/newlib/libm/common/../../../../../newlib/libm/common/sf_fpclassify.c:28
 8008c0c:	00008067          	ret
