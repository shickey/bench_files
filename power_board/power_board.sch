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
LIBS:fab
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
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
L JACK2.1MM J1
U 1 1 5A2D61BF
P 4700 2650
F 0 "J1" H 4600 2844 45  0000 L BNN
F 1 "JACK2.1MM" H 4700 2650 45  0001 L BNN
F 2 "fab:fab-JACK_2.1MM" H 4730 2800 20  0001 C CNN
F 3 "" H 4700 2650 60  0001 C CNN
	1    4700 2650
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR01
U 1 1 5A2D6210
P 4200 2450
F 0 "#PWR01" H 4200 2300 50  0001 C CNN
F 1 "+5V" H 4200 2590 50  0000 C CNN
F 2 "" H 4200 2450 50  0001 C CNN
F 3 "" H 4200 2450 50  0001 C CNN
	1    4200 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 2450 4200 2550
Wire Wire Line
	4200 2550 4500 2550
$Comp
L GND #PWR02
U 1 1 5A2D622C
P 5100 2850
F 0 "#PWR02" H 5100 2600 50  0001 C CNN
F 1 "GND" H 5100 2700 50  0000 C CNN
F 2 "" H 5100 2850 50  0001 C CNN
F 3 "" H 5100 2850 50  0001 C CNN
	1    5100 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 2750 5100 2750
Wire Wire Line
	5100 2750 5100 2850
$Comp
L PINHD-2X2-SMD M1
U 1 1 5A2D625C
P 6550 2300
F 0 "M1" H 6200 2525 45  0000 L BNN
F 1 "PWR_OUT" H 6200 2100 45  0000 L BNN
F 2 "fab:fab-2X02SMD" H 6580 2450 20  0001 C CNN
F 3 "" H 6550 2300 60  0001 C CNN
	1    6550 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 2200 6350 2200
Wire Wire Line
	5800 2300 6350 2300
Wire Wire Line
	7200 2200 6650 2200
Wire Wire Line
	7200 2300 6650 2300
Text Label 5800 2200 0    60   ~ 0
+5V
Text Label 5800 2300 0    60   ~ 0
GND
Text Label 7200 2200 0    60   ~ 0
+5V
Text Label 7200 2300 0    60   ~ 0
GND
$Comp
L PINHD-2X2-SMD M2
U 1 1 5A2D63F0
P 6550 2850
F 0 "M2" H 6200 3075 45  0000 L BNN
F 1 "PWR_OUT" H 6200 2650 45  0000 L BNN
F 2 "fab:fab-2X02SMD" H 6580 3000 20  0001 C CNN
F 3 "" H 6550 2850 60  0001 C CNN
	1    6550 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 2750 6350 2750
Wire Wire Line
	5800 2850 6350 2850
Wire Wire Line
	7200 2750 6650 2750
Wire Wire Line
	7200 2850 6650 2850
Text Label 5800 2750 0    60   ~ 0
+5V
Text Label 5800 2850 0    60   ~ 0
GND
Text Label 7200 2750 0    60   ~ 0
+5V
Text Label 7200 2850 0    60   ~ 0
GND
$Comp
L PINHD-2X2-SMD M3
U 1 1 5A2D6452
P 6550 3400
F 0 "M3" H 6200 3625 45  0000 L BNN
F 1 "PWR_OUT" H 6200 3200 45  0000 L BNN
F 2 "fab:fab-2X02SMD" H 6580 3550 20  0001 C CNN
F 3 "" H 6550 3400 60  0001 C CNN
	1    6550 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 3300 6350 3300
Wire Wire Line
	5800 3400 6350 3400
Wire Wire Line
	7200 3300 6650 3300
Wire Wire Line
	7200 3400 6650 3400
Text Label 5800 3300 0    60   ~ 0
+5V
Text Label 5800 3400 0    60   ~ 0
GND
Text Label 7200 3300 0    60   ~ 0
+5V
Text Label 7200 3400 0    60   ~ 0
GND
$Comp
L PINHD-2X2-SMD M4
U 1 1 5A2D6460
P 6550 3950
F 0 "M4" H 6200 4175 45  0000 L BNN
F 1 "PWR_OUT" H 6200 3750 45  0000 L BNN
F 2 "fab:fab-2X02SMD" H 6580 4100 20  0001 C CNN
F 3 "" H 6550 3950 60  0001 C CNN
	1    6550 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 3850 6350 3850
Wire Wire Line
	5800 3950 6350 3950
Wire Wire Line
	7200 3850 6650 3850
Wire Wire Line
	7200 3950 6650 3950
Text Label 5800 3850 0    60   ~ 0
+5V
Text Label 5800 3950 0    60   ~ 0
GND
Text Label 7200 3850 0    60   ~ 0
+5V
Text Label 7200 3950 0    60   ~ 0
GND
$Comp
L PINHD-2X2-SMD M5
U 1 1 5A2D64B2
P 6550 4500
F 0 "M5" H 6200 4725 45  0000 L BNN
F 1 "PWR_OUT" H 6200 4300 45  0000 L BNN
F 2 "fab:fab-2X02SMD" H 6580 4650 20  0001 C CNN
F 3 "" H 6550 4500 60  0001 C CNN
	1    6550 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 4400 6350 4400
Wire Wire Line
	5800 4500 6350 4500
Wire Wire Line
	7200 4400 6650 4400
Wire Wire Line
	7200 4500 6650 4500
Text Label 5800 4400 0    60   ~ 0
+5V
Text Label 5800 4500 0    60   ~ 0
GND
Text Label 7200 4400 0    60   ~ 0
+5V
Text Label 7200 4500 0    60   ~ 0
GND
$Comp
L PINHD-2X2-SMD M6
U 1 1 5A2D64C0
P 6550 5050
F 0 "M6" H 6200 5275 45  0000 L BNN
F 1 "PWR_OUT" H 6200 4850 45  0000 L BNN
F 2 "fab:fab-2X02SMD" H 6580 5200 20  0001 C CNN
F 3 "" H 6550 5050 60  0001 C CNN
	1    6550 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 4950 6350 4950
Wire Wire Line
	5800 5050 6350 5050
Wire Wire Line
	7200 4950 6650 4950
Wire Wire Line
	7200 5050 6650 5050
Text Label 5800 4950 0    60   ~ 0
+5V
Text Label 5800 5050 0    60   ~ 0
GND
Text Label 7200 4950 0    60   ~ 0
+5V
Text Label 7200 5050 0    60   ~ 0
GND
$EndSCHEMATC
