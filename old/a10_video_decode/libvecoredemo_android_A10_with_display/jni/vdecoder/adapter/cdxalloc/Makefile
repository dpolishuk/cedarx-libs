CROSS_COMPILE = /opt/android-ndk-r8d/toolchains/arm-linux-androideabi-4.7/prebuilt/linux-x86/bin/arm-linux-androideabi-
CC = $(CROSS_COMPILE)gcc
CPP = $(CROSS_COMPILE)g++
STRIP = $(CROSS_COMPILE)strip
AR = $(CROSS_COMPILE)ar
PROJECT = libcedarxalloc.a
OBJECTS = cdxalloc.o
CFLAGS  = -Wall

all: $(PROJECT)

.c.o:
	gcc -c $(CFLAGS) $<

$(PROJECT): $(OBJECTS)
	ar rcs $(PROJECT) $(OBJECTS)

clean:
	@rm -f $(PROJECT)
	@rm -f $(OBJECTS)
