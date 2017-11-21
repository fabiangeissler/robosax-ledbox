/*
 * uart.c
 *
 *  Created on: 01.05.2017
 *      Author: fabian
 */

#include "uart.h"
#include "avr/io.h"
#include "avr/interrupt.h"

#define BAUD		UART_BAUD
#include "util/setbaud.h"

#include "../software/ringbuffer.h"

#ifndef MIN
	#define MIN(x,y) ((x > y) ? y : x)
#endif

uint8_t uart_rx_data[UART_BUFFER];
uint8_t uart_tx_data[UART_BUFFER];
RINGBUFFER uart_rx_buffer, uart_tx_buffer;

volatile char uart_terminator;
volatile bool uart_terminator_received;

void uart_init()
{
	UCSR0A = (USE_2X << U2X0);
	UCSR0B = (0 << RXEN0) | (0 << TXEN0) | (1 << RXCIE0);
	UCSR0C = (1 << UCSZ01) | (1 << UCSZ00);
	UBRR0H = UBRRH_VALUE;
	UBRR0L = UBRRL_VALUE;

	ringbuffer_init(&uart_rx_buffer, uart_rx_data, UART_BUFFER);
	ringbuffer_init(&uart_tx_buffer, uart_tx_data, UART_BUFFER);

	uart_terminator = '\n';
	uart_terminator_received = false;
}

// Start UART operation (lock pins)
void uart_start()
{
	UCSR0B |= (1 << RXEN0) | (1 << TXEN0);
}

// End UART operation (unlock pins)
void uart_stop()
{
	UCSR0B &= ~((1 << RXEN0) | (1 << TXEN0));
}

bool uart_puts(char* str)
{
	while(*str != 0)
		if(uart_write_byte(*str++) == false)
			return false;

	return true;
}

uint8_t uart_write(uint8_t* data, uint8_t len)
{
	for(int i = 0; i < len; ++i)
		if(uart_write_byte(*data++) == false)
			return i;

	return len;
}

bool uart_write_byte(uint8_t data)
{
	bool res = ringbuffer_write(&uart_tx_buffer, data);
	UCSR0B |= (1 << UDRIE0);
	return res;
}

uint8_t uart_read(uint8_t* data, uint8_t len)
{
	uint8_t to = MIN(uart_bytes_available(), len);

	for(int i = 0; i < to; ++i)
		*data++ = uart_read_byte();

	return to;
}

uint8_t uart_read_byte()
{
	return ringbuffer_read(&uart_rx_buffer);
}

bool uart_getl(char* str)
{
	if(!uart_bytes_available())
		return false;

	char c;

	while(((c = uart_read_byte()) != uart_terminator))
	{
		*str++ = c;

		// no terminator found
		if(!uart_bytes_available())
			return false;
	}

	// terminate string
	*str = 0;

	return true;
}

uint8_t uart_bytes_available()
{
	return ringbuffer_count(&uart_rx_buffer);
}

bool uart_terminator_reached()
{
	bool ret = uart_terminator_received;
	uart_terminator_received = false;

	return ret;
}

// Returns, whether the TX buffer is empty and transmission ended.
bool uart_txfinished()
{
	return ((ringbuffer_count(&uart_tx_buffer) == 0) && (UCSR0A & TXC0));
}

void uart_set_terminator(char t)
{
	uart_terminator = t;
}

ISR(USART_RX_vect)
{
	uint8_t val = UDR0;

	if(val == uart_terminator)
		uart_terminator_received = true;

	ringbuffer_write(&uart_rx_buffer, val);
}

ISR(USART_UDRE_vect)
{
	if(ringbuffer_count(&uart_tx_buffer))
		UDR0 = ringbuffer_read(&uart_tx_buffer);
	else
		UCSR0B &= ~(1 << UDRIE0);
}
