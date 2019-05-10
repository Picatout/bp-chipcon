EESchema Schematic File Version 4
LIBS:bp-chipcon-cache
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
L Personal_KiCAD:BLUE_PILL M?
U 1 1 5CD2DE62
P 4325 3550
F 0 "M?" H 4325 5278 50  0000 C CNN
F 1 "BLUE_PILL" H 4325 5187 50  0000 C CNN
F 2 "" H 4325 3550 50  0001 C CNN
F 3 "" H 4325 3550 50  0001 C CNN
	1    4325 3550
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC86 U?
U 1 1 5CD37862
P 6025 2400
F 0 "U?" H 6025 2806 50  0000 C CNN
F 1 "74HC86" H 6025 2715 50  0000 C CNN
F 2 "" H 6025 2400 50  0001 C CNN
F 3 "" H 6025 2400 50  0001 C CNN
	1    6025 2400
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC86 U?
U 3 1 5CD37A4A
P 6000 3125
F 0 "U?" H 6000 3531 50  0000 C CNN
F 1 "74HC86" H 6000 3440 50  0000 C CNN
F 2 "" H 6000 3125 50  0001 C CNN
F 3 "" H 6000 3125 50  0001 C CNN
	3    6000 3125
	1    0    0    -1  
$EndComp
Text Label 5425 2500 2    50   ~ 0
PA0
Text Label 5400 3025 2    50   ~ 0
PA1
Text Label 3825 3000 2    50   ~ 0
PA0
Text Label 3825 3100 2    50   ~ 0
PA1
Text Label 5425 2300 2    50   ~ 0
PB0
Text Label 5400 3225 2    50   ~ 0
PB1
Text Label 3825 3800 2    50   ~ 0
PB0
Text Label 3825 3900 2    50   ~ 0
PB1
Text Label 6625 2400 0    50   ~ 0
C0
Text Label 6600 3125 0    50   ~ 0
C1
$Comp
L device:R R?
U 1 1 5CD37BF4
P 6950 2400
F 0 "R?" V 6743 2400 50  0000 C CNN
F 1 "100" V 6834 2400 50  0000 C CNN
F 2 "" V 6880 2400 50  0001 C CNN
F 3 "" H 6950 2400 50  0001 C CNN
	1    6950 2400
	0    1    1    0   
$EndComp
$Comp
L device:R R?
U 1 1 5CD37C69
P 7225 3275
F 0 "R?" H 7155 3229 50  0000 R CNN
F 1 "100" H 7155 3320 50  0000 R CNN
F 2 "" V 7155 3275 50  0001 C CNN
F 3 "" H 7225 3275 50  0001 C CNN
	1    7225 3275
	-1   0    0    1   
$EndComp
$Comp
L device:C C?
U 1 1 5CD37CF7
P 7225 2550
F 0 "C?" H 7340 2596 50  0000 L CNN
F 1 "470p" H 7340 2505 50  0000 L CNN
F 2 "" H 7263 2400 50  0001 C CNN
F 3 "" H 7225 2550 50  0001 C CNN
	1    7225 2550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5CD37E21
P 7225 2700
F 0 "#PWR?" H 7225 2450 50  0001 C CNN
F 1 "GND" H 7230 2527 50  0000 C CNN
F 2 "" H 7225 2700 50  0001 C CNN
F 3 "" H 7225 2700 50  0001 C CNN
	1    7225 2700
	1    0    0    -1  
$EndComp
$Comp
L device:C C?
U 1 1 5CD37F5C
P 6950 3125
F 0 "C?" V 6698 3125 50  0000 C CNN
F 1 "470p" V 6789 3125 50  0000 C CNN
F 2 "" H 6988 2975 50  0001 C CNN
F 3 "" H 6950 3125 50  0001 C CNN
	1    6950 3125
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5CD3805D
P 7225 3425
F 0 "#PWR?" H 7225 3175 50  0001 C CNN
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
L conn:Conn_Coaxial J?
U 1 1 5CD3812E
P 9625 2875
F 0 "J?" H 9724 2851 50  0000 L CNN
F 1 "Conn_Coaxial" H 9724 2760 50  0000 L CNN
F 2 "" H 9625 2875 50  0001 C CNN
F 3 "" H 9625 2875 50  0001 C CNN
	1    9625 2875
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5CD38290
P 9625 3075
F 0 "#PWR?" H 9625 2825 50  0001 C CNN
F 1 "GND" H 9630 2902 50  0000 C CNN
F 2 "" H 9625 3075 50  0001 C CNN
F 3 "" H 9625 3075 50  0001 C CNN
	1    9625 3075
	1    0    0    -1  
$EndComp
$Comp
L device:R R?
U 1 1 5CD382D8
P 7625 2400
F 0 "R?" V 7418 2400 50  0000 C CNN
F 1 "680" V 7509 2400 50  0000 C CNN
F 2 "" V 7555 2400 50  0001 C CNN
F 3 "" H 7625 2400 50  0001 C CNN
	1    7625 2400
	0    1    1    0   
$EndComp
$Comp
L device:R R?
U 1 1 5CD38346
P 7625 3125
F 0 "R?" V 7418 3125 50  0000 C CNN
F 1 "680" V 7509 3125 50  0000 C CNN
F 2 "" V 7555 3125 50  0001 C CNN
F 3 "" H 7625 3125 50  0001 C CNN
	1    7625 3125
	0    1    1    0   
$EndComp
Wire Wire Line
	7225 2400 7475 2400
Connection ~ 7225 2400
Wire Wire Line
	7225 3125 7475 3125
Connection ~ 7225 3125
Wire Wire Line
	9475 2875 9125 2875
Connection ~ 9125 2875
$Comp
L device:R R?
U 1 1 5CD384CE
P 8975 2050
F 0 "R?" V 8768 2050 50  0000 C CNN
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
L device:R R?
U 1 1 5CD3871B
P 8975 1650
F 0 "R?" V 8768 1650 50  0000 C CNN
F 1 "150" V 8859 1650 50  0000 C CNN
F 2 "" V 8905 1650 50  0001 C CNN
F 3 "" H 8975 1650 50  0001 C CNN
	1    8975 1650
	0    1    1    0   
$EndComp
Connection ~ 9125 2050
Text Label 8525 1300 2    50   ~ 0
PA2
$Comp
L device:D D?
U 1 1 5CD389F6
P 8675 1650
F 0 "D?" H 8675 1434 50  0000 C CNN
F 1 "1N4148" H 8675 1525 50  0000 C CNN
F 2 "" H 8675 1650 50  0001 C CNN
F 3 "" H 8675 1650 50  0001 C CNN
	1    8675 1650
	-1   0    0    1   
$EndComp
Text Label 3825 3200 2    50   ~ 0
PA2
$Comp
L device:R R?
U 1 1 5CD38F49
P 8975 1300
F 0 "R?" V 8768 1300 50  0000 C CNN
F 1 "300" V 8859 1300 50  0000 C CNN
F 2 "" V 8905 1300 50  0001 C CNN
F 3 "" H 8975 1300 50  0001 C CNN
	1    8975 1300
	0    1    1    0   
$EndComp
Text Label 8525 1650 2    50   ~ 0
PA3
Wire Wire Line
	9125 1300 9125 1650
Connection ~ 9125 1650
Wire Wire Line
	9125 1650 9125 2050
$Comp
L device:D D?
U 1 1 5CD39683
P 8675 1300
F 0 "D?" H 8675 1084 50  0000 C CNN
F 1 "1N4148" H 8675 1175 50  0000 C CNN
F 2 "" H 8675 1300 50  0001 C CNN
F 3 "" H 8675 1300 50  0001 C CNN
	1    8675 1300
	-1   0    0    1   
$EndComp
Wire Wire Line
	9125 2050 9125 2400
Wire Wire Line
	9125 2875 9125 3125
Connection ~ 9125 2400
Wire Wire Line
	9125 2400 9125 2875
Text Label 3825 3300 2    50   ~ 0
PA3
Text Label 3825 3400 2    50   ~ 0
PA4
Text Label 3825 3500 2    50   ~ 0
PA5
Text Label 3825 3600 2    50   ~ 0
PA6
Text Label 3825 3700 2    50   ~ 0
PA7
Wire Wire Line
	7775 2400 9125 2400
Wire Wire Line
	7775 3125 9125 3125
$EndSCHEMATC
