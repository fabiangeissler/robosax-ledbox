#include "pwm_freq_test.h"
#include "avr/io.h"
#include "avr/delay.h"

#define N_2(x) (x - ((x) >> 1))
#define N_4(x) (x - ((x) >> 2))
#define N_8(x) (x - ((x) >> 3))
#define N_16(x) (x - ((x) >> 4))
#define N_32(x) (x - ((x) >> 5))
#define N_64(x) (x - ((x) >> 6))
#define N_128(x) (x - ((x) >> 7))

void pwm_top_freq_test_start()
{
	TCCR1A = (0 << COM1A1) | (0 << COM1A0) |
			 (0 << COM1B1) | (0 << COM1B0) |
			 (1 << COM1C1) | (1 << COM1C0) |
			 (1 << WGM11) | (0 << WGM10);
	TCCR1B = (1 << WGM13) | (1 << WGM12) |
			 (0 << CS12) | (0 << CS11) | (1 << CS10); // Prescaler 1

	for(int i = 0; i <= 0xFFFF; i += 0x100)
	{
		ICR1 = i;
		OCR1C = N_32(i);

		_delay_ms(500);

		ICR1 = (0xFFFF - i);
		OCR1C = N_32(0xFFFF - i);

		_delay_ms(500);
	}

	TCCR1A = 0;
	TCCR1B = 0;
}

void pwm_ps_freq_test_start()
{
	TCCR1A = (0 << COM1A1) | (0 << COM1A0) |
			 (0 << COM1B1) | (0 << COM1B0) |
			 (1 << COM1C1) | (1 << COM1C0) |
			 (1 << WGM11) | (0 << WGM10);
	TCCR1B = (1 << WGM13) | (1 << WGM12) |
			 (0 << CS12) | (0 << CS11) | (1 << CS10); // Prescaler 1

	ICR1 = 0xFF;
	OCR1C = N_32(0xFF);

	for(int i = 1; i <= 5; i += 1)
	{
		_delay_ms(1000);
		TCCR1B &= ~((1 << CS12) | (1 << CS11) | (1 << CS10));
		TCCR1B |= (6 - i);
		_delay_ms(1000);
		TCCR1B &= ~((1 << CS12) | (1 << CS11) | (1 << CS10));
		TCCR1B |= i;
	}

	TCCR1A = 0;
	TCCR1B = 0;
}
