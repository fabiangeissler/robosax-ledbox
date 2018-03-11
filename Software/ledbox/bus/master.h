/*
 * master.h
 *
 *  Created on: 20 Jan 2018
 *      Author: fabian
 */

#include "bus.h"

#ifdef BUS_MASTER

#ifndef MASTER_H_
#define MASTER_H_

#include "stdint.h"
#include "stdbool.h"

// The bus master waits until answer timeout for data reception before going to error state
#define BUS_MASTER_ANSWER_TIMEOUT_MS	100
// If received data is not complete and no new data arrives, after RX timeout a resend is requested
#define BUS_MASTER_RX_TIMEOUT_MS		20

enum bus_flag {
	BUS_FLAG_MODE_TX1_RX0	= 0x01,		// transmission mode if set, in receive mode if cleared.
	BUS_FLAG_FINISHED 		= 0x02,		// Finished operation.
	BUS_FLAG_TIMEOUT 		= 0x04,		// no answer (no slave with this address?)
	BUS_FLAG_RESPONSE		= 0x08,		// Transmitted packet header but not payload
	BUS_FLAG_ALLOC_ERR		= 0x10		// Error on memory allocation
};

// Bus master implementation
// rs485 has to be initialized
void bus_master_init();

// Enumerate Bus Slaves
// Starts at addr_offset and pings every following address.
// If responding the address is stored in addr_buf until array is full.
// Call again with different offset to get more enumerations.
void bus_master_enum_slaves(uint8_t* addr_buf, uint16_t size, uint8_t addr_offset);

// Write data to slave using packet control
bool bus_master_start_write(uint8_t addr, uint8_t *data, uint16_t size);

// Read data from slave
bool bus_master_start_read(uint8_t *data, uint16_t size);

// Return flags
uint8_t bus_master_flags();

// Main loop callback for bus master
void bus_master_loop();

#endif /* MASTER_H_ */

#endif
