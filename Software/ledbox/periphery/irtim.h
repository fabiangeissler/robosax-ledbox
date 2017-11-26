/*
 * irtim.h
 *
 *  Created on: 26 Nov 2017
 *      Author: fabian
 */

#ifndef IRTIM_H_
#define IRTIM_H_

#include "stdbool.h"
#include "../settings.h"

#define IRTIM_PS		(F_CPU / (SETTINGS_IR_FREQUENCY * 256))

#if IRTIM_PS >= 1024
#	error "Set frequency not possible"
#elif IRTIM_PS >= 256
#	define	IRTIM_PS_REG		((1 << CS22) | (1 << CS21) | (1 << CS20))
#	define	IRTIM_PS_INT		1024
#elif IRTIM_PS >= 128
#	define	IRTIM_PS_REG		((1 << CS22) | (1 << CS21) | (0 << CS20))
#	define	IRTIM_PS_INT		256
#elif IRTIM_PS >= 64
#	define	IRTIM_PS_REG		((1 << CS22) | (0 << CS21) | (1 << CS20))
#	define	IRTIM_PS_INT		128
#elif IRTIM_PS >= 32
#	define	IRTIM_PS_REG		((1 << CS22) | (0 << CS21) | (0 << CS20))
#	define	IRTIM_PS_INT		64
#elif IRTIM_PS >= 8
#	define	IRTIM_PS_REG		((0 << CS22) | (1 << CS21) | (1 << CS20))
#	define	IRTIM_PS_INT		32
#elif IRTIM_PS >= 1
#	define	IRTIM_PS_REG		((0 << CS22) | (1 << CS21) | (0 << CS20))
#	define	IRTIM_PS_INT		8
#else
#	define	IRTIM_PS_REG		((0 << CS22) | (0 << CS21) | (1 << CS20))
#	define	IRTIM_PS_INT		1
#endif

#define IRTIM_TOP	(uint8_t)(((float)F_CPU / ((float)IRTIM_PS_INT * (float)SETTINGS_IR_FREQUENCY) - 0.5f))

_Static_assert((IRTIM_TOP > 1), "IRTIM_TOP must be greater than one for correct operation!");

// Initialize IR LED timer.
void irtim_init();

// Start timer.
void irtim_start();

// Stop timer.
void irtim_stop();

// Set IR LED output.
void irtim_output(bool on);

#endif /* IRTIM_H_ */
