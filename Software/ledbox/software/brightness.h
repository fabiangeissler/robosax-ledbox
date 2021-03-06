/*
 * brightness.h
 *
 *  Created on: 22.10.2017
 *      Author: fabiangeissler
 */

#ifndef BRIGHTNESS_H_
#define BRIGHTNESS_H_

#include "../settings.h"

#ifdef SETTINGS_BRIGHTNESS_LINEARIZATION
	#include "stdint.h"
	#include "avr/pgmspace.h"

	extern const uint16_t brightness_lut[256] PROGMEM;
#endif

#endif /* BRIGHTNESS_H_ */
