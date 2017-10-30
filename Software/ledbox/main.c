/*
 * main.c
 *
 *  Created on: 22.10.2017
 *      Author: fabiangeissler
 */

#include "avr/io.h"
#include "avr/interrupt.h"
#include "avr/pgmspace.h"
#include "util/delay.h"

#include "hardware/pwm_dither.h"
#include "hardware/pwm_hybrid.h"
#include "hardware/pwm.h"
#include "hardware/systick.h"
#include "hardware/settings.h"
#include "software/brightness.h"

int main()
{
	// Set OCR1A:B and OCR2B pin to output
	DDRB |= (1 << PB1) | (1 << PB2);
	DDRD |= (1 << PD3);

	// Enable global interrupts
	sei();

	PORTD |= (1 << PD3);

	_delay_ms(1000);

	// init PWM
	pwm_set_ocra(0xFFFF);
	pwm_set_ocrb(0xFFFF);
	pwm_init();

//	systick_init();

//	pwm_dither_init();
//	pwm_dither_set(0xFFFF);

	pwm_hybrid_init();
	pwm_hybrid_set(0);


	_delay_ms(1000);

	uint8_t val = 255;
	int8_t del = -1;
	uint16_t cval;
//	uint32_t time = systick_getticks();
//	uint32_t fade_ltime = time;

//	pwm_top_freq_test_start();

	while(1)
	{
//		time = systick_getticks();

		_delay_ms(50);


//		if(time - fade_ltime >= SYSTICK_TICKS_MS(25))
//		{
//			fade_ltime = time;

			val += del;

			cval = pgm_read_word(&(brightness_lut[val]));

			if(val <= 0)
				del = 1;
			else if (val >= 255)
				del = -1;

//			pwm_set_ocra(cval);
//			pwm_set_ocrb(cval);
//			pwm_dither_set(cval);
			pwm_hybrid_set(cval);
//		}
	}
}
