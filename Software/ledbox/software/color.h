/*
 * color.h
 *
 *  Created on: 30.10.2017
 *      Author: fabian
 */

#ifndef COLOR_H_
#define COLOR_H_

#include "stdint.h"

typedef struct {
	uint8_t r, g, b;
} COLOR_RGB;

extern const COLOR_RGB COLOR_WHITE;
extern const COLOR_RGB COLOR_BLACK;
extern const COLOR_RGB COLOR_RED;
extern const COLOR_RGB COLOR_GREEN;
extern const COLOR_RGB COLOR_BLUE;
extern const COLOR_RGB COLOR_CYAN;
extern const COLOR_RGB COLOR_MAGENTA;
extern const COLOR_RGB COLOR_YELLOW;

COLOR_RGB color_fromint(uint32_t val);

COLOR_RGB color_fromrgb(uint8_t r, uint8_t g, uint8_t b);

// h = [0:21600] in Winkelminuten
// s = [0:255] entspricht [0.0:1.0]
// v = [0:255] entspricht [0.0:1.0]
COLOR_RGB color_fromhsv(uint16_t h, uint8_t s, uint8_t v);

#endif /* COLOR_H_ */
