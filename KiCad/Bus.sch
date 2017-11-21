EESchema Schematic File Version 3
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
LIBS:ledbox-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 5
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Label 6100 4500 0    60   ~ 0
COMM_A
Text Label 6100 4800 0    60   ~ 0
COMM_B
$Comp
L D D201
U 1 1 59DCBF94
P 6750 4500
F 0 "D201" H 6750 4600 50  0000 C CNN
F 1 "1N4148" H 6750 4400 50  0000 C CNN
F 2 "Diodes_SMD:D_SOD-123" H 6750 4500 50  0001 C CNN
F 3 "" H 6750 4500 50  0001 C CNN
	1    6750 4500
	-1   0    0    1   
$EndComp
$Comp
L D D202
U 1 1 59DCBF9B
P 6750 4800
F 0 "D202" H 6750 4900 50  0000 C CNN
F 1 "1N4148" H 6750 4700 50  0000 C CNN
F 2 "Diodes_SMD:D_SOD-123" H 6750 4800 50  0001 C CNN
F 3 "" H 6750 4800 50  0001 C CNN
	1    6750 4800
	-1   0    0    1   
$EndComp
$Comp
L R R205
U 1 1 59DCBFA2
P 7250 4500
F 0 "R205" V 7330 4500 50  0000 C CNN
F 1 "100" V 7250 4500 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 7180 4500 50  0001 C CNN
F 3 "" H 7250 4500 50  0001 C CNN
	1    7250 4500
	0    1    1    0   
$EndComp
$Comp
L C C202
U 1 1 59DCBFA9
P 7500 4750
F 0 "C202" H 7525 4850 50  0000 L CNN
F 1 "22p" H 7525 4650 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 7538 4600 50  0001 C CNN
F 3 "" H 7500 4750 50  0001 C CNN
	1    7500 4750
	1    0    0    -1  
$EndComp
$Comp
L R R206
U 1 1 59DCBFB0
P 7800 4750
F 0 "R206" V 7880 4750 50  0000 C CNN
F 1 "22k" V 7800 4750 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 7730 4750 50  0001 C CNN
F 3 "" H 7800 4750 50  0001 C CNN
	1    7800 4750
	1    0    0    -1  
$EndComp
Text Notes 6100 5750 0    60   ~ 0
Bus Kollisionsdetektor\nWenn der high Pegel auf dem Bus rund 3V \nunterschreitet liegt eine Kollision vor. Da der \nhigh level Treiber schwächer ist als der low \nlevel Treiber wird dieser Pegel ausgewertet \n(vgl. DS S.12, Fig.12 und Fig.13).
$Comp
L +5V #PWR215
U 1 1 59DCBFB9
P 8500 4600
F 0 "#PWR215" H 8500 4450 50  0001 C CNN
F 1 "+5V" H 8500 4740 50  0000 C CNN
F 2 "" H 8500 4600 50  0001 C CNN
F 3 "" H 8500 4600 50  0001 C CNN
	1    8500 4600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR216
U 1 1 59DCBFBF
P 8500 5600
F 0 "#PWR216" H 8500 5350 50  0001 C CNN
F 1 "GND" H 8500 5450 50  0000 C CNN
F 2 "" H 8500 5600 50  0001 C CNN
F 3 "" H 8500 5600 50  0001 C CNN
	1    8500 5600
	1    0    0    -1  
$EndComp
$Comp
L R R208
U 1 1 59DCBFC5
P 8500 5350
F 0 "R208" V 8580 5350 50  0000 C CNN
F 1 "2k2" V 8500 5350 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 8430 5350 50  0001 C CNN
F 3 "" H 8500 5350 50  0001 C CNN
	1    8500 5350
	1    0    0    -1  
$EndComp
$Comp
L R R207
U 1 1 59DCBFCC
P 8500 4850
F 0 "R207" V 8580 4850 50  0000 C CNN
F 1 "3k3" V 8500 4850 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 8430 4850 50  0001 C CNN
F 3 "" H 8500 4850 50  0001 C CNN
	1    8500 4850
	1    0    0    -1  
$EndComp
Text Notes 8700 5000 0    60   ~ 0
2,4V
$Comp
L C C203
U 1 1 59DCBFD5
P 8800 5350
F 0 "C203" H 8825 5450 50  0000 L CNN
F 1 "470p" H 8825 5250 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 8838 5200 50  0001 C CNN
F 3 "" H 8800 5350 50  0001 C CNN
	1    8800 5350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR217
U 1 1 59DCBFDC
P 8800 5600
F 0 "#PWR217" H 8800 5350 50  0001 C CNN
F 1 "GND" H 8800 5450 50  0000 C CNN
F 2 "" H 8800 5600 50  0001 C CNN
F 3 "" H 8800 5600 50  0001 C CNN
	1    8800 5600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR209
U 1 1 59DCBFE2
P 7500 5000
F 0 "#PWR209" H 7500 4750 50  0001 C CNN
F 1 "GND" H 7500 4850 50  0000 C CNN
F 2 "" H 7500 5000 50  0001 C CNN
F 3 "" H 7500 5000 50  0001 C CNN
	1    7500 5000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR212
U 1 1 59DCBFE8
P 7800 5000
F 0 "#PWR212" H 7800 4750 50  0001 C CNN
F 1 "GND" H 7800 4850 50  0000 C CNN
F 2 "" H 7800 5000 50  0001 C CNN
F 3 "" H 7800 5000 50  0001 C CNN
	1    7800 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 4800 6600 4800
Wire Wire Line
	6600 4500 6100 4500
Wire Wire Line
	6900 4800 7000 4800
Wire Wire Line
	7000 4800 7000 4500
Wire Wire Line
	6900 4500 7100 4500
Wire Wire Line
	8500 5100 8900 5100
Wire Wire Line
	8500 5000 8500 5200
Connection ~ 8500 5100
Wire Wire Line
	8500 5600 8500 5500
Wire Wire Line
	8500 4700 8500 4600
Wire Wire Line
	8800 5600 8800 5500
Wire Wire Line
	8800 5200 8800 5100
Wire Wire Line
	7400 4500 7900 4500
Connection ~ 7000 4500
Wire Wire Line
	7800 5000 7800 4900
Wire Wire Line
	7500 5000 7500 4900
Wire Wire Line
	7500 4600 7500 4500
Connection ~ 7500 4500
Wire Wire Line
	7800 4500 7800 4600
$Comp
L SN75176B U201
U 1 1 59DCC31A
P 2400 3600
F 0 "U201" H 2450 4100 60  0000 L CNN
F 1 "ST485C" H 2450 4000 60  0000 L CNN
F 2 "Housings_SOIC:SOIC-8_3.9x4.9mm_Pitch1.27mm" H 2450 4200 60  0001 L CNN
F 3 "http://www.st.com/content/ccc/resource/technical/document/datasheet/4b/81/a8/cd/8a/72/47/82/CD00002183.pdf/files/CD00002183.pdf/jcr:content/translations/en.CD00002183.pdf" H 2450 4300 60  0001 L CNN
F 4 "Yes" H 2400 3600 60  0001 C CNN "Populate"
	1    2400 3600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR203
U 1 1 59DCC321
P 2400 4200
F 0 "#PWR203" H 2400 3950 50  0001 C CNN
F 1 "GND" H 2400 4050 50  0000 C CNN
F 2 "" H 2400 4200 50  0001 C CNN
F 3 "" H 2400 4200 50  0001 C CNN
	1    2400 4200
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR202
U 1 1 59DCC327
P 2400 3000
F 0 "#PWR202" H 2400 2850 50  0001 C CNN
F 1 "+5V" H 2400 3140 50  0000 C CNN
F 2 "" H 2400 3000 50  0001 C CNN
F 3 "" H 2400 3000 50  0001 C CNN
	1    2400 3000
	1    0    0    -1  
$EndComp
Text Label 1500 3800 0    60   ~ 0
RX
Text Label 1500 3700 0    60   ~ 0
TX
Text Label 6800 3100 3    60   ~ 0
TX_EN
Text Label 1500 3400 0    60   ~ 0
TX_EN
$Comp
L R R202
U 1 1 59DCC333
P 3100 3600
F 0 "R202" V 3180 3600 50  0000 C CNN
F 1 "150" V 3000 3600 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 3030 3600 50  0001 C CNN
F 3 "" H 3100 3600 50  0001 C CNN
F 4 "Prototype" V 3100 3600 60  0001 C CNN "Populate"
	1    3100 3600
	1    0    0    -1  
$EndComp
Text Label 3700 3400 2    60   ~ 0
COMM_A
Text Label 3700 3800 2    60   ~ 0
COMM_B
Text Notes 3800 4350 0    60   ~ 0
Erster und letzter Teilnehmer am Bus \nbenötigen eine Abschlussimpedanz\nBei Flachbandkabel zwischen \n100Ω und 200Ω (differentiell).\nAngegeben: 104Ω (AWG 28, GSG).\nKann evtl. über Klemmleiste oder\nPinheader befestigt werden.
$Comp
L R R204
U 1 1 59DCC344
P 6800 3550
F 0 "R204" V 6880 3550 50  0000 C CNN
F 1 "10k" V 6800 3550 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 6730 3550 50  0001 C CNN
F 3 "" H 6800 3550 50  0001 C CNN
	1    6800 3550
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR208
U 1 1 59DCC351
P 6800 3800
F 0 "#PWR208" H 6800 3550 50  0001 C CNN
F 1 "GND" H 6800 3650 50  0000 C CNN
F 2 "" H 6800 3800 50  0001 C CNN
F 3 "" H 6800 3800 50  0001 C CNN
	1    6800 3800
	1    0    0    -1  
$EndComp
$Comp
L R R201
U 1 1 59DCC357
P 3100 3150
F 0 "R201" V 3180 3150 50  0000 C CNN
F 1 "1k" V 3000 3150 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 3030 3150 50  0001 C CNN
F 3 "" H 3100 3150 50  0001 C CNN
F 4 "Prototype" V 3100 3150 60  0001 C CNN "Populate"
	1    3100 3150
	1    0    0    -1  
$EndComp
$Comp
L R R203
U 1 1 59DCC35E
P 3100 4050
F 0 "R203" V 3180 4050 50  0000 C CNN
F 1 "1k" V 3000 4050 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 3030 4050 50  0001 C CNN
F 3 "" H 3100 4050 50  0001 C CNN
F 4 "Prototype" V 3100 4050 60  0001 C CNN "Populate"
	1    3100 4050
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR204
U 1 1 59DCC365
P 3100 2900
F 0 "#PWR204" H 3100 2750 50  0001 C CNN
F 1 "+5V" H 3100 3040 50  0000 C CNN
F 2 "" H 3100 2900 50  0001 C CNN
F 3 "" H 3100 2900 50  0001 C CNN
	1    3100 2900
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR205
U 1 1 59DCC36B
P 3100 4300
F 0 "#PWR205" H 3100 4050 50  0001 C CNN
F 1 "GND" H 3100 4150 50  0000 C CNN
F 2 "" H 3100 4300 50  0001 C CNN
F 3 "" H 3100 4300 50  0001 C CNN
	1    3100 4300
	1    0    0    -1  
$EndComp
Text Notes 3800 3600 0    60   ~ 0
R201 und R203 werden genutzt um einen \ndefinierten Zustand auf der Leitung \nzu schaffen, wenn kein Sender aktiv ist.\nMüssen nur auf einer Einheit im Bus \nvorhanden sein (=> Auswerteeineit?).
Text Notes 1550 5050 0    60   ~ 0
Neues Bauteil: ST485C \n- viel geringerer Ruhestrom als SN75176 \nBei diesem Sender ist der high side Treiber \nschwächer als der low side Treiber, daher \nmuss die CD Schaltung umgedreht werden.\n
Wire Wire Line
	2400 4200 2400 4100
Wire Wire Line
	2400 3000 2400 3100
Wire Wire Line
	1900 3700 1500 3700
Wire Wire Line
	1500 3800 1900 3800
Wire Wire Line
	1800 3500 1900 3500
Wire Wire Line
	1500 3400 1900 3400
Wire Wire Line
	2900 3400 3700 3400
Wire Wire Line
	3100 3300 3100 3450
Wire Wire Line
	2900 3800 3700 3800
Wire Wire Line
	3100 3750 3100 3900
Connection ~ 3100 3800
Connection ~ 3100 3400
Wire Wire Line
	6800 3800 6800 3700
Wire Wire Line
	3100 4300 3100 4200
Wire Wire Line
	3100 3000 3100 2900
Wire Wire Line
	6800 3100 6800 3400
$Comp
L Conn_02x05_Odd_Even J201
U 1 1 59DCC8D3
P 7950 3550
F 0 "J201" H 8000 3850 50  0000 C CNN
F 1 "Bus" H 8000 3250 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x05" H 7950 3550 50  0001 C CNN
F 3 "" H 7950 3550 50  0001 C CNN
	1    7950 3550
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR214
U 1 1 59DCC8DA
P 8450 3650
F 0 "#PWR214" H 8450 3500 50  0001 C CNN
F 1 "+5V" H 8450 3790 50  0000 C CNN
F 2 "" H 8450 3650 50  0001 C CNN
F 3 "" H 8450 3650 50  0001 C CNN
	1    8450 3650
	0    1    1    0   
$EndComp
$Comp
L GND #PWR213
U 1 1 59DCC8E0
P 8450 3350
F 0 "#PWR213" H 8450 3100 50  0001 C CNN
F 1 "GND" H 8450 3200 50  0000 C CNN
F 2 "" H 8450 3350 50  0001 C CNN
F 3 "" H 8450 3350 50  0001 C CNN
	1    8450 3350
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR211
U 1 1 59DCC8E6
P 7650 3850
F 0 "#PWR211" H 7650 3600 50  0001 C CNN
F 1 "GND" H 7650 3700 50  0000 C CNN
F 2 "" H 7650 3850 50  0001 C CNN
F 3 "" H 7650 3850 50  0001 C CNN
	1    7650 3850
	1    0    0    -1  
$EndComp
Text Label 7150 3550 0    60   ~ 0
COMM_A
Text Label 8850 3550 2    60   ~ 0
COMM_B
Text Notes 9000 3900 0    60   ~ 0
Spannungsversorgung und Bus \nüber 10 Pol Flachbandkabel, \neinmal rund ums Spielfeld. \nAuswerteeinheit (1x pro Spielfeld) \nspeist Spannungsversorgung ein \nund bildet Schnittstelle zur \nAuswertung und Datenübergabe\nbzw. Einstellung.
$Comp
L +5V #PWR210
U 1 1 59DCC8EF
P 7650 3250
F 0 "#PWR210" H 7650 3100 50  0001 C CNN
F 1 "+5V" H 7650 3390 50  0000 C CNN
F 2 "" H 7650 3250 50  0001 C CNN
F 3 "" H 7650 3250 50  0001 C CNN
	1    7650 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	7750 3350 7650 3350
Wire Wire Line
	7650 3250 7650 3450
Wire Wire Line
	7650 3450 7750 3450
Connection ~ 7650 3350
Wire Wire Line
	8250 3350 8450 3350
Wire Wire Line
	8350 3350 8350 3450
Wire Wire Line
	8350 3450 8250 3450
Wire Wire Line
	8850 3550 8250 3550
Wire Wire Line
	7750 3550 7150 3550
Connection ~ 8350 3350
Wire Wire Line
	8250 3650 8450 3650
Wire Wire Line
	8250 3750 8350 3750
Wire Wire Line
	8350 3750 8350 3650
Connection ~ 8350 3650
Wire Wire Line
	7650 3650 7650 3850
Wire Wire Line
	7650 3650 7750 3650
Wire Wire Line
	7750 3750 7650 3750
Connection ~ 7650 3750
$Comp
L +5V #PWR206
U 1 1 59DBB3D1
P 6100 3300
F 0 "#PWR206" H 6100 3150 50  0001 C CNN
F 1 "+5V" H 6100 3440 50  0000 C CNN
F 2 "" H 6100 3300 50  0001 C CNN
F 3 "" H 6100 3300 50  0001 C CNN
	1    6100 3300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR207
U 1 1 59DBB3D7
P 6100 3800
F 0 "#PWR207" H 6100 3550 50  0001 C CNN
F 1 "GND" H 6100 3650 50  0000 C CNN
F 2 "" H 6100 3800 50  0001 C CNN
F 3 "" H 6100 3800 50  0001 C CNN
	1    6100 3800
	1    0    0    -1  
$EndComp
$Comp
L C C201
U 1 1 59DBB3DD
P 6100 3550
F 0 "C201" H 6125 3650 50  0000 L CNN
F 1 "10u" H 6125 3450 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 6138 3400 50  0001 C CNN
F 3 "" H 6100 3550 50  0001 C CNN
	1    6100 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 3700 6100 3800
Wire Wire Line
	6100 3300 6100 3300
Wire Wire Line
	6100 3300 6100 3400
Text HLabel 7900 4500 2    60   Output ~ 0
AIN0
Text HLabel 8900 5100 2    60   Output ~ 0
AIN1
Connection ~ 8800 5100
Connection ~ 7800 4500
Text HLabel 1500 3400 0    60   Input ~ 0
TX_EN
Text HLabel 1500 3700 0    60   Input ~ 0
TX
Text HLabel 1500 3800 0    60   Output ~ 0
RX
$Comp
L GND #PWR201
U 1 1 59E09C7D
P 1800 3900
F 0 "#PWR201" H 1800 3650 50  0001 C CNN
F 1 "GND" H 1800 3750 50  0000 C CNN
F 2 "" H 1800 3900 50  0001 C CNN
F 3 "" H 1800 3900 50  0001 C CNN
	1    1800 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 3900 1800 3500
$EndSCHEMATC
