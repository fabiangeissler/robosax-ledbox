/*
 * led.c
 *
 *  Created on: 05.11.2017
 *      Author: fabian
 */

#include "led.h"

// Initialize on board LED pins
void led_init()
{
	// Set direction to output
	LED_DDR |= ((1 << LED_P1) | (1 << LED_P2));

	// Disable pullup resistors
	LED_PORT &= ~((1 << LED_P1) | (1 << LED_P2));
}

// Set on board leds by using either LED_SET, LED_RESET or LED_TOGGLE
// ORed together with LED1, LED2 or both.
void led_set(uint8_t mode)
{
	uint8_t bitmask = ((mode & LED1) << LED_P1) | (((mode & LED2) >> 1) << LED_P2);

	switch(mode & (LED_RESET | LED_SET | LED_TOGGLE))
	{
	case LED_SET:
		LED_PORT |= bitmask;
		break;
	case LED_RESET:
		LED_PORT &= ~bitmask;
		break;
	case LED_TOGGLE:
		LED_PORT ^= bitmask;
		break;
	}
}
