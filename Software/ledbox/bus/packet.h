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
	PACKET_ERR,
	PACKET_PING,
	PACKET_DATA
};

typedef struct {
	uint8_t rxaddr; 		// RX address first, important for detection.
	uint16_t size;		// size is second information needed to estimate the time of the transmission
						// which is also the time to sleep until the next transmission or possible send
						// period.
	uint8_t txaddr;		// Address of the sender. For requests and answers.
	uint16_t pnum;		// Packet number, if part of a series of packets.
	uint8_t cmd;
	uint32_t crc32;

	// Following entries are not part of the packet header which will be sent.
	uint8_t *data; 		// Packet data pointer
} PACKET;

// PACKET struct size minus the size of the data array pointer
#define PACKET_HEADERSIZE (sizeof(PACKET) - sizeof(uint8_t*))
// Requet packet size (Header + num)
#define PACKET_REQSIZE (PACKET_HEADERSIZE + sizeof(uint16_t))

// Reads bytes from data and generates a packet with the given size.
// Returns a pointer to the next unread byte of data.
uint8_t* packet_data_generate(
			PACKET* p,
			uint8_t rxaddr,
			uint8_t txaddr,
			uint16_t num,
			uint8_t cmd,
			uint16_t data_size,
			uint8_t *data,
			uint16_t packet_size
		);

#endif /* PACKET_H_ */
