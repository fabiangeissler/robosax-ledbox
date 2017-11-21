/*
 * comm.c
 *
 *  Created on: 05.11.2017
 *      Author: fabian
 */

#include "csma.h"
#include "../periphery/uart.h"

uint8_t _csma_state;
uint8_t _csma_ticks;
uint8_t _csma_packet_prio;
PACKET _csma_packet_ref;

uint8_t _csma_linestate()
{
	return 0;
}

// Enable RX interrupt
void _csma_startint()
{
	// Init Pin Change interrupts
	// Clear interrupt flag
	PCIFR = (1 << PCIF2);
	// PCICR |= (1 << PCIE2); // Do not execute ISR
	PCMSK2 = (1 << PCINT16);
}

// Read interrupt flag and reset it
bool _csma_getint()
{
	bool res = (PCIFR & (1 << PCIF2));

	// Clear interrupt flag
	PCIFR = (1 << PCIF2);

	return res;
}

// Disable RX interrupt
void _csma_stopint()
{
	// Disable interrupt execution
	PCICR &= ~(1 << PCIE2);
	// Disable all pin change interrupts on Port D
	PCMSK2 = 0;
	// Clear interrupt flag
	PCIFR = (1 << PCIF2);
}

void _csma_pull()
{
	// Pull the bus low.
	CSMA_RXTX_PORT &= ~(1 << CSMA_TX);
	CSMA_TXEN_PORT |= (1 << CSMA_TXEN);
}

void _csma_release()
{
	// Release the bus
	CSMA_TXEN_PORT &= ~(1 << CSMA_TXEN);
}

// To use this module uart must be initialized!
// To use this module srand must have been executed!
void csma_init()
{
	// stop UART operation
	uart_stop();

	// For the implementation of collision avoidance normal port operation is needed.
	// The communication later uses the UART peripheral.
	// Set TX pin as output.
	CSMA_RXTX_DDR |= (1 << CSMA_TX);
	// Set RX pin as input.
	CSMA_RXTX_DDR &= ~(1 << CSMA_RX);
	// Set TXEN pin as output.
	CSMA_TXEN_DDR |= (1 << CSMA_TXEN);

	// set initial state
	_csma_state = CSMA_STATE_READY;
}

void csma_loop(uint32_t ticks)
{
	static uint32_t lticks = 0;

	switch(_csma_state)
	{
	// Carrier sense period - sense the bus for changes for a period of at least one byte
	case CSMA_STATE_CS:
		// Check Systick for completed carrier sense period
		if((lticks - ticks) >= SETTINGS_BUS_CSTICKS)
		{
			lticks = ticks;

			// Interrupt not executed - no carrier detected
			if(!_csma_stopint())
			{
				_csma_ticks = SETTINGS_BUS_PRIOTICKS * _csma_packet_prio;
				// Resume with collision avoidance strategy
				_csma_state = CSMA_STATE_PRIO;

				// Jump to CA execution
				goto csma_state_prio_label;
			}
		}

		break;

	// Priority period
	// Wait for the amount of time specified by the Packet
	// priority and check if the line is already pulled.
	// If not, pull the bus low, else go to RESET.
csma_state_prio_label:
	case CSMA_STATE_PRIO:
		if((lticks - ticks) >= _csma_ticks)
		{
			lticks = ticks;

			// Ticks needed to complete priority period
			_csma_ticks = (CSMA_PRIO_MAXVAL - _csma_packet_prio) * SETTINGS_BUS_PRIOTICKS;

			// Check if bus is already pulled (higher priority transmitter).
			if((CSMA_RXTX_PIN & (1 << CSMA_RX)) == 0)
			{
				// Complete collision avoidance period
				_csma_ticks += SETTINGS_BUS_CASTEPS * SETTINGS_BUS_CATICKS;
				// Set new state
				_csma_state = CSMA_STATE_RESET;

				break;
			}

			// Pull bus low
			_csma_pull();

			// Generate random period
			_csma_ticks += ((rand() % SETTINGS_BUS_CASTEPS) + 1) * SETTINGS_BUS_CATICKS;
			// Set CA as next state
			_csma_state = CSMA_STATE_CA;
		}

		break;

	// Collision avoidance period
	// Wait for the random collision time and release the
	// line. If the line stays low go to RESET, else go
	// to PROCESS.
	case CSMA_STATE_CA:
		if((lticks - ticks) >= _csma_ticks)
		{
			lticks = ticks;

			// Release the bus.
			_csma_release();

			// Check if bus is still pulled.
			if((CSMA_RXTX_PIN & (1 << CSMA_RX)) == 0)
			{
				// TODO: Set _csma_ticks for RESET
				_csma_state = CSMA_STATE_RESET;
				break;
			}

			// TODO: Continue coding here!
		}

		break;

	// Reset period
	// Wait for the whole collision avoidance period to end.
	// Then go back to carrier sensing.
	case CSMA_STATE_RESET:
		// Wait for the remaining ticks
		if((lticks - ticks) >= _csma_ticks)
		{
			// TODO: back to CS
		}
		break;
	}
}

// to keep memory usage low p must point to an
// allocated memory until the operation is completed.
// The data is not buffered but directly read from the memory.
void csma_starttx(PACKET *p)
{
	_csma_state = CSMA_STATE_CS;
	_csma_packet_ref = p;
}

uint8_t csma_getstate()
{
	return 0;
}
