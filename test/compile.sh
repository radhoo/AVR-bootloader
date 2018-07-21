#!/bin/sh
avr-gcc -g -Wall -Os -mmcu=atmega1284p -c test.cpp
avr-gcc -g -Wall -Os -mmcu=atmega1284p  -o test.elf test.o
avr-objcopy -j .text -j .data -O ihex test.elf test.hex
