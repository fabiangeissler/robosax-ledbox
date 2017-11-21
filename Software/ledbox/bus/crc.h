/*
 * crc.h
 *
 *  Created on: 12.11.2017
 *      Author: fabian
 */

#ifndef CRC_H_
#define CRC_H_

#include "stdint.h"

// https://users.ece.cmu.edu/~koopman/crc/c32/0x82608edb_len.txt
// Polynomial {HD3, HD4, HD5, HD6, ...} -> max. data bit length
// 0x82608edb {4294967263,91607,2974,268,171,91,57,34,21,12,10,10,10}
// Reversed Polynomial:
#define CRC32_POLYNOMIAL		0xEDB88320
#define CRC32_MHD			5

#if (CRC32_MHD == 3)
#	define CRC32_MAX_DATA_BITS		4294967263
#elif (CRC32_MHD == 4)
#	define CRC32_MAX_DATA_BITS		91607
#elif (CRC32_MHD == 5)
#	define CRC32_MAX_DATA_BITS		2974
#elif (CRC32_MHD == 6)
#	define CRC32_MAX_DATA_BITS		268
#elif (CRC32_MHD == 7)
#	define CRC32_MAX_DATA_BITS		171
#elif (CRC32_MHD == 8)
#	define CRC32_MAX_DATA_BITS		91
#elif (CRC32_MHD == 9)
#	define CRC32_MAX_DATA_BITS		57
#elif (CRC32_MHD == 10)
#	define CRC32_MAX_DATA_BITS		34
#elif (CRC32_MHD == 11)
#	define CRC32_MAX_DATA_BITS		21
#elif (CRC32_MHD == 12)
#	define CRC32_MAX_DATA_BITS		12
#elif (CRC32_MHD > 12)
#	define CRC32_MAX_DATA_BITS		10
#endif

uint32_t crc32_bytes(uint8_t *data, uint16_t size, uint32_t crc);

uint32_t crc32_byte(uint8_t byte, uint32_t crc);

#endif /* CRC_H_ */
