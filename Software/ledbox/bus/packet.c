/*
 * packet.c
 *
 *  Created on: 05.11.2017
 *      Author: fabian
 */

#include "packet.h"

#ifndef MIN
#	define MIN(a,b)	((a < b) ? a : b)
#endif

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
		)
{
	if(packet_size <= PACKET_HEADERSIZE)
		return 0;

	// Packet data size is minimum of data size and maximum packet data size.
	uint16_t pdsize = MIN(packet_size - PACKET_HEADERSIZE, data_size);

	p->rxaddr = rxaddr;
	p->txaddr = txaddr;
	p->pnum = num;
	p->cmd = cmd;
	p->size = pdsize;
	p->data = data;
	p->crc32 = 0xFFFFFFFF;

	// Calculate packet struct CRC without data pointer and CRC field
	p->crc32 = crc32_bytes((uint8_t*)p, PACKET_HEADERSIZE - sizeof(uint32_t), p->crc32);
	// Calculate data array CRC
	p->crc32 = crc32_bytes(p->data, p->size, p->crc32);

	return data + pdsize;
}
