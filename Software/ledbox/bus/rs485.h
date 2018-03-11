/*
 * uart.h
 *
 *  Created on: 01.05.2017
 *      Author: fabian
 */

#ifndef RS485_H_
#define RS485_H_

#include "../settings.h"
#include "stdint.h"
#include "stdbool.h"

#define RS485_TXEN_DDR	DDRC
#define RS485_TXEN_PORT	PORTC
#define RS485_TXEN_BIT	0

// UART communication baud rate
#define RS485_BAUD SETTINGS_BUS_BAUD

enum rs485_flag {
	RS485_FLAG_MODE_TX1_RX0	= 0x01,		// Peripheral in transmission mode if set, in receive mode if cleared.
	RS485_FLAG_FINISHED 		= 0x02,		// Finished operation.
	RS485_FLAG_RX_PARITY_ERR	= 0x04,		// Receiver Parity error occurred.
	RS485_FLAG_RX_FRAME_ERR	= 0x08,		// Receiver Frame error occured.
	RS485_FLAG_RX_OVERRUN 	= 0x10,		// Receiver Data overrun.
	RS485_FLAG_HEAD			= 0x20,		// Header sent or received.
	RS485_FLAG_CANCEL		= 0x40,		// Operation canceled.
	RS485_FLAG_ERROR 		= RS485_FLAG_RX_PARITY_ERR | RS485_FLAG_RX_FRAME_ERR | RS485_FLAG_RX_OVERRUN
};

// Init buffers and UART peripheral
void rs485_init();

// Start UART transmission (lock pins)
// The data buffer p must be allocated at least until the FINISHED
// flag is set. The data is not copied but directly read from the buffer.
bool rs485_starttx(PACKET* p);

// Start UART reception (lock pins)
// Returns the address of the buffer that receives the data or zero
// if an error occurred.
PACKET* rs485_startrx();

// Check if UART is still in reception or transmission
bool rs485_running();

// Return state
uint8_t rs485_flags();

// Return current buffer read/write index.
// Can be used to retransmit only part of the data after error.
// Value may not be correct while peripheral is still running.
uint16_t rs485_index();

// Cancel current operation
void rs485_cancel();

#endif /* RS485_H_ */
