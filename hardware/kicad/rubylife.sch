EESchema Schematic File Version 4
LIBS:rubylife-cache
EELAYER 26 0
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
L Device:LED D1
U 1 1 5BB00B0A
P 7200 3150
F 0 "D1" H 7191 3366 50  0000 C CNN
F 1 "LED" H 7191 3275 50  0000 C CNN
F 2 "LEDs:LED_1206" H 7200 3150 50  0001 C CNN
F 3 "~" H 7200 3150 50  0001 C CNN
	1    7200 3150
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D2
U 1 1 5BB00BA0
P 7200 3950
F 0 "D2" H 7191 4166 50  0000 C CNN
F 1 "LED" H 7191 4075 50  0000 C CNN
F 2 "LEDs:LED_1206" H 7200 3950 50  0001 C CNN
F 3 "~" H 7200 3950 50  0001 C CNN
	1    7200 3950
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5BB00C1D
P 6750 3150
F 0 "R1" V 6543 3150 50  0000 C CNN
F 1 "R" V 6634 3150 50  0000 C CNN
F 2 "kiu-footprint:R_1206" V 6680 3150 50  0001 C CNN
F 3 "~" H 6750 3150 50  0001 C CNN
	1    6750 3150
	0    1    1    0   
$EndComp
$Comp
L Device:R R2
U 1 1 5BB00C63
P 6750 3950
F 0 "R2" V 6543 3950 50  0000 C CNN
F 1 "R" V 6634 3950 50  0000 C CNN
F 2 "kiu-footprint:R_1206" V 6680 3950 50  0001 C CNN
F 3 "~" H 6750 3950 50  0001 C CNN
	1    6750 3950
	0    1    1    0   
$EndComp
$Comp
L Device:Battery_Cell BT1
U 1 1 5BB00D36
P 1200 3000
F 0 "BT1" H 1318 3096 50  0000 L CNN
F 1 "Battery_Cell" H 1318 3005 50  0000 L CNN
F 2 "kiu-footprint:CR2032 SMD" V 1200 3060 50  0001 C CNN
F 3 "~" V 1200 3060 50  0001 C CNN
	1    1200 3000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 5BB00DA0
P 1200 4000
F 0 "#PWR02" H 1200 3750 50  0001 C CNN
F 1 "GND" H 1205 3827 50  0000 C CNN
F 2 "" H 1200 4000 50  0001 C CNN
F 3 "" H 1200 4000 50  0001 C CNN
	1    1200 4000
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR01
U 1 1 5BB00E29
P 1200 1900
F 0 "#PWR01" H 1200 1750 50  0001 C CNN
F 1 "VCC" H 1217 2073 50  0000 C CNN
F 2 "" H 1200 1900 50  0001 C CNN
F 3 "" H 1200 1900 50  0001 C CNN
	1    1200 1900
	1    0    0    -1  
$EndComp
$Comp
L MCU_Microchip_ATtiny:ATtiny20-SSU U1
U 1 1 5BB00F69
P 3800 2950
F 0 "U1" H 3270 2996 50  0000 R CNN
F 1 "ATtiny20-SSU" H 3270 2905 50  0000 R CNN
F 2 "Housings_SOIC:SOIC-14_3.9x8.7mm_Pitch1.27mm" H 3800 2950 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/atmel-8235-8-bit-avr-microcontroller-attiny20_datasheet.pdf" H 3800 2950 50  0001 C CNN
	1    3800 2950
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR05
U 1 1 5BB01043
P 3800 1900
F 0 "#PWR05" H 3800 1750 50  0001 C CNN
F 1 "VCC" H 3817 2073 50  0000 C CNN
F 2 "" H 3800 1900 50  0001 C CNN
F 3 "" H 3800 1900 50  0001 C CNN
	1    3800 1900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR06
U 1 1 5BB0105A
P 3800 4000
F 0 "#PWR06" H 3800 3750 50  0001 C CNN
F 1 "GND" H 3805 3827 50  0000 C CNN
F 2 "" H 3800 4000 50  0001 C CNN
F 3 "" H 3800 4000 50  0001 C CNN
	1    3800 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 2050 3800 1900
Wire Wire Line
	3800 4000 3800 3850
Wire Wire Line
	6900 3150 7050 3150
Wire Wire Line
	6900 3950 7050 3950
Wire Wire Line
	1200 2800 1200 1900
Wire Wire Line
	1200 4000 1200 3100
$Comp
L power:VCC #PWR07
U 1 1 5BB01943
P 7500 1900
F 0 "#PWR07" H 7500 1750 50  0001 C CNN
F 1 "VCC" H 7517 2073 50  0000 C CNN
F 2 "" H 7500 1900 50  0001 C CNN
F 3 "" H 7500 1900 50  0001 C CNN
	1    7500 1900
	1    0    0    -1  
$EndComp
Text GLabel 4550 3550 2    50   Input ~ 0
RESET
Text GLabel 9650 2100 3    50   Input ~ 0
RESET
Wire Wire Line
	4550 3550 4400 3550
Text GLabel 8650 2100 3    50   Input ~ 0
TPID
Text GLabel 9150 2100 3    50   Input ~ 0
TPIC
Text GLabel 4550 3250 2    50   Input ~ 0
TPIC
Text GLabel 4550 3350 2    50   Input ~ 0
TPID
Wire Wire Line
	4550 3250 4400 3250
Wire Wire Line
	4550 3350 4400 3350
$Comp
L Device:R R3
U 1 1 5BB03944
P 6750 2350
F 0 "R3" V 6543 2350 50  0000 C CNN
F 1 "R" V 6634 2350 50  0000 C CNN
F 2 "kiu-footprint:R_1206" V 6680 2350 50  0001 C CNN
F 3 "~" H 6750 2350 50  0001 C CNN
	1    6750 2350
	0    1    1    0   
$EndComp
$Comp
L Device:LED D3
U 1 1 5BB0396E
P 7200 2350
F 0 "D3" H 7191 2566 50  0000 C CNN
F 1 "LED" H 7191 2475 50  0000 C CNN
F 2 "LEDs:LED_1206" H 7200 2350 50  0001 C CNN
F 3 "~" H 7200 2350 50  0001 C CNN
	1    7200 2350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 5BB0399E
P 6750 3550
F 0 "R4" V 6543 3550 50  0000 C CNN
F 1 "R" V 6634 3550 50  0000 C CNN
F 2 "kiu-footprint:R_1206" V 6680 3550 50  0001 C CNN
F 3 "~" H 6750 3550 50  0001 C CNN
	1    6750 3550
	0    1    1    0   
$EndComp
$Comp
L Device:LED D4
U 1 1 5BB039CC
P 7200 3550
F 0 "D4" H 7191 3766 50  0000 C CNN
F 1 "LED" H 7191 3675 50  0000 C CNN
F 2 "LEDs:LED_1206" H 7200 3550 50  0001 C CNN
F 3 "~" H 7200 3550 50  0001 C CNN
	1    7200 3550
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 5BB0423D
P 6750 4350
F 0 "R5" V 6543 4350 50  0000 C CNN
F 1 "R" V 6634 4350 50  0000 C CNN
F 2 "kiu-footprint:R_1206" V 6680 4350 50  0001 C CNN
F 3 "~" H 6750 4350 50  0001 C CNN
	1    6750 4350
	0    1    1    0   
$EndComp
$Comp
L Device:R R6
U 1 1 5BB0426F
P 6750 2750
F 0 "R6" V 6543 2750 50  0000 C CNN
F 1 "R" V 6634 2750 50  0000 C CNN
F 2 "kiu-footprint:R_1206" V 6680 2750 50  0001 C CNN
F 3 "~" H 6750 2750 50  0001 C CNN
	1    6750 2750
	0    1    1    0   
$EndComp
$Comp
L Device:R R7
U 1 1 5BB05480
P 6750 4750
F 0 "R7" V 6543 4750 50  0000 C CNN
F 1 "R" V 6634 4750 50  0000 C CNN
F 2 "kiu-footprint:R_1206" V 6680 4750 50  0001 C CNN
F 3 "~" H 6750 4750 50  0001 C CNN
	1    6750 4750
	0    1    1    0   
$EndComp
$Comp
L Device:R R8
U 1 1 5BB054B6
P 6750 5150
F 0 "R8" V 6543 5150 50  0000 C CNN
F 1 "R" V 6634 5150 50  0000 C CNN
F 2 "kiu-footprint:R_1206" V 6680 5150 50  0001 C CNN
F 3 "~" H 6750 5150 50  0001 C CNN
	1    6750 5150
	0    1    1    0   
$EndComp
$Comp
L Device:LED D5
U 1 1 5BB054F0
P 7200 4350
F 0 "D5" H 7191 4566 50  0000 C CNN
F 1 "LED" H 7191 4475 50  0000 C CNN
F 2 "LEDs:LED_1206" H 7200 4350 50  0001 C CNN
F 3 "~" H 7200 4350 50  0001 C CNN
	1    7200 4350
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D6
U 1 1 5BB0552E
P 7200 2750
F 0 "D6" H 7191 2966 50  0000 C CNN
F 1 "LED" H 7191 2875 50  0000 C CNN
F 2 "LEDs:LED_1206" H 7200 2750 50  0001 C CNN
F 3 "~" H 7200 2750 50  0001 C CNN
	1    7200 2750
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D7
U 1 1 5BB0556E
P 7200 4750
F 0 "D7" H 7191 4966 50  0000 C CNN
F 1 "LED" H 7191 4875 50  0000 C CNN
F 2 "LEDs:LED_1206" H 7200 4750 50  0001 C CNN
F 3 "~" H 7200 4750 50  0001 C CNN
	1    7200 4750
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D8
U 1 1 5BB055B0
P 7200 5150
F 0 "D8" H 7191 5366 50  0000 C CNN
F 1 "LED" H 7191 5275 50  0000 C CNN
F 2 "LEDs:LED_1206" H 7200 5150 50  0001 C CNN
F 3 "~" H 7200 5150 50  0001 C CNN
	1    7200 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 2350 7050 2350
Wire Wire Line
	6900 3550 7050 3550
Wire Wire Line
	6900 4350 7050 4350
Wire Wire Line
	6900 2750 7050 2750
Wire Wire Line
	6900 4750 7050 4750
Wire Wire Line
	6900 5150 7050 5150
NoConn ~ 4400 3450
$Comp
L Connector:TestPoint TP1
U 1 1 5BB16590
P 8650 1950
F 0 "TP1" H 8708 2070 50  0000 L CNN
F 1 "TestPoint" H 8708 1979 50  0000 L CNN
F 2 "Measurement_Points:Measurement_Point_Round-SMD-Pad_Small" H 8850 1950 50  0001 C CNN
F 3 "~" H 8850 1950 50  0001 C CNN
	1    8650 1950
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP2
U 1 1 5BB165EA
P 9150 1950
F 0 "TP2" H 9208 2070 50  0000 L CNN
F 1 "TestPoint" H 9208 1979 50  0000 L CNN
F 2 "Measurement_Points:Measurement_Point_Round-SMD-Pad_Small" H 9350 1950 50  0001 C CNN
F 3 "~" H 9350 1950 50  0001 C CNN
	1    9150 1950
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP3
U 1 1 5BB1662E
P 9650 1950
F 0 "TP3" H 9708 2070 50  0000 L CNN
F 1 "TestPoint" H 9708 1979 50  0000 L CNN
F 2 "Measurement_Points:Measurement_Point_Round-SMD-Pad_Small" H 9850 1950 50  0001 C CNN
F 3 "~" H 9850 1950 50  0001 C CNN
	1    9650 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	8650 2100 8650 1950
Wire Wire Line
	9150 2100 9150 1950
Wire Wire Line
	9650 2100 9650 1950
$Comp
L Device:CP C1
U 1 1 5BB1D54D
P 2100 2950
F 0 "C1" H 2218 2996 50  0000 L CNN
F 1 "CP" H 2218 2905 50  0000 L CNN
F 2 "Capacitors_Tantalum_SMD:CP_Tantalum_Case-B_EIA-3528-21_Hand" H 2138 2800 50  0001 C CNN
F 3 "~" H 2100 2950 50  0001 C CNN
	1    2100 2950
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR03
U 1 1 5BB1D5CD
P 2100 1900
F 0 "#PWR03" H 2100 1750 50  0001 C CNN
F 1 "VCC" H 2117 2073 50  0000 C CNN
F 2 "" H 2100 1900 50  0001 C CNN
F 3 "" H 2100 1900 50  0001 C CNN
	1    2100 1900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 5BB1D604
P 2100 4000
F 0 "#PWR04" H 2100 3750 50  0001 C CNN
F 1 "GND" H 2105 3827 50  0000 C CNN
F 2 "" H 2100 4000 50  0001 C CNN
F 3 "" H 2100 4000 50  0001 C CNN
	1    2100 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 2800 2100 1900
Wire Wire Line
	2100 3100 2100 4000
Wire Wire Line
	7500 5150 7350 5150
Wire Wire Line
	7500 1900 7500 2350
Wire Wire Line
	7350 2350 7500 2350
Connection ~ 7500 2350
Wire Wire Line
	7500 2350 7500 2750
Wire Wire Line
	7350 2750 7500 2750
Connection ~ 7500 2750
Wire Wire Line
	7500 2750 7500 3150
Wire Wire Line
	7350 3150 7500 3150
Connection ~ 7500 3150
Wire Wire Line
	7500 3150 7500 3550
Wire Wire Line
	7350 3550 7500 3550
Connection ~ 7500 3550
Wire Wire Line
	7500 3550 7500 3950
Wire Wire Line
	7350 3950 7500 3950
Connection ~ 7500 3950
Wire Wire Line
	7500 3950 7500 4350
Wire Wire Line
	7350 4350 7500 4350
Connection ~ 7500 4350
Wire Wire Line
	7500 4350 7500 4750
Wire Wire Line
	7350 4750 7500 4750
Connection ~ 7500 4750
Wire Wire Line
	7500 4750 7500 5150
Wire Wire Line
	4400 2350 6600 2350
Wire Wire Line
	6450 2450 6450 2750
Wire Wire Line
	6450 2750 6600 2750
Wire Wire Line
	4400 2550 6350 2550
Wire Wire Line
	6350 2550 6350 3150
Wire Wire Line
	6350 3150 6600 3150
Wire Wire Line
	4400 2650 6250 2650
Wire Wire Line
	6250 2650 6250 3550
Wire Wire Line
	6250 3550 6600 3550
Wire Wire Line
	4400 2750 6150 2750
Wire Wire Line
	6150 2750 6150 3950
Wire Wire Line
	6150 3950 6600 3950
Wire Wire Line
	4400 2850 6050 2850
Wire Wire Line
	6050 2850 6050 4350
Wire Wire Line
	6050 4350 6600 4350
Wire Wire Line
	4400 2950 5950 2950
Wire Wire Line
	5950 2950 5950 4750
Wire Wire Line
	5950 4750 6600 4750
Wire Wire Line
	4400 3050 5850 3050
Wire Wire Line
	5850 3050 5850 5150
Wire Wire Line
	5850 5150 6600 5150
Wire Wire Line
	4400 2450 6450 2450
$Comp
L Connector:TestPoint TP4
U 1 1 5BB3CAF2
P 10150 1950
F 0 "TP4" H 10208 2070 50  0000 L CNN
F 1 "TestPoint" H 10208 1979 50  0000 L CNN
F 2 "Measurement_Points:Measurement_Point_Round-SMD-Pad_Small" H 10350 1950 50  0001 C CNN
F 3 "~" H 10350 1950 50  0001 C CNN
	1    10150 1950
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP5
U 1 1 5BB3CB4A
P 10650 1950
F 0 "TP5" H 10708 2070 50  0000 L CNN
F 1 "TestPoint" H 10708 1979 50  0000 L CNN
F 2 "Measurement_Points:Measurement_Point_Round-SMD-Pad_Small" H 10850 1950 50  0001 C CNN
F 3 "~" H 10850 1950 50  0001 C CNN
	1    10650 1950
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0101
U 1 1 5BB3CE87
P 10150 2100
F 0 "#PWR0101" H 10150 1950 50  0001 C CNN
F 1 "VCC" H 10167 2273 50  0000 C CNN
F 2 "" H 10150 2100 50  0001 C CNN
F 3 "" H 10150 2100 50  0001 C CNN
	1    10150 2100
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 5BB3CF6A
P 10650 2100
F 0 "#PWR0102" H 10650 1850 50  0001 C CNN
F 1 "GND" H 10655 1927 50  0000 C CNN
F 2 "" H 10650 2100 50  0001 C CNN
F 3 "" H 10650 2100 50  0001 C CNN
	1    10650 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	10150 2100 10150 1950
Wire Wire Line
	10650 2100 10650 1950
$EndSCHEMATC
