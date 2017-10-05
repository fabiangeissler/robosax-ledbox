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
Comment2 "Version 1.0"
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L +5V #PWR6
U 1 1 59D4B290
P 3900 4800
F 0 "#PWR6" H 3900 4650 50  0001 C CNN
F 1 "+5V" H 3900 4940 50  0000 C CNN
F 2 "" H 3900 4800 50  0001 C CNN
F 3 "" H 3900 4800 50  0001 C CNN
	1    3900 4800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR7
U 1 1 59D4B296
P 3900 5500
F 0 "#PWR7" H 3900 5250 50  0001 C CNN
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
F 2 "" H 3938 5000 50  0001 C CNN
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
F 2 "" H 4738 5000 50  0001 C CNN
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
F 2 "Housings_DIP:DIP-20_W7.62mm" H 4350 3000 50  0001 C CIN
F 3 "" H 4350 3000 50  0001 C CNN
	1    4350 3000
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR10
U 1 1 59D4B9EA
P 4350 1800
F 0 "#PWR10" H 4350 1650 50  0001 C CNN
F 1 "+5V" H 4350 1940 50  0000 C CNN
F 2 "" H 4350 1800 50  0001 C CNN
F 3 "" H 4350 1800 50  0001 C CNN
	1    4350 1800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR11
U 1 1 59D4BA04
P 4350 4100
F 0 "#PWR11" H 4350 3850 50  0001 C CNN
F 1 "GND" H 4350 3950 50  0000 C CNN
F 2 "" H 4350 4100 50  0001 C CNN
F 3 "" H 4350 4100 50  0001 C CNN
	1    4350 4100
	1    0    0    -1  
$EndComp
$Comp
L LED_RGB D2
U 1 1 59D4BE43
P 9000 1500
F 0 "D2" H 9000 1870 50  0000 C CNN
F 1 "LED_RGB" H 9000 1150 50  0000 C CNN
F 2 "" H 9000 1450 50  0001 C CNN
F 3 "" H 9000 1450 50  0001 C CNN
	1    9000 1500
	0    -1   -1   0   
$EndComp
$Comp
L LED D1
U 1 1 59D4C039
P 8300 1450
F 0 "D1" H 8300 1550 50  0000 C CNN
F 1 "LED_IR" H 8300 1350 50  0000 C CNN
F 2 "" H 8300 1450 50  0001 C CNN
F 3 "" H 8300 1450 50  0001 C CNN
	1    8300 1450
	0    -1   -1   0   
$EndComp
$Comp
L ULN2003 U3
U 1 1 59D4C16F
P 7700 2600
F 0 "U3" H 7700 3125 50  0000 C CNN
F 1 "ULN2003" H 7700 3050 50  0000 C CNN
F 2 "" H 7750 1950 50  0001 L CNN
F 3 "" H 7800 2500 50  0001 C CNN
	1    7700 2600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR17
U 1 1 59D4C1FC
P 7700 3400
F 0 "#PWR17" H 7700 3150 50  0001 C CNN
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
F 2 "" V 8230 1950 50  0001 C CNN
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
F 2 "" V 8730 1950 50  0001 C CNN
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
F 2 "" V 8930 1950 50  0001 C CNN
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
F 2 "" V 9130 1950 50  0001 C CNN
F 3 "" H 9200 1950 50  0001 C CNN
	1    9200 1950
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR18
U 1 1 59D4CB83
P 8300 1200
F 0 "#PWR18" H 8300 1050 50  0001 C CNN
F 1 "+5V" H 8300 1340 50  0000 C CNN
F 2 "" H 8300 1200 50  0001 C CNN
F 3 "" H 8300 1200 50  0001 C CNN
	1    8300 1200
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR19
U 1 1 59D4CBB2
P 8800 1200
F 0 "#PWR19" H 8800 1050 50  0001 C CNN
F 1 "+5V" H 8800 1340 50  0000 C CNN
F 2 "" H 8800 1200 50  0001 C CNN
F 3 "" H 8800 1200 50  0001 C CNN
	1    8800 1200
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR20
U 1 1 59D4CBE1
P 9000 1200
F 0 "#PWR20" H 9000 1050 50  0001 C CNN
F 1 "+5V" H 9000 1340 50  0000 C CNN
F 2 "" H 9000 1200 50  0001 C CNN
F 3 "" H 9000 1200 50  0001 C CNN
	1    9000 1200
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR21
U 1 1 59D4CC10
P 9200 1200
F 0 "#PWR21" H 9200 1050 50  0001 C CNN
F 1 "+5V" H 9200 1340 50  0000 C CNN
F 2 "" H 9200 1200 50  0001 C CNN
F 3 "" H 9200 1200 50  0001 C CNN
	1    9200 1200
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x02 J2
U 1 1 59D4E3D0
P 10000 4600
F 0 "J2" H 10000 4700 50  0000 C CNN
F 1 "Button" H 10000 4400 50  0000 C CNN
F 2 "" H 10000 4600 50  0001 C CNN
F 3 "" H 10000 4600 50  0001 C CNN
	1    10000 4600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR23
U 1 1 59D4E5AD
P 9700 4800
F 0 "#PWR23" H 9700 4550 50  0001 C CNN
F 1 "GND" H 9700 4650 50  0000 C CNN
F 2 "" H 9700 4800 50  0001 C CNN
F 3 "" H 9700 4800 50  0001 C CNN
	1    9700 4800
	1    0    0    -1  
$EndComp
$Comp
L R R9
U 1 1 59D4E62D
P 9700 4350
F 0 "R9" V 9780 4350 50  0000 C CNN
F 1 "10k" V 9700 4350 50  0000 C CNN
F 2 "" V 9630 4350 50  0001 C CNN
F 3 "" H 9700 4350 50  0001 C CNN
	1    9700 4350
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR22
U 1 1 59D4E717
P 9700 4100
F 0 "#PWR22" H 9700 3950 50  0001 C CNN
F 1 "+5V" H 9700 4240 50  0000 C CNN
F 2 "" H 9700 4100 50  0001 C CNN
F 3 "" H 9700 4100 50  0001 C CNN
	1    9700 4100
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
L GND #PWR16
U 1 1 59D61F25
P 6500 5800
F 0 "#PWR16" H 6500 5550 50  0001 C CNN
F 1 "GND" H 6500 5650 50  0000 C CNN
F 2 "" H 6500 5800 50  0001 C CNN
F 3 "" H 6500 5800 50  0001 C CNN
	1    6500 5800
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR15
U 1 1 59D61FA8
P 6500 4600
F 0 "#PWR15" H 6500 4450 50  0001 C CNN
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
F 2 "" H 4338 5000 50  0001 C CNN
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
Text Label 9200 4600 0    60   ~ 0
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
F 1 "AVR-ISP-6" H 1735 6870 50  0000 L BNN
F 2 "AVR-ISP-6" V 1480 7140 50  0001 C CNN
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
L +5V #PWR3
U 1 1 59D63ED9
P 2800 6900
F 0 "#PWR3" H 2800 6750 50  0001 C CNN
F 1 "+5V" H 2800 7040 50  0000 C CNN
F 2 "" H 2800 6900 50  0001 C CNN
F 3 "" H 2800 6900 50  0001 C CNN
	1    2800 6900
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR4
U 1 1 59D63F4A
P 2800 7300
F 0 "#PWR4" H 2800 7050 50  0001 C CNN
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
F 2 "" V 7030 5200 50  0001 C CNN
F 3 "" H 7100 5200 50  0001 C CNN
	1    7100 5200
	1    0    0    -1  
$EndComp
$Comp
L Conn_02x05_Odd_Even J1
U 1 1 59D67F42
P 4300 7000
F 0 "J1" H 4350 7300 50  0000 C CNN
F 1 "Conn_02x05_Odd_Even" H 4350 6700 50  0000 C CNN
F 2 "" H 4300 7000 50  0001 C CNN
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
	9700 4200 9700 4100
Wire Wire Line
	9700 4600 9700 4500
Wire Wire Line
	9200 4600 9800 4600
Wire Wire Line
	9700 4700 9800 4700
Wire Wire Line
	9700 4800 9700 4700
Wire Wire Line
	8300 1200 8300 1300
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
	8300 1800 8300 1600
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
Connection ~ 9700 4600
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
L +5V #PWR8
U 1 1 59D6887F
P 4000 6700
F 0 "#PWR8" H 4000 6550 50  0001 C CNN
F 1 "+5V" H 4000 6840 50  0000 C CNN
F 2 "" H 4000 6700 50  0001 C CNN
F 3 "" H 4000 6700 50  0001 C CNN
	1    4000 6700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR12
U 1 1 59D6891E
P 4700 7300
F 0 "#PWR12" H 4700 7050 50  0001 C CNN
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
L GND #PWR9
U 1 1 59D68B99
P 4000 7350
F 0 "#PWR9" H 4000 7100 50  0001 C CNN
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
F 2 "" H 2550 2800 50  0001 C CNN
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
F 2 "" H 2238 3000 50  0001 C CNN
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
F 2 "" H 2938 3000 50  0001 C CNN
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
L GND #PWR1
U 1 1 59D6C50D
P 2200 3400
F 0 "#PWR1" H 2200 3150 50  0001 C CNN
F 1 "GND" H 2200 3250 50  0000 C CNN
F 2 "" H 2200 3400 50  0001 C CNN
F 3 "" H 2200 3400 50  0001 C CNN
	1    2200 3400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR5
U 1 1 59D6C554
P 2900 3400
F 0 "#PWR5" H 2900 3150 50  0001 C CNN
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
L +5V #PWR2
U 1 1 59D6D214
P 2600 1700
F 0 "#PWR2" H 2600 1550 50  0001 C CNN
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
F 2 "" V 2530 1950 50  0001 C CNN
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
Text Notes 8300 4400 0    60   ~ 0
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
F 2 "" V 5930 3850 50  0001 C CNN
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
F 2 "" V 6130 3850 50  0001 C CNN
F 3 "" H 6200 3850 50  0001 C CNN
	1    6200 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 3600 6000 3700
Wire Wire Line
	6200 3500 6200 3700
$Comp
L GND #PWR13
U 1 1 59D73132
P 6000 4100
F 0 "#PWR13" H 6000 3850 50  0001 C CNN
F 1 "GND" H 6000 3950 50  0000 C CNN
F 2 "" H 6000 4100 50  0001 C CNN
F 3 "" H 6000 4100 50  0001 C CNN
	1    6000 4100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR14
U 1 1 59D73182
P 6200 4100
F 0 "#PWR14" H 6200 3850 50  0001 C CNN
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
$EndSCHEMATC
