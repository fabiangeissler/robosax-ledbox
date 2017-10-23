/*
 * uart.c
 *
 *  Created on: 01.05.2017
 *      Author: fabian
 */

#include "uart.h"
#include "avr/io.h"

#ifndef MIN
	#define MIN(x,y) ((x > y) ? y : x)
#endif

#define UART_UBRR ((F_CPU + UART_BAUD * 8) / (UART_BAUD * 16) - 1)

void uart_init()
{
	UCSR0A = 0;
	UCSR0B = (1 << RXEN0) | (1 << TXEN0);
	UCSR0C = (1 << UCSZ01) | (1 << UCSZ00);
	UBRR0H = (UART_UBRR >> 8) & 0xFF;
	UBRR0L = UART_UBRR & 0xFF;
}

void uart_puts(char* str)
{
	while(*str != 0)
		uart_write_byte(*str++);
}

void uart_write(uint8_t* data, uint8_t len)
{
	for(int i = 0; i < len; ++i)
		uart_write_byte(*data++);
}

void uart_write_byte(uint8_t data)
{
	// wait for buffer empty
	while((UCSR0A & (1 << UDRE0)) == 0);

	// set data to send
	UDR0 = data;
}
