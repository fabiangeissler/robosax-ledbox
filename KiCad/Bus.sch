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
L +5V #PWR0215
U 1 1 59DCBFB9
P 8500 4600
F 0 "#PWR0215" H 8500 4450 50  0001 C CNN
F 1 "+5V" H 8500 4740 50  0000 C CNN
F 2 "" H 8500 4600 50  0001 C CNN
F 3 "" H 8500 4600 50  0001 C CNN
	1    8500 4600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR0216
U 1 1 59DCBFBF
P 8500 5600
F 0 "#PWR0216" H 8500 5350 50  0001 C CNN
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
L GND #PWR0217
U 1 1 59DCBFDC
P 8800 5600
F 0 "#PWR0217" H 8800 5350 50  0001 C CNN
F 1 "GND" H 8800 5450 50  0000 C CNN
F 2 "" H 8800 5600 50  0001 C CNN
F 3 "" H 8800 5600 50  0001 C CNN
	1    8800 5600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR0209
U 1 1 59DCBFE2
P 7500 5000
F 0 "#PWR0209" H 7500 4750 50  0001 C CNN
F 1 "GND" H 7500 4850 50  0000 C CNN
F 2 "" H 7500 5000 50  0001 C CNN
F 3 "" H 7500 5000 50  0001 C CNN
	1    7500 5000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR0212
U 1 1 59DCBFE8
P 7800 5000
F 0 "#PWR0212" H 7800 4750 50  0001 C CNN
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
P 2400 3900
F 0 "U201" H 2450 4400 60  0000 L CNN
F 1 "ST485C" H 2450 4300 60  0000 L CNN
F 2 "Housings_SOIC:SOIC-8_3.9x4.9mm_Pitch1.27mm" H 2450 4500 60  0001 L CNN
F 3 "http://www.st.com/content/ccc/resource/technical/document/datasheet/4b/81/a8/cd/8a/72/47/82/CD00002183.pdf/files/CD00002183.pdf/jcr:content/translations/en.CD00002183.pdf" H 2450 4600 60  0001 L CNN
F 4 "Yes" H 2400 3900 60  0001 C CNN "Populate"
	1    2400 3900
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR0203
U 1 1 59DCC321
P 2400 4500
F 0 "#PWR0203" H 2400 4250 50  0001 C CNN
F 1 "GND" H 2400 4350 50  0000 C CNN
F 2 "" H 2400 4500 50  0001 C CNN
F 3 "" H 2400 4500 50  0001 C CNN
	1    2400 4500
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR0202
U 1 1 59DCC327
P 2400 3300
F 0 "#PWR0202" H 2400 3150 50  0001 C CNN
F 1 "+5V" H 2400 3440 50  0000 C CNN
F 2 "" H 2400 3300 50  0001 C CNN
F 3 "" H 2400 3300 50  0001 C CNN
	1    2400 3300
	1    0    0    -1  
$EndComp
Text Label 1500 4100 0    60   ~ 0
RX
Text Label 1500 4000 0    60   ~ 0
TX
Text Label 2100 4600 3    60   ~ 0
TX_EN
Text Label 1500 3700 0    60   ~ 0
TX_EN
Text Label 3300 3700 2    60   ~ 0
COMM_A
Text Label 3300 4100 2    60   ~ 0
COMM_B
Text Notes 4000 6100 0    60   ~ 0
Erster und letzter Teilnehmer am Bus \nbenötigen eine Abschlussimpedanz\nBei Flachbandkabel zwischen \n100Ω und 200Ω (differentiell).\nAngegeben: 104Ω (AWG 28, GSG).
$Comp
L R R204
U 1 1 59DCC344
P 2100 5050
F 0 "R204" V 2180 5050 50  0000 C CNN
F 1 "10k" V 2100 5050 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 2030 5050 50  0001 C CNN
F 3 "" H 2100 5050 50  0001 C CNN
	1    2100 5050
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR0208
U 1 1 59DCC351
P 2100 5300
F 0 "#PWR0208" H 2100 5050 50  0001 C CNN
F 1 "GND" H 2100 5150 50  0000 C CNN
F 2 "" H 2100 5300 50  0001 C CNN
F 3 "" H 2100 5300 50  0001 C CNN
	1    2100 5300
	1    0    0    -1  
$EndComp
Text Notes 4000 2300 0    60   ~ 0
R201 und R203 werden genutzt um einen \ndefinierten Zustand auf der Leitung \nzu schaffen, wenn kein Sender aktiv ist.\nMüssen nur auf einer Einheit im Bus \nvorhanden sein (=> Auswerteeineit?).
Text Notes 1500 2950 0    60   ~ 0
Neues Bauteil: ST485C \n- viel geringerer Ruhestrom als SN75176 \nBei diesem Sender ist der high side Treiber \nschwächer als der low side Treiber, daher \nmuss die CD Schaltung umgedreht werden.\n
Wire Wire Line
	2400 4500 2400 4400
Wire Wire Line
	2400 3300 2400 3400
Wire Wire Line
	1900 4000 1500 4000
Wire Wire Line
	1500 4100 1900 4100
Wire Wire Line
	1800 3800 1900 3800
Wire Wire Line
	1500 3700 1900 3700
Wire Wire Line
	2900 3700 3300 3700
Wire Wire Line
	2900 4100 3300 4100
Wire Wire Line
	2100 5300 2100 5200
Wire Wire Line
	2100 4600 2100 4900
$Comp
L GND #PWR0211
U 1 1 59DCC8E6
P 7500 3600
F 0 "#PWR0211" H 7500 3350 50  0001 C CNN
F 1 "GND" H 7500 3450 50  0000 C CNN
F 2 "" H 7500 3600 50  0001 C CNN
F 3 "" H 7500 3600 50  0001 C CNN
	1    7500 3600
	1    0    0    -1  
$EndComp
Text Label 6300 3500 0    60   ~ 0
COMM_A
Text Label 8000 3300 2    60   ~ 0
COMM_B
Wire Wire Line
	8000 3300 7400 3300
Wire Wire Line
	6900 3500 6300 3500
$Comp
L +5V #PWR0206
U 1 1 59DBB3D1
P 1400 4800
F 0 "#PWR0206" H 1400 4650 50  0001 C CNN
F 1 "+5V" H 1400 4940 50  0000 C CNN
F 2 "" H 1400 4800 50  0001 C CNN
F 3 "" H 1400 4800 50  0001 C CNN
	1    1400 4800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR0207
U 1 1 59DBB3D7
P 1400 5300
F 0 "#PWR0207" H 1400 5050 50  0001 C CNN
F 1 "GND" H 1400 5150 50  0000 C CNN
F 2 "" H 1400 5300 50  0001 C CNN
F 3 "" H 1400 5300 50  0001 C CNN
	1    1400 5300
	1    0    0    -1  
$EndComp
$Comp
L C C201
U 1 1 59DBB3DD
P 1400 5050
F 0 "C201" H 1425 5150 50  0000 L CNN
F 1 "10u" H 1425 4950 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 1438 4900 50  0001 C CNN
F 3 "" H 1400 5050 50  0001 C CNN
	1    1400 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 5200 1400 5300
Wire Wire Line
	1400 4800 1400 4800
Wire Wire Line
	1400 4800 1400 4900
Text HLabel 7900 4500 2    60   Output ~ 0
AIN0
Text HLabel 8900 5100 2    60   Output ~ 0
AIN1
Connection ~ 8800 5100
Connection ~ 7800 4500
Text HLabel 1500 3700 0    60   Input ~ 0
TX_EN
Text HLabel 1500 4000 0    60   Input ~ 0
TX
Text HLabel 1500 4100 0    60   Output ~ 0
RX
$Comp
L GND #PWR0201
U 1 1 59E09C7D
P 1800 4200
F 0 "#PWR0201" H 1800 3950 50  0001 C CNN
F 1 "GND" H 1800 4050 50  0000 C CNN
F 2 "" H 1800 4200 50  0001 C CNN
F 3 "" H 1800 4200 50  0001 C CNN
	1    1800 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 4200 1800 3800
$Comp
L +5V #PWR01
U 1 1 5AA31F2F
P 4300 2700
F 0 "#PWR01" H 4300 2550 50  0001 C CNN
F 1 "+5V" H 4300 2840 50  0000 C CNN
F 2 "" H 4300 2700 50  0001 C CNN
F 3 "" H 4300 2700 50  0001 C CNN
	1    4300 2700
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 5AA31F59
P 4300 2950
F 0 "R1" V 4380 2950 50  0000 C CNN
F 1 "1k" V 4200 2950 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 4230 2950 50  0001 C CNN
F 3 "" H 4300 2950 50  0001 C CNN
F 4 "Prototype" V 4300 2950 60  0001 C CNN "Populate"
	1    4300 2950
	1    0    0    -1  
$EndComp
$Comp
L Jumper_NO_Small JP1
U 1 1 5AA31FE8
P 4300 3300
F 0 "JP1" V 4254 3348 50  0000 L CNN
F 1 "COMMA PU" V 4345 3348 50  0000 L CNN
F 2 "SMD_Jumper:Jumper_SMD_02" H 4300 3300 50  0001 C CNN
F 3 "" H 4300 3300 50  0001 C CNN
	1    4300 3300
	0    1    1    0   
$EndComp
$Comp
L R R2
U 1 1 5AA3205D
P 4300 3750
F 0 "R2" V 4380 3750 50  0000 C CNN
F 1 "150" V 4200 3750 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 4230 3750 50  0001 C CNN
F 3 "" H 4300 3750 50  0001 C CNN
F 4 "Prototype" V 4300 3750 60  0001 C CNN "Populate"
	1    4300 3750
	1    0    0    -1  
$EndComp
$Comp
L Jumper_NO_Small JP2
U 1 1 5AA321C3
P 4300 4100
F 0 "JP2" V 4254 4148 50  0000 L CNN
F 1 "TERM" V 4345 4148 50  0000 L CNN
F 2 "SMD_Jumper:Jumper_SMD_02" H 4300 4100 50  0001 C CNN
F 3 "" H 4300 4100 50  0001 C CNN
	1    4300 4100
	0    1    1    0   
$EndComp
$Comp
L Jumper_NO_Small JP3
U 1 1 5AA32218
P 4300 4500
F 0 "JP3" V 4254 4548 50  0000 L CNN
F 1 "COMMB PD" V 4345 4548 50  0000 L CNN
F 2 "SMD_Jumper:Jumper_SMD_02" H 4300 4500 50  0001 C CNN
F 3 "" H 4300 4500 50  0001 C CNN
	1    4300 4500
	0    1    1    0   
$EndComp
$Comp
L R R3
U 1 1 5AA32258
P 4300 4850
F 0 "R3" V 4380 4850 50  0000 C CNN
F 1 "1k" V 4200 4850 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 4230 4850 50  0001 C CNN
F 3 "" H 4300 4850 50  0001 C CNN
F 4 "Prototype" V 4300 4850 60  0001 C CNN "Populate"
	1    4300 4850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 5AA322A8
P 4300 5100
F 0 "#PWR02" H 4300 4850 50  0001 C CNN
F 1 "GND" H 4300 4950 50  0000 C CNN
F 2 "" H 4300 5100 50  0001 C CNN
F 3 "" H 4300 5100 50  0001 C CNN
	1    4300 5100
	1    0    0    -1  
$EndComp
Text Label 3800 3500 0    60   ~ 0
COMM_A
Text Label 3800 4300 0    60   ~ 0
COMM_B
Wire Wire Line
	4300 5100 4300 5000
Wire Wire Line
	4300 4700 4300 4600
Wire Wire Line
	4300 4200 4300 4400
Wire Wire Line
	3800 4300 4300 4300
Connection ~ 4300 4300
Wire Wire Line
	4300 4000 4300 3900
Wire Wire Line
	4300 3400 4300 3600
Wire Wire Line
	3800 3500 4300 3500
Connection ~ 4300 3500
Wire Wire Line
	4300 3200 4300 3100
Wire Wire Line
	4300 2800 4300 2700
$Comp
L Conn_02x03_Odd_Even J?
U 1 1 5AA3EDC7
P 7100 3400
F 0 "J?" H 7150 3717 50  0000 C CNN
F 1 "Bus" H 7150 3626 50  0000 C CNN
F 2 "Connectors_IDC:IDC-Header_2x03_Pitch2.54mm_Straight" H 7100 3400 50  0001 C CNN
F 3 "" H 7100 3400 50  0001 C CNN
	1    7100 3400
	1    0    0    -1  
$EndComp
Text Label 8000 3400 2    60   ~ 0
COMM_A
Wire Wire Line
	8000 3400 7400 3400
Text Label 6300 3400 0    60   ~ 0
COMM_B
Wire Wire Line
	7500 3600 7500 3500
Wire Wire Line
	7500 3500 7400 3500
Wire Wire Line
	6300 3400 6900 3400
$Comp
L GND #PWR?
U 1 1 5AA3F204
P 6800 3600
F 0 "#PWR?" H 6800 3350 50  0001 C CNN
F 1 "GND" H 6800 3450 50  0000 C CNN
F 2 "" H 6800 3600 50  0001 C CNN
F 3 "" H 6800 3600 50  0001 C CNN
	1    6800 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6800 3600 6800 3300
Wire Wire Line
	6800 3300 6900 3300
$EndSCHEMATC
