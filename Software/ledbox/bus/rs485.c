/*
 * uart.c
 *
 *  Created on: 01.05.2017
 *      Author: fabian
 */

#include "rs485.h"

#include "avr/io.h"
#include "avr/interrupt.h"
#include "packet.h"

#define BAUD		RS485_BAUD
#include "util/setbaud.h"

#include "../software/ringbuffer.h"

// Standard reception buffer if no other specified
uint8_t _rs485_rx_data[SETTINGS_BUS_PACKETSIZEMAX - PACKET_HEADERSIZE];
// Lock for the reception buffer
volatile uint8_t _rs485_flags;
// RX/TX buffer pointer
volatile uint8_t* _rs485_buffer;
// Buffer address counter
volatile uint16_t _rs485_addr;
// Buffer address counter
volatile uint16_t _rs485_size;
// Address of last sent byte
volatile uint16_t _rs485_raddr;

void rs485_init()
{
	// Set double rate if needed.
	UCSR0A = (USE_2X << U2X0);
	// Nothing enabled.
	UCSR0B = 0;
	// 8 Bit data size.
	UCSR0C = (1 << UCSZ01) | (1 << UCSZ00);

	// Set baud rate.
	UBRR0H = UBRRH_VALUE;
	UBRR0L = UBRRL_VALUE;
}

// Start UART transmission (lock pins)
bool rs485_starttx(uint8_t* buf, uint16_t size)
{
	// Clear flags
	_rs485_flags &= RS485_FLAG_RXLOCK;

	// Exit if already running.
	if(rs485_running())
	{
		_rs485_flags |= RS485_FLAG_TXERR;
		return false;
	}

	// Enable transmitter and receiver, enable transmit interrupts
	UCSR0B = (1 << RXEN0) | (1 << TXEN0) | (1 << UDRIE0) | (1 << TXCIE0) | (1 << RXCIE0);

	// Set tx data buffer address to zero.
	_rs485_addr = 0;
	_rs485_raddr = 0;

	// Set TXMODE flags
	_rs485_flags |= RS485_FLAG_TXMODE;

	// Set first transmission data byte.
	UDR0 = buf[0];

	// Set UART buffer.
	_rs485_buffer = buf;
	_rs485_size = size;

	return true;
}

// Start UART reception (lock pins)
// The buf parameter sets the address to write to and can be zero
// so the data is written to the default buffer. The size parameter
// gives the maximum amount of bytes to be stored in the buffer.
// Returns the address of the buffer that receives the data or zero
// if an error occurred.
uint8_t* rs485_startrx(uint8_t* buf, uint16_t size)
{
	if(buf == 0)
		_rs485_buffer = _rs485_rx_data;
	else
		_rs485_buffer = buf;

	// Set tx data buffer address to zero.
	_rs485_addr = 0;
	_rs485_raddr = 0;

	// Set flags
	_rs485_flags &= RS485_FLAG_RXLOCK;
	_rs485_flags |= RS485_FLAG_RXMODE;

	return (uint8_t*)_rs485_buffer;
}

// Check if UART is still in reception or transmission
bool rs485_running()
{
	return (UCSR0B &= ((1 << RXEN0) | (1 << TXEN0)));
}

// Return state
uint8_t rs485_flags()
{
	return _rs485_flags;
}

// RX Complete interrupt is executed after the input shift
// register contents are moved to the UDR register.
// In transmission mode the received byte is compared to the
// sent byte to check against transmission failures.
// In reception mode
ISR(USART_RX_vect)
{
	uint8_t byte = UDR0;

	if(_rs485_flags & RS485_FLAG_TXMODE)
	{
		// Transmission mode.
		if(byte != _rs485_buffer[_rs485_raddr])
		{
			// Error in transmission
			_rs485_flags |= RS485_FLAG_TXERR;
			// Stop the UART peripheral and disable all interrupts.
			UCSR0B = 0;
		}

		// Increment last transmitted address.
		++_rs485_raddr;
	}
	else if(_rs485_flags & RS485_FLAG_RXMODE)
	{
		// Reception mode
		_rs485_buffer[_rs485_raddr] = byte;

		// Increment address.
		++_rs485_raddr;
	}

	if(_rs485_raddr == _rs485_size)
	{
		// Stop the UART RX peripheral and disable the interrupts.
		UCSR0B &= ~((1 << RXEN0) | (1 << RXCIE0));

		// Deactivate RXMODE and set FINISHED flag
		_rs485_flags &= ~RS485_FLAG_RXMODE;
		_rs485_flags |= RS485_FLAG_FINISHED;
	}
}

// UDR Empty interrupt is executed when the UDR contents are
// moved to the TX shift register, just as the transmission
// is about to start.
// A new byte of data is loaded into the UDR.
ISR(USART_UDRE_vect)
{
	// Increment buffer address.
	++_rs485_addr;

	// Load new byte.
	UDR0 = _rs485_buffer[_rs485_addr];
}

// TX Complete interrupt is executed when all bits in the
// transmission shift register have been shifted out.
// Stop the UART peripheral if all data has been sent.
ISR(USART_TX_vect)
{
	if(_rs485_addr == (_rs485_size - 1))
	{
		// Stop the UART peripheral and disable all interrupts.
		UCSR0B &= ~((1 << TXEN0) | (1 << UDRIE0) | (1 << TXCIE0));

		// Deactivate TXMODE. The FINISHED flag is always set in the RX ISR.
		_rs485_flags &= ~RS485_FLAG_TXMODE;
	}
}
