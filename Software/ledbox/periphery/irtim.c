/*
 * irtim.c
 *
 *  Created on: 26 Nov 2017
 *      Author: fabian
 */

#include "irtim.h"

#include "avr/io.h"

// Initialize IR LED timer.
void irtim_init()
{
	// Set Waveform Generation Mode to Fast PWM with TOP = OCR2A.
	TCCR2A = (1 << WGM21) | (1 << WGM20);
	TCCR2B = (1 << WGM22);

	// Set TOP value
	OCR2A = IRTIM_TOP;

	// Set compare value for 50% duty cycle.
	OCR2B = IRTIM_TOP / 2;
}

// Start timer.
void irtim_start()
{
	// Set prescaler.
	TCCR2B |= IRTIM_PS_REG;
}

// Stop timer.
void irtim_stop()
{
	// Deactivate clock.
	TCCR2B &= ~((1 << CS22) | (1 << CS21) | (1 << CS20));
}

// Set IR LED output.
void irtim_output(bool on)
{
	// As the default line state in UART is 'on' or 'high',
	// this state will be represented by disabled output.
	// On the receiver side the received signal must be
	// inverted to get a correct UART signal.

	if(on)
		// Set OC2B output to normal port operation.
		TCCR2A &= ~((1 << COM2B1) | (1 << COM2B1));
	else
		// Set OC2B output to clear on compare match.
		TCCR2A |= ((1 << COM2B1) | (0 << COM2B1));
}
