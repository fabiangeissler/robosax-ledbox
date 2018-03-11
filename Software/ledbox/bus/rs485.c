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
// Packet header reception buffer
volatile PACKET _rs485_rx_packet;
// Packet header buffer
volatile PACKET *_rs485_packet;
// Lock for the reception buffer
volatile uint8_t _rs485_flags;
// Buffer address counter
volatile uint16_t _rs485_addr;

void rs485_init()
{
	// Set TXEN low
	RS485_TXEN_PORT &= ~(1 << RS485_TXEN_BIT);
	// Set TXEN as output
	RS485_TXEN_DDR = (1 << RS485_TXEN_BIT);

	// Set double rate if needed.
	UCSR0A = (USE_2X << U2X0);
	// Nothing enabled.
	UCSR0B = 0;
	// 8 Bit data size.
	UCSR0C = (1 << UCSZ01) | (1 << UCSZ00);

	// Set baud rate.
	UBRR0H = UBRRH_VALUE;
	UBRR0L = UBRRL_VALUE;

	// set data buffer in packet header
	_rs485_rx_packet.data = _rs485_rx_data;

	// Finished is default flag if no operation is running
	_rs485_flags = RS485_FLAG_FINISHED;
}

// Start UART transmission (lock pins)
// The data buffer p must be allocated at least until the FINISHED
// flag is set. The data is not copied but directly read from the buffer.
bool rs485_starttx(PACKET* p)
{
	// Exit if already running.
	if(rs485_running())
	{
		return false;
	}

	// Clear flags and set MODE
	_rs485_flags = RS485_FLAG_MODE_TX1_RX0;

	// Set TXEN high
	RS485_TXEN_PORT |= (1 << RS485_TXEN_BIT);

	// Enable transmitter and receiver, enable transmit interrupts
	UCSR0B = (1 << TXEN0) | (1 << UDRIE0) | (1 << TXCIE0);

	// Set tx data buffer address to zero.
	_rs485_addr = 0;

	// Set first transmission data byte.
	// UDR0 = buf[0]; // does not need to be set, interrupt handler will do

	// Set buffer.
	_rs485_packet = p;

	return true;
}

// Start UART reception (lock pins)
// Returns the address of the buffer that receives the data or zero
// if an error occurred.
PACKET* rs485_startrx()
{
	// Exit if already running.
	if(rs485_running())
	{
		return 0;
	}

	// Set tx data buffer address to zero.
	_rs485_addr = 0;

	// Set flags (MODE = 0)
	_rs485_flags = 0;

	// Enable receiver, enable receive interrupt
	UCSR0B = (1 << RXEN0) | (1 << RXCIE0);

	return (uint8_t*)&_rs485_rx_packet;
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

// Return current buffer read/write index.
// Can be used to retransmit only part of the data after error.
uint16_t rs485_index()
{
	return _rs485_addr - 1;
}

// Cancel current operation
void rs485_cancel()
{
	// Set TXEN low
	RS485_TXEN_PORT &= ~(1 << RS485_TXEN_BIT);

	// Stop the UART peripheral and disable all interrupts.
	UCSR0B = 0;

	// Error in transmission
	_rs485_flags |= RS485_FLAG_CANCEL | RS485_FLAG_FINISHED;
}

// RX Complete interrupt is executed after the input shift
// register contents are moved to the UDR register.
// In transmission mode the received byte is compared to the
// sent byte to check against transmission failures.
// In reception mode
ISR(USART_RX_vect)
{
	uint8_t srerr = UCSR0A & ( (1 << FE0) | (1 << DOR0) | (1 << UPE0) );
	uint8_t byte = UDR0;

	if(srerr)
	{
		// Stop the UART peripheral and disable all interrupts.
		UCSR0B = 0;

		// Error in transmission
		if(srerr & (1 << FE0))
			_rs485_flags |= RS485_FLAG_RX_FRAME_ERR;

		if(srerr & (1 << DOR0))
			_rs485_flags |= RS485_FLAG_RX_OVERRUN;

		if(srerr & (1 << UPE0))
			_rs485_flags |= RS485_FLAG_RX_PARITY_ERR;

		// Finished
		_rs485_flags |= RS485_FLAG_FINISHED;
	}

	if(_rs485_flags & RS485_FLAG_HEAD)
	{
		_rs485_rx_packet.data[_rs485_addr] = byte;

		// Increment address.
		++_rs485_addr;

		// Buffer filled or entirely read
		if(_rs485_addr == _rs485_rx_packet.size)
		{
			// Stop the UART RX peripheral and disable the interrupt.
			UCSR0B &= ~((1 << RXEN0) | (1 << RXCIE0));

			// Set FINISHED flag
			_rs485_flags |= RS485_FLAG_FINISHED;
		}
	}
	else
	{
		((char*)&_rs485_rx_packet)[_rs485_addr] = byte;

		// Increment address.
		++_rs485_addr;

		if(_rs485_addr == PACKET_HEADERSIZE)
		{
			_rs485_addr = 0;
			_rs485_flags |= RS485_FLAG_HEAD;
		}
	}
}

// UDR Empty interrupt is executed when the UDR contents are
// moved to the TX shift register, just as the transmission
// is about to start.
// A new byte of data is loaded into the UDR.
ISR(USART_UDRE_vect)
{
	if(_rs485_flags & RS485_FLAG_HEAD)
	{
		if(_rs485_addr < _rs485_packet->size)
		{
			// Load new byte.
			UDR0 = _rs485_packet->data[_rs485_addr];
		}

		// Increment buffer address.
		++_rs485_addr;
	}
	else
	{
		// Load new byte.
		UDR0 = ((char*)_rs485_packet)[_rs485_addr];

		// Increment buffer address.
		++_rs485_addr;

		if(_rs485_addr == PACKET_HEADERSIZE)
		{
			_rs485_addr = 0;
			_rs485_flags |= RS485_FLAG_HEAD;
		}
	}
}

// TX Complete interrupt is executed when all bits in the
// transmission shift register have been shifted out.
// Stop the UART peripheral if all data has been sent.
ISR(USART_TX_vect)
{
	if((_rs485_addr == _rs485_packet->size) && (_rs485_flags & RS485_FLAG_HEAD))
	{
		// Set TXEN low
		RS485_TXEN_PORT &= ~(1 << RS485_TXEN_BIT);

		// Stop the UART peripheral and disable all interrupts.
		UCSR0B &= ~((1 << TXEN0) | (1 << UDRIE0) | (1 << TXCIE0));

		// Deactivate TXMODE. The FINISHED flag is always set later in the RX ISR.
		_rs485_flags &= ~RS485_FLAG_MODE_TX1_RX0;
	}
}
