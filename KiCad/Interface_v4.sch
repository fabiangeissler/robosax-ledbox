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
Sheet 5 5
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
L R R506
U 1 1 59DBA988
P 7100 2450
F 0 "R506" V 7180 2450 50  0000 C CNN
F 1 "10k" V 7100 2450 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 7030 2450 50  0001 C CNN
F 3 "" H 7100 2450 50  0001 C CNN
	1    7100 2450
	1    0    0    -1  
$EndComp
Text Label 6500 1400 0    60   ~ 0
IR_LED_DRV
$Comp
L +5V #PWR0516
U 1 1 59DBA99A
P 7100 2200
F 0 "#PWR0516" H 7100 2050 50  0001 C CNN
F 1 "+5V" H 7100 2340 50  0000 C CNN
F 2 "" H 7100 2200 50  0001 C CNN
F 3 "" H 7100 2200 50  0001 C CNN
	1    7100 2200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR0517
U 1 1 59DBA9A0
P 7100 2900
F 0 "#PWR0517" H 7100 2650 50  0001 C CNN
F 1 "GND" H 7100 2750 50  0000 C CNN
F 2 "" H 7100 2900 50  0001 C CNN
F 3 "" H 7100 2900 50  0001 C CNN
	1    7100 2900
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x02 J502
U 1 1 59DBA9A6
P 7400 2700
F 0 "J502" H 7400 2800 50  0000 C CNN
F 1 "Button" H 7400 2500 50  0000 C CNN
F 2 "Connectors_Molex:Molex_KK-6410-02_02x2.54mm_Straight" H 7400 2700 50  0001 C CNN
F 3 "" H 7400 2700 50  0001 C CNN
	1    7400 2700
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x03 J501
U 1 1 59DBA9AD
P 7400 1400
F 0 "J501" H 7400 1600 50  0000 C CNN
F 1 "IR LED" H 7400 1200 50  0000 C CNN
F 2 "Connectors_Molex:Molex_KK-6410-03_03x2.54mm_Straight" H 7400 1400 50  0001 C CNN
F 3 "" H 7400 1400 50  0001 C CNN
	1    7400 1400
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR0515
U 1 1 59DBA9B4
P 7100 1200
F 0 "#PWR0515" H 7100 1050 50  0001 C CNN
F 1 "+5V" H 7100 1340 50  0000 C CNN
F 2 "" H 7100 1200 50  0001 C CNN
F 3 "" H 7100 1200 50  0001 C CNN
	1    7100 1200
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR0518
U 1 1 59DBAB60
P 7200 4800
F 0 "#PWR0518" H 7200 4650 50  0001 C CNN
F 1 "+5V" H 7200 4940 50  0000 C CNN
F 2 "" H 7200 4800 50  0001 C CNN
F 3 "" H 7200 4800 50  0001 C CNN
	1    7200 4800
	1    0    0    -1  
$EndComp
$Comp
L R R507
U 1 1 59DBAB66
P 7200 5050
F 0 "R507" V 7280 5050 50  0000 C CNN
F 1 "10k" V 7200 5050 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 7130 5050 50  0001 C CNN
F 3 "" H 7200 5050 50  0001 C CNN
	1    7200 5050
	1    0    0    -1  
$EndComp
$Comp
L SW_Push SW501
U 1 1 59DBAB71
P 7200 5600
F 0 "SW501" H 7250 5700 50  0000 L CNN
F 1 "Reset" H 7200 5540 50  0000 C CNN
F 2 "Buttons_Switches_THT:SW_PUSH_6mm_h5mm" H 7200 5800 50  0001 C CNN
F 3 "" H 7200 5800 50  0001 C CNN
F 4 "DNP" H 7200 5600 60  0001 C CNN "Assembly"
	1    7200 5600
	0    1    1    0   
$EndComp
$Comp
L GND #PWR0519
U 1 1 59DBAB78
P 7200 5900
F 0 "#PWR0519" H 7200 5650 50  0001 C CNN
F 1 "GND" H 7200 5750 50  0000 C CNN
F 2 "" H 7200 5900 50  0001 C CNN
F 3 "" H 7200 5900 50  0001 C CNN
	1    7200 5900
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR0520
U 1 1 59DBAB80
P 7900 4800
F 0 "#PWR0520" H 7900 4650 50  0001 C CNN
F 1 "+5V" H 7900 4940 50  0000 C CNN
F 2 "" H 7900 4800 50  0001 C CNN
F 3 "" H 7900 4800 50  0001 C CNN
	1    7900 4800
	1    0    0    -1  
$EndComp
$Comp
L R R508
U 1 1 59DBAB86
P 7900 5050
F 0 "R508" V 7980 5050 50  0000 C CNN
F 1 "10k" V 7900 5050 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 7830 5050 50  0001 C CNN
F 3 "" H 7900 5050 50  0001 C CNN
	1    7900 5050
	1    0    0    -1  
$EndComp
$Comp
L SW_Push SW502
U 1 1 59DBAB91
P 7900 5600
F 0 "SW502" H 7950 5700 50  0000 L CNN
F 1 "Push 1" H 7900 5540 50  0000 C CNN
F 2 "Buttons_Switches_THT:SW_PUSH_6mm_h5mm" H 7900 5800 50  0001 C CNN
F 3 "" H 7900 5800 50  0001 C CNN
F 4 "DNP" H 7900 5600 60  0001 C CNN "Assembly"
	1    7900 5600
	0    1    1    0   
$EndComp
$Comp
L GND #PWR0521
U 1 1 59DBAB98
P 7900 5900
F 0 "#PWR0521" H 7900 5650 50  0001 C CNN
F 1 "GND" H 7900 5750 50  0000 C CNN
F 2 "" H 7900 5900 50  0001 C CNN
F 3 "" H 7900 5900 50  0001 C CNN
	1    7900 5900
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR0524
U 1 1 59DBABA0
P 8600 4800
F 0 "#PWR0524" H 8600 4650 50  0001 C CNN
F 1 "+5V" H 8600 4940 50  0000 C CNN
F 2 "" H 8600 4800 50  0001 C CNN
F 3 "" H 8600 4800 50  0001 C CNN
	1    8600 4800
	1    0    0    -1  
$EndComp
$Comp
L R R509
U 1 1 59DBABA6
P 8600 5050
F 0 "R509" V 8680 5050 50  0000 C CNN
F 1 "10k" V 8600 5050 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 8530 5050 50  0001 C CNN
F 3 "" H 8600 5050 50  0001 C CNN
	1    8600 5050
	1    0    0    -1  
$EndComp
$Comp
L SW_Push SW503
U 1 1 59DBABB1
P 8600 5600
F 0 "SW503" H 8650 5700 50  0000 L CNN
F 1 "Push 2" H 8600 5540 50  0000 C CNN
F 2 "Buttons_Switches_THT:SW_PUSH_6mm_h5mm" H 8600 5800 50  0001 C CNN
F 3 "" H 8600 5800 50  0001 C CNN
F 4 "DNP" H 8600 5600 60  0001 C CNN "Assembly"
	1    8600 5600
	0    1    1    0   
$EndComp
$Comp
L GND #PWR0525
U 1 1 59DBABB8
P 8600 5900
F 0 "#PWR0525" H 8600 5650 50  0001 C CNN
F 1 "GND" H 8600 5750 50  0000 C CNN
F 2 "" H 8600 5900 50  0001 C CNN
F 3 "" H 8600 5900 50  0001 C CNN
	1    8600 5900
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR0513
U 1 1 59DBB492
P 6300 4000
F 0 "#PWR0513" H 6300 3850 50  0001 C CNN
F 1 "+5V" H 6300 4140 50  0000 C CNN
F 2 "" H 6300 4000 50  0001 C CNN
F 3 "" H 6300 4000 50  0001 C CNN
	1    6300 4000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR0514
U 1 1 59DBB498
P 6300 4500
F 0 "#PWR0514" H 6300 4250 50  0001 C CNN
F 1 "GND" H 6300 4350 50  0000 C CNN
F 2 "" H 6300 4500 50  0001 C CNN
F 3 "" H 6300 4500 50  0001 C CNN
	1    6300 4500
	1    0    0    -1  
$EndComp
$Comp
L C C503
U 1 1 59DBB49E
P 6300 4250
F 0 "C503" H 6325 4350 50  0000 L CNN
F 1 "10u" H 6325 4150 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 6338 4100 50  0001 C CNN
F 3 "" H 6300 4250 50  0001 C CNN
	1    6300 4250
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR0522
U 1 1 59DBB50F
P 8200 1100
F 0 "#PWR0522" H 8200 950 50  0001 C CNN
F 1 "+5V" H 8200 1240 50  0000 C CNN
F 2 "" H 8200 1100 50  0001 C CNN
F 3 "" H 8200 1100 50  0001 C CNN
	1    8200 1100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR0523
U 1 1 59DBB515
P 8200 1600
F 0 "#PWR0523" H 8200 1350 50  0001 C CNN
F 1 "GND" H 8200 1450 50  0000 C CNN
F 2 "" H 8200 1600 50  0001 C CNN
F 3 "" H 8200 1600 50  0001 C CNN
	1    8200 1600
	1    0    0    -1  
$EndComp
$Comp
L C C504
U 1 1 59DBB51B
P 8200 1350
F 0 "C504" H 8225 1450 50  0000 L CNN
F 1 "100n" H 8225 1250 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 8238 1200 50  0001 C CNN
F 3 "" H 8200 1350 50  0001 C CNN
	1    8200 1350
	1    0    0    -1  
$EndComp
Text HLabel 6800 2700 0    60   Output ~ 0
BTN
$Comp
L LED D501
U 1 1 59DCD086
P 9600 5150
F 0 "D501" H 9600 5250 50  0000 C CNN
F 1 "LED1" H 9600 5050 50  0000 C CNN
F 2 "LEDs:LED_D3.0mm" H 9600 5150 50  0001 C CNN
F 3 "" H 9600 5150 50  0001 C CNN
	1    9600 5150
	0    -1   -1   0   
$EndComp
$Comp
L R R510
U 1 1 59DCD11C
P 9600 5550
F 0 "R510" V 9680 5550 50  0000 C CNN
F 1 "430" V 9600 5550 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 9530 5550 50  0001 C CNN
F 3 "" H 9600 5550 50  0001 C CNN
	1    9600 5550
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR0526
U 1 1 59DCD1CC
P 9600 4900
F 0 "#PWR0526" H 9600 4750 50  0001 C CNN
F 1 "+5V" H 9600 5040 50  0000 C CNN
F 2 "" H 9600 4900 50  0001 C CNN
F 3 "" H 9600 4900 50  0001 C CNN
	1    9600 4900
	1    0    0    -1  
$EndComp
Text HLabel 7300 5300 2    60   Output ~ 0
~RESET
Text HLabel 8000 5300 2    60   Output ~ 0
PUSH1
Text HLabel 8700 5300 2    60   Output ~ 0
PUSH2
Text HLabel 9500 5800 0    60   Input ~ 0
LED1
Text HLabel 10200 5800 0    60   Input ~ 0
LED2
$Comp
L LED D502
U 1 1 59DCD70E
P 10300 5150
F 0 "D502" H 10300 5250 50  0000 C CNN
F 1 "LED2" H 10300 5050 50  0000 C CNN
F 2 "LEDs:LED_D3.0mm" H 10300 5150 50  0001 C CNN
F 3 "" H 10300 5150 50  0001 C CNN
	1    10300 5150
	0    -1   -1   0   
$EndComp
$Comp
L R R511
U 1 1 59DCD714
P 10300 5550
F 0 "R511" V 10380 5550 50  0000 C CNN
F 1 "430" V 10300 5550 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 10230 5550 50  0001 C CNN
F 3 "" H 10300 5550 50  0001 C CNN
	1    10300 5550
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR0527
U 1 1 59DCD71A
P 10300 4900
F 0 "#PWR0527" H 10300 4750 50  0001 C CNN
F 1 "+5V" H 10300 5040 50  0000 C CNN
F 2 "" H 10300 4900 50  0001 C CNN
F 3 "" H 10300 4900 50  0001 C CNN
	1    10300 4900
	1    0    0    -1  
$EndComp
$Comp
L Q_NMOS_GSD Q501
U 1 1 5AA46C50
P 3600 2500
F 0 "Q501" H 3806 2546 50  0000 L CNN
F 1 "NTR4003N" H 3806 2455 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 3800 2600 50  0001 C CNN
F 3 "http://www.onsemi.com/pub/Collateral/NTR4003N-D.PDF" H 3600 2500 50  0001 C CNN
F 4 "Logic Level N-ch 500mA MOS" H 3600 2500 60  0001 C CNN "Alternative"
	1    3600 2500
	1    0    0    -1  
$EndComp
$Comp
L R R501
U 1 1 5AA47145
P 3050 2500
F 0 "R501" V 3130 2500 50  0000 C CNN
F 1 "100" V 3050 2500 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 2980 2500 50  0001 C CNN
F 3 "" H 3050 2500 50  0001 C CNN
	1    3050 2500
	0    1    1    0   
$EndComp
$Comp
L R R503
U 1 1 5AA471CD
P 3700 1650
F 0 "R503" V 3780 1650 50  0000 C CNN
F 1 "220" V 3700 1650 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 3630 1650 50  0001 C CNN
F 3 "" H 3700 1650 50  0001 C CNN
	1    3700 1650
	-1   0    0    1   
$EndComp
$Comp
L R R504
U 1 1 5AA47253
P 4100 1650
F 0 "R504" V 4180 1650 50  0000 C CNN
F 1 "100" V 4100 1650 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 4030 1650 50  0001 C CNN
F 3 "" H 4100 1650 50  0001 C CNN
	1    4100 1650
	-1   0    0    1   
$EndComp
$Comp
L Jumper_NO_Small JP502
U 1 1 5AA47726
P 4100 2000
F 0 "JP502" V 4054 2048 50  0000 L CNN
F 1 "IR 36mA" V 4145 2048 50  0000 L CNN
F 2 "SMD_Jumper:Jumper_SMD_02" H 4100 2000 50  0001 C CNN
F 3 "" H 4100 2000 50  0001 C CNN
	1    4100 2000
	0    1    1    0   
$EndComp
$Comp
L R R505
U 1 1 5AA478A6
P 4500 1650
F 0 "R505" V 4580 1650 50  0000 C CNN
F 1 "47" V 4500 1650 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 4430 1650 50  0001 C CNN
F 3 "" H 4500 1650 50  0001 C CNN
	1    4500 1650
	-1   0    0    1   
$EndComp
$Comp
L Jumper_NO_Small JP503
U 1 1 5AA47A08
P 4500 2000
F 0 "JP503" V 4454 2048 50  0000 L CNN
F 1 "IR 76mA" V 4545 2048 50  0000 L CNN
F 2 "SMD_Jumper:Jumper_SMD_02" H 4500 2000 50  0001 C CNN
F 3 "" H 4500 2000 50  0001 C CNN
	1    4500 2000
	0    1    1    0   
$EndComp
Text Label 5100 1400 2    60   ~ 0
IR_LED_DRV
$Comp
L GND #PWR0506
U 1 1 5AA47F08
P 3700 3000
F 0 "#PWR0506" H 3700 2750 50  0001 C CNN
F 1 "GND" H 3700 2850 50  0000 C CNN
F 2 "" H 3700 3000 50  0001 C CNN
F 3 "" H 3700 3000 50  0001 C CNN
	1    3700 3000
	1    0    0    -1  
$EndComp
$Comp
L R R502
U 1 1 5AA48418
P 3300 2750
F 0 "R502" V 3380 2750 50  0000 C CNN
F 1 "100k" V 3300 2750 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 3230 2750 50  0001 C CNN
F 3 "" H 3300 2750 50  0001 C CNN
	1    3300 2750
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR0503
U 1 1 5AA48C8A
P 3300 3000
F 0 "#PWR0503" H 3300 2750 50  0001 C CNN
F 1 "GND" H 3300 2850 50  0000 C CNN
F 2 "" H 3300 3000 50  0001 C CNN
F 3 "" H 3300 3000 50  0001 C CNN
	1    3300 3000
	1    0    0    -1  
$EndComp
Connection ~ 3300 2500
Wire Wire Line
	3300 2600 3300 2500
Wire Wire Line
	3300 3000 3300 2900
Wire Wire Line
	3700 3000 3700 2700
Wire Wire Line
	3200 2500 3400 2500
Connection ~ 4100 1400
Wire Wire Line
	3700 1400 3700 1500
Connection ~ 4500 1400
Wire Wire Line
	4100 1400 4100 1500
Wire Wire Line
	4500 1400 4500 1500
Wire Wire Line
	3600 1400 5100 1400
Wire Wire Line
	4100 1900 4100 1800
Wire Wire Line
	4500 1900 4500 1800
Connection ~ 4100 2200
Wire Wire Line
	4500 2200 4500 2100
Connection ~ 3700 2200
Wire Wire Line
	4100 2200 4100 2100
Wire Wire Line
	3600 2200 4500 2200
Wire Wire Line
	3700 2100 3700 2300
Wire Wire Line
	7100 2300 7100 2200
Connection ~ 7100 2700
Wire Wire Line
	7100 2700 7100 2600
Wire Wire Line
	7100 2800 7200 2800
Wire Wire Line
	10300 5800 10300 5700
Wire Wire Line
	10200 5800 10300 5800
Wire Wire Line
	10300 5300 10300 5400
Wire Wire Line
	10300 4900 10300 5000
Wire Wire Line
	9600 5000 9600 4900
Wire Wire Line
	9600 5400 9600 5300
Wire Wire Line
	9600 5800 9600 5700
Wire Wire Line
	9500 5800 9600 5800
Wire Wire Line
	8200 1100 8200 1200
Wire Wire Line
	8200 1500 8200 1600
Wire Wire Line
	6300 4000 6300 4100
Wire Wire Line
	6300 4400 6300 4500
Connection ~ 8600 5300
Wire Wire Line
	8600 5900 8600 5800
Wire Wire Line
	8600 4800 8600 4900
Wire Wire Line
	8600 5200 8600 5400
Wire Wire Line
	8600 5300 8700 5300
Connection ~ 7900 5300
Wire Wire Line
	7900 5900 7900 5800
Wire Wire Line
	7900 4800 7900 4900
Wire Wire Line
	7900 5200 7900 5400
Wire Wire Line
	7900 5300 8000 5300
Connection ~ 7200 5300
Wire Wire Line
	7200 5900 7200 5800
Wire Wire Line
	7200 4800 7200 4900
Wire Wire Line
	7200 5200 7200 5400
Wire Wire Line
	7200 5300 7300 5300
Connection ~ 7100 1300
Wire Wire Line
	7200 1300 7100 1300
Wire Wire Line
	7100 1200 7100 1500
Wire Wire Line
	7100 1500 7200 1500
Wire Wire Line
	7100 2900 7100 2800
Wire Wire Line
	6500 1400 7200 1400
Wire Wire Line
	6800 2700 7200 2700
Text HLabel 2800 2500 0    60   Input ~ 0
LED_IR
Wire Wire Line
	2900 2500 2800 2500
$Comp
L WS2812B U501
U 1 1 5AA4BF8B
P 2700 5300
F 0 "U501" H 2400 5700 60  0000 L CNN
F 1 "WS2812B" H 2800 5700 60  0000 L CNN
F 2 "LEDs:LED_WS2812B-PLCC4" H 2750 4800 60  0001 L CNN
F 3 "https://cdn-shop.adafruit.com/datasheets/WS2812B.pdf" H 2750 4900 60  0001 L CNN
	1    2700 5300
	1    0    0    -1  
$EndComp
$Comp
L WS2812B U502
U 1 1 5AA4C0D8
P 4200 5300
F 0 "U502" H 3900 5700 60  0000 L CNN
F 1 "WS2812B" H 4300 5700 60  0000 L CNN
F 2 "LEDs:LED_WS2812B-PLCC4" H 4250 4800 60  0001 L CNN
F 3 "https://cdn-shop.adafruit.com/datasheets/WS2812B.pdf" H 4250 4900 60  0001 L CNN
	1    4200 5300
	1    0    0    -1  
$EndComp
$Comp
L WS2812B U503
U 1 1 5AA4C130
P 5700 5300
F 0 "U503" H 5400 5700 60  0000 L CNN
F 1 "WS2812B" H 5800 5700 60  0000 L CNN
F 2 "LEDs:LED_WS2812B-PLCC4" H 5750 4800 60  0001 L CNN
F 3 "https://cdn-shop.adafruit.com/datasheets/WS2812B.pdf" H 5750 4900 60  0001 L CNN
	1    5700 5300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR0502
U 1 1 5AA4C32F
P 2700 5900
F 0 "#PWR0502" H 2700 5650 50  0001 C CNN
F 1 "GND" H 2700 5750 50  0000 C CNN
F 2 "" H 2700 5900 50  0001 C CNN
F 3 "" H 2700 5900 50  0001 C CNN
	1    2700 5900
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR0508
U 1 1 5AA4C36E
P 4200 5900
F 0 "#PWR0508" H 4200 5650 50  0001 C CNN
F 1 "GND" H 4200 5750 50  0000 C CNN
F 2 "" H 4200 5900 50  0001 C CNN
F 3 "" H 4200 5900 50  0001 C CNN
	1    4200 5900
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR0512
U 1 1 5AA4C3AD
P 5700 5900
F 0 "#PWR0512" H 5700 5650 50  0001 C CNN
F 1 "GND" H 5700 5750 50  0000 C CNN
F 2 "" H 5700 5900 50  0001 C CNN
F 3 "" H 5700 5900 50  0001 C CNN
	1    5700 5900
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR0501
U 1 1 5AA4C46E
P 2700 4700
F 0 "#PWR0501" H 2700 4550 50  0001 C CNN
F 1 "+5V" H 2700 4840 50  0000 C CNN
F 2 "" H 2700 4700 50  0001 C CNN
F 3 "" H 2700 4700 50  0001 C CNN
	1    2700 4700
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR0507
U 1 1 5AA4C4AD
P 4200 4700
F 0 "#PWR0507" H 4200 4550 50  0001 C CNN
F 1 "+5V" H 4200 4840 50  0000 C CNN
F 2 "" H 4200 4700 50  0001 C CNN
F 3 "" H 4200 4700 50  0001 C CNN
	1    4200 4700
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR0511
U 1 1 5AA4C4EC
P 5700 4700
F 0 "#PWR0511" H 5700 4550 50  0001 C CNN
F 1 "+5V" H 5700 4840 50  0000 C CNN
F 2 "" H 5700 4700 50  0001 C CNN
F 3 "" H 5700 4700 50  0001 C CNN
	1    5700 4700
	1    0    0    -1  
$EndComp
$Comp
L C C502
U 1 1 5AA4C72D
P 4800 4250
F 0 "C502" H 4825 4350 50  0000 L CNN
F 1 "10u" H 4825 4150 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 4838 4100 50  0001 C CNN
F 3 "" H 4800 4250 50  0001 C CNN
	1    4800 4250
	1    0    0    -1  
$EndComp
$Comp
L C C501
U 1 1 5AA4C77B
P 3300 4250
F 0 "C501" H 3325 4350 50  0000 L CNN
F 1 "10u" H 3325 4150 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 3338 4100 50  0001 C CNN
F 3 "" H 3300 4250 50  0001 C CNN
	1    3300 4250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR0510
U 1 1 5AA4C857
P 4800 4500
F 0 "#PWR0510" H 4800 4250 50  0001 C CNN
F 1 "GND" H 4800 4350 50  0000 C CNN
F 2 "" H 4800 4500 50  0001 C CNN
F 3 "" H 4800 4500 50  0001 C CNN
	1    4800 4500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR0505
U 1 1 5AA4C89A
P 3300 4500
F 0 "#PWR0505" H 3300 4250 50  0001 C CNN
F 1 "GND" H 3300 4350 50  0000 C CNN
F 2 "" H 3300 4500 50  0001 C CNN
F 3 "" H 3300 4500 50  0001 C CNN
	1    3300 4500
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR0509
U 1 1 5AA4C8DD
P 4800 4000
F 0 "#PWR0509" H 4800 3850 50  0001 C CNN
F 1 "+5V" H 4800 4140 50  0000 C CNN
F 2 "" H 4800 4000 50  0001 C CNN
F 3 "" H 4800 4000 50  0001 C CNN
	1    4800 4000
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR0504
U 1 1 5AA4C920
P 3300 4000
F 0 "#PWR0504" H 3300 3850 50  0001 C CNN
F 1 "+5V" H 3300 4140 50  0000 C CNN
F 2 "" H 3300 4000 50  0001 C CNN
F 3 "" H 3300 4000 50  0001 C CNN
	1    3300 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 4000 4800 4100
Wire Wire Line
	3300 4100 3300 4000
Wire Wire Line
	3300 4400 3300 4500
Wire Wire Line
	4800 4500 4800 4400
Wire Wire Line
	4700 5300 5200 5300
Wire Wire Line
	3200 5300 3700 5300
Wire Wire Line
	4200 4800 4200 4700
Wire Wire Line
	4200 5800 4200 5900
Wire Wire Line
	5700 5900 5700 5800
Wire Wire Line
	5700 4800 5700 4700
Wire Wire Line
	2700 4700 2700 4800
Wire Wire Line
	2700 5800 2700 5900
Text HLabel 1700 5300 0    60   Input ~ 0
RGB_D
Wire Wire Line
	1700 5300 2200 5300
$Comp
L Test_Point TP504
U 1 1 5AA55486
P 3600 2200
F 0 "TP504" V 3795 2274 50  0000 C CNN
F 1 "IR PWM" V 3704 2274 50  0000 C CNN
F 2 "Test:TEST_10" H 3800 2200 50  0001 C CNN
F 3 "~" H 3800 2200 50  0001 C CNN
	1    3600 2200
	0    -1   -1   0   
$EndComp
$Comp
L Test_Point TP501
U 1 1 5AA55DFF
P 1800 5200
F 0 "TP501" H 1858 5320 50  0000 L CNN
F 1 "RGB1" H 1858 5229 50  0000 L CNN
F 2 "Test:TEST_10" H 2000 5200 50  0001 C CNN
F 3 "~" H 2000 5200 50  0001 C CNN
	1    1800 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 5200 1800 5300
Connection ~ 1800 5300
$Comp
L Test_Point TP502
U 1 1 5AA56993
P 3300 5200
F 0 "TP502" H 3358 5320 50  0000 L CNN
F 1 "RGB2" H 3358 5229 50  0000 L CNN
F 2 "Test:TEST_10" H 3500 5200 50  0001 C CNN
F 3 "~" H 3500 5200 50  0001 C CNN
	1    3300 5200
	1    0    0    -1  
$EndComp
$Comp
L Test_Point TP505
U 1 1 5AA56DEB
P 4800 5200
F 0 "TP505" H 4858 5320 50  0000 L CNN
F 1 "RGB3" H 4858 5229 50  0000 L CNN
F 2 "Test:TEST_10" H 5000 5200 50  0001 C CNN
F 3 "~" H 5000 5200 50  0001 C CNN
	1    4800 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 5200 3300 5300
Connection ~ 3300 5300
Wire Wire Line
	4800 5200 4800 5300
Connection ~ 4800 5300
$Comp
L Jumper_NO_Small JP501
U 1 1 5AA63C09
P 3700 2000
F 0 "JP501" V 3654 2048 50  0000 L CNN
F 1 "IR 12mA" V 3745 2048 50  0000 L CNN
F 2 "SMD_Jumper:Jumper_SMD_02" H 3700 2000 50  0001 C CNN
F 3 "" H 3700 2000 50  0001 C CNN
	1    3700 2000
	0    1    1    0   
$EndComp
Wire Wire Line
	3700 1900 3700 1800
$Comp
L Test_Point TP503
U 1 1 5AA669DF
P 3600 1400
F 0 "TP503" V 3795 1474 50  0000 C CNN
F 1 "IR LED" V 3704 1474 50  0000 C CNN
F 2 "Test:TEST_10" H 3800 1400 50  0001 C CNN
F 3 "~" H 3800 1400 50  0001 C CNN
	1    3600 1400
	0    -1   -1   0   
$EndComp
Connection ~ 3700 1400
NoConn ~ 6200 5300
$EndSCHEMATC
