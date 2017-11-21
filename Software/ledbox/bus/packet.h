/*
 * packet.h
 *
 *  Created on: 05.11.2017
 *      Author: fabian
 */

#ifndef PACKET_H_
#define PACKET_H_

#include "stdint.h"
#include "crc.h"

enum command_type {
	PACKET_REQ = 0,
	PACKET_ACK,
	PACKET_ERR
};

typedef struct {
	uint16_t rxaddr;
	uint16_t txaddr;
	uint16_t num;
	uint16_t size;
	uint8_t *data;
	uint32_t crc32;
} PACKET;

// PACKET struct size minus the size of the data array pointer
#define PACKET_OVERHEAD (sizeof(PACKET) - sizeof(uint8_t*))

// Reads bytes from data and generates a packet with the given size.
// Returns a pointer to the next unread byte of data.
uint8_t* packet_data_generate(
			PACKET* p,
			uint16_t rxaddr,
			uint16_t txaddr,
			uint16_t num,
			uint16_t data_size,
			uint8_t *data,
			uint16_t packet_size
		);

// Generates an command packet.
// The buffer data_buff must be given to store the given values.
void packet_command_generate(
			PACKET *p,
			uint16_t rxaddr,
			uint16_t txaddr,
			uint16_t cmd,
			uint32_t cmd_param0,
			uint32_t cmd_param1,
			uint8_t buffer[10]
		);

#endif /* PACKET_H_ */
