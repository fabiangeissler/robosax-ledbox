/*
 * pwm_hybrid.c
 *
 *  Created on: 23.10.2017
 *      Author: fabiangeissler
 */

#include "pwm_hybrid.h"

#ifndef SETTINGS_PWM8_EXTENSION_DITHER

#include "avr/io.h"
#include "avr/interrupt.h"

// Hybrid software/hardware PWM simulates a higher bit PWM by keeping the output
// level high for the needed amount of overflows and then setting it low.

#define PWM_HYBRID_PS		((0 << CS22) | (0 << CS21) | (1 << CS20))
#define PWM_HYBRID_BITMASK	((uint8_t)(~(0xFF << (PWM_HYBRID_BITS - 8))))
#define PWM_HYBRID_TOP		((uint16_t)(~(0xFFFF << PWM_HYBRID_BITS)))

volatile uint8_t _pwm_hybrid_seton;
volatile uint8_t _pwm_hybrid_setval;
volatile uint8_t _pwm_hybrid_setonn;
volatile uint8_t _pwm_hybrid_setvaln;
volatile uint8_t _pwm_hybrid_cnt;

// Don't forget to enable global interrupts when using this module!
// > sei(); <
void pwm_hybrid_init()
{
	// Compare channel B
	// Fast PWM Mode (count up to 0xFF and back down)
	TCCR2A = (1 << COM2B1) | (1 << COM2B0) | (0 << WGM21) | (1 << WGM20);

	// Turn timer on
	TCCR2B = PWM_HYBRID_PS;

	// Enable overflow interrupt
	TIMSK2 = (1 << TOIE2);

	// Clear counter
	_pwm_hybrid_cnt = 0;
}

void pwm_hybrid_set(uint16_t val)
{
	// Limit the compare range to the maximum bit count.
	val = (val >> (16 - PWM_HYBRID_BITS)) & PWM_HYBRID_TOP;

	uint8_t valh = ((uint8_t*)(&val))[1];
	uint8_t vall = ((uint8_t*)(&val))[0];

	_pwm_hybrid_setonn = valh;
	_pwm_hybrid_setvaln = vall;
}

// Timer 0 overflow
ISR(TIMER2_OVF_vect)
{
	uint8_t seton, setval;
	uint8_t cnt = _pwm_hybrid_cnt;

	if(cnt == 0)
	{
		seton = _pwm_hybrid_setonn;
		setval = _pwm_hybrid_setvaln;
	}
	else
	{
		seton = _pwm_hybrid_seton;
		setval = _pwm_hybrid_setval;
	}

	if(_pwm_hybrid_cnt < _pwm_hybrid_seton)
	{
		OCR2B = 0xFF;
	}
	else if(_pwm_hybrid_cnt > _pwm_hybrid_seton)
	{
		OCR2B = 0;
	}
	else
	{
		OCR2B = _pwm_hybrid_setval;
	}

	_pwm_hybrid_cnt = (cnt + 1) & PWM_HYBRID_BITMASK;
	_pwm_hybrid_seton = seton;
	_pwm_hybrid_setval = setval;
}

#endif
