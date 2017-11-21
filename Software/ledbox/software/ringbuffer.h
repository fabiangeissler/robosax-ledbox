/*
 * ringbuffer.h
 *
 *  Created on: 05.05.2017
 *      Author: fabian
 */

#ifndef RINGBUFFER_H_
#define RINGBUFFER_H_

#include "stdint.h"
#include "stdbool.h"

typedef struct {
	uint8_t *buffer;
	uint8_t size;
	uint8_t read;
	uint8_t write;
} RINGBUFFER;

void ringbuffer_init(RINGBUFFER* handle, uint8_t *buffer, uint8_t size);

bool ringbuffer_write(RINGBUFFER* handle, uint8_t data);

uint8_t ringbuffer_read(RINGBUFFER* handle);

uint8_t ringbuffer_count(RINGBUFFER* handle);

#endif /* RINGBUFFER_H_ */
