#!/bin/sh
avrdude -p atmega1284p -c usbasp -U lfuse:w:0xDC:m -U hfuse:w:0xDF:m -U efuse:w:0xFF:m 

avrdude -V -p atmega1284p -c usbasp -U flash:w:test.hex:i

echo "Ready on"
date
