/*
 * pwm_hybrid.h
 *
 *  Created on: 23.10.2017
 *      Author: fabiangeissler
 */

#ifndef PWM_HYBRID_H_
#define PWM_HYBRID_H_

#include "stdint.h"
#include "settings.h"

#ifndef SETTINGS_PWM8_EXTENSION_DITHER

#define PWM_HYBRID_BITS		SETTINGS_PWM_BIT_COUNT

// Initialize TIMER0 for the PWM output on OC0A.
// Don't forget to enable global interrupts when using this module!
// > sei(); <
void pwm_hybrid_init();

// Set the PWM compare value.
// A value of 0x0000 generates the highest average output voltage and
// a value of 0xFFFF generates an average output voltage of zero volts.
void pwm_hybrid_set(uint16_t val);

#endif

#endif /* PWM_HYBRID_H_ */
