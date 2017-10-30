/*
 * pwm.h
 *
 *  Created on: 22.10.2017
 *      Author: fabiangeissler
 */

#ifndef PWM_H_
#define PWM_H_

#include "stdint.h"
#include "settings.h"

#define PWM_BITS		SETTINGS_PWM_BIT_COUNT

// Initialize TIMER1 for the PWM output on OC1A and OC1C.
// Don't forget to enable global interrupts when using this module!
// > sei(); <
void pwm_init();

// Set the PWM compare value A.
// A value of 0x0000 generates the highest average output voltage and
// a value of 0xFFFF generates an average output voltage of zero volts.
void pwm_set_ocra(uint16_t val);

// Set the PWM compare value B.
// A value of 0x0000 generates the highest average output voltage and
// a value of 0xFFFF generates an average output voltage of zero volts.
void pwm_set_ocrb(uint16_t val);

#endif /* PWM_H_ */
