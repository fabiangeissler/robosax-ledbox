EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:ledbox-newsymbols
LIBS:switches
LIBS:ledbox-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 5
Title "RoboSAX LED Box"
Date "2017-10-05"
Rev ""
Comp "Fabian Geißler"
Comment1 "Prototyp"
Comment2 "Version 3"
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 6900 3600 1000 1100
U 59DCB8E9
F0 "Bus" 60
F1 "Bus.sch" 60
F2 "AIN0" O L 6900 4400 60 
F3 "AIN1" O L 6900 4500 60 
F4 "TX_EN" I L 6900 4100 60 
F5 "TX" I L 6900 3800 60 
F6 "RX" O L 6900 3900 60 
$EndSheet
$Sheet
S 3300 3600 1400 1700
U 59DBA5DF
F0 "Interface" 60
F1 "Interface.sch" 60
F2 "LED_IR" I R 4700 4200 60 
F3 "PWM_R" I R 4700 3800 60 
F4 "PWM_G" I R 4700 3900 60 
F5 "PWM_B" I R 4700 4000 60 
F6 "BTN" O R 4700 4400 60 
F7 "~RESET" O R 4700 5100 60 
F8 "PUSH1" O R 4700 4900 60 
F9 "PUSH2" O R 4700 5000 60 
F10 "LED1" I R 4700 4600 60 
F11 "LED2" I R 4700 4700 60 
$EndSheet
$Sheet
S 5000 3600 1600 1700
U 59DB9B58
F0 "Controller" 60
F1 "Controller.sch" 60
F2 "PWM_R" O L 5000 3800 60 
F3 "PWM_G" O L 5000 3900 60 
F4 "TX_EN" O R 6600 4100 60 
F5 "RX" I R 6600 3900 60 
F6 "TX" O R 6600 3800 60 
F7 "PWM_B" O L 5000 4000 60 
F8 "BTN" I L 5000 4400 60 
F9 "LED_IR" O L 5000 4200 60 
F10 "AIN0" I R 6600 4400 60 
F11 "AIN1" I R 6600 4500 60 
F12 "LED1" O L 5000 4600 60 
F13 "LED2" O L 5000 4700 60 
F14 "PUSH1" I L 5000 4900 60 
F15 "PUSH2" I L 5000 5000 60 
F16 "~RESET" I L 5000 5100 60 
$EndSheet
$Sheet
S 3300 2750 1400 550 
U 59DBA013
F0 "Supply" 60
F1 "Supply.sch" 60
$EndSheet
Wire Wire Line
	6900 3800 6600 3800
Wire Wire Line
	6600 3900 6900 3900
Wire Wire Line
	6900 4100 6600 4100
Wire Wire Line
	6900 4400 6600 4400
Wire Wire Line
	6600 4500 6900 4500
Wire Wire Line
	5000 3800 4700 3800
Wire Wire Line
	4700 3900 5000 3900
Wire Wire Line
	5000 4000 4700 4000
Wire Wire Line
	5000 4200 4700 4200
Wire Wire Line
	4700 4400 5000 4400
Wire Wire Line
	5000 4600 4700 4600
Wire Wire Line
	4700 4700 5000 4700
Wire Wire Line
	5000 4900 4700 4900
Wire Wire Line
	4700 5000 5000 5000
Wire Wire Line
	5000 5100 4700 5100
$EndSCHEMATC
