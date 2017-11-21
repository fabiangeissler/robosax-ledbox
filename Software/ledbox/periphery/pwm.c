/*
 * pwm.c
 *
 *  Created on: 22.10.2017
 *      Author: fabiangeissler
 */

#include "../periphery/pwm.h"
#include "../settings.h"

#include "avr/io.h"

// Prescaler 1
#define PWM_PS		((0 << CS12) | (0 << CS11) | (1 << CS10))

// Initialize TIMER1 for the PWM output on OC1A and OC1C.
void pwm_init()
{
	TCCR1A = (1 << COM1A1) | (1 << COM1A0) |
			 (1 << COM1B1) | (1 << COM1B0) |
			 (1 << WGM11) | (0 << WGM10);
	TCCR1B = (1 << WGM13) | (1 << WGM12) | PWM_PS; // Prescaler 1
	ICR1 = SETTINGS_PWM_TOP;
}

// Set the PWM compare value.
// A value of 0x0000 generates the highest average output voltage and
// a value of 0xFFFF generates an average output voltage of zero volts.
void pwm_set_ocra(uint16_t val)
{
	// set CR
	OCR1A = (SETTINGS_PWM_TOP - val);
}

// Set the PWM compare value.
// A value of 0x0000 generates the highest average output voltage and
// a value of 0xFFFF generates an average output voltage of zero volts.
void pwm_set_ocrb(uint16_t val)
{
	// set CR
	OCR1B = (SETTINGS_PWM_TOP - val);
}
