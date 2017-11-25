///*
// * uart.h
// *
// *  Created on: 01.05.2017
// *      Author: fabian
// */
//
//#ifndef UART_H_
//#define UART_H_
//
//#include "../settings.h"
//#include "stdint.h"
//#include "stdbool.h"
//
//// UART communication baud rate
//#define UART_BAUD SETTINGS_BUS_BAUD
//
//// UART transmit and receive buffer size
//// Uses twice the memory of the specified value in bytes
//#define UART_BUFFER 100
//
//// Init buffers and UART peripheral
//void uart_init();
//
//// Start UART operation (lock pins)
//void uart_start();
//
//// End UART operation (unlock pins)
//void uart_stop();
//
//// Write a string to the UART TX buffer
//// Returns false if the string did not fit entirely into the TX buffer.
//bool uart_puts(char* str);
//
//// Write a byte sequence to the UART TX buffer
//// Writes a maximum of len bytes from data to the TX buffer
//// Returns the number of bytes actually written
//// (in case of buffer overflow).
//uint8_t uart_write(uint8_t* data, uint8_t len);
//
//// Write a single byte to the UART TX buffer
//// Returns false if the buffer overflows.
//bool uart_write_byte(uint8_t data);
//
//// Read a byte sequence from the UART RX buffer
//// The data array is filled with bytes from the RX buffer.
//// A maximum of len bytes are read.
//// The number of bytes read is returned.
//uint8_t uart_read(uint8_t* data, uint8_t len);
//
//// Read a single byte from the UART RX buffer
//// Returns zero if no byte could be read.
//uint8_t uart_read_byte();
//
//// Read a string until the specified terminator is reached.
//// Returns false if no terminator is reached.
//bool uart_getl(char* str);
//
//// Returns the number of bytes in the RX buffer.
//uint8_t uart_bytes_available();
//
//// Returns, whether the specified terminator has been reached.
//bool uart_terminator_reached();
//
//// Returns, whether the TX buffer is empty and transmission ended.
//bool uart_txfinished();
//
//// Specify the terminator.
//void uart_set_terminator(char t);
//
//#endif /* UART_H_ */
