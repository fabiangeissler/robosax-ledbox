/*
 * irled.c
 *
 *  Created on: 26 Nov 2017
 *      Author: fabian
 */

#include "irled.h"
#include "../settings.h"
#include "../periphery/irtim.h"
#include "../software/ringbuffer.h"

#include "avr/interrupt.h"

#define IRLED_COUNTTOP	(uint8_t)((float)F_CPU / ((float)SETTINGS_IR_BAUD * (float)(IRTIM_TOP + 1)) - 0.5f)

volatile bool _irled_disable = true;
volatile uint8_t _irled_byte;
volatile int8_t _irled_bitcnt;
volatile uint8_t _irled_counter;
volatile RINGBUFFER _irled_data;

uint8_t _irled_buffer[SETTINGS_IR_BSIZE];

// Initialize IR LED module.
// The irtim module needs to be initialized and global interrupts must be enabled before using this!
void irled_init()
{
	// initialize data ring buffer
	ringbuffer_init((RINGBUFFER*)&_irled_data, _irled_buffer, SETTINGS_IR_BSIZE);

	// activate irtim (TIMER2) overflow interrupt
	TIFR2 |= (1 << TOIE2);
}

void _irled_start()
{
	if(ringbuffer_count((RINGBUFFER*)&_irled_data) == 0)
		return;

	_irled_disable = false;
	_irled_byte = ringbuffer_read((RINGBUFFER*)&_irled_data);
	_irled_bitcnt = 0;
	_irled_counter = 0;
}

// Write a byte to the IR LED.
uint8_t irled_putc(uint8_t c)
{
	if(!ringbuffer_write((RINGBUFFER*)&_irled_data, c))
		return 0;

	_irled_start();

	return c;
}

// Write an array of bytes to the IR LED.
uint8_t irled_write(const uint8_t * ptr, uint8_t count)
{
	for(uint8_t i = 0; i < count; ++i)
		if(!ringbuffer_write((RINGBUFFER*)&_irled_data, ptr[i]))
		{
			count = i;
			break;
		}

	_irled_start();

	return count;
}

// Timer interrupt routine
ISR(TIMER2_OVF_vect)
{
	if(_irled_disable)
		return; // 17 cycles

	uint8_t c = _irled_counter;

	if(c == 0)
	{
		int8_t bcnt = _irled_bitcnt;
		uint8_t b = _irled_byte;

		switch(bcnt)
		{
		// start bit
		case 0:
			irtim_output(false);
			break;
		// two stop bits
		case 9:
			irtim_output(true);
			break;
		case 10:
			if(ringbuffer_count((RINGBUFFER*)&_irled_data) == 0)
			{
				_irled_disable = true;
				return;
			}

			bcnt = -1;
			_irled_byte = ringbuffer_read((RINGBUFFER*)&_irled_data);
			// output remains true
			break;
		// data bits
		default:
			// output bit
			irtim_output(b & 0x01);
			// shift byte by one bit
			_irled_byte = b >> 1;
		}

		_irled_bitcnt = bcnt + 1;

		// maximum
		// 101 cycles
	}
	// else:
	// 26/27 cycles

	++c;

	if(c > IRLED_COUNTTOP)
		_irled_counter = 0;
	else
		_irled_counter = c;
}
