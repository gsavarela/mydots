.POSIX:

CC = gcc
BASEDIR = $(shell dirname $(CURDIR))
BINDIR = /dwmblocks

dwmblocks: main.o
	$(CC) main.o -lX11 -Ofast -o dwmblocks
main.o: main.c config.h
	$(CC) -Ofast -c main.c
clean:
	rm -f *.o *.gch dwmblocks ${BASEDIR}${BINDIR}/dwmblocks
install: dwmblocks
	mkdir -p ${BASEDIR}${BINDIR}
	chmod 755 ${BASEDIR}${BINDIR}/dwmblocks
uninstall:
	rm -f ${BASEDIR}${BINDIR}/dwmblocks

.PHONY: clean install uninstall
