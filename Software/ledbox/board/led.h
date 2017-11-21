/*
 * led.h
 *
 *  Created on: 05.11.2017
 *      Author: fabian
 */

#ifndef LED_H_
#define LED_H_

#include "avr/io.h"

#define LED_P1 		PC2
#define LED_P2		PC3
#define LED_DDR		DDRC
#define LED_PIN		PINC
#define LED_PORT		PORTC

enum led_mode {
	LED_SET = 0x10,
	LED_RESET = 0x20,
	LED_TOGGLE = 0x30,
	LED1 = 0x01,
	LED2 = 0x02
};

// Initialize on board LED pins
void led_init();

// Set on board leds by using either LED_SET, LED_RESET or LED_TOGGLE
// ORed together with LED1, LED2 or both.
void led_set(uint8_t mode);

#endif /* LED_H_ */
