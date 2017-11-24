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

// In uncommented the following switch will prevent the SETTINGS_BUS_LINETICKS assert error
// by setting the define to a fixed constant of 1. Do not use if the assertion does not
// fail.
#define SETTINGS_BUS_LINETICKS_ASSERT_ERROR_SWITCH

// The following switch enables RGB LED brightness linearization if uncommented.
//#define SETTINGS_BRIGHTNESS_LINEARIZATION

// Global RGB LED bit setting.
#define SETTINGS_PWM_BIT_COUNT		14
#define SETTINGS_PWM_TOP				(uint16_t)(~(0xFFFF << SETTINGS_PWM_BIT_COUNT))

// Global bus UART interface baud rate setting.
#define SETTINGS_BUS_BAUD			9600
#define SETTINGS_BUS_PACKETSIZEMAX	128

// Collision avoidance steps.
#define SETTINGS_BUS_CASTEPS 		7

// Bus delays in milliseconds.
// Priority step timing.
#define SETTINGS_BUS_PRIODELAY 		0.5
// Collision avoidance step timing.
#define SETTINGS_BUS_CADELAY			0.5
// Line settling delay.
#define SETTINGS_BUS_LINEDELAY		0.1
// Delay before starting a transmission.
#define SETTINGS_BUS_TXDELAY			0.1
// Timeout for single byte transmission.
#define SETTINGS_BUS_BYTETIMEOUT		10

#endif /* SETTINGS_H_ */
