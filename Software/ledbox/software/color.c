/*
 * color.c
 *
 *  Created on: 30.10.2017
 *      Author: fabian
 */

#include "color.h"

const COLOR_RGB COLOR_WHITE = { .r = 0xFF, .g = 0xFF, .b = 0xFF };
const COLOR_RGB COLOR_BLACK = { .r = 0x00, .g = 0x00, .b = 0x00 };
const COLOR_RGB COLOR_RED = { .r = 0xFF, .g = 0x00, .b = 0x00 };
const COLOR_RGB COLOR_GREEN = { .r = 0x00, .g = 0xFF, .b = 0x00 };
const COLOR_RGB COLOR_BLUE = { .r = 0x00, .g = 0x00, .b = 0xFF };
const COLOR_RGB COLOR_CYAN = { .r = 0x00, .g = 0xFF, .b = 0xFF };
const COLOR_RGB COLOR_MAGENTA = { .r = 0xFF, .g = 0x00, .b = 0xFF };
const COLOR_RGB COLOR_YELLOW = { .r = 0xFF, .g = 0xFF, .b = 0x00 };

COLOR_RGB color_fromint(uint32_t val)
{
	COLOR_RGB res = {
			.r = (val & 0xFF),
			.g = (val >> 8) & 0xFF,
			.b = (val >> 16) & 0xFF
	};

	return res;
}

COLOR_RGB color_fromrgb(uint8_t r, uint8_t g, uint8_t b)
{
	COLOR_RGB res = {
			.r = r,
			.g = g,
			.b = b
	};

	return res;
}

// h = [0:255] entspricht [0.0:1.0]
// s = [0:255] entspricht [0.0:1.0]
// v = [0:255] entspricht [0.0:1.0]
COLOR_RGB color_fromhsv(uint16_t h, uint8_t s, uint8_t v)
{
	if(s == 0)
		return color_fromrgb(v, v, v);

	uint8_t hi = (uint8_t)(h / 43);
	uint8_t f = (uint8_t)((h % 43) * 6);

	uint8_t p = (uint8_t)(((uint16_t)v * (255 - s)) >> 8);

	uint8_t q = (uint8_t)(((uint16_t)v * (255 - (uint8_t)(((uint16_t)s * f) >> 8))) >> 8);

	uint8_t t = (uint8_t)(((uint16_t)v * (255 - (uint8_t)(((uint16_t)s * (255 - f)) >> 8))) >> 8);

	switch(hi)
	{
	case 0:
		return color_fromrgb(v, t, p);
	case 1:
		return color_fromrgb(q, v, p);
	case 2:
		return color_fromrgb(p, v, t);
	case 3:
		return color_fromrgb(p, q, v);
	case 4:
		return color_fromrgb(t, p, v);
	case 5:
		return color_fromrgb(v, p, q);
	default:
		return COLOR_BLACK;
	}
}
