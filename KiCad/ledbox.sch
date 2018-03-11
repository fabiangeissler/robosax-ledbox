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
Sheet 1 5
Title "RoboSAX LED Box"
Date "2017-10-05"
Rev ""
Comp "Fabian Geißler"
Comment1 "Prototyp"
Comment2 "Version 4"
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
S 5000 3600 1600 1700
U 59DB9B58
F0 "Controller" 60
F1 "Controller.sch" 60
F2 "TX_EN" O R 6600 4100 60 
F3 "RX" I R 6600 3900 60 
F4 "TX" O R 6600 3800 60 
F5 "BTN" I L 5000 4400 60 
F6 "LED_IR" O L 5000 4200 60 
F7 "AIN0" I R 6600 4400 60 
F8 "AIN1" I R 6600 4500 60 
F9 "LED1" O L 5000 4600 60 
F10 "LED2" O L 5000 4700 60 
F11 "PUSH1" I L 5000 4900 60 
F12 "PUSH2" I L 5000 5000 60 
F13 "~RESET" I L 5000 5100 60 
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
$Sheet
S 3300 3600 1400 1700
U 59DBA5DF
F0 "Interface" 60
F1 "Interface.sch" 60
F2 "LED_IR" I R 4700 4200 60 
F3 "BTN" O R 4700 4400 60 
F4 "~RESET" O R 4700 5100 60 
F5 "PUSH1" O R 4700 4900 60 
F6 "PUSH2" O R 4700 5000 60 
F7 "LED1" I R 4700 4600 60 
F8 "LED2" I R 4700 4700 60 
$EndSheet
$EndSCHEMATC
