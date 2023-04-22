CC=g++
CFLAGS=-Wall -Werror -Wextra
DESTDIR=/usr/local

all: scroll

clean:
	rm -rf *.o
	rm -rf *.a
	rm -rf scroll
	rm -rf build/*

debug: CFLAGS += -DDEBUG -g
debug: all

install: all
	mkdir -p $(DESTDIR)/bin
	cp build/scroll $(DESTDIR)/bin

scroll: src/scroll.c
	$(CC) $(CFLAGS) src/scroll.c -o build/scroll
