/*
 * settings.h
 *
 *  Created on: 23.10.2017
 *      Author: fabiangeissler
 */

#ifndef SETTINGS_H_
#define SETTINGS_H_

#include "stdint.h"
#include "periphery/systick.h"

// In uncommented the following switch will prevent the SETTINGS_BUS_CSTICKS assert error
// by setting the define to a fixed constant of 1. Do not use if the assertion does not
// fail.
#define SETTINGS_BUS_CSTICKS_ASSERT_ERROR_SWITCH

// The following switch enables RGB LED brightness linearization if uncommented.
//#define SETTINGS_BRIGHTNESS_LINEARIZATION

// Global RGB LED bit setting.
#define SETTINGS_PWM_BIT_COUNT		14
#define SETTINGS_PWM_TOP				(uint16_t)(~(0xFFFF << SETTINGS_PWM_BIT_COUNT))

// IR LED Frequency in Hz
#define SETTINGS_IR_FREQUENCY		38000
// IR LED baud rate
#define SETTINGS_IR_BAUD				400
// IR LED data buffer size in byte
#define SETTINGS_IR_BSIZE			10

// Global bus UART interface baud rate setting.
#define SETTINGS_BUS_BAUD			9600
#define SETTINGS_BUS_PACKETSIZEMAX	128

// Collision avoidance steps.
#define SETTINGS_BUS_CASTEPS 		50
// User priority Steps.
#define SETTINGS_BUS_USERPRIOSTEPS	5

// Bus delays in milliseconds.
// Collision avoidance period step time (uses IR timer)
#define SETTINGS_BUS_CASTEPTIME		(1.0 / (float)SETTINGS_IR_FREQUENCY)
// Delay before starting a transmission.
#define SETTINGS_BUS_TXDELAY			5
// Delay before listening.
#define SETTINGS_BUS_RXDELAY			2
// Timeout for single byte transmission.
#define SETTINGS_BUS_BYTETIMEOUT		10
// Timeout for single byte transmission.
#define SETTINGS_BUS_ERRORDELAY		1

#endif /* SETTINGS_H_ */
