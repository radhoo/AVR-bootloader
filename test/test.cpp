#include <util/delay.h>
#include <avr/io.h>

#define F_CPU 8000000

int main(void) {
	DDRD |= 1 << PD4;

	while (1) {
	PORTD |= 1 << PD4;
	_delay_ms(5);
	PORTD &= ~(1 << PD4);
	_delay_ms(1000);
	}
}
