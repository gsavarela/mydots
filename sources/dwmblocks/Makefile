PREFIX ?= /usr/local
CC ?= cc

output: dwmblocks.c blocks.def.h blocks.h
	${CC} `pkg-config --cflags x11 --libs x11` dwmblocks.c -o dwmblocks
blocks.h:
	cp blocks.def.h $@

clean:
	rm -f *.o *.gch dwmblocks ../../dwmblocks/.local/bin/dwmblocks
install: output
	install -m 0755 dwmblocks ../../dwmblocks/.local/bin/dwmblocks
uninstall:
	rm -f dwmblocks ../../dwmblocks/.local/bin/dwmblocks
