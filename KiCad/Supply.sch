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
L CP C501
U 1 1 59DBA0C2
P 5100 4250
F 0 "C501" H 5125 4350 50  0000 L CNN
F 1 "4u7" H 5125 4150 50  0000 L CNN
F 2 "Capacitors_THT:CP_Radial_D5.0mm_P2.00mm" H 5138 4100 50  0001 C CNN
F 3 "" H 5100 4250 50  0001 C CNN
	1    5100 4250
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x02 J502
U 1 1 59DBA0C9
P 4000 4500
F 0 "J502" H 4000 4600 50  0000 C CNN
F 1 "5V" H 4000 4300 50  0000 C CNN
F 2 "Connectors_Terminal_Blocks:TerminalBlock_Pheonix_MKDS1.5-2pol" H 4000 4500 50  0001 C CNN
F 3 "" H 4000 4500 50  0001 C CNN
	1    4000 4500
	-1   0    0    -1  
$EndComp
$Comp
L Conn_01x02 J501
U 1 1 59DBA0D0
P 4000 3800
F 0 "J501" H 4000 3900 50  0000 C CNN
F 1 "6.5V-12V" H 4000 3600 50  0000 C CNN
F 2 "Connectors_Terminal_Blocks:TerminalBlock_Pheonix_MKDS1.5-2pol" H 4000 3800 50  0001 C CNN
F 3 "" H 4000 3800 50  0001 C CNN
	1    4000 3800
	-1   0    0    -1  
$EndComp
$Comp
L +12V #PWR501
U 1 1 59DBA13C
P 4300 3700
F 0 "#PWR501" H 4300 3550 50  0001 C CNN
F 1 "+12V" H 4300 3840 50  0000 C CNN
F 2 "" H 4300 3700 50  0001 C CNN
F 3 "" H 4300 3700 50  0001 C CNN
	1    4300 3700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR502
U 1 1 59DBA1A9
P 4300 4000
F 0 "#PWR502" H 4300 3750 50  0001 C CNN
F 1 "GND" H 4300 3850 50  0000 C CNN
F 2 "" H 4300 4000 50  0001 C CNN
F 3 "" H 4300 4000 50  0001 C CNN
	1    4300 4000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR504
U 1 1 59DBA33D
P 4300 4700
F 0 "#PWR504" H 4300 4450 50  0001 C CNN
F 1 "GND" H 4300 4550 50  0000 C CNN
F 2 "" H 4300 4700 50  0001 C CNN
F 3 "" H 4300 4700 50  0001 C CNN
	1    4300 4700
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR503
U 1 1 59DBA35E
P 4300 4400
F 0 "#PWR503" H 4300 4250 50  0001 C CNN
F 1 "+5V" H 4300 4540 50  0000 C CNN
F 2 "" H 4300 4400 50  0001 C CNN
F 3 "" H 4300 4400 50  0001 C CNN
	1    4300 4400
	1    0    0    -1  
$EndComp
$Comp
L AZ1117-5.0 U501
U 1 1 59DBA387
P 5800 4000
F 0 "U501" H 5650 4125 50  0000 C CNN
F 1 "AZ1117-5.0" H 5800 4125 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-223-3Lead_TabPin2" H 5800 4250 50  0001 C CIN
F 3 "" H 5800 4000 50  0001 C CNN
	1    5800 4000
	1    0    0    -1  
$EndComp
$Comp
L CP C504
U 1 1 59DBA425
P 6500 4250
F 0 "C504" H 6525 4350 50  0000 L CNN
F 1 "47u" H 6525 4150 50  0000 L CNN
F 2 "Capacitors_THT:CP_Radial_D6.3mm_P2.50mm" H 6538 4100 50  0001 C CNN
F 3 "" H 6500 4250 50  0001 C CNN
	1    6500 4250
	1    0    0    -1  
$EndComp
$Comp
L C C502
U 1 1 59DBA4BF
P 5400 4250
F 0 "C502" H 5425 4350 50  0000 L CNN
F 1 "100n" H 5425 4150 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 5438 4100 50  0001 C CNN
F 3 "" H 5400 4250 50  0001 C CNN
	1    5400 4250
	1    0    0    -1  
$EndComp
$Comp
L C C503
U 1 1 59DBA515
P 6200 4250
F 0 "C503" H 6225 4350 50  0000 L CNN
F 1 "100n" H 6225 4150 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 6238 4100 50  0001 C CNN
F 3 "" H 6200 4250 50  0001 C CNN
	1    6200 4250
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR505
U 1 1 59DBA74B
P 5100 3900
F 0 "#PWR505" H 5100 3750 50  0001 C CNN
F 1 "+12V" H 5100 4040 50  0000 C CNN
F 2 "" H 5100 3900 50  0001 C CNN
F 3 "" H 5100 3900 50  0001 C CNN
	1    5100 3900
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR506
U 1 1 59DBA861
P 5800 4600
F 0 "#PWR506" H 5800 4350 50  0001 C CNN
F 1 "GND" H 5800 4450 50  0000 C CNN
F 2 "" H 5800 4600 50  0001 C CNN
F 3 "" H 5800 4600 50  0001 C CNN
	1    5800 4600
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR507
U 1 1 59DBAA1E
P 6500 3900
F 0 "#PWR507" H 6500 3750 50  0001 C CNN
F 1 "+5V" H 6500 4040 50  0000 C CNN
F 2 "" H 6500 3900 50  0001 C CNN
F 3 "" H 6500 3900 50  0001 C CNN
	1    6500 3900
	1    0    0    -1  
$EndComp
$Comp
L D D501
U 1 1 59DBAA79
P 5800 3700
F 0 "D501" H 5800 3800 50  0000 C CNN
F 1 "1N4148" H 5800 3600 50  0000 C CNN
F 2 "Diodes_SMD:D_SOD-123" H 5800 3700 50  0001 C CNN
F 3 "" H 5800 3700 50  0001 C CNN
	1    5800 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 3800 4300 3800
Wire Wire Line
	4300 3800 4300 3700
Wire Wire Line
	4200 3900 4300 3900
Wire Wire Line
	4300 3900 4300 4000
Wire Wire Line
	4200 4500 4300 4500
Wire Wire Line
	4300 4500 4300 4400
Wire Wire Line
	4200 4600 4300 4600
Wire Wire Line
	4300 4600 4300 4700
Wire Wire Line
	5100 3900 5100 4100
Wire Wire Line
	5100 4000 5500 4000
Connection ~ 5100 4000
Wire Wire Line
	5400 3700 5400 4100
Connection ~ 5400 4000
Wire Wire Line
	6100 4000 6500 4000
Wire Wire Line
	6500 3900 6500 4100
Wire Wire Line
	6200 3700 6200 4100
Connection ~ 6200 4000
Wire Wire Line
	5100 4400 5100 4500
Wire Wire Line
	5100 4500 6500 4500
Wire Wire Line
	6500 4500 6500 4400
Wire Wire Line
	6200 4400 6200 4500
Connection ~ 6200 4500
Wire Wire Line
	5800 4300 5800 4600
Connection ~ 5800 4500
Wire Wire Line
	5400 4400 5400 4500
Connection ~ 5400 4500
Connection ~ 6500 4000
Wire Wire Line
	6200 3700 5950 3700
Wire Wire Line
	5650 3700 5400 3700
$Comp
L LED D502
U 1 1 59E32AE2
P 7100 4050
F 0 "D502" H 7100 4150 50  0000 C CNN
F 1 "LED2" H 7100 3950 50  0000 C CNN
F 2 "LEDs:LED_0805" H 7100 4050 50  0001 C CNN
F 3 "" H 7100 4050 50  0001 C CNN
	1    7100 4050
	0    -1   -1   0   
$EndComp
$Comp
L R R501
U 1 1 59E32AE9
P 7100 4450
F 0 "R501" V 7180 4450 50  0000 C CNN
F 1 "430" V 7100 4450 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 7030 4450 50  0001 C CNN
F 3 "" H 7100 4450 50  0001 C CNN
	1    7100 4450
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR508
U 1 1 59E32AF0
P 7100 3800
F 0 "#PWR508" H 7100 3650 50  0001 C CNN
F 1 "+5V" H 7100 3940 50  0000 C CNN
F 2 "" H 7100 3800 50  0001 C CNN
F 3 "" H 7100 3800 50  0001 C CNN
	1    7100 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	7100 3800 7100 3900
Wire Wire Line
	7100 4200 7100 4300
$Comp
L GND #PWR509
U 1 1 59E32B42
P 7100 4700
F 0 "#PWR509" H 7100 4450 50  0001 C CNN
F 1 "GND" H 7100 4550 50  0000 C CNN
F 2 "" H 7100 4700 50  0001 C CNN
F 3 "" H 7100 4700 50  0001 C CNN
	1    7100 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	7100 4700 7100 4600
$EndSCHEMATC
