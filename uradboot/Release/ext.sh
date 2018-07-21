#!/bin/sh
avrdude -V -p atmega1284p -c usbasp -U flash:r:ext.hex:i