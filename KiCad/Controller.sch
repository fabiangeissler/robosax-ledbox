EESchema Schematic File Version 3
LIBS:ledbox-rescue
LIBS:power
LIBS:device
LIBS:linear
LIBS:regul
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
LIBS:ledbox-newsymbols
LIBS:74xxLVCxG
LIBS:analog_devices
LIBS:boards
LIBS:bridge_rectifier
LIBS:caf
LIBS:cirrus logic
LIBS:eeprom
LIBS:ft232rl
LIBS:linear_technology
LIBS:micrel
LIBS:NXP Semiconductor
LIBS:SigmaDSP
LIBS:texas_instruments
LIBS:tl431
LIBS:toslink
LIBS:worldsemi
LIBS:ac-dc
LIBS:Altera
LIBS:Battery_Management
LIBS:bbd
LIBS:Bosch
LIBS:brooktre
LIBS:Connector
LIBS:dc-dc
LIBS:Decawave
LIBS:Diode
LIBS:Display
LIBS:driver_gate
LIBS:DSP_Microchip_DSPIC33
LIBS:elec-unifil
LIBS:ESD_Protection
LIBS:Espressif
LIBS:FPGA_Actel
LIBS:ftdi
LIBS:gennum
LIBS:Graphic
LIBS:hc11
LIBS:infineon
LIBS:intersil
LIBS:ir
LIBS:Lattice
LIBS:LED
LIBS:LEM
LIBS:Logic_74xgxx
LIBS:Logic_74xx
LIBS:Logic_CMOS_4000
LIBS:Logic_CMOS_IEEE
LIBS:logic_programmable
LIBS:Logic_TTL_IEEE
LIBS:maxim
LIBS:MCU_Microchip_PIC10
LIBS:MCU_Microchip_PIC12
LIBS:MCU_Microchip_PIC16
LIBS:MCU_Microchip_PIC18
LIBS:MCU_Microchip_PIC24
LIBS:MCU_Microchip_PIC32
LIBS:MCU_NXP_Kinetis
LIBS:MCU_NXP_LPC
LIBS:MCU_NXP_S08
LIBS:MCU_Parallax
LIBS:MCU_ST_STM8
LIBS:MCU_ST_STM32
LIBS:MCU_Texas_MSP430
LIBS:Mechanical
LIBS:modules
LIBS:motor_drivers
LIBS:Motor
LIBS:nordicsemi
LIBS:nxp
LIBS:onsemi
LIBS:Oscillators
LIBS:Power_Management
LIBS:powerint
LIBS:pspice
LIBS:references
LIBS:Relay
LIBS:RF_Bluetooth
LIBS:rfcom
LIBS:RFSolutions
LIBS:Sensor_Current
LIBS:Sensor_Humidity
LIBS:sensors
LIBS:silabs
LIBS:supertex
LIBS:Switch
LIBS:Transformer
LIBS:Transistor
LIBS:triac_thyristor
LIBS:Valve
LIBS:video
LIBS:wiznet
LIBS:Worldsemi
LIBS:Xicor
LIBS:xilinx-artix7
LIBS:xilinx-kintex7
LIBS:xilinx-spartan6
LIBS:xilinx-virtex5
LIBS:xilinx-virtex6
LIBS:xilinx-virtex7
LIBS:zetex
LIBS:Zilog
LIBS:ledbox-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 5
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L +5V #PWR0304
U 1 1 59DB9D21
P 1500 1350
F 0 "#PWR0304" H 1500 1200 50  0001 C CNN
F 1 "+5V" H 1500 1490 50  0000 C CNN
F 2 "" H 1500 1350 50  0001 C CNN
F 3 "" H 1500 1350 50  0001 C CNN
	1    1500 1350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR0305
U 1 1 59DB9D27
P 1500 3850
F 0 "#PWR0305" H 1500 3600 50  0001 C CNN
F 1 "GND" H 1500 3700 50  0000 C CNN
F 2 "" H 1500 3850 50  0001 C CNN
F 3 "" H 1500 3850 50  0001 C CNN
	1    1500 3850
	1    0    0    -1  
$EndComp
Text Label 3900 3050 2    60   ~ 0
RX
Text Label 3900 3150 2    60   ~ 0
TX
Text Label 3900 1750 2    60   ~ 0
MOSI
Text Label 3900 1850 2    60   ~ 0
MISO
Text Label 3900 1950 2    60   ~ 0
SCK
Text Label 3900 2900 2    60   ~ 0
~RESET
$Comp
L AVR-ISP-6 CON301
U 1 1 59DB9D34
P 8300 4800
F 0 "CON301" H 8400 5200 50  0000 C CNN
F 1 "AVR_ISP" H 8250 4450 50  0000 L BNN
F 2 "Connectors_IDC:IDC-Header_2x03_Pitch2.54mm_Straight" V 7780 4840 50  0001 C CNN
F 3 "" H 8275 4800 50  0001 C CNN
	1    8300 4800
	1    0    0    -1  
$EndComp
Text Label 9000 4900 2    60   ~ 0
~RESET
Text Label 9000 4700 2    60   ~ 0
MOSI
Text Label 9000 4600 2    60   ~ 0
MISO
Text Label 9000 4800 2    60   ~ 0
SCK
$Comp
L +5V #PWR0316
U 1 1 59DB9D3F
P 8200 4200
F 0 "#PWR0316" H 8200 4050 50  0001 C CNN
F 1 "+5V" H 8200 4340 50  0000 C CNN
F 2 "" H 8200 4200 50  0001 C CNN
F 3 "" H 8200 4200 50  0001 C CNN
	1    8200 4200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR0317
U 1 1 59DB9D45
P 8200 5300
F 0 "#PWR0317" H 8200 5050 50  0001 C CNN
F 1 "GND" H 8200 5150 50  0000 C CNN
F 2 "" H 8200 5300 50  0001 C CNN
F 3 "" H 8200 5300 50  0001 C CNN
	1    8200 5300
	1    0    0    -1  
$EndComp
$Comp
L Crystal Y301
U 1 1 59DB9D4B
P 8250 1800
F 0 "Y301" H 8250 1950 50  0000 C CNN
F 1 "20MHz" H 8250 1650 50  0000 C CNN
F 2 "Crystals:Crystal_HC49-U_Vertical" H 8250 1800 50  0001 C CNN
F 3 "" H 8250 1800 50  0001 C CNN
	1    8250 1800
	1    0    0    -1  
$EndComp
$Comp
L C C306
U 1 1 59DB9D52
P 7900 2150
F 0 "C306" H 7925 2250 50  0000 L CNN
F 1 "22p" H 7925 2050 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 7938 2000 50  0001 C CNN
F 3 "" H 7900 2150 50  0001 C CNN
	1    7900 2150
	1    0    0    -1  
$EndComp
$Comp
L C C307
U 1 1 59DB9D59
P 8600 2150
F 0 "C307" H 8625 2250 50  0000 L CNN
F 1 "22p" H 8625 2050 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 8638 2000 50  0001 C CNN
F 3 "" H 8600 2150 50  0001 C CNN
	1    8600 2150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR0315
U 1 1 59DB9D60
P 7900 2400
F 0 "#PWR0315" H 7900 2150 50  0001 C CNN
F 1 "GND" H 7900 2250 50  0000 C CNN
F 2 "" H 7900 2400 50  0001 C CNN
F 3 "" H 7900 2400 50  0001 C CNN
	1    7900 2400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR0318
U 1 1 59DB9D66
P 8600 2400
F 0 "#PWR0318" H 8600 2150 50  0001 C CNN
F 1 "GND" H 8600 2250 50  0000 C CNN
F 2 "" H 8600 2400 50  0001 C CNN
F 3 "" H 8600 2400 50  0001 C CNN
	1    8600 2400
	1    0    0    -1  
$EndComp
Text Notes 4350 3100 0    60   ~ 0
RX und BTN können über PCINT \nden Controller aus dem IDLE \nZustand wecken.
Text Notes 8350 4300 0    60   ~ 0
SPI Programmer
Text Notes 4350 3800 0    60   ~ 0
Analog Comparator \nwird verwendet
$Comp
L +5V #PWR0302
U 1 1 59DBC11C
P 1400 5050
F 0 "#PWR0302" H 1400 4900 50  0001 C CNN
F 1 "+5V" H 1400 5190 50  0000 C CNN
F 2 "" H 1400 5050 50  0001 C CNN
F 3 "" H 1400 5050 50  0001 C CNN
	1    1400 5050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR0303
U 1 1 59DBC122
P 1400 5750
F 0 "#PWR0303" H 1400 5500 50  0001 C CNN
F 1 "GND" H 1400 5600 50  0000 C CNN
F 2 "" H 1400 5750 50  0001 C CNN
F 3 "" H 1400 5750 50  0001 C CNN
	1    1400 5750
	1    0    0    -1  
$EndComp
$Comp
L C C302
U 1 1 59DBC128
P 1400 5400
F 0 "C302" H 1425 5500 50  0000 L CNN
F 1 "100n" H 1425 5300 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 1438 5250 50  0001 C CNN
F 3 "" H 1400 5400 50  0001 C CNN
	1    1400 5400
	1    0    0    -1  
$EndComp
Text Label 7900 1500 3    60   ~ 0
XTAL1
Text Label 8600 1500 3    60   ~ 0
XTAL2
$Comp
L C C301
U 1 1 59DBCA3F
P 1350 2050
F 0 "C301" H 1375 2150 50  0000 L CNN
F 1 "100n" H 1375 1950 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 1388 1900 50  0001 C CNN
F 3 "" H 1350 2050 50  0001 C CNN
	1    1350 2050
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR0301
U 1 1 59DBCAA6
P 1100 2250
F 0 "#PWR0301" H 1100 2000 50  0001 C CNN
F 1 "GND" H 1100 2100 50  0000 C CNN
F 2 "" H 1100 2250 50  0001 C CNN
F 3 "" H 1100 2250 50  0001 C CNN
	1    1100 2250
	1    0    0    -1  
$EndComp
Text Label 3900 1550 2    60   ~ 0
PB1
Text Label 3900 2050 2    60   ~ 0
XTAL1
Text Label 3900 2150 2    60   ~ 0
XTAL2
Text Label 3900 3250 2    60   ~ 0
PD2
Text Label 1200 2800 0    60   ~ 0
ADC6
Text Label 1200 2900 0    60   ~ 0
ADC7
Wire Wire Line
	1200 2050 1100 2050
Wire Wire Line
	1600 2050 1500 2050
Wire Wire Line
	1600 2800 1200 2800
Wire Wire Line
	1200 2900 1600 2900
Wire Wire Line
	3900 3250 3500 3250
Wire Wire Line
	3900 1550 3500 1550
Wire Wire Line
	3500 2150 3900 2150
Wire Wire Line
	3900 2050 3500 2050
Wire Wire Line
	3500 2500 3900 2500
Wire Wire Line
	3900 2600 3500 2600
Wire Wire Line
	3500 2700 3900 2700
Wire Wire Line
	3900 2800 3500 2800
Wire Wire Line
	1100 2050 1100 2250
Connection ~ 1500 3750
Wire Wire Line
	1500 3750 1600 3750
Connection ~ 1500 3650
Wire Wire Line
	1600 3650 1500 3650
Wire Wire Line
	1500 3550 1600 3550
Wire Wire Line
	1500 3550 1500 3850
Connection ~ 1500 1550
Wire Wire Line
	1500 1550 1600 1550
Connection ~ 1500 1450
Wire Wire Line
	1600 1450 1500 1450
Wire Wire Line
	1500 1350 1500 1750
Wire Wire Line
	1500 1750 1600 1750
Wire Wire Line
	1400 5050 1400 5250
Wire Wire Line
	1400 5550 1400 5750
Wire Wire Line
	3900 2900 3500 2900
Wire Wire Line
	3900 2300 3500 2300
Wire Wire Line
	3500 3750 3900 3750
Wire Wire Line
	3900 3650 3500 3650
Wire Wire Line
	3900 3550 3500 3550
Wire Wire Line
	7900 2400 7900 2300
Wire Wire Line
	8600 2400 8600 2300
Connection ~ 8600 1800
Wire Wire Line
	8400 1800 8600 1800
Wire Wire Line
	8600 1500 8600 2000
Connection ~ 7900 1800
Wire Wire Line
	7900 1800 8100 1800
Wire Wire Line
	7900 1500 7900 2000
Wire Wire Line
	3500 1950 4000 1950
Wire Wire Line
	3500 1850 4300 1850
Wire Wire Line
	3500 1750 4000 1750
Wire Wire Line
	3900 3450 3500 3450
Wire Wire Line
	3900 3150 3500 3150
Wire Wire Line
	3500 3050 3900 3050
$Comp
L R R301
U 1 1 59DBE727
P 4150 1750
F 0 "R301" V 4230 1750 50  0000 C CNN
F 1 "1k" V 4150 1750 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 4080 1750 50  0001 C CNN
F 3 "" H 4150 1750 50  0001 C CNN
	1    4150 1750
	0    1    1    0   
$EndComp
$Comp
L R R303
U 1 1 59DBE7DA
P 4450 1850
F 0 "R303" V 4530 1850 50  0000 C CNN
F 1 "1k" V 4450 1850 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 4380 1850 50  0001 C CNN
F 3 "" H 4450 1850 50  0001 C CNN
	1    4450 1850
	0    1    1    0   
$EndComp
$Comp
L R R302
U 1 1 59DBE80F
P 4150 1950
F 0 "R302" V 4230 1950 50  0000 C CNN
F 1 "1k" V 4150 1950 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 4080 1950 50  0001 C CNN
F 3 "" H 4150 1950 50  0001 C CNN
	1    4150 1950
	0    1    1    0   
$EndComp
Text Label 4900 1750 2    60   ~ 0
PB3
Text Label 4900 1850 2    60   ~ 0
PB4
Text Label 4900 1950 2    60   ~ 0
PB5
Wire Wire Line
	4900 1750 4300 1750
Wire Wire Line
	4900 1850 4600 1850
Wire Wire Line
	4900 1950 4300 1950
Text Label 3300 5200 2    60   ~ 0
PB0
Text Label 3300 5500 2    60   ~ 0
PB3
Text Label 3300 5600 2    60   ~ 0
PB4
Text Label 3300 5700 2    60   ~ 0
PB5
Text Label 4300 5500 2    60   ~ 0
RX
Text Label 4300 5600 2    60   ~ 0
TX
Text Label 4300 5300 2    60   ~ 0
PD2
Text Label 5150 5400 2    60   ~ 0
ADC6
Text Label 5950 5400 2    60   ~ 0
ADC7
$Comp
L Conn_01x03 J306
U 1 1 59DC0E47
P 5450 5400
F 0 "J306" H 5450 5600 50  0000 C CNN
F 1 "ADC7" H 5450 5200 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x03_Pitch2.54mm" H 5450 5400 50  0001 C CNN
F 3 "" H 5450 5400 50  0001 C CNN
F 4 "DNP" H 5450 5400 60  0001 C CNN "Assembly"
	1    5450 5400
	-1   0    0    -1  
$EndComp
$Comp
L +5V #PWR0313
U 1 1 59DC0F73
P 5950 5200
F 0 "#PWR0313" H 5950 5050 50  0001 C CNN
F 1 "+5V" H 5950 5340 50  0000 C CNN
F 2 "" H 5950 5200 50  0001 C CNN
F 3 "" H 5950 5200 50  0001 C CNN
	1    5950 5200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR0314
U 1 1 59DC100E
P 5950 5600
F 0 "#PWR0314" H 5950 5350 50  0001 C CNN
F 1 "GND" H 5950 5450 50  0000 C CNN
F 2 "" H 5950 5600 50  0001 C CNN
F 3 "" H 5950 5600 50  0001 C CNN
	1    5950 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 5600 5950 5500
Wire Wire Line
	5950 5500 5650 5500
Wire Wire Line
	5650 5400 5950 5400
Wire Wire Line
	5950 5200 5950 5300
Wire Wire Line
	5950 5300 5650 5300
$Comp
L Conn_01x03 J305
U 1 1 59DC1310
P 4650 5400
F 0 "J305" H 4650 5600 50  0000 C CNN
F 1 "ADC6" H 4650 5200 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x03_Pitch2.54mm" H 4650 5400 50  0001 C CNN
F 3 "" H 4650 5400 50  0001 C CNN
F 4 "DNP" H 4650 5400 60  0001 C CNN "Assembly"
	1    4650 5400
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5150 5400 4850 5400
$Comp
L GND #PWR0310
U 1 1 59DC147E
P 5150 5600
F 0 "#PWR0310" H 5150 5350 50  0001 C CNN
F 1 "GND" H 5150 5450 50  0000 C CNN
F 2 "" H 5150 5600 50  0001 C CNN
F 3 "" H 5150 5600 50  0001 C CNN
	1    5150 5600
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR0309
U 1 1 59DC14BC
P 5150 5200
F 0 "#PWR0309" H 5150 5050 50  0001 C CNN
F 1 "+5V" H 5150 5340 50  0000 C CNN
F 2 "" H 5150 5200 50  0001 C CNN
F 3 "" H 5150 5200 50  0001 C CNN
	1    5150 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 5200 5150 5300
Wire Wire Line
	5150 5300 4850 5300
Wire Wire Line
	4850 5500 5150 5500
Wire Wire Line
	5150 5500 5150 5600
Wire Wire Line
	4300 5500 3950 5500
Wire Wire Line
	3950 5600 4300 5600
Wire Wire Line
	4300 5300 3950 5300
Wire Wire Line
	2950 5200 3300 5200
Wire Wire Line
	3300 5500 2950 5500
Wire Wire Line
	2950 5600 3300 5600
Wire Wire Line
	3300 5700 2950 5700
$Comp
L +5V #PWR0306
U 1 1 59DC2648
P 1800 5100
F 0 "#PWR0306" H 1800 4950 50  0001 C CNN
F 1 "+5V" H 1800 5240 50  0000 C CNN
F 2 "" H 1800 5100 50  0001 C CNN
F 3 "" H 1800 5100 50  0001 C CNN
	1    1800 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 5100 1800 5700
Wire Wire Line
	2500 5200 2500 5800
Wire Wire Line
	1900 5400 1800 5400
Wire Wire Line
	1800 5500 1900 5500
Connection ~ 1800 5500
Wire Wire Line
	1900 5600 1800 5600
Connection ~ 1800 5600
Wire Wire Line
	1800 5700 1900 5700
Wire Wire Line
	2400 5400 2500 5400
Wire Wire Line
	2500 5500 2400 5500
Connection ~ 2500 5500
Wire Wire Line
	2400 5600 2500 5600
Connection ~ 2500 5600
Wire Wire Line
	2500 5700 2400 5700
Text HLabel 3900 2300 2    60   Output ~ 0
TX_EN
Text HLabel 3900 3050 2    60   Input ~ 0
RX
Text HLabel 3900 3150 2    60   Output ~ 0
TX
Text HLabel 3900 3450 2    60   Input ~ 0
BTN
Text HLabel 3900 3550 2    60   Output ~ 0
LED_IR
Text HLabel 3900 3650 2    60   Input ~ 0
AIN0
Text HLabel 3900 3750 2    60   Input ~ 0
AIN1
$Comp
L GND #PWR0307
U 1 1 59DD0A3B
P 2500 5800
F 0 "#PWR0307" H 2500 5550 50  0001 C CNN
F 1 "GND" H 2500 5650 50  0000 C CNN
F 2 "" H 2500 5800 50  0001 C CNN
F 3 "" H 2500 5800 50  0001 C CNN
	1    2500 5800
	1    0    0    -1  
$EndComp
Text HLabel 3900 2900 2    60   Input ~ 0
~RESET
$Comp
L ATMEGA88A-AU U301
U 1 1 59E5004A
P 2500 2550
F 0 "U301" H 1750 3800 50  0000 L BNN
F 1 "ATMEGA88A-AU" H 2900 1150 50  0000 L BNN
F 2 "Housings_QFP:TQFP-32_7x7mm_Pitch0.8mm" H 2500 2550 50  0001 C CIN
F 3 "" H 2500 2550 50  0001 C CNN
	1    2500 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	9000 4600 8700 4600
Wire Wire Line
	8700 4700 9000 4700
Wire Wire Line
	9000 4800 8700 4800
Wire Wire Line
	8700 4900 9000 4900
Wire Wire Line
	8200 4300 8200 4200
Wire Wire Line
	8200 5300 8200 5200
Text HLabel 3900 2500 2    60   Output ~ 0
LED1
Text HLabel 3900 2600 2    60   Output ~ 0
LED2
Text HLabel 3900 2700 2    60   Input ~ 0
PUSH1
Text HLabel 3900 2800 2    60   Input ~ 0
PUSH2
Connection ~ 2500 5700
Text HLabel 3900 3350 2    60   Output ~ 0
RGB_D
Wire Wire Line
	3900 3350 3500 3350
Text Notes 4500 3450 0    60   ~ 0
Bei 20MHz ist ein Bit für die LEDs genau 25 (max. 37) Takte lang.\n
Text Label 3900 1450 2    60   ~ 0
PB0
Text Label 3900 1650 2    60   ~ 0
PB2
Wire Wire Line
	3900 1650 3500 1650
Wire Wire Line
	3900 1450 3500 1450
$Comp
L Conn_02x06_Odd_Even J301
U 1 1 5AA5C6BE
P 2100 5400
F 0 "J301" H 2150 5817 50  0000 C CNN
F 1 "Power B" H 2150 5726 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_2x06_Pitch2.54mm" H 2100 5400 50  0001 C CNN
F 3 "~" H 2100 5400 50  0001 C CNN
	1    2100 5400
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x06 J302
U 1 1 5AA5C7F1
P 2750 5400
F 0 "J302" H 2700 5800 50  0000 L CNN
F 1 "Port B" H 2650 5700 50  0000 L CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x06_Pitch2.54mm" H 2750 5400 50  0001 C CNN
F 3 "~" H 2750 5400 50  0001 C CNN
	1    2750 5400
	-1   0    0    -1  
$EndComp
Text Label 3300 5300 2    60   ~ 0
PB1
Text Label 3300 5400 2    60   ~ 0
PB2
Wire Wire Line
	3300 5300 2950 5300
Wire Wire Line
	2950 5400 3300 5400
Wire Wire Line
	1800 5200 1900 5200
Wire Wire Line
	1800 5300 1900 5300
Connection ~ 1800 5200
Connection ~ 1800 5400
Connection ~ 1800 5300
Wire Wire Line
	2500 5200 2400 5200
Connection ~ 2500 5400
Wire Wire Line
	2400 5300 2500 5300
Connection ~ 2500 5300
$Comp
L +5V #PWR0311
U 1 1 5AA5E31D
P 5600 1300
F 0 "#PWR0311" H 5600 1150 50  0001 C CNN
F 1 "+5V" H 5600 1440 50  0000 C CNN
F 2 "" H 5600 1300 50  0001 C CNN
F 3 "" H 5600 1300 50  0001 C CNN
	1    5600 1300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR0312
U 1 1 5AA5E323
P 5600 2000
F 0 "#PWR0312" H 5600 1750 50  0001 C CNN
F 1 "GND" H 5600 1850 50  0000 C CNN
F 2 "" H 5600 2000 50  0001 C CNN
F 3 "" H 5600 2000 50  0001 C CNN
	1    5600 2000
	1    0    0    -1  
$EndComp
$Comp
L C C303
U 1 1 5AA5E329
P 5600 1650
F 0 "C303" H 5625 1750 50  0000 L CNN
F 1 "100n" H 5625 1550 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 5638 1500 50  0001 C CNN
F 3 "" H 5600 1650 50  0001 C CNN
	1    5600 1650
	1    0    0    -1  
$EndComp
$Comp
L C C304
U 1 1 5AA5E330
P 5900 1650
F 0 "C304" H 5925 1750 50  0000 L CNN
F 1 "100n" H 5925 1550 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 5938 1500 50  0001 C CNN
F 3 "" H 5900 1650 50  0001 C CNN
	1    5900 1650
	1    0    0    -1  
$EndComp
$Comp
L C C305
U 1 1 5AA5E337
P 6200 1650
F 0 "C305" H 6225 1750 50  0000 L CNN
F 1 "100n" H 6225 1550 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 6238 1500 50  0001 C CNN
F 3 "" H 6200 1650 50  0001 C CNN
	1    6200 1650
	1    0    0    -1  
$EndComp
Connection ~ 5900 1900
Wire Wire Line
	5900 1800 5900 1900
Connection ~ 5600 1900
Wire Wire Line
	6200 1900 6200 1800
Wire Wire Line
	5600 1900 6200 1900
Connection ~ 5900 1400
Wire Wire Line
	5900 1500 5900 1400
Connection ~ 5600 1400
Wire Wire Line
	6200 1400 6200 1500
Wire Wire Line
	5600 1400 6200 1400
Wire Wire Line
	5600 1300 5600 1500
Wire Wire Line
	5600 1800 5600 2000
$Comp
L GND #PWR0308
U 1 1 5AA6BFB1
P 4300 5800
F 0 "#PWR0308" H 4300 5550 50  0001 C CNN
F 1 "GND" H 4300 5650 50  0000 C CNN
F 2 "" H 4300 5800 50  0001 C CNN
F 3 "" H 4300 5800 50  0001 C CNN
	1    4300 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 5800 4300 5700
Wire Wire Line
	4300 5700 3950 5700
Text Label 3900 2400 2    60   ~ 0
PC1
Wire Wire Line
	3900 2400 3500 2400
$Comp
L Conn_01x03 J304
U 1 1 5AA6F1EE
P 3750 5600
F 0 "J304" H 3830 5642 50  0000 L CNN
F 1 "UART" H 3830 5551 50  0000 L CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x03_Pitch2.54mm" H 3750 5600 50  0001 C CNN
F 3 "~" H 3750 5600 50  0001 C CNN
	1    3750 5600
	-1   0    0    -1  
$EndComp
$Comp
L Conn_01x02 J303
U 1 1 5AA6F3E5
P 3750 5200
F 0 "J303" H 3830 5192 50  0000 L CNN
F 1 "Spare" H 3830 5101 50  0000 L CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x02_Pitch2.54mm" H 3750 5200 50  0001 C CNN
F 3 "~" H 3750 5200 50  0001 C CNN
	1    3750 5200
	-1   0    0    -1  
$EndComp
Text Label 4300 5200 2    60   ~ 0
PC1
Wire Wire Line
	4300 5200 3950 5200
$EndSCHEMATC
