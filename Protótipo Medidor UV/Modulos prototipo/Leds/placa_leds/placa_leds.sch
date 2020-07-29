EESchema Schematic File Version 4
EELAYER 30 0
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
L Connector:Conn_01x06_Male J1
U 1 1 5E65D76C
P 2675 3130
F 0 "J1" H 2783 3511 50  0000 C CNN
F 1 "Conn_01x06_Male" H 2783 3420 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 2675 3130 50  0001 C CNN
F 3 "~" H 2675 3130 50  0001 C CNN
	1    2675 3130
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D1
U 1 1 5E65E729
P 3790 2785
F 0 "D1" H 3783 2530 50  0000 C CNN
F 1 "LED" H 3783 2621 50  0000 C CNN
F 2 "LED_THT:LED_D3.0mm" H 3790 2785 50  0001 C CNN
F 3 "~" H 3790 2785 50  0001 C CNN
	1    3790 2785
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D3
U 1 1 5E65F442
P 3790 3255
F 0 "D3" H 3930 3140 50  0000 C CNN
F 1 "LED" H 3915 3210 50  0000 C CNN
F 2 "LED_THT:LED_D3.0mm" H 3790 3255 50  0001 C CNN
F 3 "~" H 3790 3255 50  0001 C CNN
	1    3790 3255
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D5
U 1 1 5E65F803
P 3780 4020
F 0 "D5" H 3773 3765 50  0000 C CNN
F 1 "LED" H 3773 3856 50  0000 C CNN
F 2 "LED_THT:LED_D3.0mm" H 3780 4020 50  0001 C CNN
F 3 "~" H 3780 4020 50  0001 C CNN
	1    3780 4020
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D4
U 1 1 5E65FC1F
P 3780 3585
F 0 "D4" H 3815 3415 50  0000 C CNN
F 1 "LED" H 3805 3485 50  0000 C CNN
F 2 "LED_THT:LED_D3.0mm" H 3780 3585 50  0001 C CNN
F 3 "~" H 3780 3585 50  0001 C CNN
	1    3780 3585
	-1   0    0    1   
$EndComp
Wire Wire Line
	2875 2930 3450 2930
Wire Wire Line
	3450 2930 3450 2785
Wire Wire Line
	3450 2785 3640 2785
Wire Wire Line
	3640 3000 2945 3000
Wire Wire Line
	2945 3000 2945 3030
Wire Wire Line
	2945 3030 2875 3030
Wire Wire Line
	2875 3130 3545 3130
Wire Wire Line
	3545 3130 3545 3255
Wire Wire Line
	3545 3255 3640 3255
Wire Wire Line
	2875 3430 3295 3430
Wire Wire Line
	3295 3430 3295 4135
Wire Wire Line
	3295 4135 4125 4135
Wire Wire Line
	4125 2785 3940 2785
Wire Wire Line
	3940 3000 4125 3000
Connection ~ 4125 3000
Wire Wire Line
	4125 3000 4125 2785
Wire Wire Line
	3940 3255 4125 3255
Connection ~ 4125 3255
Wire Wire Line
	4125 3255 4125 3000
Wire Wire Line
	4125 3255 4125 3585
Wire Wire Line
	2875 3330 3420 3330
$Comp
L Device:LED D2
U 1 1 5E65F0F1
P 3790 3000
F 0 "D2" H 3945 2890 50  0000 C CNN
F 1 "LED" H 3925 2960 50  0000 C CNN
F 2 "LED_THT:LED_D3.0mm" H 3790 3000 50  0001 C CNN
F 3 "~" H 3790 3000 50  0001 C CNN
	1    3790 3000
	-1   0    0    1   
$EndComp
Wire Wire Line
	3630 3585 3475 3585
Wire Wire Line
	3475 3585 3475 3230
Wire Wire Line
	3475 3230 2875 3230
Wire Wire Line
	3420 3330 3420 4020
Wire Wire Line
	3420 4020 3630 4020
Wire Wire Line
	3930 4020 4125 4020
Connection ~ 4125 4020
Wire Wire Line
	4125 4020 4125 4135
Wire Wire Line
	3930 3585 4125 3585
Connection ~ 4125 3585
Wire Wire Line
	4125 3585 4125 4020
$EndSCHEMATC
