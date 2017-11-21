/*
 * crc.c
 *
 *  Created on: 12.11.2017
 *      Author: fabian
 */

#include "crc.h"

uint32_t crc32_bytes(uint8_t *data, uint16_t size, uint32_t crc)
{
	uint8_t *end = data + size;

	for(uint8_t *d = data; d < end; ++d)
	{
		crc = crc32_byte(*d, crc);
	}

	return crc;
}

uint32_t crc32_byte(uint8_t byte, uint32_t crc)
{
	crc ^= byte;

	for (uint8_t i = 0; i < 8; ++i)
	{
		uint8_t bit0 = crc & 1;

		crc >>= 1;

		if (bit0)
			crc ^= CRC32_POLYNOMIAL;
	}

	return crc;
}
