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

#include "periphery/pwm.h"
#include "periphery/pwm_hybrid.h"
#include "settings.h"
#include "periphery/systick.h"
#include "software/brightness.h"
#include "board/rgbled.h"
#include "board/push.h"
#include "board/led.h"
#include "bus/csma.h"

#define PUSH_DEBOUNCE	50

int main()
{
	// Set OCR1A:B and OCR2B pin to output
	DDRB |= (1 << PB1) | (1 << PB2);
	DDRD |= (1 << PD3);

	// Enable global interrupts
	sei();

	// init RGB LED
	rgb_init();
	//rgb_setcolor(COLOR_WHITE);

	systick_init();

	//uart_init();
	csma_init();

	// Init on board buttons and leds
	push_init();
	led_init();

	led_set(LED_SET | LED1);
	led_set(LED_RESET | LED2);

	uint8_t val = 0;
	uint32_t time = systick_getticks();
	uint32_t fade_time = time;
	uint32_t debounce_time = time;
	uint32_t corr[3] =  {0x8000, 0x8000, 0x8000};
	int32_t del = 0x0000;
	uint8_t mode = 0;

	while(1)
	{
		time = systick_getticks();

		csma_loop(time);

		if((time - fade_time) >= SYSTICK_TICKS_MS(50))
		{
//			fade_time = time;
//
//			//uart_puts("Das ist ein sehr langer test string!!");
//			rgb_setcolor(color_fromhsv(val, 255, 255));
//
//			++val;
		}

		if((time - debounce_time) >= SYSTICK_TICKS_MS(PUSH_DEBOUNCE))
		{
			debounce_time = time;

			int8_t push1, push2;

			push_check(&push1, &push2);

			switch(push1)
			{
			case 1: // button pushed
				del = 0x100;
				break;
			case -1: // button released
				del = 0;
				break;
			}

			switch(push2)
			{
			case 1: // button pushed
				del = -0x100;
				break;
			case -1: // button released
				del = 0;
				break;
			}

			if((push1 == 1) && (push1 == push2))
			{
				++mode;

				switch(mode)
				{
				case 1:
					rgb_setcolor(COLOR_GREEN);
					break;
				case 2:
					rgb_setcolor(COLOR_BLUE);
					break;
				case 0:
				default:
					rgb_setcolor(COLOR_RED);
					mode = 0;
				}

				_delay_ms(500);
				rgb_setcolor(COLOR_WHITE);
			}

			corr[mode] += del;

			if(del != 0)
			{
				rgb_setwhitecorrection(corr[0], corr[1], corr[2]);
				rgb_setcolor(COLOR_WHITE);
			}
		}
	}
}
