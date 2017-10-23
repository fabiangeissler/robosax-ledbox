/*
 * uart.h
 *
 *  Created on: 01.05.2017
 *      Author: fabian
 */

#ifndef UART_H_
#define UART_H_

#include "stdint.h"
#include "stdbool.h"

#define UART_BAUD 9600UL

void uart_init();

void uart_puts(char* str);

void uart_write(uint8_t* data, uint8_t len);

void uart_write_byte(uint8_t data);

#endif /* UART_H_ */
