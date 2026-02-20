BINDIR	?= /usr/local/bin

CC 	= gcc
CFLAGS += -std=c18
CFLAGS += -Wall
CFLAGS += -O3
CFLAGS += -g

##########

all: a65

a65: a65.c a65.h
	$(CC) $(CFLAGS) -o a65 a65.c

test: a65 test.asm
	./a65 test.asm
clean:
	$(RM) a65 *.lst

install: a65
	sudo cp -p a65 $(BINDIR)/
