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
LIBS:ledbox-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "RoboSAX LED Box"
Date "2017-10-05"
Rev ""
Comp "Fabian Geißler"
Comment1 "Prototyp"
Comment2 "Version 1.1"
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L +5V #PWR01
U 1 1 59D4B290
P 3900 4800
F 0 "#PWR01" H 3900 4650 50  0001 C CNN
F 1 "+5V" H 3900 4940 50  0000 C CNN
F 2 "" H 3900 4800 50  0001 C CNN
F 3 "" H 3900 4800 50  0001 C CNN
	1    3900 4800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 59D4B296
P 3900 5500
F 0 "#PWR02" H 3900 5250 50  0001 C CNN
F 1 "GND" H 3900 5350 50  0000 C CNN
F 2 "" H 3900 5500 50  0001 C CNN
F 3 "" H 3900 5500 50  0001 C CNN
	1    3900 5500
	1    0    0    -1  
$EndComp
$Comp
L C C3
U 1 1 59D4B2DF
P 3900 5150
F 0 "C3" H 3925 5250 50  0000 L CNN
F 1 "100n" H 3925 5050 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 3938 5000 50  0001 C CNN
F 3 "" H 3900 5150 50  0001 C CNN
	1    3900 5150
	1    0    0    -1  
$EndComp
$Comp
L CP C5
U 1 1 59D4B368
P 4700 5150
F 0 "C5" H 4725 5250 50  0000 L CNN
F 1 "10u" H 4725 5050 50  0000 L CNN
F 2 "Capacitors_SMD:CP_Elec_4x5.7" H 4738 5000 50  0001 C CNN
F 3 "" H 4700 5150 50  0001 C CNN
	1    4700 5150
	1    0    0    -1  
$EndComp
$Comp
L ATTINY2313-20PU U1
U 1 1 59D4B764
P 4350 3000
F 0 "U1" H 3400 4000 50  0000 C CNN
F 1 "ATTINY2313-20PU" H 5150 2100 50  0000 C CNN
F 2 "Housings_SOIC:SOIC-20W_7.5x12.8mm_Pitch1.27mm" H 4350 3000 50  0001 C CIN
F 3 "" H 4350 3000 50  0001 C CNN
	1    4350 3000
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR03
U 1 1 59D4B9EA
P 4350 1800
F 0 "#PWR03" H 4350 1650 50  0001 C CNN
F 1 "+5V" H 4350 1940 50  0000 C CNN
F 2 "" H 4350 1800 50  0001 C CNN
F 3 "" H 4350 1800 50  0001 C CNN
	1    4350 1800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR04
U 1 1 59D4BA04
P 4350 4100
F 0 "#PWR04" H 4350 3850 50  0001 C CNN
F 1 "GND" H 4350 3950 50  0000 C CNN
F 2 "" H 4350 4100 50  0001 C CNN
F 3 "" H 4350 4100 50  0001 C CNN
	1    4350 4100
	1    0    0    -1  
$EndComp
$Comp
L ULN2003 U3
U 1 1 59D4C16F
P 7700 2600
F 0 "U3" H 7700 3125 50  0000 C CNN
F 1 "ULN2003" H 7700 3050 50  0000 C CNN
F 2 "Housings_SOIC:SOIC-16_3.9x9.9mm_Pitch1.27mm" H 7750 1950 50  0001 L CNN
F 3 "" H 7800 2500 50  0001 C CNN
	1    7700 2600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR05
U 1 1 59D4C1FC
P 7700 3400
F 0 "#PWR05" H 7700 3150 50  0001 C CNN
F 1 "GND" H 7700 3250 50  0000 C CNN
F 2 "" H 7700 3400 50  0001 C CNN
F 3 "" H 7700 3400 50  0001 C CNN
	1    7700 3400
	1    0    0    -1  
$EndComp
Text Label 5900 2400 2    60   ~ 0
PWM_R
Text Label 5900 2500 2    60   ~ 0
PWM_G
Text Label 5900 2600 2    60   ~ 0
PWM_B
Text Label 5900 2300 2    60   ~ 0
LED_IR
$Comp
L R R5
U 1 1 59D4C952
P 8300 1950
F 0 "R5" V 8380 1950 50  0000 C CNN
F 1 "180" V 8300 1950 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 8230 1950 50  0001 C CNN
F 3 "" H 8300 1950 50  0001 C CNN
	1    8300 1950
	1    0    0    -1  
$EndComp
$Comp
L R R6
U 1 1 59D4C990
P 8800 1950
F 0 "R6" V 8880 1950 50  0000 C CNN
F 1 "56" V 8800 1950 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 8730 1950 50  0001 C CNN
F 3 "" H 8800 1950 50  0001 C CNN
	1    8800 1950
	1    0    0    -1  
$EndComp
$Comp
L R R7
U 1 1 59D4C9C5
P 9000 1950
F 0 "R7" V 9080 1950 50  0000 C CNN
F 1 "36" V 9000 1950 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 8930 1950 50  0001 C CNN
F 3 "" H 9000 1950 50  0001 C CNN
	1    9000 1950
	1    0    0    -1  
$EndComp
$Comp
L R R8
U 1 1 59D4CA03
P 9200 1950
F 0 "R8" V 9280 1950 50  0000 C CNN
F 1 "36" V 9200 1950 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 9130 1950 50  0001 C CNN
F 3 "" H 9200 1950 50  0001 C CNN
	1    9200 1950
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR06
U 1 1 59D4CBB2
P 8800 1200
F 0 "#PWR06" H 8800 1050 50  0001 C CNN
F 1 "+5V" H 8800 1340 50  0000 C CNN
F 2 "" H 8800 1200 50  0001 C CNN
F 3 "" H 8800 1200 50  0001 C CNN
	1    8800 1200
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR07
U 1 1 59D4CBE1
P 9000 1200
F 0 "#PWR07" H 9000 1050 50  0001 C CNN
F 1 "+5V" H 9000 1340 50  0000 C CNN
F 2 "" H 9000 1200 50  0001 C CNN
F 3 "" H 9000 1200 50  0001 C CNN
	1    9000 1200
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR08
U 1 1 59D4CC10
P 9200 1200
F 0 "#PWR08" H 9200 1050 50  0001 C CNN
F 1 "+5V" H 9200 1340 50  0000 C CNN
F 2 "" H 9200 1200 50  0001 C CNN
F 3 "" H 9200 1200 50  0001 C CNN
	1    9200 1200
	1    0    0    -1  
$EndComp
$Comp
L R R9
U 1 1 59D4E62D
P 9200 4450
F 0 "R9" V 9280 4450 50  0000 C CNN
F 1 "10k" V 9200 4450 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 9130 4450 50  0001 C CNN
F 3 "" H 9200 4450 50  0001 C CNN
	1    9200 4450
	1    0    0    -1  
$EndComp
$Comp
L SN75176B U2
U 1 1 59D61C67
P 6500 5200
F 0 "U2" H 6550 5700 60  0000 L CNN
F 1 "SN75176B" H 6550 5600 60  0000 L CNN
F 2 "Housings_SOIC:SOIC-8_3.9x4.9mm_Pitch1.27mm" H 6550 5800 60  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn65176b.pdf" H 6550 5900 60  0001 L CNN
	1    6500 5200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR09
U 1 1 59D61F25
P 6500 5800
F 0 "#PWR09" H 6500 5550 50  0001 C CNN
F 1 "GND" H 6500 5650 50  0000 C CNN
F 2 "" H 6500 5800 50  0001 C CNN
F 3 "" H 6500 5800 50  0001 C CNN
	1    6500 5800
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR010
U 1 1 59D61FA8
P 6500 4600
F 0 "#PWR010" H 6500 4450 50  0001 C CNN
F 1 "+5V" H 6500 4740 50  0000 C CNN
F 2 "" H 6500 4600 50  0001 C CNN
F 3 "" H 6500 4600 50  0001 C CNN
	1    6500 4600
	1    0    0    -1  
$EndComp
$Comp
L C C4
U 1 1 59D6235E
P 4300 5150
F 0 "C4" H 4325 5250 50  0000 L CNN
F 1 "100n" H 4325 5050 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 4338 5000 50  0001 C CNN
F 3 "" H 4300 5150 50  0001 C CNN
	1    4300 5150
	1    0    0    -1  
$EndComp
Text Label 5900 3100 2    60   ~ 0
RX
Text Label 5900 3200 2    60   ~ 0
TX
Text Label 5600 5400 0    60   ~ 0
RX
Text Label 5600 5300 0    60   ~ 0
TX
Text Label 8700 4200 0    60   ~ 0
BTN_INT
Text Label 5900 3300 2    60   ~ 0
BTN_INT
Text Label 5900 2700 2    60   ~ 0
MOSI
Text Label 5900 2800 2    60   ~ 0
MISO
Text Label 5900 2900 2    60   ~ 0
SCK
Text Label 2800 2200 0    60   ~ 0
~RESET
$Comp
L AVR-ISP-6 CON1
U 1 1 59D63C6D
P 2000 7100
F 0 "CON1" H 1895 7340 50  0000 C CNN
F 1 "AVR_ISP" H 1735 6870 50  0000 L BNN
F 2 "Pin_Headers:Pin_Header_Straight_2x03" V 1480 7140 50  0001 C CNN
F 3 "" H 1975 7100 50  0001 C CNN
	1    2000 7100
	1    0    0    -1  
$EndComp
Text Label 1100 7200 0    60   ~ 0
~RESET
Text Label 2800 7100 2    60   ~ 0
MOSI
Text Label 1100 7000 0    60   ~ 0
MISO
Text Label 1100 7100 0    60   ~ 0
SCK
$Comp
L +5V #PWR011
U 1 1 59D63ED9
P 2800 6900
F 0 "#PWR011" H 2800 6750 50  0001 C CNN
F 1 "+5V" H 2800 7040 50  0000 C CNN
F 2 "" H 2800 6900 50  0001 C CNN
F 3 "" H 2800 6900 50  0001 C CNN
	1    2800 6900
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR012
U 1 1 59D63F4A
P 2800 7300
F 0 "#PWR012" H 2800 7050 50  0001 C CNN
F 1 "GND" H 2800 7150 50  0000 C CNN
F 2 "" H 2800 7300 50  0001 C CNN
F 3 "" H 2800 7300 50  0001 C CNN
	1    2800 7300
	1    0    0    -1  
$EndComp
Text Label 5900 3500 2    60   ~ 0
~RX_EN
Text Label 5900 3600 2    60   ~ 0
TX_EN
Text Label 5600 5100 0    60   ~ 0
~RX_EN
Text Label 5600 5000 0    60   ~ 0
TX_EN
$Comp
L R R4
U 1 1 59D67644
P 7100 5200
F 0 "R4" V 7180 5200 50  0000 C CNN
F 1 "DNP/150" V 7000 5200 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 7030 5200 50  0001 C CNN
F 3 "" H 7100 5200 50  0001 C CNN
	1    7100 5200
	1    0    0    -1  
$EndComp
$Comp
L Conn_02x05_Odd_Even J1
U 1 1 59D67F42
P 4300 7000
F 0 "J1" H 4350 7300 50  0000 C CNN
F 1 "Bus" H 4350 6700 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x05" H 4300 7000 50  0001 C CNN
F 3 "" H 4300 7000 50  0001 C CNN
	1    4300 7000
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 5800 6500 5700
Wire Wire Line
	6500 4600 6500 4700
Connection ~ 4300 5400
Wire Wire Line
	4300 5400 4300 5300
Connection ~ 4300 4900
Wire Wire Line
	4300 4900 4300 5000
Wire Wire Line
	8700 4200 10050 4200
Wire Wire Line
	8300 1200 8300 1800
Wire Wire Line
	8800 1200 8800 1300
Wire Wire Line
	9000 1200 9000 1300
Wire Wire Line
	9200 1200 9200 1300
Wire Wire Line
	9200 1800 9200 1700
Wire Wire Line
	9000 1800 9000 1700
Wire Wire Line
	8800 1800 8800 1700
Wire Wire Line
	8300 2300 8300 2100
Wire Wire Line
	8800 2400 8800 2100
Wire Wire Line
	9000 2500 9000 2100
Wire Wire Line
	9200 2600 9200 2100
Wire Wire Line
	5500 2300 7300 2300
Wire Wire Line
	5500 2600 7300 2600
Wire Wire Line
	5500 2500 7300 2500
Wire Wire Line
	5500 2400 7300 2400
Wire Wire Line
	7700 3400 7700 3300
Wire Wire Line
	8100 2600 9200 2600
Wire Wire Line
	8100 2500 9000 2500
Wire Wire Line
	8100 2400 8800 2400
Wire Wire Line
	8100 2300 8300 2300
Wire Wire Line
	4350 1900 4350 1800
Wire Wire Line
	4350 4100 4350 4000
Wire Wire Line
	4700 4900 4700 5000
Wire Wire Line
	4700 5400 4700 5300
Connection ~ 3900 5400
Connection ~ 3900 4900
Wire Wire Line
	3900 5300 3900 5500
Wire Wire Line
	3900 5400 4700 5400
Wire Wire Line
	3900 4800 3900 5000
Wire Wire Line
	3900 4900 4700 4900
Wire Wire Line
	6000 5300 5600 5300
Wire Wire Line
	5600 5400 6000 5400
Wire Wire Line
	5500 3100 6000 3100
Wire Wire Line
	5900 3200 5500 3200
Wire Wire Line
	5900 3300 5500 3300
Wire Wire Line
	2600 2200 3200 2200
Wire Wire Line
	5900 2700 5500 2700
Wire Wire Line
	5500 2800 5900 2800
Wire Wire Line
	5900 2900 5500 2900
Wire Wire Line
	2100 7000 2800 7000
Wire Wire Line
	2800 7000 2800 6900
Wire Wire Line
	2100 7100 2800 7100
Wire Wire Line
	2100 7200 2800 7200
Wire Wire Line
	2800 7200 2800 7300
Wire Wire Line
	1850 7000 1100 7000
Wire Wire Line
	1100 7100 1850 7100
Wire Wire Line
	1850 7200 1100 7200
Wire Wire Line
	5500 3400 6000 3400
Wire Wire Line
	6000 3400 6000 3100
Wire Wire Line
	5500 3500 6200 3500
Wire Wire Line
	5500 3600 6000 3600
Wire Wire Line
	5600 5100 6000 5100
Wire Wire Line
	5600 5000 6000 5000
Wire Wire Line
	7000 5000 7500 5000
Wire Wire Line
	7100 5000 7100 5050
Wire Wire Line
	7000 5400 7500 5400
Wire Wire Line
	7100 5400 7100 5350
$Comp
L +5V #PWR013
U 1 1 59D6887F
P 4000 6700
F 0 "#PWR013" H 4000 6550 50  0001 C CNN
F 1 "+5V" H 4000 6840 50  0000 C CNN
F 2 "" H 4000 6700 50  0001 C CNN
F 3 "" H 4000 6700 50  0001 C CNN
	1    4000 6700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR014
U 1 1 59D6891E
P 4700 7300
F 0 "#PWR014" H 4700 7050 50  0001 C CNN
F 1 "GND" H 4700 7150 50  0000 C CNN
F 2 "" H 4700 7300 50  0001 C CNN
F 3 "" H 4700 7300 50  0001 C CNN
	1    4700 7300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 6800 4000 6800
Wire Wire Line
	4000 6700 4000 7000
Wire Wire Line
	4000 6900 4100 6900
Connection ~ 4000 6800
Wire Wire Line
	4600 6800 4700 6800
Wire Wire Line
	4700 6800 4700 7300
Wire Wire Line
	4600 6900 4700 6900
Connection ~ 4700 6900
Wire Wire Line
	4600 7000 4700 7000
Connection ~ 4700 7000
Wire Wire Line
	4600 7200 4700 7200
Connection ~ 4700 7200
$Comp
L GND #PWR015
U 1 1 59D68B99
P 4000 7350
F 0 "#PWR015" H 4000 7100 50  0001 C CNN
F 1 "GND" H 4000 7200 50  0000 C CNN
F 2 "" H 4000 7350 50  0001 C CNN
F 3 "" H 4000 7350 50  0001 C CNN
	1    4000 7350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 7200 4000 7350
Wire Wire Line
	4000 7200 4100 7200
Wire Wire Line
	4000 7000 4100 7000
Connection ~ 4000 6900
Text Label 7500 5000 2    60   ~ 0
COMM_A
Text Label 7500 5400 2    60   ~ 0
COMM_B
Connection ~ 7100 5400
Connection ~ 7100 5000
Text Label 3500 7100 0    60   ~ 0
COMM_A
Text Label 5200 7100 2    60   ~ 0
COMM_B
Wire Wire Line
	5200 7100 4600 7100
Wire Wire Line
	4100 7100 3500 7100
Text Notes 7000 6150 0    60   ~ 0
Erster und letzter Teilnehmer am Bus \nbenötigen eine Abschlussimpedanz\nBei Flachbandkabel zwischen \n100Ω und 200Ω (differentiell).\nAngegeben: 104Ω (AWG 28, GSG).\nKann evtl. über Klemmleiste oder\nPinheader befestigt werden.
$Comp
L Crystal Y1
U 1 1 59D6C190
P 2550 2800
F 0 "Y1" H 2550 2950 50  0000 C CNN
F 1 "DNP/20MHz" H 2550 2650 50  0000 C CNN
F 2 "Crystals:Crystal_HC49-SD_SMD" H 2550 2800 50  0001 C CNN
F 3 "" H 2550 2800 50  0001 C CNN
	1    2550 2800
	1    0    0    -1  
$EndComp
$Comp
L C C1
U 1 1 59D6C1F6
P 2200 3150
F 0 "C1" H 2225 3250 50  0000 L CNN
F 1 "DNP/22p" H 2225 3050 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 2238 3000 50  0001 C CNN
F 3 "" H 2200 3150 50  0001 C CNN
	1    2200 3150
	1    0    0    -1  
$EndComp
$Comp
L C C2
U 1 1 59D6C24B
P 2900 3150
F 0 "C2" H 2925 3250 50  0000 L CNN
F 1 "DNP/22p" H 2925 3050 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 2938 3000 50  0001 C CNN
F 3 "" H 2900 3150 50  0001 C CNN
	1    2900 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 2500 2200 2500
Wire Wire Line
	2200 2500 2200 3000
Wire Wire Line
	2200 2800 2400 2800
Connection ~ 2200 2800
Wire Wire Line
	3200 2700 2900 2700
Wire Wire Line
	2900 2700 2900 3000
Wire Wire Line
	2700 2800 2900 2800
Connection ~ 2900 2800
$Comp
L GND #PWR016
U 1 1 59D6C50D
P 2200 3400
F 0 "#PWR016" H 2200 3150 50  0001 C CNN
F 1 "GND" H 2200 3250 50  0000 C CNN
F 2 "" H 2200 3400 50  0001 C CNN
F 3 "" H 2200 3400 50  0001 C CNN
	1    2200 3400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR017
U 1 1 59D6C554
P 2900 3400
F 0 "#PWR017" H 2900 3150 50  0001 C CNN
F 1 "GND" H 2900 3250 50  0000 C CNN
F 2 "" H 2900 3400 50  0001 C CNN
F 3 "" H 2900 3400 50  0001 C CNN
	1    2900 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 3400 2900 3300
Wire Wire Line
	2200 3400 2200 3300
Text Notes 2050 4000 0    60   ~ 0
Hier kann ggf ein 20 MHz \nQuarz genutzt werden.\nInterner RC Oszillator: \n8MHz±10% (±2% kalibriert)
$Comp
L +5V #PWR018
U 1 1 59D6D214
P 2600 1700
F 0 "#PWR018" H 2600 1550 50  0001 C CNN
F 1 "+5V" H 2600 1840 50  0000 C CNN
F 2 "" H 2600 1700 50  0001 C CNN
F 3 "" H 2600 1700 50  0001 C CNN
	1    2600 1700
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 59D6D25B
P 2600 1950
F 0 "R1" V 2680 1950 50  0000 C CNN
F 1 "10k" V 2600 1950 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 2530 1950 50  0001 C CNN
F 3 "" H 2600 1950 50  0001 C CNN
	1    2600 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 2200 2600 2100
Wire Wire Line
	2600 1700 2600 1800
Text Notes 5800 2100 0    60   ~ 0
RGB LED an PWM Ports\nIR LED an Datenport
Text Notes 6050 3400 0    60   ~ 0
RX und BTN an INT0:1\nkönnen aus IDLE wecken
Text Notes 6050 3100 0    60   ~ 0
RX und TX an UART Pins\nbesser wäre aber ein \nZugriff ala CSMA/CD\nin Software implementiert
Text Notes 8550 4000 0    60   ~ 0
Hier könnte man über HW \ndebounce nachdenken, \nmuss aber nicht.
Text Notes 1650 6800 0    60   ~ 0
SPI Programmer
Text Notes 5350 7350 0    60   ~ 0
Spannungsversorgung und Bus \nüber 10 Pol Flachbandkabel, \neinmal rund ums Spielfeld. \nAuswerteeinheit (1x pro Spielfeld) \nspeist Spannungsversorgung ein \nund bildet Schnittstelle zur \nAuswertung und Datenübergabe\nbzw. Einstellung.
$Comp
L R R2
U 1 1 59D72E03
P 6000 3850
F 0 "R2" V 6080 3850 50  0000 C CNN
F 1 "10k" V 6000 3850 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 5930 3850 50  0001 C CNN
F 3 "" H 6000 3850 50  0001 C CNN
	1    6000 3850
	1    0    0    -1  
$EndComp
$Comp
L R R3
U 1 1 59D72E82
P 6200 3850
F 0 "R3" V 6280 3850 50  0000 C CNN
F 1 "10k" V 6200 3850 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 6130 3850 50  0001 C CNN
F 3 "" H 6200 3850 50  0001 C CNN
	1    6200 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 3600 6000 3700
Wire Wire Line
	6200 3500 6200 3700
$Comp
L GND #PWR019
U 1 1 59D73132
P 6000 4100
F 0 "#PWR019" H 6000 3850 50  0001 C CNN
F 1 "GND" H 6000 3950 50  0000 C CNN
F 2 "" H 6000 4100 50  0001 C CNN
F 3 "" H 6000 4100 50  0001 C CNN
	1    6000 4100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR020
U 1 1 59D73182
P 6200 4100
F 0 "#PWR020" H 6200 3850 50  0001 C CNN
F 1 "GND" H 6200 3950 50  0000 C CNN
F 2 "" H 6200 4100 50  0001 C CNN
F 3 "" H 6200 4100 50  0001 C CNN
	1    6200 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 4100 6200 4000
Wire Wire Line
	6000 4100 6000 4000
Text Notes 8700 2350 1    60   ~ 0
! rund 150mW !
$Comp
L LRTBG6TG D1
U 1 1 59D65092
P 9000 1500
F 0 "D1" H 9000 1870 50  0000 C CNN
F 1 "LRTBG6TG" H 9000 1150 50  0000 C CNN
F 2 "ledbox-newfootprints:LED-6-BIG" H 9000 950 50  0001 C CNN
F 3 "http://www.osram-os.com/Graphics/XPic4/00067263_0.pdf" H 9000 1050 50  0001 C CNN
	1    9000 1500
	0    -1   -1   0   
$EndComp
Text Label 8300 1200 3    60   ~ 0
IR_LED_DRV
$Comp
L Conn_01x04 J2
U 1 1 59D65E55
P 10250 4200
F 0 "J2" H 10250 4400 50  0000 C CNN
F 1 "BTN_IR" H 10250 3900 50  0000 C CNN
F 2 "ledbox-newfootprints:METZ-SR21304VBNC" H 10250 4200 50  0001 C CNN
F 3 "" H 10250 4200 50  0001 C CNN
	1    10250 4200
	1    0    0    -1  
$EndComp
Text Label 9350 4300 0    60   ~ 0
IR_LED_DRV
Wire Wire Line
	9350 4300 10050 4300
$Comp
L +5V #PWR021
U 1 1 59D668DF
P 9950 4000
F 0 "#PWR021" H 9950 3850 50  0001 C CNN
F 1 "+5V" H 9950 4140 50  0000 C CNN
F 2 "" H 9950 4000 50  0001 C CNN
F 3 "" H 9950 4000 50  0001 C CNN
	1    9950 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	9950 4400 10050 4400
Wire Wire Line
	9950 4000 9950 4400
Wire Wire Line
	10050 4100 9950 4100
Connection ~ 9950 4100
$Comp
L GND #PWR022
U 1 1 59D68605
P 9200 4700
F 0 "#PWR022" H 9200 4450 50  0001 C CNN
F 1 "GND" H 9200 4550 50  0000 C CNN
F 2 "" H 9200 4700 50  0001 C CNN
F 3 "" H 9200 4700 50  0001 C CNN
	1    9200 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	9200 4700 9200 4600
Wire Wire Line
	9200 4300 9200 4200
Connection ~ 9200 4200
Wire Notes Line
	10000 4250 10550 4250
Wire Notes Line
	10550 3800 10550 4700
Text Notes 10500 4150 1    60   ~ 0
Button
Text Notes 10500 4650 1    60   ~ 0
IR LED
$EndSCHEMATC
