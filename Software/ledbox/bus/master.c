/*
 * master.c
 *
 *  Created on: 20 Jan 2018
 *      Author: fabian
 */

#include "bus.h"
#ifdef BUS_MASTER

#include "master.h"
#include "rs485.h"
#include "packet.h"
#include "../settings.h"

PACKET _bus_master_last_sent_packet;
PACKET _bus_master_rx_packet;
uint8_t *_bus_master_data_buffer;
uint16_t _bus_master_data_size;
uint8_t _bus_master_flags;

// Bus master implementation
void bus_master_init()
{
	_bus_master_last_sent_packet.rxaddr = 0;
	_bus_master_data_buffer = 0;
	_bus_master_data_size = 0;
	_bus_master_flags = BUS_FLAG_FINISHED;
}

// Enumerate Bus Slaves
// Starts at addr_offset and pings every following address.
// If responding the address is stored in addr_buf until array is full.
// Call again with different offset to get more enumerations.
void bus_master_enum_slaves(uint8_t* addr_buf, uint16_t size, uint8_t addr_offset)
{

}

// Write data to slave using packet control
bool bus_master_start_write(uint8_t addr, uint8_t *data, uint16_t size)
{
	if((_bus_master_data_buffer != 0) || !(_bus_master_flags & BUS_FLAG_FINISHED) || !(rs485_flags() & RS485_FLAG_FINISHED))
		return false;

	// Allocate data buffer (data may be needed to resend packages
	// so it is double buffered here and can be freed by the caller
	// after this method)
	_bus_master_data_buffer = malloc(size);

	if(_bus_master_data_buffer == 0)
	{
		_bus_master_flags |= BUS_FLAG_ALLOC_ERR;
		return false;
	}

	_bus_master_flags = BUS_FLAG_MODE_TX1_RX0;

	// Copy data
	memcpy(_bus_master_data_buffer, data, size);
	_bus_master_data_size = size;

	// Create first packet
	packet_data_generate(&_bus_master_last_sent_packet,
			addr, 0, 0, PACKET_DATA,
			_bus_master_data_size, _bus_master_data_buffer,
			SETTINGS_BUS_PACKETSIZEMAX);

	_bus_master_flags |= BUS_FLAG_HEADTX;
	rs485_startrx(&_bus_master_last_sent_packet, PACKET_HEADERSIZE);

	return true;
}

// Read data from slave
bool bus_master_start_read(uint8_t *data, uint16_t size)
{

}

// Return flags
uint8_t bus_master_flags()
{

}

// Main loop callback for bus master
void bus_master_loop()
{
	uint8_t rsflags = rs485_flags();

	if(rsflags() & RS485_FLAG_FINISHED)
	{
		if(_bus_master_flags & BUS_FLAG_MODE_TX1_RX0)
		{
			// In case of tx error or finished transmission wait for response
			_bus_master_flags &= ~BUS_FLAG_MODE_TX1_RX0;
			// Next receive response
			_bus_master_flags |= BUS_FLAG_RESPONSE;
			// begin packet reception
			rs485_startrx(&_bus_master_rx_packet, PACKET_HEADERSIZE);
		}
		else // RX mode
		{
			if(_bus_master_flags & BUS_FLAG_RESPONSE)
			{

			}
		}
	}
}

#endif
