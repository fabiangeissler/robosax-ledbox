/*
 * ringbuffer.c
 *
 *  Created on: 05.05.2017
 *      Author: fabian
 */

#include "ringbuffer.h"

#define RINGBUFFER_INC(val,size) ( ((val + 1) == size) ? 0 : (val + 1) )

void ringbuffer_init(RINGBUFFER* handle, uint8_t *buffer, uint8_t size)
{
	handle->buffer = buffer;
	handle->size = size;
	handle->read = 0;
	handle->write = 0;
}

bool ringbuffer_write(RINGBUFFER* handle, uint8_t data)
{
	// check if next cell is the read cell
	if (RINGBUFFER_INC(handle->write, handle->size) == handle->read)
		return false; // buffer overflow

	// write to buffer
	handle->buffer[handle->write] = data;

	// increment write cell
	handle->write = RINGBUFFER_INC(handle->write, handle->size);

	return true;
}

uint8_t ringbuffer_read(RINGBUFFER* handle)
{
	// check if data is available to read
	if (handle->read == handle->write)
		return 0; // nothing to read

	// read from buffer
	uint8_t data = handle->buffer[handle->read];

	// increment read cell
	handle->read = RINGBUFFER_INC(handle->read, handle->size);

	return data;
}

uint8_t ringbuffer_count(RINGBUFFER* handle)
{
	if(handle->write >= handle->read)
		return handle->write - handle->read; // correct cell order
	else
		return handle->write + (handle->size - handle->read); // write wraped to begin of buffer, but read not
}
