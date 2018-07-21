#!/bin/sh
echo "*** writing fuses for 8MHz external crystal"
# DF to clean EEPROM, D7 to keep
avrdude -p atmega1284p -c usbasp -U lfuse:w:0xDC:m -U hfuse:w:0xD8:m -U efuse:w:0xFF:m -U efuse:w:0xFF:m -U lock:w:0xFF:m 

echo "*** writting flash"
avrdude -V -p atmega1284p -c usbasp -U flash:w:uradboot.hex:i

echo "Ready on"
date
