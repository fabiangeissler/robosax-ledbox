/*
 * push.h
 *
 *  Created on: 30.10.2017
 *      Author: fabian
 */

#ifndef PUSH_H_
#define PUSH_H_

#include "avr/io.h"

#define PUSH1 		PC4
#define PUSH2		PC5
#define PUSH_DDR		DDRC
#define PUSH_PIN		PINC
#define PUSH_PORT	PORTC

void push_init();

void push_check(int8_t *push1, int8_t *push2);

#endif /* PUSH_H_ */
