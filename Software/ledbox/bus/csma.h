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

#include "bus.h"

#ifndef BUS_MASTER_SLAVE

#include "packet.h"
#include "stdbool.h"
#include "stdint.h"
#include "avr/io.h"

#include "../settings.h"

// CSMA port definitions.
// ---------------------------------------------------------------------------
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

// Systick defines for timings.
// ---------------------------------------------------------------------------
// Carrier sense time - one byte of transmission duration
// 8 bit data, 1 bit start, 1 bit stop, 1 bit parity
#ifndef SETTINGS_BUS_CSTICKS_ASSERT_ERROR_SWITCH
#	define CSMA_CSTICKS ((uint8_t)((11 * SYSTICK_TICKS(1)) / SETTINGS_BUS_BAUD))
#else
#	warning "CSMA_CSTICKS set to fixed value of 1."
#	define CSMA_CSTICKS		1
#endif

// Systick ticks before starting a transmission.
#define CSMA_TXDTICKS		SYSTICK_TICKS_MS(SETTINGS_BUS_TXDELAY)
// Timeout for single byte transmission.
#define CSMA_BYTETOTICKS		SYSTICK_TICKS_MS(SETTINGS_BUS_BYTETIMEOUT)
// Timeout for single byte transmission.
#define CSMA_ERRORTICKS		1 //SYSTICK_TICKS_MS(SETTINGS_BUS_ERRORDELAY)

// Exit compilation if either of the timing values evaluates to zero.
_Static_assert((CSMA_CSTICKS != 0), "CSMA_CSTICKS evaluates to zero!");
_Static_assert((CSMA_ERRORTICKS != 0), "CSMA_ERRORTICKS evaluates to zero!");

// CSMA transmission states.
// ---------------------------------------------------------------------------
enum {
	CSMA_STATE_READY, 		// Ready for either transmission or reception.
	CSMA_STATE_CS,			// In carrier sense period.
	CSMA_STATE_CA,			// In collision avoidance period.
	CSMA_STATE_UARTINIT, 	// Start UART peripheral and begin transmission.
	CSMA_STATE_HEADER, 		// Writing or reading packet header.
	CSMA_STATE_DATA, 		// Writing or reading packet data.
	CSMA_STATE_ACK,			// Waiting for or sending acknowledgment,
							// followed by either CSMA_READY or CSMA_REQUEST.
	CSMA_STATE_REQUEST,		// Received or sent a package request, followed by CSMA_PROGRESS.
	CSMA_STATE_ERROR,		// Error state after transmission or reception errors
	CSMA_STATE_ERROR2,		// Wait state for ERROR.
	CSMA_STATE_FATERROR,		// Fatal error like continuous collisions, defect of the bus hardware.
							// This state is only left by reinitializing this module.
	CSMA_STATE_RESET,		// Kicked out of transmission progress, wait for next chance.
	CSMA_STATE_RX_TX = 0x80 	// Switch between transmission and reception mode.
};

// CSMA priorities.
// ---------------------------------------------------------------------------
enum {
	CSMA_PRIO_REQUEST,		// Request priority - all requests should be done prior to a new transmission
	CSMA_PRIO_COMMAND		// Command priority - real time commands need to be fast

};

// Maximum priority value for calculations
#define CSMA_PRIO_MAXVAL		(CSMA_PRIO_COMMAND + SETTINGS_BUS_USERPRIOSTEPS)

// Total collision avoidance period steps
#define CSMA_TOTALCASTEPS	(CSMA_PRIO_MAXVAL + (SETTINGS_BUS_CASTEPS * 2) + 2)

// Module function headers.
// ---------------------------------------------------------------------------
// To use this module uart must be initialized!
void csma_init();

void csma_loop(uint32_t time);

void csma_starttx(PACKET *p, uint8_t priority);

uint8_t csma_getstate();

#endif

#endif /* CSMA_H_ */
