CC=/tools/emu/pathfinder-sw/22.02/bin/emu-cc
CFILES=$(wildcard src/*.c)

all:
	$(CC) -lm -lmemoryweb -fcilkplus -O3 -o passelpp.mwx -S $(CFILES)

clean:
	rm -f passelpp.mwx
	rm -f passelpp.cdc
	rm -f passelpp.hdd
	rm -f passelpp.vsf
