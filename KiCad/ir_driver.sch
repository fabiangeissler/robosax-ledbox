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
Sheet 5 7
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
L Test_Point TP?
U 1 1 5AD4F1B8
P 5900 3450
AR Path="/5ABDE275/5AD4EFCE/5AD4F1B8" Ref="TP?"  Part="1" 
AR Path="/5ABDE275/5AD58EB0/5AD4F1B8" Ref="TP?"  Part="1" 
F 0 "TP?" H 5958 3570 50  0000 L CNN
F 1 "Test_Point" H 5958 3479 50  0000 L CNN
F 2 "" H 6100 3450 50  0001 C CNN
F 3 "~" H 6100 3450 50  0001 C CNN
	1    5900 3450
	1    0    0    -1  
$EndComp
Text HLabel 6000 3550 2    60   Output ~ 0
IR_LED
Text HLabel 4600 3450 0    60   Input ~ 0
IR_CLK
$Comp
L Test_Point TP?
U 1 1 5AD4F1C1
P 4700 3750
AR Path="/5ABDE275/5AD4EFCE/5AD4F1C1" Ref="TP?"  Part="1" 
AR Path="/5ABDE275/5AD58EB0/5AD4F1C1" Ref="TP?"  Part="1" 
F 0 "TP?" H 4758 3870 50  0000 L CNN
F 1 "Test_Point" H 4758 3779 50  0000 L CNN
F 2 "" H 4900 3750 50  0001 C CNN
F 3 "~" H 4900 3750 50  0001 C CNN
	1    4700 3750
	-1   0    0    1   
$EndComp
Wire Wire Line
	5900 3550 5900 3450
Wire Wire Line
	5800 3550 5900 3550
Wire Wire Line
	5900 3550 6000 3550
Wire Wire Line
	4700 3750 4700 3650
Wire Wire Line
	4600 3650 4700 3650
Wire Wire Line
	4700 3650 5200 3650
Connection ~ 5900 3550
Wire Wire Line
	4600 3450 4700 3450
Wire Wire Line
	4700 3450 5200 3450
Connection ~ 4700 3650
Text HLabel 4600 3650 0    60   Input ~ 0
IR_ACT
$Comp
L Test_Point TP?
U 1 1 5AD4F3DD
P 4700 3350
AR Path="/5ABDE275/5AD4EFCE/5AD4F3DD" Ref="TP?"  Part="1" 
AR Path="/5ABDE275/5AD58EB0/5AD4F3DD" Ref="TP?"  Part="1" 
F 0 "TP?" H 4758 3470 50  0000 L CNN
F 1 "Test_Point" H 4758 3379 50  0000 L CNN
F 2 "" H 4900 3350 50  0001 C CNN
F 3 "~" H 4900 3350 50  0001 C CNN
	1    4700 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 3350 4700 3450
Connection ~ 4700 3450
$Comp
L 74LS00 U?
U 1 1 5AD6E000
P 5500 3550
AR Path="/5ABDE275/5AD3C598/5AD6E000" Ref="U?"  Part="1" 
AR Path="/5ABDE275/5AD3E3F7/5AD6E000" Ref="U?"  Part="1" 
AR Path="/5ABDE275/5AD4EFCE/5AD6E000" Ref="U?"  Part="1" 
F 0 "U?" H 5500 3875 50  0000 C CNN
F 1 "74LS00" H 5500 3784 50  0000 C CNN
F 2 "" H 5500 3550 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls00" H 5500 3550 50  0001 C CNN
	1    5500 3550
	1    0    0    -1  
$EndComp
$EndSCHEMATC
