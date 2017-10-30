/*
 * pwm.c
 *
 *  Created on: 22.10.2017
 *      Author: fabiangeissler
 */

#include "pwm.h"

#include "avr/io.h"

#if (PWM_BITS == 16)
	#define PWM_TOP	0xFFFF
#else
	#define PWM_TOP	((uint16_t)(~(0xFFFF << PWM_BITS)))
#endif

// Initialize TIMER1 for the PWM output on OC1A and OC1C.
void pwm_init()
{
	TCCR1A = (1 << COM1A1) | (1 << COM1A0) |
			 (1 << COM1B1) | (1 << COM1B0) |
			 (1 << WGM11) | (0 << WGM10);
	TCCR1B = (1 << WGM13) | (1 << WGM12) |
			 (0 << CS12) | (0 << CS11) | (1 << CS10); // Prescaler 1
	ICR1 = PWM_TOP;
}

// Set the PWM compare value.
// A value of 0x0000 generates the highest average output voltage and
// a value of 0xFFFF generates an average output voltage of zero volts.
void pwm_set_ocra(uint16_t val)
{
	// Limit the compare range to the maximum bit count.
	val = (val >> (16 - PWM_BITS)) & PWM_TOP;

	// set CR
	OCR1A = val;
}

// Set the PWM compare value.
// A value of 0x0000 generates the highest average output voltage and
// a value of 0xFFFF generates an average output voltage of zero volts.
void pwm_set_ocrb(uint16_t val)
{
	// Limit the compare range to the maximum bit count.
	val = (val >> (16 - PWM_BITS)) & PWM_TOP;

	// set CR
	OCR1B = val;
}
