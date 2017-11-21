/*
 * pwm_dither.h
 *
 *  Created on: 21.10.2017
 *      Author: fabiangeissler
 */

#ifndef PWM_DITHER_H_
#define PWM_DITHER_H_

#include "stdint.h"

#include "../periphery/settings.h"

#ifdef SETTINGS_PWM8_EXTENSION_DITHER

// Sets the dither bit count automatically to fit the resolution
// of the given compare value. To avoid flickering the PWM frequency
// changes for every dither bit count. For LEDs or drivers with
// not-constant PWM frequency to brightness function the automatic
// switching is not applicable.
//#define PWM_DITHER_AUTOMATIC

#ifndef PWM_DITHER_AUTOMATIC
	#define PWM_DITHER_BITS		SETTINGS_PWM_BIT_COUNT
#endif

// Initialize TIMER0 for the PWM output on OC0A.
// Don't forget to enable global interrupts when using this module!
// > sei(); <
void pwm_dither_init();

// Set the PWM compare value.
// A value of 0x0000 generates the highest average output voltage and
// a value of 0xFFFF generates an average output voltage of zero volts.
void pwm_dither_set(uint16_t val);

#endif

#endif /* PWM_DITHER_H_ */
