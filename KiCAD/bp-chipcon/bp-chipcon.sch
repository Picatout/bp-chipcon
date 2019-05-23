EESchema Schematic File Version 4
LIBS:bp-chipcon-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 2
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
L Personal_KiCAD:BLUE_PILL M1
U 1 1 5CD2DE62
P 4325 3550
F 0 "M1" H 4325 5278 50  0000 C CNN
F 1 "BLUE_PILL" H 4325 5187 50  0000 C CNN
F 2 "" H 4325 3550 50  0001 C CNN
F 3 "" H 4325 3550 50  0001 C CNN
	1    4325 3550
	1    0    0    -1  
$EndComp
Text Label 5975 2450 2    50   ~ 0
PA0
Text Label 5950 3075 2    50   ~ 0
PA1
Text Label 3825 3000 2    50   ~ 0
PA0
Text Label 3825 3100 2    50   ~ 0
PA1
Text Label 5975 2350 2    50   ~ 0
PB0
Text Label 3825 3800 2    50   ~ 0
PB0
Text Label 6625 2400 0    50   ~ 0
C0
Text Label 6600 3125 0    50   ~ 0
C1
$Comp
L device:R R6
U 1 1 5CD37BF4
P 6950 2400
F 0 "R6" V 6743 2400 50  0000 C CNN
F 1 "100" V 6834 2400 50  0000 C CNN
F 2 "" V 6880 2400 50  0001 C CNN
F 3 "" H 6950 2400 50  0001 C CNN
	1    6950 2400
	0    1    1    0   
$EndComp
$Comp
L device:R R9
U 1 1 5CD37C69
P 7225 3275
F 0 "R9" H 7155 3229 50  0000 R CNN
F 1 "100" H 7155 3320 50  0000 R CNN
F 2 "" V 7155 3275 50  0001 C CNN
F 3 "" H 7225 3275 50  0001 C CNN
	1    7225 3275
	-1   0    0    1   
$EndComp
$Comp
L device:C C4
U 1 1 5CD37CF7
P 7225 2550
F 0 "C4" H 7340 2596 50  0000 L CNN
F 1 "470p" H 7340 2505 50  0000 L CNN
F 2 "" H 7263 2400 50  0001 C CNN
F 3 "" H 7225 2550 50  0001 C CNN
	1    7225 2550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR09
U 1 1 5CD37E21
P 7225 2700
F 0 "#PWR09" H 7225 2450 50  0001 C CNN
F 1 "GND" H 7230 2527 50  0000 C CNN
F 2 "" H 7225 2700 50  0001 C CNN
F 3 "" H 7225 2700 50  0001 C CNN
	1    7225 2700
	1    0    0    -1  
$EndComp
$Comp
L device:C C5
U 1 1 5CD37F5C
P 6950 3125
F 0 "C5" V 6698 3125 50  0000 C CNN
F 1 "470p" V 6789 3125 50  0000 C CNN
F 2 "" H 6988 2975 50  0001 C CNN
F 3 "" H 6950 3125 50  0001 C CNN
	1    6950 3125
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR012
U 1 1 5CD3805D
P 7225 3425
F 0 "#PWR012" H 7225 3175 50  0001 C CNN
F 1 "GND" H 7230 3252 50  0000 C CNN
F 2 "" H 7225 3425 50  0001 C CNN
F 3 "" H 7225 3425 50  0001 C CNN
	1    7225 3425
	1    0    0    -1  
$EndComp
Wire Wire Line
	6800 3125 6600 3125
Wire Wire Line
	7100 3125 7225 3125
Wire Wire Line
	6800 2400 6625 2400
Wire Wire Line
	7100 2400 7225 2400
$Comp
L conn:Conn_Coaxial J2
U 1 1 5CD3812E
P 9625 2875
F 0 "J2" H 9724 2851 50  0000 L CNN
F 1 "video_out" H 9724 2760 50  0000 L CNN
F 2 "" H 9625 2875 50  0001 C CNN
F 3 "" H 9625 2875 50  0001 C CNN
	1    9625 2875
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR010
U 1 1 5CD38290
P 9625 3075
F 0 "#PWR010" H 9625 2825 50  0001 C CNN
F 1 "GND" H 9630 2902 50  0000 C CNN
F 2 "" H 9625 3075 50  0001 C CNN
F 3 "" H 9625 3075 50  0001 C CNN
	1    9625 3075
	1    0    0    -1  
$EndComp
$Comp
L device:R R7
U 1 1 5CD382D8
P 8975 2400
F 0 "R7" V 8768 2400 50  0000 C CNN
F 1 "680" V 8859 2400 50  0000 C CNN
F 2 "" V 8905 2400 50  0001 C CNN
F 3 "" H 8975 2400 50  0001 C CNN
	1    8975 2400
	0    1    1    0   
$EndComp
$Comp
L device:R R8
U 1 1 5CD38346
P 8975 3125
F 0 "R8" V 8768 3125 50  0000 C CNN
F 1 "680" V 8859 3125 50  0000 C CNN
F 2 "" V 8905 3125 50  0001 C CNN
F 3 "" H 8975 3125 50  0001 C CNN
	1    8975 3125
	0    1    1    0   
$EndComp
Connection ~ 7225 2400
Connection ~ 7225 3125
Wire Wire Line
	9475 2875 9125 2875
Connection ~ 9125 2875
$Comp
L device:R R5
U 1 1 5CD384CE
P 8975 2050
F 0 "R5" V 8768 2050 50  0000 C CNN
F 1 "680" V 8859 2050 50  0000 C CNN
F 2 "" V 8905 2050 50  0001 C CNN
F 3 "" H 8975 2050 50  0001 C CNN
	1    8975 2050
	0    1    1    0   
$EndComp
Text Label 8825 2050 2    50   ~ 0
SYNC
Text Label 4825 4100 0    50   ~ 0
SYNC
$Comp
L device:R R4
U 1 1 5CD3871B
P 8975 1650
F 0 "R4" V 8768 1650 50  0000 C CNN
F 1 "150" V 8859 1650 50  0000 C CNN
F 2 "" V 8905 1650 50  0001 C CNN
F 3 "" H 8975 1650 50  0001 C CNN
	1    8975 1650
	0    1    1    0   
$EndComp
Connection ~ 9125 2050
Text Label 7875 1250 2    50   ~ 0
PA2
$Comp
L device:D D3
U 1 1 5CD389F6
P 8675 1650
F 0 "D3" H 8675 1434 50  0000 C CNN
F 1 "1N4148" H 8675 1525 50  0000 C CNN
F 2 "" H 8675 1650 50  0001 C CNN
F 3 "" H 8675 1650 50  0001 C CNN
	1    8675 1650
	-1   0    0    1   
$EndComp
Text Label 3825 3200 2    50   ~ 0
PA2
$Comp
L device:R R3
U 1 1 5CD38F49
P 8975 1300
F 0 "R3" V 8768 1300 50  0000 C CNN
F 1 "300" V 8859 1300 50  0000 C CNN
F 2 "" V 8905 1300 50  0001 C CNN
F 3 "" H 8975 1300 50  0001 C CNN
	1    8975 1300
	0    1    1    0   
$EndComp
Text Label 7875 1600 2    50   ~ 0
PA3
Wire Wire Line
	9125 1300 9125 1650
Connection ~ 9125 1650
Wire Wire Line
	9125 1650 9125 2050
$Comp
L device:D D2
U 1 1 5CD39683
P 8675 1300
F 0 "D2" H 8675 1084 50  0000 C CNN
F 1 "1N4148" H 8675 1175 50  0000 C CNN
F 2 "" H 8675 1300 50  0001 C CNN
F 3 "" H 8675 1300 50  0001 C CNN
	1    8675 1300
	-1   0    0    1   
$EndComp
Wire Wire Line
	9125 2875 9125 3125
Text Label 3825 3300 2    50   ~ 0
PA3
$Comp
L device:C C3
U 1 1 5CD58135
P 2975 1400
F 0 "C3" H 3090 1446 50  0000 L CNN
F 1 "100n" H 3090 1355 50  0000 L CNN
F 2 "" H 3013 1250 50  0001 C CNN
F 3 "" H 2975 1400 50  0001 C CNN
	1    2975 1400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR06
U 1 1 5CD5834F
P 2975 1550
F 0 "#PWR06" H 2975 1300 50  0001 C CNN
F 1 "GND" H 2980 1377 50  0000 C CNN
F 2 "" H 2975 1550 50  0001 C CNN
F 3 "" H 2975 1550 50  0001 C CNN
	1    2975 1550
	1    0    0    -1  
$EndComp
Text Label 2975 1250 0    50   ~ 0
U1-pin14
$Comp
L device:R R10
U 1 1 5CD83168
P 9125 3350
F 0 "R10" H 9195 3396 50  0000 L CNN
F 1 "75" H 9195 3305 50  0000 L CNN
F 2 "" V 9055 3350 50  0001 C CNN
F 3 "" H 9125 3350 50  0001 C CNN
	1    9125 3350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR014
U 1 1 5CD83218
P 9125 3500
F 0 "#PWR014" H 9125 3250 50  0001 C CNN
F 1 "GND" H 9130 3327 50  0000 C CNN
F 2 "" H 9125 3500 50  0001 C CNN
F 3 "" H 9125 3500 50  0001 C CNN
	1    9125 3500
	1    0    0    -1  
$EndComp
Connection ~ 9125 2400
Wire Wire Line
	9125 2400 9125 2875
Wire Wire Line
	9125 2050 9125 2400
Wire Wire Line
	9125 3125 9125 3200
Connection ~ 9125 3125
$Comp
L power:GND #PWR08
U 1 1 5CD86573
P 7875 1700
F 0 "#PWR08" H 7875 1450 50  0001 C CNN
F 1 "GND" H 7880 1527 50  0000 C CNN
F 2 "" H 7875 1700 50  0001 C CNN
F 3 "" H 7875 1700 50  0001 C CNN
	1    7875 1700
	1    0    0    -1  
$EndComp
$Comp
L Personal_KiCAD:74HC86N U1
U 3 1 5CD882CF
P 6325 2400
F 0 "U1" H 6300 2665 50  0000 C CNN
F 1 "74HC86N" H 6300 2574 50  0000 C CNN
F 2 "" H 6325 2400 50  0001 C CNN
F 3 "" H 6325 2400 50  0001 C CNN
	3    6325 2400
	1    0    0    -1  
$EndComp
$Comp
L Personal_KiCAD:74HC86N U1
U 4 1 5CD884F6
P 6300 3125
F 0 "U1" H 6275 3390 50  0000 C CNN
F 1 "74HC86N" H 6275 3299 50  0000 C CNN
F 2 "" H 6300 3125 50  0001 C CNN
F 3 "" H 6300 3125 50  0001 C CNN
	4    6300 3125
	1    0    0    -1  
$EndComp
$Comp
L Personal_KiCAD:74HC86N U1
U 1 1 5CD88645
P 8225 1300
F 0 "U1" H 8200 1565 50  0000 C CNN
F 1 "74HC86N" H 8200 1474 50  0000 C CNN
F 2 "" H 8225 1300 50  0001 C CNN
F 3 "" H 8225 1300 50  0001 C CNN
	1    8225 1300
	1    0    0    -1  
$EndComp
$Comp
L Personal_KiCAD:74HC86N U1
U 2 1 5CD886FD
P 8225 1650
F 0 "U1" H 8200 1400 50  0000 C CNN
F 1 "74HC86N" H 8200 1475 50  0000 C CNN
F 2 "" H 8225 1650 50  0001 C CNN
F 3 "" H 8225 1650 50  0001 C CNN
	2    8225 1650
	1    0    0    -1  
$EndComp
$Comp
L device:Battery BT1
U 1 1 5CD8A9DE
P 1200 1450
F 0 "BT1" H 1308 1496 50  0000 L CNN
F 1 "Battery" H 1308 1405 50  0000 L CNN
F 2 "" V 1200 1510 50  0001 C CNN
F 3 "~" V 1200 1510 50  0001 C CNN
	1    1200 1450
	1    0    0    -1  
$EndComp
Text Notes 850  1525 0    50   ~ 0
3xAAA\nNiMh
Text Notes 1200 1200 2    50   ~ 0
Vbat\n4volt\n
$Comp
L switches:SW_DPST_x2 SW1
U 1 1 5CD8ACF7
P 1550 1250
F 0 "SW1" H 1550 1485 50  0000 C CNN
F 1 "power" H 1550 1394 50  0000 C CNN
F 2 "" H 1550 1250 50  0001 C CNN
F 3 "" H 1550 1250 50  0001 C CNN
	1    1550 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1200 1250 1350 1250
$Comp
L device:D D1
U 1 1 5CD8B0B6
P 2000 1250
F 0 "D1" H 2000 1034 50  0000 C CNN
F 1 "1N4148" H 2000 1125 50  0000 C CNN
F 2 "" H 2000 1250 50  0001 C CNN
F 3 "" H 2000 1250 50  0001 C CNN
	1    2000 1250
	-1   0    0    1   
$EndComp
Wire Wire Line
	1750 1250 1850 1250
$Comp
L power:GND #PWR07
U 1 1 5CD8B51E
P 1200 1650
F 0 "#PWR07" H 1200 1400 50  0001 C CNN
F 1 "GND" H 1205 1477 50  0000 C CNN
F 2 "" H 1200 1650 50  0001 C CNN
F 3 "" H 1200 1650 50  0001 C CNN
	1    1200 1650
	1    0    0    -1  
$EndComp
Text Label 2150 1250 0    50   ~ 0
3.3V
$Comp
L device:CP C2
U 1 1 5CD8B687
P 2150 1400
F 0 "C2" H 2268 1446 50  0000 L CNN
F 1 "10µF/16v" H 2268 1355 50  0000 L CNN
F 2 "" H 2188 1250 50  0001 C CNN
F 3 "" H 2150 1400 50  0001 C CNN
	1    2150 1400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR05
U 1 1 5CD8B6D9
P 2150 1550
F 0 "#PWR05" H 2150 1300 50  0001 C CNN
F 1 "GND" H 2155 1377 50  0000 C CNN
F 2 "" H 2150 1550 50  0001 C CNN
F 3 "" H 2150 1550 50  0001 C CNN
	1    2150 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	7225 3125 8825 3125
Wire Wire Line
	7225 2400 8825 2400
$Comp
L power:GND #PWR02
U 1 1 5CDD8CF2
P 7875 1350
F 0 "#PWR02" H 7875 1100 50  0001 C CNN
F 1 "GND" H 7750 1300 50  0000 C CNN
F 2 "" H 7875 1350 50  0001 C CNN
F 3 "" H 7875 1350 50  0001 C CNN
	1    7875 1350
	1    0    0    -1  
$EndComp
Text Label 4825 4000 0    50   ~ 0
UART1_TX
Text Label 4825 3900 0    50   ~ 0
UART1_RX
$Comp
L device:Q_NPN_BCE Q1
U 1 1 5CDD9D0A
P 6425 4500
F 0 "Q1" H 6616 4546 50  0000 L CNN
F 1 "2N3904" H 6616 4455 50  0000 L CNN
F 2 "" H 6625 4600 50  0001 C CNN
F 3 "" H 6425 4500 50  0001 C CNN
	1    6425 4500
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR019
U 1 1 5CDD9F18
P 6325 4700
F 0 "#PWR019" H 6325 4450 50  0001 C CNN
F 1 "GND" H 6330 4527 50  0000 C CNN
F 2 "" H 6325 4700 50  0001 C CNN
F 3 "" H 6325 4700 50  0001 C CNN
	1    6325 4700
	1    0    0    -1  
$EndComp
$Comp
L device:R R11
U 1 1 5CDD9FA2
P 6325 4000
F 0 "R11" H 6395 4046 50  0000 L CNN
F 1 "10k" H 6395 3955 50  0000 L CNN
F 2 "" V 6255 4000 50  0001 C CNN
F 3 "" H 6325 4000 50  0001 C CNN
	1    6325 4000
	1    0    0    -1  
$EndComp
$Comp
L device:R R12
U 1 1 5CDDA036
P 6775 4500
F 0 "R12" V 6568 4500 50  0000 C CNN
F 1 "3K3" V 6659 4500 50  0000 C CNN
F 2 "" V 6705 4500 50  0001 C CNN
F 3 "" H 6775 4500 50  0001 C CNN
	1    6775 4500
	0    1    1    0   
$EndComp
$Comp
L device:D D4
U 1 1 5CDDA1BE
P 7100 4650
F 0 "D4" V 7054 4729 50  0000 L CNN
F 1 "1N4148" V 7145 4729 50  0000 L CNN
F 2 "" H 7100 4650 50  0001 C CNN
F 3 "" H 7100 4650 50  0001 C CNN
	1    7100 4650
	0    1    1    0   
$EndComp
$Comp
L device:CP C6
U 1 1 5CDDA3A7
P 7100 5050
F 0 "C6" H 6982 5004 50  0000 R CNN
F 1 "47µF/25v" H 6982 5095 50  0000 R CNN
F 2 "" H 7138 4900 50  0001 C CNN
F 3 "" H 7100 5050 50  0001 C CNN
	1    7100 5050
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR020
U 1 1 5CDDA4C5
P 7100 5200
F 0 "#PWR020" H 7100 4950 50  0001 C CNN
F 1 "GND" H 7105 5027 50  0000 C CNN
F 2 "" H 7100 5200 50  0001 C CNN
F 3 "" H 7100 5200 50  0001 C CNN
	1    7100 5200
	1    0    0    -1  
$EndComp
Text Label 6325 3850 0    50   ~ 0
+3.3V
Wire Wire Line
	6325 4150 6325 4250
Text Label 6200 4250 2    50   ~ 0
UART1_RX
Wire Wire Line
	6925 4500 7100 4500
Wire Wire Line
	7100 4800 7100 4850
$Comp
L device:Q_PNP_BEC Q2
U 1 1 5CDDAB0D
P 6475 5575
F 0 "Q2" H 6666 5621 50  0000 L CNN
F 1 "2N3906" H 6666 5530 50  0000 L CNN
F 2 "" H 6675 5675 50  0001 C CNN
F 3 "" H 6475 5575 50  0001 C CNN
	1    6475 5575
	1    0    0    -1  
$EndComp
$Comp
L device:R R14
U 1 1 5CDDAC8F
P 6575 6025
F 0 "R14" H 6505 5979 50  0000 R CNN
F 1 "3K3" H 6505 6070 50  0000 R CNN
F 2 "" V 6505 6025 50  0001 C CNN
F 3 "" H 6575 6025 50  0001 C CNN
	1    6575 6025
	-1   0    0    1   
$EndComp
Connection ~ 7100 4850
Wire Wire Line
	7100 4850 7100 4900
Wire Wire Line
	6575 4850 6575 5375
$Comp
L device:R R13
U 1 1 5CDDB9F7
P 6125 5575
F 0 "R13" V 5918 5575 50  0000 C CNN
F 1 "1K" V 6009 5575 50  0000 C CNN
F 2 "" V 6055 5575 50  0001 C CNN
F 3 "" H 6125 5575 50  0001 C CNN
	1    6125 5575
	0    1    1    0   
$EndComp
Text Label 6425 6225 2    50   ~ 0
+3.3V
Wire Wire Line
	6575 4850 7100 4850
Wire Wire Line
	6200 4250 6325 4250
Connection ~ 6325 4250
Wire Wire Line
	6325 4250 6325 4300
Text Label 5975 5575 2    50   ~ 0
UART1_TX
Wire Wire Line
	6575 6175 6575 6225
Wire Wire Line
	6575 6225 6425 6225
Text Label 7325 4500 0    50   ~ 0
SERIAL_INPUT
Text Label 7325 5825 0    50   ~ 0
SERIAL_OUTPUT
Wire Wire Line
	6575 5775 6575 5825
Connection ~ 6575 5825
Wire Wire Line
	6575 5825 6575 5875
Wire Wire Line
	7100 4500 7325 4500
Connection ~ 7100 4500
Wire Wire Line
	6575 5825 7325 5825
Text Notes 7125 6800 0    50   ~ 0
Copyright Jacques Deschênes, 2019\nlicence:  CC-BY-SA 4.0
Text Notes 8200 7625 0    50   ~ 0
2019-05-19\n
Text Notes 7125 6875 0    50   ~ 0
REF: https://creativecommons.org/licenses/by-sa/4.0/
Text Notes 525  7550 0    50   ~ 0
This work is licensed under the Creative Commons Attribution-ShareAlike 4.0 International License.\nTo view a copy of this license, visit\n http://creativecommons.org/licenses/by-sa/4.0/ \nor send a letter to Creative Commons, PO Box 1866, Mountain View, CA 94042, USA.
$Comp
L conn:Conn_Coaxial J1
U 1 1 5CE17874
P 6475 1100
F 0 "J1" H 6574 1076 50  0000 L CNN
F 1 "audio_out" H 6574 985 50  0000 L CNN
F 2 "" H 6475 1100 50  0001 C CNN
F 3 "" H 6475 1100 50  0001 C CNN
	1    6475 1100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01
U 1 1 5CE1787B
P 6475 1300
F 0 "#PWR01" H 6475 1050 50  0001 C CNN
F 1 "GND" H 6480 1127 50  0000 C CNN
F 2 "" H 6475 1300 50  0001 C CNN
F 3 "" H 6475 1300 50  0001 C CNN
	1    6475 1300
	1    0    0    -1  
$EndComp
$Comp
L device:R R1
U 1 1 5CE182B1
P 5475 1100
F 0 "R1" V 5268 1100 50  0000 C CNN
F 1 "4K7" V 5359 1100 50  0000 C CNN
F 2 "" V 5405 1100 50  0001 C CNN
F 3 "" H 5475 1100 50  0001 C CNN
	1    5475 1100
	0    1    1    0   
$EndComp
$Comp
L device:R R2
U 1 1 5CE1836F
P 6175 1250
F 0 "R2" H 6105 1204 50  0000 R CNN
F 1 "1K" H 6105 1295 50  0000 R CNN
F 2 "" V 6105 1250 50  0001 C CNN
F 3 "" H 6175 1250 50  0001 C CNN
	1    6175 1250
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR04
U 1 1 5CE1846E
P 6175 1400
F 0 "#PWR04" H 6175 1150 50  0001 C CNN
F 1 "GND" H 6180 1227 50  0000 C CNN
F 2 "" H 6175 1400 50  0001 C CNN
F 3 "" H 6175 1400 50  0001 C CNN
	1    6175 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6175 1100 6325 1100
Connection ~ 6175 1100
$Comp
L device:C C1
U 1 1 5CE18EA7
P 5800 1250
F 0 "C1" H 5915 1296 50  0000 L CNN
F 1 "68n" H 5915 1205 50  0000 L CNN
F 2 "" H 5838 1100 50  0001 C CNN
F 3 "" H 5800 1250 50  0001 C CNN
	1    5800 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5625 1100 5800 1100
Wire Wire Line
	5800 1100 6175 1100
Connection ~ 5800 1100
$Comp
L power:GND #PWR03
U 1 1 5CE19A3E
P 5800 1400
F 0 "#PWR03" H 5800 1150 50  0001 C CNN
F 1 "GND" H 5805 1227 50  0000 C CNN
F 2 "" H 5800 1400 50  0001 C CNN
F 3 "" H 5800 1400 50  0001 C CNN
	1    5800 1400
	1    0    0    -1  
$EndComp
Text Label 5325 1100 2    50   ~ 0
audio
Text Label 3825 4000 2    50   ~ 0
audio
Text Label 5950 3175 2    50   ~ 0
PB0
$Sheet
S 2450 5575 675  800 
U 5CE41476
F0 "keypad" 50
F1 "keypad.sch" 50
F2 "KEY_VDD" U L 2450 5775 50 
F3 "KEY_GND" U L 2450 6175 50 
F4 "KEY_CLK" I L 2450 6075 50 
F5 "KEY_IN" I L 2450 5875 50 
F6 "KEY_OUT" O L 2450 5975 50 
$EndSheet
$Comp
L power:GND #PWR0101
U 1 1 5CE4EBEB
P 1600 6175
F 0 "#PWR0101" H 1600 5925 50  0001 C CNN
F 1 "GND" H 1605 6002 50  0000 C CNN
F 2 "" H 1600 6175 50  0001 C CNN
F 3 "" H 1600 6175 50  0001 C CNN
	1    1600 6175
	1    0    0    -1  
$EndComp
Text Label 2225 5775 2    50   ~ 0
3.3V
Text Label 2225 6075 2    39   ~ 0
GP_CLK
Text Label 2225 5875 2    39   ~ 0
GP_RX
Text Label 2225 5975 2    39   ~ 0
GP_TX
Text Label 4825 4200 0    39   ~ 0
GP_TX
Text Label 4825 4300 0    39   ~ 0
GP_RX
Text Label 4825 4400 0    39   ~ 0
GP_CLK
NoConn ~ 4275 5050
NoConn ~ 4375 5050
NoConn ~ 4175 5050
NoConn ~ 4475 5050
NoConn ~ 4175 2000
NoConn ~ 4275 2000
NoConn ~ 4375 2000
NoConn ~ 4475 2000
NoConn ~ 3825 2600
Text Label 4825 2600 0    50   ~ 0
+3.3V
$Comp
L conn:Conn_01x05_Female J4
U 1 1 5CE593C3
P 1400 5975
F 0 "J4" H 1294 5550 50  0000 C CNN
F 1 "KEYPAD connector" H 1294 5641 50  0000 C CNN
F 2 "" H 1400 5975 50  0001 C CNN
F 3 "~" H 1400 5975 50  0001 C CNN
	1    1400 5975
	-1   0    0    1   
$EndComp
Wire Wire Line
	1600 5875 2450 5875
Wire Wire Line
	1600 5775 2450 5775
Wire Wire Line
	1600 5975 2450 5975
Wire Wire Line
	1600 6075 2450 6075
Wire Wire Line
	1600 6175 2450 6175
Connection ~ 1600 6175
$EndSCHEMATC
