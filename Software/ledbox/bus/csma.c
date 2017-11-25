/*
 * comm.c
 *
 *  Created on: 05.11.2017
 *      Author: fabian
 */

#include "csma.h"
#include "rs485.h"

#include "stdlib.h"

uint8_t _csma_state;
uint8_t _csma_ticks;
uint8_t _csma_rand;
uint8_t _csma_packet_prio;
PACKET* _csma_packet_ref;

bool _csma_linehigh()
{
	return (CSMA_RXTX_PIN & (1 << CSMA_RX));
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
	_csma_ticks = CSMA_CSTICKS;
}

void csma_loop(uint32_t ticks)
{
	static uint32_t lticks = 0;

	// Check Systick for completed delay.
	if((lticks - ticks) >= _csma_ticks)
	{
		lticks = ticks;

		// Transmission states:
		switch(_csma_state)
		{
		// Carrier sense period
		// Sense the bus for changes for a period of at least one byte
		case CSMA_STATE_CS:
			// Interrupt not executed - no carrier detected
			if(!_csma_getint())
			{
				// Disable interrupt
				_csma_stopint();

				// Priority wait ticks
				_csma_ticks = CSMA_PRIOTICKS * _csma_packet_prio;
				// Resume with collision avoidance strategy
				_csma_state = CSMA_STATE_PRIO;

				// Jump to CA execution
				goto csma_state_prio_label;
			}

			break;

		// Priority period
		// Wait for the amount of time specified by the Packet
		// priority and check if the line is already pulled.
		// If not, pull the bus low, else go to RESET.
csma_state_prio_label:
		case CSMA_STATE_PRIO:
			// Ticks needed to complete priority period
			_csma_ticks = (CSMA_PRIO_MAXVAL - _csma_packet_prio) * CSMA_PRIOTICKS;

			// Check if bus is already pulled (higher priority transmitter).
			if(!_csma_linehigh())
			{
				// Complete collision avoidance period
				_csma_ticks += SETTINGS_BUS_CASTEPS * CSMA_CATICKS;
				// Set new state
				_csma_state = CSMA_STATE_RESET;

				break;
			}

			// Pull bus low
			_csma_pull();

			// Generate random slot
			_csma_rand = (rand() % SETTINGS_BUS_CASTEPS) + 1;
			// Generate random period
			_csma_ticks += _csma_rand * CSMA_CATICKS;
			// Set CA as next state
			_csma_state = CSMA_STATE_CA;

			break;

		// Collision avoidance period (release line)
		// Wait for the random collision time and release the line.
		case CSMA_STATE_CA:
			// Release the bus.
			_csma_release();
			// Set period to line check
			_csma_ticks = CSMA_LINETICKS;
			// Set CACHECK as next state
			_csma_state = CSMA_STATE_CACHECK;

			break;

		// Collision avoidance period (Check line)
		// If the line stays low go to RESET, else go to PROCESS.
		case CSMA_STATE_CACHECK:
			// Check if bus is still pulled.
			if((CSMA_RXTX_PIN & (1 << CSMA_RX)) == 0)
			{
				// Set remaining CS period ticks.
				_csma_ticks = (SETTINGS_BUS_CASTEPS - _csma_rand) * CSMA_CATICKS;

				// Substract line check delay if the result is greater than zero
				if(_csma_ticks > CSMA_LINETICKS)
					_csma_ticks -= CSMA_LINETICKS;
				else
					_csma_ticks = 0;

				// Set RESET as next state
				_csma_state = CSMA_STATE_RESET;
				break;
			}

			// Set pre transmission delay.
			_csma_ticks = CSMA_TXDTICKS;
			// Begin transmission.
			_csma_state = CSMA_STATE_PROGRESS;

			break;

		// UART start period
		// Start UART peripheral and begin transmission.
		case CSMA_STATE_UARTINIT:
			// Start UART peripheral.
			rs485_start();
			// Set timeout ticks.
			_csma_ticks = CSMA_BYTETOTICKS;

			break;

		// Progress period
		// Transmit the whole packet data and check for
		// transmission timeout.
		case CSMA_STATE_PROGRESS:
			// Reset time on TXC or RXC interrupt
			// Timeout triggered

			break;

		// Reset period
		// Wait for the whole collision avoidance period to end.
		// Then go back to carrier sensing.
		case CSMA_STATE_RESET:
			// TODO: back to CS
			break;
		}
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
	return _csma_state;
}
