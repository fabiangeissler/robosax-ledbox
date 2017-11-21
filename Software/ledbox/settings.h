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

#define SETTINGS_PWM_BIT_COUNT	16
#define SETTINGS_PWM_TOP			(uint16_t)(~(0xFFFF << SETTINGS_PWM_BIT_COUNT))

//#define SETTINGS_BRIGHTNESS_LINEARIZATION

#define SETTINGS_BUS_BAUD			9600
#define SETTINGS_BUS_PACKETSIZEMAX	128

// Carrier sense time - one byte of transmission duration
// 8 bit data, 1 bit start, 1 bit stop, 1 bit parity
#define SETTINGS_BUS_CSTICKS (uint8_t)((11 * SYSTICK_TICKS(1)) / SETTINGS_BUS_BAUD)
// CSTICKS must not be zero
#if (SETTINGS_BUS_CSTICKS == 0)
#	undef SETTINGS_BUS_CSTICKS
#	define SETTINGS_BUS_CSTICKS 1
#endif

// Priority time step - one Systick period
#define SETTINGS_BUS_PRIOTICKS 1
// Collision avoidance time step - one Systick period
#define SETTINGS_BUS_CATICKS 1
// Collision avoidance steps
#define SETTINGS_BUS_CASTEPS 7

#endif /* SETTINGS_H_ */
