/*
 * pwm_dither..c
 *
 *  Created on: 21.10.2017
 *      Author: fabiangeissler
 */

#include "pwm_dither.h"

#ifdef SETTINGS_PWM8_EXTENSION_DITHER

#include "avr/io.h"
#include "avr/interrupt.h"

// Timer 0		Atmega2560	freq				Atmega88A	freq
// CS0[2:0]		Prescaler	at 16 MHz		Prescaler	at 20 MHz
// 0 0 1			1			62500 Hz			1			78125 Hz
// 0 1 0			8			7813 Hz			8			9766 Hz
// 0 1 1			64			977 Hz			64			1221 Hz
// 1 0 0			256			244 Hz			256			305 Hz
// 1 0 1			1024			61 Hz			1024			76 Hz
//
// To stay in the same frequency region, the PWM frequency has to double
// for each bit added by dithering. Favorable frequency region would be
// above 200Hz.
//
// Dither		Atmega2560					Atmega88A
// bits			Prescaler	eff. freq.		Prescaler	eff. freq.
// 0				256			244 Hz			256			305  Hz
// 1				64			489 Hz			64			611  Hz
// 2				64			245 Hz			64			306  Hz
// 3				8			977 Hz			8			1221 Hz
// 4				8			489 Hz			8			611  Hz
// 5				8			245 Hz			8			306  Hz
// 6				1			977 Hz			1			1221 Hz
// 7				1			489	Hz			1			611  Hz
// 8				1			245 Hz			1			306  Hz

#define PWM_PS_1		(0 << CS02) | (0 << CS01) | (1 << CS00)
#define PWM_PS_8		(0 << CS02) | (1 << CS01) | (0 << CS00)
#define PWM_PS_64	(0 << CS02) | (1 << CS01) | (1 << CS00)
#define PWM_PS_256	(1 << CS02) | (0 << CS01) | (0 << CS00)

volatile uint8_t _pwm_dither_ocrh;
volatile uint8_t _pwm_dither_ocrl;
volatile uint8_t _pwm_dither_ocrhn;
volatile uint8_t _pwm_dither_ocrln;
volatile uint8_t _pwm_dither_cnt;

#ifdef PWM_DITHER_AUTOMATIC
	volatile uint8_t _pwm_dither_one;
	volatile uint8_t _pwm_dither_onen;
#else
	#define _pwm_dither_one	(1 << (8 - PWM_DITHER_ADD_BITS))

	#define PWM_DITHER_ADD_BITS	(PWM_DITHER_BITS - 8)

	#if (PWM_DITHER_ADD_BITS <= 0)
		#define PWM_HYBRID_PS PWM_PS_256;
	#elif(PWM_DITHER_ADD_BITS <= 2)
		#define PWM_HYBRID_PS PWM_PS_64;
	#elif(PWM_DITHER_ADD_BITS <= 5)
		#define PWM_HYBRID_PS PWM_PS_8;
	#elif(PWM_DITHER_ADD_BITS <= 8)
		#define PWM_HYBRID_PS PWM_PS_1;
	#endif
#endif

// Don't forget to enable global interrupts when using this module!
// > sei(); <
void pwm_dither_init()
{
	// Compare channel A
	// Fast PWM Mode (count up to 0xFF and back down)
	TCCR0A = (1 << COM0A1) | (1 << COM0A0) | (0 << WGM01) | (1 << WGM00);

	// Turn timer off
	TCCR0B = 0;

	// disable interrupts
	TIMSK0 = 0;
}

void pwm_dither_set(uint16_t val)
{
	uint8_t valh = ((uint8_t*)(&val))[1];
	uint8_t vall = ((uint8_t*)(&val))[0];

#ifdef PWM_DITHER_AUTOMATIC
	uint8_t dither_bits = 8;
	// Special case, valh - 1 in the ISR would cause an underflow,
	// so dithering is not possible. Instead of using a complicated
	// if statement or doing unnecessary computations we jump directly
	// into the existing "no dither" else block.
	if(valh == 0)
	{
		dither_bits = 0;
		goto no_dither;
	}

	// find amount of dithering bits needed
	for(uint8_t mask = 1; mask != 0; mask <<= 1)
	{
		if(vall & mask)
			break;

		--dither_bits;
	}

	// dithering needed
	if(dither_bits > 0)
	{
		_pwm_dither_onen = (1 << (8 - dither_bits));
#endif
#if ((PWM_DITHER_ADD_BITS > 0) || (!defined PWM_DITHER_ADD_BITS))
	#ifndef PWM_DITHER_AUTOMATIC
		if(valh == 0)
		{
			// Disable all Timer0 interrupts
			TIMSK0 = 0;
			// Upper byte of val sets the hardware PWM OCR
			OCR0A = valh;
		}
		else
		{
	#endif
			_pwm_dither_ocrln = vall;
			_pwm_dither_ocrhn = valh;

			if(TIMSK0 == 0)
			{
				// Enable OVF interrupt
				TIMSK0 = (1 << TOIE0);

				// Reset OCR values immediately
				_pwm_dither_cnt = 0;
			}
	#ifndef PWM_DITHER_AUTOMATIC
		}
	#endif
#endif
#ifdef PWM_DITHER_AUTOMATIC
	}
	else // no dithering
	{
no_dither:
#endif
#if ((PWM_DITHER_ADD_BITS == 0) || (!defined PWM_DITHER_ADD_BITS))
		// Disable all Timer0 interrupts
		TIMSK0 = 0;

		// Upper byte of val sets the hardware PWM OCR
		OCR0A = valh;
#endif
#ifdef PWM_DITHER_AUTOMATIC
	}

	// Set the timer prescaler
	// TODO: find good values that do not appear flickering, now frequency is held above 200Hz
	if(dither_bits <= 0)
		TCCR0B = PWM_PS_256;
	else if(dither_bits <= 2)
		TCCR0B = PWM_PS_64;
	else if(dither_bits <= 5)
		TCCR0B = PWM_PS_8;
	else if(dither_bits <= 8)
		TCCR0B = PWM_PS_1;
#else
	TCCR0B = PWM_HYBRID_PS;
#endif
}

// Timer 0 overflow
ISR(TIMER0_OVF_vect) {
	// copy multiple used volatile variables to registers
	uint8_t cnt = _pwm_dither_cnt;
	uint8_t ocrl;
	uint8_t ocrh;

	// dither overflow
	if(cnt == 0)
	{
		// set new ocr values
		ocrh = _pwm_dither_ocrhn;
		ocrl = _pwm_dither_ocrln;
#ifdef PWM_AUTOMATIC
		_pwm_dither_one = _pwm_dither_onen;
#endif
	}
	else
	{
		ocrh = _pwm_dither_ocrh;
		ocrl = _pwm_dither_ocrl;
	}

	// compare match
	if(cnt > ocrl)
		OCR0A = ocrh - 1;
	else
		OCR0A = ocrh;

	// put volatile values back as they might have changed
	_pwm_dither_cnt = cnt + _pwm_dither_one;
	_pwm_dither_ocrh = ocrh;
	_pwm_dither_ocrl = ocrl;
}

#endif
