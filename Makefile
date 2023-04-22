CC=g++
CFLAGS=-Wall -Werror -Wextra

all: scroll

clean:
	rm -rf *.o
	rm -rf *.a
	rm -rf scroll
	rm -rf build/*

debug: CFLAGS += -DDEBUG -g
debug: all

scroll: src/scroll.c
	$(CC) $(CFLAGS) src/scroll.c -o build/scroll
