CC=g++
UTILS_PATH=utils/

all: shuffle lib2csv csv2bin splitgen unisplitgen synthgen

shuffle:
	$(CC) -O3 -o shuffle shuffle.cpp

lib2csv:
	$(CC) -O3 -o libsvm2csv libsvm2csv.cpp

csv2bin:
	$(CC) -O3 -o csv2bin csv2bin.cpp

splitgen:
	$(CC) -O3 -o splitgen gen_splits.cpp

unisplitgen:
	$(CC) -O3 -o unisplitgen uniform_gen_splits.cpp

synthgen:
	$(CC) -O3 -o synthgen synthetic_dataset_generator.cpp

clean:
	rm -f shuffle
	rm -f lib2csv
	rm -f csv2bin
	rm -f splitgen
	rm -f unisplitgen
	rm -f synthgen