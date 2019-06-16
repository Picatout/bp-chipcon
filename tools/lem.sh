#!/bin/sh
./bpcasm ../games/LEM/lem.asm lem.bin
./cvt-chip lem.bin
mv lem.c lem.h ../games
cd ..
make build_O1 && make flash

