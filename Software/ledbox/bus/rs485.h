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

// UART communication baud rate
#define RS485_BAUD SETTINGS_BUS_BAUD

enum rs485_flag {
	RS485_FLAG_RXLOCK = 0x01,	// Will not receive anything until the lock is disabled.
	RS485_FLAG_TXERR = 0x02,		// Error in operation.
	RS485_FLAG_PARERR = 0x04,	// Parity error occurred.
	RS485_FLAG_TXMODE = 0x08,	// Peripheral in transmission mode.
	RS485_FLAG_RXMODE = 0x10		// Peripheral in reception mode.
};

// Init buffers and UART peripheral
void rs485_init();

// Start UART transmission (lock pins)
bool rs485_starttx(uint8_t* buf, uint16_t size);

// Start UART reception (lock pins)
// The buf parameter sets the address to write to and can be zero
// so the data is written to the default buffer. The size parameter
// gives the maximum amount of bytes to be stored in the buffer.
// Returns the address of the buffer that receives the data or zero
// if an error occurred.
uint8_t* rs485_startrx(uint8_t* buf, uint16_t size);

// Check if UART is still in reception or transmission
bool rs485_running();

#endif /* RS485_H_ */
