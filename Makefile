CC=/tools/emu/chick-sw/emu-20.01/bin/emu-cc
CFILES=$(wildcard src/*.c)

all:
	$(CC) -lm -O3 -o passelpp.mwx $(CFILES)

clean:
	rm -f passelpp.mwx
	rm -f passelpp.cdc
	rm -f passelpp.hdd
	rm -f passelpp.vsf
