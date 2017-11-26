/*
 * comm.c
 *
 *  Created on: 05.11.2017
 *      Author: fabian
 */

// TODO: Replace Systick by Timer3 running at 30-60kHz for CSMA timings

#include "csma.h"
#include "rs485.h"
#include "../board/led.h"

#include "stdlib.h"

uint8_t _csma_state;
uint32_t _csma_ticks;
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
	// Set TXEN low
	CSMA_TXEN_PORT &= ~(1 << CSMA_TXEN);

	// set initial state
	_csma_state = CSMA_STATE_READY;
	_csma_ticks = CSMA_CSTICKS;
}

void csma_loop(uint32_t ticks)
{
	if(CSMA_RXTX_PIN & (1 << CSMA_RX))
		led_set(LED1 | LED2 | LED_SET);
	else
		led_set(LED1 | LED2 | LED_RESET);

	return;

	static uint32_t lticks = 0;

	// Periphery controlled states
	// -------------------------------------------------------------------------
	switch(_csma_state)
	{
	// Packet header transmission period
	// Transmit the packet header and check for
	// transmission errors.
	case CSMA_STATE_HEADER:
		if(rs485_flags() & RS485_FLAG_TXERR)
		{
			// Go to error state
			_csma_state = CSMA_STATE_ERROR;
		}

		if(rs485_flags() & RS485_FLAG_FINISHED)
		{
			// Begin data transmission.
			rs485_starttx(_csma_packet_ref->data, _csma_packet_ref->size);

			// Transmit data.
			_csma_state = CSMA_STATE_DATA;
		}

		break;

	case CSMA_STATE_DATA:
		if(rs485_flags() & RS485_FLAG_TXERR)
		{
			// Go to error state
			_csma_state = CSMA_STATE_ERROR;
		}

		if(rs485_flags() & RS485_FLAG_FINISHED)
		{
			// Begin data transmission.
			rs485_starttx(_csma_packet_ref->data, _csma_packet_ref->size);

			// Transmit header.
			_csma_state = CSMA_STATE_DATA;
		}

		break;

	case CSMA_STATE_ERROR:
		// Pull the line low and keep for error period.
		_csma_pull();
		// Set error period ticks.
		_csma_ticks = CSMA_ERRORTICKS;
		// Set start time ticks.
		lticks = ticks;
		// Transmit header.
		_csma_state = CSMA_STATE_ERROR2;

		break;
	}

	// Timing controlled states
	// -------------------------------------------------------------------------
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
			// Interrupt not executed - no carrier detected and line not pulled
			if((!_csma_getint()) && _csma_linehigh())
			{
				// Disable interrupt
				_csma_stopint();

				// Priority wait ticks
				_csma_ticks = CSMA_PRIOTICKS * _csma_packet_prio;
				// Resume with collision avoidance strategy
				_csma_state = CSMA_STATE_PRIO;
			}

			break;

		// Priority period
		// Wait for the amount of time specified by the Packet
		// priority and check if the line is already pulled.
		// If not, pull the bus low, else go to RESET.
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
			_csma_state = CSMA_STATE_UARTINIT;

			break;

		// UART start period
		// Start UART peripheral and begin transmission.
		case CSMA_STATE_UARTINIT:
			// Start UART peripheral to send the header data.
			rs485_starttx((uint8_t*)_csma_packet_ref, PACKET_HEADERSIZE);
			// Set delay ticks to longest possible. HEADER and DATA states
			// are not timing controlled but periphery controlled.
			_csma_ticks = 0xFFFFFFFF;
			// Transmit header
			_csma_state = CSMA_STATE_HEADER;

			break;

		case CSMA_STATE_ERROR2:
			// Set next state CS
			_csma_state = CSMA_STATE_CS;
			// Set ticks
			_csma_ticks = CSMA_CSTICKS;
			// Release the line.
			_csma_release();

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
