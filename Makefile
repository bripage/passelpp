CC=/tools/emu/pathfinder-sw/21.06/bin/emu-cc
CFILES=$(wildcard src/*.c)

all:
	$(CC) -lm -lemu_c_utils -O3 -o passelpp.mwx $(CFILES)

clean:
	rm -f passelpp.mwx
	rm -f passelpp.cdc
	rm -f passelpp.hdd
	rm -f passelpp.vsf
