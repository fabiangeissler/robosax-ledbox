/*
 * push.c
 *
 *  Created on: 30.10.2017
 *      Author: fabian
 */

#include "push.h"

void push_init()
{
	PUSH_DDR &= ~((1 << PUSH1) | (1 << PUSH2));
	PUSH_PORT &= ~((1 << PUSH1) | (1 << PUSH2));
}

void push_check(int8_t *push1, int8_t *push2)
{
	static uint8_t oldstate = 0xF;

	uint8_t state = ((PUSH_PIN >> PUSH1) & 1) | (((PUSH_PIN >> PUSH2) << 2) & 0b100);

	oldstate <<= 1;
	oldstate &= 0b1010;
	oldstate |= state;

	if(push1 != 0)
	{
		switch(oldstate & 0b11)
		{
		case 0b10:
			*push1 = 1;
			break;
		case 0b01:
			*push1 = -1;
			break;
		default:
			*push1 = 0;
		}
	}

	if(push2 != 0)
	{
		switch(oldstate & 0b1100)
		{
		case 0b1000:
			*push2 = 1;
			break;
		case 0b0100:
			*push2 = -1;
			break;
		default:
			*push2 = 0;
		}
	}
}
