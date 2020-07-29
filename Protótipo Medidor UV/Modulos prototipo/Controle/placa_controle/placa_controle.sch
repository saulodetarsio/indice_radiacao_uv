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
L 74xx:74HC595 COMUM1
U 1 1 5E64C3D1
P 9335 3451
F 0 "COMUM1" H 9335 4232 50  0000 C CNN
F 1 "74HC595" H 9335 4141 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 9335 3451 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74hc595.pdf" H 9335 3451 50  0001 C CNN
	1    9335 3451
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Male INPUT_5V
U 1 1 5E657898
P 1311 1301
F 0 "INPUT_5V" H 1419 1482 50  0000 C CNN
F 1 "Conn_01x02_Male" H 1419 1391 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 1311 1301 50  0001 C CNN
F 3 "~" H 1311 1301 50  0001 C CNN
	1    1311 1301
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC595 MATRIZ_1_CI1
U 1 1 5E64163E
P 5599 1653
F 0 "MATRIZ_1_CI1" H 5599 2434 50  0000 C CNN
F 1 "74HC595" H 5599 2343 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 5599 1653 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74hc595.pdf" H 5599 1653 50  0001 C CNN
	1    5599 1653
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x08_Male PINOS_COMUNS1
U 1 1 5E667032
P 1190 7320
F 0 "PINOS_COMUNS1" H 1298 7801 50  0000 C CNN
F 1 "Conn_01x08_Male" H 1298 7710 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x08_P2.54mm_Vertical" H 1190 7320 50  0001 C CNN
F 3 "~" H 1190 7320 50  0001 C CNN
	1    1190 7320
	0    -1   -1   0   
$EndComp
Text Label 4072 3980 0    50   ~ 0
SDA_SIGNAL
Text Label 4062 4070 0    50   ~ 0
SCL_SIGNAL
Wire Wire Line
	3812 3980 4072 3980
Wire Wire Line
	3812 4080 4032 4080
Wire Wire Line
	4032 4080 4032 4070
Wire Wire Line
	4032 4070 4062 4070
Text Label 1694 1298 0    50   ~ 0
INPUT_5V
$Comp
L power:Earth #PWR0101
U 1 1 5E965D04
P 1716 1540
F 0 "#PWR0101" H 1716 1290 50  0001 C CNN
F 1 "Earth" H 1716 1390 50  0001 C CNN
F 2 "" H 1716 1540 50  0001 C CNN
F 3 "~" H 1716 1540 50  0001 C CNN
	1    1716 1540
	1    0    0    -1  
$EndComp
Wire Wire Line
	1716 1540 1716 1401
Wire Wire Line
	1716 1401 1511 1401
Wire Wire Line
	1694 1298 1562 1298
Wire Wire Line
	1562 1298 1562 1301
Wire Wire Line
	1562 1301 1511 1301
Text Label 3238 2340 0    50   ~ 0
INPUT_5V
$Comp
L MCU_Module:Arduino_UNO_R3 A1
U 1 1 5E63C2C3
P 3312 3580
F 0 "A1" H 3312 4761 50  0000 C CNN
F 1 "Arduino_UNO_R3" H 3312 4670 50  0000 C CNN
F 2 "Module:Arduino_UNO_R3" H 3312 3580 50  0001 C CIN
F 3 "https://www.arduino.cc/en/Main/arduinoBoardUno" H 3312 3580 50  0001 C CNN
	1    3312 3580
	1    0    0    -1  
$EndComp
Wire Wire Line
	3238 2340 3212 2340
Wire Wire Line
	3212 2340 3212 2580
$Comp
L power:Earth #PWR0102
U 1 1 5E978D76
P 3326 4946
F 0 "#PWR0102" H 3326 4696 50  0001 C CNN
F 1 "Earth" H 3326 4796 50  0001 C CNN
F 2 "" H 3326 4946 50  0001 C CNN
F 3 "~" H 3326 4946 50  0001 C CNN
	1    3326 4946
	1    0    0    -1  
$EndComp
Wire Wire Line
	3312 4680 3312 4918
Wire Wire Line
	3312 4918 3326 4918
Wire Wire Line
	3326 4918 3326 4946
$Comp
L Connector:Conn_01x04_Male DADOS_CONTROLE1
U 1 1 5E988108
P 930 4767
F 0 "DADOS_CONTROLE1" H 1038 5048 50  0000 C CNN
F 1 "Conn_01x04_Male" H 1038 4957 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 930 4767 50  0001 C CNN
F 3 "~" H 930 4767 50  0001 C CNN
	1    930  4767
	1    0    0    -1  
$EndComp
Text Label 1276 4665 0    50   ~ 0
INDICE_UV
Wire Wire Line
	1276 4665 1182 4665
Wire Wire Line
	1182 4665 1182 4667
Wire Wire Line
	1182 4667 1130 4667
Text Label 1272 4769 0    50   ~ 0
TEMPERATURA
Wire Wire Line
	1272 4769 1174 4769
Wire Wire Line
	1174 4769 1174 4767
Wire Wire Line
	1174 4767 1130 4767
Text Label 1278 4869 0    50   ~ 0
SCL_SIGNAL
Wire Wire Line
	1278 4869 1180 4869
Wire Wire Line
	1180 4869 1180 4867
Wire Wire Line
	1180 4867 1130 4867
Text Label 1292 4979 0    50   ~ 0
SDA_SIGNAL
Wire Wire Line
	1292 4979 1198 4979
Wire Wire Line
	1198 4979 1198 4967
Wire Wire Line
	1198 4967 1130 4967
Text Label 4128 3568 0    50   ~ 0
INDICE_UV
Text Label 4130 3680 0    50   ~ 0
TEMPERATURA
Wire Wire Line
	4128 3568 3812 3568
Wire Wire Line
	3812 3568 3812 3580
Wire Wire Line
	4130 3680 3850 3680
Wire Wire Line
	3850 3680 3850 3658
Wire Wire Line
	3850 3658 3812 3658
Wire Wire Line
	3812 3658 3812 3680
Text Label 8773 3246 2    50   ~ 0
CLOCK_2
Wire Wire Line
	8935 3251 8773 3251
Wire Wire Line
	8773 3251 8773 3246
Text Label 8785 3055 2    50   ~ 0
DADOS_2
Wire Wire Line
	8935 3051 8785 3051
Wire Wire Line
	8785 3051 8785 3055
Text Label 8776 3557 2    50   ~ 0
LATCH_2
Wire Wire Line
	8935 3551 8776 3551
Wire Wire Line
	8776 3551 8776 3557
$Comp
L power:Earth #PWR0103
U 1 1 5E9C4C59
P 9338 4246
F 0 "#PWR0103" H 9338 3996 50  0001 C CNN
F 1 "Earth" H 9338 4096 50  0001 C CNN
F 2 "" H 9338 4246 50  0001 C CNN
F 3 "~" H 9338 4246 50  0001 C CNN
	1    9338 4246
	1    0    0    -1  
$EndComp
Wire Wire Line
	9338 4246 9338 4152
Wire Wire Line
	9338 4152 9335 4152
Wire Wire Line
	9335 4152 9335 4151
Text Label 10005 3049 0    50   ~ 0
C_1
Text Label 10005 3142 0    50   ~ 0
C_2
Text Label 10011 3238 0    50   ~ 0
C_3
Text Label 10019 3339 0    50   ~ 0
C_4
Text Label 10020 3436 0    50   ~ 0
C_5
Text Label 10022 3542 0    50   ~ 0
C_6
Text Label 10026 3638 0    50   ~ 0
C_7
Text Label 10026 3757 0    50   ~ 0
C_8
Text Label 879  6944 1    50   ~ 0
C_1
Text Label 972  6944 1    50   ~ 0
C_2
Text Label 1068 6938 1    50   ~ 0
C_3
Text Label 1169 6930 1    50   ~ 0
C_4
Text Label 1266 6929 1    50   ~ 0
C_5
Text Label 1372 6927 1    50   ~ 0
C_6
Text Label 1468 6923 1    50   ~ 0
C_7
Text Label 1587 6923 1    50   ~ 0
C_8
Wire Wire Line
	1590 7120 1590 6950
Wire Wire Line
	1590 6950 1587 6950
Wire Wire Line
	1587 6950 1587 6923
Wire Wire Line
	1468 6923 1490 6923
Wire Wire Line
	1490 6923 1490 7120
Wire Wire Line
	1372 6927 1390 6927
Wire Wire Line
	1390 6927 1390 7120
Wire Wire Line
	1266 6929 1290 6929
Wire Wire Line
	1290 6929 1290 7120
Wire Wire Line
	1169 6930 1190 6930
Wire Wire Line
	1190 6930 1190 7120
Wire Wire Line
	1090 7120 1090 6939
Wire Wire Line
	1090 6939 1068 6939
Wire Wire Line
	1068 6939 1068 6938
Wire Wire Line
	990  7120 990  6941
Wire Wire Line
	990  6941 972  6941
Wire Wire Line
	972  6941 972  6944
Wire Wire Line
	890  7120 890  6975
Wire Wire Line
	890  6975 879  6975
Wire Wire Line
	879  6975 879  6944
Wire Wire Line
	9735 3051 9936 3051
Wire Wire Line
	9936 3051 9936 3049
Wire Wire Line
	9936 3049 10005 3049
Wire Wire Line
	9735 3151 9953 3151
Wire Wire Line
	9953 3151 9953 3142
Wire Wire Line
	9953 3142 10005 3142
Wire Wire Line
	10011 3238 9735 3238
Wire Wire Line
	9735 3238 9735 3251
Wire Wire Line
	10020 3436 9735 3436
Wire Wire Line
	9735 3436 9735 3451
Wire Wire Line
	10022 3542 9735 3542
Wire Wire Line
	9735 3542 9735 3551
Wire Wire Line
	10026 3638 9735 3638
Wire Wire Line
	9735 3638 9735 3651
Wire Wire Line
	10026 3757 9782 3757
Wire Wire Line
	9782 3757 9782 3751
Wire Wire Line
	9782 3751 9735 3751
Wire Wire Line
	10019 3339 9735 3339
Wire Wire Line
	9735 3339 9735 3351
Text Label 2352 4190 2    50   ~ 0
LATCH_2
Text Label 2365 4078 2    50   ~ 0
DADOS_2
Text Label 2347 3959 2    50   ~ 0
CLOCK_2
Wire Wire Line
	2812 4180 2382 4180
Wire Wire Line
	2382 4180 2382 4190
Wire Wire Line
	2382 4190 2352 4190
Wire Wire Line
	2812 4080 2365 4080
Wire Wire Line
	2365 4080 2365 4078
Wire Wire Line
	2812 3980 2347 3980
Wire Wire Line
	2347 3959 2347 3980
$Comp
L power:Earth #PWR01
U 1 1 5E991EDF
P 5600 2453
F 0 "#PWR01" H 5600 2203 50  0001 C CNN
F 1 "Earth" H 5600 2303 50  0001 C CNN
F 2 "" H 5600 2453 50  0001 C CNN
F 3 "~" H 5600 2453 50  0001 C CNN
	1    5600 2453
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 2453 5600 2385
Wire Wire Line
	5600 2385 5570 2385
Wire Wire Line
	5570 2385 5570 2353
Wire Wire Line
	5570 2353 5599 2353
Text Label 4841 1254 2    50   ~ 0
DADOS_1
Wire Wire Line
	5199 1253 4882 1253
Wire Wire Line
	4882 1253 4882 1283
Wire Wire Line
	4882 1283 4841 1283
Wire Wire Line
	4841 1283 4841 1254
Text Label 4837 1474 2    50   ~ 0
CLOCK_1
Wire Wire Line
	5199 1453 4880 1453
Wire Wire Line
	4880 1453 4880 1474
Wire Wire Line
	4880 1474 4837 1474
Text Label 4954 1754 2    50   ~ 0
LATCH_1
Wire Wire Line
	5199 1753 4992 1753
Wire Wire Line
	4992 1753 4992 1777
Wire Wire Line
	4992 1777 4954 1777
Wire Wire Line
	4954 1754 4954 1777
Text Label 5714 913  0    50   ~ 0
INPUT_5v
Wire Wire Line
	5599 1053 5599 914 
Wire Wire Line
	5714 914  5714 913 
Wire Wire Line
	5599 914  5714 914 
Text Label 6296 1237 0    50   ~ 0
M_1_1
Text Label 6292 1340 0    50   ~ 0
M_2_1
Text Label 6291 1432 0    50   ~ 0
M_3_1
Text Label 6296 1532 0    50   ~ 0
M_4_1
Text Label 6300 1644 0    50   ~ 0
M_5_1
Text Label 6306 1761 0    50   ~ 0
M_6_1
Text Label 6306 1890 0    50   ~ 0
M_7_1
Text Label 6312 2004 0    50   ~ 0
M_8_1
Wire Wire Line
	5999 1253 6248 1253
Wire Wire Line
	6248 1253 6248 1237
Wire Wire Line
	6248 1237 6296 1237
Wire Wire Line
	5999 1353 6263 1353
Wire Wire Line
	6263 1353 6263 1340
Wire Wire Line
	6263 1340 6292 1340
Wire Wire Line
	5999 1453 6291 1453
Wire Wire Line
	6291 1453 6291 1432
Wire Wire Line
	5999 1553 6233 1553
Wire Wire Line
	6233 1553 6233 1532
Wire Wire Line
	6233 1532 6296 1532
Wire Wire Line
	5999 1653 6233 1653
Wire Wire Line
	6233 1653 6233 1644
Wire Wire Line
	6233 1644 6300 1644
Wire Wire Line
	5999 1753 6243 1753
Wire Wire Line
	6243 1753 6243 1761
Wire Wire Line
	6243 1761 6306 1761
Wire Wire Line
	5999 1853 6241 1853
Wire Wire Line
	6241 1853 6241 1890
Wire Wire Line
	6241 1890 6306 1890
Wire Wire Line
	5999 1953 6238 1953
Wire Wire Line
	6238 1953 6238 2004
Wire Wire Line
	6238 2004 6312 2004
$Comp
L 74xx:74HC595 NIVEL_LED1
U 1 1 5EA35360
P 7958 5437
F 0 "NIVEL_LED1" H 7958 6218 50  0000 C CNN
F 1 "74HC595" H 7958 6127 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 7958 5437 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74hc595.pdf" H 7958 5437 50  0001 C CNN
	1    7958 5437
	1    0    0    -1  
$EndComp
$Comp
L power:Earth #PWR04
U 1 1 5EA35366
P 7959 6237
F 0 "#PWR04" H 7959 5987 50  0001 C CNN
F 1 "Earth" H 7959 6087 50  0001 C CNN
F 2 "" H 7959 6237 50  0001 C CNN
F 3 "~" H 7959 6237 50  0001 C CNN
	1    7959 6237
	1    0    0    -1  
$EndComp
Wire Wire Line
	7959 6237 7959 6169
Wire Wire Line
	7959 6169 7929 6169
Wire Wire Line
	7929 6169 7929 6137
Wire Wire Line
	7929 6137 7958 6137
Text Label 7200 5038 2    50   ~ 0
DADOS_LEDS
Wire Wire Line
	7558 5037 7241 5037
Wire Wire Line
	7241 5037 7241 5067
Wire Wire Line
	7241 5067 7200 5067
Wire Wire Line
	7200 5067 7200 5038
Text Label 7196 5258 2    50   ~ 0
CLOCK_LEDS
Wire Wire Line
	7558 5237 7239 5237
Wire Wire Line
	7239 5237 7239 5258
Wire Wire Line
	7239 5258 7196 5258
Text Label 7313 5538 2    50   ~ 0
LATCH_LEDS
Wire Wire Line
	7558 5537 7351 5537
Wire Wire Line
	7351 5537 7351 5561
Wire Wire Line
	7351 5561 7313 5561
Wire Wire Line
	7313 5538 7313 5561
Text Label 8073 4697 0    50   ~ 0
INPUT_5v
Wire Wire Line
	7958 4837 7958 4698
Wire Wire Line
	8073 4698 8073 4697
Wire Wire Line
	7958 4698 8073 4698
Text Label 8655 5021 0    50   ~ 0
LED_1
Text Label 8651 5124 0    50   ~ 0
LED2
Text Label 8650 5216 0    50   ~ 0
LED_3
Text Label 8655 5316 0    50   ~ 0
LED_4
Text Label 8659 5428 0    50   ~ 0
LED_5
Wire Wire Line
	8358 5037 8607 5037
Wire Wire Line
	8607 5037 8607 5021
Wire Wire Line
	8607 5021 8655 5021
Wire Wire Line
	8358 5137 8622 5137
Wire Wire Line
	8622 5137 8622 5124
Wire Wire Line
	8622 5124 8651 5124
Wire Wire Line
	8358 5237 8650 5237
Wire Wire Line
	8650 5237 8650 5216
Wire Wire Line
	8358 5337 8592 5337
Wire Wire Line
	8592 5337 8592 5316
Wire Wire Line
	8592 5316 8655 5316
Wire Wire Line
	8358 5437 8592 5437
Wire Wire Line
	8592 5437 8592 5428
Wire Wire Line
	8592 5428 8659 5428
$Comp
L Connector:Conn_01x05_Male LEDS1
U 1 1 5EAA0CCA
P 945 5661
F 0 "LEDS1" H 1053 6042 50  0000 C CNN
F 1 "Conn_01x05_Male" H 1053 5951 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x05_P2.54mm_Vertical" H 945 5661 50  0001 C CNN
F 3 "~" H 945 5661 50  0001 C CNN
	1    945  5661
	1    0    0    -1  
$EndComp
Text Label 1477 5455 0    50   ~ 0
LED_1
Text Label 1474 5540 0    50   ~ 0
LED_2
Text Label 1471 5644 0    50   ~ 0
LED_3
Text Label 1474 5741 0    50   ~ 0
LED_4
Text Label 1462 5853 0    50   ~ 0
LED_5
Wire Wire Line
	1444 5461 1444 5455
Wire Wire Line
	1444 5455 1477 5455
Wire Wire Line
	1145 5461 1444 5461
Wire Wire Line
	1145 5561 1417 5561
Wire Wire Line
	1417 5561 1417 5540
Wire Wire Line
	1417 5540 1474 5540
Wire Wire Line
	1145 5661 1419 5661
Wire Wire Line
	1419 5661 1419 5644
Wire Wire Line
	1419 5644 1471 5644
Wire Wire Line
	1145 5761 1437 5761
Wire Wire Line
	1437 5761 1437 5741
Wire Wire Line
	1437 5741 1474 5741
Wire Wire Line
	1405 5861 1405 5853
Wire Wire Line
	1405 5853 1462 5853
Wire Wire Line
	1145 5861 1405 5861
$Comp
L Connector:Conn_01x08_Male MATRIZ_1
U 1 1 5EB7099C
P 2253 7365
F 0 "MATRIZ_1" H 2361 7846 50  0000 C CNN
F 1 "Conn_01x08_Male" H 2361 7755 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x08_P2.54mm_Vertical" H 2253 7365 50  0001 C CNN
F 3 "~" H 2253 7365 50  0001 C CNN
	1    2253 7365
	0    -1   -1   0   
$EndComp
Text Label 1942 6989 1    50   ~ 0
M_1_1
Text Label 2035 6989 1    50   ~ 0
M_2_1
Text Label 2131 6983 1    50   ~ 0
M_3_1
Text Label 2232 6975 1    50   ~ 0
M_4_1
Text Label 2329 6974 1    50   ~ 0
M_5_1
Text Label 2435 6972 1    50   ~ 0
M_6_1
Text Label 2531 6968 1    50   ~ 0
M_7_1
Text Label 2650 6968 1    50   ~ 0
M_8_1
Wire Wire Line
	2653 7165 2653 6995
Wire Wire Line
	2653 6995 2650 6995
Wire Wire Line
	2650 6995 2650 6968
Wire Wire Line
	2531 6968 2553 6968
Wire Wire Line
	2553 6968 2553 7165
Wire Wire Line
	2435 6972 2453 6972
Wire Wire Line
	2453 6972 2453 7165
Wire Wire Line
	2329 6974 2353 6974
Wire Wire Line
	2353 6974 2353 7165
Wire Wire Line
	2232 6975 2253 6975
Wire Wire Line
	2253 6975 2253 7165
Wire Wire Line
	2153 7165 2153 6984
Wire Wire Line
	2153 6984 2131 6984
Wire Wire Line
	2131 6984 2131 6983
Wire Wire Line
	2053 7165 2053 6986
Wire Wire Line
	2053 6986 2035 6986
Wire Wire Line
	2035 6986 2035 6989
Wire Wire Line
	1953 7165 1953 7020
Wire Wire Line
	1953 7020 1942 7020
Wire Wire Line
	1942 7020 1942 6989
$Comp
L Connector:Conn_01x08_Male MATRIZ_2
U 1 1 5EB8D2F4
P 3371 7353
F 0 "MATRIZ_2" H 3479 7834 50  0000 C CNN
F 1 "Conn_01x08_Male" H 3479 7743 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x08_P2.54mm_Vertical" H 3371 7353 50  0001 C CNN
F 3 "~" H 3371 7353 50  0001 C CNN
	1    3371 7353
	0    -1   -1   0   
$EndComp
Text Label 3060 6977 1    50   ~ 0
M_1_2
Text Label 3153 6977 1    50   ~ 0
M_2_2
Text Label 3249 6971 1    50   ~ 0
M_3_2
Text Label 3350 6963 1    50   ~ 0
M_4_2
Text Label 3447 6962 1    50   ~ 0
M_5_2
Text Label 3553 6960 1    50   ~ 0
M_6_2
Text Label 3649 6956 1    50   ~ 0
M_7_2
Text Label 3768 6956 1    50   ~ 0
M_8_2
Wire Wire Line
	3771 7153 3771 6983
Wire Wire Line
	3771 6983 3768 6983
Wire Wire Line
	3768 6983 3768 6956
Wire Wire Line
	3649 6956 3671 6956
Wire Wire Line
	3671 6956 3671 7153
Wire Wire Line
	3553 6960 3571 6960
Wire Wire Line
	3571 6960 3571 7153
Wire Wire Line
	3447 6962 3471 6962
Wire Wire Line
	3471 6962 3471 7153
Wire Wire Line
	3350 6963 3371 6963
Wire Wire Line
	3371 6963 3371 7153
Wire Wire Line
	3271 7153 3271 6972
Wire Wire Line
	3271 6972 3249 6972
Wire Wire Line
	3249 6972 3249 6971
Wire Wire Line
	3171 7153 3171 6974
Wire Wire Line
	3171 6974 3153 6974
Wire Wire Line
	3153 6974 3153 6977
Wire Wire Line
	3071 7153 3071 7008
Wire Wire Line
	3071 7008 3060 7008
Wire Wire Line
	3060 7008 3060 6977
$Comp
L Connector:Conn_01x08_Male MATRIZ_3
U 1 1 5EBAC98D
P 4460 7338
F 0 "MATRIZ_3" H 4568 7819 50  0000 C CNN
F 1 "Conn_01x08_Male" H 4568 7728 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x08_P2.54mm_Vertical" H 4460 7338 50  0001 C CNN
F 3 "~" H 4460 7338 50  0001 C CNN
	1    4460 7338
	0    -1   -1   0   
$EndComp
Text Label 4149 6962 1    50   ~ 0
M_1_3
Text Label 4242 6962 1    50   ~ 0
M_2_3
Text Label 4338 6956 1    50   ~ 0
M_3_3
Text Label 4439 6948 1    50   ~ 0
M_4_3
Text Label 4536 6947 1    50   ~ 0
M_5_3
Text Label 4642 6945 1    50   ~ 0
M_6_3
Text Label 4738 6941 1    50   ~ 0
M_7_3
Text Label 4857 6941 1    50   ~ 0
M_8_3
Wire Wire Line
	4860 7138 4860 6968
Wire Wire Line
	4860 6968 4857 6968
Wire Wire Line
	4857 6968 4857 6941
Wire Wire Line
	4738 6941 4760 6941
Wire Wire Line
	4760 6941 4760 7138
Wire Wire Line
	4642 6945 4660 6945
Wire Wire Line
	4660 6945 4660 7138
Wire Wire Line
	4536 6947 4560 6947
Wire Wire Line
	4560 6947 4560 7138
Wire Wire Line
	4439 6948 4460 6948
Wire Wire Line
	4460 6948 4460 7138
Wire Wire Line
	4360 7138 4360 6957
Wire Wire Line
	4360 6957 4338 6957
Wire Wire Line
	4338 6957 4338 6956
Wire Wire Line
	4260 7138 4260 6959
Wire Wire Line
	4260 6959 4242 6959
Wire Wire Line
	4242 6959 4242 6962
Wire Wire Line
	4160 7138 4160 6993
Wire Wire Line
	4160 6993 4149 6993
Wire Wire Line
	4149 6993 4149 6962
$Comp
L Connector:Conn_01x08_Male MATRIZ_4
U 1 1 5EC40B98
P 5595 7296
F 0 "MATRIZ_4" H 5703 7777 50  0000 C CNN
F 1 "Conn_01x08_Male" H 5703 7686 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x08_P2.54mm_Vertical" H 5595 7296 50  0001 C CNN
F 3 "~" H 5595 7296 50  0001 C CNN
	1    5595 7296
	0    -1   -1   0   
$EndComp
Text Label 5284 6920 1    50   ~ 0
M_1_4
Text Label 5377 6920 1    50   ~ 0
M_2_4
Text Label 5473 6914 1    50   ~ 0
M_3_4
Text Label 5574 6906 1    50   ~ 0
M_4_4
Text Label 5671 6905 1    50   ~ 0
M_5_4
Text Label 5777 6903 1    50   ~ 0
M_6_4
Text Label 5873 6899 1    50   ~ 0
M_7_4
Text Label 5992 6899 1    50   ~ 0
M_8_4
Wire Wire Line
	5995 7096 5995 6926
Wire Wire Line
	5995 6926 5992 6926
Wire Wire Line
	5992 6926 5992 6899
Wire Wire Line
	5873 6899 5895 6899
Wire Wire Line
	5895 6899 5895 7096
Wire Wire Line
	5777 6903 5795 6903
Wire Wire Line
	5795 6903 5795 7096
Wire Wire Line
	5671 6905 5695 6905
Wire Wire Line
	5695 6905 5695 7096
Wire Wire Line
	5574 6906 5595 6906
Wire Wire Line
	5595 6906 5595 7096
Wire Wire Line
	5495 7096 5495 6915
Wire Wire Line
	5495 6915 5473 6915
Wire Wire Line
	5473 6915 5473 6914
Wire Wire Line
	5395 7096 5395 6917
Wire Wire Line
	5395 6917 5377 6917
Wire Wire Line
	5377 6917 5377 6920
Wire Wire Line
	5295 7096 5295 6951
Wire Wire Line
	5295 6951 5284 6951
Wire Wire Line
	5284 6951 5284 6920
Text Label 2336 3835 2    50   ~ 0
LATCH_1
Text Label 2337 3740 2    50   ~ 0
DADOS_1
Text Label 2338 3646 2    50   ~ 0
CLOCK_1
Text Label 2325 3530 2    50   ~ 0
LATCH_LEDS
Text Label 2326 3435 2    50   ~ 0
DADOS_LEDS
Text Label 2327 3341 2    50   ~ 0
CLOCK_LEDS
Wire Wire Line
	2812 3880 2336 3880
Wire Wire Line
	2336 3880 2336 3835
Wire Wire Line
	2812 3780 2337 3780
Wire Wire Line
	2337 3780 2337 3740
Wire Wire Line
	2812 3680 2338 3680
Wire Wire Line
	2338 3646 2338 3680
Wire Wire Line
	2812 3580 2325 3580
Wire Wire Line
	2325 3580 2325 3530
Wire Wire Line
	2812 3480 2326 3480
Wire Wire Line
	2326 3480 2326 3435
Wire Wire Line
	2812 3380 2327 3380
Wire Wire Line
	2327 3380 2327 3341
$Comp
L power:Earth #PWR0104
U 1 1 5EE525B6
P 8886 3774
F 0 "#PWR0104" H 8886 3524 50  0001 C CNN
F 1 "Earth" H 8886 3624 50  0001 C CNN
F 2 "" H 8886 3774 50  0001 C CNN
F 3 "~" H 8886 3774 50  0001 C CNN
	1    8886 3774
	1    0    0    -1  
$EndComp
Wire Wire Line
	8935 3651 8886 3651
Wire Wire Line
	8886 3651 8886 3774
Text Label 8726 3355 2    50   ~ 0
INPUT_5V
Wire Wire Line
	8935 3351 8726 3351
Wire Wire Line
	8726 3351 8726 3355
Text Label 6266 2185 0    50   ~ 0
SAIDA_CI_1
Wire Wire Line
	5999 2153 6266 2153
Wire Wire Line
	6266 2153 6266 2185
Text Label 4938 1570 2    50   ~ 0
INPUT_5V
Wire Wire Line
	4938 1570 5163 1570
Wire Wire Line
	5163 1570 5163 1553
Wire Wire Line
	5163 1553 5199 1553
$Comp
L power:Earth #PWR0105
U 1 1 5EECF769
P 5128 1983
F 0 "#PWR0105" H 5128 1733 50  0001 C CNN
F 1 "Earth" H 5128 1833 50  0001 C CNN
F 2 "" H 5128 1983 50  0001 C CNN
F 3 "~" H 5128 1983 50  0001 C CNN
	1    5128 1983
	1    0    0    -1  
$EndComp
Wire Wire Line
	5199 1853 5128 1853
Wire Wire Line
	5128 1853 5128 1983
$Comp
L 74xx:74HC595 MATRIZ_2_CI1
U 1 1 5EEE7423
P 7989 1657
F 0 "MATRIZ_2_CI1" H 7989 2438 50  0000 C CNN
F 1 "74HC595" H 7989 2347 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 7989 1657 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74hc595.pdf" H 7989 1657 50  0001 C CNN
	1    7989 1657
	1    0    0    -1  
$EndComp
$Comp
L power:Earth #PWR0106
U 1 1 5EEE7429
P 7990 2457
F 0 "#PWR0106" H 7990 2207 50  0001 C CNN
F 1 "Earth" H 7990 2307 50  0001 C CNN
F 2 "" H 7990 2457 50  0001 C CNN
F 3 "~" H 7990 2457 50  0001 C CNN
	1    7990 2457
	1    0    0    -1  
$EndComp
Wire Wire Line
	7990 2457 7990 2389
Wire Wire Line
	7990 2389 7960 2389
Wire Wire Line
	7960 2389 7960 2357
Wire Wire Line
	7960 2357 7989 2357
Text Label 7231 1258 2    50   ~ 0
SAIDA_CI_1
Wire Wire Line
	7589 1257 7272 1257
Wire Wire Line
	7272 1257 7272 1287
Wire Wire Line
	7272 1287 7231 1287
Wire Wire Line
	7231 1287 7231 1258
Text Label 7227 1478 2    50   ~ 0
CLOCK_1
Wire Wire Line
	7589 1457 7270 1457
Wire Wire Line
	7270 1457 7270 1478
Wire Wire Line
	7270 1478 7227 1478
Text Label 7344 1758 2    50   ~ 0
LATCH_1
Wire Wire Line
	7589 1757 7382 1757
Wire Wire Line
	7382 1757 7382 1781
Wire Wire Line
	7382 1781 7344 1781
Wire Wire Line
	7344 1758 7344 1781
Text Label 8104 917  0    50   ~ 0
INPUT_5v
Wire Wire Line
	7989 1057 7989 918 
Wire Wire Line
	8104 918  8104 917 
Wire Wire Line
	7989 918  8104 918 
Text Label 8686 1241 0    50   ~ 0
M_1_2
Text Label 8682 1344 0    50   ~ 0
M_2_2
Text Label 8681 1436 0    50   ~ 0
M_3_2
Text Label 8686 1536 0    50   ~ 0
M_4_2
Text Label 8690 1648 0    50   ~ 0
M_5_2
Text Label 8696 1765 0    50   ~ 0
M_6_2
Text Label 8696 1894 0    50   ~ 0
M_7_2
Text Label 8702 2008 0    50   ~ 0
M_8_2
Wire Wire Line
	8389 1257 8638 1257
Wire Wire Line
	8638 1257 8638 1241
Wire Wire Line
	8638 1241 8686 1241
Wire Wire Line
	8389 1357 8653 1357
Wire Wire Line
	8653 1357 8653 1344
Wire Wire Line
	8653 1344 8682 1344
Wire Wire Line
	8389 1457 8681 1457
Wire Wire Line
	8681 1457 8681 1436
Wire Wire Line
	8389 1557 8623 1557
Wire Wire Line
	8623 1557 8623 1536
Wire Wire Line
	8623 1536 8686 1536
Wire Wire Line
	8389 1657 8623 1657
Wire Wire Line
	8623 1657 8623 1648
Wire Wire Line
	8623 1648 8690 1648
Wire Wire Line
	8389 1757 8633 1757
Wire Wire Line
	8633 1757 8633 1765
Wire Wire Line
	8633 1765 8696 1765
Wire Wire Line
	8389 1857 8631 1857
Wire Wire Line
	8631 1857 8631 1894
Wire Wire Line
	8631 1894 8696 1894
Wire Wire Line
	8389 1957 8628 1957
Wire Wire Line
	8628 1957 8628 2008
Wire Wire Line
	8628 2008 8702 2008
Text Label 8656 2189 0    50   ~ 0
SAIDA_CI_2
Wire Wire Line
	8389 2157 8656 2157
Wire Wire Line
	8656 2157 8656 2189
Text Label 7328 1574 2    50   ~ 0
INPUT_5V
Wire Wire Line
	7328 1574 7553 1574
Wire Wire Line
	7553 1574 7553 1557
Wire Wire Line
	7553 1557 7589 1557
$Comp
L power:Earth #PWR0107
U 1 1 5EEE746B
P 7518 1987
F 0 "#PWR0107" H 7518 1737 50  0001 C CNN
F 1 "Earth" H 7518 1837 50  0001 C CNN
F 2 "" H 7518 1987 50  0001 C CNN
F 3 "~" H 7518 1987 50  0001 C CNN
	1    7518 1987
	1    0    0    -1  
$EndComp
Wire Wire Line
	7589 1857 7518 1857
Wire Wire Line
	7518 1857 7518 1987
$Comp
L 74xx:74HC595 MATRIZ_3_CI1
U 1 1 5EF02FA4
P 10124 1678
F 0 "MATRIZ_3_CI1" H 10124 2459 50  0000 C CNN
F 1 "74HC595" H 10124 2368 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 10124 1678 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74hc595.pdf" H 10124 1678 50  0001 C CNN
	1    10124 1678
	1    0    0    -1  
$EndComp
$Comp
L power:Earth #PWR0108
U 1 1 5EF02FAA
P 10125 2478
F 0 "#PWR0108" H 10125 2228 50  0001 C CNN
F 1 "Earth" H 10125 2328 50  0001 C CNN
F 2 "" H 10125 2478 50  0001 C CNN
F 3 "~" H 10125 2478 50  0001 C CNN
	1    10125 2478
	1    0    0    -1  
$EndComp
Wire Wire Line
	10125 2478 10125 2410
Wire Wire Line
	10125 2410 10095 2410
Wire Wire Line
	10095 2410 10095 2378
Wire Wire Line
	10095 2378 10124 2378
Text Label 9366 1279 2    50   ~ 0
SAIDA_CI_2
Wire Wire Line
	9724 1278 9407 1278
Wire Wire Line
	9407 1278 9407 1308
Wire Wire Line
	9407 1308 9366 1308
Wire Wire Line
	9366 1308 9366 1279
Text Label 9362 1499 2    50   ~ 0
CLOCK_1
Wire Wire Line
	9724 1478 9405 1478
Wire Wire Line
	9405 1478 9405 1499
Wire Wire Line
	9405 1499 9362 1499
Text Label 9479 1779 2    50   ~ 0
LATCH_1
Wire Wire Line
	9724 1778 9517 1778
Wire Wire Line
	9517 1778 9517 1802
Wire Wire Line
	9517 1802 9479 1802
Wire Wire Line
	9479 1779 9479 1802
Text Label 10239 938  0    50   ~ 0
INPUT_5v
Wire Wire Line
	10124 1078 10124 939 
Wire Wire Line
	10239 939  10239 938 
Wire Wire Line
	10124 939  10239 939 
Text Label 10821 1262 0    50   ~ 0
M_1_3
Text Label 10817 1365 0    50   ~ 0
M_2_3
Text Label 10816 1457 0    50   ~ 0
M_3_3
Text Label 10821 1557 0    50   ~ 0
M_4_3
Text Label 10825 1669 0    50   ~ 0
M_5_3
Text Label 10831 1786 0    50   ~ 0
M_6_3
Text Label 10831 1915 0    50   ~ 0
M_7_3
Text Label 10837 2029 0    50   ~ 0
M_8_3
Wire Wire Line
	10524 1278 10773 1278
Wire Wire Line
	10773 1278 10773 1262
Wire Wire Line
	10773 1262 10821 1262
Wire Wire Line
	10524 1378 10788 1378
Wire Wire Line
	10788 1378 10788 1365
Wire Wire Line
	10788 1365 10817 1365
Wire Wire Line
	10524 1478 10816 1478
Wire Wire Line
	10816 1478 10816 1457
Wire Wire Line
	10524 1578 10758 1578
Wire Wire Line
	10758 1578 10758 1557
Wire Wire Line
	10758 1557 10821 1557
Wire Wire Line
	10524 1678 10758 1678
Wire Wire Line
	10758 1678 10758 1669
Wire Wire Line
	10758 1669 10825 1669
Wire Wire Line
	10524 1778 10768 1778
Wire Wire Line
	10768 1778 10768 1786
Wire Wire Line
	10768 1786 10831 1786
Wire Wire Line
	10524 1878 10766 1878
Wire Wire Line
	10766 1878 10766 1915
Wire Wire Line
	10766 1915 10831 1915
Wire Wire Line
	10524 1978 10763 1978
Wire Wire Line
	10763 1978 10763 2029
Wire Wire Line
	10763 2029 10837 2029
Text Label 10791 2210 0    50   ~ 0
SAIDA_CI_3
Wire Wire Line
	10524 2178 10791 2178
Wire Wire Line
	10791 2178 10791 2210
Text Label 9463 1595 2    50   ~ 0
INPUT_5V
Wire Wire Line
	9463 1595 9688 1595
Wire Wire Line
	9688 1595 9688 1578
Wire Wire Line
	9688 1578 9724 1578
$Comp
L power:Earth #PWR0109
U 1 1 5EF02FEC
P 9653 2008
F 0 "#PWR0109" H 9653 1758 50  0001 C CNN
F 1 "Earth" H 9653 1858 50  0001 C CNN
F 2 "" H 9653 2008 50  0001 C CNN
F 3 "~" H 9653 2008 50  0001 C CNN
	1    9653 2008
	1    0    0    -1  
$EndComp
Wire Wire Line
	9724 1878 9653 1878
Wire Wire Line
	9653 1878 9653 2008
$Comp
L 74xx:74HC595 MATRIZ_4_CI1
U 1 1 5EF25998
P 6023 3469
F 0 "MATRIZ_4_CI1" H 6023 4250 50  0000 C CNN
F 1 "74HC595" H 6023 4159 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 6023 3469 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74hc595.pdf" H 6023 3469 50  0001 C CNN
	1    6023 3469
	1    0    0    -1  
$EndComp
$Comp
L power:Earth #PWR0110
U 1 1 5EF2599E
P 6024 4269
F 0 "#PWR0110" H 6024 4019 50  0001 C CNN
F 1 "Earth" H 6024 4119 50  0001 C CNN
F 2 "" H 6024 4269 50  0001 C CNN
F 3 "~" H 6024 4269 50  0001 C CNN
	1    6024 4269
	1    0    0    -1  
$EndComp
Wire Wire Line
	6024 4269 6024 4201
Wire Wire Line
	6024 4201 5994 4201
Wire Wire Line
	5994 4201 5994 4169
Wire Wire Line
	5994 4169 6023 4169
Text Label 5265 3070 2    50   ~ 0
SAIDA_CI_3
Wire Wire Line
	5623 3069 5306 3069
Wire Wire Line
	5306 3069 5306 3099
Wire Wire Line
	5306 3099 5265 3099
Wire Wire Line
	5265 3099 5265 3070
Text Label 5261 3290 2    50   ~ 0
CLOCK_1
Wire Wire Line
	5623 3269 5304 3269
Wire Wire Line
	5304 3269 5304 3290
Wire Wire Line
	5304 3290 5261 3290
Text Label 5378 3570 2    50   ~ 0
LATCH_1
Wire Wire Line
	5623 3569 5416 3569
Wire Wire Line
	5416 3569 5416 3593
Wire Wire Line
	5416 3593 5378 3593
Wire Wire Line
	5378 3570 5378 3593
Text Label 6138 2729 0    50   ~ 0
INPUT_5v
Wire Wire Line
	6023 2869 6023 2730
Wire Wire Line
	6138 2730 6138 2729
Wire Wire Line
	6023 2730 6138 2730
Text Label 6720 3053 0    50   ~ 0
M_1_4
Text Label 6716 3156 0    50   ~ 0
M_2_4
Text Label 6715 3248 0    50   ~ 0
M_3_4
Text Label 6720 3348 0    50   ~ 0
M_4_4
Text Label 6724 3460 0    50   ~ 0
M_5_4
Text Label 6730 3577 0    50   ~ 0
M_6_4
Text Label 6730 3706 0    50   ~ 0
M_7_4
Text Label 6736 3820 0    50   ~ 0
M_8_4
Wire Wire Line
	6423 3069 6672 3069
Wire Wire Line
	6672 3069 6672 3053
Wire Wire Line
	6672 3053 6720 3053
Wire Wire Line
	6423 3169 6687 3169
Wire Wire Line
	6687 3169 6687 3156
Wire Wire Line
	6687 3156 6716 3156
Wire Wire Line
	6423 3269 6715 3269
Wire Wire Line
	6715 3269 6715 3248
Wire Wire Line
	6423 3369 6657 3369
Wire Wire Line
	6657 3369 6657 3348
Wire Wire Line
	6657 3348 6720 3348
Wire Wire Line
	6423 3469 6657 3469
Wire Wire Line
	6657 3469 6657 3460
Wire Wire Line
	6657 3460 6724 3460
Wire Wire Line
	6423 3569 6667 3569
Wire Wire Line
	6667 3569 6667 3577
Wire Wire Line
	6667 3577 6730 3577
Wire Wire Line
	6423 3669 6665 3669
Wire Wire Line
	6665 3669 6665 3706
Wire Wire Line
	6665 3706 6730 3706
Wire Wire Line
	6423 3769 6662 3769
Wire Wire Line
	6662 3769 6662 3820
Wire Wire Line
	6662 3820 6736 3820
Text Label 5362 3386 2    50   ~ 0
INPUT_5V
Wire Wire Line
	5362 3386 5587 3386
Wire Wire Line
	5587 3386 5587 3369
Wire Wire Line
	5587 3369 5623 3369
$Comp
L power:Earth #PWR0111
U 1 1 5EF259E0
P 5552 3799
F 0 "#PWR0111" H 5552 3549 50  0001 C CNN
F 1 "Earth" H 5552 3649 50  0001 C CNN
F 2 "" H 5552 3799 50  0001 C CNN
F 3 "~" H 5552 3799 50  0001 C CNN
	1    5552 3799
	1    0    0    -1  
$EndComp
Wire Wire Line
	5623 3669 5552 3669
Wire Wire Line
	5552 3669 5552 3799
NoConn ~ 6423 3969
NoConn ~ 9735 3951
NoConn ~ 8358 5537
NoConn ~ 8358 5637
NoConn ~ 8358 5737
NoConn ~ 8358 5937
Text Label 7199 5368 2    50   ~ 0
INPUT_5V
Wire Wire Line
	7558 5337 7199 5337
Wire Wire Line
	7199 5337 7199 5368
$Comp
L power:Earth #PWR0112
U 1 1 5F10E01A
P 7514 5766
F 0 "#PWR0112" H 7514 5516 50  0001 C CNN
F 1 "Earth" H 7514 5616 50  0001 C CNN
F 2 "" H 7514 5766 50  0001 C CNN
F 3 "~" H 7514 5766 50  0001 C CNN
	1    7514 5766
	1    0    0    -1  
$EndComp
Wire Wire Line
	7514 5766 7514 5637
Wire Wire Line
	7514 5637 7558 5637
$EndSCHEMATC
