EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "ATmega328P LED chaser with 74HC595"
Date "2020-07-13"
Rev "1.10"
Comp "CKLabs"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Graphic:Logo_Open_Hardware_Small #LOGO1
U 1 1 5F0C8CA3
P 10950 6950
F 0 "#LOGO1" H 10950 7225 50  0001 C CNN
F 1 "Logo_Open_Hardware_Small" H 10950 6725 50  0001 C CNN
F 2 "" H 10950 6950 50  0001 C CNN
F 3 "~" H 10950 6950 50  0001 C CNN
	1    10950 6950
	1    0    0    -1  
$EndComp
Text Notes 7015 7025 0    35   ~ 0
Copyright (c) 2020 Christian K. Kaderud & CKLabs\nThis documentation describes Open Hardware and is licensed under the CERN OHL v. 1.2.\nYou may redistribute and modify this documentation under the terms of the CERN OHL v.1.2. (http://ohwr.org/cernohl). \nThis documentation is distributed WITHOUT ANY EXPRESS OR IMPLIED WARRANTY, INCLUDING OF MERCHANTABILITY, \nSATISFACTORY QUALITY AND FITNESS FOR A PARTICULAR PURPOSE. \nPlease see the CERN OHL v.1.2 for applicable conditions\n\nIf you chose to manufacture products based on this design, please notify me (see license section 4.2) via christian@cklabs.org
$Comp
L Device:R_US R3
U 1 1 5F0DBF3E
P 1700 5500
F 0 "R3" H 1768 5546 50  0000 L CNN
F 1 "330R" H 1768 5455 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 1740 5490 50  0001 C CNN
F 3 "~" H 1700 5500 50  0001 C CNN
	1    1700 5500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 5F0E3E1B
P 1700 5950
F 0 "#PWR0101" H 1700 5700 50  0001 C CNN
F 1 "GND" H 1705 5777 50  0000 C CNN
F 2 "" H 1700 5950 50  0001 C CNN
F 3 "" H 1700 5950 50  0001 C CNN
	1    1700 5950
	1    0    0    -1  
$EndComp
$Comp
L Device:LED_ALT D3
U 1 1 5F0F6D26
P 1700 5800
F 0 "D3" V 1739 5682 50  0000 R CNN
F 1 "LED" V 1648 5682 50  0000 R CNN
F 2 "LED_THT:LED_D5.0mm" H 1700 5800 50  0001 C CNN
F 3 "~" H 1700 5800 50  0001 C CNN
	1    1700 5800
	0    -1   -1   0   
$EndComp
$Comp
L power:VCC #PWR0136
U 1 1 5F1F36C1
P 1650 1350
F 0 "#PWR0136" H 1650 1200 50  0001 C CNN
F 1 "VCC" H 1650 1500 50  0000 C CNN
F 2 "" H 1650 1350 50  0001 C CNN
F 3 "" H 1650 1350 50  0001 C CNN
	1    1650 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 1350 1650 1400
Wire Notes Line
	1550 1050 1550 2300
Text GLabel 1700 5350 1    35   Input ~ 0
LED01
$Comp
L power:GND #PWR0143
U 1 1 5F292F63
P 1700 4350
F 0 "#PWR0143" H 1700 4100 50  0001 C CNN
F 1 "GND" H 1705 4177 50  0000 C CNN
F 2 "" H 1700 4350 50  0001 C CNN
F 3 "" H 1700 4350 50  0001 C CNN
	1    1700 4350
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0144
U 1 1 5F292F69
P 1700 3050
F 0 "#PWR0144" H 1700 2900 50  0001 C CNN
F 1 "+5V" H 1715 3223 50  0000 C CNN
F 2 "" H 1700 3050 50  0001 C CNN
F 3 "" H 1700 3050 50  0001 C CNN
	1    1700 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 3850 1700 4350
Text Notes 1550 5000 0    35   ~ 0
LED 5mm (Red)
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 5F31626E
P 1850 1400
F 0 "#FLG0101" H 1850 1475 50  0001 C CNN
F 1 "PWR_FLAG" H 1750 1550 50  0001 C CNN
F 2 "" H 1850 1400 50  0001 C CNN
F 3 "~" H 1850 1400 50  0001 C CNN
	1    1850 1400
	-1   0    0    1   
$EndComp
Connection ~ 1850 1400
Wire Notes Line
	1550 2750 1550 4650
Text Notes 1550 2700 0    35   ~ 0
Shift Registers
Wire Notes Line
	1550 5050 1550 6250
Text Label 1700 1400 0    35   ~ 0
VIN
Wire Wire Line
	1650 1400 1850 1400
Wire Wire Line
	1950 1400 1850 1400
$Comp
L Connector_Generic:Conn_01x02 J1
U 1 1 5F1446E1
P 1950 1850
F 0 "J1" H 2030 1842 50  0000 L CNN
F 1 "VCC" H 2030 1751 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 1950 1850 50  0001 C CNN
F 3 "~" H 1950 1850 50  0001 C CNN
	1    1950 1850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 5F145D25
P 1650 2050
F 0 "#PWR02" H 1650 1800 50  0001 C CNN
F 1 "GND" H 1655 1877 50  0000 C CNN
F 2 "" H 1650 2050 50  0001 C CNN
F 3 "" H 1650 2050 50  0001 C CNN
	1    1650 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1750 1950 1650 1950
Wire Wire Line
	1650 1950 1650 2050
$Comp
L power:VCC #PWR01
U 1 1 5F148353
P 1650 1800
F 0 "#PWR01" H 1650 1650 50  0001 C CNN
F 1 "VCC" H 1650 1950 50  0000 C CNN
F 2 "" H 1650 1800 50  0001 C CNN
F 3 "" H 1650 1800 50  0001 C CNN
	1    1650 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	1750 1850 1650 1850
Wire Wire Line
	1650 1850 1650 1800
Wire Wire Line
	1700 3550 1700 3050
NoConn ~ 8350 1650
NoConn ~ 8350 1750
NoConn ~ 8350 1850
NoConn ~ 8350 1950
NoConn ~ 8350 2050
NoConn ~ 8350 2150
NoConn ~ 8350 2850
NoConn ~ 8350 2750
NoConn ~ 8350 2650
NoConn ~ 8350 2550
NoConn ~ 8350 3650
Wire Wire Line
	9450 4150 9450 4350
Wire Wire Line
	2250 1400 2450 1400
Wire Notes Line
	1550 1050 5250 1050
Wire Notes Line
	1550 2300 5250 2300
$Comp
L power:+5V #PWR0126
U 1 1 5F10E298
P 7100 1350
F 0 "#PWR0126" H 7100 1200 50  0001 C CNN
F 1 "+5V" H 7100 1500 50  0000 C CNN
F 2 "" H 7100 1350 50  0001 C CNN
F 3 "" H 7100 1350 50  0001 C CNN
	1    7100 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	7100 1650 7100 1350
Wire Wire Line
	7150 1650 7100 1650
Connection ~ 7750 1350
Wire Wire Line
	7850 1350 7750 1350
Wire Notes Line
	10100 5050 1550 5050
Wire Notes Line
	10100 6250 10100 5050
Wire Notes Line
	1550 6250 10100 6250
$Comp
L Device:R_US R4
U 1 1 5F119EE3
P 2050 5500
F 0 "R4" H 2118 5546 50  0000 L CNN
F 1 "330R" H 2118 5455 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2090 5490 50  0001 C CNN
F 3 "~" H 2050 5500 50  0001 C CNN
	1    2050 5500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 5F119EE9
P 2050 5950
F 0 "#PWR0102" H 2050 5700 50  0001 C CNN
F 1 "GND" H 2055 5777 50  0000 C CNN
F 2 "" H 2050 5950 50  0001 C CNN
F 3 "" H 2050 5950 50  0001 C CNN
	1    2050 5950
	1    0    0    -1  
$EndComp
$Comp
L Device:LED_ALT D4
U 1 1 5F119EEF
P 2050 5800
F 0 "D4" V 2089 5682 50  0000 R CNN
F 1 "LED" V 1998 5682 50  0000 R CNN
F 2 "LED_THT:LED_D5.0mm" H 2050 5800 50  0001 C CNN
F 3 "~" H 2050 5800 50  0001 C CNN
	1    2050 5800
	0    -1   -1   0   
$EndComp
Text GLabel 2050 5350 1    35   Input ~ 0
LED02
$Comp
L Device:R_US R22
U 1 1 5F14C264
P 8350 5500
F 0 "R22" H 8418 5546 50  0000 L CNN
F 1 "330R" H 8418 5455 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 8390 5490 50  0001 C CNN
F 3 "~" H 8350 5500 50  0001 C CNN
	1    8350 5500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0120
U 1 1 5F14C26A
P 8350 5950
F 0 "#PWR0120" H 8350 5700 50  0001 C CNN
F 1 "GND" H 8355 5777 50  0000 C CNN
F 2 "" H 8350 5950 50  0001 C CNN
F 3 "" H 8350 5950 50  0001 C CNN
	1    8350 5950
	1    0    0    -1  
$EndComp
$Comp
L Device:LED_ALT D22
U 1 1 5F14C270
P 8350 5800
F 0 "D22" V 8389 5682 50  0000 R CNN
F 1 "LED" V 8298 5682 50  0000 R CNN
F 2 "LED_THT:LED_D5.0mm" H 8350 5800 50  0001 C CNN
F 3 "~" H 8350 5800 50  0001 C CNN
	1    8350 5800
	0    -1   -1   0   
$EndComp
Text GLabel 8350 5350 1    35   Input ~ 0
LED20
Wire Notes Line
	6750 2750 1550 2750
Wire Notes Line
	6750 4650 6750 2750
Wire Notes Line
	1550 4650 6750 4650
Wire Wire Line
	2600 1400 2750 1400
Connection ~ 2600 1400
$Comp
L power:PWR_FLAG #FLG0103
U 1 1 5F31ADB3
P 2600 1400
F 0 "#FLG0103" H 2600 1475 50  0001 C CNN
F 1 "PWR_FLAG" H 2500 1550 50  0001 C CNN
F 2 "" H 2600 1400 50  0001 C CNN
F 3 "~" H 2600 1400 50  0001 C CNN
	1    2600 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3050 1800 3050 1950
Connection ~ 3050 1800
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 5F318C50
P 3050 1800
F 0 "#FLG0102" H 3050 1875 50  0001 C CNN
F 1 "PWR_FLAG" V 2950 1800 50  0001 L CNN
F 2 "" H 3050 1800 50  0001 C CNN
F 3 "~" H 3050 1800 50  0001 C CNN
	1    3050 1800
	0    1    1    0   
$EndComp
NoConn ~ 2850 4150
Text GLabel 2050 3750 0    35   Input ~ 0
RCLK
Text GLabel 3800 3750 0    35   Input ~ 0
RCLK
Text GLabel 2050 3250 0    35   Input ~ 0
SEROUT2
Text GLabel 4600 4150 2    35   Input ~ 0
SEROUT2
Text GLabel 2050 3450 0    35   Input ~ 0
SRCLK
Text GLabel 3800 3450 0    35   Input ~ 0
SRCLK
Text GLabel 3800 3250 0    35   Input ~ 0
SEROUT1
Text GLabel 6350 4150 2    35   Input ~ 0
SEROUT1
Wire Notes Line
	6750 1050 6750 2300
Wire Notes Line
	5500 1050 5500 2300
NoConn ~ 8350 4050
NoConn ~ 8350 3550
NoConn ~ 8350 3450
NoConn ~ 8350 3350
NoConn ~ 8350 3050
NoConn ~ 8350 2950
Text Notes 6850 1000 0    35   ~ 0
Microcontroller
Wire Notes Line
	6850 1050 6850 4650
Wire Notes Line
	10100 1050 6850 1050
Wire Notes Line
	10100 4650 10100 1050
Wire Notes Line
	6850 4650 10100 4650
Text GLabel 9750 5350 1    35   Input ~ 0
LED24
Text GLabel 9400 5350 1    35   Input ~ 0
LED23
Text GLabel 9050 5350 1    35   Input ~ 0
LED22
Text GLabel 8700 5350 1    35   Input ~ 0
LED21
Text GLabel 8000 5350 1    35   Input ~ 0
LED19
Text GLabel 7300 5350 1    35   Input ~ 0
LED17
Text GLabel 7650 5350 1    35   Input ~ 0
LED18
Text GLabel 6950 5350 1    35   Input ~ 0
LED16
Text GLabel 6600 5350 1    35   Input ~ 0
LED15
Text GLabel 6250 5350 1    35   Input ~ 0
LED14
Text GLabel 5900 5350 1    35   Input ~ 0
LED13
Text GLabel 5550 5350 1    35   Input ~ 0
LED12
Text GLabel 5200 5350 1    35   Input ~ 0
LED11
Text GLabel 4500 5350 1    35   Input ~ 0
LED09
Text GLabel 4850 5350 1    35   Input ~ 0
LED10
Wire Wire Line
	2050 3550 1700 3550
Wire Wire Line
	2050 3850 1700 3850
Text GLabel 2850 3950 2    35   Input ~ 0
LED24
Text GLabel 2850 3850 2    35   Input ~ 0
LED23
Text GLabel 2850 3750 2    35   Input ~ 0
LED22
Text GLabel 2850 3650 2    35   Input ~ 0
LED21
Text GLabel 2850 3550 2    35   Input ~ 0
LED20
Text GLabel 2850 3450 2    35   Input ~ 0
LED19
Text GLabel 2850 3250 2    35   Input ~ 0
LED17
Text GLabel 2850 3350 2    35   Input ~ 0
LED18
$Comp
L 74xx:74HC595 U5
U 1 1 5F292F7B
P 2450 3650
F 0 "U5" H 2700 4300 50  0000 C CNN
F 1 "74HC595" H 2700 4200 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm_Socket" H 2450 3650 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74hc595.pdf" H 2450 3650 50  0001 C CNN
	1    2450 3650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0146
U 1 1 5F292F75
P 2450 4350
F 0 "#PWR0146" H 2450 4100 50  0001 C CNN
F 1 "GND" H 2455 4177 50  0000 C CNN
F 2 "" H 2450 4350 50  0001 C CNN
F 3 "" H 2450 4350 50  0001 C CNN
	1    2450 4350
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0145
U 1 1 5F292F6F
P 2450 3050
F 0 "#PWR0145" H 2450 2900 50  0001 C CNN
F 1 "+5V" H 2465 3223 50  0000 C CNN
F 2 "" H 2450 3050 50  0001 C CNN
F 3 "" H 2450 3050 50  0001 C CNN
	1    2450 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 3550 3450 3050
Wire Wire Line
	3800 3550 3450 3550
Wire Wire Line
	3450 3850 3450 4350
Wire Wire Line
	3800 3850 3450 3850
Text GLabel 4600 3950 2    35   Input ~ 0
LED16
Text GLabel 4600 3850 2    35   Input ~ 0
LED15
Text GLabel 4600 3750 2    35   Input ~ 0
LED14
Text GLabel 4600 3650 2    35   Input ~ 0
LED13
Text GLabel 4600 3550 2    35   Input ~ 0
LED12
Text GLabel 4600 3450 2    35   Input ~ 0
LED11
Text GLabel 4600 3250 2    35   Input ~ 0
LED09
Text GLabel 4600 3350 2    35   Input ~ 0
LED10
$Comp
L 74xx:74HC595 U4
U 1 1 5F28DB1C
P 4200 3650
F 0 "U4" H 4450 4300 50  0000 C CNN
F 1 "74HC595" H 4450 4200 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm_Socket" H 4200 3650 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74hc595.pdf" H 4200 3650 50  0001 C CNN
	1    4200 3650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0142
U 1 1 5F28DB16
P 4200 4350
F 0 "#PWR0142" H 4200 4100 50  0001 C CNN
F 1 "GND" H 4205 4177 50  0000 C CNN
F 2 "" H 4200 4350 50  0001 C CNN
F 3 "" H 4200 4350 50  0001 C CNN
	1    4200 4350
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0141
U 1 1 5F28DB10
P 4200 3050
F 0 "#PWR0141" H 4200 2900 50  0001 C CNN
F 1 "+5V" H 4215 3223 50  0000 C CNN
F 2 "" H 4200 3050 50  0001 C CNN
F 3 "" H 4200 3050 50  0001 C CNN
	1    4200 3050
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0140
U 1 1 5F28DB0A
P 3450 3050
F 0 "#PWR0140" H 3450 2900 50  0001 C CNN
F 1 "+5V" H 3465 3223 50  0000 C CNN
F 2 "" H 3450 3050 50  0001 C CNN
F 3 "" H 3450 3050 50  0001 C CNN
	1    3450 3050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0139
U 1 1 5F28DB04
P 3450 4350
F 0 "#PWR0139" H 3450 4100 50  0001 C CNN
F 1 "GND" H 3455 4177 50  0000 C CNN
F 2 "" H 3450 4350 50  0001 C CNN
F 3 "" H 3450 4350 50  0001 C CNN
	1    3450 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 3550 5200 3050
Wire Wire Line
	5550 3550 5200 3550
Wire Wire Line
	5200 3850 5200 4350
Wire Wire Line
	5550 3850 5200 3850
Text GLabel 4150 5350 1    35   Input ~ 0
LED08
Text GLabel 3800 5350 1    35   Input ~ 0
LED07
Text GLabel 3450 5350 1    35   Input ~ 0
LED06
Text GLabel 3100 5350 1    35   Input ~ 0
LED05
Text GLabel 2750 5350 1    35   Input ~ 0
LED04
Text GLabel 2400 5350 1    35   Input ~ 0
LED03
Text GLabel 6350 3950 2    35   Input ~ 0
LED08
Text GLabel 6350 3850 2    35   Input ~ 0
LED07
Text GLabel 6350 3750 2    35   Input ~ 0
LED06
Text GLabel 6350 3650 2    35   Input ~ 0
LED05
Text GLabel 6350 3550 2    35   Input ~ 0
LED04
Text GLabel 6350 3450 2    35   Input ~ 0
LED03
Text GLabel 6350 3250 2    35   Input ~ 0
LED01
Text GLabel 6350 3350 2    35   Input ~ 0
LED02
Text GLabel 5550 3450 0    35   Input ~ 0
SRCLK
Text GLabel 5550 3750 0    35   Input ~ 0
RCLK
Text GLabel 5550 3250 0    35   Input ~ 0
SER
Text GLabel 8350 3950 2    35   Input ~ 0
SRCLK
Text GLabel 8350 3850 2    35   Input ~ 0
RCLK
Text GLabel 8350 3750 2    35   Input ~ 0
SER
Wire Wire Line
	8650 3150 8350 3150
Text GLabel 8350 2350 2    35   Input ~ 0
XTAL2
Text GLabel 8350 2250 2    35   Input ~ 0
XTAL1
Text GLabel 9700 3850 2    35   Input ~ 0
XTAL2
Text GLabel 9200 3850 0    35   Input ~ 0
XTAL1
Wire Wire Line
	9450 4150 9700 4150
Connection ~ 9450 4150
Wire Wire Line
	9200 4150 9450 4150
$Comp
L power:GND #PWR0138
U 1 1 5F25906B
P 9450 4350
F 0 "#PWR0138" H 9450 4100 50  0001 C CNN
F 1 "GND" H 9455 4177 50  0000 C CNN
F 2 "" H 9450 4350 50  0001 C CNN
F 3 "" H 9450 4350 50  0001 C CNN
	1    9450 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	9700 3850 9700 3950
Wire Wire Line
	9600 3850 9700 3850
Wire Wire Line
	9200 3850 9200 3950
Wire Wire Line
	9300 3850 9200 3850
$Comp
L Device:Crystal Y1
U 1 1 5F241B4F
P 9450 3850
F 0 "Y1" H 9550 3900 50  0000 L CNN
F 1 "16.000F" H 9300 4000 50  0000 L CNN
F 2 "Crystal:Crystal_HC49-U_Vertical" H 9450 3850 50  0001 C CNN
F 3 "~" H 9450 3850 50  0001 C CNN
	1    9450 3850
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C4
U 1 1 5F245A5B
P 9700 4050
F 0 "C4" H 9792 4096 50  0000 L CNN
F 1 "22pF" H 9792 4005 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.4mm_W2.1mm_P2.50mm" H 9700 4050 50  0001 C CNN
F 3 "~" H 9700 4050 50  0001 C CNN
	1    9700 4050
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C3
U 1 1 5F2453FE
P 9200 4050
F 0 "C3" H 9108 4004 50  0000 R CNN
F 1 "22pF" H 9108 4095 50  0000 R CNN
F 2 "Capacitor_THT:C_Disc_D3.4mm_W2.1mm_P2.50mm" H 9200 4050 50  0001 C CNN
F 3 "~" H 9200 4050 50  0001 C CNN
	1    9200 4050
	-1   0    0    1   
$EndComp
Text Notes 5500 1000 0    35   ~ 0
Mounting Holes
Wire Notes Line
	6750 1050 5500 1050
Wire Notes Line
	5500 2300 6750 2300
Wire Wire Line
	5600 1850 5600 2050
Connection ~ 5600 1850
Wire Wire Line
	5750 1850 5600 1850
Wire Wire Line
	5600 1650 5600 1850
Connection ~ 5600 1650
Wire Wire Line
	5750 1650 5600 1650
Wire Wire Line
	5600 1450 5600 1650
Connection ~ 5600 1450
Wire Wire Line
	5750 1450 5600 1450
Wire Wire Line
	5600 1250 5600 1450
Wire Wire Line
	5750 1250 5600 1250
$Comp
L power:GND #PWR0137
U 1 1 5F21EE3A
P 5600 2050
F 0 "#PWR0137" H 5600 1800 50  0001 C CNN
F 1 "GND" H 5605 1877 50  0000 C CNN
F 2 "" H 5600 2050 50  0001 C CNN
F 3 "" H 5600 2050 50  0001 C CNN
	1    5600 2050
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H4
U 1 1 5F21EC8A
P 5850 1850
F 0 "H4" V 5804 2000 50  0000 L CNN
F 1 "MountingHole_Pad" V 5895 2000 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.7mm_M2.5_Pad_Via" H 5850 1850 50  0001 C CNN
F 3 "~" H 5850 1850 50  0001 C CNN
	1    5850 1850
	0    1    1    0   
$EndComp
$Comp
L Mechanical:MountingHole_Pad H3
U 1 1 5F21EACD
P 5850 1650
F 0 "H3" V 5804 1800 50  0000 L CNN
F 1 "MountingHole_Pad" V 5895 1800 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.7mm_M2.5_Pad_Via" H 5850 1650 50  0001 C CNN
F 3 "~" H 5850 1650 50  0001 C CNN
	1    5850 1650
	0    1    1    0   
$EndComp
$Comp
L Mechanical:MountingHole_Pad H2
U 1 1 5F217543
P 5850 1450
F 0 "H2" V 5804 1600 50  0000 L CNN
F 1 "MountingHole_Pad" V 5895 1600 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.7mm_M2.5_Pad_Via" H 5850 1450 50  0001 C CNN
F 3 "~" H 5850 1450 50  0001 C CNN
	1    5850 1450
	0    1    1    0   
$EndComp
$Comp
L Mechanical:MountingHole_Pad H1
U 1 1 5F21692F
P 5850 1250
F 0 "H1" V 5804 1400 50  0000 L CNN
F 1 "MountingHole_Pad" V 5895 1400 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.7mm_M2.5_Pad_Via" H 5850 1250 50  0001 C CNN
F 3 "~" H 5850 1250 50  0001 C CNN
	1    5850 1250
	0    1    1    0   
$EndComp
Connection ~ 3550 1950
Wire Wire Line
	4100 1950 3550 1950
Wire Wire Line
	4100 1800 4100 1950
Wire Wire Line
	4100 1400 4100 1500
Wire Wire Line
	4000 1400 4100 1400
Wire Wire Line
	3700 1400 3550 1400
$Comp
L Device:R_US R1
U 1 1 5F209FC5
P 3850 1400
F 0 "R1" V 3650 1350 50  0000 L CNN
F 1 "4k7" V 3750 1350 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3890 1390 50  0001 C CNN
F 3 "~" H 3850 1400 50  0001 C CNN
	1    3850 1400
	0    1    1    0   
$EndComp
Wire Wire Line
	3550 1350 3550 1400
Text Notes 1550 1000 0    35   ~ 0
Input Voltage Regulator
Wire Notes Line
	5250 2300 5250 1050
Connection ~ 3550 1400
Wire Wire Line
	3550 1400 3550 1650
Wire Wire Line
	3350 1400 3550 1400
Wire Wire Line
	3550 1950 3050 1950
Wire Wire Line
	3050 1950 3050 2050
Connection ~ 3050 1950
Wire Wire Line
	2450 1950 3050 1950
Wire Wire Line
	3050 1700 3050 1800
Wire Wire Line
	2450 1400 2600 1400
Connection ~ 2450 1400
Wire Wire Line
	2450 1650 2450 1400
$Comp
L Diode:1N4007 D1
U 1 1 5F0D09EE
P 2100 1400
F 0 "D1" H 2050 1200 50  0000 L CNN
F 1 "1N4007" H 1950 1300 50  0000 L CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 2100 1225 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88503/1n4001.pdf" H 2100 1400 50  0001 C CNN
	1    2100 1400
	-1   0    0    1   
$EndComp
$Comp
L Device:CP1 C2
U 1 1 5F0DF6B3
P 3550 1800
F 0 "C2" H 3665 1846 50  0000 L CNN
F 1 "10uF" H 3665 1755 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H 3550 1800 50  0001 C CNN
F 3 "~" H 3550 1800 50  0001 C CNN
	1    3550 1800
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0135
U 1 1 5F0E35D5
P 3550 1350
F 0 "#PWR0135" H 3550 1200 50  0001 C CNN
F 1 "+5V" H 3550 1500 50  0000 C CNN
F 2 "" H 3550 1350 50  0001 C CNN
F 3 "" H 3550 1350 50  0001 C CNN
	1    3550 1350
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:LM7805_TO220 U1
U 1 1 5F0E4603
P 3050 1400
F 0 "U1" H 3050 1650 50  0000 C CNN
F 1 "LM7805_TO220" H 3050 1551 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 3050 1625 50  0001 C CIN
F 3 "http://www.fairchildsemi.com/ds/LM/LM7805.pdf" H 3050 1350 50  0001 C CNN
	1    3050 1400
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1 C1
U 1 1 5F0DFE7E
P 2450 1800
F 0 "C1" H 2565 1846 50  0000 L CNN
F 1 "100uF" H 2565 1755 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H 2450 1800 50  0001 C CNN
F 3 "~" H 2450 1800 50  0001 C CNN
	1    2450 1800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0134
U 1 1 5F0F2A68
P 3050 2050
F 0 "#PWR0134" H 3050 1800 50  0001 C CNN
F 1 "GND" H 3055 1877 50  0000 C CNN
F 2 "" H 3050 2050 50  0001 C CNN
F 3 "" H 3050 2050 50  0001 C CNN
	1    3050 2050
	1    0    0    -1  
$EndComp
Text Label 8550 3150 2    35   ~ 0
RESET
$Comp
L 74xx:74HC595 U3
U 1 1 5F0D173F
P 5950 3650
F 0 "U3" H 6200 4300 50  0000 C CNN
F 1 "74HC595" H 6200 4200 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm_Socket" H 5950 3650 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74hc595.pdf" H 5950 3650 50  0001 C CNN
	1    5950 3650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0133
U 1 1 5F111B81
P 5950 4350
F 0 "#PWR0133" H 5950 4100 50  0001 C CNN
F 1 "GND" H 5955 4177 50  0000 C CNN
F 2 "" H 5950 4350 50  0001 C CNN
F 3 "" H 5950 4350 50  0001 C CNN
	1    5950 4350
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0132
U 1 1 5F1126DC
P 5950 3050
F 0 "#PWR0132" H 5950 2900 50  0001 C CNN
F 1 "+5V" H 5965 3223 50  0000 C CNN
F 2 "" H 5950 3050 50  0001 C CNN
F 3 "" H 5950 3050 50  0001 C CNN
	1    5950 3050
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0131
U 1 1 5F18F5F7
P 5200 3050
F 0 "#PWR0131" H 5200 2900 50  0001 C CNN
F 1 "+5V" H 5215 3223 50  0000 C CNN
F 2 "" H 5200 3050 50  0001 C CNN
F 3 "" H 5200 3050 50  0001 C CNN
	1    5200 3050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0130
U 1 1 5F18FE4A
P 5200 4350
F 0 "#PWR0130" H 5200 4100 50  0001 C CNN
F 1 "GND" H 5205 4177 50  0000 C CNN
F 2 "" H 5200 4350 50  0001 C CNN
F 3 "" H 5200 4350 50  0001 C CNN
	1    5200 4350
	1    0    0    -1  
$EndComp
$Comp
L MCU_Microchip_ATmega:ATmega328P-PU U2
U 1 1 5F0C9446
P 7750 2850
F 0 "U2" H 8300 4400 50  0000 R CNN
F 1 "ATmega328P-PU" H 8650 4300 50  0000 R CNN
F 2 "Package_DIP:DIP-28_W7.62mm" H 7750 2850 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/ATmega328_P%20AVR%20MCU%20with%20picoPower%20Technology%20Data%20Sheet%2040001984A.pdf" H 7750 2850 50  0001 C CNN
	1    7750 2850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0129
U 1 1 5F0F988E
P 7750 4350
F 0 "#PWR0129" H 7750 4100 50  0001 C CNN
F 1 "GND" H 7755 4177 50  0000 C CNN
F 2 "" H 7750 4350 50  0001 C CNN
F 3 "" H 7750 4350 50  0001 C CNN
	1    7750 4350
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0128
U 1 1 5F0FA454
P 7750 1350
F 0 "#PWR0128" H 7750 1200 50  0001 C CNN
F 1 "+5V" H 7700 1500 50  0000 C CNN
F 2 "" H 7750 1350 50  0001 C CNN
F 3 "" H 7750 1350 50  0001 C CNN
	1    7750 1350
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R2
U 1 1 5F0FD751
P 8650 3000
F 0 "R2" H 8718 3046 50  0000 L CNN
F 1 "10k" H 8718 2955 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 8690 2990 50  0001 C CNN
F 3 "~" H 8650 3000 50  0001 C CNN
	1    8650 3000
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0127
U 1 1 5F100690
P 8650 2850
F 0 "#PWR0127" H 8650 2700 50  0001 C CNN
F 1 "+5V" H 8665 3023 50  0000 C CNN
F 2 "" H 8650 2850 50  0001 C CNN
F 3 "" H 8650 2850 50  0001 C CNN
	1    8650 2850
	1    0    0    -1  
$EndComp
$Comp
L Device:LED_ALT D26
U 1 1 5F14F293
P 9750 5800
F 0 "D26" V 9789 5682 50  0000 R CNN
F 1 "LED" V 9698 5682 50  0000 R CNN
F 2 "LED_THT:LED_D5.0mm" H 9750 5800 50  0001 C CNN
F 3 "~" H 9750 5800 50  0001 C CNN
	1    9750 5800
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0124
U 1 1 5F14F28D
P 9750 5950
F 0 "#PWR0124" H 9750 5700 50  0001 C CNN
F 1 "GND" H 9755 5777 50  0000 C CNN
F 2 "" H 9750 5950 50  0001 C CNN
F 3 "" H 9750 5950 50  0001 C CNN
	1    9750 5950
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R26
U 1 1 5F14F287
P 9750 5500
F 0 "R26" H 9818 5546 50  0000 L CNN
F 1 "330R" H 9818 5455 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 9790 5490 50  0001 C CNN
F 3 "~" H 9750 5500 50  0001 C CNN
	1    9750 5500
	1    0    0    -1  
$EndComp
$Comp
L Device:LED_ALT D25
U 1 1 5F14DA37
P 9400 5800
F 0 "D25" V 9439 5682 50  0000 R CNN
F 1 "LED" V 9348 5682 50  0000 R CNN
F 2 "LED_THT:LED_D5.0mm" H 9400 5800 50  0001 C CNN
F 3 "~" H 9400 5800 50  0001 C CNN
	1    9400 5800
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0123
U 1 1 5F14DA31
P 9400 5950
F 0 "#PWR0123" H 9400 5700 50  0001 C CNN
F 1 "GND" H 9405 5777 50  0000 C CNN
F 2 "" H 9400 5950 50  0001 C CNN
F 3 "" H 9400 5950 50  0001 C CNN
	1    9400 5950
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R25
U 1 1 5F14DA2B
P 9400 5500
F 0 "R25" H 9468 5546 50  0000 L CNN
F 1 "330R" H 9468 5455 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 9440 5490 50  0001 C CNN
F 3 "~" H 9400 5500 50  0001 C CNN
	1    9400 5500
	1    0    0    -1  
$EndComp
$Comp
L Device:LED_ALT D24
U 1 1 5F14DA25
P 9050 5800
F 0 "D24" V 9089 5682 50  0000 R CNN
F 1 "LED" V 8998 5682 50  0000 R CNN
F 2 "LED_THT:LED_D5.0mm" H 9050 5800 50  0001 C CNN
F 3 "~" H 9050 5800 50  0001 C CNN
	1    9050 5800
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0122
U 1 1 5F14DA1F
P 9050 5950
F 0 "#PWR0122" H 9050 5700 50  0001 C CNN
F 1 "GND" H 9055 5777 50  0000 C CNN
F 2 "" H 9050 5950 50  0001 C CNN
F 3 "" H 9050 5950 50  0001 C CNN
	1    9050 5950
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R24
U 1 1 5F14DA19
P 9050 5500
F 0 "R24" H 9118 5546 50  0000 L CNN
F 1 "330R" H 9118 5455 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 9090 5490 50  0001 C CNN
F 3 "~" H 9050 5500 50  0001 C CNN
	1    9050 5500
	1    0    0    -1  
$EndComp
$Comp
L Device:LED_ALT D23
U 1 1 5F14C282
P 8700 5800
F 0 "D23" V 8739 5682 50  0000 R CNN
F 1 "LED" V 8648 5682 50  0000 R CNN
F 2 "LED_THT:LED_D5.0mm" H 8700 5800 50  0001 C CNN
F 3 "~" H 8700 5800 50  0001 C CNN
	1    8700 5800
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0121
U 1 1 5F14C27C
P 8700 5950
F 0 "#PWR0121" H 8700 5700 50  0001 C CNN
F 1 "GND" H 8705 5777 50  0000 C CNN
F 2 "" H 8700 5950 50  0001 C CNN
F 3 "" H 8700 5950 50  0001 C CNN
	1    8700 5950
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R23
U 1 1 5F14C276
P 8700 5500
F 0 "R23" H 8768 5546 50  0000 L CNN
F 1 "330R" H 8768 5455 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 8740 5490 50  0001 C CNN
F 3 "~" H 8700 5500 50  0001 C CNN
	1    8700 5500
	1    0    0    -1  
$EndComp
$Comp
L Device:LED_ALT D21
U 1 1 5F14AA7A
P 8000 5800
F 0 "D21" V 8039 5682 50  0000 R CNN
F 1 "LED" V 7948 5682 50  0000 R CNN
F 2 "LED_THT:LED_D5.0mm" H 8000 5800 50  0001 C CNN
F 3 "~" H 8000 5800 50  0001 C CNN
	1    8000 5800
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0119
U 1 1 5F14AA74
P 8000 5950
F 0 "#PWR0119" H 8000 5700 50  0001 C CNN
F 1 "GND" H 8005 5777 50  0000 C CNN
F 2 "" H 8000 5950 50  0001 C CNN
F 3 "" H 8000 5950 50  0001 C CNN
	1    8000 5950
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R21
U 1 1 5F14AA6E
P 8000 5500
F 0 "R21" H 8068 5546 50  0000 L CNN
F 1 "330R" H 8068 5455 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 8040 5490 50  0001 C CNN
F 3 "~" H 8000 5500 50  0001 C CNN
	1    8000 5500
	1    0    0    -1  
$EndComp
$Comp
L Device:LED_ALT D20
U 1 1 5F14943F
P 7650 5800
F 0 "D20" V 7689 5682 50  0000 R CNN
F 1 "LED" V 7598 5682 50  0000 R CNN
F 2 "LED_THT:LED_D5.0mm" H 7650 5800 50  0001 C CNN
F 3 "~" H 7650 5800 50  0001 C CNN
	1    7650 5800
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0118
U 1 1 5F149439
P 7650 5950
F 0 "#PWR0118" H 7650 5700 50  0001 C CNN
F 1 "GND" H 7655 5777 50  0000 C CNN
F 2 "" H 7650 5950 50  0001 C CNN
F 3 "" H 7650 5950 50  0001 C CNN
	1    7650 5950
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R20
U 1 1 5F149433
P 7650 5500
F 0 "R20" H 7718 5546 50  0000 L CNN
F 1 "330R" H 7718 5455 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7690 5490 50  0001 C CNN
F 3 "~" H 7650 5500 50  0001 C CNN
	1    7650 5500
	1    0    0    -1  
$EndComp
$Comp
L Device:LED_ALT D19
U 1 1 5F14942D
P 7300 5800
F 0 "D19" V 7339 5682 50  0000 R CNN
F 1 "LED" V 7248 5682 50  0000 R CNN
F 2 "LED_THT:LED_D5.0mm" H 7300 5800 50  0001 C CNN
F 3 "~" H 7300 5800 50  0001 C CNN
	1    7300 5800
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0117
U 1 1 5F149427
P 7300 5950
F 0 "#PWR0117" H 7300 5700 50  0001 C CNN
F 1 "GND" H 7305 5777 50  0000 C CNN
F 2 "" H 7300 5950 50  0001 C CNN
F 3 "" H 7300 5950 50  0001 C CNN
	1    7300 5950
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R19
U 1 1 5F149421
P 7300 5500
F 0 "R19" H 7368 5546 50  0000 L CNN
F 1 "330R" H 7368 5455 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7340 5490 50  0001 C CNN
F 3 "~" H 7300 5500 50  0001 C CNN
	1    7300 5500
	1    0    0    -1  
$EndComp
$Comp
L Device:LED_ALT D18
U 1 1 5F1415A0
P 6950 5800
F 0 "D18" V 6989 5682 50  0000 R CNN
F 1 "LED" V 6898 5682 50  0000 R CNN
F 2 "LED_THT:LED_D5.0mm" H 6950 5800 50  0001 C CNN
F 3 "~" H 6950 5800 50  0001 C CNN
	1    6950 5800
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0116
U 1 1 5F14159A
P 6950 5950
F 0 "#PWR0116" H 6950 5700 50  0001 C CNN
F 1 "GND" H 6955 5777 50  0000 C CNN
F 2 "" H 6950 5950 50  0001 C CNN
F 3 "" H 6950 5950 50  0001 C CNN
	1    6950 5950
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R18
U 1 1 5F141594
P 6950 5500
F 0 "R18" H 7018 5546 50  0000 L CNN
F 1 "330R" H 7018 5455 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6990 5490 50  0001 C CNN
F 3 "~" H 6950 5500 50  0001 C CNN
	1    6950 5500
	1    0    0    -1  
$EndComp
$Comp
L Device:LED_ALT D17
U 1 1 5F14158E
P 6600 5800
F 0 "D17" V 6639 5682 50  0000 R CNN
F 1 "LED" V 6548 5682 50  0000 R CNN
F 2 "LED_THT:LED_D5.0mm" H 6600 5800 50  0001 C CNN
F 3 "~" H 6600 5800 50  0001 C CNN
	1    6600 5800
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0115
U 1 1 5F141588
P 6600 5950
F 0 "#PWR0115" H 6600 5700 50  0001 C CNN
F 1 "GND" H 6605 5777 50  0000 C CNN
F 2 "" H 6600 5950 50  0001 C CNN
F 3 "" H 6600 5950 50  0001 C CNN
	1    6600 5950
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R17
U 1 1 5F141582
P 6600 5500
F 0 "R17" H 6668 5546 50  0000 L CNN
F 1 "330R" H 6668 5455 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6640 5490 50  0001 C CNN
F 3 "~" H 6600 5500 50  0001 C CNN
	1    6600 5500
	1    0    0    -1  
$EndComp
$Comp
L Device:LED_ALT D16
U 1 1 5F14157C
P 6250 5800
F 0 "D16" V 6289 5682 50  0000 R CNN
F 1 "LED" V 6198 5682 50  0000 R CNN
F 2 "LED_THT:LED_D5.0mm" H 6250 5800 50  0001 C CNN
F 3 "~" H 6250 5800 50  0001 C CNN
	1    6250 5800
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0114
U 1 1 5F141576
P 6250 5950
F 0 "#PWR0114" H 6250 5700 50  0001 C CNN
F 1 "GND" H 6255 5777 50  0000 C CNN
F 2 "" H 6250 5950 50  0001 C CNN
F 3 "" H 6250 5950 50  0001 C CNN
	1    6250 5950
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R16
U 1 1 5F141570
P 6250 5500
F 0 "R16" H 6318 5546 50  0000 L CNN
F 1 "330R" H 6318 5455 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6290 5490 50  0001 C CNN
F 3 "~" H 6250 5500 50  0001 C CNN
	1    6250 5500
	1    0    0    -1  
$EndComp
$Comp
L Device:LED_ALT D15
U 1 1 5F14156A
P 5900 5800
F 0 "D15" V 5939 5682 50  0000 R CNN
F 1 "LED" V 5848 5682 50  0000 R CNN
F 2 "LED_THT:LED_D5.0mm" H 5900 5800 50  0001 C CNN
F 3 "~" H 5900 5800 50  0001 C CNN
	1    5900 5800
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0113
U 1 1 5F141564
P 5900 5950
F 0 "#PWR0113" H 5900 5700 50  0001 C CNN
F 1 "GND" H 5905 5777 50  0000 C CNN
F 2 "" H 5900 5950 50  0001 C CNN
F 3 "" H 5900 5950 50  0001 C CNN
	1    5900 5950
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R15
U 1 1 5F14155E
P 5900 5500
F 0 "R15" H 5968 5546 50  0000 L CNN
F 1 "330R" H 5968 5455 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5940 5490 50  0001 C CNN
F 3 "~" H 5900 5500 50  0001 C CNN
	1    5900 5500
	1    0    0    -1  
$EndComp
$Comp
L Device:LED_ALT D14
U 1 1 5F13CA59
P 5550 5800
F 0 "D14" V 5589 5682 50  0000 R CNN
F 1 "LED" V 5498 5682 50  0000 R CNN
F 2 "LED_THT:LED_D5.0mm" H 5550 5800 50  0001 C CNN
F 3 "~" H 5550 5800 50  0001 C CNN
	1    5550 5800
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0112
U 1 1 5F13CA53
P 5550 5950
F 0 "#PWR0112" H 5550 5700 50  0001 C CNN
F 1 "GND" H 5555 5777 50  0000 C CNN
F 2 "" H 5550 5950 50  0001 C CNN
F 3 "" H 5550 5950 50  0001 C CNN
	1    5550 5950
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R14
U 1 1 5F13CA4D
P 5550 5500
F 0 "R14" H 5618 5546 50  0000 L CNN
F 1 "330R" H 5618 5455 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5590 5490 50  0001 C CNN
F 3 "~" H 5550 5500 50  0001 C CNN
	1    5550 5500
	1    0    0    -1  
$EndComp
$Comp
L Device:LED_ALT D13
U 1 1 5F13CA47
P 5200 5800
F 0 "D13" V 5239 5682 50  0000 R CNN
F 1 "LED" V 5148 5682 50  0000 R CNN
F 2 "LED_THT:LED_D5.0mm" H 5200 5800 50  0001 C CNN
F 3 "~" H 5200 5800 50  0001 C CNN
	1    5200 5800
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0111
U 1 1 5F13CA41
P 5200 5950
F 0 "#PWR0111" H 5200 5700 50  0001 C CNN
F 1 "GND" H 5205 5777 50  0000 C CNN
F 2 "" H 5200 5950 50  0001 C CNN
F 3 "" H 5200 5950 50  0001 C CNN
	1    5200 5950
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R13
U 1 1 5F13CA3B
P 5200 5500
F 0 "R13" H 5268 5546 50  0000 L CNN
F 1 "330R" H 5268 5455 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5240 5490 50  0001 C CNN
F 3 "~" H 5200 5500 50  0001 C CNN
	1    5200 5500
	1    0    0    -1  
$EndComp
$Comp
L Device:LED_ALT D12
U 1 1 5F13CA35
P 4850 5800
F 0 "D12" V 4889 5682 50  0000 R CNN
F 1 "LED" V 4798 5682 50  0000 R CNN
F 2 "LED_THT:LED_D5.0mm" H 4850 5800 50  0001 C CNN
F 3 "~" H 4850 5800 50  0001 C CNN
	1    4850 5800
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0110
U 1 1 5F13CA2F
P 4850 5950
F 0 "#PWR0110" H 4850 5700 50  0001 C CNN
F 1 "GND" H 4855 5777 50  0000 C CNN
F 2 "" H 4850 5950 50  0001 C CNN
F 3 "" H 4850 5950 50  0001 C CNN
	1    4850 5950
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R12
U 1 1 5F13CA29
P 4850 5500
F 0 "R12" H 4918 5546 50  0000 L CNN
F 1 "330R" H 4918 5455 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4890 5490 50  0001 C CNN
F 3 "~" H 4850 5500 50  0001 C CNN
	1    4850 5500
	1    0    0    -1  
$EndComp
$Comp
L Device:LED_ALT D11
U 1 1 5F13CA23
P 4500 5800
F 0 "D11" V 4539 5682 50  0000 R CNN
F 1 "LED" V 4448 5682 50  0000 R CNN
F 2 "LED_THT:LED_D5.0mm" H 4500 5800 50  0001 C CNN
F 3 "~" H 4500 5800 50  0001 C CNN
	1    4500 5800
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0109
U 1 1 5F13CA1D
P 4500 5950
F 0 "#PWR0109" H 4500 5700 50  0001 C CNN
F 1 "GND" H 4505 5777 50  0000 C CNN
F 2 "" H 4500 5950 50  0001 C CNN
F 3 "" H 4500 5950 50  0001 C CNN
	1    4500 5950
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R11
U 1 1 5F13CA17
P 4500 5500
F 0 "R11" H 4568 5546 50  0000 L CNN
F 1 "330R" H 4568 5455 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4540 5490 50  0001 C CNN
F 3 "~" H 4500 5500 50  0001 C CNN
	1    4500 5500
	1    0    0    -1  
$EndComp
$Comp
L Device:LED_ALT D10
U 1 1 5F136F84
P 4150 5800
F 0 "D10" V 4189 5682 50  0000 R CNN
F 1 "LED" V 4098 5682 50  0000 R CNN
F 2 "LED_THT:LED_D5.0mm" H 4150 5800 50  0001 C CNN
F 3 "~" H 4150 5800 50  0001 C CNN
	1    4150 5800
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0108
U 1 1 5F136F7E
P 4150 5950
F 0 "#PWR0108" H 4150 5700 50  0001 C CNN
F 1 "GND" H 4155 5777 50  0000 C CNN
F 2 "" H 4150 5950 50  0001 C CNN
F 3 "" H 4150 5950 50  0001 C CNN
	1    4150 5950
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R10
U 1 1 5F136F78
P 4150 5500
F 0 "R10" H 4218 5546 50  0000 L CNN
F 1 "330R" H 4218 5455 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4190 5490 50  0001 C CNN
F 3 "~" H 4150 5500 50  0001 C CNN
	1    4150 5500
	1    0    0    -1  
$EndComp
$Comp
L Device:LED_ALT D9
U 1 1 5F136F72
P 3800 5800
F 0 "D9" V 3839 5682 50  0000 R CNN
F 1 "LED" V 3748 5682 50  0000 R CNN
F 2 "LED_THT:LED_D5.0mm" H 3800 5800 50  0001 C CNN
F 3 "~" H 3800 5800 50  0001 C CNN
	1    3800 5800
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0107
U 1 1 5F136F6C
P 3800 5950
F 0 "#PWR0107" H 3800 5700 50  0001 C CNN
F 1 "GND" H 3805 5777 50  0000 C CNN
F 2 "" H 3800 5950 50  0001 C CNN
F 3 "" H 3800 5950 50  0001 C CNN
	1    3800 5950
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R9
U 1 1 5F136F66
P 3800 5500
F 0 "R9" H 3868 5546 50  0000 L CNN
F 1 "330R" H 3868 5455 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3840 5490 50  0001 C CNN
F 3 "~" H 3800 5500 50  0001 C CNN
	1    3800 5500
	1    0    0    -1  
$EndComp
$Comp
L Device:LED_ALT D8
U 1 1 5F136F60
P 3450 5800
F 0 "D8" V 3489 5682 50  0000 R CNN
F 1 "LED" V 3398 5682 50  0000 R CNN
F 2 "LED_THT:LED_D5.0mm" H 3450 5800 50  0001 C CNN
F 3 "~" H 3450 5800 50  0001 C CNN
	1    3450 5800
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 5F136F5A
P 3450 5950
F 0 "#PWR0106" H 3450 5700 50  0001 C CNN
F 1 "GND" H 3455 5777 50  0000 C CNN
F 2 "" H 3450 5950 50  0001 C CNN
F 3 "" H 3450 5950 50  0001 C CNN
	1    3450 5950
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R8
U 1 1 5F136F54
P 3450 5500
F 0 "R8" H 3518 5546 50  0000 L CNN
F 1 "330R" H 3518 5455 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3490 5490 50  0001 C CNN
F 3 "~" H 3450 5500 50  0001 C CNN
	1    3450 5500
	1    0    0    -1  
$EndComp
$Comp
L Device:LED_ALT D7
U 1 1 5F136F4E
P 3100 5800
F 0 "D7" V 3139 5682 50  0000 R CNN
F 1 "LED" V 3048 5682 50  0000 R CNN
F 2 "LED_THT:LED_D5.0mm" H 3100 5800 50  0001 C CNN
F 3 "~" H 3100 5800 50  0001 C CNN
	1    3100 5800
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 5F136F48
P 3100 5950
F 0 "#PWR0105" H 3100 5700 50  0001 C CNN
F 1 "GND" H 3105 5777 50  0000 C CNN
F 2 "" H 3100 5950 50  0001 C CNN
F 3 "" H 3100 5950 50  0001 C CNN
	1    3100 5950
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R7
U 1 1 5F136F42
P 3100 5500
F 0 "R7" H 3168 5546 50  0000 L CNN
F 1 "330R" H 3168 5455 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3140 5490 50  0001 C CNN
F 3 "~" H 3100 5500 50  0001 C CNN
	1    3100 5500
	1    0    0    -1  
$EndComp
$Comp
L Device:LED_ALT D6
U 1 1 5F1250F6
P 2750 5800
F 0 "D6" V 2789 5682 50  0000 R CNN
F 1 "LED" V 2698 5682 50  0000 R CNN
F 2 "LED_THT:LED_D5.0mm" H 2750 5800 50  0001 C CNN
F 3 "~" H 2750 5800 50  0001 C CNN
	1    2750 5800
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 5F1250F0
P 2750 5950
F 0 "#PWR0104" H 2750 5700 50  0001 C CNN
F 1 "GND" H 2755 5777 50  0000 C CNN
F 2 "" H 2750 5950 50  0001 C CNN
F 3 "" H 2750 5950 50  0001 C CNN
	1    2750 5950
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R6
U 1 1 5F1250EA
P 2750 5500
F 0 "R6" H 2818 5546 50  0000 L CNN
F 1 "330R" H 2818 5455 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2790 5490 50  0001 C CNN
F 3 "~" H 2750 5500 50  0001 C CNN
	1    2750 5500
	1    0    0    -1  
$EndComp
$Comp
L Device:LED_ALT D5
U 1 1 5F1250E4
P 2400 5800
F 0 "D5" V 2439 5682 50  0000 R CNN
F 1 "LED" V 2348 5682 50  0000 R CNN
F 2 "LED_THT:LED_D5.0mm" H 2400 5800 50  0001 C CNN
F 3 "~" H 2400 5800 50  0001 C CNN
	1    2400 5800
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 5F1250DE
P 2400 5950
F 0 "#PWR0103" H 2400 5700 50  0001 C CNN
F 1 "GND" H 2405 5777 50  0000 C CNN
F 2 "" H 2400 5950 50  0001 C CNN
F 3 "" H 2400 5950 50  0001 C CNN
	1    2400 5950
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R5
U 1 1 5F1250D8
P 2400 5500
F 0 "R5" H 2468 5546 50  0000 L CNN
F 1 "330R" H 2468 5455 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2440 5490 50  0001 C CNN
F 3 "~" H 2400 5500 50  0001 C CNN
	1    2400 5500
	1    0    0    -1  
$EndComp
$Comp
L Device:LED_ALT D2
U 1 1 5F21B586
P 4100 1650
F 0 "D2" V 4139 1532 50  0000 R CNN
F 1 "LED" V 4048 1532 50  0000 R CNN
F 2 "LED_THT:LED_D5.0mm" H 4100 1650 50  0001 C CNN
F 3 "~" H 4100 1650 50  0001 C CNN
	1    4100 1650
	0    -1   -1   0   
$EndComp
$EndSCHEMATC