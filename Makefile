CC=gcc

CFLAGS=-Wall -O3 -g -std=gnu11 -fno-strict-aliasing -Isrc -DLUA_USE_POSIX
LFLAGS=-lSDL2 -lm

CFILES:=$(shell find src/ -name *.c)
OFILES:=$(CFILES:.c=.o)

BINARY=lite

$(BINARY): $(OFILES)
	$(CC) $^ $(LFLAGS) -o $@

%.o: %.c
	$(CC) -c $^ $(CFLAGS) -o $@

clean:
	rm $(OFILES) $(BINARY)
