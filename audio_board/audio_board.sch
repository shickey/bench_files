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
LIBS:audio_board-cache
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
L ATXMEGA16E5-AU IC1
U 1 1 5A22EE01
P 5800 2650
F 0 "IC1" H 4650 3700 50  0000 L BNN
F 1 "ATXMEGA16E5-AU" H 6450 1550 50  0000 L BNN
F 2 "fab:fab-TQFP32-08THIN" H 5800 2650 50  0001 C CIN
F 3 "" H 5800 2650 50  0001 C CNN
	1    5800 2650
	1    0    0    -1  
$EndComp
$Comp
L Micro_SD_Card SD1
U 1 1 5A22EFB5
P 9550 1600
F 0 "SD1" H 8900 2200 50  0000 C CNN
F 1 "Micro_SD_Card" H 10200 2200 50  0000 R CNN
F 2 "sean:MICROSD" H 10700 1900 50  0001 C CNN
F 3 "" H 9550 1600 50  0001 C CNN
	1    9550 1600
	1    0    0    -1  
$EndComp
$Comp
L 6MM_SWITCH6MM_SWITCH S1
U 1 1 5A22F73E
P 1700 5650
F 0 "S1" V 1415 5550 45  0000 L BNN
F 1 "RST_SWITCH" V 1515 5775 45  0000 L BNN
F 2 "fab:fab-6MM_SWITCH" H 1730 5800 20  0001 C CNN
F 3 "" H 1700 5650 60  0001 C CNN
	1    1700 5650
	0    1    1    0   
$EndComp
$Comp
L PINHD-2X3-SMD PROG1
U 1 1 5A22F7F7
P 4850 5350
F 0 "PROG1" H 4600 5575 45  0000 L BNN
F 1 "PDI" H 4600 5050 45  0000 L BNN
F 2 "fab:fab-2X03SMD" H 4880 5500 20  0001 C CNN
F 3 "" H 4850 5350 60  0001 C CNN
	1    4850 5350
	1    0    0    -1  
$EndComp
$Comp
L FTDI-SMD-HEADER FTDI1
U 1 1 5A22F867
P 6600 5700
F 0 "FTDI1" H 6600 5700 45  0001 C CNN
F 1 "FTDI-SMD-HEADER" H 6600 5700 45  0001 C CNN
F 2 "fab:fab-1X06SMD" H 6630 5850 20  0001 C CNN
F 3 "" H 6600 5700 60  0001 C CNN
	1    6600 5700
	1    0    0    -1  
$EndComp
$Comp
L RES-US1206 R1
U 1 1 5A22F8BE
P 2100 5400
F 0 "R1" H 1950 5459 45  0000 L BNN
F 1 "10k" H 1950 5270 45  0000 L BNN
F 2 "fab:fab-R1206" H 2130 5550 20  0001 C CNN
F 3 "" H 2100 5400 60  0001 C CNN
	1    2100 5400
	0    1    1    0   
$EndComp
$Comp
L VCC #PWR01
U 1 1 5A23029F
P 2650 3050
F 0 "#PWR01" H 2650 2900 50  0001 C CNN
F 1 "VCC" H 2650 3200 50  0000 C CNN
F 2 "" H 2650 3050 50  0001 C CNN
F 3 "" H 2650 3050 50  0001 C CNN
	1    2650 3050
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR02
U 1 1 5A2302CE
P 3000 3050
F 0 "#PWR02" H 3000 2900 50  0001 C CNN
F 1 "VCC" H 3000 3200 50  0000 C CNN
F 2 "" H 3000 3050 50  0001 C CNN
F 3 "" H 3000 3050 50  0001 C CNN
	1    3000 3050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR03
U 1 1 5A2302FD
P 2650 3550
F 0 "#PWR03" H 2650 3300 50  0001 C CNN
F 1 "GND" H 2650 3400 50  0000 C CNN
F 2 "" H 2650 3550 50  0001 C CNN
F 3 "" H 2650 3550 50  0001 C CNN
	1    2650 3550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR04
U 1 1 5A23032C
P 3000 3550
F 0 "#PWR04" H 3000 3300 50  0001 C CNN
F 1 "GND" H 3000 3400 50  0000 C CNN
F 2 "" H 3000 3550 50  0001 C CNN
F 3 "" H 3000 3550 50  0001 C CNN
	1    3000 3550
	1    0    0    -1  
$EndComp
$Comp
L CAP-UNPOLARIZED C3
U 1 1 5A23035B
P 2650 3350
F 0 "C3" H 2500 3450 45  0000 L BNN
F 1 "100nF" H 2500 3200 45  0000 L BNN
F 2 "fab:fab-C1206" H 2680 3500 20  0001 C CNN
F 3 "" H 2650 3350 60  0001 C CNN
	1    2650 3350
	0    1    1    0   
$EndComp
$Comp
L CAP-UNPOLARIZED C4
U 1 1 5A230565
P 3000 3350
F 0 "C4" H 2850 3450 45  0000 L BNN
F 1 "100nF" H 2850 3200 45  0000 L BNN
F 2 "fab:fab-C1206" H 3030 3500 20  0001 C CNN
F 3 "" H 3000 3350 60  0001 C CNN
	1    3000 3350
	0    1    1    0   
$EndComp
$Comp
L VCC #PWR05
U 1 1 5A2306A4
P 2100 5100
F 0 "#PWR05" H 2100 4950 50  0001 C CNN
F 1 "VCC" H 2100 5250 50  0000 C CNN
F 2 "" H 2100 5100 50  0001 C CNN
F 3 "" H 2100 5100 50  0001 C CNN
	1    2100 5100
	1    0    0    -1  
$EndComp
$Comp
L RES-US1206 R2
U 1 1 5A230AB8
P 1250 5950
F 0 "R2" H 1100 6009 45  0000 L BNN
F 1 "100" H 1100 5820 45  0000 L BNN
F 2 "fab:fab-R1206" H 1280 6100 20  0001 C CNN
F 3 "" H 1250 5950 60  0001 C CNN
	1    1250 5950
	0    1    1    0   
$EndComp
$Comp
L GND #PWR06
U 1 1 5A230BA1
P 1250 6250
F 0 "#PWR06" H 1250 6000 50  0001 C CNN
F 1 "GND" H 1250 6100 50  0000 C CNN
F 2 "" H 1250 6250 50  0001 C CNN
F 3 "" H 1250 6250 50  0001 C CNN
	1    1250 6250
	1    0    0    -1  
$EndComp
Text Label 2350 5750 0    60   ~ 0
RST/PDI_CLK
$Comp
L VCC #PWR07
U 1 1 5A23127E
P 5550 1200
F 0 "#PWR07" H 5550 1050 50  0001 C CNN
F 1 "VCC" H 5550 1350 50  0000 C CNN
F 2 "" H 5550 1200 50  0001 C CNN
F 3 "" H 5550 1200 50  0001 C CNN
	1    5550 1200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR08
U 1 1 5A231326
P 5750 4100
F 0 "#PWR08" H 5750 3850 50  0001 C CNN
F 1 "GND" H 5750 3950 50  0000 C CNN
F 2 "" H 5750 4100 50  0001 C CNN
F 3 "" H 5750 4100 50  0001 C CNN
	1    5750 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 3050 2650 3150
Wire Wire Line
	3000 3050 3000 3150
Wire Wire Line
	2650 3450 2650 3550
Wire Wire Line
	3000 3450 3000 3550
Wire Wire Line
	1250 6150 1250 6250
Connection ~ 2100 5750
Wire Wire Line
	1900 5750 2350 5750
Wire Wire Line
	1250 5750 1250 5650
Wire Wire Line
	1250 5650 1500 5650
Wire Wire Line
	2100 5100 2100 5200
Wire Wire Line
	2100 5600 2100 5750
Wire Wire Line
	5550 1200 5550 1500
Wire Wire Line
	5550 1300 6050 1300
Wire Wire Line
	6050 1300 6050 1500
Connection ~ 5550 1300
Wire Wire Line
	5750 3800 5750 4100
Wire Wire Line
	5850 3800 5850 4000
Wire Wire Line
	5850 4000 5750 4000
Connection ~ 5750 4000
Wire Wire Line
	4150 1850 4450 1850
Wire Wire Line
	4150 1950 4450 1950
Wire Wire Line
	4150 3450 4450 3450
Wire Wire Line
	7400 2050 7100 2050
Wire Wire Line
	7400 2150 7100 2150
Wire Wire Line
	7400 3150 7100 3150
Wire Wire Line
	7400 3250 7100 3250
Wire Wire Line
	7400 3350 7100 3350
Wire Wire Line
	7400 3450 7100 3450
Text Label 4150 1850 0    60   ~ 0
RST/PDI_CLK
Text Label 4150 1950 0    60   ~ 0
PDI_DATA
Text Label 7400 2050 0    60   ~ 0
AUDIO_L
Text Label 7400 2150 0    60   ~ 0
AUDIO_R
Text Label 4150 3450 0    60   ~ 0
TX
Text Label 7400 3150 0    60   ~ 0
SS
Text Label 7400 3250 0    60   ~ 0
SCK
Text Label 7400 3350 0    60   ~ 0
MISO
Text Label 7400 3450 0    60   ~ 0
MOSI
Wire Wire Line
	8300 1600 8650 1600
Wire Wire Line
	8300 1800 8650 1800
Wire Wire Line
	8300 1700 8650 1700
Wire Wire Line
	8300 1900 8650 1900
Wire Wire Line
	8300 1400 8650 1400
Wire Wire Line
	8300 1500 8650 1500
Text Label 8300 1700 0    60   ~ 0
SCK
Text Label 8300 1600 0    60   ~ 0
VCC
Text Label 8300 1800 0    60   ~ 0
GND
Text Label 8300 1900 0    60   ~ 0
MISO
Text Label 8300 1500 0    60   ~ 0
MOSI
Text Label 8300 1400 0    60   ~ 0
SS
Wire Wire Line
	6250 5200 6600 5200
Wire Wire Line
	6250 5400 6600 5400
Wire Wire Line
	6250 5500 6600 5500
Wire Wire Line
	6250 5600 6600 5600
Text Label 6250 5200 0    60   ~ 0
GND
Text Label 6250 5400 0    60   ~ 0
VCC
Text Label 6250 5500 0    60   ~ 0
TX
Text Label 6250 5600 0    60   ~ 0
RX
Wire Wire Line
	5350 5250 5050 5250
Wire Wire Line
	5350 5450 5050 5450
Text Label 5350 5250 0    60   ~ 0
VCC
Text Label 5350 5450 0    60   ~ 0
GND
Text Label 4050 5250 0    60   ~ 0
PDI_DATA
Text Label 4050 5450 0    60   ~ 0
RST/PDI_CLK
Wire Wire Line
	4050 5250 4750 5250
Wire Wire Line
	4050 5450 4750 5450
Wire Notes Line
	3900 4900 7300 4900
Text Notes 3950 5000 0    60   ~ 0
Communication
$Comp
L PINHD-2X2-SMD M1
U 1 1 5A25912E
P 9450 5050
F 0 "M1" H 9100 5275 45  0000 L BNN
F 1 "AUDIO_OUT_L" H 9100 4850 45  0000 L BNN
F 2 "fab:fab-2X02SMD" H 9480 5200 20  0001 C CNN
F 3 "" H 9450 5050 60  0001 C CNN
	1    9450 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	8800 4950 9250 4950
Wire Wire Line
	8800 5050 9250 5050
Wire Wire Line
	10000 4950 9550 4950
Wire Wire Line
	10000 5050 9550 5050
Text Label 8800 4950 0    60   ~ 0
GND
Text Label 8800 5050 0    60   ~ 0
GND
Text Label 10000 5050 0    60   ~ 0
AUDIO_L
$Comp
L PINHD-2X2-SMD M2
U 1 1 5A259674
P 9450 5650
F 0 "M2" H 9100 5875 45  0000 L BNN
F 1 "AUDIO_OUT_R" H 9100 5450 45  0000 L BNN
F 2 "fab:fab-2X02SMD" H 9480 5800 20  0001 C CNN
F 3 "" H 9450 5650 60  0001 C CNN
	1    9450 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	8800 5550 9250 5550
Wire Wire Line
	8800 5650 9250 5650
Wire Wire Line
	10000 5550 9550 5550
Wire Wire Line
	10000 5650 9550 5650
Text Label 8800 5550 0    60   ~ 0
GND
Text Label 8800 5650 0    60   ~ 0
GND
Text Label 10000 5650 0    60   ~ 0
AUDIO_R
Wire Notes Line
	8700 4650 10550 4650
Wire Notes Line
	10550 4650 10550 5950
Wire Notes Line
	10550 5950 8700 5950
Wire Notes Line
	8700 5950 8700 4650
Text Notes 8750 4750 0    60   ~ 0
Audio
Wire Notes Line
	700  1100 3500 1100
Wire Notes Line
	3500 1100 3500 3900
Wire Notes Line
	3500 3900 700  3900
Wire Notes Line
	700  3900 700  1100
Text Notes 800  1250 0    60   ~ 0
Power
Wire Notes Line
	850  4650 3200 4650
Wire Notes Line
	3200 4650 3200 6650
Wire Notes Line
	3200 6650 850  6650
Wire Notes Line
	850  6650 850  4650
Text Notes 950  4800 0    60   ~ 0
Reset
Connection ~ 2750 1800
Wire Wire Line
	2750 1800 2750 1950
Connection ~ 1650 1800
Wire Wire Line
	1650 1800 1650 1950
Connection ~ 2200 2250
Wire Wire Line
	1650 2250 2750 2250
Wire Wire Line
	2200 2000 2200 2400
Wire Wire Line
	2500 1800 2950 1800
Wire Wire Line
	2950 1800 2950 1600
Wire Wire Line
	1450 1800 1900 1800
Wire Wire Line
	1450 1550 1450 1800
$Comp
L +5V #PWR09
U 1 1 5A22FF2B
P 1450 1550
F 0 "#PWR09" H 1450 1400 50  0001 C CNN
F 1 "+5V" H 1450 1690 50  0000 C CNN
F 2 "" H 1450 1550 50  0001 C CNN
F 3 "" H 1450 1550 50  0001 C CNN
	1    1450 1550
	1    0    0    -1  
$EndComp
$Comp
L CAP-UNPOLARIZED C2
U 1 1 5A22F9AB
P 2750 2150
F 0 "C2" H 2600 2250 45  0000 L BNN
F 1 "1uF" H 2600 2000 45  0000 L BNN
F 2 "fab:fab-C1206" H 2780 2300 20  0001 C CNN
F 3 "" H 2750 2150 60  0001 C CNN
	1    2750 2150
	0    1    1    0   
$EndComp
$Comp
L CAP-UNPOLARIZED C1
U 1 1 5A22F88D
P 1650 2150
F 0 "C1" H 1500 2250 45  0000 L BNN
F 1 "1uF" H 1500 2000 45  0000 L BNN
F 2 "fab:fab-C1206" H 1680 2300 20  0001 C CNN
F 3 "" H 1650 2150 60  0001 C CNN
	1    1650 2150
	0    1    1    0   
$EndComp
$Comp
L REGULATORSOT23 IC2
U 1 1 5A22EEB4
P 2200 1900
F 0 "IC2" H 1950 1750 45  0000 L BNN
F 1 "3.3V" H 2250 1750 45  0000 L BNN
F 2 "fab:fab-SOT23" H 2230 2050 20  0001 C CNN
F 3 "" H 2200 1900 60  0001 C CNN
	1    2200 1900
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR010
U 1 1 5A22EE74
P 2200 2400
F 0 "#PWR010" H 2200 2150 50  0001 C CNN
F 1 "GND" H 2200 2250 50  0000 C CNN
F 2 "" H 2200 2400 50  0001 C CNN
F 3 "" H 2200 2400 50  0001 C CNN
	1    2200 2400
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR011
U 1 1 5A22EE4D
P 2950 1600
F 0 "#PWR011" H 2950 1450 50  0001 C CNN
F 1 "VCC" H 2950 1750 50  0000 C CNN
F 2 "" H 2950 1600 50  0001 C CNN
F 3 "" H 2950 1600 50  0001 C CNN
	1    2950 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 3350 4450 3350
Text Label 4150 3350 0    60   ~ 0
RX
Text Label 10000 4950 0    60   ~ 0
AUDIO_L
Text Label 10000 5550 0    60   ~ 0
AUDIO_R
$Comp
L PINHD-2X2-SMD PWR_IN1
U 1 1 5A2B973E
P 1550 3100
F 0 "PWR_IN1" H 1200 3325 45  0000 L BNN
F 1 "PINHD-2X2-SMD" H 1200 2900 45  0000 L BNN
F 2 "fab:fab-2X02SMD" H 1580 3250 20  0001 C CNN
F 3 "" H 1550 3100 60  0001 C CNN
	1    1550 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	950  3000 1350 3000
Wire Wire Line
	950  3100 1350 3100
Wire Wire Line
	2100 3000 1650 3000
Wire Wire Line
	2100 3100 1650 3100
Text Label 950  3000 0    60   ~ 0
+5V
Text Label 950  3100 0    60   ~ 0
GND
Text Label 2100 3000 0    60   ~ 0
+5V
Text Label 2100 3100 0    60   ~ 0
GND
Wire Wire Line
	4150 3050 4450 3050
Text Label 4150 3050 0    60   ~ 0
STRAIN_VAL
$Comp
L PINHD-2X2-SMD M3
U 1 1 5A2C359F
P 4950 6150
F 0 "M3" H 4600 6375 45  0000 L BNN
F 1 "STRAIN_IN" H 4600 5950 45  0000 L BNN
F 2 "fab:fab-2X02SMD" H 4980 6300 20  0001 C CNN
F 3 "" H 4950 6150 60  0001 C CNN
	1    4950 6150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 6050 4750 6050
Wire Wire Line
	5450 6050 5050 6050
Text Label 4350 6050 0    60   ~ 0
STRAIN_VAL
Text Label 5450 6050 0    60   ~ 0
STRAIN_VAL
Wire Notes Line
	3900 4900 3900 6450
Wire Notes Line
	3900 6450 7300 6450
Wire Notes Line
	7300 6450 7300 4900
$EndSCHEMATC
