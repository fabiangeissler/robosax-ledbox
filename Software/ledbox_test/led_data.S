// raw.s
#define __SFR_OFFSET 0
#include <avr/io.h>

; Makes send_data visible in other source files
.global send_data

; Define port
#define port	PORTC
#define ddr		DDRC
#define bit		2

; Defines a code section
.section .text

; r24,r25	Array address
; r22		Array size
send_data:           ; Start of send_data subroutine
	movw	r30,r24	; move address to Z
	movw	r26,r24	; move address to r22:r23
	add	r26,r22	; add size
	adc	r27,r1	; add carry
	sbi	ddr,bit

send_byte:
	cp	r26,r30	; compare lower address byte		20
	cpc	r27,r31	; compare upper address byte		21
	breq	return	;							22
	ld	r24,Z+	; load data					24
	ldi	r25,0x80	; set mask to 0x80				25

send_bit:
	sbi	port,bit	; set the line high		0
	mov	r23,r24	; temporary store data	1
	and	r23,r25	; data AND mask			2
	nop			; nop -> wait			3
	nop			; nop -> wait			4
	nop			; nop -> wait			5
	brne	one		; branch if bit is one	6	7

	cbi	port,bit	; clear the line		8
	nop			; nop -> wait			9
	nop			; nop -> wait			10
	nop			; nop -> wait			11
	nop			; nop -> wait			12
	nop			; nop -> wait			13
	nop			; nop -> wait			14
	rjmp	checks	;					16
one:
	nop			; nop -> wait				8
	nop			; nop -> wait				9
	nop			; nop -> wait				10
	nop			; nop -> wait				11
	nop			; nop -> wait				12
	nop			; nop -> wait				13
	nop			; nop -> wait				14
	cbi	port,bit	; clear the line			16
checks:
	lsr	r25		; right shift mask		17
	breq	send_byte	; branch back send_byte	18		19
	nop			; nop -> wait			19
	nop			; nop -> wait			20
	nop			; nop -> wait			21
	rjmp	send_bit	; jump back to send_bit	23

return:
	ret



