TREEROOT	= ../../..
include $(TREEROOT)/conf/setup.conf

PROGRAM		= main#bm3680ConvRout
INIT		= init

OPTFLAGS	= -g -O0 #-gstabs3
INCLUDES	= -I$(PREFIX)/include
CFLAGS		= $(TARGET-ARCH-FLAGS) -Wall
ASFLAGS		= --march=rv32ifdxun
LDFLAGS		= -Ttext $(LOADADDR) -L$(TOOLSLIB)/$(TARGET) -Map $(PROGRAM).map
LOADADDR	= 0x08004000


OBJS	=\
	$(INIT).o \
	$(PROGRAM).o \
	bme680.o \

all:	$(PROGRAM).out $(PROGRAM).sr Makefile

$(INIT).s: $(INIT).S Makefile
	$(CPP) -o $(INIT).s -c $(INIT).S

$(PROGRAM).out: $(OBJS)
	$(LD) $(LDFLAGS) $(OBJS) -o $@ -lprintf -lc -lgloss -lgcc -lm
	
$(PROGRAM).sr: $(PROGRAM).out
	$(OBJCOPY) -O srec $(PROGRAM).out $@

$(PROGRAM).s: $(PROGRAM).c Makefile
	$(CC) $(CFLAGS) $(OPTFLAGS) $(INCLUDES) -S -fverbose-asm -o $(PROGRAM).s -c $(PROGRAM).c

bme680.s: BME680_driver_patched/bme680.c BME680_driver_patched/bme680.h
	$(CC) $(CFLAGS) $(OPTFLAGS) $(INCLUDES) -S -fverbose-asm -o $@ -c BME680_driver_patched/bme680.c

patch:
	patch BME680_driver_patched/bme680.c bme680.patch;

%.o : %.s $(HEADERS) Makefile
	$(AS) $(ASFLAGS) -g -o $@ -c $<

clean:
	$(RM) *.s *.o *.out *.sr *.map

# disable direct compilation of .c and .S files
%.o : %.c
%.o : %.S
