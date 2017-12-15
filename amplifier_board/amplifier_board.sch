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
LIBS:amplifier_board-cache
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
L LM4871 U1
U 1 1 5A25B00C
P 5200 3300
F 0 "U1" H 4900 3600 50  0000 L CNN
F 1 "LM4871" H 5550 3050 50  0000 L CNN
F 2 "Housings_SOIC:SOIC-8_3.9x4.9mm_Pitch1.27mm" H 5300 3400 50  0001 C CNN
F 3 "" H 5400 3500 50  0001 C CNN
	1    5200 3300
	1    0    0    -1  
$EndComp
$Comp
L TERM-1X02-FABLAB J1
U 1 1 5A25B05B
P 6650 3500
F 0 "J1" H 6550 3725 45  0000 L BNN
F 1 "8_OHM_SPKR" H 6650 3500 45  0001 L BNN
F 2 "fab:fab-ED555DS-2DS" H 6680 3650 20  0001 C CNN
F 3 "" H 6650 3500 60  0001 C CNN
	1    6650 3500
	1    0    0    -1  
$EndComp
$Comp
L PINHD-2X2-SMD M2
U 1 1 5A25B0D3
P 1650 3150
F 0 "M2" H 1300 3375 45  0000 L BNN
F 1 "AUDIO_IN" H 1300 2950 45  0000 L BNN
F 2 "fab:fab-2X02SMD" H 1680 3300 20  0001 C CNN
F 3 "" H 1650 3150 60  0001 C CNN
	1    1650 3150
	1    0    0    -1  
$EndComp
Text Label 1150 3050 0    60   ~ 0
GND
Text Label 1150 3150 0    60   ~ 0
GND
Text Label 2100 3050 0    60   ~ 0
SIG
Text Label 2100 3150 0    60   ~ 0
SIG
$Comp
L CAP-UNPOLARIZED C3
U 1 1 5A25B210
P 3200 3100
F 0 "C3" H 3050 3200 45  0000 L BNN
F 1 "100nF" H 3050 2950 45  0000 L BNN
F 2 "fab:fab-C1206" H 3230 3250 20  0001 C CNN
F 3 "" H 3200 3100 60  0001 C CNN
	1    3200 3100
	1    0    0    -1  
$EndComp
$Comp
L CAP-UNPOLARIZED C4
U 1 1 5A25B311
P 5050 2600
F 0 "C4" H 4900 2700 45  0000 L BNN
F 1 "1uF" H 4900 2450 45  0000 L BNN
F 2 "fab:fab-C1206" H 5080 2750 20  0001 C CNN
F 3 "" H 5050 2600 60  0001 C CNN
	1    5050 2600
	0    1    1    0   
$EndComp
$Comp
L VCC #PWR01
U 1 1 5A25B364
P 5200 2300
F 0 "#PWR01" H 5200 2150 50  0001 C CNN
F 1 "VCC" H 5200 2450 50  0000 C CNN
F 2 "" H 5200 2300 50  0001 C CNN
F 3 "" H 5200 2300 50  0001 C CNN
	1    5200 2300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 5A25B38A
P 5050 2800
F 0 "#PWR02" H 5050 2550 50  0001 C CNN
F 1 "GND" H 5050 2650 50  0000 C CNN
F 2 "" H 5050 2800 50  0001 C CNN
F 3 "" H 5050 2800 50  0001 C CNN
	1    5050 2800
	1    0    0    -1  
$EndComp
$Comp
L CAP-UNPOLARIZED C5
U 1 1 5A25B627
P 4750 4200
F 0 "C5" H 4600 4300 45  0000 L BNN
F 1 ".1uF" H 4600 4050 45  0000 L BNN
F 2 "fab:fab-C1206" H 4780 4350 20  0001 C CNN
F 3 "" H 4750 4200 60  0001 C CNN
	1    4750 4200
	0    1    1    0   
$EndComp
$Comp
L GND #PWR03
U 1 1 5A25B675
P 4750 4450
F 0 "#PWR03" H 4750 4200 50  0001 C CNN
F 1 "GND" H 4750 4300 50  0000 C CNN
F 2 "" H 4750 4450 50  0001 C CNN
F 3 "" H 4750 4450 50  0001 C CNN
	1    4750 4450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR04
U 1 1 5A25B6F0
P 5200 4250
F 0 "#PWR04" H 5200 4000 50  0001 C CNN
F 1 "GND" H 5200 4100 50  0000 C CNN
F 2 "" H 5200 4250 50  0001 C CNN
F 3 "" H 5200 4250 50  0001 C CNN
	1    5200 4250
	1    0    0    -1  
$EndComp
Text Label 2750 3100 0    60   ~ 0
SIG
Text Label 4800 3250 0    60   ~ 0
-
Text Label 5350 4000 0    60   ~ 0
SHTDWN
Text Label 5450 3050 0    60   ~ 0
Vo1
Text Label 5450 3750 0    60   ~ 0
Vo2
$Comp
L RES-US1206 R2
U 1 1 5A25B427
P 5150 1900
F 0 "R2" H 5000 1959 45  0000 L BNN
F 1 "4.99k" H 5000 1770 45  0000 L BNN
F 2 "fab:fab-R1206" H 5180 2050 20  0001 C CNN
F 3 "" H 5150 1900 60  0001 C CNN
	1    5150 1900
	-1   0    0    1   
$EndComp
Text Label 4750 3500 0    60   ~ 0
+
Wire Wire Line
	5450 2900 6650 2900
Wire Wire Line
	6650 3850 5450 3850
Wire Wire Line
	6650 3500 6650 3850
Wire Wire Line
	6650 2900 6650 3400
Wire Wire Line
	5450 3850 5450 3650
Connection ~ 4700 3250
Wire Wire Line
	5200 2300 5200 3000
Wire Wire Line
	5050 2700 5050 2800
Connection ~ 5200 2350
Wire Wire Line
	5050 2350 5050 2400
Wire Wire Line
	5200 2350 5050 2350
Wire Wire Line
	4300 3250 4900 3250
Wire Wire Line
	2750 3100 3000 3100
Wire Wire Line
	2100 3150 1750 3150
Wire Wire Line
	2100 3050 1750 3050
Wire Wire Line
	1150 3150 1450 3150
Wire Wire Line
	1150 3050 1450 3050
Wire Wire Line
	5450 1900 5450 3100
Wire Wire Line
	4900 3500 4750 3500
Wire Wire Line
	4750 3500 4750 4000
Wire Wire Line
	4750 4300 4750 4450
Wire Wire Line
	5100 3850 5100 3950
Wire Wire Line
	5100 3950 4750 3950
Connection ~ 4750 3950
Wire Wire Line
	5200 3800 5200 4250
Wire Wire Line
	5350 3750 5350 4050
Wire Wire Line
	5350 4050 5200 4050
Connection ~ 5200 4050
Wire Wire Line
	4700 3250 4700 1900
Wire Wire Line
	4700 1900 4950 1900
Wire Wire Line
	5450 1900 5350 1900
Connection ~ 5450 2900
$Comp
L REGULATORSOT23 IC1
U 1 1 5A2D659D
P 3300 1300
F 0 "IC1" H 3050 1150 45  0000 L BNN
F 1 "3.3V" H 3350 1150 45  0000 L BNN
F 2 "TO_SOT_Packages_SMD:SOT-223" H 3330 1450 20  0001 C CNN
F 3 "" H 3300 1300 60  0001 C CNN
	1    3300 1300
	1    0    0    -1  
$EndComp
$Comp
L PINHD-2X2-SMD M1
U 1 1 5A2D66AF
P 1450 1200
F 0 "M1" H 1100 1425 45  0000 L BNN
F 1 "PWR" H 1100 1000 45  0000 L BNN
F 2 "fab:fab-2X02SMD" H 1480 1350 20  0001 C CNN
F 3 "" H 1450 1200 60  0001 C CNN
	1    1450 1200
	1    0    0    -1  
$EndComp
$Comp
L CAP-UNPOLARIZED C1
U 1 1 5A2D678F
P 2750 1500
F 0 "C1" H 2600 1600 45  0000 L BNN
F 1 "1uF" H 2600 1350 45  0000 L BNN
F 2 "fab:fab-C1206" H 2780 1650 20  0001 C CNN
F 3 "" H 2750 1500 60  0001 C CNN
	1    2750 1500
	0    1    1    0   
$EndComp
$Comp
L VCC #PWR05
U 1 1 5A2D67E0
P 4100 1000
F 0 "#PWR05" H 4100 850 50  0001 C CNN
F 1 "VCC" H 4100 1150 50  0000 C CNN
F 2 "" H 4100 1000 50  0001 C CNN
F 3 "" H 4100 1000 50  0001 C CNN
	1    4100 1000
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR06
U 1 1 5A2D680E
P 2500 1000
F 0 "#PWR06" H 2500 850 50  0001 C CNN
F 1 "+5V" H 2500 1140 50  0000 C CNN
F 2 "" H 2500 1000 50  0001 C CNN
F 3 "" H 2500 1000 50  0001 C CNN
	1    2500 1000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR07
U 1 1 5A2D695F
P 3300 1800
F 0 "#PWR07" H 3300 1550 50  0001 C CNN
F 1 "GND" H 3300 1650 50  0000 C CNN
F 2 "" H 3300 1800 50  0001 C CNN
F 3 "" H 3300 1800 50  0001 C CNN
	1    3300 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	800  1100 1250 1100
Wire Wire Line
	800  1200 1250 1200
Wire Wire Line
	2000 1100 1550 1100
Wire Wire Line
	2000 1200 1550 1200
Wire Wire Line
	2500 1000 2500 1200
Wire Wire Line
	2500 1200 3000 1200
Wire Wire Line
	3600 1200 4100 1200
Wire Wire Line
	4100 1200 4100 1000
Wire Wire Line
	3300 1400 3300 1800
Wire Wire Line
	2750 1600 2750 1700
Wire Wire Line
	2750 1700 3850 1700
Connection ~ 3300 1700
$Comp
L CAP-UNPOLARIZED C2
U 1 1 5A2D6B8C
P 3850 1500
F 0 "C2" H 3700 1600 45  0000 L BNN
F 1 "1uF" H 3700 1350 45  0000 L BNN
F 2 "fab:fab-C1206" H 3880 1650 20  0001 C CNN
F 3 "" H 3850 1500 60  0001 C CNN
	1    3850 1500
	0    1    1    0   
$EndComp
Wire Wire Line
	2750 1200 2750 1300
Connection ~ 2750 1200
Wire Wire Line
	3850 1700 3850 1600
Wire Wire Line
	3850 1200 3850 1300
Connection ~ 3850 1200
Text Label 800  1100 0    60   ~ 0
+5V
Text Label 2000 1100 0    60   ~ 0
+5V
Text Label 800  1200 0    60   ~ 0
GND
Text Label 2000 1200 0    60   ~ 0
GND
$Comp
L POT R1
U 1 1 5A2D6A27
P 4150 3250
F 0 "R1" V 3975 3250 50  0000 C CNN
F 1 "10k" V 4050 3250 50  0000 C CNN
F 2 "sean:POT-PVZ2A" H 4150 3250 50  0001 C CNN
F 3 "" H 4150 3250 50  0001 C CNN
	1    4150 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 3100 4150 3100
$Comp
L GND #PWR08
U 1 1 5A2D6CEF
P 4150 3700
F 0 "#PWR08" H 4150 3450 50  0001 C CNN
F 1 "GND" H 4150 3550 50  0000 C CNN
F 2 "" H 4150 3700 50  0001 C CNN
F 3 "" H 4150 3700 50  0001 C CNN
	1    4150 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 3400 4150 3700
$Comp
L RES-US1206 R3
U 1 1 5A318848
P 3700 3100
F 0 "R3" H 3550 3159 45  0000 L BNN
F 1 "10k" H 3550 2970 45  0000 L BNN
F 2 "fab:fab-R1206" H 3730 3250 20  0001 C CNN
F 3 "" H 3700 3100 60  0001 C CNN
	1    3700 3100
	-1   0    0    1   
$EndComp
Wire Wire Line
	3300 3100 3500 3100
$EndSCHEMATC