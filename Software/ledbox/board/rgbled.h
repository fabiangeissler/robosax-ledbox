/*
 * rgbled.h
 *
 *  Created on: 30.10.2017
 *      Author: fabian
 */

#ifndef RGBLED_H_
#define RGBLED_H_

#include "../software/color.h"
#include "stdint.h"

void rgb_init();

void rgb_setcolor(COLOR_RGB c);

void rgb_setwhitecorrection(uint16_t corr_r, uint16_t corr_g, uint16_t corr_b);

#endif /* RGBLED_H_ */
