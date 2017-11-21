/*
 * rgbled.c
 *
 *  Created on: 30.10.2017
 *      Author: fabian
 */

#include "rgbled.h"
#include "../periphery/pwm.h"
#include "../periphery/pwm_hybrid.h"
#include "../settings.h"
#include "avr/pgmspace.h"
#include "../software/brightness.h"

#define PWM_TOP		((uint16_t)(~(0xFFFF << PWM_HYBRID_BITS)))

uint16_t _rgb_corr_r = 0x8000;
uint16_t _rgb_corr_g = 0x8000;
uint16_t _rgb_corr_b = 0x8000;

void rgb_init()
{
	// init 16 bit HW PWM
	pwm_set_ocra(0xFFFF);
	pwm_set_ocrb(0xFFFF);
	pwm_init();

	// init 16 bit hybrid PWM
	pwm_hybrid_set(0xFFFF);
	pwm_hybrid_init();
}

// 16 bit integer and 1.15 bit fixpoint multiplication
uint16_t _rgb_correction(uint16_t comp, uint16_t corr)
{
	// in this environment b may often equal 1.0
	if(corr == 0x8000)
		return comp;

	uint32_t res = ((uint32_t)comp * (uint32_t)corr) >> 15;

	if(res > SETTINGS_PWM_TOP)
		return SETTINGS_PWM_TOP;
	else
		return (uint16_t)(res);
}

void rgb_setcolor(COLOR_RGB c)
{
#ifdef SETTINGS_BRIGHTNESS_LINEARIZATION
	// set red
	pwm_set_ocrb(_rgb_correction(pgm_read_word(brightness_lut + c.r), _rgb_corr_r));
	// set green
	pwm_set_ocra(_rgb_correction(pgm_read_word(brightness_lut + c.g), _rgb_corr_g));
	// set blue
	pwm_hybrid_set(_rgb_correction(pgm_read_word(brightness_lut + c.b), _rgb_corr_b));
#else
	// set red
	pwm_set_ocrb(_rgb_correction((uint16_t)c.r << (SETTINGS_PWM_BIT_COUNT - 8), _rgb_corr_r));
	// set green
	pwm_set_ocra(_rgb_correction((uint16_t)c.g << (SETTINGS_PWM_BIT_COUNT - 8), _rgb_corr_g));
	// set blue
	pwm_hybrid_set(_rgb_correction((uint16_t)c.b << (SETTINGS_PWM_BIT_COUNT - 8), _rgb_corr_b));
#endif
}

void rgb_setwhitecorrection(uint16_t corr_r, uint16_t corr_g, uint16_t corr_b)
{
	_rgb_corr_r = corr_r;
	_rgb_corr_g = corr_g;
	_rgb_corr_b = corr_b;
}
