# AVR-bootloader
A simple bootloader  example for AVR microcontrollers

The bootloader encloses the main application code in an array, dumps it at runtime at flash address 0, and jumps there to execute.
The fuse settings must have BOOTRST enabled, and the Bootloader code must have Ttext=0x1E000 .

Full details available here:  https://www.pocketmagic.net/simple-avr-bootloader-tutorial/ 
