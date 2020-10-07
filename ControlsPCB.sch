EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 5
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
L Connector:8P8C_Shielded J1
U 1 1 5F5B954C
P 4750 5300
F 0 "J1" H 4420 5247 50  0000 R CNN
F 1 "8P8C_Shielded" H 4420 5338 50  0000 R CNN
F 2 "" V 4750 5325 50  0001 C CNN
F 3 "~" V 4750 5325 50  0001 C CNN
	1    4750 5300
	1    0    0    1   
$EndComp
$Comp
L Connector:8P8C_Shielded J2
U 1 1 5F5C990C
P 7550 5300
F 0 "J2" H 7220 5247 50  0000 R CNN
F 1 "8P8C_Shielded" H 7220 5338 50  0000 R CNN
F 2 "" V 7550 5325 50  0001 C CNN
F 3 "~" V 7550 5325 50  0001 C CNN
	1    7550 5300
	-1   0    0    1   
$EndComp
$Sheet
S 2600 2150 600  800 
U 5F57B52C
F0 "USER_INTERFACE" 50
F1 "switchbox.sch" 50
F2 "SCL1" I R 3200 2450 50 
F3 "SDA1" I R 3200 2350 50 
$EndSheet
$Comp
L power:+5V #PWR?
U 1 1 5F73A08B
P 2650 6600
AR Path="/5F57B52C/5F73A08B" Ref="#PWR?"  Part="1" 
AR Path="/5F73A08B" Ref="#PWR0114"  Part="1" 
F 0 "#PWR0114" H 2650 6450 50  0001 C CNN
F 1 "+5V" H 2665 6773 50  0000 C CNN
F 2 "" H 2650 6600 50  0001 C CNN
F 3 "" H 2650 6600 50  0001 C CNN
	1    2650 6600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F73A091
P 2650 6800
AR Path="/5F57B52C/5F73A091" Ref="#PWR?"  Part="1" 
AR Path="/5F73A091" Ref="#PWR0115"  Part="1" 
F 0 "#PWR0115" H 2650 6550 50  0001 C CNN
F 1 "GND" H 2655 6627 50  0000 C CNN
F 2 "" H 2650 6800 50  0001 C CNN
F 3 "" H 2650 6800 50  0001 C CNN
	1    2650 6800
	1    0    0    -1  
$EndComp
Text Notes 1150 7450 0    50   ~ 0
Buck converter is\nexternal to our system
$Comp
L Regulator_Switching:LM2596S-ADJ U?
U 1 1 5F73A0A3
P 2150 6700
AR Path="/5F57B52C/5F73A0A3" Ref="U?"  Part="1" 
AR Path="/5F73A0A3" Ref="U3"  Part="1" 
F 0 "U3" H 2150 7067 50  0000 C CNN
F 1 "LM2596S-ADJ" H 2150 6976 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:TO-263-5_TabPin3" H 2200 6450 50  0001 L CIN
F 3 "http://www.ti.com/lit/ds/symlink/lm2596.pdf" H 2150 6700 50  0001 C CNN
	1    2150 6700
	1    0    0    -1  
$EndComp
$Comp
L Device:Battery_Cell BT?
U 1 1 5F73A0A9
P 850 6650
AR Path="/5F57B52C/5F73A0A9" Ref="BT?"  Part="1" 
AR Path="/5F73A0A9" Ref="BT2"  Part="1" 
F 0 "BT2" H 968 6746 50  0000 L CNN
F 1 "Battery_Cell" H 968 6655 50  0000 L CNN
F 2 "" V 850 6710 50  0001 C CNN
F 3 "~" V 850 6710 50  0001 C CNN
	1    850  6650
	1    0    0    -1  
$EndComp
Text Notes 650  6550 0    50   ~ 0
12V
Wire Wire Line
	850  6450 850  6350
Wire Wire Line
	850  6350 1650 6350
Wire Wire Line
	1650 6350 1650 6600
Wire Wire Line
	850  6750 850  6800
Wire Wire Line
	850  6800 1600 6800
Wire Wire Line
	2150 7000 1600 7000
Wire Wire Line
	1600 7000 1600 6800
Connection ~ 1600 6800
Wire Wire Line
	1600 6800 1650 6800
$Comp
L power:GND #PWR?
U 1 1 5F73EC1F
P 850 6800
AR Path="/5F57B52C/5F73EC1F" Ref="#PWR?"  Part="1" 
AR Path="/5F73EC1F" Ref="#PWR0125"  Part="1" 
F 0 "#PWR0125" H 850 6550 50  0001 C CNN
F 1 "GND" H 855 6627 50  0000 C CNN
F 2 "" H 850 6800 50  0001 C CNN
F 3 "" H 850 6800 50  0001 C CNN
	1    850  6800
	1    0    0    -1  
$EndComp
Connection ~ 850  6800
$Comp
L MCU_Module:Arduino_UNO_R2 A1
U 1 1 5F74B67E
P 4300 1950
AR Path="/5F74B67E" Ref="A1"  Part="1" 
AR Path="/5F6BFC31/5F74B67E" Ref="A?"  Part="1" 
F 0 "A1" H 4300 3131 50  0000 C CNN
F 1 "Arduino_UNO_R2" H 4300 3040 50  0000 C CNN
F 2 "Module:Arduino_UNO_R2" H 4300 1950 50  0001 C CIN
F 3 "https://www.arduino.cc/en/Main/arduinoBoardUno" H 4300 1950 50  0001 C CNN
	1    4300 1950
	-1   0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5F7512D5
P 4400 700
AR Path="/5F57B52C/5F7512D5" Ref="#PWR?"  Part="1" 
AR Path="/5F7512D5" Ref="#PWR0126"  Part="1" 
F 0 "#PWR0126" H 4400 550 50  0001 C CNN
F 1 "+5V" H 4415 873 50  0000 C CNN
F 2 "" H 4400 700 50  0001 C CNN
F 3 "" H 4400 700 50  0001 C CNN
	1    4400 700 
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 700  4400 950 
Wire Wire Line
	4200 3050 4300 3050
Wire Wire Line
	4450 3050 4450 3200
Connection ~ 4300 3050
Wire Wire Line
	4300 3050 4400 3050
Connection ~ 4400 3050
Wire Wire Line
	4400 3050 4450 3050
$Comp
L power:GND #PWR0127
U 1 1 5F753983
P 4450 3200
F 0 "#PWR0127" H 4450 2950 50  0001 C CNN
F 1 "GND" H 4455 3027 50  0000 C CNN
F 2 "" H 4450 3200 50  0001 C CNN
F 3 "" H 4450 3200 50  0001 C CNN
	1    4450 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 2450 3500 2450
Wire Wire Line
	3750 3700 3600 3700
Wire Wire Line
	3600 3700 3600 2350
Connection ~ 3600 2350
Wire Wire Line
	3600 2350 3800 2350
Wire Wire Line
	3200 2350 3600 2350
Wire Wire Line
	3500 2450 3500 3800
Wire Wire Line
	3500 3800 3750 3800
Connection ~ 3500 2450
Wire Wire Line
	3500 2450 3800 2450
$Comp
L power:GND #PWR0128
U 1 1 5F78DE7A
P 3400 4300
F 0 "#PWR0128" H 3400 4050 50  0001 C CNN
F 1 "GND" H 3405 4127 50  0000 C CNN
F 2 "" H 3400 4300 50  0001 C CNN
F 3 "" H 3400 4300 50  0001 C CNN
	1    3400 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 4300 3400 4250
Wire Wire Line
	3400 4250 3750 4250
$Comp
L power:+5V #PWR0129
U 1 1 5F7956F2
P 8900 4100
F 0 "#PWR0129" H 8900 3950 50  0001 C CNN
F 1 "+5V" H 8915 4273 50  0000 C CNN
F 2 "" H 8900 4100 50  0001 C CNN
F 3 "" H 8900 4100 50  0001 C CNN
	1    8900 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	8900 4250 8550 4250
Wire Wire Line
	4750 3750 5300 3750
Wire Wire Line
	4750 4050 5450 4050
Wire Wire Line
	5300 3750 5300 5000
Wire Wire Line
	5300 5000 5150 5000
Wire Wire Line
	5450 4050 5450 5100
Wire Wire Line
	5450 5100 5150 5100
Wire Wire Line
	6900 3750 6900 5000
Wire Wire Line
	6900 5000 7150 5000
Wire Wire Line
	6800 4050 6800 5100
Wire Wire Line
	6800 5100 7150 5100
Wire Wire Line
	5300 3750 6900 3750
Connection ~ 5300 3750
Wire Wire Line
	5450 4050 6800 4050
Connection ~ 5450 4050
$Sheet
S 7550 3550 1000 850 
U 5F794EFE
F0 "REMOTE_TRANSCEIVER" 50
F1 "TRANSCEIVER.sch" 50
F2 "REMOTE" I R 8550 4250 50 
F3 "~LINK" I R 8550 4100 50 
F4 "SCL" I R 8550 3800 50 
F5 "SDA" I R 8550 3700 50 
F6 "~RDY" I R 8550 3950 50 
F7 "B" I L 7550 3750 50 
F8 "A" I L 7550 4050 50 
$EndSheet
$Sheet
S 3750 3550 1000 850 
U 5F7553C3
F0 "LOCAL_TRANSCEIVER" 50
F1 "TRANSCEIVER.sch" 50
F2 "REMOTE" I L 3750 4250 50 
F3 "~LINK" I L 3750 4100 50 
F4 "SCL" I L 3750 3800 50 
F5 "SDA" I L 3750 3700 50 
F6 "~RDY" I L 3750 3950 50 
F7 "B" I R 4750 3750 50 
F8 "A" I R 4750 4050 50 
$EndSheet
Wire Wire Line
	6900 3750 7550 3750
Connection ~ 6900 3750
Wire Wire Line
	6800 4050 7550 4050
Connection ~ 6800 4050
$Sheet
S 9300 3500 600  800 
U 5F7C211E
F0 "RELAYS" 50
F1 "relays.sch" 50
F2 "SCL1" I L 9300 3800 50 
F3 "SDA1" I L 9300 3700 50 
$EndSheet
Wire Wire Line
	8900 4100 8900 4250
Wire Wire Line
	8550 3700 9300 3700
Wire Wire Line
	8550 3800 9300 3800
$Comp
L power:+5V #PWR?
U 1 1 5F7F4E76
P 10600 1550
AR Path="/5F57B52C/5F7F4E76" Ref="#PWR?"  Part="1" 
AR Path="/5F7F4E76" Ref="#PWR0130"  Part="1" 
F 0 "#PWR0130" H 10600 1400 50  0001 C CNN
F 1 "+5V" H 10615 1723 50  0000 C CNN
F 2 "" H 10600 1550 50  0001 C CNN
F 3 "" H 10600 1550 50  0001 C CNN
	1    10600 1550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F7F4E7C
P 10600 1750
AR Path="/5F57B52C/5F7F4E7C" Ref="#PWR?"  Part="1" 
AR Path="/5F7F4E7C" Ref="#PWR0131"  Part="1" 
F 0 "#PWR0131" H 10600 1500 50  0001 C CNN
F 1 "GND" H 10605 1577 50  0000 C CNN
F 2 "" H 10600 1750 50  0001 C CNN
F 3 "" H 10600 1750 50  0001 C CNN
	1    10600 1750
	1    0    0    -1  
$EndComp
Text Notes 9100 2400 0    50   ~ 0
Buck converter is\nexternal to our system
$Comp
L Regulator_Switching:LM2596S-ADJ U?
U 1 1 5F7F4E83
P 10100 1650
AR Path="/5F57B52C/5F7F4E83" Ref="U?"  Part="1" 
AR Path="/5F7F4E83" Ref="U1"  Part="1" 
F 0 "U1" H 10100 2017 50  0000 C CNN
F 1 "LM2596S-ADJ" H 10100 1926 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:TO-263-5_TabPin3" H 10150 1400 50  0001 L CIN
F 3 "http://www.ti.com/lit/ds/symlink/lm2596.pdf" H 10100 1650 50  0001 C CNN
	1    10100 1650
	1    0    0    -1  
$EndComp
$Comp
L Device:Battery_Cell BT?
U 1 1 5F7F4E89
P 8800 1600
AR Path="/5F57B52C/5F7F4E89" Ref="BT?"  Part="1" 
AR Path="/5F7F4E89" Ref="BT1"  Part="1" 
F 0 "BT1" H 8918 1696 50  0000 L CNN
F 1 "Battery_Cell" H 8918 1605 50  0000 L CNN
F 2 "" V 8800 1660 50  0001 C CNN
F 3 "~" V 8800 1660 50  0001 C CNN
	1    8800 1600
	1    0    0    -1  
$EndComp
Text Notes 8600 1500 0    50   ~ 0
12V
Wire Wire Line
	8800 1400 8800 1300
Wire Wire Line
	8800 1300 9600 1300
Wire Wire Line
	9600 1300 9600 1550
Wire Wire Line
	8800 1700 8800 1750
Wire Wire Line
	8800 1750 9550 1750
Wire Wire Line
	10100 1950 9550 1950
Wire Wire Line
	9550 1950 9550 1750
Connection ~ 9550 1750
Wire Wire Line
	9550 1750 9600 1750
$Comp
L power:GND #PWR?
U 1 1 5F7F4E99
P 8800 1750
AR Path="/5F57B52C/5F7F4E99" Ref="#PWR?"  Part="1" 
AR Path="/5F7F4E99" Ref="#PWR0132"  Part="1" 
F 0 "#PWR0132" H 8800 1500 50  0001 C CNN
F 1 "GND" H 8805 1577 50  0000 C CNN
F 2 "" H 8800 1750 50  0001 C CNN
F 3 "" H 8800 1750 50  0001 C CNN
	1    8800 1750
	1    0    0    -1  
$EndComp
Connection ~ 8800 1750
Wire Notes Line
	6250 550  6250 7800
Wire Notes Line
	6250 7800 6200 7800
Text Notes 6400 2400 0    50   ~ 0
Both systems will lie roughly\n100yd ~~ 100m apart.\n\nGrounds will be shared
Wire Wire Line
	5150 5700 5300 5700
$Comp
L power:GND #PWR0133
U 1 1 5F7F7C99
P 5300 5700
F 0 "#PWR0133" H 5300 5450 50  0001 C CNN
F 1 "GND" H 5305 5527 50  0000 C CNN
F 2 "" H 5300 5700 50  0001 C CNN
F 3 "" H 5300 5700 50  0001 C CNN
	1    5300 5700
	1    0    0    -1  
$EndComp
Connection ~ 5300 5700
Wire Wire Line
	5300 5700 7150 5700
$Comp
L power:GND #PWR0134
U 1 1 5F7F9662
P 6950 5700
F 0 "#PWR0134" H 6950 5450 50  0001 C CNN
F 1 "GND" H 6955 5527 50  0000 C CNN
F 2 "" H 6950 5700 50  0001 C CNN
F 3 "" H 6950 5700 50  0001 C CNN
	1    6950 5700
	1    0    0    -1  
$EndComp
$EndSCHEMATC
