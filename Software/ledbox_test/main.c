/*
 * main.c
 *
 *  Created on: 13.11.2017
 *      Author: fabian
 */

// Pinbelegung (LED BOX V.3)
// Header	Pin	Port	Signal		Flachbandkabel Pin (0 = rot)
// J406		1	PC1	CLK		1
// 		2	PC2	LED_DATA_OUT	9
// 		3	PC3	IR_CLK		5
//		4	PC4	BTN_LOAD	6
//		5	PC5	BTN_DATA_IN	7
// J404		1	PD0	LED_LOAD	8
//		2	PD1	RGB_DATA	3


#define F_CPU 20000000

#include "stdbool.h"
#include "stdint.h"

#include "util/delay.h"
#include "avr/io.h"
#include "avr/interrupt.h"

#define LEN 21

uint8_t _data[LEN] = { 0x0F, 0, 0,
						0x0F, 0, 0,
						0x0F, 0, 0,
						0x0F, 0, 0,
						0x0F, 0, 0,
						0x0F, 0, 0,
						0x0F, 0, 0,
						0x0F, 0, 0 }; // 3 LED color data

#define LED_T0H	8 	// Cycles for 0 bit high period @ 20MHz
#define LED_T1H	16 	// Cycles for 1 bit high period @ 20MHz
#define LED_TS	237	// Maximum Cycles for the whole bit period @ 20MHz

#define delay	500

// assembler code for bitbanging RGB data transmission
// defined inled_data.S
extern void send_data(uint8_t *data, uint8_t size);

// rotate data array
void circle()
{
	uint8_t d = _data[0];

	for(int i =1; i < LEN; ++i)
		_data[i - 1] = _data[i];

	_data[LEN-1] = d;
}

// -------------------------------------------------------------------------------------------
// UART RGB LED data transmission
// -------------------------------------------------------------------------------------------

volatile uint8_t bitcounter = 0;
volatile uint8_t bitmax = LEN * 8;

ISR(USART_UDRE_vect)
{
	uint8_t word = 0;
	uint8_t bc = bitcounter;

	if(bc >= bitmax)
	{
		// deactivate
		UCSR0B &= ~(1 << TXEN0);
		return;
	}

	uint8_t bit = ((_data[bc / 8] >> (7 - (bc % 8))) & 1);

	if(bit)
		word |= 0b10;
	else
		word |= 0b11;

	++bc;

	if(bc == bitmax)
	{
		// deactivate
		UCSR0B &= ~(1 << TXEN0);
		goto end;
	}


	bit = ((_data[bc / 8] >> (7 - (bc % 8))) & 1);

	if(bit)
		word |= 0b10000;
	else
		word |= 0b11000;

	++bc;

	if(bc == bitmax)
	{
		// deactivate
		UCSR0B &= ~(1 << TXEN0);
		goto end;
	}


	bit = ((_data[bc / 8] >> (7 - (bc % 8))) & 1);

	if(!bit)
		word |= 0b1000000;

	++bc;

	if(bc == bitmax)
	{
		// deactivate
		UCSR0B &= ~(1 << TXEN0);
		goto end;
	}

end:
	UDR0 = word;
	bitcounter = bc;
}

void enableRGBUART()
{
	UCSR0A |= (1 << U2X0);
	UCSR0B |= (1 << UDRIE0) /*| (1 << TXEN0)*/;
	UCSR0C = (1 << UCSZ01);
	UBRR0H = 0;
	UBRR0L = 0;
}

void start()
{
	bitcounter = 0;
	UCSR0B |=  (1 << TXEN0);
}

// -------------------------------------------------------------------------------------------
// Soft SPI IR led & button communication
// -------------------------------------------------------------------------------------------

void sendLEDdata(uint8_t *data, uint8_t *btn, uint8_t bitsize)
{
	// set load low
	PORTD &= ~(1 << 0);

	// trigger btn load
	PORTC |= (1 << 4);

	//clk low
	PORTC &= ~(1 << 1);

	// some delay
	_delay_us(0.1);

	// clk high
	PORTC |= (1 << 1);

	// some delay
	_delay_us(0.1);

	// set btn load low
	PORTC &= ~(1 << 4);

	for(uint8_t i = 0; i < bitsize; ++i)
	{
		//clk low
		PORTC &= ~(1 << 1);

		btn[i / 8] = ((PINC >> 5) & 1) << (i % 8);

		uint8_t bit = (data[i / 8] >> (i % 8)) & 1;

		// set bit output
		if(bit)
			PORTC |= (1 << 2);
		else
			PORTC &= ~(1 << 2);

		// some delay
		_delay_us(0.1);

		// clk high
		PORTC |= (1 << 1);

		// some delay
		_delay_us(0.1);
	}

	// trigger load
	PORTD |= (1 << 0);
}

int main()
{
	DDRC &= ~0b100000;
	DDRC |=  0b011110;

	DDRD |= 0b11;

	PORTD |= 0b10;

	uint8_t d = 0xAA;

	//sei();

	//enableRGBUART();

	while(1)
	{
		send_data(_data, LEN);
//		_data[0] = 0xAA;
//		_data[1] = 0xAA;
//		_data[2] = 0xAA;
//		_data[3] = 0xAA;
//		_data[4] = 0xAA;
//		_data[5] = 0xAA;

		start();

		sendLEDdata(&d, &d, 4);

		for(int i = 0; i < 10; ++i)
		{
			_delay_ms(50);
			PORTC ^= (1 << 3);
		}

		circle();



		d ^= 0xFF;

//		send_data(_data, LEN);
//
//		_data[0] = 0x55;
//		_data[3] = 0x55;
//		_delay_ms(delay);
//		send_data(_data, LEN);
//
//		_data[1] = 0x55;
//		_data[4] = 0x55;
//		_delay_ms(delay);
//		send_data(_data, LEN);
//
//		_data[2] = 0x55;
//		_data[5] = 0x55;
//		_delay_ms(delay);
//		send_data(_data, LEN);
//
//		_data[0] = 0xAA;
//		_data[3] = 0xAA;
//		_delay_ms(delay);
//		send_data(_data, LEN);
//
//		_data[1] = 0xAA;
//		_data[4] = 0xAA;
//		_delay_ms(delay);
//		send_data(_data, LEN);
//
//		_data[2] = 0xAA;
//		_data[5] = 0xAA;
//		_delay_ms(delay);
//		send_data(_data, LEN);
	}

	return 0;
}
