/*
 * systick.h
 *
 *  Created on: 23.10.2017
 *      Author: fabiangeissler
 */

#ifndef SYSTICK_H_
#define SYSTICK_H_

#include "stdint.h"
#include "../settings.h"

// Time between two systicks.
#define SYSTICK_PERIOD		((float)(1UL << SETTINGS_PWM_BIT_COUNT) / (float)F_CPU)

// Calculate the number of systicks for a given time in seconds.
// Rounded to closest integer value.
#define SYSTICK_TICKS(sec)	(uint32_t)((sec) / SYSTICK_PERIOD + 0.5)

// SYSTICK_TICKS for milliseconds
#define SYSTICK_TICKS_MS(ms)	SYSTICK_TICKS(ms / 1000.0)

// Systick uses Timer1 for generation of a system clock.
// Timer1 PWM		Timer interval
// bit setting		at 20 MHz		at 16 MHz		at 8 MHz
// 10				51.2 us			64 us			128 us
// 11				102.4 us			128 us			256 us
// 12				204.8 us			256 u			512 us
// 13				409.6 us			512 us			1024 us
// 14				819.2 us			1024 us			2048 us
// 15				1638.4 us		2048 us			4096 us

// Initialize TIMER1 overflow interrupt for systick generation.
// The pwm_init() method must be executed before this initialization!
// Don't forget to enable global interrupts when using this module!
// > sei(); <
void systick_init();

// Return the systick counter.
// Convert seconds to ticks using the SYSTICK_TICKS macro.
uint32_t systick_getticks();

#endif /* SYSTICK_H_ */
