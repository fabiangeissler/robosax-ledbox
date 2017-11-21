/*
 * csma.h
 *
 *  Created on: 05.11.2017
 *      Author: fabian
 *
 *  Implements bus communication.
 *  CSMA/CA using UART peripheral.
 */

#ifndef CSMA_H_
#define CSMA_H_

#include "packet.h"
#include "stdbool.h"
#include "stdint.h"
#include "avr/io.h"

// CSMA port definitions.
// The pins PD0 and PD1 are fixed by the UART peripheral.
#define CSMA_RXTX_DDR		DDRD
#define CSMA_RXTX_PORT		PORTD
#define CSMA_RXTX_PIN		PIND
#define CSMA_RX				PD0
#define CSMA_TX				PD1

// Bus driver TXEN pin (output only)
#define CSMA_TXEN_DDR		DDRC
#define CSMA_TXEN_PORT		PORTC
#define CSMA_TXEN			PC0

// CSMA transmission states
enum {
	CSMA_STATE_READY, 		// Ready for either transmission or reception.
	CSMA_STATE_CS,			// In carrier sense period.
	CSMA_STATE_PRIO,			// In priority period.
	CSMA_STATE_CA,			// In collision avoidance period.
	CSMA_STATE_PROGRESS, 	// Writing to or reading from UART peripheral.
	CSMA_STATE_ACK,			// Waiting for or sending acknowledgment,
							// followed by either CSMA_READY or CSMA_REQUEST.
	CSMA_STATE_REQUEST,		// Received or sent a package request, followed by CSMA_PROGRESS.
	CSMA_STATE_ERROR,		// Fatal error like continuous collisions, defect of the bus hardware.
							// This state is only left by reinitializing this module.
	CSMA_STATE_RESET,		// Kicked out of transmission progress, wait for next chance.
	CSMA_STATE_RX_TX = 0x80 	// Switch between transmission and reception mode.
};

// CSMA priorities
enum {
	CSMA_PRIO_REQUEST,		// Request priority - all requests should be done prior to a new transmission
	CSMA_PRIO_COMMAND,		// Command priority - real time commands need to be fast
	CSMA_PRIO_HIGH,			// Three default priority steps to choose by the user
	CSMA_PRIO_MEDIUM,
	CSMA_PRIO_LOW,
};

// Maximum priority value for calculations
#define CSMA_PRIO_MAXVAL	CSMA_PRIO_LOW

// To use this module uart must be initialized!
void csma_init();

void csma_loop();

void csma_starttx(PACKET *p);

uint8_t csma_getstate();

#endif /* CSMA_H_ */
