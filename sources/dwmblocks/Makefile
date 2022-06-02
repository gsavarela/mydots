.POSIX:

PREFIX = /usr/local
CC = gcc
BASEDIR = $(shell dirname $(shell dirname $(CURDIR)))
BINDIR = /dwmblocks/.local/bin

dwmblocks: main.o
	$(CC) main.o -lX11 -Ofast -o dwmblocks
main.o: main.c config.h
	$(CC) -Ofast -c main.c
clean:

	rm -f *.o *.gch ${BASEDIR}${BINDIR}/dwmblocks
install: dwmblocks
	# mkdir -p $(DESTDIR)$(PREFIX)/bin
	# cp -f dwmblocks $(DESTDIR)$(PREFIX)/bin
	# chmod 755 $(DESTDIR)$(PREFIX)/bin/dwmblocks
	mkdir -p ${BASEDIR}${BINDIR}
	mv -f dwmblocks ${BASEDIR}${BINDIR}
	chmod 755 ${BASEDIR}${BINDIR}/dwmblocks
uninstall:
	# rm -f $(DESTDIR)$(PREFIX)/bin/dwmblocks
	rm -f ${BASEDIR}${BINDIR}/dwmblocks

.PHONY: clean install uninstall
