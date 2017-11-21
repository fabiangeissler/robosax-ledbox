/*
 * systick.c
 *
 *  Created on: 23.10.2017
 *      Author: fabiangeissler
 */

#include "../periphery/systick.h"

#include "avr/io.h"
#include "avr/interrupt.h"

volatile uint32_t _systick_counter;

// Initialize TIMER1 overflow interrupt for systick generation.
// The pwm_init() method must be executed before this initialization!
// Don't forget to enable global interrupts when using this module!
// > sei(); <
void systick_init()
{
	TIMSK1 |= (1 << TOIE1);

	_systick_counter = 0;
}

// Return the systick counter.
// Convert seconds to ticks using the SYSTICK_TICKS macro.
uint32_t systick_getticks()
{
	return _systick_counter;
}

// Interrupt routine for the Timer1 overflow interrupt
ISR(TIMER1_OVF_vect)
{
	++_systick_counter;
}
