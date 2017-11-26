/*
 * irled.h
 *
 *  Created on: 26 Nov 2017
 *      Author: fabian
 */

#ifndef IRLED_H_
#define IRLED_H_

#include "stdint.h"

// Initialize IR LED module.
// The irtim module needs to be initialized before using this!
void irled_init();

// Write a byte to the IR LED.
uint8_t irled_putc(uint8_t c);

// Write an array of bytes to the IR LED.
uint8_t irled_write(const uint8_t * ptr, uint8_t count);

// Timer interrupt routine
void irled_isr();

#endif /* IRLED_H_ */
