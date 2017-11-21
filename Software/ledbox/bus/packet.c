/*
 * packet.c
 *
 *  Created on: 05.11.2017
 *      Author: fabian
 */

#include "packet.h"

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
		)
{
	if(packet_size <= PACKET_OVERHEAD)
		return 0;

	uint16_t pdsize = packet_size - PACKET_OVERHEAD;

	p->rxaddr = rxaddr;
	p->txaddr = txaddr;
	p->num = num;
	p->size = pdsize;
	p->data = data;
	p->crc32 = 0xFFFFFFFF;

	// Calculate packet struct CRC without data pointer and CRC field
	p->crc32 = crc32_bytes((uint8_t*)p, PACKET_OVERHEAD - sizeof(uint32_t), p->crc32);
	// Calculate data array CRC
	p->crc32 = crc32_bytes(p->data, p->size, p->crc32);

	return data + pdsize;
}

// Generates an command packet.
// The buffer data_buff must be given to store the given values.
void packet_command_generate(
			PACKET *p,
			uint16_t rxaddr,
			uint16_t txaddr,
			uint16_t cmd_num,
			uint32_t cmd_param0,
			uint32_t cmd_param1,
			uint8_t buffer[10]
		)
{
	((uint16_t*)buffer)[0] = cmd_num;
	((uint32_t*)(buffer + sizeof(uint16_t)))[0] = cmd_param0;
	((uint32_t*)(buffer + sizeof(uint16_t)))[1] = cmd_param1;

	p->rxaddr = rxaddr;
	p->txaddr = txaddr;
	p->num = 0;
	p->size = 10;
	p->data = buffer;
	p->crc32 = 0xFFFFFFFF;

	// Calculate packet struct CRC without data pointer and CRC field
	p->crc32 = crc32_bytes((uint8_t*)p, PACKET_OVERHEAD - sizeof(uint32_t), p->crc32);
	// Calculate data array CRC
	p->crc32 = crc32_bytes(p->data, p->size, p->crc32);
}
